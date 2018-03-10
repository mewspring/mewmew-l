; ModuleID = 'coreutils-8.27/src/getlimits.bc'
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
@.str.1 = private unnamed_addr constant [11 x i8] c"Usage: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [73 x i8] c"Output platform dependent limits in a format useful for shell scripts.\0A\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"getlimits\00", align 1
@.str.82 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.83 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.84 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.85 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.86 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.87 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.88 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"Padraig Brady\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"%lu\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"CHAR_MAX=%s\0A\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"CHAR_OFLOW=%s\0A\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"CHAR_MIN=%s\0A\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"CHAR_UFLOW=%s\0A\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"SCHAR_MAX=%s\0A\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"SCHAR_OFLOW=%s\0A\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"SCHAR_MIN=%s\0A\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"SCHAR_UFLOW=%s\0A\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"UCHAR_MAX=%s\0A\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"UCHAR_OFLOW=%s\0A\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"SHRT_MAX=%s\0A\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"SHRT_OFLOW=%s\0A\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"SHRT_MIN=%s\0A\00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"SHRT_UFLOW=%s\0A\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"INT_MAX=%s\0A\00", align 1
@.str.29 = private unnamed_addr constant [14 x i8] c"INT_OFLOW=%s\0A\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"INT_MIN=%s\0A\00", align 1
@.str.31 = private unnamed_addr constant [14 x i8] c"INT_UFLOW=%s\0A\00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c"UINT_MAX=%s\0A\00", align 1
@.str.33 = private unnamed_addr constant [15 x i8] c"UINT_OFLOW=%s\0A\00", align 1
@.str.34 = private unnamed_addr constant [13 x i8] c"LONG_MAX=%s\0A\00", align 1
@.str.35 = private unnamed_addr constant [15 x i8] c"LONG_OFLOW=%s\0A\00", align 1
@.str.36 = private unnamed_addr constant [13 x i8] c"LONG_MIN=%s\0A\00", align 1
@.str.37 = private unnamed_addr constant [15 x i8] c"LONG_UFLOW=%s\0A\00", align 1
@.str.38 = private unnamed_addr constant [14 x i8] c"ULONG_MAX=%s\0A\00", align 1
@.str.39 = private unnamed_addr constant [16 x i8] c"ULONG_OFLOW=%s\0A\00", align 1
@.str.40 = private unnamed_addr constant [13 x i8] c"SIZE_MAX=%s\0A\00", align 1
@.str.41 = private unnamed_addr constant [15 x i8] c"SIZE_OFLOW=%s\0A\00", align 1
@.str.42 = private unnamed_addr constant [14 x i8] c"SSIZE_MAX=%s\0A\00", align 1
@.str.43 = private unnamed_addr constant [16 x i8] c"SSIZE_OFLOW=%s\0A\00", align 1
@.str.44 = private unnamed_addr constant [14 x i8] c"SSIZE_MIN=%s\0A\00", align 1
@.str.45 = private unnamed_addr constant [16 x i8] c"SSIZE_UFLOW=%s\0A\00", align 1
@.str.46 = private unnamed_addr constant [15 x i8] c"TIME_T_MAX=%s\0A\00", align 1
@.str.47 = private unnamed_addr constant [17 x i8] c"TIME_T_OFLOW=%s\0A\00", align 1
@.str.48 = private unnamed_addr constant [15 x i8] c"TIME_T_MIN=%s\0A\00", align 1
@.str.49 = private unnamed_addr constant [17 x i8] c"TIME_T_UFLOW=%s\0A\00", align 1
@.str.50 = private unnamed_addr constant [14 x i8] c"UID_T_MAX=%s\0A\00", align 1
@.str.51 = private unnamed_addr constant [16 x i8] c"UID_T_OFLOW=%s\0A\00", align 1
@.str.52 = private unnamed_addr constant [14 x i8] c"GID_T_MAX=%s\0A\00", align 1
@.str.53 = private unnamed_addr constant [16 x i8] c"GID_T_OFLOW=%s\0A\00", align 1
@.str.54 = private unnamed_addr constant [14 x i8] c"PID_T_MAX=%s\0A\00", align 1
@.str.55 = private unnamed_addr constant [16 x i8] c"PID_T_OFLOW=%s\0A\00", align 1
@.str.56 = private unnamed_addr constant [14 x i8] c"PID_T_MIN=%s\0A\00", align 1
@.str.57 = private unnamed_addr constant [16 x i8] c"PID_T_UFLOW=%s\0A\00", align 1
@.str.58 = private unnamed_addr constant [14 x i8] c"OFF_T_MAX=%s\0A\00", align 1
@.str.59 = private unnamed_addr constant [16 x i8] c"OFF_T_OFLOW=%s\0A\00", align 1
@.str.60 = private unnamed_addr constant [14 x i8] c"OFF_T_MIN=%s\0A\00", align 1
@.str.61 = private unnamed_addr constant [16 x i8] c"OFF_T_UFLOW=%s\0A\00", align 1
@.str.62 = private unnamed_addr constant [15 x i8] c"INTMAX_MAX=%s\0A\00", align 1
@.str.63 = private unnamed_addr constant [17 x i8] c"INTMAX_OFLOW=%s\0A\00", align 1
@.str.64 = private unnamed_addr constant [15 x i8] c"INTMAX_MIN=%s\0A\00", align 1
@.str.65 = private unnamed_addr constant [17 x i8] c"INTMAX_UFLOW=%s\0A\00", align 1
@.str.66 = private unnamed_addr constant [16 x i8] c"UINTMAX_MAX=%s\0A\00", align 1
@.str.67 = private unnamed_addr constant [18 x i8] c"UINTMAX_OFLOW=%s\0A\00", align 1
@.str.68 = private unnamed_addr constant [9 x i8] c"FLT_MIN=\00", align 1
@.str.69 = private unnamed_addr constant [9 x i8] c"FLT_MAX=\00", align 1
@.str.70 = private unnamed_addr constant [9 x i8] c"DBL_MIN=\00", align 1
@.str.71 = private unnamed_addr constant [9 x i8] c"DBL_MAX=\00", align 1
@.str.72 = private unnamed_addr constant [10 x i8] c"LDBL_MIN=\00", align 1
@.str.73 = private unnamed_addr constant [10 x i8] c"LDBL_MAX=\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !0
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !6
@.str.74 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.75 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.76 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !13
@opterr = external local_unnamed_addr global i32, align 4
@.str.89 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@long_options = internal constant [3 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1.90, i32 0, i32 0), i32 0, i32* null, i32 104 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.91, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option zeroinitializer], align 16, !dbg !21
@optind = external local_unnamed_addr global i32, align 4
@.str.1.90 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.2.91 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !39
@.str.96 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.97 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.98 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.99, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.100, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.101, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.102, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.103, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.104, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.105, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.106, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.107, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.108, i32 0, i32 0), i8* null], align 16, !dbg !48
@.str.99 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.100 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.101 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.102 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.103 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.104 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.105 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.106 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.107 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.108 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !93
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !100
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !113
@.str.11.109 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.110 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.111 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.112 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.113 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.114 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.115 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !120
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !127
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !115
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !129
@.str.118 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.119 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.120 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.121 = private unnamed_addr constant [203 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.122 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.123 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.124 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.125 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.126 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.127 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.128 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.129 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.130 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.131 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.134 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.135 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.136 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.137 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.138 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19.139 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !135
@.str.1.150 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.151 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.160 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.163 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !144
@.str.3.164 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.165 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.166 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.167 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.168 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.169 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) #0 !dbg !616 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !620, metadata !621), !dbg !622
  %2 = icmp eq i32 %0, 0, !dbg !623
  br i1 %2, label %8, label %3, !dbg !625

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !626, !tbaa !629
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #10, !dbg !626
  %6 = load i8*, i8** @program_name, align 8, !dbg !626, !tbaa !629
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #10, !dbg !633
  br label %36, !dbg !635

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 5) #10, !dbg !637
  %10 = load i8*, i8** @program_name, align 8, !dbg !637, !tbaa !629
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10) #10, !dbg !639
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0), i32 5) #10, !dbg !641
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !641, !tbaa !629
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #10, !dbg !642
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 5) #10, !dbg !643
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !643, !tbaa !629
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #10, !dbg !644
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 5) #10, !dbg !645
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !645, !tbaa !629
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #10, !dbg !646
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !540, metadata !621) #10, !dbg !647
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i64 0, metadata !540, metadata !621) #10, !dbg !647
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.82, i64 0, i64 0), i32 5) #10, !dbg !649
  %22 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %21, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.83, i64 0, i64 0)) #10, !dbg !650
  %23 = tail call i8* @setlocale(i32 5, i8* null) #10, !dbg !652
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !551, metadata !621) #10, !dbg !653
  %24 = icmp eq i8* %23, null, !dbg !654
  br i1 %24, label %31, label %25, !dbg !655

; <label>:25:                                     ; preds = %8
  %26 = tail call i32 @strncmp(i8* nonnull %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.84, i64 0, i64 0), i64 3) #13, !dbg !656
  %27 = icmp eq i32 %26, 0, !dbg !656
  br i1 %27, label %31, label %28, !dbg !658

; <label>:28:                                     ; preds = %25
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.85, i64 0, i64 0), i32 5) #10, !dbg !660
  %30 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %29, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0)) #10, !dbg !662
  br label %31, !dbg !664

; <label>:31:                                     ; preds = %8, %25, %28
  %32 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.86, i64 0, i64 0), i32 5) #10, !dbg !665
  %33 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %32, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.83, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0)) #10, !dbg !666
  %34 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.87, i64 0, i64 0), i32 5) #10, !dbg !667
  %35 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %34, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.88, i64 0, i64 0)) #10, !dbg !668
  br label %36

; <label>:36:                                     ; preds = %31, %3
  tail call void @exit(i32 %0) #14, !dbg !669
  unreachable, !dbg !669
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
define i32 @main(i32, i8**) local_unnamed_addr #6 !dbg !670 {
  %3 = alloca [40 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [40 x i8]* %3, metadata !681, metadata !621), !dbg !691
  tail call void @llvm.dbg.declare(metadata [40 x i8]* %3, metadata !681, metadata !621), !dbg !694
  %4 = alloca [31 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [31 x i8]* %4, metadata !697, metadata !621), !dbg !707
  tail call void @llvm.dbg.declare(metadata [31 x i8]* %4, metadata !697, metadata !621), !dbg !709
  %5 = alloca [45 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [45 x i8]* %5, metadata !711, metadata !621), !dbg !721
  tail call void @llvm.dbg.declare(metadata [45 x i8]* %5, metadata !711, metadata !621), !dbg !723
  %6 = alloca [22 x i8], align 16
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !675, metadata !621), !dbg !725
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !676, metadata !621), !dbg !726
  %7 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0, !dbg !727
  call void @llvm.lifetime.start(i64 22, i8* nonnull %7) #10, !dbg !727
  tail call void @llvm.dbg.declare(metadata [22 x i8]* %6, metadata !677, metadata !621), !dbg !728
  %8 = load i8*, i8** %1, align 8, !dbg !729, !tbaa !629
  tail call void @set_program_name(i8* %8) #10, !dbg !730
  %9 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)) #10, !dbg !731
  %10 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0)) #10, !dbg !732
  %11 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0)) #10, !dbg !733
  %12 = tail call i32 @atexit(void ()* nonnull @close_stdout) #10, !dbg !734
  tail call void (i32, i8**, i8*, i8*, i8*, void (i32)*, ...) @parse_long_options(i32 %0, i8** %1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), void (i32)* nonnull @usage, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* null) #10, !dbg !735
  %13 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 1, !dbg !736
  %14 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i64 127) #10, !dbg !736
  %15 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0), i8* %13) #10, !dbg !737
  call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !738, metadata !621) #10, !dbg !747
  %16 = load i8, i8* %13, align 1, !dbg !750, !tbaa !751
  %17 = icmp eq i8 %16, 45, !dbg !752
  %18 = zext i1 %17 to i64, !dbg !753
  %19 = getelementptr inbounds i8, i8* %13, i64 %18, !dbg !753
  call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !744, metadata !621) #10, !dbg !754
  %20 = call i64 @strlen(i8* %19) #13, !dbg !755
  %21 = getelementptr inbounds i8, i8* %19, i64 %20, !dbg !756
  call void @llvm.dbg.value(metadata i8* %21, i64 0, metadata !745, metadata !621) #10, !dbg !757
  %22 = getelementptr inbounds i8, i8* %19, i64 -1, !dbg !758
  br label %23, !dbg !759

; <label>:23:                                     ; preds = %23, %2
  %24 = phi i8* [ %21, %2 ], [ %26, %23 ]
  %25 = phi i8* [ %22, %2 ], [ %26, %23 ]
  call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !745, metadata !621) #10, !dbg !757
  store i8 48, i8* %25, align 1, !tbaa !751
  %26 = getelementptr inbounds i8, i8* %24, i64 -1, !dbg !760
  call void @llvm.dbg.value(metadata i8* %26, i64 0, metadata !745, metadata !621) #10, !dbg !757
  %27 = load i8, i8* %26, align 1, !dbg !762, !tbaa !751
  %28 = icmp eq i8 %27, 57, !dbg !763
  br i1 %28, label %23, label %29, !dbg !764, !llvm.loop !765

; <label>:29:                                     ; preds = %23
  %30 = add i8 %27, 1, !dbg !768
  store i8 %30, i8* %26, align 1, !dbg !768, !tbaa !751
  %31 = icmp ult i8* %19, %26, !dbg !769
  %32 = select i1 %31, i8* %19, i8* %26, !dbg !769
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !746, metadata !621) #10, !dbg !770
  br i1 %17, label %33, label %35, !dbg !771

; <label>:33:                                     ; preds = %29
  %34 = getelementptr inbounds i8, i8* %32, i64 -1, !dbg !772
  call void @llvm.dbg.value(metadata i8* %34, i64 0, metadata !746, metadata !621) #10, !dbg !770
  store i8 45, i8* %34, align 1, !dbg !774, !tbaa !751
  br label %35, !dbg !775

; <label>:35:                                     ; preds = %29, %33
  %36 = phi i8* [ %34, %33 ], [ %32, %29 ]
  call void @llvm.dbg.value(metadata i8* %36, i64 0, metadata !746, metadata !621) #10, !dbg !770
  %37 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0), i8* %36) #10, !dbg !776
  %38 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i64 -128) #10, !dbg !777
  %39 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0), i8* %13) #10, !dbg !781
  call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !738, metadata !621) #10, !dbg !783
  %40 = load i8, i8* %13, align 1, !dbg !786, !tbaa !751
  %41 = icmp eq i8 %40, 45, !dbg !787
  %42 = zext i1 %41 to i64, !dbg !788
  %43 = getelementptr inbounds i8, i8* %13, i64 %42, !dbg !788
  call void @llvm.dbg.value(metadata i8* %43, i64 0, metadata !744, metadata !621) #10, !dbg !789
  %44 = call i64 @strlen(i8* %43) #13, !dbg !790
  %45 = getelementptr inbounds i8, i8* %43, i64 %44, !dbg !791
  call void @llvm.dbg.value(metadata i8* %45, i64 0, metadata !745, metadata !621) #10, !dbg !792
  %46 = getelementptr inbounds i8, i8* %43, i64 -1, !dbg !793
  br label %47, !dbg !794

; <label>:47:                                     ; preds = %47, %35
  %48 = phi i8* [ %45, %35 ], [ %50, %47 ]
  %49 = phi i8* [ %46, %35 ], [ %50, %47 ]
  call void @llvm.dbg.value(metadata i8* %48, i64 0, metadata !745, metadata !621) #10, !dbg !792
  store i8 48, i8* %49, align 1, !tbaa !751
  %50 = getelementptr inbounds i8, i8* %48, i64 -1, !dbg !795
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !745, metadata !621) #10, !dbg !792
  %51 = load i8, i8* %50, align 1, !dbg !796, !tbaa !751
  %52 = icmp eq i8 %51, 57, !dbg !797
  br i1 %52, label %47, label %53, !dbg !798, !llvm.loop !765

; <label>:53:                                     ; preds = %47
  %54 = add i8 %51, 1, !dbg !799
  store i8 %54, i8* %50, align 1, !dbg !799, !tbaa !751
  %55 = icmp ult i8* %43, %50, !dbg !800
  %56 = select i1 %55, i8* %43, i8* %50, !dbg !800
  call void @llvm.dbg.value(metadata i8* %56, i64 0, metadata !746, metadata !621) #10, !dbg !801
  br i1 %41, label %57, label %59, !dbg !802

; <label>:57:                                     ; preds = %53
  %58 = getelementptr inbounds i8, i8* %56, i64 -1, !dbg !803
  call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !746, metadata !621) #10, !dbg !801
  store i8 45, i8* %58, align 1, !dbg !804, !tbaa !751
  br label %59, !dbg !805

; <label>:59:                                     ; preds = %53, %57
  %60 = phi i8* [ %58, %57 ], [ %56, %53 ]
  call void @llvm.dbg.value(metadata i8* %60, i64 0, metadata !746, metadata !621) #10, !dbg !801
  %61 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0), i8* %60) #10, !dbg !806
  %62 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i64 127) #10, !dbg !808
  %63 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i8* %13) #10, !dbg !809
  call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !738, metadata !621) #10, !dbg !810
  %64 = load i8, i8* %13, align 1, !dbg !812, !tbaa !751
  %65 = icmp eq i8 %64, 45, !dbg !813
  %66 = zext i1 %65 to i64, !dbg !814
  %67 = getelementptr inbounds i8, i8* %13, i64 %66, !dbg !814
  call void @llvm.dbg.value(metadata i8* %67, i64 0, metadata !744, metadata !621) #10, !dbg !815
  %68 = call i64 @strlen(i8* %67) #13, !dbg !816
  %69 = getelementptr inbounds i8, i8* %67, i64 %68, !dbg !817
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !745, metadata !621) #10, !dbg !818
  %70 = getelementptr inbounds i8, i8* %67, i64 -1, !dbg !819
  br label %71, !dbg !820

; <label>:71:                                     ; preds = %71, %59
  %72 = phi i8* [ %69, %59 ], [ %74, %71 ]
  %73 = phi i8* [ %70, %59 ], [ %74, %71 ]
  call void @llvm.dbg.value(metadata i8* %72, i64 0, metadata !745, metadata !621) #10, !dbg !818
  store i8 48, i8* %73, align 1, !tbaa !751
  %74 = getelementptr inbounds i8, i8* %72, i64 -1, !dbg !821
  call void @llvm.dbg.value(metadata i8* %74, i64 0, metadata !745, metadata !621) #10, !dbg !818
  %75 = load i8, i8* %74, align 1, !dbg !822, !tbaa !751
  %76 = icmp eq i8 %75, 57, !dbg !823
  br i1 %76, label %71, label %77, !dbg !824, !llvm.loop !765

; <label>:77:                                     ; preds = %71
  %78 = add i8 %75, 1, !dbg !825
  store i8 %78, i8* %74, align 1, !dbg !825, !tbaa !751
  %79 = icmp ult i8* %67, %74, !dbg !826
  %80 = select i1 %79, i8* %67, i8* %74, !dbg !826
  call void @llvm.dbg.value(metadata i8* %80, i64 0, metadata !746, metadata !621) #10, !dbg !827
  br i1 %65, label %81, label %83, !dbg !828

; <label>:81:                                     ; preds = %77
  %82 = getelementptr inbounds i8, i8* %80, i64 -1, !dbg !829
  call void @llvm.dbg.value(metadata i8* %82, i64 0, metadata !746, metadata !621) #10, !dbg !827
  store i8 45, i8* %82, align 1, !dbg !830, !tbaa !751
  br label %83, !dbg !831

; <label>:83:                                     ; preds = %77, %81
  %84 = phi i8* [ %82, %81 ], [ %80, %77 ]
  call void @llvm.dbg.value(metadata i8* %84, i64 0, metadata !746, metadata !621) #10, !dbg !827
  %85 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i64 0, i64 0), i8* %84) #10, !dbg !832
  %86 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i64 -128) #10, !dbg !833
  %87 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0), i8* %13) #10, !dbg !837
  call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !738, metadata !621) #10, !dbg !839
  %88 = load i8, i8* %13, align 1, !dbg !842, !tbaa !751
  %89 = icmp eq i8 %88, 45, !dbg !843
  %90 = zext i1 %89 to i64, !dbg !844
  %91 = getelementptr inbounds i8, i8* %13, i64 %90, !dbg !844
  call void @llvm.dbg.value(metadata i8* %91, i64 0, metadata !744, metadata !621) #10, !dbg !845
  %92 = call i64 @strlen(i8* %91) #13, !dbg !846
  %93 = getelementptr inbounds i8, i8* %91, i64 %92, !dbg !847
  call void @llvm.dbg.value(metadata i8* %93, i64 0, metadata !745, metadata !621) #10, !dbg !848
  %94 = getelementptr inbounds i8, i8* %91, i64 -1, !dbg !849
  br label %95, !dbg !850

; <label>:95:                                     ; preds = %95, %83
  %96 = phi i8* [ %93, %83 ], [ %98, %95 ]
  %97 = phi i8* [ %94, %83 ], [ %98, %95 ]
  call void @llvm.dbg.value(metadata i8* %96, i64 0, metadata !745, metadata !621) #10, !dbg !848
  store i8 48, i8* %97, align 1, !tbaa !751
  %98 = getelementptr inbounds i8, i8* %96, i64 -1, !dbg !851
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !745, metadata !621) #10, !dbg !848
  %99 = load i8, i8* %98, align 1, !dbg !852, !tbaa !751
  %100 = icmp eq i8 %99, 57, !dbg !853
  br i1 %100, label %95, label %101, !dbg !854, !llvm.loop !765

; <label>:101:                                    ; preds = %95
  %102 = add i8 %99, 1, !dbg !855
  store i8 %102, i8* %98, align 1, !dbg !855, !tbaa !751
  %103 = icmp ult i8* %91, %98, !dbg !856
  %104 = select i1 %103, i8* %91, i8* %98, !dbg !856
  call void @llvm.dbg.value(metadata i8* %104, i64 0, metadata !746, metadata !621) #10, !dbg !857
  br i1 %89, label %105, label %107, !dbg !858

; <label>:105:                                    ; preds = %101
  %106 = getelementptr inbounds i8, i8* %104, i64 -1, !dbg !859
  call void @llvm.dbg.value(metadata i8* %106, i64 0, metadata !746, metadata !621) #10, !dbg !857
  store i8 45, i8* %106, align 1, !dbg !860, !tbaa !751
  br label %107, !dbg !861

; <label>:107:                                    ; preds = %101, %105
  %108 = phi i8* [ %106, %105 ], [ %104, %101 ]
  call void @llvm.dbg.value(metadata i8* %108, i64 0, metadata !746, metadata !621) #10, !dbg !857
  %109 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i64 0, i64 0), i8* %108) #10, !dbg !862
  %110 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i64 255) #10, !dbg !864
  %111 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i64 0, i64 0), i8* %13) #10, !dbg !865
  call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !738, metadata !621) #10, !dbg !866
  %112 = load i8, i8* %13, align 1, !dbg !868, !tbaa !751
  %113 = icmp eq i8 %112, 45, !dbg !869
  %114 = zext i1 %113 to i64, !dbg !870
  %115 = getelementptr inbounds i8, i8* %13, i64 %114, !dbg !870
  call void @llvm.dbg.value(metadata i8* %115, i64 0, metadata !744, metadata !621) #10, !dbg !871
  %116 = call i64 @strlen(i8* %115) #13, !dbg !872
  %117 = getelementptr inbounds i8, i8* %115, i64 %116, !dbg !873
  call void @llvm.dbg.value(metadata i8* %117, i64 0, metadata !745, metadata !621) #10, !dbg !874
  %118 = getelementptr inbounds i8, i8* %115, i64 -1, !dbg !875
  br label %119, !dbg !876

; <label>:119:                                    ; preds = %119, %107
  %120 = phi i8* [ %117, %107 ], [ %122, %119 ]
  %121 = phi i8* [ %118, %107 ], [ %122, %119 ]
  call void @llvm.dbg.value(metadata i8* %120, i64 0, metadata !745, metadata !621) #10, !dbg !874
  store i8 48, i8* %121, align 1, !tbaa !751
  %122 = getelementptr inbounds i8, i8* %120, i64 -1, !dbg !877
  call void @llvm.dbg.value(metadata i8* %122, i64 0, metadata !745, metadata !621) #10, !dbg !874
  %123 = load i8, i8* %122, align 1, !dbg !878, !tbaa !751
  %124 = icmp eq i8 %123, 57, !dbg !879
  br i1 %124, label %119, label %125, !dbg !880, !llvm.loop !765

; <label>:125:                                    ; preds = %119
  %126 = add i8 %123, 1, !dbg !881
  store i8 %126, i8* %122, align 1, !dbg !881, !tbaa !751
  %127 = icmp ult i8* %115, %122, !dbg !882
  %128 = select i1 %127, i8* %115, i8* %122, !dbg !882
  call void @llvm.dbg.value(metadata i8* %128, i64 0, metadata !746, metadata !621) #10, !dbg !883
  br i1 %113, label %129, label %131, !dbg !884

; <label>:129:                                    ; preds = %125
  %130 = getelementptr inbounds i8, i8* %128, i64 -1, !dbg !885
  call void @llvm.dbg.value(metadata i8* %130, i64 0, metadata !746, metadata !621) #10, !dbg !883
  store i8 45, i8* %130, align 1, !dbg !886, !tbaa !751
  br label %131, !dbg !887

; <label>:131:                                    ; preds = %125, %129
  %132 = phi i8* [ %130, %129 ], [ %128, %125 ]
  call void @llvm.dbg.value(metadata i8* %132, i64 0, metadata !746, metadata !621) #10, !dbg !883
  %133 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i64 0, i64 0), i8* %132) #10, !dbg !888
  %134 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i64 32767) #10, !dbg !889
  %135 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i64 0, i64 0), i8* %13) #10, !dbg !890
  call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !738, metadata !621) #10, !dbg !891
  %136 = load i8, i8* %13, align 1, !dbg !893, !tbaa !751
  %137 = icmp eq i8 %136, 45, !dbg !894
  %138 = zext i1 %137 to i64, !dbg !895
  %139 = getelementptr inbounds i8, i8* %13, i64 %138, !dbg !895
  call void @llvm.dbg.value(metadata i8* %139, i64 0, metadata !744, metadata !621) #10, !dbg !896
  %140 = call i64 @strlen(i8* %139) #13, !dbg !897
  %141 = getelementptr inbounds i8, i8* %139, i64 %140, !dbg !898
  call void @llvm.dbg.value(metadata i8* %141, i64 0, metadata !745, metadata !621) #10, !dbg !899
  %142 = getelementptr inbounds i8, i8* %139, i64 -1, !dbg !900
  br label %143, !dbg !901

; <label>:143:                                    ; preds = %143, %131
  %144 = phi i8* [ %141, %131 ], [ %146, %143 ]
  %145 = phi i8* [ %142, %131 ], [ %146, %143 ]
  call void @llvm.dbg.value(metadata i8* %144, i64 0, metadata !745, metadata !621) #10, !dbg !899
  store i8 48, i8* %145, align 1, !tbaa !751
  %146 = getelementptr inbounds i8, i8* %144, i64 -1, !dbg !902
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !745, metadata !621) #10, !dbg !899
  %147 = load i8, i8* %146, align 1, !dbg !903, !tbaa !751
  %148 = icmp eq i8 %147, 57, !dbg !904
  br i1 %148, label %143, label %149, !dbg !905, !llvm.loop !765

; <label>:149:                                    ; preds = %143
  %150 = add i8 %147, 1, !dbg !906
  store i8 %150, i8* %146, align 1, !dbg !906, !tbaa !751
  %151 = icmp ult i8* %139, %146, !dbg !907
  %152 = select i1 %151, i8* %139, i8* %146, !dbg !907
  call void @llvm.dbg.value(metadata i8* %152, i64 0, metadata !746, metadata !621) #10, !dbg !908
  br i1 %137, label %153, label %155, !dbg !909

; <label>:153:                                    ; preds = %149
  %154 = getelementptr inbounds i8, i8* %152, i64 -1, !dbg !910
  call void @llvm.dbg.value(metadata i8* %154, i64 0, metadata !746, metadata !621) #10, !dbg !908
  store i8 45, i8* %154, align 1, !dbg !911, !tbaa !751
  br label %155, !dbg !912

; <label>:155:                                    ; preds = %149, %153
  %156 = phi i8* [ %154, %153 ], [ %152, %149 ]
  call void @llvm.dbg.value(metadata i8* %156, i64 0, metadata !746, metadata !621) #10, !dbg !908
  %157 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i64 0, i64 0), i8* %156) #10, !dbg !913
  %158 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i64 -32768) #10, !dbg !914
  %159 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i64 0, i64 0), i8* %13) #10, !dbg !918
  call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !738, metadata !621) #10, !dbg !920
  %160 = load i8, i8* %13, align 1, !dbg !923, !tbaa !751
  %161 = icmp eq i8 %160, 45, !dbg !924
  %162 = zext i1 %161 to i64, !dbg !925
  %163 = getelementptr inbounds i8, i8* %13, i64 %162, !dbg !925
  call void @llvm.dbg.value(metadata i8* %163, i64 0, metadata !744, metadata !621) #10, !dbg !926
  %164 = call i64 @strlen(i8* %163) #13, !dbg !927
  %165 = getelementptr inbounds i8, i8* %163, i64 %164, !dbg !928
  call void @llvm.dbg.value(metadata i8* %165, i64 0, metadata !745, metadata !621) #10, !dbg !929
  %166 = getelementptr inbounds i8, i8* %163, i64 -1, !dbg !930
  br label %167, !dbg !931

; <label>:167:                                    ; preds = %167, %155
  %168 = phi i8* [ %165, %155 ], [ %170, %167 ]
  %169 = phi i8* [ %166, %155 ], [ %170, %167 ]
  call void @llvm.dbg.value(metadata i8* %168, i64 0, metadata !745, metadata !621) #10, !dbg !929
  store i8 48, i8* %169, align 1, !tbaa !751
  %170 = getelementptr inbounds i8, i8* %168, i64 -1, !dbg !932
  call void @llvm.dbg.value(metadata i8* %170, i64 0, metadata !745, metadata !621) #10, !dbg !929
  %171 = load i8, i8* %170, align 1, !dbg !933, !tbaa !751
  %172 = icmp eq i8 %171, 57, !dbg !934
  br i1 %172, label %167, label %173, !dbg !935, !llvm.loop !765

; <label>:173:                                    ; preds = %167
  %174 = add i8 %171, 1, !dbg !936
  store i8 %174, i8* %170, align 1, !dbg !936, !tbaa !751
  %175 = icmp ult i8* %163, %170, !dbg !937
  %176 = select i1 %175, i8* %163, i8* %170, !dbg !937
  call void @llvm.dbg.value(metadata i8* %176, i64 0, metadata !746, metadata !621) #10, !dbg !938
  br i1 %161, label %177, label %179, !dbg !939

; <label>:177:                                    ; preds = %173
  %178 = getelementptr inbounds i8, i8* %176, i64 -1, !dbg !940
  call void @llvm.dbg.value(metadata i8* %178, i64 0, metadata !746, metadata !621) #10, !dbg !938
  store i8 45, i8* %178, align 1, !dbg !941, !tbaa !751
  br label %179, !dbg !942

; <label>:179:                                    ; preds = %173, %177
  %180 = phi i8* [ %178, %177 ], [ %176, %173 ]
  call void @llvm.dbg.value(metadata i8* %180, i64 0, metadata !746, metadata !621) #10, !dbg !938
  %181 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.27, i64 0, i64 0), i8* %180) #10, !dbg !943
  %182 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i64 2147483647) #10, !dbg !945
  %183 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i64 0, i64 0), i8* %13) #10, !dbg !946
  call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !738, metadata !621) #10, !dbg !947
  %184 = load i8, i8* %13, align 1, !dbg !949, !tbaa !751
  %185 = icmp eq i8 %184, 45, !dbg !950
  %186 = zext i1 %185 to i64, !dbg !951
  %187 = getelementptr inbounds i8, i8* %13, i64 %186, !dbg !951
  call void @llvm.dbg.value(metadata i8* %187, i64 0, metadata !744, metadata !621) #10, !dbg !952
  %188 = call i64 @strlen(i8* %187) #13, !dbg !953
  %189 = getelementptr inbounds i8, i8* %187, i64 %188, !dbg !954
  call void @llvm.dbg.value(metadata i8* %189, i64 0, metadata !745, metadata !621) #10, !dbg !955
  %190 = getelementptr inbounds i8, i8* %187, i64 -1, !dbg !956
  br label %191, !dbg !957

; <label>:191:                                    ; preds = %191, %179
  %192 = phi i8* [ %189, %179 ], [ %194, %191 ]
  %193 = phi i8* [ %190, %179 ], [ %194, %191 ]
  call void @llvm.dbg.value(metadata i8* %192, i64 0, metadata !745, metadata !621) #10, !dbg !955
  store i8 48, i8* %193, align 1, !tbaa !751
  %194 = getelementptr inbounds i8, i8* %192, i64 -1, !dbg !958
  call void @llvm.dbg.value(metadata i8* %194, i64 0, metadata !745, metadata !621) #10, !dbg !955
  %195 = load i8, i8* %194, align 1, !dbg !959, !tbaa !751
  %196 = icmp eq i8 %195, 57, !dbg !960
  br i1 %196, label %191, label %197, !dbg !961, !llvm.loop !765

; <label>:197:                                    ; preds = %191
  %198 = add i8 %195, 1, !dbg !962
  store i8 %198, i8* %194, align 1, !dbg !962, !tbaa !751
  %199 = icmp ult i8* %187, %194, !dbg !963
  %200 = select i1 %199, i8* %187, i8* %194, !dbg !963
  call void @llvm.dbg.value(metadata i8* %200, i64 0, metadata !746, metadata !621) #10, !dbg !964
  br i1 %185, label %201, label %203, !dbg !965

; <label>:201:                                    ; preds = %197
  %202 = getelementptr inbounds i8, i8* %200, i64 -1, !dbg !966
  call void @llvm.dbg.value(metadata i8* %202, i64 0, metadata !746, metadata !621) #10, !dbg !964
  store i8 45, i8* %202, align 1, !dbg !967, !tbaa !751
  br label %203, !dbg !968

; <label>:203:                                    ; preds = %197, %201
  %204 = phi i8* [ %202, %201 ], [ %200, %197 ]
  call void @llvm.dbg.value(metadata i8* %204, i64 0, metadata !746, metadata !621) #10, !dbg !964
  %205 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i64 0, i64 0), i8* %204) #10, !dbg !969
  %206 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i64 -2147483648) #10, !dbg !970
  %207 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i64 0, i64 0), i8* %13) #10, !dbg !974
  call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !738, metadata !621) #10, !dbg !976
  %208 = load i8, i8* %13, align 1, !dbg !979, !tbaa !751
  %209 = icmp eq i8 %208, 45, !dbg !980
  %210 = zext i1 %209 to i64, !dbg !981
  %211 = getelementptr inbounds i8, i8* %13, i64 %210, !dbg !981
  call void @llvm.dbg.value(metadata i8* %211, i64 0, metadata !744, metadata !621) #10, !dbg !982
  %212 = call i64 @strlen(i8* %211) #13, !dbg !983
  %213 = getelementptr inbounds i8, i8* %211, i64 %212, !dbg !984
  call void @llvm.dbg.value(metadata i8* %213, i64 0, metadata !745, metadata !621) #10, !dbg !985
  %214 = getelementptr inbounds i8, i8* %211, i64 -1, !dbg !986
  br label %215, !dbg !987

; <label>:215:                                    ; preds = %215, %203
  %216 = phi i8* [ %213, %203 ], [ %218, %215 ]
  %217 = phi i8* [ %214, %203 ], [ %218, %215 ]
  call void @llvm.dbg.value(metadata i8* %216, i64 0, metadata !745, metadata !621) #10, !dbg !985
  store i8 48, i8* %217, align 1, !tbaa !751
  %218 = getelementptr inbounds i8, i8* %216, i64 -1, !dbg !988
  call void @llvm.dbg.value(metadata i8* %218, i64 0, metadata !745, metadata !621) #10, !dbg !985
  %219 = load i8, i8* %218, align 1, !dbg !989, !tbaa !751
  %220 = icmp eq i8 %219, 57, !dbg !990
  br i1 %220, label %215, label %221, !dbg !991, !llvm.loop !765

; <label>:221:                                    ; preds = %215
  %222 = add i8 %219, 1, !dbg !992
  store i8 %222, i8* %218, align 1, !dbg !992, !tbaa !751
  %223 = icmp ult i8* %211, %218, !dbg !993
  %224 = select i1 %223, i8* %211, i8* %218, !dbg !993
  call void @llvm.dbg.value(metadata i8* %224, i64 0, metadata !746, metadata !621) #10, !dbg !994
  br i1 %209, label %225, label %227, !dbg !995

; <label>:225:                                    ; preds = %221
  %226 = getelementptr inbounds i8, i8* %224, i64 -1, !dbg !996
  call void @llvm.dbg.value(metadata i8* %226, i64 0, metadata !746, metadata !621) #10, !dbg !994
  store i8 45, i8* %226, align 1, !dbg !997, !tbaa !751
  br label %227, !dbg !998

; <label>:227:                                    ; preds = %221, %225
  %228 = phi i8* [ %226, %225 ], [ %224, %221 ]
  call void @llvm.dbg.value(metadata i8* %228, i64 0, metadata !746, metadata !621) #10, !dbg !994
  %229 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.31, i64 0, i64 0), i8* %228) #10, !dbg !999
  %230 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i64 4294967295) #10, !dbg !1001
  %231 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.32, i64 0, i64 0), i8* %13) #10, !dbg !1002
  call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !738, metadata !621) #10, !dbg !1003
  %232 = load i8, i8* %13, align 1, !dbg !1005, !tbaa !751
  %233 = icmp eq i8 %232, 45, !dbg !1006
  %234 = zext i1 %233 to i64, !dbg !1007
  %235 = getelementptr inbounds i8, i8* %13, i64 %234, !dbg !1007
  call void @llvm.dbg.value(metadata i8* %235, i64 0, metadata !744, metadata !621) #10, !dbg !1008
  %236 = call i64 @strlen(i8* %235) #13, !dbg !1009
  %237 = getelementptr inbounds i8, i8* %235, i64 %236, !dbg !1010
  call void @llvm.dbg.value(metadata i8* %237, i64 0, metadata !745, metadata !621) #10, !dbg !1011
  %238 = getelementptr inbounds i8, i8* %235, i64 -1, !dbg !1012
  br label %239, !dbg !1013

; <label>:239:                                    ; preds = %239, %227
  %240 = phi i8* [ %237, %227 ], [ %242, %239 ]
  %241 = phi i8* [ %238, %227 ], [ %242, %239 ]
  call void @llvm.dbg.value(metadata i8* %240, i64 0, metadata !745, metadata !621) #10, !dbg !1011
  store i8 48, i8* %241, align 1, !tbaa !751
  %242 = getelementptr inbounds i8, i8* %240, i64 -1, !dbg !1014
  call void @llvm.dbg.value(metadata i8* %242, i64 0, metadata !745, metadata !621) #10, !dbg !1011
  %243 = load i8, i8* %242, align 1, !dbg !1015, !tbaa !751
  %244 = icmp eq i8 %243, 57, !dbg !1016
  br i1 %244, label %239, label %245, !dbg !1017, !llvm.loop !765

; <label>:245:                                    ; preds = %239
  %246 = add i8 %243, 1, !dbg !1018
  store i8 %246, i8* %242, align 1, !dbg !1018, !tbaa !751
  %247 = icmp ult i8* %235, %242, !dbg !1019
  %248 = select i1 %247, i8* %235, i8* %242, !dbg !1019
  call void @llvm.dbg.value(metadata i8* %248, i64 0, metadata !746, metadata !621) #10, !dbg !1020
  br i1 %233, label %249, label %251, !dbg !1021

; <label>:249:                                    ; preds = %245
  %250 = getelementptr inbounds i8, i8* %248, i64 -1, !dbg !1022
  call void @llvm.dbg.value(metadata i8* %250, i64 0, metadata !746, metadata !621) #10, !dbg !1020
  store i8 45, i8* %250, align 1, !dbg !1023, !tbaa !751
  br label %251, !dbg !1024

; <label>:251:                                    ; preds = %245, %249
  %252 = phi i8* [ %250, %249 ], [ %248, %245 ]
  call void @llvm.dbg.value(metadata i8* %252, i64 0, metadata !746, metadata !621) #10, !dbg !1020
  %253 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.33, i64 0, i64 0), i8* %252) #10, !dbg !1025
  %254 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i64 9223372036854775807) #10, !dbg !1026
  %255 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.34, i64 0, i64 0), i8* %13) #10, !dbg !1027
  call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !738, metadata !621) #10, !dbg !1028
  %256 = load i8, i8* %13, align 1, !dbg !1030, !tbaa !751
  %257 = icmp eq i8 %256, 45, !dbg !1031
  %258 = zext i1 %257 to i64, !dbg !1032
  %259 = getelementptr inbounds i8, i8* %13, i64 %258, !dbg !1032
  call void @llvm.dbg.value(metadata i8* %259, i64 0, metadata !744, metadata !621) #10, !dbg !1033
  %260 = call i64 @strlen(i8* %259) #13, !dbg !1034
  %261 = getelementptr inbounds i8, i8* %259, i64 %260, !dbg !1035
  call void @llvm.dbg.value(metadata i8* %261, i64 0, metadata !745, metadata !621) #10, !dbg !1036
  %262 = getelementptr inbounds i8, i8* %259, i64 -1, !dbg !1037
  br label %263, !dbg !1038

; <label>:263:                                    ; preds = %263, %251
  %264 = phi i8* [ %261, %251 ], [ %266, %263 ]
  %265 = phi i8* [ %262, %251 ], [ %266, %263 ]
  call void @llvm.dbg.value(metadata i8* %264, i64 0, metadata !745, metadata !621) #10, !dbg !1036
  store i8 48, i8* %265, align 1, !tbaa !751
  %266 = getelementptr inbounds i8, i8* %264, i64 -1, !dbg !1039
  call void @llvm.dbg.value(metadata i8* %266, i64 0, metadata !745, metadata !621) #10, !dbg !1036
  %267 = load i8, i8* %266, align 1, !dbg !1040, !tbaa !751
  %268 = icmp eq i8 %267, 57, !dbg !1041
  br i1 %268, label %263, label %269, !dbg !1042, !llvm.loop !765

; <label>:269:                                    ; preds = %263
  %270 = add i8 %267, 1, !dbg !1043
  store i8 %270, i8* %266, align 1, !dbg !1043, !tbaa !751
  %271 = icmp ult i8* %259, %266, !dbg !1044
  %272 = select i1 %271, i8* %259, i8* %266, !dbg !1044
  call void @llvm.dbg.value(metadata i8* %272, i64 0, metadata !746, metadata !621) #10, !dbg !1045
  br i1 %257, label %273, label %275, !dbg !1046

; <label>:273:                                    ; preds = %269
  %274 = getelementptr inbounds i8, i8* %272, i64 -1, !dbg !1047
  call void @llvm.dbg.value(metadata i8* %274, i64 0, metadata !746, metadata !621) #10, !dbg !1045
  store i8 45, i8* %274, align 1, !dbg !1048, !tbaa !751
  br label %275, !dbg !1049

; <label>:275:                                    ; preds = %269, %273
  %276 = phi i8* [ %274, %273 ], [ %272, %269 ]
  call void @llvm.dbg.value(metadata i8* %276, i64 0, metadata !746, metadata !621) #10, !dbg !1045
  %277 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i64 0, i64 0), i8* %276) #10, !dbg !1050
  %278 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i64 -9223372036854775808) #10, !dbg !1051
  %279 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.36, i64 0, i64 0), i8* %13) #10, !dbg !1055
  call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !738, metadata !621) #10, !dbg !1057
  %280 = load i8, i8* %13, align 1, !dbg !1060, !tbaa !751
  %281 = icmp eq i8 %280, 45, !dbg !1061
  %282 = zext i1 %281 to i64, !dbg !1062
  %283 = getelementptr inbounds i8, i8* %13, i64 %282, !dbg !1062
  call void @llvm.dbg.value(metadata i8* %283, i64 0, metadata !744, metadata !621) #10, !dbg !1063
  %284 = call i64 @strlen(i8* %283) #13, !dbg !1064
  %285 = getelementptr inbounds i8, i8* %283, i64 %284, !dbg !1065
  call void @llvm.dbg.value(metadata i8* %285, i64 0, metadata !745, metadata !621) #10, !dbg !1066
  %286 = getelementptr inbounds i8, i8* %283, i64 -1, !dbg !1067
  br label %287, !dbg !1068

; <label>:287:                                    ; preds = %287, %275
  %288 = phi i8* [ %285, %275 ], [ %290, %287 ]
  %289 = phi i8* [ %286, %275 ], [ %290, %287 ]
  call void @llvm.dbg.value(metadata i8* %288, i64 0, metadata !745, metadata !621) #10, !dbg !1066
  store i8 48, i8* %289, align 1, !tbaa !751
  %290 = getelementptr inbounds i8, i8* %288, i64 -1, !dbg !1069
  call void @llvm.dbg.value(metadata i8* %290, i64 0, metadata !745, metadata !621) #10, !dbg !1066
  %291 = load i8, i8* %290, align 1, !dbg !1070, !tbaa !751
  %292 = icmp eq i8 %291, 57, !dbg !1071
  br i1 %292, label %287, label %293, !dbg !1072, !llvm.loop !765

; <label>:293:                                    ; preds = %287
  %294 = add i8 %291, 1, !dbg !1073
  store i8 %294, i8* %290, align 1, !dbg !1073, !tbaa !751
  %295 = icmp ult i8* %283, %290, !dbg !1074
  %296 = select i1 %295, i8* %283, i8* %290, !dbg !1074
  call void @llvm.dbg.value(metadata i8* %296, i64 0, metadata !746, metadata !621) #10, !dbg !1075
  br i1 %281, label %297, label %299, !dbg !1076

; <label>:297:                                    ; preds = %293
  %298 = getelementptr inbounds i8, i8* %296, i64 -1, !dbg !1077
  call void @llvm.dbg.value(metadata i8* %298, i64 0, metadata !746, metadata !621) #10, !dbg !1075
  store i8 45, i8* %298, align 1, !dbg !1078, !tbaa !751
  br label %299, !dbg !1079

; <label>:299:                                    ; preds = %293, %297
  %300 = phi i8* [ %298, %297 ], [ %296, %293 ]
  call void @llvm.dbg.value(metadata i8* %300, i64 0, metadata !746, metadata !621) #10, !dbg !1075
  %301 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.37, i64 0, i64 0), i8* %300) #10, !dbg !1080
  %302 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i64 -1) #10, !dbg !1082
  %303 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.38, i64 0, i64 0), i8* %13) #10, !dbg !1083
  call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !738, metadata !621) #10, !dbg !1084
  %304 = load i8, i8* %13, align 1, !dbg !1086, !tbaa !751
  %305 = icmp eq i8 %304, 45, !dbg !1087
  %306 = zext i1 %305 to i64, !dbg !1088
  %307 = getelementptr inbounds i8, i8* %13, i64 %306, !dbg !1088
  call void @llvm.dbg.value(metadata i8* %307, i64 0, metadata !744, metadata !621) #10, !dbg !1089
  %308 = call i64 @strlen(i8* %307) #13, !dbg !1090
  %309 = getelementptr inbounds i8, i8* %307, i64 %308, !dbg !1091
  call void @llvm.dbg.value(metadata i8* %309, i64 0, metadata !745, metadata !621) #10, !dbg !1092
  %310 = getelementptr inbounds i8, i8* %307, i64 -1, !dbg !1093
  br label %311, !dbg !1094

; <label>:311:                                    ; preds = %311, %299
  %312 = phi i8* [ %309, %299 ], [ %314, %311 ]
  %313 = phi i8* [ %310, %299 ], [ %314, %311 ]
  call void @llvm.dbg.value(metadata i8* %312, i64 0, metadata !745, metadata !621) #10, !dbg !1092
  store i8 48, i8* %313, align 1, !tbaa !751
  %314 = getelementptr inbounds i8, i8* %312, i64 -1, !dbg !1095
  call void @llvm.dbg.value(metadata i8* %314, i64 0, metadata !745, metadata !621) #10, !dbg !1092
  %315 = load i8, i8* %314, align 1, !dbg !1096, !tbaa !751
  %316 = icmp eq i8 %315, 57, !dbg !1097
  br i1 %316, label %311, label %317, !dbg !1098, !llvm.loop !765

; <label>:317:                                    ; preds = %311
  %318 = add i8 %315, 1, !dbg !1099
  store i8 %318, i8* %314, align 1, !dbg !1099, !tbaa !751
  %319 = icmp ult i8* %307, %314, !dbg !1100
  %320 = select i1 %319, i8* %307, i8* %314, !dbg !1100
  call void @llvm.dbg.value(metadata i8* %320, i64 0, metadata !746, metadata !621) #10, !dbg !1101
  br i1 %305, label %321, label %323, !dbg !1102

; <label>:321:                                    ; preds = %317
  %322 = getelementptr inbounds i8, i8* %320, i64 -1, !dbg !1103
  call void @llvm.dbg.value(metadata i8* %322, i64 0, metadata !746, metadata !621) #10, !dbg !1101
  store i8 45, i8* %322, align 1, !dbg !1104, !tbaa !751
  br label %323, !dbg !1105

; <label>:323:                                    ; preds = %317, %321
  %324 = phi i8* [ %322, %321 ], [ %320, %317 ]
  call void @llvm.dbg.value(metadata i8* %324, i64 0, metadata !746, metadata !621) #10, !dbg !1101
  %325 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.39, i64 0, i64 0), i8* %324) #10, !dbg !1106
  %326 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i64 -1) #10, !dbg !1107
  %327 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.40, i64 0, i64 0), i8* %13) #10, !dbg !1108
  call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !738, metadata !621) #10, !dbg !1109
  %328 = load i8, i8* %13, align 1, !dbg !1111, !tbaa !751
  %329 = icmp eq i8 %328, 45, !dbg !1112
  %330 = zext i1 %329 to i64, !dbg !1113
  %331 = getelementptr inbounds i8, i8* %13, i64 %330, !dbg !1113
  call void @llvm.dbg.value(metadata i8* %331, i64 0, metadata !744, metadata !621) #10, !dbg !1114
  %332 = call i64 @strlen(i8* %331) #13, !dbg !1115
  %333 = getelementptr inbounds i8, i8* %331, i64 %332, !dbg !1116
  call void @llvm.dbg.value(metadata i8* %333, i64 0, metadata !745, metadata !621) #10, !dbg !1117
  %334 = getelementptr inbounds i8, i8* %331, i64 -1, !dbg !1118
  br label %335, !dbg !1119

; <label>:335:                                    ; preds = %335, %323
  %336 = phi i8* [ %333, %323 ], [ %338, %335 ]
  %337 = phi i8* [ %334, %323 ], [ %338, %335 ]
  call void @llvm.dbg.value(metadata i8* %336, i64 0, metadata !745, metadata !621) #10, !dbg !1117
  store i8 48, i8* %337, align 1, !tbaa !751
  %338 = getelementptr inbounds i8, i8* %336, i64 -1, !dbg !1120
  call void @llvm.dbg.value(metadata i8* %338, i64 0, metadata !745, metadata !621) #10, !dbg !1117
  %339 = load i8, i8* %338, align 1, !dbg !1121, !tbaa !751
  %340 = icmp eq i8 %339, 57, !dbg !1122
  br i1 %340, label %335, label %341, !dbg !1123, !llvm.loop !765

; <label>:341:                                    ; preds = %335
  %342 = add i8 %339, 1, !dbg !1124
  store i8 %342, i8* %338, align 1, !dbg !1124, !tbaa !751
  %343 = icmp ult i8* %331, %338, !dbg !1125
  %344 = select i1 %343, i8* %331, i8* %338, !dbg !1125
  call void @llvm.dbg.value(metadata i8* %344, i64 0, metadata !746, metadata !621) #10, !dbg !1126
  br i1 %329, label %345, label %347, !dbg !1127

; <label>:345:                                    ; preds = %341
  %346 = getelementptr inbounds i8, i8* %344, i64 -1, !dbg !1128
  call void @llvm.dbg.value(metadata i8* %346, i64 0, metadata !746, metadata !621) #10, !dbg !1126
  store i8 45, i8* %346, align 1, !dbg !1129, !tbaa !751
  br label %347, !dbg !1130

; <label>:347:                                    ; preds = %341, %345
  %348 = phi i8* [ %346, %345 ], [ %344, %341 ]
  call void @llvm.dbg.value(metadata i8* %348, i64 0, metadata !746, metadata !621) #10, !dbg !1126
  %349 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.41, i64 0, i64 0), i8* %348) #10, !dbg !1131
  %350 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i64 9223372036854775807) #10, !dbg !1132
  %351 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.42, i64 0, i64 0), i8* %13) #10, !dbg !1133
  call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !738, metadata !621) #10, !dbg !1134
  %352 = load i8, i8* %13, align 1, !dbg !1136, !tbaa !751
  %353 = icmp eq i8 %352, 45, !dbg !1137
  %354 = zext i1 %353 to i64, !dbg !1138
  %355 = getelementptr inbounds i8, i8* %13, i64 %354, !dbg !1138
  call void @llvm.dbg.value(metadata i8* %355, i64 0, metadata !744, metadata !621) #10, !dbg !1139
  %356 = call i64 @strlen(i8* %355) #13, !dbg !1140
  %357 = getelementptr inbounds i8, i8* %355, i64 %356, !dbg !1141
  call void @llvm.dbg.value(metadata i8* %357, i64 0, metadata !745, metadata !621) #10, !dbg !1142
  %358 = getelementptr inbounds i8, i8* %355, i64 -1, !dbg !1143
  br label %359, !dbg !1144

; <label>:359:                                    ; preds = %359, %347
  %360 = phi i8* [ %357, %347 ], [ %362, %359 ]
  %361 = phi i8* [ %358, %347 ], [ %362, %359 ]
  call void @llvm.dbg.value(metadata i8* %360, i64 0, metadata !745, metadata !621) #10, !dbg !1142
  store i8 48, i8* %361, align 1, !tbaa !751
  %362 = getelementptr inbounds i8, i8* %360, i64 -1, !dbg !1145
  call void @llvm.dbg.value(metadata i8* %362, i64 0, metadata !745, metadata !621) #10, !dbg !1142
  %363 = load i8, i8* %362, align 1, !dbg !1146, !tbaa !751
  %364 = icmp eq i8 %363, 57, !dbg !1147
  br i1 %364, label %359, label %365, !dbg !1148, !llvm.loop !765

; <label>:365:                                    ; preds = %359
  %366 = add i8 %363, 1, !dbg !1149
  store i8 %366, i8* %362, align 1, !dbg !1149, !tbaa !751
  %367 = icmp ult i8* %355, %362, !dbg !1150
  %368 = select i1 %367, i8* %355, i8* %362, !dbg !1150
  call void @llvm.dbg.value(metadata i8* %368, i64 0, metadata !746, metadata !621) #10, !dbg !1151
  br i1 %353, label %369, label %371, !dbg !1152

; <label>:369:                                    ; preds = %365
  %370 = getelementptr inbounds i8, i8* %368, i64 -1, !dbg !1153
  call void @llvm.dbg.value(metadata i8* %370, i64 0, metadata !746, metadata !621) #10, !dbg !1151
  store i8 45, i8* %370, align 1, !dbg !1154, !tbaa !751
  br label %371, !dbg !1155

; <label>:371:                                    ; preds = %365, %369
  %372 = phi i8* [ %370, %369 ], [ %368, %365 ]
  call void @llvm.dbg.value(metadata i8* %372, i64 0, metadata !746, metadata !621) #10, !dbg !1151
  %373 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.43, i64 0, i64 0), i8* %372) #10, !dbg !1156
  %374 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i64 -9223372036854775808) #10, !dbg !1157
  %375 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.44, i64 0, i64 0), i8* %13) #10, !dbg !1161
  call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !738, metadata !621) #10, !dbg !1163
  %376 = load i8, i8* %13, align 1, !dbg !1166, !tbaa !751
  %377 = icmp eq i8 %376, 45, !dbg !1167
  %378 = zext i1 %377 to i64, !dbg !1168
  %379 = getelementptr inbounds i8, i8* %13, i64 %378, !dbg !1168
  call void @llvm.dbg.value(metadata i8* %379, i64 0, metadata !744, metadata !621) #10, !dbg !1169
  %380 = call i64 @strlen(i8* %379) #13, !dbg !1170
  %381 = getelementptr inbounds i8, i8* %379, i64 %380, !dbg !1171
  call void @llvm.dbg.value(metadata i8* %381, i64 0, metadata !745, metadata !621) #10, !dbg !1172
  %382 = getelementptr inbounds i8, i8* %379, i64 -1, !dbg !1173
  br label %383, !dbg !1174

; <label>:383:                                    ; preds = %383, %371
  %384 = phi i8* [ %381, %371 ], [ %386, %383 ]
  %385 = phi i8* [ %382, %371 ], [ %386, %383 ]
  call void @llvm.dbg.value(metadata i8* %384, i64 0, metadata !745, metadata !621) #10, !dbg !1172
  store i8 48, i8* %385, align 1, !tbaa !751
  %386 = getelementptr inbounds i8, i8* %384, i64 -1, !dbg !1175
  call void @llvm.dbg.value(metadata i8* %386, i64 0, metadata !745, metadata !621) #10, !dbg !1172
  %387 = load i8, i8* %386, align 1, !dbg !1176, !tbaa !751
  %388 = icmp eq i8 %387, 57, !dbg !1177
  br i1 %388, label %383, label %389, !dbg !1178, !llvm.loop !765

; <label>:389:                                    ; preds = %383
  %390 = add i8 %387, 1, !dbg !1179
  store i8 %390, i8* %386, align 1, !dbg !1179, !tbaa !751
  %391 = icmp ult i8* %379, %386, !dbg !1180
  %392 = select i1 %391, i8* %379, i8* %386, !dbg !1180
  call void @llvm.dbg.value(metadata i8* %392, i64 0, metadata !746, metadata !621) #10, !dbg !1181
  br i1 %377, label %393, label %395, !dbg !1182

; <label>:393:                                    ; preds = %389
  %394 = getelementptr inbounds i8, i8* %392, i64 -1, !dbg !1183
  call void @llvm.dbg.value(metadata i8* %394, i64 0, metadata !746, metadata !621) #10, !dbg !1181
  store i8 45, i8* %394, align 1, !dbg !1184, !tbaa !751
  br label %395, !dbg !1185

; <label>:395:                                    ; preds = %389, %393
  %396 = phi i8* [ %394, %393 ], [ %392, %389 ]
  call void @llvm.dbg.value(metadata i8* %396, i64 0, metadata !746, metadata !621) #10, !dbg !1181
  %397 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.45, i64 0, i64 0), i8* %396) #10, !dbg !1186
  %398 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i64 9223372036854775807) #10, !dbg !1188
  %399 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.46, i64 0, i64 0), i8* %13) #10, !dbg !1189
  call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !738, metadata !621) #10, !dbg !1190
  %400 = load i8, i8* %13, align 1, !dbg !1192, !tbaa !751
  %401 = icmp eq i8 %400, 45, !dbg !1193
  %402 = zext i1 %401 to i64, !dbg !1194
  %403 = getelementptr inbounds i8, i8* %13, i64 %402, !dbg !1194
  call void @llvm.dbg.value(metadata i8* %403, i64 0, metadata !744, metadata !621) #10, !dbg !1195
  %404 = call i64 @strlen(i8* %403) #13, !dbg !1196
  %405 = getelementptr inbounds i8, i8* %403, i64 %404, !dbg !1197
  call void @llvm.dbg.value(metadata i8* %405, i64 0, metadata !745, metadata !621) #10, !dbg !1198
  %406 = getelementptr inbounds i8, i8* %403, i64 -1, !dbg !1199
  br label %407, !dbg !1200

; <label>:407:                                    ; preds = %407, %395
  %408 = phi i8* [ %405, %395 ], [ %410, %407 ]
  %409 = phi i8* [ %406, %395 ], [ %410, %407 ]
  call void @llvm.dbg.value(metadata i8* %408, i64 0, metadata !745, metadata !621) #10, !dbg !1198
  store i8 48, i8* %409, align 1, !tbaa !751
  %410 = getelementptr inbounds i8, i8* %408, i64 -1, !dbg !1201
  call void @llvm.dbg.value(metadata i8* %410, i64 0, metadata !745, metadata !621) #10, !dbg !1198
  %411 = load i8, i8* %410, align 1, !dbg !1202, !tbaa !751
  %412 = icmp eq i8 %411, 57, !dbg !1203
  br i1 %412, label %407, label %413, !dbg !1204, !llvm.loop !765

; <label>:413:                                    ; preds = %407
  %414 = add i8 %411, 1, !dbg !1205
  store i8 %414, i8* %410, align 1, !dbg !1205, !tbaa !751
  %415 = icmp ult i8* %403, %410, !dbg !1206
  %416 = select i1 %415, i8* %403, i8* %410, !dbg !1206
  call void @llvm.dbg.value(metadata i8* %416, i64 0, metadata !746, metadata !621) #10, !dbg !1207
  br i1 %401, label %417, label %419, !dbg !1208

; <label>:417:                                    ; preds = %413
  %418 = getelementptr inbounds i8, i8* %416, i64 -1, !dbg !1209
  call void @llvm.dbg.value(metadata i8* %418, i64 0, metadata !746, metadata !621) #10, !dbg !1207
  store i8 45, i8* %418, align 1, !dbg !1210, !tbaa !751
  br label %419, !dbg !1211

; <label>:419:                                    ; preds = %413, %417
  %420 = phi i8* [ %418, %417 ], [ %416, %413 ]
  call void @llvm.dbg.value(metadata i8* %420, i64 0, metadata !746, metadata !621) #10, !dbg !1207
  %421 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.47, i64 0, i64 0), i8* %420) #10, !dbg !1212
  %422 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i64 -9223372036854775808) #10, !dbg !1213
  %423 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.48, i64 0, i64 0), i8* %13) #10, !dbg !1217
  call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !738, metadata !621) #10, !dbg !1219
  %424 = load i8, i8* %13, align 1, !dbg !1222, !tbaa !751
  %425 = icmp eq i8 %424, 45, !dbg !1223
  %426 = zext i1 %425 to i64, !dbg !1224
  %427 = getelementptr inbounds i8, i8* %13, i64 %426, !dbg !1224
  call void @llvm.dbg.value(metadata i8* %427, i64 0, metadata !744, metadata !621) #10, !dbg !1225
  %428 = call i64 @strlen(i8* %427) #13, !dbg !1226
  %429 = getelementptr inbounds i8, i8* %427, i64 %428, !dbg !1227
  call void @llvm.dbg.value(metadata i8* %429, i64 0, metadata !745, metadata !621) #10, !dbg !1228
  %430 = getelementptr inbounds i8, i8* %427, i64 -1, !dbg !1229
  br label %431, !dbg !1230

; <label>:431:                                    ; preds = %431, %419
  %432 = phi i8* [ %429, %419 ], [ %434, %431 ]
  %433 = phi i8* [ %430, %419 ], [ %434, %431 ]
  call void @llvm.dbg.value(metadata i8* %432, i64 0, metadata !745, metadata !621) #10, !dbg !1228
  store i8 48, i8* %433, align 1, !tbaa !751
  %434 = getelementptr inbounds i8, i8* %432, i64 -1, !dbg !1231
  call void @llvm.dbg.value(metadata i8* %434, i64 0, metadata !745, metadata !621) #10, !dbg !1228
  %435 = load i8, i8* %434, align 1, !dbg !1232, !tbaa !751
  %436 = icmp eq i8 %435, 57, !dbg !1233
  br i1 %436, label %431, label %437, !dbg !1234, !llvm.loop !765

; <label>:437:                                    ; preds = %431
  %438 = add i8 %435, 1, !dbg !1235
  store i8 %438, i8* %434, align 1, !dbg !1235, !tbaa !751
  %439 = icmp ult i8* %427, %434, !dbg !1236
  %440 = select i1 %439, i8* %427, i8* %434, !dbg !1236
  call void @llvm.dbg.value(metadata i8* %440, i64 0, metadata !746, metadata !621) #10, !dbg !1237
  br i1 %425, label %441, label %443, !dbg !1238

; <label>:441:                                    ; preds = %437
  %442 = getelementptr inbounds i8, i8* %440, i64 -1, !dbg !1239
  call void @llvm.dbg.value(metadata i8* %442, i64 0, metadata !746, metadata !621) #10, !dbg !1237
  store i8 45, i8* %442, align 1, !dbg !1240, !tbaa !751
  br label %443, !dbg !1241

; <label>:443:                                    ; preds = %437, %441
  %444 = phi i8* [ %442, %441 ], [ %440, %437 ]
  call void @llvm.dbg.value(metadata i8* %444, i64 0, metadata !746, metadata !621) #10, !dbg !1237
  %445 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.49, i64 0, i64 0), i8* %444) #10, !dbg !1242
  %446 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i64 4294967295) #10, !dbg !1244
  %447 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.50, i64 0, i64 0), i8* %13) #10, !dbg !1245
  call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !738, metadata !621) #10, !dbg !1246
  %448 = load i8, i8* %13, align 1, !dbg !1248, !tbaa !751
  %449 = icmp eq i8 %448, 45, !dbg !1249
  %450 = zext i1 %449 to i64, !dbg !1250
  %451 = getelementptr inbounds i8, i8* %13, i64 %450, !dbg !1250
  call void @llvm.dbg.value(metadata i8* %451, i64 0, metadata !744, metadata !621) #10, !dbg !1251
  %452 = call i64 @strlen(i8* %451) #13, !dbg !1252
  %453 = getelementptr inbounds i8, i8* %451, i64 %452, !dbg !1253
  call void @llvm.dbg.value(metadata i8* %453, i64 0, metadata !745, metadata !621) #10, !dbg !1254
  %454 = getelementptr inbounds i8, i8* %451, i64 -1, !dbg !1255
  br label %455, !dbg !1256

; <label>:455:                                    ; preds = %455, %443
  %456 = phi i8* [ %453, %443 ], [ %458, %455 ]
  %457 = phi i8* [ %454, %443 ], [ %458, %455 ]
  call void @llvm.dbg.value(metadata i8* %456, i64 0, metadata !745, metadata !621) #10, !dbg !1254
  store i8 48, i8* %457, align 1, !tbaa !751
  %458 = getelementptr inbounds i8, i8* %456, i64 -1, !dbg !1257
  call void @llvm.dbg.value(metadata i8* %458, i64 0, metadata !745, metadata !621) #10, !dbg !1254
  %459 = load i8, i8* %458, align 1, !dbg !1258, !tbaa !751
  %460 = icmp eq i8 %459, 57, !dbg !1259
  br i1 %460, label %455, label %461, !dbg !1260, !llvm.loop !765

; <label>:461:                                    ; preds = %455
  %462 = add i8 %459, 1, !dbg !1261
  store i8 %462, i8* %458, align 1, !dbg !1261, !tbaa !751
  %463 = icmp ult i8* %451, %458, !dbg !1262
  %464 = select i1 %463, i8* %451, i8* %458, !dbg !1262
  call void @llvm.dbg.value(metadata i8* %464, i64 0, metadata !746, metadata !621) #10, !dbg !1263
  br i1 %449, label %465, label %467, !dbg !1264

; <label>:465:                                    ; preds = %461
  %466 = getelementptr inbounds i8, i8* %464, i64 -1, !dbg !1265
  call void @llvm.dbg.value(metadata i8* %466, i64 0, metadata !746, metadata !621) #10, !dbg !1263
  store i8 45, i8* %466, align 1, !dbg !1266, !tbaa !751
  br label %467, !dbg !1267

; <label>:467:                                    ; preds = %461, %465
  %468 = phi i8* [ %466, %465 ], [ %464, %461 ]
  call void @llvm.dbg.value(metadata i8* %468, i64 0, metadata !746, metadata !621) #10, !dbg !1263
  %469 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.51, i64 0, i64 0), i8* %468) #10, !dbg !1268
  %470 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i64 4294967295) #10, !dbg !1269
  %471 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.52, i64 0, i64 0), i8* %13) #10, !dbg !1270
  call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !738, metadata !621) #10, !dbg !1271
  %472 = load i8, i8* %13, align 1, !dbg !1273, !tbaa !751
  %473 = icmp eq i8 %472, 45, !dbg !1274
  %474 = zext i1 %473 to i64, !dbg !1275
  %475 = getelementptr inbounds i8, i8* %13, i64 %474, !dbg !1275
  call void @llvm.dbg.value(metadata i8* %475, i64 0, metadata !744, metadata !621) #10, !dbg !1276
  %476 = call i64 @strlen(i8* %475) #13, !dbg !1277
  %477 = getelementptr inbounds i8, i8* %475, i64 %476, !dbg !1278
  call void @llvm.dbg.value(metadata i8* %477, i64 0, metadata !745, metadata !621) #10, !dbg !1279
  %478 = getelementptr inbounds i8, i8* %475, i64 -1, !dbg !1280
  br label %479, !dbg !1281

; <label>:479:                                    ; preds = %479, %467
  %480 = phi i8* [ %477, %467 ], [ %482, %479 ]
  %481 = phi i8* [ %478, %467 ], [ %482, %479 ]
  call void @llvm.dbg.value(metadata i8* %480, i64 0, metadata !745, metadata !621) #10, !dbg !1279
  store i8 48, i8* %481, align 1, !tbaa !751
  %482 = getelementptr inbounds i8, i8* %480, i64 -1, !dbg !1282
  call void @llvm.dbg.value(metadata i8* %482, i64 0, metadata !745, metadata !621) #10, !dbg !1279
  %483 = load i8, i8* %482, align 1, !dbg !1283, !tbaa !751
  %484 = icmp eq i8 %483, 57, !dbg !1284
  br i1 %484, label %479, label %485, !dbg !1285, !llvm.loop !765

; <label>:485:                                    ; preds = %479
  %486 = add i8 %483, 1, !dbg !1286
  store i8 %486, i8* %482, align 1, !dbg !1286, !tbaa !751
  %487 = icmp ult i8* %475, %482, !dbg !1287
  %488 = select i1 %487, i8* %475, i8* %482, !dbg !1287
  call void @llvm.dbg.value(metadata i8* %488, i64 0, metadata !746, metadata !621) #10, !dbg !1288
  br i1 %473, label %489, label %491, !dbg !1289

; <label>:489:                                    ; preds = %485
  %490 = getelementptr inbounds i8, i8* %488, i64 -1, !dbg !1290
  call void @llvm.dbg.value(metadata i8* %490, i64 0, metadata !746, metadata !621) #10, !dbg !1288
  store i8 45, i8* %490, align 1, !dbg !1291, !tbaa !751
  br label %491, !dbg !1292

; <label>:491:                                    ; preds = %485, %489
  %492 = phi i8* [ %490, %489 ], [ %488, %485 ]
  call void @llvm.dbg.value(metadata i8* %492, i64 0, metadata !746, metadata !621) #10, !dbg !1288
  %493 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.53, i64 0, i64 0), i8* %492) #10, !dbg !1293
  %494 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i64 2147483647) #10, !dbg !1294
  %495 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.54, i64 0, i64 0), i8* %13) #10, !dbg !1295
  call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !738, metadata !621) #10, !dbg !1296
  %496 = load i8, i8* %13, align 1, !dbg !1298, !tbaa !751
  %497 = icmp eq i8 %496, 45, !dbg !1299
  %498 = zext i1 %497 to i64, !dbg !1300
  %499 = getelementptr inbounds i8, i8* %13, i64 %498, !dbg !1300
  call void @llvm.dbg.value(metadata i8* %499, i64 0, metadata !744, metadata !621) #10, !dbg !1301
  %500 = call i64 @strlen(i8* %499) #13, !dbg !1302
  %501 = getelementptr inbounds i8, i8* %499, i64 %500, !dbg !1303
  call void @llvm.dbg.value(metadata i8* %501, i64 0, metadata !745, metadata !621) #10, !dbg !1304
  %502 = getelementptr inbounds i8, i8* %499, i64 -1, !dbg !1305
  br label %503, !dbg !1306

; <label>:503:                                    ; preds = %503, %491
  %504 = phi i8* [ %501, %491 ], [ %506, %503 ]
  %505 = phi i8* [ %502, %491 ], [ %506, %503 ]
  call void @llvm.dbg.value(metadata i8* %504, i64 0, metadata !745, metadata !621) #10, !dbg !1304
  store i8 48, i8* %505, align 1, !tbaa !751
  %506 = getelementptr inbounds i8, i8* %504, i64 -1, !dbg !1307
  call void @llvm.dbg.value(metadata i8* %506, i64 0, metadata !745, metadata !621) #10, !dbg !1304
  %507 = load i8, i8* %506, align 1, !dbg !1308, !tbaa !751
  %508 = icmp eq i8 %507, 57, !dbg !1309
  br i1 %508, label %503, label %509, !dbg !1310, !llvm.loop !765

; <label>:509:                                    ; preds = %503
  %510 = add i8 %507, 1, !dbg !1311
  store i8 %510, i8* %506, align 1, !dbg !1311, !tbaa !751
  %511 = icmp ult i8* %499, %506, !dbg !1312
  %512 = select i1 %511, i8* %499, i8* %506, !dbg !1312
  call void @llvm.dbg.value(metadata i8* %512, i64 0, metadata !746, metadata !621) #10, !dbg !1313
  br i1 %497, label %513, label %515, !dbg !1314

; <label>:513:                                    ; preds = %509
  %514 = getelementptr inbounds i8, i8* %512, i64 -1, !dbg !1315
  call void @llvm.dbg.value(metadata i8* %514, i64 0, metadata !746, metadata !621) #10, !dbg !1313
  store i8 45, i8* %514, align 1, !dbg !1316, !tbaa !751
  br label %515, !dbg !1317

; <label>:515:                                    ; preds = %509, %513
  %516 = phi i8* [ %514, %513 ], [ %512, %509 ]
  call void @llvm.dbg.value(metadata i8* %516, i64 0, metadata !746, metadata !621) #10, !dbg !1313
  %517 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.55, i64 0, i64 0), i8* %516) #10, !dbg !1318
  %518 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i64 -2147483648) #10, !dbg !1319
  %519 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.56, i64 0, i64 0), i8* %13) #10, !dbg !1323
  call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !738, metadata !621) #10, !dbg !1325
  %520 = load i8, i8* %13, align 1, !dbg !1328, !tbaa !751
  %521 = icmp eq i8 %520, 45, !dbg !1329
  %522 = zext i1 %521 to i64, !dbg !1330
  %523 = getelementptr inbounds i8, i8* %13, i64 %522, !dbg !1330
  call void @llvm.dbg.value(metadata i8* %523, i64 0, metadata !744, metadata !621) #10, !dbg !1331
  %524 = call i64 @strlen(i8* %523) #13, !dbg !1332
  %525 = getelementptr inbounds i8, i8* %523, i64 %524, !dbg !1333
  call void @llvm.dbg.value(metadata i8* %525, i64 0, metadata !745, metadata !621) #10, !dbg !1334
  %526 = getelementptr inbounds i8, i8* %523, i64 -1, !dbg !1335
  br label %527, !dbg !1336

; <label>:527:                                    ; preds = %527, %515
  %528 = phi i8* [ %525, %515 ], [ %530, %527 ]
  %529 = phi i8* [ %526, %515 ], [ %530, %527 ]
  call void @llvm.dbg.value(metadata i8* %528, i64 0, metadata !745, metadata !621) #10, !dbg !1334
  store i8 48, i8* %529, align 1, !tbaa !751
  %530 = getelementptr inbounds i8, i8* %528, i64 -1, !dbg !1337
  call void @llvm.dbg.value(metadata i8* %530, i64 0, metadata !745, metadata !621) #10, !dbg !1334
  %531 = load i8, i8* %530, align 1, !dbg !1338, !tbaa !751
  %532 = icmp eq i8 %531, 57, !dbg !1339
  br i1 %532, label %527, label %533, !dbg !1340, !llvm.loop !765

; <label>:533:                                    ; preds = %527
  %534 = add i8 %531, 1, !dbg !1341
  store i8 %534, i8* %530, align 1, !dbg !1341, !tbaa !751
  %535 = icmp ult i8* %523, %530, !dbg !1342
  %536 = select i1 %535, i8* %523, i8* %530, !dbg !1342
  call void @llvm.dbg.value(metadata i8* %536, i64 0, metadata !746, metadata !621) #10, !dbg !1343
  br i1 %521, label %537, label %539, !dbg !1344

; <label>:537:                                    ; preds = %533
  %538 = getelementptr inbounds i8, i8* %536, i64 -1, !dbg !1345
  call void @llvm.dbg.value(metadata i8* %538, i64 0, metadata !746, metadata !621) #10, !dbg !1343
  store i8 45, i8* %538, align 1, !dbg !1346, !tbaa !751
  br label %539, !dbg !1347

; <label>:539:                                    ; preds = %533, %537
  %540 = phi i8* [ %538, %537 ], [ %536, %533 ]
  call void @llvm.dbg.value(metadata i8* %540, i64 0, metadata !746, metadata !621) #10, !dbg !1343
  %541 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.57, i64 0, i64 0), i8* %540) #10, !dbg !1348
  %542 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i64 9223372036854775807) #10, !dbg !1350
  %543 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.58, i64 0, i64 0), i8* %13) #10, !dbg !1351
  call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !738, metadata !621) #10, !dbg !1352
  %544 = load i8, i8* %13, align 1, !dbg !1354, !tbaa !751
  %545 = icmp eq i8 %544, 45, !dbg !1355
  %546 = zext i1 %545 to i64, !dbg !1356
  %547 = getelementptr inbounds i8, i8* %13, i64 %546, !dbg !1356
  call void @llvm.dbg.value(metadata i8* %547, i64 0, metadata !744, metadata !621) #10, !dbg !1357
  %548 = call i64 @strlen(i8* %547) #13, !dbg !1358
  %549 = getelementptr inbounds i8, i8* %547, i64 %548, !dbg !1359
  call void @llvm.dbg.value(metadata i8* %549, i64 0, metadata !745, metadata !621) #10, !dbg !1360
  %550 = getelementptr inbounds i8, i8* %547, i64 -1, !dbg !1361
  br label %551, !dbg !1362

; <label>:551:                                    ; preds = %551, %539
  %552 = phi i8* [ %549, %539 ], [ %554, %551 ]
  %553 = phi i8* [ %550, %539 ], [ %554, %551 ]
  call void @llvm.dbg.value(metadata i8* %552, i64 0, metadata !745, metadata !621) #10, !dbg !1360
  store i8 48, i8* %553, align 1, !tbaa !751
  %554 = getelementptr inbounds i8, i8* %552, i64 -1, !dbg !1363
  call void @llvm.dbg.value(metadata i8* %554, i64 0, metadata !745, metadata !621) #10, !dbg !1360
  %555 = load i8, i8* %554, align 1, !dbg !1364, !tbaa !751
  %556 = icmp eq i8 %555, 57, !dbg !1365
  br i1 %556, label %551, label %557, !dbg !1366, !llvm.loop !765

; <label>:557:                                    ; preds = %551
  %558 = add i8 %555, 1, !dbg !1367
  store i8 %558, i8* %554, align 1, !dbg !1367, !tbaa !751
  %559 = icmp ult i8* %547, %554, !dbg !1368
  %560 = select i1 %559, i8* %547, i8* %554, !dbg !1368
  call void @llvm.dbg.value(metadata i8* %560, i64 0, metadata !746, metadata !621) #10, !dbg !1369
  br i1 %545, label %561, label %563, !dbg !1370

; <label>:561:                                    ; preds = %557
  %562 = getelementptr inbounds i8, i8* %560, i64 -1, !dbg !1371
  call void @llvm.dbg.value(metadata i8* %562, i64 0, metadata !746, metadata !621) #10, !dbg !1369
  store i8 45, i8* %562, align 1, !dbg !1372, !tbaa !751
  br label %563, !dbg !1373

; <label>:563:                                    ; preds = %557, %561
  %564 = phi i8* [ %562, %561 ], [ %560, %557 ]
  call void @llvm.dbg.value(metadata i8* %564, i64 0, metadata !746, metadata !621) #10, !dbg !1369
  %565 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.59, i64 0, i64 0), i8* %564) #10, !dbg !1374
  %566 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i64 -9223372036854775808) #10, !dbg !1375
  %567 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.60, i64 0, i64 0), i8* %13) #10, !dbg !1379
  call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !738, metadata !621) #10, !dbg !1381
  %568 = load i8, i8* %13, align 1, !dbg !1384, !tbaa !751
  %569 = icmp eq i8 %568, 45, !dbg !1385
  %570 = zext i1 %569 to i64, !dbg !1386
  %571 = getelementptr inbounds i8, i8* %13, i64 %570, !dbg !1386
  call void @llvm.dbg.value(metadata i8* %571, i64 0, metadata !744, metadata !621) #10, !dbg !1387
  %572 = call i64 @strlen(i8* %571) #13, !dbg !1388
  %573 = getelementptr inbounds i8, i8* %571, i64 %572, !dbg !1389
  call void @llvm.dbg.value(metadata i8* %573, i64 0, metadata !745, metadata !621) #10, !dbg !1390
  %574 = getelementptr inbounds i8, i8* %571, i64 -1, !dbg !1391
  br label %575, !dbg !1392

; <label>:575:                                    ; preds = %575, %563
  %576 = phi i8* [ %573, %563 ], [ %578, %575 ]
  %577 = phi i8* [ %574, %563 ], [ %578, %575 ]
  call void @llvm.dbg.value(metadata i8* %576, i64 0, metadata !745, metadata !621) #10, !dbg !1390
  store i8 48, i8* %577, align 1, !tbaa !751
  %578 = getelementptr inbounds i8, i8* %576, i64 -1, !dbg !1393
  call void @llvm.dbg.value(metadata i8* %578, i64 0, metadata !745, metadata !621) #10, !dbg !1390
  %579 = load i8, i8* %578, align 1, !dbg !1394, !tbaa !751
  %580 = icmp eq i8 %579, 57, !dbg !1395
  br i1 %580, label %575, label %581, !dbg !1396, !llvm.loop !765

; <label>:581:                                    ; preds = %575
  %582 = add i8 %579, 1, !dbg !1397
  store i8 %582, i8* %578, align 1, !dbg !1397, !tbaa !751
  %583 = icmp ult i8* %571, %578, !dbg !1398
  %584 = select i1 %583, i8* %571, i8* %578, !dbg !1398
  call void @llvm.dbg.value(metadata i8* %584, i64 0, metadata !746, metadata !621) #10, !dbg !1399
  br i1 %569, label %585, label %587, !dbg !1400

; <label>:585:                                    ; preds = %581
  %586 = getelementptr inbounds i8, i8* %584, i64 -1, !dbg !1401
  call void @llvm.dbg.value(metadata i8* %586, i64 0, metadata !746, metadata !621) #10, !dbg !1399
  store i8 45, i8* %586, align 1, !dbg !1402, !tbaa !751
  br label %587, !dbg !1403

; <label>:587:                                    ; preds = %581, %585
  %588 = phi i8* [ %586, %585 ], [ %584, %581 ]
  call void @llvm.dbg.value(metadata i8* %588, i64 0, metadata !746, metadata !621) #10, !dbg !1399
  %589 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.61, i64 0, i64 0), i8* %588) #10, !dbg !1404
  %590 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i64 9223372036854775807) #10, !dbg !1406
  %591 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.62, i64 0, i64 0), i8* %13) #10, !dbg !1407
  call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !738, metadata !621) #10, !dbg !1408
  %592 = load i8, i8* %13, align 1, !dbg !1410, !tbaa !751
  %593 = icmp eq i8 %592, 45, !dbg !1411
  %594 = zext i1 %593 to i64, !dbg !1412
  %595 = getelementptr inbounds i8, i8* %13, i64 %594, !dbg !1412
  call void @llvm.dbg.value(metadata i8* %595, i64 0, metadata !744, metadata !621) #10, !dbg !1413
  %596 = call i64 @strlen(i8* %595) #13, !dbg !1414
  %597 = getelementptr inbounds i8, i8* %595, i64 %596, !dbg !1415
  call void @llvm.dbg.value(metadata i8* %597, i64 0, metadata !745, metadata !621) #10, !dbg !1416
  %598 = getelementptr inbounds i8, i8* %595, i64 -1, !dbg !1417
  br label %599, !dbg !1418

; <label>:599:                                    ; preds = %599, %587
  %600 = phi i8* [ %597, %587 ], [ %602, %599 ]
  %601 = phi i8* [ %598, %587 ], [ %602, %599 ]
  call void @llvm.dbg.value(metadata i8* %600, i64 0, metadata !745, metadata !621) #10, !dbg !1416
  store i8 48, i8* %601, align 1, !tbaa !751
  %602 = getelementptr inbounds i8, i8* %600, i64 -1, !dbg !1419
  call void @llvm.dbg.value(metadata i8* %602, i64 0, metadata !745, metadata !621) #10, !dbg !1416
  %603 = load i8, i8* %602, align 1, !dbg !1420, !tbaa !751
  %604 = icmp eq i8 %603, 57, !dbg !1421
  br i1 %604, label %599, label %605, !dbg !1422, !llvm.loop !765

; <label>:605:                                    ; preds = %599
  %606 = add i8 %603, 1, !dbg !1423
  store i8 %606, i8* %602, align 1, !dbg !1423, !tbaa !751
  %607 = icmp ult i8* %595, %602, !dbg !1424
  %608 = select i1 %607, i8* %595, i8* %602, !dbg !1424
  call void @llvm.dbg.value(metadata i8* %608, i64 0, metadata !746, metadata !621) #10, !dbg !1425
  br i1 %593, label %609, label %611, !dbg !1426

; <label>:609:                                    ; preds = %605
  %610 = getelementptr inbounds i8, i8* %608, i64 -1, !dbg !1427
  call void @llvm.dbg.value(metadata i8* %610, i64 0, metadata !746, metadata !621) #10, !dbg !1425
  store i8 45, i8* %610, align 1, !dbg !1428, !tbaa !751
  br label %611, !dbg !1429

; <label>:611:                                    ; preds = %605, %609
  %612 = phi i8* [ %610, %609 ], [ %608, %605 ]
  call void @llvm.dbg.value(metadata i8* %612, i64 0, metadata !746, metadata !621) #10, !dbg !1425
  %613 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.63, i64 0, i64 0), i8* %612) #10, !dbg !1430
  %614 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i64 -9223372036854775808) #10, !dbg !1431
  %615 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.64, i64 0, i64 0), i8* %13) #10, !dbg !1435
  call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !738, metadata !621) #10, !dbg !1437
  %616 = load i8, i8* %13, align 1, !dbg !1440, !tbaa !751
  %617 = icmp eq i8 %616, 45, !dbg !1441
  %618 = zext i1 %617 to i64, !dbg !1442
  %619 = getelementptr inbounds i8, i8* %13, i64 %618, !dbg !1442
  call void @llvm.dbg.value(metadata i8* %619, i64 0, metadata !744, metadata !621) #10, !dbg !1443
  %620 = call i64 @strlen(i8* %619) #13, !dbg !1444
  %621 = getelementptr inbounds i8, i8* %619, i64 %620, !dbg !1445
  call void @llvm.dbg.value(metadata i8* %621, i64 0, metadata !745, metadata !621) #10, !dbg !1446
  %622 = getelementptr inbounds i8, i8* %619, i64 -1, !dbg !1447
  br label %623, !dbg !1448

; <label>:623:                                    ; preds = %623, %611
  %624 = phi i8* [ %621, %611 ], [ %626, %623 ]
  %625 = phi i8* [ %622, %611 ], [ %626, %623 ]
  call void @llvm.dbg.value(metadata i8* %624, i64 0, metadata !745, metadata !621) #10, !dbg !1446
  store i8 48, i8* %625, align 1, !tbaa !751
  %626 = getelementptr inbounds i8, i8* %624, i64 -1, !dbg !1449
  call void @llvm.dbg.value(metadata i8* %626, i64 0, metadata !745, metadata !621) #10, !dbg !1446
  %627 = load i8, i8* %626, align 1, !dbg !1450, !tbaa !751
  %628 = icmp eq i8 %627, 57, !dbg !1451
  br i1 %628, label %623, label %629, !dbg !1452, !llvm.loop !765

; <label>:629:                                    ; preds = %623
  %630 = add i8 %627, 1, !dbg !1453
  store i8 %630, i8* %626, align 1, !dbg !1453, !tbaa !751
  %631 = icmp ult i8* %619, %626, !dbg !1454
  %632 = select i1 %631, i8* %619, i8* %626, !dbg !1454
  call void @llvm.dbg.value(metadata i8* %632, i64 0, metadata !746, metadata !621) #10, !dbg !1455
  br i1 %617, label %633, label %635, !dbg !1456

; <label>:633:                                    ; preds = %629
  %634 = getelementptr inbounds i8, i8* %632, i64 -1, !dbg !1457
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !746, metadata !621) #10, !dbg !1455
  store i8 45, i8* %634, align 1, !dbg !1458, !tbaa !751
  br label %635, !dbg !1459

; <label>:635:                                    ; preds = %629, %633
  %636 = phi i8* [ %634, %633 ], [ %632, %629 ]
  call void @llvm.dbg.value(metadata i8* %636, i64 0, metadata !746, metadata !621) #10, !dbg !1455
  %637 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.65, i64 0, i64 0), i8* %636) #10, !dbg !1460
  %638 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i64 -1) #10, !dbg !1462
  %639 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.66, i64 0, i64 0), i8* %13) #10, !dbg !1463
  call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !738, metadata !621) #10, !dbg !1464
  %640 = load i8, i8* %13, align 1, !dbg !1466, !tbaa !751
  %641 = icmp eq i8 %640, 45, !dbg !1467
  %642 = zext i1 %641 to i64, !dbg !1468
  %643 = getelementptr inbounds i8, i8* %13, i64 %642, !dbg !1468
  call void @llvm.dbg.value(metadata i8* %643, i64 0, metadata !744, metadata !621) #10, !dbg !1469
  %644 = call i64 @strlen(i8* %643) #13, !dbg !1470
  %645 = getelementptr inbounds i8, i8* %643, i64 %644, !dbg !1471
  call void @llvm.dbg.value(metadata i8* %645, i64 0, metadata !745, metadata !621) #10, !dbg !1472
  %646 = getelementptr inbounds i8, i8* %643, i64 -1, !dbg !1473
  br label %647, !dbg !1474

; <label>:647:                                    ; preds = %647, %635
  %648 = phi i8* [ %645, %635 ], [ %650, %647 ]
  %649 = phi i8* [ %646, %635 ], [ %650, %647 ]
  call void @llvm.dbg.value(metadata i8* %648, i64 0, metadata !745, metadata !621) #10, !dbg !1472
  store i8 48, i8* %649, align 1, !tbaa !751
  %650 = getelementptr inbounds i8, i8* %648, i64 -1, !dbg !1475
  call void @llvm.dbg.value(metadata i8* %650, i64 0, metadata !745, metadata !621) #10, !dbg !1472
  %651 = load i8, i8* %650, align 1, !dbg !1476, !tbaa !751
  %652 = icmp eq i8 %651, 57, !dbg !1477
  br i1 %652, label %647, label %653, !dbg !1478, !llvm.loop !765

; <label>:653:                                    ; preds = %647
  %654 = add i8 %651, 1, !dbg !1479
  store i8 %654, i8* %650, align 1, !dbg !1479, !tbaa !751
  %655 = icmp ult i8* %643, %650, !dbg !1480
  %656 = select i1 %655, i8* %643, i8* %650, !dbg !1480
  call void @llvm.dbg.value(metadata i8* %656, i64 0, metadata !746, metadata !621) #10, !dbg !1481
  br i1 %641, label %657, label %659, !dbg !1482

; <label>:657:                                    ; preds = %653
  %658 = getelementptr inbounds i8, i8* %656, i64 -1, !dbg !1483
  call void @llvm.dbg.value(metadata i8* %658, i64 0, metadata !746, metadata !621) #10, !dbg !1481
  store i8 45, i8* %658, align 1, !dbg !1484, !tbaa !751
  br label %659, !dbg !1485

; <label>:659:                                    ; preds = %653, %657
  %660 = phi i8* [ %658, %657 ], [ %656, %653 ]
  call void @llvm.dbg.value(metadata i8* %660, i64 0, metadata !746, metadata !621) #10, !dbg !1481
  %661 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.67, i64 0, i64 0), i8* %660) #10, !dbg !1486
  %662 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.68, i64 0, i64 0)) #10, !dbg !1487
  call void @llvm.dbg.value(metadata float 0x3810000000000000, i64 0, metadata !703, metadata !621) #10, !dbg !709
  %663 = getelementptr inbounds [31 x i8], [31 x i8]* %4, i64 0, i64 0, !dbg !709
  call void @llvm.lifetime.start(i64 31, i8* nonnull %663) #10, !dbg !709
  %664 = call i32 @ftoastr(i8* nonnull %663, i64 31, i32 1, i32 0, float 0x3810000000000000) #10, !dbg !709
  %665 = call i32 @puts(i8* nonnull %663) #10, !dbg !1488
  call void @llvm.lifetime.end(i64 31, i8* nonnull %663) #10, !dbg !709
  %666 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.69, i64 0, i64 0)) #10, !dbg !1490
  call void @llvm.dbg.value(metadata float 0x47EFFFFFE0000000, i64 0, metadata !703, metadata !621) #10, !dbg !707
  call void @llvm.lifetime.start(i64 31, i8* nonnull %663) #10, !dbg !707
  %667 = call i32 @ftoastr(i8* nonnull %663, i64 31, i32 1, i32 0, float 0x47EFFFFFE0000000) #10, !dbg !707
  %668 = call i32 @puts(i8* nonnull %663) #10, !dbg !1491
  call void @llvm.lifetime.end(i64 31, i8* nonnull %663) #10, !dbg !707
  %669 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.70, i64 0, i64 0)) #10, !dbg !1492
  call void @llvm.dbg.value(metadata double 0x10000000000000, i64 0, metadata !687, metadata !621) #10, !dbg !694
  %670 = getelementptr inbounds [40 x i8], [40 x i8]* %3, i64 0, i64 0, !dbg !694
  call void @llvm.lifetime.start(i64 40, i8* nonnull %670) #10, !dbg !694
  %671 = call i32 @dtoastr(i8* nonnull %670, i64 40, i32 1, i32 0, double 0x10000000000000) #10, !dbg !694
  %672 = call i32 @puts(i8* nonnull %670) #10, !dbg !1493
  call void @llvm.lifetime.end(i64 40, i8* nonnull %670) #10, !dbg !694
  %673 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.71, i64 0, i64 0)) #10, !dbg !1495
  call void @llvm.dbg.value(metadata double 0x7FEFFFFFFFFFFFFF, i64 0, metadata !687, metadata !621) #10, !dbg !691
  call void @llvm.lifetime.start(i64 40, i8* nonnull %670) #10, !dbg !691
  %674 = call i32 @dtoastr(i8* nonnull %670, i64 40, i32 1, i32 0, double 0x7FEFFFFFFFFFFFFF) #10, !dbg !691
  %675 = call i32 @puts(i8* nonnull %670) #10, !dbg !1496
  call void @llvm.lifetime.end(i64 40, i8* nonnull %670) #10, !dbg !691
  %676 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.72, i64 0, i64 0)) #10, !dbg !1497
  call void @llvm.dbg.value(metadata x86_fp80 0xK00018000000000000000, i64 0, metadata !717, metadata !621) #10, !dbg !721
  %677 = getelementptr inbounds [45 x i8], [45 x i8]* %5, i64 0, i64 0, !dbg !721
  call void @llvm.lifetime.start(i64 45, i8* nonnull %677) #10, !dbg !721
  %678 = call i32 @ldtoastr(i8* nonnull %677, i64 45, i32 1, i32 0, x86_fp80 0xK00018000000000000000) #10, !dbg !721
  %679 = call i32 @puts(i8* nonnull %677) #10, !dbg !1498
  call void @llvm.lifetime.end(i64 45, i8* nonnull %677) #10, !dbg !721
  %680 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.73, i64 0, i64 0)) #10, !dbg !1500
  call void @llvm.dbg.value(metadata x86_fp80 0xK7FFEFFFFFFFFFFFFFFFF, i64 0, metadata !717, metadata !621) #10, !dbg !723
  call void @llvm.lifetime.start(i64 45, i8* nonnull %677) #10, !dbg !723
  %681 = call i32 @ldtoastr(i8* nonnull %677, i64 45, i32 1, i32 0, x86_fp80 0xK7FFEFFFFFFFFFFFFFFFF) #10, !dbg !723
  %682 = call i32 @puts(i8* nonnull %677) #10, !dbg !1501
  call void @llvm.lifetime.end(i64 45, i8* nonnull %677) #10, !dbg !723
  call void @llvm.lifetime.end(i64 22, i8* nonnull %7) #10, !dbg !1502
  ret i32 0, !dbg !1503
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #7

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @atexit(void ()*) local_unnamed_addr #2

declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #7

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !1504 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1506, metadata !621), !dbg !1507
  store i8* %0, i8** @file_name, align 8, !dbg !1508, !tbaa !629
  ret void, !dbg !1509
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !1510 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !1514, metadata !1515), !dbg !1516
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1517, !tbaa !1518
  ret void, !dbg !1520
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !1521 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1528, !tbaa !629
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #10, !dbg !1529
  %3 = icmp eq i32 %2, 0, !dbg !1530
  br i1 %3, label %21, label %4, !dbg !1531

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1532, !tbaa !1518, !range !1534
  %6 = icmp eq i8 %5, 0, !dbg !1532
  %7 = tail call i32* @__errno_location() #1, !dbg !1535
  br i1 %6, label %11, label %8, !dbg !1537

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !1538, !tbaa !1540
  %10 = icmp eq i32 %9, 32, !dbg !1542
  br i1 %10, label %21, label %11, !dbg !1543

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.74, i64 0, i64 0), i32 5) #10, !dbg !1545
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !1525, metadata !621), !dbg !1546
  %13 = load i8*, i8** @file_name, align 8, !dbg !1547, !tbaa !629
  %14 = icmp eq i8* %13, null, !dbg !1547
  %15 = load i32, i32* %7, align 4, !tbaa !1540
  br i1 %14, label %18, label %16, !dbg !1548

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #10, !dbg !1549
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.75, i64 0, i64 0), i8* %17, i8* %12) #10, !dbg !1551
  br label %19, !dbg !1553

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.76, i64 0, i64 0), i8* %12) #10, !dbg !1554
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !1555, !tbaa !1540
  tail call void @_exit(i32 %20) #14, !dbg !1556
  unreachable, !dbg !1556

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1557, !tbaa !629
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #10, !dbg !1559
  %24 = icmp eq i32 %23, 0, !dbg !1560
  br i1 %24, label %27, label %25, !dbg !1561

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !1562, !tbaa !1540
  tail call void @_exit(i32 %26) #14, !dbg !1563
  unreachable, !dbg !1563

; <label>:27:                                     ; preds = %21
  ret void, !dbg !1564
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #8

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define i32 @dtoastr(i8*, i64, i32, i32, double) local_unnamed_addr #6 !dbg !1565 {
  %6 = alloca [11 x i8], align 1
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1569, metadata !621), !dbg !1584
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1570, metadata !621), !dbg !1585
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !1571, metadata !621), !dbg !1586
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !1572, metadata !621), !dbg !1587
  tail call void @llvm.dbg.value(metadata double %4, i64 0, metadata !1573, metadata !621), !dbg !1588
  tail call void @llvm.dbg.value(metadata double %4, i64 0, metadata !1574, metadata !621), !dbg !1589
  %7 = getelementptr inbounds [11 x i8], [11 x i8]* %6, i64 0, i64 0, !dbg !1590
  call void @llvm.lifetime.start(i64 11, i8* nonnull %7) #10, !dbg !1590
  tail call void @llvm.dbg.declare(metadata [11 x i8]* %6, metadata !1575, metadata !621), !dbg !1591
  %8 = fcmp olt double %4, 0.000000e+00, !dbg !1592
  %9 = fsub double -0.000000e+00, %4, !dbg !1593
  %10 = select i1 %8, double %9, double %4, !dbg !1595
  tail call void @llvm.dbg.value(metadata double %10, i64 0, metadata !1577, metadata !621), !dbg !1596
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1579, metadata !621), !dbg !1597
  %11 = getelementptr inbounds [11 x i8], [11 x i8]* %6, i64 0, i64 1, !dbg !1598
  tail call void @llvm.dbg.value(metadata i8* %11, i64 0, metadata !1579, metadata !621), !dbg !1597
  store i8 37, i8* %7, align 1, !dbg !1599, !tbaa !751
  store i8 45, i8* %11, align 1, !dbg !1600, !tbaa !751
  %12 = and i32 %2, 1, !dbg !1601
  %13 = zext i32 %12 to i64, !dbg !1602
  %14 = getelementptr inbounds i8, i8* %11, i64 %13, !dbg !1602
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !1579, metadata !621), !dbg !1597
  store i8 43, i8* %14, align 1, !dbg !1603, !tbaa !751
  %15 = lshr i32 %2, 1, !dbg !1604
  %16 = and i32 %15, 1, !dbg !1604
  %17 = zext i32 %16 to i64, !dbg !1605
  %18 = getelementptr inbounds i8, i8* %14, i64 %17, !dbg !1605
  tail call void @llvm.dbg.value(metadata i8* %18, i64 0, metadata !1579, metadata !621), !dbg !1597
  store i8 32, i8* %18, align 1, !dbg !1606, !tbaa !751
  %19 = lshr i32 %2, 2, !dbg !1607
  %20 = and i32 %19, 1, !dbg !1607
  %21 = zext i32 %20 to i64, !dbg !1608
  %22 = getelementptr inbounds i8, i8* %18, i64 %21, !dbg !1608
  tail call void @llvm.dbg.value(metadata i8* %22, i64 0, metadata !1579, metadata !621), !dbg !1597
  store i8 48, i8* %22, align 1, !dbg !1609, !tbaa !751
  %23 = lshr i32 %2, 3, !dbg !1610
  %24 = and i32 %23, 1, !dbg !1610
  %25 = zext i32 %24 to i64, !dbg !1611
  %26 = getelementptr inbounds i8, i8* %22, i64 %25, !dbg !1611
  tail call void @llvm.dbg.value(metadata i8* %26, i64 0, metadata !1579, metadata !621), !dbg !1597
  %27 = getelementptr inbounds i8, i8* %26, i64 1, !dbg !1612
  tail call void @llvm.dbg.value(metadata i8* %27, i64 0, metadata !1579, metadata !621), !dbg !1597
  store i8 42, i8* %26, align 1, !dbg !1613, !tbaa !751
  %28 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !1614
  tail call void @llvm.dbg.value(metadata i8* %28, i64 0, metadata !1579, metadata !621), !dbg !1597
  store i8 46, i8* %27, align 1, !dbg !1615, !tbaa !751
  %29 = getelementptr inbounds i8, i8* %28, i64 1, !dbg !1616
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !1579, metadata !621), !dbg !1597
  store i8 42, i8* %28, align 1, !dbg !1617, !tbaa !751
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !1579, metadata !621), !dbg !1597
  %30 = trunc i32 %2 to i8, !dbg !1618
  %31 = shl i8 %30, 1, !dbg !1618
  %32 = and i8 %31, 32, !dbg !1618
  %33 = xor i8 %32, 103, !dbg !1618
  %34 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !1619
  tail call void @llvm.dbg.value(metadata i8* %34, i64 0, metadata !1579, metadata !621), !dbg !1597
  store i8 %33, i8* %29, align 1, !dbg !1620, !tbaa !751
  store i8 0, i8* %34, align 1, !dbg !1621, !tbaa !751
  %35 = fcmp olt double %10, 0x10000000000000, !dbg !1622
  %36 = select i1 %35, i32 1, i32 15, !dbg !1623
  tail call void @llvm.dbg.value(metadata i32 %36, i64 0, metadata !1578, metadata !621), !dbg !1624
  call void @llvm.dbg.value(metadata i32 %36, i64 0, metadata !1578, metadata !621), !dbg !1624
  %37 = call i64 @llvm.objectsize.i64.p0i8(i8* %0, i1 false), !dbg !1625
  %38 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* %0, i64 %1, i32 1, i64 %37, i8* nonnull %7, i32 %3, i32 %36, double %4) #10, !dbg !1625
  call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !1580, metadata !621), !dbg !1626
  %39 = icmp slt i32 %38, 0, !dbg !1627
  br i1 %39, label %57, label %40, !dbg !1629

; <label>:40:                                     ; preds = %5
  br label %41, !dbg !1630

; <label>:41:                                     ; preds = %40, %49
  %42 = phi i32 [ %51, %49 ], [ %38, %40 ]
  %43 = phi i32 [ %50, %49 ], [ %36, %40 ]
  %44 = sext i32 %42 to i64, !dbg !1630
  %45 = icmp ult i64 %44, %1, !dbg !1632
  br i1 %45, label %46, label %49, !dbg !1633

; <label>:46:                                     ; preds = %41
  %47 = call double @strtod(i8* nocapture %0, i8** null) #10, !dbg !1634
  %48 = fcmp oeq double %47, %4, !dbg !1636
  br i1 %48, label %55, label %49, !dbg !1637

; <label>:49:                                     ; preds = %46, %41
  %50 = add nuw nsw i32 %43, 1, !dbg !1639
  call void @llvm.dbg.value(metadata i32 %50, i64 0, metadata !1578, metadata !621), !dbg !1624
  call void @llvm.dbg.value(metadata i32 %50, i64 0, metadata !1578, metadata !621), !dbg !1624
  %51 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* %0, i64 %1, i32 1, i64 %37, i8* nonnull %7, i32 %3, i32 %50, double %4) #10, !dbg !1625
  call void @llvm.dbg.value(metadata i32 %51, i64 0, metadata !1580, metadata !621), !dbg !1626
  %52 = icmp slt i32 %51, 0, !dbg !1627
  %53 = icmp sgt i32 %43, 15, !dbg !1641
  %54 = or i1 %53, %52, !dbg !1629
  br i1 %54, label %55, label %41, !dbg !1629, !llvm.loop !1642

; <label>:55:                                     ; preds = %46, %49
  %56 = phi i32 [ %42, %46 ], [ %51, %49 ]
  br label %57, !dbg !1645

; <label>:57:                                     ; preds = %55, %5
  %58 = phi i32 [ %38, %5 ], [ %56, %55 ]
  call void @llvm.lifetime.end(i64 11, i8* nonnull %7) #10, !dbg !1645
  ret i32 %58, !dbg !1645
}

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #1

declare i32 @__snprintf_chk(i8*, i64, i32, i64, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare double @strtod(i8* readonly, i8** nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @ftoastr(i8*, i64, i32, i32, float) local_unnamed_addr #6 !dbg !1646 {
  %6 = alloca [11 x i8], align 1
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1651, metadata !621), !dbg !1665
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1652, metadata !621), !dbg !1666
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !1653, metadata !621), !dbg !1667
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !1654, metadata !621), !dbg !1668
  tail call void @llvm.dbg.value(metadata float %4, i64 0, metadata !1655, metadata !621), !dbg !1669
  %7 = fpext float %4 to double, !dbg !1670
  tail call void @llvm.dbg.value(metadata double %7, i64 0, metadata !1656, metadata !621), !dbg !1671
  %8 = getelementptr inbounds [11 x i8], [11 x i8]* %6, i64 0, i64 0, !dbg !1672
  call void @llvm.lifetime.start(i64 11, i8* nonnull %8) #10, !dbg !1672
  tail call void @llvm.dbg.declare(metadata [11 x i8]* %6, metadata !1657, metadata !621), !dbg !1673
  %9 = fcmp olt float %4, 0.000000e+00, !dbg !1674
  %10 = fsub float -0.000000e+00, %4, !dbg !1675
  %11 = select i1 %9, float %10, float %4, !dbg !1677
  tail call void @llvm.dbg.value(metadata float %11, i64 0, metadata !1658, metadata !621), !dbg !1678
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !1660, metadata !621), !dbg !1679
  %12 = getelementptr inbounds [11 x i8], [11 x i8]* %6, i64 0, i64 1, !dbg !1680
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !1660, metadata !621), !dbg !1679
  store i8 37, i8* %8, align 1, !dbg !1681, !tbaa !751
  store i8 45, i8* %12, align 1, !dbg !1682, !tbaa !751
  %13 = and i32 %2, 1, !dbg !1683
  %14 = zext i32 %13 to i64, !dbg !1684
  %15 = getelementptr inbounds i8, i8* %12, i64 %14, !dbg !1684
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !1660, metadata !621), !dbg !1679
  store i8 43, i8* %15, align 1, !dbg !1685, !tbaa !751
  %16 = lshr i32 %2, 1, !dbg !1686
  %17 = and i32 %16, 1, !dbg !1686
  %18 = zext i32 %17 to i64, !dbg !1687
  %19 = getelementptr inbounds i8, i8* %15, i64 %18, !dbg !1687
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !1660, metadata !621), !dbg !1679
  store i8 32, i8* %19, align 1, !dbg !1688, !tbaa !751
  %20 = lshr i32 %2, 2, !dbg !1689
  %21 = and i32 %20, 1, !dbg !1689
  %22 = zext i32 %21 to i64, !dbg !1690
  %23 = getelementptr inbounds i8, i8* %19, i64 %22, !dbg !1690
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !1660, metadata !621), !dbg !1679
  store i8 48, i8* %23, align 1, !dbg !1691, !tbaa !751
  %24 = lshr i32 %2, 3, !dbg !1692
  %25 = and i32 %24, 1, !dbg !1692
  %26 = zext i32 %25 to i64, !dbg !1693
  %27 = getelementptr inbounds i8, i8* %23, i64 %26, !dbg !1693
  tail call void @llvm.dbg.value(metadata i8* %27, i64 0, metadata !1660, metadata !621), !dbg !1679
  %28 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !1694
  tail call void @llvm.dbg.value(metadata i8* %28, i64 0, metadata !1660, metadata !621), !dbg !1679
  store i8 42, i8* %27, align 1, !dbg !1695, !tbaa !751
  %29 = getelementptr inbounds i8, i8* %28, i64 1, !dbg !1696
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !1660, metadata !621), !dbg !1679
  store i8 46, i8* %28, align 1, !dbg !1697, !tbaa !751
  %30 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !1698
  tail call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !1660, metadata !621), !dbg !1679
  store i8 42, i8* %29, align 1, !dbg !1699, !tbaa !751
  tail call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !1660, metadata !621), !dbg !1679
  %31 = trunc i32 %2 to i8, !dbg !1700
  %32 = shl i8 %31, 1, !dbg !1700
  %33 = and i8 %32, 32, !dbg !1700
  %34 = xor i8 %33, 103, !dbg !1700
  %35 = getelementptr inbounds i8, i8* %30, i64 1, !dbg !1701
  tail call void @llvm.dbg.value(metadata i8* %35, i64 0, metadata !1660, metadata !621), !dbg !1679
  store i8 %34, i8* %30, align 1, !dbg !1702, !tbaa !751
  store i8 0, i8* %35, align 1, !dbg !1703, !tbaa !751
  %36 = fcmp olt float %11, 0x3810000000000000, !dbg !1704
  %37 = select i1 %36, i32 1, i32 6, !dbg !1705
  tail call void @llvm.dbg.value(metadata i32 %37, i64 0, metadata !1659, metadata !621), !dbg !1706
  call void @llvm.dbg.value(metadata i32 %37, i64 0, metadata !1659, metadata !621), !dbg !1706
  %38 = call i64 @llvm.objectsize.i64.p0i8(i8* %0, i1 false), !dbg !1707
  %39 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* %0, i64 %1, i32 1, i64 %38, i8* nonnull %8, i32 %3, i32 %37, double %7) #10, !dbg !1707
  call void @llvm.dbg.value(metadata i32 %39, i64 0, metadata !1661, metadata !621), !dbg !1708
  %40 = icmp slt i32 %39, 0, !dbg !1709
  br i1 %40, label %58, label %41, !dbg !1711

; <label>:41:                                     ; preds = %5
  br label %42, !dbg !1712

; <label>:42:                                     ; preds = %41, %50
  %43 = phi i32 [ %52, %50 ], [ %39, %41 ]
  %44 = phi i32 [ %51, %50 ], [ %37, %41 ]
  %45 = sext i32 %43 to i64, !dbg !1712
  %46 = icmp ult i64 %45, %1, !dbg !1714
  br i1 %46, label %47, label %50, !dbg !1715

; <label>:47:                                     ; preds = %42
  %48 = call float @strtof(i8* nocapture %0, i8** null) #10, !dbg !1716
  %49 = fcmp oeq float %48, %4, !dbg !1718
  br i1 %49, label %56, label %50, !dbg !1719

; <label>:50:                                     ; preds = %47, %42
  %51 = add nuw nsw i32 %44, 1, !dbg !1721
  call void @llvm.dbg.value(metadata i32 %51, i64 0, metadata !1659, metadata !621), !dbg !1706
  call void @llvm.dbg.value(metadata i32 %51, i64 0, metadata !1659, metadata !621), !dbg !1706
  %52 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* %0, i64 %1, i32 1, i64 %38, i8* nonnull %8, i32 %3, i32 %51, double %7) #10, !dbg !1707
  call void @llvm.dbg.value(metadata i32 %52, i64 0, metadata !1661, metadata !621), !dbg !1708
  %53 = icmp slt i32 %52, 0, !dbg !1709
  %54 = icmp sgt i32 %44, 7, !dbg !1723
  %55 = or i1 %54, %53, !dbg !1711
  br i1 %55, label %56, label %42, !dbg !1711, !llvm.loop !1724

; <label>:56:                                     ; preds = %47, %50
  %57 = phi i32 [ %43, %47 ], [ %52, %50 ]
  br label %58, !dbg !1727

; <label>:58:                                     ; preds = %56, %5
  %59 = phi i32 [ %39, %5 ], [ %57, %56 ]
  call void @llvm.lifetime.end(i64 11, i8* nonnull %8) #10, !dbg !1727
  ret i32 %59, !dbg !1727
}

; Function Attrs: nounwind
declare float @strtof(i8* readonly, i8** nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @ldtoastr(i8*, i64, i32, i32, x86_fp80) local_unnamed_addr #6 !dbg !1728 {
  %6 = alloca [11 x i8], align 1
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1732, metadata !621), !dbg !1746
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1733, metadata !621), !dbg !1747
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !1734, metadata !621), !dbg !1748
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !1735, metadata !621), !dbg !1749
  tail call void @llvm.dbg.value(metadata x86_fp80 %4, i64 0, metadata !1736, metadata !621), !dbg !1750
  tail call void @llvm.dbg.value(metadata x86_fp80 %4, i64 0, metadata !1737, metadata !621), !dbg !1751
  %7 = getelementptr inbounds [11 x i8], [11 x i8]* %6, i64 0, i64 0, !dbg !1752
  call void @llvm.lifetime.start(i64 11, i8* nonnull %7) #10, !dbg !1752
  tail call void @llvm.dbg.declare(metadata [11 x i8]* %6, metadata !1738, metadata !621), !dbg !1753
  %8 = fcmp olt x86_fp80 %4, 0xK00000000000000000000, !dbg !1754
  %9 = fsub x86_fp80 0xK80000000000000000000, %4, !dbg !1755
  %10 = select i1 %8, x86_fp80 %9, x86_fp80 %4, !dbg !1757
  tail call void @llvm.dbg.value(metadata x86_fp80 %10, i64 0, metadata !1739, metadata !621), !dbg !1758
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1741, metadata !621), !dbg !1759
  %11 = getelementptr inbounds [11 x i8], [11 x i8]* %6, i64 0, i64 1, !dbg !1760
  tail call void @llvm.dbg.value(metadata i8* %11, i64 0, metadata !1741, metadata !621), !dbg !1759
  store i8 37, i8* %7, align 1, !dbg !1761, !tbaa !751
  store i8 45, i8* %11, align 1, !dbg !1762, !tbaa !751
  %12 = and i32 %2, 1, !dbg !1763
  %13 = zext i32 %12 to i64, !dbg !1764
  %14 = getelementptr inbounds i8, i8* %11, i64 %13, !dbg !1764
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !1741, metadata !621), !dbg !1759
  store i8 43, i8* %14, align 1, !dbg !1765, !tbaa !751
  %15 = lshr i32 %2, 1, !dbg !1766
  %16 = and i32 %15, 1, !dbg !1766
  %17 = zext i32 %16 to i64, !dbg !1767
  %18 = getelementptr inbounds i8, i8* %14, i64 %17, !dbg !1767
  tail call void @llvm.dbg.value(metadata i8* %18, i64 0, metadata !1741, metadata !621), !dbg !1759
  store i8 32, i8* %18, align 1, !dbg !1768, !tbaa !751
  %19 = lshr i32 %2, 2, !dbg !1769
  %20 = and i32 %19, 1, !dbg !1769
  %21 = zext i32 %20 to i64, !dbg !1770
  %22 = getelementptr inbounds i8, i8* %18, i64 %21, !dbg !1770
  tail call void @llvm.dbg.value(metadata i8* %22, i64 0, metadata !1741, metadata !621), !dbg !1759
  store i8 48, i8* %22, align 1, !dbg !1771, !tbaa !751
  %23 = lshr i32 %2, 3, !dbg !1772
  %24 = and i32 %23, 1, !dbg !1772
  %25 = zext i32 %24 to i64, !dbg !1773
  %26 = getelementptr inbounds i8, i8* %22, i64 %25, !dbg !1773
  tail call void @llvm.dbg.value(metadata i8* %26, i64 0, metadata !1741, metadata !621), !dbg !1759
  %27 = getelementptr inbounds i8, i8* %26, i64 1, !dbg !1774
  tail call void @llvm.dbg.value(metadata i8* %27, i64 0, metadata !1741, metadata !621), !dbg !1759
  store i8 42, i8* %26, align 1, !dbg !1775, !tbaa !751
  %28 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !1776
  tail call void @llvm.dbg.value(metadata i8* %28, i64 0, metadata !1741, metadata !621), !dbg !1759
  store i8 46, i8* %27, align 1, !dbg !1777, !tbaa !751
  %29 = getelementptr inbounds i8, i8* %28, i64 1, !dbg !1778
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !1741, metadata !621), !dbg !1759
  store i8 42, i8* %28, align 1, !dbg !1779, !tbaa !751
  store i8 76, i8* %29, align 1, !dbg !1780, !tbaa !751
  %30 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !1781
  tail call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !1741, metadata !621), !dbg !1759
  %31 = trunc i32 %2 to i8, !dbg !1782
  %32 = shl i8 %31, 1, !dbg !1782
  %33 = and i8 %32, 32, !dbg !1782
  %34 = xor i8 %33, 103, !dbg !1782
  %35 = getelementptr inbounds i8, i8* %30, i64 1, !dbg !1783
  tail call void @llvm.dbg.value(metadata i8* %35, i64 0, metadata !1741, metadata !621), !dbg !1759
  store i8 %34, i8* %30, align 1, !dbg !1784, !tbaa !751
  store i8 0, i8* %35, align 1, !dbg !1785, !tbaa !751
  %36 = fcmp olt x86_fp80 %10, 0xK00018000000000000000, !dbg !1786
  %37 = select i1 %36, i32 1, i32 18, !dbg !1787
  tail call void @llvm.dbg.value(metadata i32 %37, i64 0, metadata !1740, metadata !621), !dbg !1788
  call void @llvm.dbg.value(metadata i32 %37, i64 0, metadata !1740, metadata !621), !dbg !1788
  %38 = call i64 @llvm.objectsize.i64.p0i8(i8* %0, i1 false), !dbg !1789
  %39 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* %0, i64 %1, i32 1, i64 %38, i8* nonnull %7, i32 %3, i32 %37, x86_fp80 %4) #10, !dbg !1789
  call void @llvm.dbg.value(metadata i32 %39, i64 0, metadata !1742, metadata !621), !dbg !1790
  %40 = icmp slt i32 %39, 0, !dbg !1791
  br i1 %40, label %58, label %41, !dbg !1793

; <label>:41:                                     ; preds = %5
  br label %42, !dbg !1794

; <label>:42:                                     ; preds = %41, %50
  %43 = phi i32 [ %52, %50 ], [ %39, %41 ]
  %44 = phi i32 [ %51, %50 ], [ %37, %41 ]
  %45 = sext i32 %43 to i64, !dbg !1794
  %46 = icmp ult i64 %45, %1, !dbg !1796
  br i1 %46, label %47, label %50, !dbg !1797

; <label>:47:                                     ; preds = %42
  %48 = call x86_fp80 @strtold(i8* nocapture %0, i8** null) #10, !dbg !1798
  %49 = fcmp oeq x86_fp80 %48, %4, !dbg !1800
  br i1 %49, label %56, label %50, !dbg !1801

; <label>:50:                                     ; preds = %47, %42
  %51 = add nuw nsw i32 %44, 1, !dbg !1803
  call void @llvm.dbg.value(metadata i32 %51, i64 0, metadata !1740, metadata !621), !dbg !1788
  call void @llvm.dbg.value(metadata i32 %51, i64 0, metadata !1740, metadata !621), !dbg !1788
  %52 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* %0, i64 %1, i32 1, i64 %38, i8* nonnull %7, i32 %3, i32 %51, x86_fp80 %4) #10, !dbg !1789
  call void @llvm.dbg.value(metadata i32 %52, i64 0, metadata !1742, metadata !621), !dbg !1790
  %53 = icmp slt i32 %52, 0, !dbg !1791
  %54 = icmp sgt i32 %44, 19, !dbg !1805
  %55 = or i1 %54, %53, !dbg !1793
  br i1 %55, label %56, label %42, !dbg !1793, !llvm.loop !1806

; <label>:56:                                     ; preds = %47, %50
  %57 = phi i32 [ %43, %47 ], [ %52, %50 ]
  br label %58, !dbg !1809

; <label>:58:                                     ; preds = %56, %5
  %59 = phi i32 [ %39, %5 ], [ %57, %56 ]
  call void @llvm.lifetime.end(i64 11, i8* nonnull %7) #10, !dbg !1809
  ret i32 %59, !dbg !1809
}

; Function Attrs: nounwind
declare x86_fp80 @strtold(i8* readonly, i8** nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @parse_long_options(i32, i8**, i8*, i8*, i8*, void (i32)* nocapture, ...) local_unnamed_addr #6 !dbg !1810 {
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1815, metadata !621), !dbg !1841
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !1816, metadata !621), !dbg !1842
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1817, metadata !621), !dbg !1843
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !1818, metadata !621), !dbg !1844
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !1819, metadata !621), !dbg !1845
  tail call void @llvm.dbg.value(metadata void (i32)* %5, i64 0, metadata !1820, metadata !621), !dbg !1846
  %8 = load i32, i32* @opterr, align 4, !dbg !1847, !tbaa !1540
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !1822, metadata !621), !dbg !1848
  store i32 0, i32* @opterr, align 4, !dbg !1849, !tbaa !1540
  %9 = icmp eq i32 %0, 2, !dbg !1850
  br i1 %9, label %10, label %17, !dbg !1851

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 @getopt_long(i32 2, i8** %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.89, i64 0, i64 0), %struct.option* getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #10, !dbg !1852
  tail call void @llvm.dbg.value(metadata i32 %11, i64 0, metadata !1821, metadata !621), !dbg !1854
  switch i32 %11, label %17 [
    i32 118, label %13
    i32 104, label %12
  ], !dbg !1855

; <label>:12:                                     ; preds = %10
  tail call void %5(i32 0) #10, !dbg !1857
  br label %17, !dbg !1858

; <label>:13:                                     ; preds = %10
  %14 = bitcast [1 x %struct.__va_list_tag]* %7 to i8*, !dbg !1859
  call void @llvm.lifetime.start(i64 24, i8* nonnull %14) #10, !dbg !1859
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %7, metadata !1823, metadata !621), !dbg !1860
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0, !dbg !1861
  call void @llvm.va_start(i8* nonnull %14), !dbg !1861
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1862, !tbaa !629
  call void @version_etc_va(%struct._IO_FILE* %16, i8* %2, i8* %3, i8* %4, %struct.__va_list_tag* nonnull %15) #10, !dbg !1863
  call void @exit(i32 0) #14, !dbg !1864
  unreachable, !dbg !1864

; <label>:17:                                     ; preds = %10, %12, %6
  store i32 %8, i32* @opterr, align 4, !dbg !1865, !tbaa !1540
  store i32 0, i32* @optind, align 4, !dbg !1866, !tbaa !1540
  ret void, !dbg !1867
}

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !1868 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1870, metadata !621), !dbg !1873
  %2 = icmp eq i8* %0, null, !dbg !1874
  br i1 %2, label %3, label %6, !dbg !1876

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1877, !tbaa !629
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.96, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #15, !dbg !1879
  tail call void @abort() #14, !dbg !1880
  unreachable, !dbg !1880

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #13, !dbg !1881
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1871, metadata !621), !dbg !1882
  %8 = icmp ne i8* %7, null, !dbg !1883
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1884
  %10 = select i1 %8, i8* %9, i8* %0, !dbg !1886
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1872, metadata !621), !dbg !1887
  %11 = ptrtoint i8* %10 to i64, !dbg !1888
  %12 = ptrtoint i8* %0 to i64, !dbg !1888
  %13 = sub i64 %11, %12, !dbg !1888
  %14 = icmp sgt i64 %13, 6, !dbg !1890
  br i1 %14, label %15, label %24, !dbg !1891

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1892
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.97, i64 0, i64 0), i64 7) #13, !dbg !1892
  %18 = icmp eq i32 %17, 0, !dbg !1894
  br i1 %18, label %19, label %24, !dbg !1895

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1870, metadata !621), !dbg !1873
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.98, i64 0, i64 0), i64 3) #13, !dbg !1896
  %21 = icmp eq i32 %20, 0, !dbg !1899
  br i1 %21, label %22, label %24, !dbg !1900

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1901
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !1870, metadata !621), !dbg !1873
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1903, !tbaa !629
  br label %24, !dbg !1904

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !1870, metadata !621), !dbg !1873
  store i8* %25, i8** @program_name, align 8, !dbg !1905, !tbaa !629
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1906, !tbaa !629
  ret void, !dbg !1907
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #10

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !1908 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1913, metadata !621), !dbg !1916
  %2 = tail call i32* @__errno_location() #1, !dbg !1917
  %3 = load i32, i32* %2, align 4, !dbg !1917, !tbaa !1540
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !1914, metadata !621), !dbg !1918
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !1919
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !1920
  %6 = select i1 %4, i8* %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), !dbg !1920
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #10, !dbg !1922
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1922
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !1915, metadata !621), !dbg !1923
  store i32 %3, i32* %2, align 4, !dbg !1924, !tbaa !1540
  ret %struct.quoting_options* %8, !dbg !1925
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #11 !dbg !1926 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1932, metadata !621), !dbg !1933
  %2 = icmp ne %struct.quoting_options* %0, null, !dbg !1934
  %3 = select i1 %2, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !1934
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1935
  %5 = load i32, i32* %4, align 8, !dbg !1935, !tbaa !1937
  ret i32 %5, !dbg !1939
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1940 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1944, metadata !621), !dbg !1946
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1945, metadata !621), !dbg !1947
  %3 = icmp ne %struct.quoting_options* %0, null, !dbg !1948
  %4 = select i1 %3, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !1948
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1949
  store i32 %1, i32* %5, align 8, !dbg !1951, !tbaa !1937
  ret void, !dbg !1952
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !1953 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1957, metadata !621), !dbg !1965
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1958, metadata !621), !dbg !1966
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !1959, metadata !621), !dbg !1967
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1960, metadata !621), !dbg !1968
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !1969
  %5 = select i1 %4, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !1969
  %6 = lshr i8 %1, 5, !dbg !1970
  %7 = zext i8 %6 to i64, !dbg !1970
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1972
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1961, metadata !621), !dbg !1973
  %9 = and i8 %1, 31, !dbg !1974
  %10 = zext i8 %9 to i32, !dbg !1975
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1963, metadata !621), !dbg !1976
  %11 = load i32, i32* %8, align 4, !dbg !1977, !tbaa !1540
  %12 = lshr i32 %11, %10, !dbg !1978
  %13 = and i32 %12, 1, !dbg !1979
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1964, metadata !621), !dbg !1980
  %14 = and i32 %2, 1, !dbg !1981
  %15 = xor i32 %13, %14, !dbg !1982
  %16 = shl i32 %15, %10, !dbg !1983
  %17 = xor i32 %16, %11, !dbg !1984
  store i32 %17, i32* %8, align 4, !dbg !1984, !tbaa !1540
  ret i32 %13, !dbg !1985
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1986 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1990, metadata !621), !dbg !1993
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1991, metadata !621), !dbg !1994
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1995
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1990, metadata !621), !dbg !1993
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1997
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1990, metadata !621), !dbg !1993
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1998
  %6 = load i32, i32* %5, align 4, !dbg !1998, !tbaa !1999
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1992, metadata !621), !dbg !2000
  store i32 %1, i32* %5, align 4, !dbg !2001, !tbaa !1999
  ret i32 %6, !dbg !2002
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !2003 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2007, metadata !621), !dbg !2010
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2008, metadata !621), !dbg !2011
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2009, metadata !621), !dbg !2012
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2013
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2007, metadata !621), !dbg !2010
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2015
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2007, metadata !621), !dbg !2010
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2016
  store i32 10, i32* %6, align 8, !dbg !2017, !tbaa !1937
  %7 = icmp ne i8* %1, null, !dbg !2018
  %8 = icmp ne i8* %2, null, !dbg !2020
  %9 = and i1 %7, %8, !dbg !2022
  br i1 %9, label %11, label %10, !dbg !2022

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !2023
  unreachable, !dbg !2023

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2024
  store i8* %1, i8** %12, align 8, !dbg !2025, !tbaa !2026
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2027
  store i8* %2, i8** %13, align 8, !dbg !2028, !tbaa !2029
  ret void, !dbg !2030
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !2031 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2035, metadata !621), !dbg !2043
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2036, metadata !621), !dbg !2044
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2037, metadata !621), !dbg !2045
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2038, metadata !621), !dbg !2046
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2039, metadata !621), !dbg !2047
  %6 = icmp ne %struct.quoting_options* %4, null, !dbg !2048
  %7 = select i1 %6, %struct.quoting_options* %4, %struct.quoting_options* @default_quoting_options, !dbg !2048
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !2040, metadata !621), !dbg !2049
  %8 = tail call i32* @__errno_location() #1, !dbg !2050
  %9 = load i32, i32* %8, align 4, !dbg !2050, !tbaa !1540
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !2041, metadata !621), !dbg !2051
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !2052
  %11 = load i32, i32* %10, align 8, !dbg !2052, !tbaa !1937
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !2053
  %13 = load i32, i32* %12, align 4, !dbg !2053, !tbaa !1999
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !2054
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !2055
  %16 = load i8*, i8** %15, align 8, !dbg !2055, !tbaa !2026
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !2056
  %18 = load i8*, i8** %17, align 8, !dbg !2056, !tbaa !2029
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !2057
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2042, metadata !621), !dbg !2058
  store i32 %9, i32* %8, align 4, !dbg !2059, !tbaa !1540
  ret i64 %19, !dbg !2060
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !2061 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2067, metadata !621), !dbg !2130
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2068, metadata !621), !dbg !2131
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2069, metadata !621), !dbg !2132
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2070, metadata !621), !dbg !2133
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !2071, metadata !621), !dbg !2134
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !2072, metadata !621), !dbg !2135
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !2073, metadata !621), !dbg !2136
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !2074, metadata !621), !dbg !2137
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !2075, metadata !621), !dbg !2138
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2077, metadata !621), !dbg !2139
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2078, metadata !621), !dbg !2140
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2079, metadata !621), !dbg !2141
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2080, metadata !621), !dbg !2142
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2081, metadata !621), !dbg !2143
  %13 = tail call i64 @__ctype_get_mb_cur_max() #10, !dbg !2144
  %14 = icmp eq i64 %13, 1, !dbg !2145
  %15 = lshr i32 %5, 1, !dbg !2146
  %16 = trunc i32 %15 to i8, !dbg !2146
  %17 = and i8 %16, 1, !dbg !2146
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !2083, metadata !621), !dbg !2146
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2084, metadata !621), !dbg !2147
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2085, metadata !621), !dbg !2148
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2086, metadata !621), !dbg !2149
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !2150

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !2068, metadata !621), !dbg !2131
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !2086, metadata !621), !dbg !2149
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !2085, metadata !621), !dbg !2148
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !2084, metadata !621), !dbg !2147
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !2083, metadata !621), !dbg !2146
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !2070, metadata !621), !dbg !2133
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !2081, metadata !621), !dbg !2143
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !2080, metadata !621), !dbg !2142
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !2079, metadata !621), !dbg !2141
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !2078, metadata !621), !dbg !2140
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2077, metadata !621), !dbg !2139
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !2075, metadata !621), !dbg !2138
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !2074, metadata !621), !dbg !2137
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !2071, metadata !621), !dbg !2134
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
  ], !dbg !2151

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !2071, metadata !621), !dbg !2134
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2083, metadata !621), !dbg !2146
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !2083, metadata !621), !dbg !2146
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !2071, metadata !621), !dbg !2134
  br label %95, !dbg !2152

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !2083, metadata !621), !dbg !2146
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !2071, metadata !621), !dbg !2134
  %43 = and i8 %36, 1, !dbg !2154
  %44 = icmp eq i8 %43, 0, !dbg !2154
  br i1 %44, label %45, label %95, !dbg !2152

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !2156
  br i1 %46, label %95, label %47, !dbg !2160

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !2162, !tbaa !751
  br label %95, !dbg !2162

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.109, i64 0, i64 0), i32 %28), !dbg !2164
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !2074, metadata !621), !dbg !2137
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.110, i64 0, i64 0), i32 %28), !dbg !2168
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !2075, metadata !621), !dbg !2138
  br label %51, !dbg !2169

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !2075, metadata !621), !dbg !2138
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !2074, metadata !621), !dbg !2137
  %54 = and i8 %36, 1, !dbg !2170
  %55 = icmp eq i8 %54, 0, !dbg !2170
  br i1 %55, label %56, label %73, !dbg !2172

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !2079, metadata !621), !dbg !2141
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2077, metadata !621), !dbg !2139
  %57 = load i8, i8* %52, align 1, !dbg !2173, !tbaa !751
  %58 = icmp eq i8 %57, 0, !dbg !2177
  br i1 %58, label %73, label %59, !dbg !2177

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !2179

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  %64 = icmp ult i64 %63, %40, !dbg !2179
  br i1 %64, label %65, label %67, !dbg !2183

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !2185
  store i8 %61, i8* %66, align 1, !dbg !2185, !tbaa !751
  br label %67, !dbg !2185

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !2187
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !2077, metadata !621), !dbg !2139
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !2189
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !2079, metadata !621), !dbg !2141
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !2079, metadata !621), !dbg !2141
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !2077, metadata !621), !dbg !2139
  %70 = load i8, i8* %69, align 1, !dbg !2173, !tbaa !751
  %71 = icmp eq i8 %70, 0, !dbg !2177
  br i1 %71, label %72, label %60, !dbg !2177, !llvm.loop !2191

; <label>:72:                                     ; preds = %67
  br label %73, !dbg !2139

; <label>:73:                                     ; preds = %72, %56, %51
  %74 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %72 ]
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !2077, metadata !621), !dbg !2139
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2081, metadata !621), !dbg !2143
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !2079, metadata !621), !dbg !2141
  %75 = call i64 @strlen(i8* %53) #13, !dbg !2194
  call void @llvm.dbg.value(metadata i64 %75, i64 0, metadata !2080, metadata !621), !dbg !2142
  br label %95, !dbg !2195

; <label>:76:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2081, metadata !621), !dbg !2143
  br label %77, !dbg !2196

; <label>:77:                                     ; preds = %27, %76
  %78 = phi i8 [ %34, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %78, i64 0, metadata !2081, metadata !621), !dbg !2143
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2083, metadata !621), !dbg !2146
  br label %79, !dbg !2197

; <label>:79:                                     ; preds = %27, %77
  %80 = phi i8 [ %34, %27 ], [ %78, %77 ]
  %81 = phi i8 [ %36, %27 ], [ 1, %77 ]
  call void @llvm.dbg.value(metadata i8 %81, i64 0, metadata !2083, metadata !621), !dbg !2146
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !2081, metadata !621), !dbg !2143
  %82 = and i8 %81, 1, !dbg !2198
  %83 = icmp eq i8 %82, 0, !dbg !2198
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2081, metadata !621), !dbg !2143
  %84 = select i1 %83, i8 1, i8 %80, !dbg !2200
  br label %85, !dbg !2200

; <label>:85:                                     ; preds = %79, %27
  %86 = phi i8 [ %34, %27 ], [ %84, %79 ]
  %87 = phi i8 [ %36, %27 ], [ %81, %79 ]
  call void @llvm.dbg.value(metadata i8 %87, i64 0, metadata !2083, metadata !621), !dbg !2146
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !2081, metadata !621), !dbg !2143
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !2071, metadata !621), !dbg !2134
  %88 = and i8 %87, 1, !dbg !2201
  %89 = icmp eq i8 %88, 0, !dbg !2201
  br i1 %89, label %90, label %95, !dbg !2203

; <label>:90:                                     ; preds = %85
  %91 = icmp eq i64 %40, 0, !dbg !2204
  br i1 %91, label %95, label %92, !dbg !2208

; <label>:92:                                     ; preds = %90
  store i8 39, i8* %0, align 1, !dbg !2210, !tbaa !751
  br label %95, !dbg !2210

; <label>:93:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2083, metadata !621), !dbg !2146
  br label %95, !dbg !2212

; <label>:94:                                     ; preds = %27
  call void @abort() #14, !dbg !2213
  unreachable, !dbg !2213

; <label>:95:                                     ; preds = %41, %85, %90, %92, %27, %42, %45, %47, %93, %73
  %96 = phi i32 [ 0, %93 ], [ %28, %73 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %92 ], [ 2, %90 ], [ 2, %85 ], [ 5, %41 ]
  %97 = phi i8* [ %29, %93 ], [ %52, %73 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %92 ], [ %29, %90 ], [ %29, %85 ], [ %29, %41 ]
  %98 = phi i8* [ %30, %93 ], [ %53, %73 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %92 ], [ %30, %90 ], [ %30, %85 ], [ %30, %41 ]
  %99 = phi i64 [ 0, %93 ], [ %74, %73 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %92 ], [ 1, %90 ], [ 0, %85 ], [ 0, %41 ]
  %100 = phi i8* [ %32, %93 ], [ %53, %73 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.111, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.111, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.111, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.110, i64 0, i64 0), %92 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.110, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.110, i64 0, i64 0), %85 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.111, i64 0, i64 0), %41 ]
  %101 = phi i64 [ %33, %93 ], [ %75, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %92 ], [ 1, %90 ], [ 1, %85 ], [ 1, %41 ]
  %102 = phi i8 [ %34, %93 ], [ 1, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %86, %92 ], [ %86, %90 ], [ %86, %85 ], [ 1, %41 ]
  %103 = phi i8 [ 0, %93 ], [ %36, %73 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %87, %92 ], [ %87, %90 ], [ %87, %85 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %103, i64 0, metadata !2083, metadata !621), !dbg !2146
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !2081, metadata !621), !dbg !2143
  call void @llvm.dbg.value(metadata i64 %101, i64 0, metadata !2080, metadata !621), !dbg !2142
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !2079, metadata !621), !dbg !2141
  call void @llvm.dbg.value(metadata i64 %99, i64 0, metadata !2077, metadata !621), !dbg !2139
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !2075, metadata !621), !dbg !2138
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !2074, metadata !621), !dbg !2137
  call void @llvm.dbg.value(metadata i32 %96, i64 0, metadata !2071, metadata !621), !dbg !2134
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2076, metadata !621), !dbg !2214
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
  br label %123, !dbg !2215

; <label>:123:                                    ; preds = %587, %95
  %124 = phi i64 [ 0, %95 ], [ %596, %587 ]
  %125 = phi i64 [ %99, %95 ], [ %589, %587 ]
  %126 = phi i64 [ %31, %95 ], [ %590, %587 ]
  %127 = phi i64 [ %35, %95 ], [ %591, %587 ]
  %128 = phi i8 [ %37, %95 ], [ %592, %587 ]
  %129 = phi i8 [ %38, %95 ], [ %593, %587 ]
  %130 = phi i8 [ %39, %95 ], [ %594, %587 ]
  %131 = phi i64 [ %40, %95 ], [ %595, %587 ]
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !2068, metadata !621), !dbg !2131
  call void @llvm.dbg.value(metadata i8 %130, i64 0, metadata !2086, metadata !621), !dbg !2149
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !2085, metadata !621), !dbg !2148
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !2084, metadata !621), !dbg !2147
  call void @llvm.dbg.value(metadata i64 %127, i64 0, metadata !2070, metadata !621), !dbg !2133
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !2078, metadata !621), !dbg !2140
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !2077, metadata !621), !dbg !2139
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !2076, metadata !621), !dbg !2214
  %132 = icmp eq i64 %127, -1, !dbg !2216
  br i1 %132, label %135, label %133, !dbg !2218

; <label>:133:                                    ; preds = %123
  %134 = icmp eq i64 %124, %127, !dbg !2219
  br i1 %134, label %597, label %139, !dbg !2221

; <label>:135:                                    ; preds = %123
  %136 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !2223
  %137 = load i8, i8* %136, align 1, !dbg !2223, !tbaa !751
  %138 = icmp eq i8 %137, 0, !dbg !2225
  br i1 %138, label %597, label %139, !dbg !2221

; <label>:139:                                    ; preds = %133, %135
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2092, metadata !621), !dbg !2226
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2093, metadata !621), !dbg !2227
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2094, metadata !621), !dbg !2228
  br i1 %109, label %140, label %155, !dbg !2229

; <label>:140:                                    ; preds = %139
  %141 = add i64 %124, %101, !dbg !2231
  %142 = and i1 %110, %132, !dbg !2233
  br i1 %142, label %143, label %145, !dbg !2233

; <label>:143:                                    ; preds = %140
  %144 = call i64 @strlen(i8* %2) #13, !dbg !2234
  call void @llvm.dbg.value(metadata i64 %144, i64 0, metadata !2070, metadata !621), !dbg !2133
  br label %145, !dbg !2235

; <label>:145:                                    ; preds = %140, %143
  %146 = phi i64 [ %144, %143 ], [ %127, %140 ]
  call void @llvm.dbg.value(metadata i64 %146, i64 0, metadata !2070, metadata !621), !dbg !2133
  %147 = icmp ugt i64 %141, %146, !dbg !2237
  br i1 %147, label %155, label %148, !dbg !2239

; <label>:148:                                    ; preds = %145
  %149 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !2240
  %150 = call i32 @memcmp(i8* %149, i8* %100, i64 %101) #13, !dbg !2241
  %151 = icmp ne i32 %150, 0, !dbg !2242
  %152 = or i1 %151, %112, !dbg !2242
  %153 = xor i1 %151, true, !dbg !2242
  %154 = zext i1 %153 to i8, !dbg !2242
  br i1 %152, label %155, label %644, !dbg !2242

; <label>:155:                                    ; preds = %148, %145, %139
  %156 = phi i64 [ %146, %148 ], [ %146, %145 ], [ %127, %139 ]
  %157 = phi i8 [ %154, %148 ], [ 0, %145 ], [ 0, %139 ]
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !2092, metadata !621), !dbg !2226
  call void @llvm.dbg.value(metadata i64 %156, i64 0, metadata !2070, metadata !621), !dbg !2133
  %158 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !2244
  %159 = load i8, i8* %158, align 1, !dbg !2244, !tbaa !751
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !2087, metadata !621), !dbg !2245
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
  ], !dbg !2246

; <label>:160:                                    ; preds = %155
  br i1 %105, label %161, label %209, !dbg !2247

; <label>:161:                                    ; preds = %160
  br i1 %112, label %162, label %644, !dbg !2248

; <label>:162:                                    ; preds = %161
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2093, metadata !621), !dbg !2227
  %163 = and i8 %128, 1, !dbg !2253
  %164 = icmp eq i8 %163, 0, !dbg !2253
  %165 = and i1 %114, %164, !dbg !2256
  br i1 %165, label %166, label %182, !dbg !2256

; <label>:166:                                    ; preds = %162
  %167 = icmp ult i64 %125, %131, !dbg !2258
  br i1 %167, label %168, label %170, !dbg !2263

; <label>:168:                                    ; preds = %166
  %169 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !2265
  store i8 39, i8* %169, align 1, !dbg !2265, !tbaa !751
  br label %170, !dbg !2265

; <label>:170:                                    ; preds = %168, %166
  %171 = add i64 %125, 1, !dbg !2267
  call void @llvm.dbg.value(metadata i64 %171, i64 0, metadata !2077, metadata !621), !dbg !2139
  %172 = icmp ult i64 %171, %131, !dbg !2269
  br i1 %172, label %173, label %175, !dbg !2273

; <label>:173:                                    ; preds = %170
  %174 = getelementptr inbounds i8, i8* %0, i64 %171, !dbg !2275
  store i8 36, i8* %174, align 1, !dbg !2275, !tbaa !751
  br label %175, !dbg !2275

; <label>:175:                                    ; preds = %173, %170
  %176 = add i64 %125, 2, !dbg !2277
  call void @llvm.dbg.value(metadata i64 %176, i64 0, metadata !2077, metadata !621), !dbg !2139
  %177 = icmp ult i64 %176, %131, !dbg !2279
  br i1 %177, label %178, label %180, !dbg !2283

; <label>:178:                                    ; preds = %175
  %179 = getelementptr inbounds i8, i8* %0, i64 %176, !dbg !2285
  store i8 39, i8* %179, align 1, !dbg !2285, !tbaa !751
  br label %180, !dbg !2285

; <label>:180:                                    ; preds = %178, %175
  %181 = add i64 %125, 3, !dbg !2287
  call void @llvm.dbg.value(metadata i64 %181, i64 0, metadata !2077, metadata !621), !dbg !2139
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2084, metadata !621), !dbg !2147
  br label %182, !dbg !2289

; <label>:182:                                    ; preds = %162, %180
  %183 = phi i64 [ %181, %180 ], [ %125, %162 ]
  %184 = phi i8 [ 1, %180 ], [ %128, %162 ]
  call void @llvm.dbg.value(metadata i8 %184, i64 0, metadata !2084, metadata !621), !dbg !2147
  call void @llvm.dbg.value(metadata i64 %183, i64 0, metadata !2077, metadata !621), !dbg !2139
  %185 = icmp ult i64 %183, %131, !dbg !2291
  br i1 %185, label %186, label %188, !dbg !2295

; <label>:186:                                    ; preds = %182
  %187 = getelementptr inbounds i8, i8* %0, i64 %183, !dbg !2297
  store i8 92, i8* %187, align 1, !dbg !2297, !tbaa !751
  br label %188, !dbg !2297

; <label>:188:                                    ; preds = %186, %182
  %189 = add i64 %183, 1, !dbg !2299
  call void @llvm.dbg.value(metadata i64 %189, i64 0, metadata !2077, metadata !621), !dbg !2139
  br i1 %106, label %190, label %476, !dbg !2301

; <label>:190:                                    ; preds = %188
  %191 = add i64 %124, 1, !dbg !2303
  %192 = icmp ult i64 %191, %156, !dbg !2305
  br i1 %192, label %193, label %476, !dbg !2306

; <label>:193:                                    ; preds = %190
  %194 = getelementptr inbounds i8, i8* %2, i64 %191, !dbg !2307
  %195 = load i8, i8* %194, align 1, !dbg !2307, !tbaa !751
  %196 = add i8 %195, -48, !dbg !2309
  %197 = icmp ult i8 %196, 10, !dbg !2309
  br i1 %197, label %198, label %476, !dbg !2309

; <label>:198:                                    ; preds = %193
  %199 = icmp ult i64 %189, %131, !dbg !2310
  br i1 %199, label %200, label %202, !dbg !2315

; <label>:200:                                    ; preds = %198
  %201 = getelementptr inbounds i8, i8* %0, i64 %189, !dbg !2317
  store i8 48, i8* %201, align 1, !dbg !2317, !tbaa !751
  br label %202, !dbg !2317

; <label>:202:                                    ; preds = %200, %198
  %203 = add i64 %183, 2, !dbg !2319
  call void @llvm.dbg.value(metadata i64 %203, i64 0, metadata !2077, metadata !621), !dbg !2139
  %204 = icmp ult i64 %203, %131, !dbg !2321
  br i1 %204, label %205, label %207, !dbg !2325

; <label>:205:                                    ; preds = %202
  %206 = getelementptr inbounds i8, i8* %0, i64 %203, !dbg !2327
  store i8 48, i8* %206, align 1, !dbg !2327, !tbaa !751
  br label %207, !dbg !2327

; <label>:207:                                    ; preds = %205, %202
  %208 = add i64 %183, 3, !dbg !2329
  call void @llvm.dbg.value(metadata i64 %208, i64 0, metadata !2077, metadata !621), !dbg !2139
  br label %476, !dbg !2331

; <label>:209:                                    ; preds = %160
  br i1 %23, label %476, label %587, !dbg !2332

; <label>:210:                                    ; preds = %155
  switch i32 %96, label %476 [
    i32 2, label %211
    i32 5, label %212
  ], !dbg !2333

; <label>:211:                                    ; preds = %210
  br i1 %112, label %476, label %644, !dbg !2334

; <label>:212:                                    ; preds = %210
  br i1 %25, label %476, label %213, !dbg !2336

; <label>:213:                                    ; preds = %212
  %214 = add i64 %124, 2, !dbg !2338
  %215 = icmp ult i64 %214, %156, !dbg !2340
  br i1 %215, label %216, label %476, !dbg !2341

; <label>:216:                                    ; preds = %213
  %217 = add i64 %124, 1, !dbg !2342
  %218 = getelementptr inbounds i8, i8* %2, i64 %217, !dbg !2344
  %219 = load i8, i8* %218, align 1, !dbg !2344, !tbaa !751
  %220 = icmp eq i8 %219, 63, !dbg !2345
  br i1 %220, label %221, label %476, !dbg !2346

; <label>:221:                                    ; preds = %216
  %222 = getelementptr inbounds i8, i8* %2, i64 %214, !dbg !2348
  %223 = load i8, i8* %222, align 1, !dbg !2348, !tbaa !751
  %224 = sext i8 %223 to i32, !dbg !2348
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
  ], !dbg !2349

; <label>:225:                                    ; preds = %221, %221, %221, %221, %221, %221, %221, %221, %221
  br i1 %112, label %226, label %644, !dbg !2350

; <label>:226:                                    ; preds = %225
  call void @llvm.dbg.value(metadata i8 %223, i64 0, metadata !2087, metadata !621), !dbg !2245
  call void @llvm.dbg.value(metadata i64 %214, i64 0, metadata !2076, metadata !621), !dbg !2214
  %227 = icmp ult i64 %125, %131, !dbg !2352
  br i1 %227, label %228, label %230, !dbg !2356

; <label>:228:                                    ; preds = %226
  %229 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !2358
  store i8 63, i8* %229, align 1, !dbg !2358, !tbaa !751
  br label %230, !dbg !2358

; <label>:230:                                    ; preds = %228, %226
  %231 = add i64 %125, 1, !dbg !2360
  call void @llvm.dbg.value(metadata i64 %231, i64 0, metadata !2077, metadata !621), !dbg !2139
  %232 = icmp ult i64 %231, %131, !dbg !2362
  br i1 %232, label %233, label %235, !dbg !2366

; <label>:233:                                    ; preds = %230
  %234 = getelementptr inbounds i8, i8* %0, i64 %231, !dbg !2368
  store i8 34, i8* %234, align 1, !dbg !2368, !tbaa !751
  br label %235, !dbg !2368

; <label>:235:                                    ; preds = %233, %230
  %236 = add i64 %125, 2, !dbg !2370
  call void @llvm.dbg.value(metadata i64 %236, i64 0, metadata !2077, metadata !621), !dbg !2139
  %237 = icmp ult i64 %236, %131, !dbg !2372
  br i1 %237, label %238, label %240, !dbg !2376

; <label>:238:                                    ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236, !dbg !2378
  store i8 34, i8* %239, align 1, !dbg !2378, !tbaa !751
  br label %240, !dbg !2378

; <label>:240:                                    ; preds = %238, %235
  %241 = add i64 %125, 3, !dbg !2380
  call void @llvm.dbg.value(metadata i64 %241, i64 0, metadata !2077, metadata !621), !dbg !2139
  %242 = icmp ult i64 %241, %131, !dbg !2382
  br i1 %242, label %243, label %245, !dbg !2386

; <label>:243:                                    ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241, !dbg !2388
  store i8 63, i8* %244, align 1, !dbg !2388, !tbaa !751
  br label %245, !dbg !2388

; <label>:245:                                    ; preds = %243, %240
  %246 = add i64 %125, 4, !dbg !2390
  call void @llvm.dbg.value(metadata i64 %246, i64 0, metadata !2077, metadata !621), !dbg !2139
  br label %476, !dbg !2392

; <label>:247:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !2091, metadata !621), !dbg !2393
  br label %257, !dbg !2394

; <label>:248:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !2091, metadata !621), !dbg !2393
  br label %257, !dbg !2395

; <label>:249:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !2091, metadata !621), !dbg !2393
  br label %255, !dbg !2396

; <label>:250:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !2091, metadata !621), !dbg !2393
  br label %255, !dbg !2397

; <label>:251:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !2091, metadata !621), !dbg !2393
  br label %257, !dbg !2398

; <label>:252:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !2091, metadata !621), !dbg !2393
  br i1 %114, label %253, label %254, !dbg !2399

; <label>:253:                                    ; preds = %252
  br i1 %112, label %542, label %644, !dbg !2400

; <label>:254:                                    ; preds = %252
  br i1 %122, label %542, label %255, !dbg !2403

; <label>:255:                                    ; preds = %254, %155, %250, %249
  %256 = phi i8 [ 92, %254 ], [ 116, %250 ], [ 114, %249 ], [ 110, %155 ]
  call void @llvm.dbg.value(metadata i8 %256, i64 0, metadata !2091, metadata !621), !dbg !2393
  br i1 %118, label %257, label %644, !dbg !2405

; <label>:257:                                    ; preds = %255, %155, %251, %248, %247
  %258 = phi i8 [ %256, %255 ], [ 118, %251 ], [ 102, %248 ], [ 98, %247 ], [ 97, %155 ]
  call void @llvm.dbg.value(metadata i8 %258, i64 0, metadata !2091, metadata !621), !dbg !2393
  br i1 %105, label %503, label %476, !dbg !2407

; <label>:259:                                    ; preds = %155, %155
  %260 = icmp eq i64 %156, -1, !dbg !2408
  br i1 %260, label %261, label %266, !dbg !2410

; <label>:261:                                    ; preds = %259
  %262 = load i8, i8* %26, align 1, !dbg !2411, !tbaa !751
  %263 = icmp ne i8 %262, 0, !dbg !2413
  %264 = icmp ne i64 %124, 0, !dbg !2414
  %265 = or i1 %264, %263, !dbg !2416
  br i1 %265, label %476, label %272, !dbg !2416

; <label>:266:                                    ; preds = %259
  %267 = icmp ne i64 %156, 1, !dbg !2417
  %268 = icmp ne i64 %124, 0, !dbg !2414
  %269 = or i1 %268, %267, !dbg !2419
  br i1 %269, label %476, label %272, !dbg !2419

; <label>:270:                                    ; preds = %155, %155
  %271 = icmp eq i64 %124, 0, !dbg !2414
  br i1 %271, label %272, label %476, !dbg !2421

; <label>:272:                                    ; preds = %270, %266, %261, %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2094, metadata !621), !dbg !2228
  br label %273, !dbg !2422

; <label>:273:                                    ; preds = %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %272
  %274 = phi i8 [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 1, %272 ]
  call void @llvm.dbg.value(metadata i8 %274, i64 0, metadata !2094, metadata !621), !dbg !2228
  br i1 %118, label %476, label %644, !dbg !2423

; <label>:275:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2085, metadata !621), !dbg !2148
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2094, metadata !621), !dbg !2228
  br i1 %114, label %276, label %476, !dbg !2425

; <label>:276:                                    ; preds = %275
  br i1 %112, label %277, label %644, !dbg !2426

; <label>:277:                                    ; preds = %276
  %278 = icmp eq i64 %131, 0, !dbg !2429
  %279 = icmp ne i64 %126, 0, !dbg !2431
  %280 = or i1 %279, %278, !dbg !2433
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !2078, metadata !621), !dbg !2140
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2068, metadata !621), !dbg !2131
  %281 = select i1 %280, i64 %126, i64 %131, !dbg !2433
  %282 = select i1 %280, i64 %131, i64 0, !dbg !2433
  call void @llvm.dbg.value(metadata i64 %282, i64 0, metadata !2068, metadata !621), !dbg !2131
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !2078, metadata !621), !dbg !2140
  %283 = icmp ult i64 %125, %282, !dbg !2434
  br i1 %283, label %284, label %286, !dbg !2438

; <label>:284:                                    ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !2440
  store i8 39, i8* %285, align 1, !dbg !2440, !tbaa !751
  br label %286, !dbg !2440

; <label>:286:                                    ; preds = %284, %277
  %287 = add i64 %125, 1, !dbg !2442
  call void @llvm.dbg.value(metadata i64 %287, i64 0, metadata !2077, metadata !621), !dbg !2139
  %288 = icmp ult i64 %287, %282, !dbg !2444
  br i1 %288, label %289, label %291, !dbg !2448

; <label>:289:                                    ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287, !dbg !2450
  store i8 92, i8* %290, align 1, !dbg !2450, !tbaa !751
  br label %291, !dbg !2450

; <label>:291:                                    ; preds = %289, %286
  %292 = add i64 %125, 2, !dbg !2452
  call void @llvm.dbg.value(metadata i64 %292, i64 0, metadata !2077, metadata !621), !dbg !2139
  %293 = icmp ult i64 %292, %282, !dbg !2454
  br i1 %293, label %294, label %296, !dbg !2458

; <label>:294:                                    ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292, !dbg !2460
  store i8 39, i8* %295, align 1, !dbg !2460, !tbaa !751
  br label %296, !dbg !2460

; <label>:296:                                    ; preds = %294, %291
  %297 = add i64 %125, 3, !dbg !2462
  call void @llvm.dbg.value(metadata i64 %297, i64 0, metadata !2077, metadata !621), !dbg !2139
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2084, metadata !621), !dbg !2147
  br label %476, !dbg !2464

; <label>:298:                                    ; preds = %155
  br i1 %14, label %299, label %308, !dbg !2465

; <label>:299:                                    ; preds = %298
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2095, metadata !621), !dbg !2466
  %300 = tail call i16** @__ctype_b_loc() #1, !dbg !2467
  %301 = load i16*, i16** %300, align 8, !dbg !2467, !tbaa !629
  %302 = zext i8 %159 to i64, !dbg !2467
  %303 = getelementptr inbounds i16, i16* %301, i64 %302, !dbg !2467
  %304 = load i16, i16* %303, align 2, !dbg !2467, !tbaa !2469
  %305 = lshr i16 %304, 14, !dbg !2471
  %306 = trunc i16 %305 to i8, !dbg !2471
  %307 = and i8 %306, 1, !dbg !2471
  call void @llvm.dbg.value(metadata i8 %307, i64 0, metadata !2098, metadata !621), !dbg !2472
  br label %368, !dbg !2473

; <label>:308:                                    ; preds = %298
  call void @llvm.lifetime.start(i64 8, i8* nonnull %18) #10, !dbg !2474
  store i64 0, i64* %10, align 8, !dbg !2475
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2095, metadata !621), !dbg !2466
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2098, metadata !621), !dbg !2472
  %309 = icmp eq i64 %156, -1, !dbg !2476
  br i1 %309, label %310, label %312, !dbg !2478, !llvm.loop !2479

; <label>:310:                                    ; preds = %308
  %311 = call i64 @strlen(i8* nonnull %2) #13, !dbg !2482
  call void @llvm.dbg.value(metadata i64 %311, i64 0, metadata !2070, metadata !621), !dbg !2133
  br label %312, !dbg !2483, !llvm.loop !2479

; <label>:312:                                    ; preds = %310, %308
  %313 = phi i64 [ %156, %308 ], [ %311, %310 ]
  br label %314, !dbg !2472

; <label>:314:                                    ; preds = %312, %355
  %315 = phi i64 [ %360, %355 ], [ 0, %312 ]
  %316 = phi i8 [ %359, %355 ], [ 1, %312 ]
  call void @llvm.dbg.value(metadata i8 %316, i64 0, metadata !2098, metadata !621), !dbg !2472
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !2095, metadata !621), !dbg !2466
  call void @llvm.dbg.value(metadata i64 %313, i64 0, metadata !2070, metadata !621), !dbg !2133
  call void @llvm.lifetime.start(i64 4, i8* nonnull %19) #10, !dbg !2484
  %317 = add i64 %315, %124, !dbg !2485
  %318 = getelementptr inbounds i8, i8* %2, i64 %317, !dbg !2486
  %319 = sub i64 %313, %317, !dbg !2487
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !2099, metadata !2488), !dbg !2489
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !2116, metadata !2488), !dbg !2490
  %320 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %318, i64 %319, %struct.__mbstate_t* nonnull %11) #10, !dbg !2491
  call void @llvm.dbg.value(metadata i64 %320, i64 0, metadata !2119, metadata !621), !dbg !2492
  switch i64 %320, label %334 [
    i64 0, label %350
    i64 -1, label %347
    i64 -2, label %321
  ], !dbg !2493

; <label>:321:                                    ; preds = %314
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !2095, metadata !621), !dbg !2466
  %322 = icmp ugt i64 %313, %317, !dbg !2494
  br i1 %322, label %323, label %351, !dbg !2497

; <label>:323:                                    ; preds = %321
  br label %324, !dbg !2498

; <label>:324:                                    ; preds = %323, %330
  %325 = phi i64 [ %332, %330 ], [ %317, %323 ]
  %326 = phi i64 [ %331, %330 ], [ %315, %323 ]
  %327 = getelementptr inbounds i8, i8* %2, i64 %325, !dbg !2498
  %328 = load i8, i8* %327, align 1, !dbg !2498, !tbaa !751
  %329 = icmp eq i8 %328, 0, !dbg !2500
  br i1 %329, label %348, label %330, !dbg !2501

; <label>:330:                                    ; preds = %324
  %331 = add i64 %326, 1, !dbg !2503
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !2095, metadata !621), !dbg !2466
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !2095, metadata !621), !dbg !2466
  %332 = add i64 %331, %124, !dbg !2504
  %333 = icmp ult i64 %332, %313, !dbg !2494
  br i1 %333, label %324, label %348, !dbg !2497, !llvm.loop !2505

; <label>:334:                                    ; preds = %314
  %335 = icmp ugt i64 %320, 1, !dbg !2507
  %336 = and i1 %116, %335, !dbg !2511
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2120, metadata !621), !dbg !2512
  br i1 %336, label %337, label %355, !dbg !2511

; <label>:337:                                    ; preds = %334
  br label %338, !dbg !2513

; <label>:338:                                    ; preds = %337, %344
  %339 = phi i64 [ %345, %344 ], [ 1, %337 ]
  %340 = add i64 %339, %317, !dbg !2513
  %341 = getelementptr inbounds i8, i8* %2, i64 %340, !dbg !2514
  %342 = load i8, i8* %341, align 1, !dbg !2514, !tbaa !751
  %343 = sext i8 %342 to i32, !dbg !2514
  switch i32 %343, label %344 [
    i32 91, label %367
    i32 92, label %367
    i32 94, label %367
    i32 96, label %367
    i32 124, label %367
  ], !dbg !2515

; <label>:344:                                    ; preds = %338
  %345 = add nuw i64 %339, 1, !dbg !2516
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !2120, metadata !621), !dbg !2512
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !2120, metadata !621), !dbg !2512
  %346 = icmp ult i64 %345, %320, !dbg !2507
  br i1 %346, label %338, label %354, !dbg !2518, !llvm.loop !2520

; <label>:347:                                    ; preds = %314
  br label %351, !dbg !2472

; <label>:348:                                    ; preds = %324, %330
  %349 = phi i64 [ %331, %330 ], [ %326, %324 ]
  br label %351, !dbg !2472

; <label>:350:                                    ; preds = %314
  br label %351, !dbg !2472

; <label>:351:                                    ; preds = %350, %348, %347, %321
  %352 = phi i64 [ %315, %321 ], [ %315, %347 ], [ %349, %348 ], [ %315, %350 ]
  %353 = phi i8 [ 0, %321 ], [ 0, %347 ], [ 0, %348 ], [ %316, %350 ]
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !2098, metadata !621), !dbg !2472
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !2095, metadata !621), !dbg !2466
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10, !dbg !2523
  br label %364

; <label>:354:                                    ; preds = %344
  br label %355, !dbg !2524

; <label>:355:                                    ; preds = %354, %334
  %356 = load i32, i32* %12, align 4, !dbg !2524, !tbaa !1540
  call void @llvm.dbg.value(metadata i32 %356, i64 0, metadata !2116, metadata !621), !dbg !2490
  %357 = call i32 @iswprint(i32 %356) #10, !dbg !2526
  %358 = icmp eq i32 %357, 0, !dbg !2526
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2098, metadata !621), !dbg !2472
  %359 = select i1 %358, i8 0, i8 %316, !dbg !2527
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !2098, metadata !621), !dbg !2472
  %360 = add i64 %320, %315, !dbg !2528
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !2095, metadata !621), !dbg !2466
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !2098, metadata !621), !dbg !2472
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !2095, metadata !621), !dbg !2466
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10, !dbg !2523
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !2099, metadata !2488), !dbg !2489
  %361 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #13, !dbg !2529
  %362 = icmp eq i32 %361, 0, !dbg !2530
  br i1 %362, label %314, label %363, !dbg !2531, !llvm.loop !2479

; <label>:363:                                    ; preds = %355
  br label %364, !dbg !2533

; <label>:364:                                    ; preds = %363, %351
  %365 = phi i8 [ %353, %351 ], [ %359, %363 ]
  %366 = phi i64 [ %352, %351 ], [ %360, %363 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #10, !dbg !2533
  br label %368

; <label>:367:                                    ; preds = %338, %338, %338, %338, %338
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !2098, metadata !621), !dbg !2472
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !2095, metadata !621), !dbg !2466
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10, !dbg !2523
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #10, !dbg !2533
  br label %649

; <label>:368:                                    ; preds = %364, %299
  %369 = phi i64 [ %156, %299 ], [ %313, %364 ]
  %370 = phi i64 [ 1, %299 ], [ %366, %364 ]
  %371 = phi i8 [ %307, %299 ], [ %365, %364 ]
  call void @llvm.dbg.value(metadata i8 %371, i64 0, metadata !2098, metadata !621), !dbg !2472
  call void @llvm.dbg.value(metadata i64 %370, i64 0, metadata !2095, metadata !621), !dbg !2466
  call void @llvm.dbg.value(metadata i64 %369, i64 0, metadata !2070, metadata !621), !dbg !2133
  %372 = and i8 %371, 1, !dbg !2534
  %373 = icmp ne i8 %372, 0, !dbg !2534
  call void @llvm.dbg.value(metadata i8 %372, i64 0, metadata !2094, metadata !621), !dbg !2228
  %374 = icmp ult i64 %370, 2, !dbg !2535
  %375 = or i1 %373, %113, !dbg !2536
  %376 = and i1 %374, %375, !dbg !2538
  br i1 %376, label %476, label %377, !dbg !2538

; <label>:377:                                    ; preds = %368
  %378 = add i64 %370, %124, !dbg !2539
  call void @llvm.dbg.value(metadata i64 %378, i64 0, metadata !2127, metadata !621), !dbg !2540
  br label %379, !dbg !2541

; <label>:379:                                    ; preds = %472, %377
  %380 = phi i64 [ %124, %377 ], [ %447, %472 ]
  %381 = phi i64 [ %125, %377 ], [ %473, %472 ]
  %382 = phi i8 [ %128, %377 ], [ %468, %472 ]
  %383 = phi i8 [ %159, %377 ], [ %475, %472 ]
  %384 = phi i8 [ %157, %377 ], [ %445, %472 ]
  %385 = phi i8 [ 0, %377 ], [ %446, %472 ]
  call void @llvm.dbg.value(metadata i8 %385, i64 0, metadata !2093, metadata !621), !dbg !2227
  call void @llvm.dbg.value(metadata i8 %384, i64 0, metadata !2092, metadata !621), !dbg !2226
  call void @llvm.dbg.value(metadata i8 %383, i64 0, metadata !2087, metadata !621), !dbg !2245
  call void @llvm.dbg.value(metadata i8 %382, i64 0, metadata !2084, metadata !621), !dbg !2147
  call void @llvm.dbg.value(metadata i64 %381, i64 0, metadata !2077, metadata !621), !dbg !2139
  call void @llvm.dbg.value(metadata i64 %380, i64 0, metadata !2076, metadata !621), !dbg !2214
  br i1 %375, label %432, label %386, !dbg !2542

; <label>:386:                                    ; preds = %379
  br i1 %112, label %387, label %643, !dbg !2547

; <label>:387:                                    ; preds = %386
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2093, metadata !621), !dbg !2227
  %388 = and i8 %382, 1, !dbg !2551
  %389 = icmp eq i8 %388, 0, !dbg !2551
  %390 = and i1 %114, %389, !dbg !2554
  br i1 %390, label %391, label %407, !dbg !2554

; <label>:391:                                    ; preds = %387
  %392 = icmp ult i64 %381, %131, !dbg !2556
  br i1 %392, label %393, label %395, !dbg !2561

; <label>:393:                                    ; preds = %391
  %394 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !2563
  store i8 39, i8* %394, align 1, !dbg !2563, !tbaa !751
  br label %395, !dbg !2563

; <label>:395:                                    ; preds = %393, %391
  %396 = add i64 %381, 1, !dbg !2565
  call void @llvm.dbg.value(metadata i64 %396, i64 0, metadata !2077, metadata !621), !dbg !2139
  %397 = icmp ult i64 %396, %131, !dbg !2567
  br i1 %397, label %398, label %400, !dbg !2571

; <label>:398:                                    ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !2573
  store i8 36, i8* %399, align 1, !dbg !2573, !tbaa !751
  br label %400, !dbg !2573

; <label>:400:                                    ; preds = %398, %395
  %401 = add i64 %381, 2, !dbg !2575
  call void @llvm.dbg.value(metadata i64 %401, i64 0, metadata !2077, metadata !621), !dbg !2139
  %402 = icmp ult i64 %401, %131, !dbg !2577
  br i1 %402, label %403, label %405, !dbg !2581

; <label>:403:                                    ; preds = %400
  %404 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !2583
  store i8 39, i8* %404, align 1, !dbg !2583, !tbaa !751
  br label %405, !dbg !2583

; <label>:405:                                    ; preds = %403, %400
  %406 = add i64 %381, 3, !dbg !2585
  call void @llvm.dbg.value(metadata i64 %406, i64 0, metadata !2077, metadata !621), !dbg !2139
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2084, metadata !621), !dbg !2147
  br label %407, !dbg !2587

; <label>:407:                                    ; preds = %387, %405
  %408 = phi i64 [ %406, %405 ], [ %381, %387 ]
  %409 = phi i8 [ 1, %405 ], [ %382, %387 ]
  call void @llvm.dbg.value(metadata i8 %409, i64 0, metadata !2084, metadata !621), !dbg !2147
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !2077, metadata !621), !dbg !2139
  %410 = icmp ult i64 %408, %131, !dbg !2589
  br i1 %410, label %411, label %413, !dbg !2593

; <label>:411:                                    ; preds = %407
  %412 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !2595
  store i8 92, i8* %412, align 1, !dbg !2595, !tbaa !751
  br label %413, !dbg !2595

; <label>:413:                                    ; preds = %411, %407
  %414 = add i64 %408, 1, !dbg !2597
  call void @llvm.dbg.value(metadata i64 %414, i64 0, metadata !2077, metadata !621), !dbg !2139
  %415 = icmp ult i64 %414, %131, !dbg !2599
  br i1 %415, label %416, label %420, !dbg !2603

; <label>:416:                                    ; preds = %413
  %417 = lshr i8 %383, 6, !dbg !2605
  %418 = or i8 %417, 48, !dbg !2605
  %419 = getelementptr inbounds i8, i8* %0, i64 %414, !dbg !2605
  store i8 %418, i8* %419, align 1, !dbg !2605, !tbaa !751
  br label %420, !dbg !2605

; <label>:420:                                    ; preds = %416, %413
  %421 = add i64 %408, 2, !dbg !2607
  call void @llvm.dbg.value(metadata i64 %421, i64 0, metadata !2077, metadata !621), !dbg !2139
  %422 = icmp ult i64 %421, %131, !dbg !2609
  br i1 %422, label %423, label %428, !dbg !2613

; <label>:423:                                    ; preds = %420
  %424 = lshr i8 %383, 3, !dbg !2615
  %425 = and i8 %424, 7, !dbg !2615
  %426 = or i8 %425, 48, !dbg !2615
  %427 = getelementptr inbounds i8, i8* %0, i64 %421, !dbg !2615
  store i8 %426, i8* %427, align 1, !dbg !2615, !tbaa !751
  br label %428, !dbg !2615

; <label>:428:                                    ; preds = %423, %420
  %429 = add i64 %408, 3, !dbg !2617
  call void @llvm.dbg.value(metadata i64 %429, i64 0, metadata !2077, metadata !621), !dbg !2139
  %430 = and i8 %383, 7, !dbg !2619
  %431 = or i8 %430, 48, !dbg !2620
  call void @llvm.dbg.value(metadata i8 %431, i64 0, metadata !2087, metadata !621), !dbg !2245
  br label %441, !dbg !2621

; <label>:432:                                    ; preds = %379
  %433 = and i8 %384, 1, !dbg !2622
  %434 = icmp eq i8 %433, 0, !dbg !2622
  br i1 %434, label %441, label %435, !dbg !2624

; <label>:435:                                    ; preds = %432
  %436 = icmp ult i64 %381, %131, !dbg !2625
  br i1 %436, label %437, label %439, !dbg !2630

; <label>:437:                                    ; preds = %435
  %438 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !2632
  store i8 92, i8* %438, align 1, !dbg !2632, !tbaa !751
  br label %439, !dbg !2632

; <label>:439:                                    ; preds = %437, %435
  %440 = add i64 %381, 1, !dbg !2634
  call void @llvm.dbg.value(metadata i64 %440, i64 0, metadata !2077, metadata !621), !dbg !2139
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2092, metadata !621), !dbg !2226
  br label %441, !dbg !2636

; <label>:441:                                    ; preds = %432, %439, %428
  %442 = phi i64 [ %440, %439 ], [ %381, %432 ], [ %429, %428 ]
  %443 = phi i8 [ %382, %439 ], [ %382, %432 ], [ %409, %428 ]
  %444 = phi i8 [ %383, %439 ], [ %383, %432 ], [ %431, %428 ]
  %445 = phi i8 [ 0, %439 ], [ %384, %432 ], [ %384, %428 ]
  %446 = phi i8 [ %385, %439 ], [ %385, %432 ], [ 1, %428 ]
  call void @llvm.dbg.value(metadata i8 %446, i64 0, metadata !2093, metadata !621), !dbg !2227
  call void @llvm.dbg.value(metadata i8 %445, i64 0, metadata !2092, metadata !621), !dbg !2226
  call void @llvm.dbg.value(metadata i8 %444, i64 0, metadata !2087, metadata !621), !dbg !2245
  call void @llvm.dbg.value(metadata i8 %443, i64 0, metadata !2084, metadata !621), !dbg !2147
  call void @llvm.dbg.value(metadata i64 %442, i64 0, metadata !2077, metadata !621), !dbg !2139
  %447 = add i64 %380, 1, !dbg !2637
  %448 = icmp ugt i64 %378, %447, !dbg !2639
  br i1 %448, label %449, label %541, !dbg !2640

; <label>:449:                                    ; preds = %441
  %450 = and i8 %443, 1, !dbg !2641
  %451 = icmp ne i8 %450, 0, !dbg !2641
  %452 = and i8 %446, 1, !dbg !2645
  %453 = icmp eq i8 %452, 0, !dbg !2645
  %454 = and i1 %451, %453, !dbg !2641
  br i1 %454, label %455, label %466, !dbg !2641

; <label>:455:                                    ; preds = %449
  %456 = icmp ult i64 %442, %131, !dbg !2647
  br i1 %456, label %457, label %459, !dbg !2652

; <label>:457:                                    ; preds = %455
  %458 = getelementptr inbounds i8, i8* %0, i64 %442, !dbg !2654
  store i8 39, i8* %458, align 1, !dbg !2654, !tbaa !751
  br label %459, !dbg !2654

; <label>:459:                                    ; preds = %457, %455
  %460 = add i64 %442, 1, !dbg !2656
  call void @llvm.dbg.value(metadata i64 %460, i64 0, metadata !2077, metadata !621), !dbg !2139
  %461 = icmp ult i64 %460, %131, !dbg !2658
  br i1 %461, label %462, label %464, !dbg !2662

; <label>:462:                                    ; preds = %459
  %463 = getelementptr inbounds i8, i8* %0, i64 %460, !dbg !2664
  store i8 39, i8* %463, align 1, !dbg !2664, !tbaa !751
  br label %464, !dbg !2664

; <label>:464:                                    ; preds = %462, %459
  %465 = add i64 %442, 2, !dbg !2666
  call void @llvm.dbg.value(metadata i64 %465, i64 0, metadata !2077, metadata !621), !dbg !2139
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2084, metadata !621), !dbg !2147
  br label %466, !dbg !2668

; <label>:466:                                    ; preds = %449, %464
  %467 = phi i64 [ %465, %464 ], [ %442, %449 ]
  %468 = phi i8 [ 0, %464 ], [ %443, %449 ]
  call void @llvm.dbg.value(metadata i8 %468, i64 0, metadata !2084, metadata !621), !dbg !2147
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !2077, metadata !621), !dbg !2139
  %469 = icmp ult i64 %467, %131, !dbg !2670
  br i1 %469, label %470, label %472, !dbg !2674

; <label>:470:                                    ; preds = %466
  %471 = getelementptr inbounds i8, i8* %0, i64 %467, !dbg !2676
  store i8 %444, i8* %471, align 1, !dbg !2676, !tbaa !751
  br label %472, !dbg !2676

; <label>:472:                                    ; preds = %470, %466
  %473 = add i64 %467, 1, !dbg !2678
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !2077, metadata !621), !dbg !2139
  call void @llvm.dbg.value(metadata i64 %447, i64 0, metadata !2076, metadata !621), !dbg !2214
  %474 = getelementptr inbounds i8, i8* %2, i64 %447, !dbg !2680
  %475 = load i8, i8* %474, align 1, !dbg !2680, !tbaa !751
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !2087, metadata !621), !dbg !2245
  br label %379, !dbg !2681, !llvm.loop !2683

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
  call void @llvm.dbg.value(metadata i64 %486, i64 0, metadata !2068, metadata !621), !dbg !2131
  call void @llvm.dbg.value(metadata i8 %485, i64 0, metadata !2094, metadata !621), !dbg !2228
  call void @llvm.dbg.value(metadata i8 %484, i64 0, metadata !2093, metadata !621), !dbg !2227
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !2092, metadata !621), !dbg !2226
  call void @llvm.dbg.value(metadata i8 %483, i64 0, metadata !2087, metadata !621), !dbg !2245
  call void @llvm.dbg.value(metadata i8 %482, i64 0, metadata !2085, metadata !621), !dbg !2148
  call void @llvm.dbg.value(metadata i8 %481, i64 0, metadata !2084, metadata !621), !dbg !2147
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !2070, metadata !621), !dbg !2133
  call void @llvm.dbg.value(metadata i64 %479, i64 0, metadata !2078, metadata !621), !dbg !2140
  call void @llvm.dbg.value(metadata i64 %478, i64 0, metadata !2077, metadata !621), !dbg !2139
  call void @llvm.dbg.value(metadata i64 %477, i64 0, metadata !2076, metadata !621), !dbg !2214
  br i1 %107, label %488, label %487, !dbg !2686

; <label>:487:                                    ; preds = %476
  br i1 %117, label %489, label %501, !dbg !2688

; <label>:488:                                    ; preds = %476
  br i1 %20, label %501, label %489, !dbg !2689

; <label>:489:                                    ; preds = %488, %487
  %490 = lshr i8 %483, 5, !dbg !2690
  %491 = zext i8 %490 to i64, !dbg !2690
  %492 = getelementptr inbounds i32, i32* %6, i64 %491, !dbg !2692
  %493 = load i32, i32* %492, align 4, !dbg !2692, !tbaa !1540
  %494 = and i8 %483, 31, !dbg !2693
  %495 = zext i8 %494 to i32, !dbg !2694
  %496 = shl i32 1, %495, !dbg !2695
  %497 = and i32 %493, %496, !dbg !2695
  %498 = icmp eq i32 %497, 0, !dbg !2695
  %499 = icmp eq i8 %157, 0, !dbg !2696
  %500 = and i1 %499, %498, !dbg !2697
  br i1 %500, label %542, label %503, !dbg !2697

; <label>:501:                                    ; preds = %488, %487
  %502 = icmp eq i8 %157, 0, !dbg !2696
  br i1 %502, label %542, label %503, !dbg !2698

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
  call void @llvm.dbg.value(metadata i64 %512, i64 0, metadata !2068, metadata !621), !dbg !2131
  call void @llvm.dbg.value(metadata i8 %511, i64 0, metadata !2094, metadata !621), !dbg !2228
  call void @llvm.dbg.value(metadata i8 %510, i64 0, metadata !2087, metadata !621), !dbg !2245
  call void @llvm.dbg.value(metadata i8 %509, i64 0, metadata !2085, metadata !621), !dbg !2148
  call void @llvm.dbg.value(metadata i8 %508, i64 0, metadata !2084, metadata !621), !dbg !2147
  call void @llvm.dbg.value(metadata i64 %507, i64 0, metadata !2070, metadata !621), !dbg !2133
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !2078, metadata !621), !dbg !2140
  call void @llvm.dbg.value(metadata i64 %505, i64 0, metadata !2077, metadata !621), !dbg !2139
  call void @llvm.dbg.value(metadata i64 %504, i64 0, metadata !2076, metadata !621), !dbg !2214
  br i1 %112, label %513, label %644, !dbg !2700

; <label>:513:                                    ; preds = %503
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2093, metadata !621), !dbg !2227
  %514 = and i8 %508, 1, !dbg !2703
  %515 = icmp eq i8 %514, 0, !dbg !2703
  %516 = and i1 %114, %515, !dbg !2706
  br i1 %516, label %517, label %533, !dbg !2706

; <label>:517:                                    ; preds = %513
  %518 = icmp ult i64 %505, %512, !dbg !2708
  br i1 %518, label %519, label %521, !dbg !2713

; <label>:519:                                    ; preds = %517
  %520 = getelementptr inbounds i8, i8* %0, i64 %505, !dbg !2715
  store i8 39, i8* %520, align 1, !dbg !2715, !tbaa !751
  br label %521, !dbg !2715

; <label>:521:                                    ; preds = %519, %517
  %522 = add i64 %505, 1, !dbg !2717
  call void @llvm.dbg.value(metadata i64 %522, i64 0, metadata !2077, metadata !621), !dbg !2139
  %523 = icmp ult i64 %522, %512, !dbg !2719
  br i1 %523, label %524, label %526, !dbg !2723

; <label>:524:                                    ; preds = %521
  %525 = getelementptr inbounds i8, i8* %0, i64 %522, !dbg !2725
  store i8 36, i8* %525, align 1, !dbg !2725, !tbaa !751
  br label %526, !dbg !2725

; <label>:526:                                    ; preds = %524, %521
  %527 = add i64 %505, 2, !dbg !2727
  call void @llvm.dbg.value(metadata i64 %527, i64 0, metadata !2077, metadata !621), !dbg !2139
  %528 = icmp ult i64 %527, %512, !dbg !2729
  br i1 %528, label %529, label %531, !dbg !2733

; <label>:529:                                    ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527, !dbg !2735
  store i8 39, i8* %530, align 1, !dbg !2735, !tbaa !751
  br label %531, !dbg !2735

; <label>:531:                                    ; preds = %529, %526
  %532 = add i64 %505, 3, !dbg !2737
  call void @llvm.dbg.value(metadata i64 %532, i64 0, metadata !2077, metadata !621), !dbg !2139
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2084, metadata !621), !dbg !2147
  br label %533, !dbg !2739

; <label>:533:                                    ; preds = %513, %531
  %534 = phi i64 [ %532, %531 ], [ %505, %513 ]
  %535 = phi i8 [ 1, %531 ], [ %508, %513 ]
  call void @llvm.dbg.value(metadata i8 %535, i64 0, metadata !2084, metadata !621), !dbg !2147
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !2077, metadata !621), !dbg !2139
  %536 = icmp ult i64 %534, %512, !dbg !2741
  br i1 %536, label %537, label %539, !dbg !2745

; <label>:537:                                    ; preds = %533
  %538 = getelementptr inbounds i8, i8* %0, i64 %534, !dbg !2747
  store i8 92, i8* %538, align 1, !dbg !2747, !tbaa !751
  br label %539, !dbg !2747

; <label>:539:                                    ; preds = %533, %537
  %540 = add i64 %534, 1, !dbg !2749
  call void @llvm.dbg.value(metadata i64 %540, i64 0, metadata !2077, metadata !621), !dbg !2139
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !2068, metadata !621), !dbg !2131
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !2094, metadata !621), !dbg !2228
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !2093, metadata !621), !dbg !2227
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !2087, metadata !621), !dbg !2245
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !2085, metadata !621), !dbg !2148
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !2084, metadata !621), !dbg !2147
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !2070, metadata !621), !dbg !2133
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !2078, metadata !621), !dbg !2140
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !2077, metadata !621), !dbg !2139
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !2076, metadata !621), !dbg !2214
  br label %569, !dbg !2751

; <label>:541:                                    ; preds = %441
  br label %542, !dbg !2131

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
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !2068, metadata !621), !dbg !2131
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !2094, metadata !621), !dbg !2228
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !2093, metadata !621), !dbg !2227
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !2087, metadata !621), !dbg !2245
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !2085, metadata !621), !dbg !2148
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !2084, metadata !621), !dbg !2147
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !2070, metadata !621), !dbg !2133
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !2078, metadata !621), !dbg !2140
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !2077, metadata !621), !dbg !2139
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !2076, metadata !621), !dbg !2214
  %553 = and i8 %547, 1, !dbg !2751
  %554 = icmp ne i8 %553, 0, !dbg !2751
  %555 = and i8 %550, 1, !dbg !2755
  %556 = icmp eq i8 %555, 0, !dbg !2755
  %557 = and i1 %554, %556, !dbg !2751
  br i1 %557, label %558, label %569, !dbg !2751

; <label>:558:                                    ; preds = %542
  %559 = icmp ult i64 %544, %552, !dbg !2757
  br i1 %559, label %560, label %562, !dbg !2762

; <label>:560:                                    ; preds = %558
  %561 = getelementptr inbounds i8, i8* %0, i64 %544, !dbg !2764
  store i8 39, i8* %561, align 1, !dbg !2764, !tbaa !751
  br label %562, !dbg !2764

; <label>:562:                                    ; preds = %560, %558
  %563 = add i64 %544, 1, !dbg !2766
  call void @llvm.dbg.value(metadata i64 %563, i64 0, metadata !2077, metadata !621), !dbg !2139
  %564 = icmp ult i64 %563, %552, !dbg !2768
  br i1 %564, label %565, label %567, !dbg !2772

; <label>:565:                                    ; preds = %562
  %566 = getelementptr inbounds i8, i8* %0, i64 %563, !dbg !2774
  store i8 39, i8* %566, align 1, !dbg !2774, !tbaa !751
  br label %567, !dbg !2774

; <label>:567:                                    ; preds = %565, %562
  %568 = add i64 %544, 2, !dbg !2776
  call void @llvm.dbg.value(metadata i64 %568, i64 0, metadata !2077, metadata !621), !dbg !2139
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2084, metadata !621), !dbg !2147
  br label %569, !dbg !2778

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
  call void @llvm.dbg.value(metadata i8 %578, i64 0, metadata !2084, metadata !621), !dbg !2147
  call void @llvm.dbg.value(metadata i64 %577, i64 0, metadata !2077, metadata !621), !dbg !2139
  %579 = icmp ult i64 %577, %570, !dbg !2780
  br i1 %579, label %580, label %582, !dbg !2784

; <label>:580:                                    ; preds = %569
  %581 = getelementptr inbounds i8, i8* %0, i64 %577, !dbg !2786
  store i8 %572, i8* %581, align 1, !dbg !2786, !tbaa !751
  br label %582, !dbg !2786

; <label>:582:                                    ; preds = %580, %569
  %583 = add i64 %577, 1, !dbg !2788
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !2077, metadata !621), !dbg !2139
  %584 = and i8 %571, 1, !dbg !2790
  %585 = icmp eq i8 %584, 0, !dbg !2790
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2086, metadata !621), !dbg !2149
  %586 = select i1 %585, i8 0, i8 %130, !dbg !2792
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !2086, metadata !621), !dbg !2149
  br label %587, !dbg !2793

; <label>:587:                                    ; preds = %582, %209
  %588 = phi i64 [ %124, %209 ], [ %576, %582 ]
  %589 = phi i64 [ %125, %209 ], [ %583, %582 ]
  %590 = phi i64 [ %126, %209 ], [ %575, %582 ]
  %591 = phi i64 [ %156, %209 ], [ %574, %582 ]
  %592 = phi i8 [ %128, %209 ], [ %578, %582 ]
  %593 = phi i8 [ %129, %209 ], [ %573, %582 ]
  %594 = phi i8 [ %130, %209 ], [ %586, %582 ]
  %595 = phi i64 [ %131, %209 ], [ %570, %582 ]
  %596 = add i64 %588, 1, !dbg !2794
  call void @llvm.dbg.value(metadata i64 %596, i64 0, metadata !2076, metadata !621), !dbg !2214
  br label %123, !dbg !2796, !llvm.loop !2797

; <label>:597:                                    ; preds = %133, %135
  %598 = phi i64 [ %124, %133 ], [ -1, %135 ]
  %599 = icmp eq i64 %125, 0, !dbg !2800
  %600 = and i1 %114, %599, !dbg !2802
  %601 = xor i1 %600, true, !dbg !2802
  %602 = or i1 %112, %601, !dbg !2802
  br i1 %602, label %603, label %648, !dbg !2802

; <label>:603:                                    ; preds = %597
  %604 = and i1 %114, %112, !dbg !2803
  %605 = xor i1 %604, true, !dbg !2803
  %606 = and i8 %129, 1, !dbg !2805
  %607 = icmp eq i8 %606, 0, !dbg !2805
  %608 = or i1 %607, %605, !dbg !2803
  br i1 %608, label %618, label %609, !dbg !2803

; <label>:609:                                    ; preds = %603
  %610 = and i8 %130, 1, !dbg !2807
  %611 = icmp eq i8 %610, 0, !dbg !2807
  br i1 %611, label %614, label %612, !dbg !2810

; <label>:612:                                    ; preds = %609
  %613 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %126, i8* %2, i64 %598, i32 5, i32 %5, i32* %6, i8* %97, i8* %98), !dbg !2811
  br label %659, !dbg !2812

; <label>:614:                                    ; preds = %609
  %615 = icmp eq i64 %131, 0, !dbg !2813
  %616 = icmp ne i64 %126, 0, !dbg !2815
  %617 = and i1 %616, %615, !dbg !2817
  br i1 %617, label %27, label %618, !dbg !2817

; <label>:618:                                    ; preds = %603, %614
  %619 = icmp ne i8* %100, null, !dbg !2818
  %620 = and i1 %619, %112, !dbg !2820
  br i1 %620, label %621, label %638, !dbg !2820

; <label>:621:                                    ; preds = %618
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !2079, metadata !621), !dbg !2141
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !2077, metadata !621), !dbg !2139
  %622 = load i8, i8* %100, align 1, !dbg !2821, !tbaa !751
  %623 = icmp eq i8 %622, 0, !dbg !2825
  br i1 %623, label %638, label %624, !dbg !2825

; <label>:624:                                    ; preds = %621
  br label %625, !dbg !2827

; <label>:625:                                    ; preds = %624, %632
  %626 = phi i8 [ %635, %632 ], [ %622, %624 ]
  %627 = phi i8* [ %634, %632 ], [ %100, %624 ]
  %628 = phi i64 [ %633, %632 ], [ %125, %624 ]
  %629 = icmp ult i64 %628, %131, !dbg !2827
  br i1 %629, label %630, label %632, !dbg !2831

; <label>:630:                                    ; preds = %625
  %631 = getelementptr inbounds i8, i8* %0, i64 %628, !dbg !2833
  store i8 %626, i8* %631, align 1, !dbg !2833, !tbaa !751
  br label %632, !dbg !2833

; <label>:632:                                    ; preds = %630, %625
  %633 = add i64 %628, 1, !dbg !2835
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !2077, metadata !621), !dbg !2139
  %634 = getelementptr inbounds i8, i8* %627, i64 1, !dbg !2837
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !2079, metadata !621), !dbg !2141
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !2079, metadata !621), !dbg !2141
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !2077, metadata !621), !dbg !2139
  %635 = load i8, i8* %634, align 1, !dbg !2821, !tbaa !751
  %636 = icmp eq i8 %635, 0, !dbg !2825
  br i1 %636, label %637, label %625, !dbg !2825, !llvm.loop !2839

; <label>:637:                                    ; preds = %632
  br label %638, !dbg !2139

; <label>:638:                                    ; preds = %637, %621, %618
  %639 = phi i64 [ %125, %618 ], [ %125, %621 ], [ %633, %637 ]
  call void @llvm.dbg.value(metadata i64 %639, i64 0, metadata !2077, metadata !621), !dbg !2139
  %640 = icmp ult i64 %639, %131, !dbg !2842
  br i1 %640, label %641, label %659, !dbg !2844

; <label>:641:                                    ; preds = %638
  %642 = getelementptr inbounds i8, i8* %0, i64 %639, !dbg !2845
  store i8 0, i8* %642, align 1, !dbg !2846, !tbaa !751
  br label %659, !dbg !2845

; <label>:643:                                    ; preds = %386
  br label %649, !dbg !2131

; <label>:644:                                    ; preds = %148, %161, %211, %225, %253, %255, %273, %276, %503
  %645 = phi i32 [ %96, %148 ], [ %96, %161 ], [ 2, %211 ], [ 5, %225 ], [ 2, %253 ], [ 2, %255 ], [ 2, %273 ], [ 2, %276 ], [ %96, %503 ]
  %646 = phi i64 [ %146, %148 ], [ %156, %161 ], [ %156, %211 ], [ %156, %225 ], [ %156, %253 ], [ %156, %255 ], [ %156, %273 ], [ %156, %276 ], [ %507, %503 ]
  %647 = phi i64 [ %131, %148 ], [ %131, %161 ], [ %131, %211 ], [ %131, %225 ], [ %131, %253 ], [ %131, %255 ], [ %131, %273 ], [ %131, %276 ], [ %512, %503 ]
  br label %649, !dbg !2131

; <label>:648:                                    ; preds = %597
  br label %649, !dbg !2131

; <label>:649:                                    ; preds = %648, %644, %643, %367
  %650 = phi i32 [ 2, %367 ], [ %96, %643 ], [ %645, %644 ], [ %96, %648 ]
  %651 = phi i64 [ %313, %367 ], [ %369, %643 ], [ %646, %644 ], [ %598, %648 ]
  %652 = phi i64 [ %131, %367 ], [ %131, %643 ], [ %647, %644 ], [ %131, %648 ]
  call void @llvm.dbg.value(metadata i64 %652, i64 0, metadata !2068, metadata !621), !dbg !2131
  call void @llvm.dbg.value(metadata i64 %651, i64 0, metadata !2070, metadata !621), !dbg !2133
  %653 = icmp ne i32 %650, 2, !dbg !2847
  %654 = icmp eq i8 %104, 0, !dbg !2849
  %655 = or i1 %653, %654, !dbg !2851
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !2071, metadata !621), !dbg !2134
  %656 = select i1 %655, i32 %650, i32 4, !dbg !2851
  call void @llvm.dbg.value(metadata i32 %656, i64 0, metadata !2071, metadata !621), !dbg !2134
  %657 = and i32 %5, -3, !dbg !2852
  %658 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %652, i8* %2, i64 %651, i32 %656, i32 %657, i32* null, i8* %97, i8* %98), !dbg !2853
  br label %659, !dbg !2854

; <label>:659:                                    ; preds = %638, %641, %649, %612
  %660 = phi i64 [ %658, %649 ], [ %613, %612 ], [ %639, %641 ], [ %639, %638 ]
  ret i64 %660, !dbg !2855
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !2856 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2860, metadata !621), !dbg !2864
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2861, metadata !621), !dbg !2865
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #10, !dbg !2866
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2862, metadata !621), !dbg !2867
  %4 = icmp eq i8* %3, %0, !dbg !2868
  br i1 %4, label %5, label %75, !dbg !2870

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #10, !dbg !2871
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !2863, metadata !621), !dbg !2872
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2873, metadata !621), !dbg !2889
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2887, metadata !621), !dbg !2892
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2888, metadata !621), !dbg !2893
  %7 = load i8, i8* %6, align 1, !tbaa !751
  %8 = sext i8 %7 to i32
  %9 = and i32 %8, -33, !dbg !2894
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !2894

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2897, metadata !621), !dbg !2911
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2909, metadata !621), !dbg !2915
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2910, metadata !621), !dbg !2916
  %11 = getelementptr inbounds i8, i8* %6, i64 1
  %12 = load i8, i8* %11, align 1, !tbaa !751
  %13 = sext i8 %12 to i32
  %14 = and i32 %13, -33, !dbg !2917
  %15 = icmp eq i32 %14, 84, !dbg !2917
  br i1 %15, label %16, label %72, !dbg !2917

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2920, metadata !621), !dbg !2933
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2931, metadata !621), !dbg !2937
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2932, metadata !621), !dbg !2938
  %17 = getelementptr inbounds i8, i8* %6, i64 2
  %18 = load i8, i8* %17, align 1, !tbaa !751
  %19 = sext i8 %18 to i32
  %20 = and i32 %19, -33, !dbg !2939
  %21 = icmp eq i32 %20, 70, !dbg !2939
  br i1 %21, label %22, label %72, !dbg !2939

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2942, metadata !621), !dbg !2954
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2952, metadata !621), !dbg !2958
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2953, metadata !621), !dbg !2959
  %23 = getelementptr inbounds i8, i8* %6, i64 3
  %24 = load i8, i8* %23, align 1, !tbaa !751
  %25 = icmp eq i8 %24, 45, !dbg !2960
  br i1 %25, label %26, label %72, !dbg !2963

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2965, metadata !621), !dbg !2976
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2974, metadata !621), !dbg !2980
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2975, metadata !621), !dbg !2981
  %27 = getelementptr inbounds i8, i8* %6, i64 4
  %28 = load i8, i8* %27, align 1, !tbaa !751
  %29 = icmp eq i8 %28, 56, !dbg !2982
  br i1 %29, label %30, label %72, !dbg !2985

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2987, metadata !621), !dbg !2997
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2995, metadata !621), !dbg !3001
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2996, metadata !621), !dbg !3002
  %31 = getelementptr inbounds i8, i8* %6, i64 5
  %32 = load i8, i8* %31, align 1, !tbaa !751
  %33 = icmp eq i8 %32, 0, !dbg !3003
  br i1 %33, label %34, label %72, !dbg !3006

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !3008, !tbaa !751
  %36 = icmp eq i8 %35, 96, !dbg !3009
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.112, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.113, i64 0, i64 0), !dbg !3008
  br label %75, !dbg !3010

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2897, metadata !621), !dbg !3011
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2909, metadata !621), !dbg !3015
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2910, metadata !621), !dbg !3016
  %39 = getelementptr inbounds i8, i8* %6, i64 1
  %40 = load i8, i8* %39, align 1, !tbaa !751
  %41 = sext i8 %40 to i32
  %42 = and i32 %41, -33, !dbg !3017
  %43 = icmp eq i32 %42, 66, !dbg !3017
  br i1 %43, label %44, label %72, !dbg !3017

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2920, metadata !621), !dbg !3018
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2931, metadata !621), !dbg !3020
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2932, metadata !621), !dbg !3021
  %45 = getelementptr inbounds i8, i8* %6, i64 2
  %46 = load i8, i8* %45, align 1, !tbaa !751
  %47 = icmp eq i8 %46, 49, !dbg !3022
  br i1 %47, label %48, label %72, !dbg !3024

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2942, metadata !621), !dbg !3026
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2952, metadata !621), !dbg !3028
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2953, metadata !621), !dbg !3029
  %49 = getelementptr inbounds i8, i8* %6, i64 3
  %50 = load i8, i8* %49, align 1, !tbaa !751
  %51 = icmp eq i8 %50, 56, !dbg !3030
  br i1 %51, label %52, label %72, !dbg !3031

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2965, metadata !621), !dbg !3032
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2974, metadata !621), !dbg !3034
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2975, metadata !621), !dbg !3035
  %53 = getelementptr inbounds i8, i8* %6, i64 4
  %54 = load i8, i8* %53, align 1, !tbaa !751
  %55 = icmp eq i8 %54, 48, !dbg !3036
  br i1 %55, label %56, label %72, !dbg !3037

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2987, metadata !621), !dbg !3038
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2995, metadata !621), !dbg !3040
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2996, metadata !621), !dbg !3041
  %57 = getelementptr inbounds i8, i8* %6, i64 5
  %58 = load i8, i8* %57, align 1, !tbaa !751
  %59 = icmp eq i8 %58, 51, !dbg !3042
  br i1 %59, label %60, label %72, !dbg !3043

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3044, metadata !621), !dbg !3053
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3051, metadata !621), !dbg !3057
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3052, metadata !621), !dbg !3058
  %61 = getelementptr inbounds i8, i8* %6, i64 6
  %62 = load i8, i8* %61, align 1, !tbaa !751
  %63 = icmp eq i8 %62, 48, !dbg !3059
  br i1 %63, label %64, label %72, !dbg !3062

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3064, metadata !621), !dbg !3072
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3070, metadata !621), !dbg !3076
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3071, metadata !621), !dbg !3077
  %65 = getelementptr inbounds i8, i8* %6, i64 7
  %66 = load i8, i8* %65, align 1, !tbaa !751
  %67 = icmp eq i8 %66, 0, !dbg !3078
  br i1 %67, label %68, label %72, !dbg !3081

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !3082, !tbaa !751
  %70 = icmp eq i8 %69, 96, !dbg !3083
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.114, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.115, i64 0, i64 0), !dbg !3082
  br label %75, !dbg !3084

; <label>:72:                                     ; preds = %5, %30, %26, %22, %16, %10, %64, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !3085
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.111, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.110, i64 0, i64 0), !dbg !3086
  br label %75, !dbg !3087

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !3088
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !3089 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3093, metadata !621), !dbg !3096
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3094, metadata !621), !dbg !3097
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3095, metadata !621), !dbg !3098
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3099, metadata !621) #10, !dbg !3112
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3104, metadata !621) #10, !dbg !3114
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !3105, metadata !621) #10, !dbg !3115
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3106, metadata !621) #10, !dbg !3116
  %4 = icmp ne %struct.quoting_options* %2, null, !dbg !3117
  %5 = select i1 %4, %struct.quoting_options* %2, %struct.quoting_options* @default_quoting_options, !dbg !3117
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3107, metadata !621) #10, !dbg !3118
  %6 = tail call i32* @__errno_location() #1, !dbg !3119
  %7 = load i32, i32* %6, align 4, !dbg !3119, !tbaa !1540
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !3108, metadata !621) #10, !dbg !3120
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3121
  %9 = load i32, i32* %8, align 4, !dbg !3121, !tbaa !1999
  %10 = or i32 %9, 1, !dbg !3122
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !3109, metadata !621) #10, !dbg !3123
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3124
  %12 = load i32, i32* %11, align 8, !dbg !3124, !tbaa !1937
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !3125
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3126
  %15 = load i8*, i8** %14, align 8, !dbg !3126, !tbaa !2026
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3127
  %17 = load i8*, i8** %16, align 8, !dbg !3127, !tbaa !2029
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #10, !dbg !3128
  %19 = add i64 %18, 1, !dbg !3129
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !3110, metadata !621) #10, !dbg !3130
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !3131, metadata !621) #10, !dbg !3136
  %20 = tail call noalias i8* @xmalloc(i64 %19) #10, !dbg !3138
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !3111, metadata !621) #10, !dbg !3139
  %21 = load i32, i32* %11, align 8, !dbg !3140, !tbaa !1937
  %22 = load i8*, i8** %14, align 8, !dbg !3141, !tbaa !2026
  %23 = load i8*, i8** %16, align 8, !dbg !3142, !tbaa !2029
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #10, !dbg !3143
  store i32 %7, i32* %6, align 4, !dbg !3144, !tbaa !1540
  ret i8* %20, !dbg !3145
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !3100 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3099, metadata !621), !dbg !3146
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3104, metadata !621), !dbg !3147
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !3105, metadata !621), !dbg !3148
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3106, metadata !621), !dbg !3149
  %5 = icmp ne %struct.quoting_options* %3, null, !dbg !3150
  %6 = select i1 %5, %struct.quoting_options* %3, %struct.quoting_options* @default_quoting_options, !dbg !3150
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3107, metadata !621), !dbg !3151
  %7 = tail call i32* @__errno_location() #1, !dbg !3152
  %8 = load i32, i32* %7, align 4, !dbg !3152, !tbaa !1540
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !3108, metadata !621), !dbg !3153
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !3154
  %10 = load i32, i32* %9, align 4, !dbg !3154, !tbaa !1999
  %11 = icmp ne i64* %2, null, !dbg !3155
  %12 = xor i1 %11, true, !dbg !3155
  %13 = zext i1 %12 to i32, !dbg !3155
  %14 = or i32 %10, %13, !dbg !3156
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !3109, metadata !621), !dbg !3157
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3158
  %16 = load i32, i32* %15, align 8, !dbg !3158, !tbaa !1937
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !3159
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3160
  %19 = load i8*, i8** %18, align 8, !dbg !3160, !tbaa !2026
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3161
  %21 = load i8*, i8** %20, align 8, !dbg !3161, !tbaa !2029
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !3162
  %23 = add i64 %22, 1, !dbg !3163
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !3110, metadata !621), !dbg !3164
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !3131, metadata !621) #10, !dbg !3165
  %24 = tail call noalias i8* @xmalloc(i64 %23) #10, !dbg !3167
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !3111, metadata !621), !dbg !3168
  %25 = load i32, i32* %15, align 8, !dbg !3169, !tbaa !1937
  %26 = load i8*, i8** %18, align 8, !dbg !3170, !tbaa !2026
  %27 = load i8*, i8** %20, align 8, !dbg !3171, !tbaa !2029
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !3172
  store i32 %8, i32* %7, align 4, !dbg !3173, !tbaa !1540
  br i1 %11, label %29, label %30, !dbg !3174

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !3175, !tbaa !3177
  br label %30, !dbg !3179

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !3180
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !3181 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3185, !tbaa !629
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !3183, metadata !621), !dbg !3186
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3184, metadata !621), !dbg !3187
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3184, metadata !621), !dbg !3187
  %2 = load i32, i32* @nslots, align 4, !dbg !3188, !tbaa !1540
  %3 = icmp sgt i32 %2, 1, !dbg !3192
  br i1 %3, label %4, label %14, !dbg !3193

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !3195

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !3195
  %8 = load i8*, i8** %7, align 8, !dbg !3195, !tbaa !3196
  tail call void @free(i8* %8) #10, !dbg !3198
  %9 = add nuw i64 %6, 1, !dbg !3199
  %10 = load i32, i32* @nslots, align 4, !dbg !3188, !tbaa !1540
  %11 = sext i32 %10 to i64, !dbg !3192
  %12 = icmp slt i64 %9, %11, !dbg !3192
  br i1 %12, label %5, label %13, !dbg !3193, !llvm.loop !3201

; <label>:13:                                     ; preds = %5
  br label %14, !dbg !3204

; <label>:14:                                     ; preds = %13, %0
  %15 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !3204
  %16 = load i8*, i8** %15, align 8, !dbg !3204, !tbaa !3196
  %17 = icmp eq i8* %16, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3206
  br i1 %17, label %19, label %18, !dbg !3207

; <label>:18:                                     ; preds = %14
  tail call void @free(i8* %16) #10, !dbg !3208
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !3210, !tbaa !3211
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !3212, !tbaa !3196
  br label %19, !dbg !3213

; <label>:19:                                     ; preds = %14, %18
  %20 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !3214
  br i1 %20, label %23, label %21, !dbg !3216

; <label>:21:                                     ; preds = %19
  %22 = bitcast %struct.slotvec* %1 to i8*, !dbg !3217
  tail call void @free(i8* %22) #10, !dbg !3219
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !3220, !tbaa !629
  br label %23, !dbg !3221

; <label>:23:                                     ; preds = %19, %21
  store i32 1, i32* @nslots, align 4, !dbg !3222, !tbaa !1540
  ret void, !dbg !3223
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !3224 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3228, metadata !621), !dbg !3230
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3229, metadata !621), !dbg !3231
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3232
  ret i8* %3, !dbg !3233
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !3234 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3238, metadata !621), !dbg !3252
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3239, metadata !621), !dbg !3253
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3240, metadata !621), !dbg !3254
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3241, metadata !621), !dbg !3255
  %5 = tail call i32* @__errno_location() #1, !dbg !3256
  %6 = load i32, i32* %5, align 4, !dbg !3256, !tbaa !1540
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !3242, metadata !621), !dbg !3257
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3258, !tbaa !629
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !3243, metadata !621), !dbg !3259
  %8 = icmp slt i32 %0, 0, !dbg !3260
  br i1 %8, label %9, label %10, !dbg !3262

; <label>:9:                                      ; preds = %4
  tail call void @abort() #14, !dbg !3263
  unreachable, !dbg !3263

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !3264, !tbaa !1540
  %12 = icmp sgt i32 %11, %0, !dbg !3265
  br i1 %12, label %34, label %13, !dbg !3266

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !3267
  %15 = icmp ugt i32 %0, 2147483646, !dbg !3268
  br i1 %15, label %16, label %17, !dbg !3270

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !3271
  unreachable, !dbg !3271

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !3272
  %19 = select i1 %14, i8* null, i8* %18, !dbg !3272
  %20 = add nsw i32 %0, 1, !dbg !3274
  %21 = sext i32 %20 to i64, !dbg !3275
  %22 = shl nsw i64 %21, 4, !dbg !3276
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #10, !dbg !3277
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !3277
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !3243, metadata !621), !dbg !3259
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !3278, !tbaa !629
  br i1 %14, label %25, label %26, !dbg !3279

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !3280, !tbaa.struct !3282
  br label %26, !dbg !3283

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !3284, !tbaa !1540
  %28 = sext i32 %27 to i64, !dbg !3285
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !3285
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !3286
  %31 = sub nsw i32 %20, %27, !dbg !3287
  %32 = sext i32 %31 to i64, !dbg !3288
  %33 = shl nsw i64 %32, 4, !dbg !3289
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !3286
  store i32 %20, i32* @nslots, align 4, !dbg !3290, !tbaa !1540
  br label %34, !dbg !3291

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !3243, metadata !621), !dbg !3259
  %36 = sext i32 %0 to i64, !dbg !3292
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !3293
  %38 = load i64, i64* %37, align 8, !dbg !3293, !tbaa !3211
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !3247, metadata !621), !dbg !3294
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !3295
  %40 = load i8*, i8** %39, align 8, !dbg !3295, !tbaa !3196
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !3249, metadata !621), !dbg !3296
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !3297
  %42 = load i32, i32* %41, align 4, !dbg !3297, !tbaa !1999
  %43 = or i32 %42, 1, !dbg !3298
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !3250, metadata !621), !dbg !3299
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3300
  %45 = load i32, i32* %44, align 8, !dbg !3300, !tbaa !1937
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !3301
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !3302
  %48 = load i8*, i8** %47, align 8, !dbg !3302, !tbaa !2026
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !3303
  %50 = load i8*, i8** %49, align 8, !dbg !3303, !tbaa !2029
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !3304
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !3251, metadata !621), !dbg !3305
  %52 = icmp ugt i64 %38, %51, !dbg !3306
  br i1 %52, label %63, label %53, !dbg !3308

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !3309
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !3247, metadata !621), !dbg !3294
  store i64 %54, i64* %37, align 8, !dbg !3311, !tbaa !3211
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3312
  br i1 %55, label %57, label %56, !dbg !3314

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #10, !dbg !3315
  br label %57, !dbg !3315

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !3131, metadata !621) #10, !dbg !3316
  %58 = tail call noalias i8* @xmalloc(i64 %54) #10, !dbg !3318
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !3249, metadata !621), !dbg !3296
  store i8* %58, i8** %39, align 8, !dbg !3319, !tbaa !3196
  %59 = load i32, i32* %44, align 8, !dbg !3320, !tbaa !1937
  %60 = load i8*, i8** %47, align 8, !dbg !3321, !tbaa !2026
  %61 = load i8*, i8** %49, align 8, !dbg !3322, !tbaa !2029
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !3323
  br label %63, !dbg !3324

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !3249, metadata !621), !dbg !3296
  store i32 %6, i32* %5, align 4, !dbg !3325, !tbaa !1540
  ret i8* %64, !dbg !3326
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #7

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3327 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3331, metadata !621), !dbg !3334
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3332, metadata !621), !dbg !3335
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3333, metadata !621), !dbg !3336
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3337
  ret i8* %4, !dbg !3338
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !3339 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3343, metadata !621), !dbg !3344
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3228, metadata !621) #10, !dbg !3345
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3229, metadata !621) #10, !dbg !3347
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !3348
  ret i8* %2, !dbg !3349
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !3350 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3354, metadata !621), !dbg !3356
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3355, metadata !621), !dbg !3357
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3331, metadata !621) #10, !dbg !3358
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3332, metadata !621) #10, !dbg !3360
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3333, metadata !621) #10, !dbg !3361
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !3362
  ret i8* %3, !dbg !3363
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !3364 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !3372, metadata !3378), !dbg !3379
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3368, metadata !621), !dbg !3381
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3369, metadata !621), !dbg !3382
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3370, metadata !621), !dbg !3383
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3384
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !3384
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3371, metadata !2488), !dbg !3385
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3377, metadata !621) #10, !dbg !3386
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3387
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !3387
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3372, metadata !621) #10, !dbg !3379
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3372, metadata !3388) #10, !dbg !3379
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !3379
  %8 = icmp eq i32 %1, 10, !dbg !3389
  br i1 %8, label %9, label %10, !dbg !3391

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14, !dbg !3392, !noalias !3393
  unreachable, !dbg !3392

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3372, metadata !3388) #10, !dbg !3379
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3396
  store i32 %1, i32* %11, align 8, !dbg !3396, !alias.scope !3393
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3396
  %13 = bitcast i32* %12 to i8*, !dbg !3396
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !3396
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !3397
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3371, metadata !2488), !dbg !3385
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !3398
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !3399
  ret i8* %14, !dbg !3400
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !3401 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !3372, metadata !3378), !dbg !3410
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3405, metadata !621), !dbg !3412
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3406, metadata !621), !dbg !3413
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3407, metadata !621), !dbg !3414
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3408, metadata !621), !dbg !3415
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3416
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10, !dbg !3416
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3409, metadata !2488), !dbg !3417
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3377, metadata !621) #10, !dbg !3418
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !3419
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !3419
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3372, metadata !621) #10, !dbg !3410
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3372, metadata !3388) #10, !dbg !3410
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !3410
  %9 = icmp eq i32 %1, 10, !dbg !3420
  br i1 %9, label %10, label %11, !dbg !3421

; <label>:10:                                     ; preds = %4
  tail call void @abort() #14, !dbg !3422, !noalias !3423
  unreachable, !dbg !3422

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3372, metadata !3388) #10, !dbg !3410
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3426
  store i32 %1, i32* %12, align 8, !dbg !3426, !alias.scope !3423
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !3426
  %14 = bitcast i32* %13 to i8*, !dbg !3426
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #10, !dbg !3426
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !3427
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3409, metadata !2488), !dbg !3417
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !3428
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10, !dbg !3429
  ret i8* %15, !dbg !3430
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !3431 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !3372, metadata !3378), !dbg !3437
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3435, metadata !621), !dbg !3440
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3436, metadata !621), !dbg !3441
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3368, metadata !621) #10, !dbg !3442
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3369, metadata !621) #10, !dbg !3443
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3370, metadata !621) #10, !dbg !3444
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3445
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10, !dbg !3445
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3371, metadata !2488) #10, !dbg !3446
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3377, metadata !621) #10, !dbg !3447
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !3448
  call void @llvm.lifetime.start(i64 52, i8* nonnull %6), !dbg !3448
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3372, metadata !621) #10, !dbg !3437
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3372, metadata !3388) #10, !dbg !3437
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !3437
  %7 = icmp eq i32 %0, 10, !dbg !3449
  br i1 %7, label %8, label %9, !dbg !3450

; <label>:8:                                      ; preds = %2
  tail call void @abort() #14, !dbg !3451, !noalias !3452
  unreachable, !dbg !3451

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3372, metadata !3388) #10, !dbg !3437
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3455
  store i32 %0, i32* %10, align 8, !dbg !3455, !alias.scope !3452
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3455
  %12 = bitcast i32* %11 to i8*, !dbg !3455
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #10, !dbg !3455
  call void @llvm.lifetime.end(i64 52, i8* nonnull %6), !dbg !3456
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3371, metadata !2488) #10, !dbg !3446
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !3457
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10, !dbg !3458
  ret i8* %13, !dbg !3459
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3460 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !3372, metadata !3378), !dbg !3467
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3464, metadata !621), !dbg !3470
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3465, metadata !621), !dbg !3471
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3466, metadata !621), !dbg !3472
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3405, metadata !621) #10, !dbg !3473
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3406, metadata !621) #10, !dbg !3474
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3407, metadata !621) #10, !dbg !3475
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3408, metadata !621) #10, !dbg !3476
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3477
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !3477
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3409, metadata !2488) #10, !dbg !3478
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3377, metadata !621) #10, !dbg !3479
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3480
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !3480
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3372, metadata !621) #10, !dbg !3467
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3372, metadata !3388) #10, !dbg !3467
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !3467
  %8 = icmp eq i32 %0, 10, !dbg !3481
  br i1 %8, label %9, label %10, !dbg !3482

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14, !dbg !3483, !noalias !3484
  unreachable, !dbg !3483

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3372, metadata !3388) #10, !dbg !3467
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3487
  store i32 %0, i32* %11, align 8, !dbg !3487, !alias.scope !3484
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3487
  %13 = bitcast i32* %12 to i8*, !dbg !3487
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !3487
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !3488
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3409, metadata !2488) #10, !dbg !3478
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #10, !dbg !3489
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !3490
  ret i8* %14, !dbg !3491
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !3492 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3496, metadata !621), !dbg !3500
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3497, metadata !621), !dbg !3501
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !3498, metadata !621), !dbg !3502
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3503
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10, !dbg !3503
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !3504, !tbaa.struct !3505
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3499, metadata !2488), !dbg !3506
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1957, metadata !621), !dbg !3507
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1958, metadata !621), !dbg !3509
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1959, metadata !621), !dbg !3510
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1960, metadata !621), !dbg !3511
  %6 = lshr i8 %2, 5, !dbg !3512
  %7 = zext i8 %6 to i64, !dbg !3512
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3513
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1961, metadata !621), !dbg !3514
  %9 = and i8 %2, 31, !dbg !3515
  %10 = zext i8 %9 to i32, !dbg !3516
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1963, metadata !621), !dbg !3517
  %11 = load i32, i32* %8, align 4, !dbg !3518, !tbaa !1540
  %12 = lshr i32 %11, %10, !dbg !3519
  %13 = and i32 %12, 1, !dbg !3520
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1964, metadata !621), !dbg !3521
  %14 = xor i32 %13, 1, !dbg !3522
  %15 = shl i32 %14, %10, !dbg !3523
  %16 = xor i32 %15, %11, !dbg !3524
  store i32 %16, i32* %8, align 4, !dbg !3524, !tbaa !1540
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3499, metadata !2488), !dbg !3506
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !3525
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10, !dbg !3526
  ret i8* %17, !dbg !3527
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !3528 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3532, metadata !621), !dbg !3534
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !3533, metadata !621), !dbg !3535
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3496, metadata !621) #10, !dbg !3536
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3497, metadata !621) #10, !dbg !3538
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !3498, metadata !621) #10, !dbg !3539
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3540
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #10, !dbg !3540
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3541, !tbaa.struct !3505
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3499, metadata !2488) #10, !dbg !3542
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1957, metadata !621) #10, !dbg !3543
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1958, metadata !621) #10, !dbg !3545
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1959, metadata !621) #10, !dbg !3546
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1960, metadata !621) #10, !dbg !3547
  %5 = lshr i8 %1, 5, !dbg !3548
  %6 = zext i8 %5 to i64, !dbg !3548
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3549
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !1961, metadata !621) #10, !dbg !3550
  %8 = and i8 %1, 31, !dbg !3551
  %9 = zext i8 %8 to i32, !dbg !3552
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1963, metadata !621) #10, !dbg !3553
  %10 = load i32, i32* %7, align 4, !dbg !3554, !tbaa !1540
  %11 = lshr i32 %10, %9, !dbg !3555
  %12 = and i32 %11, 1, !dbg !3556
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !1964, metadata !621) #10, !dbg !3557
  %13 = xor i32 %12, 1, !dbg !3558
  %14 = shl i32 %13, %9, !dbg !3559
  %15 = xor i32 %14, %10, !dbg !3560
  store i32 %15, i32* %7, align 4, !dbg !3560, !tbaa !1540
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3499, metadata !2488) #10, !dbg !3542
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #10, !dbg !3561
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #10, !dbg !3562
  ret i8* %16, !dbg !3563
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !3564 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3566, metadata !621), !dbg !3567
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3532, metadata !621) #10, !dbg !3568
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3533, metadata !621) #10, !dbg !3570
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3496, metadata !621) #10, !dbg !3571
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3497, metadata !621) #10, !dbg !3573
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3498, metadata !621) #10, !dbg !3574
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3575
  call void @llvm.lifetime.start(i64 56, i8* nonnull %3) #10, !dbg !3575
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3576, !tbaa.struct !3505
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3499, metadata !2488) #10, !dbg !3577
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1957, metadata !621) #10, !dbg !3578
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1958, metadata !621) #10, !dbg !3580
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1959, metadata !621) #10, !dbg !3581
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1960, metadata !621) #10, !dbg !3582
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3583
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !1961, metadata !621) #10, !dbg !3584
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1963, metadata !621) #10, !dbg !3585
  %5 = load i32, i32* %4, align 4, !dbg !3586, !tbaa !1540
  %6 = or i32 %5, 67108864, !dbg !3587
  store i32 %6, i32* %4, align 4, !dbg !3587, !tbaa !1540
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3499, metadata !2488) #10, !dbg !3577
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #10, !dbg !3588
  call void @llvm.lifetime.end(i64 56, i8* nonnull %3) #10, !dbg !3589
  ret i8* %7, !dbg !3590
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !3591 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3593, metadata !621), !dbg !3595
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3594, metadata !621), !dbg !3596
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3496, metadata !621) #10, !dbg !3597
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3497, metadata !621) #10, !dbg !3599
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3498, metadata !621) #10, !dbg !3600
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3601
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #10, !dbg !3601
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3602, !tbaa.struct !3505
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3499, metadata !2488) #10, !dbg !3603
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1957, metadata !621) #10, !dbg !3604
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1958, metadata !621) #10, !dbg !3606
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1959, metadata !621) #10, !dbg !3607
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1960, metadata !621) #10, !dbg !3608
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3609
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !1961, metadata !621) #10, !dbg !3610
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1963, metadata !621) #10, !dbg !3611
  %6 = load i32, i32* %5, align 4, !dbg !3612, !tbaa !1540
  %7 = or i32 %6, 67108864, !dbg !3613
  store i32 %7, i32* %5, align 4, !dbg !3613, !tbaa !1540
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3499, metadata !2488) #10, !dbg !3603
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #10, !dbg !3614
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #10, !dbg !3615
  ret i8* %8, !dbg !3616
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !3617 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !3372, metadata !3378), !dbg !3623
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3619, metadata !621), !dbg !3625
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3620, metadata !621), !dbg !3626
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3621, metadata !621), !dbg !3627
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3628
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10, !dbg !3628
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3377, metadata !621) #10, !dbg !3629
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3630
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !3630
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3372, metadata !621) #10, !dbg !3623
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3372, metadata !3388) #10, !dbg !3623
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !3623
  %9 = icmp eq i32 %1, 10, !dbg !3631
  br i1 %9, label %10, label %11, !dbg !3632

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !3633, !noalias !3634
  unreachable, !dbg !3633

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3372, metadata !3388) #10, !dbg !3623
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !3637
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !3637
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !3638
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3639
  store i32 %1, i32* %13, align 8, !dbg !3639
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3639
  %15 = bitcast i32* %14 to i8*, !dbg !3639
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !3639
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3622, metadata !2488), !dbg !3640
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1957, metadata !621), !dbg !3641
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1958, metadata !621), !dbg !3643
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1959, metadata !621), !dbg !3644
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1960, metadata !621), !dbg !3645
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !3646
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !1961, metadata !621), !dbg !3647
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1963, metadata !621), !dbg !3648
  %17 = load i32, i32* %16, align 4, !dbg !3649, !tbaa !1540
  %18 = or i32 %17, 67108864, !dbg !3650
  store i32 %18, i32* %16, align 4, !dbg !3650, !tbaa !1540
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3622, metadata !2488), !dbg !3640
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !3651
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10, !dbg !3652
  ret i8* %19, !dbg !3653
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !3654 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3658, metadata !621), !dbg !3662
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3659, metadata !621), !dbg !3663
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3660, metadata !621), !dbg !3664
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3661, metadata !621), !dbg !3665
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3666, metadata !621) #10, !dbg !3676
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3671, metadata !621) #10, !dbg !3678
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3672, metadata !621) #10, !dbg !3679
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3673, metadata !621) #10, !dbg !3680
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3674, metadata !621) #10, !dbg !3681
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3682
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !3682
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3683, !tbaa.struct !3505
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3675, metadata !2488) #10, !dbg !3684
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2007, metadata !621) #10, !dbg !3685
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2008, metadata !621) #10, !dbg !3687
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2009, metadata !621) #10, !dbg !3688
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2007, metadata !621) #10, !dbg !3685
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2007, metadata !621) #10, !dbg !3685
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3689
  store i32 10, i32* %7, align 8, !dbg !3690, !tbaa !1937
  %8 = icmp ne i8* %1, null, !dbg !3691
  %9 = icmp ne i8* %2, null, !dbg !3692
  %10 = and i1 %8, %9, !dbg !3693
  br i1 %10, label %12, label %11, !dbg !3693

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14, !dbg !3694
  unreachable, !dbg !3694

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3695
  store i8* %1, i8** %13, align 8, !dbg !3696, !tbaa !2026
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3697
  store i8* %2, i8** %14, align 8, !dbg !3698, !tbaa !2029
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3675, metadata !2488) #10, !dbg !3684
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #10, !dbg !3699
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !3700
  ret i8* %15, !dbg !3701
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !3667 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3666, metadata !621), !dbg !3702
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3671, metadata !621), !dbg !3703
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3672, metadata !621), !dbg !3704
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3673, metadata !621), !dbg !3705
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !3674, metadata !621), !dbg !3706
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3707
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10, !dbg !3707
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !3708, !tbaa.struct !3505
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3675, metadata !2488), !dbg !3709
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2007, metadata !621) #10, !dbg !3710
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2008, metadata !621) #10, !dbg !3712
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2009, metadata !621) #10, !dbg !3713
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2007, metadata !621) #10, !dbg !3710
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2007, metadata !621) #10, !dbg !3710
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3714
  store i32 10, i32* %8, align 8, !dbg !3715, !tbaa !1937
  %9 = icmp ne i8* %1, null, !dbg !3716
  %10 = icmp ne i8* %2, null, !dbg !3717
  %11 = and i1 %9, %10, !dbg !3718
  br i1 %11, label %13, label %12, !dbg !3718

; <label>:12:                                     ; preds = %5
  tail call void @abort() #14, !dbg !3719
  unreachable, !dbg !3719

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3720
  store i8* %1, i8** %14, align 8, !dbg !3721, !tbaa !2026
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3722
  store i8* %2, i8** %15, align 8, !dbg !3723, !tbaa !2029
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3675, metadata !2488), !dbg !3709
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3724
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10, !dbg !3725
  ret i8* %16, !dbg !3726
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !3727 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3731, metadata !621), !dbg !3734
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3732, metadata !621), !dbg !3735
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3733, metadata !621), !dbg !3736
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3658, metadata !621) #10, !dbg !3737
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3659, metadata !621) #10, !dbg !3739
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3660, metadata !621) #10, !dbg !3740
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3661, metadata !621) #10, !dbg !3741
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3666, metadata !621) #10, !dbg !3742
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3671, metadata !621) #10, !dbg !3744
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3672, metadata !621) #10, !dbg !3745
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3673, metadata !621) #10, !dbg !3746
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3674, metadata !621) #10, !dbg !3747
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3748
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10, !dbg !3748
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3749, !tbaa.struct !3505
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3675, metadata !2488) #10, !dbg !3750
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2007, metadata !621) #10, !dbg !3751
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2008, metadata !621) #10, !dbg !3753
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2009, metadata !621) #10, !dbg !3754
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2007, metadata !621) #10, !dbg !3751
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2007, metadata !621) #10, !dbg !3751
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3755
  store i32 10, i32* %6, align 8, !dbg !3756, !tbaa !1937
  %7 = icmp ne i8* %0, null, !dbg !3757
  %8 = icmp ne i8* %1, null, !dbg !3758
  %9 = and i1 %7, %8, !dbg !3759
  br i1 %9, label %11, label %10, !dbg !3759

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !3760
  unreachable, !dbg !3760

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3761
  store i8* %0, i8** %12, align 8, !dbg !3762, !tbaa !2026
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3763
  store i8* %1, i8** %13, align 8, !dbg !3764, !tbaa !2029
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3675, metadata !2488) #10, !dbg !3750
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !3765
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10, !dbg !3766
  ret i8* %14, !dbg !3767
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !3768 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3772, metadata !621), !dbg !3776
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3773, metadata !621), !dbg !3777
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3774, metadata !621), !dbg !3778
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3775, metadata !621), !dbg !3779
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3666, metadata !621) #10, !dbg !3780
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3671, metadata !621) #10, !dbg !3782
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3672, metadata !621) #10, !dbg !3783
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3673, metadata !621) #10, !dbg !3784
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3674, metadata !621) #10, !dbg !3785
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3786
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !3786
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3787, !tbaa.struct !3505
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3675, metadata !2488) #10, !dbg !3788
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2007, metadata !621) #10, !dbg !3789
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2008, metadata !621) #10, !dbg !3791
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2009, metadata !621) #10, !dbg !3792
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2007, metadata !621) #10, !dbg !3789
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2007, metadata !621) #10, !dbg !3789
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3793
  store i32 10, i32* %7, align 8, !dbg !3794, !tbaa !1937
  %8 = icmp ne i8* %0, null, !dbg !3795
  %9 = icmp ne i8* %1, null, !dbg !3796
  %10 = and i1 %8, %9, !dbg !3797
  br i1 %10, label %12, label %11, !dbg !3797

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14, !dbg !3798
  unreachable, !dbg !3798

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3799
  store i8* %0, i8** %13, align 8, !dbg !3800, !tbaa !2026
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3801
  store i8* %1, i8** %14, align 8, !dbg !3802, !tbaa !2029
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3675, metadata !2488) #10, !dbg !3788
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #10, !dbg !3803
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !3804
  ret i8* %15, !dbg !3805
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3806 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3810, metadata !621), !dbg !3813
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3811, metadata !621), !dbg !3814
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3812, metadata !621), !dbg !3815
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3816
  ret i8* %4, !dbg !3817
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !3818 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3822, metadata !621), !dbg !3824
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3823, metadata !621), !dbg !3825
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3810, metadata !621) #10, !dbg !3826
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3811, metadata !621) #10, !dbg !3828
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3812, metadata !621) #10, !dbg !3829
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !3830
  ret i8* %3, !dbg !3831
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !3832 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3836, metadata !621), !dbg !3838
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3837, metadata !621), !dbg !3839
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3810, metadata !621) #10, !dbg !3840
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3811, metadata !621) #10, !dbg !3842
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3812, metadata !621) #10, !dbg !3843
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !3844
  ret i8* %3, !dbg !3845
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !3846 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3850, metadata !621), !dbg !3851
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3836, metadata !621) #10, !dbg !3852
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3837, metadata !621) #10, !dbg !3854
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3810, metadata !621) #10, !dbg !3855
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3811, metadata !621) #10, !dbg !3857
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3812, metadata !621) #10, !dbg !3858
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !3859
  ret i8* %2, !dbg !3860
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !3861 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3915, metadata !621), !dbg !3921
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3916, metadata !621), !dbg !3922
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3917, metadata !621), !dbg !3923
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3918, metadata !621), !dbg !3924
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3919, metadata !621), !dbg !3925
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !3920, metadata !621), !dbg !3926
  %7 = icmp eq i8* %1, null, !dbg !3927
  br i1 %7, label %10, label %8, !dbg !3929

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.118, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #10, !dbg !3930
  br label %12, !dbg !3930

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.119, i64 0, i64 0), i8* %2, i8* %3) #10, !dbg !3931
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.120, i64 0, i64 0), i32 5) #10, !dbg !3932
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #10, !dbg !3933
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.121, i64 0, i64 0), i32 5) #10, !dbg !3935
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #10, !dbg !3936
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
  ], !dbg !3937

; <label>:17:                                     ; preds = %12
  tail call void @abort() #14, !dbg !3938
  unreachable, !dbg !3938

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.122, i64 0, i64 0), i32 5) #10, !dbg !3940
  %20 = load i8*, i8** %4, align 8, !dbg !3940, !tbaa !629
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #10, !dbg !3941
  br label %146, !dbg !3943

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.123, i64 0, i64 0), i32 5) #10, !dbg !3944
  %24 = load i8*, i8** %4, align 8, !dbg !3944, !tbaa !629
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3944
  %26 = load i8*, i8** %25, align 8, !dbg !3944, !tbaa !629
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #10, !dbg !3945
  br label %146, !dbg !3946

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.124, i64 0, i64 0), i32 5) #10, !dbg !3947
  %30 = load i8*, i8** %4, align 8, !dbg !3947, !tbaa !629
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3947
  %32 = load i8*, i8** %31, align 8, !dbg !3947, !tbaa !629
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3947
  %34 = load i8*, i8** %33, align 8, !dbg !3947, !tbaa !629
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #10, !dbg !3948
  br label %146, !dbg !3949

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.125, i64 0, i64 0), i32 5) #10, !dbg !3950
  %38 = load i8*, i8** %4, align 8, !dbg !3950, !tbaa !629
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3950
  %40 = load i8*, i8** %39, align 8, !dbg !3950, !tbaa !629
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3950
  %42 = load i8*, i8** %41, align 8, !dbg !3950, !tbaa !629
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3950
  %44 = load i8*, i8** %43, align 8, !dbg !3950, !tbaa !629
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #10, !dbg !3951
  br label %146, !dbg !3952

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.126, i64 0, i64 0), i32 5) #10, !dbg !3953
  %48 = load i8*, i8** %4, align 8, !dbg !3953, !tbaa !629
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3953
  %50 = load i8*, i8** %49, align 8, !dbg !3953, !tbaa !629
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3953
  %52 = load i8*, i8** %51, align 8, !dbg !3953, !tbaa !629
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3953
  %54 = load i8*, i8** %53, align 8, !dbg !3953, !tbaa !629
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3953
  %56 = load i8*, i8** %55, align 8, !dbg !3953, !tbaa !629
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #10, !dbg !3954
  br label %146, !dbg !3955

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.127, i64 0, i64 0), i32 5) #10, !dbg !3956
  %60 = load i8*, i8** %4, align 8, !dbg !3956, !tbaa !629
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3956
  %62 = load i8*, i8** %61, align 8, !dbg !3956, !tbaa !629
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3956
  %64 = load i8*, i8** %63, align 8, !dbg !3956, !tbaa !629
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3956
  %66 = load i8*, i8** %65, align 8, !dbg !3956, !tbaa !629
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3956
  %68 = load i8*, i8** %67, align 8, !dbg !3956, !tbaa !629
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3956
  %70 = load i8*, i8** %69, align 8, !dbg !3956, !tbaa !629
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #10, !dbg !3957
  br label %146, !dbg !3958

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.128, i64 0, i64 0), i32 5) #10, !dbg !3959
  %74 = load i8*, i8** %4, align 8, !dbg !3959, !tbaa !629
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3959
  %76 = load i8*, i8** %75, align 8, !dbg !3959, !tbaa !629
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3959
  %78 = load i8*, i8** %77, align 8, !dbg !3959, !tbaa !629
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3959
  %80 = load i8*, i8** %79, align 8, !dbg !3959, !tbaa !629
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3959
  %82 = load i8*, i8** %81, align 8, !dbg !3959, !tbaa !629
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3959
  %84 = load i8*, i8** %83, align 8, !dbg !3959, !tbaa !629
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3959
  %86 = load i8*, i8** %85, align 8, !dbg !3959, !tbaa !629
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #10, !dbg !3960
  br label %146, !dbg !3961

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.129, i64 0, i64 0), i32 5) #10, !dbg !3962
  %90 = load i8*, i8** %4, align 8, !dbg !3962, !tbaa !629
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3962
  %92 = load i8*, i8** %91, align 8, !dbg !3962, !tbaa !629
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3962
  %94 = load i8*, i8** %93, align 8, !dbg !3962, !tbaa !629
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3962
  %96 = load i8*, i8** %95, align 8, !dbg !3962, !tbaa !629
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3962
  %98 = load i8*, i8** %97, align 8, !dbg !3962, !tbaa !629
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3962
  %100 = load i8*, i8** %99, align 8, !dbg !3962, !tbaa !629
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3962
  %102 = load i8*, i8** %101, align 8, !dbg !3962, !tbaa !629
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3962
  %104 = load i8*, i8** %103, align 8, !dbg !3962, !tbaa !629
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #10, !dbg !3963
  br label %146, !dbg !3964

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.130, i64 0, i64 0), i32 5) #10, !dbg !3965
  %108 = load i8*, i8** %4, align 8, !dbg !3965, !tbaa !629
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3965
  %110 = load i8*, i8** %109, align 8, !dbg !3965, !tbaa !629
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3965
  %112 = load i8*, i8** %111, align 8, !dbg !3965, !tbaa !629
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3965
  %114 = load i8*, i8** %113, align 8, !dbg !3965, !tbaa !629
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3965
  %116 = load i8*, i8** %115, align 8, !dbg !3965, !tbaa !629
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3965
  %118 = load i8*, i8** %117, align 8, !dbg !3965, !tbaa !629
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3965
  %120 = load i8*, i8** %119, align 8, !dbg !3965, !tbaa !629
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3965
  %122 = load i8*, i8** %121, align 8, !dbg !3965, !tbaa !629
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3965
  %124 = load i8*, i8** %123, align 8, !dbg !3965, !tbaa !629
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #10, !dbg !3966
  br label %146, !dbg !3967

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.131, i64 0, i64 0), i32 5) #10, !dbg !3968
  %128 = load i8*, i8** %4, align 8, !dbg !3968, !tbaa !629
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3968
  %130 = load i8*, i8** %129, align 8, !dbg !3968, !tbaa !629
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3968
  %132 = load i8*, i8** %131, align 8, !dbg !3968, !tbaa !629
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3968
  %134 = load i8*, i8** %133, align 8, !dbg !3968, !tbaa !629
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3968
  %136 = load i8*, i8** %135, align 8, !dbg !3968, !tbaa !629
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3968
  %138 = load i8*, i8** %137, align 8, !dbg !3968, !tbaa !629
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3968
  %140 = load i8*, i8** %139, align 8, !dbg !3968, !tbaa !629
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3968
  %142 = load i8*, i8** %141, align 8, !dbg !3968, !tbaa !629
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3968
  %144 = load i8*, i8** %143, align 8, !dbg !3968, !tbaa !629
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #10, !dbg !3969
  br label %146, !dbg !3970

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !3971
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !3972 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3976, metadata !621), !dbg !3982
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3977, metadata !621), !dbg !3983
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3978, metadata !621), !dbg !3984
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3979, metadata !621), !dbg !3985
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3980, metadata !621), !dbg !3986
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3981, metadata !621), !dbg !3987
  br label %6, !dbg !3988

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3981, metadata !621), !dbg !3987
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3990
  %9 = load i8*, i8** %8, align 8, !dbg !3990, !tbaa !629
  %10 = icmp eq i8* %9, null, !dbg !3993
  %11 = add i64 %7, 1, !dbg !3995
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !3981, metadata !621), !dbg !3987
  br i1 %10, label %12, label %6, !dbg !3993, !llvm.loop !3997

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !4000
  ret void, !dbg !4001
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !4002 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4013, metadata !621), !dbg !4021
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4014, metadata !621), !dbg !4022
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4015, metadata !621), !dbg !4023
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4016, metadata !621), !dbg !4024
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !4017, metadata !621), !dbg !4025
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !4026
  call void @llvm.lifetime.start(i64 80, i8* nonnull %7) #10, !dbg !4026
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !4019, metadata !621), !dbg !4027
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4018, metadata !621), !dbg !4028
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4018, metadata !621), !dbg !4028
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %11 = load i32, i32* %8, align 8, !dbg !4029
  %12 = icmp ult i32 %11, 41, !dbg !4029
  br i1 %12, label %13, label %18, !dbg !4029

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !4033
  %15 = sext i32 %11 to i64, !dbg !4033
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !4033
  %17 = add i32 %11, 8, !dbg !4033
  store i32 %17, i32* %8, align 8, !dbg !4033
  br label %21, !dbg !4033

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !4035
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !4035
  store i8* %20, i8** %10, align 8, !dbg !4035
  br label %21, !dbg !4035

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ], !dbg !4029
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !4037
  %25 = load i8*, i8** %24, align 8, !dbg !4037
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !4039
  store i8* %25, i8** %26, align 16, !dbg !4040, !tbaa !629
  %27 = icmp eq i8* %25, null, !dbg !4041
  br i1 %27, label %30, label %28, !dbg !4042

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4018, metadata !621), !dbg !4028
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4018, metadata !621), !dbg !4028
  %29 = icmp ult i32 %22, 41, !dbg !4029
  br i1 %29, label %35, label %32, !dbg !4029

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !4044
  call void @llvm.lifetime.end(i64 80, i8* nonnull %7) #10, !dbg !4045
  ret void, !dbg !4045

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !4035
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !4035
  store i8* %34, i8** %10, align 8, !dbg !4035
  br label %40, !dbg !4035

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !4033
  %37 = sext i32 %22 to i64, !dbg !4033
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !4033
  %39 = add i32 %22, 8, !dbg !4033
  store i32 %39, i32* %8, align 8, !dbg !4033
  br label %40, !dbg !4033

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ], !dbg !4029
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !4037
  %44 = load i8*, i8** %43, align 8, !dbg !4037
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !4039
  store i8* %44, i8** %45, align 8, !dbg !4040, !tbaa !629
  %46 = icmp eq i8* %44, null, !dbg !4041
  br i1 %46, label %30, label %47, !dbg !4042

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4018, metadata !621), !dbg !4028
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4018, metadata !621), !dbg !4028
  %48 = icmp ult i32 %41, 41, !dbg !4029
  br i1 %48, label %52, label %49, !dbg !4029

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !4035
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !4035
  store i8* %51, i8** %10, align 8, !dbg !4035
  br label %57, !dbg !4035

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !4033
  %54 = sext i32 %41 to i64, !dbg !4033
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !4033
  %56 = add i32 %41, 8, !dbg !4033
  store i32 %56, i32* %8, align 8, !dbg !4033
  br label %57, !dbg !4033

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ], !dbg !4029
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !4037
  %61 = load i8*, i8** %60, align 8, !dbg !4037
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !4039
  store i8* %61, i8** %62, align 16, !dbg !4040, !tbaa !629
  %63 = icmp eq i8* %61, null, !dbg !4041
  br i1 %63, label %30, label %64, !dbg !4042

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4018, metadata !621), !dbg !4028
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4018, metadata !621), !dbg !4028
  %65 = icmp ult i32 %58, 41, !dbg !4029
  br i1 %65, label %69, label %66, !dbg !4029

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !4035
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !4035
  store i8* %68, i8** %10, align 8, !dbg !4035
  br label %74, !dbg !4035

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !4033
  %71 = sext i32 %58 to i64, !dbg !4033
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !4033
  %73 = add i32 %58, 8, !dbg !4033
  store i32 %73, i32* %8, align 8, !dbg !4033
  br label %74, !dbg !4033

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ], !dbg !4029
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !4037
  %78 = load i8*, i8** %77, align 8, !dbg !4037
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !4039
  store i8* %78, i8** %79, align 8, !dbg !4040, !tbaa !629
  %80 = icmp eq i8* %78, null, !dbg !4041
  br i1 %80, label %30, label %81, !dbg !4042

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4018, metadata !621), !dbg !4028
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4018, metadata !621), !dbg !4028
  %82 = icmp ult i32 %75, 41, !dbg !4029
  br i1 %82, label %86, label %83, !dbg !4029

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !4035
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !4035
  store i8* %85, i8** %10, align 8, !dbg !4035
  br label %91, !dbg !4035

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !4033
  %88 = sext i32 %75 to i64, !dbg !4033
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !4033
  %90 = add i32 %75, 8, !dbg !4033
  store i32 %90, i32* %8, align 8, !dbg !4033
  br label %91, !dbg !4033

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ], !dbg !4029
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !4037
  %95 = load i8*, i8** %94, align 8, !dbg !4037
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !4039
  store i8* %95, i8** %96, align 16, !dbg !4040, !tbaa !629
  %97 = icmp eq i8* %95, null, !dbg !4041
  br i1 %97, label %30, label %98, !dbg !4042

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4018, metadata !621), !dbg !4028
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4018, metadata !621), !dbg !4028
  %99 = icmp ult i32 %92, 41, !dbg !4029
  br i1 %99, label %103, label %100, !dbg !4029

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !4035
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !4035
  store i8* %102, i8** %10, align 8, !dbg !4035
  br label %108, !dbg !4035

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !4033
  %105 = sext i32 %92 to i64, !dbg !4033
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !4033
  %107 = add i32 %92, 8, !dbg !4033
  store i32 %107, i32* %8, align 8, !dbg !4033
  br label %108, !dbg !4033

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !4037
  %111 = load i8*, i8** %110, align 8, !dbg !4037
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !4039
  store i8* %111, i8** %112, align 8, !dbg !4040, !tbaa !629
  %113 = icmp eq i8* %111, null, !dbg !4041
  br i1 %113, label %30, label %114, !dbg !4042

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4018, metadata !621), !dbg !4028
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4018, metadata !621), !dbg !4028
  %115 = load i8*, i8** %10, align 8, !dbg !4035
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !4035
  store i8* %116, i8** %10, align 8, !dbg !4035
  %117 = bitcast i8* %115 to i8**, !dbg !4037
  %118 = load i8*, i8** %117, align 8, !dbg !4037
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !4039
  store i8* %118, i8** %119, align 16, !dbg !4040, !tbaa !629
  %120 = icmp eq i8* %118, null, !dbg !4041
  br i1 %120, label %30, label %121, !dbg !4042

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4018, metadata !621), !dbg !4028
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4018, metadata !621), !dbg !4028
  %122 = load i8*, i8** %10, align 8, !dbg !4035
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !4035
  store i8* %123, i8** %10, align 8, !dbg !4035
  %124 = bitcast i8* %122 to i8**, !dbg !4037
  %125 = load i8*, i8** %124, align 8, !dbg !4037
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !4039
  store i8* %125, i8** %126, align 8, !dbg !4040, !tbaa !629
  %127 = icmp eq i8* %125, null, !dbg !4041
  br i1 %127, label %30, label %128, !dbg !4042

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4018, metadata !621), !dbg !4028
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4018, metadata !621), !dbg !4028
  %129 = load i8*, i8** %10, align 8, !dbg !4035
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !4035
  store i8* %130, i8** %10, align 8, !dbg !4035
  %131 = bitcast i8* %129 to i8**, !dbg !4037
  %132 = load i8*, i8** %131, align 8, !dbg !4037
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !4039
  store i8* %132, i8** %133, align 16, !dbg !4040, !tbaa !629
  %134 = icmp eq i8* %132, null, !dbg !4041
  br i1 %134, label %30, label %135, !dbg !4042

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4018, metadata !621), !dbg !4028
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4018, metadata !621), !dbg !4028
  %136 = load i8*, i8** %10, align 8, !dbg !4035
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !4035
  store i8* %137, i8** %10, align 8, !dbg !4035
  %138 = bitcast i8* %136 to i8**, !dbg !4037
  %139 = load i8*, i8** %138, align 8, !dbg !4037
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !4039
  store i8* %139, i8** %140, align 8, !dbg !4040, !tbaa !629
  %141 = icmp eq i8* %139, null, !dbg !4041
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4018, metadata !621), !dbg !4028
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4018, metadata !621), !dbg !4028
  %142 = select i1 %141, i64 9, i64 10, !dbg !4042
  br label %30, !dbg !4042
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !4046 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4050, metadata !621), !dbg !4059
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4051, metadata !621), !dbg !4060
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4052, metadata !621), !dbg !4061
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4053, metadata !621), !dbg !4062
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !4063
  call void @llvm.lifetime.start(i64 24, i8* nonnull %6) #10, !dbg !4063
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !4054, metadata !621), !dbg !4064
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !4065
  call void @llvm.va_start(i8* nonnull %6), !dbg !4065
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !4066
  call void @llvm.va_end(i8* nonnull %6), !dbg !4067
  call void @llvm.lifetime.end(i64 24, i8* nonnull %6) #10, !dbg !4068
  ret void, !dbg !4068
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !4069 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.134, i64 0, i64 0), i32 5) #10, !dbg !4070
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.135, i64 0, i64 0)) #10, !dbg !4071
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.136, i64 0, i64 0), i32 5) #10, !dbg !4073
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.137, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.138, i64 0, i64 0)) #10, !dbg !4074
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19.139, i64 0, i64 0), i32 5) #10, !dbg !4075
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !4075, !tbaa !629
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #10, !dbg !4076
  ret void, !dbg !4077
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #12 !dbg !4078 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4082, metadata !621), !dbg !4084
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4083, metadata !621), !dbg !4085
  %3 = udiv i64 9223372036854775807, %1, !dbg !4086
  %4 = icmp ult i64 %3, %0, !dbg !4086
  br i1 %4, label %5, label %6, !dbg !4088

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !4089
  unreachable, !dbg !4089

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4090
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !4091, metadata !621) #10, !dbg !4098
  %8 = tail call noalias i8* @malloc(i64 %7) #10, !dbg !4100
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !4097, metadata !621) #10, !dbg !4101
  %9 = icmp eq i8* %8, null, !dbg !4102
  %10 = icmp ne i64 %7, 0, !dbg !4104
  %11 = and i1 %10, %9, !dbg !4106
  br i1 %11, label %12, label %13, !dbg !4106

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #14, !dbg !4107
  unreachable, !dbg !4107

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !4108
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !4092 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4091, metadata !621), !dbg !4109
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !4110
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4097, metadata !621), !dbg !4111
  %3 = icmp eq i8* %2, null, !dbg !4112
  %4 = icmp ne i64 %0, 0, !dbg !4113
  %5 = and i1 %4, %3, !dbg !4114
  br i1 %5, label %6, label %7, !dbg !4114

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !4115
  unreachable, !dbg !4115

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !4116
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #12 !dbg !4117 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4121, metadata !621), !dbg !4124
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4122, metadata !621), !dbg !4125
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4123, metadata !621), !dbg !4126
  %4 = udiv i64 9223372036854775807, %2, !dbg !4127
  %5 = icmp ult i64 %4, %1, !dbg !4127
  br i1 %5, label %6, label %7, !dbg !4129

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #14, !dbg !4130
  unreachable, !dbg !4130

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !4131
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4132, metadata !621) #10, !dbg !4138
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !4137, metadata !621) #10, !dbg !4140
  %9 = icmp eq i64 %8, 0, !dbg !4141
  %10 = icmp ne i8* %0, null, !dbg !4143
  %11 = and i1 %10, %9, !dbg !4145
  br i1 %11, label %12, label %13, !dbg !4145

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #10, !dbg !4146
  br label %19, !dbg !4148

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #10, !dbg !4149
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !4132, metadata !621) #10, !dbg !4138
  %15 = icmp eq i8* %14, null, !dbg !4150
  %16 = icmp ne i64 %8, 0, !dbg !4152
  %17 = and i1 %16, %15, !dbg !4154
  br i1 %17, label %18, label %19, !dbg !4154

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !4155
  unreachable, !dbg !4155

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !4156
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !4133 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4132, metadata !621), !dbg !4157
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4137, metadata !621), !dbg !4158
  %3 = icmp eq i64 %1, 0, !dbg !4159
  %4 = icmp ne i8* %0, null, !dbg !4160
  %5 = and i1 %4, %3, !dbg !4161
  br i1 %5, label %6, label %7, !dbg !4161

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #10, !dbg !4162
  br label %13, !dbg !4163

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #10, !dbg !4164
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !4132, metadata !621), !dbg !4157
  %9 = icmp eq i8* %8, null, !dbg !4165
  %10 = icmp ne i64 %1, 0, !dbg !4166
  %11 = and i1 %10, %9, !dbg !4167
  br i1 %11, label %12, label %13, !dbg !4167

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #14, !dbg !4168
  unreachable, !dbg !4168

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !4169
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #12 !dbg !581 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !586, metadata !621), !dbg !4170
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !587, metadata !621), !dbg !4171
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !588, metadata !621), !dbg !4172
  %4 = load i64, i64* %1, align 8, !dbg !4173, !tbaa !3177
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !589, metadata !621), !dbg !4174
  %5 = icmp eq i8* %0, null, !dbg !4175
  br i1 %5, label %6, label %13, !dbg !4177

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4178
  br i1 %7, label %8, label %17, !dbg !4181

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4182
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !589, metadata !621), !dbg !4174
  %10 = icmp ugt i64 %2, 128, !dbg !4184
  %11 = zext i1 %10 to i64, !dbg !4184
  %12 = add nuw nsw i64 %9, %11, !dbg !4185
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !589, metadata !621), !dbg !4174
  br label %17, !dbg !4186

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !4187
  %15 = icmp ugt i64 %14, %4, !dbg !4190
  br i1 %15, label %20, label %16, !dbg !4191

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !4192
  unreachable, !dbg !4192

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !589, metadata !621), !dbg !4174
  store i64 %18, i64* %1, align 8, !dbg !4193, !tbaa !3177
  %19 = mul i64 %18, %2, !dbg !4194
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4132, metadata !621) #10, !dbg !4195
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !4137, metadata !621) #10, !dbg !4197
  br label %27, !dbg !4198

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !4199
  %22 = add i64 %4, 1, !dbg !4200
  %23 = add i64 %22, %21, !dbg !4201
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !589, metadata !621), !dbg !4174
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !589, metadata !621), !dbg !4174
  store i64 %23, i64* %1, align 8, !dbg !4193, !tbaa !3177
  %24 = mul i64 %23, %2, !dbg !4194
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4132, metadata !621) #10, !dbg !4195
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !4137, metadata !621) #10, !dbg !4197
  %25 = icmp eq i64 %24, 0, !dbg !4202
  br i1 %25, label %26, label %27, !dbg !4198

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #10, !dbg !4203
  br label %34, !dbg !4204

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #10, !dbg !4205
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !4132, metadata !621) #10, !dbg !4195
  %30 = icmp eq i8* %29, null, !dbg !4206
  %31 = icmp ne i64 %28, 0, !dbg !4207
  %32 = and i1 %31, %30, !dbg !4208
  br i1 %32, label %33, label %34, !dbg !4208

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #14, !dbg !4209
  unreachable, !dbg !4209

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !4210
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #12 !dbg !4211 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4213, metadata !621), !dbg !4214
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4091, metadata !621) #10, !dbg !4215
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !4217
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4097, metadata !621) #10, !dbg !4218
  %3 = icmp eq i8* %2, null, !dbg !4219
  %4 = icmp ne i64 %0, 0, !dbg !4220
  %5 = and i1 %4, %3, !dbg !4221
  br i1 %5, label %6, label %7, !dbg !4221

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !4222
  unreachable, !dbg !4222

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !4223
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !4224 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4228, metadata !621), !dbg !4230
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !4229, metadata !621), !dbg !4231
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !586, metadata !621) #10, !dbg !4232
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !587, metadata !621) #10, !dbg !4234
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !588, metadata !621) #10, !dbg !4235
  %3 = load i64, i64* %1, align 8, !dbg !4236, !tbaa !3177
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !589, metadata !621) #10, !dbg !4237
  %4 = icmp eq i8* %0, null, !dbg !4238
  br i1 %4, label %5, label %8, !dbg !4239

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4240
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !589, metadata !621) #10, !dbg !4237
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !589, metadata !621) #10, !dbg !4237
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4241
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !589, metadata !621) #10, !dbg !4237
  store i64 %7, i64* %1, align 8, !dbg !4242, !tbaa !3177
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4132, metadata !621) #10, !dbg !4243
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4137, metadata !621) #10, !dbg !4245
  br label %17, !dbg !4246

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !4247
  br i1 %9, label %11, label %10, !dbg !4248

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #14, !dbg !4249
  unreachable, !dbg !4249

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !4250
  %13 = add i64 %3, 1, !dbg !4251
  %14 = add i64 %13, %12, !dbg !4252
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !589, metadata !621) #10, !dbg !4237
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !589, metadata !621) #10, !dbg !4237
  store i64 %14, i64* %1, align 8, !dbg !4242, !tbaa !3177
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4132, metadata !621) #10, !dbg !4243
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4137, metadata !621) #10, !dbg !4245
  %15 = icmp eq i64 %14, 0, !dbg !4253
  br i1 %15, label %16, label %17, !dbg !4246

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #10, !dbg !4254
  br label %24, !dbg !4255

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #10, !dbg !4256
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !4132, metadata !621) #10, !dbg !4243
  %20 = icmp eq i8* %19, null, !dbg !4257
  %21 = icmp ne i64 %18, 0, !dbg !4258
  %22 = and i1 %21, %20, !dbg !4259
  br i1 %22, label %23, label %24, !dbg !4259

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #14, !dbg !4260
  unreachable, !dbg !4260

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !4261
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !4262 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4264, metadata !621), !dbg !4265
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4091, metadata !621) #10, !dbg !4266
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !4268
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4097, metadata !621) #10, !dbg !4269
  %3 = icmp eq i8* %2, null, !dbg !4270
  %4 = icmp ne i64 %0, 0, !dbg !4271
  %5 = and i1 %4, %3, !dbg !4272
  br i1 %5, label %6, label %7, !dbg !4272

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !4273
  unreachable, !dbg !4273

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !4274
  ret i8* %2, !dbg !4275
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !4276 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4278, metadata !621), !dbg !4281
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4279, metadata !621), !dbg !4282
  %3 = udiv i64 9223372036854775807, %1, !dbg !4283
  %4 = icmp ult i64 %3, %0, !dbg !4283
  br i1 %4, label %8, label %5, !dbg !4285

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #10, !dbg !4286
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !4280, metadata !621), !dbg !4288
  %7 = icmp eq i8* %6, null, !dbg !4289
  br i1 %7, label %8, label %9, !dbg !4290

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #14, !dbg !4292
  unreachable, !dbg !4292

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !4293
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !4294 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4298, metadata !621), !dbg !4300
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4299, metadata !621), !dbg !4301
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4091, metadata !621) #10, !dbg !4302
  %3 = tail call noalias i8* @malloc(i64 %1) #10, !dbg !4304
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4097, metadata !621) #10, !dbg !4305
  %4 = icmp eq i8* %3, null, !dbg !4306
  %5 = icmp ne i64 %1, 0, !dbg !4307
  %6 = and i1 %5, %4, !dbg !4308
  br i1 %6, label %7, label %8, !dbg !4308

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !4309
  unreachable, !dbg !4309

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !4310
  ret i8* %3, !dbg !4311
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !4312 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4314, metadata !621), !dbg !4315
  %2 = tail call i64 @strlen(i8* %0) #13, !dbg !4316
  %3 = add i64 %2, 1, !dbg !4317
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4298, metadata !621) #10, !dbg !4318
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4299, metadata !621) #10, !dbg !4321
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4091, metadata !621) #10, !dbg !4322
  %4 = tail call noalias i8* @malloc(i64 %3) #10, !dbg !4324
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !4097, metadata !621) #10, !dbg !4325
  %5 = icmp eq i8* %4, null, !dbg !4326
  %6 = icmp ne i64 %3, 0, !dbg !4327
  %7 = and i1 %6, %5, !dbg !4328
  br i1 %7, label %8, label %9, !dbg !4328

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !4329
  unreachable, !dbg !4329

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #10, !dbg !4330
  ret i8* %4, !dbg !4331
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !4332 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !4334, !tbaa !1540
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.150, i64 0, i64 0), i32 5) #10, !dbg !4335
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.151, i64 0, i64 0), i8* %2) #10, !dbg !4336
  tail call void @abort() #14, !dbg !4338
  unreachable, !dbg !4338
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !4339 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4342, metadata !621), !dbg !4348
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4343, metadata !621), !dbg !4349
  %3 = icmp eq i64 %0, 0, !dbg !4350
  %4 = icmp eq i64 %1, 0, !dbg !4351
  %5 = or i1 %3, %4, !dbg !4353
  br i1 %5, label %12, label %6, !dbg !4353

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4354
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !4345, metadata !621), !dbg !4355
  %8 = udiv i64 %7, %1, !dbg !4356
  %9 = icmp eq i64 %8, %0, !dbg !4358
  br i1 %9, label %12, label %10, !dbg !4359

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #1, !dbg !4360
  store i32 12, i32* %11, align 4, !dbg !4362, !tbaa !1540
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4342, metadata !621), !dbg !4348
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !4343, metadata !621), !dbg !4349
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #10, !dbg !4363
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !4344, metadata !621), !dbg !4364
  br label %16, !dbg !4365

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !4366
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !4367 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !4384, metadata !621), !dbg !4393
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4385, metadata !621), !dbg !4394
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4386, metadata !621), !dbg !4395
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !4387, metadata !621), !dbg !4396
  %6 = bitcast i32* %5 to i8*, !dbg !4397
  call void @llvm.lifetime.start(i64 4, i8* nonnull %6) #10, !dbg !4397
  %7 = icmp eq i32* %0, null, !dbg !4398
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !4384, metadata !621), !dbg !4393
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !4400
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !4384, metadata !621), !dbg !4393
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #10, !dbg !4401
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !4388, metadata !621), !dbg !4402
  %10 = icmp ugt i64 %9, -3, !dbg !4403
  %11 = icmp ne i64 %2, 0, !dbg !4404
  %12 = and i1 %11, %10, !dbg !4406
  br i1 %12, label %13, label %18, !dbg !4406

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #10, !dbg !4407
  br i1 %14, label %18, label %15, !dbg !4409

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !4411, !tbaa !751
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !4390, metadata !621), !dbg !4412
  %17 = zext i8 %16 to i32, !dbg !4413
  store i32 %17, i32* %8, align 4, !dbg !4414, !tbaa !1540
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end(i64 4, i8* nonnull %6) #10, !dbg !4415
  ret i64 %19, !dbg !4415
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !4416 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4461, metadata !621), !dbg !4466
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #10, !dbg !4467
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4468, metadata !621), !dbg !4472
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4474
  %4 = load i32, i32* %3, align 8, !dbg !4474, !tbaa !4475
  %5 = and i32 %4, 32, !dbg !4474
  %6 = icmp eq i32 %5, 0, !dbg !4477
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #10, !dbg !4478
  %8 = icmp ne i32 %7, 0, !dbg !4479
  br i1 %6, label %9, label %19, !dbg !4480

; <label>:9:                                      ; preds = %1
  %10 = xor i1 %8, true, !dbg !4482
  %11 = icmp ne i64 %2, 0, !dbg !4482
  %12 = or i1 %11, %10, !dbg !4482
  %13 = sext i1 %8 to i32, !dbg !4482
  br i1 %12, label %22, label %14, !dbg !4482

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #1, !dbg !4484
  %16 = load i32, i32* %15, align 4, !dbg !4484, !tbaa !1540
  %17 = icmp ne i32 %16, 9, !dbg !4486
  %18 = sext i1 %17 to i32, !dbg !4486
  br label %22, !dbg !4486

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !4488

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #1, !dbg !4490
  store i32 0, i32* %21, align 4, !dbg !4492, !tbaa !1540
  br label %22, !dbg !4490

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !4493
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !4494 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4499, metadata !621), !dbg !4519
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !4500, metadata !621), !dbg !4520
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #10, !dbg !4521
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4501, metadata !621), !dbg !4522
  %3 = icmp eq i8* %2, null, !dbg !4523
  br i1 %3, label %15, label %4, !dbg !4524

; <label>:4:                                      ; preds = %1
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4509, metadata !621), !dbg !4525
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4510, metadata !621), !dbg !4526
  %5 = load i8, i8* %2, align 1, !dbg !4527, !tbaa !751
  %6 = icmp eq i8 %5, 67, !dbg !4529
  br i1 %6, label %7, label %11, !dbg !4532

; <label>:7:                                      ; preds = %4
  %8 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !4534
  %9 = load i8, i8* %8, align 1, !dbg !4534, !tbaa !751
  %10 = icmp eq i8 %9, 0, !dbg !4537
  br i1 %10, label %14, label %11, !dbg !4539

; <label>:11:                                     ; preds = %4, %7
  tail call void @llvm.dbg.value(metadata i64 5, i64 0, metadata !4515, metadata !621), !dbg !4541
  %12 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.160, i64 0, i64 0)) #10, !dbg !4542
  %13 = icmp eq i32 %12, 0, !dbg !4544
  br i1 %13, label %14, label %15, !dbg !4546

; <label>:14:                                     ; preds = %11, %7
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4500, metadata !621), !dbg !4520
  br label %15, !dbg !4548

; <label>:15:                                     ; preds = %1, %11, %14
  %16 = phi i1 [ false, %14 ], [ true, %11 ], [ true, %1 ]
  ret i1 %16, !dbg !4549
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !4550 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !4562, metadata !621), !dbg !4636
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !4629, metadata !621), !dbg !4638
  %3 = tail call i8* @nl_langinfo(i32 14) #10, !dbg !4639
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4554, metadata !621), !dbg !4640
  %4 = icmp eq i8* %3, null, !dbg !4641
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.163, i64 0, i64 0), i8* %3, !dbg !4643
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !4554, metadata !621), !dbg !4640
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !4644, !tbaa !629
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !4576, metadata !621) #10, !dbg !4645
  %7 = icmp eq i8* %6, null, !dbg !4646
  br i1 %7, label %8, label %127, !dbg !4647

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.164, i64 0, i64 0)) #10, !dbg !4648
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !4577, metadata !621) #10, !dbg !4649
  %10 = icmp eq i8* %9, null, !dbg !4650
  br i1 %10, label %14, label %11, !dbg !4652

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !4653, !tbaa !751
  %13 = icmp eq i8 %12, 0, !dbg !4655
  br i1 %13, label %14, label %15, !dbg !4656

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !4658

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.165, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !4577, metadata !621) #10, !dbg !4649
  %17 = tail call i64 @strlen(i8* nonnull %16) #13, !dbg !4659
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !4580, metadata !621) #10, !dbg !4660
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !4582, metadata !621) #10, !dbg !4661
  %18 = icmp eq i64 %17, 0, !dbg !4662
  br i1 %18, label %24, label %19, !dbg !4663

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !4664
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !4664
  %22 = load i8, i8* %21, align 1, !dbg !4664, !tbaa !751
  %23 = icmp ne i8 %22, 47, !dbg !4666
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !4667
  %27 = add i64 %17, 14, !dbg !4668
  %28 = add i64 %27, %26, !dbg !4669
  %29 = tail call noalias i8* @malloc(i64 %28) #10, !dbg !4670
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !4579, metadata !621) #10, !dbg !4671
  %30 = icmp eq i8* %29, null, !dbg !4672
  br i1 %30, label %125, label %31, !dbg !4672

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #10, !dbg !4673
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !4676

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !4677, !tbaa !751
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !4679
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.166, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !4680
  br label %37, !dbg !4681

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !4679
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.166, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !4680
  br label %37, !dbg !4681

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #10, !dbg !4682
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !4584, metadata !621) #10, !dbg !4683
  %39 = icmp slt i32 %38, 0, !dbg !4684
  br i1 %39, label %123, label %40, !dbg !4685

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.167, i64 0, i64 0)) #10, !dbg !4686
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4585, metadata !621) #10, !dbg !4687
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !4688
  br i1 %42, label %48, label %43, !dbg !4689

; <label>:43:                                     ; preds = %40
  %44 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %45 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %46 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %47 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !4690

; <label>:48:                                     ; preds = %40
  %49 = tail call i32 @close(i32 %38) #10, !dbg !4691
  br label %123, !dbg !4693

; <label>:50:                                     ; preds = %111, %43
  %51 = phi i64 [ %112, %111 ], [ 0, %43 ]
  %52 = phi i8* [ %113, %111 ], [ null, %43 ]
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !4626, metadata !621) #10, !dbg !4690
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !4627, metadata !621) #10, !dbg !4694
  call void @llvm.lifetime.start(i64 51, i8* nonnull %44) #10, !dbg !4695
  call void @llvm.lifetime.start(i64 51, i8* nonnull %45) #10, !dbg !4696
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4697, metadata !621) #10, !dbg !4702
  %53 = load i8*, i8** %46, align 8, !dbg !4704, !tbaa !4705
  %54 = load i8*, i8** %47, align 8, !dbg !4704, !tbaa !4706
  %55 = icmp ult i8* %53, %54, !dbg !4704
  br i1 %55, label %58, label %56, !dbg !4704, !prof !4707

; <label>:56:                                     ; preds = %50
  %57 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !4708
  br label %62, !dbg !4708

; <label>:58:                                     ; preds = %50
  %59 = getelementptr inbounds i8, i8* %53, i64 1, !dbg !4710
  store i8* %59, i8** %46, align 8, !dbg !4710, !tbaa !4705
  %60 = load i8, i8* %53, align 1, !dbg !4710, !tbaa !751
  %61 = zext i8 %60 to i32, !dbg !4710
  br label %62, !dbg !4710

; <label>:62:                                     ; preds = %58, %56
  %63 = phi i32 [ %57, %56 ], [ %61, %58 ], !dbg !4712
  call void @llvm.dbg.value(metadata i32 %63, i64 0, metadata !4628, metadata !621) #10, !dbg !4714
  switch i32 %63, label %77 [
    i32 -1, label %115
    i32 32, label %111
    i32 10, label %111
    i32 9, label %111
    i32 35, label %64
  ], !dbg !4715

; <label>:64:                                     ; preds = %62
  br label %65, !dbg !4716

; <label>:65:                                     ; preds = %64, %75
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4697, metadata !621) #10, !dbg !4716
  %66 = load i8*, i8** %46, align 8, !dbg !4720, !tbaa !4705
  %67 = load i8*, i8** %47, align 8, !dbg !4720, !tbaa !4706
  %68 = icmp ult i8* %66, %67, !dbg !4720
  br i1 %68, label %71, label %69, !dbg !4720, !prof !4707

; <label>:69:                                     ; preds = %65
  %70 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !4721
  br label %75, !dbg !4721

; <label>:71:                                     ; preds = %65
  %72 = getelementptr inbounds i8, i8* %66, i64 1, !dbg !4722
  store i8* %72, i8** %46, align 8, !dbg !4722, !tbaa !4705
  %73 = load i8, i8* %66, align 1, !dbg !4722, !tbaa !751
  %74 = zext i8 %73 to i32, !dbg !4722
  br label %75, !dbg !4722

; <label>:75:                                     ; preds = %71, %69
  %76 = phi i32 [ %70, %69 ], [ %74, %71 ], !dbg !4723
  call void @llvm.dbg.value(metadata i32 %76, i64 0, metadata !4628, metadata !621) #10, !dbg !4714
  switch i32 %76, label %65 [
    i32 -1, label %114
    i32 10, label %110
  ], !dbg !4724, !llvm.loop !4726

; <label>:77:                                     ; preds = %62
  %78 = call i32 @ungetc(i32 %63, %struct._IO_FILE* nonnull %41) #10, !dbg !4729
  %79 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.168, i64 0, i64 0), i8* nonnull %44, i8* nonnull %45) #10, !dbg !4730
  %80 = icmp slt i32 %79, 2, !dbg !4732
  br i1 %80, label %115, label %81, !dbg !4733

; <label>:81:                                     ; preds = %77
  %82 = call i64 @strlen(i8* nonnull %44) #13, !dbg !4734
  call void @llvm.dbg.value(metadata i64 %82, i64 0, metadata !4633, metadata !621) #10, !dbg !4735
  %83 = call i64 @strlen(i8* nonnull %45) #13, !dbg !4736
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !4634, metadata !621) #10, !dbg !4737
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !4635, metadata !621) #10, !dbg !4738
  %84 = icmp eq i64 %51, 0, !dbg !4739
  %85 = add i64 %82, 1
  %86 = add i64 %85, %83
  %87 = add i64 %86, 1
  br i1 %84, label %88, label %91, !dbg !4741

; <label>:88:                                     ; preds = %81
  call void @llvm.dbg.value(metadata i64 %87, i64 0, metadata !4627, metadata !621) #10, !dbg !4694
  %89 = add i64 %86, 2, !dbg !4742
  %90 = call noalias i8* @malloc(i64 %89) #10, !dbg !4744
  call void @llvm.dbg.value(metadata i8* %90, i64 0, metadata !4626, metadata !621) #10, !dbg !4690
  br label %95, !dbg !4745

; <label>:91:                                     ; preds = %81
  %92 = add i64 %87, %51, !dbg !4746
  call void @llvm.dbg.value(metadata i64 %92, i64 0, metadata !4627, metadata !621) #10, !dbg !4694
  %93 = add i64 %92, 1, !dbg !4748
  %94 = call i8* @realloc(i8* %52, i64 %93) #10, !dbg !4749
  call void @llvm.dbg.value(metadata i8* %94, i64 0, metadata !4626, metadata !621) #10, !dbg !4690
  br label %95

; <label>:95:                                     ; preds = %91, %88
  %96 = phi i64 [ %87, %88 ], [ %92, %91 ]
  %97 = phi i8* [ %90, %88 ], [ %94, %91 ]
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !4626, metadata !621) #10, !dbg !4690
  call void @llvm.dbg.value(metadata i64 %96, i64 0, metadata !4627, metadata !621) #10, !dbg !4694
  %98 = icmp eq i8* %97, null, !dbg !4750
  br i1 %98, label %99, label %100, !dbg !4752

; <label>:99:                                     ; preds = %95
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4627, metadata !621) #10, !dbg !4694
  call void @free(i8* %52) #10, !dbg !4753
  br label %116, !dbg !4755

; <label>:100:                                    ; preds = %95
  %101 = getelementptr inbounds i8, i8* %97, i64 %96, !dbg !4756
  %102 = xor i64 %83, -1, !dbg !4757
  %103 = getelementptr inbounds i8, i8* %101, i64 %102, !dbg !4757
  %104 = xor i64 %82, -1, !dbg !4758
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !4758
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !4759, metadata !621) #10, !dbg !4768
  call void @llvm.dbg.value(metadata i8* %44, i64 0, metadata !4767, metadata !621) #10, !dbg !4768
  %106 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false) #10, !dbg !4770
  %107 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %44, i64 %106) #10, !dbg !4771
  call void @llvm.dbg.value(metadata i8* %103, i64 0, metadata !4759, metadata !621) #10, !dbg !4772
  call void @llvm.dbg.value(metadata i8* %45, i64 0, metadata !4767, metadata !621) #10, !dbg !4772
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %103, i1 false) #10, !dbg !4774
  %109 = call i8* @__strcpy_chk(i8* nonnull %103, i8* nonnull %45, i64 %108) #10, !dbg !4775
  br label %111, !dbg !4776

; <label>:110:                                    ; preds = %75
  br label %111, !dbg !4690

; <label>:111:                                    ; preds = %110, %100, %62, %62, %62
  %112 = phi i64 [ %96, %100 ], [ %51, %62 ], [ %51, %62 ], [ %51, %62 ], [ %51, %110 ]
  %113 = phi i8* [ %97, %100 ], [ %52, %62 ], [ %52, %62 ], [ %52, %62 ], [ %52, %110 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !4626, metadata !621) #10, !dbg !4690
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !4627, metadata !621) #10, !dbg !4694
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #10, !dbg !4776
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #10, !dbg !4776
  br label %50

; <label>:114:                                    ; preds = %75
  br label %116, !dbg !4690

; <label>:115:                                    ; preds = %62, %77
  br label %116, !dbg !4690

; <label>:116:                                    ; preds = %115, %114, %99
  %117 = phi i64 [ 0, %99 ], [ %51, %114 ], [ %51, %115 ]
  %118 = phi i8* [ null, %99 ], [ %52, %114 ], [ %52, %115 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !4626, metadata !621) #10, !dbg !4690
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !4627, metadata !621) #10, !dbg !4694
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #10, !dbg !4776
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #10, !dbg !4776
  %119 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #10, !dbg !4777
  %120 = icmp eq i64 %117, 0, !dbg !4778
  br i1 %120, label %123, label %121, !dbg !4780

; <label>:121:                                    ; preds = %116
  %122 = getelementptr inbounds i8, i8* %118, i64 %117, !dbg !4781
  store i8 0, i8* %122, align 1, !dbg !4783, !tbaa !751
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !4576, metadata !621) #10, !dbg !4645
  br label %123

; <label>:123:                                    ; preds = %121, %116, %48, %37
  %124 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.163, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.163, i64 0, i64 0), %48 ], [ %118, %121 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.163, i64 0, i64 0), %116 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !4576, metadata !621) #10, !dbg !4645
  call void @free(i8* %29) #10, !dbg !4784
  br label %125

; <label>:125:                                    ; preds = %123, %24
  %126 = phi i8* [ %124, %123 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.163, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %126, i64 0, metadata !4576, metadata !621) #10, !dbg !4645
  store volatile i8* %126, i8** @charset_aliases, align 8, !dbg !4785, !tbaa !629
  br label %127, !dbg !4786

; <label>:127:                                    ; preds = %0, %125
  %128 = phi i8* [ %6, %0 ], [ %126, %125 ]
  call void @llvm.dbg.value(metadata i8* %128, i64 0, metadata !4555, metadata !621), !dbg !4787
  %129 = load i8, i8* %128, align 1, !dbg !4788, !tbaa !751
  %130 = icmp eq i8 %129, 0, !dbg !4789
  br i1 %130, label %157, label %131, !dbg !4790

; <label>:131:                                    ; preds = %127
  br label %132, !dbg !4792

; <label>:132:                                    ; preds = %131, %147
  %133 = phi i8 [ %154, %147 ], [ %129, %131 ]
  %134 = phi i8* [ %153, %147 ], [ %128, %131 ]
  %135 = call i32 @strcmp(i8* %5, i8* %134) #10, !dbg !4792
  %136 = icmp eq i32 %135, 0, !dbg !4793
  br i1 %136, label %143, label %137, !dbg !4794

; <label>:137:                                    ; preds = %132
  %138 = icmp eq i8 %133, 42, !dbg !4795
  br i1 %138, label %139, label %147, !dbg !4797

; <label>:139:                                    ; preds = %137
  %140 = getelementptr inbounds i8, i8* %134, i64 1, !dbg !4798
  %141 = load i8, i8* %140, align 1, !dbg !4798, !tbaa !751
  %142 = icmp eq i8 %141, 0, !dbg !4800
  br i1 %142, label %143, label %147, !dbg !4801

; <label>:143:                                    ; preds = %139, %132
  %144 = call i64 @strlen(i8* %134) #13, !dbg !4803
  %145 = getelementptr inbounds i8, i8* %134, i64 %144, !dbg !4805
  %146 = getelementptr inbounds i8, i8* %145, i64 1, !dbg !4806
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !4554, metadata !621), !dbg !4640
  br label %157, !dbg !4807

; <label>:147:                                    ; preds = %137, %139
  %148 = call i64 @strlen(i8* %134) #13, !dbg !4808
  %149 = add i64 %148, 1, !dbg !4809
  %150 = getelementptr inbounds i8, i8* %134, i64 %149, !dbg !4810
  call void @llvm.dbg.value(metadata i8* %150, i64 0, metadata !4555, metadata !621), !dbg !4787
  %151 = call i64 @strlen(i8* %150) #13, !dbg !4811
  %152 = add i64 %151, 1, !dbg !4812
  %153 = getelementptr inbounds i8, i8* %150, i64 %152, !dbg !4813
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !4555, metadata !621), !dbg !4787
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !4555, metadata !621), !dbg !4787
  %154 = load i8, i8* %153, align 1, !dbg !4788, !tbaa !751
  %155 = icmp eq i8 %154, 0, !dbg !4789
  br i1 %155, label %156, label %132, !dbg !4790, !llvm.loop !4814

; <label>:156:                                    ; preds = %147
  br label %157, !dbg !4640

; <label>:157:                                    ; preds = %156, %127, %143
  %158 = phi i8* [ %146, %143 ], [ %5, %127 ], [ %5, %156 ]
  call void @llvm.dbg.value(metadata i8* %158, i64 0, metadata !4554, metadata !621), !dbg !4640
  %159 = load i8, i8* %158, align 1, !dbg !4817, !tbaa !751
  %160 = icmp eq i8 %159, 0, !dbg !4819
  %161 = select i1 %160, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.169, i64 0, i64 0), i8* %158, !dbg !4820
  call void @llvm.dbg.value(metadata i8* %161, i64 0, metadata !4554, metadata !621), !dbg !4640
  ret i8* %161, !dbg !4821
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

; Function Attrs: nounwind
declare i8* @__strcpy_chk(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !4822 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4867, metadata !621), !dbg !4871
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4868, metadata !621), !dbg !4872
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4870, metadata !621), !dbg !4873
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !4874
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4869, metadata !621), !dbg !4875
  %3 = icmp slt i32 %2, 0, !dbg !4876
  br i1 %3, label %4, label %6, !dbg !4878

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4879
  br label %24, !dbg !4880

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !4881
  %8 = icmp eq i32 %7, 0, !dbg !4881
  br i1 %8, label %13, label %9, !dbg !4883

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !4884
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #10, !dbg !4886
  %12 = icmp eq i64 %11, -1, !dbg !4888
  br i1 %12, label %16, label %13, !dbg !4889

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #10, !dbg !4890
  %15 = icmp eq i32 %14, 0, !dbg !4890
  br i1 %15, label %16, label %18, !dbg !4891

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4868, metadata !621), !dbg !4872
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4893
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4870, metadata !621), !dbg !4873
  br label %24, !dbg !4894

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #1, !dbg !4895
  %20 = load i32, i32* %19, align 4, !dbg !4895, !tbaa !1540
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4868, metadata !621), !dbg !4872
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4868, metadata !621), !dbg !4872
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4893
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4870, metadata !621), !dbg !4873
  %22 = icmp eq i32 %20, 0, !dbg !4896
  br i1 %22, label %24, label %23, !dbg !4894

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4898, !tbaa !1540
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !4870, metadata !621), !dbg !4873
  br label %24, !dbg !4900

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !4901
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
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !4902 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4947, metadata !621), !dbg !4948
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4949
  br i1 %2, label %6, label %3, !dbg !4951

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !4952
  %5 = icmp eq i32 %4, 0, !dbg !4952
  br i1 %5, label %6, label %8, !dbg !4954

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4956
  br label %17, !dbg !4957

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4958, metadata !621) #10, !dbg !4963
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4965
  %10 = load i32, i32* %9, align 8, !dbg !4965, !tbaa !4475
  %11 = and i32 %10, 256, !dbg !4967
  %12 = icmp eq i32 %11, 0, !dbg !4967
  br i1 %12, label %15, label %13, !dbg !4968

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #10, !dbg !4969
  br label %15, !dbg !4969

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4970
  br label %17, !dbg !4971

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !4972
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !4973 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5018, metadata !621), !dbg !5024
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !5019, metadata !621), !dbg !5025
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !5020, metadata !621), !dbg !5026
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !5027
  %5 = load i8*, i8** %4, align 8, !dbg !5027, !tbaa !4706
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !5028
  %7 = load i8*, i8** %6, align 8, !dbg !5028, !tbaa !4705
  %8 = icmp eq i8* %5, %7, !dbg !5029
  br i1 %8, label %9, label %28, !dbg !5030

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !5031
  %11 = load i8*, i8** %10, align 8, !dbg !5031, !tbaa !5033
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !5034
  %13 = load i8*, i8** %12, align 8, !dbg !5034, !tbaa !5035
  %14 = icmp eq i8* %11, %13, !dbg !5036
  br i1 %14, label %15, label %28, !dbg !5037

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !5038
  %17 = load i8*, i8** %16, align 8, !dbg !5038, !tbaa !5039
  %18 = icmp eq i8* %17, null, !dbg !5040
  br i1 %18, label %19, label %28, !dbg !5041

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !5043
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #10, !dbg !5044
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !5021, metadata !621), !dbg !5046
  %22 = icmp eq i64 %21, -1, !dbg !5047
  br i1 %22, label %30, label %23, !dbg !5049

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !5050
  %25 = load i32, i32* %24, align 8, !dbg !5051, !tbaa !4475
  %26 = and i32 %25, -17, !dbg !5051
  store i32 %26, i32* %24, align 8, !dbg !5051, !tbaa !4475
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !5052
  store i64 %21, i64* %27, align 8, !dbg !5053, !tbaa !5054
  br label %30, !dbg !5055

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !5056
  br label %30, !dbg !5057

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !5058
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
attributes #15 = { cold }

!llvm.dbg.cu = !{!493, !2, !562, !15, !564, !566, !23, !41, !50, !568, !137, !576, !593, !595, !597, !600, !602, !146, !605, !607, !609}
!llvm.ident = !{!611, !611, !611, !611, !611, !611, !611, !611, !611, !611, !611, !611, !611, !611, !611, !611, !611, !611, !611, !611, !611}
!llvm.module.flags = !{!612, !613, !614, !615}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "file_name", scope: !2, file: !8, line: 36, type: !10, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5)
!3 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4 = !{}
!5 = !{!0, !6}
!6 = !DIGlobalVariableExpression(var: !7)
!7 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !2, file: !8, line: 46, type: !9, isLocal: true, isDefinition: true)
!8 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!9 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!12 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!13 = !DIGlobalVariableExpression(var: !14)
!14 = distinct !DIGlobalVariable(name: "exit_failure", scope: !15, file: !18, line: 24, type: !19, isLocal: false, isDefinition: true)
!15 = distinct !DICompileUnit(language: DW_LANG_C99, file: !16, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !17)
!16 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!17 = !{!13}
!18 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!19 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !20)
!20 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!21 = !DIGlobalVariableExpression(var: !22)
!22 = distinct !DIGlobalVariable(name: "long_options", scope: !23, file: !26, line: 33, type: !27, isLocal: true, isDefinition: true)
!23 = distinct !DICompileUnit(language: DW_LANG_C99, file: !24, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !25)
!24 = !DIFile(filename: "./lib/long-options.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!25 = !{!21}
!26 = !DIFile(filename: "lib/long-options.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!27 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 768, elements: !37)
!28 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !29)
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !30, line: 104, size: 256, elements: !31)
!30 = !DIFile(filename: "/usr/include/getopt.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!31 = !{!32, !33, !34, !36}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !29, file: !30, line: 106, baseType: !10, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !29, file: !30, line: 109, baseType: !20, size: 32, offset: 64)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !29, file: !30, line: 110, baseType: !35, size: 64, offset: 128)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !29, file: !30, line: 111, baseType: !20, size: 32, offset: 192)
!37 = !{!38}
!38 = !DISubrange(count: 3)
!39 = !DIGlobalVariableExpression(var: !40)
!40 = distinct !DIGlobalVariable(name: "program_name", scope: !41, file: !47, line: 33, type: !10, isLocal: false, isDefinition: true)
!41 = distinct !DICompileUnit(language: DW_LANG_C99, file: !42, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !43, globals: !46)
!42 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!43 = !{!44, !45}
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!46 = !{!39}
!47 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!48 = !DIGlobalVariableExpression(var: !49)
!49 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !50, file: !95, line: 77, type: !131, isLocal: false, isDefinition: true)
!50 = distinct !DICompileUnit(language: DW_LANG_C99, file: !51, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !52, retainedTypes: !87, globals: !92)
!51 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!52 = !{!53, !67, !72}
!53 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !54, line: 32, size: 32, elements: !55)
!54 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!55 = !{!56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66}
!56 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!57 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!58 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!59 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!60 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!61 = !DIEnumerator(name: "c_quoting_style", value: 5)
!62 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!63 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!64 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!65 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!66 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!67 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !54, line: 242, size: 32, elements: !68)
!68 = !{!69, !70, !71}
!69 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!70 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!71 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!72 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !73, line: 46, size: 32, elements: !74)
!73 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!74 = !{!75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86}
!75 = !DIEnumerator(name: "_ISupper", value: 256)
!76 = !DIEnumerator(name: "_ISlower", value: 512)
!77 = !DIEnumerator(name: "_ISalpha", value: 1024)
!78 = !DIEnumerator(name: "_ISdigit", value: 2048)
!79 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!80 = !DIEnumerator(name: "_ISspace", value: 8192)
!81 = !DIEnumerator(name: "_ISprint", value: 16384)
!82 = !DIEnumerator(name: "_ISgraph", value: 32768)
!83 = !DIEnumerator(name: "_ISblank", value: 1)
!84 = !DIEnumerator(name: "_IScntrl", value: 2)
!85 = !DIEnumerator(name: "_ISpunct", value: 4)
!86 = !DIEnumerator(name: "_ISalnum", value: 8)
!87 = !{!20, !88, !89, !45}
!88 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !90, line: 62, baseType: !91)
!90 = !DIFile(filename: "/usr/bin/../lib/clang/4.0.1/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!91 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!92 = !{!48, !93, !100, !113, !115, !120, !127, !129}
!93 = !DIGlobalVariableExpression(var: !94)
!94 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !50, file: !95, line: 93, type: !96, isLocal: false, isDefinition: true)
!95 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!96 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 320, elements: !98)
!97 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !53)
!98 = !{!99}
!99 = !DISubrange(count: 10)
!100 = !DIGlobalVariableExpression(var: !101)
!101 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !50, file: !95, line: 1043, type: !102, isLocal: false, isDefinition: true)
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !95, line: 57, size: 448, elements: !103)
!103 = !{!104, !105, !106, !111, !112}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !102, file: !95, line: 60, baseType: !53, size: 32)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !102, file: !95, line: 63, baseType: !20, size: 32, offset: 32)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !102, file: !95, line: 67, baseType: !107, size: 256, offset: 64)
!107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 256, elements: !109)
!108 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!109 = !{!110}
!110 = !DISubrange(count: 8)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !102, file: !95, line: 70, baseType: !10, size: 64, offset: 320)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !102, file: !95, line: 73, baseType: !10, size: 64, offset: 384)
!113 = !DIGlobalVariableExpression(var: !114)
!114 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !50, file: !95, line: 108, type: !102, isLocal: true, isDefinition: true)
!115 = !DIGlobalVariableExpression(var: !116)
!116 = distinct !DIGlobalVariable(name: "slot0", scope: !50, file: !95, line: 834, type: !117, isLocal: true, isDefinition: true)
!117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 2048, elements: !118)
!118 = !{!119}
!119 = !DISubrange(count: 256)
!120 = !DIGlobalVariableExpression(var: !121)
!121 = distinct !DIGlobalVariable(name: "slotvec", scope: !50, file: !95, line: 837, type: !122, isLocal: true, isDefinition: true)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !95, line: 826, size: 128, elements: !124)
!124 = !{!125, !126}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !123, file: !95, line: 828, baseType: !89, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !123, file: !95, line: 829, baseType: !45, size: 64, offset: 64)
!127 = !DIGlobalVariableExpression(var: !128)
!128 = distinct !DIGlobalVariable(name: "nslots", scope: !50, file: !95, line: 835, type: !20, isLocal: true, isDefinition: true)
!129 = !DIGlobalVariableExpression(var: !130)
!130 = distinct !DIGlobalVariable(name: "slotvec0", scope: !50, file: !95, line: 836, type: !123, isLocal: true, isDefinition: true)
!131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !132, size: 704, elements: !133)
!132 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!133 = !{!134}
!134 = !DISubrange(count: 11)
!135 = !DIGlobalVariableExpression(var: !136)
!136 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !137, file: !140, line: 26, type: !141, isLocal: false, isDefinition: true)
!137 = distinct !DICompileUnit(language: DW_LANG_C99, file: !138, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !139)
!138 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!139 = !{!135}
!140 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 376, elements: !142)
!142 = !{!143}
!143 = !DISubrange(count: 47)
!144 = !DIGlobalVariableExpression(var: !145)
!145 = distinct !DIGlobalVariable(name: "charset_aliases", scope: !146, file: !491, line: 120, type: !492, isLocal: true, isDefinition: true)
!146 = distinct !DICompileUnit(language: DW_LANG_C99, file: !147, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !148, retainedTypes: !487, globals: !490)
!147 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!148 = !{!149}
!149 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !150, line: 41, size: 32, elements: !151)
!150 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!151 = !{!152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486}
!152 = !DIEnumerator(name: "ABDAY_1", value: 131072)
!153 = !DIEnumerator(name: "ABDAY_2", value: 131073)
!154 = !DIEnumerator(name: "ABDAY_3", value: 131074)
!155 = !DIEnumerator(name: "ABDAY_4", value: 131075)
!156 = !DIEnumerator(name: "ABDAY_5", value: 131076)
!157 = !DIEnumerator(name: "ABDAY_6", value: 131077)
!158 = !DIEnumerator(name: "ABDAY_7", value: 131078)
!159 = !DIEnumerator(name: "DAY_1", value: 131079)
!160 = !DIEnumerator(name: "DAY_2", value: 131080)
!161 = !DIEnumerator(name: "DAY_3", value: 131081)
!162 = !DIEnumerator(name: "DAY_4", value: 131082)
!163 = !DIEnumerator(name: "DAY_5", value: 131083)
!164 = !DIEnumerator(name: "DAY_6", value: 131084)
!165 = !DIEnumerator(name: "DAY_7", value: 131085)
!166 = !DIEnumerator(name: "ABMON_1", value: 131086)
!167 = !DIEnumerator(name: "ABMON_2", value: 131087)
!168 = !DIEnumerator(name: "ABMON_3", value: 131088)
!169 = !DIEnumerator(name: "ABMON_4", value: 131089)
!170 = !DIEnumerator(name: "ABMON_5", value: 131090)
!171 = !DIEnumerator(name: "ABMON_6", value: 131091)
!172 = !DIEnumerator(name: "ABMON_7", value: 131092)
!173 = !DIEnumerator(name: "ABMON_8", value: 131093)
!174 = !DIEnumerator(name: "ABMON_9", value: 131094)
!175 = !DIEnumerator(name: "ABMON_10", value: 131095)
!176 = !DIEnumerator(name: "ABMON_11", value: 131096)
!177 = !DIEnumerator(name: "ABMON_12", value: 131097)
!178 = !DIEnumerator(name: "MON_1", value: 131098)
!179 = !DIEnumerator(name: "MON_2", value: 131099)
!180 = !DIEnumerator(name: "MON_3", value: 131100)
!181 = !DIEnumerator(name: "MON_4", value: 131101)
!182 = !DIEnumerator(name: "MON_5", value: 131102)
!183 = !DIEnumerator(name: "MON_6", value: 131103)
!184 = !DIEnumerator(name: "MON_7", value: 131104)
!185 = !DIEnumerator(name: "MON_8", value: 131105)
!186 = !DIEnumerator(name: "MON_9", value: 131106)
!187 = !DIEnumerator(name: "MON_10", value: 131107)
!188 = !DIEnumerator(name: "MON_11", value: 131108)
!189 = !DIEnumerator(name: "MON_12", value: 131109)
!190 = !DIEnumerator(name: "AM_STR", value: 131110)
!191 = !DIEnumerator(name: "PM_STR", value: 131111)
!192 = !DIEnumerator(name: "D_T_FMT", value: 131112)
!193 = !DIEnumerator(name: "D_FMT", value: 131113)
!194 = !DIEnumerator(name: "T_FMT", value: 131114)
!195 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115)
!196 = !DIEnumerator(name: "ERA", value: 131116)
!197 = !DIEnumerator(name: "__ERA_YEAR", value: 131117)
!198 = !DIEnumerator(name: "ERA_D_FMT", value: 131118)
!199 = !DIEnumerator(name: "ALT_DIGITS", value: 131119)
!200 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120)
!201 = !DIEnumerator(name: "ERA_T_FMT", value: 131121)
!202 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122)
!203 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123)
!204 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124)
!205 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125)
!206 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126)
!207 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127)
!208 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128)
!209 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129)
!210 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130)
!211 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131)
!212 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132)
!213 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133)
!214 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134)
!215 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135)
!216 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136)
!217 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137)
!218 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138)
!219 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139)
!220 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140)
!221 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141)
!222 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142)
!223 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143)
!224 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144)
!225 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145)
!226 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146)
!227 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147)
!228 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148)
!229 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149)
!230 = !DIEnumerator(name: "_NL_WMON_1", value: 131150)
!231 = !DIEnumerator(name: "_NL_WMON_2", value: 131151)
!232 = !DIEnumerator(name: "_NL_WMON_3", value: 131152)
!233 = !DIEnumerator(name: "_NL_WMON_4", value: 131153)
!234 = !DIEnumerator(name: "_NL_WMON_5", value: 131154)
!235 = !DIEnumerator(name: "_NL_WMON_6", value: 131155)
!236 = !DIEnumerator(name: "_NL_WMON_7", value: 131156)
!237 = !DIEnumerator(name: "_NL_WMON_8", value: 131157)
!238 = !DIEnumerator(name: "_NL_WMON_9", value: 131158)
!239 = !DIEnumerator(name: "_NL_WMON_10", value: 131159)
!240 = !DIEnumerator(name: "_NL_WMON_11", value: 131160)
!241 = !DIEnumerator(name: "_NL_WMON_12", value: 131161)
!242 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162)
!243 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163)
!244 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164)
!245 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165)
!246 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166)
!247 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167)
!248 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168)
!249 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169)
!250 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170)
!251 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171)
!252 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172)
!253 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173)
!254 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174)
!255 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175)
!256 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176)
!257 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177)
!258 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178)
!259 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179)
!260 = !DIEnumerator(name: "_DATE_FMT", value: 131180)
!261 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181)
!262 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182)
!263 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131183)
!264 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608)
!265 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609)
!266 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610)
!267 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611)
!268 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612)
!269 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613)
!270 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614)
!271 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615)
!272 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616)
!273 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617)
!274 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618)
!275 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619)
!276 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620)
!277 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621)
!278 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622)
!279 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623)
!280 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624)
!281 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625)
!282 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626)
!283 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627)
!284 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0)
!285 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1)
!286 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2)
!287 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3)
!288 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4)
!289 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5)
!290 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6)
!291 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7)
!292 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8)
!293 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9)
!294 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10)
!295 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11)
!296 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12)
!297 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13)
!298 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14)
!299 = !DIEnumerator(name: "CODESET", value: 14)
!300 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15)
!301 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16)
!302 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17)
!303 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18)
!304 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19)
!305 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20)
!306 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21)
!307 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22)
!308 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23)
!309 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24)
!310 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25)
!311 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26)
!312 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27)
!313 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28)
!314 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29)
!315 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30)
!316 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31)
!317 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32)
!318 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33)
!319 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34)
!320 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35)
!321 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36)
!322 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37)
!323 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38)
!324 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39)
!325 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40)
!326 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41)
!327 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42)
!328 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43)
!329 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44)
!330 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45)
!331 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46)
!332 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47)
!333 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48)
!334 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49)
!335 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50)
!336 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51)
!337 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52)
!338 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53)
!339 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54)
!340 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55)
!341 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56)
!342 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57)
!343 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58)
!344 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59)
!345 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60)
!346 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61)
!347 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62)
!348 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63)
!349 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64)
!350 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65)
!351 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66)
!352 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67)
!353 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68)
!354 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69)
!355 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70)
!356 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71)
!357 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72)
!358 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73)
!359 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74)
!360 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75)
!361 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76)
!362 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77)
!363 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78)
!364 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79)
!365 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80)
!366 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81)
!367 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82)
!368 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83)
!369 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84)
!370 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85)
!371 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86)
!372 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144)
!373 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145)
!374 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146)
!375 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147)
!376 = !DIEnumerator(name: "__MON_GROUPING", value: 262148)
!377 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149)
!378 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150)
!379 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151)
!380 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152)
!381 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153)
!382 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154)
!383 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155)
!384 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156)
!385 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157)
!386 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158)
!387 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159)
!388 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160)
!389 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161)
!390 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162)
!391 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163)
!392 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164)
!393 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165)
!394 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166)
!395 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167)
!396 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168)
!397 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169)
!398 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170)
!399 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171)
!400 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172)
!401 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173)
!402 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174)
!403 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175)
!404 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176)
!405 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177)
!406 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178)
!407 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179)
!408 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180)
!409 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181)
!410 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182)
!411 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183)
!412 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184)
!413 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185)
!414 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186)
!415 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187)
!416 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188)
!417 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189)
!418 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190)
!419 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536)
!420 = !DIEnumerator(name: "RADIXCHAR", value: 65536)
!421 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537)
!422 = !DIEnumerator(name: "THOUSEP", value: 65537)
!423 = !DIEnumerator(name: "__GROUPING", value: 65538)
!424 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539)
!425 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540)
!426 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541)
!427 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542)
!428 = !DIEnumerator(name: "__YESEXPR", value: 327680)
!429 = !DIEnumerator(name: "__NOEXPR", value: 327681)
!430 = !DIEnumerator(name: "__YESSTR", value: 327682)
!431 = !DIEnumerator(name: "__NOSTR", value: 327683)
!432 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684)
!433 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685)
!434 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752)
!435 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753)
!436 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754)
!437 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755)
!438 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288)
!439 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289)
!440 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290)
!441 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291)
!442 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292)
!443 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293)
!444 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294)
!445 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295)
!446 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824)
!447 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825)
!448 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826)
!449 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827)
!450 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828)
!451 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829)
!452 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830)
!453 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831)
!454 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832)
!455 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833)
!456 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834)
!457 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835)
!458 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836)
!459 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837)
!460 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360)
!461 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361)
!462 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362)
!463 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363)
!464 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364)
!465 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365)
!466 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896)
!467 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897)
!468 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898)
!469 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432)
!470 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433)
!471 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434)
!472 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435)
!473 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436)
!474 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437)
!475 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438)
!476 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439)
!477 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440)
!478 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441)
!479 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442)
!480 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443)
!481 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444)
!482 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445)
!483 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446)
!484 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447)
!485 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448)
!486 = !DIEnumerator(name: "_NL_NUM", value: 786449)
!487 = !{!44, !45, !488}
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!489 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!490 = !{!144}
!491 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!492 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !10)
!493 = distinct !DICompileUnit(language: DW_LANG_C99, file: !494, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !495, retainedTypes: !504, globals: !531)
!494 = !DIFile(filename: "src/getlimits.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!495 = !{!496}
!496 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !497, line: 52, size: 32, elements: !498)
!497 = !DIFile(filename: "./lib/ftoastr.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!498 = !{!499, !500, !501, !502, !503}
!499 = !DIEnumerator(name: "FTOASTR_LEFT_JUSTIFY", value: 1)
!500 = !DIEnumerator(name: "FTOASTR_ALWAYS_SIGNED", value: 2)
!501 = !DIEnumerator(name: "FTOASTR_SPACE_POSITIVE", value: 4)
!502 = !DIEnumerator(name: "FTOASTR_ZERO_PAD", value: 8)
!503 = !DIEnumerator(name: "FTOASTR_UPPER_E", value: 16)
!504 = !{!10, !44, !505, !509, !512, !515, !518, !521, !523, !525, !89, !527, !529}
!505 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !506, line: 136, baseType: !507)
!506 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!507 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !508, line: 62, baseType: !91)
!508 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !506, line: 135, baseType: !510)
!510 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !508, line: 61, baseType: !511)
!511 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!512 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !513, line: 105, baseType: !514)
!513 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!514 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !508, line: 181, baseType: !511)
!515 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !516, line: 8, baseType: !517)
!516 = !DIFile(filename: "/usr/include/bits/types/time_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!517 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !508, line: 148, baseType: !511)
!518 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !519, line: 80, baseType: !520)
!519 = !DIFile(filename: "/usr/include/sys/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!520 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !508, line: 134, baseType: !108)
!521 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !519, line: 65, baseType: !522)
!522 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !508, line: 135, baseType: !108)
!523 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !519, line: 98, baseType: !524)
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !508, line: 142, baseType: !20)
!525 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !513, line: 91, baseType: !526)
!526 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !508, line: 140, baseType: !511)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !489)
!531 = !{!532}
!532 = !DIGlobalVariableExpression(var: !533)
!533 = distinct !DIGlobalVariable(name: "infomap", scope: !534, file: !535, line: 632, type: !559, isLocal: true, isDefinition: true)
!534 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !535, file: !535, line: 630, type: !536, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !493, variables: !538)
!535 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!536 = !DISubroutineType(types: !537)
!537 = !{null, !10}
!538 = !{!539, !540, !541, !548, !550, !551, !552, !555, !556, !558}
!539 = !DILocalVariable(name: "program", arg: 1, scope: !534, file: !535, line: 630, type: !10)
!540 = !DILocalVariable(name: "node", scope: !534, file: !535, line: 642, type: !10)
!541 = !DILocalVariable(name: "map_prog", scope: !534, file: !535, line: 643, type: !542)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !544)
!544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !534, file: !535, line: 632, size: 128, elements: !545)
!545 = !{!546, !547}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !544, file: !535, line: 632, baseType: !10, size: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !544, file: !535, line: 632, baseType: !10, size: 64, offset: 64)
!548 = !DILocalVariable(name: "__s1_len", scope: !549, file: !535, line: 645, type: !89)
!549 = distinct !DILexicalBlock(scope: !534, file: !535, line: 645, column: 33)
!550 = !DILocalVariable(name: "__s2_len", scope: !549, file: !535, line: 645, type: !89)
!551 = !DILocalVariable(name: "lc_messages", scope: !534, file: !535, line: 655, type: !10)
!552 = !DILocalVariable(name: "__s1_len", scope: !553, file: !535, line: 656, type: !89)
!553 = distinct !DILexicalBlock(scope: !554, file: !535, line: 656, column: 22)
!554 = distinct !DILexicalBlock(scope: !534, file: !535, line: 656, column: 7)
!555 = !DILocalVariable(name: "__s2_len", scope: !553, file: !535, line: 656, type: !89)
!556 = !DILocalVariable(name: "__s2", scope: !557, file: !535, line: 656, type: !529)
!557 = distinct !DILexicalBlock(scope: !553, file: !535, line: 656, column: 22)
!558 = !DILocalVariable(name: "__result", scope: !557, file: !535, line: 656, type: !20)
!559 = !DICompositeType(tag: DW_TAG_array_type, baseType: !543, size: 896, elements: !560)
!560 = !{!561}
!561 = !DISubrange(count: 7)
!562 = distinct !DICompileUnit(language: DW_LANG_C99, file: !563, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !495)
!563 = !DIFile(filename: "./lib/dtoastr.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!564 = distinct !DICompileUnit(language: DW_LANG_C99, file: !565, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !495)
!565 = !DIFile(filename: "./lib/ftoastr.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!566 = distinct !DICompileUnit(language: DW_LANG_C99, file: !567, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !495)
!567 = !DIFile(filename: "./lib/ldtoastr.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!568 = distinct !DICompileUnit(language: DW_LANG_C99, file: !569, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !570, retainedTypes: !575)
!569 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!570 = !{!571}
!571 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !572, line: 41, size: 32, elements: !573)
!572 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!573 = !{!574}
!574 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!575 = !{!44}
!576 = distinct !DICompileUnit(language: DW_LANG_C99, file: !577, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !578, retainedTypes: !592)
!577 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!578 = !{!579}
!579 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !581, file: !580, line: 192, size: 32, elements: !590)
!580 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!581 = distinct !DISubprogram(name: "x2nrealloc", scope: !580, file: !580, line: 180, type: !582, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !576, variables: !585)
!582 = !DISubroutineType(types: !583)
!583 = !{!44, !44, !584, !89}
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!585 = !{!586, !587, !588, !589}
!586 = !DILocalVariable(name: "p", arg: 1, scope: !581, file: !580, line: 180, type: !44)
!587 = !DILocalVariable(name: "pn", arg: 2, scope: !581, file: !580, line: 180, type: !584)
!588 = !DILocalVariable(name: "s", arg: 3, scope: !581, file: !580, line: 180, type: !89)
!589 = !DILocalVariable(name: "n", scope: !581, file: !580, line: 182, type: !89)
!590 = !{!591}
!591 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!592 = !{!89, !45, !44}
!593 = distinct !DICompileUnit(language: DW_LANG_C99, file: !594, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!594 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!595 = distinct !DICompileUnit(language: DW_LANG_C99, file: !596, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !575)
!596 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!597 = distinct !DICompileUnit(language: DW_LANG_C99, file: !598, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !599)
!598 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!599 = !{!89}
!600 = distinct !DICompileUnit(language: DW_LANG_C99, file: !601, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!601 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!602 = distinct !DICompileUnit(language: DW_LANG_C99, file: !603, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !604)
!603 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!604 = !{!89, !527, !529, !10}
!605 = distinct !DICompileUnit(language: DW_LANG_C99, file: !606, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!606 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!607 = distinct !DICompileUnit(language: DW_LANG_C99, file: !608, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !575)
!608 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!609 = distinct !DICompileUnit(language: DW_LANG_C99, file: !610, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !575)
!610 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!611 = !{!"clang version 4.0.1 (tags/RELEASE_401/final)"}
!612 = !{i32 2, !"Dwarf Version", i32 4}
!613 = !{i32 2, !"Debug Info Version", i32 3}
!614 = !{i32 1, !"PIC Level", i32 2}
!615 = !{i32 1, !"PIE Level", i32 2}
!616 = distinct !DISubprogram(name: "usage", scope: !494, file: !494, line: 60, type: !617, isLocal: false, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !493, variables: !619)
!617 = !DISubroutineType(types: !618)
!618 = !{null, !20}
!619 = !{!620}
!620 = !DILocalVariable(name: "status", arg: 1, scope: !616, file: !494, line: 60, type: !20)
!621 = !DIExpression()
!622 = !DILocation(line: 60, column: 12, scope: !616)
!623 = !DILocation(line: 62, column: 14, scope: !624)
!624 = distinct !DILexicalBlock(scope: !616, file: !494, line: 62, column: 7)
!625 = !DILocation(line: 62, column: 7, scope: !616)
!626 = !DILocation(line: 63, column: 5, scope: !627)
!627 = !DILexicalBlockFile(scope: !628, file: !494, discriminator: 1)
!628 = distinct !DILexicalBlock(scope: !624, file: !494, line: 63, column: 5)
!629 = !{!630, !630, i64 0}
!630 = !{!"any pointer", !631, i64 0}
!631 = !{!"omnipotent char", !632, i64 0}
!632 = !{!"Simple C/C++ TBAA"}
!633 = !DILocation(line: 63, column: 5, scope: !634)
!634 = !DILexicalBlockFile(scope: !628, file: !494, discriminator: 3)
!635 = !DILocation(line: 63, column: 5, scope: !636)
!636 = !DILexicalBlockFile(scope: !628, file: !494, discriminator: 2)
!637 = !DILocation(line: 66, column: 7, scope: !638)
!638 = distinct !DILexicalBlock(scope: !624, file: !494, line: 65, column: 5)
!639 = !DILocation(line: 66, column: 7, scope: !640)
!640 = !DILexicalBlockFile(scope: !638, file: !494, discriminator: 1)
!641 = !DILocation(line: 70, column: 7, scope: !638)
!642 = !DILocation(line: 70, column: 7, scope: !640)
!643 = !DILocation(line: 74, column: 7, scope: !638)
!644 = !DILocation(line: 74, column: 7, scope: !640)
!645 = !DILocation(line: 75, column: 7, scope: !638)
!646 = !DILocation(line: 75, column: 7, scope: !640)
!647 = !DILocation(line: 642, column: 15, scope: !534, inlinedAt: !648)
!648 = distinct !DILocation(line: 76, column: 7, scope: !638)
!649 = !DILocation(line: 651, column: 3, scope: !534, inlinedAt: !648)
!650 = !DILocation(line: 651, column: 3, scope: !651, inlinedAt: !648)
!651 = !DILexicalBlockFile(scope: !534, file: !535, discriminator: 1)
!652 = !DILocation(line: 655, column: 29, scope: !534, inlinedAt: !648)
!653 = !DILocation(line: 655, column: 15, scope: !534, inlinedAt: !648)
!654 = !DILocation(line: 656, column: 7, scope: !554, inlinedAt: !648)
!655 = !DILocation(line: 656, column: 19, scope: !554, inlinedAt: !648)
!656 = !DILocation(line: 656, column: 22, scope: !657, inlinedAt: !648)
!657 = !DILexicalBlockFile(scope: !554, file: !535, discriminator: 16)
!658 = !DILocation(line: 656, column: 7, scope: !659, inlinedAt: !648)
!659 = !DILexicalBlockFile(scope: !534, file: !535, discriminator: 16)
!660 = !DILocation(line: 662, column: 7, scope: !661, inlinedAt: !648)
!661 = distinct !DILexicalBlock(scope: !554, file: !535, line: 657, column: 5)
!662 = !DILocation(line: 662, column: 7, scope: !663, inlinedAt: !648)
!663 = !DILexicalBlockFile(scope: !661, file: !535, discriminator: 1)
!664 = !DILocation(line: 664, column: 5, scope: !661, inlinedAt: !648)
!665 = !DILocation(line: 665, column: 3, scope: !534, inlinedAt: !648)
!666 = !DILocation(line: 665, column: 3, scope: !651, inlinedAt: !648)
!667 = !DILocation(line: 667, column: 3, scope: !534, inlinedAt: !648)
!668 = !DILocation(line: 667, column: 3, scope: !651, inlinedAt: !648)
!669 = !DILocation(line: 78, column: 3, scope: !616)
!670 = distinct !DISubprogram(name: "main", scope: !494, file: !494, line: 115, type: !671, isLocal: false, isDefinition: true, scopeLine: 116, flags: DIFlagPrototyped, isOptimized: true, unit: !493, variables: !674)
!671 = !DISubroutineType(types: !672)
!672 = !{!20, !20, !673}
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!674 = !{!675, !676, !677}
!675 = !DILocalVariable(name: "argc", arg: 1, scope: !670, file: !494, line: 115, type: !20)
!676 = !DILocalVariable(name: "argv", arg: 2, scope: !670, file: !494, line: 115, type: !673)
!677 = !DILocalVariable(name: "limit", scope: !670, file: !494, line: 117, type: !678)
!678 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 176, elements: !679)
!679 = !{!680}
!680 = !DISubrange(count: 22)
!681 = !DILocalVariable(name: "buf", scope: !682, file: !494, line: 111, type: !688)
!682 = distinct !DISubprogram(name: "print_DBL", scope: !494, file: !494, line: 111, type: !683, isLocal: true, isDefinition: true, scopeLine: 111, flags: DIFlagPrototyped, isOptimized: true, unit: !493, variables: !686)
!683 = !DISubroutineType(types: !684)
!684 = !{null, !685}
!685 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!686 = !{!687, !681}
!687 = !DILocalVariable(name: "x", arg: 1, scope: !682, file: !494, line: 111, type: !685)
!688 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 320, elements: !689)
!689 = !{!690}
!690 = !DISubrange(count: 40)
!691 = !DILocation(line: 111, column: 1, scope: !682, inlinedAt: !692)
!692 = distinct !DILocation(line: 168, column: 3, scope: !693)
!693 = !DILexicalBlockFile(scope: !670, file: !494, discriminator: 3)
!694 = !DILocation(line: 111, column: 1, scope: !682, inlinedAt: !695)
!695 = distinct !DILocation(line: 168, column: 3, scope: !696)
!696 = !DILexicalBlockFile(scope: !670, file: !494, discriminator: 1)
!697 = !DILocalVariable(name: "buf", scope: !698, file: !494, line: 110, type: !704)
!698 = distinct !DISubprogram(name: "print_FLT", scope: !494, file: !494, line: 110, type: !699, isLocal: true, isDefinition: true, scopeLine: 110, flags: DIFlagPrototyped, isOptimized: true, unit: !493, variables: !702)
!699 = !DISubroutineType(types: !700)
!700 = !{null, !701}
!701 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!702 = !{!703, !697}
!703 = !DILocalVariable(name: "x", arg: 1, scope: !698, file: !494, line: 110, type: !701)
!704 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 248, elements: !705)
!705 = !{!706}
!706 = !DISubrange(count: 31)
!707 = !DILocation(line: 110, column: 1, scope: !698, inlinedAt: !708)
!708 = distinct !DILocation(line: 167, column: 3, scope: !693)
!709 = !DILocation(line: 110, column: 1, scope: !698, inlinedAt: !710)
!710 = distinct !DILocation(line: 167, column: 3, scope: !696)
!711 = !DILocalVariable(name: "buf", scope: !712, file: !494, line: 112, type: !718)
!712 = distinct !DISubprogram(name: "print_LDBL", scope: !494, file: !494, line: 112, type: !713, isLocal: true, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !493, variables: !716)
!713 = !DISubroutineType(types: !714)
!714 = !{null, !715}
!715 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!716 = !{!717, !711}
!717 = !DILocalVariable(name: "x", arg: 1, scope: !712, file: !494, line: 112, type: !715)
!718 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 360, elements: !719)
!719 = !{!720}
!720 = !DISubrange(count: 45)
!721 = !DILocation(line: 112, column: 1, scope: !712, inlinedAt: !722)
!722 = distinct !DILocation(line: 169, column: 3, scope: !696)
!723 = !DILocation(line: 112, column: 1, scope: !712, inlinedAt: !724)
!724 = distinct !DILocation(line: 169, column: 3, scope: !693)
!725 = !DILocation(line: 115, column: 11, scope: !670)
!726 = !DILocation(line: 115, column: 24, scope: !670)
!727 = !DILocation(line: 117, column: 3, scope: !670)
!728 = !DILocation(line: 117, column: 8, scope: !670)
!729 = !DILocation(line: 121, column: 21, scope: !670)
!730 = !DILocation(line: 121, column: 3, scope: !670)
!731 = !DILocation(line: 122, column: 3, scope: !670)
!732 = !DILocation(line: 123, column: 3, scope: !670)
!733 = !DILocation(line: 124, column: 3, scope: !670)
!734 = !DILocation(line: 127, column: 3, scope: !670)
!735 = !DILocation(line: 129, column: 3, scope: !670)
!736 = !DILocation(line: 148, column: 3, scope: !670)
!737 = !DILocation(line: 148, column: 3, scope: !696)
!738 = !DILocalVariable(name: "buf", arg: 1, scope: !739, file: !494, line: 86, type: !45)
!739 = distinct !DISubprogram(name: "decimal_absval_add_one", scope: !494, file: !494, line: 86, type: !740, isLocal: true, isDefinition: true, scopeLine: 87, flags: DIFlagPrototyped, isOptimized: true, unit: !493, variables: !742)
!740 = !DISubroutineType(types: !741)
!741 = !{!10, !45}
!742 = !{!738, !743, !744, !745, !746}
!743 = !DILocalVariable(name: "negative", scope: !739, file: !494, line: 88, type: !9)
!744 = !DILocalVariable(name: "absnum", scope: !739, file: !494, line: 89, type: !45)
!745 = !DILocalVariable(name: "p", scope: !739, file: !494, line: 90, type: !45)
!746 = !DILocalVariable(name: "result", scope: !739, file: !494, line: 95, type: !45)
!747 = !DILocation(line: 86, column: 31, scope: !739, inlinedAt: !748)
!748 = distinct !DILocation(line: 148, column: 3, scope: !749)
!749 = !DILexicalBlockFile(scope: !670, file: !494, discriminator: 2)
!750 = !DILocation(line: 88, column: 20, scope: !739, inlinedAt: !748)
!751 = !{!631, !631, i64 0}
!752 = !DILocation(line: 88, column: 27, scope: !739, inlinedAt: !748)
!753 = !DILocation(line: 89, column: 26, scope: !739, inlinedAt: !748)
!754 = !DILocation(line: 89, column: 9, scope: !739, inlinedAt: !748)
!755 = !DILocation(line: 90, column: 22, scope: !739, inlinedAt: !748)
!756 = !DILocation(line: 90, column: 20, scope: !739, inlinedAt: !748)
!757 = !DILocation(line: 90, column: 9, scope: !739, inlinedAt: !748)
!758 = !DILocation(line: 91, column: 3, scope: !739, inlinedAt: !748)
!759 = !DILocation(line: 92, column: 3, scope: !739, inlinedAt: !748)
!760 = !DILocation(line: 92, column: 11, scope: !761, inlinedAt: !748)
!761 = !DILexicalBlockFile(scope: !739, file: !494, discriminator: 1)
!762 = !DILocation(line: 92, column: 10, scope: !761, inlinedAt: !748)
!763 = !DILocation(line: 92, column: 15, scope: !761, inlinedAt: !748)
!764 = !DILocation(line: 92, column: 3, scope: !761, inlinedAt: !748)
!765 = distinct !{!765, !766, !767}
!766 = !DILocation(line: 92, column: 3, scope: !739)
!767 = !DILocation(line: 93, column: 10, scope: !739)
!768 = !DILocation(line: 94, column: 3, scope: !739, inlinedAt: !748)
!769 = !DILocation(line: 95, column: 18, scope: !739, inlinedAt: !748)
!770 = !DILocation(line: 95, column: 9, scope: !739, inlinedAt: !748)
!771 = !DILocation(line: 96, column: 7, scope: !739, inlinedAt: !748)
!772 = !DILocation(line: 97, column: 6, scope: !773, inlinedAt: !748)
!773 = distinct !DILexicalBlock(scope: !739, file: !494, line: 96, column: 7)
!774 = !DILocation(line: 97, column: 15, scope: !773, inlinedAt: !748)
!775 = !DILocation(line: 97, column: 5, scope: !773, inlinedAt: !748)
!776 = !DILocation(line: 148, column: 3, scope: !693)
!777 = !DILocation(line: 148, column: 3, scope: !778)
!778 = !DILexicalBlockFile(scope: !779, file: !494, discriminator: 4)
!779 = distinct !DILexicalBlock(scope: !780, file: !494, line: 148, column: 3)
!780 = distinct !DILexicalBlock(scope: !670, file: !494, line: 148, column: 3)
!781 = !DILocation(line: 148, column: 3, scope: !782)
!782 = !DILexicalBlockFile(scope: !779, file: !494, discriminator: 5)
!783 = !DILocation(line: 86, column: 31, scope: !739, inlinedAt: !784)
!784 = distinct !DILocation(line: 148, column: 3, scope: !785)
!785 = !DILexicalBlockFile(scope: !779, file: !494, discriminator: 6)
!786 = !DILocation(line: 88, column: 20, scope: !739, inlinedAt: !784)
!787 = !DILocation(line: 88, column: 27, scope: !739, inlinedAt: !784)
!788 = !DILocation(line: 89, column: 26, scope: !739, inlinedAt: !784)
!789 = !DILocation(line: 89, column: 9, scope: !739, inlinedAt: !784)
!790 = !DILocation(line: 90, column: 22, scope: !739, inlinedAt: !784)
!791 = !DILocation(line: 90, column: 20, scope: !739, inlinedAt: !784)
!792 = !DILocation(line: 90, column: 9, scope: !739, inlinedAt: !784)
!793 = !DILocation(line: 91, column: 3, scope: !739, inlinedAt: !784)
!794 = !DILocation(line: 92, column: 3, scope: !739, inlinedAt: !784)
!795 = !DILocation(line: 92, column: 11, scope: !761, inlinedAt: !784)
!796 = !DILocation(line: 92, column: 10, scope: !761, inlinedAt: !784)
!797 = !DILocation(line: 92, column: 15, scope: !761, inlinedAt: !784)
!798 = !DILocation(line: 92, column: 3, scope: !761, inlinedAt: !784)
!799 = !DILocation(line: 94, column: 3, scope: !739, inlinedAt: !784)
!800 = !DILocation(line: 95, column: 18, scope: !739, inlinedAt: !784)
!801 = !DILocation(line: 95, column: 9, scope: !739, inlinedAt: !784)
!802 = !DILocation(line: 96, column: 7, scope: !739, inlinedAt: !784)
!803 = !DILocation(line: 97, column: 6, scope: !773, inlinedAt: !784)
!804 = !DILocation(line: 97, column: 15, scope: !773, inlinedAt: !784)
!805 = !DILocation(line: 97, column: 5, scope: !773, inlinedAt: !784)
!806 = !DILocation(line: 148, column: 3, scope: !807)
!807 = !DILexicalBlockFile(scope: !779, file: !494, discriminator: 7)
!808 = !DILocation(line: 149, column: 3, scope: !670)
!809 = !DILocation(line: 149, column: 3, scope: !696)
!810 = !DILocation(line: 86, column: 31, scope: !739, inlinedAt: !811)
!811 = distinct !DILocation(line: 149, column: 3, scope: !749)
!812 = !DILocation(line: 88, column: 20, scope: !739, inlinedAt: !811)
!813 = !DILocation(line: 88, column: 27, scope: !739, inlinedAt: !811)
!814 = !DILocation(line: 89, column: 26, scope: !739, inlinedAt: !811)
!815 = !DILocation(line: 89, column: 9, scope: !739, inlinedAt: !811)
!816 = !DILocation(line: 90, column: 22, scope: !739, inlinedAt: !811)
!817 = !DILocation(line: 90, column: 20, scope: !739, inlinedAt: !811)
!818 = !DILocation(line: 90, column: 9, scope: !739, inlinedAt: !811)
!819 = !DILocation(line: 91, column: 3, scope: !739, inlinedAt: !811)
!820 = !DILocation(line: 92, column: 3, scope: !739, inlinedAt: !811)
!821 = !DILocation(line: 92, column: 11, scope: !761, inlinedAt: !811)
!822 = !DILocation(line: 92, column: 10, scope: !761, inlinedAt: !811)
!823 = !DILocation(line: 92, column: 15, scope: !761, inlinedAt: !811)
!824 = !DILocation(line: 92, column: 3, scope: !761, inlinedAt: !811)
!825 = !DILocation(line: 94, column: 3, scope: !739, inlinedAt: !811)
!826 = !DILocation(line: 95, column: 18, scope: !739, inlinedAt: !811)
!827 = !DILocation(line: 95, column: 9, scope: !739, inlinedAt: !811)
!828 = !DILocation(line: 96, column: 7, scope: !739, inlinedAt: !811)
!829 = !DILocation(line: 97, column: 6, scope: !773, inlinedAt: !811)
!830 = !DILocation(line: 97, column: 15, scope: !773, inlinedAt: !811)
!831 = !DILocation(line: 97, column: 5, scope: !773, inlinedAt: !811)
!832 = !DILocation(line: 149, column: 3, scope: !693)
!833 = !DILocation(line: 149, column: 3, scope: !834)
!834 = !DILexicalBlockFile(scope: !835, file: !494, discriminator: 4)
!835 = distinct !DILexicalBlock(scope: !836, file: !494, line: 149, column: 3)
!836 = distinct !DILexicalBlock(scope: !670, file: !494, line: 149, column: 3)
!837 = !DILocation(line: 149, column: 3, scope: !838)
!838 = !DILexicalBlockFile(scope: !835, file: !494, discriminator: 5)
!839 = !DILocation(line: 86, column: 31, scope: !739, inlinedAt: !840)
!840 = distinct !DILocation(line: 149, column: 3, scope: !841)
!841 = !DILexicalBlockFile(scope: !835, file: !494, discriminator: 6)
!842 = !DILocation(line: 88, column: 20, scope: !739, inlinedAt: !840)
!843 = !DILocation(line: 88, column: 27, scope: !739, inlinedAt: !840)
!844 = !DILocation(line: 89, column: 26, scope: !739, inlinedAt: !840)
!845 = !DILocation(line: 89, column: 9, scope: !739, inlinedAt: !840)
!846 = !DILocation(line: 90, column: 22, scope: !739, inlinedAt: !840)
!847 = !DILocation(line: 90, column: 20, scope: !739, inlinedAt: !840)
!848 = !DILocation(line: 90, column: 9, scope: !739, inlinedAt: !840)
!849 = !DILocation(line: 91, column: 3, scope: !739, inlinedAt: !840)
!850 = !DILocation(line: 92, column: 3, scope: !739, inlinedAt: !840)
!851 = !DILocation(line: 92, column: 11, scope: !761, inlinedAt: !840)
!852 = !DILocation(line: 92, column: 10, scope: !761, inlinedAt: !840)
!853 = !DILocation(line: 92, column: 15, scope: !761, inlinedAt: !840)
!854 = !DILocation(line: 92, column: 3, scope: !761, inlinedAt: !840)
!855 = !DILocation(line: 94, column: 3, scope: !739, inlinedAt: !840)
!856 = !DILocation(line: 95, column: 18, scope: !739, inlinedAt: !840)
!857 = !DILocation(line: 95, column: 9, scope: !739, inlinedAt: !840)
!858 = !DILocation(line: 96, column: 7, scope: !739, inlinedAt: !840)
!859 = !DILocation(line: 97, column: 6, scope: !773, inlinedAt: !840)
!860 = !DILocation(line: 97, column: 15, scope: !773, inlinedAt: !840)
!861 = !DILocation(line: 97, column: 5, scope: !773, inlinedAt: !840)
!862 = !DILocation(line: 149, column: 3, scope: !863)
!863 = !DILexicalBlockFile(scope: !835, file: !494, discriminator: 7)
!864 = !DILocation(line: 150, column: 3, scope: !670)
!865 = !DILocation(line: 150, column: 3, scope: !696)
!866 = !DILocation(line: 86, column: 31, scope: !739, inlinedAt: !867)
!867 = distinct !DILocation(line: 150, column: 3, scope: !749)
!868 = !DILocation(line: 88, column: 20, scope: !739, inlinedAt: !867)
!869 = !DILocation(line: 88, column: 27, scope: !739, inlinedAt: !867)
!870 = !DILocation(line: 89, column: 26, scope: !739, inlinedAt: !867)
!871 = !DILocation(line: 89, column: 9, scope: !739, inlinedAt: !867)
!872 = !DILocation(line: 90, column: 22, scope: !739, inlinedAt: !867)
!873 = !DILocation(line: 90, column: 20, scope: !739, inlinedAt: !867)
!874 = !DILocation(line: 90, column: 9, scope: !739, inlinedAt: !867)
!875 = !DILocation(line: 91, column: 3, scope: !739, inlinedAt: !867)
!876 = !DILocation(line: 92, column: 3, scope: !739, inlinedAt: !867)
!877 = !DILocation(line: 92, column: 11, scope: !761, inlinedAt: !867)
!878 = !DILocation(line: 92, column: 10, scope: !761, inlinedAt: !867)
!879 = !DILocation(line: 92, column: 15, scope: !761, inlinedAt: !867)
!880 = !DILocation(line: 92, column: 3, scope: !761, inlinedAt: !867)
!881 = !DILocation(line: 94, column: 3, scope: !739, inlinedAt: !867)
!882 = !DILocation(line: 95, column: 18, scope: !739, inlinedAt: !867)
!883 = !DILocation(line: 95, column: 9, scope: !739, inlinedAt: !867)
!884 = !DILocation(line: 96, column: 7, scope: !739, inlinedAt: !867)
!885 = !DILocation(line: 97, column: 6, scope: !773, inlinedAt: !867)
!886 = !DILocation(line: 97, column: 15, scope: !773, inlinedAt: !867)
!887 = !DILocation(line: 97, column: 5, scope: !773, inlinedAt: !867)
!888 = !DILocation(line: 150, column: 3, scope: !693)
!889 = !DILocation(line: 151, column: 3, scope: !670)
!890 = !DILocation(line: 151, column: 3, scope: !696)
!891 = !DILocation(line: 86, column: 31, scope: !739, inlinedAt: !892)
!892 = distinct !DILocation(line: 151, column: 3, scope: !749)
!893 = !DILocation(line: 88, column: 20, scope: !739, inlinedAt: !892)
!894 = !DILocation(line: 88, column: 27, scope: !739, inlinedAt: !892)
!895 = !DILocation(line: 89, column: 26, scope: !739, inlinedAt: !892)
!896 = !DILocation(line: 89, column: 9, scope: !739, inlinedAt: !892)
!897 = !DILocation(line: 90, column: 22, scope: !739, inlinedAt: !892)
!898 = !DILocation(line: 90, column: 20, scope: !739, inlinedAt: !892)
!899 = !DILocation(line: 90, column: 9, scope: !739, inlinedAt: !892)
!900 = !DILocation(line: 91, column: 3, scope: !739, inlinedAt: !892)
!901 = !DILocation(line: 92, column: 3, scope: !739, inlinedAt: !892)
!902 = !DILocation(line: 92, column: 11, scope: !761, inlinedAt: !892)
!903 = !DILocation(line: 92, column: 10, scope: !761, inlinedAt: !892)
!904 = !DILocation(line: 92, column: 15, scope: !761, inlinedAt: !892)
!905 = !DILocation(line: 92, column: 3, scope: !761, inlinedAt: !892)
!906 = !DILocation(line: 94, column: 3, scope: !739, inlinedAt: !892)
!907 = !DILocation(line: 95, column: 18, scope: !739, inlinedAt: !892)
!908 = !DILocation(line: 95, column: 9, scope: !739, inlinedAt: !892)
!909 = !DILocation(line: 96, column: 7, scope: !739, inlinedAt: !892)
!910 = !DILocation(line: 97, column: 6, scope: !773, inlinedAt: !892)
!911 = !DILocation(line: 97, column: 15, scope: !773, inlinedAt: !892)
!912 = !DILocation(line: 97, column: 5, scope: !773, inlinedAt: !892)
!913 = !DILocation(line: 151, column: 3, scope: !693)
!914 = !DILocation(line: 151, column: 3, scope: !915)
!915 = !DILexicalBlockFile(scope: !916, file: !494, discriminator: 4)
!916 = distinct !DILexicalBlock(scope: !917, file: !494, line: 151, column: 3)
!917 = distinct !DILexicalBlock(scope: !670, file: !494, line: 151, column: 3)
!918 = !DILocation(line: 151, column: 3, scope: !919)
!919 = !DILexicalBlockFile(scope: !916, file: !494, discriminator: 5)
!920 = !DILocation(line: 86, column: 31, scope: !739, inlinedAt: !921)
!921 = distinct !DILocation(line: 151, column: 3, scope: !922)
!922 = !DILexicalBlockFile(scope: !916, file: !494, discriminator: 6)
!923 = !DILocation(line: 88, column: 20, scope: !739, inlinedAt: !921)
!924 = !DILocation(line: 88, column: 27, scope: !739, inlinedAt: !921)
!925 = !DILocation(line: 89, column: 26, scope: !739, inlinedAt: !921)
!926 = !DILocation(line: 89, column: 9, scope: !739, inlinedAt: !921)
!927 = !DILocation(line: 90, column: 22, scope: !739, inlinedAt: !921)
!928 = !DILocation(line: 90, column: 20, scope: !739, inlinedAt: !921)
!929 = !DILocation(line: 90, column: 9, scope: !739, inlinedAt: !921)
!930 = !DILocation(line: 91, column: 3, scope: !739, inlinedAt: !921)
!931 = !DILocation(line: 92, column: 3, scope: !739, inlinedAt: !921)
!932 = !DILocation(line: 92, column: 11, scope: !761, inlinedAt: !921)
!933 = !DILocation(line: 92, column: 10, scope: !761, inlinedAt: !921)
!934 = !DILocation(line: 92, column: 15, scope: !761, inlinedAt: !921)
!935 = !DILocation(line: 92, column: 3, scope: !761, inlinedAt: !921)
!936 = !DILocation(line: 94, column: 3, scope: !739, inlinedAt: !921)
!937 = !DILocation(line: 95, column: 18, scope: !739, inlinedAt: !921)
!938 = !DILocation(line: 95, column: 9, scope: !739, inlinedAt: !921)
!939 = !DILocation(line: 96, column: 7, scope: !739, inlinedAt: !921)
!940 = !DILocation(line: 97, column: 6, scope: !773, inlinedAt: !921)
!941 = !DILocation(line: 97, column: 15, scope: !773, inlinedAt: !921)
!942 = !DILocation(line: 97, column: 5, scope: !773, inlinedAt: !921)
!943 = !DILocation(line: 151, column: 3, scope: !944)
!944 = !DILexicalBlockFile(scope: !916, file: !494, discriminator: 7)
!945 = !DILocation(line: 152, column: 3, scope: !670)
!946 = !DILocation(line: 152, column: 3, scope: !696)
!947 = !DILocation(line: 86, column: 31, scope: !739, inlinedAt: !948)
!948 = distinct !DILocation(line: 152, column: 3, scope: !749)
!949 = !DILocation(line: 88, column: 20, scope: !739, inlinedAt: !948)
!950 = !DILocation(line: 88, column: 27, scope: !739, inlinedAt: !948)
!951 = !DILocation(line: 89, column: 26, scope: !739, inlinedAt: !948)
!952 = !DILocation(line: 89, column: 9, scope: !739, inlinedAt: !948)
!953 = !DILocation(line: 90, column: 22, scope: !739, inlinedAt: !948)
!954 = !DILocation(line: 90, column: 20, scope: !739, inlinedAt: !948)
!955 = !DILocation(line: 90, column: 9, scope: !739, inlinedAt: !948)
!956 = !DILocation(line: 91, column: 3, scope: !739, inlinedAt: !948)
!957 = !DILocation(line: 92, column: 3, scope: !739, inlinedAt: !948)
!958 = !DILocation(line: 92, column: 11, scope: !761, inlinedAt: !948)
!959 = !DILocation(line: 92, column: 10, scope: !761, inlinedAt: !948)
!960 = !DILocation(line: 92, column: 15, scope: !761, inlinedAt: !948)
!961 = !DILocation(line: 92, column: 3, scope: !761, inlinedAt: !948)
!962 = !DILocation(line: 94, column: 3, scope: !739, inlinedAt: !948)
!963 = !DILocation(line: 95, column: 18, scope: !739, inlinedAt: !948)
!964 = !DILocation(line: 95, column: 9, scope: !739, inlinedAt: !948)
!965 = !DILocation(line: 96, column: 7, scope: !739, inlinedAt: !948)
!966 = !DILocation(line: 97, column: 6, scope: !773, inlinedAt: !948)
!967 = !DILocation(line: 97, column: 15, scope: !773, inlinedAt: !948)
!968 = !DILocation(line: 97, column: 5, scope: !773, inlinedAt: !948)
!969 = !DILocation(line: 152, column: 3, scope: !693)
!970 = !DILocation(line: 152, column: 3, scope: !971)
!971 = !DILexicalBlockFile(scope: !972, file: !494, discriminator: 4)
!972 = distinct !DILexicalBlock(scope: !973, file: !494, line: 152, column: 3)
!973 = distinct !DILexicalBlock(scope: !670, file: !494, line: 152, column: 3)
!974 = !DILocation(line: 152, column: 3, scope: !975)
!975 = !DILexicalBlockFile(scope: !972, file: !494, discriminator: 5)
!976 = !DILocation(line: 86, column: 31, scope: !739, inlinedAt: !977)
!977 = distinct !DILocation(line: 152, column: 3, scope: !978)
!978 = !DILexicalBlockFile(scope: !972, file: !494, discriminator: 6)
!979 = !DILocation(line: 88, column: 20, scope: !739, inlinedAt: !977)
!980 = !DILocation(line: 88, column: 27, scope: !739, inlinedAt: !977)
!981 = !DILocation(line: 89, column: 26, scope: !739, inlinedAt: !977)
!982 = !DILocation(line: 89, column: 9, scope: !739, inlinedAt: !977)
!983 = !DILocation(line: 90, column: 22, scope: !739, inlinedAt: !977)
!984 = !DILocation(line: 90, column: 20, scope: !739, inlinedAt: !977)
!985 = !DILocation(line: 90, column: 9, scope: !739, inlinedAt: !977)
!986 = !DILocation(line: 91, column: 3, scope: !739, inlinedAt: !977)
!987 = !DILocation(line: 92, column: 3, scope: !739, inlinedAt: !977)
!988 = !DILocation(line: 92, column: 11, scope: !761, inlinedAt: !977)
!989 = !DILocation(line: 92, column: 10, scope: !761, inlinedAt: !977)
!990 = !DILocation(line: 92, column: 15, scope: !761, inlinedAt: !977)
!991 = !DILocation(line: 92, column: 3, scope: !761, inlinedAt: !977)
!992 = !DILocation(line: 94, column: 3, scope: !739, inlinedAt: !977)
!993 = !DILocation(line: 95, column: 18, scope: !739, inlinedAt: !977)
!994 = !DILocation(line: 95, column: 9, scope: !739, inlinedAt: !977)
!995 = !DILocation(line: 96, column: 7, scope: !739, inlinedAt: !977)
!996 = !DILocation(line: 97, column: 6, scope: !773, inlinedAt: !977)
!997 = !DILocation(line: 97, column: 15, scope: !773, inlinedAt: !977)
!998 = !DILocation(line: 97, column: 5, scope: !773, inlinedAt: !977)
!999 = !DILocation(line: 152, column: 3, scope: !1000)
!1000 = !DILexicalBlockFile(scope: !972, file: !494, discriminator: 7)
!1001 = !DILocation(line: 153, column: 3, scope: !670)
!1002 = !DILocation(line: 153, column: 3, scope: !696)
!1003 = !DILocation(line: 86, column: 31, scope: !739, inlinedAt: !1004)
!1004 = distinct !DILocation(line: 153, column: 3, scope: !749)
!1005 = !DILocation(line: 88, column: 20, scope: !739, inlinedAt: !1004)
!1006 = !DILocation(line: 88, column: 27, scope: !739, inlinedAt: !1004)
!1007 = !DILocation(line: 89, column: 26, scope: !739, inlinedAt: !1004)
!1008 = !DILocation(line: 89, column: 9, scope: !739, inlinedAt: !1004)
!1009 = !DILocation(line: 90, column: 22, scope: !739, inlinedAt: !1004)
!1010 = !DILocation(line: 90, column: 20, scope: !739, inlinedAt: !1004)
!1011 = !DILocation(line: 90, column: 9, scope: !739, inlinedAt: !1004)
!1012 = !DILocation(line: 91, column: 3, scope: !739, inlinedAt: !1004)
!1013 = !DILocation(line: 92, column: 3, scope: !739, inlinedAt: !1004)
!1014 = !DILocation(line: 92, column: 11, scope: !761, inlinedAt: !1004)
!1015 = !DILocation(line: 92, column: 10, scope: !761, inlinedAt: !1004)
!1016 = !DILocation(line: 92, column: 15, scope: !761, inlinedAt: !1004)
!1017 = !DILocation(line: 92, column: 3, scope: !761, inlinedAt: !1004)
!1018 = !DILocation(line: 94, column: 3, scope: !739, inlinedAt: !1004)
!1019 = !DILocation(line: 95, column: 18, scope: !739, inlinedAt: !1004)
!1020 = !DILocation(line: 95, column: 9, scope: !739, inlinedAt: !1004)
!1021 = !DILocation(line: 96, column: 7, scope: !739, inlinedAt: !1004)
!1022 = !DILocation(line: 97, column: 6, scope: !773, inlinedAt: !1004)
!1023 = !DILocation(line: 97, column: 15, scope: !773, inlinedAt: !1004)
!1024 = !DILocation(line: 97, column: 5, scope: !773, inlinedAt: !1004)
!1025 = !DILocation(line: 153, column: 3, scope: !693)
!1026 = !DILocation(line: 154, column: 3, scope: !670)
!1027 = !DILocation(line: 154, column: 3, scope: !696)
!1028 = !DILocation(line: 86, column: 31, scope: !739, inlinedAt: !1029)
!1029 = distinct !DILocation(line: 154, column: 3, scope: !749)
!1030 = !DILocation(line: 88, column: 20, scope: !739, inlinedAt: !1029)
!1031 = !DILocation(line: 88, column: 27, scope: !739, inlinedAt: !1029)
!1032 = !DILocation(line: 89, column: 26, scope: !739, inlinedAt: !1029)
!1033 = !DILocation(line: 89, column: 9, scope: !739, inlinedAt: !1029)
!1034 = !DILocation(line: 90, column: 22, scope: !739, inlinedAt: !1029)
!1035 = !DILocation(line: 90, column: 20, scope: !739, inlinedAt: !1029)
!1036 = !DILocation(line: 90, column: 9, scope: !739, inlinedAt: !1029)
!1037 = !DILocation(line: 91, column: 3, scope: !739, inlinedAt: !1029)
!1038 = !DILocation(line: 92, column: 3, scope: !739, inlinedAt: !1029)
!1039 = !DILocation(line: 92, column: 11, scope: !761, inlinedAt: !1029)
!1040 = !DILocation(line: 92, column: 10, scope: !761, inlinedAt: !1029)
!1041 = !DILocation(line: 92, column: 15, scope: !761, inlinedAt: !1029)
!1042 = !DILocation(line: 92, column: 3, scope: !761, inlinedAt: !1029)
!1043 = !DILocation(line: 94, column: 3, scope: !739, inlinedAt: !1029)
!1044 = !DILocation(line: 95, column: 18, scope: !739, inlinedAt: !1029)
!1045 = !DILocation(line: 95, column: 9, scope: !739, inlinedAt: !1029)
!1046 = !DILocation(line: 96, column: 7, scope: !739, inlinedAt: !1029)
!1047 = !DILocation(line: 97, column: 6, scope: !773, inlinedAt: !1029)
!1048 = !DILocation(line: 97, column: 15, scope: !773, inlinedAt: !1029)
!1049 = !DILocation(line: 97, column: 5, scope: !773, inlinedAt: !1029)
!1050 = !DILocation(line: 154, column: 3, scope: !693)
!1051 = !DILocation(line: 154, column: 3, scope: !1052)
!1052 = !DILexicalBlockFile(scope: !1053, file: !494, discriminator: 4)
!1053 = distinct !DILexicalBlock(scope: !1054, file: !494, line: 154, column: 3)
!1054 = distinct !DILexicalBlock(scope: !670, file: !494, line: 154, column: 3)
!1055 = !DILocation(line: 154, column: 3, scope: !1056)
!1056 = !DILexicalBlockFile(scope: !1053, file: !494, discriminator: 5)
!1057 = !DILocation(line: 86, column: 31, scope: !739, inlinedAt: !1058)
!1058 = distinct !DILocation(line: 154, column: 3, scope: !1059)
!1059 = !DILexicalBlockFile(scope: !1053, file: !494, discriminator: 6)
!1060 = !DILocation(line: 88, column: 20, scope: !739, inlinedAt: !1058)
!1061 = !DILocation(line: 88, column: 27, scope: !739, inlinedAt: !1058)
!1062 = !DILocation(line: 89, column: 26, scope: !739, inlinedAt: !1058)
!1063 = !DILocation(line: 89, column: 9, scope: !739, inlinedAt: !1058)
!1064 = !DILocation(line: 90, column: 22, scope: !739, inlinedAt: !1058)
!1065 = !DILocation(line: 90, column: 20, scope: !739, inlinedAt: !1058)
!1066 = !DILocation(line: 90, column: 9, scope: !739, inlinedAt: !1058)
!1067 = !DILocation(line: 91, column: 3, scope: !739, inlinedAt: !1058)
!1068 = !DILocation(line: 92, column: 3, scope: !739, inlinedAt: !1058)
!1069 = !DILocation(line: 92, column: 11, scope: !761, inlinedAt: !1058)
!1070 = !DILocation(line: 92, column: 10, scope: !761, inlinedAt: !1058)
!1071 = !DILocation(line: 92, column: 15, scope: !761, inlinedAt: !1058)
!1072 = !DILocation(line: 92, column: 3, scope: !761, inlinedAt: !1058)
!1073 = !DILocation(line: 94, column: 3, scope: !739, inlinedAt: !1058)
!1074 = !DILocation(line: 95, column: 18, scope: !739, inlinedAt: !1058)
!1075 = !DILocation(line: 95, column: 9, scope: !739, inlinedAt: !1058)
!1076 = !DILocation(line: 96, column: 7, scope: !739, inlinedAt: !1058)
!1077 = !DILocation(line: 97, column: 6, scope: !773, inlinedAt: !1058)
!1078 = !DILocation(line: 97, column: 15, scope: !773, inlinedAt: !1058)
!1079 = !DILocation(line: 97, column: 5, scope: !773, inlinedAt: !1058)
!1080 = !DILocation(line: 154, column: 3, scope: !1081)
!1081 = !DILexicalBlockFile(scope: !1053, file: !494, discriminator: 7)
!1082 = !DILocation(line: 155, column: 3, scope: !670)
!1083 = !DILocation(line: 155, column: 3, scope: !696)
!1084 = !DILocation(line: 86, column: 31, scope: !739, inlinedAt: !1085)
!1085 = distinct !DILocation(line: 155, column: 3, scope: !749)
!1086 = !DILocation(line: 88, column: 20, scope: !739, inlinedAt: !1085)
!1087 = !DILocation(line: 88, column: 27, scope: !739, inlinedAt: !1085)
!1088 = !DILocation(line: 89, column: 26, scope: !739, inlinedAt: !1085)
!1089 = !DILocation(line: 89, column: 9, scope: !739, inlinedAt: !1085)
!1090 = !DILocation(line: 90, column: 22, scope: !739, inlinedAt: !1085)
!1091 = !DILocation(line: 90, column: 20, scope: !739, inlinedAt: !1085)
!1092 = !DILocation(line: 90, column: 9, scope: !739, inlinedAt: !1085)
!1093 = !DILocation(line: 91, column: 3, scope: !739, inlinedAt: !1085)
!1094 = !DILocation(line: 92, column: 3, scope: !739, inlinedAt: !1085)
!1095 = !DILocation(line: 92, column: 11, scope: !761, inlinedAt: !1085)
!1096 = !DILocation(line: 92, column: 10, scope: !761, inlinedAt: !1085)
!1097 = !DILocation(line: 92, column: 15, scope: !761, inlinedAt: !1085)
!1098 = !DILocation(line: 92, column: 3, scope: !761, inlinedAt: !1085)
!1099 = !DILocation(line: 94, column: 3, scope: !739, inlinedAt: !1085)
!1100 = !DILocation(line: 95, column: 18, scope: !739, inlinedAt: !1085)
!1101 = !DILocation(line: 95, column: 9, scope: !739, inlinedAt: !1085)
!1102 = !DILocation(line: 96, column: 7, scope: !739, inlinedAt: !1085)
!1103 = !DILocation(line: 97, column: 6, scope: !773, inlinedAt: !1085)
!1104 = !DILocation(line: 97, column: 15, scope: !773, inlinedAt: !1085)
!1105 = !DILocation(line: 97, column: 5, scope: !773, inlinedAt: !1085)
!1106 = !DILocation(line: 155, column: 3, scope: !693)
!1107 = !DILocation(line: 156, column: 3, scope: !670)
!1108 = !DILocation(line: 156, column: 3, scope: !696)
!1109 = !DILocation(line: 86, column: 31, scope: !739, inlinedAt: !1110)
!1110 = distinct !DILocation(line: 156, column: 3, scope: !749)
!1111 = !DILocation(line: 88, column: 20, scope: !739, inlinedAt: !1110)
!1112 = !DILocation(line: 88, column: 27, scope: !739, inlinedAt: !1110)
!1113 = !DILocation(line: 89, column: 26, scope: !739, inlinedAt: !1110)
!1114 = !DILocation(line: 89, column: 9, scope: !739, inlinedAt: !1110)
!1115 = !DILocation(line: 90, column: 22, scope: !739, inlinedAt: !1110)
!1116 = !DILocation(line: 90, column: 20, scope: !739, inlinedAt: !1110)
!1117 = !DILocation(line: 90, column: 9, scope: !739, inlinedAt: !1110)
!1118 = !DILocation(line: 91, column: 3, scope: !739, inlinedAt: !1110)
!1119 = !DILocation(line: 92, column: 3, scope: !739, inlinedAt: !1110)
!1120 = !DILocation(line: 92, column: 11, scope: !761, inlinedAt: !1110)
!1121 = !DILocation(line: 92, column: 10, scope: !761, inlinedAt: !1110)
!1122 = !DILocation(line: 92, column: 15, scope: !761, inlinedAt: !1110)
!1123 = !DILocation(line: 92, column: 3, scope: !761, inlinedAt: !1110)
!1124 = !DILocation(line: 94, column: 3, scope: !739, inlinedAt: !1110)
!1125 = !DILocation(line: 95, column: 18, scope: !739, inlinedAt: !1110)
!1126 = !DILocation(line: 95, column: 9, scope: !739, inlinedAt: !1110)
!1127 = !DILocation(line: 96, column: 7, scope: !739, inlinedAt: !1110)
!1128 = !DILocation(line: 97, column: 6, scope: !773, inlinedAt: !1110)
!1129 = !DILocation(line: 97, column: 15, scope: !773, inlinedAt: !1110)
!1130 = !DILocation(line: 97, column: 5, scope: !773, inlinedAt: !1110)
!1131 = !DILocation(line: 156, column: 3, scope: !693)
!1132 = !DILocation(line: 157, column: 3, scope: !670)
!1133 = !DILocation(line: 157, column: 3, scope: !696)
!1134 = !DILocation(line: 86, column: 31, scope: !739, inlinedAt: !1135)
!1135 = distinct !DILocation(line: 157, column: 3, scope: !749)
!1136 = !DILocation(line: 88, column: 20, scope: !739, inlinedAt: !1135)
!1137 = !DILocation(line: 88, column: 27, scope: !739, inlinedAt: !1135)
!1138 = !DILocation(line: 89, column: 26, scope: !739, inlinedAt: !1135)
!1139 = !DILocation(line: 89, column: 9, scope: !739, inlinedAt: !1135)
!1140 = !DILocation(line: 90, column: 22, scope: !739, inlinedAt: !1135)
!1141 = !DILocation(line: 90, column: 20, scope: !739, inlinedAt: !1135)
!1142 = !DILocation(line: 90, column: 9, scope: !739, inlinedAt: !1135)
!1143 = !DILocation(line: 91, column: 3, scope: !739, inlinedAt: !1135)
!1144 = !DILocation(line: 92, column: 3, scope: !739, inlinedAt: !1135)
!1145 = !DILocation(line: 92, column: 11, scope: !761, inlinedAt: !1135)
!1146 = !DILocation(line: 92, column: 10, scope: !761, inlinedAt: !1135)
!1147 = !DILocation(line: 92, column: 15, scope: !761, inlinedAt: !1135)
!1148 = !DILocation(line: 92, column: 3, scope: !761, inlinedAt: !1135)
!1149 = !DILocation(line: 94, column: 3, scope: !739, inlinedAt: !1135)
!1150 = !DILocation(line: 95, column: 18, scope: !739, inlinedAt: !1135)
!1151 = !DILocation(line: 95, column: 9, scope: !739, inlinedAt: !1135)
!1152 = !DILocation(line: 96, column: 7, scope: !739, inlinedAt: !1135)
!1153 = !DILocation(line: 97, column: 6, scope: !773, inlinedAt: !1135)
!1154 = !DILocation(line: 97, column: 15, scope: !773, inlinedAt: !1135)
!1155 = !DILocation(line: 97, column: 5, scope: !773, inlinedAt: !1135)
!1156 = !DILocation(line: 157, column: 3, scope: !693)
!1157 = !DILocation(line: 157, column: 3, scope: !1158)
!1158 = !DILexicalBlockFile(scope: !1159, file: !494, discriminator: 4)
!1159 = distinct !DILexicalBlock(scope: !1160, file: !494, line: 157, column: 3)
!1160 = distinct !DILexicalBlock(scope: !670, file: !494, line: 157, column: 3)
!1161 = !DILocation(line: 157, column: 3, scope: !1162)
!1162 = !DILexicalBlockFile(scope: !1159, file: !494, discriminator: 5)
!1163 = !DILocation(line: 86, column: 31, scope: !739, inlinedAt: !1164)
!1164 = distinct !DILocation(line: 157, column: 3, scope: !1165)
!1165 = !DILexicalBlockFile(scope: !1159, file: !494, discriminator: 6)
!1166 = !DILocation(line: 88, column: 20, scope: !739, inlinedAt: !1164)
!1167 = !DILocation(line: 88, column: 27, scope: !739, inlinedAt: !1164)
!1168 = !DILocation(line: 89, column: 26, scope: !739, inlinedAt: !1164)
!1169 = !DILocation(line: 89, column: 9, scope: !739, inlinedAt: !1164)
!1170 = !DILocation(line: 90, column: 22, scope: !739, inlinedAt: !1164)
!1171 = !DILocation(line: 90, column: 20, scope: !739, inlinedAt: !1164)
!1172 = !DILocation(line: 90, column: 9, scope: !739, inlinedAt: !1164)
!1173 = !DILocation(line: 91, column: 3, scope: !739, inlinedAt: !1164)
!1174 = !DILocation(line: 92, column: 3, scope: !739, inlinedAt: !1164)
!1175 = !DILocation(line: 92, column: 11, scope: !761, inlinedAt: !1164)
!1176 = !DILocation(line: 92, column: 10, scope: !761, inlinedAt: !1164)
!1177 = !DILocation(line: 92, column: 15, scope: !761, inlinedAt: !1164)
!1178 = !DILocation(line: 92, column: 3, scope: !761, inlinedAt: !1164)
!1179 = !DILocation(line: 94, column: 3, scope: !739, inlinedAt: !1164)
!1180 = !DILocation(line: 95, column: 18, scope: !739, inlinedAt: !1164)
!1181 = !DILocation(line: 95, column: 9, scope: !739, inlinedAt: !1164)
!1182 = !DILocation(line: 96, column: 7, scope: !739, inlinedAt: !1164)
!1183 = !DILocation(line: 97, column: 6, scope: !773, inlinedAt: !1164)
!1184 = !DILocation(line: 97, column: 15, scope: !773, inlinedAt: !1164)
!1185 = !DILocation(line: 97, column: 5, scope: !773, inlinedAt: !1164)
!1186 = !DILocation(line: 157, column: 3, scope: !1187)
!1187 = !DILexicalBlockFile(scope: !1159, file: !494, discriminator: 7)
!1188 = !DILocation(line: 158, column: 3, scope: !670)
!1189 = !DILocation(line: 158, column: 3, scope: !696)
!1190 = !DILocation(line: 86, column: 31, scope: !739, inlinedAt: !1191)
!1191 = distinct !DILocation(line: 158, column: 3, scope: !749)
!1192 = !DILocation(line: 88, column: 20, scope: !739, inlinedAt: !1191)
!1193 = !DILocation(line: 88, column: 27, scope: !739, inlinedAt: !1191)
!1194 = !DILocation(line: 89, column: 26, scope: !739, inlinedAt: !1191)
!1195 = !DILocation(line: 89, column: 9, scope: !739, inlinedAt: !1191)
!1196 = !DILocation(line: 90, column: 22, scope: !739, inlinedAt: !1191)
!1197 = !DILocation(line: 90, column: 20, scope: !739, inlinedAt: !1191)
!1198 = !DILocation(line: 90, column: 9, scope: !739, inlinedAt: !1191)
!1199 = !DILocation(line: 91, column: 3, scope: !739, inlinedAt: !1191)
!1200 = !DILocation(line: 92, column: 3, scope: !739, inlinedAt: !1191)
!1201 = !DILocation(line: 92, column: 11, scope: !761, inlinedAt: !1191)
!1202 = !DILocation(line: 92, column: 10, scope: !761, inlinedAt: !1191)
!1203 = !DILocation(line: 92, column: 15, scope: !761, inlinedAt: !1191)
!1204 = !DILocation(line: 92, column: 3, scope: !761, inlinedAt: !1191)
!1205 = !DILocation(line: 94, column: 3, scope: !739, inlinedAt: !1191)
!1206 = !DILocation(line: 95, column: 18, scope: !739, inlinedAt: !1191)
!1207 = !DILocation(line: 95, column: 9, scope: !739, inlinedAt: !1191)
!1208 = !DILocation(line: 96, column: 7, scope: !739, inlinedAt: !1191)
!1209 = !DILocation(line: 97, column: 6, scope: !773, inlinedAt: !1191)
!1210 = !DILocation(line: 97, column: 15, scope: !773, inlinedAt: !1191)
!1211 = !DILocation(line: 97, column: 5, scope: !773, inlinedAt: !1191)
!1212 = !DILocation(line: 158, column: 3, scope: !693)
!1213 = !DILocation(line: 158, column: 3, scope: !1214)
!1214 = !DILexicalBlockFile(scope: !1215, file: !494, discriminator: 4)
!1215 = distinct !DILexicalBlock(scope: !1216, file: !494, line: 158, column: 3)
!1216 = distinct !DILexicalBlock(scope: !670, file: !494, line: 158, column: 3)
!1217 = !DILocation(line: 158, column: 3, scope: !1218)
!1218 = !DILexicalBlockFile(scope: !1215, file: !494, discriminator: 5)
!1219 = !DILocation(line: 86, column: 31, scope: !739, inlinedAt: !1220)
!1220 = distinct !DILocation(line: 158, column: 3, scope: !1221)
!1221 = !DILexicalBlockFile(scope: !1215, file: !494, discriminator: 6)
!1222 = !DILocation(line: 88, column: 20, scope: !739, inlinedAt: !1220)
!1223 = !DILocation(line: 88, column: 27, scope: !739, inlinedAt: !1220)
!1224 = !DILocation(line: 89, column: 26, scope: !739, inlinedAt: !1220)
!1225 = !DILocation(line: 89, column: 9, scope: !739, inlinedAt: !1220)
!1226 = !DILocation(line: 90, column: 22, scope: !739, inlinedAt: !1220)
!1227 = !DILocation(line: 90, column: 20, scope: !739, inlinedAt: !1220)
!1228 = !DILocation(line: 90, column: 9, scope: !739, inlinedAt: !1220)
!1229 = !DILocation(line: 91, column: 3, scope: !739, inlinedAt: !1220)
!1230 = !DILocation(line: 92, column: 3, scope: !739, inlinedAt: !1220)
!1231 = !DILocation(line: 92, column: 11, scope: !761, inlinedAt: !1220)
!1232 = !DILocation(line: 92, column: 10, scope: !761, inlinedAt: !1220)
!1233 = !DILocation(line: 92, column: 15, scope: !761, inlinedAt: !1220)
!1234 = !DILocation(line: 92, column: 3, scope: !761, inlinedAt: !1220)
!1235 = !DILocation(line: 94, column: 3, scope: !739, inlinedAt: !1220)
!1236 = !DILocation(line: 95, column: 18, scope: !739, inlinedAt: !1220)
!1237 = !DILocation(line: 95, column: 9, scope: !739, inlinedAt: !1220)
!1238 = !DILocation(line: 96, column: 7, scope: !739, inlinedAt: !1220)
!1239 = !DILocation(line: 97, column: 6, scope: !773, inlinedAt: !1220)
!1240 = !DILocation(line: 97, column: 15, scope: !773, inlinedAt: !1220)
!1241 = !DILocation(line: 97, column: 5, scope: !773, inlinedAt: !1220)
!1242 = !DILocation(line: 158, column: 3, scope: !1243)
!1243 = !DILexicalBlockFile(scope: !1215, file: !494, discriminator: 7)
!1244 = !DILocation(line: 159, column: 3, scope: !670)
!1245 = !DILocation(line: 159, column: 3, scope: !696)
!1246 = !DILocation(line: 86, column: 31, scope: !739, inlinedAt: !1247)
!1247 = distinct !DILocation(line: 159, column: 3, scope: !749)
!1248 = !DILocation(line: 88, column: 20, scope: !739, inlinedAt: !1247)
!1249 = !DILocation(line: 88, column: 27, scope: !739, inlinedAt: !1247)
!1250 = !DILocation(line: 89, column: 26, scope: !739, inlinedAt: !1247)
!1251 = !DILocation(line: 89, column: 9, scope: !739, inlinedAt: !1247)
!1252 = !DILocation(line: 90, column: 22, scope: !739, inlinedAt: !1247)
!1253 = !DILocation(line: 90, column: 20, scope: !739, inlinedAt: !1247)
!1254 = !DILocation(line: 90, column: 9, scope: !739, inlinedAt: !1247)
!1255 = !DILocation(line: 91, column: 3, scope: !739, inlinedAt: !1247)
!1256 = !DILocation(line: 92, column: 3, scope: !739, inlinedAt: !1247)
!1257 = !DILocation(line: 92, column: 11, scope: !761, inlinedAt: !1247)
!1258 = !DILocation(line: 92, column: 10, scope: !761, inlinedAt: !1247)
!1259 = !DILocation(line: 92, column: 15, scope: !761, inlinedAt: !1247)
!1260 = !DILocation(line: 92, column: 3, scope: !761, inlinedAt: !1247)
!1261 = !DILocation(line: 94, column: 3, scope: !739, inlinedAt: !1247)
!1262 = !DILocation(line: 95, column: 18, scope: !739, inlinedAt: !1247)
!1263 = !DILocation(line: 95, column: 9, scope: !739, inlinedAt: !1247)
!1264 = !DILocation(line: 96, column: 7, scope: !739, inlinedAt: !1247)
!1265 = !DILocation(line: 97, column: 6, scope: !773, inlinedAt: !1247)
!1266 = !DILocation(line: 97, column: 15, scope: !773, inlinedAt: !1247)
!1267 = !DILocation(line: 97, column: 5, scope: !773, inlinedAt: !1247)
!1268 = !DILocation(line: 159, column: 3, scope: !693)
!1269 = !DILocation(line: 160, column: 3, scope: !670)
!1270 = !DILocation(line: 160, column: 3, scope: !696)
!1271 = !DILocation(line: 86, column: 31, scope: !739, inlinedAt: !1272)
!1272 = distinct !DILocation(line: 160, column: 3, scope: !749)
!1273 = !DILocation(line: 88, column: 20, scope: !739, inlinedAt: !1272)
!1274 = !DILocation(line: 88, column: 27, scope: !739, inlinedAt: !1272)
!1275 = !DILocation(line: 89, column: 26, scope: !739, inlinedAt: !1272)
!1276 = !DILocation(line: 89, column: 9, scope: !739, inlinedAt: !1272)
!1277 = !DILocation(line: 90, column: 22, scope: !739, inlinedAt: !1272)
!1278 = !DILocation(line: 90, column: 20, scope: !739, inlinedAt: !1272)
!1279 = !DILocation(line: 90, column: 9, scope: !739, inlinedAt: !1272)
!1280 = !DILocation(line: 91, column: 3, scope: !739, inlinedAt: !1272)
!1281 = !DILocation(line: 92, column: 3, scope: !739, inlinedAt: !1272)
!1282 = !DILocation(line: 92, column: 11, scope: !761, inlinedAt: !1272)
!1283 = !DILocation(line: 92, column: 10, scope: !761, inlinedAt: !1272)
!1284 = !DILocation(line: 92, column: 15, scope: !761, inlinedAt: !1272)
!1285 = !DILocation(line: 92, column: 3, scope: !761, inlinedAt: !1272)
!1286 = !DILocation(line: 94, column: 3, scope: !739, inlinedAt: !1272)
!1287 = !DILocation(line: 95, column: 18, scope: !739, inlinedAt: !1272)
!1288 = !DILocation(line: 95, column: 9, scope: !739, inlinedAt: !1272)
!1289 = !DILocation(line: 96, column: 7, scope: !739, inlinedAt: !1272)
!1290 = !DILocation(line: 97, column: 6, scope: !773, inlinedAt: !1272)
!1291 = !DILocation(line: 97, column: 15, scope: !773, inlinedAt: !1272)
!1292 = !DILocation(line: 97, column: 5, scope: !773, inlinedAt: !1272)
!1293 = !DILocation(line: 160, column: 3, scope: !693)
!1294 = !DILocation(line: 161, column: 3, scope: !670)
!1295 = !DILocation(line: 161, column: 3, scope: !696)
!1296 = !DILocation(line: 86, column: 31, scope: !739, inlinedAt: !1297)
!1297 = distinct !DILocation(line: 161, column: 3, scope: !749)
!1298 = !DILocation(line: 88, column: 20, scope: !739, inlinedAt: !1297)
!1299 = !DILocation(line: 88, column: 27, scope: !739, inlinedAt: !1297)
!1300 = !DILocation(line: 89, column: 26, scope: !739, inlinedAt: !1297)
!1301 = !DILocation(line: 89, column: 9, scope: !739, inlinedAt: !1297)
!1302 = !DILocation(line: 90, column: 22, scope: !739, inlinedAt: !1297)
!1303 = !DILocation(line: 90, column: 20, scope: !739, inlinedAt: !1297)
!1304 = !DILocation(line: 90, column: 9, scope: !739, inlinedAt: !1297)
!1305 = !DILocation(line: 91, column: 3, scope: !739, inlinedAt: !1297)
!1306 = !DILocation(line: 92, column: 3, scope: !739, inlinedAt: !1297)
!1307 = !DILocation(line: 92, column: 11, scope: !761, inlinedAt: !1297)
!1308 = !DILocation(line: 92, column: 10, scope: !761, inlinedAt: !1297)
!1309 = !DILocation(line: 92, column: 15, scope: !761, inlinedAt: !1297)
!1310 = !DILocation(line: 92, column: 3, scope: !761, inlinedAt: !1297)
!1311 = !DILocation(line: 94, column: 3, scope: !739, inlinedAt: !1297)
!1312 = !DILocation(line: 95, column: 18, scope: !739, inlinedAt: !1297)
!1313 = !DILocation(line: 95, column: 9, scope: !739, inlinedAt: !1297)
!1314 = !DILocation(line: 96, column: 7, scope: !739, inlinedAt: !1297)
!1315 = !DILocation(line: 97, column: 6, scope: !773, inlinedAt: !1297)
!1316 = !DILocation(line: 97, column: 15, scope: !773, inlinedAt: !1297)
!1317 = !DILocation(line: 97, column: 5, scope: !773, inlinedAt: !1297)
!1318 = !DILocation(line: 161, column: 3, scope: !693)
!1319 = !DILocation(line: 161, column: 3, scope: !1320)
!1320 = !DILexicalBlockFile(scope: !1321, file: !494, discriminator: 4)
!1321 = distinct !DILexicalBlock(scope: !1322, file: !494, line: 161, column: 3)
!1322 = distinct !DILexicalBlock(scope: !670, file: !494, line: 161, column: 3)
!1323 = !DILocation(line: 161, column: 3, scope: !1324)
!1324 = !DILexicalBlockFile(scope: !1321, file: !494, discriminator: 5)
!1325 = !DILocation(line: 86, column: 31, scope: !739, inlinedAt: !1326)
!1326 = distinct !DILocation(line: 161, column: 3, scope: !1327)
!1327 = !DILexicalBlockFile(scope: !1321, file: !494, discriminator: 6)
!1328 = !DILocation(line: 88, column: 20, scope: !739, inlinedAt: !1326)
!1329 = !DILocation(line: 88, column: 27, scope: !739, inlinedAt: !1326)
!1330 = !DILocation(line: 89, column: 26, scope: !739, inlinedAt: !1326)
!1331 = !DILocation(line: 89, column: 9, scope: !739, inlinedAt: !1326)
!1332 = !DILocation(line: 90, column: 22, scope: !739, inlinedAt: !1326)
!1333 = !DILocation(line: 90, column: 20, scope: !739, inlinedAt: !1326)
!1334 = !DILocation(line: 90, column: 9, scope: !739, inlinedAt: !1326)
!1335 = !DILocation(line: 91, column: 3, scope: !739, inlinedAt: !1326)
!1336 = !DILocation(line: 92, column: 3, scope: !739, inlinedAt: !1326)
!1337 = !DILocation(line: 92, column: 11, scope: !761, inlinedAt: !1326)
!1338 = !DILocation(line: 92, column: 10, scope: !761, inlinedAt: !1326)
!1339 = !DILocation(line: 92, column: 15, scope: !761, inlinedAt: !1326)
!1340 = !DILocation(line: 92, column: 3, scope: !761, inlinedAt: !1326)
!1341 = !DILocation(line: 94, column: 3, scope: !739, inlinedAt: !1326)
!1342 = !DILocation(line: 95, column: 18, scope: !739, inlinedAt: !1326)
!1343 = !DILocation(line: 95, column: 9, scope: !739, inlinedAt: !1326)
!1344 = !DILocation(line: 96, column: 7, scope: !739, inlinedAt: !1326)
!1345 = !DILocation(line: 97, column: 6, scope: !773, inlinedAt: !1326)
!1346 = !DILocation(line: 97, column: 15, scope: !773, inlinedAt: !1326)
!1347 = !DILocation(line: 97, column: 5, scope: !773, inlinedAt: !1326)
!1348 = !DILocation(line: 161, column: 3, scope: !1349)
!1349 = !DILexicalBlockFile(scope: !1321, file: !494, discriminator: 7)
!1350 = !DILocation(line: 162, column: 3, scope: !670)
!1351 = !DILocation(line: 162, column: 3, scope: !696)
!1352 = !DILocation(line: 86, column: 31, scope: !739, inlinedAt: !1353)
!1353 = distinct !DILocation(line: 162, column: 3, scope: !749)
!1354 = !DILocation(line: 88, column: 20, scope: !739, inlinedAt: !1353)
!1355 = !DILocation(line: 88, column: 27, scope: !739, inlinedAt: !1353)
!1356 = !DILocation(line: 89, column: 26, scope: !739, inlinedAt: !1353)
!1357 = !DILocation(line: 89, column: 9, scope: !739, inlinedAt: !1353)
!1358 = !DILocation(line: 90, column: 22, scope: !739, inlinedAt: !1353)
!1359 = !DILocation(line: 90, column: 20, scope: !739, inlinedAt: !1353)
!1360 = !DILocation(line: 90, column: 9, scope: !739, inlinedAt: !1353)
!1361 = !DILocation(line: 91, column: 3, scope: !739, inlinedAt: !1353)
!1362 = !DILocation(line: 92, column: 3, scope: !739, inlinedAt: !1353)
!1363 = !DILocation(line: 92, column: 11, scope: !761, inlinedAt: !1353)
!1364 = !DILocation(line: 92, column: 10, scope: !761, inlinedAt: !1353)
!1365 = !DILocation(line: 92, column: 15, scope: !761, inlinedAt: !1353)
!1366 = !DILocation(line: 92, column: 3, scope: !761, inlinedAt: !1353)
!1367 = !DILocation(line: 94, column: 3, scope: !739, inlinedAt: !1353)
!1368 = !DILocation(line: 95, column: 18, scope: !739, inlinedAt: !1353)
!1369 = !DILocation(line: 95, column: 9, scope: !739, inlinedAt: !1353)
!1370 = !DILocation(line: 96, column: 7, scope: !739, inlinedAt: !1353)
!1371 = !DILocation(line: 97, column: 6, scope: !773, inlinedAt: !1353)
!1372 = !DILocation(line: 97, column: 15, scope: !773, inlinedAt: !1353)
!1373 = !DILocation(line: 97, column: 5, scope: !773, inlinedAt: !1353)
!1374 = !DILocation(line: 162, column: 3, scope: !693)
!1375 = !DILocation(line: 162, column: 3, scope: !1376)
!1376 = !DILexicalBlockFile(scope: !1377, file: !494, discriminator: 4)
!1377 = distinct !DILexicalBlock(scope: !1378, file: !494, line: 162, column: 3)
!1378 = distinct !DILexicalBlock(scope: !670, file: !494, line: 162, column: 3)
!1379 = !DILocation(line: 162, column: 3, scope: !1380)
!1380 = !DILexicalBlockFile(scope: !1377, file: !494, discriminator: 5)
!1381 = !DILocation(line: 86, column: 31, scope: !739, inlinedAt: !1382)
!1382 = distinct !DILocation(line: 162, column: 3, scope: !1383)
!1383 = !DILexicalBlockFile(scope: !1377, file: !494, discriminator: 6)
!1384 = !DILocation(line: 88, column: 20, scope: !739, inlinedAt: !1382)
!1385 = !DILocation(line: 88, column: 27, scope: !739, inlinedAt: !1382)
!1386 = !DILocation(line: 89, column: 26, scope: !739, inlinedAt: !1382)
!1387 = !DILocation(line: 89, column: 9, scope: !739, inlinedAt: !1382)
!1388 = !DILocation(line: 90, column: 22, scope: !739, inlinedAt: !1382)
!1389 = !DILocation(line: 90, column: 20, scope: !739, inlinedAt: !1382)
!1390 = !DILocation(line: 90, column: 9, scope: !739, inlinedAt: !1382)
!1391 = !DILocation(line: 91, column: 3, scope: !739, inlinedAt: !1382)
!1392 = !DILocation(line: 92, column: 3, scope: !739, inlinedAt: !1382)
!1393 = !DILocation(line: 92, column: 11, scope: !761, inlinedAt: !1382)
!1394 = !DILocation(line: 92, column: 10, scope: !761, inlinedAt: !1382)
!1395 = !DILocation(line: 92, column: 15, scope: !761, inlinedAt: !1382)
!1396 = !DILocation(line: 92, column: 3, scope: !761, inlinedAt: !1382)
!1397 = !DILocation(line: 94, column: 3, scope: !739, inlinedAt: !1382)
!1398 = !DILocation(line: 95, column: 18, scope: !739, inlinedAt: !1382)
!1399 = !DILocation(line: 95, column: 9, scope: !739, inlinedAt: !1382)
!1400 = !DILocation(line: 96, column: 7, scope: !739, inlinedAt: !1382)
!1401 = !DILocation(line: 97, column: 6, scope: !773, inlinedAt: !1382)
!1402 = !DILocation(line: 97, column: 15, scope: !773, inlinedAt: !1382)
!1403 = !DILocation(line: 97, column: 5, scope: !773, inlinedAt: !1382)
!1404 = !DILocation(line: 162, column: 3, scope: !1405)
!1405 = !DILexicalBlockFile(scope: !1377, file: !494, discriminator: 7)
!1406 = !DILocation(line: 163, column: 3, scope: !670)
!1407 = !DILocation(line: 163, column: 3, scope: !696)
!1408 = !DILocation(line: 86, column: 31, scope: !739, inlinedAt: !1409)
!1409 = distinct !DILocation(line: 163, column: 3, scope: !749)
!1410 = !DILocation(line: 88, column: 20, scope: !739, inlinedAt: !1409)
!1411 = !DILocation(line: 88, column: 27, scope: !739, inlinedAt: !1409)
!1412 = !DILocation(line: 89, column: 26, scope: !739, inlinedAt: !1409)
!1413 = !DILocation(line: 89, column: 9, scope: !739, inlinedAt: !1409)
!1414 = !DILocation(line: 90, column: 22, scope: !739, inlinedAt: !1409)
!1415 = !DILocation(line: 90, column: 20, scope: !739, inlinedAt: !1409)
!1416 = !DILocation(line: 90, column: 9, scope: !739, inlinedAt: !1409)
!1417 = !DILocation(line: 91, column: 3, scope: !739, inlinedAt: !1409)
!1418 = !DILocation(line: 92, column: 3, scope: !739, inlinedAt: !1409)
!1419 = !DILocation(line: 92, column: 11, scope: !761, inlinedAt: !1409)
!1420 = !DILocation(line: 92, column: 10, scope: !761, inlinedAt: !1409)
!1421 = !DILocation(line: 92, column: 15, scope: !761, inlinedAt: !1409)
!1422 = !DILocation(line: 92, column: 3, scope: !761, inlinedAt: !1409)
!1423 = !DILocation(line: 94, column: 3, scope: !739, inlinedAt: !1409)
!1424 = !DILocation(line: 95, column: 18, scope: !739, inlinedAt: !1409)
!1425 = !DILocation(line: 95, column: 9, scope: !739, inlinedAt: !1409)
!1426 = !DILocation(line: 96, column: 7, scope: !739, inlinedAt: !1409)
!1427 = !DILocation(line: 97, column: 6, scope: !773, inlinedAt: !1409)
!1428 = !DILocation(line: 97, column: 15, scope: !773, inlinedAt: !1409)
!1429 = !DILocation(line: 97, column: 5, scope: !773, inlinedAt: !1409)
!1430 = !DILocation(line: 163, column: 3, scope: !693)
!1431 = !DILocation(line: 163, column: 3, scope: !1432)
!1432 = !DILexicalBlockFile(scope: !1433, file: !494, discriminator: 4)
!1433 = distinct !DILexicalBlock(scope: !1434, file: !494, line: 163, column: 3)
!1434 = distinct !DILexicalBlock(scope: !670, file: !494, line: 163, column: 3)
!1435 = !DILocation(line: 163, column: 3, scope: !1436)
!1436 = !DILexicalBlockFile(scope: !1433, file: !494, discriminator: 5)
!1437 = !DILocation(line: 86, column: 31, scope: !739, inlinedAt: !1438)
!1438 = distinct !DILocation(line: 163, column: 3, scope: !1439)
!1439 = !DILexicalBlockFile(scope: !1433, file: !494, discriminator: 6)
!1440 = !DILocation(line: 88, column: 20, scope: !739, inlinedAt: !1438)
!1441 = !DILocation(line: 88, column: 27, scope: !739, inlinedAt: !1438)
!1442 = !DILocation(line: 89, column: 26, scope: !739, inlinedAt: !1438)
!1443 = !DILocation(line: 89, column: 9, scope: !739, inlinedAt: !1438)
!1444 = !DILocation(line: 90, column: 22, scope: !739, inlinedAt: !1438)
!1445 = !DILocation(line: 90, column: 20, scope: !739, inlinedAt: !1438)
!1446 = !DILocation(line: 90, column: 9, scope: !739, inlinedAt: !1438)
!1447 = !DILocation(line: 91, column: 3, scope: !739, inlinedAt: !1438)
!1448 = !DILocation(line: 92, column: 3, scope: !739, inlinedAt: !1438)
!1449 = !DILocation(line: 92, column: 11, scope: !761, inlinedAt: !1438)
!1450 = !DILocation(line: 92, column: 10, scope: !761, inlinedAt: !1438)
!1451 = !DILocation(line: 92, column: 15, scope: !761, inlinedAt: !1438)
!1452 = !DILocation(line: 92, column: 3, scope: !761, inlinedAt: !1438)
!1453 = !DILocation(line: 94, column: 3, scope: !739, inlinedAt: !1438)
!1454 = !DILocation(line: 95, column: 18, scope: !739, inlinedAt: !1438)
!1455 = !DILocation(line: 95, column: 9, scope: !739, inlinedAt: !1438)
!1456 = !DILocation(line: 96, column: 7, scope: !739, inlinedAt: !1438)
!1457 = !DILocation(line: 97, column: 6, scope: !773, inlinedAt: !1438)
!1458 = !DILocation(line: 97, column: 15, scope: !773, inlinedAt: !1438)
!1459 = !DILocation(line: 97, column: 5, scope: !773, inlinedAt: !1438)
!1460 = !DILocation(line: 163, column: 3, scope: !1461)
!1461 = !DILexicalBlockFile(scope: !1433, file: !494, discriminator: 7)
!1462 = !DILocation(line: 164, column: 3, scope: !670)
!1463 = !DILocation(line: 164, column: 3, scope: !696)
!1464 = !DILocation(line: 86, column: 31, scope: !739, inlinedAt: !1465)
!1465 = distinct !DILocation(line: 164, column: 3, scope: !749)
!1466 = !DILocation(line: 88, column: 20, scope: !739, inlinedAt: !1465)
!1467 = !DILocation(line: 88, column: 27, scope: !739, inlinedAt: !1465)
!1468 = !DILocation(line: 89, column: 26, scope: !739, inlinedAt: !1465)
!1469 = !DILocation(line: 89, column: 9, scope: !739, inlinedAt: !1465)
!1470 = !DILocation(line: 90, column: 22, scope: !739, inlinedAt: !1465)
!1471 = !DILocation(line: 90, column: 20, scope: !739, inlinedAt: !1465)
!1472 = !DILocation(line: 90, column: 9, scope: !739, inlinedAt: !1465)
!1473 = !DILocation(line: 91, column: 3, scope: !739, inlinedAt: !1465)
!1474 = !DILocation(line: 92, column: 3, scope: !739, inlinedAt: !1465)
!1475 = !DILocation(line: 92, column: 11, scope: !761, inlinedAt: !1465)
!1476 = !DILocation(line: 92, column: 10, scope: !761, inlinedAt: !1465)
!1477 = !DILocation(line: 92, column: 15, scope: !761, inlinedAt: !1465)
!1478 = !DILocation(line: 92, column: 3, scope: !761, inlinedAt: !1465)
!1479 = !DILocation(line: 94, column: 3, scope: !739, inlinedAt: !1465)
!1480 = !DILocation(line: 95, column: 18, scope: !739, inlinedAt: !1465)
!1481 = !DILocation(line: 95, column: 9, scope: !739, inlinedAt: !1465)
!1482 = !DILocation(line: 96, column: 7, scope: !739, inlinedAt: !1465)
!1483 = !DILocation(line: 97, column: 6, scope: !773, inlinedAt: !1465)
!1484 = !DILocation(line: 97, column: 15, scope: !773, inlinedAt: !1465)
!1485 = !DILocation(line: 97, column: 5, scope: !773, inlinedAt: !1465)
!1486 = !DILocation(line: 164, column: 3, scope: !693)
!1487 = !DILocation(line: 167, column: 3, scope: !670)
!1488 = !DILocation(line: 110, column: 1, scope: !1489, inlinedAt: !710)
!1489 = !DILexicalBlockFile(scope: !698, file: !494, discriminator: 1)
!1490 = !DILocation(line: 167, column: 3, scope: !749)
!1491 = !DILocation(line: 110, column: 1, scope: !1489, inlinedAt: !708)
!1492 = !DILocation(line: 168, column: 3, scope: !670)
!1493 = !DILocation(line: 111, column: 1, scope: !1494, inlinedAt: !695)
!1494 = !DILexicalBlockFile(scope: !682, file: !494, discriminator: 1)
!1495 = !DILocation(line: 168, column: 3, scope: !749)
!1496 = !DILocation(line: 111, column: 1, scope: !1494, inlinedAt: !692)
!1497 = !DILocation(line: 169, column: 3, scope: !670)
!1498 = !DILocation(line: 112, column: 1, scope: !1499, inlinedAt: !722)
!1499 = !DILexicalBlockFile(scope: !712, file: !494, discriminator: 1)
!1500 = !DILocation(line: 169, column: 3, scope: !749)
!1501 = !DILocation(line: 112, column: 1, scope: !1499, inlinedAt: !724)
!1502 = !DILocation(line: 172, column: 1, scope: !670)
!1503 = !DILocation(line: 171, column: 3, scope: !670)
!1504 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !8, file: !8, line: 41, type: !536, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1505)
!1505 = !{!1506}
!1506 = !DILocalVariable(name: "file", arg: 1, scope: !1504, file: !8, line: 41, type: !10)
!1507 = !DILocation(line: 41, column: 41, scope: !1504)
!1508 = !DILocation(line: 43, column: 13, scope: !1504)
!1509 = !DILocation(line: 44, column: 1, scope: !1504)
!1510 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !8, file: !8, line: 78, type: !1511, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1513)
!1511 = !DISubroutineType(types: !1512)
!1512 = !{null, !9}
!1513 = !{!1514}
!1514 = !DILocalVariable(name: "ignore", arg: 1, scope: !1510, file: !8, line: 78, type: !9)
!1515 = !DIExpression(DW_OP_LLVM_fragment, 0, 1)
!1516 = !DILocation(line: 78, column: 37, scope: !1510)
!1517 = !DILocation(line: 80, column: 16, scope: !1510)
!1518 = !{!1519, !1519, i64 0}
!1519 = !{!"_Bool", !631, i64 0}
!1520 = !DILocation(line: 81, column: 1, scope: !1510)
!1521 = distinct !DISubprogram(name: "close_stdout", scope: !8, file: !8, line: 107, type: !1522, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1524)
!1522 = !DISubroutineType(types: !1523)
!1523 = !{null}
!1524 = !{!1525}
!1525 = !DILocalVariable(name: "write_error", scope: !1526, file: !8, line: 112, type: !10)
!1526 = distinct !DILexicalBlock(scope: !1527, file: !8, line: 111, column: 5)
!1527 = distinct !DILexicalBlock(scope: !1521, file: !8, line: 109, column: 7)
!1528 = !DILocation(line: 109, column: 21, scope: !1527)
!1529 = !DILocation(line: 109, column: 7, scope: !1527)
!1530 = !DILocation(line: 109, column: 29, scope: !1527)
!1531 = !DILocation(line: 110, column: 7, scope: !1527)
!1532 = !DILocation(line: 110, column: 12, scope: !1533)
!1533 = !DILexicalBlockFile(scope: !1527, file: !8, discriminator: 1)
!1534 = !{i8 0, i8 2}
!1535 = !DILocation(line: 114, column: 19, scope: !1536)
!1536 = distinct !DILexicalBlock(scope: !1526, file: !8, line: 113, column: 11)
!1537 = !DILocation(line: 110, column: 25, scope: !1533)
!1538 = !DILocation(line: 110, column: 28, scope: !1539)
!1539 = !DILexicalBlockFile(scope: !1527, file: !8, discriminator: 2)
!1540 = !{!1541, !1541, i64 0}
!1541 = !{!"int", !631, i64 0}
!1542 = !DILocation(line: 110, column: 34, scope: !1539)
!1543 = !DILocation(line: 109, column: 7, scope: !1544)
!1544 = !DILexicalBlockFile(scope: !1521, file: !8, discriminator: 1)
!1545 = !DILocation(line: 112, column: 33, scope: !1526)
!1546 = !DILocation(line: 112, column: 19, scope: !1526)
!1547 = !DILocation(line: 113, column: 11, scope: !1536)
!1548 = !DILocation(line: 113, column: 11, scope: !1526)
!1549 = !DILocation(line: 114, column: 36, scope: !1550)
!1550 = !DILexicalBlockFile(scope: !1536, file: !8, discriminator: 1)
!1551 = !DILocation(line: 114, column: 9, scope: !1552)
!1552 = !DILexicalBlockFile(scope: !1536, file: !8, discriminator: 2)
!1553 = !DILocation(line: 114, column: 9, scope: !1536)
!1554 = !DILocation(line: 117, column: 9, scope: !1550)
!1555 = !DILocation(line: 119, column: 14, scope: !1526)
!1556 = !DILocation(line: 119, column: 7, scope: !1526)
!1557 = !DILocation(line: 122, column: 22, scope: !1558)
!1558 = distinct !DILexicalBlock(scope: !1521, file: !8, line: 122, column: 8)
!1559 = !DILocation(line: 122, column: 8, scope: !1558)
!1560 = !DILocation(line: 122, column: 30, scope: !1558)
!1561 = !DILocation(line: 122, column: 8, scope: !1521)
!1562 = !DILocation(line: 123, column: 13, scope: !1558)
!1563 = !DILocation(line: 123, column: 6, scope: !1558)
!1564 = !DILocation(line: 124, column: 1, scope: !1521)
!1565 = distinct !DISubprogram(name: "dtoastr", scope: !565, file: !565, line: 103, type: !1566, isLocal: false, isDefinition: true, scopeLine: 104, flags: DIFlagPrototyped, isOptimized: true, unit: !562, variables: !1568)
!1566 = !DISubroutineType(types: !1567)
!1567 = !{!20, !45, !89, !20, !20, !685}
!1568 = !{!1569, !1570, !1571, !1572, !1573, !1574, !1575, !1577, !1578, !1579, !1580}
!1569 = !DILocalVariable(name: "buf", arg: 1, scope: !1565, file: !565, line: 103, type: !45)
!1570 = !DILocalVariable(name: "bufsize", arg: 2, scope: !1565, file: !565, line: 103, type: !89)
!1571 = !DILocalVariable(name: "flags", arg: 3, scope: !1565, file: !565, line: 103, type: !20)
!1572 = !DILocalVariable(name: "width", arg: 4, scope: !1565, file: !565, line: 103, type: !20)
!1573 = !DILocalVariable(name: "x", arg: 5, scope: !1565, file: !565, line: 103, type: !685)
!1574 = !DILocalVariable(name: "promoted_x", scope: !1565, file: !565, line: 113, type: !685)
!1575 = !DILocalVariable(name: "format", scope: !1565, file: !565, line: 114, type: !1576)
!1576 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 88, elements: !133)
!1577 = !DILocalVariable(name: "abs_x", scope: !1565, file: !565, line: 115, type: !685)
!1578 = !DILocalVariable(name: "prec", scope: !1565, file: !565, line: 116, type: !20)
!1579 = !DILocalVariable(name: "p", scope: !1565, file: !565, line: 118, type: !45)
!1580 = !DILocalVariable(name: "n", scope: !1581, file: !565, line: 136, type: !20)
!1581 = distinct !DILexicalBlock(scope: !1582, file: !565, line: 135, column: 5)
!1582 = distinct !DILexicalBlock(scope: !1583, file: !565, line: 134, column: 3)
!1583 = distinct !DILexicalBlock(scope: !1565, file: !565, line: 134, column: 3)
!1584 = !DILocation(line: 103, column: 16, scope: !1565)
!1585 = !DILocation(line: 103, column: 28, scope: !1565)
!1586 = !DILocation(line: 103, column: 41, scope: !1565)
!1587 = !DILocation(line: 103, column: 52, scope: !1565)
!1588 = !DILocation(line: 103, column: 65, scope: !1565)
!1589 = !DILocation(line: 113, column: 18, scope: !1565)
!1590 = !DILocation(line: 114, column: 3, scope: !1565)
!1591 = !DILocation(line: 114, column: 8, scope: !1565)
!1592 = !DILocation(line: 115, column: 19, scope: !1565)
!1593 = !DILocation(line: 115, column: 25, scope: !1594)
!1594 = !DILexicalBlockFile(scope: !1565, file: !565, discriminator: 1)
!1595 = !DILocation(line: 115, column: 17, scope: !1565)
!1596 = !DILocation(line: 115, column: 9, scope: !1565)
!1597 = !DILocation(line: 118, column: 9, scope: !1565)
!1598 = !DILocation(line: 119, column: 5, scope: !1565)
!1599 = !DILocation(line: 119, column: 8, scope: !1565)
!1600 = !DILocation(line: 122, column: 6, scope: !1565)
!1601 = !DILocation(line: 122, column: 25, scope: !1565)
!1602 = !DILocation(line: 122, column: 15, scope: !1565)
!1603 = !DILocation(line: 123, column: 6, scope: !1565)
!1604 = !DILocation(line: 123, column: 51, scope: !1565)
!1605 = !DILocation(line: 123, column: 15, scope: !1565)
!1606 = !DILocation(line: 124, column: 6, scope: !1565)
!1607 = !DILocation(line: 124, column: 51, scope: !1565)
!1608 = !DILocation(line: 124, column: 15, scope: !1565)
!1609 = !DILocation(line: 125, column: 6, scope: !1565)
!1610 = !DILocation(line: 125, column: 51, scope: !1565)
!1611 = !DILocation(line: 125, column: 15, scope: !1565)
!1612 = !DILocation(line: 127, column: 5, scope: !1565)
!1613 = !DILocation(line: 127, column: 8, scope: !1565)
!1614 = !DILocation(line: 128, column: 5, scope: !1565)
!1615 = !DILocation(line: 128, column: 8, scope: !1565)
!1616 = !DILocation(line: 129, column: 5, scope: !1565)
!1617 = !DILocation(line: 129, column: 8, scope: !1565)
!1618 = !DILocation(line: 131, column: 10, scope: !1565)
!1619 = !DILocation(line: 131, column: 5, scope: !1565)
!1620 = !DILocation(line: 131, column: 8, scope: !1565)
!1621 = !DILocation(line: 132, column: 6, scope: !1565)
!1622 = !DILocation(line: 134, column: 21, scope: !1583)
!1623 = !DILocation(line: 134, column: 15, scope: !1583)
!1624 = !DILocation(line: 116, column: 7, scope: !1565)
!1625 = !DILocation(line: 136, column: 15, scope: !1581)
!1626 = !DILocation(line: 136, column: 11, scope: !1581)
!1627 = !DILocation(line: 137, column: 13, scope: !1628)
!1628 = distinct !DILexicalBlock(scope: !1581, file: !565, line: 137, column: 11)
!1629 = !DILocation(line: 138, column: 11, scope: !1628)
!1630 = !DILocation(line: 139, column: 15, scope: !1631)
!1631 = !DILexicalBlockFile(scope: !1628, file: !565, discriminator: 1)
!1632 = !DILocation(line: 139, column: 17, scope: !1631)
!1633 = !DILocation(line: 139, column: 27, scope: !1631)
!1634 = !DILocation(line: 139, column: 30, scope: !1635)
!1635 = !DILexicalBlockFile(scope: !1628, file: !565, discriminator: 2)
!1636 = !DILocation(line: 139, column: 49, scope: !1635)
!1637 = !DILocation(line: 137, column: 11, scope: !1638)
!1638 = !DILexicalBlockFile(scope: !1581, file: !565, discriminator: 1)
!1639 = !DILocation(line: 134, column: 56, scope: !1640)
!1640 = !DILexicalBlockFile(scope: !1582, file: !565, discriminator: 1)
!1641 = !DILocation(line: 138, column: 31, scope: !1631)
!1642 = distinct !{!1642, !1643, !1644}
!1643 = !DILocation(line: 134, column: 3, scope: !1583)
!1644 = !DILocation(line: 141, column: 5, scope: !1583)
!1645 = !DILocation(line: 142, column: 1, scope: !1565)
!1646 = distinct !DISubprogram(name: "ftoastr", scope: !1647, file: !1647, line: 103, type: !1648, isLocal: false, isDefinition: true, scopeLine: 104, flags: DIFlagPrototyped, isOptimized: true, unit: !564, variables: !1650)
!1647 = !DIFile(filename: "lib/ftoastr.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1648 = !DISubroutineType(types: !1649)
!1649 = !{!20, !45, !89, !20, !20, !701}
!1650 = !{!1651, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659, !1660, !1661}
!1651 = !DILocalVariable(name: "buf", arg: 1, scope: !1646, file: !1647, line: 103, type: !45)
!1652 = !DILocalVariable(name: "bufsize", arg: 2, scope: !1646, file: !1647, line: 103, type: !89)
!1653 = !DILocalVariable(name: "flags", arg: 3, scope: !1646, file: !1647, line: 103, type: !20)
!1654 = !DILocalVariable(name: "width", arg: 4, scope: !1646, file: !1647, line: 103, type: !20)
!1655 = !DILocalVariable(name: "x", arg: 5, scope: !1646, file: !1647, line: 103, type: !701)
!1656 = !DILocalVariable(name: "promoted_x", scope: !1646, file: !1647, line: 113, type: !685)
!1657 = !DILocalVariable(name: "format", scope: !1646, file: !1647, line: 114, type: !1576)
!1658 = !DILocalVariable(name: "abs_x", scope: !1646, file: !1647, line: 115, type: !701)
!1659 = !DILocalVariable(name: "prec", scope: !1646, file: !1647, line: 116, type: !20)
!1660 = !DILocalVariable(name: "p", scope: !1646, file: !1647, line: 118, type: !45)
!1661 = !DILocalVariable(name: "n", scope: !1662, file: !1647, line: 136, type: !20)
!1662 = distinct !DILexicalBlock(scope: !1663, file: !1647, line: 135, column: 5)
!1663 = distinct !DILexicalBlock(scope: !1664, file: !1647, line: 134, column: 3)
!1664 = distinct !DILexicalBlock(scope: !1646, file: !1647, line: 134, column: 3)
!1665 = !DILocation(line: 103, column: 16, scope: !1646)
!1666 = !DILocation(line: 103, column: 28, scope: !1646)
!1667 = !DILocation(line: 103, column: 41, scope: !1646)
!1668 = !DILocation(line: 103, column: 52, scope: !1646)
!1669 = !DILocation(line: 103, column: 65, scope: !1646)
!1670 = !DILocation(line: 113, column: 31, scope: !1646)
!1671 = !DILocation(line: 113, column: 18, scope: !1646)
!1672 = !DILocation(line: 114, column: 3, scope: !1646)
!1673 = !DILocation(line: 114, column: 8, scope: !1646)
!1674 = !DILocation(line: 115, column: 19, scope: !1646)
!1675 = !DILocation(line: 115, column: 25, scope: !1676)
!1676 = !DILexicalBlockFile(scope: !1646, file: !1647, discriminator: 1)
!1677 = !DILocation(line: 115, column: 17, scope: !1646)
!1678 = !DILocation(line: 115, column: 9, scope: !1646)
!1679 = !DILocation(line: 118, column: 9, scope: !1646)
!1680 = !DILocation(line: 119, column: 5, scope: !1646)
!1681 = !DILocation(line: 119, column: 8, scope: !1646)
!1682 = !DILocation(line: 122, column: 6, scope: !1646)
!1683 = !DILocation(line: 122, column: 25, scope: !1646)
!1684 = !DILocation(line: 122, column: 15, scope: !1646)
!1685 = !DILocation(line: 123, column: 6, scope: !1646)
!1686 = !DILocation(line: 123, column: 51, scope: !1646)
!1687 = !DILocation(line: 123, column: 15, scope: !1646)
!1688 = !DILocation(line: 124, column: 6, scope: !1646)
!1689 = !DILocation(line: 124, column: 51, scope: !1646)
!1690 = !DILocation(line: 124, column: 15, scope: !1646)
!1691 = !DILocation(line: 125, column: 6, scope: !1646)
!1692 = !DILocation(line: 125, column: 51, scope: !1646)
!1693 = !DILocation(line: 125, column: 15, scope: !1646)
!1694 = !DILocation(line: 127, column: 5, scope: !1646)
!1695 = !DILocation(line: 127, column: 8, scope: !1646)
!1696 = !DILocation(line: 128, column: 5, scope: !1646)
!1697 = !DILocation(line: 128, column: 8, scope: !1646)
!1698 = !DILocation(line: 129, column: 5, scope: !1646)
!1699 = !DILocation(line: 129, column: 8, scope: !1646)
!1700 = !DILocation(line: 131, column: 10, scope: !1646)
!1701 = !DILocation(line: 131, column: 5, scope: !1646)
!1702 = !DILocation(line: 131, column: 8, scope: !1646)
!1703 = !DILocation(line: 132, column: 6, scope: !1646)
!1704 = !DILocation(line: 134, column: 21, scope: !1664)
!1705 = !DILocation(line: 134, column: 15, scope: !1664)
!1706 = !DILocation(line: 116, column: 7, scope: !1646)
!1707 = !DILocation(line: 136, column: 15, scope: !1662)
!1708 = !DILocation(line: 136, column: 11, scope: !1662)
!1709 = !DILocation(line: 137, column: 13, scope: !1710)
!1710 = distinct !DILexicalBlock(scope: !1662, file: !1647, line: 137, column: 11)
!1711 = !DILocation(line: 138, column: 11, scope: !1710)
!1712 = !DILocation(line: 139, column: 15, scope: !1713)
!1713 = !DILexicalBlockFile(scope: !1710, file: !1647, discriminator: 1)
!1714 = !DILocation(line: 139, column: 17, scope: !1713)
!1715 = !DILocation(line: 139, column: 27, scope: !1713)
!1716 = !DILocation(line: 139, column: 30, scope: !1717)
!1717 = !DILexicalBlockFile(scope: !1710, file: !1647, discriminator: 2)
!1718 = !DILocation(line: 139, column: 49, scope: !1717)
!1719 = !DILocation(line: 137, column: 11, scope: !1720)
!1720 = !DILexicalBlockFile(scope: !1662, file: !1647, discriminator: 1)
!1721 = !DILocation(line: 134, column: 56, scope: !1722)
!1722 = !DILexicalBlockFile(scope: !1663, file: !1647, discriminator: 1)
!1723 = !DILocation(line: 138, column: 31, scope: !1713)
!1724 = distinct !{!1724, !1725, !1726}
!1725 = !DILocation(line: 134, column: 3, scope: !1664)
!1726 = !DILocation(line: 141, column: 5, scope: !1664)
!1727 = !DILocation(line: 142, column: 1, scope: !1646)
!1728 = distinct !DISubprogram(name: "ldtoastr", scope: !565, file: !565, line: 103, type: !1729, isLocal: false, isDefinition: true, scopeLine: 104, flags: DIFlagPrototyped, isOptimized: true, unit: !566, variables: !1731)
!1729 = !DISubroutineType(types: !1730)
!1730 = !{!20, !45, !89, !20, !20, !715}
!1731 = !{!1732, !1733, !1734, !1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742}
!1732 = !DILocalVariable(name: "buf", arg: 1, scope: !1728, file: !565, line: 103, type: !45)
!1733 = !DILocalVariable(name: "bufsize", arg: 2, scope: !1728, file: !565, line: 103, type: !89)
!1734 = !DILocalVariable(name: "flags", arg: 3, scope: !1728, file: !565, line: 103, type: !20)
!1735 = !DILocalVariable(name: "width", arg: 4, scope: !1728, file: !565, line: 103, type: !20)
!1736 = !DILocalVariable(name: "x", arg: 5, scope: !1728, file: !565, line: 103, type: !715)
!1737 = !DILocalVariable(name: "promoted_x", scope: !1728, file: !565, line: 113, type: !715)
!1738 = !DILocalVariable(name: "format", scope: !1728, file: !565, line: 114, type: !1576)
!1739 = !DILocalVariable(name: "abs_x", scope: !1728, file: !565, line: 115, type: !715)
!1740 = !DILocalVariable(name: "prec", scope: !1728, file: !565, line: 116, type: !20)
!1741 = !DILocalVariable(name: "p", scope: !1728, file: !565, line: 118, type: !45)
!1742 = !DILocalVariable(name: "n", scope: !1743, file: !565, line: 136, type: !20)
!1743 = distinct !DILexicalBlock(scope: !1744, file: !565, line: 135, column: 5)
!1744 = distinct !DILexicalBlock(scope: !1745, file: !565, line: 134, column: 3)
!1745 = distinct !DILexicalBlock(scope: !1728, file: !565, line: 134, column: 3)
!1746 = !DILocation(line: 103, column: 16, scope: !1728)
!1747 = !DILocation(line: 103, column: 28, scope: !1728)
!1748 = !DILocation(line: 103, column: 41, scope: !1728)
!1749 = !DILocation(line: 103, column: 52, scope: !1728)
!1750 = !DILocation(line: 103, column: 65, scope: !1728)
!1751 = !DILocation(line: 113, column: 18, scope: !1728)
!1752 = !DILocation(line: 114, column: 3, scope: !1728)
!1753 = !DILocation(line: 114, column: 8, scope: !1728)
!1754 = !DILocation(line: 115, column: 19, scope: !1728)
!1755 = !DILocation(line: 115, column: 25, scope: !1756)
!1756 = !DILexicalBlockFile(scope: !1728, file: !565, discriminator: 1)
!1757 = !DILocation(line: 115, column: 17, scope: !1728)
!1758 = !DILocation(line: 115, column: 9, scope: !1728)
!1759 = !DILocation(line: 118, column: 9, scope: !1728)
!1760 = !DILocation(line: 119, column: 5, scope: !1728)
!1761 = !DILocation(line: 119, column: 8, scope: !1728)
!1762 = !DILocation(line: 122, column: 6, scope: !1728)
!1763 = !DILocation(line: 122, column: 25, scope: !1728)
!1764 = !DILocation(line: 122, column: 15, scope: !1728)
!1765 = !DILocation(line: 123, column: 6, scope: !1728)
!1766 = !DILocation(line: 123, column: 51, scope: !1728)
!1767 = !DILocation(line: 123, column: 15, scope: !1728)
!1768 = !DILocation(line: 124, column: 6, scope: !1728)
!1769 = !DILocation(line: 124, column: 51, scope: !1728)
!1770 = !DILocation(line: 124, column: 15, scope: !1728)
!1771 = !DILocation(line: 125, column: 6, scope: !1728)
!1772 = !DILocation(line: 125, column: 51, scope: !1728)
!1773 = !DILocation(line: 125, column: 15, scope: !1728)
!1774 = !DILocation(line: 127, column: 5, scope: !1728)
!1775 = !DILocation(line: 127, column: 8, scope: !1728)
!1776 = !DILocation(line: 128, column: 5, scope: !1728)
!1777 = !DILocation(line: 128, column: 8, scope: !1728)
!1778 = !DILocation(line: 129, column: 5, scope: !1728)
!1779 = !DILocation(line: 129, column: 8, scope: !1728)
!1780 = !DILocation(line: 130, column: 6, scope: !1728)
!1781 = !DILocation(line: 130, column: 15, scope: !1728)
!1782 = !DILocation(line: 131, column: 10, scope: !1728)
!1783 = !DILocation(line: 131, column: 5, scope: !1728)
!1784 = !DILocation(line: 131, column: 8, scope: !1728)
!1785 = !DILocation(line: 132, column: 6, scope: !1728)
!1786 = !DILocation(line: 134, column: 21, scope: !1745)
!1787 = !DILocation(line: 134, column: 15, scope: !1745)
!1788 = !DILocation(line: 116, column: 7, scope: !1728)
!1789 = !DILocation(line: 136, column: 15, scope: !1743)
!1790 = !DILocation(line: 136, column: 11, scope: !1743)
!1791 = !DILocation(line: 137, column: 13, scope: !1792)
!1792 = distinct !DILexicalBlock(scope: !1743, file: !565, line: 137, column: 11)
!1793 = !DILocation(line: 138, column: 11, scope: !1792)
!1794 = !DILocation(line: 139, column: 15, scope: !1795)
!1795 = !DILexicalBlockFile(scope: !1792, file: !565, discriminator: 1)
!1796 = !DILocation(line: 139, column: 17, scope: !1795)
!1797 = !DILocation(line: 139, column: 27, scope: !1795)
!1798 = !DILocation(line: 139, column: 30, scope: !1799)
!1799 = !DILexicalBlockFile(scope: !1792, file: !565, discriminator: 2)
!1800 = !DILocation(line: 139, column: 49, scope: !1799)
!1801 = !DILocation(line: 137, column: 11, scope: !1802)
!1802 = !DILexicalBlockFile(scope: !1743, file: !565, discriminator: 1)
!1803 = !DILocation(line: 134, column: 56, scope: !1804)
!1804 = !DILexicalBlockFile(scope: !1744, file: !565, discriminator: 1)
!1805 = !DILocation(line: 138, column: 31, scope: !1795)
!1806 = distinct !{!1806, !1807, !1808}
!1807 = !DILocation(line: 134, column: 3, scope: !1745)
!1808 = !DILocation(line: 141, column: 5, scope: !1745)
!1809 = !DILocation(line: 142, column: 1, scope: !1728)
!1810 = distinct !DISubprogram(name: "parse_long_options", scope: !26, file: !26, line: 44, type: !1811, isLocal: false, isDefinition: true, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: true, unit: !23, variables: !1814)
!1811 = !DISubroutineType(types: !1812)
!1812 = !{null, !20, !673, !10, !10, !10, !1813, null}
!1813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!1814 = !{!1815, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1823}
!1815 = !DILocalVariable(name: "argc", arg: 1, scope: !1810, file: !26, line: 44, type: !20)
!1816 = !DILocalVariable(name: "argv", arg: 2, scope: !1810, file: !26, line: 45, type: !673)
!1817 = !DILocalVariable(name: "command_name", arg: 3, scope: !1810, file: !26, line: 46, type: !10)
!1818 = !DILocalVariable(name: "package", arg: 4, scope: !1810, file: !26, line: 47, type: !10)
!1819 = !DILocalVariable(name: "version", arg: 5, scope: !1810, file: !26, line: 48, type: !10)
!1820 = !DILocalVariable(name: "usage_func", arg: 6, scope: !1810, file: !26, line: 49, type: !1813)
!1821 = !DILocalVariable(name: "c", scope: !1810, file: !26, line: 52, type: !20)
!1822 = !DILocalVariable(name: "saved_opterr", scope: !1810, file: !26, line: 53, type: !20)
!1823 = !DILocalVariable(name: "authors", scope: !1824, file: !26, line: 71, type: !1828)
!1824 = distinct !DILexicalBlock(scope: !1825, file: !26, line: 70, column: 11)
!1825 = distinct !DILexicalBlock(scope: !1826, file: !26, line: 64, column: 9)
!1826 = distinct !DILexicalBlock(scope: !1827, file: !26, line: 62, column: 5)
!1827 = distinct !DILexicalBlock(scope: !1810, file: !26, line: 60, column: 7)
!1828 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !513, line: 80, baseType: !1829)
!1829 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1830, line: 50, baseType: !1831)
!1830 = !DIFile(filename: "/usr/bin/../lib/clang/4.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1831 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !24, line: 71, baseType: !1832)
!1832 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1833, size: 192, elements: !1839)
!1833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !24, line: 71, size: 192, elements: !1834)
!1834 = !{!1835, !1836, !1837, !1838}
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1833, file: !24, line: 71, baseType: !108, size: 32)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1833, file: !24, line: 71, baseType: !108, size: 32, offset: 32)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1833, file: !24, line: 71, baseType: !44, size: 64, offset: 64)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1833, file: !24, line: 71, baseType: !44, size: 64, offset: 128)
!1839 = !{!1840}
!1840 = !DISubrange(count: 1)
!1841 = !DILocation(line: 44, column: 25, scope: !1810)
!1842 = !DILocation(line: 45, column: 28, scope: !1810)
!1843 = !DILocation(line: 46, column: 33, scope: !1810)
!1844 = !DILocation(line: 47, column: 33, scope: !1810)
!1845 = !DILocation(line: 48, column: 33, scope: !1810)
!1846 = !DILocation(line: 49, column: 28, scope: !1810)
!1847 = !DILocation(line: 55, column: 18, scope: !1810)
!1848 = !DILocation(line: 53, column: 7, scope: !1810)
!1849 = !DILocation(line: 58, column: 10, scope: !1810)
!1850 = !DILocation(line: 60, column: 12, scope: !1827)
!1851 = !DILocation(line: 61, column: 7, scope: !1827)
!1852 = !DILocation(line: 61, column: 15, scope: !1853)
!1853 = !DILexicalBlockFile(scope: !1827, file: !26, discriminator: 1)
!1854 = !DILocation(line: 52, column: 7, scope: !1810)
!1855 = !DILocation(line: 60, column: 7, scope: !1856)
!1856 = !DILexicalBlockFile(scope: !1810, file: !26, discriminator: 1)
!1857 = !DILocation(line: 66, column: 11, scope: !1825)
!1858 = !DILocation(line: 67, column: 11, scope: !1825)
!1859 = !DILocation(line: 71, column: 13, scope: !1824)
!1860 = !DILocation(line: 71, column: 21, scope: !1824)
!1861 = !DILocation(line: 72, column: 13, scope: !1824)
!1862 = !DILocation(line: 73, column: 29, scope: !1824)
!1863 = !DILocation(line: 73, column: 13, scope: !1824)
!1864 = !DILocation(line: 74, column: 13, scope: !1824)
!1865 = !DILocation(line: 84, column: 10, scope: !1810)
!1866 = !DILocation(line: 88, column: 10, scope: !1810)
!1867 = !DILocation(line: 89, column: 1, scope: !1810)
!1868 = distinct !DISubprogram(name: "set_program_name", scope: !47, file: !47, line: 39, type: !536, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !41, variables: !1869)
!1869 = !{!1870, !1871, !1872}
!1870 = !DILocalVariable(name: "argv0", arg: 1, scope: !1868, file: !47, line: 39, type: !10)
!1871 = !DILocalVariable(name: "slash", scope: !1868, file: !47, line: 46, type: !10)
!1872 = !DILocalVariable(name: "base", scope: !1868, file: !47, line: 47, type: !10)
!1873 = !DILocation(line: 39, column: 31, scope: !1868)
!1874 = !DILocation(line: 51, column: 13, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !1868, file: !47, line: 51, column: 7)
!1876 = !DILocation(line: 51, column: 7, scope: !1868)
!1877 = !DILocation(line: 55, column: 14, scope: !1878)
!1878 = distinct !DILexicalBlock(scope: !1875, file: !47, line: 52, column: 5)
!1879 = !DILocation(line: 54, column: 7, scope: !1878)
!1880 = !DILocation(line: 56, column: 7, scope: !1878)
!1881 = !DILocation(line: 59, column: 11, scope: !1868)
!1882 = !DILocation(line: 46, column: 15, scope: !1868)
!1883 = !DILocation(line: 60, column: 17, scope: !1868)
!1884 = !DILocation(line: 60, column: 33, scope: !1885)
!1885 = !DILexicalBlockFile(scope: !1868, file: !47, discriminator: 1)
!1886 = !DILocation(line: 60, column: 11, scope: !1868)
!1887 = !DILocation(line: 47, column: 15, scope: !1868)
!1888 = !DILocation(line: 61, column: 12, scope: !1889)
!1889 = distinct !DILexicalBlock(scope: !1868, file: !47, line: 61, column: 7)
!1890 = !DILocation(line: 61, column: 20, scope: !1889)
!1891 = !DILocation(line: 61, column: 25, scope: !1889)
!1892 = !DILocation(line: 61, column: 28, scope: !1893)
!1893 = !DILexicalBlockFile(scope: !1889, file: !47, discriminator: 1)
!1894 = !DILocation(line: 61, column: 61, scope: !1893)
!1895 = !DILocation(line: 61, column: 7, scope: !1885)
!1896 = !DILocation(line: 64, column: 11, scope: !1897)
!1897 = distinct !DILexicalBlock(scope: !1898, file: !47, line: 64, column: 11)
!1898 = distinct !DILexicalBlock(scope: !1889, file: !47, line: 62, column: 5)
!1899 = !DILocation(line: 64, column: 36, scope: !1897)
!1900 = !DILocation(line: 64, column: 11, scope: !1898)
!1901 = !DILocation(line: 66, column: 24, scope: !1902)
!1902 = distinct !DILexicalBlock(scope: !1897, file: !47, line: 65, column: 9)
!1903 = !DILocation(line: 70, column: 41, scope: !1902)
!1904 = !DILocation(line: 72, column: 9, scope: !1902)
!1905 = !DILocation(line: 84, column: 16, scope: !1868)
!1906 = !DILocation(line: 90, column: 27, scope: !1868)
!1907 = !DILocation(line: 92, column: 1, scope: !1868)
!1908 = distinct !DISubprogram(name: "clone_quoting_options", scope: !95, file: !95, line: 114, type: !1909, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !50, variables: !1912)
!1909 = !DISubroutineType(types: !1910)
!1910 = !{!1911, !1911}
!1911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!1912 = !{!1913, !1914, !1915}
!1913 = !DILocalVariable(name: "o", arg: 1, scope: !1908, file: !95, line: 114, type: !1911)
!1914 = !DILocalVariable(name: "e", scope: !1908, file: !95, line: 116, type: !20)
!1915 = !DILocalVariable(name: "p", scope: !1908, file: !95, line: 117, type: !1911)
!1916 = !DILocation(line: 114, column: 48, scope: !1908)
!1917 = !DILocation(line: 116, column: 11, scope: !1908)
!1918 = !DILocation(line: 116, column: 7, scope: !1908)
!1919 = !DILocation(line: 117, column: 40, scope: !1908)
!1920 = !DILocation(line: 117, column: 40, scope: !1921)
!1921 = !DILexicalBlockFile(scope: !1908, file: !95, discriminator: 3)
!1922 = !DILocation(line: 117, column: 31, scope: !1921)
!1923 = !DILocation(line: 117, column: 27, scope: !1908)
!1924 = !DILocation(line: 119, column: 9, scope: !1908)
!1925 = !DILocation(line: 120, column: 3, scope: !1908)
!1926 = distinct !DISubprogram(name: "get_quoting_style", scope: !95, file: !95, line: 125, type: !1927, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !50, variables: !1931)
!1927 = !DISubroutineType(types: !1928)
!1928 = !{!53, !1929}
!1929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1930, size: 64)
!1930 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !102)
!1931 = !{!1932}
!1932 = !DILocalVariable(name: "o", arg: 1, scope: !1926, file: !95, line: 125, type: !1929)
!1933 = !DILocation(line: 125, column: 50, scope: !1926)
!1934 = !DILocation(line: 127, column: 11, scope: !1926)
!1935 = !DILocation(line: 127, column: 46, scope: !1936)
!1936 = !DILexicalBlockFile(scope: !1926, file: !95, discriminator: 3)
!1937 = !{!1938, !631, i64 0}
!1938 = !{!"quoting_options", !631, i64 0, !1541, i64 4, !631, i64 8, !630, i64 40, !630, i64 48}
!1939 = !DILocation(line: 127, column: 3, scope: !1936)
!1940 = distinct !DISubprogram(name: "set_quoting_style", scope: !95, file: !95, line: 133, type: !1941, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !50, variables: !1943)
!1941 = !DISubroutineType(types: !1942)
!1942 = !{null, !1911, !53}
!1943 = !{!1944, !1945}
!1944 = !DILocalVariable(name: "o", arg: 1, scope: !1940, file: !95, line: 133, type: !1911)
!1945 = !DILocalVariable(name: "s", arg: 2, scope: !1940, file: !95, line: 133, type: !53)
!1946 = !DILocation(line: 133, column: 44, scope: !1940)
!1947 = !DILocation(line: 133, column: 66, scope: !1940)
!1948 = !DILocation(line: 135, column: 4, scope: !1940)
!1949 = !DILocation(line: 135, column: 39, scope: !1950)
!1950 = !DILexicalBlockFile(scope: !1940, file: !95, discriminator: 3)
!1951 = !DILocation(line: 135, column: 45, scope: !1950)
!1952 = !DILocation(line: 136, column: 1, scope: !1940)
!1953 = distinct !DISubprogram(name: "set_char_quoting", scope: !95, file: !95, line: 144, type: !1954, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !50, variables: !1956)
!1954 = !DISubroutineType(types: !1955)
!1955 = !{!20, !1911, !12, !20}
!1956 = !{!1957, !1958, !1959, !1960, !1961, !1963, !1964}
!1957 = !DILocalVariable(name: "o", arg: 1, scope: !1953, file: !95, line: 144, type: !1911)
!1958 = !DILocalVariable(name: "c", arg: 2, scope: !1953, file: !95, line: 144, type: !12)
!1959 = !DILocalVariable(name: "i", arg: 3, scope: !1953, file: !95, line: 144, type: !20)
!1960 = !DILocalVariable(name: "uc", scope: !1953, file: !95, line: 146, type: !489)
!1961 = !DILocalVariable(name: "p", scope: !1953, file: !95, line: 147, type: !1962)
!1962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!1963 = !DILocalVariable(name: "shift", scope: !1953, file: !95, line: 149, type: !20)
!1964 = !DILocalVariable(name: "r", scope: !1953, file: !95, line: 150, type: !20)
!1965 = !DILocation(line: 144, column: 43, scope: !1953)
!1966 = !DILocation(line: 144, column: 51, scope: !1953)
!1967 = !DILocation(line: 144, column: 58, scope: !1953)
!1968 = !DILocation(line: 146, column: 17, scope: !1953)
!1969 = !DILocation(line: 148, column: 6, scope: !1953)
!1970 = !DILocation(line: 148, column: 62, scope: !1971)
!1971 = !DILexicalBlockFile(scope: !1953, file: !95, discriminator: 3)
!1972 = !DILocation(line: 148, column: 57, scope: !1971)
!1973 = !DILocation(line: 147, column: 17, scope: !1953)
!1974 = !DILocation(line: 149, column: 18, scope: !1953)
!1975 = !DILocation(line: 149, column: 15, scope: !1953)
!1976 = !DILocation(line: 149, column: 7, scope: !1953)
!1977 = !DILocation(line: 150, column: 12, scope: !1953)
!1978 = !DILocation(line: 150, column: 15, scope: !1953)
!1979 = !DILocation(line: 150, column: 25, scope: !1953)
!1980 = !DILocation(line: 150, column: 7, scope: !1953)
!1981 = !DILocation(line: 151, column: 13, scope: !1953)
!1982 = !DILocation(line: 151, column: 18, scope: !1953)
!1983 = !DILocation(line: 151, column: 23, scope: !1953)
!1984 = !DILocation(line: 151, column: 6, scope: !1953)
!1985 = !DILocation(line: 152, column: 3, scope: !1953)
!1986 = distinct !DISubprogram(name: "set_quoting_flags", scope: !95, file: !95, line: 160, type: !1987, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !50, variables: !1989)
!1987 = !DISubroutineType(types: !1988)
!1988 = !{!20, !1911, !20}
!1989 = !{!1990, !1991, !1992}
!1990 = !DILocalVariable(name: "o", arg: 1, scope: !1986, file: !95, line: 160, type: !1911)
!1991 = !DILocalVariable(name: "i", arg: 2, scope: !1986, file: !95, line: 160, type: !20)
!1992 = !DILocalVariable(name: "r", scope: !1986, file: !95, line: 162, type: !20)
!1993 = !DILocation(line: 160, column: 44, scope: !1986)
!1994 = !DILocation(line: 160, column: 51, scope: !1986)
!1995 = !DILocation(line: 163, column: 8, scope: !1996)
!1996 = distinct !DILexicalBlock(scope: !1986, file: !95, line: 163, column: 7)
!1997 = !DILocation(line: 163, column: 7, scope: !1986)
!1998 = !DILocation(line: 165, column: 10, scope: !1986)
!1999 = !{!1938, !1541, i64 4}
!2000 = !DILocation(line: 162, column: 7, scope: !1986)
!2001 = !DILocation(line: 166, column: 12, scope: !1986)
!2002 = !DILocation(line: 167, column: 3, scope: !1986)
!2003 = distinct !DISubprogram(name: "set_custom_quoting", scope: !95, file: !95, line: 171, type: !2004, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !50, variables: !2006)
!2004 = !DISubroutineType(types: !2005)
!2005 = !{null, !1911, !10, !10}
!2006 = !{!2007, !2008, !2009}
!2007 = !DILocalVariable(name: "o", arg: 1, scope: !2003, file: !95, line: 171, type: !1911)
!2008 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2003, file: !95, line: 172, type: !10)
!2009 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2003, file: !95, line: 172, type: !10)
!2010 = !DILocation(line: 171, column: 45, scope: !2003)
!2011 = !DILocation(line: 172, column: 33, scope: !2003)
!2012 = !DILocation(line: 172, column: 57, scope: !2003)
!2013 = !DILocation(line: 174, column: 8, scope: !2014)
!2014 = distinct !DILexicalBlock(scope: !2003, file: !95, line: 174, column: 7)
!2015 = !DILocation(line: 174, column: 7, scope: !2003)
!2016 = !DILocation(line: 176, column: 6, scope: !2003)
!2017 = !DILocation(line: 176, column: 12, scope: !2003)
!2018 = !DILocation(line: 177, column: 8, scope: !2019)
!2019 = distinct !DILexicalBlock(scope: !2003, file: !95, line: 177, column: 7)
!2020 = !DILocation(line: 177, column: 23, scope: !2021)
!2021 = !DILexicalBlockFile(scope: !2019, file: !95, discriminator: 1)
!2022 = !DILocation(line: 177, column: 19, scope: !2019)
!2023 = !DILocation(line: 178, column: 5, scope: !2019)
!2024 = !DILocation(line: 179, column: 6, scope: !2003)
!2025 = !DILocation(line: 179, column: 17, scope: !2003)
!2026 = !{!1938, !630, i64 40}
!2027 = !DILocation(line: 180, column: 6, scope: !2003)
!2028 = !DILocation(line: 180, column: 18, scope: !2003)
!2029 = !{!1938, !630, i64 48}
!2030 = !DILocation(line: 181, column: 1, scope: !2003)
!2031 = distinct !DISubprogram(name: "quotearg_buffer", scope: !95, file: !95, line: 776, type: !2032, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !50, variables: !2034)
!2032 = !DISubroutineType(types: !2033)
!2033 = !{!89, !45, !89, !10, !89, !1929}
!2034 = !{!2035, !2036, !2037, !2038, !2039, !2040, !2041, !2042}
!2035 = !DILocalVariable(name: "buffer", arg: 1, scope: !2031, file: !95, line: 776, type: !45)
!2036 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2031, file: !95, line: 776, type: !89)
!2037 = !DILocalVariable(name: "arg", arg: 3, scope: !2031, file: !95, line: 777, type: !10)
!2038 = !DILocalVariable(name: "argsize", arg: 4, scope: !2031, file: !95, line: 777, type: !89)
!2039 = !DILocalVariable(name: "o", arg: 5, scope: !2031, file: !95, line: 778, type: !1929)
!2040 = !DILocalVariable(name: "p", scope: !2031, file: !95, line: 780, type: !1929)
!2041 = !DILocalVariable(name: "e", scope: !2031, file: !95, line: 781, type: !20)
!2042 = !DILocalVariable(name: "r", scope: !2031, file: !95, line: 782, type: !89)
!2043 = !DILocation(line: 776, column: 24, scope: !2031)
!2044 = !DILocation(line: 776, column: 39, scope: !2031)
!2045 = !DILocation(line: 777, column: 30, scope: !2031)
!2046 = !DILocation(line: 777, column: 42, scope: !2031)
!2047 = !DILocation(line: 778, column: 48, scope: !2031)
!2048 = !DILocation(line: 780, column: 37, scope: !2031)
!2049 = !DILocation(line: 780, column: 33, scope: !2031)
!2050 = !DILocation(line: 781, column: 11, scope: !2031)
!2051 = !DILocation(line: 781, column: 7, scope: !2031)
!2052 = !DILocation(line: 783, column: 43, scope: !2031)
!2053 = !DILocation(line: 783, column: 53, scope: !2031)
!2054 = !DILocation(line: 783, column: 60, scope: !2031)
!2055 = !DILocation(line: 784, column: 43, scope: !2031)
!2056 = !DILocation(line: 784, column: 58, scope: !2031)
!2057 = !DILocation(line: 782, column: 14, scope: !2031)
!2058 = !DILocation(line: 782, column: 10, scope: !2031)
!2059 = !DILocation(line: 785, column: 9, scope: !2031)
!2060 = !DILocation(line: 786, column: 3, scope: !2031)
!2061 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !95, file: !95, line: 248, type: !2062, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !50, variables: !2066)
!2062 = !DISubroutineType(types: !2063)
!2063 = !{!89, !45, !89, !10, !89, !53, !20, !2064, !10, !10}
!2064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2065, size: 64)
!2065 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !108)
!2066 = !{!2067, !2068, !2069, !2070, !2071, !2072, !2073, !2074, !2075, !2076, !2077, !2078, !2079, !2080, !2081, !2082, !2083, !2084, !2085, !2086, !2087, !2091, !2092, !2093, !2094, !2095, !2098, !2099, !2116, !2119, !2120, !2127}
!2067 = !DILocalVariable(name: "buffer", arg: 1, scope: !2061, file: !95, line: 248, type: !45)
!2068 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2061, file: !95, line: 248, type: !89)
!2069 = !DILocalVariable(name: "arg", arg: 3, scope: !2061, file: !95, line: 249, type: !10)
!2070 = !DILocalVariable(name: "argsize", arg: 4, scope: !2061, file: !95, line: 249, type: !89)
!2071 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2061, file: !95, line: 250, type: !53)
!2072 = !DILocalVariable(name: "flags", arg: 6, scope: !2061, file: !95, line: 250, type: !20)
!2073 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2061, file: !95, line: 251, type: !2064)
!2074 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2061, file: !95, line: 252, type: !10)
!2075 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2061, file: !95, line: 253, type: !10)
!2076 = !DILocalVariable(name: "i", scope: !2061, file: !95, line: 255, type: !89)
!2077 = !DILocalVariable(name: "len", scope: !2061, file: !95, line: 256, type: !89)
!2078 = !DILocalVariable(name: "orig_buffersize", scope: !2061, file: !95, line: 257, type: !89)
!2079 = !DILocalVariable(name: "quote_string", scope: !2061, file: !95, line: 258, type: !10)
!2080 = !DILocalVariable(name: "quote_string_len", scope: !2061, file: !95, line: 259, type: !89)
!2081 = !DILocalVariable(name: "backslash_escapes", scope: !2061, file: !95, line: 260, type: !9)
!2082 = !DILocalVariable(name: "unibyte_locale", scope: !2061, file: !95, line: 261, type: !9)
!2083 = !DILocalVariable(name: "elide_outer_quotes", scope: !2061, file: !95, line: 262, type: !9)
!2084 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2061, file: !95, line: 263, type: !9)
!2085 = !DILocalVariable(name: "encountered_single_quote", scope: !2061, file: !95, line: 264, type: !9)
!2086 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2061, file: !95, line: 265, type: !9)
!2087 = !DILocalVariable(name: "c", scope: !2088, file: !95, line: 394, type: !489)
!2088 = distinct !DILexicalBlock(scope: !2089, file: !95, line: 393, column: 5)
!2089 = distinct !DILexicalBlock(scope: !2090, file: !95, line: 392, column: 3)
!2090 = distinct !DILexicalBlock(scope: !2061, file: !95, line: 392, column: 3)
!2091 = !DILocalVariable(name: "esc", scope: !2088, file: !95, line: 395, type: !489)
!2092 = !DILocalVariable(name: "is_right_quote", scope: !2088, file: !95, line: 396, type: !9)
!2093 = !DILocalVariable(name: "escaping", scope: !2088, file: !95, line: 397, type: !9)
!2094 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2088, file: !95, line: 398, type: !9)
!2095 = !DILocalVariable(name: "m", scope: !2096, file: !95, line: 602, type: !89)
!2096 = distinct !DILexicalBlock(scope: !2097, file: !95, line: 600, column: 11)
!2097 = distinct !DILexicalBlock(scope: !2088, file: !95, line: 418, column: 9)
!2098 = !DILocalVariable(name: "printable", scope: !2096, file: !95, line: 604, type: !9)
!2099 = !DILocalVariable(name: "mbstate", scope: !2100, file: !95, line: 613, type: !2102)
!2100 = distinct !DILexicalBlock(scope: !2101, file: !95, line: 612, column: 15)
!2101 = distinct !DILexicalBlock(scope: !2096, file: !95, line: 606, column: 17)
!2102 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2103, line: 107, baseType: !2104)
!2103 = !DIFile(filename: "/usr/include/wchar.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2104 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2103, line: 95, baseType: !2105)
!2105 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2103, line: 83, size: 64, elements: !2106)
!2106 = !{!2107, !2108}
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2105, file: !2103, line: 85, baseType: !20, size: 32)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2105, file: !2103, line: 94, baseType: !2109, size: 32, offset: 32)
!2109 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2105, file: !2103, line: 86, size: 32, elements: !2110)
!2110 = !{!2111, !2112}
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2109, file: !2103, line: 89, baseType: !108, size: 32)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2109, file: !2103, line: 93, baseType: !2113, size: 32)
!2113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 32, elements: !2114)
!2114 = !{!2115}
!2115 = !DISubrange(count: 4)
!2116 = !DILocalVariable(name: "w", scope: !2117, file: !95, line: 623, type: !2118)
!2117 = distinct !DILexicalBlock(scope: !2100, file: !95, line: 622, column: 19)
!2118 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !90, line: 90, baseType: !20)
!2119 = !DILocalVariable(name: "bytes", scope: !2117, file: !95, line: 624, type: !89)
!2120 = !DILocalVariable(name: "j", scope: !2121, file: !95, line: 649, type: !89)
!2121 = distinct !DILexicalBlock(scope: !2122, file: !95, line: 648, column: 27)
!2122 = distinct !DILexicalBlock(scope: !2123, file: !95, line: 646, column: 29)
!2123 = distinct !DILexicalBlock(scope: !2124, file: !95, line: 641, column: 23)
!2124 = distinct !DILexicalBlock(scope: !2125, file: !95, line: 633, column: 30)
!2125 = distinct !DILexicalBlock(scope: !2126, file: !95, line: 628, column: 30)
!2126 = distinct !DILexicalBlock(scope: !2117, file: !95, line: 626, column: 25)
!2127 = !DILocalVariable(name: "ilim", scope: !2128, file: !95, line: 676, type: !89)
!2128 = distinct !DILexicalBlock(scope: !2129, file: !95, line: 673, column: 15)
!2129 = distinct !DILexicalBlock(scope: !2096, file: !95, line: 672, column: 17)
!2130 = !DILocation(line: 248, column: 33, scope: !2061)
!2131 = !DILocation(line: 248, column: 48, scope: !2061)
!2132 = !DILocation(line: 249, column: 39, scope: !2061)
!2133 = !DILocation(line: 249, column: 51, scope: !2061)
!2134 = !DILocation(line: 250, column: 46, scope: !2061)
!2135 = !DILocation(line: 250, column: 65, scope: !2061)
!2136 = !DILocation(line: 251, column: 47, scope: !2061)
!2137 = !DILocation(line: 252, column: 39, scope: !2061)
!2138 = !DILocation(line: 253, column: 39, scope: !2061)
!2139 = !DILocation(line: 256, column: 10, scope: !2061)
!2140 = !DILocation(line: 257, column: 10, scope: !2061)
!2141 = !DILocation(line: 258, column: 15, scope: !2061)
!2142 = !DILocation(line: 259, column: 10, scope: !2061)
!2143 = !DILocation(line: 260, column: 8, scope: !2061)
!2144 = !DILocation(line: 261, column: 25, scope: !2061)
!2145 = !DILocation(line: 261, column: 36, scope: !2061)
!2146 = !DILocation(line: 262, column: 8, scope: !2061)
!2147 = !DILocation(line: 263, column: 8, scope: !2061)
!2148 = !DILocation(line: 264, column: 8, scope: !2061)
!2149 = !DILocation(line: 265, column: 8, scope: !2061)
!2150 = !DILocation(line: 265, column: 3, scope: !2061)
!2151 = !DILocation(line: 308, column: 3, scope: !2061)
!2152 = !DILocation(line: 315, column: 11, scope: !2153)
!2153 = distinct !DILexicalBlock(scope: !2061, file: !95, line: 309, column: 5)
!2154 = !DILocation(line: 315, column: 12, scope: !2155)
!2155 = distinct !DILexicalBlock(scope: !2153, file: !95, line: 315, column: 11)
!2156 = !DILocation(line: 316, column: 9, scope: !2157)
!2157 = !DILexicalBlockFile(scope: !2158, file: !95, discriminator: 1)
!2158 = distinct !DILexicalBlock(scope: !2159, file: !95, line: 316, column: 9)
!2159 = distinct !DILexicalBlock(scope: !2155, file: !95, line: 316, column: 9)
!2160 = !DILocation(line: 316, column: 9, scope: !2161)
!2161 = !DILexicalBlockFile(scope: !2159, file: !95, discriminator: 1)
!2162 = !DILocation(line: 316, column: 9, scope: !2163)
!2163 = !DILexicalBlockFile(scope: !2158, file: !95, discriminator: 2)
!2164 = !DILocation(line: 354, column: 26, scope: !2165)
!2165 = distinct !DILexicalBlock(scope: !2166, file: !95, line: 332, column: 11)
!2166 = distinct !DILexicalBlock(scope: !2167, file: !95, line: 331, column: 13)
!2167 = distinct !DILexicalBlock(scope: !2153, file: !95, line: 330, column: 7)
!2168 = !DILocation(line: 355, column: 27, scope: !2165)
!2169 = !DILocation(line: 356, column: 11, scope: !2165)
!2170 = !DILocation(line: 357, column: 14, scope: !2171)
!2171 = distinct !DILexicalBlock(scope: !2167, file: !95, line: 357, column: 13)
!2172 = !DILocation(line: 357, column: 13, scope: !2167)
!2173 = !DILocation(line: 358, column: 43, scope: !2174)
!2174 = !DILexicalBlockFile(scope: !2175, file: !95, discriminator: 1)
!2175 = distinct !DILexicalBlock(scope: !2176, file: !95, line: 358, column: 11)
!2176 = distinct !DILexicalBlock(scope: !2171, file: !95, line: 358, column: 11)
!2177 = !DILocation(line: 358, column: 11, scope: !2178)
!2178 = !DILexicalBlockFile(scope: !2176, file: !95, discriminator: 1)
!2179 = !DILocation(line: 359, column: 13, scope: !2180)
!2180 = !DILexicalBlockFile(scope: !2181, file: !95, discriminator: 1)
!2181 = distinct !DILexicalBlock(scope: !2182, file: !95, line: 359, column: 13)
!2182 = distinct !DILexicalBlock(scope: !2175, file: !95, line: 359, column: 13)
!2183 = !DILocation(line: 359, column: 13, scope: !2184)
!2184 = !DILexicalBlockFile(scope: !2182, file: !95, discriminator: 1)
!2185 = !DILocation(line: 359, column: 13, scope: !2186)
!2186 = !DILexicalBlockFile(scope: !2181, file: !95, discriminator: 2)
!2187 = !DILocation(line: 359, column: 13, scope: !2188)
!2188 = !DILexicalBlockFile(scope: !2182, file: !95, discriminator: 3)
!2189 = !DILocation(line: 358, column: 70, scope: !2190)
!2190 = !DILexicalBlockFile(scope: !2175, file: !95, discriminator: 2)
!2191 = distinct !{!2191, !2192, !2193}
!2192 = !DILocation(line: 358, column: 11, scope: !2176)
!2193 = !DILocation(line: 359, column: 13, scope: !2176)
!2194 = !DILocation(line: 362, column: 28, scope: !2167)
!2195 = !DILocation(line: 364, column: 7, scope: !2153)
!2196 = !DILocation(line: 367, column: 7, scope: !2153)
!2197 = !DILocation(line: 370, column: 7, scope: !2153)
!2198 = !DILocation(line: 373, column: 12, scope: !2199)
!2199 = distinct !DILexicalBlock(scope: !2153, file: !95, line: 373, column: 11)
!2200 = !DILocation(line: 373, column: 11, scope: !2153)
!2201 = !DILocation(line: 378, column: 12, scope: !2202)
!2202 = distinct !DILexicalBlock(scope: !2153, file: !95, line: 378, column: 11)
!2203 = !DILocation(line: 378, column: 11, scope: !2153)
!2204 = !DILocation(line: 379, column: 9, scope: !2205)
!2205 = !DILexicalBlockFile(scope: !2206, file: !95, discriminator: 1)
!2206 = distinct !DILexicalBlock(scope: !2207, file: !95, line: 379, column: 9)
!2207 = distinct !DILexicalBlock(scope: !2202, file: !95, line: 379, column: 9)
!2208 = !DILocation(line: 379, column: 9, scope: !2209)
!2209 = !DILexicalBlockFile(scope: !2207, file: !95, discriminator: 1)
!2210 = !DILocation(line: 379, column: 9, scope: !2211)
!2211 = !DILexicalBlockFile(scope: !2206, file: !95, discriminator: 2)
!2212 = !DILocation(line: 386, column: 7, scope: !2153)
!2213 = !DILocation(line: 389, column: 7, scope: !2153)
!2214 = !DILocation(line: 255, column: 10, scope: !2061)
!2215 = !DILocation(line: 392, column: 8, scope: !2090)
!2216 = !DILocation(line: 392, column: 27, scope: !2217)
!2217 = !DILexicalBlockFile(scope: !2089, file: !95, discriminator: 1)
!2218 = !DILocation(line: 392, column: 19, scope: !2217)
!2219 = !DILocation(line: 392, column: 60, scope: !2220)
!2220 = !DILexicalBlockFile(scope: !2089, file: !95, discriminator: 3)
!2221 = !DILocation(line: 392, column: 3, scope: !2222)
!2222 = !DILexicalBlockFile(scope: !2090, file: !95, discriminator: 4)
!2223 = !DILocation(line: 392, column: 41, scope: !2224)
!2224 = !DILexicalBlockFile(scope: !2089, file: !95, discriminator: 2)
!2225 = !DILocation(line: 392, column: 48, scope: !2224)
!2226 = !DILocation(line: 396, column: 12, scope: !2088)
!2227 = !DILocation(line: 397, column: 12, scope: !2088)
!2228 = !DILocation(line: 398, column: 12, scope: !2088)
!2229 = !DILocation(line: 401, column: 11, scope: !2230)
!2230 = distinct !DILexicalBlock(scope: !2088, file: !95, line: 400, column: 11)
!2231 = !DILocation(line: 403, column: 17, scope: !2232)
!2232 = !DILexicalBlockFile(scope: !2230, file: !95, discriminator: 1)
!2233 = !DILocation(line: 404, column: 39, scope: !2230)
!2234 = !DILocation(line: 408, column: 32, scope: !2230)
!2235 = !DILocation(line: 404, column: 19, scope: !2236)
!2236 = !DILexicalBlockFile(scope: !2230, file: !95, discriminator: 2)
!2237 = !DILocation(line: 404, column: 15, scope: !2238)
!2238 = !DILexicalBlockFile(scope: !2230, file: !95, discriminator: 4)
!2239 = !DILocation(line: 409, column: 11, scope: !2230)
!2240 = !DILocation(line: 409, column: 26, scope: !2232)
!2241 = !DILocation(line: 409, column: 14, scope: !2232)
!2242 = !DILocation(line: 400, column: 11, scope: !2243)
!2243 = !DILexicalBlockFile(scope: !2088, file: !95, discriminator: 1)
!2244 = !DILocation(line: 416, column: 11, scope: !2088)
!2245 = !DILocation(line: 394, column: 21, scope: !2088)
!2246 = !DILocation(line: 417, column: 7, scope: !2088)
!2247 = !DILocation(line: 420, column: 15, scope: !2097)
!2248 = !DILocation(line: 422, column: 15, scope: !2249)
!2249 = !DILexicalBlockFile(scope: !2250, file: !95, discriminator: 1)
!2250 = distinct !DILexicalBlock(scope: !2251, file: !95, line: 422, column: 15)
!2251 = distinct !DILexicalBlock(scope: !2252, file: !95, line: 421, column: 13)
!2252 = distinct !DILexicalBlock(scope: !2097, file: !95, line: 420, column: 15)
!2253 = !DILocation(line: 422, column: 15, scope: !2254)
!2254 = !DILexicalBlockFile(scope: !2255, file: !95, discriminator: 4)
!2255 = distinct !DILexicalBlock(scope: !2250, file: !95, line: 422, column: 15)
!2256 = !DILocation(line: 422, column: 15, scope: !2257)
!2257 = !DILexicalBlockFile(scope: !2255, file: !95, discriminator: 3)
!2258 = !DILocation(line: 422, column: 15, scope: !2259)
!2259 = !DILexicalBlockFile(scope: !2260, file: !95, discriminator: 6)
!2260 = distinct !DILexicalBlock(scope: !2261, file: !95, line: 422, column: 15)
!2261 = distinct !DILexicalBlock(scope: !2262, file: !95, line: 422, column: 15)
!2262 = distinct !DILexicalBlock(scope: !2255, file: !95, line: 422, column: 15)
!2263 = !DILocation(line: 422, column: 15, scope: !2264)
!2264 = !DILexicalBlockFile(scope: !2261, file: !95, discriminator: 6)
!2265 = !DILocation(line: 422, column: 15, scope: !2266)
!2266 = !DILexicalBlockFile(scope: !2260, file: !95, discriminator: 7)
!2267 = !DILocation(line: 422, column: 15, scope: !2268)
!2268 = !DILexicalBlockFile(scope: !2261, file: !95, discriminator: 8)
!2269 = !DILocation(line: 422, column: 15, scope: !2270)
!2270 = !DILexicalBlockFile(scope: !2271, file: !95, discriminator: 11)
!2271 = distinct !DILexicalBlock(scope: !2272, file: !95, line: 422, column: 15)
!2272 = distinct !DILexicalBlock(scope: !2262, file: !95, line: 422, column: 15)
!2273 = !DILocation(line: 422, column: 15, scope: !2274)
!2274 = !DILexicalBlockFile(scope: !2272, file: !95, discriminator: 11)
!2275 = !DILocation(line: 422, column: 15, scope: !2276)
!2276 = !DILexicalBlockFile(scope: !2271, file: !95, discriminator: 12)
!2277 = !DILocation(line: 422, column: 15, scope: !2278)
!2278 = !DILexicalBlockFile(scope: !2272, file: !95, discriminator: 13)
!2279 = !DILocation(line: 422, column: 15, scope: !2280)
!2280 = !DILexicalBlockFile(scope: !2281, file: !95, discriminator: 16)
!2281 = distinct !DILexicalBlock(scope: !2282, file: !95, line: 422, column: 15)
!2282 = distinct !DILexicalBlock(scope: !2262, file: !95, line: 422, column: 15)
!2283 = !DILocation(line: 422, column: 15, scope: !2284)
!2284 = !DILexicalBlockFile(scope: !2282, file: !95, discriminator: 16)
!2285 = !DILocation(line: 422, column: 15, scope: !2286)
!2286 = !DILexicalBlockFile(scope: !2281, file: !95, discriminator: 17)
!2287 = !DILocation(line: 422, column: 15, scope: !2288)
!2288 = !DILexicalBlockFile(scope: !2282, file: !95, discriminator: 18)
!2289 = !DILocation(line: 422, column: 15, scope: !2290)
!2290 = !DILexicalBlockFile(scope: !2262, file: !95, discriminator: 20)
!2291 = !DILocation(line: 422, column: 15, scope: !2292)
!2292 = !DILexicalBlockFile(scope: !2293, file: !95, discriminator: 22)
!2293 = distinct !DILexicalBlock(scope: !2294, file: !95, line: 422, column: 15)
!2294 = distinct !DILexicalBlock(scope: !2250, file: !95, line: 422, column: 15)
!2295 = !DILocation(line: 422, column: 15, scope: !2296)
!2296 = !DILexicalBlockFile(scope: !2294, file: !95, discriminator: 22)
!2297 = !DILocation(line: 422, column: 15, scope: !2298)
!2298 = !DILexicalBlockFile(scope: !2293, file: !95, discriminator: 23)
!2299 = !DILocation(line: 422, column: 15, scope: !2300)
!2300 = !DILexicalBlockFile(scope: !2294, file: !95, discriminator: 24)
!2301 = !DILocation(line: 430, column: 19, scope: !2302)
!2302 = distinct !DILexicalBlock(scope: !2251, file: !95, line: 429, column: 19)
!2303 = !DILocation(line: 430, column: 24, scope: !2304)
!2304 = !DILexicalBlockFile(scope: !2302, file: !95, discriminator: 1)
!2305 = !DILocation(line: 430, column: 28, scope: !2304)
!2306 = !DILocation(line: 430, column: 38, scope: !2304)
!2307 = !DILocation(line: 430, column: 48, scope: !2308)
!2308 = !DILexicalBlockFile(scope: !2302, file: !95, discriminator: 2)
!2309 = !DILocation(line: 430, column: 59, scope: !2308)
!2310 = !DILocation(line: 432, column: 19, scope: !2311)
!2311 = !DILexicalBlockFile(scope: !2312, file: !95, discriminator: 1)
!2312 = distinct !DILexicalBlock(scope: !2313, file: !95, line: 432, column: 19)
!2313 = distinct !DILexicalBlock(scope: !2314, file: !95, line: 432, column: 19)
!2314 = distinct !DILexicalBlock(scope: !2302, file: !95, line: 431, column: 17)
!2315 = !DILocation(line: 432, column: 19, scope: !2316)
!2316 = !DILexicalBlockFile(scope: !2313, file: !95, discriminator: 1)
!2317 = !DILocation(line: 432, column: 19, scope: !2318)
!2318 = !DILexicalBlockFile(scope: !2312, file: !95, discriminator: 2)
!2319 = !DILocation(line: 432, column: 19, scope: !2320)
!2320 = !DILexicalBlockFile(scope: !2313, file: !95, discriminator: 3)
!2321 = !DILocation(line: 433, column: 19, scope: !2322)
!2322 = !DILexicalBlockFile(scope: !2323, file: !95, discriminator: 1)
!2323 = distinct !DILexicalBlock(scope: !2324, file: !95, line: 433, column: 19)
!2324 = distinct !DILexicalBlock(scope: !2314, file: !95, line: 433, column: 19)
!2325 = !DILocation(line: 433, column: 19, scope: !2326)
!2326 = !DILexicalBlockFile(scope: !2324, file: !95, discriminator: 1)
!2327 = !DILocation(line: 433, column: 19, scope: !2328)
!2328 = !DILexicalBlockFile(scope: !2323, file: !95, discriminator: 2)
!2329 = !DILocation(line: 433, column: 19, scope: !2330)
!2330 = !DILexicalBlockFile(scope: !2324, file: !95, discriminator: 3)
!2331 = !DILocation(line: 434, column: 17, scope: !2314)
!2332 = !DILocation(line: 441, column: 20, scope: !2252)
!2333 = !DILocation(line: 446, column: 11, scope: !2097)
!2334 = !DILocation(line: 449, column: 19, scope: !2335)
!2335 = distinct !DILexicalBlock(scope: !2097, file: !95, line: 447, column: 13)
!2336 = !DILocation(line: 455, column: 19, scope: !2337)
!2337 = distinct !DILexicalBlock(scope: !2335, file: !95, line: 454, column: 19)
!2338 = !DILocation(line: 455, column: 24, scope: !2339)
!2339 = !DILexicalBlockFile(scope: !2337, file: !95, discriminator: 1)
!2340 = !DILocation(line: 455, column: 28, scope: !2339)
!2341 = !DILocation(line: 455, column: 38, scope: !2339)
!2342 = !DILocation(line: 455, column: 47, scope: !2343)
!2343 = !DILexicalBlockFile(scope: !2337, file: !95, discriminator: 2)
!2344 = !DILocation(line: 455, column: 41, scope: !2343)
!2345 = !DILocation(line: 455, column: 52, scope: !2343)
!2346 = !DILocation(line: 454, column: 19, scope: !2347)
!2347 = !DILexicalBlockFile(scope: !2335, file: !95, discriminator: 1)
!2348 = !DILocation(line: 456, column: 25, scope: !2337)
!2349 = !DILocation(line: 456, column: 17, scope: !2337)
!2350 = !DILocation(line: 463, column: 25, scope: !2351)
!2351 = distinct !DILexicalBlock(scope: !2337, file: !95, line: 457, column: 19)
!2352 = !DILocation(line: 467, column: 21, scope: !2353)
!2353 = !DILexicalBlockFile(scope: !2354, file: !95, discriminator: 1)
!2354 = distinct !DILexicalBlock(scope: !2355, file: !95, line: 467, column: 21)
!2355 = distinct !DILexicalBlock(scope: !2351, file: !95, line: 467, column: 21)
!2356 = !DILocation(line: 467, column: 21, scope: !2357)
!2357 = !DILexicalBlockFile(scope: !2355, file: !95, discriminator: 1)
!2358 = !DILocation(line: 467, column: 21, scope: !2359)
!2359 = !DILexicalBlockFile(scope: !2354, file: !95, discriminator: 2)
!2360 = !DILocation(line: 467, column: 21, scope: !2361)
!2361 = !DILexicalBlockFile(scope: !2355, file: !95, discriminator: 3)
!2362 = !DILocation(line: 468, column: 21, scope: !2363)
!2363 = !DILexicalBlockFile(scope: !2364, file: !95, discriminator: 1)
!2364 = distinct !DILexicalBlock(scope: !2365, file: !95, line: 468, column: 21)
!2365 = distinct !DILexicalBlock(scope: !2351, file: !95, line: 468, column: 21)
!2366 = !DILocation(line: 468, column: 21, scope: !2367)
!2367 = !DILexicalBlockFile(scope: !2365, file: !95, discriminator: 1)
!2368 = !DILocation(line: 468, column: 21, scope: !2369)
!2369 = !DILexicalBlockFile(scope: !2364, file: !95, discriminator: 2)
!2370 = !DILocation(line: 468, column: 21, scope: !2371)
!2371 = !DILexicalBlockFile(scope: !2365, file: !95, discriminator: 3)
!2372 = !DILocation(line: 469, column: 21, scope: !2373)
!2373 = !DILexicalBlockFile(scope: !2374, file: !95, discriminator: 1)
!2374 = distinct !DILexicalBlock(scope: !2375, file: !95, line: 469, column: 21)
!2375 = distinct !DILexicalBlock(scope: !2351, file: !95, line: 469, column: 21)
!2376 = !DILocation(line: 469, column: 21, scope: !2377)
!2377 = !DILexicalBlockFile(scope: !2375, file: !95, discriminator: 1)
!2378 = !DILocation(line: 469, column: 21, scope: !2379)
!2379 = !DILexicalBlockFile(scope: !2374, file: !95, discriminator: 2)
!2380 = !DILocation(line: 469, column: 21, scope: !2381)
!2381 = !DILexicalBlockFile(scope: !2375, file: !95, discriminator: 3)
!2382 = !DILocation(line: 470, column: 21, scope: !2383)
!2383 = !DILexicalBlockFile(scope: !2384, file: !95, discriminator: 1)
!2384 = distinct !DILexicalBlock(scope: !2385, file: !95, line: 470, column: 21)
!2385 = distinct !DILexicalBlock(scope: !2351, file: !95, line: 470, column: 21)
!2386 = !DILocation(line: 470, column: 21, scope: !2387)
!2387 = !DILexicalBlockFile(scope: !2385, file: !95, discriminator: 1)
!2388 = !DILocation(line: 470, column: 21, scope: !2389)
!2389 = !DILexicalBlockFile(scope: !2384, file: !95, discriminator: 2)
!2390 = !DILocation(line: 470, column: 21, scope: !2391)
!2391 = !DILexicalBlockFile(scope: !2385, file: !95, discriminator: 3)
!2392 = !DILocation(line: 471, column: 21, scope: !2351)
!2393 = !DILocation(line: 395, column: 21, scope: !2088)
!2394 = !DILocation(line: 484, column: 31, scope: !2097)
!2395 = !DILocation(line: 485, column: 31, scope: !2097)
!2396 = !DILocation(line: 487, column: 31, scope: !2097)
!2397 = !DILocation(line: 488, column: 31, scope: !2097)
!2398 = !DILocation(line: 489, column: 31, scope: !2097)
!2399 = !DILocation(line: 492, column: 15, scope: !2097)
!2400 = !DILocation(line: 494, column: 19, scope: !2401)
!2401 = distinct !DILexicalBlock(scope: !2402, file: !95, line: 493, column: 13)
!2402 = distinct !DILexicalBlock(scope: !2097, file: !95, line: 492, column: 15)
!2403 = !DILocation(line: 501, column: 33, scope: !2404)
!2404 = distinct !DILexicalBlock(scope: !2097, file: !95, line: 501, column: 15)
!2405 = !DILocation(line: 506, column: 15, scope: !2406)
!2406 = distinct !DILexicalBlock(scope: !2097, file: !95, line: 505, column: 15)
!2407 = !DILocation(line: 510, column: 15, scope: !2097)
!2408 = !DILocation(line: 518, column: 26, scope: !2409)
!2409 = distinct !DILexicalBlock(scope: !2097, file: !95, line: 518, column: 15)
!2410 = !DILocation(line: 518, column: 15, scope: !2097)
!2411 = !DILocation(line: 518, column: 40, scope: !2412)
!2412 = !DILexicalBlockFile(scope: !2409, file: !95, discriminator: 1)
!2413 = !DILocation(line: 518, column: 47, scope: !2412)
!2414 = !DILocation(line: 522, column: 17, scope: !2415)
!2415 = distinct !DILexicalBlock(scope: !2097, file: !95, line: 522, column: 15)
!2416 = !DILocation(line: 518, column: 18, scope: !2412)
!2417 = !DILocation(line: 518, column: 65, scope: !2418)
!2418 = !DILexicalBlockFile(scope: !2409, file: !95, discriminator: 2)
!2419 = !DILocation(line: 518, column: 15, scope: !2420)
!2420 = !DILexicalBlockFile(scope: !2097, file: !95, discriminator: 2)
!2421 = !DILocation(line: 522, column: 15, scope: !2097)
!2422 = !DILocation(line: 526, column: 11, scope: !2097)
!2423 = !DILocation(line: 541, column: 15, scope: !2424)
!2424 = distinct !DILexicalBlock(scope: !2097, file: !95, line: 540, column: 15)
!2425 = !DILocation(line: 548, column: 15, scope: !2097)
!2426 = !DILocation(line: 550, column: 19, scope: !2427)
!2427 = distinct !DILexicalBlock(scope: !2428, file: !95, line: 549, column: 13)
!2428 = distinct !DILexicalBlock(scope: !2097, file: !95, line: 548, column: 15)
!2429 = !DILocation(line: 553, column: 19, scope: !2430)
!2430 = distinct !DILexicalBlock(scope: !2427, file: !95, line: 553, column: 19)
!2431 = !DILocation(line: 553, column: 35, scope: !2432)
!2432 = !DILexicalBlockFile(scope: !2430, file: !95, discriminator: 1)
!2433 = !DILocation(line: 553, column: 30, scope: !2430)
!2434 = !DILocation(line: 562, column: 15, scope: !2435)
!2435 = !DILexicalBlockFile(scope: !2436, file: !95, discriminator: 1)
!2436 = distinct !DILexicalBlock(scope: !2437, file: !95, line: 562, column: 15)
!2437 = distinct !DILexicalBlock(scope: !2427, file: !95, line: 562, column: 15)
!2438 = !DILocation(line: 562, column: 15, scope: !2439)
!2439 = !DILexicalBlockFile(scope: !2437, file: !95, discriminator: 1)
!2440 = !DILocation(line: 562, column: 15, scope: !2441)
!2441 = !DILexicalBlockFile(scope: !2436, file: !95, discriminator: 2)
!2442 = !DILocation(line: 562, column: 15, scope: !2443)
!2443 = !DILexicalBlockFile(scope: !2437, file: !95, discriminator: 3)
!2444 = !DILocation(line: 563, column: 15, scope: !2445)
!2445 = !DILexicalBlockFile(scope: !2446, file: !95, discriminator: 1)
!2446 = distinct !DILexicalBlock(scope: !2447, file: !95, line: 563, column: 15)
!2447 = distinct !DILexicalBlock(scope: !2427, file: !95, line: 563, column: 15)
!2448 = !DILocation(line: 563, column: 15, scope: !2449)
!2449 = !DILexicalBlockFile(scope: !2447, file: !95, discriminator: 1)
!2450 = !DILocation(line: 563, column: 15, scope: !2451)
!2451 = !DILexicalBlockFile(scope: !2446, file: !95, discriminator: 2)
!2452 = !DILocation(line: 563, column: 15, scope: !2453)
!2453 = !DILexicalBlockFile(scope: !2447, file: !95, discriminator: 3)
!2454 = !DILocation(line: 564, column: 15, scope: !2455)
!2455 = !DILexicalBlockFile(scope: !2456, file: !95, discriminator: 1)
!2456 = distinct !DILexicalBlock(scope: !2457, file: !95, line: 564, column: 15)
!2457 = distinct !DILexicalBlock(scope: !2427, file: !95, line: 564, column: 15)
!2458 = !DILocation(line: 564, column: 15, scope: !2459)
!2459 = !DILexicalBlockFile(scope: !2457, file: !95, discriminator: 1)
!2460 = !DILocation(line: 564, column: 15, scope: !2461)
!2461 = !DILexicalBlockFile(scope: !2456, file: !95, discriminator: 2)
!2462 = !DILocation(line: 564, column: 15, scope: !2463)
!2463 = !DILexicalBlockFile(scope: !2457, file: !95, discriminator: 3)
!2464 = !DILocation(line: 566, column: 13, scope: !2427)
!2465 = !DILocation(line: 606, column: 17, scope: !2096)
!2466 = !DILocation(line: 602, column: 20, scope: !2096)
!2467 = !DILocation(line: 609, column: 29, scope: !2468)
!2468 = distinct !DILexicalBlock(scope: !2101, file: !95, line: 607, column: 15)
!2469 = !{!2470, !2470, i64 0}
!2470 = !{!"short", !631, i64 0}
!2471 = !DILocation(line: 609, column: 27, scope: !2468)
!2472 = !DILocation(line: 604, column: 18, scope: !2096)
!2473 = !DILocation(line: 610, column: 15, scope: !2468)
!2474 = !DILocation(line: 613, column: 17, scope: !2100)
!2475 = !DILocation(line: 614, column: 17, scope: !2100)
!2476 = !DILocation(line: 618, column: 29, scope: !2477)
!2477 = distinct !DILexicalBlock(scope: !2100, file: !95, line: 618, column: 21)
!2478 = !DILocation(line: 618, column: 21, scope: !2100)
!2479 = distinct !{!2479, !2480, !2481}
!2480 = !DILocation(line: 621, column: 17, scope: !2100)
!2481 = !DILocation(line: 667, column: 44, scope: !2100)
!2482 = !DILocation(line: 619, column: 29, scope: !2477)
!2483 = !DILocation(line: 619, column: 19, scope: !2477)
!2484 = !DILocation(line: 623, column: 21, scope: !2117)
!2485 = !DILocation(line: 624, column: 56, scope: !2117)
!2486 = !DILocation(line: 624, column: 50, scope: !2117)
!2487 = !DILocation(line: 625, column: 53, scope: !2117)
!2488 = !DIExpression(DW_OP_deref)
!2489 = !DILocation(line: 613, column: 27, scope: !2100)
!2490 = !DILocation(line: 623, column: 29, scope: !2117)
!2491 = !DILocation(line: 624, column: 36, scope: !2117)
!2492 = !DILocation(line: 624, column: 28, scope: !2117)
!2493 = !DILocation(line: 626, column: 25, scope: !2117)
!2494 = !DILocation(line: 636, column: 38, scope: !2495)
!2495 = !DILexicalBlockFile(scope: !2496, file: !95, discriminator: 1)
!2496 = distinct !DILexicalBlock(scope: !2124, file: !95, line: 634, column: 23)
!2497 = !DILocation(line: 636, column: 48, scope: !2495)
!2498 = !DILocation(line: 636, column: 51, scope: !2499)
!2499 = !DILexicalBlockFile(scope: !2496, file: !95, discriminator: 2)
!2500 = !DILocation(line: 636, column: 48, scope: !2499)
!2501 = !DILocation(line: 636, column: 25, scope: !2502)
!2502 = !DILexicalBlockFile(scope: !2496, file: !95, discriminator: 3)
!2503 = !DILocation(line: 637, column: 28, scope: !2496)
!2504 = !DILocation(line: 636, column: 34, scope: !2495)
!2505 = distinct !{!2505, !2506, !2503}
!2506 = !DILocation(line: 636, column: 25, scope: !2496)
!2507 = !DILocation(line: 650, column: 43, scope: !2508)
!2508 = !DILexicalBlockFile(scope: !2509, file: !95, discriminator: 1)
!2509 = distinct !DILexicalBlock(scope: !2510, file: !95, line: 650, column: 29)
!2510 = distinct !DILexicalBlock(scope: !2121, file: !95, line: 650, column: 29)
!2511 = !DILocation(line: 647, column: 29, scope: !2122)
!2512 = !DILocation(line: 649, column: 36, scope: !2121)
!2513 = !DILocation(line: 651, column: 49, scope: !2509)
!2514 = !DILocation(line: 651, column: 39, scope: !2509)
!2515 = !DILocation(line: 651, column: 31, scope: !2509)
!2516 = !DILocation(line: 650, column: 53, scope: !2517)
!2517 = !DILexicalBlockFile(scope: !2509, file: !95, discriminator: 2)
!2518 = !DILocation(line: 650, column: 29, scope: !2519)
!2519 = !DILexicalBlockFile(scope: !2510, file: !95, discriminator: 1)
!2520 = distinct !{!2520, !2521, !2522}
!2521 = !DILocation(line: 650, column: 29, scope: !2510)
!2522 = !DILocation(line: 659, column: 33, scope: !2510)
!2523 = !DILocation(line: 666, column: 19, scope: !2100)
!2524 = !DILocation(line: 662, column: 41, scope: !2525)
!2525 = distinct !DILexicalBlock(scope: !2123, file: !95, line: 662, column: 29)
!2526 = !DILocation(line: 662, column: 31, scope: !2525)
!2527 = !DILocation(line: 662, column: 29, scope: !2123)
!2528 = !DILocation(line: 664, column: 27, scope: !2123)
!2529 = !DILocation(line: 667, column: 26, scope: !2100)
!2530 = !DILocation(line: 667, column: 24, scope: !2100)
!2531 = !DILocation(line: 666, column: 19, scope: !2532)
!2532 = !DILexicalBlockFile(scope: !2117, file: !95, discriminator: 3)
!2533 = !DILocation(line: 668, column: 15, scope: !2101)
!2534 = !DILocation(line: 670, column: 40, scope: !2096)
!2535 = !DILocation(line: 672, column: 19, scope: !2129)
!2536 = !DILocation(line: 672, column: 45, scope: !2537)
!2537 = !DILexicalBlockFile(scope: !2129, file: !95, discriminator: 1)
!2538 = !DILocation(line: 672, column: 23, scope: !2129)
!2539 = !DILocation(line: 676, column: 33, scope: !2128)
!2540 = !DILocation(line: 676, column: 24, scope: !2128)
!2541 = !DILocation(line: 678, column: 17, scope: !2128)
!2542 = !DILocation(line: 680, column: 43, scope: !2543)
!2543 = distinct !DILexicalBlock(scope: !2544, file: !95, line: 680, column: 25)
!2544 = distinct !DILexicalBlock(scope: !2545, file: !95, line: 679, column: 19)
!2545 = distinct !DILexicalBlock(scope: !2546, file: !95, line: 678, column: 17)
!2546 = distinct !DILexicalBlock(scope: !2128, file: !95, line: 678, column: 17)
!2547 = !DILocation(line: 682, column: 25, scope: !2548)
!2548 = !DILexicalBlockFile(scope: !2549, file: !95, discriminator: 1)
!2549 = distinct !DILexicalBlock(scope: !2550, file: !95, line: 682, column: 25)
!2550 = distinct !DILexicalBlock(scope: !2543, file: !95, line: 681, column: 23)
!2551 = !DILocation(line: 682, column: 25, scope: !2552)
!2552 = !DILexicalBlockFile(scope: !2553, file: !95, discriminator: 4)
!2553 = distinct !DILexicalBlock(scope: !2549, file: !95, line: 682, column: 25)
!2554 = !DILocation(line: 682, column: 25, scope: !2555)
!2555 = !DILexicalBlockFile(scope: !2553, file: !95, discriminator: 3)
!2556 = !DILocation(line: 682, column: 25, scope: !2557)
!2557 = !DILexicalBlockFile(scope: !2558, file: !95, discriminator: 6)
!2558 = distinct !DILexicalBlock(scope: !2559, file: !95, line: 682, column: 25)
!2559 = distinct !DILexicalBlock(scope: !2560, file: !95, line: 682, column: 25)
!2560 = distinct !DILexicalBlock(scope: !2553, file: !95, line: 682, column: 25)
!2561 = !DILocation(line: 682, column: 25, scope: !2562)
!2562 = !DILexicalBlockFile(scope: !2559, file: !95, discriminator: 6)
!2563 = !DILocation(line: 682, column: 25, scope: !2564)
!2564 = !DILexicalBlockFile(scope: !2558, file: !95, discriminator: 7)
!2565 = !DILocation(line: 682, column: 25, scope: !2566)
!2566 = !DILexicalBlockFile(scope: !2559, file: !95, discriminator: 8)
!2567 = !DILocation(line: 682, column: 25, scope: !2568)
!2568 = !DILexicalBlockFile(scope: !2569, file: !95, discriminator: 11)
!2569 = distinct !DILexicalBlock(scope: !2570, file: !95, line: 682, column: 25)
!2570 = distinct !DILexicalBlock(scope: !2560, file: !95, line: 682, column: 25)
!2571 = !DILocation(line: 682, column: 25, scope: !2572)
!2572 = !DILexicalBlockFile(scope: !2570, file: !95, discriminator: 11)
!2573 = !DILocation(line: 682, column: 25, scope: !2574)
!2574 = !DILexicalBlockFile(scope: !2569, file: !95, discriminator: 12)
!2575 = !DILocation(line: 682, column: 25, scope: !2576)
!2576 = !DILexicalBlockFile(scope: !2570, file: !95, discriminator: 13)
!2577 = !DILocation(line: 682, column: 25, scope: !2578)
!2578 = !DILexicalBlockFile(scope: !2579, file: !95, discriminator: 16)
!2579 = distinct !DILexicalBlock(scope: !2580, file: !95, line: 682, column: 25)
!2580 = distinct !DILexicalBlock(scope: !2560, file: !95, line: 682, column: 25)
!2581 = !DILocation(line: 682, column: 25, scope: !2582)
!2582 = !DILexicalBlockFile(scope: !2580, file: !95, discriminator: 16)
!2583 = !DILocation(line: 682, column: 25, scope: !2584)
!2584 = !DILexicalBlockFile(scope: !2579, file: !95, discriminator: 17)
!2585 = !DILocation(line: 682, column: 25, scope: !2586)
!2586 = !DILexicalBlockFile(scope: !2580, file: !95, discriminator: 18)
!2587 = !DILocation(line: 682, column: 25, scope: !2588)
!2588 = !DILexicalBlockFile(scope: !2560, file: !95, discriminator: 20)
!2589 = !DILocation(line: 682, column: 25, scope: !2590)
!2590 = !DILexicalBlockFile(scope: !2591, file: !95, discriminator: 22)
!2591 = distinct !DILexicalBlock(scope: !2592, file: !95, line: 682, column: 25)
!2592 = distinct !DILexicalBlock(scope: !2549, file: !95, line: 682, column: 25)
!2593 = !DILocation(line: 682, column: 25, scope: !2594)
!2594 = !DILexicalBlockFile(scope: !2592, file: !95, discriminator: 22)
!2595 = !DILocation(line: 682, column: 25, scope: !2596)
!2596 = !DILexicalBlockFile(scope: !2591, file: !95, discriminator: 23)
!2597 = !DILocation(line: 682, column: 25, scope: !2598)
!2598 = !DILexicalBlockFile(scope: !2592, file: !95, discriminator: 24)
!2599 = !DILocation(line: 683, column: 25, scope: !2600)
!2600 = !DILexicalBlockFile(scope: !2601, file: !95, discriminator: 1)
!2601 = distinct !DILexicalBlock(scope: !2602, file: !95, line: 683, column: 25)
!2602 = distinct !DILexicalBlock(scope: !2550, file: !95, line: 683, column: 25)
!2603 = !DILocation(line: 683, column: 25, scope: !2604)
!2604 = !DILexicalBlockFile(scope: !2602, file: !95, discriminator: 1)
!2605 = !DILocation(line: 683, column: 25, scope: !2606)
!2606 = !DILexicalBlockFile(scope: !2601, file: !95, discriminator: 2)
!2607 = !DILocation(line: 683, column: 25, scope: !2608)
!2608 = !DILexicalBlockFile(scope: !2602, file: !95, discriminator: 3)
!2609 = !DILocation(line: 684, column: 25, scope: !2610)
!2610 = !DILexicalBlockFile(scope: !2611, file: !95, discriminator: 1)
!2611 = distinct !DILexicalBlock(scope: !2612, file: !95, line: 684, column: 25)
!2612 = distinct !DILexicalBlock(scope: !2550, file: !95, line: 684, column: 25)
!2613 = !DILocation(line: 684, column: 25, scope: !2614)
!2614 = !DILexicalBlockFile(scope: !2612, file: !95, discriminator: 1)
!2615 = !DILocation(line: 684, column: 25, scope: !2616)
!2616 = !DILexicalBlockFile(scope: !2611, file: !95, discriminator: 2)
!2617 = !DILocation(line: 684, column: 25, scope: !2618)
!2618 = !DILexicalBlockFile(scope: !2612, file: !95, discriminator: 3)
!2619 = !DILocation(line: 685, column: 38, scope: !2550)
!2620 = !DILocation(line: 685, column: 33, scope: !2550)
!2621 = !DILocation(line: 686, column: 23, scope: !2550)
!2622 = !DILocation(line: 687, column: 30, scope: !2623)
!2623 = distinct !DILexicalBlock(scope: !2543, file: !95, line: 687, column: 30)
!2624 = !DILocation(line: 687, column: 30, scope: !2543)
!2625 = !DILocation(line: 689, column: 25, scope: !2626)
!2626 = !DILexicalBlockFile(scope: !2627, file: !95, discriminator: 1)
!2627 = distinct !DILexicalBlock(scope: !2628, file: !95, line: 689, column: 25)
!2628 = distinct !DILexicalBlock(scope: !2629, file: !95, line: 689, column: 25)
!2629 = distinct !DILexicalBlock(scope: !2623, file: !95, line: 688, column: 23)
!2630 = !DILocation(line: 689, column: 25, scope: !2631)
!2631 = !DILexicalBlockFile(scope: !2628, file: !95, discriminator: 1)
!2632 = !DILocation(line: 689, column: 25, scope: !2633)
!2633 = !DILexicalBlockFile(scope: !2627, file: !95, discriminator: 2)
!2634 = !DILocation(line: 689, column: 25, scope: !2635)
!2635 = !DILexicalBlockFile(scope: !2628, file: !95, discriminator: 3)
!2636 = !DILocation(line: 691, column: 23, scope: !2629)
!2637 = !DILocation(line: 692, column: 35, scope: !2638)
!2638 = distinct !DILexicalBlock(scope: !2544, file: !95, line: 692, column: 25)
!2639 = !DILocation(line: 692, column: 30, scope: !2638)
!2640 = !DILocation(line: 692, column: 25, scope: !2544)
!2641 = !DILocation(line: 694, column: 21, scope: !2642)
!2642 = !DILexicalBlockFile(scope: !2643, file: !95, discriminator: 1)
!2643 = distinct !DILexicalBlock(scope: !2644, file: !95, line: 694, column: 21)
!2644 = distinct !DILexicalBlock(scope: !2544, file: !95, line: 694, column: 21)
!2645 = !DILocation(line: 694, column: 21, scope: !2646)
!2646 = !DILexicalBlockFile(scope: !2643, file: !95, discriminator: 2)
!2647 = !DILocation(line: 694, column: 21, scope: !2648)
!2648 = !DILexicalBlockFile(scope: !2649, file: !95, discriminator: 4)
!2649 = distinct !DILexicalBlock(scope: !2650, file: !95, line: 694, column: 21)
!2650 = distinct !DILexicalBlock(scope: !2651, file: !95, line: 694, column: 21)
!2651 = distinct !DILexicalBlock(scope: !2643, file: !95, line: 694, column: 21)
!2652 = !DILocation(line: 694, column: 21, scope: !2653)
!2653 = !DILexicalBlockFile(scope: !2650, file: !95, discriminator: 4)
!2654 = !DILocation(line: 694, column: 21, scope: !2655)
!2655 = !DILexicalBlockFile(scope: !2649, file: !95, discriminator: 5)
!2656 = !DILocation(line: 694, column: 21, scope: !2657)
!2657 = !DILexicalBlockFile(scope: !2650, file: !95, discriminator: 6)
!2658 = !DILocation(line: 694, column: 21, scope: !2659)
!2659 = !DILexicalBlockFile(scope: !2660, file: !95, discriminator: 9)
!2660 = distinct !DILexicalBlock(scope: !2661, file: !95, line: 694, column: 21)
!2661 = distinct !DILexicalBlock(scope: !2651, file: !95, line: 694, column: 21)
!2662 = !DILocation(line: 694, column: 21, scope: !2663)
!2663 = !DILexicalBlockFile(scope: !2661, file: !95, discriminator: 9)
!2664 = !DILocation(line: 694, column: 21, scope: !2665)
!2665 = !DILexicalBlockFile(scope: !2660, file: !95, discriminator: 10)
!2666 = !DILocation(line: 694, column: 21, scope: !2667)
!2667 = !DILexicalBlockFile(scope: !2661, file: !95, discriminator: 11)
!2668 = !DILocation(line: 694, column: 21, scope: !2669)
!2669 = !DILexicalBlockFile(scope: !2651, file: !95, discriminator: 13)
!2670 = !DILocation(line: 695, column: 21, scope: !2671)
!2671 = !DILexicalBlockFile(scope: !2672, file: !95, discriminator: 1)
!2672 = distinct !DILexicalBlock(scope: !2673, file: !95, line: 695, column: 21)
!2673 = distinct !DILexicalBlock(scope: !2544, file: !95, line: 695, column: 21)
!2674 = !DILocation(line: 695, column: 21, scope: !2675)
!2675 = !DILexicalBlockFile(scope: !2673, file: !95, discriminator: 1)
!2676 = !DILocation(line: 695, column: 21, scope: !2677)
!2677 = !DILexicalBlockFile(scope: !2672, file: !95, discriminator: 2)
!2678 = !DILocation(line: 695, column: 21, scope: !2679)
!2679 = !DILexicalBlockFile(scope: !2673, file: !95, discriminator: 3)
!2680 = !DILocation(line: 696, column: 25, scope: !2544)
!2681 = !DILocation(line: 678, column: 17, scope: !2682)
!2682 = !DILexicalBlockFile(scope: !2545, file: !95, discriminator: 1)
!2683 = distinct !{!2683, !2684, !2685}
!2684 = !DILocation(line: 678, column: 17, scope: !2546)
!2685 = !DILocation(line: 697, column: 19, scope: !2546)
!2686 = !DILocation(line: 704, column: 34, scope: !2687)
!2687 = distinct !DILexicalBlock(scope: !2088, file: !95, line: 704, column: 11)
!2688 = !DILocation(line: 706, column: 14, scope: !2687)
!2689 = !DILocation(line: 707, column: 14, scope: !2687)
!2690 = !DILocation(line: 707, column: 35, scope: !2691)
!2691 = !DILexicalBlockFile(scope: !2687, file: !95, discriminator: 1)
!2692 = !DILocation(line: 707, column: 17, scope: !2691)
!2693 = !DILocation(line: 707, column: 53, scope: !2691)
!2694 = !DILocation(line: 707, column: 47, scope: !2691)
!2695 = !DILocation(line: 707, column: 65, scope: !2691)
!2696 = !DILocation(line: 708, column: 15, scope: !2691)
!2697 = !DILocation(line: 708, column: 11, scope: !2687)
!2698 = !DILocation(line: 704, column: 11, scope: !2699)
!2699 = !DILexicalBlockFile(scope: !2088, file: !95, discriminator: 2)
!2700 = !DILocation(line: 712, column: 7, scope: !2701)
!2701 = !DILexicalBlockFile(scope: !2702, file: !95, discriminator: 1)
!2702 = distinct !DILexicalBlock(scope: !2088, file: !95, line: 712, column: 7)
!2703 = !DILocation(line: 712, column: 7, scope: !2704)
!2704 = !DILexicalBlockFile(scope: !2705, file: !95, discriminator: 4)
!2705 = distinct !DILexicalBlock(scope: !2702, file: !95, line: 712, column: 7)
!2706 = !DILocation(line: 712, column: 7, scope: !2707)
!2707 = !DILexicalBlockFile(scope: !2705, file: !95, discriminator: 3)
!2708 = !DILocation(line: 712, column: 7, scope: !2709)
!2709 = !DILexicalBlockFile(scope: !2710, file: !95, discriminator: 6)
!2710 = distinct !DILexicalBlock(scope: !2711, file: !95, line: 712, column: 7)
!2711 = distinct !DILexicalBlock(scope: !2712, file: !95, line: 712, column: 7)
!2712 = distinct !DILexicalBlock(scope: !2705, file: !95, line: 712, column: 7)
!2713 = !DILocation(line: 712, column: 7, scope: !2714)
!2714 = !DILexicalBlockFile(scope: !2711, file: !95, discriminator: 6)
!2715 = !DILocation(line: 712, column: 7, scope: !2716)
!2716 = !DILexicalBlockFile(scope: !2710, file: !95, discriminator: 7)
!2717 = !DILocation(line: 712, column: 7, scope: !2718)
!2718 = !DILexicalBlockFile(scope: !2711, file: !95, discriminator: 8)
!2719 = !DILocation(line: 712, column: 7, scope: !2720)
!2720 = !DILexicalBlockFile(scope: !2721, file: !95, discriminator: 11)
!2721 = distinct !DILexicalBlock(scope: !2722, file: !95, line: 712, column: 7)
!2722 = distinct !DILexicalBlock(scope: !2712, file: !95, line: 712, column: 7)
!2723 = !DILocation(line: 712, column: 7, scope: !2724)
!2724 = !DILexicalBlockFile(scope: !2722, file: !95, discriminator: 11)
!2725 = !DILocation(line: 712, column: 7, scope: !2726)
!2726 = !DILexicalBlockFile(scope: !2721, file: !95, discriminator: 12)
!2727 = !DILocation(line: 712, column: 7, scope: !2728)
!2728 = !DILexicalBlockFile(scope: !2722, file: !95, discriminator: 13)
!2729 = !DILocation(line: 712, column: 7, scope: !2730)
!2730 = !DILexicalBlockFile(scope: !2731, file: !95, discriminator: 16)
!2731 = distinct !DILexicalBlock(scope: !2732, file: !95, line: 712, column: 7)
!2732 = distinct !DILexicalBlock(scope: !2712, file: !95, line: 712, column: 7)
!2733 = !DILocation(line: 712, column: 7, scope: !2734)
!2734 = !DILexicalBlockFile(scope: !2732, file: !95, discriminator: 16)
!2735 = !DILocation(line: 712, column: 7, scope: !2736)
!2736 = !DILexicalBlockFile(scope: !2731, file: !95, discriminator: 17)
!2737 = !DILocation(line: 712, column: 7, scope: !2738)
!2738 = !DILexicalBlockFile(scope: !2732, file: !95, discriminator: 18)
!2739 = !DILocation(line: 712, column: 7, scope: !2740)
!2740 = !DILexicalBlockFile(scope: !2712, file: !95, discriminator: 20)
!2741 = !DILocation(line: 712, column: 7, scope: !2742)
!2742 = !DILexicalBlockFile(scope: !2743, file: !95, discriminator: 22)
!2743 = distinct !DILexicalBlock(scope: !2744, file: !95, line: 712, column: 7)
!2744 = distinct !DILexicalBlock(scope: !2702, file: !95, line: 712, column: 7)
!2745 = !DILocation(line: 712, column: 7, scope: !2746)
!2746 = !DILexicalBlockFile(scope: !2744, file: !95, discriminator: 22)
!2747 = !DILocation(line: 712, column: 7, scope: !2748)
!2748 = !DILexicalBlockFile(scope: !2743, file: !95, discriminator: 23)
!2749 = !DILocation(line: 712, column: 7, scope: !2750)
!2750 = !DILexicalBlockFile(scope: !2744, file: !95, discriminator: 24)
!2751 = !DILocation(line: 715, column: 7, scope: !2752)
!2752 = !DILexicalBlockFile(scope: !2753, file: !95, discriminator: 1)
!2753 = distinct !DILexicalBlock(scope: !2754, file: !95, line: 715, column: 7)
!2754 = distinct !DILexicalBlock(scope: !2088, file: !95, line: 715, column: 7)
!2755 = !DILocation(line: 715, column: 7, scope: !2756)
!2756 = !DILexicalBlockFile(scope: !2753, file: !95, discriminator: 2)
!2757 = !DILocation(line: 715, column: 7, scope: !2758)
!2758 = !DILexicalBlockFile(scope: !2759, file: !95, discriminator: 4)
!2759 = distinct !DILexicalBlock(scope: !2760, file: !95, line: 715, column: 7)
!2760 = distinct !DILexicalBlock(scope: !2761, file: !95, line: 715, column: 7)
!2761 = distinct !DILexicalBlock(scope: !2753, file: !95, line: 715, column: 7)
!2762 = !DILocation(line: 715, column: 7, scope: !2763)
!2763 = !DILexicalBlockFile(scope: !2760, file: !95, discriminator: 4)
!2764 = !DILocation(line: 715, column: 7, scope: !2765)
!2765 = !DILexicalBlockFile(scope: !2759, file: !95, discriminator: 5)
!2766 = !DILocation(line: 715, column: 7, scope: !2767)
!2767 = !DILexicalBlockFile(scope: !2760, file: !95, discriminator: 6)
!2768 = !DILocation(line: 715, column: 7, scope: !2769)
!2769 = !DILexicalBlockFile(scope: !2770, file: !95, discriminator: 9)
!2770 = distinct !DILexicalBlock(scope: !2771, file: !95, line: 715, column: 7)
!2771 = distinct !DILexicalBlock(scope: !2761, file: !95, line: 715, column: 7)
!2772 = !DILocation(line: 715, column: 7, scope: !2773)
!2773 = !DILexicalBlockFile(scope: !2771, file: !95, discriminator: 9)
!2774 = !DILocation(line: 715, column: 7, scope: !2775)
!2775 = !DILexicalBlockFile(scope: !2770, file: !95, discriminator: 10)
!2776 = !DILocation(line: 715, column: 7, scope: !2777)
!2777 = !DILexicalBlockFile(scope: !2771, file: !95, discriminator: 11)
!2778 = !DILocation(line: 715, column: 7, scope: !2779)
!2779 = !DILexicalBlockFile(scope: !2761, file: !95, discriminator: 13)
!2780 = !DILocation(line: 716, column: 7, scope: !2781)
!2781 = !DILexicalBlockFile(scope: !2782, file: !95, discriminator: 1)
!2782 = distinct !DILexicalBlock(scope: !2783, file: !95, line: 716, column: 7)
!2783 = distinct !DILexicalBlock(scope: !2088, file: !95, line: 716, column: 7)
!2784 = !DILocation(line: 716, column: 7, scope: !2785)
!2785 = !DILexicalBlockFile(scope: !2783, file: !95, discriminator: 1)
!2786 = !DILocation(line: 716, column: 7, scope: !2787)
!2787 = !DILexicalBlockFile(scope: !2782, file: !95, discriminator: 2)
!2788 = !DILocation(line: 716, column: 7, scope: !2789)
!2789 = !DILexicalBlockFile(scope: !2783, file: !95, discriminator: 3)
!2790 = !DILocation(line: 718, column: 13, scope: !2791)
!2791 = distinct !DILexicalBlock(scope: !2088, file: !95, line: 718, column: 11)
!2792 = !DILocation(line: 718, column: 11, scope: !2088)
!2793 = !DILocation(line: 720, column: 5, scope: !2089)
!2794 = !DILocation(line: 392, column: 75, scope: !2795)
!2795 = !DILexicalBlockFile(scope: !2089, file: !95, discriminator: 5)
!2796 = !DILocation(line: 392, column: 3, scope: !2795)
!2797 = distinct !{!2797, !2798, !2799}
!2798 = !DILocation(line: 392, column: 3, scope: !2090)
!2799 = !DILocation(line: 720, column: 5, scope: !2090)
!2800 = !DILocation(line: 722, column: 11, scope: !2801)
!2801 = distinct !DILexicalBlock(scope: !2061, file: !95, line: 722, column: 7)
!2802 = !DILocation(line: 722, column: 16, scope: !2801)
!2803 = !DILocation(line: 730, column: 51, scope: !2804)
!2804 = distinct !DILexicalBlock(scope: !2061, file: !95, line: 730, column: 7)
!2805 = !DILocation(line: 731, column: 10, scope: !2806)
!2806 = !DILexicalBlockFile(scope: !2804, file: !95, discriminator: 1)
!2807 = !DILocation(line: 733, column: 11, scope: !2808)
!2808 = distinct !DILexicalBlock(scope: !2809, file: !95, line: 733, column: 11)
!2809 = distinct !DILexicalBlock(scope: !2804, file: !95, line: 732, column: 5)
!2810 = !DILocation(line: 733, column: 11, scope: !2809)
!2811 = !DILocation(line: 734, column: 16, scope: !2808)
!2812 = !DILocation(line: 734, column: 9, scope: !2808)
!2813 = !DILocation(line: 738, column: 18, scope: !2814)
!2814 = distinct !DILexicalBlock(scope: !2808, file: !95, line: 738, column: 16)
!2815 = !DILocation(line: 738, column: 32, scope: !2816)
!2816 = !DILexicalBlockFile(scope: !2814, file: !95, discriminator: 1)
!2817 = !DILocation(line: 738, column: 29, scope: !2814)
!2818 = !DILocation(line: 747, column: 7, scope: !2819)
!2819 = distinct !DILexicalBlock(scope: !2061, file: !95, line: 747, column: 7)
!2820 = !DILocation(line: 747, column: 20, scope: !2819)
!2821 = !DILocation(line: 748, column: 12, scope: !2822)
!2822 = !DILexicalBlockFile(scope: !2823, file: !95, discriminator: 1)
!2823 = distinct !DILexicalBlock(scope: !2824, file: !95, line: 748, column: 5)
!2824 = distinct !DILexicalBlock(scope: !2819, file: !95, line: 748, column: 5)
!2825 = !DILocation(line: 748, column: 5, scope: !2826)
!2826 = !DILexicalBlockFile(scope: !2824, file: !95, discriminator: 1)
!2827 = !DILocation(line: 749, column: 7, scope: !2828)
!2828 = !DILexicalBlockFile(scope: !2829, file: !95, discriminator: 1)
!2829 = distinct !DILexicalBlock(scope: !2830, file: !95, line: 749, column: 7)
!2830 = distinct !DILexicalBlock(scope: !2823, file: !95, line: 749, column: 7)
!2831 = !DILocation(line: 749, column: 7, scope: !2832)
!2832 = !DILexicalBlockFile(scope: !2830, file: !95, discriminator: 1)
!2833 = !DILocation(line: 749, column: 7, scope: !2834)
!2834 = !DILexicalBlockFile(scope: !2829, file: !95, discriminator: 2)
!2835 = !DILocation(line: 749, column: 7, scope: !2836)
!2836 = !DILexicalBlockFile(scope: !2830, file: !95, discriminator: 3)
!2837 = !DILocation(line: 748, column: 39, scope: !2838)
!2838 = !DILexicalBlockFile(scope: !2823, file: !95, discriminator: 2)
!2839 = distinct !{!2839, !2840, !2841}
!2840 = !DILocation(line: 748, column: 5, scope: !2824)
!2841 = !DILocation(line: 749, column: 7, scope: !2824)
!2842 = !DILocation(line: 751, column: 11, scope: !2843)
!2843 = distinct !DILexicalBlock(scope: !2061, file: !95, line: 751, column: 7)
!2844 = !DILocation(line: 751, column: 7, scope: !2061)
!2845 = !DILocation(line: 752, column: 5, scope: !2843)
!2846 = !DILocation(line: 752, column: 17, scope: !2843)
!2847 = !DILocation(line: 758, column: 21, scope: !2848)
!2848 = distinct !DILexicalBlock(scope: !2061, file: !95, line: 758, column: 7)
!2849 = !DILocation(line: 758, column: 54, scope: !2850)
!2850 = !DILexicalBlockFile(scope: !2848, file: !95, discriminator: 1)
!2851 = !DILocation(line: 758, column: 51, scope: !2848)
!2852 = !DILocation(line: 762, column: 42, scope: !2061)
!2853 = !DILocation(line: 760, column: 10, scope: !2061)
!2854 = !DILocation(line: 760, column: 3, scope: !2061)
!2855 = !DILocation(line: 764, column: 1, scope: !2061)
!2856 = distinct !DISubprogram(name: "gettext_quote", scope: !95, file: !95, line: 199, type: !2857, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !50, variables: !2859)
!2857 = !DISubroutineType(types: !2858)
!2858 = !{!10, !10, !53}
!2859 = !{!2860, !2861, !2862, !2863}
!2860 = !DILocalVariable(name: "msgid", arg: 1, scope: !2856, file: !95, line: 199, type: !10)
!2861 = !DILocalVariable(name: "s", arg: 2, scope: !2856, file: !95, line: 199, type: !53)
!2862 = !DILocalVariable(name: "translation", scope: !2856, file: !95, line: 201, type: !10)
!2863 = !DILocalVariable(name: "locale_code", scope: !2856, file: !95, line: 202, type: !10)
!2864 = !DILocation(line: 199, column: 28, scope: !2856)
!2865 = !DILocation(line: 199, column: 54, scope: !2856)
!2866 = !DILocation(line: 201, column: 29, scope: !2856)
!2867 = !DILocation(line: 201, column: 15, scope: !2856)
!2868 = !DILocation(line: 204, column: 19, scope: !2869)
!2869 = distinct !DILexicalBlock(scope: !2856, file: !95, line: 204, column: 7)
!2870 = !DILocation(line: 204, column: 7, scope: !2856)
!2871 = !DILocation(line: 225, column: 17, scope: !2856)
!2872 = !DILocation(line: 202, column: 15, scope: !2856)
!2873 = !DILocalVariable(name: "s2", arg: 2, scope: !2874, file: !2875, line: 160, type: !10)
!2874 = distinct !DISubprogram(name: "strcaseeq0", scope: !2875, file: !2875, line: 160, type: !2876, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !50, variables: !2878)
!2875 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2876 = !DISubroutineType(types: !2877)
!2877 = !{!20, !10, !10, !12, !12, !12, !12, !12, !12, !12, !12, !12}
!2878 = !{!2879, !2873, !2880, !2881, !2882, !2883, !2884, !2885, !2886, !2887, !2888}
!2879 = !DILocalVariable(name: "s1", arg: 1, scope: !2874, file: !2875, line: 160, type: !10)
!2880 = !DILocalVariable(name: "s20", arg: 3, scope: !2874, file: !2875, line: 160, type: !12)
!2881 = !DILocalVariable(name: "s21", arg: 4, scope: !2874, file: !2875, line: 160, type: !12)
!2882 = !DILocalVariable(name: "s22", arg: 5, scope: !2874, file: !2875, line: 160, type: !12)
!2883 = !DILocalVariable(name: "s23", arg: 6, scope: !2874, file: !2875, line: 160, type: !12)
!2884 = !DILocalVariable(name: "s24", arg: 7, scope: !2874, file: !2875, line: 160, type: !12)
!2885 = !DILocalVariable(name: "s25", arg: 8, scope: !2874, file: !2875, line: 160, type: !12)
!2886 = !DILocalVariable(name: "s26", arg: 9, scope: !2874, file: !2875, line: 160, type: !12)
!2887 = !DILocalVariable(name: "s27", arg: 10, scope: !2874, file: !2875, line: 160, type: !12)
!2888 = !DILocalVariable(name: "s28", arg: 11, scope: !2874, file: !2875, line: 160, type: !12)
!2889 = !DILocation(line: 160, column: 41, scope: !2874, inlinedAt: !2890)
!2890 = distinct !DILocation(line: 226, column: 7, scope: !2891)
!2891 = distinct !DILexicalBlock(scope: !2856, file: !95, line: 226, column: 7)
!2892 = !DILocation(line: 160, column: 120, scope: !2874, inlinedAt: !2890)
!2893 = !DILocation(line: 160, column: 130, scope: !2874, inlinedAt: !2890)
!2894 = !DILocation(line: 162, column: 7, scope: !2895, inlinedAt: !2890)
!2895 = !DILexicalBlockFile(scope: !2896, file: !2875, discriminator: 1)
!2896 = distinct !DILexicalBlock(scope: !2874, file: !2875, line: 162, column: 7)
!2897 = !DILocalVariable(name: "s2", arg: 2, scope: !2898, file: !2875, line: 146, type: !10)
!2898 = distinct !DISubprogram(name: "strcaseeq1", scope: !2875, file: !2875, line: 146, type: !2899, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !50, variables: !2901)
!2899 = !DISubroutineType(types: !2900)
!2900 = !{!20, !10, !10, !12, !12, !12, !12, !12, !12, !12, !12}
!2901 = !{!2902, !2897, !2903, !2904, !2905, !2906, !2907, !2908, !2909, !2910}
!2902 = !DILocalVariable(name: "s1", arg: 1, scope: !2898, file: !2875, line: 146, type: !10)
!2903 = !DILocalVariable(name: "s21", arg: 3, scope: !2898, file: !2875, line: 146, type: !12)
!2904 = !DILocalVariable(name: "s22", arg: 4, scope: !2898, file: !2875, line: 146, type: !12)
!2905 = !DILocalVariable(name: "s23", arg: 5, scope: !2898, file: !2875, line: 146, type: !12)
!2906 = !DILocalVariable(name: "s24", arg: 6, scope: !2898, file: !2875, line: 146, type: !12)
!2907 = !DILocalVariable(name: "s25", arg: 7, scope: !2898, file: !2875, line: 146, type: !12)
!2908 = !DILocalVariable(name: "s26", arg: 8, scope: !2898, file: !2875, line: 146, type: !12)
!2909 = !DILocalVariable(name: "s27", arg: 9, scope: !2898, file: !2875, line: 146, type: !12)
!2910 = !DILocalVariable(name: "s28", arg: 10, scope: !2898, file: !2875, line: 146, type: !12)
!2911 = !DILocation(line: 146, column: 41, scope: !2898, inlinedAt: !2912)
!2912 = distinct !DILocation(line: 167, column: 16, scope: !2913, inlinedAt: !2890)
!2913 = distinct !DILexicalBlock(scope: !2914, file: !2875, line: 164, column: 11)
!2914 = distinct !DILexicalBlock(scope: !2896, file: !2875, line: 163, column: 5)
!2915 = !DILocation(line: 146, column: 110, scope: !2898, inlinedAt: !2912)
!2916 = !DILocation(line: 146, column: 120, scope: !2898, inlinedAt: !2912)
!2917 = !DILocation(line: 148, column: 7, scope: !2918, inlinedAt: !2912)
!2918 = !DILexicalBlockFile(scope: !2919, file: !2875, discriminator: 1)
!2919 = distinct !DILexicalBlock(scope: !2898, file: !2875, line: 148, column: 7)
!2920 = !DILocalVariable(name: "s2", arg: 2, scope: !2921, file: !2875, line: 132, type: !10)
!2921 = distinct !DISubprogram(name: "strcaseeq2", scope: !2875, file: !2875, line: 132, type: !2922, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !50, variables: !2924)
!2922 = !DISubroutineType(types: !2923)
!2923 = !{!20, !10, !10, !12, !12, !12, !12, !12, !12, !12}
!2924 = !{!2925, !2920, !2926, !2927, !2928, !2929, !2930, !2931, !2932}
!2925 = !DILocalVariable(name: "s1", arg: 1, scope: !2921, file: !2875, line: 132, type: !10)
!2926 = !DILocalVariable(name: "s22", arg: 3, scope: !2921, file: !2875, line: 132, type: !12)
!2927 = !DILocalVariable(name: "s23", arg: 4, scope: !2921, file: !2875, line: 132, type: !12)
!2928 = !DILocalVariable(name: "s24", arg: 5, scope: !2921, file: !2875, line: 132, type: !12)
!2929 = !DILocalVariable(name: "s25", arg: 6, scope: !2921, file: !2875, line: 132, type: !12)
!2930 = !DILocalVariable(name: "s26", arg: 7, scope: !2921, file: !2875, line: 132, type: !12)
!2931 = !DILocalVariable(name: "s27", arg: 8, scope: !2921, file: !2875, line: 132, type: !12)
!2932 = !DILocalVariable(name: "s28", arg: 9, scope: !2921, file: !2875, line: 132, type: !12)
!2933 = !DILocation(line: 132, column: 41, scope: !2921, inlinedAt: !2934)
!2934 = distinct !DILocation(line: 153, column: 16, scope: !2935, inlinedAt: !2912)
!2935 = distinct !DILexicalBlock(scope: !2936, file: !2875, line: 150, column: 11)
!2936 = distinct !DILexicalBlock(scope: !2919, file: !2875, line: 149, column: 5)
!2937 = !DILocation(line: 132, column: 100, scope: !2921, inlinedAt: !2934)
!2938 = !DILocation(line: 132, column: 110, scope: !2921, inlinedAt: !2934)
!2939 = !DILocation(line: 134, column: 7, scope: !2940, inlinedAt: !2934)
!2940 = !DILexicalBlockFile(scope: !2941, file: !2875, discriminator: 1)
!2941 = distinct !DILexicalBlock(scope: !2921, file: !2875, line: 134, column: 7)
!2942 = !DILocalVariable(name: "s2", arg: 2, scope: !2943, file: !2875, line: 118, type: !10)
!2943 = distinct !DISubprogram(name: "strcaseeq3", scope: !2875, file: !2875, line: 118, type: !2944, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !50, variables: !2946)
!2944 = !DISubroutineType(types: !2945)
!2945 = !{!20, !10, !10, !12, !12, !12, !12, !12, !12}
!2946 = !{!2947, !2942, !2948, !2949, !2950, !2951, !2952, !2953}
!2947 = !DILocalVariable(name: "s1", arg: 1, scope: !2943, file: !2875, line: 118, type: !10)
!2948 = !DILocalVariable(name: "s23", arg: 3, scope: !2943, file: !2875, line: 118, type: !12)
!2949 = !DILocalVariable(name: "s24", arg: 4, scope: !2943, file: !2875, line: 118, type: !12)
!2950 = !DILocalVariable(name: "s25", arg: 5, scope: !2943, file: !2875, line: 118, type: !12)
!2951 = !DILocalVariable(name: "s26", arg: 6, scope: !2943, file: !2875, line: 118, type: !12)
!2952 = !DILocalVariable(name: "s27", arg: 7, scope: !2943, file: !2875, line: 118, type: !12)
!2953 = !DILocalVariable(name: "s28", arg: 8, scope: !2943, file: !2875, line: 118, type: !12)
!2954 = !DILocation(line: 118, column: 41, scope: !2943, inlinedAt: !2955)
!2955 = distinct !DILocation(line: 139, column: 16, scope: !2956, inlinedAt: !2934)
!2956 = distinct !DILexicalBlock(scope: !2957, file: !2875, line: 136, column: 11)
!2957 = distinct !DILexicalBlock(scope: !2941, file: !2875, line: 135, column: 5)
!2958 = !DILocation(line: 118, column: 90, scope: !2943, inlinedAt: !2955)
!2959 = !DILocation(line: 118, column: 100, scope: !2943, inlinedAt: !2955)
!2960 = !DILocation(line: 120, column: 7, scope: !2961, inlinedAt: !2955)
!2961 = !DILexicalBlockFile(scope: !2962, file: !2875, discriminator: 2)
!2962 = distinct !DILexicalBlock(scope: !2943, file: !2875, line: 120, column: 7)
!2963 = !DILocation(line: 120, column: 7, scope: !2964, inlinedAt: !2955)
!2964 = !DILexicalBlockFile(scope: !2943, file: !2875, discriminator: 2)
!2965 = !DILocalVariable(name: "s2", arg: 2, scope: !2966, file: !2875, line: 104, type: !10)
!2966 = distinct !DISubprogram(name: "strcaseeq4", scope: !2875, file: !2875, line: 104, type: !2967, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !50, variables: !2969)
!2967 = !DISubroutineType(types: !2968)
!2968 = !{!20, !10, !10, !12, !12, !12, !12, !12}
!2969 = !{!2970, !2965, !2971, !2972, !2973, !2974, !2975}
!2970 = !DILocalVariable(name: "s1", arg: 1, scope: !2966, file: !2875, line: 104, type: !10)
!2971 = !DILocalVariable(name: "s24", arg: 3, scope: !2966, file: !2875, line: 104, type: !12)
!2972 = !DILocalVariable(name: "s25", arg: 4, scope: !2966, file: !2875, line: 104, type: !12)
!2973 = !DILocalVariable(name: "s26", arg: 5, scope: !2966, file: !2875, line: 104, type: !12)
!2974 = !DILocalVariable(name: "s27", arg: 6, scope: !2966, file: !2875, line: 104, type: !12)
!2975 = !DILocalVariable(name: "s28", arg: 7, scope: !2966, file: !2875, line: 104, type: !12)
!2976 = !DILocation(line: 104, column: 41, scope: !2966, inlinedAt: !2977)
!2977 = distinct !DILocation(line: 125, column: 16, scope: !2978, inlinedAt: !2955)
!2978 = distinct !DILexicalBlock(scope: !2979, file: !2875, line: 122, column: 11)
!2979 = distinct !DILexicalBlock(scope: !2962, file: !2875, line: 121, column: 5)
!2980 = !DILocation(line: 104, column: 80, scope: !2966, inlinedAt: !2977)
!2981 = !DILocation(line: 104, column: 90, scope: !2966, inlinedAt: !2977)
!2982 = !DILocation(line: 106, column: 7, scope: !2983, inlinedAt: !2977)
!2983 = !DILexicalBlockFile(scope: !2984, file: !2875, discriminator: 2)
!2984 = distinct !DILexicalBlock(scope: !2966, file: !2875, line: 106, column: 7)
!2985 = !DILocation(line: 106, column: 7, scope: !2986, inlinedAt: !2977)
!2986 = !DILexicalBlockFile(scope: !2966, file: !2875, discriminator: 2)
!2987 = !DILocalVariable(name: "s2", arg: 2, scope: !2988, file: !2875, line: 90, type: !10)
!2988 = distinct !DISubprogram(name: "strcaseeq5", scope: !2875, file: !2875, line: 90, type: !2989, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !50, variables: !2991)
!2989 = !DISubroutineType(types: !2990)
!2990 = !{!20, !10, !10, !12, !12, !12, !12}
!2991 = !{!2992, !2987, !2993, !2994, !2995, !2996}
!2992 = !DILocalVariable(name: "s1", arg: 1, scope: !2988, file: !2875, line: 90, type: !10)
!2993 = !DILocalVariable(name: "s25", arg: 3, scope: !2988, file: !2875, line: 90, type: !12)
!2994 = !DILocalVariable(name: "s26", arg: 4, scope: !2988, file: !2875, line: 90, type: !12)
!2995 = !DILocalVariable(name: "s27", arg: 5, scope: !2988, file: !2875, line: 90, type: !12)
!2996 = !DILocalVariable(name: "s28", arg: 6, scope: !2988, file: !2875, line: 90, type: !12)
!2997 = !DILocation(line: 90, column: 41, scope: !2988, inlinedAt: !2998)
!2998 = distinct !DILocation(line: 111, column: 16, scope: !2999, inlinedAt: !2977)
!2999 = distinct !DILexicalBlock(scope: !3000, file: !2875, line: 108, column: 11)
!3000 = distinct !DILexicalBlock(scope: !2984, file: !2875, line: 107, column: 5)
!3001 = !DILocation(line: 90, column: 70, scope: !2988, inlinedAt: !2998)
!3002 = !DILocation(line: 90, column: 80, scope: !2988, inlinedAt: !2998)
!3003 = !DILocation(line: 92, column: 7, scope: !3004, inlinedAt: !2998)
!3004 = !DILexicalBlockFile(scope: !3005, file: !2875, discriminator: 2)
!3005 = distinct !DILexicalBlock(scope: !2988, file: !2875, line: 92, column: 7)
!3006 = !DILocation(line: 92, column: 7, scope: !3007, inlinedAt: !2998)
!3007 = !DILexicalBlockFile(scope: !2988, file: !2875, discriminator: 2)
!3008 = !DILocation(line: 227, column: 12, scope: !2891)
!3009 = !DILocation(line: 227, column: 21, scope: !2891)
!3010 = !DILocation(line: 227, column: 5, scope: !2891)
!3011 = !DILocation(line: 146, column: 41, scope: !2898, inlinedAt: !3012)
!3012 = distinct !DILocation(line: 167, column: 16, scope: !2913, inlinedAt: !3013)
!3013 = distinct !DILocation(line: 228, column: 7, scope: !3014)
!3014 = distinct !DILexicalBlock(scope: !2856, file: !95, line: 228, column: 7)
!3015 = !DILocation(line: 146, column: 110, scope: !2898, inlinedAt: !3012)
!3016 = !DILocation(line: 146, column: 120, scope: !2898, inlinedAt: !3012)
!3017 = !DILocation(line: 148, column: 7, scope: !2918, inlinedAt: !3012)
!3018 = !DILocation(line: 132, column: 41, scope: !2921, inlinedAt: !3019)
!3019 = distinct !DILocation(line: 153, column: 16, scope: !2935, inlinedAt: !3012)
!3020 = !DILocation(line: 132, column: 100, scope: !2921, inlinedAt: !3019)
!3021 = !DILocation(line: 132, column: 110, scope: !2921, inlinedAt: !3019)
!3022 = !DILocation(line: 134, column: 7, scope: !3023, inlinedAt: !3019)
!3023 = !DILexicalBlockFile(scope: !2941, file: !2875, discriminator: 2)
!3024 = !DILocation(line: 134, column: 7, scope: !3025, inlinedAt: !3019)
!3025 = !DILexicalBlockFile(scope: !2921, file: !2875, discriminator: 2)
!3026 = !DILocation(line: 118, column: 41, scope: !2943, inlinedAt: !3027)
!3027 = distinct !DILocation(line: 139, column: 16, scope: !2956, inlinedAt: !3019)
!3028 = !DILocation(line: 118, column: 90, scope: !2943, inlinedAt: !3027)
!3029 = !DILocation(line: 118, column: 100, scope: !2943, inlinedAt: !3027)
!3030 = !DILocation(line: 120, column: 7, scope: !2961, inlinedAt: !3027)
!3031 = !DILocation(line: 120, column: 7, scope: !2964, inlinedAt: !3027)
!3032 = !DILocation(line: 104, column: 41, scope: !2966, inlinedAt: !3033)
!3033 = distinct !DILocation(line: 125, column: 16, scope: !2978, inlinedAt: !3027)
!3034 = !DILocation(line: 104, column: 80, scope: !2966, inlinedAt: !3033)
!3035 = !DILocation(line: 104, column: 90, scope: !2966, inlinedAt: !3033)
!3036 = !DILocation(line: 106, column: 7, scope: !2983, inlinedAt: !3033)
!3037 = !DILocation(line: 106, column: 7, scope: !2986, inlinedAt: !3033)
!3038 = !DILocation(line: 90, column: 41, scope: !2988, inlinedAt: !3039)
!3039 = distinct !DILocation(line: 111, column: 16, scope: !2999, inlinedAt: !3033)
!3040 = !DILocation(line: 90, column: 70, scope: !2988, inlinedAt: !3039)
!3041 = !DILocation(line: 90, column: 80, scope: !2988, inlinedAt: !3039)
!3042 = !DILocation(line: 92, column: 7, scope: !3004, inlinedAt: !3039)
!3043 = !DILocation(line: 92, column: 7, scope: !3007, inlinedAt: !3039)
!3044 = !DILocalVariable(name: "s2", arg: 2, scope: !3045, file: !2875, line: 76, type: !10)
!3045 = distinct !DISubprogram(name: "strcaseeq6", scope: !2875, file: !2875, line: 76, type: !3046, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !50, variables: !3048)
!3046 = !DISubroutineType(types: !3047)
!3047 = !{!20, !10, !10, !12, !12, !12}
!3048 = !{!3049, !3044, !3050, !3051, !3052}
!3049 = !DILocalVariable(name: "s1", arg: 1, scope: !3045, file: !2875, line: 76, type: !10)
!3050 = !DILocalVariable(name: "s26", arg: 3, scope: !3045, file: !2875, line: 76, type: !12)
!3051 = !DILocalVariable(name: "s27", arg: 4, scope: !3045, file: !2875, line: 76, type: !12)
!3052 = !DILocalVariable(name: "s28", arg: 5, scope: !3045, file: !2875, line: 76, type: !12)
!3053 = !DILocation(line: 76, column: 41, scope: !3045, inlinedAt: !3054)
!3054 = distinct !DILocation(line: 97, column: 16, scope: !3055, inlinedAt: !3039)
!3055 = distinct !DILexicalBlock(scope: !3056, file: !2875, line: 94, column: 11)
!3056 = distinct !DILexicalBlock(scope: !3005, file: !2875, line: 93, column: 5)
!3057 = !DILocation(line: 76, column: 60, scope: !3045, inlinedAt: !3054)
!3058 = !DILocation(line: 76, column: 70, scope: !3045, inlinedAt: !3054)
!3059 = !DILocation(line: 78, column: 7, scope: !3060, inlinedAt: !3054)
!3060 = !DILexicalBlockFile(scope: !3061, file: !2875, discriminator: 2)
!3061 = distinct !DILexicalBlock(scope: !3045, file: !2875, line: 78, column: 7)
!3062 = !DILocation(line: 78, column: 7, scope: !3063, inlinedAt: !3054)
!3063 = !DILexicalBlockFile(scope: !3045, file: !2875, discriminator: 2)
!3064 = !DILocalVariable(name: "s2", arg: 2, scope: !3065, file: !2875, line: 62, type: !10)
!3065 = distinct !DISubprogram(name: "strcaseeq7", scope: !2875, file: !2875, line: 62, type: !3066, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !50, variables: !3068)
!3066 = !DISubroutineType(types: !3067)
!3067 = !{!20, !10, !10, !12, !12}
!3068 = !{!3069, !3064, !3070, !3071}
!3069 = !DILocalVariable(name: "s1", arg: 1, scope: !3065, file: !2875, line: 62, type: !10)
!3070 = !DILocalVariable(name: "s27", arg: 3, scope: !3065, file: !2875, line: 62, type: !12)
!3071 = !DILocalVariable(name: "s28", arg: 4, scope: !3065, file: !2875, line: 62, type: !12)
!3072 = !DILocation(line: 62, column: 41, scope: !3065, inlinedAt: !3073)
!3073 = distinct !DILocation(line: 83, column: 16, scope: !3074, inlinedAt: !3054)
!3074 = distinct !DILexicalBlock(scope: !3075, file: !2875, line: 80, column: 11)
!3075 = distinct !DILexicalBlock(scope: !3061, file: !2875, line: 79, column: 5)
!3076 = !DILocation(line: 62, column: 50, scope: !3065, inlinedAt: !3073)
!3077 = !DILocation(line: 62, column: 60, scope: !3065, inlinedAt: !3073)
!3078 = !DILocation(line: 64, column: 7, scope: !3079, inlinedAt: !3073)
!3079 = !DILexicalBlockFile(scope: !3080, file: !2875, discriminator: 2)
!3080 = distinct !DILexicalBlock(scope: !3065, file: !2875, line: 64, column: 7)
!3081 = !DILocation(line: 228, column: 7, scope: !2856)
!3082 = !DILocation(line: 229, column: 12, scope: !3014)
!3083 = !DILocation(line: 229, column: 21, scope: !3014)
!3084 = !DILocation(line: 229, column: 5, scope: !3014)
!3085 = !DILocation(line: 231, column: 13, scope: !2856)
!3086 = !DILocation(line: 231, column: 11, scope: !2856)
!3087 = !DILocation(line: 231, column: 3, scope: !2856)
!3088 = !DILocation(line: 232, column: 1, scope: !2856)
!3089 = distinct !DISubprogram(name: "quotearg_alloc", scope: !95, file: !95, line: 791, type: !3090, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !50, variables: !3092)
!3090 = !DISubroutineType(types: !3091)
!3091 = !{!45, !10, !89, !1929}
!3092 = !{!3093, !3094, !3095}
!3093 = !DILocalVariable(name: "arg", arg: 1, scope: !3089, file: !95, line: 791, type: !10)
!3094 = !DILocalVariable(name: "argsize", arg: 2, scope: !3089, file: !95, line: 791, type: !89)
!3095 = !DILocalVariable(name: "o", arg: 3, scope: !3089, file: !95, line: 792, type: !1929)
!3096 = !DILocation(line: 791, column: 29, scope: !3089)
!3097 = !DILocation(line: 791, column: 41, scope: !3089)
!3098 = !DILocation(line: 792, column: 47, scope: !3089)
!3099 = !DILocalVariable(name: "arg", arg: 1, scope: !3100, file: !95, line: 804, type: !10)
!3100 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !95, file: !95, line: 804, type: !3101, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !50, variables: !3103)
!3101 = !DISubroutineType(types: !3102)
!3102 = !{!45, !10, !89, !584, !1929}
!3103 = !{!3099, !3104, !3105, !3106, !3107, !3108, !3109, !3110, !3111}
!3104 = !DILocalVariable(name: "argsize", arg: 2, scope: !3100, file: !95, line: 804, type: !89)
!3105 = !DILocalVariable(name: "size", arg: 3, scope: !3100, file: !95, line: 804, type: !584)
!3106 = !DILocalVariable(name: "o", arg: 4, scope: !3100, file: !95, line: 805, type: !1929)
!3107 = !DILocalVariable(name: "p", scope: !3100, file: !95, line: 807, type: !1929)
!3108 = !DILocalVariable(name: "e", scope: !3100, file: !95, line: 808, type: !20)
!3109 = !DILocalVariable(name: "flags", scope: !3100, file: !95, line: 810, type: !20)
!3110 = !DILocalVariable(name: "bufsize", scope: !3100, file: !95, line: 811, type: !89)
!3111 = !DILocalVariable(name: "buf", scope: !3100, file: !95, line: 815, type: !45)
!3112 = !DILocation(line: 804, column: 33, scope: !3100, inlinedAt: !3113)
!3113 = distinct !DILocation(line: 794, column: 10, scope: !3089)
!3114 = !DILocation(line: 804, column: 45, scope: !3100, inlinedAt: !3113)
!3115 = !DILocation(line: 804, column: 62, scope: !3100, inlinedAt: !3113)
!3116 = !DILocation(line: 805, column: 51, scope: !3100, inlinedAt: !3113)
!3117 = !DILocation(line: 807, column: 37, scope: !3100, inlinedAt: !3113)
!3118 = !DILocation(line: 807, column: 33, scope: !3100, inlinedAt: !3113)
!3119 = !DILocation(line: 808, column: 11, scope: !3100, inlinedAt: !3113)
!3120 = !DILocation(line: 808, column: 7, scope: !3100, inlinedAt: !3113)
!3121 = !DILocation(line: 810, column: 18, scope: !3100, inlinedAt: !3113)
!3122 = !DILocation(line: 810, column: 24, scope: !3100, inlinedAt: !3113)
!3123 = !DILocation(line: 810, column: 7, scope: !3100, inlinedAt: !3113)
!3124 = !DILocation(line: 811, column: 69, scope: !3100, inlinedAt: !3113)
!3125 = !DILocation(line: 812, column: 53, scope: !3100, inlinedAt: !3113)
!3126 = !DILocation(line: 813, column: 49, scope: !3100, inlinedAt: !3113)
!3127 = !DILocation(line: 814, column: 49, scope: !3100, inlinedAt: !3113)
!3128 = !DILocation(line: 811, column: 20, scope: !3100, inlinedAt: !3113)
!3129 = !DILocation(line: 814, column: 62, scope: !3100, inlinedAt: !3113)
!3130 = !DILocation(line: 811, column: 10, scope: !3100, inlinedAt: !3113)
!3131 = !DILocalVariable(name: "n", arg: 1, scope: !3132, file: !580, line: 220, type: !89)
!3132 = distinct !DISubprogram(name: "xcharalloc", scope: !580, file: !580, line: 220, type: !3133, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !50, variables: !3135)
!3133 = !DISubroutineType(types: !3134)
!3134 = !{!45, !89}
!3135 = !{!3131}
!3136 = !DILocation(line: 220, column: 20, scope: !3132, inlinedAt: !3137)
!3137 = distinct !DILocation(line: 815, column: 15, scope: !3100, inlinedAt: !3113)
!3138 = !DILocation(line: 222, column: 10, scope: !3132, inlinedAt: !3137)
!3139 = !DILocation(line: 815, column: 9, scope: !3100, inlinedAt: !3113)
!3140 = !DILocation(line: 816, column: 60, scope: !3100, inlinedAt: !3113)
!3141 = !DILocation(line: 818, column: 32, scope: !3100, inlinedAt: !3113)
!3142 = !DILocation(line: 818, column: 47, scope: !3100, inlinedAt: !3113)
!3143 = !DILocation(line: 816, column: 3, scope: !3100, inlinedAt: !3113)
!3144 = !DILocation(line: 819, column: 9, scope: !3100, inlinedAt: !3113)
!3145 = !DILocation(line: 794, column: 3, scope: !3089)
!3146 = !DILocation(line: 804, column: 33, scope: !3100)
!3147 = !DILocation(line: 804, column: 45, scope: !3100)
!3148 = !DILocation(line: 804, column: 62, scope: !3100)
!3149 = !DILocation(line: 805, column: 51, scope: !3100)
!3150 = !DILocation(line: 807, column: 37, scope: !3100)
!3151 = !DILocation(line: 807, column: 33, scope: !3100)
!3152 = !DILocation(line: 808, column: 11, scope: !3100)
!3153 = !DILocation(line: 808, column: 7, scope: !3100)
!3154 = !DILocation(line: 810, column: 18, scope: !3100)
!3155 = !DILocation(line: 810, column: 27, scope: !3100)
!3156 = !DILocation(line: 810, column: 24, scope: !3100)
!3157 = !DILocation(line: 810, column: 7, scope: !3100)
!3158 = !DILocation(line: 811, column: 69, scope: !3100)
!3159 = !DILocation(line: 812, column: 53, scope: !3100)
!3160 = !DILocation(line: 813, column: 49, scope: !3100)
!3161 = !DILocation(line: 814, column: 49, scope: !3100)
!3162 = !DILocation(line: 811, column: 20, scope: !3100)
!3163 = !DILocation(line: 814, column: 62, scope: !3100)
!3164 = !DILocation(line: 811, column: 10, scope: !3100)
!3165 = !DILocation(line: 220, column: 20, scope: !3132, inlinedAt: !3166)
!3166 = distinct !DILocation(line: 815, column: 15, scope: !3100)
!3167 = !DILocation(line: 222, column: 10, scope: !3132, inlinedAt: !3166)
!3168 = !DILocation(line: 815, column: 9, scope: !3100)
!3169 = !DILocation(line: 816, column: 60, scope: !3100)
!3170 = !DILocation(line: 818, column: 32, scope: !3100)
!3171 = !DILocation(line: 818, column: 47, scope: !3100)
!3172 = !DILocation(line: 816, column: 3, scope: !3100)
!3173 = !DILocation(line: 819, column: 9, scope: !3100)
!3174 = !DILocation(line: 820, column: 7, scope: !3100)
!3175 = !DILocation(line: 821, column: 11, scope: !3176)
!3176 = distinct !DILexicalBlock(scope: !3100, file: !95, line: 820, column: 7)
!3177 = !{!3178, !3178, i64 0}
!3178 = !{!"long", !631, i64 0}
!3179 = !DILocation(line: 821, column: 5, scope: !3176)
!3180 = !DILocation(line: 822, column: 3, scope: !3100)
!3181 = distinct !DISubprogram(name: "quotearg_free", scope: !95, file: !95, line: 840, type: !1522, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !50, variables: !3182)
!3182 = !{!3183, !3184}
!3183 = !DILocalVariable(name: "sv", scope: !3181, file: !95, line: 842, type: !122)
!3184 = !DILocalVariable(name: "i", scope: !3181, file: !95, line: 843, type: !20)
!3185 = !DILocation(line: 842, column: 24, scope: !3181)
!3186 = !DILocation(line: 842, column: 19, scope: !3181)
!3187 = !DILocation(line: 843, column: 7, scope: !3181)
!3188 = !DILocation(line: 844, column: 19, scope: !3189)
!3189 = !DILexicalBlockFile(scope: !3190, file: !95, discriminator: 1)
!3190 = distinct !DILexicalBlock(scope: !3191, file: !95, line: 844, column: 3)
!3191 = distinct !DILexicalBlock(scope: !3181, file: !95, line: 844, column: 3)
!3192 = !DILocation(line: 844, column: 17, scope: !3189)
!3193 = !DILocation(line: 844, column: 3, scope: !3194)
!3194 = !DILexicalBlockFile(scope: !3191, file: !95, discriminator: 1)
!3195 = !DILocation(line: 845, column: 17, scope: !3190)
!3196 = !{!3197, !630, i64 8}
!3197 = !{!"slotvec", !3178, i64 0, !630, i64 8}
!3198 = !DILocation(line: 845, column: 5, scope: !3190)
!3199 = !DILocation(line: 844, column: 28, scope: !3200)
!3200 = !DILexicalBlockFile(scope: !3190, file: !95, discriminator: 2)
!3201 = distinct !{!3201, !3202, !3203}
!3202 = !DILocation(line: 844, column: 3, scope: !3191)
!3203 = !DILocation(line: 845, column: 20, scope: !3191)
!3204 = !DILocation(line: 846, column: 13, scope: !3205)
!3205 = distinct !DILexicalBlock(scope: !3181, file: !95, line: 846, column: 7)
!3206 = !DILocation(line: 846, column: 17, scope: !3205)
!3207 = !DILocation(line: 846, column: 7, scope: !3181)
!3208 = !DILocation(line: 848, column: 7, scope: !3209)
!3209 = distinct !DILexicalBlock(scope: !3205, file: !95, line: 847, column: 5)
!3210 = !DILocation(line: 849, column: 21, scope: !3209)
!3211 = !{!3197, !3178, i64 0}
!3212 = !DILocation(line: 850, column: 20, scope: !3209)
!3213 = !DILocation(line: 851, column: 5, scope: !3209)
!3214 = !DILocation(line: 852, column: 10, scope: !3215)
!3215 = distinct !DILexicalBlock(scope: !3181, file: !95, line: 852, column: 7)
!3216 = !DILocation(line: 852, column: 7, scope: !3181)
!3217 = !DILocation(line: 854, column: 13, scope: !3218)
!3218 = distinct !DILexicalBlock(scope: !3215, file: !95, line: 853, column: 5)
!3219 = !DILocation(line: 854, column: 7, scope: !3218)
!3220 = !DILocation(line: 855, column: 15, scope: !3218)
!3221 = !DILocation(line: 856, column: 5, scope: !3218)
!3222 = !DILocation(line: 857, column: 10, scope: !3181)
!3223 = !DILocation(line: 858, column: 1, scope: !3181)
!3224 = distinct !DISubprogram(name: "quotearg_n", scope: !95, file: !95, line: 922, type: !3225, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !50, variables: !3227)
!3225 = !DISubroutineType(types: !3226)
!3226 = !{!45, !20, !10}
!3227 = !{!3228, !3229}
!3228 = !DILocalVariable(name: "n", arg: 1, scope: !3224, file: !95, line: 922, type: !20)
!3229 = !DILocalVariable(name: "arg", arg: 2, scope: !3224, file: !95, line: 922, type: !10)
!3230 = !DILocation(line: 922, column: 17, scope: !3224)
!3231 = !DILocation(line: 922, column: 32, scope: !3224)
!3232 = !DILocation(line: 924, column: 10, scope: !3224)
!3233 = !DILocation(line: 924, column: 3, scope: !3224)
!3234 = distinct !DISubprogram(name: "quotearg_n_options", scope: !95, file: !95, line: 869, type: !3235, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !50, variables: !3237)
!3235 = !DISubroutineType(types: !3236)
!3236 = !{!45, !20, !10, !89, !1929}
!3237 = !{!3238, !3239, !3240, !3241, !3242, !3243, !3244, !3247, !3249, !3250, !3251}
!3238 = !DILocalVariable(name: "n", arg: 1, scope: !3234, file: !95, line: 869, type: !20)
!3239 = !DILocalVariable(name: "arg", arg: 2, scope: !3234, file: !95, line: 869, type: !10)
!3240 = !DILocalVariable(name: "argsize", arg: 3, scope: !3234, file: !95, line: 869, type: !89)
!3241 = !DILocalVariable(name: "options", arg: 4, scope: !3234, file: !95, line: 870, type: !1929)
!3242 = !DILocalVariable(name: "e", scope: !3234, file: !95, line: 872, type: !20)
!3243 = !DILocalVariable(name: "sv", scope: !3234, file: !95, line: 874, type: !122)
!3244 = !DILocalVariable(name: "preallocated", scope: !3245, file: !95, line: 881, type: !9)
!3245 = distinct !DILexicalBlock(scope: !3246, file: !95, line: 880, column: 5)
!3246 = distinct !DILexicalBlock(scope: !3234, file: !95, line: 879, column: 7)
!3247 = !DILocalVariable(name: "size", scope: !3248, file: !95, line: 894, type: !89)
!3248 = distinct !DILexicalBlock(scope: !3234, file: !95, line: 893, column: 3)
!3249 = !DILocalVariable(name: "val", scope: !3248, file: !95, line: 895, type: !45)
!3250 = !DILocalVariable(name: "flags", scope: !3248, file: !95, line: 897, type: !20)
!3251 = !DILocalVariable(name: "qsize", scope: !3248, file: !95, line: 898, type: !89)
!3252 = !DILocation(line: 869, column: 25, scope: !3234)
!3253 = !DILocation(line: 869, column: 40, scope: !3234)
!3254 = !DILocation(line: 869, column: 52, scope: !3234)
!3255 = !DILocation(line: 870, column: 51, scope: !3234)
!3256 = !DILocation(line: 872, column: 11, scope: !3234)
!3257 = !DILocation(line: 872, column: 7, scope: !3234)
!3258 = !DILocation(line: 874, column: 24, scope: !3234)
!3259 = !DILocation(line: 874, column: 19, scope: !3234)
!3260 = !DILocation(line: 876, column: 9, scope: !3261)
!3261 = distinct !DILexicalBlock(scope: !3234, file: !95, line: 876, column: 7)
!3262 = !DILocation(line: 876, column: 7, scope: !3234)
!3263 = !DILocation(line: 877, column: 5, scope: !3261)
!3264 = !DILocation(line: 879, column: 7, scope: !3246)
!3265 = !DILocation(line: 879, column: 14, scope: !3246)
!3266 = !DILocation(line: 879, column: 7, scope: !3234)
!3267 = !DILocation(line: 881, column: 31, scope: !3245)
!3268 = !DILocation(line: 883, column: 67, scope: !3269)
!3269 = distinct !DILexicalBlock(scope: !3245, file: !95, line: 883, column: 11)
!3270 = !DILocation(line: 883, column: 11, scope: !3245)
!3271 = !DILocation(line: 884, column: 9, scope: !3269)
!3272 = !DILocation(line: 886, column: 32, scope: !3273)
!3273 = !DILexicalBlockFile(scope: !3245, file: !95, discriminator: 3)
!3274 = !DILocation(line: 886, column: 61, scope: !3273)
!3275 = !DILocation(line: 886, column: 58, scope: !3273)
!3276 = !DILocation(line: 886, column: 66, scope: !3273)
!3277 = !DILocation(line: 886, column: 22, scope: !3273)
!3278 = !DILocation(line: 886, column: 15, scope: !3273)
!3279 = !DILocation(line: 887, column: 11, scope: !3245)
!3280 = !DILocation(line: 888, column: 15, scope: !3281)
!3281 = distinct !DILexicalBlock(scope: !3245, file: !95, line: 887, column: 11)
!3282 = !{i64 0, i64 8, !3177, i64 8, i64 8, !629}
!3283 = !DILocation(line: 888, column: 9, scope: !3281)
!3284 = !DILocation(line: 889, column: 20, scope: !3245)
!3285 = !DILocation(line: 889, column: 18, scope: !3245)
!3286 = !DILocation(line: 889, column: 7, scope: !3245)
!3287 = !DILocation(line: 889, column: 38, scope: !3245)
!3288 = !DILocation(line: 889, column: 31, scope: !3245)
!3289 = !DILocation(line: 889, column: 48, scope: !3245)
!3290 = !DILocation(line: 890, column: 14, scope: !3245)
!3291 = !DILocation(line: 891, column: 5, scope: !3245)
!3292 = !DILocation(line: 894, column: 19, scope: !3248)
!3293 = !DILocation(line: 894, column: 25, scope: !3248)
!3294 = !DILocation(line: 894, column: 12, scope: !3248)
!3295 = !DILocation(line: 895, column: 23, scope: !3248)
!3296 = !DILocation(line: 895, column: 11, scope: !3248)
!3297 = !DILocation(line: 897, column: 26, scope: !3248)
!3298 = !DILocation(line: 897, column: 32, scope: !3248)
!3299 = !DILocation(line: 897, column: 9, scope: !3248)
!3300 = !DILocation(line: 899, column: 55, scope: !3248)
!3301 = !DILocation(line: 900, column: 46, scope: !3248)
!3302 = !DILocation(line: 901, column: 55, scope: !3248)
!3303 = !DILocation(line: 902, column: 55, scope: !3248)
!3304 = !DILocation(line: 898, column: 20, scope: !3248)
!3305 = !DILocation(line: 898, column: 12, scope: !3248)
!3306 = !DILocation(line: 904, column: 14, scope: !3307)
!3307 = distinct !DILexicalBlock(scope: !3248, file: !95, line: 904, column: 9)
!3308 = !DILocation(line: 904, column: 9, scope: !3248)
!3309 = !DILocation(line: 906, column: 35, scope: !3310)
!3310 = distinct !DILexicalBlock(scope: !3307, file: !95, line: 905, column: 7)
!3311 = !DILocation(line: 906, column: 20, scope: !3310)
!3312 = !DILocation(line: 907, column: 17, scope: !3313)
!3313 = distinct !DILexicalBlock(scope: !3310, file: !95, line: 907, column: 13)
!3314 = !DILocation(line: 907, column: 13, scope: !3310)
!3315 = !DILocation(line: 908, column: 11, scope: !3313)
!3316 = !DILocation(line: 220, column: 20, scope: !3132, inlinedAt: !3317)
!3317 = distinct !DILocation(line: 909, column: 27, scope: !3310)
!3318 = !DILocation(line: 222, column: 10, scope: !3132, inlinedAt: !3317)
!3319 = !DILocation(line: 909, column: 19, scope: !3310)
!3320 = !DILocation(line: 910, column: 69, scope: !3310)
!3321 = !DILocation(line: 912, column: 44, scope: !3310)
!3322 = !DILocation(line: 913, column: 44, scope: !3310)
!3323 = !DILocation(line: 910, column: 9, scope: !3310)
!3324 = !DILocation(line: 914, column: 7, scope: !3310)
!3325 = !DILocation(line: 916, column: 11, scope: !3248)
!3326 = !DILocation(line: 917, column: 5, scope: !3248)
!3327 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !95, file: !95, line: 928, type: !3328, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !50, variables: !3330)
!3328 = !DISubroutineType(types: !3329)
!3329 = !{!45, !20, !10, !89}
!3330 = !{!3331, !3332, !3333}
!3331 = !DILocalVariable(name: "n", arg: 1, scope: !3327, file: !95, line: 928, type: !20)
!3332 = !DILocalVariable(name: "arg", arg: 2, scope: !3327, file: !95, line: 928, type: !10)
!3333 = !DILocalVariable(name: "argsize", arg: 3, scope: !3327, file: !95, line: 928, type: !89)
!3334 = !DILocation(line: 928, column: 21, scope: !3327)
!3335 = !DILocation(line: 928, column: 36, scope: !3327)
!3336 = !DILocation(line: 928, column: 48, scope: !3327)
!3337 = !DILocation(line: 930, column: 10, scope: !3327)
!3338 = !DILocation(line: 930, column: 3, scope: !3327)
!3339 = distinct !DISubprogram(name: "quotearg", scope: !95, file: !95, line: 934, type: !3340, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !50, variables: !3342)
!3340 = !DISubroutineType(types: !3341)
!3341 = !{!45, !10}
!3342 = !{!3343}
!3343 = !DILocalVariable(name: "arg", arg: 1, scope: !3339, file: !95, line: 934, type: !10)
!3344 = !DILocation(line: 934, column: 23, scope: !3339)
!3345 = !DILocation(line: 922, column: 17, scope: !3224, inlinedAt: !3346)
!3346 = distinct !DILocation(line: 936, column: 10, scope: !3339)
!3347 = !DILocation(line: 922, column: 32, scope: !3224, inlinedAt: !3346)
!3348 = !DILocation(line: 924, column: 10, scope: !3224, inlinedAt: !3346)
!3349 = !DILocation(line: 936, column: 3, scope: !3339)
!3350 = distinct !DISubprogram(name: "quotearg_mem", scope: !95, file: !95, line: 940, type: !3351, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !50, variables: !3353)
!3351 = !DISubroutineType(types: !3352)
!3352 = !{!45, !10, !89}
!3353 = !{!3354, !3355}
!3354 = !DILocalVariable(name: "arg", arg: 1, scope: !3350, file: !95, line: 940, type: !10)
!3355 = !DILocalVariable(name: "argsize", arg: 2, scope: !3350, file: !95, line: 940, type: !89)
!3356 = !DILocation(line: 940, column: 27, scope: !3350)
!3357 = !DILocation(line: 940, column: 39, scope: !3350)
!3358 = !DILocation(line: 928, column: 21, scope: !3327, inlinedAt: !3359)
!3359 = distinct !DILocation(line: 942, column: 10, scope: !3350)
!3360 = !DILocation(line: 928, column: 36, scope: !3327, inlinedAt: !3359)
!3361 = !DILocation(line: 928, column: 48, scope: !3327, inlinedAt: !3359)
!3362 = !DILocation(line: 930, column: 10, scope: !3327, inlinedAt: !3359)
!3363 = !DILocation(line: 942, column: 3, scope: !3350)
!3364 = distinct !DISubprogram(name: "quotearg_n_style", scope: !95, file: !95, line: 946, type: !3365, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !50, variables: !3367)
!3365 = !DISubroutineType(types: !3366)
!3366 = !{!45, !20, !53, !10}
!3367 = !{!3368, !3369, !3370, !3371}
!3368 = !DILocalVariable(name: "n", arg: 1, scope: !3364, file: !95, line: 946, type: !20)
!3369 = !DILocalVariable(name: "s", arg: 2, scope: !3364, file: !95, line: 946, type: !53)
!3370 = !DILocalVariable(name: "arg", arg: 3, scope: !3364, file: !95, line: 946, type: !10)
!3371 = !DILocalVariable(name: "o", scope: !3364, file: !95, line: 948, type: !1930)
!3372 = !DILocalVariable(name: "o", scope: !3373, file: !95, line: 187, type: !102)
!3373 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !95, file: !95, line: 185, type: !3374, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !50, variables: !3376)
!3374 = !DISubroutineType(types: !3375)
!3375 = !{!102, !53}
!3376 = !{!3377, !3372}
!3377 = !DILocalVariable(name: "style", arg: 1, scope: !3373, file: !95, line: 185, type: !53)
!3378 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!3379 = !DILocation(line: 187, column: 26, scope: !3373, inlinedAt: !3380)
!3380 = distinct !DILocation(line: 948, column: 36, scope: !3364)
!3381 = !DILocation(line: 946, column: 23, scope: !3364)
!3382 = !DILocation(line: 946, column: 45, scope: !3364)
!3383 = !DILocation(line: 946, column: 60, scope: !3364)
!3384 = !DILocation(line: 948, column: 3, scope: !3364)
!3385 = !DILocation(line: 948, column: 32, scope: !3364)
!3386 = !DILocation(line: 185, column: 48, scope: !3373, inlinedAt: !3380)
!3387 = !DILocation(line: 187, column: 3, scope: !3373, inlinedAt: !3380)
!3388 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!3389 = !DILocation(line: 188, column: 13, scope: !3390, inlinedAt: !3380)
!3390 = distinct !DILexicalBlock(scope: !3373, file: !95, line: 188, column: 7)
!3391 = !DILocation(line: 188, column: 7, scope: !3373, inlinedAt: !3380)
!3392 = !DILocation(line: 189, column: 5, scope: !3390, inlinedAt: !3380)
!3393 = !{!3394}
!3394 = distinct !{!3394, !3395, !"quoting_options_from_style: argument 0"}
!3395 = distinct !{!3395, !"quoting_options_from_style"}
!3396 = !DILocation(line: 191, column: 10, scope: !3373, inlinedAt: !3380)
!3397 = !DILocation(line: 192, column: 1, scope: !3373, inlinedAt: !3380)
!3398 = !DILocation(line: 949, column: 10, scope: !3364)
!3399 = !DILocation(line: 950, column: 1, scope: !3364)
!3400 = !DILocation(line: 949, column: 3, scope: !3364)
!3401 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !95, file: !95, line: 953, type: !3402, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !50, variables: !3404)
!3402 = !DISubroutineType(types: !3403)
!3403 = !{!45, !20, !53, !10, !89}
!3404 = !{!3405, !3406, !3407, !3408, !3409}
!3405 = !DILocalVariable(name: "n", arg: 1, scope: !3401, file: !95, line: 953, type: !20)
!3406 = !DILocalVariable(name: "s", arg: 2, scope: !3401, file: !95, line: 953, type: !53)
!3407 = !DILocalVariable(name: "arg", arg: 3, scope: !3401, file: !95, line: 954, type: !10)
!3408 = !DILocalVariable(name: "argsize", arg: 4, scope: !3401, file: !95, line: 954, type: !89)
!3409 = !DILocalVariable(name: "o", scope: !3401, file: !95, line: 956, type: !1930)
!3410 = !DILocation(line: 187, column: 26, scope: !3373, inlinedAt: !3411)
!3411 = distinct !DILocation(line: 956, column: 36, scope: !3401)
!3412 = !DILocation(line: 953, column: 27, scope: !3401)
!3413 = !DILocation(line: 953, column: 49, scope: !3401)
!3414 = !DILocation(line: 954, column: 35, scope: !3401)
!3415 = !DILocation(line: 954, column: 47, scope: !3401)
!3416 = !DILocation(line: 956, column: 3, scope: !3401)
!3417 = !DILocation(line: 956, column: 32, scope: !3401)
!3418 = !DILocation(line: 185, column: 48, scope: !3373, inlinedAt: !3411)
!3419 = !DILocation(line: 187, column: 3, scope: !3373, inlinedAt: !3411)
!3420 = !DILocation(line: 188, column: 13, scope: !3390, inlinedAt: !3411)
!3421 = !DILocation(line: 188, column: 7, scope: !3373, inlinedAt: !3411)
!3422 = !DILocation(line: 189, column: 5, scope: !3390, inlinedAt: !3411)
!3423 = !{!3424}
!3424 = distinct !{!3424, !3425, !"quoting_options_from_style: argument 0"}
!3425 = distinct !{!3425, !"quoting_options_from_style"}
!3426 = !DILocation(line: 191, column: 10, scope: !3373, inlinedAt: !3411)
!3427 = !DILocation(line: 192, column: 1, scope: !3373, inlinedAt: !3411)
!3428 = !DILocation(line: 957, column: 10, scope: !3401)
!3429 = !DILocation(line: 958, column: 1, scope: !3401)
!3430 = !DILocation(line: 957, column: 3, scope: !3401)
!3431 = distinct !DISubprogram(name: "quotearg_style", scope: !95, file: !95, line: 961, type: !3432, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !50, variables: !3434)
!3432 = !DISubroutineType(types: !3433)
!3433 = !{!45, !53, !10}
!3434 = !{!3435, !3436}
!3435 = !DILocalVariable(name: "s", arg: 1, scope: !3431, file: !95, line: 961, type: !53)
!3436 = !DILocalVariable(name: "arg", arg: 2, scope: !3431, file: !95, line: 961, type: !10)
!3437 = !DILocation(line: 187, column: 26, scope: !3373, inlinedAt: !3438)
!3438 = distinct !DILocation(line: 948, column: 36, scope: !3364, inlinedAt: !3439)
!3439 = distinct !DILocation(line: 963, column: 10, scope: !3431)
!3440 = !DILocation(line: 961, column: 36, scope: !3431)
!3441 = !DILocation(line: 961, column: 51, scope: !3431)
!3442 = !DILocation(line: 946, column: 23, scope: !3364, inlinedAt: !3439)
!3443 = !DILocation(line: 946, column: 45, scope: !3364, inlinedAt: !3439)
!3444 = !DILocation(line: 946, column: 60, scope: !3364, inlinedAt: !3439)
!3445 = !DILocation(line: 948, column: 3, scope: !3364, inlinedAt: !3439)
!3446 = !DILocation(line: 948, column: 32, scope: !3364, inlinedAt: !3439)
!3447 = !DILocation(line: 185, column: 48, scope: !3373, inlinedAt: !3438)
!3448 = !DILocation(line: 187, column: 3, scope: !3373, inlinedAt: !3438)
!3449 = !DILocation(line: 188, column: 13, scope: !3390, inlinedAt: !3438)
!3450 = !DILocation(line: 188, column: 7, scope: !3373, inlinedAt: !3438)
!3451 = !DILocation(line: 189, column: 5, scope: !3390, inlinedAt: !3438)
!3452 = !{!3453}
!3453 = distinct !{!3453, !3454, !"quoting_options_from_style: argument 0"}
!3454 = distinct !{!3454, !"quoting_options_from_style"}
!3455 = !DILocation(line: 191, column: 10, scope: !3373, inlinedAt: !3438)
!3456 = !DILocation(line: 192, column: 1, scope: !3373, inlinedAt: !3438)
!3457 = !DILocation(line: 949, column: 10, scope: !3364, inlinedAt: !3439)
!3458 = !DILocation(line: 950, column: 1, scope: !3364, inlinedAt: !3439)
!3459 = !DILocation(line: 963, column: 3, scope: !3431)
!3460 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !95, file: !95, line: 967, type: !3461, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !50, variables: !3463)
!3461 = !DISubroutineType(types: !3462)
!3462 = !{!45, !53, !10, !89}
!3463 = !{!3464, !3465, !3466}
!3464 = !DILocalVariable(name: "s", arg: 1, scope: !3460, file: !95, line: 967, type: !53)
!3465 = !DILocalVariable(name: "arg", arg: 2, scope: !3460, file: !95, line: 967, type: !10)
!3466 = !DILocalVariable(name: "argsize", arg: 3, scope: !3460, file: !95, line: 967, type: !89)
!3467 = !DILocation(line: 187, column: 26, scope: !3373, inlinedAt: !3468)
!3468 = distinct !DILocation(line: 956, column: 36, scope: !3401, inlinedAt: !3469)
!3469 = distinct !DILocation(line: 969, column: 10, scope: !3460)
!3470 = !DILocation(line: 967, column: 40, scope: !3460)
!3471 = !DILocation(line: 967, column: 55, scope: !3460)
!3472 = !DILocation(line: 967, column: 67, scope: !3460)
!3473 = !DILocation(line: 953, column: 27, scope: !3401, inlinedAt: !3469)
!3474 = !DILocation(line: 953, column: 49, scope: !3401, inlinedAt: !3469)
!3475 = !DILocation(line: 954, column: 35, scope: !3401, inlinedAt: !3469)
!3476 = !DILocation(line: 954, column: 47, scope: !3401, inlinedAt: !3469)
!3477 = !DILocation(line: 956, column: 3, scope: !3401, inlinedAt: !3469)
!3478 = !DILocation(line: 956, column: 32, scope: !3401, inlinedAt: !3469)
!3479 = !DILocation(line: 185, column: 48, scope: !3373, inlinedAt: !3468)
!3480 = !DILocation(line: 187, column: 3, scope: !3373, inlinedAt: !3468)
!3481 = !DILocation(line: 188, column: 13, scope: !3390, inlinedAt: !3468)
!3482 = !DILocation(line: 188, column: 7, scope: !3373, inlinedAt: !3468)
!3483 = !DILocation(line: 189, column: 5, scope: !3390, inlinedAt: !3468)
!3484 = !{!3485}
!3485 = distinct !{!3485, !3486, !"quoting_options_from_style: argument 0"}
!3486 = distinct !{!3486, !"quoting_options_from_style"}
!3487 = !DILocation(line: 191, column: 10, scope: !3373, inlinedAt: !3468)
!3488 = !DILocation(line: 192, column: 1, scope: !3373, inlinedAt: !3468)
!3489 = !DILocation(line: 957, column: 10, scope: !3401, inlinedAt: !3469)
!3490 = !DILocation(line: 958, column: 1, scope: !3401, inlinedAt: !3469)
!3491 = !DILocation(line: 969, column: 3, scope: !3460)
!3492 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !95, file: !95, line: 973, type: !3493, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !50, variables: !3495)
!3493 = !DISubroutineType(types: !3494)
!3494 = !{!45, !10, !89, !12}
!3495 = !{!3496, !3497, !3498, !3499}
!3496 = !DILocalVariable(name: "arg", arg: 1, scope: !3492, file: !95, line: 973, type: !10)
!3497 = !DILocalVariable(name: "argsize", arg: 2, scope: !3492, file: !95, line: 973, type: !89)
!3498 = !DILocalVariable(name: "ch", arg: 3, scope: !3492, file: !95, line: 973, type: !12)
!3499 = !DILocalVariable(name: "options", scope: !3492, file: !95, line: 975, type: !102)
!3500 = !DILocation(line: 973, column: 32, scope: !3492)
!3501 = !DILocation(line: 973, column: 44, scope: !3492)
!3502 = !DILocation(line: 973, column: 58, scope: !3492)
!3503 = !DILocation(line: 975, column: 3, scope: !3492)
!3504 = !DILocation(line: 976, column: 13, scope: !3492)
!3505 = !{i64 0, i64 4, !751, i64 4, i64 4, !1540, i64 8, i64 32, !751, i64 40, i64 8, !629, i64 48, i64 8, !629}
!3506 = !DILocation(line: 975, column: 26, scope: !3492)
!3507 = !DILocation(line: 144, column: 43, scope: !1953, inlinedAt: !3508)
!3508 = distinct !DILocation(line: 977, column: 3, scope: !3492)
!3509 = !DILocation(line: 144, column: 51, scope: !1953, inlinedAt: !3508)
!3510 = !DILocation(line: 144, column: 58, scope: !1953, inlinedAt: !3508)
!3511 = !DILocation(line: 146, column: 17, scope: !1953, inlinedAt: !3508)
!3512 = !DILocation(line: 148, column: 62, scope: !1971, inlinedAt: !3508)
!3513 = !DILocation(line: 148, column: 57, scope: !1971, inlinedAt: !3508)
!3514 = !DILocation(line: 147, column: 17, scope: !1953, inlinedAt: !3508)
!3515 = !DILocation(line: 149, column: 18, scope: !1953, inlinedAt: !3508)
!3516 = !DILocation(line: 149, column: 15, scope: !1953, inlinedAt: !3508)
!3517 = !DILocation(line: 149, column: 7, scope: !1953, inlinedAt: !3508)
!3518 = !DILocation(line: 150, column: 12, scope: !1953, inlinedAt: !3508)
!3519 = !DILocation(line: 150, column: 15, scope: !1953, inlinedAt: !3508)
!3520 = !DILocation(line: 150, column: 25, scope: !1953, inlinedAt: !3508)
!3521 = !DILocation(line: 150, column: 7, scope: !1953, inlinedAt: !3508)
!3522 = !DILocation(line: 151, column: 18, scope: !1953, inlinedAt: !3508)
!3523 = !DILocation(line: 151, column: 23, scope: !1953, inlinedAt: !3508)
!3524 = !DILocation(line: 151, column: 6, scope: !1953, inlinedAt: !3508)
!3525 = !DILocation(line: 978, column: 10, scope: !3492)
!3526 = !DILocation(line: 979, column: 1, scope: !3492)
!3527 = !DILocation(line: 978, column: 3, scope: !3492)
!3528 = distinct !DISubprogram(name: "quotearg_char", scope: !95, file: !95, line: 982, type: !3529, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !50, variables: !3531)
!3529 = !DISubroutineType(types: !3530)
!3530 = !{!45, !10, !12}
!3531 = !{!3532, !3533}
!3532 = !DILocalVariable(name: "arg", arg: 1, scope: !3528, file: !95, line: 982, type: !10)
!3533 = !DILocalVariable(name: "ch", arg: 2, scope: !3528, file: !95, line: 982, type: !12)
!3534 = !DILocation(line: 982, column: 28, scope: !3528)
!3535 = !DILocation(line: 982, column: 38, scope: !3528)
!3536 = !DILocation(line: 973, column: 32, scope: !3492, inlinedAt: !3537)
!3537 = distinct !DILocation(line: 984, column: 10, scope: !3528)
!3538 = !DILocation(line: 973, column: 44, scope: !3492, inlinedAt: !3537)
!3539 = !DILocation(line: 973, column: 58, scope: !3492, inlinedAt: !3537)
!3540 = !DILocation(line: 975, column: 3, scope: !3492, inlinedAt: !3537)
!3541 = !DILocation(line: 976, column: 13, scope: !3492, inlinedAt: !3537)
!3542 = !DILocation(line: 975, column: 26, scope: !3492, inlinedAt: !3537)
!3543 = !DILocation(line: 144, column: 43, scope: !1953, inlinedAt: !3544)
!3544 = distinct !DILocation(line: 977, column: 3, scope: !3492, inlinedAt: !3537)
!3545 = !DILocation(line: 144, column: 51, scope: !1953, inlinedAt: !3544)
!3546 = !DILocation(line: 144, column: 58, scope: !1953, inlinedAt: !3544)
!3547 = !DILocation(line: 146, column: 17, scope: !1953, inlinedAt: !3544)
!3548 = !DILocation(line: 148, column: 62, scope: !1971, inlinedAt: !3544)
!3549 = !DILocation(line: 148, column: 57, scope: !1971, inlinedAt: !3544)
!3550 = !DILocation(line: 147, column: 17, scope: !1953, inlinedAt: !3544)
!3551 = !DILocation(line: 149, column: 18, scope: !1953, inlinedAt: !3544)
!3552 = !DILocation(line: 149, column: 15, scope: !1953, inlinedAt: !3544)
!3553 = !DILocation(line: 149, column: 7, scope: !1953, inlinedAt: !3544)
!3554 = !DILocation(line: 150, column: 12, scope: !1953, inlinedAt: !3544)
!3555 = !DILocation(line: 150, column: 15, scope: !1953, inlinedAt: !3544)
!3556 = !DILocation(line: 150, column: 25, scope: !1953, inlinedAt: !3544)
!3557 = !DILocation(line: 150, column: 7, scope: !1953, inlinedAt: !3544)
!3558 = !DILocation(line: 151, column: 18, scope: !1953, inlinedAt: !3544)
!3559 = !DILocation(line: 151, column: 23, scope: !1953, inlinedAt: !3544)
!3560 = !DILocation(line: 151, column: 6, scope: !1953, inlinedAt: !3544)
!3561 = !DILocation(line: 978, column: 10, scope: !3492, inlinedAt: !3537)
!3562 = !DILocation(line: 979, column: 1, scope: !3492, inlinedAt: !3537)
!3563 = !DILocation(line: 984, column: 3, scope: !3528)
!3564 = distinct !DISubprogram(name: "quotearg_colon", scope: !95, file: !95, line: 988, type: !3340, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !50, variables: !3565)
!3565 = !{!3566}
!3566 = !DILocalVariable(name: "arg", arg: 1, scope: !3564, file: !95, line: 988, type: !10)
!3567 = !DILocation(line: 988, column: 29, scope: !3564)
!3568 = !DILocation(line: 982, column: 28, scope: !3528, inlinedAt: !3569)
!3569 = distinct !DILocation(line: 990, column: 10, scope: !3564)
!3570 = !DILocation(line: 982, column: 38, scope: !3528, inlinedAt: !3569)
!3571 = !DILocation(line: 973, column: 32, scope: !3492, inlinedAt: !3572)
!3572 = distinct !DILocation(line: 984, column: 10, scope: !3528, inlinedAt: !3569)
!3573 = !DILocation(line: 973, column: 44, scope: !3492, inlinedAt: !3572)
!3574 = !DILocation(line: 973, column: 58, scope: !3492, inlinedAt: !3572)
!3575 = !DILocation(line: 975, column: 3, scope: !3492, inlinedAt: !3572)
!3576 = !DILocation(line: 976, column: 13, scope: !3492, inlinedAt: !3572)
!3577 = !DILocation(line: 975, column: 26, scope: !3492, inlinedAt: !3572)
!3578 = !DILocation(line: 144, column: 43, scope: !1953, inlinedAt: !3579)
!3579 = distinct !DILocation(line: 977, column: 3, scope: !3492, inlinedAt: !3572)
!3580 = !DILocation(line: 144, column: 51, scope: !1953, inlinedAt: !3579)
!3581 = !DILocation(line: 144, column: 58, scope: !1953, inlinedAt: !3579)
!3582 = !DILocation(line: 146, column: 17, scope: !1953, inlinedAt: !3579)
!3583 = !DILocation(line: 148, column: 57, scope: !1971, inlinedAt: !3579)
!3584 = !DILocation(line: 147, column: 17, scope: !1953, inlinedAt: !3579)
!3585 = !DILocation(line: 149, column: 7, scope: !1953, inlinedAt: !3579)
!3586 = !DILocation(line: 150, column: 12, scope: !1953, inlinedAt: !3579)
!3587 = !DILocation(line: 151, column: 6, scope: !1953, inlinedAt: !3579)
!3588 = !DILocation(line: 978, column: 10, scope: !3492, inlinedAt: !3572)
!3589 = !DILocation(line: 979, column: 1, scope: !3492, inlinedAt: !3572)
!3590 = !DILocation(line: 990, column: 3, scope: !3564)
!3591 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !95, file: !95, line: 994, type: !3351, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !50, variables: !3592)
!3592 = !{!3593, !3594}
!3593 = !DILocalVariable(name: "arg", arg: 1, scope: !3591, file: !95, line: 994, type: !10)
!3594 = !DILocalVariable(name: "argsize", arg: 2, scope: !3591, file: !95, line: 994, type: !89)
!3595 = !DILocation(line: 994, column: 33, scope: !3591)
!3596 = !DILocation(line: 994, column: 45, scope: !3591)
!3597 = !DILocation(line: 973, column: 32, scope: !3492, inlinedAt: !3598)
!3598 = distinct !DILocation(line: 996, column: 10, scope: !3591)
!3599 = !DILocation(line: 973, column: 44, scope: !3492, inlinedAt: !3598)
!3600 = !DILocation(line: 973, column: 58, scope: !3492, inlinedAt: !3598)
!3601 = !DILocation(line: 975, column: 3, scope: !3492, inlinedAt: !3598)
!3602 = !DILocation(line: 976, column: 13, scope: !3492, inlinedAt: !3598)
!3603 = !DILocation(line: 975, column: 26, scope: !3492, inlinedAt: !3598)
!3604 = !DILocation(line: 144, column: 43, scope: !1953, inlinedAt: !3605)
!3605 = distinct !DILocation(line: 977, column: 3, scope: !3492, inlinedAt: !3598)
!3606 = !DILocation(line: 144, column: 51, scope: !1953, inlinedAt: !3605)
!3607 = !DILocation(line: 144, column: 58, scope: !1953, inlinedAt: !3605)
!3608 = !DILocation(line: 146, column: 17, scope: !1953, inlinedAt: !3605)
!3609 = !DILocation(line: 148, column: 57, scope: !1971, inlinedAt: !3605)
!3610 = !DILocation(line: 147, column: 17, scope: !1953, inlinedAt: !3605)
!3611 = !DILocation(line: 149, column: 7, scope: !1953, inlinedAt: !3605)
!3612 = !DILocation(line: 150, column: 12, scope: !1953, inlinedAt: !3605)
!3613 = !DILocation(line: 151, column: 6, scope: !1953, inlinedAt: !3605)
!3614 = !DILocation(line: 978, column: 10, scope: !3492, inlinedAt: !3598)
!3615 = !DILocation(line: 979, column: 1, scope: !3492, inlinedAt: !3598)
!3616 = !DILocation(line: 996, column: 3, scope: !3591)
!3617 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !95, file: !95, line: 1000, type: !3365, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !50, variables: !3618)
!3618 = !{!3619, !3620, !3621, !3622}
!3619 = !DILocalVariable(name: "n", arg: 1, scope: !3617, file: !95, line: 1000, type: !20)
!3620 = !DILocalVariable(name: "s", arg: 2, scope: !3617, file: !95, line: 1000, type: !53)
!3621 = !DILocalVariable(name: "arg", arg: 3, scope: !3617, file: !95, line: 1000, type: !10)
!3622 = !DILocalVariable(name: "options", scope: !3617, file: !95, line: 1002, type: !102)
!3623 = !DILocation(line: 187, column: 26, scope: !3373, inlinedAt: !3624)
!3624 = distinct !DILocation(line: 1003, column: 13, scope: !3617)
!3625 = !DILocation(line: 1000, column: 29, scope: !3617)
!3626 = !DILocation(line: 1000, column: 51, scope: !3617)
!3627 = !DILocation(line: 1000, column: 66, scope: !3617)
!3628 = !DILocation(line: 1002, column: 3, scope: !3617)
!3629 = !DILocation(line: 185, column: 48, scope: !3373, inlinedAt: !3624)
!3630 = !DILocation(line: 187, column: 3, scope: !3373, inlinedAt: !3624)
!3631 = !DILocation(line: 188, column: 13, scope: !3390, inlinedAt: !3624)
!3632 = !DILocation(line: 188, column: 7, scope: !3373, inlinedAt: !3624)
!3633 = !DILocation(line: 189, column: 5, scope: !3390, inlinedAt: !3624)
!3634 = !{!3635}
!3635 = distinct !{!3635, !3636, !"quoting_options_from_style: argument 0"}
!3636 = distinct !{!3636, !"quoting_options_from_style"}
!3637 = !DILocation(line: 191, column: 10, scope: !3373, inlinedAt: !3624)
!3638 = !DILocation(line: 192, column: 1, scope: !3373, inlinedAt: !3624)
!3639 = !DILocation(line: 1003, column: 13, scope: !3617)
!3640 = !DILocation(line: 1002, column: 26, scope: !3617)
!3641 = !DILocation(line: 144, column: 43, scope: !1953, inlinedAt: !3642)
!3642 = distinct !DILocation(line: 1004, column: 3, scope: !3617)
!3643 = !DILocation(line: 144, column: 51, scope: !1953, inlinedAt: !3642)
!3644 = !DILocation(line: 144, column: 58, scope: !1953, inlinedAt: !3642)
!3645 = !DILocation(line: 146, column: 17, scope: !1953, inlinedAt: !3642)
!3646 = !DILocation(line: 148, column: 57, scope: !1971, inlinedAt: !3642)
!3647 = !DILocation(line: 147, column: 17, scope: !1953, inlinedAt: !3642)
!3648 = !DILocation(line: 149, column: 7, scope: !1953, inlinedAt: !3642)
!3649 = !DILocation(line: 150, column: 12, scope: !1953, inlinedAt: !3642)
!3650 = !DILocation(line: 151, column: 6, scope: !1953, inlinedAt: !3642)
!3651 = !DILocation(line: 1005, column: 10, scope: !3617)
!3652 = !DILocation(line: 1006, column: 1, scope: !3617)
!3653 = !DILocation(line: 1005, column: 3, scope: !3617)
!3654 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !95, file: !95, line: 1009, type: !3655, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !50, variables: !3657)
!3655 = !DISubroutineType(types: !3656)
!3656 = !{!45, !20, !10, !10, !10}
!3657 = !{!3658, !3659, !3660, !3661}
!3658 = !DILocalVariable(name: "n", arg: 1, scope: !3654, file: !95, line: 1009, type: !20)
!3659 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3654, file: !95, line: 1009, type: !10)
!3660 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3654, file: !95, line: 1010, type: !10)
!3661 = !DILocalVariable(name: "arg", arg: 4, scope: !3654, file: !95, line: 1010, type: !10)
!3662 = !DILocation(line: 1009, column: 24, scope: !3654)
!3663 = !DILocation(line: 1009, column: 39, scope: !3654)
!3664 = !DILocation(line: 1010, column: 32, scope: !3654)
!3665 = !DILocation(line: 1010, column: 57, scope: !3654)
!3666 = !DILocalVariable(name: "n", arg: 1, scope: !3667, file: !95, line: 1017, type: !20)
!3667 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !95, file: !95, line: 1017, type: !3668, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !50, variables: !3670)
!3668 = !DISubroutineType(types: !3669)
!3669 = !{!45, !20, !10, !10, !10, !89}
!3670 = !{!3666, !3671, !3672, !3673, !3674, !3675}
!3671 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3667, file: !95, line: 1017, type: !10)
!3672 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3667, file: !95, line: 1018, type: !10)
!3673 = !DILocalVariable(name: "arg", arg: 4, scope: !3667, file: !95, line: 1019, type: !10)
!3674 = !DILocalVariable(name: "argsize", arg: 5, scope: !3667, file: !95, line: 1019, type: !89)
!3675 = !DILocalVariable(name: "o", scope: !3667, file: !95, line: 1021, type: !102)
!3676 = !DILocation(line: 1017, column: 28, scope: !3667, inlinedAt: !3677)
!3677 = distinct !DILocation(line: 1012, column: 10, scope: !3654)
!3678 = !DILocation(line: 1017, column: 43, scope: !3667, inlinedAt: !3677)
!3679 = !DILocation(line: 1018, column: 36, scope: !3667, inlinedAt: !3677)
!3680 = !DILocation(line: 1019, column: 36, scope: !3667, inlinedAt: !3677)
!3681 = !DILocation(line: 1019, column: 48, scope: !3667, inlinedAt: !3677)
!3682 = !DILocation(line: 1021, column: 3, scope: !3667, inlinedAt: !3677)
!3683 = !DILocation(line: 1021, column: 30, scope: !3667, inlinedAt: !3677)
!3684 = !DILocation(line: 1021, column: 26, scope: !3667, inlinedAt: !3677)
!3685 = !DILocation(line: 171, column: 45, scope: !2003, inlinedAt: !3686)
!3686 = distinct !DILocation(line: 1022, column: 3, scope: !3667, inlinedAt: !3677)
!3687 = !DILocation(line: 172, column: 33, scope: !2003, inlinedAt: !3686)
!3688 = !DILocation(line: 172, column: 57, scope: !2003, inlinedAt: !3686)
!3689 = !DILocation(line: 176, column: 6, scope: !2003, inlinedAt: !3686)
!3690 = !DILocation(line: 176, column: 12, scope: !2003, inlinedAt: !3686)
!3691 = !DILocation(line: 177, column: 8, scope: !2019, inlinedAt: !3686)
!3692 = !DILocation(line: 177, column: 23, scope: !2021, inlinedAt: !3686)
!3693 = !DILocation(line: 177, column: 19, scope: !2019, inlinedAt: !3686)
!3694 = !DILocation(line: 178, column: 5, scope: !2019, inlinedAt: !3686)
!3695 = !DILocation(line: 179, column: 6, scope: !2003, inlinedAt: !3686)
!3696 = !DILocation(line: 179, column: 17, scope: !2003, inlinedAt: !3686)
!3697 = !DILocation(line: 180, column: 6, scope: !2003, inlinedAt: !3686)
!3698 = !DILocation(line: 180, column: 18, scope: !2003, inlinedAt: !3686)
!3699 = !DILocation(line: 1023, column: 10, scope: !3667, inlinedAt: !3677)
!3700 = !DILocation(line: 1024, column: 1, scope: !3667, inlinedAt: !3677)
!3701 = !DILocation(line: 1012, column: 3, scope: !3654)
!3702 = !DILocation(line: 1017, column: 28, scope: !3667)
!3703 = !DILocation(line: 1017, column: 43, scope: !3667)
!3704 = !DILocation(line: 1018, column: 36, scope: !3667)
!3705 = !DILocation(line: 1019, column: 36, scope: !3667)
!3706 = !DILocation(line: 1019, column: 48, scope: !3667)
!3707 = !DILocation(line: 1021, column: 3, scope: !3667)
!3708 = !DILocation(line: 1021, column: 30, scope: !3667)
!3709 = !DILocation(line: 1021, column: 26, scope: !3667)
!3710 = !DILocation(line: 171, column: 45, scope: !2003, inlinedAt: !3711)
!3711 = distinct !DILocation(line: 1022, column: 3, scope: !3667)
!3712 = !DILocation(line: 172, column: 33, scope: !2003, inlinedAt: !3711)
!3713 = !DILocation(line: 172, column: 57, scope: !2003, inlinedAt: !3711)
!3714 = !DILocation(line: 176, column: 6, scope: !2003, inlinedAt: !3711)
!3715 = !DILocation(line: 176, column: 12, scope: !2003, inlinedAt: !3711)
!3716 = !DILocation(line: 177, column: 8, scope: !2019, inlinedAt: !3711)
!3717 = !DILocation(line: 177, column: 23, scope: !2021, inlinedAt: !3711)
!3718 = !DILocation(line: 177, column: 19, scope: !2019, inlinedAt: !3711)
!3719 = !DILocation(line: 178, column: 5, scope: !2019, inlinedAt: !3711)
!3720 = !DILocation(line: 179, column: 6, scope: !2003, inlinedAt: !3711)
!3721 = !DILocation(line: 179, column: 17, scope: !2003, inlinedAt: !3711)
!3722 = !DILocation(line: 180, column: 6, scope: !2003, inlinedAt: !3711)
!3723 = !DILocation(line: 180, column: 18, scope: !2003, inlinedAt: !3711)
!3724 = !DILocation(line: 1023, column: 10, scope: !3667)
!3725 = !DILocation(line: 1024, column: 1, scope: !3667)
!3726 = !DILocation(line: 1023, column: 3, scope: !3667)
!3727 = distinct !DISubprogram(name: "quotearg_custom", scope: !95, file: !95, line: 1027, type: !3728, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !50, variables: !3730)
!3728 = !DISubroutineType(types: !3729)
!3729 = !{!45, !10, !10, !10}
!3730 = !{!3731, !3732, !3733}
!3731 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3727, file: !95, line: 1027, type: !10)
!3732 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3727, file: !95, line: 1027, type: !10)
!3733 = !DILocalVariable(name: "arg", arg: 3, scope: !3727, file: !95, line: 1028, type: !10)
!3734 = !DILocation(line: 1027, column: 30, scope: !3727)
!3735 = !DILocation(line: 1027, column: 54, scope: !3727)
!3736 = !DILocation(line: 1028, column: 30, scope: !3727)
!3737 = !DILocation(line: 1009, column: 24, scope: !3654, inlinedAt: !3738)
!3738 = distinct !DILocation(line: 1030, column: 10, scope: !3727)
!3739 = !DILocation(line: 1009, column: 39, scope: !3654, inlinedAt: !3738)
!3740 = !DILocation(line: 1010, column: 32, scope: !3654, inlinedAt: !3738)
!3741 = !DILocation(line: 1010, column: 57, scope: !3654, inlinedAt: !3738)
!3742 = !DILocation(line: 1017, column: 28, scope: !3667, inlinedAt: !3743)
!3743 = distinct !DILocation(line: 1012, column: 10, scope: !3654, inlinedAt: !3738)
!3744 = !DILocation(line: 1017, column: 43, scope: !3667, inlinedAt: !3743)
!3745 = !DILocation(line: 1018, column: 36, scope: !3667, inlinedAt: !3743)
!3746 = !DILocation(line: 1019, column: 36, scope: !3667, inlinedAt: !3743)
!3747 = !DILocation(line: 1019, column: 48, scope: !3667, inlinedAt: !3743)
!3748 = !DILocation(line: 1021, column: 3, scope: !3667, inlinedAt: !3743)
!3749 = !DILocation(line: 1021, column: 30, scope: !3667, inlinedAt: !3743)
!3750 = !DILocation(line: 1021, column: 26, scope: !3667, inlinedAt: !3743)
!3751 = !DILocation(line: 171, column: 45, scope: !2003, inlinedAt: !3752)
!3752 = distinct !DILocation(line: 1022, column: 3, scope: !3667, inlinedAt: !3743)
!3753 = !DILocation(line: 172, column: 33, scope: !2003, inlinedAt: !3752)
!3754 = !DILocation(line: 172, column: 57, scope: !2003, inlinedAt: !3752)
!3755 = !DILocation(line: 176, column: 6, scope: !2003, inlinedAt: !3752)
!3756 = !DILocation(line: 176, column: 12, scope: !2003, inlinedAt: !3752)
!3757 = !DILocation(line: 177, column: 8, scope: !2019, inlinedAt: !3752)
!3758 = !DILocation(line: 177, column: 23, scope: !2021, inlinedAt: !3752)
!3759 = !DILocation(line: 177, column: 19, scope: !2019, inlinedAt: !3752)
!3760 = !DILocation(line: 178, column: 5, scope: !2019, inlinedAt: !3752)
!3761 = !DILocation(line: 179, column: 6, scope: !2003, inlinedAt: !3752)
!3762 = !DILocation(line: 179, column: 17, scope: !2003, inlinedAt: !3752)
!3763 = !DILocation(line: 180, column: 6, scope: !2003, inlinedAt: !3752)
!3764 = !DILocation(line: 180, column: 18, scope: !2003, inlinedAt: !3752)
!3765 = !DILocation(line: 1023, column: 10, scope: !3667, inlinedAt: !3743)
!3766 = !DILocation(line: 1024, column: 1, scope: !3667, inlinedAt: !3743)
!3767 = !DILocation(line: 1030, column: 3, scope: !3727)
!3768 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !95, file: !95, line: 1034, type: !3769, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !50, variables: !3771)
!3769 = !DISubroutineType(types: !3770)
!3770 = !{!45, !10, !10, !10, !89}
!3771 = !{!3772, !3773, !3774, !3775}
!3772 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3768, file: !95, line: 1034, type: !10)
!3773 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3768, file: !95, line: 1034, type: !10)
!3774 = !DILocalVariable(name: "arg", arg: 3, scope: !3768, file: !95, line: 1035, type: !10)
!3775 = !DILocalVariable(name: "argsize", arg: 4, scope: !3768, file: !95, line: 1035, type: !89)
!3776 = !DILocation(line: 1034, column: 34, scope: !3768)
!3777 = !DILocation(line: 1034, column: 58, scope: !3768)
!3778 = !DILocation(line: 1035, column: 34, scope: !3768)
!3779 = !DILocation(line: 1035, column: 46, scope: !3768)
!3780 = !DILocation(line: 1017, column: 28, scope: !3667, inlinedAt: !3781)
!3781 = distinct !DILocation(line: 1037, column: 10, scope: !3768)
!3782 = !DILocation(line: 1017, column: 43, scope: !3667, inlinedAt: !3781)
!3783 = !DILocation(line: 1018, column: 36, scope: !3667, inlinedAt: !3781)
!3784 = !DILocation(line: 1019, column: 36, scope: !3667, inlinedAt: !3781)
!3785 = !DILocation(line: 1019, column: 48, scope: !3667, inlinedAt: !3781)
!3786 = !DILocation(line: 1021, column: 3, scope: !3667, inlinedAt: !3781)
!3787 = !DILocation(line: 1021, column: 30, scope: !3667, inlinedAt: !3781)
!3788 = !DILocation(line: 1021, column: 26, scope: !3667, inlinedAt: !3781)
!3789 = !DILocation(line: 171, column: 45, scope: !2003, inlinedAt: !3790)
!3790 = distinct !DILocation(line: 1022, column: 3, scope: !3667, inlinedAt: !3781)
!3791 = !DILocation(line: 172, column: 33, scope: !2003, inlinedAt: !3790)
!3792 = !DILocation(line: 172, column: 57, scope: !2003, inlinedAt: !3790)
!3793 = !DILocation(line: 176, column: 6, scope: !2003, inlinedAt: !3790)
!3794 = !DILocation(line: 176, column: 12, scope: !2003, inlinedAt: !3790)
!3795 = !DILocation(line: 177, column: 8, scope: !2019, inlinedAt: !3790)
!3796 = !DILocation(line: 177, column: 23, scope: !2021, inlinedAt: !3790)
!3797 = !DILocation(line: 177, column: 19, scope: !2019, inlinedAt: !3790)
!3798 = !DILocation(line: 178, column: 5, scope: !2019, inlinedAt: !3790)
!3799 = !DILocation(line: 179, column: 6, scope: !2003, inlinedAt: !3790)
!3800 = !DILocation(line: 179, column: 17, scope: !2003, inlinedAt: !3790)
!3801 = !DILocation(line: 180, column: 6, scope: !2003, inlinedAt: !3790)
!3802 = !DILocation(line: 180, column: 18, scope: !2003, inlinedAt: !3790)
!3803 = !DILocation(line: 1023, column: 10, scope: !3667, inlinedAt: !3781)
!3804 = !DILocation(line: 1024, column: 1, scope: !3667, inlinedAt: !3781)
!3805 = !DILocation(line: 1037, column: 3, scope: !3768)
!3806 = distinct !DISubprogram(name: "quote_n_mem", scope: !95, file: !95, line: 1052, type: !3807, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !50, variables: !3809)
!3807 = !DISubroutineType(types: !3808)
!3808 = !{!10, !20, !10, !89}
!3809 = !{!3810, !3811, !3812}
!3810 = !DILocalVariable(name: "n", arg: 1, scope: !3806, file: !95, line: 1052, type: !20)
!3811 = !DILocalVariable(name: "arg", arg: 2, scope: !3806, file: !95, line: 1052, type: !10)
!3812 = !DILocalVariable(name: "argsize", arg: 3, scope: !3806, file: !95, line: 1052, type: !89)
!3813 = !DILocation(line: 1052, column: 18, scope: !3806)
!3814 = !DILocation(line: 1052, column: 33, scope: !3806)
!3815 = !DILocation(line: 1052, column: 45, scope: !3806)
!3816 = !DILocation(line: 1054, column: 10, scope: !3806)
!3817 = !DILocation(line: 1054, column: 3, scope: !3806)
!3818 = distinct !DISubprogram(name: "quote_mem", scope: !95, file: !95, line: 1058, type: !3819, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !50, variables: !3821)
!3819 = !DISubroutineType(types: !3820)
!3820 = !{!10, !10, !89}
!3821 = !{!3822, !3823}
!3822 = !DILocalVariable(name: "arg", arg: 1, scope: !3818, file: !95, line: 1058, type: !10)
!3823 = !DILocalVariable(name: "argsize", arg: 2, scope: !3818, file: !95, line: 1058, type: !89)
!3824 = !DILocation(line: 1058, column: 24, scope: !3818)
!3825 = !DILocation(line: 1058, column: 36, scope: !3818)
!3826 = !DILocation(line: 1052, column: 18, scope: !3806, inlinedAt: !3827)
!3827 = distinct !DILocation(line: 1060, column: 10, scope: !3818)
!3828 = !DILocation(line: 1052, column: 33, scope: !3806, inlinedAt: !3827)
!3829 = !DILocation(line: 1052, column: 45, scope: !3806, inlinedAt: !3827)
!3830 = !DILocation(line: 1054, column: 10, scope: !3806, inlinedAt: !3827)
!3831 = !DILocation(line: 1060, column: 3, scope: !3818)
!3832 = distinct !DISubprogram(name: "quote_n", scope: !95, file: !95, line: 1064, type: !3833, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !50, variables: !3835)
!3833 = !DISubroutineType(types: !3834)
!3834 = !{!10, !20, !10}
!3835 = !{!3836, !3837}
!3836 = !DILocalVariable(name: "n", arg: 1, scope: !3832, file: !95, line: 1064, type: !20)
!3837 = !DILocalVariable(name: "arg", arg: 2, scope: !3832, file: !95, line: 1064, type: !10)
!3838 = !DILocation(line: 1064, column: 14, scope: !3832)
!3839 = !DILocation(line: 1064, column: 29, scope: !3832)
!3840 = !DILocation(line: 1052, column: 18, scope: !3806, inlinedAt: !3841)
!3841 = distinct !DILocation(line: 1066, column: 10, scope: !3832)
!3842 = !DILocation(line: 1052, column: 33, scope: !3806, inlinedAt: !3841)
!3843 = !DILocation(line: 1052, column: 45, scope: !3806, inlinedAt: !3841)
!3844 = !DILocation(line: 1054, column: 10, scope: !3806, inlinedAt: !3841)
!3845 = !DILocation(line: 1066, column: 3, scope: !3832)
!3846 = distinct !DISubprogram(name: "quote", scope: !95, file: !95, line: 1070, type: !3847, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !50, variables: !3849)
!3847 = !DISubroutineType(types: !3848)
!3848 = !{!10, !10}
!3849 = !{!3850}
!3850 = !DILocalVariable(name: "arg", arg: 1, scope: !3846, file: !95, line: 1070, type: !10)
!3851 = !DILocation(line: 1070, column: 20, scope: !3846)
!3852 = !DILocation(line: 1064, column: 14, scope: !3832, inlinedAt: !3853)
!3853 = distinct !DILocation(line: 1072, column: 10, scope: !3846)
!3854 = !DILocation(line: 1064, column: 29, scope: !3832, inlinedAt: !3853)
!3855 = !DILocation(line: 1052, column: 18, scope: !3806, inlinedAt: !3856)
!3856 = distinct !DILocation(line: 1066, column: 10, scope: !3832, inlinedAt: !3853)
!3857 = !DILocation(line: 1052, column: 33, scope: !3806, inlinedAt: !3856)
!3858 = !DILocation(line: 1052, column: 45, scope: !3806, inlinedAt: !3856)
!3859 = !DILocation(line: 1054, column: 10, scope: !3806, inlinedAt: !3856)
!3860 = !DILocation(line: 1072, column: 3, scope: !3846)
!3861 = distinct !DISubprogram(name: "version_etc_arn", scope: !572, file: !572, line: 62, type: !3862, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !568, variables: !3914)
!3862 = !DISubroutineType(types: !3863)
!3863 = !{null, !3864, !10, !10, !10, !3913, !89}
!3864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3865, size: 64)
!3865 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !513, line: 49, baseType: !3866)
!3866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3867, line: 241, size: 1728, elements: !3868)
!3867 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3868 = !{!3869, !3870, !3871, !3872, !3873, !3874, !3875, !3876, !3877, !3878, !3879, !3880, !3881, !3889, !3890, !3891, !3892, !3893, !3894, !3896, !3898, !3901, !3903, !3904, !3905, !3906, !3907, !3908, !3909}
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3866, file: !3867, line: 242, baseType: !20, size: 32)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3866, file: !3867, line: 247, baseType: !45, size: 64, offset: 64)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3866, file: !3867, line: 248, baseType: !45, size: 64, offset: 128)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3866, file: !3867, line: 249, baseType: !45, size: 64, offset: 192)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3866, file: !3867, line: 250, baseType: !45, size: 64, offset: 256)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3866, file: !3867, line: 251, baseType: !45, size: 64, offset: 320)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3866, file: !3867, line: 252, baseType: !45, size: 64, offset: 384)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3866, file: !3867, line: 253, baseType: !45, size: 64, offset: 448)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3866, file: !3867, line: 254, baseType: !45, size: 64, offset: 512)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3866, file: !3867, line: 256, baseType: !45, size: 64, offset: 576)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3866, file: !3867, line: 257, baseType: !45, size: 64, offset: 640)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3866, file: !3867, line: 258, baseType: !45, size: 64, offset: 704)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3866, file: !3867, line: 260, baseType: !3882, size: 64, offset: 768)
!3882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3883, size: 64)
!3883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3867, line: 156, size: 192, elements: !3884)
!3884 = !{!3885, !3886, !3888}
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3883, file: !3867, line: 157, baseType: !3882, size: 64)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3883, file: !3867, line: 158, baseType: !3887, size: 64, offset: 64)
!3887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3866, size: 64)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3883, file: !3867, line: 162, baseType: !20, size: 32, offset: 128)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3866, file: !3867, line: 262, baseType: !3887, size: 64, offset: 832)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3866, file: !3867, line: 264, baseType: !20, size: 32, offset: 896)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3866, file: !3867, line: 268, baseType: !20, size: 32, offset: 928)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3866, file: !3867, line: 270, baseType: !526, size: 64, offset: 960)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3866, file: !3867, line: 274, baseType: !88, size: 16, offset: 1024)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3866, file: !3867, line: 275, baseType: !3895, size: 8, offset: 1040)
!3895 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3866, file: !3867, line: 276, baseType: !3897, size: 8, offset: 1048)
!3897 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 8, elements: !1839)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3866, file: !3867, line: 280, baseType: !3899, size: 64, offset: 1088)
!3899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3900, size: 64)
!3900 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !3867, line: 150, baseType: null)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3866, file: !3867, line: 289, baseType: !3902, size: 64, offset: 1152)
!3902 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !508, line: 141, baseType: !511)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3866, file: !3867, line: 297, baseType: !44, size: 64, offset: 1216)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3866, file: !3867, line: 298, baseType: !44, size: 64, offset: 1280)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3866, file: !3867, line: 299, baseType: !44, size: 64, offset: 1344)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3866, file: !3867, line: 300, baseType: !44, size: 64, offset: 1408)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3866, file: !3867, line: 302, baseType: !89, size: 64, offset: 1472)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3866, file: !3867, line: 303, baseType: !20, size: 32, offset: 1536)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3866, file: !3867, line: 305, baseType: !3910, size: 160, offset: 1568)
!3910 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 160, elements: !3911)
!3911 = !{!3912}
!3912 = !DISubrange(count: 20)
!3913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!3914 = !{!3915, !3916, !3917, !3918, !3919, !3920}
!3915 = !DILocalVariable(name: "stream", arg: 1, scope: !3861, file: !572, line: 62, type: !3864)
!3916 = !DILocalVariable(name: "command_name", arg: 2, scope: !3861, file: !572, line: 63, type: !10)
!3917 = !DILocalVariable(name: "package", arg: 3, scope: !3861, file: !572, line: 63, type: !10)
!3918 = !DILocalVariable(name: "version", arg: 4, scope: !3861, file: !572, line: 64, type: !10)
!3919 = !DILocalVariable(name: "authors", arg: 5, scope: !3861, file: !572, line: 65, type: !3913)
!3920 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3861, file: !572, line: 65, type: !89)
!3921 = !DILocation(line: 62, column: 24, scope: !3861)
!3922 = !DILocation(line: 63, column: 30, scope: !3861)
!3923 = !DILocation(line: 63, column: 56, scope: !3861)
!3924 = !DILocation(line: 64, column: 30, scope: !3861)
!3925 = !DILocation(line: 65, column: 39, scope: !3861)
!3926 = !DILocation(line: 65, column: 55, scope: !3861)
!3927 = !DILocation(line: 67, column: 7, scope: !3928)
!3928 = distinct !DILexicalBlock(scope: !3861, file: !572, line: 67, column: 7)
!3929 = !DILocation(line: 67, column: 7, scope: !3861)
!3930 = !DILocation(line: 68, column: 5, scope: !3928)
!3931 = !DILocation(line: 70, column: 5, scope: !3928)
!3932 = !DILocation(line: 84, column: 3, scope: !3861)
!3933 = !DILocation(line: 84, column: 3, scope: !3934)
!3934 = !DILexicalBlockFile(scope: !3861, file: !572, discriminator: 1)
!3935 = !DILocation(line: 86, column: 3, scope: !3861)
!3936 = !DILocation(line: 86, column: 3, scope: !3934)
!3937 = !DILocation(line: 95, column: 3, scope: !3861)
!3938 = !DILocation(line: 99, column: 7, scope: !3939)
!3939 = distinct !DILexicalBlock(scope: !3861, file: !572, line: 96, column: 5)
!3940 = !DILocation(line: 102, column: 7, scope: !3939)
!3941 = !DILocation(line: 102, column: 7, scope: !3942)
!3942 = !DILexicalBlockFile(scope: !3939, file: !572, discriminator: 1)
!3943 = !DILocation(line: 103, column: 7, scope: !3939)
!3944 = !DILocation(line: 106, column: 7, scope: !3939)
!3945 = !DILocation(line: 106, column: 7, scope: !3942)
!3946 = !DILocation(line: 107, column: 7, scope: !3939)
!3947 = !DILocation(line: 110, column: 7, scope: !3939)
!3948 = !DILocation(line: 110, column: 7, scope: !3942)
!3949 = !DILocation(line: 112, column: 7, scope: !3939)
!3950 = !DILocation(line: 117, column: 7, scope: !3939)
!3951 = !DILocation(line: 117, column: 7, scope: !3942)
!3952 = !DILocation(line: 119, column: 7, scope: !3939)
!3953 = !DILocation(line: 124, column: 7, scope: !3939)
!3954 = !DILocation(line: 124, column: 7, scope: !3942)
!3955 = !DILocation(line: 126, column: 7, scope: !3939)
!3956 = !DILocation(line: 131, column: 7, scope: !3939)
!3957 = !DILocation(line: 131, column: 7, scope: !3942)
!3958 = !DILocation(line: 134, column: 7, scope: !3939)
!3959 = !DILocation(line: 139, column: 7, scope: !3939)
!3960 = !DILocation(line: 139, column: 7, scope: !3942)
!3961 = !DILocation(line: 142, column: 7, scope: !3939)
!3962 = !DILocation(line: 147, column: 7, scope: !3939)
!3963 = !DILocation(line: 147, column: 7, scope: !3942)
!3964 = !DILocation(line: 151, column: 7, scope: !3939)
!3965 = !DILocation(line: 156, column: 7, scope: !3939)
!3966 = !DILocation(line: 156, column: 7, scope: !3942)
!3967 = !DILocation(line: 160, column: 7, scope: !3939)
!3968 = !DILocation(line: 167, column: 7, scope: !3939)
!3969 = !DILocation(line: 167, column: 7, scope: !3942)
!3970 = !DILocation(line: 171, column: 7, scope: !3939)
!3971 = !DILocation(line: 173, column: 1, scope: !3861)
!3972 = distinct !DISubprogram(name: "version_etc_ar", scope: !572, file: !572, line: 180, type: !3973, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !568, variables: !3975)
!3973 = !DISubroutineType(types: !3974)
!3974 = !{null, !3864, !10, !10, !10, !3913}
!3975 = !{!3976, !3977, !3978, !3979, !3980, !3981}
!3976 = !DILocalVariable(name: "stream", arg: 1, scope: !3972, file: !572, line: 180, type: !3864)
!3977 = !DILocalVariable(name: "command_name", arg: 2, scope: !3972, file: !572, line: 181, type: !10)
!3978 = !DILocalVariable(name: "package", arg: 3, scope: !3972, file: !572, line: 181, type: !10)
!3979 = !DILocalVariable(name: "version", arg: 4, scope: !3972, file: !572, line: 182, type: !10)
!3980 = !DILocalVariable(name: "authors", arg: 5, scope: !3972, file: !572, line: 182, type: !3913)
!3981 = !DILocalVariable(name: "n_authors", scope: !3972, file: !572, line: 184, type: !89)
!3982 = !DILocation(line: 180, column: 23, scope: !3972)
!3983 = !DILocation(line: 181, column: 29, scope: !3972)
!3984 = !DILocation(line: 181, column: 55, scope: !3972)
!3985 = !DILocation(line: 182, column: 29, scope: !3972)
!3986 = !DILocation(line: 182, column: 59, scope: !3972)
!3987 = !DILocation(line: 184, column: 10, scope: !3972)
!3988 = !DILocation(line: 186, column: 8, scope: !3989)
!3989 = distinct !DILexicalBlock(scope: !3972, file: !572, line: 186, column: 3)
!3990 = !DILocation(line: 186, column: 23, scope: !3991)
!3991 = !DILexicalBlockFile(scope: !3992, file: !572, discriminator: 1)
!3992 = distinct !DILexicalBlock(scope: !3989, file: !572, line: 186, column: 3)
!3993 = !DILocation(line: 186, column: 3, scope: !3994)
!3994 = !DILexicalBlockFile(scope: !3989, file: !572, discriminator: 1)
!3995 = !DILocation(line: 186, column: 52, scope: !3996)
!3996 = !DILexicalBlockFile(scope: !3992, file: !572, discriminator: 3)
!3997 = distinct !{!3997, !3998, !3999}
!3998 = !DILocation(line: 186, column: 3, scope: !3989)
!3999 = !DILocation(line: 187, column: 5, scope: !3989)
!4000 = !DILocation(line: 188, column: 3, scope: !3972)
!4001 = !DILocation(line: 189, column: 1, scope: !3972)
!4002 = distinct !DISubprogram(name: "version_etc_va", scope: !572, file: !572, line: 196, type: !4003, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !568, variables: !4012)
!4003 = !DISubroutineType(types: !4004)
!4004 = !{null, !3864, !10, !10, !10, !4005}
!4005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4006, size: 64)
!4006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !569, line: 189, size: 192, elements: !4007)
!4007 = !{!4008, !4009, !4010, !4011}
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4006, file: !569, line: 189, baseType: !108, size: 32)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4006, file: !569, line: 189, baseType: !108, size: 32, offset: 32)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4006, file: !569, line: 189, baseType: !44, size: 64, offset: 64)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4006, file: !569, line: 189, baseType: !44, size: 64, offset: 128)
!4012 = !{!4013, !4014, !4015, !4016, !4017, !4018, !4019}
!4013 = !DILocalVariable(name: "stream", arg: 1, scope: !4002, file: !572, line: 196, type: !3864)
!4014 = !DILocalVariable(name: "command_name", arg: 2, scope: !4002, file: !572, line: 197, type: !10)
!4015 = !DILocalVariable(name: "package", arg: 3, scope: !4002, file: !572, line: 197, type: !10)
!4016 = !DILocalVariable(name: "version", arg: 4, scope: !4002, file: !572, line: 198, type: !10)
!4017 = !DILocalVariable(name: "authors", arg: 5, scope: !4002, file: !572, line: 198, type: !4005)
!4018 = !DILocalVariable(name: "n_authors", scope: !4002, file: !572, line: 200, type: !89)
!4019 = !DILocalVariable(name: "authtab", scope: !4002, file: !572, line: 201, type: !4020)
!4020 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 640, elements: !98)
!4021 = !DILocation(line: 196, column: 23, scope: !4002)
!4022 = !DILocation(line: 197, column: 29, scope: !4002)
!4023 = !DILocation(line: 197, column: 55, scope: !4002)
!4024 = !DILocation(line: 198, column: 29, scope: !4002)
!4025 = !DILocation(line: 198, column: 46, scope: !4002)
!4026 = !DILocation(line: 201, column: 3, scope: !4002)
!4027 = !DILocation(line: 201, column: 15, scope: !4002)
!4028 = !DILocation(line: 200, column: 10, scope: !4002)
!4029 = !DILocation(line: 205, column: 35, scope: !4030)
!4030 = !DILexicalBlockFile(scope: !4031, file: !572, discriminator: 1)
!4031 = distinct !DILexicalBlock(scope: !4032, file: !572, line: 203, column: 3)
!4032 = distinct !DILexicalBlock(scope: !4002, file: !572, line: 203, column: 3)
!4033 = !DILocation(line: 205, column: 35, scope: !4034)
!4034 = !DILexicalBlockFile(scope: !4031, file: !572, discriminator: 2)
!4035 = !DILocation(line: 205, column: 35, scope: !4036)
!4036 = !DILexicalBlockFile(scope: !4031, file: !572, discriminator: 3)
!4037 = !DILocation(line: 205, column: 35, scope: !4038)
!4038 = !DILexicalBlockFile(scope: !4031, file: !572, discriminator: 4)
!4039 = !DILocation(line: 205, column: 14, scope: !4038)
!4040 = !DILocation(line: 205, column: 33, scope: !4038)
!4041 = !DILocation(line: 205, column: 67, scope: !4038)
!4042 = !DILocation(line: 203, column: 3, scope: !4043)
!4043 = !DILexicalBlockFile(scope: !4032, file: !572, discriminator: 1)
!4044 = !DILocation(line: 208, column: 3, scope: !4002)
!4045 = !DILocation(line: 210, column: 1, scope: !4002)
!4046 = distinct !DISubprogram(name: "version_etc", scope: !572, file: !572, line: 227, type: !4047, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !568, variables: !4049)
!4047 = !DISubroutineType(types: !4048)
!4048 = !{null, !3864, !10, !10, !10, null}
!4049 = !{!4050, !4051, !4052, !4053, !4054}
!4050 = !DILocalVariable(name: "stream", arg: 1, scope: !4046, file: !572, line: 227, type: !3864)
!4051 = !DILocalVariable(name: "command_name", arg: 2, scope: !4046, file: !572, line: 228, type: !10)
!4052 = !DILocalVariable(name: "package", arg: 3, scope: !4046, file: !572, line: 228, type: !10)
!4053 = !DILocalVariable(name: "version", arg: 4, scope: !4046, file: !572, line: 229, type: !10)
!4054 = !DILocalVariable(name: "authors", scope: !4046, file: !572, line: 231, type: !4055)
!4055 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !513, line: 80, baseType: !4056)
!4056 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1830, line: 50, baseType: !4057)
!4057 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !569, line: 231, baseType: !4058)
!4058 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4006, size: 192, elements: !1839)
!4059 = !DILocation(line: 227, column: 20, scope: !4046)
!4060 = !DILocation(line: 228, column: 26, scope: !4046)
!4061 = !DILocation(line: 228, column: 52, scope: !4046)
!4062 = !DILocation(line: 229, column: 26, scope: !4046)
!4063 = !DILocation(line: 231, column: 3, scope: !4046)
!4064 = !DILocation(line: 231, column: 11, scope: !4046)
!4065 = !DILocation(line: 233, column: 3, scope: !4046)
!4066 = !DILocation(line: 234, column: 3, scope: !4046)
!4067 = !DILocation(line: 235, column: 3, scope: !4046)
!4068 = !DILocation(line: 236, column: 1, scope: !4046)
!4069 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !572, file: !572, line: 239, type: !1522, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !568, variables: !4)
!4070 = !DILocation(line: 245, column: 3, scope: !4069)
!4071 = !DILocation(line: 245, column: 3, scope: !4072)
!4072 = !DILexicalBlockFile(scope: !4069, file: !572, discriminator: 1)
!4073 = !DILocation(line: 251, column: 3, scope: !4069)
!4074 = !DILocation(line: 251, column: 3, scope: !4072)
!4075 = !DILocation(line: 256, column: 3, scope: !4069)
!4076 = !DILocation(line: 256, column: 3, scope: !4072)
!4077 = !DILocation(line: 258, column: 1, scope: !4069)
!4078 = distinct !DISubprogram(name: "xnmalloc", scope: !580, file: !580, line: 105, type: !4079, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !576, variables: !4081)
!4079 = !DISubroutineType(types: !4080)
!4080 = !{!44, !89, !89}
!4081 = !{!4082, !4083}
!4082 = !DILocalVariable(name: "n", arg: 1, scope: !4078, file: !580, line: 105, type: !89)
!4083 = !DILocalVariable(name: "s", arg: 2, scope: !4078, file: !580, line: 105, type: !89)
!4084 = !DILocation(line: 105, column: 18, scope: !4078)
!4085 = !DILocation(line: 105, column: 28, scope: !4078)
!4086 = !DILocation(line: 107, column: 7, scope: !4087)
!4087 = distinct !DILexicalBlock(scope: !4078, file: !580, line: 107, column: 7)
!4088 = !DILocation(line: 107, column: 7, scope: !4078)
!4089 = !DILocation(line: 108, column: 5, scope: !4087)
!4090 = !DILocation(line: 109, column: 21, scope: !4078)
!4091 = !DILocalVariable(name: "n", arg: 1, scope: !4092, file: !4093, line: 39, type: !89)
!4092 = distinct !DISubprogram(name: "xmalloc", scope: !4093, file: !4093, line: 39, type: !4094, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !576, variables: !4096)
!4093 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4094 = !DISubroutineType(types: !4095)
!4095 = !{!44, !89}
!4096 = !{!4091, !4097}
!4097 = !DILocalVariable(name: "p", scope: !4092, file: !4093, line: 41, type: !44)
!4098 = !DILocation(line: 39, column: 17, scope: !4092, inlinedAt: !4099)
!4099 = distinct !DILocation(line: 109, column: 10, scope: !4078)
!4100 = !DILocation(line: 41, column: 13, scope: !4092, inlinedAt: !4099)
!4101 = !DILocation(line: 41, column: 9, scope: !4092, inlinedAt: !4099)
!4102 = !DILocation(line: 42, column: 8, scope: !4103, inlinedAt: !4099)
!4103 = distinct !DILexicalBlock(scope: !4092, file: !4093, line: 42, column: 7)
!4104 = !DILocation(line: 42, column: 15, scope: !4105, inlinedAt: !4099)
!4105 = !DILexicalBlockFile(scope: !4103, file: !4093, discriminator: 1)
!4106 = !DILocation(line: 42, column: 10, scope: !4103, inlinedAt: !4099)
!4107 = !DILocation(line: 43, column: 5, scope: !4103, inlinedAt: !4099)
!4108 = !DILocation(line: 109, column: 3, scope: !4078)
!4109 = !DILocation(line: 39, column: 17, scope: !4092)
!4110 = !DILocation(line: 41, column: 13, scope: !4092)
!4111 = !DILocation(line: 41, column: 9, scope: !4092)
!4112 = !DILocation(line: 42, column: 8, scope: !4103)
!4113 = !DILocation(line: 42, column: 15, scope: !4105)
!4114 = !DILocation(line: 42, column: 10, scope: !4103)
!4115 = !DILocation(line: 43, column: 5, scope: !4103)
!4116 = !DILocation(line: 44, column: 3, scope: !4092)
!4117 = distinct !DISubprogram(name: "xnrealloc", scope: !580, file: !580, line: 118, type: !4118, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !576, variables: !4120)
!4118 = !DISubroutineType(types: !4119)
!4119 = !{!44, !44, !89, !89}
!4120 = !{!4121, !4122, !4123}
!4121 = !DILocalVariable(name: "p", arg: 1, scope: !4117, file: !580, line: 118, type: !44)
!4122 = !DILocalVariable(name: "n", arg: 2, scope: !4117, file: !580, line: 118, type: !89)
!4123 = !DILocalVariable(name: "s", arg: 3, scope: !4117, file: !580, line: 118, type: !89)
!4124 = !DILocation(line: 118, column: 18, scope: !4117)
!4125 = !DILocation(line: 118, column: 28, scope: !4117)
!4126 = !DILocation(line: 118, column: 38, scope: !4117)
!4127 = !DILocation(line: 120, column: 7, scope: !4128)
!4128 = distinct !DILexicalBlock(scope: !4117, file: !580, line: 120, column: 7)
!4129 = !DILocation(line: 120, column: 7, scope: !4117)
!4130 = !DILocation(line: 121, column: 5, scope: !4128)
!4131 = !DILocation(line: 122, column: 25, scope: !4117)
!4132 = !DILocalVariable(name: "p", arg: 1, scope: !4133, file: !4093, line: 51, type: !44)
!4133 = distinct !DISubprogram(name: "xrealloc", scope: !4093, file: !4093, line: 51, type: !4134, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !576, variables: !4136)
!4134 = !DISubroutineType(types: !4135)
!4135 = !{!44, !44, !89}
!4136 = !{!4132, !4137}
!4137 = !DILocalVariable(name: "n", arg: 2, scope: !4133, file: !4093, line: 51, type: !89)
!4138 = !DILocation(line: 51, column: 17, scope: !4133, inlinedAt: !4139)
!4139 = distinct !DILocation(line: 122, column: 10, scope: !4117)
!4140 = !DILocation(line: 51, column: 27, scope: !4133, inlinedAt: !4139)
!4141 = !DILocation(line: 53, column: 8, scope: !4142, inlinedAt: !4139)
!4142 = distinct !DILexicalBlock(scope: !4133, file: !4093, line: 53, column: 7)
!4143 = !DILocation(line: 53, column: 13, scope: !4144, inlinedAt: !4139)
!4144 = !DILexicalBlockFile(scope: !4142, file: !4093, discriminator: 1)
!4145 = !DILocation(line: 53, column: 10, scope: !4142, inlinedAt: !4139)
!4146 = !DILocation(line: 57, column: 7, scope: !4147, inlinedAt: !4139)
!4147 = distinct !DILexicalBlock(scope: !4142, file: !4093, line: 54, column: 5)
!4148 = !DILocation(line: 58, column: 7, scope: !4147, inlinedAt: !4139)
!4149 = !DILocation(line: 61, column: 7, scope: !4133, inlinedAt: !4139)
!4150 = !DILocation(line: 62, column: 8, scope: !4151, inlinedAt: !4139)
!4151 = distinct !DILexicalBlock(scope: !4133, file: !4093, line: 62, column: 7)
!4152 = !DILocation(line: 62, column: 13, scope: !4153, inlinedAt: !4139)
!4153 = !DILexicalBlockFile(scope: !4151, file: !4093, discriminator: 1)
!4154 = !DILocation(line: 62, column: 10, scope: !4151, inlinedAt: !4139)
!4155 = !DILocation(line: 63, column: 5, scope: !4151, inlinedAt: !4139)
!4156 = !DILocation(line: 122, column: 3, scope: !4117)
!4157 = !DILocation(line: 51, column: 17, scope: !4133)
!4158 = !DILocation(line: 51, column: 27, scope: !4133)
!4159 = !DILocation(line: 53, column: 8, scope: !4142)
!4160 = !DILocation(line: 53, column: 13, scope: !4144)
!4161 = !DILocation(line: 53, column: 10, scope: !4142)
!4162 = !DILocation(line: 57, column: 7, scope: !4147)
!4163 = !DILocation(line: 58, column: 7, scope: !4147)
!4164 = !DILocation(line: 61, column: 7, scope: !4133)
!4165 = !DILocation(line: 62, column: 8, scope: !4151)
!4166 = !DILocation(line: 62, column: 13, scope: !4153)
!4167 = !DILocation(line: 62, column: 10, scope: !4151)
!4168 = !DILocation(line: 63, column: 5, scope: !4151)
!4169 = !DILocation(line: 65, column: 1, scope: !4133)
!4170 = !DILocation(line: 180, column: 19, scope: !581)
!4171 = !DILocation(line: 180, column: 30, scope: !581)
!4172 = !DILocation(line: 180, column: 41, scope: !581)
!4173 = !DILocation(line: 182, column: 14, scope: !581)
!4174 = !DILocation(line: 182, column: 10, scope: !581)
!4175 = !DILocation(line: 184, column: 9, scope: !4176)
!4176 = distinct !DILexicalBlock(scope: !581, file: !580, line: 184, column: 7)
!4177 = !DILocation(line: 184, column: 7, scope: !581)
!4178 = !DILocation(line: 186, column: 13, scope: !4179)
!4179 = distinct !DILexicalBlock(scope: !4180, file: !580, line: 186, column: 11)
!4180 = distinct !DILexicalBlock(scope: !4176, file: !580, line: 185, column: 5)
!4181 = !DILocation(line: 186, column: 11, scope: !4180)
!4182 = !DILocation(line: 194, column: 30, scope: !4183)
!4183 = distinct !DILexicalBlock(scope: !4179, file: !580, line: 187, column: 9)
!4184 = !DILocation(line: 195, column: 16, scope: !4183)
!4185 = !DILocation(line: 195, column: 13, scope: !4183)
!4186 = !DILocation(line: 196, column: 9, scope: !4183)
!4187 = !DILocation(line: 204, column: 69, scope: !4188)
!4188 = distinct !DILexicalBlock(scope: !4189, file: !580, line: 204, column: 11)
!4189 = distinct !DILexicalBlock(scope: !4176, file: !580, line: 199, column: 5)
!4190 = !DILocation(line: 205, column: 11, scope: !4188)
!4191 = !DILocation(line: 204, column: 11, scope: !4189)
!4192 = !DILocation(line: 206, column: 9, scope: !4188)
!4193 = !DILocation(line: 210, column: 7, scope: !581)
!4194 = !DILocation(line: 211, column: 25, scope: !581)
!4195 = !DILocation(line: 51, column: 17, scope: !4133, inlinedAt: !4196)
!4196 = distinct !DILocation(line: 211, column: 10, scope: !581)
!4197 = !DILocation(line: 51, column: 27, scope: !4133, inlinedAt: !4196)
!4198 = !DILocation(line: 53, column: 10, scope: !4142, inlinedAt: !4196)
!4199 = !DILocation(line: 207, column: 14, scope: !4189)
!4200 = !DILocation(line: 207, column: 18, scope: !4189)
!4201 = !DILocation(line: 207, column: 9, scope: !4189)
!4202 = !DILocation(line: 53, column: 8, scope: !4142, inlinedAt: !4196)
!4203 = !DILocation(line: 57, column: 7, scope: !4147, inlinedAt: !4196)
!4204 = !DILocation(line: 58, column: 7, scope: !4147, inlinedAt: !4196)
!4205 = !DILocation(line: 61, column: 7, scope: !4133, inlinedAt: !4196)
!4206 = !DILocation(line: 62, column: 8, scope: !4151, inlinedAt: !4196)
!4207 = !DILocation(line: 62, column: 13, scope: !4153, inlinedAt: !4196)
!4208 = !DILocation(line: 62, column: 10, scope: !4151, inlinedAt: !4196)
!4209 = !DILocation(line: 63, column: 5, scope: !4151, inlinedAt: !4196)
!4210 = !DILocation(line: 211, column: 3, scope: !581)
!4211 = distinct !DISubprogram(name: "xcharalloc", scope: !580, file: !580, line: 220, type: !3133, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !576, variables: !4212)
!4212 = !{!4213}
!4213 = !DILocalVariable(name: "n", arg: 1, scope: !4211, file: !580, line: 220, type: !89)
!4214 = !DILocation(line: 220, column: 20, scope: !4211)
!4215 = !DILocation(line: 39, column: 17, scope: !4092, inlinedAt: !4216)
!4216 = distinct !DILocation(line: 222, column: 10, scope: !4211)
!4217 = !DILocation(line: 41, column: 13, scope: !4092, inlinedAt: !4216)
!4218 = !DILocation(line: 41, column: 9, scope: !4092, inlinedAt: !4216)
!4219 = !DILocation(line: 42, column: 8, scope: !4103, inlinedAt: !4216)
!4220 = !DILocation(line: 42, column: 15, scope: !4105, inlinedAt: !4216)
!4221 = !DILocation(line: 42, column: 10, scope: !4103, inlinedAt: !4216)
!4222 = !DILocation(line: 43, column: 5, scope: !4103, inlinedAt: !4216)
!4223 = !DILocation(line: 222, column: 3, scope: !4211)
!4224 = distinct !DISubprogram(name: "x2realloc", scope: !4093, file: !4093, line: 74, type: !4225, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !576, variables: !4227)
!4225 = !DISubroutineType(types: !4226)
!4226 = !{!44, !44, !584}
!4227 = !{!4228, !4229}
!4228 = !DILocalVariable(name: "p", arg: 1, scope: !4224, file: !4093, line: 74, type: !44)
!4229 = !DILocalVariable(name: "pn", arg: 2, scope: !4224, file: !4093, line: 74, type: !584)
!4230 = !DILocation(line: 74, column: 18, scope: !4224)
!4231 = !DILocation(line: 74, column: 29, scope: !4224)
!4232 = !DILocation(line: 180, column: 19, scope: !581, inlinedAt: !4233)
!4233 = distinct !DILocation(line: 76, column: 10, scope: !4224)
!4234 = !DILocation(line: 180, column: 30, scope: !581, inlinedAt: !4233)
!4235 = !DILocation(line: 180, column: 41, scope: !581, inlinedAt: !4233)
!4236 = !DILocation(line: 182, column: 14, scope: !581, inlinedAt: !4233)
!4237 = !DILocation(line: 182, column: 10, scope: !581, inlinedAt: !4233)
!4238 = !DILocation(line: 184, column: 9, scope: !4176, inlinedAt: !4233)
!4239 = !DILocation(line: 184, column: 7, scope: !581, inlinedAt: !4233)
!4240 = !DILocation(line: 186, column: 13, scope: !4179, inlinedAt: !4233)
!4241 = !DILocation(line: 186, column: 11, scope: !4180, inlinedAt: !4233)
!4242 = !DILocation(line: 210, column: 7, scope: !581, inlinedAt: !4233)
!4243 = !DILocation(line: 51, column: 17, scope: !4133, inlinedAt: !4244)
!4244 = distinct !DILocation(line: 211, column: 10, scope: !581, inlinedAt: !4233)
!4245 = !DILocation(line: 51, column: 27, scope: !4133, inlinedAt: !4244)
!4246 = !DILocation(line: 53, column: 10, scope: !4142, inlinedAt: !4244)
!4247 = !DILocation(line: 205, column: 11, scope: !4188, inlinedAt: !4233)
!4248 = !DILocation(line: 204, column: 11, scope: !4189, inlinedAt: !4233)
!4249 = !DILocation(line: 206, column: 9, scope: !4188, inlinedAt: !4233)
!4250 = !DILocation(line: 207, column: 14, scope: !4189, inlinedAt: !4233)
!4251 = !DILocation(line: 207, column: 18, scope: !4189, inlinedAt: !4233)
!4252 = !DILocation(line: 207, column: 9, scope: !4189, inlinedAt: !4233)
!4253 = !DILocation(line: 53, column: 8, scope: !4142, inlinedAt: !4244)
!4254 = !DILocation(line: 57, column: 7, scope: !4147, inlinedAt: !4244)
!4255 = !DILocation(line: 58, column: 7, scope: !4147, inlinedAt: !4244)
!4256 = !DILocation(line: 61, column: 7, scope: !4133, inlinedAt: !4244)
!4257 = !DILocation(line: 62, column: 8, scope: !4151, inlinedAt: !4244)
!4258 = !DILocation(line: 62, column: 13, scope: !4153, inlinedAt: !4244)
!4259 = !DILocation(line: 62, column: 10, scope: !4151, inlinedAt: !4244)
!4260 = !DILocation(line: 63, column: 5, scope: !4151, inlinedAt: !4244)
!4261 = !DILocation(line: 76, column: 3, scope: !4224)
!4262 = distinct !DISubprogram(name: "xzalloc", scope: !4093, file: !4093, line: 84, type: !4094, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !576, variables: !4263)
!4263 = !{!4264}
!4264 = !DILocalVariable(name: "s", arg: 1, scope: !4262, file: !4093, line: 84, type: !89)
!4265 = !DILocation(line: 84, column: 17, scope: !4262)
!4266 = !DILocation(line: 39, column: 17, scope: !4092, inlinedAt: !4267)
!4267 = distinct !DILocation(line: 86, column: 18, scope: !4262)
!4268 = !DILocation(line: 41, column: 13, scope: !4092, inlinedAt: !4267)
!4269 = !DILocation(line: 41, column: 9, scope: !4092, inlinedAt: !4267)
!4270 = !DILocation(line: 42, column: 8, scope: !4103, inlinedAt: !4267)
!4271 = !DILocation(line: 42, column: 15, scope: !4105, inlinedAt: !4267)
!4272 = !DILocation(line: 42, column: 10, scope: !4103, inlinedAt: !4267)
!4273 = !DILocation(line: 43, column: 5, scope: !4103, inlinedAt: !4267)
!4274 = !DILocation(line: 86, column: 10, scope: !4262)
!4275 = !DILocation(line: 86, column: 3, scope: !4262)
!4276 = distinct !DISubprogram(name: "xcalloc", scope: !4093, file: !4093, line: 93, type: !4079, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !576, variables: !4277)
!4277 = !{!4278, !4279, !4280}
!4278 = !DILocalVariable(name: "n", arg: 1, scope: !4276, file: !4093, line: 93, type: !89)
!4279 = !DILocalVariable(name: "s", arg: 2, scope: !4276, file: !4093, line: 93, type: !89)
!4280 = !DILocalVariable(name: "p", scope: !4276, file: !4093, line: 95, type: !44)
!4281 = !DILocation(line: 93, column: 17, scope: !4276)
!4282 = !DILocation(line: 93, column: 27, scope: !4276)
!4283 = !DILocation(line: 100, column: 7, scope: !4284)
!4284 = distinct !DILexicalBlock(scope: !4276, file: !4093, line: 100, column: 7)
!4285 = !DILocation(line: 101, column: 7, scope: !4284)
!4286 = !DILocation(line: 101, column: 18, scope: !4287)
!4287 = !DILexicalBlockFile(scope: !4284, file: !4093, discriminator: 1)
!4288 = !DILocation(line: 95, column: 9, scope: !4276)
!4289 = !DILocation(line: 101, column: 16, scope: !4287)
!4290 = !DILocation(line: 100, column: 7, scope: !4291)
!4291 = !DILexicalBlockFile(scope: !4276, file: !4093, discriminator: 1)
!4292 = !DILocation(line: 102, column: 5, scope: !4284)
!4293 = !DILocation(line: 103, column: 3, scope: !4276)
!4294 = distinct !DISubprogram(name: "xmemdup", scope: !4093, file: !4093, line: 111, type: !4295, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !576, variables: !4297)
!4295 = !DISubroutineType(types: !4296)
!4296 = !{!44, !527, !89}
!4297 = !{!4298, !4299}
!4298 = !DILocalVariable(name: "p", arg: 1, scope: !4294, file: !4093, line: 111, type: !527)
!4299 = !DILocalVariable(name: "s", arg: 2, scope: !4294, file: !4093, line: 111, type: !89)
!4300 = !DILocation(line: 111, column: 22, scope: !4294)
!4301 = !DILocation(line: 111, column: 32, scope: !4294)
!4302 = !DILocation(line: 39, column: 17, scope: !4092, inlinedAt: !4303)
!4303 = distinct !DILocation(line: 113, column: 18, scope: !4294)
!4304 = !DILocation(line: 41, column: 13, scope: !4092, inlinedAt: !4303)
!4305 = !DILocation(line: 41, column: 9, scope: !4092, inlinedAt: !4303)
!4306 = !DILocation(line: 42, column: 8, scope: !4103, inlinedAt: !4303)
!4307 = !DILocation(line: 42, column: 15, scope: !4105, inlinedAt: !4303)
!4308 = !DILocation(line: 42, column: 10, scope: !4103, inlinedAt: !4303)
!4309 = !DILocation(line: 43, column: 5, scope: !4103, inlinedAt: !4303)
!4310 = !DILocation(line: 113, column: 10, scope: !4294)
!4311 = !DILocation(line: 113, column: 3, scope: !4294)
!4312 = distinct !DISubprogram(name: "xstrdup", scope: !4093, file: !4093, line: 119, type: !3340, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !576, variables: !4313)
!4313 = !{!4314}
!4314 = !DILocalVariable(name: "string", arg: 1, scope: !4312, file: !4093, line: 119, type: !10)
!4315 = !DILocation(line: 119, column: 22, scope: !4312)
!4316 = !DILocation(line: 121, column: 27, scope: !4312)
!4317 = !DILocation(line: 121, column: 43, scope: !4312)
!4318 = !DILocation(line: 111, column: 22, scope: !4294, inlinedAt: !4319)
!4319 = distinct !DILocation(line: 121, column: 10, scope: !4320)
!4320 = !DILexicalBlockFile(scope: !4312, file: !4093, discriminator: 1)
!4321 = !DILocation(line: 111, column: 32, scope: !4294, inlinedAt: !4319)
!4322 = !DILocation(line: 39, column: 17, scope: !4092, inlinedAt: !4323)
!4323 = distinct !DILocation(line: 113, column: 18, scope: !4294, inlinedAt: !4319)
!4324 = !DILocation(line: 41, column: 13, scope: !4092, inlinedAt: !4323)
!4325 = !DILocation(line: 41, column: 9, scope: !4092, inlinedAt: !4323)
!4326 = !DILocation(line: 42, column: 8, scope: !4103, inlinedAt: !4323)
!4327 = !DILocation(line: 42, column: 15, scope: !4105, inlinedAt: !4323)
!4328 = !DILocation(line: 42, column: 10, scope: !4103, inlinedAt: !4323)
!4329 = !DILocation(line: 43, column: 5, scope: !4103, inlinedAt: !4323)
!4330 = !DILocation(line: 113, column: 10, scope: !4294, inlinedAt: !4319)
!4331 = !DILocation(line: 121, column: 3, scope: !4312)
!4332 = distinct !DISubprogram(name: "xalloc_die", scope: !4333, file: !4333, line: 32, type: !1522, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !593, variables: !4)
!4333 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4334 = !DILocation(line: 34, column: 10, scope: !4332)
!4335 = !DILocation(line: 34, column: 33, scope: !4332)
!4336 = !DILocation(line: 34, column: 3, scope: !4337)
!4337 = !DILexicalBlockFile(scope: !4332, file: !4333, discriminator: 1)
!4338 = !DILocation(line: 40, column: 3, scope: !4332)
!4339 = distinct !DISubprogram(name: "rpl_calloc", scope: !4340, file: !4340, line: 42, type: !4079, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !595, variables: !4341)
!4340 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4341 = !{!4342, !4343, !4344, !4345}
!4342 = !DILocalVariable(name: "n", arg: 1, scope: !4339, file: !4340, line: 42, type: !89)
!4343 = !DILocalVariable(name: "s", arg: 2, scope: !4339, file: !4340, line: 42, type: !89)
!4344 = !DILocalVariable(name: "result", scope: !4339, file: !4340, line: 44, type: !44)
!4345 = !DILocalVariable(name: "bytes", scope: !4346, file: !4340, line: 56, type: !89)
!4346 = distinct !DILexicalBlock(scope: !4347, file: !4340, line: 53, column: 5)
!4347 = distinct !DILexicalBlock(scope: !4339, file: !4340, line: 47, column: 7)
!4348 = !DILocation(line: 42, column: 20, scope: !4339)
!4349 = !DILocation(line: 42, column: 30, scope: !4339)
!4350 = !DILocation(line: 47, column: 9, scope: !4347)
!4351 = !DILocation(line: 47, column: 19, scope: !4352)
!4352 = !DILexicalBlockFile(scope: !4347, file: !4340, discriminator: 1)
!4353 = !DILocation(line: 47, column: 14, scope: !4347)
!4354 = !DILocation(line: 56, column: 24, scope: !4346)
!4355 = !DILocation(line: 56, column: 14, scope: !4346)
!4356 = !DILocation(line: 57, column: 17, scope: !4357)
!4357 = distinct !DILexicalBlock(scope: !4346, file: !4340, line: 57, column: 11)
!4358 = !DILocation(line: 57, column: 21, scope: !4357)
!4359 = !DILocation(line: 57, column: 11, scope: !4346)
!4360 = !DILocation(line: 59, column: 11, scope: !4361)
!4361 = distinct !DILexicalBlock(scope: !4357, file: !4340, line: 58, column: 9)
!4362 = !DILocation(line: 59, column: 17, scope: !4361)
!4363 = !DILocation(line: 65, column: 12, scope: !4339)
!4364 = !DILocation(line: 44, column: 9, scope: !4339)
!4365 = !DILocation(line: 72, column: 3, scope: !4339)
!4366 = !DILocation(line: 73, column: 1, scope: !4339)
!4367 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !4368, file: !4368, line: 334, type: !4369, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !597, variables: !4383)
!4368 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4369 = !DISubroutineType(types: !4370)
!4370 = !{!89, !4371, !10, !89, !4372}
!4371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2118, size: 64)
!4372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4373, size: 64)
!4373 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2103, line: 107, baseType: !4374)
!4374 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2103, line: 95, baseType: !4375)
!4375 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2103, line: 83, size: 64, elements: !4376)
!4376 = !{!4377, !4378}
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !4375, file: !2103, line: 85, baseType: !20, size: 32)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !4375, file: !2103, line: 94, baseType: !4379, size: 32, offset: 32)
!4379 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4375, file: !2103, line: 86, size: 32, elements: !4380)
!4380 = !{!4381, !4382}
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !4379, file: !2103, line: 89, baseType: !108, size: 32)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !4379, file: !2103, line: 93, baseType: !2113, size: 32)
!4383 = !{!4384, !4385, !4386, !4387, !4388, !4389, !4390}
!4384 = !DILocalVariable(name: "pwc", arg: 1, scope: !4367, file: !4368, line: 334, type: !4371)
!4385 = !DILocalVariable(name: "s", arg: 2, scope: !4367, file: !4368, line: 334, type: !10)
!4386 = !DILocalVariable(name: "n", arg: 3, scope: !4367, file: !4368, line: 334, type: !89)
!4387 = !DILocalVariable(name: "ps", arg: 4, scope: !4367, file: !4368, line: 334, type: !4372)
!4388 = !DILocalVariable(name: "ret", scope: !4367, file: !4368, line: 336, type: !89)
!4389 = !DILocalVariable(name: "wc", scope: !4367, file: !4368, line: 337, type: !2118)
!4390 = !DILocalVariable(name: "uc", scope: !4391, file: !4368, line: 398, type: !489)
!4391 = distinct !DILexicalBlock(scope: !4392, file: !4368, line: 397, column: 5)
!4392 = distinct !DILexicalBlock(scope: !4367, file: !4368, line: 396, column: 7)
!4393 = !DILocation(line: 334, column: 23, scope: !4367)
!4394 = !DILocation(line: 334, column: 40, scope: !4367)
!4395 = !DILocation(line: 334, column: 50, scope: !4367)
!4396 = !DILocation(line: 334, column: 64, scope: !4367)
!4397 = !DILocation(line: 337, column: 3, scope: !4367)
!4398 = !DILocation(line: 353, column: 9, scope: !4399)
!4399 = distinct !DILexicalBlock(scope: !4367, file: !4368, line: 353, column: 7)
!4400 = !DILocation(line: 353, column: 7, scope: !4367)
!4401 = !DILocation(line: 388, column: 9, scope: !4367)
!4402 = !DILocation(line: 336, column: 10, scope: !4367)
!4403 = !DILocation(line: 396, column: 19, scope: !4392)
!4404 = !DILocation(line: 396, column: 31, scope: !4405)
!4405 = !DILexicalBlockFile(scope: !4392, file: !4368, discriminator: 1)
!4406 = !DILocation(line: 396, column: 26, scope: !4392)
!4407 = !DILocation(line: 396, column: 41, scope: !4408)
!4408 = !DILexicalBlockFile(scope: !4392, file: !4368, discriminator: 2)
!4409 = !DILocation(line: 396, column: 7, scope: !4410)
!4410 = !DILexicalBlockFile(scope: !4367, file: !4368, discriminator: 2)
!4411 = !DILocation(line: 398, column: 26, scope: !4391)
!4412 = !DILocation(line: 398, column: 21, scope: !4391)
!4413 = !DILocation(line: 399, column: 14, scope: !4391)
!4414 = !DILocation(line: 399, column: 12, scope: !4391)
!4415 = !DILocation(line: 405, column: 1, scope: !4367)
!4416 = distinct !DISubprogram(name: "close_stream", scope: !4417, file: !4417, line: 56, type: !4418, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !600, variables: !4460)
!4417 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4418 = !DISubroutineType(types: !4419)
!4419 = !{!20, !4420}
!4420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4421, size: 64)
!4421 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !513, line: 49, baseType: !4422)
!4422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3867, line: 241, size: 1728, elements: !4423)
!4423 = !{!4424, !4425, !4426, !4427, !4428, !4429, !4430, !4431, !4432, !4433, !4434, !4435, !4436, !4444, !4445, !4446, !4447, !4448, !4449, !4450, !4451, !4452, !4453, !4454, !4455, !4456, !4457, !4458, !4459}
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4422, file: !3867, line: 242, baseType: !20, size: 32)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4422, file: !3867, line: 247, baseType: !45, size: 64, offset: 64)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4422, file: !3867, line: 248, baseType: !45, size: 64, offset: 128)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4422, file: !3867, line: 249, baseType: !45, size: 64, offset: 192)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4422, file: !3867, line: 250, baseType: !45, size: 64, offset: 256)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4422, file: !3867, line: 251, baseType: !45, size: 64, offset: 320)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4422, file: !3867, line: 252, baseType: !45, size: 64, offset: 384)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4422, file: !3867, line: 253, baseType: !45, size: 64, offset: 448)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4422, file: !3867, line: 254, baseType: !45, size: 64, offset: 512)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4422, file: !3867, line: 256, baseType: !45, size: 64, offset: 576)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4422, file: !3867, line: 257, baseType: !45, size: 64, offset: 640)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4422, file: !3867, line: 258, baseType: !45, size: 64, offset: 704)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4422, file: !3867, line: 260, baseType: !4437, size: 64, offset: 768)
!4437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4438, size: 64)
!4438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3867, line: 156, size: 192, elements: !4439)
!4439 = !{!4440, !4441, !4443}
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4438, file: !3867, line: 157, baseType: !4437, size: 64)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4438, file: !3867, line: 158, baseType: !4442, size: 64, offset: 64)
!4442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4422, size: 64)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4438, file: !3867, line: 162, baseType: !20, size: 32, offset: 128)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4422, file: !3867, line: 262, baseType: !4442, size: 64, offset: 832)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4422, file: !3867, line: 264, baseType: !20, size: 32, offset: 896)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4422, file: !3867, line: 268, baseType: !20, size: 32, offset: 928)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4422, file: !3867, line: 270, baseType: !526, size: 64, offset: 960)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4422, file: !3867, line: 274, baseType: !88, size: 16, offset: 1024)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4422, file: !3867, line: 275, baseType: !3895, size: 8, offset: 1040)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4422, file: !3867, line: 276, baseType: !3897, size: 8, offset: 1048)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4422, file: !3867, line: 280, baseType: !3899, size: 64, offset: 1088)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4422, file: !3867, line: 289, baseType: !3902, size: 64, offset: 1152)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4422, file: !3867, line: 297, baseType: !44, size: 64, offset: 1216)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4422, file: !3867, line: 298, baseType: !44, size: 64, offset: 1280)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4422, file: !3867, line: 299, baseType: !44, size: 64, offset: 1344)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4422, file: !3867, line: 300, baseType: !44, size: 64, offset: 1408)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4422, file: !3867, line: 302, baseType: !89, size: 64, offset: 1472)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4422, file: !3867, line: 303, baseType: !20, size: 32, offset: 1536)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4422, file: !3867, line: 305, baseType: !3910, size: 160, offset: 1568)
!4460 = !{!4461, !4462, !4464, !4465}
!4461 = !DILocalVariable(name: "stream", arg: 1, scope: !4416, file: !4417, line: 56, type: !4420)
!4462 = !DILocalVariable(name: "some_pending", scope: !4416, file: !4417, line: 58, type: !4463)
!4463 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!4464 = !DILocalVariable(name: "prev_fail", scope: !4416, file: !4417, line: 59, type: !4463)
!4465 = !DILocalVariable(name: "fclose_fail", scope: !4416, file: !4417, line: 60, type: !4463)
!4466 = !DILocation(line: 56, column: 21, scope: !4416)
!4467 = !DILocation(line: 58, column: 30, scope: !4416)
!4468 = !DILocalVariable(name: "__stream", arg: 1, scope: !4469, file: !4470, line: 132, type: !4420)
!4469 = distinct !DISubprogram(name: "ferror_unlocked", scope: !4470, file: !4470, line: 132, type: !4418, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !600, variables: !4471)
!4470 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4471 = !{!4468}
!4472 = !DILocation(line: 132, column: 1, scope: !4469, inlinedAt: !4473)
!4473 = distinct !DILocation(line: 59, column: 27, scope: !4416)
!4474 = !DILocation(line: 134, column: 10, scope: !4469, inlinedAt: !4473)
!4475 = !{!4476, !1541, i64 0}
!4476 = !{!"_IO_FILE", !1541, i64 0, !630, i64 8, !630, i64 16, !630, i64 24, !630, i64 32, !630, i64 40, !630, i64 48, !630, i64 56, !630, i64 64, !630, i64 72, !630, i64 80, !630, i64 88, !630, i64 96, !630, i64 104, !1541, i64 112, !1541, i64 116, !3178, i64 120, !2470, i64 128, !631, i64 130, !631, i64 131, !630, i64 136, !3178, i64 144, !630, i64 152, !630, i64 160, !630, i64 168, !630, i64 176, !3178, i64 184, !1541, i64 192, !631, i64 196}
!4477 = !DILocation(line: 59, column: 43, scope: !4416)
!4478 = !DILocation(line: 60, column: 29, scope: !4416)
!4479 = !DILocation(line: 60, column: 45, scope: !4416)
!4480 = !DILocation(line: 70, column: 17, scope: !4481)
!4481 = distinct !DILexicalBlock(scope: !4416, file: !4417, line: 70, column: 7)
!4482 = !DILocation(line: 70, column: 33, scope: !4483)
!4483 = !DILexicalBlockFile(scope: !4481, file: !4417, discriminator: 1)
!4484 = !DILocation(line: 70, column: 53, scope: !4485)
!4485 = !DILexicalBlockFile(scope: !4481, file: !4417, discriminator: 3)
!4486 = !DILocation(line: 70, column: 7, scope: !4487)
!4487 = !DILexicalBlockFile(scope: !4416, file: !4417, discriminator: 3)
!4488 = !DILocation(line: 72, column: 11, scope: !4489)
!4489 = distinct !DILexicalBlock(scope: !4481, file: !4417, line: 71, column: 5)
!4490 = !DILocation(line: 73, column: 9, scope: !4491)
!4491 = distinct !DILexicalBlock(scope: !4489, file: !4417, line: 72, column: 11)
!4492 = !DILocation(line: 73, column: 15, scope: !4491)
!4493 = !DILocation(line: 78, column: 1, scope: !4416)
!4494 = distinct !DISubprogram(name: "hard_locale", scope: !4495, file: !4495, line: 38, type: !4496, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !602, variables: !4498)
!4495 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4496 = !DISubroutineType(types: !4497)
!4497 = !{!9, !20}
!4498 = !{!4499, !4500, !4501, !4502, !4509, !4510, !4512, !4513, !4515, !4516, !4518}
!4499 = !DILocalVariable(name: "category", arg: 1, scope: !4494, file: !4495, line: 38, type: !20)
!4500 = !DILocalVariable(name: "hard", scope: !4494, file: !4495, line: 40, type: !9)
!4501 = !DILocalVariable(name: "p", scope: !4494, file: !4495, line: 41, type: !10)
!4502 = !DILocalVariable(name: "__s1_len", scope: !4503, file: !4495, line: 47, type: !89)
!4503 = distinct !DILexicalBlock(scope: !4504, file: !4495, line: 47, column: 15)
!4504 = distinct !DILexicalBlock(scope: !4505, file: !4495, line: 47, column: 15)
!4505 = distinct !DILexicalBlock(scope: !4506, file: !4495, line: 46, column: 9)
!4506 = distinct !DILexicalBlock(scope: !4507, file: !4495, line: 45, column: 11)
!4507 = distinct !DILexicalBlock(scope: !4508, file: !4495, line: 44, column: 5)
!4508 = distinct !DILexicalBlock(scope: !4494, file: !4495, line: 43, column: 7)
!4509 = !DILocalVariable(name: "__s2_len", scope: !4503, file: !4495, line: 47, type: !89)
!4510 = !DILocalVariable(name: "__s2", scope: !4511, file: !4495, line: 47, type: !529)
!4511 = distinct !DILexicalBlock(scope: !4503, file: !4495, line: 47, column: 15)
!4512 = !DILocalVariable(name: "__result", scope: !4511, file: !4495, line: 47, type: !20)
!4513 = !DILocalVariable(name: "__s1_len", scope: !4514, file: !4495, line: 47, type: !89)
!4514 = distinct !DILexicalBlock(scope: !4504, file: !4495, line: 47, column: 39)
!4515 = !DILocalVariable(name: "__s2_len", scope: !4514, file: !4495, line: 47, type: !89)
!4516 = !DILocalVariable(name: "__s2", scope: !4517, file: !4495, line: 47, type: !529)
!4517 = distinct !DILexicalBlock(scope: !4514, file: !4495, line: 47, column: 39)
!4518 = !DILocalVariable(name: "__result", scope: !4517, file: !4495, line: 47, type: !20)
!4519 = !DILocation(line: 38, column: 18, scope: !4494)
!4520 = !DILocation(line: 40, column: 8, scope: !4494)
!4521 = !DILocation(line: 41, column: 19, scope: !4494)
!4522 = !DILocation(line: 41, column: 15, scope: !4494)
!4523 = !DILocation(line: 43, column: 7, scope: !4508)
!4524 = !DILocation(line: 43, column: 7, scope: !4494)
!4525 = !DILocation(line: 47, column: 15, scope: !4503)
!4526 = !DILocation(line: 47, column: 15, scope: !4511)
!4527 = !DILocation(line: 47, column: 15, scope: !4528)
!4528 = !DILexicalBlockFile(scope: !4511, file: !4495, discriminator: 2)
!4529 = !DILocation(line: 47, column: 15, scope: !4530)
!4530 = !DILexicalBlockFile(scope: !4531, file: !4495, discriminator: 3)
!4531 = distinct !DILexicalBlock(scope: !4511, file: !4495, line: 47, column: 15)
!4532 = !DILocation(line: 47, column: 15, scope: !4533)
!4533 = !DILexicalBlockFile(scope: !4531, file: !4495, discriminator: 2)
!4534 = !DILocation(line: 47, column: 15, scope: !4535)
!4535 = !DILexicalBlockFile(scope: !4536, file: !4495, discriminator: 4)
!4536 = distinct !DILexicalBlock(scope: !4531, file: !4495, line: 47, column: 15)
!4537 = !DILocation(line: 47, column: 15, scope: !4538)
!4538 = !DILexicalBlockFile(scope: !4503, file: !4495, discriminator: 11)
!4539 = !DILocation(line: 47, column: 36, scope: !4540)
!4540 = !DILexicalBlockFile(scope: !4504, file: !4495, discriminator: 13)
!4541 = !DILocation(line: 47, column: 39, scope: !4514)
!4542 = !DILocation(line: 47, column: 39, scope: !4543)
!4543 = !DILexicalBlockFile(scope: !4514, file: !4495, discriminator: 26)
!4544 = !DILocation(line: 47, column: 59, scope: !4545)
!4545 = !DILexicalBlockFile(scope: !4504, file: !4495, discriminator: 27)
!4546 = !DILocation(line: 47, column: 15, scope: !4547)
!4547 = !DILexicalBlockFile(scope: !4505, file: !4495, discriminator: 27)
!4548 = !DILocation(line: 48, column: 13, scope: !4504)
!4549 = !DILocation(line: 71, column: 3, scope: !4494)
!4550 = distinct !DISubprogram(name: "locale_charset", scope: !491, file: !491, line: 393, type: !4551, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !4553)
!4551 = !DISubroutineType(types: !4552)
!4552 = !{!10}
!4553 = !{!4554, !4555, !4556, !4561}
!4554 = !DILocalVariable(name: "codeset", scope: !4550, file: !491, line: 395, type: !10)
!4555 = !DILocalVariable(name: "aliases", scope: !4550, file: !491, line: 396, type: !10)
!4556 = !DILocalVariable(name: "__s1_len", scope: !4557, file: !491, line: 592, type: !89)
!4557 = distinct !DILexicalBlock(scope: !4558, file: !491, line: 592, column: 9)
!4558 = distinct !DILexicalBlock(scope: !4559, file: !491, line: 592, column: 9)
!4559 = distinct !DILexicalBlock(scope: !4560, file: !491, line: 589, column: 3)
!4560 = distinct !DILexicalBlock(scope: !4550, file: !491, line: 589, column: 3)
!4561 = !DILocalVariable(name: "__s2_len", scope: !4557, file: !491, line: 592, type: !89)
!4562 = !DILocalVariable(name: "buf1", scope: !4563, file: !491, line: 196, type: !4630)
!4563 = distinct !DILexicalBlock(scope: !4564, file: !491, line: 194, column: 21)
!4564 = distinct !DILexicalBlock(scope: !4565, file: !491, line: 193, column: 19)
!4565 = distinct !DILexicalBlock(scope: !4566, file: !491, line: 193, column: 19)
!4566 = distinct !DILexicalBlock(scope: !4567, file: !491, line: 188, column: 17)
!4567 = distinct !DILexicalBlock(scope: !4568, file: !491, line: 181, column: 19)
!4568 = distinct !DILexicalBlock(scope: !4569, file: !491, line: 177, column: 13)
!4569 = distinct !DILexicalBlock(scope: !4570, file: !491, line: 173, column: 15)
!4570 = distinct !DILexicalBlock(scope: !4571, file: !491, line: 161, column: 9)
!4571 = distinct !DILexicalBlock(scope: !4572, file: !491, line: 157, column: 11)
!4572 = distinct !DILexicalBlock(scope: !4573, file: !491, line: 130, column: 5)
!4573 = distinct !DILexicalBlock(scope: !4574, file: !491, line: 129, column: 7)
!4574 = distinct !DISubprogram(name: "get_charset_aliases", scope: !491, file: !491, line: 124, type: !4551, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !4575)
!4575 = !{!4576, !4577, !4578, !4579, !4580, !4582, !4583, !4584, !4585, !4626, !4627, !4628, !4562, !4629, !4633, !4634, !4635}
!4576 = !DILocalVariable(name: "cp", scope: !4574, file: !491, line: 126, type: !10)
!4577 = !DILocalVariable(name: "dir", scope: !4572, file: !491, line: 132, type: !10)
!4578 = !DILocalVariable(name: "base", scope: !4572, file: !491, line: 133, type: !10)
!4579 = !DILocalVariable(name: "file_name", scope: !4572, file: !491, line: 134, type: !45)
!4580 = !DILocalVariable(name: "dir_len", scope: !4581, file: !491, line: 144, type: !89)
!4581 = distinct !DILexicalBlock(scope: !4572, file: !491, line: 143, column: 7)
!4582 = !DILocalVariable(name: "base_len", scope: !4581, file: !491, line: 145, type: !89)
!4583 = !DILocalVariable(name: "add_slash", scope: !4581, file: !491, line: 146, type: !20)
!4584 = !DILocalVariable(name: "fd", scope: !4570, file: !491, line: 162, type: !20)
!4585 = !DILocalVariable(name: "fp", scope: !4568, file: !491, line: 178, type: !4586)
!4586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4587, size: 64)
!4587 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !513, line: 49, baseType: !4588)
!4588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3867, line: 241, size: 1728, elements: !4589)
!4589 = !{!4590, !4591, !4592, !4593, !4594, !4595, !4596, !4597, !4598, !4599, !4600, !4601, !4602, !4610, !4611, !4612, !4613, !4614, !4615, !4616, !4617, !4618, !4619, !4620, !4621, !4622, !4623, !4624, !4625}
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4588, file: !3867, line: 242, baseType: !20, size: 32)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4588, file: !3867, line: 247, baseType: !45, size: 64, offset: 64)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4588, file: !3867, line: 248, baseType: !45, size: 64, offset: 128)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4588, file: !3867, line: 249, baseType: !45, size: 64, offset: 192)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4588, file: !3867, line: 250, baseType: !45, size: 64, offset: 256)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4588, file: !3867, line: 251, baseType: !45, size: 64, offset: 320)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4588, file: !3867, line: 252, baseType: !45, size: 64, offset: 384)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4588, file: !3867, line: 253, baseType: !45, size: 64, offset: 448)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4588, file: !3867, line: 254, baseType: !45, size: 64, offset: 512)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4588, file: !3867, line: 256, baseType: !45, size: 64, offset: 576)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4588, file: !3867, line: 257, baseType: !45, size: 64, offset: 640)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4588, file: !3867, line: 258, baseType: !45, size: 64, offset: 704)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4588, file: !3867, line: 260, baseType: !4603, size: 64, offset: 768)
!4603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4604, size: 64)
!4604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3867, line: 156, size: 192, elements: !4605)
!4605 = !{!4606, !4607, !4609}
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4604, file: !3867, line: 157, baseType: !4603, size: 64)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4604, file: !3867, line: 158, baseType: !4608, size: 64, offset: 64)
!4608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4588, size: 64)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4604, file: !3867, line: 162, baseType: !20, size: 32, offset: 128)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4588, file: !3867, line: 262, baseType: !4608, size: 64, offset: 832)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4588, file: !3867, line: 264, baseType: !20, size: 32, offset: 896)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4588, file: !3867, line: 268, baseType: !20, size: 32, offset: 928)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4588, file: !3867, line: 270, baseType: !526, size: 64, offset: 960)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4588, file: !3867, line: 274, baseType: !88, size: 16, offset: 1024)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4588, file: !3867, line: 275, baseType: !3895, size: 8, offset: 1040)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4588, file: !3867, line: 276, baseType: !3897, size: 8, offset: 1048)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4588, file: !3867, line: 280, baseType: !3899, size: 64, offset: 1088)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4588, file: !3867, line: 289, baseType: !3902, size: 64, offset: 1152)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4588, file: !3867, line: 297, baseType: !44, size: 64, offset: 1216)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4588, file: !3867, line: 298, baseType: !44, size: 64, offset: 1280)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4588, file: !3867, line: 299, baseType: !44, size: 64, offset: 1344)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4588, file: !3867, line: 300, baseType: !44, size: 64, offset: 1408)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4588, file: !3867, line: 302, baseType: !89, size: 64, offset: 1472)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4588, file: !3867, line: 303, baseType: !20, size: 32, offset: 1536)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4588, file: !3867, line: 305, baseType: !3910, size: 160, offset: 1568)
!4626 = !DILocalVariable(name: "res_ptr", scope: !4566, file: !491, line: 190, type: !45)
!4627 = !DILocalVariable(name: "res_size", scope: !4566, file: !491, line: 191, type: !89)
!4628 = !DILocalVariable(name: "c", scope: !4563, file: !491, line: 195, type: !20)
!4629 = !DILocalVariable(name: "buf2", scope: !4563, file: !491, line: 197, type: !4630)
!4630 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 408, elements: !4631)
!4631 = !{!4632}
!4632 = !DISubrange(count: 51)
!4633 = !DILocalVariable(name: "l1", scope: !4563, file: !491, line: 198, type: !89)
!4634 = !DILocalVariable(name: "l2", scope: !4563, file: !491, line: 198, type: !89)
!4635 = !DILocalVariable(name: "old_res_ptr", scope: !4563, file: !491, line: 199, type: !45)
!4636 = !DILocation(line: 196, column: 28, scope: !4563, inlinedAt: !4637)
!4637 = distinct !DILocation(line: 589, column: 18, scope: !4560)
!4638 = !DILocation(line: 197, column: 28, scope: !4563, inlinedAt: !4637)
!4639 = !DILocation(line: 403, column: 13, scope: !4550)
!4640 = !DILocation(line: 395, column: 15, scope: !4550)
!4641 = !DILocation(line: 584, column: 15, scope: !4642)
!4642 = distinct !DILexicalBlock(scope: !4550, file: !491, line: 584, column: 7)
!4643 = !DILocation(line: 584, column: 7, scope: !4550)
!4644 = !DILocation(line: 128, column: 8, scope: !4574, inlinedAt: !4637)
!4645 = !DILocation(line: 126, column: 15, scope: !4574, inlinedAt: !4637)
!4646 = !DILocation(line: 129, column: 10, scope: !4573, inlinedAt: !4637)
!4647 = !DILocation(line: 129, column: 7, scope: !4574, inlinedAt: !4637)
!4648 = !DILocation(line: 138, column: 13, scope: !4572, inlinedAt: !4637)
!4649 = !DILocation(line: 132, column: 19, scope: !4572, inlinedAt: !4637)
!4650 = !DILocation(line: 139, column: 15, scope: !4651, inlinedAt: !4637)
!4651 = distinct !DILexicalBlock(scope: !4572, file: !491, line: 139, column: 11)
!4652 = !DILocation(line: 139, column: 23, scope: !4651, inlinedAt: !4637)
!4653 = !DILocation(line: 139, column: 26, scope: !4654, inlinedAt: !4637)
!4654 = !DILexicalBlockFile(scope: !4651, file: !491, discriminator: 1)
!4655 = !DILocation(line: 139, column: 33, scope: !4654, inlinedAt: !4637)
!4656 = !DILocation(line: 139, column: 11, scope: !4657, inlinedAt: !4637)
!4657 = !DILexicalBlockFile(scope: !4572, file: !491, discriminator: 1)
!4658 = !DILocation(line: 140, column: 9, scope: !4651, inlinedAt: !4637)
!4659 = !DILocation(line: 144, column: 26, scope: !4581, inlinedAt: !4637)
!4660 = !DILocation(line: 144, column: 16, scope: !4581, inlinedAt: !4637)
!4661 = !DILocation(line: 145, column: 16, scope: !4581, inlinedAt: !4637)
!4662 = !DILocation(line: 146, column: 34, scope: !4581, inlinedAt: !4637)
!4663 = !DILocation(line: 146, column: 38, scope: !4581, inlinedAt: !4637)
!4664 = !DILocation(line: 146, column: 42, scope: !4665, inlinedAt: !4637)
!4665 = !DILexicalBlockFile(scope: !4581, file: !491, discriminator: 1)
!4666 = !DILocation(line: 146, column: 41, scope: !4665, inlinedAt: !4637)
!4667 = !DILocation(line: 147, column: 48, scope: !4581, inlinedAt: !4637)
!4668 = !DILocation(line: 147, column: 46, scope: !4581, inlinedAt: !4637)
!4669 = !DILocation(line: 147, column: 69, scope: !4581, inlinedAt: !4637)
!4670 = !DILocation(line: 147, column: 30, scope: !4581, inlinedAt: !4637)
!4671 = !DILocation(line: 134, column: 13, scope: !4572, inlinedAt: !4637)
!4672 = !DILocation(line: 148, column: 13, scope: !4581, inlinedAt: !4637)
!4673 = !DILocation(line: 150, column: 13, scope: !4674, inlinedAt: !4637)
!4674 = distinct !DILexicalBlock(scope: !4675, file: !491, line: 149, column: 11)
!4675 = distinct !DILexicalBlock(scope: !4581, file: !491, line: 148, column: 13)
!4676 = !DILocation(line: 151, column: 17, scope: !4674, inlinedAt: !4637)
!4677 = !DILocation(line: 152, column: 34, scope: !4678, inlinedAt: !4637)
!4678 = distinct !DILexicalBlock(scope: !4674, file: !491, line: 151, column: 17)
!4679 = !DILocation(line: 153, column: 41, scope: !4674, inlinedAt: !4637)
!4680 = !DILocation(line: 153, column: 13, scope: !4674, inlinedAt: !4637)
!4681 = !DILocation(line: 157, column: 11, scope: !4572, inlinedAt: !4637)
!4682 = !DILocation(line: 171, column: 16, scope: !4570, inlinedAt: !4637)
!4683 = !DILocation(line: 162, column: 15, scope: !4570, inlinedAt: !4637)
!4684 = !DILocation(line: 173, column: 18, scope: !4569, inlinedAt: !4637)
!4685 = !DILocation(line: 173, column: 15, scope: !4570, inlinedAt: !4637)
!4686 = !DILocation(line: 180, column: 20, scope: !4568, inlinedAt: !4637)
!4687 = !DILocation(line: 178, column: 21, scope: !4568, inlinedAt: !4637)
!4688 = !DILocation(line: 181, column: 22, scope: !4567, inlinedAt: !4637)
!4689 = !DILocation(line: 181, column: 19, scope: !4568, inlinedAt: !4637)
!4690 = !DILocation(line: 190, column: 25, scope: !4566, inlinedAt: !4637)
!4691 = !DILocation(line: 184, column: 19, scope: !4692, inlinedAt: !4637)
!4692 = distinct !DILexicalBlock(scope: !4567, file: !491, line: 182, column: 17)
!4693 = !DILocation(line: 186, column: 17, scope: !4692, inlinedAt: !4637)
!4694 = !DILocation(line: 191, column: 26, scope: !4566, inlinedAt: !4637)
!4695 = !DILocation(line: 196, column: 23, scope: !4563, inlinedAt: !4637)
!4696 = !DILocation(line: 197, column: 23, scope: !4563, inlinedAt: !4637)
!4697 = !DILocalVariable(name: "__fp", arg: 1, scope: !4698, file: !4470, line: 63, type: !4586)
!4698 = distinct !DISubprogram(name: "getc_unlocked", scope: !4470, file: !4470, line: 63, type: !4699, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !4701)
!4699 = !DISubroutineType(types: !4700)
!4700 = !{!20, !4586}
!4701 = !{!4697}
!4702 = !DILocation(line: 63, column: 22, scope: !4698, inlinedAt: !4703)
!4703 = distinct !DILocation(line: 201, column: 27, scope: !4563, inlinedAt: !4637)
!4704 = !DILocation(line: 65, column: 10, scope: !4698, inlinedAt: !4703)
!4705 = !{!4476, !630, i64 8}
!4706 = !{!4476, !630, i64 16}
!4707 = !{!"branch_weights", i32 2000, i32 1}
!4708 = !DILocation(line: 65, column: 10, scope: !4709, inlinedAt: !4703)
!4709 = !DILexicalBlockFile(scope: !4698, file: !4470, discriminator: 1)
!4710 = !DILocation(line: 65, column: 10, scope: !4711, inlinedAt: !4703)
!4711 = !DILexicalBlockFile(scope: !4698, file: !4470, discriminator: 2)
!4712 = !DILocation(line: 65, column: 10, scope: !4713, inlinedAt: !4703)
!4713 = !DILexicalBlockFile(scope: !4698, file: !4470, discriminator: 3)
!4714 = !DILocation(line: 195, column: 27, scope: !4563, inlinedAt: !4637)
!4715 = !DILocation(line: 202, column: 27, scope: !4563, inlinedAt: !4637)
!4716 = !DILocation(line: 63, column: 22, scope: !4698, inlinedAt: !4717)
!4717 = distinct !DILocation(line: 210, column: 33, scope: !4718, inlinedAt: !4637)
!4718 = distinct !DILexicalBlock(scope: !4719, file: !491, line: 207, column: 25)
!4719 = distinct !DILexicalBlock(scope: !4563, file: !491, line: 206, column: 27)
!4720 = !DILocation(line: 65, column: 10, scope: !4698, inlinedAt: !4717)
!4721 = !DILocation(line: 65, column: 10, scope: !4709, inlinedAt: !4717)
!4722 = !DILocation(line: 65, column: 10, scope: !4711, inlinedAt: !4717)
!4723 = !DILocation(line: 65, column: 10, scope: !4713, inlinedAt: !4717)
!4724 = !DILocation(line: 210, column: 29, scope: !4725, inlinedAt: !4637)
!4725 = !DILexicalBlockFile(scope: !4718, file: !491, discriminator: 1)
!4726 = distinct !{!4726, !4727, !4728}
!4727 = !DILocation(line: 193, column: 19, scope: !4565)
!4728 = !DILocation(line: 241, column: 21, scope: !4565)
!4729 = !DILocation(line: 216, column: 23, scope: !4563, inlinedAt: !4637)
!4730 = !DILocation(line: 217, column: 27, scope: !4731, inlinedAt: !4637)
!4731 = distinct !DILexicalBlock(scope: !4563, file: !491, line: 217, column: 27)
!4732 = !DILocation(line: 217, column: 64, scope: !4731, inlinedAt: !4637)
!4733 = !DILocation(line: 217, column: 27, scope: !4563, inlinedAt: !4637)
!4734 = !DILocation(line: 219, column: 28, scope: !4563, inlinedAt: !4637)
!4735 = !DILocation(line: 198, column: 30, scope: !4563, inlinedAt: !4637)
!4736 = !DILocation(line: 220, column: 28, scope: !4563, inlinedAt: !4637)
!4737 = !DILocation(line: 198, column: 34, scope: !4563, inlinedAt: !4637)
!4738 = !DILocation(line: 199, column: 29, scope: !4563, inlinedAt: !4637)
!4739 = !DILocation(line: 222, column: 36, scope: !4740, inlinedAt: !4637)
!4740 = distinct !DILexicalBlock(scope: !4563, file: !491, line: 222, column: 27)
!4741 = !DILocation(line: 222, column: 27, scope: !4563, inlinedAt: !4637)
!4742 = !DILocation(line: 225, column: 63, scope: !4743, inlinedAt: !4637)
!4743 = distinct !DILexicalBlock(scope: !4740, file: !491, line: 223, column: 25)
!4744 = !DILocation(line: 225, column: 46, scope: !4743, inlinedAt: !4637)
!4745 = !DILocation(line: 226, column: 25, scope: !4743, inlinedAt: !4637)
!4746 = !DILocation(line: 229, column: 36, scope: !4747, inlinedAt: !4637)
!4747 = distinct !DILexicalBlock(scope: !4740, file: !491, line: 228, column: 25)
!4748 = !DILocation(line: 230, column: 73, scope: !4747, inlinedAt: !4637)
!4749 = !DILocation(line: 230, column: 46, scope: !4747, inlinedAt: !4637)
!4750 = !DILocation(line: 232, column: 35, scope: !4751, inlinedAt: !4637)
!4751 = distinct !DILexicalBlock(scope: !4563, file: !491, line: 232, column: 27)
!4752 = !DILocation(line: 232, column: 27, scope: !4563, inlinedAt: !4637)
!4753 = !DILocation(line: 236, column: 27, scope: !4754, inlinedAt: !4637)
!4754 = distinct !DILexicalBlock(scope: !4751, file: !491, line: 233, column: 25)
!4755 = !DILocation(line: 237, column: 27, scope: !4754, inlinedAt: !4637)
!4756 = !DILocation(line: 239, column: 39, scope: !4563, inlinedAt: !4637)
!4757 = !DILocation(line: 239, column: 50, scope: !4563, inlinedAt: !4637)
!4758 = !DILocation(line: 239, column: 61, scope: !4563, inlinedAt: !4637)
!4759 = !DILocalVariable(name: "__dest", arg: 1, scope: !4760, file: !4761, line: 107, type: !4764)
!4760 = distinct !DISubprogram(name: "strcpy", scope: !4761, file: !4761, line: 107, type: !4762, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !4766)
!4761 = !DIFile(filename: "/usr/include/bits/string3.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4762 = !DISubroutineType(types: !4763)
!4763 = !{!45, !4764, !4765}
!4764 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !45)
!4765 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !10)
!4766 = !{!4759, !4767}
!4767 = !DILocalVariable(name: "__src", arg: 2, scope: !4760, file: !4761, line: 107, type: !4765)
!4768 = !DILocation(line: 107, column: 1, scope: !4760, inlinedAt: !4769)
!4769 = distinct !DILocation(line: 239, column: 23, scope: !4563, inlinedAt: !4637)
!4770 = !DILocation(line: 109, column: 49, scope: !4760, inlinedAt: !4769)
!4771 = !DILocation(line: 109, column: 10, scope: !4760, inlinedAt: !4769)
!4772 = !DILocation(line: 107, column: 1, scope: !4760, inlinedAt: !4773)
!4773 = distinct !DILocation(line: 240, column: 23, scope: !4563, inlinedAt: !4637)
!4774 = !DILocation(line: 109, column: 49, scope: !4760, inlinedAt: !4773)
!4775 = !DILocation(line: 109, column: 10, scope: !4760, inlinedAt: !4773)
!4776 = !DILocation(line: 241, column: 21, scope: !4564, inlinedAt: !4637)
!4777 = !DILocation(line: 242, column: 19, scope: !4566, inlinedAt: !4637)
!4778 = !DILocation(line: 243, column: 32, scope: !4779, inlinedAt: !4637)
!4779 = distinct !DILexicalBlock(scope: !4566, file: !491, line: 243, column: 23)
!4780 = !DILocation(line: 243, column: 23, scope: !4566, inlinedAt: !4637)
!4781 = !DILocation(line: 247, column: 33, scope: !4782, inlinedAt: !4637)
!4782 = distinct !DILexicalBlock(scope: !4779, file: !491, line: 246, column: 21)
!4783 = !DILocation(line: 247, column: 45, scope: !4782, inlinedAt: !4637)
!4784 = !DILocation(line: 253, column: 11, scope: !4570, inlinedAt: !4637)
!4785 = !DILocation(line: 377, column: 23, scope: !4572, inlinedAt: !4637)
!4786 = !DILocation(line: 378, column: 5, scope: !4572, inlinedAt: !4637)
!4787 = !DILocation(line: 396, column: 15, scope: !4550)
!4788 = !DILocation(line: 590, column: 8, scope: !4559)
!4789 = !DILocation(line: 590, column: 17, scope: !4559)
!4790 = !DILocation(line: 589, column: 3, scope: !4791)
!4791 = !DILexicalBlockFile(scope: !4560, file: !491, discriminator: 1)
!4792 = !DILocation(line: 592, column: 9, scope: !4557)
!4793 = !DILocation(line: 592, column: 35, scope: !4558)
!4794 = !DILocation(line: 593, column: 9, scope: !4558)
!4795 = !DILocation(line: 593, column: 24, scope: !4796)
!4796 = !DILexicalBlockFile(scope: !4558, file: !491, discriminator: 1)
!4797 = !DILocation(line: 593, column: 31, scope: !4796)
!4798 = !DILocation(line: 593, column: 34, scope: !4799)
!4799 = !DILexicalBlockFile(scope: !4558, file: !491, discriminator: 2)
!4800 = !DILocation(line: 593, column: 45, scope: !4799)
!4801 = !DILocation(line: 592, column: 9, scope: !4802)
!4802 = !DILexicalBlockFile(scope: !4559, file: !491, discriminator: 1)
!4803 = !DILocation(line: 595, column: 29, scope: !4804)
!4804 = distinct !DILexicalBlock(scope: !4558, file: !491, line: 594, column: 7)
!4805 = !DILocation(line: 595, column: 27, scope: !4804)
!4806 = !DILocation(line: 595, column: 46, scope: !4804)
!4807 = !DILocation(line: 596, column: 9, scope: !4804)
!4808 = !DILocation(line: 591, column: 19, scope: !4559)
!4809 = !DILocation(line: 591, column: 36, scope: !4559)
!4810 = !DILocation(line: 591, column: 16, scope: !4559)
!4811 = !DILocation(line: 591, column: 52, scope: !4802)
!4812 = !DILocation(line: 591, column: 69, scope: !4559)
!4813 = !DILocation(line: 591, column: 49, scope: !4559)
!4814 = distinct !{!4814, !4815, !4816}
!4815 = !DILocation(line: 589, column: 3, scope: !4560)
!4816 = !DILocation(line: 597, column: 7, scope: !4560)
!4817 = !DILocation(line: 602, column: 7, scope: !4818)
!4818 = distinct !DILexicalBlock(scope: !4550, file: !491, line: 602, column: 7)
!4819 = !DILocation(line: 602, column: 18, scope: !4818)
!4820 = !DILocation(line: 602, column: 7, scope: !4550)
!4821 = !DILocation(line: 612, column: 3, scope: !4550)
!4822 = distinct !DISubprogram(name: "rpl_fclose", scope: !4823, file: !4823, line: 56, type: !4824, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !605, variables: !4866)
!4823 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4824 = !DISubroutineType(types: !4825)
!4825 = !{!20, !4826}
!4826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4827, size: 64)
!4827 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !513, line: 49, baseType: !4828)
!4828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3867, line: 241, size: 1728, elements: !4829)
!4829 = !{!4830, !4831, !4832, !4833, !4834, !4835, !4836, !4837, !4838, !4839, !4840, !4841, !4842, !4850, !4851, !4852, !4853, !4854, !4855, !4856, !4857, !4858, !4859, !4860, !4861, !4862, !4863, !4864, !4865}
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4828, file: !3867, line: 242, baseType: !20, size: 32)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4828, file: !3867, line: 247, baseType: !45, size: 64, offset: 64)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4828, file: !3867, line: 248, baseType: !45, size: 64, offset: 128)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4828, file: !3867, line: 249, baseType: !45, size: 64, offset: 192)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4828, file: !3867, line: 250, baseType: !45, size: 64, offset: 256)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4828, file: !3867, line: 251, baseType: !45, size: 64, offset: 320)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4828, file: !3867, line: 252, baseType: !45, size: 64, offset: 384)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4828, file: !3867, line: 253, baseType: !45, size: 64, offset: 448)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4828, file: !3867, line: 254, baseType: !45, size: 64, offset: 512)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4828, file: !3867, line: 256, baseType: !45, size: 64, offset: 576)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4828, file: !3867, line: 257, baseType: !45, size: 64, offset: 640)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4828, file: !3867, line: 258, baseType: !45, size: 64, offset: 704)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4828, file: !3867, line: 260, baseType: !4843, size: 64, offset: 768)
!4843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4844, size: 64)
!4844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3867, line: 156, size: 192, elements: !4845)
!4845 = !{!4846, !4847, !4849}
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4844, file: !3867, line: 157, baseType: !4843, size: 64)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4844, file: !3867, line: 158, baseType: !4848, size: 64, offset: 64)
!4848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4828, size: 64)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4844, file: !3867, line: 162, baseType: !20, size: 32, offset: 128)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4828, file: !3867, line: 262, baseType: !4848, size: 64, offset: 832)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4828, file: !3867, line: 264, baseType: !20, size: 32, offset: 896)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4828, file: !3867, line: 268, baseType: !20, size: 32, offset: 928)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4828, file: !3867, line: 270, baseType: !526, size: 64, offset: 960)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4828, file: !3867, line: 274, baseType: !88, size: 16, offset: 1024)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4828, file: !3867, line: 275, baseType: !3895, size: 8, offset: 1040)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4828, file: !3867, line: 276, baseType: !3897, size: 8, offset: 1048)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4828, file: !3867, line: 280, baseType: !3899, size: 64, offset: 1088)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4828, file: !3867, line: 289, baseType: !3902, size: 64, offset: 1152)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4828, file: !3867, line: 297, baseType: !44, size: 64, offset: 1216)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4828, file: !3867, line: 298, baseType: !44, size: 64, offset: 1280)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4828, file: !3867, line: 299, baseType: !44, size: 64, offset: 1344)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4828, file: !3867, line: 300, baseType: !44, size: 64, offset: 1408)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4828, file: !3867, line: 302, baseType: !89, size: 64, offset: 1472)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4828, file: !3867, line: 303, baseType: !20, size: 32, offset: 1536)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4828, file: !3867, line: 305, baseType: !3910, size: 160, offset: 1568)
!4866 = !{!4867, !4868, !4869, !4870}
!4867 = !DILocalVariable(name: "fp", arg: 1, scope: !4822, file: !4823, line: 56, type: !4826)
!4868 = !DILocalVariable(name: "saved_errno", scope: !4822, file: !4823, line: 58, type: !20)
!4869 = !DILocalVariable(name: "fd", scope: !4822, file: !4823, line: 59, type: !20)
!4870 = !DILocalVariable(name: "result", scope: !4822, file: !4823, line: 60, type: !20)
!4871 = !DILocation(line: 56, column: 19, scope: !4822)
!4872 = !DILocation(line: 58, column: 7, scope: !4822)
!4873 = !DILocation(line: 60, column: 7, scope: !4822)
!4874 = !DILocation(line: 63, column: 8, scope: !4822)
!4875 = !DILocation(line: 59, column: 7, scope: !4822)
!4876 = !DILocation(line: 64, column: 10, scope: !4877)
!4877 = distinct !DILexicalBlock(scope: !4822, file: !4823, line: 64, column: 7)
!4878 = !DILocation(line: 64, column: 7, scope: !4822)
!4879 = !DILocation(line: 65, column: 12, scope: !4877)
!4880 = !DILocation(line: 65, column: 5, scope: !4877)
!4881 = !DILocation(line: 70, column: 9, scope: !4882)
!4882 = distinct !DILexicalBlock(scope: !4822, file: !4823, line: 70, column: 7)
!4883 = !DILocation(line: 70, column: 23, scope: !4882)
!4884 = !DILocation(line: 70, column: 33, scope: !4885)
!4885 = !DILexicalBlockFile(scope: !4882, file: !4823, discriminator: 1)
!4886 = !DILocation(line: 70, column: 26, scope: !4887)
!4887 = !DILexicalBlockFile(scope: !4882, file: !4823, discriminator: 3)
!4888 = !DILocation(line: 70, column: 59, scope: !4885)
!4889 = !DILocation(line: 71, column: 7, scope: !4882)
!4890 = !DILocation(line: 71, column: 10, scope: !4885)
!4891 = !DILocation(line: 70, column: 7, scope: !4892)
!4892 = !DILexicalBlockFile(scope: !4822, file: !4823, discriminator: 2)
!4893 = !DILocation(line: 98, column: 12, scope: !4822)
!4894 = !DILocation(line: 103, column: 7, scope: !4822)
!4895 = !DILocation(line: 72, column: 19, scope: !4882)
!4896 = !DILocation(line: 103, column: 19, scope: !4897)
!4897 = distinct !DILexicalBlock(scope: !4822, file: !4823, line: 103, column: 7)
!4898 = !DILocation(line: 105, column: 13, scope: !4899)
!4899 = distinct !DILexicalBlock(scope: !4897, file: !4823, line: 104, column: 5)
!4900 = !DILocation(line: 107, column: 5, scope: !4899)
!4901 = !DILocation(line: 110, column: 1, scope: !4822)
!4902 = distinct !DISubprogram(name: "rpl_fflush", scope: !4903, file: !4903, line: 127, type: !4904, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !607, variables: !4946)
!4903 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4904 = !DISubroutineType(types: !4905)
!4905 = !{!20, !4906}
!4906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4907, size: 64)
!4907 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !513, line: 49, baseType: !4908)
!4908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3867, line: 241, size: 1728, elements: !4909)
!4909 = !{!4910, !4911, !4912, !4913, !4914, !4915, !4916, !4917, !4918, !4919, !4920, !4921, !4922, !4930, !4931, !4932, !4933, !4934, !4935, !4936, !4937, !4938, !4939, !4940, !4941, !4942, !4943, !4944, !4945}
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4908, file: !3867, line: 242, baseType: !20, size: 32)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4908, file: !3867, line: 247, baseType: !45, size: 64, offset: 64)
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4908, file: !3867, line: 248, baseType: !45, size: 64, offset: 128)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4908, file: !3867, line: 249, baseType: !45, size: 64, offset: 192)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4908, file: !3867, line: 250, baseType: !45, size: 64, offset: 256)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4908, file: !3867, line: 251, baseType: !45, size: 64, offset: 320)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4908, file: !3867, line: 252, baseType: !45, size: 64, offset: 384)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4908, file: !3867, line: 253, baseType: !45, size: 64, offset: 448)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4908, file: !3867, line: 254, baseType: !45, size: 64, offset: 512)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4908, file: !3867, line: 256, baseType: !45, size: 64, offset: 576)
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4908, file: !3867, line: 257, baseType: !45, size: 64, offset: 640)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4908, file: !3867, line: 258, baseType: !45, size: 64, offset: 704)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4908, file: !3867, line: 260, baseType: !4923, size: 64, offset: 768)
!4923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4924, size: 64)
!4924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3867, line: 156, size: 192, elements: !4925)
!4925 = !{!4926, !4927, !4929}
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4924, file: !3867, line: 157, baseType: !4923, size: 64)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4924, file: !3867, line: 158, baseType: !4928, size: 64, offset: 64)
!4928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4908, size: 64)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4924, file: !3867, line: 162, baseType: !20, size: 32, offset: 128)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4908, file: !3867, line: 262, baseType: !4928, size: 64, offset: 832)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4908, file: !3867, line: 264, baseType: !20, size: 32, offset: 896)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4908, file: !3867, line: 268, baseType: !20, size: 32, offset: 928)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4908, file: !3867, line: 270, baseType: !526, size: 64, offset: 960)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4908, file: !3867, line: 274, baseType: !88, size: 16, offset: 1024)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4908, file: !3867, line: 275, baseType: !3895, size: 8, offset: 1040)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4908, file: !3867, line: 276, baseType: !3897, size: 8, offset: 1048)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4908, file: !3867, line: 280, baseType: !3899, size: 64, offset: 1088)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4908, file: !3867, line: 289, baseType: !3902, size: 64, offset: 1152)
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4908, file: !3867, line: 297, baseType: !44, size: 64, offset: 1216)
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4908, file: !3867, line: 298, baseType: !44, size: 64, offset: 1280)
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4908, file: !3867, line: 299, baseType: !44, size: 64, offset: 1344)
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4908, file: !3867, line: 300, baseType: !44, size: 64, offset: 1408)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4908, file: !3867, line: 302, baseType: !89, size: 64, offset: 1472)
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4908, file: !3867, line: 303, baseType: !20, size: 32, offset: 1536)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4908, file: !3867, line: 305, baseType: !3910, size: 160, offset: 1568)
!4946 = !{!4947}
!4947 = !DILocalVariable(name: "stream", arg: 1, scope: !4902, file: !4903, line: 127, type: !4906)
!4948 = !DILocation(line: 127, column: 19, scope: !4902)
!4949 = !DILocation(line: 148, column: 14, scope: !4950)
!4950 = distinct !DILexicalBlock(scope: !4902, file: !4903, line: 148, column: 7)
!4951 = !DILocation(line: 148, column: 22, scope: !4950)
!4952 = !DILocation(line: 148, column: 27, scope: !4953)
!4953 = !DILexicalBlockFile(scope: !4950, file: !4903, discriminator: 1)
!4954 = !DILocation(line: 148, column: 7, scope: !4955)
!4955 = !DILexicalBlockFile(scope: !4902, file: !4903, discriminator: 1)
!4956 = !DILocation(line: 149, column: 12, scope: !4950)
!4957 = !DILocation(line: 149, column: 5, scope: !4950)
!4958 = !DILocalVariable(name: "fp", arg: 1, scope: !4959, file: !4903, line: 40, type: !4906)
!4959 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !4903, file: !4903, line: 40, type: !4960, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !607, variables: !4962)
!4960 = !DISubroutineType(types: !4961)
!4961 = !{null, !4906}
!4962 = !{!4958}
!4963 = !DILocation(line: 40, column: 48, scope: !4959, inlinedAt: !4964)
!4964 = distinct !DILocation(line: 153, column: 3, scope: !4902)
!4965 = !DILocation(line: 42, column: 11, scope: !4966, inlinedAt: !4964)
!4966 = distinct !DILexicalBlock(scope: !4959, file: !4903, line: 42, column: 7)
!4967 = !DILocation(line: 42, column: 18, scope: !4966, inlinedAt: !4964)
!4968 = !DILocation(line: 42, column: 7, scope: !4959, inlinedAt: !4964)
!4969 = !DILocation(line: 44, column: 5, scope: !4966, inlinedAt: !4964)
!4970 = !DILocation(line: 155, column: 10, scope: !4902)
!4971 = !DILocation(line: 155, column: 3, scope: !4902)
!4972 = !DILocation(line: 229, column: 1, scope: !4902)
!4973 = distinct !DISubprogram(name: "rpl_fseeko", scope: !4974, file: !4974, line: 28, type: !4975, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !609, variables: !5017)
!4974 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4975 = !DISubroutineType(types: !4976)
!4976 = !{!20, !4977, !525, !20}
!4977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4978, size: 64)
!4978 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !513, line: 49, baseType: !4979)
!4979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3867, line: 241, size: 1728, elements: !4980)
!4980 = !{!4981, !4982, !4983, !4984, !4985, !4986, !4987, !4988, !4989, !4990, !4991, !4992, !4993, !5001, !5002, !5003, !5004, !5005, !5006, !5007, !5008, !5009, !5010, !5011, !5012, !5013, !5014, !5015, !5016}
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4979, file: !3867, line: 242, baseType: !20, size: 32)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4979, file: !3867, line: 247, baseType: !45, size: 64, offset: 64)
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4979, file: !3867, line: 248, baseType: !45, size: 64, offset: 128)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4979, file: !3867, line: 249, baseType: !45, size: 64, offset: 192)
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4979, file: !3867, line: 250, baseType: !45, size: 64, offset: 256)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4979, file: !3867, line: 251, baseType: !45, size: 64, offset: 320)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4979, file: !3867, line: 252, baseType: !45, size: 64, offset: 384)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4979, file: !3867, line: 253, baseType: !45, size: 64, offset: 448)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4979, file: !3867, line: 254, baseType: !45, size: 64, offset: 512)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4979, file: !3867, line: 256, baseType: !45, size: 64, offset: 576)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4979, file: !3867, line: 257, baseType: !45, size: 64, offset: 640)
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4979, file: !3867, line: 258, baseType: !45, size: 64, offset: 704)
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4979, file: !3867, line: 260, baseType: !4994, size: 64, offset: 768)
!4994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4995, size: 64)
!4995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3867, line: 156, size: 192, elements: !4996)
!4996 = !{!4997, !4998, !5000}
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4995, file: !3867, line: 157, baseType: !4994, size: 64)
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4995, file: !3867, line: 158, baseType: !4999, size: 64, offset: 64)
!4999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4979, size: 64)
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4995, file: !3867, line: 162, baseType: !20, size: 32, offset: 128)
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4979, file: !3867, line: 262, baseType: !4999, size: 64, offset: 832)
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4979, file: !3867, line: 264, baseType: !20, size: 32, offset: 896)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4979, file: !3867, line: 268, baseType: !20, size: 32, offset: 928)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4979, file: !3867, line: 270, baseType: !526, size: 64, offset: 960)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4979, file: !3867, line: 274, baseType: !88, size: 16, offset: 1024)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4979, file: !3867, line: 275, baseType: !3895, size: 8, offset: 1040)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4979, file: !3867, line: 276, baseType: !3897, size: 8, offset: 1048)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4979, file: !3867, line: 280, baseType: !3899, size: 64, offset: 1088)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4979, file: !3867, line: 289, baseType: !3902, size: 64, offset: 1152)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4979, file: !3867, line: 297, baseType: !44, size: 64, offset: 1216)
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4979, file: !3867, line: 298, baseType: !44, size: 64, offset: 1280)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4979, file: !3867, line: 299, baseType: !44, size: 64, offset: 1344)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4979, file: !3867, line: 300, baseType: !44, size: 64, offset: 1408)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4979, file: !3867, line: 302, baseType: !89, size: 64, offset: 1472)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4979, file: !3867, line: 303, baseType: !20, size: 32, offset: 1536)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4979, file: !3867, line: 305, baseType: !3910, size: 160, offset: 1568)
!5017 = !{!5018, !5019, !5020, !5021}
!5018 = !DILocalVariable(name: "fp", arg: 1, scope: !4973, file: !4974, line: 28, type: !4977)
!5019 = !DILocalVariable(name: "offset", arg: 2, scope: !4973, file: !4974, line: 28, type: !525)
!5020 = !DILocalVariable(name: "whence", arg: 3, scope: !4973, file: !4974, line: 28, type: !20)
!5021 = !DILocalVariable(name: "pos", scope: !5022, file: !4974, line: 116, type: !525)
!5022 = distinct !DILexicalBlock(scope: !5023, file: !4974, line: 112, column: 5)
!5023 = distinct !DILexicalBlock(scope: !4973, file: !4974, line: 51, column: 7)
!5024 = !DILocation(line: 28, column: 15, scope: !4973)
!5025 = !DILocation(line: 28, column: 25, scope: !4973)
!5026 = !DILocation(line: 28, column: 37, scope: !4973)
!5027 = !DILocation(line: 51, column: 11, scope: !5023)
!5028 = !DILocation(line: 51, column: 31, scope: !5023)
!5029 = !DILocation(line: 51, column: 24, scope: !5023)
!5030 = !DILocation(line: 52, column: 7, scope: !5023)
!5031 = !DILocation(line: 52, column: 14, scope: !5032)
!5032 = !DILexicalBlockFile(scope: !5023, file: !4974, discriminator: 1)
!5033 = !{!4476, !630, i64 40}
!5034 = !DILocation(line: 52, column: 35, scope: !5032)
!5035 = !{!4476, !630, i64 32}
!5036 = !DILocation(line: 52, column: 28, scope: !5032)
!5037 = !DILocation(line: 53, column: 7, scope: !5023)
!5038 = !DILocation(line: 53, column: 14, scope: !5032)
!5039 = !{!4476, !630, i64 72}
!5040 = !DILocation(line: 53, column: 28, scope: !5032)
!5041 = !DILocation(line: 51, column: 7, scope: !5042)
!5042 = !DILexicalBlockFile(scope: !4973, file: !4974, discriminator: 1)
!5043 = !DILocation(line: 116, column: 26, scope: !5022)
!5044 = !DILocation(line: 116, column: 19, scope: !5045)
!5045 = !DILexicalBlockFile(scope: !5022, file: !4974, discriminator: 1)
!5046 = !DILocation(line: 116, column: 13, scope: !5022)
!5047 = !DILocation(line: 117, column: 15, scope: !5048)
!5048 = distinct !DILexicalBlock(scope: !5022, file: !4974, line: 117, column: 11)
!5049 = !DILocation(line: 117, column: 11, scope: !5022)
!5050 = !DILocation(line: 127, column: 11, scope: !5022)
!5051 = !DILocation(line: 127, column: 18, scope: !5022)
!5052 = !DILocation(line: 128, column: 11, scope: !5022)
!5053 = !DILocation(line: 128, column: 19, scope: !5022)
!5054 = !{!4476, !3178, i64 144}
!5055 = !DILocation(line: 159, column: 7, scope: !5022)
!5056 = !DILocation(line: 161, column: 10, scope: !4973)
!5057 = !DILocation(line: 161, column: 3, scope: !4973)
!5058 = !DILocation(line: 162, column: 1, scope: !4973)
