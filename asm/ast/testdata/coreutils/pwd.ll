; ModuleID = 'coreutils-8.27/src/pwd.bc'
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
%struct.__dirstream = type opaque
%struct.dirent = type { i64, i64, i16, i8, [256 x i8] }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Usage: %s [OPTION]...\0A\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"Print the full filename of the current working directory.\0A\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [111 x i8] c"  -L, --logical   use PWD from environment, even if it contains symlinks\0A  -P, --physical  avoid all symlinks\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"\0AIf no option is specified, -P is assumed.\0A\00", align 1
@.str.7 = private unnamed_addr constant [191 x i8] c"\0ANOTE: your shell may have its own version of %s, which usually supersedes\0Athe version described here.  Please refer to your shell's documentation\0Afor details about the options it supports.\0A\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"pwd\00", align 1
@.str.25 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.26 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.28 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.29 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.30 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"POSIXLY_CORRECT\00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"LP\00", align 1
@longopts = internal constant [5 x %struct.option] [%struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i32 0, i32 0), i32 0, i32* null, i32 76 }, %struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i32 0, i32 0), i32 0, i32* null, i32 80 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !0
@.str.15 = private unnamed_addr constant [13 x i8] c"Jim Meyering\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.16 = private unnamed_addr constant [30 x i8] c"ignoring non-option arguments\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"PWD\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c"/.\00", align 1
@.str.38 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.39 = private unnamed_addr constant [31 x i8] c"failed to get attributes of %s\00", align 1
@.str.40 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.41 = private unnamed_addr constant [18 x i8] c"failed to stat %s\00", align 1
@.str.42 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.43 = private unnamed_addr constant [25 x i8] c"cannot open directory %s\00", align 1
@.str.44 = private unnamed_addr constant [22 x i8] c"failed to chdir to %s\00", align 1
@.str.45 = private unnamed_addr constant [21 x i8] c"reading directory %s\00", align 1
@.str.46 = private unnamed_addr constant [57 x i8] c"couldn't find directory entry in %s with matching i-node\00", align 1
@.str.47 = private unnamed_addr constant [4 x i8] c"../\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"logical\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"physical\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), align 8, !dbg !80
@.str.17 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !86
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !91
@.str.20 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.21 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.22 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !95
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !102
@.str.48 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.49 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.50 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.52, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.53, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.54, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.55, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.56, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.57, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.58, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.59, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.60, i32 0, i32 0), i8* null], align 16, !dbg !109
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
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !137
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !144
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !157
@.str.11.61 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.62 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.63 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.64 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.65 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.66 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !164
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !171
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !159
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !173
@.str.75 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.76 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.77 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.78 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.79 = private unnamed_addr constant [203 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.80 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.81 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.82 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.83 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.84 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.85 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.86 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.87 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.88 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.89 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.92 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.93 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.94 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.95 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.96 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !179
@.str.1.107 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.108 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.119 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.122 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !188
@.str.3.123 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.124 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.125 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.126 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.127 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.128 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) local_unnamed_addr #0 !dbg !588 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !592, metadata !593), !dbg !594
  %2 = icmp eq i32 %0, 0, !dbg !595
  br i1 %2, label %8, label %3, !dbg !597

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !598, !tbaa !601
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #10, !dbg !598
  %6 = load i8*, i8** @program_name, align 8, !dbg !598, !tbaa !601
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #10, !dbg !605
  br label %44, !dbg !607

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 5) #10, !dbg !609
  %10 = load i8*, i8** @program_name, align 8, !dbg !609, !tbaa !601
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10) #10, !dbg !611
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i32 5) #10, !dbg !613
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !613, !tbaa !601
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #10, !dbg !614
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str.3, i64 0, i64 0), i32 5) #10, !dbg !615
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !615, !tbaa !601
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #10, !dbg !616
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 5) #10, !dbg !617
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !617, !tbaa !601
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #10, !dbg !618
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 5) #10, !dbg !619
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !619, !tbaa !601
  %23 = tail call i32 @fputs_unlocked(i8* %21, %struct._IO_FILE* %22) #10, !dbg !620
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0), i32 5) #10, !dbg !621
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !621, !tbaa !601
  %26 = tail call i32 @fputs_unlocked(i8* %24, %struct._IO_FILE* %25) #10, !dbg !622
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([191 x i8], [191 x i8]* @.str.7, i64 0, i64 0), i32 5) #10, !dbg !623
  %28 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0)) #10, !dbg !624
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !45, metadata !593) #10, !dbg !625
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i64 0, metadata !45, metadata !593) #10, !dbg !625
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.25, i64 0, i64 0), i32 5) #10, !dbg !627
  %30 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %29, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.26, i64 0, i64 0)) #10, !dbg !628
  %31 = tail call i8* @setlocale(i32 5, i8* null) #10, !dbg !630
  tail call void @llvm.dbg.value(metadata i8* %31, i64 0, metadata !56, metadata !593) #10, !dbg !631
  %32 = icmp eq i8* %31, null, !dbg !632
  br i1 %32, label %39, label %33, !dbg !633

; <label>:33:                                     ; preds = %8
  %34 = tail call i32 @strncmp(i8* nonnull %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i64 0, i64 0), i64 3) #13, !dbg !634
  %35 = icmp eq i32 %34, 0, !dbg !634
  br i1 %35, label %39, label %36, !dbg !636

; <label>:36:                                     ; preds = %33
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.28, i64 0, i64 0), i32 5) #10, !dbg !638
  %38 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0)) #10, !dbg !640
  br label %39, !dbg !642

; <label>:39:                                     ; preds = %8, %33, %36
  %40 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.29, i64 0, i64 0), i32 5) #10, !dbg !643
  %41 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %40, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0)) #10, !dbg !644
  %42 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.30, i64 0, i64 0), i32 5) #10, !dbg !645
  %43 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %42, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i64 0, i64 0)) #10, !dbg !646
  br label %44

; <label>:44:                                     ; preds = %39, %3
  tail call void @exit(i32 %0) #14, !dbg !647
  unreachable, !dbg !647
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
define i32 @main(i32, i8**) local_unnamed_addr #6 !dbg !648 {
  %3 = alloca %struct.stat, align 8
  %4 = alloca %struct.stat, align 8
  %5 = alloca %struct.timespec, align 8
  %6 = alloca %struct.stat, align 8
  %7 = alloca %struct.stat, align 8
  %8 = alloca %struct.stat, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !653, metadata !593), !dbg !668
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !654, metadata !593), !dbg !669
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0)) #10, !dbg !670
  %10 = icmp ne i8* %9, null, !dbg !671
  %11 = zext i1 %10 to i8, !dbg !672
  tail call void @llvm.dbg.value(metadata i8 %11, i64 0, metadata !656, metadata !593), !dbg !672
  %12 = load i8*, i8** %1, align 8, !dbg !673, !tbaa !601
  tail call void @set_program_name(i8* %12) #10, !dbg !674
  %13 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0)) #10, !dbg !675
  %14 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0)) #10, !dbg !676
  %15 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0)) #10, !dbg !677
  %16 = tail call i32 @atexit(void ()* nonnull @close_stdout) #10, !dbg !678
  br label %17, !dbg !679

; <label>:17:                                     ; preds = %21, %2
  %18 = phi i8 [ %11, %2 ], [ %22, %21 ]
  tail call void @llvm.dbg.value(metadata i8 %18, i64 0, metadata !656, metadata !593), !dbg !672
  %19 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), %struct.option* getelementptr inbounds ([5 x %struct.option], [5 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #10, !dbg !680
  tail call void @llvm.dbg.value(metadata i32 %19, i64 0, metadata !657, metadata !593), !dbg !681
  switch i32 %19, label %27 [
    i32 -1, label %28
    i32 76, label %21
    i32 80, label %20
    i32 -130, label %23
    i32 -131, label %24
  ], !dbg !682

; <label>:20:                                     ; preds = %17
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !656, metadata !593), !dbg !672
  br label %21, !dbg !683

; <label>:21:                                     ; preds = %20, %17
  %22 = phi i8 [ 0, %20 ], [ 1, %17 ]
  br label %17, !dbg !672

; <label>:23:                                     ; preds = %17
  tail call void @usage(i32 0) #15, !dbg !685
  unreachable, !dbg !685

; <label>:24:                                     ; preds = %17
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !686, !tbaa !601
  %26 = load i8*, i8** @Version, align 8, !dbg !686, !tbaa !601
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i8* %26, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0), i8* null) #10, !dbg !686
  tail call void @exit(i32 0) #14, !dbg !687
  unreachable, !dbg !686

; <label>:27:                                     ; preds = %17
  tail call void @usage(i32 1) #15, !dbg !689
  unreachable, !dbg !689

; <label>:28:                                     ; preds = %17
  tail call void @llvm.dbg.value(metadata i8 %18, i64 0, metadata !656, metadata !593), !dbg !672
  %29 = load i32, i32* @optind, align 4, !dbg !690, !tbaa !692
  %30 = icmp slt i32 %29, %0, !dbg !694
  br i1 %30, label %31, label %33, !dbg !695

; <label>:31:                                     ; preds = %28
  %32 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.16, i64 0, i64 0), i32 5) #10, !dbg !696
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %32) #10, !dbg !697
  br label %33, !dbg !699

; <label>:33:                                     ; preds = %31, %28
  %34 = icmp eq i8 %18, 0, !dbg !700
  br i1 %34, label %81, label %35, !dbg !702

; <label>:35:                                     ; preds = %33
  %36 = bitcast %struct.stat* %7 to i8*, !dbg !703
  call void @llvm.lifetime.start(i64 144, i8* nonnull %36) #10, !dbg !703
  %37 = bitcast %struct.stat* %8 to i8*, !dbg !753
  call void @llvm.lifetime.start(i64 144, i8* nonnull %37) #10, !dbg !753
  %38 = tail call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.36, i64 0, i64 0)) #10, !dbg !754
  tail call void @llvm.dbg.value(metadata i8* %38, i64 0, metadata !749, metadata !593) #10, !dbg !755
  %39 = icmp eq i8* %38, null, !dbg !756
  br i1 %39, label %78, label %40, !dbg !758

; <label>:40:                                     ; preds = %35
  %41 = load i8, i8* %38, align 1, !dbg !759, !tbaa !761
  %42 = icmp eq i8 %41, 47, !dbg !762
  br i1 %42, label %43, label %78, !dbg !763

; <label>:43:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i8* %38, i64 0, metadata !750, metadata !593) #10, !dbg !765
  %44 = tail call i8* @strstr(i8* nonnull %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i64 0, i64 0)) #13, !dbg !766
  tail call void @llvm.dbg.value(metadata i8* %44, i64 0, metadata !750, metadata !593) #10, !dbg !765
  %45 = icmp eq i8* %44, null, !dbg !767
  br i1 %45, label %59, label %46, !dbg !767

; <label>:46:                                     ; preds = %43
  br label %47, !dbg !768

; <label>:47:                                     ; preds = %46, %54
  %48 = phi i8* [ %56, %54 ], [ %44, %46 ]
  %49 = getelementptr inbounds i8, i8* %48, i64 2, !dbg !768
  %50 = load i8, i8* %49, align 1, !dbg !768, !tbaa !761
  switch i8 %50, label %54 [
    i8 0, label %77
    i8 47, label %77
    i8 46, label %51
  ], !dbg !771

; <label>:51:                                     ; preds = %47
  %52 = getelementptr inbounds i8, i8* %48, i64 3, !dbg !772
  %53 = load i8, i8* %52, align 1, !dbg !772, !tbaa !761
  switch i8 %53, label %54 [
    i8 0, label %77
    i8 47, label %77
  ], !dbg !774

; <label>:54:                                     ; preds = %51, %47
  %55 = getelementptr inbounds i8, i8* %48, i64 1, !dbg !775
  tail call void @llvm.dbg.value(metadata i8* %55, i64 0, metadata !750, metadata !593) #10, !dbg !765
  tail call void @llvm.dbg.value(metadata i8* %55, i64 0, metadata !750, metadata !593) #10, !dbg !765
  %56 = tail call i8* @strstr(i8* %55, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i64 0, i64 0)) #13, !dbg !766
  tail call void @llvm.dbg.value(metadata i8* %56, i64 0, metadata !750, metadata !593) #10, !dbg !765
  %57 = icmp eq i8* %56, null, !dbg !767
  br i1 %57, label %58, label %47, !dbg !767, !llvm.loop !776

; <label>:58:                                     ; preds = %54
  br label %59, !dbg !779

; <label>:59:                                     ; preds = %58, %43
  tail call void @llvm.dbg.value(metadata %struct.stat* %7, i64 0, metadata !708, metadata !780) #10, !dbg !779
  tail call void @llvm.dbg.value(metadata i8* %38, i64 0, metadata !781, metadata !593) #10, !dbg !789
  tail call void @llvm.dbg.value(metadata %struct.stat* %7, i64 0, metadata !788, metadata !593) #10, !dbg !789
  %60 = call i32 @__xstat(i32 1, i8* nonnull %38, %struct.stat* nonnull %7) #10, !dbg !792
  %61 = icmp eq i32 %60, 0, !dbg !793
  br i1 %61, label %62, label %78, !dbg !794

; <label>:62:                                     ; preds = %59
  call void @llvm.dbg.value(metadata %struct.stat* %8, i64 0, metadata !748, metadata !780) #10, !dbg !795
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i64 0, i64 0), i64 0, metadata !781, metadata !593) #10, !dbg !796
  call void @llvm.dbg.value(metadata %struct.stat* %8, i64 0, metadata !788, metadata !593) #10, !dbg !796
  %63 = call i32 @__xstat(i32 1, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i64 0, i64 0), %struct.stat* nonnull %8) #10, !dbg !799
  %64 = icmp eq i32 %63, 0, !dbg !800
  br i1 %64, label %65, label %78, !dbg !801

; <label>:65:                                     ; preds = %62
  %66 = getelementptr inbounds %struct.stat, %struct.stat* %7, i64 0, i32 1, !dbg !802
  %67 = load i64, i64* %66, align 8, !dbg !802, !tbaa !804
  %68 = getelementptr inbounds %struct.stat, %struct.stat* %8, i64 0, i32 1, !dbg !802
  %69 = load i64, i64* %68, align 8, !dbg !802, !tbaa !804
  %70 = icmp eq i64 %67, %69, !dbg !802
  br i1 %70, label %71, label %78, !dbg !802

; <label>:71:                                     ; preds = %65
  %72 = getelementptr inbounds %struct.stat, %struct.stat* %7, i64 0, i32 0, !dbg !808
  %73 = load i64, i64* %72, align 8, !dbg !808, !tbaa !810
  %74 = getelementptr inbounds %struct.stat, %struct.stat* %8, i64 0, i32 0, !dbg !808
  %75 = load i64, i64* %74, align 8, !dbg !808, !tbaa !810
  %76 = icmp eq i64 %73, %75, !dbg !808
  br i1 %76, label %79, label %78, !dbg !811

; <label>:77:                                     ; preds = %47, %47, %51, %51
  br label %78, !dbg !813

; <label>:78:                                     ; preds = %77, %40, %35, %71, %65, %62, %59
  call void @llvm.lifetime.end(i64 144, i8* nonnull %37) #10, !dbg !813
  call void @llvm.lifetime.end(i64 144, i8* nonnull %36) #10, !dbg !813
  call void @llvm.dbg.value(metadata i8* %38, i64 0, metadata !655, metadata !593), !dbg !814
  br label %81, !dbg !815

; <label>:79:                                     ; preds = %71
  call void @llvm.lifetime.end(i64 144, i8* nonnull %37) #10, !dbg !813
  call void @llvm.lifetime.end(i64 144, i8* nonnull %36) #10, !dbg !813
  call void @llvm.dbg.value(metadata i8* %38, i64 0, metadata !655, metadata !593), !dbg !814
  %80 = call i32 @puts(i8* nonnull %38), !dbg !816
  br label %315, !dbg !819

; <label>:81:                                     ; preds = %78, %33
  %82 = call i8* @xgetcwd() #10, !dbg !820
  call void @llvm.dbg.value(metadata i8* %82, i64 0, metadata !655, metadata !593), !dbg !814
  %83 = icmp eq i8* %82, null, !dbg !821
  br i1 %83, label %86, label %84, !dbg !822

; <label>:84:                                     ; preds = %81
  %85 = call i32 @puts(i8* nonnull %82), !dbg !823
  call void @free(i8* nonnull %82) #10, !dbg !825
  br label %315, !dbg !826

; <label>:86:                                     ; preds = %81
  %87 = call noalias i8* @xmalloc(i64 24) #10, !dbg !827
  %88 = getelementptr inbounds i8, i8* %87, i64 8, !dbg !834
  %89 = bitcast i8* %88 to i64*, !dbg !834
  store i64 8192, i64* %89, align 8, !dbg !835, !tbaa !836
  %90 = call noalias i8* @xmalloc(i64 8192) #10, !dbg !838
  %91 = bitcast i8* %87 to i8**, !dbg !839
  store i8* %90, i8** %91, align 8, !dbg !840, !tbaa !841
  %92 = getelementptr inbounds i8, i8* %90, i64 8191, !dbg !842
  %93 = getelementptr inbounds i8, i8* %87, i64 16, !dbg !843
  %94 = bitcast i8* %93 to i8**, !dbg !843
  store i8* %92, i8** %94, align 8, !dbg !844, !tbaa !845
  store i8 0, i8* %92, align 1, !dbg !846, !tbaa !761
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !847, metadata !593) #10, !dbg !865
  %95 = bitcast %struct.timespec* %5 to i8*, !dbg !867
  call void @llvm.lifetime.start(i64 16, i8* nonnull %95) #10, !dbg !867
  call void @llvm.dbg.value(metadata %struct.timespec* %5, i64 0, metadata !853, metadata !780) #10, !dbg !868
  %96 = call %struct.timespec* @get_root_dev_ino(%struct.timespec* nonnull %5) #10, !dbg !869
  call void @llvm.dbg.value(metadata %struct.timespec* %96, i64 0, metadata !862, metadata !593) #10, !dbg !870
  %97 = bitcast %struct.stat* %6 to i8*, !dbg !871
  call void @llvm.lifetime.start(i64 144, i8* nonnull %97) #10, !dbg !871
  %98 = icmp eq %struct.timespec* %96, null, !dbg !872
  %99 = ptrtoint i8* %92 to i64, !dbg !874
  br i1 %98, label %100, label %105, !dbg !874

; <label>:100:                                    ; preds = %86
  %101 = tail call i32* @__errno_location() #1, !dbg !875
  %102 = load i32, i32* %101, align 4, !dbg !875, !tbaa !692
  %103 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.39, i64 0, i64 0), i32 5) #10, !dbg !876
  %104 = call i8* @quotearg_style(i32 4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0)) #10, !dbg !878
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %102, i8* %103, i8* %104) #10, !dbg !880
  unreachable, !dbg !875

; <label>:105:                                    ; preds = %86
  call void @llvm.dbg.value(metadata %struct.stat* %6, i64 0, metadata !864, metadata !780) #10, !dbg !882
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i64 0, i64 0), i64 0, metadata !781, metadata !593) #10, !dbg !883
  call void @llvm.dbg.value(metadata %struct.stat* %6, i64 0, metadata !788, metadata !593) #10, !dbg !883
  %106 = call i32 @__xstat(i32 1, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i64 0, i64 0), %struct.stat* nonnull %6) #10, !dbg !886
  %107 = icmp slt i32 %106, 0, !dbg !887
  br i1 %107, label %119, label %108, !dbg !888

; <label>:108:                                    ; preds = %105
  %109 = getelementptr inbounds %struct.stat, %struct.stat* %6, i64 0, i32 1
  %110 = getelementptr inbounds %struct.timespec, %struct.timespec* %96, i64 0, i32 0
  %111 = getelementptr inbounds %struct.stat, %struct.stat* %6, i64 0, i32 0
  %112 = getelementptr inbounds %struct.timespec, %struct.timespec* %96, i64 0, i32 1
  %113 = bitcast %struct.stat* %3 to i8*
  %114 = getelementptr inbounds %struct.stat, %struct.stat* %3, i64 0, i32 0
  %115 = bitcast %struct.stat* %4 to i8*
  %116 = getelementptr inbounds %struct.stat, %struct.stat* %4, i64 0, i32 1
  %117 = getelementptr inbounds %struct.stat, %struct.stat* %4, i64 0, i32 0
  %118 = bitcast i8* %87 to i64*
  br label %124, !dbg !865

; <label>:119:                                    ; preds = %105
  %120 = tail call i32* @__errno_location() #1, !dbg !889
  %121 = load i32, i32* %120, align 4, !dbg !889, !tbaa !692
  %122 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.41, i64 0, i64 0), i32 5) #10, !dbg !890
  %123 = call i8* @quotearg_style(i32 4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i64 0, i64 0)) #10, !dbg !892
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %121, i8* %122, i8* %123) #10, !dbg !894
  unreachable, !dbg !889

; <label>:124:                                    ; preds = %287, %108
  %125 = phi i8* [ %270, %287 ], [ %92, %108 ], !dbg !896
  %126 = phi i64 [ %271, %287 ], [ %99, %108 ], !dbg !898
  %127 = phi i64 [ %136, %287 ], [ 1, %108 ]
  call void @llvm.dbg.value(metadata i64 %127, i64 0, metadata !847, metadata !593) #10, !dbg !865
  %128 = load i64, i64* %109, align 8, !dbg !953, !tbaa !804
  %129 = load i64, i64* %110, align 8, !dbg !953, !tbaa !955
  %130 = icmp eq i64 %128, %129, !dbg !953
  br i1 %130, label %131, label %135, !dbg !953

; <label>:131:                                    ; preds = %124
  %132 = load i64, i64* %111, align 8, !dbg !957, !tbaa !810
  %133 = load i64, i64* %112, align 8, !dbg !957, !tbaa !959
  %134 = icmp eq i64 %132, %133, !dbg !957
  br i1 %134, label %288, label %135, !dbg !960

; <label>:135:                                    ; preds = %131, %124
  %136 = add i64 %127, 1, !dbg !962
  call void @llvm.dbg.value(metadata i64 %136, i64 0, metadata !847, metadata !593) #10, !dbg !865
  call void @llvm.dbg.value(metadata %struct.stat* %6, i64 0, metadata !864, metadata !780) #10, !dbg !882
  call void @llvm.dbg.value(metadata %struct.stat* %6, i64 0, metadata !921, metadata !593) #10, !dbg !963
  call void @llvm.dbg.value(metadata i64 %127, i64 0, metadata !923, metadata !593) #10, !dbg !964
  call void @llvm.lifetime.start(i64 144, i8* nonnull %113) #10, !dbg !965
  %137 = call %struct.__dirstream* @opendir(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i64 0, i64 0)) #10, !dbg !966
  call void @llvm.dbg.value(metadata %struct.__dirstream* %137, i64 0, metadata !924, metadata !593) #10, !dbg !967
  %138 = icmp eq %struct.__dirstream* %137, null, !dbg !968
  br i1 %138, label %139, label %145, !dbg !970

; <label>:139:                                    ; preds = %135
  %140 = tail call i32* @__errno_location() #1, !dbg !971
  %141 = load i32, i32* %140, align 4, !dbg !971, !tbaa !692
  %142 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.43, i64 0, i64 0), i32 5) #10, !dbg !972
  %143 = call fastcc i8* @nth_parent(i64 %127) #10, !dbg !974
  %144 = call i8* @quote(i8* %143) #10, !dbg !976
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %141, i8* %142, i8* %144) #10, !dbg !978
  unreachable, !dbg !971

; <label>:145:                                    ; preds = %135
  %146 = call i32 @dirfd(%struct.__dirstream* nonnull %137) #10, !dbg !980
  call void @llvm.dbg.value(metadata i32 %146, i64 0, metadata !929, metadata !593) #10, !dbg !981
  %147 = icmp sgt i32 %146, -1, !dbg !982
  br i1 %147, label %148, label %150, !dbg !984

; <label>:148:                                    ; preds = %145
  %149 = call i32 @fchdir(i32 %146) #10, !dbg !985
  br label %152, !dbg !987

; <label>:150:                                    ; preds = %145
  %151 = call i32 @chdir(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i64 0, i64 0)) #10, !dbg !988
  br label %152, !dbg !990

; <label>:152:                                    ; preds = %150, %148
  %153 = phi i32 [ %149, %148 ], [ %151, %150 ], !dbg !991
  %154 = icmp slt i32 %153, 0, !dbg !993
  br i1 %154, label %155, label %161, !dbg !994

; <label>:155:                                    ; preds = %152
  %156 = tail call i32* @__errno_location() #1, !dbg !996
  %157 = load i32, i32* %156, align 4, !dbg !996, !tbaa !692
  %158 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.44, i64 0, i64 0), i32 5) #10, !dbg !997
  %159 = call fastcc i8* @nth_parent(i64 %127) #10, !dbg !998
  %160 = call i8* @quote(i8* %159) #10, !dbg !999
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %157, i8* %158, i8* %160) #10, !dbg !1000
  unreachable, !dbg !996

; <label>:161:                                    ; preds = %152
  call void @llvm.dbg.value(metadata %struct.stat* %3, i64 0, metadata !930, metadata !780) #10, !dbg !1002
  br i1 %147, label %162, label %164, !dbg !1003

; <label>:162:                                    ; preds = %161
  call void @llvm.dbg.value(metadata i32 %146, i64 0, metadata !1005, metadata !593) #10, !dbg !1011
  call void @llvm.dbg.value(metadata %struct.stat* %3, i64 0, metadata !1010, metadata !593) #10, !dbg !1011
  %163 = call i32 @__fxstat(i32 1, i32 %146, %struct.stat* nonnull %3) #10, !dbg !1014
  br label %166, !dbg !1015

; <label>:164:                                    ; preds = %161
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i64 0, i64 0), i64 0, metadata !781, metadata !593) #10, !dbg !1016
  call void @llvm.dbg.value(metadata %struct.stat* %3, i64 0, metadata !788, metadata !593) #10, !dbg !1016
  %165 = call i32 @__xstat(i32 1, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i64 0, i64 0), %struct.stat* nonnull %3) #10, !dbg !1019
  br label %166, !dbg !1020

; <label>:166:                                    ; preds = %164, %162
  %167 = phi i32 [ %163, %162 ], [ %165, %164 ], !dbg !1021
  %168 = icmp slt i32 %167, 0, !dbg !1023
  br i1 %168, label %169, label %175, !dbg !1024

; <label>:169:                                    ; preds = %166
  %170 = tail call i32* @__errno_location() #1, !dbg !1025
  %171 = load i32, i32* %170, align 4, !dbg !1025, !tbaa !692
  %172 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.41, i64 0, i64 0), i32 5) #10, !dbg !1026
  %173 = call fastcc i8* @nth_parent(i64 %127) #10, !dbg !1027
  %174 = call i8* @quote(i8* %173) #10, !dbg !1028
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %171, i8* %172, i8* %174) #10, !dbg !1029
  unreachable, !dbg !1025

; <label>:175:                                    ; preds = %166
  %176 = load i64, i64* %114, align 8, !dbg !1031, !tbaa !810
  %177 = load i64, i64* %111, align 8, !dbg !1032, !tbaa !810
  %178 = icmp ne i64 %176, %177, !dbg !1033
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !932, metadata !593) #10, !dbg !1034
  call void @llvm.dbg.value(metadata %struct.__dirstream* %137, i64 0, metadata !924, metadata !593) #10, !dbg !967
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !932, metadata !593) #10, !dbg !1034
  call void @llvm.lifetime.start(i64 144, i8* nonnull %115) #10, !dbg !1035
  %179 = tail call i32* @__errno_location() #1, !dbg !1036
  store i32 0, i32* %179, align 4, !dbg !1037, !tbaa !692
  call void @llvm.dbg.value(metadata %struct.__dirstream* %137, i64 0, metadata !1038, metadata !593) #10, !dbg !1045
  %180 = call %struct.dirent* @readdir(%struct.__dirstream* nonnull %137) #10, !dbg !1047
  call void @llvm.dbg.value(metadata %struct.dirent* %180, i64 0, metadata !1043, metadata !593) #10, !dbg !1048
  %181 = icmp eq %struct.dirent* %180, null, !dbg !1049
  br i1 %181, label %209, label %182, !dbg !1051

; <label>:182:                                    ; preds = %175
  br label %183, !dbg !1052

; <label>:183:                                    ; preds = %182, %266
  %184 = phi %struct.dirent* [ %267, %266 ], [ %180, %182 ]
  br label %185, !dbg !1052

; <label>:185:                                    ; preds = %202, %183
  %186 = phi %struct.dirent* [ %203, %202 ], [ %184, %183 ]
  %187 = phi %struct.dirent* [ %201, %202 ], [ undef, %183 ]
  %188 = getelementptr inbounds %struct.dirent, %struct.dirent* %186, i64 0, i32 4, i64 0, !dbg !1052
  call void @llvm.dbg.value(metadata i8* %188, i64 0, metadata !1054, metadata !593) #10, !dbg !1062
  %189 = load i8, i8* %188, align 1, !dbg !1064, !tbaa !761
  %190 = icmp eq i8 %189, 46, !dbg !1065
  br i1 %190, label %191, label %214, !dbg !1066

; <label>:191:                                    ; preds = %185
  %192 = getelementptr inbounds %struct.dirent, %struct.dirent* %186, i64 0, i32 4, i64 1, !dbg !1067
  %193 = load i8, i8* %192, align 1, !dbg !1067, !tbaa !761
  %194 = icmp eq i8 %193, 46, !dbg !1068
  %195 = select i1 %194, i64 2, i64 1, !dbg !1069
  %196 = getelementptr inbounds %struct.dirent, %struct.dirent* %186, i64 0, i32 4, i64 %195, !dbg !1069
  %197 = load i8, i8* %196, align 1, !dbg !1069, !tbaa !761
  call void @llvm.dbg.value(metadata i8 %197, i64 0, metadata !1059, metadata !593) #10, !dbg !1070
  %198 = icmp eq i8 %197, 0, !dbg !1071
  %199 = icmp eq i8 %197, 47, !dbg !1072
  %200 = or i1 %198, %199, !dbg !1074
  %201 = select i1 %200, %struct.dirent* %187, %struct.dirent* %186, !dbg !1075
  switch i8 %197, label %205 [
    i8 47, label %202
    i8 0, label %202
  ]

; <label>:202:                                    ; preds = %191, %191
  %203 = call %struct.dirent* @readdir(%struct.__dirstream* nonnull %137) #10, !dbg !1047
  call void @llvm.dbg.value(metadata %struct.dirent* %203, i64 0, metadata !1043, metadata !593) #10, !dbg !1048
  %204 = icmp eq %struct.dirent* %203, null, !dbg !1049
  br i1 %204, label %207, label %185, !dbg !1051

; <label>:205:                                    ; preds = %191
  call void @llvm.dbg.value(metadata %struct.dirent* %201, i64 0, metadata !933, metadata !593) #10, !dbg !1077
  %206 = icmp eq %struct.dirent* %201, null, !dbg !1078
  br i1 %206, label %208, label %215, !dbg !1079

; <label>:207:                                    ; preds = %202
  br label %209, !dbg !1080

; <label>:208:                                    ; preds = %205, %266
  br label %209, !dbg !1080

; <label>:209:                                    ; preds = %208, %207, %175
  %210 = load i32, i32* %179, align 4, !dbg !1080, !tbaa !692
  %211 = icmp eq i32 %210, 0, !dbg !1080
  br i1 %211, label %269, label %212, !dbg !1081

; <label>:212:                                    ; preds = %209
  call void @llvm.dbg.value(metadata i32 %210, i64 0, metadata !946, metadata !593) #10, !dbg !1082
  %213 = call i32 @closedir(%struct.__dirstream* nonnull %137) #10, !dbg !1083
  store i32 %210, i32* %179, align 4, !dbg !1084, !tbaa !692
  call void @llvm.dbg.value(metadata %struct.__dirstream* null, i64 0, metadata !924, metadata !593) #10, !dbg !967
  call void @llvm.dbg.value(metadata %struct.__dirstream* %137, i64 0, metadata !924, metadata !593) #10, !dbg !967
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !932, metadata !593) #10, !dbg !1034
  call void @llvm.lifetime.end(i64 144, i8* nonnull %115) #10, !dbg !1085
  br label %276, !dbg !1086

; <label>:214:                                    ; preds = %185
  br label %215, !dbg !1088

; <label>:215:                                    ; preds = %214, %205
  %216 = phi %struct.dirent* [ %201, %205 ], [ %186, %214 ]
  %217 = getelementptr inbounds %struct.dirent, %struct.dirent* %216, i64 0, i32 0, !dbg !1088
  %218 = load i64, i64* %217, align 8, !dbg !1088, !tbaa !1089
  call void @llvm.dbg.value(metadata i64 %218, i64 0, metadata !945, metadata !593) #10, !dbg !1092
  %219 = icmp eq i64 %218, 0, !dbg !1093
  %220 = or i1 %178, %219, !dbg !1095
  br i1 %220, label %221, label %227, !dbg !1095

; <label>:221:                                    ; preds = %215
  %222 = getelementptr inbounds %struct.dirent, %struct.dirent* %216, i64 0, i32 4, i64 0, !dbg !1096
  call void @llvm.dbg.value(metadata %struct.stat* %4, i64 0, metadata !944, metadata !780) #10, !dbg !1099
  call void @llvm.dbg.value(metadata i8* %222, i64 0, metadata !1100, metadata !593) #10, !dbg !1104
  call void @llvm.dbg.value(metadata %struct.stat* %4, i64 0, metadata !1103, metadata !593) #10, !dbg !1104
  %223 = call i32 @__lxstat(i32 1, i8* nonnull %222, %struct.stat* nonnull %4) #10, !dbg !1106
  %224 = icmp slt i32 %223, 0, !dbg !1107
  br i1 %224, label %266, label %225, !dbg !1108, !llvm.loop !1109

; <label>:225:                                    ; preds = %221
  %226 = load i64, i64* %116, align 8, !dbg !1112, !tbaa !804
  call void @llvm.dbg.value(metadata i64 %226, i64 0, metadata !945, metadata !593) #10, !dbg !1092
  br label %227, !dbg !1113

; <label>:227:                                    ; preds = %225, %215
  %228 = phi i64 [ %226, %225 ], [ %218, %215 ]
  call void @llvm.dbg.value(metadata i64 %228, i64 0, metadata !945, metadata !593) #10, !dbg !1092
  %229 = load i64, i64* %109, align 8, !dbg !1114, !tbaa !804
  %230 = icmp eq i64 %228, %229, !dbg !1116
  br i1 %230, label %231, label %266, !dbg !1117, !llvm.loop !1109

; <label>:231:                                    ; preds = %227
  br i1 %178, label %232, label %236, !dbg !1118

; <label>:232:                                    ; preds = %231
  %233 = load i64, i64* %117, align 8, !dbg !1119, !tbaa !810
  %234 = load i64, i64* %111, align 8, !dbg !1121, !tbaa !810
  %235 = icmp eq i64 %233, %234, !dbg !1122
  br i1 %235, label %236, label %266, !dbg !1123

; <label>:236:                                    ; preds = %232, %231
  %237 = getelementptr inbounds %struct.dirent, %struct.dirent* %216, i64 0, i32 4, i64 0, !dbg !1125
  %238 = call i64 @strlen(i8* %237) #13, !dbg !1126
  call void @llvm.dbg.value(metadata i8* %237, i64 0, metadata !904, metadata !593) #10, !dbg !1127
  call void @llvm.dbg.value(metadata i64 %238, i64 0, metadata !905, metadata !593) #10, !dbg !1128
  %239 = load i64, i64* %118, align 8, !dbg !1129, !tbaa !841
  %240 = sub i64 %126, %239, !dbg !1130
  call void @llvm.dbg.value(metadata i64 %240, i64 0, metadata !906, metadata !593) #10, !dbg !1131
  %241 = add i64 %238, 1, !dbg !1132
  %242 = icmp ult i64 %240, %241, !dbg !1133
  %243 = inttoptr i64 %126 to i8*, !dbg !1134
  %244 = inttoptr i64 %239 to i8*, !dbg !1134
  br i1 %242, label %245, label %259, !dbg !1134

; <label>:245:                                    ; preds = %236
  %246 = load i64, i64* %89, align 8, !dbg !1135, !tbaa !836
  %247 = add i64 %246, %241, !dbg !1136
  call void @llvm.dbg.value(metadata i64 %247, i64 0, metadata !907, metadata !593) #10, !dbg !1137
  call void @llvm.dbg.value(metadata i64 2, i64 0, metadata !1138, metadata !593) #10, !dbg !1144
  call void @llvm.dbg.value(metadata i64 %247, i64 0, metadata !1143, metadata !593) #10, !dbg !1146
  %248 = icmp ugt i64 %247, 4611686018427387903, !dbg !1147
  br i1 %248, label %249, label %250, !dbg !1149

; <label>:249:                                    ; preds = %245
  call void @xalloc_die() #14, !dbg !1150
  unreachable, !dbg !1150

; <label>:250:                                    ; preds = %245
  %251 = shl i64 %247, 1, !dbg !1151
  %252 = call noalias i8* @xmalloc(i64 %251) #10, !dbg !1152
  call void @llvm.dbg.value(metadata i8* %252, i64 0, metadata !910, metadata !593) #10, !dbg !1153
  %253 = sub i64 %246, %240, !dbg !1154
  call void @llvm.dbg.value(metadata i64 %253, i64 0, metadata !911, metadata !593) #10, !dbg !1155
  %254 = getelementptr inbounds i8, i8* %252, i64 %251, !dbg !1156
  %255 = sub i64 0, %253, !dbg !1157
  %256 = getelementptr inbounds i8, i8* %254, i64 %255, !dbg !1157
  store i8* %256, i8** %94, align 8, !dbg !1158, !tbaa !845
  %257 = getelementptr inbounds i8, i8* %244, i64 %240, !dbg !1159
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %256, i8* %257, i64 %253, i32 1, i1 false) #10, !dbg !1160
  call void @free(i8* %244) #10, !dbg !1161
  store i8* %252, i8** %91, align 8, !dbg !1162, !tbaa !841
  store i64 %251, i64* %89, align 8, !dbg !1163, !tbaa !836
  %258 = load i8*, i8** %94, align 8, !tbaa !845
  br label %259, !dbg !1164

; <label>:259:                                    ; preds = %250, %236
  %260 = phi i8* [ %258, %250 ], [ %243, %236 ], !dbg !1165
  %261 = xor i64 %238, -1, !dbg !1165
  %262 = getelementptr inbounds i8, i8* %260, i64 %261, !dbg !1165
  store i8* %262, i8** %94, align 8, !dbg !1165, !tbaa !845
  store i8 47, i8* %262, align 1, !dbg !1166, !tbaa !761
  %263 = load i8*, i8** %94, align 8, !dbg !1167, !tbaa !845
  %264 = getelementptr inbounds i8, i8* %263, i64 1, !dbg !1168
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %264, i8* %237, i64 %238, i32 1, i1 false) #10, !dbg !1169
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !932, metadata !593) #10, !dbg !1034
  %265 = ptrtoint i8* %263 to i64, !dbg !1170
  br label %269, !dbg !1170

; <label>:266:                                    ; preds = %232, %227, %221
  call void @llvm.dbg.value(metadata %struct.__dirstream* %137, i64 0, metadata !924, metadata !593) #10, !dbg !967
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !932, metadata !593) #10, !dbg !1034
  call void @llvm.lifetime.end(i64 144, i8* nonnull %115) #10, !dbg !1085
  call void @llvm.dbg.value(metadata %struct.__dirstream* %137, i64 0, metadata !924, metadata !593) #10, !dbg !967
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !932, metadata !593) #10, !dbg !1034
  call void @llvm.lifetime.start(i64 144, i8* nonnull %115) #10, !dbg !1035
  store i32 0, i32* %179, align 4, !dbg !1037, !tbaa !692
  call void @llvm.dbg.value(metadata %struct.__dirstream* %137, i64 0, metadata !1038, metadata !593) #10, !dbg !1045
  %267 = call %struct.dirent* @readdir(%struct.__dirstream* nonnull %137) #10, !dbg !1047
  call void @llvm.dbg.value(metadata %struct.dirent* %267, i64 0, metadata !1043, metadata !593) #10, !dbg !1048
  %268 = icmp eq %struct.dirent* %267, null, !dbg !1049
  br i1 %268, label %208, label %183, !dbg !1051

; <label>:269:                                    ; preds = %259, %209
  %270 = phi i8* [ %125, %209 ], [ %263, %259 ]
  %271 = phi i64 [ %126, %209 ], [ %265, %259 ]
  %272 = phi i8 [ 0, %209 ], [ 1, %259 ]
  call void @llvm.dbg.value(metadata %struct.__dirstream* %137, i64 0, metadata !924, metadata !593) #10, !dbg !967
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !932, metadata !593) #10, !dbg !1034
  call void @llvm.lifetime.end(i64 144, i8* nonnull %115) #10, !dbg !1085
  %273 = call i32 @closedir(%struct.__dirstream* nonnull %137) #10, !dbg !1171
  %274 = icmp eq i32 %273, 0, !dbg !1173
  br i1 %274, label %281, label %275, !dbg !1174

; <label>:275:                                    ; preds = %269
  br label %276, !dbg !1176

; <label>:276:                                    ; preds = %275, %212
  %277 = load i32, i32* %179, align 4, !dbg !1176, !tbaa !692
  %278 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.45, i64 0, i64 0), i32 5) #10, !dbg !1178
  %279 = call fastcc i8* @nth_parent(i64 %127) #10, !dbg !1180
  %280 = call i8* @quote(i8* %279) #10, !dbg !1182
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %277, i8* %278, i8* %280) #10, !dbg !1184
  unreachable, !dbg !1176

; <label>:281:                                    ; preds = %269
  %282 = icmp eq i8 %272, 0, !dbg !1186
  br i1 %282, label %283, label %287, !dbg !1188

; <label>:283:                                    ; preds = %281
  %284 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.46, i64 0, i64 0), i32 5) #10, !dbg !1189
  %285 = call fastcc i8* @nth_parent(i64 %127) #10, !dbg !1190
  %286 = call i8* @quote(i8* %285) #10, !dbg !1192
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %284, i8* %286) #10, !dbg !1194
  unreachable, !dbg !1189

; <label>:287:                                    ; preds = %281
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %97, i8* nonnull %113, i64 144, i32 8, i1 false) #10, !dbg !1196, !tbaa.struct !1197
  call void @llvm.lifetime.end(i64 144, i8* nonnull %113) #10, !dbg !1199
  br label %124, !dbg !1200, !llvm.loop !1202

; <label>:288:                                    ; preds = %131
  %289 = load i8, i8* %125, align 1, !dbg !1205, !tbaa !761
  %290 = icmp eq i8 %289, 0, !dbg !1206
  br i1 %290, label %291, label %311, !dbg !1207

; <label>:291:                                    ; preds = %288
  %292 = ptrtoint i8* %125 to i64, !dbg !1207
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0), i64 0, metadata !904, metadata !593) #10, !dbg !1208
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !905, metadata !593) #10, !dbg !1210
  %293 = load i64, i64* %118, align 8, !dbg !1211, !tbaa !841
  %294 = icmp eq i64 %292, %293, !dbg !1212
  %295 = inttoptr i64 %293 to i8*, !dbg !1213
  br i1 %294, label %296, label %307, !dbg !1213

; <label>:296:                                    ; preds = %291
  %297 = load i64, i64* %89, align 8, !dbg !1214, !tbaa !836
  %298 = add i64 %297, 1, !dbg !1215
  call void @llvm.dbg.value(metadata i64 %298, i64 0, metadata !907, metadata !593) #10, !dbg !1216
  call void @llvm.dbg.value(metadata i64 2, i64 0, metadata !1138, metadata !593) #10, !dbg !1217
  call void @llvm.dbg.value(metadata i64 %298, i64 0, metadata !1143, metadata !593) #10, !dbg !1219
  %299 = icmp ugt i64 %298, 4611686018427387903, !dbg !1220
  br i1 %299, label %300, label %301, !dbg !1221

; <label>:300:                                    ; preds = %296
  call void @xalloc_die() #14, !dbg !1222
  unreachable, !dbg !1222

; <label>:301:                                    ; preds = %296
  %302 = shl i64 %298, 1, !dbg !1223
  %303 = call noalias i8* @xmalloc(i64 %302) #10, !dbg !1224
  call void @llvm.dbg.value(metadata i8* %303, i64 0, metadata !910, metadata !593) #10, !dbg !1225
  call void @llvm.dbg.value(metadata i64 %297, i64 0, metadata !911, metadata !593) #10, !dbg !1226
  %304 = getelementptr inbounds i8, i8* %303, i64 %302, !dbg !1227
  %305 = sub i64 0, %297, !dbg !1228
  %306 = getelementptr inbounds i8, i8* %304, i64 %305, !dbg !1228
  store i8* %306, i8** %94, align 8, !dbg !1229, !tbaa !845
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %306, i8* %295, i64 %297, i32 1, i1 false) #10, !dbg !1230
  call void @free(i8* %295) #10, !dbg !1231
  store i8* %303, i8** %91, align 8, !dbg !1232, !tbaa !841
  store i64 %302, i64* %89, align 8, !dbg !1233, !tbaa !836
  br label %307, !dbg !1234

; <label>:307:                                    ; preds = %301, %291
  %308 = phi i8* [ %306, %301 ], [ %125, %291 ], !dbg !1235
  %309 = getelementptr inbounds i8, i8* %308, i64 -1, !dbg !1235
  store i8* %309, i8** %94, align 8, !dbg !1235, !tbaa !845
  store i8 47, i8* %309, align 1, !dbg !1236, !tbaa !761
  %310 = load i8*, i8** %94, align 8, !tbaa !845
  br label %311, !dbg !1237

; <label>:311:                                    ; preds = %288, %307
  %312 = phi i8* [ %125, %288 ], [ %310, %307 ], !dbg !1238
  call void @llvm.lifetime.end(i64 144, i8* nonnull %97) #10, !dbg !1239
  call void @llvm.lifetime.end(i64 16, i8* nonnull %95) #10, !dbg !1239
  %313 = call i32 @puts(i8* %312), !dbg !1240
  %314 = load i8*, i8** %91, align 8, !dbg !1241, !tbaa !841
  call void @free(i8* %314) #10, !dbg !1246
  call void @free(i8* nonnull %87) #10, !dbg !1247
  br label %315

; <label>:315:                                    ; preds = %84, %311, %79
  ret i32 0, !dbg !1248
}

; Function Attrs: nounwind readonly
declare i8* @getenv(i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #7

; Function Attrs: nounwind readonly
declare i8* @strstr(i8*, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #7

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #8

; Function Attrs: nounwind
declare noalias %struct.__dirstream* @opendir(i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noalias i8* @nth_parent(i64) unnamed_addr #6 !dbg !1249 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !1253, metadata !593), !dbg !1257
  tail call void @llvm.dbg.value(metadata i64 3, i64 0, metadata !1138, metadata !593) #10, !dbg !1258
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !1143, metadata !593) #10, !dbg !1260
  %2 = icmp ugt i64 %0, 3074457345618258602, !dbg !1261
  br i1 %2, label %3, label %4, !dbg !1262

; <label>:3:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !1263
  unreachable, !dbg !1263

; <label>:4:                                      ; preds = %1
  %5 = mul i64 %0, 3, !dbg !1264
  %6 = tail call noalias i8* @xmalloc(i64 %5) #10, !dbg !1265
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !1254, metadata !593), !dbg !1266
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !1255, metadata !593), !dbg !1267
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1256, metadata !593), !dbg !1268
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1256, metadata !593), !dbg !1268
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !1255, metadata !593), !dbg !1267
  %7 = icmp eq i64 %0, 0, !dbg !1269
  br i1 %7, label %43, label %8, !dbg !1273

; <label>:8:                                      ; preds = %4
  %9 = add i64 %0, -1, !dbg !1275
  %10 = and i64 %0, 7, !dbg !1275
  %11 = icmp eq i64 %10, 0, !dbg !1275
  br i1 %11, label %22, label %12, !dbg !1275

; <label>:12:                                     ; preds = %8
  br label %13, !dbg !1275

; <label>:13:                                     ; preds = %13, %12
  %14 = phi i64 [ %18, %13 ], [ 0, %12 ]
  %15 = phi i8* [ %17, %13 ], [ %6, %12 ]
  %16 = phi i64 [ %19, %13 ], [ %10, %12 ]
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.47, i64 0, i64 0), i64 3, i32 1, i1 false), !dbg !1275
  %17 = getelementptr inbounds i8, i8* %15, i64 3, !dbg !1277
  tail call void @llvm.dbg.value(metadata i8* %17, i64 0, metadata !1255, metadata !593), !dbg !1267
  %18 = add nuw i64 %14, 1, !dbg !1278
  tail call void @llvm.dbg.value(metadata i64 %18, i64 0, metadata !1256, metadata !593), !dbg !1268
  tail call void @llvm.dbg.value(metadata i64 %18, i64 0, metadata !1256, metadata !593), !dbg !1268
  tail call void @llvm.dbg.value(metadata i8* %17, i64 0, metadata !1255, metadata !593), !dbg !1267
  %19 = add i64 %16, -1, !dbg !1273
  %20 = icmp eq i64 %19, 0, !dbg !1273
  br i1 %20, label %21, label %13, !dbg !1273, !llvm.loop !1280

; <label>:21:                                     ; preds = %13
  br label %22, !dbg !1275

; <label>:22:                                     ; preds = %8, %21
  %23 = phi i64 [ 0, %8 ], [ %18, %21 ]
  %24 = phi i8* [ %6, %8 ], [ %17, %21 ]
  %25 = icmp ult i64 %9, 7, !dbg !1275
  br i1 %25, label %41, label %26, !dbg !1275

; <label>:26:                                     ; preds = %22
  br label %27, !dbg !1275

; <label>:27:                                     ; preds = %27, %26
  %28 = phi i64 [ %23, %26 ], [ %38, %27 ]
  %29 = phi i8* [ %24, %26 ], [ %37, %27 ]
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.47, i64 0, i64 0), i64 3, i32 1, i1 false), !dbg !1275
  %30 = getelementptr inbounds i8, i8* %29, i64 3, !dbg !1277
  tail call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !1255, metadata !593), !dbg !1267
  tail call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !1255, metadata !593), !dbg !1267
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.47, i64 0, i64 0), i64 3, i32 1, i1 false), !dbg !1275
  %31 = getelementptr inbounds i8, i8* %29, i64 6, !dbg !1277
  tail call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !1255, metadata !593), !dbg !1267
  tail call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !1255, metadata !593), !dbg !1267
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.47, i64 0, i64 0), i64 3, i32 1, i1 false), !dbg !1275
  %32 = getelementptr inbounds i8, i8* %29, i64 9, !dbg !1277
  tail call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !1255, metadata !593), !dbg !1267
  tail call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !1255, metadata !593), !dbg !1267
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.47, i64 0, i64 0), i64 3, i32 1, i1 false), !dbg !1275
  %33 = getelementptr inbounds i8, i8* %29, i64 12, !dbg !1277
  tail call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !1255, metadata !593), !dbg !1267
  tail call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !1255, metadata !593), !dbg !1267
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.47, i64 0, i64 0), i64 3, i32 1, i1 false), !dbg !1275
  %34 = getelementptr inbounds i8, i8* %29, i64 15, !dbg !1277
  tail call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !1255, metadata !593), !dbg !1267
  tail call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !1255, metadata !593), !dbg !1267
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.47, i64 0, i64 0), i64 3, i32 1, i1 false), !dbg !1275
  %35 = getelementptr inbounds i8, i8* %29, i64 18, !dbg !1277
  tail call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !1255, metadata !593), !dbg !1267
  tail call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !1255, metadata !593), !dbg !1267
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.47, i64 0, i64 0), i64 3, i32 1, i1 false), !dbg !1275
  %36 = getelementptr inbounds i8, i8* %29, i64 21, !dbg !1277
  tail call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !1255, metadata !593), !dbg !1267
  tail call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !1255, metadata !593), !dbg !1267
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.47, i64 0, i64 0), i64 3, i32 1, i1 false), !dbg !1275
  %37 = getelementptr inbounds i8, i8* %29, i64 24, !dbg !1277
  tail call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !1255, metadata !593), !dbg !1267
  %38 = add i64 %28, 8, !dbg !1278
  tail call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !1255, metadata !593), !dbg !1267
  %39 = icmp eq i64 %38, %0, !dbg !1269
  br i1 %39, label %40, label %27, !dbg !1273, !llvm.loop !1282

; <label>:40:                                     ; preds = %27
  br label %41, !dbg !1275

; <label>:41:                                     ; preds = %22, %40
  %42 = getelementptr i8, i8* %6, i64 %5, !dbg !1275
  br label %43, !dbg !1285

; <label>:43:                                     ; preds = %41, %4
  %44 = phi i8* [ %6, %4 ], [ %42, %41 ]
  %45 = getelementptr inbounds i8, i8* %44, i64 -1, !dbg !1285
  store i8 0, i8* %45, align 1, !dbg !1286, !tbaa !761
  ret i8* %6, !dbg !1287
}

; Function Attrs: nounwind
declare i32 @dirfd(%struct.__dirstream*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @fchdir(i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @chdir(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #2

declare %struct.dirent* @readdir(%struct.__dirstream*) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @closedir(%struct.__dirstream* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #4

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !1288 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1290, metadata !593), !dbg !1291
  store i8* %0, i8** @file_name, align 8, !dbg !1292, !tbaa !601
  ret void, !dbg !1293
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !1294 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !1298, metadata !1299), !dbg !1300
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1301, !tbaa !1302
  ret void, !dbg !1304
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !1305 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1312, !tbaa !601
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #10, !dbg !1313
  %3 = icmp eq i32 %2, 0, !dbg !1314
  br i1 %3, label %21, label %4, !dbg !1315

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1316, !tbaa !1302, !range !1318
  %6 = icmp eq i8 %5, 0, !dbg !1316
  %7 = tail call i32* @__errno_location() #1, !dbg !1319
  br i1 %6, label %11, label %8, !dbg !1321

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !1322, !tbaa !692
  %10 = icmp eq i32 %9, 32, !dbg !1324
  br i1 %10, label %21, label %11, !dbg !1325

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0), i32 5) #10, !dbg !1327
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !1309, metadata !593), !dbg !1328
  %13 = load i8*, i8** @file_name, align 8, !dbg !1329, !tbaa !601
  %14 = icmp eq i8* %13, null, !dbg !1329
  %15 = load i32, i32* %7, align 4, !tbaa !692
  br i1 %14, label %18, label %16, !dbg !1330

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #10, !dbg !1331
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.21, i64 0, i64 0), i8* %17, i8* %12) #10, !dbg !1333
  br label %19, !dbg !1335

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.22, i64 0, i64 0), i8* %12) #10, !dbg !1336
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !1337, !tbaa !692
  tail call void @_exit(i32 %20) #14, !dbg !1338
  unreachable, !dbg !1338

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1339, !tbaa !601
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #10, !dbg !1341
  %24 = icmp eq i32 %23, 0, !dbg !1342
  br i1 %24, label %27, label %25, !dbg !1343

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !1344, !tbaa !692
  tail call void @_exit(i32 %26) #14, !dbg !1345
  unreachable, !dbg !1345

; <label>:27:                                     ; preds = %21
  ret void, !dbg !1346
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !1347 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1349, metadata !593), !dbg !1352
  %2 = icmp eq i8* %0, null, !dbg !1353
  br i1 %2, label %3, label %6, !dbg !1355

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1356, !tbaa !601
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.48, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #16, !dbg !1358
  tail call void @abort() #14, !dbg !1359
  unreachable, !dbg !1359

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #13, !dbg !1360
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1350, metadata !593), !dbg !1361
  %8 = icmp ne i8* %7, null, !dbg !1362
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1363
  %10 = select i1 %8, i8* %9, i8* %0, !dbg !1365
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1351, metadata !593), !dbg !1366
  %11 = ptrtoint i8* %10 to i64, !dbg !1367
  %12 = ptrtoint i8* %0 to i64, !dbg !1367
  %13 = sub i64 %11, %12, !dbg !1367
  %14 = icmp sgt i64 %13, 6, !dbg !1369
  br i1 %14, label %15, label %24, !dbg !1370

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1371
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.49, i64 0, i64 0), i64 7) #13, !dbg !1371
  %18 = icmp eq i32 %17, 0, !dbg !1373
  br i1 %18, label %19, label %24, !dbg !1374

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1349, metadata !593), !dbg !1352
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.50, i64 0, i64 0), i64 3) #13, !dbg !1375
  %21 = icmp eq i32 %20, 0, !dbg !1378
  br i1 %21, label %22, label %24, !dbg !1379

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1380
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !1349, metadata !593), !dbg !1352
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1382, !tbaa !601
  br label %24, !dbg !1383

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !1349, metadata !593), !dbg !1352
  store i8* %25, i8** @program_name, align 8, !dbg !1384, !tbaa !601
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1385, !tbaa !601
  ret void, !dbg !1386
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #10

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !1387 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1392, metadata !593), !dbg !1395
  %2 = tail call i32* @__errno_location() #1, !dbg !1396
  %3 = load i32, i32* %2, align 4, !dbg !1396, !tbaa !692
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !1393, metadata !593), !dbg !1397
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !1398
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !1399
  %6 = select i1 %4, i8* %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), !dbg !1399
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #10, !dbg !1401
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1401
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !1394, metadata !593), !dbg !1402
  store i32 %3, i32* %2, align 4, !dbg !1403, !tbaa !692
  ret %struct.quoting_options* %8, !dbg !1404
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #11 !dbg !1405 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1411, metadata !593), !dbg !1412
  %2 = icmp ne %struct.quoting_options* %0, null, !dbg !1413
  %3 = select i1 %2, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !1413
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1414
  %5 = load i32, i32* %4, align 8, !dbg !1414, !tbaa !1416
  ret i32 %5, !dbg !1418
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1419 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1423, metadata !593), !dbg !1425
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1424, metadata !593), !dbg !1426
  %3 = icmp ne %struct.quoting_options* %0, null, !dbg !1427
  %4 = select i1 %3, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !1427
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1428
  store i32 %1, i32* %5, align 8, !dbg !1430, !tbaa !1416
  ret void, !dbg !1431
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !1432 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1436, metadata !593), !dbg !1444
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1437, metadata !593), !dbg !1445
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !1438, metadata !593), !dbg !1446
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1439, metadata !593), !dbg !1447
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !1448
  %5 = select i1 %4, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !1448
  %6 = lshr i8 %1, 5, !dbg !1449
  %7 = zext i8 %6 to i64, !dbg !1449
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1451
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1440, metadata !593), !dbg !1452
  %9 = and i8 %1, 31, !dbg !1453
  %10 = zext i8 %9 to i32, !dbg !1454
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1442, metadata !593), !dbg !1455
  %11 = load i32, i32* %8, align 4, !dbg !1456, !tbaa !692
  %12 = lshr i32 %11, %10, !dbg !1457
  %13 = and i32 %12, 1, !dbg !1458
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1443, metadata !593), !dbg !1459
  %14 = and i32 %2, 1, !dbg !1460
  %15 = xor i32 %13, %14, !dbg !1461
  %16 = shl i32 %15, %10, !dbg !1462
  %17 = xor i32 %16, %11, !dbg !1463
  store i32 %17, i32* %8, align 4, !dbg !1463, !tbaa !692
  ret i32 %13, !dbg !1464
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1465 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1469, metadata !593), !dbg !1472
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1470, metadata !593), !dbg !1473
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1474
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1469, metadata !593), !dbg !1472
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1476
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1469, metadata !593), !dbg !1472
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1477
  %6 = load i32, i32* %5, align 4, !dbg !1477, !tbaa !1478
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1471, metadata !593), !dbg !1479
  store i32 %1, i32* %5, align 4, !dbg !1480, !tbaa !1478
  ret i32 %6, !dbg !1481
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !1482 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1486, metadata !593), !dbg !1489
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1487, metadata !593), !dbg !1490
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1488, metadata !593), !dbg !1491
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1492
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1486, metadata !593), !dbg !1489
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1494
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1486, metadata !593), !dbg !1489
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1495
  store i32 10, i32* %6, align 8, !dbg !1496, !tbaa !1416
  %7 = icmp ne i8* %1, null, !dbg !1497
  %8 = icmp ne i8* %2, null, !dbg !1499
  %9 = and i1 %7, %8, !dbg !1501
  br i1 %9, label %11, label %10, !dbg !1501

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !1502
  unreachable, !dbg !1502

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1503
  store i8* %1, i8** %12, align 8, !dbg !1504, !tbaa !1505
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1506
  store i8* %2, i8** %13, align 8, !dbg !1507, !tbaa !1508
  ret void, !dbg !1509
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !1510 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1514, metadata !593), !dbg !1522
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1515, metadata !593), !dbg !1523
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1516, metadata !593), !dbg !1524
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1517, metadata !593), !dbg !1525
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1518, metadata !593), !dbg !1526
  %6 = icmp ne %struct.quoting_options* %4, null, !dbg !1527
  %7 = select i1 %6, %struct.quoting_options* %4, %struct.quoting_options* @default_quoting_options, !dbg !1527
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !1519, metadata !593), !dbg !1528
  %8 = tail call i32* @__errno_location() #1, !dbg !1529
  %9 = load i32, i32* %8, align 4, !dbg !1529, !tbaa !692
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1520, metadata !593), !dbg !1530
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1531
  %11 = load i32, i32* %10, align 8, !dbg !1531, !tbaa !1416
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1532
  %13 = load i32, i32* %12, align 4, !dbg !1532, !tbaa !1478
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1533
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1534
  %16 = load i8*, i8** %15, align 8, !dbg !1534, !tbaa !1505
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1535
  %18 = load i8*, i8** %17, align 8, !dbg !1535, !tbaa !1508
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !1536
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1521, metadata !593), !dbg !1537
  store i32 %9, i32* %8, align 4, !dbg !1538, !tbaa !692
  ret i64 %19, !dbg !1539
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !1540 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1546, metadata !593), !dbg !1609
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1547, metadata !593), !dbg !1610
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1548, metadata !593), !dbg !1611
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1549, metadata !593), !dbg !1612
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !1550, metadata !593), !dbg !1613
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1551, metadata !593), !dbg !1614
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !1552, metadata !593), !dbg !1615
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1553, metadata !593), !dbg !1616
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !1554, metadata !593), !dbg !1617
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1556, metadata !593), !dbg !1618
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1557, metadata !593), !dbg !1619
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1558, metadata !593), !dbg !1620
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1559, metadata !593), !dbg !1621
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1560, metadata !593), !dbg !1622
  %13 = tail call i64 @__ctype_get_mb_cur_max() #10, !dbg !1623
  %14 = icmp eq i64 %13, 1, !dbg !1624
  %15 = lshr i32 %5, 1, !dbg !1625
  %16 = trunc i32 %15 to i8, !dbg !1625
  %17 = and i8 %16, 1, !dbg !1625
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !1562, metadata !593), !dbg !1625
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1563, metadata !593), !dbg !1626
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1564, metadata !593), !dbg !1627
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1565, metadata !593), !dbg !1628
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !1629

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !1547, metadata !593), !dbg !1610
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !1565, metadata !593), !dbg !1628
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !1564, metadata !593), !dbg !1627
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !1563, metadata !593), !dbg !1626
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1562, metadata !593), !dbg !1625
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !1549, metadata !593), !dbg !1612
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !1560, metadata !593), !dbg !1622
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !1559, metadata !593), !dbg !1621
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !1558, metadata !593), !dbg !1620
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !1557, metadata !593), !dbg !1619
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1556, metadata !593), !dbg !1618
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !1554, metadata !593), !dbg !1617
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !1553, metadata !593), !dbg !1616
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !1550, metadata !593), !dbg !1613
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
  ], !dbg !1630

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1550, metadata !593), !dbg !1613
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1562, metadata !593), !dbg !1625
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1562, metadata !593), !dbg !1625
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1550, metadata !593), !dbg !1613
  br label %95, !dbg !1631

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1562, metadata !593), !dbg !1625
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1550, metadata !593), !dbg !1613
  %43 = and i8 %36, 1, !dbg !1633
  %44 = icmp eq i8 %43, 0, !dbg !1633
  br i1 %44, label %45, label %95, !dbg !1631

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1635
  br i1 %46, label %95, label %47, !dbg !1639

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1641, !tbaa !761
  br label %95, !dbg !1641

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.61, i64 0, i64 0), i32 %28), !dbg !1643
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !1553, metadata !593), !dbg !1616
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.62, i64 0, i64 0), i32 %28), !dbg !1647
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !1554, metadata !593), !dbg !1617
  br label %51, !dbg !1648

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1554, metadata !593), !dbg !1617
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1553, metadata !593), !dbg !1616
  %54 = and i8 %36, 1, !dbg !1649
  %55 = icmp eq i8 %54, 0, !dbg !1649
  br i1 %55, label %56, label %73, !dbg !1651

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1558, metadata !593), !dbg !1620
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1556, metadata !593), !dbg !1618
  %57 = load i8, i8* %52, align 1, !dbg !1652, !tbaa !761
  %58 = icmp eq i8 %57, 0, !dbg !1656
  br i1 %58, label %73, label %59, !dbg !1656

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !1658

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  %64 = icmp ult i64 %63, %40, !dbg !1658
  br i1 %64, label %65, label %67, !dbg !1662

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !1664
  store i8 %61, i8* %66, align 1, !dbg !1664, !tbaa !761
  br label %67, !dbg !1664

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !1666
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1556, metadata !593), !dbg !1618
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !1668
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1558, metadata !593), !dbg !1620
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1558, metadata !593), !dbg !1620
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1556, metadata !593), !dbg !1618
  %70 = load i8, i8* %69, align 1, !dbg !1652, !tbaa !761
  %71 = icmp eq i8 %70, 0, !dbg !1656
  br i1 %71, label %72, label %60, !dbg !1656, !llvm.loop !1670

; <label>:72:                                     ; preds = %67
  br label %73, !dbg !1618

; <label>:73:                                     ; preds = %72, %56, %51
  %74 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %72 ]
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !1556, metadata !593), !dbg !1618
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1560, metadata !593), !dbg !1622
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1558, metadata !593), !dbg !1620
  %75 = call i64 @strlen(i8* %53) #13, !dbg !1673
  call void @llvm.dbg.value(metadata i64 %75, i64 0, metadata !1559, metadata !593), !dbg !1621
  br label %95, !dbg !1674

; <label>:76:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1560, metadata !593), !dbg !1622
  br label %77, !dbg !1675

; <label>:77:                                     ; preds = %27, %76
  %78 = phi i8 [ %34, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %78, i64 0, metadata !1560, metadata !593), !dbg !1622
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1562, metadata !593), !dbg !1625
  br label %79, !dbg !1676

; <label>:79:                                     ; preds = %27, %77
  %80 = phi i8 [ %34, %27 ], [ %78, %77 ]
  %81 = phi i8 [ %36, %27 ], [ 1, %77 ]
  call void @llvm.dbg.value(metadata i8 %81, i64 0, metadata !1562, metadata !593), !dbg !1625
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !1560, metadata !593), !dbg !1622
  %82 = and i8 %81, 1, !dbg !1677
  %83 = icmp eq i8 %82, 0, !dbg !1677
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1560, metadata !593), !dbg !1622
  %84 = select i1 %83, i8 1, i8 %80, !dbg !1679
  br label %85, !dbg !1679

; <label>:85:                                     ; preds = %79, %27
  %86 = phi i8 [ %34, %27 ], [ %84, %79 ]
  %87 = phi i8 [ %36, %27 ], [ %81, %79 ]
  call void @llvm.dbg.value(metadata i8 %87, i64 0, metadata !1562, metadata !593), !dbg !1625
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !1560, metadata !593), !dbg !1622
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !1550, metadata !593), !dbg !1613
  %88 = and i8 %87, 1, !dbg !1680
  %89 = icmp eq i8 %88, 0, !dbg !1680
  br i1 %89, label %90, label %95, !dbg !1682

; <label>:90:                                     ; preds = %85
  %91 = icmp eq i64 %40, 0, !dbg !1683
  br i1 %91, label %95, label %92, !dbg !1687

; <label>:92:                                     ; preds = %90
  store i8 39, i8* %0, align 1, !dbg !1689, !tbaa !761
  br label %95, !dbg !1689

; <label>:93:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1562, metadata !593), !dbg !1625
  br label %95, !dbg !1691

; <label>:94:                                     ; preds = %27
  call void @abort() #14, !dbg !1692
  unreachable, !dbg !1692

; <label>:95:                                     ; preds = %41, %85, %90, %92, %27, %42, %45, %47, %93, %73
  %96 = phi i32 [ 0, %93 ], [ %28, %73 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %92 ], [ 2, %90 ], [ 2, %85 ], [ 5, %41 ]
  %97 = phi i8* [ %29, %93 ], [ %52, %73 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %92 ], [ %29, %90 ], [ %29, %85 ], [ %29, %41 ]
  %98 = phi i8* [ %30, %93 ], [ %53, %73 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %92 ], [ %30, %90 ], [ %30, %85 ], [ %30, %41 ]
  %99 = phi i64 [ 0, %93 ], [ %74, %73 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %92 ], [ 1, %90 ], [ 0, %85 ], [ 0, %41 ]
  %100 = phi i8* [ %32, %93 ], [ %53, %73 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.63, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.63, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.63, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.62, i64 0, i64 0), %92 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.62, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.62, i64 0, i64 0), %85 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.63, i64 0, i64 0), %41 ]
  %101 = phi i64 [ %33, %93 ], [ %75, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %92 ], [ 1, %90 ], [ 1, %85 ], [ 1, %41 ]
  %102 = phi i8 [ %34, %93 ], [ 1, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %86, %92 ], [ %86, %90 ], [ %86, %85 ], [ 1, %41 ]
  %103 = phi i8 [ 0, %93 ], [ %36, %73 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %87, %92 ], [ %87, %90 ], [ %87, %85 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %103, i64 0, metadata !1562, metadata !593), !dbg !1625
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !1560, metadata !593), !dbg !1622
  call void @llvm.dbg.value(metadata i64 %101, i64 0, metadata !1559, metadata !593), !dbg !1621
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !1558, metadata !593), !dbg !1620
  call void @llvm.dbg.value(metadata i64 %99, i64 0, metadata !1556, metadata !593), !dbg !1618
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !1554, metadata !593), !dbg !1617
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !1553, metadata !593), !dbg !1616
  call void @llvm.dbg.value(metadata i32 %96, i64 0, metadata !1550, metadata !593), !dbg !1613
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1555, metadata !593), !dbg !1693
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
  br label %123, !dbg !1694

; <label>:123:                                    ; preds = %587, %95
  %124 = phi i64 [ 0, %95 ], [ %596, %587 ]
  %125 = phi i64 [ %99, %95 ], [ %589, %587 ]
  %126 = phi i64 [ %31, %95 ], [ %590, %587 ]
  %127 = phi i64 [ %35, %95 ], [ %591, %587 ]
  %128 = phi i8 [ %37, %95 ], [ %592, %587 ]
  %129 = phi i8 [ %38, %95 ], [ %593, %587 ]
  %130 = phi i8 [ %39, %95 ], [ %594, %587 ]
  %131 = phi i64 [ %40, %95 ], [ %595, %587 ]
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !1547, metadata !593), !dbg !1610
  call void @llvm.dbg.value(metadata i8 %130, i64 0, metadata !1565, metadata !593), !dbg !1628
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !1564, metadata !593), !dbg !1627
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !1563, metadata !593), !dbg !1626
  call void @llvm.dbg.value(metadata i64 %127, i64 0, metadata !1549, metadata !593), !dbg !1612
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !1557, metadata !593), !dbg !1619
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1556, metadata !593), !dbg !1618
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1555, metadata !593), !dbg !1693
  %132 = icmp eq i64 %127, -1, !dbg !1695
  br i1 %132, label %135, label %133, !dbg !1697

; <label>:133:                                    ; preds = %123
  %134 = icmp eq i64 %124, %127, !dbg !1698
  br i1 %134, label %597, label %139, !dbg !1700

; <label>:135:                                    ; preds = %123
  %136 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !1702
  %137 = load i8, i8* %136, align 1, !dbg !1702, !tbaa !761
  %138 = icmp eq i8 %137, 0, !dbg !1704
  br i1 %138, label %597, label %139, !dbg !1700

; <label>:139:                                    ; preds = %133, %135
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1571, metadata !593), !dbg !1705
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1572, metadata !593), !dbg !1706
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1573, metadata !593), !dbg !1707
  br i1 %109, label %140, label %155, !dbg !1708

; <label>:140:                                    ; preds = %139
  %141 = add i64 %124, %101, !dbg !1710
  %142 = and i1 %110, %132, !dbg !1712
  br i1 %142, label %143, label %145, !dbg !1712

; <label>:143:                                    ; preds = %140
  %144 = call i64 @strlen(i8* %2) #13, !dbg !1713
  call void @llvm.dbg.value(metadata i64 %144, i64 0, metadata !1549, metadata !593), !dbg !1612
  br label %145, !dbg !1714

; <label>:145:                                    ; preds = %140, %143
  %146 = phi i64 [ %144, %143 ], [ %127, %140 ]
  call void @llvm.dbg.value(metadata i64 %146, i64 0, metadata !1549, metadata !593), !dbg !1612
  %147 = icmp ugt i64 %141, %146, !dbg !1716
  br i1 %147, label %155, label %148, !dbg !1718

; <label>:148:                                    ; preds = %145
  %149 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !1719
  %150 = call i32 @memcmp(i8* %149, i8* %100, i64 %101) #13, !dbg !1720
  %151 = icmp ne i32 %150, 0, !dbg !1721
  %152 = or i1 %151, %112, !dbg !1721
  %153 = xor i1 %151, true, !dbg !1721
  %154 = zext i1 %153 to i8, !dbg !1721
  br i1 %152, label %155, label %644, !dbg !1721

; <label>:155:                                    ; preds = %148, %145, %139
  %156 = phi i64 [ %146, %148 ], [ %146, %145 ], [ %127, %139 ]
  %157 = phi i8 [ %154, %148 ], [ 0, %145 ], [ 0, %139 ]
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !1571, metadata !593), !dbg !1705
  call void @llvm.dbg.value(metadata i64 %156, i64 0, metadata !1549, metadata !593), !dbg !1612
  %158 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !1723
  %159 = load i8, i8* %158, align 1, !dbg !1723, !tbaa !761
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !1566, metadata !593), !dbg !1724
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
  ], !dbg !1725

; <label>:160:                                    ; preds = %155
  br i1 %105, label %161, label %209, !dbg !1726

; <label>:161:                                    ; preds = %160
  br i1 %112, label %162, label %644, !dbg !1727

; <label>:162:                                    ; preds = %161
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1572, metadata !593), !dbg !1706
  %163 = and i8 %128, 1, !dbg !1732
  %164 = icmp eq i8 %163, 0, !dbg !1732
  %165 = and i1 %114, %164, !dbg !1735
  br i1 %165, label %166, label %182, !dbg !1735

; <label>:166:                                    ; preds = %162
  %167 = icmp ult i64 %125, %131, !dbg !1737
  br i1 %167, label %168, label %170, !dbg !1742

; <label>:168:                                    ; preds = %166
  %169 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !1744
  store i8 39, i8* %169, align 1, !dbg !1744, !tbaa !761
  br label %170, !dbg !1744

; <label>:170:                                    ; preds = %168, %166
  %171 = add i64 %125, 1, !dbg !1746
  call void @llvm.dbg.value(metadata i64 %171, i64 0, metadata !1556, metadata !593), !dbg !1618
  %172 = icmp ult i64 %171, %131, !dbg !1748
  br i1 %172, label %173, label %175, !dbg !1752

; <label>:173:                                    ; preds = %170
  %174 = getelementptr inbounds i8, i8* %0, i64 %171, !dbg !1754
  store i8 36, i8* %174, align 1, !dbg !1754, !tbaa !761
  br label %175, !dbg !1754

; <label>:175:                                    ; preds = %173, %170
  %176 = add i64 %125, 2, !dbg !1756
  call void @llvm.dbg.value(metadata i64 %176, i64 0, metadata !1556, metadata !593), !dbg !1618
  %177 = icmp ult i64 %176, %131, !dbg !1758
  br i1 %177, label %178, label %180, !dbg !1762

; <label>:178:                                    ; preds = %175
  %179 = getelementptr inbounds i8, i8* %0, i64 %176, !dbg !1764
  store i8 39, i8* %179, align 1, !dbg !1764, !tbaa !761
  br label %180, !dbg !1764

; <label>:180:                                    ; preds = %178, %175
  %181 = add i64 %125, 3, !dbg !1766
  call void @llvm.dbg.value(metadata i64 %181, i64 0, metadata !1556, metadata !593), !dbg !1618
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1563, metadata !593), !dbg !1626
  br label %182, !dbg !1768

; <label>:182:                                    ; preds = %162, %180
  %183 = phi i64 [ %181, %180 ], [ %125, %162 ]
  %184 = phi i8 [ 1, %180 ], [ %128, %162 ]
  call void @llvm.dbg.value(metadata i8 %184, i64 0, metadata !1563, metadata !593), !dbg !1626
  call void @llvm.dbg.value(metadata i64 %183, i64 0, metadata !1556, metadata !593), !dbg !1618
  %185 = icmp ult i64 %183, %131, !dbg !1770
  br i1 %185, label %186, label %188, !dbg !1774

; <label>:186:                                    ; preds = %182
  %187 = getelementptr inbounds i8, i8* %0, i64 %183, !dbg !1776
  store i8 92, i8* %187, align 1, !dbg !1776, !tbaa !761
  br label %188, !dbg !1776

; <label>:188:                                    ; preds = %186, %182
  %189 = add i64 %183, 1, !dbg !1778
  call void @llvm.dbg.value(metadata i64 %189, i64 0, metadata !1556, metadata !593), !dbg !1618
  br i1 %106, label %190, label %476, !dbg !1780

; <label>:190:                                    ; preds = %188
  %191 = add i64 %124, 1, !dbg !1782
  %192 = icmp ult i64 %191, %156, !dbg !1784
  br i1 %192, label %193, label %476, !dbg !1785

; <label>:193:                                    ; preds = %190
  %194 = getelementptr inbounds i8, i8* %2, i64 %191, !dbg !1786
  %195 = load i8, i8* %194, align 1, !dbg !1786, !tbaa !761
  %196 = add i8 %195, -48, !dbg !1788
  %197 = icmp ult i8 %196, 10, !dbg !1788
  br i1 %197, label %198, label %476, !dbg !1788

; <label>:198:                                    ; preds = %193
  %199 = icmp ult i64 %189, %131, !dbg !1789
  br i1 %199, label %200, label %202, !dbg !1794

; <label>:200:                                    ; preds = %198
  %201 = getelementptr inbounds i8, i8* %0, i64 %189, !dbg !1796
  store i8 48, i8* %201, align 1, !dbg !1796, !tbaa !761
  br label %202, !dbg !1796

; <label>:202:                                    ; preds = %200, %198
  %203 = add i64 %183, 2, !dbg !1798
  call void @llvm.dbg.value(metadata i64 %203, i64 0, metadata !1556, metadata !593), !dbg !1618
  %204 = icmp ult i64 %203, %131, !dbg !1800
  br i1 %204, label %205, label %207, !dbg !1804

; <label>:205:                                    ; preds = %202
  %206 = getelementptr inbounds i8, i8* %0, i64 %203, !dbg !1806
  store i8 48, i8* %206, align 1, !dbg !1806, !tbaa !761
  br label %207, !dbg !1806

; <label>:207:                                    ; preds = %205, %202
  %208 = add i64 %183, 3, !dbg !1808
  call void @llvm.dbg.value(metadata i64 %208, i64 0, metadata !1556, metadata !593), !dbg !1618
  br label %476, !dbg !1810

; <label>:209:                                    ; preds = %160
  br i1 %23, label %476, label %587, !dbg !1811

; <label>:210:                                    ; preds = %155
  switch i32 %96, label %476 [
    i32 2, label %211
    i32 5, label %212
  ], !dbg !1812

; <label>:211:                                    ; preds = %210
  br i1 %112, label %476, label %644, !dbg !1813

; <label>:212:                                    ; preds = %210
  br i1 %25, label %476, label %213, !dbg !1815

; <label>:213:                                    ; preds = %212
  %214 = add i64 %124, 2, !dbg !1817
  %215 = icmp ult i64 %214, %156, !dbg !1819
  br i1 %215, label %216, label %476, !dbg !1820

; <label>:216:                                    ; preds = %213
  %217 = add i64 %124, 1, !dbg !1821
  %218 = getelementptr inbounds i8, i8* %2, i64 %217, !dbg !1823
  %219 = load i8, i8* %218, align 1, !dbg !1823, !tbaa !761
  %220 = icmp eq i8 %219, 63, !dbg !1824
  br i1 %220, label %221, label %476, !dbg !1825

; <label>:221:                                    ; preds = %216
  %222 = getelementptr inbounds i8, i8* %2, i64 %214, !dbg !1827
  %223 = load i8, i8* %222, align 1, !dbg !1827, !tbaa !761
  %224 = sext i8 %223 to i32, !dbg !1827
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
  ], !dbg !1828

; <label>:225:                                    ; preds = %221, %221, %221, %221, %221, %221, %221, %221, %221
  br i1 %112, label %226, label %644, !dbg !1829

; <label>:226:                                    ; preds = %225
  call void @llvm.dbg.value(metadata i8 %223, i64 0, metadata !1566, metadata !593), !dbg !1724
  call void @llvm.dbg.value(metadata i64 %214, i64 0, metadata !1555, metadata !593), !dbg !1693
  %227 = icmp ult i64 %125, %131, !dbg !1831
  br i1 %227, label %228, label %230, !dbg !1835

; <label>:228:                                    ; preds = %226
  %229 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !1837
  store i8 63, i8* %229, align 1, !dbg !1837, !tbaa !761
  br label %230, !dbg !1837

; <label>:230:                                    ; preds = %228, %226
  %231 = add i64 %125, 1, !dbg !1839
  call void @llvm.dbg.value(metadata i64 %231, i64 0, metadata !1556, metadata !593), !dbg !1618
  %232 = icmp ult i64 %231, %131, !dbg !1841
  br i1 %232, label %233, label %235, !dbg !1845

; <label>:233:                                    ; preds = %230
  %234 = getelementptr inbounds i8, i8* %0, i64 %231, !dbg !1847
  store i8 34, i8* %234, align 1, !dbg !1847, !tbaa !761
  br label %235, !dbg !1847

; <label>:235:                                    ; preds = %233, %230
  %236 = add i64 %125, 2, !dbg !1849
  call void @llvm.dbg.value(metadata i64 %236, i64 0, metadata !1556, metadata !593), !dbg !1618
  %237 = icmp ult i64 %236, %131, !dbg !1851
  br i1 %237, label %238, label %240, !dbg !1855

; <label>:238:                                    ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236, !dbg !1857
  store i8 34, i8* %239, align 1, !dbg !1857, !tbaa !761
  br label %240, !dbg !1857

; <label>:240:                                    ; preds = %238, %235
  %241 = add i64 %125, 3, !dbg !1859
  call void @llvm.dbg.value(metadata i64 %241, i64 0, metadata !1556, metadata !593), !dbg !1618
  %242 = icmp ult i64 %241, %131, !dbg !1861
  br i1 %242, label %243, label %245, !dbg !1865

; <label>:243:                                    ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241, !dbg !1867
  store i8 63, i8* %244, align 1, !dbg !1867, !tbaa !761
  br label %245, !dbg !1867

; <label>:245:                                    ; preds = %243, %240
  %246 = add i64 %125, 4, !dbg !1869
  call void @llvm.dbg.value(metadata i64 %246, i64 0, metadata !1556, metadata !593), !dbg !1618
  br label %476, !dbg !1871

; <label>:247:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !1570, metadata !593), !dbg !1872
  br label %257, !dbg !1873

; <label>:248:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !1570, metadata !593), !dbg !1872
  br label %257, !dbg !1874

; <label>:249:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !1570, metadata !593), !dbg !1872
  br label %255, !dbg !1875

; <label>:250:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !1570, metadata !593), !dbg !1872
  br label %255, !dbg !1876

; <label>:251:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !1570, metadata !593), !dbg !1872
  br label %257, !dbg !1877

; <label>:252:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !1570, metadata !593), !dbg !1872
  br i1 %114, label %253, label %254, !dbg !1878

; <label>:253:                                    ; preds = %252
  br i1 %112, label %542, label %644, !dbg !1879

; <label>:254:                                    ; preds = %252
  br i1 %122, label %542, label %255, !dbg !1882

; <label>:255:                                    ; preds = %254, %155, %250, %249
  %256 = phi i8 [ 92, %254 ], [ 116, %250 ], [ 114, %249 ], [ 110, %155 ]
  call void @llvm.dbg.value(metadata i8 %256, i64 0, metadata !1570, metadata !593), !dbg !1872
  br i1 %118, label %257, label %644, !dbg !1884

; <label>:257:                                    ; preds = %255, %155, %251, %248, %247
  %258 = phi i8 [ %256, %255 ], [ 118, %251 ], [ 102, %248 ], [ 98, %247 ], [ 97, %155 ]
  call void @llvm.dbg.value(metadata i8 %258, i64 0, metadata !1570, metadata !593), !dbg !1872
  br i1 %105, label %503, label %476, !dbg !1886

; <label>:259:                                    ; preds = %155, %155
  %260 = icmp eq i64 %156, -1, !dbg !1887
  br i1 %260, label %261, label %266, !dbg !1889

; <label>:261:                                    ; preds = %259
  %262 = load i8, i8* %26, align 1, !dbg !1890, !tbaa !761
  %263 = icmp ne i8 %262, 0, !dbg !1892
  %264 = icmp ne i64 %124, 0, !dbg !1893
  %265 = or i1 %264, %263, !dbg !1895
  br i1 %265, label %476, label %272, !dbg !1895

; <label>:266:                                    ; preds = %259
  %267 = icmp ne i64 %156, 1, !dbg !1896
  %268 = icmp ne i64 %124, 0, !dbg !1893
  %269 = or i1 %268, %267, !dbg !1898
  br i1 %269, label %476, label %272, !dbg !1898

; <label>:270:                                    ; preds = %155, %155
  %271 = icmp eq i64 %124, 0, !dbg !1893
  br i1 %271, label %272, label %476, !dbg !1900

; <label>:272:                                    ; preds = %270, %266, %261, %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1573, metadata !593), !dbg !1707
  br label %273, !dbg !1901

; <label>:273:                                    ; preds = %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %272
  %274 = phi i8 [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 1, %272 ]
  call void @llvm.dbg.value(metadata i8 %274, i64 0, metadata !1573, metadata !593), !dbg !1707
  br i1 %118, label %476, label %644, !dbg !1902

; <label>:275:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1564, metadata !593), !dbg !1627
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1573, metadata !593), !dbg !1707
  br i1 %114, label %276, label %476, !dbg !1904

; <label>:276:                                    ; preds = %275
  br i1 %112, label %277, label %644, !dbg !1905

; <label>:277:                                    ; preds = %276
  %278 = icmp eq i64 %131, 0, !dbg !1908
  %279 = icmp ne i64 %126, 0, !dbg !1910
  %280 = or i1 %279, %278, !dbg !1912
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !1557, metadata !593), !dbg !1619
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1547, metadata !593), !dbg !1610
  %281 = select i1 %280, i64 %126, i64 %131, !dbg !1912
  %282 = select i1 %280, i64 %131, i64 0, !dbg !1912
  call void @llvm.dbg.value(metadata i64 %282, i64 0, metadata !1547, metadata !593), !dbg !1610
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !1557, metadata !593), !dbg !1619
  %283 = icmp ult i64 %125, %282, !dbg !1913
  br i1 %283, label %284, label %286, !dbg !1917

; <label>:284:                                    ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !1919
  store i8 39, i8* %285, align 1, !dbg !1919, !tbaa !761
  br label %286, !dbg !1919

; <label>:286:                                    ; preds = %284, %277
  %287 = add i64 %125, 1, !dbg !1921
  call void @llvm.dbg.value(metadata i64 %287, i64 0, metadata !1556, metadata !593), !dbg !1618
  %288 = icmp ult i64 %287, %282, !dbg !1923
  br i1 %288, label %289, label %291, !dbg !1927

; <label>:289:                                    ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287, !dbg !1929
  store i8 92, i8* %290, align 1, !dbg !1929, !tbaa !761
  br label %291, !dbg !1929

; <label>:291:                                    ; preds = %289, %286
  %292 = add i64 %125, 2, !dbg !1931
  call void @llvm.dbg.value(metadata i64 %292, i64 0, metadata !1556, metadata !593), !dbg !1618
  %293 = icmp ult i64 %292, %282, !dbg !1933
  br i1 %293, label %294, label %296, !dbg !1937

; <label>:294:                                    ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292, !dbg !1939
  store i8 39, i8* %295, align 1, !dbg !1939, !tbaa !761
  br label %296, !dbg !1939

; <label>:296:                                    ; preds = %294, %291
  %297 = add i64 %125, 3, !dbg !1941
  call void @llvm.dbg.value(metadata i64 %297, i64 0, metadata !1556, metadata !593), !dbg !1618
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1563, metadata !593), !dbg !1626
  br label %476, !dbg !1943

; <label>:298:                                    ; preds = %155
  br i1 %14, label %299, label %308, !dbg !1944

; <label>:299:                                    ; preds = %298
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1574, metadata !593), !dbg !1945
  %300 = tail call i16** @__ctype_b_loc() #1, !dbg !1946
  %301 = load i16*, i16** %300, align 8, !dbg !1946, !tbaa !601
  %302 = zext i8 %159 to i64, !dbg !1946
  %303 = getelementptr inbounds i16, i16* %301, i64 %302, !dbg !1946
  %304 = load i16, i16* %303, align 2, !dbg !1946, !tbaa !1948
  %305 = lshr i16 %304, 14, !dbg !1949
  %306 = trunc i16 %305 to i8, !dbg !1949
  %307 = and i8 %306, 1, !dbg !1949
  call void @llvm.dbg.value(metadata i8 %307, i64 0, metadata !1577, metadata !593), !dbg !1950
  br label %368, !dbg !1951

; <label>:308:                                    ; preds = %298
  call void @llvm.lifetime.start(i64 8, i8* nonnull %18) #10, !dbg !1952
  store i64 0, i64* %10, align 8, !dbg !1953
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1574, metadata !593), !dbg !1945
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1577, metadata !593), !dbg !1950
  %309 = icmp eq i64 %156, -1, !dbg !1954
  br i1 %309, label %310, label %312, !dbg !1956, !llvm.loop !1957

; <label>:310:                                    ; preds = %308
  %311 = call i64 @strlen(i8* nonnull %2) #13, !dbg !1960
  call void @llvm.dbg.value(metadata i64 %311, i64 0, metadata !1549, metadata !593), !dbg !1612
  br label %312, !dbg !1961, !llvm.loop !1957

; <label>:312:                                    ; preds = %310, %308
  %313 = phi i64 [ %156, %308 ], [ %311, %310 ]
  br label %314, !dbg !1950

; <label>:314:                                    ; preds = %312, %355
  %315 = phi i64 [ %360, %355 ], [ 0, %312 ]
  %316 = phi i8 [ %359, %355 ], [ 1, %312 ]
  call void @llvm.dbg.value(metadata i8 %316, i64 0, metadata !1577, metadata !593), !dbg !1950
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !1574, metadata !593), !dbg !1945
  call void @llvm.dbg.value(metadata i64 %313, i64 0, metadata !1549, metadata !593), !dbg !1612
  call void @llvm.lifetime.start(i64 4, i8* nonnull %19) #10, !dbg !1962
  %317 = add i64 %315, %124, !dbg !1963
  %318 = getelementptr inbounds i8, i8* %2, i64 %317, !dbg !1964
  %319 = sub i64 %313, %317, !dbg !1965
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1578, metadata !780), !dbg !1966
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !1595, metadata !780), !dbg !1967
  %320 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %318, i64 %319, %struct.__mbstate_t* nonnull %11) #10, !dbg !1968
  call void @llvm.dbg.value(metadata i64 %320, i64 0, metadata !1598, metadata !593), !dbg !1969
  switch i64 %320, label %334 [
    i64 0, label %350
    i64 -1, label %347
    i64 -2, label %321
  ], !dbg !1970

; <label>:321:                                    ; preds = %314
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !1574, metadata !593), !dbg !1945
  %322 = icmp ugt i64 %313, %317, !dbg !1971
  br i1 %322, label %323, label %351, !dbg !1974

; <label>:323:                                    ; preds = %321
  br label %324, !dbg !1975

; <label>:324:                                    ; preds = %323, %330
  %325 = phi i64 [ %332, %330 ], [ %317, %323 ]
  %326 = phi i64 [ %331, %330 ], [ %315, %323 ]
  %327 = getelementptr inbounds i8, i8* %2, i64 %325, !dbg !1975
  %328 = load i8, i8* %327, align 1, !dbg !1975, !tbaa !761
  %329 = icmp eq i8 %328, 0, !dbg !1977
  br i1 %329, label %348, label %330, !dbg !1978

; <label>:330:                                    ; preds = %324
  %331 = add i64 %326, 1, !dbg !1980
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !1574, metadata !593), !dbg !1945
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !1574, metadata !593), !dbg !1945
  %332 = add i64 %331, %124, !dbg !1981
  %333 = icmp ult i64 %332, %313, !dbg !1971
  br i1 %333, label %324, label %348, !dbg !1974, !llvm.loop !1982

; <label>:334:                                    ; preds = %314
  %335 = icmp ugt i64 %320, 1, !dbg !1984
  %336 = and i1 %116, %335, !dbg !1988
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1599, metadata !593), !dbg !1989
  br i1 %336, label %337, label %355, !dbg !1988

; <label>:337:                                    ; preds = %334
  br label %338, !dbg !1990

; <label>:338:                                    ; preds = %337, %344
  %339 = phi i64 [ %345, %344 ], [ 1, %337 ]
  %340 = add i64 %339, %317, !dbg !1990
  %341 = getelementptr inbounds i8, i8* %2, i64 %340, !dbg !1991
  %342 = load i8, i8* %341, align 1, !dbg !1991, !tbaa !761
  %343 = sext i8 %342 to i32, !dbg !1991
  switch i32 %343, label %344 [
    i32 91, label %367
    i32 92, label %367
    i32 94, label %367
    i32 96, label %367
    i32 124, label %367
  ], !dbg !1992

; <label>:344:                                    ; preds = %338
  %345 = add nuw i64 %339, 1, !dbg !1993
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !1599, metadata !593), !dbg !1989
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !1599, metadata !593), !dbg !1989
  %346 = icmp ult i64 %345, %320, !dbg !1984
  br i1 %346, label %338, label %354, !dbg !1995, !llvm.loop !1997

; <label>:347:                                    ; preds = %314
  br label %351, !dbg !1950

; <label>:348:                                    ; preds = %324, %330
  %349 = phi i64 [ %331, %330 ], [ %326, %324 ]
  br label %351, !dbg !1950

; <label>:350:                                    ; preds = %314
  br label %351, !dbg !1950

; <label>:351:                                    ; preds = %350, %348, %347, %321
  %352 = phi i64 [ %315, %321 ], [ %315, %347 ], [ %349, %348 ], [ %315, %350 ]
  %353 = phi i8 [ 0, %321 ], [ 0, %347 ], [ 0, %348 ], [ %316, %350 ]
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1577, metadata !593), !dbg !1950
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1574, metadata !593), !dbg !1945
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10, !dbg !2000
  br label %364

; <label>:354:                                    ; preds = %344
  br label %355, !dbg !2001

; <label>:355:                                    ; preds = %354, %334
  %356 = load i32, i32* %12, align 4, !dbg !2001, !tbaa !692
  call void @llvm.dbg.value(metadata i32 %356, i64 0, metadata !1595, metadata !593), !dbg !1967
  %357 = call i32 @iswprint(i32 %356) #10, !dbg !2003
  %358 = icmp eq i32 %357, 0, !dbg !2003
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1577, metadata !593), !dbg !1950
  %359 = select i1 %358, i8 0, i8 %316, !dbg !2004
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1577, metadata !593), !dbg !1950
  %360 = add i64 %320, %315, !dbg !2005
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1574, metadata !593), !dbg !1945
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1577, metadata !593), !dbg !1950
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1574, metadata !593), !dbg !1945
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10, !dbg !2000
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1578, metadata !780), !dbg !1966
  %361 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #13, !dbg !2006
  %362 = icmp eq i32 %361, 0, !dbg !2007
  br i1 %362, label %314, label %363, !dbg !2008, !llvm.loop !1957

; <label>:363:                                    ; preds = %355
  br label %364, !dbg !2010

; <label>:364:                                    ; preds = %363, %351
  %365 = phi i8 [ %353, %351 ], [ %359, %363 ]
  %366 = phi i64 [ %352, %351 ], [ %360, %363 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #10, !dbg !2010
  br label %368

; <label>:367:                                    ; preds = %338, %338, %338, %338, %338
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1577, metadata !593), !dbg !1950
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1574, metadata !593), !dbg !1945
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10, !dbg !2000
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #10, !dbg !2010
  br label %649

; <label>:368:                                    ; preds = %364, %299
  %369 = phi i64 [ %156, %299 ], [ %313, %364 ]
  %370 = phi i64 [ 1, %299 ], [ %366, %364 ]
  %371 = phi i8 [ %307, %299 ], [ %365, %364 ]
  call void @llvm.dbg.value(metadata i8 %371, i64 0, metadata !1577, metadata !593), !dbg !1950
  call void @llvm.dbg.value(metadata i64 %370, i64 0, metadata !1574, metadata !593), !dbg !1945
  call void @llvm.dbg.value(metadata i64 %369, i64 0, metadata !1549, metadata !593), !dbg !1612
  %372 = and i8 %371, 1, !dbg !2011
  %373 = icmp ne i8 %372, 0, !dbg !2011
  call void @llvm.dbg.value(metadata i8 %372, i64 0, metadata !1573, metadata !593), !dbg !1707
  %374 = icmp ult i64 %370, 2, !dbg !2012
  %375 = or i1 %373, %113, !dbg !2013
  %376 = and i1 %374, %375, !dbg !2015
  br i1 %376, label %476, label %377, !dbg !2015

; <label>:377:                                    ; preds = %368
  %378 = add i64 %370, %124, !dbg !2016
  call void @llvm.dbg.value(metadata i64 %378, i64 0, metadata !1606, metadata !593), !dbg !2017
  br label %379, !dbg !2018

; <label>:379:                                    ; preds = %472, %377
  %380 = phi i64 [ %124, %377 ], [ %447, %472 ]
  %381 = phi i64 [ %125, %377 ], [ %473, %472 ]
  %382 = phi i8 [ %128, %377 ], [ %468, %472 ]
  %383 = phi i8 [ %159, %377 ], [ %475, %472 ]
  %384 = phi i8 [ %157, %377 ], [ %445, %472 ]
  %385 = phi i8 [ 0, %377 ], [ %446, %472 ]
  call void @llvm.dbg.value(metadata i8 %385, i64 0, metadata !1572, metadata !593), !dbg !1706
  call void @llvm.dbg.value(metadata i8 %384, i64 0, metadata !1571, metadata !593), !dbg !1705
  call void @llvm.dbg.value(metadata i8 %383, i64 0, metadata !1566, metadata !593), !dbg !1724
  call void @llvm.dbg.value(metadata i8 %382, i64 0, metadata !1563, metadata !593), !dbg !1626
  call void @llvm.dbg.value(metadata i64 %381, i64 0, metadata !1556, metadata !593), !dbg !1618
  call void @llvm.dbg.value(metadata i64 %380, i64 0, metadata !1555, metadata !593), !dbg !1693
  br i1 %375, label %432, label %386, !dbg !2019

; <label>:386:                                    ; preds = %379
  br i1 %112, label %387, label %643, !dbg !2024

; <label>:387:                                    ; preds = %386
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1572, metadata !593), !dbg !1706
  %388 = and i8 %382, 1, !dbg !2028
  %389 = icmp eq i8 %388, 0, !dbg !2028
  %390 = and i1 %114, %389, !dbg !2031
  br i1 %390, label %391, label %407, !dbg !2031

; <label>:391:                                    ; preds = %387
  %392 = icmp ult i64 %381, %131, !dbg !2033
  br i1 %392, label %393, label %395, !dbg !2038

; <label>:393:                                    ; preds = %391
  %394 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !2040
  store i8 39, i8* %394, align 1, !dbg !2040, !tbaa !761
  br label %395, !dbg !2040

; <label>:395:                                    ; preds = %393, %391
  %396 = add i64 %381, 1, !dbg !2042
  call void @llvm.dbg.value(metadata i64 %396, i64 0, metadata !1556, metadata !593), !dbg !1618
  %397 = icmp ult i64 %396, %131, !dbg !2044
  br i1 %397, label %398, label %400, !dbg !2048

; <label>:398:                                    ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !2050
  store i8 36, i8* %399, align 1, !dbg !2050, !tbaa !761
  br label %400, !dbg !2050

; <label>:400:                                    ; preds = %398, %395
  %401 = add i64 %381, 2, !dbg !2052
  call void @llvm.dbg.value(metadata i64 %401, i64 0, metadata !1556, metadata !593), !dbg !1618
  %402 = icmp ult i64 %401, %131, !dbg !2054
  br i1 %402, label %403, label %405, !dbg !2058

; <label>:403:                                    ; preds = %400
  %404 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !2060
  store i8 39, i8* %404, align 1, !dbg !2060, !tbaa !761
  br label %405, !dbg !2060

; <label>:405:                                    ; preds = %403, %400
  %406 = add i64 %381, 3, !dbg !2062
  call void @llvm.dbg.value(metadata i64 %406, i64 0, metadata !1556, metadata !593), !dbg !1618
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1563, metadata !593), !dbg !1626
  br label %407, !dbg !2064

; <label>:407:                                    ; preds = %387, %405
  %408 = phi i64 [ %406, %405 ], [ %381, %387 ]
  %409 = phi i8 [ 1, %405 ], [ %382, %387 ]
  call void @llvm.dbg.value(metadata i8 %409, i64 0, metadata !1563, metadata !593), !dbg !1626
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !1556, metadata !593), !dbg !1618
  %410 = icmp ult i64 %408, %131, !dbg !2066
  br i1 %410, label %411, label %413, !dbg !2070

; <label>:411:                                    ; preds = %407
  %412 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !2072
  store i8 92, i8* %412, align 1, !dbg !2072, !tbaa !761
  br label %413, !dbg !2072

; <label>:413:                                    ; preds = %411, %407
  %414 = add i64 %408, 1, !dbg !2074
  call void @llvm.dbg.value(metadata i64 %414, i64 0, metadata !1556, metadata !593), !dbg !1618
  %415 = icmp ult i64 %414, %131, !dbg !2076
  br i1 %415, label %416, label %420, !dbg !2080

; <label>:416:                                    ; preds = %413
  %417 = lshr i8 %383, 6, !dbg !2082
  %418 = or i8 %417, 48, !dbg !2082
  %419 = getelementptr inbounds i8, i8* %0, i64 %414, !dbg !2082
  store i8 %418, i8* %419, align 1, !dbg !2082, !tbaa !761
  br label %420, !dbg !2082

; <label>:420:                                    ; preds = %416, %413
  %421 = add i64 %408, 2, !dbg !2084
  call void @llvm.dbg.value(metadata i64 %421, i64 0, metadata !1556, metadata !593), !dbg !1618
  %422 = icmp ult i64 %421, %131, !dbg !2086
  br i1 %422, label %423, label %428, !dbg !2090

; <label>:423:                                    ; preds = %420
  %424 = lshr i8 %383, 3, !dbg !2092
  %425 = and i8 %424, 7, !dbg !2092
  %426 = or i8 %425, 48, !dbg !2092
  %427 = getelementptr inbounds i8, i8* %0, i64 %421, !dbg !2092
  store i8 %426, i8* %427, align 1, !dbg !2092, !tbaa !761
  br label %428, !dbg !2092

; <label>:428:                                    ; preds = %423, %420
  %429 = add i64 %408, 3, !dbg !2094
  call void @llvm.dbg.value(metadata i64 %429, i64 0, metadata !1556, metadata !593), !dbg !1618
  %430 = and i8 %383, 7, !dbg !2096
  %431 = or i8 %430, 48, !dbg !2097
  call void @llvm.dbg.value(metadata i8 %431, i64 0, metadata !1566, metadata !593), !dbg !1724
  br label %441, !dbg !2098

; <label>:432:                                    ; preds = %379
  %433 = and i8 %384, 1, !dbg !2099
  %434 = icmp eq i8 %433, 0, !dbg !2099
  br i1 %434, label %441, label %435, !dbg !2101

; <label>:435:                                    ; preds = %432
  %436 = icmp ult i64 %381, %131, !dbg !2102
  br i1 %436, label %437, label %439, !dbg !2107

; <label>:437:                                    ; preds = %435
  %438 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !2109
  store i8 92, i8* %438, align 1, !dbg !2109, !tbaa !761
  br label %439, !dbg !2109

; <label>:439:                                    ; preds = %437, %435
  %440 = add i64 %381, 1, !dbg !2111
  call void @llvm.dbg.value(metadata i64 %440, i64 0, metadata !1556, metadata !593), !dbg !1618
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1571, metadata !593), !dbg !1705
  br label %441, !dbg !2113

; <label>:441:                                    ; preds = %432, %439, %428
  %442 = phi i64 [ %440, %439 ], [ %381, %432 ], [ %429, %428 ]
  %443 = phi i8 [ %382, %439 ], [ %382, %432 ], [ %409, %428 ]
  %444 = phi i8 [ %383, %439 ], [ %383, %432 ], [ %431, %428 ]
  %445 = phi i8 [ 0, %439 ], [ %384, %432 ], [ %384, %428 ]
  %446 = phi i8 [ %385, %439 ], [ %385, %432 ], [ 1, %428 ]
  call void @llvm.dbg.value(metadata i8 %446, i64 0, metadata !1572, metadata !593), !dbg !1706
  call void @llvm.dbg.value(metadata i8 %445, i64 0, metadata !1571, metadata !593), !dbg !1705
  call void @llvm.dbg.value(metadata i8 %444, i64 0, metadata !1566, metadata !593), !dbg !1724
  call void @llvm.dbg.value(metadata i8 %443, i64 0, metadata !1563, metadata !593), !dbg !1626
  call void @llvm.dbg.value(metadata i64 %442, i64 0, metadata !1556, metadata !593), !dbg !1618
  %447 = add i64 %380, 1, !dbg !2114
  %448 = icmp ugt i64 %378, %447, !dbg !2116
  br i1 %448, label %449, label %541, !dbg !2117

; <label>:449:                                    ; preds = %441
  %450 = and i8 %443, 1, !dbg !2118
  %451 = icmp ne i8 %450, 0, !dbg !2118
  %452 = and i8 %446, 1, !dbg !2122
  %453 = icmp eq i8 %452, 0, !dbg !2122
  %454 = and i1 %451, %453, !dbg !2118
  br i1 %454, label %455, label %466, !dbg !2118

; <label>:455:                                    ; preds = %449
  %456 = icmp ult i64 %442, %131, !dbg !2124
  br i1 %456, label %457, label %459, !dbg !2129

; <label>:457:                                    ; preds = %455
  %458 = getelementptr inbounds i8, i8* %0, i64 %442, !dbg !2131
  store i8 39, i8* %458, align 1, !dbg !2131, !tbaa !761
  br label %459, !dbg !2131

; <label>:459:                                    ; preds = %457, %455
  %460 = add i64 %442, 1, !dbg !2133
  call void @llvm.dbg.value(metadata i64 %460, i64 0, metadata !1556, metadata !593), !dbg !1618
  %461 = icmp ult i64 %460, %131, !dbg !2135
  br i1 %461, label %462, label %464, !dbg !2139

; <label>:462:                                    ; preds = %459
  %463 = getelementptr inbounds i8, i8* %0, i64 %460, !dbg !2141
  store i8 39, i8* %463, align 1, !dbg !2141, !tbaa !761
  br label %464, !dbg !2141

; <label>:464:                                    ; preds = %462, %459
  %465 = add i64 %442, 2, !dbg !2143
  call void @llvm.dbg.value(metadata i64 %465, i64 0, metadata !1556, metadata !593), !dbg !1618
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1563, metadata !593), !dbg !1626
  br label %466, !dbg !2145

; <label>:466:                                    ; preds = %449, %464
  %467 = phi i64 [ %465, %464 ], [ %442, %449 ]
  %468 = phi i8 [ 0, %464 ], [ %443, %449 ]
  call void @llvm.dbg.value(metadata i8 %468, i64 0, metadata !1563, metadata !593), !dbg !1626
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !1556, metadata !593), !dbg !1618
  %469 = icmp ult i64 %467, %131, !dbg !2147
  br i1 %469, label %470, label %472, !dbg !2151

; <label>:470:                                    ; preds = %466
  %471 = getelementptr inbounds i8, i8* %0, i64 %467, !dbg !2153
  store i8 %444, i8* %471, align 1, !dbg !2153, !tbaa !761
  br label %472, !dbg !2153

; <label>:472:                                    ; preds = %470, %466
  %473 = add i64 %467, 1, !dbg !2155
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !1556, metadata !593), !dbg !1618
  call void @llvm.dbg.value(metadata i64 %447, i64 0, metadata !1555, metadata !593), !dbg !1693
  %474 = getelementptr inbounds i8, i8* %2, i64 %447, !dbg !2157
  %475 = load i8, i8* %474, align 1, !dbg !2157, !tbaa !761
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !1566, metadata !593), !dbg !1724
  br label %379, !dbg !2158, !llvm.loop !2160

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
  call void @llvm.dbg.value(metadata i64 %486, i64 0, metadata !1547, metadata !593), !dbg !1610
  call void @llvm.dbg.value(metadata i8 %485, i64 0, metadata !1573, metadata !593), !dbg !1707
  call void @llvm.dbg.value(metadata i8 %484, i64 0, metadata !1572, metadata !593), !dbg !1706
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !1571, metadata !593), !dbg !1705
  call void @llvm.dbg.value(metadata i8 %483, i64 0, metadata !1566, metadata !593), !dbg !1724
  call void @llvm.dbg.value(metadata i8 %482, i64 0, metadata !1564, metadata !593), !dbg !1627
  call void @llvm.dbg.value(metadata i8 %481, i64 0, metadata !1563, metadata !593), !dbg !1626
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !1549, metadata !593), !dbg !1612
  call void @llvm.dbg.value(metadata i64 %479, i64 0, metadata !1557, metadata !593), !dbg !1619
  call void @llvm.dbg.value(metadata i64 %478, i64 0, metadata !1556, metadata !593), !dbg !1618
  call void @llvm.dbg.value(metadata i64 %477, i64 0, metadata !1555, metadata !593), !dbg !1693
  br i1 %107, label %488, label %487, !dbg !2163

; <label>:487:                                    ; preds = %476
  br i1 %117, label %489, label %501, !dbg !2165

; <label>:488:                                    ; preds = %476
  br i1 %20, label %501, label %489, !dbg !2166

; <label>:489:                                    ; preds = %488, %487
  %490 = lshr i8 %483, 5, !dbg !2167
  %491 = zext i8 %490 to i64, !dbg !2167
  %492 = getelementptr inbounds i32, i32* %6, i64 %491, !dbg !2169
  %493 = load i32, i32* %492, align 4, !dbg !2169, !tbaa !692
  %494 = and i8 %483, 31, !dbg !2170
  %495 = zext i8 %494 to i32, !dbg !2171
  %496 = shl i32 1, %495, !dbg !2172
  %497 = and i32 %493, %496, !dbg !2172
  %498 = icmp eq i32 %497, 0, !dbg !2172
  %499 = icmp eq i8 %157, 0, !dbg !2173
  %500 = and i1 %499, %498, !dbg !2174
  br i1 %500, label %542, label %503, !dbg !2174

; <label>:501:                                    ; preds = %488, %487
  %502 = icmp eq i8 %157, 0, !dbg !2173
  br i1 %502, label %542, label %503, !dbg !2175

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
  call void @llvm.dbg.value(metadata i64 %512, i64 0, metadata !1547, metadata !593), !dbg !1610
  call void @llvm.dbg.value(metadata i8 %511, i64 0, metadata !1573, metadata !593), !dbg !1707
  call void @llvm.dbg.value(metadata i8 %510, i64 0, metadata !1566, metadata !593), !dbg !1724
  call void @llvm.dbg.value(metadata i8 %509, i64 0, metadata !1564, metadata !593), !dbg !1627
  call void @llvm.dbg.value(metadata i8 %508, i64 0, metadata !1563, metadata !593), !dbg !1626
  call void @llvm.dbg.value(metadata i64 %507, i64 0, metadata !1549, metadata !593), !dbg !1612
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !1557, metadata !593), !dbg !1619
  call void @llvm.dbg.value(metadata i64 %505, i64 0, metadata !1556, metadata !593), !dbg !1618
  call void @llvm.dbg.value(metadata i64 %504, i64 0, metadata !1555, metadata !593), !dbg !1693
  br i1 %112, label %513, label %644, !dbg !2177

; <label>:513:                                    ; preds = %503
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1572, metadata !593), !dbg !1706
  %514 = and i8 %508, 1, !dbg !2180
  %515 = icmp eq i8 %514, 0, !dbg !2180
  %516 = and i1 %114, %515, !dbg !2183
  br i1 %516, label %517, label %533, !dbg !2183

; <label>:517:                                    ; preds = %513
  %518 = icmp ult i64 %505, %512, !dbg !2185
  br i1 %518, label %519, label %521, !dbg !2190

; <label>:519:                                    ; preds = %517
  %520 = getelementptr inbounds i8, i8* %0, i64 %505, !dbg !2192
  store i8 39, i8* %520, align 1, !dbg !2192, !tbaa !761
  br label %521, !dbg !2192

; <label>:521:                                    ; preds = %519, %517
  %522 = add i64 %505, 1, !dbg !2194
  call void @llvm.dbg.value(metadata i64 %522, i64 0, metadata !1556, metadata !593), !dbg !1618
  %523 = icmp ult i64 %522, %512, !dbg !2196
  br i1 %523, label %524, label %526, !dbg !2200

; <label>:524:                                    ; preds = %521
  %525 = getelementptr inbounds i8, i8* %0, i64 %522, !dbg !2202
  store i8 36, i8* %525, align 1, !dbg !2202, !tbaa !761
  br label %526, !dbg !2202

; <label>:526:                                    ; preds = %524, %521
  %527 = add i64 %505, 2, !dbg !2204
  call void @llvm.dbg.value(metadata i64 %527, i64 0, metadata !1556, metadata !593), !dbg !1618
  %528 = icmp ult i64 %527, %512, !dbg !2206
  br i1 %528, label %529, label %531, !dbg !2210

; <label>:529:                                    ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527, !dbg !2212
  store i8 39, i8* %530, align 1, !dbg !2212, !tbaa !761
  br label %531, !dbg !2212

; <label>:531:                                    ; preds = %529, %526
  %532 = add i64 %505, 3, !dbg !2214
  call void @llvm.dbg.value(metadata i64 %532, i64 0, metadata !1556, metadata !593), !dbg !1618
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1563, metadata !593), !dbg !1626
  br label %533, !dbg !2216

; <label>:533:                                    ; preds = %513, %531
  %534 = phi i64 [ %532, %531 ], [ %505, %513 ]
  %535 = phi i8 [ 1, %531 ], [ %508, %513 ]
  call void @llvm.dbg.value(metadata i8 %535, i64 0, metadata !1563, metadata !593), !dbg !1626
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !1556, metadata !593), !dbg !1618
  %536 = icmp ult i64 %534, %512, !dbg !2218
  br i1 %536, label %537, label %539, !dbg !2222

; <label>:537:                                    ; preds = %533
  %538 = getelementptr inbounds i8, i8* %0, i64 %534, !dbg !2224
  store i8 92, i8* %538, align 1, !dbg !2224, !tbaa !761
  br label %539, !dbg !2224

; <label>:539:                                    ; preds = %533, %537
  %540 = add i64 %534, 1, !dbg !2226
  call void @llvm.dbg.value(metadata i64 %540, i64 0, metadata !1556, metadata !593), !dbg !1618
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !1547, metadata !593), !dbg !1610
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !1573, metadata !593), !dbg !1707
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !1572, metadata !593), !dbg !1706
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !1566, metadata !593), !dbg !1724
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !1564, metadata !593), !dbg !1627
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !1563, metadata !593), !dbg !1626
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !1549, metadata !593), !dbg !1612
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1557, metadata !593), !dbg !1619
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !1556, metadata !593), !dbg !1618
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !1555, metadata !593), !dbg !1693
  br label %569, !dbg !2228

; <label>:541:                                    ; preds = %441
  br label %542, !dbg !1610

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
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !1547, metadata !593), !dbg !1610
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !1573, metadata !593), !dbg !1707
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !1572, metadata !593), !dbg !1706
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !1566, metadata !593), !dbg !1724
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !1564, metadata !593), !dbg !1627
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !1563, metadata !593), !dbg !1626
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !1549, metadata !593), !dbg !1612
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1557, metadata !593), !dbg !1619
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !1556, metadata !593), !dbg !1618
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !1555, metadata !593), !dbg !1693
  %553 = and i8 %547, 1, !dbg !2228
  %554 = icmp ne i8 %553, 0, !dbg !2228
  %555 = and i8 %550, 1, !dbg !2232
  %556 = icmp eq i8 %555, 0, !dbg !2232
  %557 = and i1 %554, %556, !dbg !2228
  br i1 %557, label %558, label %569, !dbg !2228

; <label>:558:                                    ; preds = %542
  %559 = icmp ult i64 %544, %552, !dbg !2234
  br i1 %559, label %560, label %562, !dbg !2239

; <label>:560:                                    ; preds = %558
  %561 = getelementptr inbounds i8, i8* %0, i64 %544, !dbg !2241
  store i8 39, i8* %561, align 1, !dbg !2241, !tbaa !761
  br label %562, !dbg !2241

; <label>:562:                                    ; preds = %560, %558
  %563 = add i64 %544, 1, !dbg !2243
  call void @llvm.dbg.value(metadata i64 %563, i64 0, metadata !1556, metadata !593), !dbg !1618
  %564 = icmp ult i64 %563, %552, !dbg !2245
  br i1 %564, label %565, label %567, !dbg !2249

; <label>:565:                                    ; preds = %562
  %566 = getelementptr inbounds i8, i8* %0, i64 %563, !dbg !2251
  store i8 39, i8* %566, align 1, !dbg !2251, !tbaa !761
  br label %567, !dbg !2251

; <label>:567:                                    ; preds = %565, %562
  %568 = add i64 %544, 2, !dbg !2253
  call void @llvm.dbg.value(metadata i64 %568, i64 0, metadata !1556, metadata !593), !dbg !1618
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1563, metadata !593), !dbg !1626
  br label %569, !dbg !2255

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
  call void @llvm.dbg.value(metadata i8 %578, i64 0, metadata !1563, metadata !593), !dbg !1626
  call void @llvm.dbg.value(metadata i64 %577, i64 0, metadata !1556, metadata !593), !dbg !1618
  %579 = icmp ult i64 %577, %570, !dbg !2257
  br i1 %579, label %580, label %582, !dbg !2261

; <label>:580:                                    ; preds = %569
  %581 = getelementptr inbounds i8, i8* %0, i64 %577, !dbg !2263
  store i8 %572, i8* %581, align 1, !dbg !2263, !tbaa !761
  br label %582, !dbg !2263

; <label>:582:                                    ; preds = %580, %569
  %583 = add i64 %577, 1, !dbg !2265
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !1556, metadata !593), !dbg !1618
  %584 = and i8 %571, 1, !dbg !2267
  %585 = icmp eq i8 %584, 0, !dbg !2267
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1565, metadata !593), !dbg !1628
  %586 = select i1 %585, i8 0, i8 %130, !dbg !2269
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !1565, metadata !593), !dbg !1628
  br label %587, !dbg !2270

; <label>:587:                                    ; preds = %582, %209
  %588 = phi i64 [ %124, %209 ], [ %576, %582 ]
  %589 = phi i64 [ %125, %209 ], [ %583, %582 ]
  %590 = phi i64 [ %126, %209 ], [ %575, %582 ]
  %591 = phi i64 [ %156, %209 ], [ %574, %582 ]
  %592 = phi i8 [ %128, %209 ], [ %578, %582 ]
  %593 = phi i8 [ %129, %209 ], [ %573, %582 ]
  %594 = phi i8 [ %130, %209 ], [ %586, %582 ]
  %595 = phi i64 [ %131, %209 ], [ %570, %582 ]
  %596 = add i64 %588, 1, !dbg !2271
  call void @llvm.dbg.value(metadata i64 %596, i64 0, metadata !1555, metadata !593), !dbg !1693
  br label %123, !dbg !2273, !llvm.loop !2274

; <label>:597:                                    ; preds = %133, %135
  %598 = phi i64 [ %124, %133 ], [ -1, %135 ]
  %599 = icmp eq i64 %125, 0, !dbg !2277
  %600 = and i1 %114, %599, !dbg !2279
  %601 = xor i1 %600, true, !dbg !2279
  %602 = or i1 %112, %601, !dbg !2279
  br i1 %602, label %603, label %648, !dbg !2279

; <label>:603:                                    ; preds = %597
  %604 = and i1 %114, %112, !dbg !2280
  %605 = xor i1 %604, true, !dbg !2280
  %606 = and i8 %129, 1, !dbg !2282
  %607 = icmp eq i8 %606, 0, !dbg !2282
  %608 = or i1 %607, %605, !dbg !2280
  br i1 %608, label %618, label %609, !dbg !2280

; <label>:609:                                    ; preds = %603
  %610 = and i8 %130, 1, !dbg !2284
  %611 = icmp eq i8 %610, 0, !dbg !2284
  br i1 %611, label %614, label %612, !dbg !2287

; <label>:612:                                    ; preds = %609
  %613 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %126, i8* %2, i64 %598, i32 5, i32 %5, i32* %6, i8* %97, i8* %98), !dbg !2288
  br label %659, !dbg !2289

; <label>:614:                                    ; preds = %609
  %615 = icmp eq i64 %131, 0, !dbg !2290
  %616 = icmp ne i64 %126, 0, !dbg !2292
  %617 = and i1 %616, %615, !dbg !2294
  br i1 %617, label %27, label %618, !dbg !2294

; <label>:618:                                    ; preds = %603, %614
  %619 = icmp ne i8* %100, null, !dbg !2295
  %620 = and i1 %619, %112, !dbg !2297
  br i1 %620, label %621, label %638, !dbg !2297

; <label>:621:                                    ; preds = %618
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !1558, metadata !593), !dbg !1620
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1556, metadata !593), !dbg !1618
  %622 = load i8, i8* %100, align 1, !dbg !2298, !tbaa !761
  %623 = icmp eq i8 %622, 0, !dbg !2302
  br i1 %623, label %638, label %624, !dbg !2302

; <label>:624:                                    ; preds = %621
  br label %625, !dbg !2304

; <label>:625:                                    ; preds = %624, %632
  %626 = phi i8 [ %635, %632 ], [ %622, %624 ]
  %627 = phi i8* [ %634, %632 ], [ %100, %624 ]
  %628 = phi i64 [ %633, %632 ], [ %125, %624 ]
  %629 = icmp ult i64 %628, %131, !dbg !2304
  br i1 %629, label %630, label %632, !dbg !2308

; <label>:630:                                    ; preds = %625
  %631 = getelementptr inbounds i8, i8* %0, i64 %628, !dbg !2310
  store i8 %626, i8* %631, align 1, !dbg !2310, !tbaa !761
  br label %632, !dbg !2310

; <label>:632:                                    ; preds = %630, %625
  %633 = add i64 %628, 1, !dbg !2312
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !1556, metadata !593), !dbg !1618
  %634 = getelementptr inbounds i8, i8* %627, i64 1, !dbg !2314
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !1558, metadata !593), !dbg !1620
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !1558, metadata !593), !dbg !1620
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !1556, metadata !593), !dbg !1618
  %635 = load i8, i8* %634, align 1, !dbg !2298, !tbaa !761
  %636 = icmp eq i8 %635, 0, !dbg !2302
  br i1 %636, label %637, label %625, !dbg !2302, !llvm.loop !2316

; <label>:637:                                    ; preds = %632
  br label %638, !dbg !1618

; <label>:638:                                    ; preds = %637, %621, %618
  %639 = phi i64 [ %125, %618 ], [ %125, %621 ], [ %633, %637 ]
  call void @llvm.dbg.value(metadata i64 %639, i64 0, metadata !1556, metadata !593), !dbg !1618
  %640 = icmp ult i64 %639, %131, !dbg !2319
  br i1 %640, label %641, label %659, !dbg !2321

; <label>:641:                                    ; preds = %638
  %642 = getelementptr inbounds i8, i8* %0, i64 %639, !dbg !2322
  store i8 0, i8* %642, align 1, !dbg !2323, !tbaa !761
  br label %659, !dbg !2322

; <label>:643:                                    ; preds = %386
  br label %649, !dbg !1610

; <label>:644:                                    ; preds = %148, %161, %211, %225, %253, %255, %273, %276, %503
  %645 = phi i32 [ %96, %148 ], [ %96, %161 ], [ 2, %211 ], [ 5, %225 ], [ 2, %253 ], [ 2, %255 ], [ 2, %273 ], [ 2, %276 ], [ %96, %503 ]
  %646 = phi i64 [ %146, %148 ], [ %156, %161 ], [ %156, %211 ], [ %156, %225 ], [ %156, %253 ], [ %156, %255 ], [ %156, %273 ], [ %156, %276 ], [ %507, %503 ]
  %647 = phi i64 [ %131, %148 ], [ %131, %161 ], [ %131, %211 ], [ %131, %225 ], [ %131, %253 ], [ %131, %255 ], [ %131, %273 ], [ %131, %276 ], [ %512, %503 ]
  br label %649, !dbg !1610

; <label>:648:                                    ; preds = %597
  br label %649, !dbg !1610

; <label>:649:                                    ; preds = %648, %644, %643, %367
  %650 = phi i32 [ 2, %367 ], [ %96, %643 ], [ %645, %644 ], [ %96, %648 ]
  %651 = phi i64 [ %313, %367 ], [ %369, %643 ], [ %646, %644 ], [ %598, %648 ]
  %652 = phi i64 [ %131, %367 ], [ %131, %643 ], [ %647, %644 ], [ %131, %648 ]
  call void @llvm.dbg.value(metadata i64 %652, i64 0, metadata !1547, metadata !593), !dbg !1610
  call void @llvm.dbg.value(metadata i64 %651, i64 0, metadata !1549, metadata !593), !dbg !1612
  %653 = icmp ne i32 %650, 2, !dbg !2324
  %654 = icmp eq i8 %104, 0, !dbg !2326
  %655 = or i1 %653, %654, !dbg !2328
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !1550, metadata !593), !dbg !1613
  %656 = select i1 %655, i32 %650, i32 4, !dbg !2328
  call void @llvm.dbg.value(metadata i32 %656, i64 0, metadata !1550, metadata !593), !dbg !1613
  %657 = and i32 %5, -3, !dbg !2329
  %658 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %652, i8* %2, i64 %651, i32 %656, i32 %657, i32* null, i8* %97, i8* %98), !dbg !2330
  br label %659, !dbg !2331

; <label>:659:                                    ; preds = %638, %641, %649, %612
  %660 = phi i64 [ %658, %649 ], [ %613, %612 ], [ %639, %641 ], [ %639, %638 ]
  ret i64 %660, !dbg !2332
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !2333 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2337, metadata !593), !dbg !2341
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2338, metadata !593), !dbg !2342
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #10, !dbg !2343
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2339, metadata !593), !dbg !2344
  %4 = icmp eq i8* %3, %0, !dbg !2345
  br i1 %4, label %5, label %75, !dbg !2347

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #10, !dbg !2348
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !2340, metadata !593), !dbg !2349
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2350, metadata !593), !dbg !2366
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2364, metadata !593), !dbg !2369
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2365, metadata !593), !dbg !2370
  %7 = load i8, i8* %6, align 1, !tbaa !761
  %8 = sext i8 %7 to i32
  %9 = and i32 %8, -33, !dbg !2371
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !2371

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2374, metadata !593), !dbg !2388
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2386, metadata !593), !dbg !2392
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2387, metadata !593), !dbg !2393
  %11 = getelementptr inbounds i8, i8* %6, i64 1
  %12 = load i8, i8* %11, align 1, !tbaa !761
  %13 = sext i8 %12 to i32
  %14 = and i32 %13, -33, !dbg !2394
  %15 = icmp eq i32 %14, 84, !dbg !2394
  br i1 %15, label %16, label %72, !dbg !2394

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2397, metadata !593), !dbg !2410
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2408, metadata !593), !dbg !2414
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2409, metadata !593), !dbg !2415
  %17 = getelementptr inbounds i8, i8* %6, i64 2
  %18 = load i8, i8* %17, align 1, !tbaa !761
  %19 = sext i8 %18 to i32
  %20 = and i32 %19, -33, !dbg !2416
  %21 = icmp eq i32 %20, 70, !dbg !2416
  br i1 %21, label %22, label %72, !dbg !2416

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2419, metadata !593), !dbg !2431
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2429, metadata !593), !dbg !2435
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2430, metadata !593), !dbg !2436
  %23 = getelementptr inbounds i8, i8* %6, i64 3
  %24 = load i8, i8* %23, align 1, !tbaa !761
  %25 = icmp eq i8 %24, 45, !dbg !2437
  br i1 %25, label %26, label %72, !dbg !2440

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2442, metadata !593), !dbg !2453
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2451, metadata !593), !dbg !2457
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2452, metadata !593), !dbg !2458
  %27 = getelementptr inbounds i8, i8* %6, i64 4
  %28 = load i8, i8* %27, align 1, !tbaa !761
  %29 = icmp eq i8 %28, 56, !dbg !2459
  br i1 %29, label %30, label %72, !dbg !2462

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2464, metadata !593), !dbg !2474
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2472, metadata !593), !dbg !2478
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2473, metadata !593), !dbg !2479
  %31 = getelementptr inbounds i8, i8* %6, i64 5
  %32 = load i8, i8* %31, align 1, !tbaa !761
  %33 = icmp eq i8 %32, 0, !dbg !2480
  br i1 %33, label %34, label %72, !dbg !2483

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !2485, !tbaa !761
  %36 = icmp eq i8 %35, 96, !dbg !2486
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.64, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.65, i64 0, i64 0), !dbg !2485
  br label %75, !dbg !2487

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2374, metadata !593), !dbg !2488
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2386, metadata !593), !dbg !2492
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2387, metadata !593), !dbg !2493
  %39 = getelementptr inbounds i8, i8* %6, i64 1
  %40 = load i8, i8* %39, align 1, !tbaa !761
  %41 = sext i8 %40 to i32
  %42 = and i32 %41, -33, !dbg !2494
  %43 = icmp eq i32 %42, 66, !dbg !2494
  br i1 %43, label %44, label %72, !dbg !2494

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2397, metadata !593), !dbg !2495
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2408, metadata !593), !dbg !2497
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2409, metadata !593), !dbg !2498
  %45 = getelementptr inbounds i8, i8* %6, i64 2
  %46 = load i8, i8* %45, align 1, !tbaa !761
  %47 = icmp eq i8 %46, 49, !dbg !2499
  br i1 %47, label %48, label %72, !dbg !2501

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2419, metadata !593), !dbg !2503
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2429, metadata !593), !dbg !2505
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2430, metadata !593), !dbg !2506
  %49 = getelementptr inbounds i8, i8* %6, i64 3
  %50 = load i8, i8* %49, align 1, !tbaa !761
  %51 = icmp eq i8 %50, 56, !dbg !2507
  br i1 %51, label %52, label %72, !dbg !2508

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2442, metadata !593), !dbg !2509
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2451, metadata !593), !dbg !2511
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2452, metadata !593), !dbg !2512
  %53 = getelementptr inbounds i8, i8* %6, i64 4
  %54 = load i8, i8* %53, align 1, !tbaa !761
  %55 = icmp eq i8 %54, 48, !dbg !2513
  br i1 %55, label %56, label %72, !dbg !2514

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2464, metadata !593), !dbg !2515
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2472, metadata !593), !dbg !2517
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2473, metadata !593), !dbg !2518
  %57 = getelementptr inbounds i8, i8* %6, i64 5
  %58 = load i8, i8* %57, align 1, !tbaa !761
  %59 = icmp eq i8 %58, 51, !dbg !2519
  br i1 %59, label %60, label %72, !dbg !2520

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2521, metadata !593), !dbg !2530
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2528, metadata !593), !dbg !2534
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2529, metadata !593), !dbg !2535
  %61 = getelementptr inbounds i8, i8* %6, i64 6
  %62 = load i8, i8* %61, align 1, !tbaa !761
  %63 = icmp eq i8 %62, 48, !dbg !2536
  br i1 %63, label %64, label %72, !dbg !2539

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2541, metadata !593), !dbg !2549
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2547, metadata !593), !dbg !2553
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2548, metadata !593), !dbg !2554
  %65 = getelementptr inbounds i8, i8* %6, i64 7
  %66 = load i8, i8* %65, align 1, !tbaa !761
  %67 = icmp eq i8 %66, 0, !dbg !2555
  br i1 %67, label %68, label %72, !dbg !2558

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !2559, !tbaa !761
  %70 = icmp eq i8 %69, 96, !dbg !2560
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.66, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), !dbg !2559
  br label %75, !dbg !2561

; <label>:72:                                     ; preds = %5, %30, %26, %22, %16, %10, %64, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !2562
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.63, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.62, i64 0, i64 0), !dbg !2563
  br label %75, !dbg !2564

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !2565
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
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2566 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2570, metadata !593), !dbg !2573
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2571, metadata !593), !dbg !2574
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2572, metadata !593), !dbg !2575
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2576, metadata !593) #10, !dbg !2589
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2581, metadata !593) #10, !dbg !2591
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !2582, metadata !593) #10, !dbg !2592
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2583, metadata !593) #10, !dbg !2593
  %4 = icmp ne %struct.quoting_options* %2, null, !dbg !2594
  %5 = select i1 %4, %struct.quoting_options* %2, %struct.quoting_options* @default_quoting_options, !dbg !2594
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2584, metadata !593) #10, !dbg !2595
  %6 = tail call i32* @__errno_location() #1, !dbg !2596
  %7 = load i32, i32* %6, align 4, !dbg !2596, !tbaa !692
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !2585, metadata !593) #10, !dbg !2597
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2598
  %9 = load i32, i32* %8, align 4, !dbg !2598, !tbaa !1478
  %10 = or i32 %9, 1, !dbg !2599
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2586, metadata !593) #10, !dbg !2600
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2601
  %12 = load i32, i32* %11, align 8, !dbg !2601, !tbaa !1416
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2602
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2603
  %15 = load i8*, i8** %14, align 8, !dbg !2603, !tbaa !1505
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2604
  %17 = load i8*, i8** %16, align 8, !dbg !2604, !tbaa !1508
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #10, !dbg !2605
  %19 = add i64 %18, 1, !dbg !2606
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2587, metadata !593) #10, !dbg !2607
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2608, metadata !593) #10, !dbg !2611
  %20 = tail call noalias i8* @xmalloc(i64 %19) #10, !dbg !2613
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !2588, metadata !593) #10, !dbg !2614
  %21 = load i32, i32* %11, align 8, !dbg !2615, !tbaa !1416
  %22 = load i8*, i8** %14, align 8, !dbg !2616, !tbaa !1505
  %23 = load i8*, i8** %16, align 8, !dbg !2617, !tbaa !1508
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #10, !dbg !2618
  store i32 %7, i32* %6, align 4, !dbg !2619, !tbaa !692
  ret i8* %20, !dbg !2620
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2577 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2576, metadata !593), !dbg !2621
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2581, metadata !593), !dbg !2622
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !2582, metadata !593), !dbg !2623
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2583, metadata !593), !dbg !2624
  %5 = icmp ne %struct.quoting_options* %3, null, !dbg !2625
  %6 = select i1 %5, %struct.quoting_options* %3, %struct.quoting_options* @default_quoting_options, !dbg !2625
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2584, metadata !593), !dbg !2626
  %7 = tail call i32* @__errno_location() #1, !dbg !2627
  %8 = load i32, i32* %7, align 4, !dbg !2627, !tbaa !692
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !2585, metadata !593), !dbg !2628
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2629
  %10 = load i32, i32* %9, align 4, !dbg !2629, !tbaa !1478
  %11 = icmp ne i64* %2, null, !dbg !2630
  %12 = xor i1 %11, true, !dbg !2630
  %13 = zext i1 %12 to i32, !dbg !2630
  %14 = or i32 %10, %13, !dbg !2631
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !2586, metadata !593), !dbg !2632
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2633
  %16 = load i32, i32* %15, align 8, !dbg !2633, !tbaa !1416
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2634
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2635
  %19 = load i8*, i8** %18, align 8, !dbg !2635, !tbaa !1505
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2636
  %21 = load i8*, i8** %20, align 8, !dbg !2636, !tbaa !1508
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !2637
  %23 = add i64 %22, 1, !dbg !2638
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2587, metadata !593), !dbg !2639
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2608, metadata !593) #10, !dbg !2640
  %24 = tail call noalias i8* @xmalloc(i64 %23) #10, !dbg !2642
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !2588, metadata !593), !dbg !2643
  %25 = load i32, i32* %15, align 8, !dbg !2644, !tbaa !1416
  %26 = load i8*, i8** %18, align 8, !dbg !2645, !tbaa !1505
  %27 = load i8*, i8** %20, align 8, !dbg !2646, !tbaa !1508
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !2647
  store i32 %8, i32* %7, align 4, !dbg !2648, !tbaa !692
  br i1 %11, label %29, label %30, !dbg !2649

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2650, !tbaa !1198
  br label %30, !dbg !2652

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !2653
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !2654 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2658, !tbaa !601
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !2656, metadata !593), !dbg !2659
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2657, metadata !593), !dbg !2660
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2657, metadata !593), !dbg !2660
  %2 = load i32, i32* @nslots, align 4, !dbg !2661, !tbaa !692
  %3 = icmp sgt i32 %2, 1, !dbg !2665
  br i1 %3, label %4, label %14, !dbg !2666

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !2668

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !2668
  %8 = load i8*, i8** %7, align 8, !dbg !2668, !tbaa !2669
  tail call void @free(i8* %8) #10, !dbg !2671
  %9 = add nuw i64 %6, 1, !dbg !2672
  %10 = load i32, i32* @nslots, align 4, !dbg !2661, !tbaa !692
  %11 = sext i32 %10 to i64, !dbg !2665
  %12 = icmp slt i64 %9, %11, !dbg !2665
  br i1 %12, label %5, label %13, !dbg !2666, !llvm.loop !2674

; <label>:13:                                     ; preds = %5
  br label %14, !dbg !2677

; <label>:14:                                     ; preds = %13, %0
  %15 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2677
  %16 = load i8*, i8** %15, align 8, !dbg !2677, !tbaa !2669
  %17 = icmp eq i8* %16, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2679
  br i1 %17, label %19, label %18, !dbg !2680

; <label>:18:                                     ; preds = %14
  tail call void @free(i8* %16) #10, !dbg !2681
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2683, !tbaa !2684
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2685, !tbaa !2669
  br label %19, !dbg !2686

; <label>:19:                                     ; preds = %14, %18
  %20 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2687
  br i1 %20, label %23, label %21, !dbg !2689

; <label>:21:                                     ; preds = %19
  %22 = bitcast %struct.slotvec* %1 to i8*, !dbg !2690
  tail call void @free(i8* %22) #10, !dbg !2692
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2693, !tbaa !601
  br label %23, !dbg !2694

; <label>:23:                                     ; preds = %19, %21
  store i32 1, i32* @nslots, align 4, !dbg !2695, !tbaa !692
  ret void, !dbg !2696
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !2697 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2701, metadata !593), !dbg !2703
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2702, metadata !593), !dbg !2704
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2705
  ret i8* %3, !dbg !2706
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !2707 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2711, metadata !593), !dbg !2725
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2712, metadata !593), !dbg !2726
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2713, metadata !593), !dbg !2727
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2714, metadata !593), !dbg !2728
  %5 = tail call i32* @__errno_location() #1, !dbg !2729
  %6 = load i32, i32* %5, align 4, !dbg !2729, !tbaa !692
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !2715, metadata !593), !dbg !2730
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2731, !tbaa !601
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !2716, metadata !593), !dbg !2732
  %8 = icmp slt i32 %0, 0, !dbg !2733
  br i1 %8, label %9, label %10, !dbg !2735

; <label>:9:                                      ; preds = %4
  tail call void @abort() #14, !dbg !2736
  unreachable, !dbg !2736

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2737, !tbaa !692
  %12 = icmp sgt i32 %11, %0, !dbg !2738
  br i1 %12, label %34, label %13, !dbg !2739

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2740
  %15 = icmp ugt i32 %0, 2147483646, !dbg !2741
  br i1 %15, label %16, label %17, !dbg !2743

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !2744
  unreachable, !dbg !2744

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !2745
  %19 = select i1 %14, i8* null, i8* %18, !dbg !2745
  %20 = add nsw i32 %0, 1, !dbg !2747
  %21 = sext i32 %20 to i64, !dbg !2748
  %22 = shl nsw i64 %21, 4, !dbg !2749
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #10, !dbg !2750
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2750
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !2716, metadata !593), !dbg !2732
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2751, !tbaa !601
  br i1 %14, label %25, label %26, !dbg !2752

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !2753, !tbaa.struct !2755
  br label %26, !dbg !2756

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2757, !tbaa !692
  %28 = sext i32 %27 to i64, !dbg !2758
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2758
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2759
  %31 = sub nsw i32 %20, %27, !dbg !2760
  %32 = sext i32 %31 to i64, !dbg !2761
  %33 = shl nsw i64 %32, 4, !dbg !2762
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !2759
  store i32 %20, i32* @nslots, align 4, !dbg !2763, !tbaa !692
  br label %34, !dbg !2764

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !2716, metadata !593), !dbg !2732
  %36 = sext i32 %0 to i64, !dbg !2765
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2766
  %38 = load i64, i64* %37, align 8, !dbg !2766, !tbaa !2684
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !2720, metadata !593), !dbg !2767
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2768
  %40 = load i8*, i8** %39, align 8, !dbg !2768, !tbaa !2669
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !2722, metadata !593), !dbg !2769
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2770
  %42 = load i32, i32* %41, align 4, !dbg !2770, !tbaa !1478
  %43 = or i32 %42, 1, !dbg !2771
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !2723, metadata !593), !dbg !2772
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2773
  %45 = load i32, i32* %44, align 8, !dbg !2773, !tbaa !1416
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2774
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2775
  %48 = load i8*, i8** %47, align 8, !dbg !2775, !tbaa !1505
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2776
  %50 = load i8*, i8** %49, align 8, !dbg !2776, !tbaa !1508
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !2777
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !2724, metadata !593), !dbg !2778
  %52 = icmp ugt i64 %38, %51, !dbg !2779
  br i1 %52, label %63, label %53, !dbg !2781

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !2782
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2720, metadata !593), !dbg !2767
  store i64 %54, i64* %37, align 8, !dbg !2784, !tbaa !2684
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2785
  br i1 %55, label %57, label %56, !dbg !2787

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #10, !dbg !2788
  br label %57, !dbg !2788

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2608, metadata !593) #10, !dbg !2789
  %58 = tail call noalias i8* @xmalloc(i64 %54) #10, !dbg !2791
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !2722, metadata !593), !dbg !2769
  store i8* %58, i8** %39, align 8, !dbg !2792, !tbaa !2669
  %59 = load i32, i32* %44, align 8, !dbg !2793, !tbaa !1416
  %60 = load i8*, i8** %47, align 8, !dbg !2794, !tbaa !1505
  %61 = load i8*, i8** %49, align 8, !dbg !2795, !tbaa !1508
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !2796
  br label %63, !dbg !2797

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !2722, metadata !593), !dbg !2769
  store i32 %6, i32* %5, align 4, !dbg !2798, !tbaa !692
  ret i8* %64, !dbg !2799
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #7

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2800 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2804, metadata !593), !dbg !2807
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2805, metadata !593), !dbg !2808
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2806, metadata !593), !dbg !2809
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2810
  ret i8* %4, !dbg !2811
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !2812 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2816, metadata !593), !dbg !2817
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2701, metadata !593) #10, !dbg !2818
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2702, metadata !593) #10, !dbg !2820
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2821
  ret i8* %2, !dbg !2822
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !2823 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2827, metadata !593), !dbg !2829
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2828, metadata !593), !dbg !2830
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2804, metadata !593) #10, !dbg !2831
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2805, metadata !593) #10, !dbg !2833
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2806, metadata !593) #10, !dbg !2834
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2835
  ret i8* %3, !dbg !2836
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !2837 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2845, metadata !2851), !dbg !2852
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2841, metadata !593), !dbg !2854
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2842, metadata !593), !dbg !2855
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2843, metadata !593), !dbg !2856
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2857
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !2857
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2844, metadata !780), !dbg !2858
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2850, metadata !593) #10, !dbg !2859
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2860
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !2860
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2845, metadata !593) #10, !dbg !2852
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2845, metadata !2861) #10, !dbg !2852
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2852
  %8 = icmp eq i32 %1, 10, !dbg !2862
  br i1 %8, label %9, label %10, !dbg !2864

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14, !dbg !2865, !noalias !2866
  unreachable, !dbg !2865

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2845, metadata !2861) #10, !dbg !2852
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2869
  store i32 %1, i32* %11, align 8, !dbg !2869, !alias.scope !2866
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2869
  %13 = bitcast i32* %12 to i8*, !dbg !2869
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !2869
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !2870
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2844, metadata !780), !dbg !2858
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2871
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !2872
  ret i8* %14, !dbg !2873
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !2874 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2845, metadata !2851), !dbg !2883
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2878, metadata !593), !dbg !2885
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2879, metadata !593), !dbg !2886
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2880, metadata !593), !dbg !2887
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2881, metadata !593), !dbg !2888
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2889
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10, !dbg !2889
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2882, metadata !780), !dbg !2890
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2850, metadata !593) #10, !dbg !2891
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2892
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !2892
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2845, metadata !593) #10, !dbg !2883
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2845, metadata !2861) #10, !dbg !2883
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2883
  %9 = icmp eq i32 %1, 10, !dbg !2893
  br i1 %9, label %10, label %11, !dbg !2894

; <label>:10:                                     ; preds = %4
  tail call void @abort() #14, !dbg !2895, !noalias !2896
  unreachable, !dbg !2895

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2845, metadata !2861) #10, !dbg !2883
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2899
  store i32 %1, i32* %12, align 8, !dbg !2899, !alias.scope !2896
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2899
  %14 = bitcast i32* %13 to i8*, !dbg !2899
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #10, !dbg !2899
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !2900
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2882, metadata !780), !dbg !2890
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !2901
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10, !dbg !2902
  ret i8* %15, !dbg !2903
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !2904 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !2845, metadata !2851), !dbg !2910
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2908, metadata !593), !dbg !2913
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2909, metadata !593), !dbg !2914
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2841, metadata !593) #10, !dbg !2915
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2842, metadata !593) #10, !dbg !2916
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2843, metadata !593) #10, !dbg !2917
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2918
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10, !dbg !2918
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2844, metadata !780) #10, !dbg !2919
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2850, metadata !593) #10, !dbg !2920
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !2921
  call void @llvm.lifetime.start(i64 52, i8* nonnull %6), !dbg !2921
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2845, metadata !593) #10, !dbg !2910
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2845, metadata !2861) #10, !dbg !2910
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !2910
  %7 = icmp eq i32 %0, 10, !dbg !2922
  br i1 %7, label %8, label %9, !dbg !2923

; <label>:8:                                      ; preds = %2
  tail call void @abort() #14, !dbg !2924, !noalias !2925
  unreachable, !dbg !2924

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2845, metadata !2861) #10, !dbg !2910
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2928
  store i32 %0, i32* %10, align 8, !dbg !2928, !alias.scope !2925
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2928
  %12 = bitcast i32* %11 to i8*, !dbg !2928
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #10, !dbg !2928
  call void @llvm.lifetime.end(i64 52, i8* nonnull %6), !dbg !2929
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2844, metadata !780) #10, !dbg !2919
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !2930
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10, !dbg !2931
  ret i8* %13, !dbg !2932
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2933 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2845, metadata !2851), !dbg !2940
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2937, metadata !593), !dbg !2943
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2938, metadata !593), !dbg !2944
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2939, metadata !593), !dbg !2945
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2878, metadata !593) #10, !dbg !2946
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2879, metadata !593) #10, !dbg !2947
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2880, metadata !593) #10, !dbg !2948
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2881, metadata !593) #10, !dbg !2949
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2950
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !2950
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2882, metadata !780) #10, !dbg !2951
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2850, metadata !593) #10, !dbg !2952
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2953
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !2953
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2845, metadata !593) #10, !dbg !2940
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2845, metadata !2861) #10, !dbg !2940
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2940
  %8 = icmp eq i32 %0, 10, !dbg !2954
  br i1 %8, label %9, label %10, !dbg !2955

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14, !dbg !2956, !noalias !2957
  unreachable, !dbg !2956

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2845, metadata !2861) #10, !dbg !2940
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2960
  store i32 %0, i32* %11, align 8, !dbg !2960, !alias.scope !2957
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2960
  %13 = bitcast i32* %12 to i8*, !dbg !2960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !2960
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !2961
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2882, metadata !780) #10, !dbg !2951
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #10, !dbg !2962
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !2963
  ret i8* %14, !dbg !2964
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !2965 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2969, metadata !593), !dbg !2973
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2970, metadata !593), !dbg !2974
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2971, metadata !593), !dbg !2975
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2976
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10, !dbg !2976
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2977, !tbaa.struct !2978
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2972, metadata !780), !dbg !2979
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1436, metadata !593), !dbg !2980
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1437, metadata !593), !dbg !2982
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1438, metadata !593), !dbg !2983
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1439, metadata !593), !dbg !2984
  %6 = lshr i8 %2, 5, !dbg !2985
  %7 = zext i8 %6 to i64, !dbg !2985
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2986
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1440, metadata !593), !dbg !2987
  %9 = and i8 %2, 31, !dbg !2988
  %10 = zext i8 %9 to i32, !dbg !2989
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1442, metadata !593), !dbg !2990
  %11 = load i32, i32* %8, align 4, !dbg !2991, !tbaa !692
  %12 = lshr i32 %11, %10, !dbg !2992
  %13 = and i32 %12, 1, !dbg !2993
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1443, metadata !593), !dbg !2994
  %14 = xor i32 %13, 1, !dbg !2995
  %15 = shl i32 %14, %10, !dbg !2996
  %16 = xor i32 %15, %11, !dbg !2997
  store i32 %16, i32* %8, align 4, !dbg !2997, !tbaa !692
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2972, metadata !780), !dbg !2979
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2998
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10, !dbg !2999
  ret i8* %17, !dbg !3000
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !3001 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3005, metadata !593), !dbg !3007
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !3006, metadata !593), !dbg !3008
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2969, metadata !593) #10, !dbg !3009
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2970, metadata !593) #10, !dbg !3011
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2971, metadata !593) #10, !dbg !3012
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3013
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #10, !dbg !3013
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3014, !tbaa.struct !2978
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2972, metadata !780) #10, !dbg !3015
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1436, metadata !593) #10, !dbg !3016
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1437, metadata !593) #10, !dbg !3018
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1438, metadata !593) #10, !dbg !3019
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1439, metadata !593) #10, !dbg !3020
  %5 = lshr i8 %1, 5, !dbg !3021
  %6 = zext i8 %5 to i64, !dbg !3021
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3022
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !1440, metadata !593) #10, !dbg !3023
  %8 = and i8 %1, 31, !dbg !3024
  %9 = zext i8 %8 to i32, !dbg !3025
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1442, metadata !593) #10, !dbg !3026
  %10 = load i32, i32* %7, align 4, !dbg !3027, !tbaa !692
  %11 = lshr i32 %10, %9, !dbg !3028
  %12 = and i32 %11, 1, !dbg !3029
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !1443, metadata !593) #10, !dbg !3030
  %13 = xor i32 %12, 1, !dbg !3031
  %14 = shl i32 %13, %9, !dbg !3032
  %15 = xor i32 %14, %10, !dbg !3033
  store i32 %15, i32* %7, align 4, !dbg !3033, !tbaa !692
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2972, metadata !780) #10, !dbg !3015
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #10, !dbg !3034
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #10, !dbg !3035
  ret i8* %16, !dbg !3036
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !3037 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3039, metadata !593), !dbg !3040
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3005, metadata !593) #10, !dbg !3041
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3006, metadata !593) #10, !dbg !3043
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2969, metadata !593) #10, !dbg !3044
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2970, metadata !593) #10, !dbg !3046
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2971, metadata !593) #10, !dbg !3047
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3048
  call void @llvm.lifetime.start(i64 56, i8* nonnull %3) #10, !dbg !3048
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3049, !tbaa.struct !2978
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2972, metadata !780) #10, !dbg !3050
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1436, metadata !593) #10, !dbg !3051
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1437, metadata !593) #10, !dbg !3053
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1438, metadata !593) #10, !dbg !3054
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1439, metadata !593) #10, !dbg !3055
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3056
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !1440, metadata !593) #10, !dbg !3057
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1442, metadata !593) #10, !dbg !3058
  %5 = load i32, i32* %4, align 4, !dbg !3059, !tbaa !692
  %6 = or i32 %5, 67108864, !dbg !3060
  store i32 %6, i32* %4, align 4, !dbg !3060, !tbaa !692
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2972, metadata !780) #10, !dbg !3050
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #10, !dbg !3061
  call void @llvm.lifetime.end(i64 56, i8* nonnull %3) #10, !dbg !3062
  ret i8* %7, !dbg !3063
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !3064 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3066, metadata !593), !dbg !3068
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3067, metadata !593), !dbg !3069
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2969, metadata !593) #10, !dbg !3070
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2970, metadata !593) #10, !dbg !3072
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2971, metadata !593) #10, !dbg !3073
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3074
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #10, !dbg !3074
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3075, !tbaa.struct !2978
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2972, metadata !780) #10, !dbg !3076
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1436, metadata !593) #10, !dbg !3077
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1437, metadata !593) #10, !dbg !3079
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1438, metadata !593) #10, !dbg !3080
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1439, metadata !593) #10, !dbg !3081
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3082
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !1440, metadata !593) #10, !dbg !3083
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1442, metadata !593) #10, !dbg !3084
  %6 = load i32, i32* %5, align 4, !dbg !3085, !tbaa !692
  %7 = or i32 %6, 67108864, !dbg !3086
  store i32 %7, i32* %5, align 4, !dbg !3086, !tbaa !692
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2972, metadata !780) #10, !dbg !3076
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #10, !dbg !3087
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #10, !dbg !3088
  ret i8* %8, !dbg !3089
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !3090 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2845, metadata !2851), !dbg !3096
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3092, metadata !593), !dbg !3098
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3093, metadata !593), !dbg !3099
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3094, metadata !593), !dbg !3100
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3101
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10, !dbg !3101
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2850, metadata !593) #10, !dbg !3102
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3103
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !3103
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2845, metadata !593) #10, !dbg !3096
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2845, metadata !2861) #10, !dbg !3096
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !3096
  %9 = icmp eq i32 %1, 10, !dbg !3104
  br i1 %9, label %10, label %11, !dbg !3105

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !3106, !noalias !3107
  unreachable, !dbg !3106

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2845, metadata !2861) #10, !dbg !3096
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !3110
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !3110
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !3111
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3112
  store i32 %1, i32* %13, align 8, !dbg !3112
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3112
  %15 = bitcast i32* %14 to i8*, !dbg !3112
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !3112
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3095, metadata !780), !dbg !3113
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1436, metadata !593), !dbg !3114
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1437, metadata !593), !dbg !3116
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1438, metadata !593), !dbg !3117
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1439, metadata !593), !dbg !3118
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !3119
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !1440, metadata !593), !dbg !3120
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1442, metadata !593), !dbg !3121
  %17 = load i32, i32* %16, align 4, !dbg !3122, !tbaa !692
  %18 = or i32 %17, 67108864, !dbg !3123
  store i32 %18, i32* %16, align 4, !dbg !3123, !tbaa !692
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3095, metadata !780), !dbg !3113
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !3124
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10, !dbg !3125
  ret i8* %19, !dbg !3126
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !3127 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3131, metadata !593), !dbg !3135
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3132, metadata !593), !dbg !3136
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3133, metadata !593), !dbg !3137
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3134, metadata !593), !dbg !3138
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3139, metadata !593) #10, !dbg !3149
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3144, metadata !593) #10, !dbg !3151
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3145, metadata !593) #10, !dbg !3152
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3146, metadata !593) #10, !dbg !3153
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3147, metadata !593) #10, !dbg !3154
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3155
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !3155
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3156, !tbaa.struct !2978
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3148, metadata !780) #10, !dbg !3157
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1486, metadata !593) #10, !dbg !3158
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1487, metadata !593) #10, !dbg !3160
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1488, metadata !593) #10, !dbg !3161
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1486, metadata !593) #10, !dbg !3158
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1486, metadata !593) #10, !dbg !3158
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3162
  store i32 10, i32* %7, align 8, !dbg !3163, !tbaa !1416
  %8 = icmp ne i8* %1, null, !dbg !3164
  %9 = icmp ne i8* %2, null, !dbg !3165
  %10 = and i1 %8, %9, !dbg !3166
  br i1 %10, label %12, label %11, !dbg !3166

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14, !dbg !3167
  unreachable, !dbg !3167

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3168
  store i8* %1, i8** %13, align 8, !dbg !3169, !tbaa !1505
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3170
  store i8* %2, i8** %14, align 8, !dbg !3171, !tbaa !1508
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3148, metadata !780) #10, !dbg !3157
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #10, !dbg !3172
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !3173
  ret i8* %15, !dbg !3174
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !3140 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3139, metadata !593), !dbg !3175
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3144, metadata !593), !dbg !3176
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3145, metadata !593), !dbg !3177
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3146, metadata !593), !dbg !3178
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !3147, metadata !593), !dbg !3179
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3180
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10, !dbg !3180
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !3181, !tbaa.struct !2978
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3148, metadata !780), !dbg !3182
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1486, metadata !593) #10, !dbg !3183
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1487, metadata !593) #10, !dbg !3185
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1488, metadata !593) #10, !dbg !3186
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1486, metadata !593) #10, !dbg !3183
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1486, metadata !593) #10, !dbg !3183
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3187
  store i32 10, i32* %8, align 8, !dbg !3188, !tbaa !1416
  %9 = icmp ne i8* %1, null, !dbg !3189
  %10 = icmp ne i8* %2, null, !dbg !3190
  %11 = and i1 %9, %10, !dbg !3191
  br i1 %11, label %13, label %12, !dbg !3191

; <label>:12:                                     ; preds = %5
  tail call void @abort() #14, !dbg !3192
  unreachable, !dbg !3192

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3193
  store i8* %1, i8** %14, align 8, !dbg !3194, !tbaa !1505
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3195
  store i8* %2, i8** %15, align 8, !dbg !3196, !tbaa !1508
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3148, metadata !780), !dbg !3182
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3197
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10, !dbg !3198
  ret i8* %16, !dbg !3199
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !3200 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3204, metadata !593), !dbg !3207
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3205, metadata !593), !dbg !3208
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3206, metadata !593), !dbg !3209
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3131, metadata !593) #10, !dbg !3210
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3132, metadata !593) #10, !dbg !3212
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3133, metadata !593) #10, !dbg !3213
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3134, metadata !593) #10, !dbg !3214
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3139, metadata !593) #10, !dbg !3215
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3144, metadata !593) #10, !dbg !3217
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3145, metadata !593) #10, !dbg !3218
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3146, metadata !593) #10, !dbg !3219
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3147, metadata !593) #10, !dbg !3220
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3221
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10, !dbg !3221
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3222, !tbaa.struct !2978
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3148, metadata !780) #10, !dbg !3223
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1486, metadata !593) #10, !dbg !3224
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1487, metadata !593) #10, !dbg !3226
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1488, metadata !593) #10, !dbg !3227
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1486, metadata !593) #10, !dbg !3224
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1486, metadata !593) #10, !dbg !3224
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3228
  store i32 10, i32* %6, align 8, !dbg !3229, !tbaa !1416
  %7 = icmp ne i8* %0, null, !dbg !3230
  %8 = icmp ne i8* %1, null, !dbg !3231
  %9 = and i1 %7, %8, !dbg !3232
  br i1 %9, label %11, label %10, !dbg !3232

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !3233
  unreachable, !dbg !3233

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3234
  store i8* %0, i8** %12, align 8, !dbg !3235, !tbaa !1505
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3236
  store i8* %1, i8** %13, align 8, !dbg !3237, !tbaa !1508
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3148, metadata !780) #10, !dbg !3223
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !3238
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10, !dbg !3239
  ret i8* %14, !dbg !3240
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !3241 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3245, metadata !593), !dbg !3249
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3246, metadata !593), !dbg !3250
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3247, metadata !593), !dbg !3251
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3248, metadata !593), !dbg !3252
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3139, metadata !593) #10, !dbg !3253
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3144, metadata !593) #10, !dbg !3255
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3145, metadata !593) #10, !dbg !3256
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3146, metadata !593) #10, !dbg !3257
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3147, metadata !593) #10, !dbg !3258
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3259
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !3259
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3260, !tbaa.struct !2978
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3148, metadata !780) #10, !dbg !3261
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1486, metadata !593) #10, !dbg !3262
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1487, metadata !593) #10, !dbg !3264
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1488, metadata !593) #10, !dbg !3265
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1486, metadata !593) #10, !dbg !3262
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1486, metadata !593) #10, !dbg !3262
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3266
  store i32 10, i32* %7, align 8, !dbg !3267, !tbaa !1416
  %8 = icmp ne i8* %0, null, !dbg !3268
  %9 = icmp ne i8* %1, null, !dbg !3269
  %10 = and i1 %8, %9, !dbg !3270
  br i1 %10, label %12, label %11, !dbg !3270

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14, !dbg !3271
  unreachable, !dbg !3271

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3272
  store i8* %0, i8** %13, align 8, !dbg !3273, !tbaa !1505
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3274
  store i8* %1, i8** %14, align 8, !dbg !3275, !tbaa !1508
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3148, metadata !780) #10, !dbg !3261
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #10, !dbg !3276
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !3277
  ret i8* %15, !dbg !3278
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3279 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3283, metadata !593), !dbg !3286
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3284, metadata !593), !dbg !3287
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3285, metadata !593), !dbg !3288
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3289
  ret i8* %4, !dbg !3290
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !3291 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3295, metadata !593), !dbg !3297
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3296, metadata !593), !dbg !3298
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3283, metadata !593) #10, !dbg !3299
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3284, metadata !593) #10, !dbg !3301
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3285, metadata !593) #10, !dbg !3302
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !3303
  ret i8* %3, !dbg !3304
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !3305 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3309, metadata !593), !dbg !3311
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3310, metadata !593), !dbg !3312
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3283, metadata !593) #10, !dbg !3313
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3284, metadata !593) #10, !dbg !3315
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3285, metadata !593) #10, !dbg !3316
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !3317
  ret i8* %3, !dbg !3318
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !3319 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3323, metadata !593), !dbg !3324
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3309, metadata !593) #10, !dbg !3325
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3310, metadata !593) #10, !dbg !3327
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3283, metadata !593) #10, !dbg !3328
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3284, metadata !593) #10, !dbg !3330
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3285, metadata !593) #10, !dbg !3331
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !3332
  ret i8* %2, !dbg !3333
}

; Function Attrs: nounwind sspstrong uwtable
define %struct.timespec* @get_root_dev_ino(%struct.timespec*) local_unnamed_addr #6 !dbg !3334 {
  %2 = alloca %struct.stat, align 8
  tail call void @llvm.dbg.value(metadata %struct.timespec* %0, i64 0, metadata !3344, metadata !593), !dbg !3367
  %3 = bitcast %struct.stat* %2 to i8*, !dbg !3368
  call void @llvm.lifetime.start(i64 144, i8* nonnull %3) #10, !dbg !3368
  tail call void @llvm.dbg.value(metadata %struct.stat* %2, i64 0, metadata !3345, metadata !780), !dbg !3369
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.75, i64 0, i64 0), i64 0, metadata !3370, metadata !593) #10, !dbg !3377
  tail call void @llvm.dbg.value(metadata %struct.stat* %2, i64 0, metadata !3376, metadata !593) #10, !dbg !3377
  %4 = call i32 @__lxstat(i32 1, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.75, i64 0, i64 0), %struct.stat* nonnull %2) #10, !dbg !3380
  %5 = icmp eq i32 %4, 0, !dbg !3381
  br i1 %5, label %6, label %13, !dbg !3382

; <label>:6:                                      ; preds = %1
  %7 = getelementptr inbounds %struct.stat, %struct.stat* %2, i64 0, i32 1, !dbg !3383
  %8 = load i64, i64* %7, align 8, !dbg !3383, !tbaa !804
  %9 = getelementptr inbounds %struct.timespec, %struct.timespec* %0, i64 0, i32 0, !dbg !3384
  store i64 %8, i64* %9, align 8, !dbg !3385, !tbaa !955
  %10 = getelementptr inbounds %struct.stat, %struct.stat* %2, i64 0, i32 0, !dbg !3386
  %11 = load i64, i64* %10, align 8, !dbg !3386, !tbaa !810
  %12 = getelementptr inbounds %struct.timespec, %struct.timespec* %0, i64 0, i32 1, !dbg !3387
  store i64 %11, i64* %12, align 8, !dbg !3388, !tbaa !959
  br label %13, !dbg !3389

; <label>:13:                                     ; preds = %1, %6
  %14 = phi %struct.timespec* [ %0, %6 ], [ null, %1 ]
  call void @llvm.lifetime.end(i64 144, i8* nonnull %3) #10, !dbg !3390
  ret %struct.timespec* %14, !dbg !3390
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !3391 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3448, metadata !593), !dbg !3454
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3449, metadata !593), !dbg !3455
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3450, metadata !593), !dbg !3456
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3451, metadata !593), !dbg !3457
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3452, metadata !593), !dbg !3458
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !3453, metadata !593), !dbg !3459
  %7 = icmp eq i8* %1, null, !dbg !3460
  br i1 %7, label %10, label %8, !dbg !3462

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.76, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #10, !dbg !3463
  br label %12, !dbg !3463

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.77, i64 0, i64 0), i8* %2, i8* %3) #10, !dbg !3464
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.78, i64 0, i64 0), i32 5) #10, !dbg !3465
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #10, !dbg !3466
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.79, i64 0, i64 0), i32 5) #10, !dbg !3468
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #10, !dbg !3469
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
  ], !dbg !3470

; <label>:17:                                     ; preds = %12
  tail call void @abort() #14, !dbg !3471
  unreachable, !dbg !3471

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.80, i64 0, i64 0), i32 5) #10, !dbg !3473
  %20 = load i8*, i8** %4, align 8, !dbg !3473, !tbaa !601
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #10, !dbg !3474
  br label %146, !dbg !3476

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.81, i64 0, i64 0), i32 5) #10, !dbg !3477
  %24 = load i8*, i8** %4, align 8, !dbg !3477, !tbaa !601
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3477
  %26 = load i8*, i8** %25, align 8, !dbg !3477, !tbaa !601
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #10, !dbg !3478
  br label %146, !dbg !3479

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.82, i64 0, i64 0), i32 5) #10, !dbg !3480
  %30 = load i8*, i8** %4, align 8, !dbg !3480, !tbaa !601
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3480
  %32 = load i8*, i8** %31, align 8, !dbg !3480, !tbaa !601
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3480
  %34 = load i8*, i8** %33, align 8, !dbg !3480, !tbaa !601
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #10, !dbg !3481
  br label %146, !dbg !3482

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.83, i64 0, i64 0), i32 5) #10, !dbg !3483
  %38 = load i8*, i8** %4, align 8, !dbg !3483, !tbaa !601
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3483
  %40 = load i8*, i8** %39, align 8, !dbg !3483, !tbaa !601
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3483
  %42 = load i8*, i8** %41, align 8, !dbg !3483, !tbaa !601
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3483
  %44 = load i8*, i8** %43, align 8, !dbg !3483, !tbaa !601
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #10, !dbg !3484
  br label %146, !dbg !3485

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.84, i64 0, i64 0), i32 5) #10, !dbg !3486
  %48 = load i8*, i8** %4, align 8, !dbg !3486, !tbaa !601
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3486
  %50 = load i8*, i8** %49, align 8, !dbg !3486, !tbaa !601
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3486
  %52 = load i8*, i8** %51, align 8, !dbg !3486, !tbaa !601
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3486
  %54 = load i8*, i8** %53, align 8, !dbg !3486, !tbaa !601
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3486
  %56 = load i8*, i8** %55, align 8, !dbg !3486, !tbaa !601
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #10, !dbg !3487
  br label %146, !dbg !3488

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.85, i64 0, i64 0), i32 5) #10, !dbg !3489
  %60 = load i8*, i8** %4, align 8, !dbg !3489, !tbaa !601
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3489
  %62 = load i8*, i8** %61, align 8, !dbg !3489, !tbaa !601
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3489
  %64 = load i8*, i8** %63, align 8, !dbg !3489, !tbaa !601
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3489
  %66 = load i8*, i8** %65, align 8, !dbg !3489, !tbaa !601
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3489
  %68 = load i8*, i8** %67, align 8, !dbg !3489, !tbaa !601
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3489
  %70 = load i8*, i8** %69, align 8, !dbg !3489, !tbaa !601
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #10, !dbg !3490
  br label %146, !dbg !3491

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.86, i64 0, i64 0), i32 5) #10, !dbg !3492
  %74 = load i8*, i8** %4, align 8, !dbg !3492, !tbaa !601
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3492
  %76 = load i8*, i8** %75, align 8, !dbg !3492, !tbaa !601
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3492
  %78 = load i8*, i8** %77, align 8, !dbg !3492, !tbaa !601
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3492
  %80 = load i8*, i8** %79, align 8, !dbg !3492, !tbaa !601
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3492
  %82 = load i8*, i8** %81, align 8, !dbg !3492, !tbaa !601
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3492
  %84 = load i8*, i8** %83, align 8, !dbg !3492, !tbaa !601
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3492
  %86 = load i8*, i8** %85, align 8, !dbg !3492, !tbaa !601
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #10, !dbg !3493
  br label %146, !dbg !3494

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.87, i64 0, i64 0), i32 5) #10, !dbg !3495
  %90 = load i8*, i8** %4, align 8, !dbg !3495, !tbaa !601
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3495
  %92 = load i8*, i8** %91, align 8, !dbg !3495, !tbaa !601
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3495
  %94 = load i8*, i8** %93, align 8, !dbg !3495, !tbaa !601
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3495
  %96 = load i8*, i8** %95, align 8, !dbg !3495, !tbaa !601
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3495
  %98 = load i8*, i8** %97, align 8, !dbg !3495, !tbaa !601
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3495
  %100 = load i8*, i8** %99, align 8, !dbg !3495, !tbaa !601
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3495
  %102 = load i8*, i8** %101, align 8, !dbg !3495, !tbaa !601
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3495
  %104 = load i8*, i8** %103, align 8, !dbg !3495, !tbaa !601
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #10, !dbg !3496
  br label %146, !dbg !3497

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.88, i64 0, i64 0), i32 5) #10, !dbg !3498
  %108 = load i8*, i8** %4, align 8, !dbg !3498, !tbaa !601
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3498
  %110 = load i8*, i8** %109, align 8, !dbg !3498, !tbaa !601
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3498
  %112 = load i8*, i8** %111, align 8, !dbg !3498, !tbaa !601
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3498
  %114 = load i8*, i8** %113, align 8, !dbg !3498, !tbaa !601
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3498
  %116 = load i8*, i8** %115, align 8, !dbg !3498, !tbaa !601
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3498
  %118 = load i8*, i8** %117, align 8, !dbg !3498, !tbaa !601
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3498
  %120 = load i8*, i8** %119, align 8, !dbg !3498, !tbaa !601
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3498
  %122 = load i8*, i8** %121, align 8, !dbg !3498, !tbaa !601
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3498
  %124 = load i8*, i8** %123, align 8, !dbg !3498, !tbaa !601
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #10, !dbg !3499
  br label %146, !dbg !3500

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.89, i64 0, i64 0), i32 5) #10, !dbg !3501
  %128 = load i8*, i8** %4, align 8, !dbg !3501, !tbaa !601
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3501
  %130 = load i8*, i8** %129, align 8, !dbg !3501, !tbaa !601
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3501
  %132 = load i8*, i8** %131, align 8, !dbg !3501, !tbaa !601
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3501
  %134 = load i8*, i8** %133, align 8, !dbg !3501, !tbaa !601
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3501
  %136 = load i8*, i8** %135, align 8, !dbg !3501, !tbaa !601
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3501
  %138 = load i8*, i8** %137, align 8, !dbg !3501, !tbaa !601
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3501
  %140 = load i8*, i8** %139, align 8, !dbg !3501, !tbaa !601
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3501
  %142 = load i8*, i8** %141, align 8, !dbg !3501, !tbaa !601
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3501
  %144 = load i8*, i8** %143, align 8, !dbg !3501, !tbaa !601
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #10, !dbg !3502
  br label %146, !dbg !3503

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !3504
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !3505 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3509, metadata !593), !dbg !3515
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3510, metadata !593), !dbg !3516
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3511, metadata !593), !dbg !3517
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3512, metadata !593), !dbg !3518
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3513, metadata !593), !dbg !3519
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3514, metadata !593), !dbg !3520
  br label %6, !dbg !3521

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3514, metadata !593), !dbg !3520
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3523
  %9 = load i8*, i8** %8, align 8, !dbg !3523, !tbaa !601
  %10 = icmp eq i8* %9, null, !dbg !3526
  %11 = add i64 %7, 1, !dbg !3528
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !3514, metadata !593), !dbg !3520
  br i1 %10, label %12, label %6, !dbg !3526, !llvm.loop !3530

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3533
  ret void, !dbg !3534
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !3535 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3546, metadata !593), !dbg !3554
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3547, metadata !593), !dbg !3555
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3548, metadata !593), !dbg !3556
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3549, metadata !593), !dbg !3557
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !3550, metadata !593), !dbg !3558
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3559
  call void @llvm.lifetime.start(i64 80, i8* nonnull %7) #10, !dbg !3559
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3552, metadata !593), !dbg !3560
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3551, metadata !593), !dbg !3561
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3551, metadata !593), !dbg !3561
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %11 = load i32, i32* %8, align 8, !dbg !3562
  %12 = icmp ult i32 %11, 41, !dbg !3562
  br i1 %12, label %13, label %18, !dbg !3562

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !3566
  %15 = sext i32 %11 to i64, !dbg !3566
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3566
  %17 = add i32 %11, 8, !dbg !3566
  store i32 %17, i32* %8, align 8, !dbg !3566
  br label %21, !dbg !3566

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !3568
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3568
  store i8* %20, i8** %10, align 8, !dbg !3568
  br label %21, !dbg !3568

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ], !dbg !3562
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3570
  %25 = load i8*, i8** %24, align 8, !dbg !3570
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3572
  store i8* %25, i8** %26, align 16, !dbg !3573, !tbaa !601
  %27 = icmp eq i8* %25, null, !dbg !3574
  br i1 %27, label %30, label %28, !dbg !3575

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3551, metadata !593), !dbg !3561
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3551, metadata !593), !dbg !3561
  %29 = icmp ult i32 %22, 41, !dbg !3562
  br i1 %29, label %35, label %32, !dbg !3562

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3577
  call void @llvm.lifetime.end(i64 80, i8* nonnull %7) #10, !dbg !3578
  ret void, !dbg !3578

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !3568
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3568
  store i8* %34, i8** %10, align 8, !dbg !3568
  br label %40, !dbg !3568

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !3566
  %37 = sext i32 %22 to i64, !dbg !3566
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3566
  %39 = add i32 %22, 8, !dbg !3566
  store i32 %39, i32* %8, align 8, !dbg !3566
  br label %40, !dbg !3566

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ], !dbg !3562
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3570
  %44 = load i8*, i8** %43, align 8, !dbg !3570
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3572
  store i8* %44, i8** %45, align 8, !dbg !3573, !tbaa !601
  %46 = icmp eq i8* %44, null, !dbg !3574
  br i1 %46, label %30, label %47, !dbg !3575

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3551, metadata !593), !dbg !3561
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3551, metadata !593), !dbg !3561
  %48 = icmp ult i32 %41, 41, !dbg !3562
  br i1 %48, label %52, label %49, !dbg !3562

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !3568
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3568
  store i8* %51, i8** %10, align 8, !dbg !3568
  br label %57, !dbg !3568

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !3566
  %54 = sext i32 %41 to i64, !dbg !3566
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3566
  %56 = add i32 %41, 8, !dbg !3566
  store i32 %56, i32* %8, align 8, !dbg !3566
  br label %57, !dbg !3566

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ], !dbg !3562
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3570
  %61 = load i8*, i8** %60, align 8, !dbg !3570
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3572
  store i8* %61, i8** %62, align 16, !dbg !3573, !tbaa !601
  %63 = icmp eq i8* %61, null, !dbg !3574
  br i1 %63, label %30, label %64, !dbg !3575

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3551, metadata !593), !dbg !3561
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3551, metadata !593), !dbg !3561
  %65 = icmp ult i32 %58, 41, !dbg !3562
  br i1 %65, label %69, label %66, !dbg !3562

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !3568
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3568
  store i8* %68, i8** %10, align 8, !dbg !3568
  br label %74, !dbg !3568

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !3566
  %71 = sext i32 %58 to i64, !dbg !3566
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3566
  %73 = add i32 %58, 8, !dbg !3566
  store i32 %73, i32* %8, align 8, !dbg !3566
  br label %74, !dbg !3566

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ], !dbg !3562
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3570
  %78 = load i8*, i8** %77, align 8, !dbg !3570
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3572
  store i8* %78, i8** %79, align 8, !dbg !3573, !tbaa !601
  %80 = icmp eq i8* %78, null, !dbg !3574
  br i1 %80, label %30, label %81, !dbg !3575

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3551, metadata !593), !dbg !3561
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3551, metadata !593), !dbg !3561
  %82 = icmp ult i32 %75, 41, !dbg !3562
  br i1 %82, label %86, label %83, !dbg !3562

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !3568
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3568
  store i8* %85, i8** %10, align 8, !dbg !3568
  br label %91, !dbg !3568

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !3566
  %88 = sext i32 %75 to i64, !dbg !3566
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3566
  %90 = add i32 %75, 8, !dbg !3566
  store i32 %90, i32* %8, align 8, !dbg !3566
  br label %91, !dbg !3566

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ], !dbg !3562
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3570
  %95 = load i8*, i8** %94, align 8, !dbg !3570
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3572
  store i8* %95, i8** %96, align 16, !dbg !3573, !tbaa !601
  %97 = icmp eq i8* %95, null, !dbg !3574
  br i1 %97, label %30, label %98, !dbg !3575

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3551, metadata !593), !dbg !3561
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3551, metadata !593), !dbg !3561
  %99 = icmp ult i32 %92, 41, !dbg !3562
  br i1 %99, label %103, label %100, !dbg !3562

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !3568
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3568
  store i8* %102, i8** %10, align 8, !dbg !3568
  br label %108, !dbg !3568

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !3566
  %105 = sext i32 %92 to i64, !dbg !3566
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3566
  %107 = add i32 %92, 8, !dbg !3566
  store i32 %107, i32* %8, align 8, !dbg !3566
  br label %108, !dbg !3566

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3570
  %111 = load i8*, i8** %110, align 8, !dbg !3570
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3572
  store i8* %111, i8** %112, align 8, !dbg !3573, !tbaa !601
  %113 = icmp eq i8* %111, null, !dbg !3574
  br i1 %113, label %30, label %114, !dbg !3575

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3551, metadata !593), !dbg !3561
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3551, metadata !593), !dbg !3561
  %115 = load i8*, i8** %10, align 8, !dbg !3568
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3568
  store i8* %116, i8** %10, align 8, !dbg !3568
  %117 = bitcast i8* %115 to i8**, !dbg !3570
  %118 = load i8*, i8** %117, align 8, !dbg !3570
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3572
  store i8* %118, i8** %119, align 16, !dbg !3573, !tbaa !601
  %120 = icmp eq i8* %118, null, !dbg !3574
  br i1 %120, label %30, label %121, !dbg !3575

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3551, metadata !593), !dbg !3561
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3551, metadata !593), !dbg !3561
  %122 = load i8*, i8** %10, align 8, !dbg !3568
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3568
  store i8* %123, i8** %10, align 8, !dbg !3568
  %124 = bitcast i8* %122 to i8**, !dbg !3570
  %125 = load i8*, i8** %124, align 8, !dbg !3570
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3572
  store i8* %125, i8** %126, align 8, !dbg !3573, !tbaa !601
  %127 = icmp eq i8* %125, null, !dbg !3574
  br i1 %127, label %30, label %128, !dbg !3575

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3551, metadata !593), !dbg !3561
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3551, metadata !593), !dbg !3561
  %129 = load i8*, i8** %10, align 8, !dbg !3568
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3568
  store i8* %130, i8** %10, align 8, !dbg !3568
  %131 = bitcast i8* %129 to i8**, !dbg !3570
  %132 = load i8*, i8** %131, align 8, !dbg !3570
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3572
  store i8* %132, i8** %133, align 16, !dbg !3573, !tbaa !601
  %134 = icmp eq i8* %132, null, !dbg !3574
  br i1 %134, label %30, label %135, !dbg !3575

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3551, metadata !593), !dbg !3561
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3551, metadata !593), !dbg !3561
  %136 = load i8*, i8** %10, align 8, !dbg !3568
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3568
  store i8* %137, i8** %10, align 8, !dbg !3568
  %138 = bitcast i8* %136 to i8**, !dbg !3570
  %139 = load i8*, i8** %138, align 8, !dbg !3570
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3572
  store i8* %139, i8** %140, align 8, !dbg !3573, !tbaa !601
  %141 = icmp eq i8* %139, null, !dbg !3574
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3551, metadata !593), !dbg !3561
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3551, metadata !593), !dbg !3561
  %142 = select i1 %141, i64 9, i64 10, !dbg !3575
  br label %30, !dbg !3575
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !3579 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3583, metadata !593), !dbg !3593
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3584, metadata !593), !dbg !3594
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3585, metadata !593), !dbg !3595
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3586, metadata !593), !dbg !3596
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3597
  call void @llvm.lifetime.start(i64 24, i8* nonnull %6) #10, !dbg !3597
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3587, metadata !593), !dbg !3598
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3599
  call void @llvm.va_start(i8* nonnull %6), !dbg !3599
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3600
  call void @llvm.va_end(i8* nonnull %6), !dbg !3601
  call void @llvm.lifetime.end(i64 24, i8* nonnull %6) #10, !dbg !3602
  ret void, !dbg !3602
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #10

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !3603 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.92, i64 0, i64 0), i32 5) #10, !dbg !3604
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.93, i64 0, i64 0)) #10, !dbg !3605
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.94, i64 0, i64 0), i32 5) #10, !dbg !3607
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.95, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.96, i64 0, i64 0)) #10, !dbg !3608
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19, i64 0, i64 0), i32 5) #10, !dbg !3609
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3609, !tbaa !601
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #10, !dbg !3610
  ret void, !dbg !3611
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #12 !dbg !3612 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3614, metadata !593), !dbg !3616
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3615, metadata !593), !dbg !3617
  %3 = udiv i64 9223372036854775807, %1, !dbg !3618
  %4 = icmp ult i64 %3, %0, !dbg !3618
  br i1 %4, label %5, label %6, !dbg !3620

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !3621
  unreachable, !dbg !3621

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3622
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3623, metadata !593) #10, !dbg !3630
  %8 = tail call noalias i8* @malloc(i64 %7) #10, !dbg !3632
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3629, metadata !593) #10, !dbg !3633
  %9 = icmp eq i8* %8, null, !dbg !3634
  %10 = icmp ne i64 %7, 0, !dbg !3636
  %11 = and i1 %10, %9, !dbg !3638
  br i1 %11, label %12, label %13, !dbg !3638

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #14, !dbg !3639
  unreachable, !dbg !3639

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !3640
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !3624 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3623, metadata !593), !dbg !3641
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3642
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3629, metadata !593), !dbg !3643
  %3 = icmp eq i8* %2, null, !dbg !3644
  %4 = icmp ne i64 %0, 0, !dbg !3645
  %5 = and i1 %4, %3, !dbg !3646
  br i1 %5, label %6, label %7, !dbg !3646

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3647
  unreachable, !dbg !3647

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3648
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #12 !dbg !3649 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3653, metadata !593), !dbg !3656
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3654, metadata !593), !dbg !3657
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3655, metadata !593), !dbg !3658
  %4 = udiv i64 9223372036854775807, %2, !dbg !3659
  %5 = icmp ult i64 %4, %1, !dbg !3659
  br i1 %5, label %6, label %7, !dbg !3661

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #14, !dbg !3662
  unreachable, !dbg !3662

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3663
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3664, metadata !593) #10, !dbg !3670
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !3669, metadata !593) #10, !dbg !3672
  %9 = icmp eq i64 %8, 0, !dbg !3673
  %10 = icmp ne i8* %0, null, !dbg !3675
  %11 = and i1 %10, %9, !dbg !3677
  br i1 %11, label %12, label %13, !dbg !3677

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #10, !dbg !3678
  br label %19, !dbg !3680

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #10, !dbg !3681
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !3664, metadata !593) #10, !dbg !3670
  %15 = icmp eq i8* %14, null, !dbg !3682
  %16 = icmp ne i64 %8, 0, !dbg !3684
  %17 = and i1 %16, %15, !dbg !3686
  br i1 %17, label %18, label %19, !dbg !3686

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !3687
  unreachable, !dbg !3687

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !3688
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !3665 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3664, metadata !593), !dbg !3689
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3669, metadata !593), !dbg !3690
  %3 = icmp eq i64 %1, 0, !dbg !3691
  %4 = icmp ne i8* %0, null, !dbg !3692
  %5 = and i1 %4, %3, !dbg !3693
  br i1 %5, label %6, label %7, !dbg !3693

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #10, !dbg !3694
  br label %13, !dbg !3695

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #10, !dbg !3696
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3664, metadata !593), !dbg !3689
  %9 = icmp eq i8* %8, null, !dbg !3697
  %10 = icmp ne i64 %1, 0, !dbg !3698
  %11 = and i1 %10, %9, !dbg !3699
  br i1 %11, label %12, label %13, !dbg !3699

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #14, !dbg !3700
  unreachable, !dbg !3700

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !3701
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #12 !dbg !551 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !556, metadata !593), !dbg !3702
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !557, metadata !593), !dbg !3703
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !558, metadata !593), !dbg !3704
  %4 = load i64, i64* %1, align 8, !dbg !3705, !tbaa !1198
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !559, metadata !593), !dbg !3706
  %5 = icmp eq i8* %0, null, !dbg !3707
  br i1 %5, label %6, label %13, !dbg !3709

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3710
  br i1 %7, label %8, label %17, !dbg !3713

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3714
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !559, metadata !593), !dbg !3706
  %10 = icmp ugt i64 %2, 128, !dbg !3716
  %11 = zext i1 %10 to i64, !dbg !3716
  %12 = add nuw nsw i64 %9, %11, !dbg !3717
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !559, metadata !593), !dbg !3706
  br label %17, !dbg !3718

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !3719
  %15 = icmp ugt i64 %14, %4, !dbg !3722
  br i1 %15, label %20, label %16, !dbg !3723

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !3724
  unreachable, !dbg !3724

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !559, metadata !593), !dbg !3706
  store i64 %18, i64* %1, align 8, !dbg !3725, !tbaa !1198
  %19 = mul i64 %18, %2, !dbg !3726
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3664, metadata !593) #10, !dbg !3727
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3669, metadata !593) #10, !dbg !3729
  br label %27, !dbg !3730

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !3731
  %22 = add i64 %4, 1, !dbg !3732
  %23 = add i64 %22, %21, !dbg !3733
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !559, metadata !593), !dbg !3706
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !559, metadata !593), !dbg !3706
  store i64 %23, i64* %1, align 8, !dbg !3725, !tbaa !1198
  %24 = mul i64 %23, %2, !dbg !3726
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3664, metadata !593) #10, !dbg !3727
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3669, metadata !593) #10, !dbg !3729
  %25 = icmp eq i64 %24, 0, !dbg !3734
  br i1 %25, label %26, label %27, !dbg !3730

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #10, !dbg !3735
  br label %34, !dbg !3736

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #10, !dbg !3737
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3664, metadata !593) #10, !dbg !3727
  %30 = icmp eq i8* %29, null, !dbg !3738
  %31 = icmp ne i64 %28, 0, !dbg !3739
  %32 = and i1 %31, %30, !dbg !3740
  br i1 %32, label %33, label %34, !dbg !3740

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #14, !dbg !3741
  unreachable, !dbg !3741

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !3742
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #12 !dbg !3743 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3745, metadata !593), !dbg !3746
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3623, metadata !593) #10, !dbg !3747
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3749
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3629, metadata !593) #10, !dbg !3750
  %3 = icmp eq i8* %2, null, !dbg !3751
  %4 = icmp ne i64 %0, 0, !dbg !3752
  %5 = and i1 %4, %3, !dbg !3753
  br i1 %5, label %6, label %7, !dbg !3753

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3754
  unreachable, !dbg !3754

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3755
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !3756 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3760, metadata !593), !dbg !3762
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !3761, metadata !593), !dbg !3763
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !556, metadata !593) #10, !dbg !3764
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !557, metadata !593) #10, !dbg !3766
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !558, metadata !593) #10, !dbg !3767
  %3 = load i64, i64* %1, align 8, !dbg !3768, !tbaa !1198
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !559, metadata !593) #10, !dbg !3769
  %4 = icmp eq i8* %0, null, !dbg !3770
  br i1 %4, label %5, label %8, !dbg !3771

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3772
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !559, metadata !593) #10, !dbg !3769
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !559, metadata !593) #10, !dbg !3769
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3773
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !559, metadata !593) #10, !dbg !3769
  store i64 %7, i64* %1, align 8, !dbg !3774, !tbaa !1198
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3664, metadata !593) #10, !dbg !3775
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3669, metadata !593) #10, !dbg !3777
  br label %17, !dbg !3778

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !3779
  br i1 %9, label %11, label %10, !dbg !3780

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #14, !dbg !3781
  unreachable, !dbg !3781

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !3782
  %13 = add i64 %3, 1, !dbg !3783
  %14 = add i64 %13, %12, !dbg !3784
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !559, metadata !593) #10, !dbg !3769
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !559, metadata !593) #10, !dbg !3769
  store i64 %14, i64* %1, align 8, !dbg !3774, !tbaa !1198
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3664, metadata !593) #10, !dbg !3775
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3669, metadata !593) #10, !dbg !3777
  %15 = icmp eq i64 %14, 0, !dbg !3785
  br i1 %15, label %16, label %17, !dbg !3778

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #10, !dbg !3786
  br label %24, !dbg !3787

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #10, !dbg !3788
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !3664, metadata !593) #10, !dbg !3775
  %20 = icmp eq i8* %19, null, !dbg !3789
  %21 = icmp ne i64 %18, 0, !dbg !3790
  %22 = and i1 %21, %20, !dbg !3791
  br i1 %22, label %23, label %24, !dbg !3791

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #14, !dbg !3792
  unreachable, !dbg !3792

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !3793
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !3794 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3796, metadata !593), !dbg !3797
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3623, metadata !593) #10, !dbg !3798
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3800
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3629, metadata !593) #10, !dbg !3801
  %3 = icmp eq i8* %2, null, !dbg !3802
  %4 = icmp ne i64 %0, 0, !dbg !3803
  %5 = and i1 %4, %3, !dbg !3804
  br i1 %5, label %6, label %7, !dbg !3804

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3805
  unreachable, !dbg !3805

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !3806
  ret i8* %2, !dbg !3807
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !3808 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3810, metadata !593), !dbg !3813
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3811, metadata !593), !dbg !3814
  %3 = udiv i64 9223372036854775807, %1, !dbg !3815
  %4 = icmp ult i64 %3, %0, !dbg !3815
  br i1 %4, label %8, label %5, !dbg !3817

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #10, !dbg !3818
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3812, metadata !593), !dbg !3820
  %7 = icmp eq i8* %6, null, !dbg !3821
  br i1 %7, label %8, label %9, !dbg !3822

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #14, !dbg !3824
  unreachable, !dbg !3824

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !3825
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !3826 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3830, metadata !593), !dbg !3832
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3831, metadata !593), !dbg !3833
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3623, metadata !593) #10, !dbg !3834
  %3 = tail call noalias i8* @malloc(i64 %1) #10, !dbg !3836
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3629, metadata !593) #10, !dbg !3837
  %4 = icmp eq i8* %3, null, !dbg !3838
  %5 = icmp ne i64 %1, 0, !dbg !3839
  %6 = and i1 %5, %4, !dbg !3840
  br i1 %6, label %7, label %8, !dbg !3840

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !3841
  unreachable, !dbg !3841

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !3842
  ret i8* %3, !dbg !3843
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !3844 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3846, metadata !593), !dbg !3847
  %2 = tail call i64 @strlen(i8* %0) #13, !dbg !3848
  %3 = add i64 %2, 1, !dbg !3849
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3830, metadata !593) #10, !dbg !3850
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3831, metadata !593) #10, !dbg !3853
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3623, metadata !593) #10, !dbg !3854
  %4 = tail call noalias i8* @malloc(i64 %3) #10, !dbg !3856
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !3629, metadata !593) #10, !dbg !3857
  %5 = icmp eq i8* %4, null, !dbg !3858
  %6 = icmp ne i64 %3, 0, !dbg !3859
  %7 = and i1 %6, %5, !dbg !3860
  br i1 %7, label %8, label %9, !dbg !3860

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3861
  unreachable, !dbg !3861

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #10, !dbg !3862
  ret i8* %4, !dbg !3863
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !3864 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3866, !tbaa !692
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.107, i64 0, i64 0), i32 5) #10, !dbg !3867
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.108, i64 0, i64 0), i8* %2) #10, !dbg !3868
  tail call void @abort() #14, !dbg !3870
  unreachable, !dbg !3870
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @xgetcwd() local_unnamed_addr #6 !dbg !3871 {
  %1 = tail call i8* @getcwd(i8* null, i64 0) #10, !dbg !3875
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3874, metadata !593), !dbg !3876
  %2 = icmp eq i8* %1, null, !dbg !3877
  br i1 %2, label %3, label %8, !dbg !3879

; <label>:3:                                      ; preds = %0
  %4 = tail call i32* @__errno_location() #1, !dbg !3880
  %5 = load i32, i32* %4, align 4, !dbg !3880, !tbaa !692
  %6 = icmp eq i32 %5, 12, !dbg !3882
  br i1 %6, label %7, label %8, !dbg !3883

; <label>:7:                                      ; preds = %3
  tail call void @xalloc_die() #14, !dbg !3885
  unreachable, !dbg !3885

; <label>:8:                                      ; preds = %0, %3
  ret i8* %1, !dbg !3886
}

; Function Attrs: nounwind
declare i8* @getcwd(i8*, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !3887 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3890, metadata !593), !dbg !3896
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3891, metadata !593), !dbg !3897
  %3 = icmp eq i64 %0, 0, !dbg !3898
  %4 = icmp eq i64 %1, 0, !dbg !3899
  %5 = or i1 %3, %4, !dbg !3901
  br i1 %5, label %12, label %6, !dbg !3901

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3902
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3893, metadata !593), !dbg !3903
  %8 = udiv i64 %7, %1, !dbg !3904
  %9 = icmp eq i64 %8, %0, !dbg !3906
  br i1 %9, label %12, label %10, !dbg !3907

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #1, !dbg !3908
  store i32 12, i32* %11, align 4, !dbg !3910, !tbaa !692
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3890, metadata !593), !dbg !3896
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !3891, metadata !593), !dbg !3897
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #10, !dbg !3911
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !3892, metadata !593), !dbg !3912
  br label %16, !dbg !3913

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !3914
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !3915 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !3932, metadata !593), !dbg !3941
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3933, metadata !593), !dbg !3942
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3934, metadata !593), !dbg !3943
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !3935, metadata !593), !dbg !3944
  %6 = bitcast i32* %5 to i8*, !dbg !3945
  call void @llvm.lifetime.start(i64 4, i8* nonnull %6) #10, !dbg !3945
  %7 = icmp eq i32* %0, null, !dbg !3946
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !3932, metadata !593), !dbg !3941
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3948
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !3932, metadata !593), !dbg !3941
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #10, !dbg !3949
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !3936, metadata !593), !dbg !3950
  %10 = icmp ugt i64 %9, -3, !dbg !3951
  %11 = icmp ne i64 %2, 0, !dbg !3952
  %12 = and i1 %11, %10, !dbg !3954
  br i1 %12, label %13, label %18, !dbg !3954

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #10, !dbg !3955
  br i1 %14, label %18, label %15, !dbg !3957

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3959, !tbaa !761
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !3938, metadata !593), !dbg !3960
  %17 = zext i8 %16 to i32, !dbg !3961
  store i32 %17, i32* %8, align 4, !dbg !3962, !tbaa !692
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end(i64 4, i8* nonnull %6) #10, !dbg !3963
  ret i64 %19, !dbg !3963
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !3964 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4009, metadata !593), !dbg !4014
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #10, !dbg !4015
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4016, metadata !593), !dbg !4020
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4022
  %4 = load i32, i32* %3, align 8, !dbg !4022, !tbaa !4023
  %5 = and i32 %4, 32, !dbg !4022
  %6 = icmp eq i32 %5, 0, !dbg !4025
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #10, !dbg !4026
  %8 = icmp ne i32 %7, 0, !dbg !4027
  br i1 %6, label %9, label %19, !dbg !4028

; <label>:9:                                      ; preds = %1
  %10 = xor i1 %8, true, !dbg !4030
  %11 = icmp ne i64 %2, 0, !dbg !4030
  %12 = or i1 %11, %10, !dbg !4030
  %13 = sext i1 %8 to i32, !dbg !4030
  br i1 %12, label %22, label %14, !dbg !4030

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #1, !dbg !4032
  %16 = load i32, i32* %15, align 4, !dbg !4032, !tbaa !692
  %17 = icmp ne i32 %16, 9, !dbg !4034
  %18 = sext i1 %17 to i32, !dbg !4034
  br label %22, !dbg !4034

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !4036

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #1, !dbg !4038
  store i32 0, i32* %21, align 4, !dbg !4040, !tbaa !692
  br label %22, !dbg !4038

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !4041
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !4042 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4047, metadata !593), !dbg !4067
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !4048, metadata !593), !dbg !4068
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #10, !dbg !4069
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4049, metadata !593), !dbg !4070
  %3 = icmp eq i8* %2, null, !dbg !4071
  br i1 %3, label %15, label %4, !dbg !4072

; <label>:4:                                      ; preds = %1
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4057, metadata !593), !dbg !4073
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4058, metadata !593), !dbg !4074
  %5 = load i8, i8* %2, align 1, !dbg !4075, !tbaa !761
  %6 = icmp eq i8 %5, 67, !dbg !4077
  br i1 %6, label %7, label %11, !dbg !4080

; <label>:7:                                      ; preds = %4
  %8 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !4082
  %9 = load i8, i8* %8, align 1, !dbg !4082, !tbaa !761
  %10 = icmp eq i8 %9, 0, !dbg !4085
  br i1 %10, label %14, label %11, !dbg !4087

; <label>:11:                                     ; preds = %4, %7
  tail call void @llvm.dbg.value(metadata i64 5, i64 0, metadata !4063, metadata !593), !dbg !4089
  %12 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.119, i64 0, i64 0)) #10, !dbg !4090
  %13 = icmp eq i32 %12, 0, !dbg !4092
  br i1 %13, label %14, label %15, !dbg !4094

; <label>:14:                                     ; preds = %11, %7
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4048, metadata !593), !dbg !4068
  br label %15, !dbg !4096

; <label>:15:                                     ; preds = %1, %11, %14
  %16 = phi i1 [ false, %14 ], [ true, %11 ], [ true, %1 ]
  ret i1 %16, !dbg !4097
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !4098 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !4110, metadata !593), !dbg !4184
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !4177, metadata !593), !dbg !4186
  %3 = tail call i8* @nl_langinfo(i32 14) #10, !dbg !4187
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4102, metadata !593), !dbg !4188
  %4 = icmp eq i8* %3, null, !dbg !4189
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.122, i64 0, i64 0), i8* %3, !dbg !4191
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !4102, metadata !593), !dbg !4188
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !4192, !tbaa !601
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !4124, metadata !593) #10, !dbg !4193
  %7 = icmp eq i8* %6, null, !dbg !4194
  br i1 %7, label %8, label %127, !dbg !4195

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.123, i64 0, i64 0)) #10, !dbg !4196
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !4125, metadata !593) #10, !dbg !4197
  %10 = icmp eq i8* %9, null, !dbg !4198
  br i1 %10, label %14, label %11, !dbg !4200

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !4201, !tbaa !761
  %13 = icmp eq i8 %12, 0, !dbg !4203
  br i1 %13, label %14, label %15, !dbg !4204

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !4206

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.124, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !4125, metadata !593) #10, !dbg !4197
  %17 = tail call i64 @strlen(i8* nonnull %16) #13, !dbg !4207
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !4128, metadata !593) #10, !dbg !4208
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !4130, metadata !593) #10, !dbg !4209
  %18 = icmp eq i64 %17, 0, !dbg !4210
  br i1 %18, label %24, label %19, !dbg !4211

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !4212
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !4212
  %22 = load i8, i8* %21, align 1, !dbg !4212, !tbaa !761
  %23 = icmp ne i8 %22, 47, !dbg !4214
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !4215
  %27 = add i64 %17, 14, !dbg !4216
  %28 = add i64 %27, %26, !dbg !4217
  %29 = tail call noalias i8* @malloc(i64 %28) #10, !dbg !4218
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !4127, metadata !593) #10, !dbg !4219
  %30 = icmp eq i8* %29, null, !dbg !4220
  br i1 %30, label %125, label %31, !dbg !4220

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #10, !dbg !4221
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !4224

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !4225, !tbaa !761
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !4227
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.125, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !4228
  br label %37, !dbg !4229

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !4227
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.125, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !4228
  br label %37, !dbg !4229

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #10, !dbg !4230
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !4132, metadata !593) #10, !dbg !4231
  %39 = icmp slt i32 %38, 0, !dbg !4232
  br i1 %39, label %123, label %40, !dbg !4233

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.126, i64 0, i64 0)) #10, !dbg !4234
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4133, metadata !593) #10, !dbg !4235
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !4236
  br i1 %42, label %48, label %43, !dbg !4237

; <label>:43:                                     ; preds = %40
  %44 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %45 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %46 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %47 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !4238

; <label>:48:                                     ; preds = %40
  %49 = tail call i32 @close(i32 %38) #10, !dbg !4239
  br label %123, !dbg !4241

; <label>:50:                                     ; preds = %111, %43
  %51 = phi i64 [ %112, %111 ], [ 0, %43 ]
  %52 = phi i8* [ %113, %111 ], [ null, %43 ]
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !4174, metadata !593) #10, !dbg !4238
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !4175, metadata !593) #10, !dbg !4242
  call void @llvm.lifetime.start(i64 51, i8* nonnull %44) #10, !dbg !4243
  call void @llvm.lifetime.start(i64 51, i8* nonnull %45) #10, !dbg !4244
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4245, metadata !593) #10, !dbg !4250
  %53 = load i8*, i8** %46, align 8, !dbg !4252, !tbaa !4253
  %54 = load i8*, i8** %47, align 8, !dbg !4252, !tbaa !4254
  %55 = icmp ult i8* %53, %54, !dbg !4252
  br i1 %55, label %58, label %56, !dbg !4252, !prof !4255

; <label>:56:                                     ; preds = %50
  %57 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !4256
  br label %62, !dbg !4256

; <label>:58:                                     ; preds = %50
  %59 = getelementptr inbounds i8, i8* %53, i64 1, !dbg !4258
  store i8* %59, i8** %46, align 8, !dbg !4258, !tbaa !4253
  %60 = load i8, i8* %53, align 1, !dbg !4258, !tbaa !761
  %61 = zext i8 %60 to i32, !dbg !4258
  br label %62, !dbg !4258

; <label>:62:                                     ; preds = %58, %56
  %63 = phi i32 [ %57, %56 ], [ %61, %58 ], !dbg !4260
  call void @llvm.dbg.value(metadata i32 %63, i64 0, metadata !4176, metadata !593) #10, !dbg !4262
  switch i32 %63, label %77 [
    i32 -1, label %115
    i32 32, label %111
    i32 10, label %111
    i32 9, label %111
    i32 35, label %64
  ], !dbg !4263

; <label>:64:                                     ; preds = %62
  br label %65, !dbg !4264

; <label>:65:                                     ; preds = %64, %75
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4245, metadata !593) #10, !dbg !4264
  %66 = load i8*, i8** %46, align 8, !dbg !4268, !tbaa !4253
  %67 = load i8*, i8** %47, align 8, !dbg !4268, !tbaa !4254
  %68 = icmp ult i8* %66, %67, !dbg !4268
  br i1 %68, label %71, label %69, !dbg !4268, !prof !4255

; <label>:69:                                     ; preds = %65
  %70 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !4269
  br label %75, !dbg !4269

; <label>:71:                                     ; preds = %65
  %72 = getelementptr inbounds i8, i8* %66, i64 1, !dbg !4270
  store i8* %72, i8** %46, align 8, !dbg !4270, !tbaa !4253
  %73 = load i8, i8* %66, align 1, !dbg !4270, !tbaa !761
  %74 = zext i8 %73 to i32, !dbg !4270
  br label %75, !dbg !4270

; <label>:75:                                     ; preds = %71, %69
  %76 = phi i32 [ %70, %69 ], [ %74, %71 ], !dbg !4271
  call void @llvm.dbg.value(metadata i32 %76, i64 0, metadata !4176, metadata !593) #10, !dbg !4262
  switch i32 %76, label %65 [
    i32 -1, label %114
    i32 10, label %110
  ], !dbg !4272, !llvm.loop !4274

; <label>:77:                                     ; preds = %62
  %78 = call i32 @ungetc(i32 %63, %struct._IO_FILE* nonnull %41) #10, !dbg !4277
  %79 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.127, i64 0, i64 0), i8* nonnull %44, i8* nonnull %45) #10, !dbg !4278
  %80 = icmp slt i32 %79, 2, !dbg !4280
  br i1 %80, label %115, label %81, !dbg !4281

; <label>:81:                                     ; preds = %77
  %82 = call i64 @strlen(i8* nonnull %44) #13, !dbg !4282
  call void @llvm.dbg.value(metadata i64 %82, i64 0, metadata !4181, metadata !593) #10, !dbg !4283
  %83 = call i64 @strlen(i8* nonnull %45) #13, !dbg !4284
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !4182, metadata !593) #10, !dbg !4285
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !4183, metadata !593) #10, !dbg !4286
  %84 = icmp eq i64 %51, 0, !dbg !4287
  %85 = add i64 %82, 1
  %86 = add i64 %85, %83
  %87 = add i64 %86, 1
  br i1 %84, label %88, label %91, !dbg !4289

; <label>:88:                                     ; preds = %81
  call void @llvm.dbg.value(metadata i64 %87, i64 0, metadata !4175, metadata !593) #10, !dbg !4242
  %89 = add i64 %86, 2, !dbg !4290
  %90 = call noalias i8* @malloc(i64 %89) #10, !dbg !4292
  call void @llvm.dbg.value(metadata i8* %90, i64 0, metadata !4174, metadata !593) #10, !dbg !4238
  br label %95, !dbg !4293

; <label>:91:                                     ; preds = %81
  %92 = add i64 %87, %51, !dbg !4294
  call void @llvm.dbg.value(metadata i64 %92, i64 0, metadata !4175, metadata !593) #10, !dbg !4242
  %93 = add i64 %92, 1, !dbg !4296
  %94 = call i8* @realloc(i8* %52, i64 %93) #10, !dbg !4297
  call void @llvm.dbg.value(metadata i8* %94, i64 0, metadata !4174, metadata !593) #10, !dbg !4238
  br label %95

; <label>:95:                                     ; preds = %91, %88
  %96 = phi i64 [ %87, %88 ], [ %92, %91 ]
  %97 = phi i8* [ %90, %88 ], [ %94, %91 ]
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !4174, metadata !593) #10, !dbg !4238
  call void @llvm.dbg.value(metadata i64 %96, i64 0, metadata !4175, metadata !593) #10, !dbg !4242
  %98 = icmp eq i8* %97, null, !dbg !4298
  br i1 %98, label %99, label %100, !dbg !4300

; <label>:99:                                     ; preds = %95
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4175, metadata !593) #10, !dbg !4242
  call void @free(i8* %52) #10, !dbg !4301
  br label %116, !dbg !4303

; <label>:100:                                    ; preds = %95
  %101 = getelementptr inbounds i8, i8* %97, i64 %96, !dbg !4304
  %102 = xor i64 %83, -1, !dbg !4305
  %103 = getelementptr inbounds i8, i8* %101, i64 %102, !dbg !4305
  %104 = xor i64 %82, -1, !dbg !4306
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !4306
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !4307, metadata !593) #10, !dbg !4316
  call void @llvm.dbg.value(metadata i8* %44, i64 0, metadata !4315, metadata !593) #10, !dbg !4316
  %106 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false) #10, !dbg !4318
  %107 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %44, i64 %106) #10, !dbg !4319
  call void @llvm.dbg.value(metadata i8* %103, i64 0, metadata !4307, metadata !593) #10, !dbg !4320
  call void @llvm.dbg.value(metadata i8* %45, i64 0, metadata !4315, metadata !593) #10, !dbg !4320
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %103, i1 false) #10, !dbg !4322
  %109 = call i8* @__strcpy_chk(i8* nonnull %103, i8* nonnull %45, i64 %108) #10, !dbg !4323
  br label %111, !dbg !4324

; <label>:110:                                    ; preds = %75
  br label %111, !dbg !4238

; <label>:111:                                    ; preds = %110, %100, %62, %62, %62
  %112 = phi i64 [ %96, %100 ], [ %51, %62 ], [ %51, %62 ], [ %51, %62 ], [ %51, %110 ]
  %113 = phi i8* [ %97, %100 ], [ %52, %62 ], [ %52, %62 ], [ %52, %62 ], [ %52, %110 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !4174, metadata !593) #10, !dbg !4238
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !4175, metadata !593) #10, !dbg !4242
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #10, !dbg !4324
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #10, !dbg !4324
  br label %50

; <label>:114:                                    ; preds = %75
  br label %116, !dbg !4238

; <label>:115:                                    ; preds = %62, %77
  br label %116, !dbg !4238

; <label>:116:                                    ; preds = %115, %114, %99
  %117 = phi i64 [ 0, %99 ], [ %51, %114 ], [ %51, %115 ]
  %118 = phi i8* [ null, %99 ], [ %52, %114 ], [ %52, %115 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !4174, metadata !593) #10, !dbg !4238
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !4175, metadata !593) #10, !dbg !4242
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #10, !dbg !4324
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #10, !dbg !4324
  %119 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #10, !dbg !4325
  %120 = icmp eq i64 %117, 0, !dbg !4326
  br i1 %120, label %123, label %121, !dbg !4328

; <label>:121:                                    ; preds = %116
  %122 = getelementptr inbounds i8, i8* %118, i64 %117, !dbg !4329
  store i8 0, i8* %122, align 1, !dbg !4331, !tbaa !761
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !4124, metadata !593) #10, !dbg !4193
  br label %123

; <label>:123:                                    ; preds = %121, %116, %48, %37
  %124 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.122, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.122, i64 0, i64 0), %48 ], [ %118, %121 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.122, i64 0, i64 0), %116 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !4124, metadata !593) #10, !dbg !4193
  call void @free(i8* %29) #10, !dbg !4332
  br label %125

; <label>:125:                                    ; preds = %123, %24
  %126 = phi i8* [ %124, %123 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.122, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %126, i64 0, metadata !4124, metadata !593) #10, !dbg !4193
  store volatile i8* %126, i8** @charset_aliases, align 8, !dbg !4333, !tbaa !601
  br label %127, !dbg !4334

; <label>:127:                                    ; preds = %0, %125
  %128 = phi i8* [ %6, %0 ], [ %126, %125 ]
  call void @llvm.dbg.value(metadata i8* %128, i64 0, metadata !4103, metadata !593), !dbg !4335
  %129 = load i8, i8* %128, align 1, !dbg !4336, !tbaa !761
  %130 = icmp eq i8 %129, 0, !dbg !4337
  br i1 %130, label %157, label %131, !dbg !4338

; <label>:131:                                    ; preds = %127
  br label %132, !dbg !4340

; <label>:132:                                    ; preds = %131, %147
  %133 = phi i8 [ %154, %147 ], [ %129, %131 ]
  %134 = phi i8* [ %153, %147 ], [ %128, %131 ]
  %135 = call i32 @strcmp(i8* %5, i8* %134) #10, !dbg !4340
  %136 = icmp eq i32 %135, 0, !dbg !4341
  br i1 %136, label %143, label %137, !dbg !4342

; <label>:137:                                    ; preds = %132
  %138 = icmp eq i8 %133, 42, !dbg !4343
  br i1 %138, label %139, label %147, !dbg !4345

; <label>:139:                                    ; preds = %137
  %140 = getelementptr inbounds i8, i8* %134, i64 1, !dbg !4346
  %141 = load i8, i8* %140, align 1, !dbg !4346, !tbaa !761
  %142 = icmp eq i8 %141, 0, !dbg !4348
  br i1 %142, label %143, label %147, !dbg !4349

; <label>:143:                                    ; preds = %139, %132
  %144 = call i64 @strlen(i8* %134) #13, !dbg !4351
  %145 = getelementptr inbounds i8, i8* %134, i64 %144, !dbg !4353
  %146 = getelementptr inbounds i8, i8* %145, i64 1, !dbg !4354
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !4102, metadata !593), !dbg !4188
  br label %157, !dbg !4355

; <label>:147:                                    ; preds = %137, %139
  %148 = call i64 @strlen(i8* %134) #13, !dbg !4356
  %149 = add i64 %148, 1, !dbg !4357
  %150 = getelementptr inbounds i8, i8* %134, i64 %149, !dbg !4358
  call void @llvm.dbg.value(metadata i8* %150, i64 0, metadata !4103, metadata !593), !dbg !4335
  %151 = call i64 @strlen(i8* %150) #13, !dbg !4359
  %152 = add i64 %151, 1, !dbg !4360
  %153 = getelementptr inbounds i8, i8* %150, i64 %152, !dbg !4361
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !4103, metadata !593), !dbg !4335
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !4103, metadata !593), !dbg !4335
  %154 = load i8, i8* %153, align 1, !dbg !4336, !tbaa !761
  %155 = icmp eq i8 %154, 0, !dbg !4337
  br i1 %155, label %156, label %132, !dbg !4338, !llvm.loop !4362

; <label>:156:                                    ; preds = %147
  br label %157, !dbg !4188

; <label>:157:                                    ; preds = %156, %127, %143
  %158 = phi i8* [ %146, %143 ], [ %5, %127 ], [ %5, %156 ]
  call void @llvm.dbg.value(metadata i8* %158, i64 0, metadata !4102, metadata !593), !dbg !4188
  %159 = load i8, i8* %158, align 1, !dbg !4365, !tbaa !761
  %160 = icmp eq i8 %159, 0, !dbg !4367
  %161 = select i1 %160, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.128, i64 0, i64 0), i8* %158, !dbg !4368
  call void @llvm.dbg.value(metadata i8* %161, i64 0, metadata !4102, metadata !593), !dbg !4188
  ret i8* %161, !dbg !4369
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
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !4370 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4415, metadata !593), !dbg !4419
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4416, metadata !593), !dbg !4420
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4418, metadata !593), !dbg !4421
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !4422
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4417, metadata !593), !dbg !4423
  %3 = icmp slt i32 %2, 0, !dbg !4424
  br i1 %3, label %4, label %6, !dbg !4426

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4427
  br label %24, !dbg !4428

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !4429
  %8 = icmp eq i32 %7, 0, !dbg !4429
  br i1 %8, label %13, label %9, !dbg !4431

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !4432
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #10, !dbg !4434
  %12 = icmp eq i64 %11, -1, !dbg !4436
  br i1 %12, label %16, label %13, !dbg !4437

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #10, !dbg !4438
  %15 = icmp eq i32 %14, 0, !dbg !4438
  br i1 %15, label %16, label %18, !dbg !4439

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4416, metadata !593), !dbg !4420
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4441
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4418, metadata !593), !dbg !4421
  br label %24, !dbg !4442

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #1, !dbg !4443
  %20 = load i32, i32* %19, align 4, !dbg !4443, !tbaa !692
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4416, metadata !593), !dbg !4420
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4416, metadata !593), !dbg !4420
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4441
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4418, metadata !593), !dbg !4421
  %22 = icmp eq i32 %20, 0, !dbg !4444
  br i1 %22, label %24, label %23, !dbg !4442

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4446, !tbaa !692
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !4418, metadata !593), !dbg !4421
  br label %24, !dbg !4448

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !4449
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
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !4450 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4495, metadata !593), !dbg !4496
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4497
  br i1 %2, label %6, label %3, !dbg !4499

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !4500
  %5 = icmp eq i32 %4, 0, !dbg !4500
  br i1 %5, label %6, label %8, !dbg !4502

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4504
  br label %17, !dbg !4505

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4506, metadata !593) #10, !dbg !4511
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4513
  %10 = load i32, i32* %9, align 8, !dbg !4513, !tbaa !4023
  %11 = and i32 %10, 256, !dbg !4515
  %12 = icmp eq i32 %11, 0, !dbg !4515
  br i1 %12, label %15, label %13, !dbg !4516

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #10, !dbg !4517
  br label %15, !dbg !4517

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4518
  br label %17, !dbg !4519

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !4520
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !4521 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4567, metadata !593), !dbg !4573
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4568, metadata !593), !dbg !4574
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4569, metadata !593), !dbg !4575
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4576
  %5 = load i8*, i8** %4, align 8, !dbg !4576, !tbaa !4254
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4577
  %7 = load i8*, i8** %6, align 8, !dbg !4577, !tbaa !4253
  %8 = icmp eq i8* %5, %7, !dbg !4578
  br i1 %8, label %9, label %28, !dbg !4579

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4580
  %11 = load i8*, i8** %10, align 8, !dbg !4580, !tbaa !4582
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4583
  %13 = load i8*, i8** %12, align 8, !dbg !4583, !tbaa !4584
  %14 = icmp eq i8* %11, %13, !dbg !4585
  br i1 %14, label %15, label %28, !dbg !4586

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4587
  %17 = load i8*, i8** %16, align 8, !dbg !4587, !tbaa !4588
  %18 = icmp eq i8* %17, null, !dbg !4589
  br i1 %18, label %19, label %28, !dbg !4590

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !4592
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #10, !dbg !4593
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !4570, metadata !593), !dbg !4595
  %22 = icmp eq i64 %21, -1, !dbg !4596
  br i1 %22, label %30, label %23, !dbg !4598

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4599
  %25 = load i32, i32* %24, align 8, !dbg !4600, !tbaa !4023
  %26 = and i32 %25, -17, !dbg !4600
  store i32 %26, i32* %24, align 8, !dbg !4600, !tbaa !4023
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4601
  store i64 %21, i64* %27, align 8, !dbg !4602, !tbaa !4603
  br label %30, !dbg !4604

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4605
  br label %30, !dbg !4606

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !4607
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

!llvm.dbg.cu = !{!2, !82, !88, !97, !104, !111, !536, !538, !181, !546, !563, !565, !567, !569, !572, !574, !190, !577, !579, !581}
!llvm.ident = !{!583, !583, !583, !583, !583, !583, !583, !583, !583, !583, !583, !583, !583, !583, !583, !583, !583, !583, !583, !583}
!llvm.module.flags = !{!584, !585, !586, !587}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 41, type: !68, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !23, globals: !37)
!3 = !DIFile(filename: "src/pwd.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4 = !{!5, !19}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !6, line: 32, size: 32, elements: !7)
!6 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!7 = !{!8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18}
!8 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!9 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!10 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!11 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!12 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!13 = !DIEnumerator(name: "c_quoting_style", value: 5)
!14 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!15 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!16 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!17 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!18 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !20, line: 112, size: 32, elements: !21)
!20 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!21 = !{!22}
!22 = !DIEnumerator(name: "NOT_AN_INODE_NUMBER", value: 0)
!23 = !{!24, !25, !27, !30, !32, !35}
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !28, line: 62, baseType: !29)
!28 = !DIFile(filename: "/usr/bin/../lib/clang/4.0.1/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!29 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!34 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!37 = !{!38, !0}
!38 = !DIGlobalVariableExpression(var: !39)
!39 = distinct !DIGlobalVariable(name: "infomap", scope: !40, file: !20, line: 632, type: !65, isLocal: true, isDefinition: true)
!40 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !20, file: !20, line: 630, type: !41, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !43)
!41 = !DISubroutineType(types: !42)
!42 = !{null, !35}
!43 = !{!44, !45, !46, !53, !55, !56, !57, !60, !61, !63}
!44 = !DILocalVariable(name: "program", arg: 1, scope: !40, file: !20, line: 630, type: !35)
!45 = !DILocalVariable(name: "node", scope: !40, file: !20, line: 642, type: !35)
!46 = !DILocalVariable(name: "map_prog", scope: !40, file: !20, line: 643, type: !47)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !40, file: !20, line: 632, size: 128, elements: !50)
!50 = !{!51, !52}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !49, file: !20, line: 632, baseType: !35, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !49, file: !20, line: 632, baseType: !35, size: 64, offset: 64)
!53 = !DILocalVariable(name: "__s1_len", scope: !54, file: !20, line: 645, type: !27)
!54 = distinct !DILexicalBlock(scope: !40, file: !20, line: 645, column: 33)
!55 = !DILocalVariable(name: "__s2_len", scope: !54, file: !20, line: 645, type: !27)
!56 = !DILocalVariable(name: "lc_messages", scope: !40, file: !20, line: 655, type: !35)
!57 = !DILocalVariable(name: "__s1_len", scope: !58, file: !20, line: 656, type: !27)
!58 = distinct !DILexicalBlock(scope: !59, file: !20, line: 656, column: 22)
!59 = distinct !DILexicalBlock(scope: !40, file: !20, line: 656, column: 7)
!60 = !DILocalVariable(name: "__s2_len", scope: !58, file: !20, line: 656, type: !27)
!61 = !DILocalVariable(name: "__s2", scope: !62, file: !20, line: 656, type: !32)
!62 = distinct !DILexicalBlock(scope: !58, file: !20, line: 656, column: 22)
!63 = !DILocalVariable(name: "__result", scope: !62, file: !20, line: 656, type: !64)
!64 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!65 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 896, elements: !66)
!66 = !{!67}
!67 = !DISubrange(count: 7)
!68 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 1280, elements: !78)
!69 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !70)
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !71, line: 104, size: 256, elements: !72)
!71 = !DIFile(filename: "/usr/include/getopt.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!72 = !{!73, !74, !75, !77}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !70, file: !71, line: 106, baseType: !35, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !70, file: !71, line: 109, baseType: !64, size: 32, offset: 64)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !70, file: !71, line: 110, baseType: !76, size: 64, offset: 128)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !70, file: !71, line: 111, baseType: !64, size: 32, offset: 192)
!78 = !{!79}
!79 = !DISubrange(count: 5)
!80 = !DIGlobalVariableExpression(var: !81)
!81 = distinct !DIGlobalVariable(name: "Version", scope: !82, file: !83, line: 2, type: !35, isLocal: false, isDefinition: true)
!82 = distinct !DICompileUnit(language: DW_LANG_C99, file: !83, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !84, globals: !85)
!83 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!84 = !{}
!85 = !{!80}
!86 = !DIGlobalVariableExpression(var: !87)
!87 = distinct !DIGlobalVariable(name: "file_name", scope: !88, file: !93, line: 36, type: !35, isLocal: true, isDefinition: true)
!88 = distinct !DICompileUnit(language: DW_LANG_C99, file: !89, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !84, globals: !90)
!89 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!90 = !{!86, !91}
!91 = !DIGlobalVariableExpression(var: !92)
!92 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !88, file: !93, line: 46, type: !94, isLocal: true, isDefinition: true)
!93 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!94 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!95 = !DIGlobalVariableExpression(var: !96)
!96 = distinct !DIGlobalVariable(name: "exit_failure", scope: !97, file: !100, line: 24, type: !101, isLocal: false, isDefinition: true)
!97 = distinct !DICompileUnit(language: DW_LANG_C99, file: !98, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !84, globals: !99)
!98 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!99 = !{!95}
!100 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!101 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !64)
!102 = !DIGlobalVariableExpression(var: !103)
!103 = distinct !DIGlobalVariable(name: "program_name", scope: !104, file: !108, line: 33, type: !35, isLocal: false, isDefinition: true)
!104 = distinct !DICompileUnit(language: DW_LANG_C99, file: !105, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !84, retainedTypes: !106, globals: !107)
!105 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!106 = !{!24, !25}
!107 = !{!102}
!108 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!109 = !DIGlobalVariableExpression(var: !110)
!110 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !111, file: !139, line: 77, type: !175, isLocal: false, isDefinition: true)
!111 = distinct !DICompileUnit(language: DW_LANG_C99, file: !112, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !113, retainedTypes: !134, globals: !136)
!112 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!113 = !{!5, !114, !119}
!114 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !6, line: 242, size: 32, elements: !115)
!115 = !{!116, !117, !118}
!116 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!117 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!118 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!119 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !120, line: 46, size: 32, elements: !121)
!120 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!121 = !{!122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133}
!122 = !DIEnumerator(name: "_ISupper", value: 256)
!123 = !DIEnumerator(name: "_ISlower", value: 512)
!124 = !DIEnumerator(name: "_ISalpha", value: 1024)
!125 = !DIEnumerator(name: "_ISdigit", value: 2048)
!126 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!127 = !DIEnumerator(name: "_ISspace", value: 8192)
!128 = !DIEnumerator(name: "_ISprint", value: 16384)
!129 = !DIEnumerator(name: "_ISgraph", value: 32768)
!130 = !DIEnumerator(name: "_ISblank", value: 1)
!131 = !DIEnumerator(name: "_IScntrl", value: 2)
!132 = !DIEnumerator(name: "_ISpunct", value: 4)
!133 = !DIEnumerator(name: "_ISalnum", value: 8)
!134 = !{!64, !135, !27, !25}
!135 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!136 = !{!109, !137, !144, !157, !159, !164, !171, !173}
!137 = !DIGlobalVariableExpression(var: !138)
!138 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !111, file: !139, line: 93, type: !140, isLocal: false, isDefinition: true)
!139 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 320, elements: !142)
!141 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!142 = !{!143}
!143 = !DISubrange(count: 10)
!144 = !DIGlobalVariableExpression(var: !145)
!145 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !111, file: !139, line: 1043, type: !146, isLocal: false, isDefinition: true)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !139, line: 57, size: 448, elements: !147)
!147 = !{!148, !149, !150, !155, !156}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !146, file: !139, line: 60, baseType: !5, size: 32)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !146, file: !139, line: 63, baseType: !64, size: 32, offset: 32)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !146, file: !139, line: 67, baseType: !151, size: 256, offset: 64)
!151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 256, elements: !153)
!152 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!153 = !{!154}
!154 = !DISubrange(count: 8)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !146, file: !139, line: 70, baseType: !35, size: 64, offset: 320)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !146, file: !139, line: 73, baseType: !35, size: 64, offset: 384)
!157 = !DIGlobalVariableExpression(var: !158)
!158 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !111, file: !139, line: 108, type: !146, isLocal: true, isDefinition: true)
!159 = !DIGlobalVariableExpression(var: !160)
!160 = distinct !DIGlobalVariable(name: "slot0", scope: !111, file: !139, line: 834, type: !161, isLocal: true, isDefinition: true)
!161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 2048, elements: !162)
!162 = !{!163}
!163 = !DISubrange(count: 256)
!164 = !DIGlobalVariableExpression(var: !165)
!165 = distinct !DIGlobalVariable(name: "slotvec", scope: !111, file: !139, line: 837, type: !166, isLocal: true, isDefinition: true)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !139, line: 826, size: 128, elements: !168)
!168 = !{!169, !170}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !167, file: !139, line: 828, baseType: !27, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !167, file: !139, line: 829, baseType: !25, size: 64, offset: 64)
!171 = !DIGlobalVariableExpression(var: !172)
!172 = distinct !DIGlobalVariable(name: "nslots", scope: !111, file: !139, line: 835, type: !64, isLocal: true, isDefinition: true)
!173 = !DIGlobalVariableExpression(var: !174)
!174 = distinct !DIGlobalVariable(name: "slotvec0", scope: !111, file: !139, line: 836, type: !167, isLocal: true, isDefinition: true)
!175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, size: 704, elements: !177)
!176 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!177 = !{!178}
!178 = !DISubrange(count: 11)
!179 = !DIGlobalVariableExpression(var: !180)
!180 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !181, file: !184, line: 26, type: !185, isLocal: false, isDefinition: true)
!181 = distinct !DICompileUnit(language: DW_LANG_C99, file: !182, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !84, globals: !183)
!182 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!183 = !{!179}
!184 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 376, elements: !186)
!186 = !{!187}
!187 = !DISubrange(count: 47)
!188 = !DIGlobalVariableExpression(var: !189)
!189 = distinct !DIGlobalVariable(name: "charset_aliases", scope: !190, file: !534, line: 120, type: !535, isLocal: true, isDefinition: true)
!190 = distinct !DICompileUnit(language: DW_LANG_C99, file: !191, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !192, retainedTypes: !531, globals: !533)
!191 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!192 = !{!193}
!193 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !194, line: 41, size: 32, elements: !195)
!194 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!195 = !{!196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530}
!196 = !DIEnumerator(name: "ABDAY_1", value: 131072)
!197 = !DIEnumerator(name: "ABDAY_2", value: 131073)
!198 = !DIEnumerator(name: "ABDAY_3", value: 131074)
!199 = !DIEnumerator(name: "ABDAY_4", value: 131075)
!200 = !DIEnumerator(name: "ABDAY_5", value: 131076)
!201 = !DIEnumerator(name: "ABDAY_6", value: 131077)
!202 = !DIEnumerator(name: "ABDAY_7", value: 131078)
!203 = !DIEnumerator(name: "DAY_1", value: 131079)
!204 = !DIEnumerator(name: "DAY_2", value: 131080)
!205 = !DIEnumerator(name: "DAY_3", value: 131081)
!206 = !DIEnumerator(name: "DAY_4", value: 131082)
!207 = !DIEnumerator(name: "DAY_5", value: 131083)
!208 = !DIEnumerator(name: "DAY_6", value: 131084)
!209 = !DIEnumerator(name: "DAY_7", value: 131085)
!210 = !DIEnumerator(name: "ABMON_1", value: 131086)
!211 = !DIEnumerator(name: "ABMON_2", value: 131087)
!212 = !DIEnumerator(name: "ABMON_3", value: 131088)
!213 = !DIEnumerator(name: "ABMON_4", value: 131089)
!214 = !DIEnumerator(name: "ABMON_5", value: 131090)
!215 = !DIEnumerator(name: "ABMON_6", value: 131091)
!216 = !DIEnumerator(name: "ABMON_7", value: 131092)
!217 = !DIEnumerator(name: "ABMON_8", value: 131093)
!218 = !DIEnumerator(name: "ABMON_9", value: 131094)
!219 = !DIEnumerator(name: "ABMON_10", value: 131095)
!220 = !DIEnumerator(name: "ABMON_11", value: 131096)
!221 = !DIEnumerator(name: "ABMON_12", value: 131097)
!222 = !DIEnumerator(name: "MON_1", value: 131098)
!223 = !DIEnumerator(name: "MON_2", value: 131099)
!224 = !DIEnumerator(name: "MON_3", value: 131100)
!225 = !DIEnumerator(name: "MON_4", value: 131101)
!226 = !DIEnumerator(name: "MON_5", value: 131102)
!227 = !DIEnumerator(name: "MON_6", value: 131103)
!228 = !DIEnumerator(name: "MON_7", value: 131104)
!229 = !DIEnumerator(name: "MON_8", value: 131105)
!230 = !DIEnumerator(name: "MON_9", value: 131106)
!231 = !DIEnumerator(name: "MON_10", value: 131107)
!232 = !DIEnumerator(name: "MON_11", value: 131108)
!233 = !DIEnumerator(name: "MON_12", value: 131109)
!234 = !DIEnumerator(name: "AM_STR", value: 131110)
!235 = !DIEnumerator(name: "PM_STR", value: 131111)
!236 = !DIEnumerator(name: "D_T_FMT", value: 131112)
!237 = !DIEnumerator(name: "D_FMT", value: 131113)
!238 = !DIEnumerator(name: "T_FMT", value: 131114)
!239 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115)
!240 = !DIEnumerator(name: "ERA", value: 131116)
!241 = !DIEnumerator(name: "__ERA_YEAR", value: 131117)
!242 = !DIEnumerator(name: "ERA_D_FMT", value: 131118)
!243 = !DIEnumerator(name: "ALT_DIGITS", value: 131119)
!244 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120)
!245 = !DIEnumerator(name: "ERA_T_FMT", value: 131121)
!246 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122)
!247 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123)
!248 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124)
!249 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125)
!250 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126)
!251 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127)
!252 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128)
!253 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129)
!254 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130)
!255 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131)
!256 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132)
!257 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133)
!258 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134)
!259 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135)
!260 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136)
!261 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137)
!262 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138)
!263 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139)
!264 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140)
!265 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141)
!266 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142)
!267 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143)
!268 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144)
!269 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145)
!270 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146)
!271 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147)
!272 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148)
!273 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149)
!274 = !DIEnumerator(name: "_NL_WMON_1", value: 131150)
!275 = !DIEnumerator(name: "_NL_WMON_2", value: 131151)
!276 = !DIEnumerator(name: "_NL_WMON_3", value: 131152)
!277 = !DIEnumerator(name: "_NL_WMON_4", value: 131153)
!278 = !DIEnumerator(name: "_NL_WMON_5", value: 131154)
!279 = !DIEnumerator(name: "_NL_WMON_6", value: 131155)
!280 = !DIEnumerator(name: "_NL_WMON_7", value: 131156)
!281 = !DIEnumerator(name: "_NL_WMON_8", value: 131157)
!282 = !DIEnumerator(name: "_NL_WMON_9", value: 131158)
!283 = !DIEnumerator(name: "_NL_WMON_10", value: 131159)
!284 = !DIEnumerator(name: "_NL_WMON_11", value: 131160)
!285 = !DIEnumerator(name: "_NL_WMON_12", value: 131161)
!286 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162)
!287 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163)
!288 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164)
!289 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165)
!290 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166)
!291 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167)
!292 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168)
!293 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169)
!294 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170)
!295 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171)
!296 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172)
!297 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173)
!298 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174)
!299 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175)
!300 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176)
!301 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177)
!302 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178)
!303 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179)
!304 = !DIEnumerator(name: "_DATE_FMT", value: 131180)
!305 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181)
!306 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182)
!307 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131183)
!308 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608)
!309 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609)
!310 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610)
!311 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611)
!312 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612)
!313 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613)
!314 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614)
!315 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615)
!316 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616)
!317 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617)
!318 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618)
!319 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619)
!320 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620)
!321 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621)
!322 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622)
!323 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623)
!324 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624)
!325 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625)
!326 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626)
!327 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627)
!328 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0)
!329 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1)
!330 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2)
!331 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3)
!332 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4)
!333 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5)
!334 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6)
!335 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7)
!336 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8)
!337 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9)
!338 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10)
!339 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11)
!340 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12)
!341 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13)
!342 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14)
!343 = !DIEnumerator(name: "CODESET", value: 14)
!344 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15)
!345 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16)
!346 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17)
!347 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18)
!348 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19)
!349 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20)
!350 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21)
!351 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22)
!352 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23)
!353 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24)
!354 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25)
!355 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26)
!356 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27)
!357 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28)
!358 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29)
!359 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30)
!360 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31)
!361 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32)
!362 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33)
!363 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34)
!364 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35)
!365 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36)
!366 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37)
!367 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38)
!368 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39)
!369 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40)
!370 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41)
!371 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42)
!372 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43)
!373 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44)
!374 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45)
!375 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46)
!376 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47)
!377 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48)
!378 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49)
!379 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50)
!380 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51)
!381 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52)
!382 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53)
!383 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54)
!384 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55)
!385 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56)
!386 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57)
!387 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58)
!388 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59)
!389 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60)
!390 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61)
!391 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62)
!392 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63)
!393 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64)
!394 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65)
!395 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66)
!396 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67)
!397 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68)
!398 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69)
!399 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70)
!400 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71)
!401 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72)
!402 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73)
!403 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74)
!404 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75)
!405 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76)
!406 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77)
!407 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78)
!408 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79)
!409 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80)
!410 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81)
!411 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82)
!412 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83)
!413 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84)
!414 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85)
!415 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86)
!416 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144)
!417 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145)
!418 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146)
!419 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147)
!420 = !DIEnumerator(name: "__MON_GROUPING", value: 262148)
!421 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149)
!422 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150)
!423 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151)
!424 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152)
!425 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153)
!426 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154)
!427 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155)
!428 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156)
!429 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157)
!430 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158)
!431 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159)
!432 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160)
!433 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161)
!434 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162)
!435 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163)
!436 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164)
!437 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165)
!438 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166)
!439 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167)
!440 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168)
!441 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169)
!442 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170)
!443 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171)
!444 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172)
!445 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173)
!446 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174)
!447 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175)
!448 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176)
!449 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177)
!450 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178)
!451 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179)
!452 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180)
!453 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181)
!454 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182)
!455 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183)
!456 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184)
!457 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185)
!458 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186)
!459 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187)
!460 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188)
!461 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189)
!462 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190)
!463 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536)
!464 = !DIEnumerator(name: "RADIXCHAR", value: 65536)
!465 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537)
!466 = !DIEnumerator(name: "THOUSEP", value: 65537)
!467 = !DIEnumerator(name: "__GROUPING", value: 65538)
!468 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539)
!469 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540)
!470 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541)
!471 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542)
!472 = !DIEnumerator(name: "__YESEXPR", value: 327680)
!473 = !DIEnumerator(name: "__NOEXPR", value: 327681)
!474 = !DIEnumerator(name: "__YESSTR", value: 327682)
!475 = !DIEnumerator(name: "__NOSTR", value: 327683)
!476 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684)
!477 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685)
!478 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752)
!479 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753)
!480 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754)
!481 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755)
!482 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288)
!483 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289)
!484 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290)
!485 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291)
!486 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292)
!487 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293)
!488 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294)
!489 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295)
!490 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824)
!491 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825)
!492 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826)
!493 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827)
!494 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828)
!495 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829)
!496 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830)
!497 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831)
!498 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832)
!499 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833)
!500 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834)
!501 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835)
!502 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836)
!503 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837)
!504 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360)
!505 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361)
!506 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362)
!507 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363)
!508 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364)
!509 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365)
!510 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896)
!511 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897)
!512 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898)
!513 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432)
!514 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433)
!515 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434)
!516 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435)
!517 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436)
!518 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437)
!519 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438)
!520 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439)
!521 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440)
!522 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441)
!523 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442)
!524 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443)
!525 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444)
!526 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445)
!527 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446)
!528 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447)
!529 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448)
!530 = !DIEnumerator(name: "_NL_NUM", value: 786449)
!531 = !{!24, !25, !532}
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!533 = !{!188}
!534 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!535 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !35)
!536 = distinct !DICompileUnit(language: DW_LANG_C99, file: !537, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !84)
!537 = !DIFile(filename: "./lib/root-dev-ino.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!538 = distinct !DICompileUnit(language: DW_LANG_C99, file: !539, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !540, retainedTypes: !545)
!539 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!540 = !{!541}
!541 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !542, line: 41, size: 32, elements: !543)
!542 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!543 = !{!544}
!544 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!545 = !{!24}
!546 = distinct !DICompileUnit(language: DW_LANG_C99, file: !547, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !548, retainedTypes: !562)
!547 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!548 = !{!549}
!549 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !551, file: !550, line: 192, size: 32, elements: !560)
!550 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!551 = distinct !DISubprogram(name: "x2nrealloc", scope: !550, file: !550, line: 180, type: !552, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !546, variables: !555)
!552 = !DISubroutineType(types: !553)
!553 = !{!24, !24, !554, !27}
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!555 = !{!556, !557, !558, !559}
!556 = !DILocalVariable(name: "p", arg: 1, scope: !551, file: !550, line: 180, type: !24)
!557 = !DILocalVariable(name: "pn", arg: 2, scope: !551, file: !550, line: 180, type: !554)
!558 = !DILocalVariable(name: "s", arg: 3, scope: !551, file: !550, line: 180, type: !27)
!559 = !DILocalVariable(name: "n", scope: !551, file: !550, line: 182, type: !27)
!560 = !{!561}
!561 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!562 = !{!27, !25, !24}
!563 = distinct !DICompileUnit(language: DW_LANG_C99, file: !564, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !84)
!564 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!565 = distinct !DICompileUnit(language: DW_LANG_C99, file: !566, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !84)
!566 = !DIFile(filename: "./lib/xgetcwd.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!567 = distinct !DICompileUnit(language: DW_LANG_C99, file: !568, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !84, retainedTypes: !545)
!568 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!569 = distinct !DICompileUnit(language: DW_LANG_C99, file: !570, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !84, retainedTypes: !571)
!570 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!571 = !{!27}
!572 = distinct !DICompileUnit(language: DW_LANG_C99, file: !573, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !84)
!573 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!574 = distinct !DICompileUnit(language: DW_LANG_C99, file: !575, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !84, retainedTypes: !576)
!575 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!576 = !{!27, !30, !32, !35}
!577 = distinct !DICompileUnit(language: DW_LANG_C99, file: !578, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !84)
!578 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!579 = distinct !DICompileUnit(language: DW_LANG_C99, file: !580, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !84, retainedTypes: !545)
!580 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!581 = distinct !DICompileUnit(language: DW_LANG_C99, file: !582, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !84, retainedTypes: !545)
!582 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!583 = !{!"clang version 4.0.1 (tags/RELEASE_401/final)"}
!584 = !{i32 2, !"Dwarf Version", i32 4}
!585 = !{i32 2, !"Debug Info Version", i32 3}
!586 = !{i32 1, !"PIC Level", i32 2}
!587 = !{i32 1, !"PIE Level", i32 2}
!588 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 51, type: !589, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, variables: !591)
!589 = !DISubroutineType(types: !590)
!590 = !{null, !64}
!591 = !{!592}
!592 = !DILocalVariable(name: "status", arg: 1, scope: !588, file: !3, line: 51, type: !64)
!593 = !DIExpression()
!594 = !DILocation(line: 51, column: 12, scope: !588)
!595 = !DILocation(line: 53, column: 14, scope: !596)
!596 = distinct !DILexicalBlock(scope: !588, file: !3, line: 53, column: 7)
!597 = !DILocation(line: 53, column: 7, scope: !588)
!598 = !DILocation(line: 54, column: 5, scope: !599)
!599 = !DILexicalBlockFile(scope: !600, file: !3, discriminator: 1)
!600 = distinct !DILexicalBlock(scope: !596, file: !3, line: 54, column: 5)
!601 = !{!602, !602, i64 0}
!602 = !{!"any pointer", !603, i64 0}
!603 = !{!"omnipotent char", !604, i64 0}
!604 = !{!"Simple C/C++ TBAA"}
!605 = !DILocation(line: 54, column: 5, scope: !606)
!606 = !DILexicalBlockFile(scope: !600, file: !3, discriminator: 3)
!607 = !DILocation(line: 54, column: 5, scope: !608)
!608 = !DILexicalBlockFile(scope: !600, file: !3, discriminator: 2)
!609 = !DILocation(line: 57, column: 7, scope: !610)
!610 = distinct !DILexicalBlock(scope: !596, file: !3, line: 56, column: 5)
!611 = !DILocation(line: 57, column: 7, scope: !612)
!612 = !DILexicalBlockFile(scope: !610, file: !3, discriminator: 1)
!613 = !DILocation(line: 58, column: 7, scope: !610)
!614 = !DILocation(line: 58, column: 7, scope: !612)
!615 = !DILocation(line: 62, column: 7, scope: !610)
!616 = !DILocation(line: 62, column: 7, scope: !612)
!617 = !DILocation(line: 66, column: 7, scope: !610)
!618 = !DILocation(line: 66, column: 7, scope: !612)
!619 = !DILocation(line: 67, column: 7, scope: !610)
!620 = !DILocation(line: 67, column: 7, scope: !612)
!621 = !DILocation(line: 68, column: 7, scope: !610)
!622 = !DILocation(line: 68, column: 7, scope: !612)
!623 = !DILocation(line: 71, column: 7, scope: !610)
!624 = !DILocation(line: 71, column: 7, scope: !612)
!625 = !DILocation(line: 642, column: 15, scope: !40, inlinedAt: !626)
!626 = distinct !DILocation(line: 72, column: 7, scope: !610)
!627 = !DILocation(line: 651, column: 3, scope: !40, inlinedAt: !626)
!628 = !DILocation(line: 651, column: 3, scope: !629, inlinedAt: !626)
!629 = !DILexicalBlockFile(scope: !40, file: !20, discriminator: 1)
!630 = !DILocation(line: 655, column: 29, scope: !40, inlinedAt: !626)
!631 = !DILocation(line: 655, column: 15, scope: !40, inlinedAt: !626)
!632 = !DILocation(line: 656, column: 7, scope: !59, inlinedAt: !626)
!633 = !DILocation(line: 656, column: 19, scope: !59, inlinedAt: !626)
!634 = !DILocation(line: 656, column: 22, scope: !635, inlinedAt: !626)
!635 = !DILexicalBlockFile(scope: !59, file: !20, discriminator: 16)
!636 = !DILocation(line: 656, column: 7, scope: !637, inlinedAt: !626)
!637 = !DILexicalBlockFile(scope: !40, file: !20, discriminator: 16)
!638 = !DILocation(line: 662, column: 7, scope: !639, inlinedAt: !626)
!639 = distinct !DILexicalBlock(scope: !59, file: !20, line: 657, column: 5)
!640 = !DILocation(line: 662, column: 7, scope: !641, inlinedAt: !626)
!641 = !DILexicalBlockFile(scope: !639, file: !20, discriminator: 1)
!642 = !DILocation(line: 664, column: 5, scope: !639, inlinedAt: !626)
!643 = !DILocation(line: 665, column: 3, scope: !40, inlinedAt: !626)
!644 = !DILocation(line: 665, column: 3, scope: !629, inlinedAt: !626)
!645 = !DILocation(line: 667, column: 3, scope: !40, inlinedAt: !626)
!646 = !DILocation(line: 667, column: 3, scope: !629, inlinedAt: !626)
!647 = !DILocation(line: 74, column: 3, scope: !588)
!648 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 328, type: !649, isLocal: false, isDefinition: true, scopeLine: 329, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !652)
!649 = !DISubroutineType(types: !650)
!650 = !{!64, !64, !651}
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!652 = !{!653, !654, !655, !656, !657, !659}
!653 = !DILocalVariable(name: "argc", arg: 1, scope: !648, file: !3, line: 328, type: !64)
!654 = !DILocalVariable(name: "argv", arg: 2, scope: !648, file: !3, line: 328, type: !651)
!655 = !DILocalVariable(name: "wd", scope: !648, file: !3, line: 330, type: !25)
!656 = !DILocalVariable(name: "logical", scope: !648, file: !3, line: 334, type: !94)
!657 = !DILocalVariable(name: "c", scope: !658, file: !3, line: 346, type: !64)
!658 = distinct !DILexicalBlock(scope: !648, file: !3, line: 345, column: 5)
!659 = !DILocalVariable(name: "file_name", scope: !660, file: !3, line: 388, type: !662)
!660 = distinct !DILexicalBlock(scope: !661, file: !3, line: 387, column: 5)
!661 = distinct !DILexicalBlock(scope: !648, file: !3, line: 381, column: 7)
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_name", file: !3, line: 34, size: 192, elements: !664)
!664 = !{!665, !666, !667}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !663, file: !3, line: 36, baseType: !25, size: 64)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "n_alloc", scope: !663, file: !3, line: 37, baseType: !27, size: 64, offset: 64)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !663, file: !3, line: 38, baseType: !25, size: 64, offset: 128)
!668 = !DILocation(line: 328, column: 11, scope: !648)
!669 = !DILocation(line: 328, column: 24, scope: !648)
!670 = !DILocation(line: 334, column: 19, scope: !648)
!671 = !DILocation(line: 334, column: 46, scope: !648)
!672 = !DILocation(line: 334, column: 8, scope: !648)
!673 = !DILocation(line: 337, column: 21, scope: !648)
!674 = !DILocation(line: 337, column: 3, scope: !648)
!675 = !DILocation(line: 338, column: 3, scope: !648)
!676 = !DILocation(line: 339, column: 3, scope: !648)
!677 = !DILocation(line: 340, column: 3, scope: !648)
!678 = !DILocation(line: 342, column: 3, scope: !648)
!679 = !DILocation(line: 344, column: 3, scope: !648)
!680 = !DILocation(line: 346, column: 15, scope: !658)
!681 = !DILocation(line: 346, column: 11, scope: !658)
!682 = !DILocation(line: 347, column: 11, scope: !658)
!683 = !DILocation(line: 356, column: 11, scope: !684)
!684 = distinct !DILexicalBlock(scope: !658, file: !3, line: 350, column: 9)
!685 = !DILocation(line: 358, column: 9, scope: !684)
!686 = !DILocation(line: 360, column: 9, scope: !684)
!687 = !DILocation(line: 360, column: 9, scope: !688)
!688 = !DILexicalBlockFile(scope: !684, file: !3, discriminator: 1)
!689 = !DILocation(line: 363, column: 11, scope: !684)
!690 = !DILocation(line: 367, column: 7, scope: !691)
!691 = distinct !DILexicalBlock(scope: !648, file: !3, line: 367, column: 7)
!692 = !{!693, !693, i64 0}
!693 = !{!"int", !603, i64 0}
!694 = !DILocation(line: 367, column: 14, scope: !691)
!695 = !DILocation(line: 367, column: 7, scope: !648)
!696 = !DILocation(line: 368, column: 18, scope: !691)
!697 = !DILocation(line: 368, column: 5, scope: !698)
!698 = !DILexicalBlockFile(scope: !691, file: !3, discriminator: 1)
!699 = !DILocation(line: 368, column: 5, scope: !691)
!700 = !DILocation(line: 370, column: 7, scope: !701)
!701 = distinct !DILexicalBlock(scope: !648, file: !3, line: 370, column: 7)
!702 = !DILocation(line: 370, column: 7, scope: !648)
!703 = !DILocation(line: 303, column: 3, scope: !704, inlinedAt: !751)
!704 = distinct !DISubprogram(name: "logical_getcwd", scope: !3, file: !3, line: 301, type: !705, isLocal: true, isDefinition: true, scopeLine: 302, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !707)
!705 = !DISubroutineType(types: !706)
!706 = !{!25}
!707 = !{!708, !748, !749, !750}
!708 = !DILocalVariable(name: "st1", scope: !704, file: !3, line: 303, type: !709)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !710, line: 46, size: 1152, elements: !711)
!710 = !DIFile(filename: "/usr/include/bits/stat.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!711 = !{!712, !715, !717, !719, !721, !723, !725, !726, !727, !730, !732, !734, !742, !743, !744}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !709, file: !710, line: 48, baseType: !713, size: 64)
!713 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !714, line: 133, baseType: !29)
!714 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!715 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !709, file: !710, line: 53, baseType: !716, size: 64, offset: 64)
!716 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !714, line: 136, baseType: !29)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !709, file: !710, line: 61, baseType: !718, size: 64, offset: 128)
!718 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !714, line: 139, baseType: !29)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !709, file: !710, line: 62, baseType: !720, size: 32, offset: 192)
!720 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !714, line: 138, baseType: !152)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !709, file: !710, line: 64, baseType: !722, size: 32, offset: 224)
!722 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !714, line: 134, baseType: !152)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !709, file: !710, line: 65, baseType: !724, size: 32, offset: 256)
!724 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !714, line: 135, baseType: !152)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !709, file: !710, line: 67, baseType: !64, size: 32, offset: 288)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !709, file: !710, line: 69, baseType: !713, size: 64, offset: 320)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !709, file: !710, line: 74, baseType: !728, size: 64, offset: 384)
!728 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !714, line: 140, baseType: !729)
!729 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !709, file: !710, line: 78, baseType: !731, size: 64, offset: 448)
!731 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !714, line: 162, baseType: !729)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !709, file: !710, line: 80, baseType: !733, size: 64, offset: 512)
!733 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !714, line: 167, baseType: !729)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !709, file: !710, line: 91, baseType: !735, size: 128, offset: 576)
!735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !736, line: 8, size: 128, elements: !737)
!736 = !DIFile(filename: "/usr/include/bits/types/struct_timespec.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!737 = !{!738, !740}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !735, file: !736, line: 10, baseType: !739, size: 64)
!739 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !714, line: 148, baseType: !729)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !735, file: !736, line: 11, baseType: !741, size: 64, offset: 64)
!741 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !714, line: 184, baseType: !729)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !709, file: !710, line: 92, baseType: !735, size: 128, offset: 704)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !709, file: !710, line: 93, baseType: !735, size: 128, offset: 832)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !709, file: !710, line: 106, baseType: !745, size: 192, offset: 960)
!745 = !DICompositeType(tag: DW_TAG_array_type, baseType: !741, size: 192, elements: !746)
!746 = !{!747}
!747 = !DISubrange(count: 3)
!748 = !DILocalVariable(name: "st2", scope: !704, file: !3, line: 304, type: !709)
!749 = !DILocalVariable(name: "wd", scope: !704, file: !3, line: 305, type: !25)
!750 = !DILocalVariable(name: "p", scope: !704, file: !3, line: 306, type: !25)
!751 = distinct !DILocation(line: 372, column: 12, scope: !752)
!752 = distinct !DILexicalBlock(scope: !701, file: !3, line: 371, column: 5)
!753 = !DILocation(line: 304, column: 3, scope: !704, inlinedAt: !751)
!754 = !DILocation(line: 305, column: 14, scope: !704, inlinedAt: !751)
!755 = !DILocation(line: 305, column: 9, scope: !704, inlinedAt: !751)
!756 = !DILocation(line: 309, column: 8, scope: !757, inlinedAt: !751)
!757 = distinct !DILexicalBlock(scope: !704, file: !3, line: 309, column: 7)
!758 = !DILocation(line: 309, column: 11, scope: !757, inlinedAt: !751)
!759 = !DILocation(line: 309, column: 14, scope: !760, inlinedAt: !751)
!760 = !DILexicalBlockFile(scope: !757, file: !3, discriminator: 1)
!761 = !{!603, !603, i64 0}
!762 = !DILocation(line: 309, column: 20, scope: !760, inlinedAt: !751)
!763 = !DILocation(line: 309, column: 7, scope: !764, inlinedAt: !751)
!764 = !DILexicalBlockFile(scope: !704, file: !3, discriminator: 1)
!765 = !DILocation(line: 306, column: 9, scope: !704, inlinedAt: !751)
!766 = !DILocation(line: 312, column: 15, scope: !764, inlinedAt: !751)
!767 = !DILocation(line: 312, column: 3, scope: !764, inlinedAt: !751)
!768 = !DILocation(line: 314, column: 12, scope: !769, inlinedAt: !751)
!769 = distinct !DILexicalBlock(scope: !770, file: !3, line: 314, column: 11)
!770 = distinct !DILexicalBlock(scope: !704, file: !3, line: 313, column: 5)
!771 = !DILocation(line: 314, column: 17, scope: !769, inlinedAt: !751)
!772 = !DILocation(line: 315, column: 32, scope: !773, inlinedAt: !751)
!773 = !DILexicalBlockFile(scope: !769, file: !3, discriminator: 2)
!774 = !DILocation(line: 315, column: 37, scope: !773, inlinedAt: !751)
!775 = !DILocation(line: 317, column: 8, scope: !770, inlinedAt: !751)
!776 = distinct !{!776, !777, !778}
!777 = !DILocation(line: 312, column: 3, scope: !704)
!778 = !DILocation(line: 318, column: 5, scope: !704)
!779 = !DILocation(line: 303, column: 15, scope: !704, inlinedAt: !751)
!780 = !DIExpression(DW_OP_deref)
!781 = !DILocalVariable(name: "__path", arg: 1, scope: !782, file: !783, line: 449, type: !35)
!782 = distinct !DISubprogram(name: "stat", scope: !783, file: !783, line: 449, type: !784, isLocal: false, isDefinition: true, scopeLine: 450, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !787)
!783 = !DIFile(filename: "/usr/include/sys/stat.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!784 = !DISubroutineType(types: !785)
!785 = !{!64, !35, !786}
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!787 = !{!781, !788}
!788 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !782, file: !783, line: 449, type: !786)
!789 = !DILocation(line: 449, column: 1, scope: !782, inlinedAt: !790)
!790 = distinct !DILocation(line: 321, column: 7, scope: !791, inlinedAt: !751)
!791 = distinct !DILexicalBlock(scope: !704, file: !3, line: 321, column: 7)
!792 = !DILocation(line: 451, column: 10, scope: !782, inlinedAt: !790)
!793 = !DILocation(line: 321, column: 23, scope: !791, inlinedAt: !751)
!794 = !DILocation(line: 321, column: 28, scope: !791, inlinedAt: !751)
!795 = !DILocation(line: 304, column: 15, scope: !704, inlinedAt: !751)
!796 = !DILocation(line: 449, column: 1, scope: !782, inlinedAt: !797)
!797 = distinct !DILocation(line: 321, column: 31, scope: !798, inlinedAt: !751)
!798 = !DILexicalBlockFile(scope: !791, file: !3, discriminator: 1)
!799 = !DILocation(line: 451, column: 10, scope: !782, inlinedAt: !797)
!800 = !DILocation(line: 321, column: 48, scope: !798, inlinedAt: !751)
!801 = !DILocation(line: 321, column: 53, scope: !798, inlinedAt: !751)
!802 = !DILocation(line: 321, column: 56, scope: !803, inlinedAt: !751)
!803 = !DILexicalBlockFile(scope: !791, file: !3, discriminator: 2)
!804 = !{!805, !806, i64 8}
!805 = !{!"stat", !806, i64 0, !806, i64 8, !806, i64 16, !693, i64 24, !693, i64 28, !693, i64 32, !693, i64 36, !806, i64 40, !806, i64 48, !806, i64 56, !806, i64 64, !807, i64 72, !807, i64 88, !807, i64 104, !603, i64 120}
!806 = !{!"long", !603, i64 0}
!807 = !{!"timespec", !806, i64 0, !806, i64 8}
!808 = !DILocation(line: 321, column: 56, scope: !809, inlinedAt: !751)
!809 = !DILexicalBlockFile(scope: !791, file: !3, discriminator: 3)
!810 = !{!805, !806, i64 0}
!811 = !DILocation(line: 321, column: 7, scope: !812, inlinedAt: !751)
!812 = !DILexicalBlockFile(scope: !704, file: !3, discriminator: 3)
!813 = !DILocation(line: 324, column: 1, scope: !704, inlinedAt: !751)
!814 = !DILocation(line: 330, column: 9, scope: !648)
!815 = !DILocation(line: 373, column: 11, scope: !752)
!816 = !DILocation(line: 375, column: 11, scope: !817)
!817 = distinct !DILexicalBlock(scope: !818, file: !3, line: 374, column: 9)
!818 = distinct !DILexicalBlock(scope: !752, file: !3, line: 373, column: 11)
!819 = !DILocation(line: 376, column: 11, scope: !817)
!820 = !DILocation(line: 380, column: 8, scope: !648)
!821 = !DILocation(line: 381, column: 10, scope: !661)
!822 = !DILocation(line: 381, column: 7, scope: !648)
!823 = !DILocation(line: 383, column: 7, scope: !824)
!824 = distinct !DILexicalBlock(scope: !661, file: !3, line: 382, column: 5)
!825 = !DILocation(line: 384, column: 7, scope: !824)
!826 = !DILocation(line: 385, column: 5, scope: !824)
!827 = !DILocation(line: 87, column: 25, scope: !828, inlinedAt: !833)
!828 = distinct !DISubprogram(name: "file_name_init", scope: !3, file: !3, line: 85, type: !829, isLocal: true, isDefinition: true, scopeLine: 86, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !831)
!829 = !DISubroutineType(types: !830)
!830 = !{!662}
!831 = !{!832}
!832 = !DILocalVariable(name: "p", scope: !828, file: !3, line: 87, type: !662)
!833 = distinct !DILocation(line: 388, column: 37, scope: !660)
!834 = !DILocation(line: 91, column: 6, scope: !828, inlinedAt: !833)
!835 = !DILocation(line: 91, column: 14, scope: !828, inlinedAt: !833)
!836 = !{!837, !806, i64 8}
!837 = !{!"file_name", !602, i64 0, !806, i64 8, !602, i64 16}
!838 = !DILocation(line: 93, column: 12, scope: !828, inlinedAt: !833)
!839 = !DILocation(line: 93, column: 6, scope: !828, inlinedAt: !833)
!840 = !DILocation(line: 93, column: 10, scope: !828, inlinedAt: !833)
!841 = !{!837, !602, i64 0}
!842 = !DILocation(line: 94, column: 21, scope: !828, inlinedAt: !833)
!843 = !DILocation(line: 94, column: 6, scope: !828, inlinedAt: !833)
!844 = !DILocation(line: 94, column: 12, scope: !828, inlinedAt: !833)
!845 = !{!837, !602, i64 16}
!846 = !DILocation(line: 95, column: 15, scope: !828, inlinedAt: !833)
!847 = !DILocalVariable(name: "height", scope: !848, file: !3, line: 271, type: !27)
!848 = distinct !DISubprogram(name: "robust_getcwd", scope: !3, file: !3, line: 269, type: !849, isLocal: true, isDefinition: true, scopeLine: 270, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !851)
!849 = !DISubroutineType(types: !850)
!850 = !{null, !662}
!851 = !{!852, !847, !853, !862, !864}
!852 = !DILocalVariable(name: "file_name", arg: 1, scope: !848, file: !3, line: 269, type: !662)
!853 = !DILocalVariable(name: "dev_ino_buf", scope: !848, file: !3, line: 272, type: !854)
!854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_ino", file: !855, line: 7, size: 128, elements: !856)
!855 = !DIFile(filename: "./lib/dev-ino.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!856 = !{!857, !860}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !854, file: !855, line: 9, baseType: !858, size: 64)
!858 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !859, line: 48, baseType: !716)
!859 = !DIFile(filename: "/usr/include/sys/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!860 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !854, file: !855, line: 10, baseType: !861, size: 64, offset: 64)
!861 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !859, line: 60, baseType: !713)
!862 = !DILocalVariable(name: "root_dev_ino", scope: !848, file: !3, line: 273, type: !863)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!864 = !DILocalVariable(name: "dot_sb", scope: !848, file: !3, line: 274, type: !709)
!865 = !DILocation(line: 271, column: 10, scope: !848, inlinedAt: !866)
!866 = distinct !DILocation(line: 389, column: 7, scope: !660)
!867 = !DILocation(line: 272, column: 3, scope: !848, inlinedAt: !866)
!868 = !DILocation(line: 272, column: 18, scope: !848, inlinedAt: !866)
!869 = !DILocation(line: 273, column: 34, scope: !848, inlinedAt: !866)
!870 = !DILocation(line: 273, column: 19, scope: !848, inlinedAt: !866)
!871 = !DILocation(line: 274, column: 3, scope: !848, inlinedAt: !866)
!872 = !DILocation(line: 276, column: 20, scope: !873, inlinedAt: !866)
!873 = distinct !DILexicalBlock(scope: !848, file: !3, line: 276, column: 7)
!874 = !DILocation(line: 276, column: 7, scope: !848, inlinedAt: !866)
!875 = !DILocation(line: 277, column: 5, scope: !873, inlinedAt: !866)
!876 = !DILocation(line: 277, column: 5, scope: !877, inlinedAt: !866)
!877 = !DILexicalBlockFile(scope: !873, file: !3, discriminator: 1)
!878 = !DILocation(line: 277, column: 5, scope: !879, inlinedAt: !866)
!879 = !DILexicalBlockFile(scope: !873, file: !3, discriminator: 2)
!880 = !DILocation(line: 277, column: 5, scope: !881, inlinedAt: !866)
!881 = !DILexicalBlockFile(scope: !873, file: !3, discriminator: 3)
!882 = !DILocation(line: 274, column: 15, scope: !848, inlinedAt: !866)
!883 = !DILocation(line: 449, column: 1, scope: !782, inlinedAt: !884)
!884 = distinct !DILocation(line: 280, column: 7, scope: !885, inlinedAt: !866)
!885 = distinct !DILexicalBlock(scope: !848, file: !3, line: 280, column: 7)
!886 = !DILocation(line: 451, column: 10, scope: !782, inlinedAt: !884)
!887 = !DILocation(line: 280, column: 27, scope: !885, inlinedAt: !866)
!888 = !DILocation(line: 280, column: 7, scope: !848, inlinedAt: !866)
!889 = !DILocation(line: 281, column: 5, scope: !885, inlinedAt: !866)
!890 = !DILocation(line: 281, column: 5, scope: !891, inlinedAt: !866)
!891 = !DILexicalBlockFile(scope: !885, file: !3, discriminator: 1)
!892 = !DILocation(line: 281, column: 5, scope: !893, inlinedAt: !866)
!893 = !DILexicalBlockFile(scope: !885, file: !3, discriminator: 2)
!894 = !DILocation(line: 281, column: 5, scope: !895, inlinedAt: !866)
!895 = !DILexicalBlockFile(scope: !885, file: !3, discriminator: 3)
!896 = !DILocation(line: 293, column: 18, scope: !897, inlinedAt: !866)
!897 = distinct !DILexicalBlock(scope: !848, file: !3, line: 293, column: 7)
!898 = !DILocation(line: 103, column: 22, scope: !899, inlinedAt: !912)
!899 = distinct !DISubprogram(name: "file_name_prepend", scope: !3, file: !3, line: 101, type: !900, isLocal: true, isDefinition: true, scopeLine: 102, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !902)
!900 = !DISubroutineType(types: !901)
!901 = !{null, !662, !35, !27}
!902 = !{!903, !904, !905, !906, !907, !910, !911}
!903 = !DILocalVariable(name: "p", arg: 1, scope: !899, file: !3, line: 101, type: !662)
!904 = !DILocalVariable(name: "s", arg: 2, scope: !899, file: !3, line: 101, type: !35)
!905 = !DILocalVariable(name: "s_len", arg: 3, scope: !899, file: !3, line: 101, type: !27)
!906 = !DILocalVariable(name: "n_free", scope: !899, file: !3, line: 103, type: !27)
!907 = !DILocalVariable(name: "half", scope: !908, file: !3, line: 106, type: !27)
!908 = distinct !DILexicalBlock(scope: !909, file: !3, line: 105, column: 5)
!909 = distinct !DILexicalBlock(scope: !899, file: !3, line: 104, column: 7)
!910 = !DILocalVariable(name: "q", scope: !908, file: !3, line: 111, type: !25)
!911 = !DILocalVariable(name: "n_used", scope: !908, file: !3, line: 112, type: !27)
!912 = distinct !DILocation(line: 223, column: 11, scope: !913, inlinedAt: !951)
!913 = !DILexicalBlockFile(scope: !914, file: !3, discriminator: 1)
!914 = distinct !DILexicalBlock(scope: !915, file: !3, line: 222, column: 9)
!915 = distinct !DILexicalBlock(scope: !916, file: !3, line: 221, column: 12)
!916 = distinct !DILexicalBlock(scope: !917, file: !3, line: 183, column: 5)
!917 = distinct !DISubprogram(name: "find_dir_entry", scope: !3, file: !3, line: 154, type: !918, isLocal: true, isDefinition: true, scopeLine: 156, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !920)
!918 = !DISubroutineType(types: !919)
!919 = !{null, !786, !662, !27}
!920 = !{!921, !922, !923, !924, !929, !930, !931, !932, !933, !944, !945, !946}
!921 = !DILocalVariable(name: "dot_sb", arg: 1, scope: !917, file: !3, line: 154, type: !786)
!922 = !DILocalVariable(name: "file_name", arg: 2, scope: !917, file: !3, line: 154, type: !662)
!923 = !DILocalVariable(name: "parent_height", arg: 3, scope: !917, file: !3, line: 155, type: !27)
!924 = !DILocalVariable(name: "dirp", scope: !917, file: !3, line: 157, type: !925)
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !926, size: 64)
!926 = !DIDerivedType(tag: DW_TAG_typedef, name: "DIR", file: !927, line: 127, baseType: !928)
!927 = !DIFile(filename: "/usr/include/dirent.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!928 = !DICompositeType(tag: DW_TAG_structure_type, name: "__dirstream", file: !927, line: 127, flags: DIFlagFwdDecl)
!929 = !DILocalVariable(name: "fd", scope: !917, file: !3, line: 158, type: !64)
!930 = !DILocalVariable(name: "parent_sb", scope: !917, file: !3, line: 159, type: !709)
!931 = !DILocalVariable(name: "use_lstat", scope: !917, file: !3, line: 160, type: !94)
!932 = !DILocalVariable(name: "found", scope: !917, file: !3, line: 161, type: !94)
!933 = !DILocalVariable(name: "dp", scope: !916, file: !3, line: 184, type: !934)
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !935, size: 64)
!935 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !936)
!936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dirent", file: !937, line: 22, size: 2240, elements: !938)
!937 = !DIFile(filename: "/usr/include/bits/dirent.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!938 = !{!939, !940, !941, !942, !943}
!939 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino", scope: !936, file: !937, line: 25, baseType: !716, size: 64)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "d_off", scope: !936, file: !937, line: 26, baseType: !728, size: 64, offset: 64)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "d_reclen", scope: !936, file: !937, line: 31, baseType: !135, size: 16, offset: 128)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "d_type", scope: !936, file: !937, line: 32, baseType: !34, size: 8, offset: 144)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !936, file: !937, line: 33, baseType: !161, size: 2048, offset: 152)
!944 = !DILocalVariable(name: "ent_sb", scope: !916, file: !3, line: 185, type: !709)
!945 = !DILocalVariable(name: "ino", scope: !916, file: !3, line: 186, type: !858)
!946 = !DILocalVariable(name: "e", scope: !947, file: !3, line: 194, type: !64)
!947 = distinct !DILexicalBlock(scope: !948, file: !3, line: 192, column: 13)
!948 = distinct !DILexicalBlock(scope: !949, file: !3, line: 191, column: 15)
!949 = distinct !DILexicalBlock(scope: !950, file: !3, line: 190, column: 9)
!950 = distinct !DILexicalBlock(scope: !916, file: !3, line: 189, column: 11)
!951 = distinct !DILocation(line: 289, column: 7, scope: !952, inlinedAt: !866)
!952 = distinct !DILexicalBlock(scope: !848, file: !3, line: 284, column: 5)
!953 = !DILocation(line: 286, column: 11, scope: !954, inlinedAt: !866)
!954 = distinct !DILexicalBlock(scope: !952, file: !3, line: 286, column: 11)
!955 = !{!956, !806, i64 0}
!956 = !{!"dev_ino", !806, i64 0, !806, i64 8}
!957 = !DILocation(line: 286, column: 11, scope: !958, inlinedAt: !866)
!958 = !DILexicalBlockFile(scope: !954, file: !3, discriminator: 1)
!959 = !{!956, !806, i64 8}
!960 = !DILocation(line: 286, column: 11, scope: !961, inlinedAt: !866)
!961 = !DILexicalBlockFile(scope: !952, file: !3, discriminator: 1)
!962 = !DILocation(line: 289, column: 49, scope: !952, inlinedAt: !866)
!963 = !DILocation(line: 154, column: 30, scope: !917, inlinedAt: !951)
!964 = !DILocation(line: 155, column: 24, scope: !917, inlinedAt: !951)
!965 = !DILocation(line: 159, column: 3, scope: !917, inlinedAt: !951)
!966 = !DILocation(line: 163, column: 10, scope: !917, inlinedAt: !951)
!967 = !DILocation(line: 157, column: 8, scope: !917, inlinedAt: !951)
!968 = !DILocation(line: 164, column: 12, scope: !969, inlinedAt: !951)
!969 = distinct !DILexicalBlock(scope: !917, file: !3, line: 164, column: 7)
!970 = !DILocation(line: 164, column: 7, scope: !917, inlinedAt: !951)
!971 = !DILocation(line: 165, column: 5, scope: !969, inlinedAt: !951)
!972 = !DILocation(line: 165, column: 5, scope: !973, inlinedAt: !951)
!973 = !DILexicalBlockFile(scope: !969, file: !3, discriminator: 1)
!974 = !DILocation(line: 165, column: 5, scope: !975, inlinedAt: !951)
!975 = !DILexicalBlockFile(scope: !969, file: !3, discriminator: 2)
!976 = !DILocation(line: 165, column: 5, scope: !977, inlinedAt: !951)
!977 = !DILexicalBlockFile(scope: !969, file: !3, discriminator: 3)
!978 = !DILocation(line: 165, column: 5, scope: !979, inlinedAt: !951)
!979 = !DILexicalBlockFile(scope: !969, file: !3, discriminator: 4)
!980 = !DILocation(line: 168, column: 8, scope: !917, inlinedAt: !951)
!981 = !DILocation(line: 158, column: 7, scope: !917, inlinedAt: !951)
!982 = !DILocation(line: 169, column: 10, scope: !983, inlinedAt: !951)
!983 = distinct !DILexicalBlock(scope: !917, file: !3, line: 169, column: 7)
!984 = !DILocation(line: 169, column: 8, scope: !983, inlinedAt: !951)
!985 = !DILocation(line: 169, column: 18, scope: !986, inlinedAt: !951)
!986 = !DILexicalBlockFile(scope: !983, file: !3, discriminator: 1)
!987 = !DILocation(line: 169, column: 8, scope: !986, inlinedAt: !951)
!988 = !DILocation(line: 169, column: 32, scope: !989, inlinedAt: !951)
!989 = !DILexicalBlockFile(scope: !983, file: !3, discriminator: 2)
!990 = !DILocation(line: 169, column: 8, scope: !989, inlinedAt: !951)
!991 = !DILocation(line: 169, column: 8, scope: !992, inlinedAt: !951)
!992 = !DILexicalBlockFile(scope: !983, file: !3, discriminator: 3)
!993 = !DILocation(line: 169, column: 46, scope: !992, inlinedAt: !951)
!994 = !DILocation(line: 169, column: 7, scope: !995, inlinedAt: !951)
!995 = !DILexicalBlockFile(scope: !917, file: !3, discriminator: 3)
!996 = !DILocation(line: 170, column: 5, scope: !983, inlinedAt: !951)
!997 = !DILocation(line: 170, column: 5, scope: !986, inlinedAt: !951)
!998 = !DILocation(line: 170, column: 5, scope: !989, inlinedAt: !951)
!999 = !DILocation(line: 170, column: 5, scope: !992, inlinedAt: !951)
!1000 = !DILocation(line: 170, column: 5, scope: !1001, inlinedAt: !951)
!1001 = !DILexicalBlockFile(scope: !983, file: !3, discriminator: 4)
!1002 = !DILocation(line: 159, column: 15, scope: !917, inlinedAt: !951)
!1003 = !DILocation(line: 173, column: 8, scope: !1004, inlinedAt: !951)
!1004 = distinct !DILexicalBlock(scope: !917, file: !3, line: 173, column: 7)
!1005 = !DILocalVariable(name: "__fd", arg: 1, scope: !1006, file: !783, line: 463, type: !64)
!1006 = distinct !DISubprogram(name: "fstat", scope: !783, file: !783, line: 463, type: !1007, isLocal: false, isDefinition: true, scopeLine: 464, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1009)
!1007 = !DISubroutineType(types: !1008)
!1008 = !{!64, !64, !786}
!1009 = !{!1005, !1010}
!1010 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1006, file: !783, line: 463, type: !786)
!1011 = !DILocation(line: 463, column: 1, scope: !1006, inlinedAt: !1012)
!1012 = distinct !DILocation(line: 173, column: 18, scope: !1013, inlinedAt: !951)
!1013 = !DILexicalBlockFile(scope: !1004, file: !3, discriminator: 1)
!1014 = !DILocation(line: 465, column: 10, scope: !1006, inlinedAt: !1012)
!1015 = !DILocation(line: 173, column: 8, scope: !1013, inlinedAt: !951)
!1016 = !DILocation(line: 449, column: 1, scope: !782, inlinedAt: !1017)
!1017 = distinct !DILocation(line: 173, column: 43, scope: !1018, inlinedAt: !951)
!1018 = !DILexicalBlockFile(scope: !1004, file: !3, discriminator: 2)
!1019 = !DILocation(line: 451, column: 10, scope: !782, inlinedAt: !1017)
!1020 = !DILocation(line: 173, column: 8, scope: !1018, inlinedAt: !951)
!1021 = !DILocation(line: 173, column: 8, scope: !1022, inlinedAt: !951)
!1022 = !DILexicalBlockFile(scope: !1004, file: !3, discriminator: 3)
!1023 = !DILocation(line: 173, column: 67, scope: !1022, inlinedAt: !951)
!1024 = !DILocation(line: 173, column: 7, scope: !995, inlinedAt: !951)
!1025 = !DILocation(line: 174, column: 5, scope: !1004, inlinedAt: !951)
!1026 = !DILocation(line: 174, column: 5, scope: !1013, inlinedAt: !951)
!1027 = !DILocation(line: 174, column: 5, scope: !1018, inlinedAt: !951)
!1028 = !DILocation(line: 174, column: 5, scope: !1022, inlinedAt: !951)
!1029 = !DILocation(line: 174, column: 5, scope: !1030, inlinedAt: !951)
!1030 = !DILexicalBlockFile(scope: !1004, file: !3, discriminator: 4)
!1031 = !DILocation(line: 179, column: 26, scope: !917, inlinedAt: !951)
!1032 = !DILocation(line: 179, column: 44, scope: !917, inlinedAt: !951)
!1033 = !DILocation(line: 179, column: 33, scope: !917, inlinedAt: !951)
!1034 = !DILocation(line: 161, column: 8, scope: !917, inlinedAt: !951)
!1035 = !DILocation(line: 185, column: 7, scope: !916, inlinedAt: !951)
!1036 = !DILocation(line: 188, column: 7, scope: !916, inlinedAt: !951)
!1037 = !DILocation(line: 188, column: 13, scope: !916, inlinedAt: !951)
!1038 = !DILocalVariable(name: "dirp", arg: 1, scope: !1039, file: !20, line: 278, type: !925)
!1039 = distinct !DISubprogram(name: "readdir_ignoring_dot_and_dotdot", scope: !20, file: !20, line: 278, type: !1040, isLocal: true, isDefinition: true, scopeLine: 279, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1042)
!1040 = !DISubroutineType(types: !1041)
!1041 = !{!934, !925}
!1042 = !{!1038, !1043}
!1043 = !DILocalVariable(name: "dp", scope: !1044, file: !20, line: 282, type: !934)
!1044 = distinct !DILexicalBlock(scope: !1039, file: !20, line: 281, column: 5)
!1045 = !DILocation(line: 278, column: 39, scope: !1039, inlinedAt: !1046)
!1046 = distinct !DILocation(line: 189, column: 17, scope: !950, inlinedAt: !951)
!1047 = !DILocation(line: 282, column: 33, scope: !1044, inlinedAt: !1046)
!1048 = !DILocation(line: 282, column: 28, scope: !1044, inlinedAt: !1046)
!1049 = !DILocation(line: 283, column: 14, scope: !1050, inlinedAt: !1046)
!1050 = distinct !DILexicalBlock(scope: !1044, file: !20, line: 283, column: 11)
!1051 = !DILocation(line: 283, column: 22, scope: !1050, inlinedAt: !1046)
!1052 = !DILocation(line: 283, column: 42, scope: !1053, inlinedAt: !1046)
!1053 = !DILexicalBlockFile(scope: !1050, file: !20, discriminator: 1)
!1054 = !DILocalVariable(name: "file_name", arg: 1, scope: !1055, file: !20, line: 265, type: !35)
!1055 = distinct !DISubprogram(name: "dot_or_dotdot", scope: !20, file: !20, line: 265, type: !1056, isLocal: true, isDefinition: true, scopeLine: 266, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1058)
!1056 = !DISubroutineType(types: !1057)
!1057 = !{!94, !35}
!1058 = !{!1054, !1059}
!1059 = !DILocalVariable(name: "sep", scope: !1060, file: !20, line: 269, type: !26)
!1060 = distinct !DILexicalBlock(scope: !1061, file: !20, line: 268, column: 5)
!1061 = distinct !DILexicalBlock(scope: !1055, file: !20, line: 267, column: 7)
!1062 = !DILocation(line: 265, column: 28, scope: !1055, inlinedAt: !1063)
!1063 = distinct !DILocation(line: 283, column: 27, scope: !1053, inlinedAt: !1046)
!1064 = !DILocation(line: 267, column: 7, scope: !1061, inlinedAt: !1063)
!1065 = !DILocation(line: 267, column: 20, scope: !1061, inlinedAt: !1063)
!1066 = !DILocation(line: 267, column: 7, scope: !1055, inlinedAt: !1063)
!1067 = !DILocation(line: 269, column: 29, scope: !1060, inlinedAt: !1063)
!1068 = !DILocation(line: 269, column: 42, scope: !1060, inlinedAt: !1063)
!1069 = !DILocation(line: 269, column: 18, scope: !1060, inlinedAt: !1063)
!1070 = !DILocation(line: 269, column: 12, scope: !1060, inlinedAt: !1063)
!1071 = !DILocation(line: 270, column: 17, scope: !1060, inlinedAt: !1063)
!1072 = !DILocation(line: 270, column: 24, scope: !1073, inlinedAt: !1063)
!1073 = !DILexicalBlockFile(scope: !1060, file: !20, discriminator: 1)
!1074 = !DILocation(line: 270, column: 21, scope: !1060, inlinedAt: !1063)
!1075 = !DILocation(line: 283, column: 11, scope: !1076, inlinedAt: !1046)
!1076 = !DILexicalBlockFile(scope: !1044, file: !20, discriminator: 1)
!1077 = !DILocation(line: 184, column: 28, scope: !916, inlinedAt: !951)
!1078 = !DILocation(line: 189, column: 57, scope: !950, inlinedAt: !951)
!1079 = !DILocation(line: 189, column: 11, scope: !916, inlinedAt: !951)
!1080 = !DILocation(line: 191, column: 15, scope: !948, inlinedAt: !951)
!1081 = !DILocation(line: 191, column: 15, scope: !949, inlinedAt: !951)
!1082 = !DILocation(line: 194, column: 19, scope: !947, inlinedAt: !951)
!1083 = !DILocation(line: 195, column: 15, scope: !947, inlinedAt: !951)
!1084 = !DILocation(line: 196, column: 21, scope: !947, inlinedAt: !951)
!1085 = !DILocation(line: 227, column: 5, scope: !917, inlinedAt: !951)
!1086 = !DILocation(line: 229, column: 20, scope: !1087, inlinedAt: !951)
!1087 = distinct !DILexicalBlock(scope: !917, file: !3, line: 229, column: 7)
!1088 = !DILocation(line: 204, column: 13, scope: !916, inlinedAt: !951)
!1089 = !{!1090, !806, i64 0}
!1090 = !{!"dirent", !806, i64 0, !806, i64 8, !1091, i64 16, !603, i64 18, !603, i64 19}
!1091 = !{!"short", !603, i64 0}
!1092 = !DILocation(line: 186, column: 13, scope: !916, inlinedAt: !951)
!1093 = !DILocation(line: 206, column: 15, scope: !1094, inlinedAt: !951)
!1094 = distinct !DILexicalBlock(scope: !916, file: !3, line: 206, column: 11)
!1095 = !DILocation(line: 206, column: 38, scope: !1094, inlinedAt: !951)
!1096 = !DILocation(line: 208, column: 22, scope: !1097, inlinedAt: !951)
!1097 = distinct !DILexicalBlock(scope: !1098, file: !3, line: 208, column: 15)
!1098 = distinct !DILexicalBlock(scope: !1094, file: !3, line: 207, column: 9)
!1099 = !DILocation(line: 185, column: 19, scope: !916, inlinedAt: !951)
!1100 = !DILocalVariable(name: "__path", arg: 1, scope: !1101, file: !783, line: 456, type: !35)
!1101 = distinct !DISubprogram(name: "lstat", scope: !783, file: !783, line: 456, type: !784, isLocal: false, isDefinition: true, scopeLine: 457, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1102)
!1102 = !{!1100, !1103}
!1103 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1101, file: !783, line: 456, type: !786)
!1104 = !DILocation(line: 456, column: 1, scope: !1101, inlinedAt: !1105)
!1105 = distinct !DILocation(line: 208, column: 15, scope: !1097, inlinedAt: !951)
!1106 = !DILocation(line: 458, column: 10, scope: !1101, inlinedAt: !1105)
!1107 = !DILocation(line: 208, column: 43, scope: !1097, inlinedAt: !951)
!1108 = !DILocation(line: 208, column: 15, scope: !1098, inlinedAt: !951)
!1109 = distinct !{!1109, !1110, !1111}
!1110 = !DILocation(line: 182, column: 3, scope: !917)
!1111 = !DILocation(line: 227, column: 5, scope: !917)
!1112 = !DILocation(line: 213, column: 24, scope: !1098, inlinedAt: !951)
!1113 = !DILocation(line: 214, column: 9, scope: !1098, inlinedAt: !951)
!1114 = !DILocation(line: 216, column: 26, scope: !1115, inlinedAt: !951)
!1115 = distinct !DILexicalBlock(scope: !916, file: !3, line: 216, column: 11)
!1116 = !DILocation(line: 216, column: 15, scope: !1115, inlinedAt: !951)
!1117 = !DILocation(line: 216, column: 11, scope: !916, inlinedAt: !951)
!1118 = !DILocation(line: 221, column: 24, scope: !915, inlinedAt: !951)
!1119 = !DILocation(line: 221, column: 34, scope: !1120, inlinedAt: !951)
!1120 = !DILexicalBlockFile(scope: !915, file: !3, discriminator: 1)
!1121 = !DILocation(line: 221, column: 52, scope: !1120, inlinedAt: !951)
!1122 = !DILocation(line: 221, column: 41, scope: !1120, inlinedAt: !951)
!1123 = !DILocation(line: 221, column: 12, scope: !1124, inlinedAt: !951)
!1124 = !DILexicalBlockFile(scope: !916, file: !3, discriminator: 1)
!1125 = !DILocation(line: 223, column: 41, scope: !914, inlinedAt: !951)
!1126 = !DILocation(line: 223, column: 53, scope: !914, inlinedAt: !951)
!1127 = !DILocation(line: 101, column: 53, scope: !899, inlinedAt: !912)
!1128 = !DILocation(line: 101, column: 63, scope: !899, inlinedAt: !912)
!1129 = !DILocation(line: 103, column: 33, scope: !899, inlinedAt: !912)
!1130 = !DILocation(line: 103, column: 28, scope: !899, inlinedAt: !912)
!1131 = !DILocation(line: 103, column: 10, scope: !899, inlinedAt: !912)
!1132 = !DILocation(line: 104, column: 18, scope: !909, inlinedAt: !912)
!1133 = !DILocation(line: 104, column: 14, scope: !909, inlinedAt: !912)
!1134 = !DILocation(line: 104, column: 7, scope: !899, inlinedAt: !912)
!1135 = !DILocation(line: 106, column: 24, scope: !908, inlinedAt: !912)
!1136 = !DILocation(line: 106, column: 36, scope: !908, inlinedAt: !912)
!1137 = !DILocation(line: 106, column: 14, scope: !908, inlinedAt: !912)
!1138 = !DILocalVariable(name: "n", arg: 1, scope: !1139, file: !550, line: 105, type: !27)
!1139 = distinct !DISubprogram(name: "xnmalloc", scope: !550, file: !550, line: 105, type: !1140, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1142)
!1140 = !DISubroutineType(types: !1141)
!1141 = !{!24, !27, !27}
!1142 = !{!1138, !1143}
!1143 = !DILocalVariable(name: "s", arg: 2, scope: !1139, file: !550, line: 105, type: !27)
!1144 = !DILocation(line: 105, column: 18, scope: !1139, inlinedAt: !1145)
!1145 = distinct !DILocation(line: 111, column: 17, scope: !908, inlinedAt: !912)
!1146 = !DILocation(line: 105, column: 28, scope: !1139, inlinedAt: !1145)
!1147 = !DILocation(line: 107, column: 7, scope: !1148, inlinedAt: !1145)
!1148 = distinct !DILexicalBlock(scope: !1139, file: !550, line: 107, column: 7)
!1149 = !DILocation(line: 107, column: 7, scope: !1139, inlinedAt: !1145)
!1150 = !DILocation(line: 108, column: 5, scope: !1148, inlinedAt: !1145)
!1151 = !DILocation(line: 109, column: 21, scope: !1139, inlinedAt: !1145)
!1152 = !DILocation(line: 109, column: 10, scope: !1139, inlinedAt: !1145)
!1153 = !DILocation(line: 111, column: 13, scope: !908, inlinedAt: !912)
!1154 = !DILocation(line: 112, column: 34, scope: !908, inlinedAt: !912)
!1155 = !DILocation(line: 112, column: 14, scope: !908, inlinedAt: !912)
!1156 = !DILocation(line: 113, column: 20, scope: !908, inlinedAt: !912)
!1157 = !DILocation(line: 113, column: 31, scope: !908, inlinedAt: !912)
!1158 = !DILocation(line: 113, column: 16, scope: !908, inlinedAt: !912)
!1159 = !DILocation(line: 114, column: 32, scope: !908, inlinedAt: !912)
!1160 = !DILocation(line: 114, column: 7, scope: !908, inlinedAt: !912)
!1161 = !DILocation(line: 115, column: 7, scope: !908, inlinedAt: !912)
!1162 = !DILocation(line: 116, column: 14, scope: !908, inlinedAt: !912)
!1163 = !DILocation(line: 117, column: 18, scope: !908, inlinedAt: !912)
!1164 = !DILocation(line: 118, column: 5, scope: !908, inlinedAt: !912)
!1165 = !DILocation(line: 120, column: 12, scope: !899, inlinedAt: !912)
!1166 = !DILocation(line: 121, column: 15, scope: !899, inlinedAt: !912)
!1167 = !DILocation(line: 122, column: 14, scope: !899, inlinedAt: !912)
!1168 = !DILocation(line: 122, column: 20, scope: !899, inlinedAt: !912)
!1169 = !DILocation(line: 122, column: 3, scope: !899, inlinedAt: !912)
!1170 = !DILocation(line: 225, column: 11, scope: !914, inlinedAt: !951)
!1171 = !DILocation(line: 229, column: 23, scope: !1172, inlinedAt: !951)
!1172 = !DILexicalBlockFile(scope: !1087, file: !3, discriminator: 1)
!1173 = !DILocation(line: 229, column: 39, scope: !1172, inlinedAt: !951)
!1174 = !DILocation(line: 229, column: 7, scope: !1175, inlinedAt: !951)
!1175 = !DILexicalBlockFile(scope: !917, file: !3, discriminator: 1)
!1176 = !DILocation(line: 233, column: 7, scope: !1177, inlinedAt: !951)
!1177 = distinct !DILexicalBlock(scope: !1087, file: !3, line: 230, column: 5)
!1178 = !DILocation(line: 233, column: 7, scope: !1179, inlinedAt: !951)
!1179 = !DILexicalBlockFile(scope: !1177, file: !3, discriminator: 1)
!1180 = !DILocation(line: 233, column: 7, scope: !1181, inlinedAt: !951)
!1181 = !DILexicalBlockFile(scope: !1177, file: !3, discriminator: 2)
!1182 = !DILocation(line: 233, column: 7, scope: !1183, inlinedAt: !951)
!1183 = !DILexicalBlockFile(scope: !1177, file: !3, discriminator: 3)
!1184 = !DILocation(line: 233, column: 7, scope: !1185, inlinedAt: !951)
!1185 = !DILexicalBlockFile(scope: !1177, file: !3, discriminator: 4)
!1186 = !DILocation(line: 237, column: 10, scope: !1187, inlinedAt: !951)
!1187 = distinct !DILexicalBlock(scope: !917, file: !3, line: 237, column: 8)
!1188 = !DILocation(line: 237, column: 8, scope: !917, inlinedAt: !951)
!1189 = !DILocation(line: 238, column: 5, scope: !1187, inlinedAt: !951)
!1190 = !DILocation(line: 238, column: 5, scope: !1191, inlinedAt: !951)
!1191 = !DILexicalBlockFile(scope: !1187, file: !3, discriminator: 1)
!1192 = !DILocation(line: 238, column: 5, scope: !1193, inlinedAt: !951)
!1193 = !DILexicalBlockFile(scope: !1187, file: !3, discriminator: 2)
!1194 = !DILocation(line: 238, column: 5, scope: !1195, inlinedAt: !951)
!1195 = !DILexicalBlockFile(scope: !1187, file: !3, discriminator: 3)
!1196 = !DILocation(line: 242, column: 13, scope: !917, inlinedAt: !951)
!1197 = !{i64 0, i64 8, !1198, i64 8, i64 8, !1198, i64 16, i64 8, !1198, i64 24, i64 4, !692, i64 28, i64 4, !692, i64 32, i64 4, !692, i64 36, i64 4, !692, i64 40, i64 8, !1198, i64 48, i64 8, !1198, i64 56, i64 8, !1198, i64 64, i64 8, !1198, i64 72, i64 8, !1198, i64 80, i64 8, !1198, i64 88, i64 8, !1198, i64 96, i64 8, !1198, i64 104, i64 8, !1198, i64 112, i64 8, !1198, i64 120, i64 24, !761}
!1198 = !{!806, !806, i64 0}
!1199 = !DILocation(line: 243, column: 1, scope: !917, inlinedAt: !951)
!1200 = !DILocation(line: 283, column: 3, scope: !1201, inlinedAt: !866)
!1201 = !DILexicalBlockFile(scope: !848, file: !3, discriminator: 2)
!1202 = distinct !{!1202, !1203, !1204}
!1203 = !DILocation(line: 283, column: 3, scope: !848)
!1204 = !DILocation(line: 290, column: 5, scope: !848)
!1205 = !DILocation(line: 293, column: 7, scope: !897, inlinedAt: !866)
!1206 = !DILocation(line: 293, column: 27, scope: !897, inlinedAt: !866)
!1207 = !DILocation(line: 293, column: 7, scope: !848, inlinedAt: !866)
!1208 = !DILocation(line: 101, column: 53, scope: !899, inlinedAt: !1209)
!1209 = distinct !DILocation(line: 294, column: 5, scope: !897, inlinedAt: !866)
!1210 = !DILocation(line: 101, column: 63, scope: !899, inlinedAt: !1209)
!1211 = !DILocation(line: 103, column: 33, scope: !899, inlinedAt: !1209)
!1212 = !DILocation(line: 104, column: 14, scope: !909, inlinedAt: !1209)
!1213 = !DILocation(line: 104, column: 7, scope: !899, inlinedAt: !1209)
!1214 = !DILocation(line: 106, column: 24, scope: !908, inlinedAt: !1209)
!1215 = !DILocation(line: 106, column: 36, scope: !908, inlinedAt: !1209)
!1216 = !DILocation(line: 106, column: 14, scope: !908, inlinedAt: !1209)
!1217 = !DILocation(line: 105, column: 18, scope: !1139, inlinedAt: !1218)
!1218 = distinct !DILocation(line: 111, column: 17, scope: !908, inlinedAt: !1209)
!1219 = !DILocation(line: 105, column: 28, scope: !1139, inlinedAt: !1218)
!1220 = !DILocation(line: 107, column: 7, scope: !1148, inlinedAt: !1218)
!1221 = !DILocation(line: 107, column: 7, scope: !1139, inlinedAt: !1218)
!1222 = !DILocation(line: 108, column: 5, scope: !1148, inlinedAt: !1218)
!1223 = !DILocation(line: 109, column: 21, scope: !1139, inlinedAt: !1218)
!1224 = !DILocation(line: 109, column: 10, scope: !1139, inlinedAt: !1218)
!1225 = !DILocation(line: 111, column: 13, scope: !908, inlinedAt: !1209)
!1226 = !DILocation(line: 112, column: 14, scope: !908, inlinedAt: !1209)
!1227 = !DILocation(line: 113, column: 20, scope: !908, inlinedAt: !1209)
!1228 = !DILocation(line: 113, column: 31, scope: !908, inlinedAt: !1209)
!1229 = !DILocation(line: 113, column: 16, scope: !908, inlinedAt: !1209)
!1230 = !DILocation(line: 114, column: 7, scope: !908, inlinedAt: !1209)
!1231 = !DILocation(line: 115, column: 7, scope: !908, inlinedAt: !1209)
!1232 = !DILocation(line: 116, column: 14, scope: !908, inlinedAt: !1209)
!1233 = !DILocation(line: 117, column: 18, scope: !908, inlinedAt: !1209)
!1234 = !DILocation(line: 118, column: 5, scope: !908, inlinedAt: !1209)
!1235 = !DILocation(line: 120, column: 12, scope: !899, inlinedAt: !1209)
!1236 = !DILocation(line: 121, column: 15, scope: !899, inlinedAt: !1209)
!1237 = !DILocation(line: 294, column: 5, scope: !897, inlinedAt: !866)
!1238 = !DILocation(line: 390, column: 24, scope: !660)
!1239 = !DILocation(line: 295, column: 1, scope: !848, inlinedAt: !866)
!1240 = !DILocation(line: 390, column: 7, scope: !660)
!1241 = !DILocation(line: 80, column: 12, scope: !1242, inlinedAt: !1245)
!1242 = distinct !DISubprogram(name: "file_name_free", scope: !3, file: !3, line: 78, type: !849, isLocal: true, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1243)
!1243 = !{!1244}
!1244 = !DILocalVariable(name: "p", arg: 1, scope: !1242, file: !3, line: 78, type: !662)
!1245 = distinct !DILocation(line: 391, column: 7, scope: !660)
!1246 = !DILocation(line: 80, column: 3, scope: !1242, inlinedAt: !1245)
!1247 = !DILocation(line: 81, column: 3, scope: !1242, inlinedAt: !1245)
!1248 = !DILocation(line: 395, column: 1, scope: !648)
!1249 = distinct !DISubprogram(name: "nth_parent", scope: !3, file: !3, line: 127, type: !1250, isLocal: true, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1252)
!1250 = !DISubroutineType(types: !1251)
!1251 = !{!25, !27}
!1252 = !{!1253, !1254, !1255, !1256}
!1253 = !DILocalVariable(name: "n", arg: 1, scope: !1249, file: !3, line: 127, type: !27)
!1254 = !DILocalVariable(name: "buf", scope: !1249, file: !3, line: 129, type: !25)
!1255 = !DILocalVariable(name: "p", scope: !1249, file: !3, line: 130, type: !25)
!1256 = !DILocalVariable(name: "i", scope: !1249, file: !3, line: 131, type: !27)
!1257 = !DILocation(line: 127, column: 20, scope: !1249)
!1258 = !DILocation(line: 105, column: 18, scope: !1139, inlinedAt: !1259)
!1259 = distinct !DILocation(line: 129, column: 15, scope: !1249)
!1260 = !DILocation(line: 105, column: 28, scope: !1139, inlinedAt: !1259)
!1261 = !DILocation(line: 107, column: 7, scope: !1148, inlinedAt: !1259)
!1262 = !DILocation(line: 107, column: 7, scope: !1139, inlinedAt: !1259)
!1263 = !DILocation(line: 108, column: 5, scope: !1148, inlinedAt: !1259)
!1264 = !DILocation(line: 109, column: 21, scope: !1139, inlinedAt: !1259)
!1265 = !DILocation(line: 109, column: 10, scope: !1139, inlinedAt: !1259)
!1266 = !DILocation(line: 129, column: 9, scope: !1249)
!1267 = !DILocation(line: 130, column: 9, scope: !1249)
!1268 = !DILocation(line: 131, column: 10, scope: !1249)
!1269 = !DILocation(line: 133, column: 17, scope: !1270)
!1270 = !DILexicalBlockFile(scope: !1271, file: !3, discriminator: 1)
!1271 = distinct !DILexicalBlock(scope: !1272, file: !3, line: 133, column: 3)
!1272 = distinct !DILexicalBlock(scope: !1249, file: !3, line: 133, column: 3)
!1273 = !DILocation(line: 133, column: 3, scope: !1274)
!1274 = !DILexicalBlockFile(scope: !1272, file: !3, discriminator: 1)
!1275 = !DILocation(line: 135, column: 7, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !1271, file: !3, line: 134, column: 5)
!1277 = !DILocation(line: 136, column: 9, scope: !1276)
!1278 = !DILocation(line: 133, column: 23, scope: !1279)
!1279 = !DILexicalBlockFile(scope: !1271, file: !3, discriminator: 2)
!1280 = distinct !{!1280, !1281}
!1281 = !{!"llvm.loop.unroll.disable"}
!1282 = distinct !{!1282, !1283, !1284}
!1283 = !DILocation(line: 133, column: 3, scope: !1272)
!1284 = !DILocation(line: 137, column: 5, scope: !1272)
!1285 = !DILocation(line: 138, column: 3, scope: !1249)
!1286 = !DILocation(line: 138, column: 9, scope: !1249)
!1287 = !DILocation(line: 139, column: 3, scope: !1249)
!1288 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !93, file: !93, line: 41, type: !41, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !88, variables: !1289)
!1289 = !{!1290}
!1290 = !DILocalVariable(name: "file", arg: 1, scope: !1288, file: !93, line: 41, type: !35)
!1291 = !DILocation(line: 41, column: 41, scope: !1288)
!1292 = !DILocation(line: 43, column: 13, scope: !1288)
!1293 = !DILocation(line: 44, column: 1, scope: !1288)
!1294 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !93, file: !93, line: 78, type: !1295, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !88, variables: !1297)
!1295 = !DISubroutineType(types: !1296)
!1296 = !{null, !94}
!1297 = !{!1298}
!1298 = !DILocalVariable(name: "ignore", arg: 1, scope: !1294, file: !93, line: 78, type: !94)
!1299 = !DIExpression(DW_OP_LLVM_fragment, 0, 1)
!1300 = !DILocation(line: 78, column: 37, scope: !1294)
!1301 = !DILocation(line: 80, column: 16, scope: !1294)
!1302 = !{!1303, !1303, i64 0}
!1303 = !{!"_Bool", !603, i64 0}
!1304 = !DILocation(line: 81, column: 1, scope: !1294)
!1305 = distinct !DISubprogram(name: "close_stdout", scope: !93, file: !93, line: 107, type: !1306, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !88, variables: !1308)
!1306 = !DISubroutineType(types: !1307)
!1307 = !{null}
!1308 = !{!1309}
!1309 = !DILocalVariable(name: "write_error", scope: !1310, file: !93, line: 112, type: !35)
!1310 = distinct !DILexicalBlock(scope: !1311, file: !93, line: 111, column: 5)
!1311 = distinct !DILexicalBlock(scope: !1305, file: !93, line: 109, column: 7)
!1312 = !DILocation(line: 109, column: 21, scope: !1311)
!1313 = !DILocation(line: 109, column: 7, scope: !1311)
!1314 = !DILocation(line: 109, column: 29, scope: !1311)
!1315 = !DILocation(line: 110, column: 7, scope: !1311)
!1316 = !DILocation(line: 110, column: 12, scope: !1317)
!1317 = !DILexicalBlockFile(scope: !1311, file: !93, discriminator: 1)
!1318 = !{i8 0, i8 2}
!1319 = !DILocation(line: 114, column: 19, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !1310, file: !93, line: 113, column: 11)
!1321 = !DILocation(line: 110, column: 25, scope: !1317)
!1322 = !DILocation(line: 110, column: 28, scope: !1323)
!1323 = !DILexicalBlockFile(scope: !1311, file: !93, discriminator: 2)
!1324 = !DILocation(line: 110, column: 34, scope: !1323)
!1325 = !DILocation(line: 109, column: 7, scope: !1326)
!1326 = !DILexicalBlockFile(scope: !1305, file: !93, discriminator: 1)
!1327 = !DILocation(line: 112, column: 33, scope: !1310)
!1328 = !DILocation(line: 112, column: 19, scope: !1310)
!1329 = !DILocation(line: 113, column: 11, scope: !1320)
!1330 = !DILocation(line: 113, column: 11, scope: !1310)
!1331 = !DILocation(line: 114, column: 36, scope: !1332)
!1332 = !DILexicalBlockFile(scope: !1320, file: !93, discriminator: 1)
!1333 = !DILocation(line: 114, column: 9, scope: !1334)
!1334 = !DILexicalBlockFile(scope: !1320, file: !93, discriminator: 2)
!1335 = !DILocation(line: 114, column: 9, scope: !1320)
!1336 = !DILocation(line: 117, column: 9, scope: !1332)
!1337 = !DILocation(line: 119, column: 14, scope: !1310)
!1338 = !DILocation(line: 119, column: 7, scope: !1310)
!1339 = !DILocation(line: 122, column: 22, scope: !1340)
!1340 = distinct !DILexicalBlock(scope: !1305, file: !93, line: 122, column: 8)
!1341 = !DILocation(line: 122, column: 8, scope: !1340)
!1342 = !DILocation(line: 122, column: 30, scope: !1340)
!1343 = !DILocation(line: 122, column: 8, scope: !1305)
!1344 = !DILocation(line: 123, column: 13, scope: !1340)
!1345 = !DILocation(line: 123, column: 6, scope: !1340)
!1346 = !DILocation(line: 124, column: 1, scope: !1305)
!1347 = distinct !DISubprogram(name: "set_program_name", scope: !108, file: !108, line: 39, type: !41, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !1348)
!1348 = !{!1349, !1350, !1351}
!1349 = !DILocalVariable(name: "argv0", arg: 1, scope: !1347, file: !108, line: 39, type: !35)
!1350 = !DILocalVariable(name: "slash", scope: !1347, file: !108, line: 46, type: !35)
!1351 = !DILocalVariable(name: "base", scope: !1347, file: !108, line: 47, type: !35)
!1352 = !DILocation(line: 39, column: 31, scope: !1347)
!1353 = !DILocation(line: 51, column: 13, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !1347, file: !108, line: 51, column: 7)
!1355 = !DILocation(line: 51, column: 7, scope: !1347)
!1356 = !DILocation(line: 55, column: 14, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !1354, file: !108, line: 52, column: 5)
!1358 = !DILocation(line: 54, column: 7, scope: !1357)
!1359 = !DILocation(line: 56, column: 7, scope: !1357)
!1360 = !DILocation(line: 59, column: 11, scope: !1347)
!1361 = !DILocation(line: 46, column: 15, scope: !1347)
!1362 = !DILocation(line: 60, column: 17, scope: !1347)
!1363 = !DILocation(line: 60, column: 33, scope: !1364)
!1364 = !DILexicalBlockFile(scope: !1347, file: !108, discriminator: 1)
!1365 = !DILocation(line: 60, column: 11, scope: !1347)
!1366 = !DILocation(line: 47, column: 15, scope: !1347)
!1367 = !DILocation(line: 61, column: 12, scope: !1368)
!1368 = distinct !DILexicalBlock(scope: !1347, file: !108, line: 61, column: 7)
!1369 = !DILocation(line: 61, column: 20, scope: !1368)
!1370 = !DILocation(line: 61, column: 25, scope: !1368)
!1371 = !DILocation(line: 61, column: 28, scope: !1372)
!1372 = !DILexicalBlockFile(scope: !1368, file: !108, discriminator: 1)
!1373 = !DILocation(line: 61, column: 61, scope: !1372)
!1374 = !DILocation(line: 61, column: 7, scope: !1364)
!1375 = !DILocation(line: 64, column: 11, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !1377, file: !108, line: 64, column: 11)
!1377 = distinct !DILexicalBlock(scope: !1368, file: !108, line: 62, column: 5)
!1378 = !DILocation(line: 64, column: 36, scope: !1376)
!1379 = !DILocation(line: 64, column: 11, scope: !1377)
!1380 = !DILocation(line: 66, column: 24, scope: !1381)
!1381 = distinct !DILexicalBlock(scope: !1376, file: !108, line: 65, column: 9)
!1382 = !DILocation(line: 70, column: 41, scope: !1381)
!1383 = !DILocation(line: 72, column: 9, scope: !1381)
!1384 = !DILocation(line: 84, column: 16, scope: !1347)
!1385 = !DILocation(line: 90, column: 27, scope: !1347)
!1386 = !DILocation(line: 92, column: 1, scope: !1347)
!1387 = distinct !DISubprogram(name: "clone_quoting_options", scope: !139, file: !139, line: 114, type: !1388, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !111, variables: !1391)
!1388 = !DISubroutineType(types: !1389)
!1389 = !{!1390, !1390}
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!1391 = !{!1392, !1393, !1394}
!1392 = !DILocalVariable(name: "o", arg: 1, scope: !1387, file: !139, line: 114, type: !1390)
!1393 = !DILocalVariable(name: "e", scope: !1387, file: !139, line: 116, type: !64)
!1394 = !DILocalVariable(name: "p", scope: !1387, file: !139, line: 117, type: !1390)
!1395 = !DILocation(line: 114, column: 48, scope: !1387)
!1396 = !DILocation(line: 116, column: 11, scope: !1387)
!1397 = !DILocation(line: 116, column: 7, scope: !1387)
!1398 = !DILocation(line: 117, column: 40, scope: !1387)
!1399 = !DILocation(line: 117, column: 40, scope: !1400)
!1400 = !DILexicalBlockFile(scope: !1387, file: !139, discriminator: 3)
!1401 = !DILocation(line: 117, column: 31, scope: !1400)
!1402 = !DILocation(line: 117, column: 27, scope: !1387)
!1403 = !DILocation(line: 119, column: 9, scope: !1387)
!1404 = !DILocation(line: 120, column: 3, scope: !1387)
!1405 = distinct !DISubprogram(name: "get_quoting_style", scope: !139, file: !139, line: 125, type: !1406, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !111, variables: !1410)
!1406 = !DISubroutineType(types: !1407)
!1407 = !{!5, !1408}
!1408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1409, size: 64)
!1409 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !146)
!1410 = !{!1411}
!1411 = !DILocalVariable(name: "o", arg: 1, scope: !1405, file: !139, line: 125, type: !1408)
!1412 = !DILocation(line: 125, column: 50, scope: !1405)
!1413 = !DILocation(line: 127, column: 11, scope: !1405)
!1414 = !DILocation(line: 127, column: 46, scope: !1415)
!1415 = !DILexicalBlockFile(scope: !1405, file: !139, discriminator: 3)
!1416 = !{!1417, !603, i64 0}
!1417 = !{!"quoting_options", !603, i64 0, !693, i64 4, !603, i64 8, !602, i64 40, !602, i64 48}
!1418 = !DILocation(line: 127, column: 3, scope: !1415)
!1419 = distinct !DISubprogram(name: "set_quoting_style", scope: !139, file: !139, line: 133, type: !1420, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !111, variables: !1422)
!1420 = !DISubroutineType(types: !1421)
!1421 = !{null, !1390, !5}
!1422 = !{!1423, !1424}
!1423 = !DILocalVariable(name: "o", arg: 1, scope: !1419, file: !139, line: 133, type: !1390)
!1424 = !DILocalVariable(name: "s", arg: 2, scope: !1419, file: !139, line: 133, type: !5)
!1425 = !DILocation(line: 133, column: 44, scope: !1419)
!1426 = !DILocation(line: 133, column: 66, scope: !1419)
!1427 = !DILocation(line: 135, column: 4, scope: !1419)
!1428 = !DILocation(line: 135, column: 39, scope: !1429)
!1429 = !DILexicalBlockFile(scope: !1419, file: !139, discriminator: 3)
!1430 = !DILocation(line: 135, column: 45, scope: !1429)
!1431 = !DILocation(line: 136, column: 1, scope: !1419)
!1432 = distinct !DISubprogram(name: "set_char_quoting", scope: !139, file: !139, line: 144, type: !1433, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !111, variables: !1435)
!1433 = !DISubroutineType(types: !1434)
!1434 = !{!64, !1390, !26, !64}
!1435 = !{!1436, !1437, !1438, !1439, !1440, !1442, !1443}
!1436 = !DILocalVariable(name: "o", arg: 1, scope: !1432, file: !139, line: 144, type: !1390)
!1437 = !DILocalVariable(name: "c", arg: 2, scope: !1432, file: !139, line: 144, type: !26)
!1438 = !DILocalVariable(name: "i", arg: 3, scope: !1432, file: !139, line: 144, type: !64)
!1439 = !DILocalVariable(name: "uc", scope: !1432, file: !139, line: 146, type: !34)
!1440 = !DILocalVariable(name: "p", scope: !1432, file: !139, line: 147, type: !1441)
!1441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!1442 = !DILocalVariable(name: "shift", scope: !1432, file: !139, line: 149, type: !64)
!1443 = !DILocalVariable(name: "r", scope: !1432, file: !139, line: 150, type: !64)
!1444 = !DILocation(line: 144, column: 43, scope: !1432)
!1445 = !DILocation(line: 144, column: 51, scope: !1432)
!1446 = !DILocation(line: 144, column: 58, scope: !1432)
!1447 = !DILocation(line: 146, column: 17, scope: !1432)
!1448 = !DILocation(line: 148, column: 6, scope: !1432)
!1449 = !DILocation(line: 148, column: 62, scope: !1450)
!1450 = !DILexicalBlockFile(scope: !1432, file: !139, discriminator: 3)
!1451 = !DILocation(line: 148, column: 57, scope: !1450)
!1452 = !DILocation(line: 147, column: 17, scope: !1432)
!1453 = !DILocation(line: 149, column: 18, scope: !1432)
!1454 = !DILocation(line: 149, column: 15, scope: !1432)
!1455 = !DILocation(line: 149, column: 7, scope: !1432)
!1456 = !DILocation(line: 150, column: 12, scope: !1432)
!1457 = !DILocation(line: 150, column: 15, scope: !1432)
!1458 = !DILocation(line: 150, column: 25, scope: !1432)
!1459 = !DILocation(line: 150, column: 7, scope: !1432)
!1460 = !DILocation(line: 151, column: 13, scope: !1432)
!1461 = !DILocation(line: 151, column: 18, scope: !1432)
!1462 = !DILocation(line: 151, column: 23, scope: !1432)
!1463 = !DILocation(line: 151, column: 6, scope: !1432)
!1464 = !DILocation(line: 152, column: 3, scope: !1432)
!1465 = distinct !DISubprogram(name: "set_quoting_flags", scope: !139, file: !139, line: 160, type: !1466, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !111, variables: !1468)
!1466 = !DISubroutineType(types: !1467)
!1467 = !{!64, !1390, !64}
!1468 = !{!1469, !1470, !1471}
!1469 = !DILocalVariable(name: "o", arg: 1, scope: !1465, file: !139, line: 160, type: !1390)
!1470 = !DILocalVariable(name: "i", arg: 2, scope: !1465, file: !139, line: 160, type: !64)
!1471 = !DILocalVariable(name: "r", scope: !1465, file: !139, line: 162, type: !64)
!1472 = !DILocation(line: 160, column: 44, scope: !1465)
!1473 = !DILocation(line: 160, column: 51, scope: !1465)
!1474 = !DILocation(line: 163, column: 8, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !1465, file: !139, line: 163, column: 7)
!1476 = !DILocation(line: 163, column: 7, scope: !1465)
!1477 = !DILocation(line: 165, column: 10, scope: !1465)
!1478 = !{!1417, !693, i64 4}
!1479 = !DILocation(line: 162, column: 7, scope: !1465)
!1480 = !DILocation(line: 166, column: 12, scope: !1465)
!1481 = !DILocation(line: 167, column: 3, scope: !1465)
!1482 = distinct !DISubprogram(name: "set_custom_quoting", scope: !139, file: !139, line: 171, type: !1483, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !111, variables: !1485)
!1483 = !DISubroutineType(types: !1484)
!1484 = !{null, !1390, !35, !35}
!1485 = !{!1486, !1487, !1488}
!1486 = !DILocalVariable(name: "o", arg: 1, scope: !1482, file: !139, line: 171, type: !1390)
!1487 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1482, file: !139, line: 172, type: !35)
!1488 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1482, file: !139, line: 172, type: !35)
!1489 = !DILocation(line: 171, column: 45, scope: !1482)
!1490 = !DILocation(line: 172, column: 33, scope: !1482)
!1491 = !DILocation(line: 172, column: 57, scope: !1482)
!1492 = !DILocation(line: 174, column: 8, scope: !1493)
!1493 = distinct !DILexicalBlock(scope: !1482, file: !139, line: 174, column: 7)
!1494 = !DILocation(line: 174, column: 7, scope: !1482)
!1495 = !DILocation(line: 176, column: 6, scope: !1482)
!1496 = !DILocation(line: 176, column: 12, scope: !1482)
!1497 = !DILocation(line: 177, column: 8, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !1482, file: !139, line: 177, column: 7)
!1499 = !DILocation(line: 177, column: 23, scope: !1500)
!1500 = !DILexicalBlockFile(scope: !1498, file: !139, discriminator: 1)
!1501 = !DILocation(line: 177, column: 19, scope: !1498)
!1502 = !DILocation(line: 178, column: 5, scope: !1498)
!1503 = !DILocation(line: 179, column: 6, scope: !1482)
!1504 = !DILocation(line: 179, column: 17, scope: !1482)
!1505 = !{!1417, !602, i64 40}
!1506 = !DILocation(line: 180, column: 6, scope: !1482)
!1507 = !DILocation(line: 180, column: 18, scope: !1482)
!1508 = !{!1417, !602, i64 48}
!1509 = !DILocation(line: 181, column: 1, scope: !1482)
!1510 = distinct !DISubprogram(name: "quotearg_buffer", scope: !139, file: !139, line: 776, type: !1511, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !111, variables: !1513)
!1511 = !DISubroutineType(types: !1512)
!1512 = !{!27, !25, !27, !35, !27, !1408}
!1513 = !{!1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521}
!1514 = !DILocalVariable(name: "buffer", arg: 1, scope: !1510, file: !139, line: 776, type: !25)
!1515 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1510, file: !139, line: 776, type: !27)
!1516 = !DILocalVariable(name: "arg", arg: 3, scope: !1510, file: !139, line: 777, type: !35)
!1517 = !DILocalVariable(name: "argsize", arg: 4, scope: !1510, file: !139, line: 777, type: !27)
!1518 = !DILocalVariable(name: "o", arg: 5, scope: !1510, file: !139, line: 778, type: !1408)
!1519 = !DILocalVariable(name: "p", scope: !1510, file: !139, line: 780, type: !1408)
!1520 = !DILocalVariable(name: "e", scope: !1510, file: !139, line: 781, type: !64)
!1521 = !DILocalVariable(name: "r", scope: !1510, file: !139, line: 782, type: !27)
!1522 = !DILocation(line: 776, column: 24, scope: !1510)
!1523 = !DILocation(line: 776, column: 39, scope: !1510)
!1524 = !DILocation(line: 777, column: 30, scope: !1510)
!1525 = !DILocation(line: 777, column: 42, scope: !1510)
!1526 = !DILocation(line: 778, column: 48, scope: !1510)
!1527 = !DILocation(line: 780, column: 37, scope: !1510)
!1528 = !DILocation(line: 780, column: 33, scope: !1510)
!1529 = !DILocation(line: 781, column: 11, scope: !1510)
!1530 = !DILocation(line: 781, column: 7, scope: !1510)
!1531 = !DILocation(line: 783, column: 43, scope: !1510)
!1532 = !DILocation(line: 783, column: 53, scope: !1510)
!1533 = !DILocation(line: 783, column: 60, scope: !1510)
!1534 = !DILocation(line: 784, column: 43, scope: !1510)
!1535 = !DILocation(line: 784, column: 58, scope: !1510)
!1536 = !DILocation(line: 782, column: 14, scope: !1510)
!1537 = !DILocation(line: 782, column: 10, scope: !1510)
!1538 = !DILocation(line: 785, column: 9, scope: !1510)
!1539 = !DILocation(line: 786, column: 3, scope: !1510)
!1540 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !139, file: !139, line: 248, type: !1541, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !111, variables: !1545)
!1541 = !DISubroutineType(types: !1542)
!1542 = !{!27, !25, !27, !35, !27, !5, !64, !1543, !35, !35}
!1543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1544, size: 64)
!1544 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !152)
!1545 = !{!1546, !1547, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1564, !1565, !1566, !1570, !1571, !1572, !1573, !1574, !1577, !1578, !1595, !1598, !1599, !1606}
!1546 = !DILocalVariable(name: "buffer", arg: 1, scope: !1540, file: !139, line: 248, type: !25)
!1547 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1540, file: !139, line: 248, type: !27)
!1548 = !DILocalVariable(name: "arg", arg: 3, scope: !1540, file: !139, line: 249, type: !35)
!1549 = !DILocalVariable(name: "argsize", arg: 4, scope: !1540, file: !139, line: 249, type: !27)
!1550 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1540, file: !139, line: 250, type: !5)
!1551 = !DILocalVariable(name: "flags", arg: 6, scope: !1540, file: !139, line: 250, type: !64)
!1552 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1540, file: !139, line: 251, type: !1543)
!1553 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1540, file: !139, line: 252, type: !35)
!1554 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1540, file: !139, line: 253, type: !35)
!1555 = !DILocalVariable(name: "i", scope: !1540, file: !139, line: 255, type: !27)
!1556 = !DILocalVariable(name: "len", scope: !1540, file: !139, line: 256, type: !27)
!1557 = !DILocalVariable(name: "orig_buffersize", scope: !1540, file: !139, line: 257, type: !27)
!1558 = !DILocalVariable(name: "quote_string", scope: !1540, file: !139, line: 258, type: !35)
!1559 = !DILocalVariable(name: "quote_string_len", scope: !1540, file: !139, line: 259, type: !27)
!1560 = !DILocalVariable(name: "backslash_escapes", scope: !1540, file: !139, line: 260, type: !94)
!1561 = !DILocalVariable(name: "unibyte_locale", scope: !1540, file: !139, line: 261, type: !94)
!1562 = !DILocalVariable(name: "elide_outer_quotes", scope: !1540, file: !139, line: 262, type: !94)
!1563 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1540, file: !139, line: 263, type: !94)
!1564 = !DILocalVariable(name: "encountered_single_quote", scope: !1540, file: !139, line: 264, type: !94)
!1565 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1540, file: !139, line: 265, type: !94)
!1566 = !DILocalVariable(name: "c", scope: !1567, file: !139, line: 394, type: !34)
!1567 = distinct !DILexicalBlock(scope: !1568, file: !139, line: 393, column: 5)
!1568 = distinct !DILexicalBlock(scope: !1569, file: !139, line: 392, column: 3)
!1569 = distinct !DILexicalBlock(scope: !1540, file: !139, line: 392, column: 3)
!1570 = !DILocalVariable(name: "esc", scope: !1567, file: !139, line: 395, type: !34)
!1571 = !DILocalVariable(name: "is_right_quote", scope: !1567, file: !139, line: 396, type: !94)
!1572 = !DILocalVariable(name: "escaping", scope: !1567, file: !139, line: 397, type: !94)
!1573 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1567, file: !139, line: 398, type: !94)
!1574 = !DILocalVariable(name: "m", scope: !1575, file: !139, line: 602, type: !27)
!1575 = distinct !DILexicalBlock(scope: !1576, file: !139, line: 600, column: 11)
!1576 = distinct !DILexicalBlock(scope: !1567, file: !139, line: 418, column: 9)
!1577 = !DILocalVariable(name: "printable", scope: !1575, file: !139, line: 604, type: !94)
!1578 = !DILocalVariable(name: "mbstate", scope: !1579, file: !139, line: 613, type: !1581)
!1579 = distinct !DILexicalBlock(scope: !1580, file: !139, line: 612, column: 15)
!1580 = distinct !DILexicalBlock(scope: !1575, file: !139, line: 606, column: 17)
!1581 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1582, line: 107, baseType: !1583)
!1582 = !DIFile(filename: "/usr/include/wchar.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1583 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1582, line: 95, baseType: !1584)
!1584 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1582, line: 83, size: 64, elements: !1585)
!1585 = !{!1586, !1587}
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1584, file: !1582, line: 85, baseType: !64, size: 32)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1584, file: !1582, line: 94, baseType: !1588, size: 32, offset: 32)
!1588 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1584, file: !1582, line: 86, size: 32, elements: !1589)
!1589 = !{!1590, !1591}
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1588, file: !1582, line: 89, baseType: !152, size: 32)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1588, file: !1582, line: 93, baseType: !1592, size: 32)
!1592 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 32, elements: !1593)
!1593 = !{!1594}
!1594 = !DISubrange(count: 4)
!1595 = !DILocalVariable(name: "w", scope: !1596, file: !139, line: 623, type: !1597)
!1596 = distinct !DILexicalBlock(scope: !1579, file: !139, line: 622, column: 19)
!1597 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !28, line: 90, baseType: !64)
!1598 = !DILocalVariable(name: "bytes", scope: !1596, file: !139, line: 624, type: !27)
!1599 = !DILocalVariable(name: "j", scope: !1600, file: !139, line: 649, type: !27)
!1600 = distinct !DILexicalBlock(scope: !1601, file: !139, line: 648, column: 27)
!1601 = distinct !DILexicalBlock(scope: !1602, file: !139, line: 646, column: 29)
!1602 = distinct !DILexicalBlock(scope: !1603, file: !139, line: 641, column: 23)
!1603 = distinct !DILexicalBlock(scope: !1604, file: !139, line: 633, column: 30)
!1604 = distinct !DILexicalBlock(scope: !1605, file: !139, line: 628, column: 30)
!1605 = distinct !DILexicalBlock(scope: !1596, file: !139, line: 626, column: 25)
!1606 = !DILocalVariable(name: "ilim", scope: !1607, file: !139, line: 676, type: !27)
!1607 = distinct !DILexicalBlock(scope: !1608, file: !139, line: 673, column: 15)
!1608 = distinct !DILexicalBlock(scope: !1575, file: !139, line: 672, column: 17)
!1609 = !DILocation(line: 248, column: 33, scope: !1540)
!1610 = !DILocation(line: 248, column: 48, scope: !1540)
!1611 = !DILocation(line: 249, column: 39, scope: !1540)
!1612 = !DILocation(line: 249, column: 51, scope: !1540)
!1613 = !DILocation(line: 250, column: 46, scope: !1540)
!1614 = !DILocation(line: 250, column: 65, scope: !1540)
!1615 = !DILocation(line: 251, column: 47, scope: !1540)
!1616 = !DILocation(line: 252, column: 39, scope: !1540)
!1617 = !DILocation(line: 253, column: 39, scope: !1540)
!1618 = !DILocation(line: 256, column: 10, scope: !1540)
!1619 = !DILocation(line: 257, column: 10, scope: !1540)
!1620 = !DILocation(line: 258, column: 15, scope: !1540)
!1621 = !DILocation(line: 259, column: 10, scope: !1540)
!1622 = !DILocation(line: 260, column: 8, scope: !1540)
!1623 = !DILocation(line: 261, column: 25, scope: !1540)
!1624 = !DILocation(line: 261, column: 36, scope: !1540)
!1625 = !DILocation(line: 262, column: 8, scope: !1540)
!1626 = !DILocation(line: 263, column: 8, scope: !1540)
!1627 = !DILocation(line: 264, column: 8, scope: !1540)
!1628 = !DILocation(line: 265, column: 8, scope: !1540)
!1629 = !DILocation(line: 265, column: 3, scope: !1540)
!1630 = !DILocation(line: 308, column: 3, scope: !1540)
!1631 = !DILocation(line: 315, column: 11, scope: !1632)
!1632 = distinct !DILexicalBlock(scope: !1540, file: !139, line: 309, column: 5)
!1633 = !DILocation(line: 315, column: 12, scope: !1634)
!1634 = distinct !DILexicalBlock(scope: !1632, file: !139, line: 315, column: 11)
!1635 = !DILocation(line: 316, column: 9, scope: !1636)
!1636 = !DILexicalBlockFile(scope: !1637, file: !139, discriminator: 1)
!1637 = distinct !DILexicalBlock(scope: !1638, file: !139, line: 316, column: 9)
!1638 = distinct !DILexicalBlock(scope: !1634, file: !139, line: 316, column: 9)
!1639 = !DILocation(line: 316, column: 9, scope: !1640)
!1640 = !DILexicalBlockFile(scope: !1638, file: !139, discriminator: 1)
!1641 = !DILocation(line: 316, column: 9, scope: !1642)
!1642 = !DILexicalBlockFile(scope: !1637, file: !139, discriminator: 2)
!1643 = !DILocation(line: 354, column: 26, scope: !1644)
!1644 = distinct !DILexicalBlock(scope: !1645, file: !139, line: 332, column: 11)
!1645 = distinct !DILexicalBlock(scope: !1646, file: !139, line: 331, column: 13)
!1646 = distinct !DILexicalBlock(scope: !1632, file: !139, line: 330, column: 7)
!1647 = !DILocation(line: 355, column: 27, scope: !1644)
!1648 = !DILocation(line: 356, column: 11, scope: !1644)
!1649 = !DILocation(line: 357, column: 14, scope: !1650)
!1650 = distinct !DILexicalBlock(scope: !1646, file: !139, line: 357, column: 13)
!1651 = !DILocation(line: 357, column: 13, scope: !1646)
!1652 = !DILocation(line: 358, column: 43, scope: !1653)
!1653 = !DILexicalBlockFile(scope: !1654, file: !139, discriminator: 1)
!1654 = distinct !DILexicalBlock(scope: !1655, file: !139, line: 358, column: 11)
!1655 = distinct !DILexicalBlock(scope: !1650, file: !139, line: 358, column: 11)
!1656 = !DILocation(line: 358, column: 11, scope: !1657)
!1657 = !DILexicalBlockFile(scope: !1655, file: !139, discriminator: 1)
!1658 = !DILocation(line: 359, column: 13, scope: !1659)
!1659 = !DILexicalBlockFile(scope: !1660, file: !139, discriminator: 1)
!1660 = distinct !DILexicalBlock(scope: !1661, file: !139, line: 359, column: 13)
!1661 = distinct !DILexicalBlock(scope: !1654, file: !139, line: 359, column: 13)
!1662 = !DILocation(line: 359, column: 13, scope: !1663)
!1663 = !DILexicalBlockFile(scope: !1661, file: !139, discriminator: 1)
!1664 = !DILocation(line: 359, column: 13, scope: !1665)
!1665 = !DILexicalBlockFile(scope: !1660, file: !139, discriminator: 2)
!1666 = !DILocation(line: 359, column: 13, scope: !1667)
!1667 = !DILexicalBlockFile(scope: !1661, file: !139, discriminator: 3)
!1668 = !DILocation(line: 358, column: 70, scope: !1669)
!1669 = !DILexicalBlockFile(scope: !1654, file: !139, discriminator: 2)
!1670 = distinct !{!1670, !1671, !1672}
!1671 = !DILocation(line: 358, column: 11, scope: !1655)
!1672 = !DILocation(line: 359, column: 13, scope: !1655)
!1673 = !DILocation(line: 362, column: 28, scope: !1646)
!1674 = !DILocation(line: 364, column: 7, scope: !1632)
!1675 = !DILocation(line: 367, column: 7, scope: !1632)
!1676 = !DILocation(line: 370, column: 7, scope: !1632)
!1677 = !DILocation(line: 373, column: 12, scope: !1678)
!1678 = distinct !DILexicalBlock(scope: !1632, file: !139, line: 373, column: 11)
!1679 = !DILocation(line: 373, column: 11, scope: !1632)
!1680 = !DILocation(line: 378, column: 12, scope: !1681)
!1681 = distinct !DILexicalBlock(scope: !1632, file: !139, line: 378, column: 11)
!1682 = !DILocation(line: 378, column: 11, scope: !1632)
!1683 = !DILocation(line: 379, column: 9, scope: !1684)
!1684 = !DILexicalBlockFile(scope: !1685, file: !139, discriminator: 1)
!1685 = distinct !DILexicalBlock(scope: !1686, file: !139, line: 379, column: 9)
!1686 = distinct !DILexicalBlock(scope: !1681, file: !139, line: 379, column: 9)
!1687 = !DILocation(line: 379, column: 9, scope: !1688)
!1688 = !DILexicalBlockFile(scope: !1686, file: !139, discriminator: 1)
!1689 = !DILocation(line: 379, column: 9, scope: !1690)
!1690 = !DILexicalBlockFile(scope: !1685, file: !139, discriminator: 2)
!1691 = !DILocation(line: 386, column: 7, scope: !1632)
!1692 = !DILocation(line: 389, column: 7, scope: !1632)
!1693 = !DILocation(line: 255, column: 10, scope: !1540)
!1694 = !DILocation(line: 392, column: 8, scope: !1569)
!1695 = !DILocation(line: 392, column: 27, scope: !1696)
!1696 = !DILexicalBlockFile(scope: !1568, file: !139, discriminator: 1)
!1697 = !DILocation(line: 392, column: 19, scope: !1696)
!1698 = !DILocation(line: 392, column: 60, scope: !1699)
!1699 = !DILexicalBlockFile(scope: !1568, file: !139, discriminator: 3)
!1700 = !DILocation(line: 392, column: 3, scope: !1701)
!1701 = !DILexicalBlockFile(scope: !1569, file: !139, discriminator: 4)
!1702 = !DILocation(line: 392, column: 41, scope: !1703)
!1703 = !DILexicalBlockFile(scope: !1568, file: !139, discriminator: 2)
!1704 = !DILocation(line: 392, column: 48, scope: !1703)
!1705 = !DILocation(line: 396, column: 12, scope: !1567)
!1706 = !DILocation(line: 397, column: 12, scope: !1567)
!1707 = !DILocation(line: 398, column: 12, scope: !1567)
!1708 = !DILocation(line: 401, column: 11, scope: !1709)
!1709 = distinct !DILexicalBlock(scope: !1567, file: !139, line: 400, column: 11)
!1710 = !DILocation(line: 403, column: 17, scope: !1711)
!1711 = !DILexicalBlockFile(scope: !1709, file: !139, discriminator: 1)
!1712 = !DILocation(line: 404, column: 39, scope: !1709)
!1713 = !DILocation(line: 408, column: 32, scope: !1709)
!1714 = !DILocation(line: 404, column: 19, scope: !1715)
!1715 = !DILexicalBlockFile(scope: !1709, file: !139, discriminator: 2)
!1716 = !DILocation(line: 404, column: 15, scope: !1717)
!1717 = !DILexicalBlockFile(scope: !1709, file: !139, discriminator: 4)
!1718 = !DILocation(line: 409, column: 11, scope: !1709)
!1719 = !DILocation(line: 409, column: 26, scope: !1711)
!1720 = !DILocation(line: 409, column: 14, scope: !1711)
!1721 = !DILocation(line: 400, column: 11, scope: !1722)
!1722 = !DILexicalBlockFile(scope: !1567, file: !139, discriminator: 1)
!1723 = !DILocation(line: 416, column: 11, scope: !1567)
!1724 = !DILocation(line: 394, column: 21, scope: !1567)
!1725 = !DILocation(line: 417, column: 7, scope: !1567)
!1726 = !DILocation(line: 420, column: 15, scope: !1576)
!1727 = !DILocation(line: 422, column: 15, scope: !1728)
!1728 = !DILexicalBlockFile(scope: !1729, file: !139, discriminator: 1)
!1729 = distinct !DILexicalBlock(scope: !1730, file: !139, line: 422, column: 15)
!1730 = distinct !DILexicalBlock(scope: !1731, file: !139, line: 421, column: 13)
!1731 = distinct !DILexicalBlock(scope: !1576, file: !139, line: 420, column: 15)
!1732 = !DILocation(line: 422, column: 15, scope: !1733)
!1733 = !DILexicalBlockFile(scope: !1734, file: !139, discriminator: 4)
!1734 = distinct !DILexicalBlock(scope: !1729, file: !139, line: 422, column: 15)
!1735 = !DILocation(line: 422, column: 15, scope: !1736)
!1736 = !DILexicalBlockFile(scope: !1734, file: !139, discriminator: 3)
!1737 = !DILocation(line: 422, column: 15, scope: !1738)
!1738 = !DILexicalBlockFile(scope: !1739, file: !139, discriminator: 6)
!1739 = distinct !DILexicalBlock(scope: !1740, file: !139, line: 422, column: 15)
!1740 = distinct !DILexicalBlock(scope: !1741, file: !139, line: 422, column: 15)
!1741 = distinct !DILexicalBlock(scope: !1734, file: !139, line: 422, column: 15)
!1742 = !DILocation(line: 422, column: 15, scope: !1743)
!1743 = !DILexicalBlockFile(scope: !1740, file: !139, discriminator: 6)
!1744 = !DILocation(line: 422, column: 15, scope: !1745)
!1745 = !DILexicalBlockFile(scope: !1739, file: !139, discriminator: 7)
!1746 = !DILocation(line: 422, column: 15, scope: !1747)
!1747 = !DILexicalBlockFile(scope: !1740, file: !139, discriminator: 8)
!1748 = !DILocation(line: 422, column: 15, scope: !1749)
!1749 = !DILexicalBlockFile(scope: !1750, file: !139, discriminator: 11)
!1750 = distinct !DILexicalBlock(scope: !1751, file: !139, line: 422, column: 15)
!1751 = distinct !DILexicalBlock(scope: !1741, file: !139, line: 422, column: 15)
!1752 = !DILocation(line: 422, column: 15, scope: !1753)
!1753 = !DILexicalBlockFile(scope: !1751, file: !139, discriminator: 11)
!1754 = !DILocation(line: 422, column: 15, scope: !1755)
!1755 = !DILexicalBlockFile(scope: !1750, file: !139, discriminator: 12)
!1756 = !DILocation(line: 422, column: 15, scope: !1757)
!1757 = !DILexicalBlockFile(scope: !1751, file: !139, discriminator: 13)
!1758 = !DILocation(line: 422, column: 15, scope: !1759)
!1759 = !DILexicalBlockFile(scope: !1760, file: !139, discriminator: 16)
!1760 = distinct !DILexicalBlock(scope: !1761, file: !139, line: 422, column: 15)
!1761 = distinct !DILexicalBlock(scope: !1741, file: !139, line: 422, column: 15)
!1762 = !DILocation(line: 422, column: 15, scope: !1763)
!1763 = !DILexicalBlockFile(scope: !1761, file: !139, discriminator: 16)
!1764 = !DILocation(line: 422, column: 15, scope: !1765)
!1765 = !DILexicalBlockFile(scope: !1760, file: !139, discriminator: 17)
!1766 = !DILocation(line: 422, column: 15, scope: !1767)
!1767 = !DILexicalBlockFile(scope: !1761, file: !139, discriminator: 18)
!1768 = !DILocation(line: 422, column: 15, scope: !1769)
!1769 = !DILexicalBlockFile(scope: !1741, file: !139, discriminator: 20)
!1770 = !DILocation(line: 422, column: 15, scope: !1771)
!1771 = !DILexicalBlockFile(scope: !1772, file: !139, discriminator: 22)
!1772 = distinct !DILexicalBlock(scope: !1773, file: !139, line: 422, column: 15)
!1773 = distinct !DILexicalBlock(scope: !1729, file: !139, line: 422, column: 15)
!1774 = !DILocation(line: 422, column: 15, scope: !1775)
!1775 = !DILexicalBlockFile(scope: !1773, file: !139, discriminator: 22)
!1776 = !DILocation(line: 422, column: 15, scope: !1777)
!1777 = !DILexicalBlockFile(scope: !1772, file: !139, discriminator: 23)
!1778 = !DILocation(line: 422, column: 15, scope: !1779)
!1779 = !DILexicalBlockFile(scope: !1773, file: !139, discriminator: 24)
!1780 = !DILocation(line: 430, column: 19, scope: !1781)
!1781 = distinct !DILexicalBlock(scope: !1730, file: !139, line: 429, column: 19)
!1782 = !DILocation(line: 430, column: 24, scope: !1783)
!1783 = !DILexicalBlockFile(scope: !1781, file: !139, discriminator: 1)
!1784 = !DILocation(line: 430, column: 28, scope: !1783)
!1785 = !DILocation(line: 430, column: 38, scope: !1783)
!1786 = !DILocation(line: 430, column: 48, scope: !1787)
!1787 = !DILexicalBlockFile(scope: !1781, file: !139, discriminator: 2)
!1788 = !DILocation(line: 430, column: 59, scope: !1787)
!1789 = !DILocation(line: 432, column: 19, scope: !1790)
!1790 = !DILexicalBlockFile(scope: !1791, file: !139, discriminator: 1)
!1791 = distinct !DILexicalBlock(scope: !1792, file: !139, line: 432, column: 19)
!1792 = distinct !DILexicalBlock(scope: !1793, file: !139, line: 432, column: 19)
!1793 = distinct !DILexicalBlock(scope: !1781, file: !139, line: 431, column: 17)
!1794 = !DILocation(line: 432, column: 19, scope: !1795)
!1795 = !DILexicalBlockFile(scope: !1792, file: !139, discriminator: 1)
!1796 = !DILocation(line: 432, column: 19, scope: !1797)
!1797 = !DILexicalBlockFile(scope: !1791, file: !139, discriminator: 2)
!1798 = !DILocation(line: 432, column: 19, scope: !1799)
!1799 = !DILexicalBlockFile(scope: !1792, file: !139, discriminator: 3)
!1800 = !DILocation(line: 433, column: 19, scope: !1801)
!1801 = !DILexicalBlockFile(scope: !1802, file: !139, discriminator: 1)
!1802 = distinct !DILexicalBlock(scope: !1803, file: !139, line: 433, column: 19)
!1803 = distinct !DILexicalBlock(scope: !1793, file: !139, line: 433, column: 19)
!1804 = !DILocation(line: 433, column: 19, scope: !1805)
!1805 = !DILexicalBlockFile(scope: !1803, file: !139, discriminator: 1)
!1806 = !DILocation(line: 433, column: 19, scope: !1807)
!1807 = !DILexicalBlockFile(scope: !1802, file: !139, discriminator: 2)
!1808 = !DILocation(line: 433, column: 19, scope: !1809)
!1809 = !DILexicalBlockFile(scope: !1803, file: !139, discriminator: 3)
!1810 = !DILocation(line: 434, column: 17, scope: !1793)
!1811 = !DILocation(line: 441, column: 20, scope: !1731)
!1812 = !DILocation(line: 446, column: 11, scope: !1576)
!1813 = !DILocation(line: 449, column: 19, scope: !1814)
!1814 = distinct !DILexicalBlock(scope: !1576, file: !139, line: 447, column: 13)
!1815 = !DILocation(line: 455, column: 19, scope: !1816)
!1816 = distinct !DILexicalBlock(scope: !1814, file: !139, line: 454, column: 19)
!1817 = !DILocation(line: 455, column: 24, scope: !1818)
!1818 = !DILexicalBlockFile(scope: !1816, file: !139, discriminator: 1)
!1819 = !DILocation(line: 455, column: 28, scope: !1818)
!1820 = !DILocation(line: 455, column: 38, scope: !1818)
!1821 = !DILocation(line: 455, column: 47, scope: !1822)
!1822 = !DILexicalBlockFile(scope: !1816, file: !139, discriminator: 2)
!1823 = !DILocation(line: 455, column: 41, scope: !1822)
!1824 = !DILocation(line: 455, column: 52, scope: !1822)
!1825 = !DILocation(line: 454, column: 19, scope: !1826)
!1826 = !DILexicalBlockFile(scope: !1814, file: !139, discriminator: 1)
!1827 = !DILocation(line: 456, column: 25, scope: !1816)
!1828 = !DILocation(line: 456, column: 17, scope: !1816)
!1829 = !DILocation(line: 463, column: 25, scope: !1830)
!1830 = distinct !DILexicalBlock(scope: !1816, file: !139, line: 457, column: 19)
!1831 = !DILocation(line: 467, column: 21, scope: !1832)
!1832 = !DILexicalBlockFile(scope: !1833, file: !139, discriminator: 1)
!1833 = distinct !DILexicalBlock(scope: !1834, file: !139, line: 467, column: 21)
!1834 = distinct !DILexicalBlock(scope: !1830, file: !139, line: 467, column: 21)
!1835 = !DILocation(line: 467, column: 21, scope: !1836)
!1836 = !DILexicalBlockFile(scope: !1834, file: !139, discriminator: 1)
!1837 = !DILocation(line: 467, column: 21, scope: !1838)
!1838 = !DILexicalBlockFile(scope: !1833, file: !139, discriminator: 2)
!1839 = !DILocation(line: 467, column: 21, scope: !1840)
!1840 = !DILexicalBlockFile(scope: !1834, file: !139, discriminator: 3)
!1841 = !DILocation(line: 468, column: 21, scope: !1842)
!1842 = !DILexicalBlockFile(scope: !1843, file: !139, discriminator: 1)
!1843 = distinct !DILexicalBlock(scope: !1844, file: !139, line: 468, column: 21)
!1844 = distinct !DILexicalBlock(scope: !1830, file: !139, line: 468, column: 21)
!1845 = !DILocation(line: 468, column: 21, scope: !1846)
!1846 = !DILexicalBlockFile(scope: !1844, file: !139, discriminator: 1)
!1847 = !DILocation(line: 468, column: 21, scope: !1848)
!1848 = !DILexicalBlockFile(scope: !1843, file: !139, discriminator: 2)
!1849 = !DILocation(line: 468, column: 21, scope: !1850)
!1850 = !DILexicalBlockFile(scope: !1844, file: !139, discriminator: 3)
!1851 = !DILocation(line: 469, column: 21, scope: !1852)
!1852 = !DILexicalBlockFile(scope: !1853, file: !139, discriminator: 1)
!1853 = distinct !DILexicalBlock(scope: !1854, file: !139, line: 469, column: 21)
!1854 = distinct !DILexicalBlock(scope: !1830, file: !139, line: 469, column: 21)
!1855 = !DILocation(line: 469, column: 21, scope: !1856)
!1856 = !DILexicalBlockFile(scope: !1854, file: !139, discriminator: 1)
!1857 = !DILocation(line: 469, column: 21, scope: !1858)
!1858 = !DILexicalBlockFile(scope: !1853, file: !139, discriminator: 2)
!1859 = !DILocation(line: 469, column: 21, scope: !1860)
!1860 = !DILexicalBlockFile(scope: !1854, file: !139, discriminator: 3)
!1861 = !DILocation(line: 470, column: 21, scope: !1862)
!1862 = !DILexicalBlockFile(scope: !1863, file: !139, discriminator: 1)
!1863 = distinct !DILexicalBlock(scope: !1864, file: !139, line: 470, column: 21)
!1864 = distinct !DILexicalBlock(scope: !1830, file: !139, line: 470, column: 21)
!1865 = !DILocation(line: 470, column: 21, scope: !1866)
!1866 = !DILexicalBlockFile(scope: !1864, file: !139, discriminator: 1)
!1867 = !DILocation(line: 470, column: 21, scope: !1868)
!1868 = !DILexicalBlockFile(scope: !1863, file: !139, discriminator: 2)
!1869 = !DILocation(line: 470, column: 21, scope: !1870)
!1870 = !DILexicalBlockFile(scope: !1864, file: !139, discriminator: 3)
!1871 = !DILocation(line: 471, column: 21, scope: !1830)
!1872 = !DILocation(line: 395, column: 21, scope: !1567)
!1873 = !DILocation(line: 484, column: 31, scope: !1576)
!1874 = !DILocation(line: 485, column: 31, scope: !1576)
!1875 = !DILocation(line: 487, column: 31, scope: !1576)
!1876 = !DILocation(line: 488, column: 31, scope: !1576)
!1877 = !DILocation(line: 489, column: 31, scope: !1576)
!1878 = !DILocation(line: 492, column: 15, scope: !1576)
!1879 = !DILocation(line: 494, column: 19, scope: !1880)
!1880 = distinct !DILexicalBlock(scope: !1881, file: !139, line: 493, column: 13)
!1881 = distinct !DILexicalBlock(scope: !1576, file: !139, line: 492, column: 15)
!1882 = !DILocation(line: 501, column: 33, scope: !1883)
!1883 = distinct !DILexicalBlock(scope: !1576, file: !139, line: 501, column: 15)
!1884 = !DILocation(line: 506, column: 15, scope: !1885)
!1885 = distinct !DILexicalBlock(scope: !1576, file: !139, line: 505, column: 15)
!1886 = !DILocation(line: 510, column: 15, scope: !1576)
!1887 = !DILocation(line: 518, column: 26, scope: !1888)
!1888 = distinct !DILexicalBlock(scope: !1576, file: !139, line: 518, column: 15)
!1889 = !DILocation(line: 518, column: 15, scope: !1576)
!1890 = !DILocation(line: 518, column: 40, scope: !1891)
!1891 = !DILexicalBlockFile(scope: !1888, file: !139, discriminator: 1)
!1892 = !DILocation(line: 518, column: 47, scope: !1891)
!1893 = !DILocation(line: 522, column: 17, scope: !1894)
!1894 = distinct !DILexicalBlock(scope: !1576, file: !139, line: 522, column: 15)
!1895 = !DILocation(line: 518, column: 18, scope: !1891)
!1896 = !DILocation(line: 518, column: 65, scope: !1897)
!1897 = !DILexicalBlockFile(scope: !1888, file: !139, discriminator: 2)
!1898 = !DILocation(line: 518, column: 15, scope: !1899)
!1899 = !DILexicalBlockFile(scope: !1576, file: !139, discriminator: 2)
!1900 = !DILocation(line: 522, column: 15, scope: !1576)
!1901 = !DILocation(line: 526, column: 11, scope: !1576)
!1902 = !DILocation(line: 541, column: 15, scope: !1903)
!1903 = distinct !DILexicalBlock(scope: !1576, file: !139, line: 540, column: 15)
!1904 = !DILocation(line: 548, column: 15, scope: !1576)
!1905 = !DILocation(line: 550, column: 19, scope: !1906)
!1906 = distinct !DILexicalBlock(scope: !1907, file: !139, line: 549, column: 13)
!1907 = distinct !DILexicalBlock(scope: !1576, file: !139, line: 548, column: 15)
!1908 = !DILocation(line: 553, column: 19, scope: !1909)
!1909 = distinct !DILexicalBlock(scope: !1906, file: !139, line: 553, column: 19)
!1910 = !DILocation(line: 553, column: 35, scope: !1911)
!1911 = !DILexicalBlockFile(scope: !1909, file: !139, discriminator: 1)
!1912 = !DILocation(line: 553, column: 30, scope: !1909)
!1913 = !DILocation(line: 562, column: 15, scope: !1914)
!1914 = !DILexicalBlockFile(scope: !1915, file: !139, discriminator: 1)
!1915 = distinct !DILexicalBlock(scope: !1916, file: !139, line: 562, column: 15)
!1916 = distinct !DILexicalBlock(scope: !1906, file: !139, line: 562, column: 15)
!1917 = !DILocation(line: 562, column: 15, scope: !1918)
!1918 = !DILexicalBlockFile(scope: !1916, file: !139, discriminator: 1)
!1919 = !DILocation(line: 562, column: 15, scope: !1920)
!1920 = !DILexicalBlockFile(scope: !1915, file: !139, discriminator: 2)
!1921 = !DILocation(line: 562, column: 15, scope: !1922)
!1922 = !DILexicalBlockFile(scope: !1916, file: !139, discriminator: 3)
!1923 = !DILocation(line: 563, column: 15, scope: !1924)
!1924 = !DILexicalBlockFile(scope: !1925, file: !139, discriminator: 1)
!1925 = distinct !DILexicalBlock(scope: !1926, file: !139, line: 563, column: 15)
!1926 = distinct !DILexicalBlock(scope: !1906, file: !139, line: 563, column: 15)
!1927 = !DILocation(line: 563, column: 15, scope: !1928)
!1928 = !DILexicalBlockFile(scope: !1926, file: !139, discriminator: 1)
!1929 = !DILocation(line: 563, column: 15, scope: !1930)
!1930 = !DILexicalBlockFile(scope: !1925, file: !139, discriminator: 2)
!1931 = !DILocation(line: 563, column: 15, scope: !1932)
!1932 = !DILexicalBlockFile(scope: !1926, file: !139, discriminator: 3)
!1933 = !DILocation(line: 564, column: 15, scope: !1934)
!1934 = !DILexicalBlockFile(scope: !1935, file: !139, discriminator: 1)
!1935 = distinct !DILexicalBlock(scope: !1936, file: !139, line: 564, column: 15)
!1936 = distinct !DILexicalBlock(scope: !1906, file: !139, line: 564, column: 15)
!1937 = !DILocation(line: 564, column: 15, scope: !1938)
!1938 = !DILexicalBlockFile(scope: !1936, file: !139, discriminator: 1)
!1939 = !DILocation(line: 564, column: 15, scope: !1940)
!1940 = !DILexicalBlockFile(scope: !1935, file: !139, discriminator: 2)
!1941 = !DILocation(line: 564, column: 15, scope: !1942)
!1942 = !DILexicalBlockFile(scope: !1936, file: !139, discriminator: 3)
!1943 = !DILocation(line: 566, column: 13, scope: !1906)
!1944 = !DILocation(line: 606, column: 17, scope: !1575)
!1945 = !DILocation(line: 602, column: 20, scope: !1575)
!1946 = !DILocation(line: 609, column: 29, scope: !1947)
!1947 = distinct !DILexicalBlock(scope: !1580, file: !139, line: 607, column: 15)
!1948 = !{!1091, !1091, i64 0}
!1949 = !DILocation(line: 609, column: 27, scope: !1947)
!1950 = !DILocation(line: 604, column: 18, scope: !1575)
!1951 = !DILocation(line: 610, column: 15, scope: !1947)
!1952 = !DILocation(line: 613, column: 17, scope: !1579)
!1953 = !DILocation(line: 614, column: 17, scope: !1579)
!1954 = !DILocation(line: 618, column: 29, scope: !1955)
!1955 = distinct !DILexicalBlock(scope: !1579, file: !139, line: 618, column: 21)
!1956 = !DILocation(line: 618, column: 21, scope: !1579)
!1957 = distinct !{!1957, !1958, !1959}
!1958 = !DILocation(line: 621, column: 17, scope: !1579)
!1959 = !DILocation(line: 667, column: 44, scope: !1579)
!1960 = !DILocation(line: 619, column: 29, scope: !1955)
!1961 = !DILocation(line: 619, column: 19, scope: !1955)
!1962 = !DILocation(line: 623, column: 21, scope: !1596)
!1963 = !DILocation(line: 624, column: 56, scope: !1596)
!1964 = !DILocation(line: 624, column: 50, scope: !1596)
!1965 = !DILocation(line: 625, column: 53, scope: !1596)
!1966 = !DILocation(line: 613, column: 27, scope: !1579)
!1967 = !DILocation(line: 623, column: 29, scope: !1596)
!1968 = !DILocation(line: 624, column: 36, scope: !1596)
!1969 = !DILocation(line: 624, column: 28, scope: !1596)
!1970 = !DILocation(line: 626, column: 25, scope: !1596)
!1971 = !DILocation(line: 636, column: 38, scope: !1972)
!1972 = !DILexicalBlockFile(scope: !1973, file: !139, discriminator: 1)
!1973 = distinct !DILexicalBlock(scope: !1603, file: !139, line: 634, column: 23)
!1974 = !DILocation(line: 636, column: 48, scope: !1972)
!1975 = !DILocation(line: 636, column: 51, scope: !1976)
!1976 = !DILexicalBlockFile(scope: !1973, file: !139, discriminator: 2)
!1977 = !DILocation(line: 636, column: 48, scope: !1976)
!1978 = !DILocation(line: 636, column: 25, scope: !1979)
!1979 = !DILexicalBlockFile(scope: !1973, file: !139, discriminator: 3)
!1980 = !DILocation(line: 637, column: 28, scope: !1973)
!1981 = !DILocation(line: 636, column: 34, scope: !1972)
!1982 = distinct !{!1982, !1983, !1980}
!1983 = !DILocation(line: 636, column: 25, scope: !1973)
!1984 = !DILocation(line: 650, column: 43, scope: !1985)
!1985 = !DILexicalBlockFile(scope: !1986, file: !139, discriminator: 1)
!1986 = distinct !DILexicalBlock(scope: !1987, file: !139, line: 650, column: 29)
!1987 = distinct !DILexicalBlock(scope: !1600, file: !139, line: 650, column: 29)
!1988 = !DILocation(line: 647, column: 29, scope: !1601)
!1989 = !DILocation(line: 649, column: 36, scope: !1600)
!1990 = !DILocation(line: 651, column: 49, scope: !1986)
!1991 = !DILocation(line: 651, column: 39, scope: !1986)
!1992 = !DILocation(line: 651, column: 31, scope: !1986)
!1993 = !DILocation(line: 650, column: 53, scope: !1994)
!1994 = !DILexicalBlockFile(scope: !1986, file: !139, discriminator: 2)
!1995 = !DILocation(line: 650, column: 29, scope: !1996)
!1996 = !DILexicalBlockFile(scope: !1987, file: !139, discriminator: 1)
!1997 = distinct !{!1997, !1998, !1999}
!1998 = !DILocation(line: 650, column: 29, scope: !1987)
!1999 = !DILocation(line: 659, column: 33, scope: !1987)
!2000 = !DILocation(line: 666, column: 19, scope: !1579)
!2001 = !DILocation(line: 662, column: 41, scope: !2002)
!2002 = distinct !DILexicalBlock(scope: !1602, file: !139, line: 662, column: 29)
!2003 = !DILocation(line: 662, column: 31, scope: !2002)
!2004 = !DILocation(line: 662, column: 29, scope: !1602)
!2005 = !DILocation(line: 664, column: 27, scope: !1602)
!2006 = !DILocation(line: 667, column: 26, scope: !1579)
!2007 = !DILocation(line: 667, column: 24, scope: !1579)
!2008 = !DILocation(line: 666, column: 19, scope: !2009)
!2009 = !DILexicalBlockFile(scope: !1596, file: !139, discriminator: 3)
!2010 = !DILocation(line: 668, column: 15, scope: !1580)
!2011 = !DILocation(line: 670, column: 40, scope: !1575)
!2012 = !DILocation(line: 672, column: 19, scope: !1608)
!2013 = !DILocation(line: 672, column: 45, scope: !2014)
!2014 = !DILexicalBlockFile(scope: !1608, file: !139, discriminator: 1)
!2015 = !DILocation(line: 672, column: 23, scope: !1608)
!2016 = !DILocation(line: 676, column: 33, scope: !1607)
!2017 = !DILocation(line: 676, column: 24, scope: !1607)
!2018 = !DILocation(line: 678, column: 17, scope: !1607)
!2019 = !DILocation(line: 680, column: 43, scope: !2020)
!2020 = distinct !DILexicalBlock(scope: !2021, file: !139, line: 680, column: 25)
!2021 = distinct !DILexicalBlock(scope: !2022, file: !139, line: 679, column: 19)
!2022 = distinct !DILexicalBlock(scope: !2023, file: !139, line: 678, column: 17)
!2023 = distinct !DILexicalBlock(scope: !1607, file: !139, line: 678, column: 17)
!2024 = !DILocation(line: 682, column: 25, scope: !2025)
!2025 = !DILexicalBlockFile(scope: !2026, file: !139, discriminator: 1)
!2026 = distinct !DILexicalBlock(scope: !2027, file: !139, line: 682, column: 25)
!2027 = distinct !DILexicalBlock(scope: !2020, file: !139, line: 681, column: 23)
!2028 = !DILocation(line: 682, column: 25, scope: !2029)
!2029 = !DILexicalBlockFile(scope: !2030, file: !139, discriminator: 4)
!2030 = distinct !DILexicalBlock(scope: !2026, file: !139, line: 682, column: 25)
!2031 = !DILocation(line: 682, column: 25, scope: !2032)
!2032 = !DILexicalBlockFile(scope: !2030, file: !139, discriminator: 3)
!2033 = !DILocation(line: 682, column: 25, scope: !2034)
!2034 = !DILexicalBlockFile(scope: !2035, file: !139, discriminator: 6)
!2035 = distinct !DILexicalBlock(scope: !2036, file: !139, line: 682, column: 25)
!2036 = distinct !DILexicalBlock(scope: !2037, file: !139, line: 682, column: 25)
!2037 = distinct !DILexicalBlock(scope: !2030, file: !139, line: 682, column: 25)
!2038 = !DILocation(line: 682, column: 25, scope: !2039)
!2039 = !DILexicalBlockFile(scope: !2036, file: !139, discriminator: 6)
!2040 = !DILocation(line: 682, column: 25, scope: !2041)
!2041 = !DILexicalBlockFile(scope: !2035, file: !139, discriminator: 7)
!2042 = !DILocation(line: 682, column: 25, scope: !2043)
!2043 = !DILexicalBlockFile(scope: !2036, file: !139, discriminator: 8)
!2044 = !DILocation(line: 682, column: 25, scope: !2045)
!2045 = !DILexicalBlockFile(scope: !2046, file: !139, discriminator: 11)
!2046 = distinct !DILexicalBlock(scope: !2047, file: !139, line: 682, column: 25)
!2047 = distinct !DILexicalBlock(scope: !2037, file: !139, line: 682, column: 25)
!2048 = !DILocation(line: 682, column: 25, scope: !2049)
!2049 = !DILexicalBlockFile(scope: !2047, file: !139, discriminator: 11)
!2050 = !DILocation(line: 682, column: 25, scope: !2051)
!2051 = !DILexicalBlockFile(scope: !2046, file: !139, discriminator: 12)
!2052 = !DILocation(line: 682, column: 25, scope: !2053)
!2053 = !DILexicalBlockFile(scope: !2047, file: !139, discriminator: 13)
!2054 = !DILocation(line: 682, column: 25, scope: !2055)
!2055 = !DILexicalBlockFile(scope: !2056, file: !139, discriminator: 16)
!2056 = distinct !DILexicalBlock(scope: !2057, file: !139, line: 682, column: 25)
!2057 = distinct !DILexicalBlock(scope: !2037, file: !139, line: 682, column: 25)
!2058 = !DILocation(line: 682, column: 25, scope: !2059)
!2059 = !DILexicalBlockFile(scope: !2057, file: !139, discriminator: 16)
!2060 = !DILocation(line: 682, column: 25, scope: !2061)
!2061 = !DILexicalBlockFile(scope: !2056, file: !139, discriminator: 17)
!2062 = !DILocation(line: 682, column: 25, scope: !2063)
!2063 = !DILexicalBlockFile(scope: !2057, file: !139, discriminator: 18)
!2064 = !DILocation(line: 682, column: 25, scope: !2065)
!2065 = !DILexicalBlockFile(scope: !2037, file: !139, discriminator: 20)
!2066 = !DILocation(line: 682, column: 25, scope: !2067)
!2067 = !DILexicalBlockFile(scope: !2068, file: !139, discriminator: 22)
!2068 = distinct !DILexicalBlock(scope: !2069, file: !139, line: 682, column: 25)
!2069 = distinct !DILexicalBlock(scope: !2026, file: !139, line: 682, column: 25)
!2070 = !DILocation(line: 682, column: 25, scope: !2071)
!2071 = !DILexicalBlockFile(scope: !2069, file: !139, discriminator: 22)
!2072 = !DILocation(line: 682, column: 25, scope: !2073)
!2073 = !DILexicalBlockFile(scope: !2068, file: !139, discriminator: 23)
!2074 = !DILocation(line: 682, column: 25, scope: !2075)
!2075 = !DILexicalBlockFile(scope: !2069, file: !139, discriminator: 24)
!2076 = !DILocation(line: 683, column: 25, scope: !2077)
!2077 = !DILexicalBlockFile(scope: !2078, file: !139, discriminator: 1)
!2078 = distinct !DILexicalBlock(scope: !2079, file: !139, line: 683, column: 25)
!2079 = distinct !DILexicalBlock(scope: !2027, file: !139, line: 683, column: 25)
!2080 = !DILocation(line: 683, column: 25, scope: !2081)
!2081 = !DILexicalBlockFile(scope: !2079, file: !139, discriminator: 1)
!2082 = !DILocation(line: 683, column: 25, scope: !2083)
!2083 = !DILexicalBlockFile(scope: !2078, file: !139, discriminator: 2)
!2084 = !DILocation(line: 683, column: 25, scope: !2085)
!2085 = !DILexicalBlockFile(scope: !2079, file: !139, discriminator: 3)
!2086 = !DILocation(line: 684, column: 25, scope: !2087)
!2087 = !DILexicalBlockFile(scope: !2088, file: !139, discriminator: 1)
!2088 = distinct !DILexicalBlock(scope: !2089, file: !139, line: 684, column: 25)
!2089 = distinct !DILexicalBlock(scope: !2027, file: !139, line: 684, column: 25)
!2090 = !DILocation(line: 684, column: 25, scope: !2091)
!2091 = !DILexicalBlockFile(scope: !2089, file: !139, discriminator: 1)
!2092 = !DILocation(line: 684, column: 25, scope: !2093)
!2093 = !DILexicalBlockFile(scope: !2088, file: !139, discriminator: 2)
!2094 = !DILocation(line: 684, column: 25, scope: !2095)
!2095 = !DILexicalBlockFile(scope: !2089, file: !139, discriminator: 3)
!2096 = !DILocation(line: 685, column: 38, scope: !2027)
!2097 = !DILocation(line: 685, column: 33, scope: !2027)
!2098 = !DILocation(line: 686, column: 23, scope: !2027)
!2099 = !DILocation(line: 687, column: 30, scope: !2100)
!2100 = distinct !DILexicalBlock(scope: !2020, file: !139, line: 687, column: 30)
!2101 = !DILocation(line: 687, column: 30, scope: !2020)
!2102 = !DILocation(line: 689, column: 25, scope: !2103)
!2103 = !DILexicalBlockFile(scope: !2104, file: !139, discriminator: 1)
!2104 = distinct !DILexicalBlock(scope: !2105, file: !139, line: 689, column: 25)
!2105 = distinct !DILexicalBlock(scope: !2106, file: !139, line: 689, column: 25)
!2106 = distinct !DILexicalBlock(scope: !2100, file: !139, line: 688, column: 23)
!2107 = !DILocation(line: 689, column: 25, scope: !2108)
!2108 = !DILexicalBlockFile(scope: !2105, file: !139, discriminator: 1)
!2109 = !DILocation(line: 689, column: 25, scope: !2110)
!2110 = !DILexicalBlockFile(scope: !2104, file: !139, discriminator: 2)
!2111 = !DILocation(line: 689, column: 25, scope: !2112)
!2112 = !DILexicalBlockFile(scope: !2105, file: !139, discriminator: 3)
!2113 = !DILocation(line: 691, column: 23, scope: !2106)
!2114 = !DILocation(line: 692, column: 35, scope: !2115)
!2115 = distinct !DILexicalBlock(scope: !2021, file: !139, line: 692, column: 25)
!2116 = !DILocation(line: 692, column: 30, scope: !2115)
!2117 = !DILocation(line: 692, column: 25, scope: !2021)
!2118 = !DILocation(line: 694, column: 21, scope: !2119)
!2119 = !DILexicalBlockFile(scope: !2120, file: !139, discriminator: 1)
!2120 = distinct !DILexicalBlock(scope: !2121, file: !139, line: 694, column: 21)
!2121 = distinct !DILexicalBlock(scope: !2021, file: !139, line: 694, column: 21)
!2122 = !DILocation(line: 694, column: 21, scope: !2123)
!2123 = !DILexicalBlockFile(scope: !2120, file: !139, discriminator: 2)
!2124 = !DILocation(line: 694, column: 21, scope: !2125)
!2125 = !DILexicalBlockFile(scope: !2126, file: !139, discriminator: 4)
!2126 = distinct !DILexicalBlock(scope: !2127, file: !139, line: 694, column: 21)
!2127 = distinct !DILexicalBlock(scope: !2128, file: !139, line: 694, column: 21)
!2128 = distinct !DILexicalBlock(scope: !2120, file: !139, line: 694, column: 21)
!2129 = !DILocation(line: 694, column: 21, scope: !2130)
!2130 = !DILexicalBlockFile(scope: !2127, file: !139, discriminator: 4)
!2131 = !DILocation(line: 694, column: 21, scope: !2132)
!2132 = !DILexicalBlockFile(scope: !2126, file: !139, discriminator: 5)
!2133 = !DILocation(line: 694, column: 21, scope: !2134)
!2134 = !DILexicalBlockFile(scope: !2127, file: !139, discriminator: 6)
!2135 = !DILocation(line: 694, column: 21, scope: !2136)
!2136 = !DILexicalBlockFile(scope: !2137, file: !139, discriminator: 9)
!2137 = distinct !DILexicalBlock(scope: !2138, file: !139, line: 694, column: 21)
!2138 = distinct !DILexicalBlock(scope: !2128, file: !139, line: 694, column: 21)
!2139 = !DILocation(line: 694, column: 21, scope: !2140)
!2140 = !DILexicalBlockFile(scope: !2138, file: !139, discriminator: 9)
!2141 = !DILocation(line: 694, column: 21, scope: !2142)
!2142 = !DILexicalBlockFile(scope: !2137, file: !139, discriminator: 10)
!2143 = !DILocation(line: 694, column: 21, scope: !2144)
!2144 = !DILexicalBlockFile(scope: !2138, file: !139, discriminator: 11)
!2145 = !DILocation(line: 694, column: 21, scope: !2146)
!2146 = !DILexicalBlockFile(scope: !2128, file: !139, discriminator: 13)
!2147 = !DILocation(line: 695, column: 21, scope: !2148)
!2148 = !DILexicalBlockFile(scope: !2149, file: !139, discriminator: 1)
!2149 = distinct !DILexicalBlock(scope: !2150, file: !139, line: 695, column: 21)
!2150 = distinct !DILexicalBlock(scope: !2021, file: !139, line: 695, column: 21)
!2151 = !DILocation(line: 695, column: 21, scope: !2152)
!2152 = !DILexicalBlockFile(scope: !2150, file: !139, discriminator: 1)
!2153 = !DILocation(line: 695, column: 21, scope: !2154)
!2154 = !DILexicalBlockFile(scope: !2149, file: !139, discriminator: 2)
!2155 = !DILocation(line: 695, column: 21, scope: !2156)
!2156 = !DILexicalBlockFile(scope: !2150, file: !139, discriminator: 3)
!2157 = !DILocation(line: 696, column: 25, scope: !2021)
!2158 = !DILocation(line: 678, column: 17, scope: !2159)
!2159 = !DILexicalBlockFile(scope: !2022, file: !139, discriminator: 1)
!2160 = distinct !{!2160, !2161, !2162}
!2161 = !DILocation(line: 678, column: 17, scope: !2023)
!2162 = !DILocation(line: 697, column: 19, scope: !2023)
!2163 = !DILocation(line: 704, column: 34, scope: !2164)
!2164 = distinct !DILexicalBlock(scope: !1567, file: !139, line: 704, column: 11)
!2165 = !DILocation(line: 706, column: 14, scope: !2164)
!2166 = !DILocation(line: 707, column: 14, scope: !2164)
!2167 = !DILocation(line: 707, column: 35, scope: !2168)
!2168 = !DILexicalBlockFile(scope: !2164, file: !139, discriminator: 1)
!2169 = !DILocation(line: 707, column: 17, scope: !2168)
!2170 = !DILocation(line: 707, column: 53, scope: !2168)
!2171 = !DILocation(line: 707, column: 47, scope: !2168)
!2172 = !DILocation(line: 707, column: 65, scope: !2168)
!2173 = !DILocation(line: 708, column: 15, scope: !2168)
!2174 = !DILocation(line: 708, column: 11, scope: !2164)
!2175 = !DILocation(line: 704, column: 11, scope: !2176)
!2176 = !DILexicalBlockFile(scope: !1567, file: !139, discriminator: 2)
!2177 = !DILocation(line: 712, column: 7, scope: !2178)
!2178 = !DILexicalBlockFile(scope: !2179, file: !139, discriminator: 1)
!2179 = distinct !DILexicalBlock(scope: !1567, file: !139, line: 712, column: 7)
!2180 = !DILocation(line: 712, column: 7, scope: !2181)
!2181 = !DILexicalBlockFile(scope: !2182, file: !139, discriminator: 4)
!2182 = distinct !DILexicalBlock(scope: !2179, file: !139, line: 712, column: 7)
!2183 = !DILocation(line: 712, column: 7, scope: !2184)
!2184 = !DILexicalBlockFile(scope: !2182, file: !139, discriminator: 3)
!2185 = !DILocation(line: 712, column: 7, scope: !2186)
!2186 = !DILexicalBlockFile(scope: !2187, file: !139, discriminator: 6)
!2187 = distinct !DILexicalBlock(scope: !2188, file: !139, line: 712, column: 7)
!2188 = distinct !DILexicalBlock(scope: !2189, file: !139, line: 712, column: 7)
!2189 = distinct !DILexicalBlock(scope: !2182, file: !139, line: 712, column: 7)
!2190 = !DILocation(line: 712, column: 7, scope: !2191)
!2191 = !DILexicalBlockFile(scope: !2188, file: !139, discriminator: 6)
!2192 = !DILocation(line: 712, column: 7, scope: !2193)
!2193 = !DILexicalBlockFile(scope: !2187, file: !139, discriminator: 7)
!2194 = !DILocation(line: 712, column: 7, scope: !2195)
!2195 = !DILexicalBlockFile(scope: !2188, file: !139, discriminator: 8)
!2196 = !DILocation(line: 712, column: 7, scope: !2197)
!2197 = !DILexicalBlockFile(scope: !2198, file: !139, discriminator: 11)
!2198 = distinct !DILexicalBlock(scope: !2199, file: !139, line: 712, column: 7)
!2199 = distinct !DILexicalBlock(scope: !2189, file: !139, line: 712, column: 7)
!2200 = !DILocation(line: 712, column: 7, scope: !2201)
!2201 = !DILexicalBlockFile(scope: !2199, file: !139, discriminator: 11)
!2202 = !DILocation(line: 712, column: 7, scope: !2203)
!2203 = !DILexicalBlockFile(scope: !2198, file: !139, discriminator: 12)
!2204 = !DILocation(line: 712, column: 7, scope: !2205)
!2205 = !DILexicalBlockFile(scope: !2199, file: !139, discriminator: 13)
!2206 = !DILocation(line: 712, column: 7, scope: !2207)
!2207 = !DILexicalBlockFile(scope: !2208, file: !139, discriminator: 16)
!2208 = distinct !DILexicalBlock(scope: !2209, file: !139, line: 712, column: 7)
!2209 = distinct !DILexicalBlock(scope: !2189, file: !139, line: 712, column: 7)
!2210 = !DILocation(line: 712, column: 7, scope: !2211)
!2211 = !DILexicalBlockFile(scope: !2209, file: !139, discriminator: 16)
!2212 = !DILocation(line: 712, column: 7, scope: !2213)
!2213 = !DILexicalBlockFile(scope: !2208, file: !139, discriminator: 17)
!2214 = !DILocation(line: 712, column: 7, scope: !2215)
!2215 = !DILexicalBlockFile(scope: !2209, file: !139, discriminator: 18)
!2216 = !DILocation(line: 712, column: 7, scope: !2217)
!2217 = !DILexicalBlockFile(scope: !2189, file: !139, discriminator: 20)
!2218 = !DILocation(line: 712, column: 7, scope: !2219)
!2219 = !DILexicalBlockFile(scope: !2220, file: !139, discriminator: 22)
!2220 = distinct !DILexicalBlock(scope: !2221, file: !139, line: 712, column: 7)
!2221 = distinct !DILexicalBlock(scope: !2179, file: !139, line: 712, column: 7)
!2222 = !DILocation(line: 712, column: 7, scope: !2223)
!2223 = !DILexicalBlockFile(scope: !2221, file: !139, discriminator: 22)
!2224 = !DILocation(line: 712, column: 7, scope: !2225)
!2225 = !DILexicalBlockFile(scope: !2220, file: !139, discriminator: 23)
!2226 = !DILocation(line: 712, column: 7, scope: !2227)
!2227 = !DILexicalBlockFile(scope: !2221, file: !139, discriminator: 24)
!2228 = !DILocation(line: 715, column: 7, scope: !2229)
!2229 = !DILexicalBlockFile(scope: !2230, file: !139, discriminator: 1)
!2230 = distinct !DILexicalBlock(scope: !2231, file: !139, line: 715, column: 7)
!2231 = distinct !DILexicalBlock(scope: !1567, file: !139, line: 715, column: 7)
!2232 = !DILocation(line: 715, column: 7, scope: !2233)
!2233 = !DILexicalBlockFile(scope: !2230, file: !139, discriminator: 2)
!2234 = !DILocation(line: 715, column: 7, scope: !2235)
!2235 = !DILexicalBlockFile(scope: !2236, file: !139, discriminator: 4)
!2236 = distinct !DILexicalBlock(scope: !2237, file: !139, line: 715, column: 7)
!2237 = distinct !DILexicalBlock(scope: !2238, file: !139, line: 715, column: 7)
!2238 = distinct !DILexicalBlock(scope: !2230, file: !139, line: 715, column: 7)
!2239 = !DILocation(line: 715, column: 7, scope: !2240)
!2240 = !DILexicalBlockFile(scope: !2237, file: !139, discriminator: 4)
!2241 = !DILocation(line: 715, column: 7, scope: !2242)
!2242 = !DILexicalBlockFile(scope: !2236, file: !139, discriminator: 5)
!2243 = !DILocation(line: 715, column: 7, scope: !2244)
!2244 = !DILexicalBlockFile(scope: !2237, file: !139, discriminator: 6)
!2245 = !DILocation(line: 715, column: 7, scope: !2246)
!2246 = !DILexicalBlockFile(scope: !2247, file: !139, discriminator: 9)
!2247 = distinct !DILexicalBlock(scope: !2248, file: !139, line: 715, column: 7)
!2248 = distinct !DILexicalBlock(scope: !2238, file: !139, line: 715, column: 7)
!2249 = !DILocation(line: 715, column: 7, scope: !2250)
!2250 = !DILexicalBlockFile(scope: !2248, file: !139, discriminator: 9)
!2251 = !DILocation(line: 715, column: 7, scope: !2252)
!2252 = !DILexicalBlockFile(scope: !2247, file: !139, discriminator: 10)
!2253 = !DILocation(line: 715, column: 7, scope: !2254)
!2254 = !DILexicalBlockFile(scope: !2248, file: !139, discriminator: 11)
!2255 = !DILocation(line: 715, column: 7, scope: !2256)
!2256 = !DILexicalBlockFile(scope: !2238, file: !139, discriminator: 13)
!2257 = !DILocation(line: 716, column: 7, scope: !2258)
!2258 = !DILexicalBlockFile(scope: !2259, file: !139, discriminator: 1)
!2259 = distinct !DILexicalBlock(scope: !2260, file: !139, line: 716, column: 7)
!2260 = distinct !DILexicalBlock(scope: !1567, file: !139, line: 716, column: 7)
!2261 = !DILocation(line: 716, column: 7, scope: !2262)
!2262 = !DILexicalBlockFile(scope: !2260, file: !139, discriminator: 1)
!2263 = !DILocation(line: 716, column: 7, scope: !2264)
!2264 = !DILexicalBlockFile(scope: !2259, file: !139, discriminator: 2)
!2265 = !DILocation(line: 716, column: 7, scope: !2266)
!2266 = !DILexicalBlockFile(scope: !2260, file: !139, discriminator: 3)
!2267 = !DILocation(line: 718, column: 13, scope: !2268)
!2268 = distinct !DILexicalBlock(scope: !1567, file: !139, line: 718, column: 11)
!2269 = !DILocation(line: 718, column: 11, scope: !1567)
!2270 = !DILocation(line: 720, column: 5, scope: !1568)
!2271 = !DILocation(line: 392, column: 75, scope: !2272)
!2272 = !DILexicalBlockFile(scope: !1568, file: !139, discriminator: 5)
!2273 = !DILocation(line: 392, column: 3, scope: !2272)
!2274 = distinct !{!2274, !2275, !2276}
!2275 = !DILocation(line: 392, column: 3, scope: !1569)
!2276 = !DILocation(line: 720, column: 5, scope: !1569)
!2277 = !DILocation(line: 722, column: 11, scope: !2278)
!2278 = distinct !DILexicalBlock(scope: !1540, file: !139, line: 722, column: 7)
!2279 = !DILocation(line: 722, column: 16, scope: !2278)
!2280 = !DILocation(line: 730, column: 51, scope: !2281)
!2281 = distinct !DILexicalBlock(scope: !1540, file: !139, line: 730, column: 7)
!2282 = !DILocation(line: 731, column: 10, scope: !2283)
!2283 = !DILexicalBlockFile(scope: !2281, file: !139, discriminator: 1)
!2284 = !DILocation(line: 733, column: 11, scope: !2285)
!2285 = distinct !DILexicalBlock(scope: !2286, file: !139, line: 733, column: 11)
!2286 = distinct !DILexicalBlock(scope: !2281, file: !139, line: 732, column: 5)
!2287 = !DILocation(line: 733, column: 11, scope: !2286)
!2288 = !DILocation(line: 734, column: 16, scope: !2285)
!2289 = !DILocation(line: 734, column: 9, scope: !2285)
!2290 = !DILocation(line: 738, column: 18, scope: !2291)
!2291 = distinct !DILexicalBlock(scope: !2285, file: !139, line: 738, column: 16)
!2292 = !DILocation(line: 738, column: 32, scope: !2293)
!2293 = !DILexicalBlockFile(scope: !2291, file: !139, discriminator: 1)
!2294 = !DILocation(line: 738, column: 29, scope: !2291)
!2295 = !DILocation(line: 747, column: 7, scope: !2296)
!2296 = distinct !DILexicalBlock(scope: !1540, file: !139, line: 747, column: 7)
!2297 = !DILocation(line: 747, column: 20, scope: !2296)
!2298 = !DILocation(line: 748, column: 12, scope: !2299)
!2299 = !DILexicalBlockFile(scope: !2300, file: !139, discriminator: 1)
!2300 = distinct !DILexicalBlock(scope: !2301, file: !139, line: 748, column: 5)
!2301 = distinct !DILexicalBlock(scope: !2296, file: !139, line: 748, column: 5)
!2302 = !DILocation(line: 748, column: 5, scope: !2303)
!2303 = !DILexicalBlockFile(scope: !2301, file: !139, discriminator: 1)
!2304 = !DILocation(line: 749, column: 7, scope: !2305)
!2305 = !DILexicalBlockFile(scope: !2306, file: !139, discriminator: 1)
!2306 = distinct !DILexicalBlock(scope: !2307, file: !139, line: 749, column: 7)
!2307 = distinct !DILexicalBlock(scope: !2300, file: !139, line: 749, column: 7)
!2308 = !DILocation(line: 749, column: 7, scope: !2309)
!2309 = !DILexicalBlockFile(scope: !2307, file: !139, discriminator: 1)
!2310 = !DILocation(line: 749, column: 7, scope: !2311)
!2311 = !DILexicalBlockFile(scope: !2306, file: !139, discriminator: 2)
!2312 = !DILocation(line: 749, column: 7, scope: !2313)
!2313 = !DILexicalBlockFile(scope: !2307, file: !139, discriminator: 3)
!2314 = !DILocation(line: 748, column: 39, scope: !2315)
!2315 = !DILexicalBlockFile(scope: !2300, file: !139, discriminator: 2)
!2316 = distinct !{!2316, !2317, !2318}
!2317 = !DILocation(line: 748, column: 5, scope: !2301)
!2318 = !DILocation(line: 749, column: 7, scope: !2301)
!2319 = !DILocation(line: 751, column: 11, scope: !2320)
!2320 = distinct !DILexicalBlock(scope: !1540, file: !139, line: 751, column: 7)
!2321 = !DILocation(line: 751, column: 7, scope: !1540)
!2322 = !DILocation(line: 752, column: 5, scope: !2320)
!2323 = !DILocation(line: 752, column: 17, scope: !2320)
!2324 = !DILocation(line: 758, column: 21, scope: !2325)
!2325 = distinct !DILexicalBlock(scope: !1540, file: !139, line: 758, column: 7)
!2326 = !DILocation(line: 758, column: 54, scope: !2327)
!2327 = !DILexicalBlockFile(scope: !2325, file: !139, discriminator: 1)
!2328 = !DILocation(line: 758, column: 51, scope: !2325)
!2329 = !DILocation(line: 762, column: 42, scope: !1540)
!2330 = !DILocation(line: 760, column: 10, scope: !1540)
!2331 = !DILocation(line: 760, column: 3, scope: !1540)
!2332 = !DILocation(line: 764, column: 1, scope: !1540)
!2333 = distinct !DISubprogram(name: "gettext_quote", scope: !139, file: !139, line: 199, type: !2334, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !111, variables: !2336)
!2334 = !DISubroutineType(types: !2335)
!2335 = !{!35, !35, !5}
!2336 = !{!2337, !2338, !2339, !2340}
!2337 = !DILocalVariable(name: "msgid", arg: 1, scope: !2333, file: !139, line: 199, type: !35)
!2338 = !DILocalVariable(name: "s", arg: 2, scope: !2333, file: !139, line: 199, type: !5)
!2339 = !DILocalVariable(name: "translation", scope: !2333, file: !139, line: 201, type: !35)
!2340 = !DILocalVariable(name: "locale_code", scope: !2333, file: !139, line: 202, type: !35)
!2341 = !DILocation(line: 199, column: 28, scope: !2333)
!2342 = !DILocation(line: 199, column: 54, scope: !2333)
!2343 = !DILocation(line: 201, column: 29, scope: !2333)
!2344 = !DILocation(line: 201, column: 15, scope: !2333)
!2345 = !DILocation(line: 204, column: 19, scope: !2346)
!2346 = distinct !DILexicalBlock(scope: !2333, file: !139, line: 204, column: 7)
!2347 = !DILocation(line: 204, column: 7, scope: !2333)
!2348 = !DILocation(line: 225, column: 17, scope: !2333)
!2349 = !DILocation(line: 202, column: 15, scope: !2333)
!2350 = !DILocalVariable(name: "s2", arg: 2, scope: !2351, file: !2352, line: 160, type: !35)
!2351 = distinct !DISubprogram(name: "strcaseeq0", scope: !2352, file: !2352, line: 160, type: !2353, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !111, variables: !2355)
!2352 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2353 = !DISubroutineType(types: !2354)
!2354 = !{!64, !35, !35, !26, !26, !26, !26, !26, !26, !26, !26, !26}
!2355 = !{!2356, !2350, !2357, !2358, !2359, !2360, !2361, !2362, !2363, !2364, !2365}
!2356 = !DILocalVariable(name: "s1", arg: 1, scope: !2351, file: !2352, line: 160, type: !35)
!2357 = !DILocalVariable(name: "s20", arg: 3, scope: !2351, file: !2352, line: 160, type: !26)
!2358 = !DILocalVariable(name: "s21", arg: 4, scope: !2351, file: !2352, line: 160, type: !26)
!2359 = !DILocalVariable(name: "s22", arg: 5, scope: !2351, file: !2352, line: 160, type: !26)
!2360 = !DILocalVariable(name: "s23", arg: 6, scope: !2351, file: !2352, line: 160, type: !26)
!2361 = !DILocalVariable(name: "s24", arg: 7, scope: !2351, file: !2352, line: 160, type: !26)
!2362 = !DILocalVariable(name: "s25", arg: 8, scope: !2351, file: !2352, line: 160, type: !26)
!2363 = !DILocalVariable(name: "s26", arg: 9, scope: !2351, file: !2352, line: 160, type: !26)
!2364 = !DILocalVariable(name: "s27", arg: 10, scope: !2351, file: !2352, line: 160, type: !26)
!2365 = !DILocalVariable(name: "s28", arg: 11, scope: !2351, file: !2352, line: 160, type: !26)
!2366 = !DILocation(line: 160, column: 41, scope: !2351, inlinedAt: !2367)
!2367 = distinct !DILocation(line: 226, column: 7, scope: !2368)
!2368 = distinct !DILexicalBlock(scope: !2333, file: !139, line: 226, column: 7)
!2369 = !DILocation(line: 160, column: 120, scope: !2351, inlinedAt: !2367)
!2370 = !DILocation(line: 160, column: 130, scope: !2351, inlinedAt: !2367)
!2371 = !DILocation(line: 162, column: 7, scope: !2372, inlinedAt: !2367)
!2372 = !DILexicalBlockFile(scope: !2373, file: !2352, discriminator: 1)
!2373 = distinct !DILexicalBlock(scope: !2351, file: !2352, line: 162, column: 7)
!2374 = !DILocalVariable(name: "s2", arg: 2, scope: !2375, file: !2352, line: 146, type: !35)
!2375 = distinct !DISubprogram(name: "strcaseeq1", scope: !2352, file: !2352, line: 146, type: !2376, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !111, variables: !2378)
!2376 = !DISubroutineType(types: !2377)
!2377 = !{!64, !35, !35, !26, !26, !26, !26, !26, !26, !26, !26}
!2378 = !{!2379, !2374, !2380, !2381, !2382, !2383, !2384, !2385, !2386, !2387}
!2379 = !DILocalVariable(name: "s1", arg: 1, scope: !2375, file: !2352, line: 146, type: !35)
!2380 = !DILocalVariable(name: "s21", arg: 3, scope: !2375, file: !2352, line: 146, type: !26)
!2381 = !DILocalVariable(name: "s22", arg: 4, scope: !2375, file: !2352, line: 146, type: !26)
!2382 = !DILocalVariable(name: "s23", arg: 5, scope: !2375, file: !2352, line: 146, type: !26)
!2383 = !DILocalVariable(name: "s24", arg: 6, scope: !2375, file: !2352, line: 146, type: !26)
!2384 = !DILocalVariable(name: "s25", arg: 7, scope: !2375, file: !2352, line: 146, type: !26)
!2385 = !DILocalVariable(name: "s26", arg: 8, scope: !2375, file: !2352, line: 146, type: !26)
!2386 = !DILocalVariable(name: "s27", arg: 9, scope: !2375, file: !2352, line: 146, type: !26)
!2387 = !DILocalVariable(name: "s28", arg: 10, scope: !2375, file: !2352, line: 146, type: !26)
!2388 = !DILocation(line: 146, column: 41, scope: !2375, inlinedAt: !2389)
!2389 = distinct !DILocation(line: 167, column: 16, scope: !2390, inlinedAt: !2367)
!2390 = distinct !DILexicalBlock(scope: !2391, file: !2352, line: 164, column: 11)
!2391 = distinct !DILexicalBlock(scope: !2373, file: !2352, line: 163, column: 5)
!2392 = !DILocation(line: 146, column: 110, scope: !2375, inlinedAt: !2389)
!2393 = !DILocation(line: 146, column: 120, scope: !2375, inlinedAt: !2389)
!2394 = !DILocation(line: 148, column: 7, scope: !2395, inlinedAt: !2389)
!2395 = !DILexicalBlockFile(scope: !2396, file: !2352, discriminator: 1)
!2396 = distinct !DILexicalBlock(scope: !2375, file: !2352, line: 148, column: 7)
!2397 = !DILocalVariable(name: "s2", arg: 2, scope: !2398, file: !2352, line: 132, type: !35)
!2398 = distinct !DISubprogram(name: "strcaseeq2", scope: !2352, file: !2352, line: 132, type: !2399, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !111, variables: !2401)
!2399 = !DISubroutineType(types: !2400)
!2400 = !{!64, !35, !35, !26, !26, !26, !26, !26, !26, !26}
!2401 = !{!2402, !2397, !2403, !2404, !2405, !2406, !2407, !2408, !2409}
!2402 = !DILocalVariable(name: "s1", arg: 1, scope: !2398, file: !2352, line: 132, type: !35)
!2403 = !DILocalVariable(name: "s22", arg: 3, scope: !2398, file: !2352, line: 132, type: !26)
!2404 = !DILocalVariable(name: "s23", arg: 4, scope: !2398, file: !2352, line: 132, type: !26)
!2405 = !DILocalVariable(name: "s24", arg: 5, scope: !2398, file: !2352, line: 132, type: !26)
!2406 = !DILocalVariable(name: "s25", arg: 6, scope: !2398, file: !2352, line: 132, type: !26)
!2407 = !DILocalVariable(name: "s26", arg: 7, scope: !2398, file: !2352, line: 132, type: !26)
!2408 = !DILocalVariable(name: "s27", arg: 8, scope: !2398, file: !2352, line: 132, type: !26)
!2409 = !DILocalVariable(name: "s28", arg: 9, scope: !2398, file: !2352, line: 132, type: !26)
!2410 = !DILocation(line: 132, column: 41, scope: !2398, inlinedAt: !2411)
!2411 = distinct !DILocation(line: 153, column: 16, scope: !2412, inlinedAt: !2389)
!2412 = distinct !DILexicalBlock(scope: !2413, file: !2352, line: 150, column: 11)
!2413 = distinct !DILexicalBlock(scope: !2396, file: !2352, line: 149, column: 5)
!2414 = !DILocation(line: 132, column: 100, scope: !2398, inlinedAt: !2411)
!2415 = !DILocation(line: 132, column: 110, scope: !2398, inlinedAt: !2411)
!2416 = !DILocation(line: 134, column: 7, scope: !2417, inlinedAt: !2411)
!2417 = !DILexicalBlockFile(scope: !2418, file: !2352, discriminator: 1)
!2418 = distinct !DILexicalBlock(scope: !2398, file: !2352, line: 134, column: 7)
!2419 = !DILocalVariable(name: "s2", arg: 2, scope: !2420, file: !2352, line: 118, type: !35)
!2420 = distinct !DISubprogram(name: "strcaseeq3", scope: !2352, file: !2352, line: 118, type: !2421, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !111, variables: !2423)
!2421 = !DISubroutineType(types: !2422)
!2422 = !{!64, !35, !35, !26, !26, !26, !26, !26, !26}
!2423 = !{!2424, !2419, !2425, !2426, !2427, !2428, !2429, !2430}
!2424 = !DILocalVariable(name: "s1", arg: 1, scope: !2420, file: !2352, line: 118, type: !35)
!2425 = !DILocalVariable(name: "s23", arg: 3, scope: !2420, file: !2352, line: 118, type: !26)
!2426 = !DILocalVariable(name: "s24", arg: 4, scope: !2420, file: !2352, line: 118, type: !26)
!2427 = !DILocalVariable(name: "s25", arg: 5, scope: !2420, file: !2352, line: 118, type: !26)
!2428 = !DILocalVariable(name: "s26", arg: 6, scope: !2420, file: !2352, line: 118, type: !26)
!2429 = !DILocalVariable(name: "s27", arg: 7, scope: !2420, file: !2352, line: 118, type: !26)
!2430 = !DILocalVariable(name: "s28", arg: 8, scope: !2420, file: !2352, line: 118, type: !26)
!2431 = !DILocation(line: 118, column: 41, scope: !2420, inlinedAt: !2432)
!2432 = distinct !DILocation(line: 139, column: 16, scope: !2433, inlinedAt: !2411)
!2433 = distinct !DILexicalBlock(scope: !2434, file: !2352, line: 136, column: 11)
!2434 = distinct !DILexicalBlock(scope: !2418, file: !2352, line: 135, column: 5)
!2435 = !DILocation(line: 118, column: 90, scope: !2420, inlinedAt: !2432)
!2436 = !DILocation(line: 118, column: 100, scope: !2420, inlinedAt: !2432)
!2437 = !DILocation(line: 120, column: 7, scope: !2438, inlinedAt: !2432)
!2438 = !DILexicalBlockFile(scope: !2439, file: !2352, discriminator: 2)
!2439 = distinct !DILexicalBlock(scope: !2420, file: !2352, line: 120, column: 7)
!2440 = !DILocation(line: 120, column: 7, scope: !2441, inlinedAt: !2432)
!2441 = !DILexicalBlockFile(scope: !2420, file: !2352, discriminator: 2)
!2442 = !DILocalVariable(name: "s2", arg: 2, scope: !2443, file: !2352, line: 104, type: !35)
!2443 = distinct !DISubprogram(name: "strcaseeq4", scope: !2352, file: !2352, line: 104, type: !2444, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !111, variables: !2446)
!2444 = !DISubroutineType(types: !2445)
!2445 = !{!64, !35, !35, !26, !26, !26, !26, !26}
!2446 = !{!2447, !2442, !2448, !2449, !2450, !2451, !2452}
!2447 = !DILocalVariable(name: "s1", arg: 1, scope: !2443, file: !2352, line: 104, type: !35)
!2448 = !DILocalVariable(name: "s24", arg: 3, scope: !2443, file: !2352, line: 104, type: !26)
!2449 = !DILocalVariable(name: "s25", arg: 4, scope: !2443, file: !2352, line: 104, type: !26)
!2450 = !DILocalVariable(name: "s26", arg: 5, scope: !2443, file: !2352, line: 104, type: !26)
!2451 = !DILocalVariable(name: "s27", arg: 6, scope: !2443, file: !2352, line: 104, type: !26)
!2452 = !DILocalVariable(name: "s28", arg: 7, scope: !2443, file: !2352, line: 104, type: !26)
!2453 = !DILocation(line: 104, column: 41, scope: !2443, inlinedAt: !2454)
!2454 = distinct !DILocation(line: 125, column: 16, scope: !2455, inlinedAt: !2432)
!2455 = distinct !DILexicalBlock(scope: !2456, file: !2352, line: 122, column: 11)
!2456 = distinct !DILexicalBlock(scope: !2439, file: !2352, line: 121, column: 5)
!2457 = !DILocation(line: 104, column: 80, scope: !2443, inlinedAt: !2454)
!2458 = !DILocation(line: 104, column: 90, scope: !2443, inlinedAt: !2454)
!2459 = !DILocation(line: 106, column: 7, scope: !2460, inlinedAt: !2454)
!2460 = !DILexicalBlockFile(scope: !2461, file: !2352, discriminator: 2)
!2461 = distinct !DILexicalBlock(scope: !2443, file: !2352, line: 106, column: 7)
!2462 = !DILocation(line: 106, column: 7, scope: !2463, inlinedAt: !2454)
!2463 = !DILexicalBlockFile(scope: !2443, file: !2352, discriminator: 2)
!2464 = !DILocalVariable(name: "s2", arg: 2, scope: !2465, file: !2352, line: 90, type: !35)
!2465 = distinct !DISubprogram(name: "strcaseeq5", scope: !2352, file: !2352, line: 90, type: !2466, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !111, variables: !2468)
!2466 = !DISubroutineType(types: !2467)
!2467 = !{!64, !35, !35, !26, !26, !26, !26}
!2468 = !{!2469, !2464, !2470, !2471, !2472, !2473}
!2469 = !DILocalVariable(name: "s1", arg: 1, scope: !2465, file: !2352, line: 90, type: !35)
!2470 = !DILocalVariable(name: "s25", arg: 3, scope: !2465, file: !2352, line: 90, type: !26)
!2471 = !DILocalVariable(name: "s26", arg: 4, scope: !2465, file: !2352, line: 90, type: !26)
!2472 = !DILocalVariable(name: "s27", arg: 5, scope: !2465, file: !2352, line: 90, type: !26)
!2473 = !DILocalVariable(name: "s28", arg: 6, scope: !2465, file: !2352, line: 90, type: !26)
!2474 = !DILocation(line: 90, column: 41, scope: !2465, inlinedAt: !2475)
!2475 = distinct !DILocation(line: 111, column: 16, scope: !2476, inlinedAt: !2454)
!2476 = distinct !DILexicalBlock(scope: !2477, file: !2352, line: 108, column: 11)
!2477 = distinct !DILexicalBlock(scope: !2461, file: !2352, line: 107, column: 5)
!2478 = !DILocation(line: 90, column: 70, scope: !2465, inlinedAt: !2475)
!2479 = !DILocation(line: 90, column: 80, scope: !2465, inlinedAt: !2475)
!2480 = !DILocation(line: 92, column: 7, scope: !2481, inlinedAt: !2475)
!2481 = !DILexicalBlockFile(scope: !2482, file: !2352, discriminator: 2)
!2482 = distinct !DILexicalBlock(scope: !2465, file: !2352, line: 92, column: 7)
!2483 = !DILocation(line: 92, column: 7, scope: !2484, inlinedAt: !2475)
!2484 = !DILexicalBlockFile(scope: !2465, file: !2352, discriminator: 2)
!2485 = !DILocation(line: 227, column: 12, scope: !2368)
!2486 = !DILocation(line: 227, column: 21, scope: !2368)
!2487 = !DILocation(line: 227, column: 5, scope: !2368)
!2488 = !DILocation(line: 146, column: 41, scope: !2375, inlinedAt: !2489)
!2489 = distinct !DILocation(line: 167, column: 16, scope: !2390, inlinedAt: !2490)
!2490 = distinct !DILocation(line: 228, column: 7, scope: !2491)
!2491 = distinct !DILexicalBlock(scope: !2333, file: !139, line: 228, column: 7)
!2492 = !DILocation(line: 146, column: 110, scope: !2375, inlinedAt: !2489)
!2493 = !DILocation(line: 146, column: 120, scope: !2375, inlinedAt: !2489)
!2494 = !DILocation(line: 148, column: 7, scope: !2395, inlinedAt: !2489)
!2495 = !DILocation(line: 132, column: 41, scope: !2398, inlinedAt: !2496)
!2496 = distinct !DILocation(line: 153, column: 16, scope: !2412, inlinedAt: !2489)
!2497 = !DILocation(line: 132, column: 100, scope: !2398, inlinedAt: !2496)
!2498 = !DILocation(line: 132, column: 110, scope: !2398, inlinedAt: !2496)
!2499 = !DILocation(line: 134, column: 7, scope: !2500, inlinedAt: !2496)
!2500 = !DILexicalBlockFile(scope: !2418, file: !2352, discriminator: 2)
!2501 = !DILocation(line: 134, column: 7, scope: !2502, inlinedAt: !2496)
!2502 = !DILexicalBlockFile(scope: !2398, file: !2352, discriminator: 2)
!2503 = !DILocation(line: 118, column: 41, scope: !2420, inlinedAt: !2504)
!2504 = distinct !DILocation(line: 139, column: 16, scope: !2433, inlinedAt: !2496)
!2505 = !DILocation(line: 118, column: 90, scope: !2420, inlinedAt: !2504)
!2506 = !DILocation(line: 118, column: 100, scope: !2420, inlinedAt: !2504)
!2507 = !DILocation(line: 120, column: 7, scope: !2438, inlinedAt: !2504)
!2508 = !DILocation(line: 120, column: 7, scope: !2441, inlinedAt: !2504)
!2509 = !DILocation(line: 104, column: 41, scope: !2443, inlinedAt: !2510)
!2510 = distinct !DILocation(line: 125, column: 16, scope: !2455, inlinedAt: !2504)
!2511 = !DILocation(line: 104, column: 80, scope: !2443, inlinedAt: !2510)
!2512 = !DILocation(line: 104, column: 90, scope: !2443, inlinedAt: !2510)
!2513 = !DILocation(line: 106, column: 7, scope: !2460, inlinedAt: !2510)
!2514 = !DILocation(line: 106, column: 7, scope: !2463, inlinedAt: !2510)
!2515 = !DILocation(line: 90, column: 41, scope: !2465, inlinedAt: !2516)
!2516 = distinct !DILocation(line: 111, column: 16, scope: !2476, inlinedAt: !2510)
!2517 = !DILocation(line: 90, column: 70, scope: !2465, inlinedAt: !2516)
!2518 = !DILocation(line: 90, column: 80, scope: !2465, inlinedAt: !2516)
!2519 = !DILocation(line: 92, column: 7, scope: !2481, inlinedAt: !2516)
!2520 = !DILocation(line: 92, column: 7, scope: !2484, inlinedAt: !2516)
!2521 = !DILocalVariable(name: "s2", arg: 2, scope: !2522, file: !2352, line: 76, type: !35)
!2522 = distinct !DISubprogram(name: "strcaseeq6", scope: !2352, file: !2352, line: 76, type: !2523, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !111, variables: !2525)
!2523 = !DISubroutineType(types: !2524)
!2524 = !{!64, !35, !35, !26, !26, !26}
!2525 = !{!2526, !2521, !2527, !2528, !2529}
!2526 = !DILocalVariable(name: "s1", arg: 1, scope: !2522, file: !2352, line: 76, type: !35)
!2527 = !DILocalVariable(name: "s26", arg: 3, scope: !2522, file: !2352, line: 76, type: !26)
!2528 = !DILocalVariable(name: "s27", arg: 4, scope: !2522, file: !2352, line: 76, type: !26)
!2529 = !DILocalVariable(name: "s28", arg: 5, scope: !2522, file: !2352, line: 76, type: !26)
!2530 = !DILocation(line: 76, column: 41, scope: !2522, inlinedAt: !2531)
!2531 = distinct !DILocation(line: 97, column: 16, scope: !2532, inlinedAt: !2516)
!2532 = distinct !DILexicalBlock(scope: !2533, file: !2352, line: 94, column: 11)
!2533 = distinct !DILexicalBlock(scope: !2482, file: !2352, line: 93, column: 5)
!2534 = !DILocation(line: 76, column: 60, scope: !2522, inlinedAt: !2531)
!2535 = !DILocation(line: 76, column: 70, scope: !2522, inlinedAt: !2531)
!2536 = !DILocation(line: 78, column: 7, scope: !2537, inlinedAt: !2531)
!2537 = !DILexicalBlockFile(scope: !2538, file: !2352, discriminator: 2)
!2538 = distinct !DILexicalBlock(scope: !2522, file: !2352, line: 78, column: 7)
!2539 = !DILocation(line: 78, column: 7, scope: !2540, inlinedAt: !2531)
!2540 = !DILexicalBlockFile(scope: !2522, file: !2352, discriminator: 2)
!2541 = !DILocalVariable(name: "s2", arg: 2, scope: !2542, file: !2352, line: 62, type: !35)
!2542 = distinct !DISubprogram(name: "strcaseeq7", scope: !2352, file: !2352, line: 62, type: !2543, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !111, variables: !2545)
!2543 = !DISubroutineType(types: !2544)
!2544 = !{!64, !35, !35, !26, !26}
!2545 = !{!2546, !2541, !2547, !2548}
!2546 = !DILocalVariable(name: "s1", arg: 1, scope: !2542, file: !2352, line: 62, type: !35)
!2547 = !DILocalVariable(name: "s27", arg: 3, scope: !2542, file: !2352, line: 62, type: !26)
!2548 = !DILocalVariable(name: "s28", arg: 4, scope: !2542, file: !2352, line: 62, type: !26)
!2549 = !DILocation(line: 62, column: 41, scope: !2542, inlinedAt: !2550)
!2550 = distinct !DILocation(line: 83, column: 16, scope: !2551, inlinedAt: !2531)
!2551 = distinct !DILexicalBlock(scope: !2552, file: !2352, line: 80, column: 11)
!2552 = distinct !DILexicalBlock(scope: !2538, file: !2352, line: 79, column: 5)
!2553 = !DILocation(line: 62, column: 50, scope: !2542, inlinedAt: !2550)
!2554 = !DILocation(line: 62, column: 60, scope: !2542, inlinedAt: !2550)
!2555 = !DILocation(line: 64, column: 7, scope: !2556, inlinedAt: !2550)
!2556 = !DILexicalBlockFile(scope: !2557, file: !2352, discriminator: 2)
!2557 = distinct !DILexicalBlock(scope: !2542, file: !2352, line: 64, column: 7)
!2558 = !DILocation(line: 228, column: 7, scope: !2333)
!2559 = !DILocation(line: 229, column: 12, scope: !2491)
!2560 = !DILocation(line: 229, column: 21, scope: !2491)
!2561 = !DILocation(line: 229, column: 5, scope: !2491)
!2562 = !DILocation(line: 231, column: 13, scope: !2333)
!2563 = !DILocation(line: 231, column: 11, scope: !2333)
!2564 = !DILocation(line: 231, column: 3, scope: !2333)
!2565 = !DILocation(line: 232, column: 1, scope: !2333)
!2566 = distinct !DISubprogram(name: "quotearg_alloc", scope: !139, file: !139, line: 791, type: !2567, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !111, variables: !2569)
!2567 = !DISubroutineType(types: !2568)
!2568 = !{!25, !35, !27, !1408}
!2569 = !{!2570, !2571, !2572}
!2570 = !DILocalVariable(name: "arg", arg: 1, scope: !2566, file: !139, line: 791, type: !35)
!2571 = !DILocalVariable(name: "argsize", arg: 2, scope: !2566, file: !139, line: 791, type: !27)
!2572 = !DILocalVariable(name: "o", arg: 3, scope: !2566, file: !139, line: 792, type: !1408)
!2573 = !DILocation(line: 791, column: 29, scope: !2566)
!2574 = !DILocation(line: 791, column: 41, scope: !2566)
!2575 = !DILocation(line: 792, column: 47, scope: !2566)
!2576 = !DILocalVariable(name: "arg", arg: 1, scope: !2577, file: !139, line: 804, type: !35)
!2577 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !139, file: !139, line: 804, type: !2578, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !111, variables: !2580)
!2578 = !DISubroutineType(types: !2579)
!2579 = !{!25, !35, !27, !554, !1408}
!2580 = !{!2576, !2581, !2582, !2583, !2584, !2585, !2586, !2587, !2588}
!2581 = !DILocalVariable(name: "argsize", arg: 2, scope: !2577, file: !139, line: 804, type: !27)
!2582 = !DILocalVariable(name: "size", arg: 3, scope: !2577, file: !139, line: 804, type: !554)
!2583 = !DILocalVariable(name: "o", arg: 4, scope: !2577, file: !139, line: 805, type: !1408)
!2584 = !DILocalVariable(name: "p", scope: !2577, file: !139, line: 807, type: !1408)
!2585 = !DILocalVariable(name: "e", scope: !2577, file: !139, line: 808, type: !64)
!2586 = !DILocalVariable(name: "flags", scope: !2577, file: !139, line: 810, type: !64)
!2587 = !DILocalVariable(name: "bufsize", scope: !2577, file: !139, line: 811, type: !27)
!2588 = !DILocalVariable(name: "buf", scope: !2577, file: !139, line: 815, type: !25)
!2589 = !DILocation(line: 804, column: 33, scope: !2577, inlinedAt: !2590)
!2590 = distinct !DILocation(line: 794, column: 10, scope: !2566)
!2591 = !DILocation(line: 804, column: 45, scope: !2577, inlinedAt: !2590)
!2592 = !DILocation(line: 804, column: 62, scope: !2577, inlinedAt: !2590)
!2593 = !DILocation(line: 805, column: 51, scope: !2577, inlinedAt: !2590)
!2594 = !DILocation(line: 807, column: 37, scope: !2577, inlinedAt: !2590)
!2595 = !DILocation(line: 807, column: 33, scope: !2577, inlinedAt: !2590)
!2596 = !DILocation(line: 808, column: 11, scope: !2577, inlinedAt: !2590)
!2597 = !DILocation(line: 808, column: 7, scope: !2577, inlinedAt: !2590)
!2598 = !DILocation(line: 810, column: 18, scope: !2577, inlinedAt: !2590)
!2599 = !DILocation(line: 810, column: 24, scope: !2577, inlinedAt: !2590)
!2600 = !DILocation(line: 810, column: 7, scope: !2577, inlinedAt: !2590)
!2601 = !DILocation(line: 811, column: 69, scope: !2577, inlinedAt: !2590)
!2602 = !DILocation(line: 812, column: 53, scope: !2577, inlinedAt: !2590)
!2603 = !DILocation(line: 813, column: 49, scope: !2577, inlinedAt: !2590)
!2604 = !DILocation(line: 814, column: 49, scope: !2577, inlinedAt: !2590)
!2605 = !DILocation(line: 811, column: 20, scope: !2577, inlinedAt: !2590)
!2606 = !DILocation(line: 814, column: 62, scope: !2577, inlinedAt: !2590)
!2607 = !DILocation(line: 811, column: 10, scope: !2577, inlinedAt: !2590)
!2608 = !DILocalVariable(name: "n", arg: 1, scope: !2609, file: !550, line: 220, type: !27)
!2609 = distinct !DISubprogram(name: "xcharalloc", scope: !550, file: !550, line: 220, type: !1250, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !111, variables: !2610)
!2610 = !{!2608}
!2611 = !DILocation(line: 220, column: 20, scope: !2609, inlinedAt: !2612)
!2612 = distinct !DILocation(line: 815, column: 15, scope: !2577, inlinedAt: !2590)
!2613 = !DILocation(line: 222, column: 10, scope: !2609, inlinedAt: !2612)
!2614 = !DILocation(line: 815, column: 9, scope: !2577, inlinedAt: !2590)
!2615 = !DILocation(line: 816, column: 60, scope: !2577, inlinedAt: !2590)
!2616 = !DILocation(line: 818, column: 32, scope: !2577, inlinedAt: !2590)
!2617 = !DILocation(line: 818, column: 47, scope: !2577, inlinedAt: !2590)
!2618 = !DILocation(line: 816, column: 3, scope: !2577, inlinedAt: !2590)
!2619 = !DILocation(line: 819, column: 9, scope: !2577, inlinedAt: !2590)
!2620 = !DILocation(line: 794, column: 3, scope: !2566)
!2621 = !DILocation(line: 804, column: 33, scope: !2577)
!2622 = !DILocation(line: 804, column: 45, scope: !2577)
!2623 = !DILocation(line: 804, column: 62, scope: !2577)
!2624 = !DILocation(line: 805, column: 51, scope: !2577)
!2625 = !DILocation(line: 807, column: 37, scope: !2577)
!2626 = !DILocation(line: 807, column: 33, scope: !2577)
!2627 = !DILocation(line: 808, column: 11, scope: !2577)
!2628 = !DILocation(line: 808, column: 7, scope: !2577)
!2629 = !DILocation(line: 810, column: 18, scope: !2577)
!2630 = !DILocation(line: 810, column: 27, scope: !2577)
!2631 = !DILocation(line: 810, column: 24, scope: !2577)
!2632 = !DILocation(line: 810, column: 7, scope: !2577)
!2633 = !DILocation(line: 811, column: 69, scope: !2577)
!2634 = !DILocation(line: 812, column: 53, scope: !2577)
!2635 = !DILocation(line: 813, column: 49, scope: !2577)
!2636 = !DILocation(line: 814, column: 49, scope: !2577)
!2637 = !DILocation(line: 811, column: 20, scope: !2577)
!2638 = !DILocation(line: 814, column: 62, scope: !2577)
!2639 = !DILocation(line: 811, column: 10, scope: !2577)
!2640 = !DILocation(line: 220, column: 20, scope: !2609, inlinedAt: !2641)
!2641 = distinct !DILocation(line: 815, column: 15, scope: !2577)
!2642 = !DILocation(line: 222, column: 10, scope: !2609, inlinedAt: !2641)
!2643 = !DILocation(line: 815, column: 9, scope: !2577)
!2644 = !DILocation(line: 816, column: 60, scope: !2577)
!2645 = !DILocation(line: 818, column: 32, scope: !2577)
!2646 = !DILocation(line: 818, column: 47, scope: !2577)
!2647 = !DILocation(line: 816, column: 3, scope: !2577)
!2648 = !DILocation(line: 819, column: 9, scope: !2577)
!2649 = !DILocation(line: 820, column: 7, scope: !2577)
!2650 = !DILocation(line: 821, column: 11, scope: !2651)
!2651 = distinct !DILexicalBlock(scope: !2577, file: !139, line: 820, column: 7)
!2652 = !DILocation(line: 821, column: 5, scope: !2651)
!2653 = !DILocation(line: 822, column: 3, scope: !2577)
!2654 = distinct !DISubprogram(name: "quotearg_free", scope: !139, file: !139, line: 840, type: !1306, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !111, variables: !2655)
!2655 = !{!2656, !2657}
!2656 = !DILocalVariable(name: "sv", scope: !2654, file: !139, line: 842, type: !166)
!2657 = !DILocalVariable(name: "i", scope: !2654, file: !139, line: 843, type: !64)
!2658 = !DILocation(line: 842, column: 24, scope: !2654)
!2659 = !DILocation(line: 842, column: 19, scope: !2654)
!2660 = !DILocation(line: 843, column: 7, scope: !2654)
!2661 = !DILocation(line: 844, column: 19, scope: !2662)
!2662 = !DILexicalBlockFile(scope: !2663, file: !139, discriminator: 1)
!2663 = distinct !DILexicalBlock(scope: !2664, file: !139, line: 844, column: 3)
!2664 = distinct !DILexicalBlock(scope: !2654, file: !139, line: 844, column: 3)
!2665 = !DILocation(line: 844, column: 17, scope: !2662)
!2666 = !DILocation(line: 844, column: 3, scope: !2667)
!2667 = !DILexicalBlockFile(scope: !2664, file: !139, discriminator: 1)
!2668 = !DILocation(line: 845, column: 17, scope: !2663)
!2669 = !{!2670, !602, i64 8}
!2670 = !{!"slotvec", !806, i64 0, !602, i64 8}
!2671 = !DILocation(line: 845, column: 5, scope: !2663)
!2672 = !DILocation(line: 844, column: 28, scope: !2673)
!2673 = !DILexicalBlockFile(scope: !2663, file: !139, discriminator: 2)
!2674 = distinct !{!2674, !2675, !2676}
!2675 = !DILocation(line: 844, column: 3, scope: !2664)
!2676 = !DILocation(line: 845, column: 20, scope: !2664)
!2677 = !DILocation(line: 846, column: 13, scope: !2678)
!2678 = distinct !DILexicalBlock(scope: !2654, file: !139, line: 846, column: 7)
!2679 = !DILocation(line: 846, column: 17, scope: !2678)
!2680 = !DILocation(line: 846, column: 7, scope: !2654)
!2681 = !DILocation(line: 848, column: 7, scope: !2682)
!2682 = distinct !DILexicalBlock(scope: !2678, file: !139, line: 847, column: 5)
!2683 = !DILocation(line: 849, column: 21, scope: !2682)
!2684 = !{!2670, !806, i64 0}
!2685 = !DILocation(line: 850, column: 20, scope: !2682)
!2686 = !DILocation(line: 851, column: 5, scope: !2682)
!2687 = !DILocation(line: 852, column: 10, scope: !2688)
!2688 = distinct !DILexicalBlock(scope: !2654, file: !139, line: 852, column: 7)
!2689 = !DILocation(line: 852, column: 7, scope: !2654)
!2690 = !DILocation(line: 854, column: 13, scope: !2691)
!2691 = distinct !DILexicalBlock(scope: !2688, file: !139, line: 853, column: 5)
!2692 = !DILocation(line: 854, column: 7, scope: !2691)
!2693 = !DILocation(line: 855, column: 15, scope: !2691)
!2694 = !DILocation(line: 856, column: 5, scope: !2691)
!2695 = !DILocation(line: 857, column: 10, scope: !2654)
!2696 = !DILocation(line: 858, column: 1, scope: !2654)
!2697 = distinct !DISubprogram(name: "quotearg_n", scope: !139, file: !139, line: 922, type: !2698, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !111, variables: !2700)
!2698 = !DISubroutineType(types: !2699)
!2699 = !{!25, !64, !35}
!2700 = !{!2701, !2702}
!2701 = !DILocalVariable(name: "n", arg: 1, scope: !2697, file: !139, line: 922, type: !64)
!2702 = !DILocalVariable(name: "arg", arg: 2, scope: !2697, file: !139, line: 922, type: !35)
!2703 = !DILocation(line: 922, column: 17, scope: !2697)
!2704 = !DILocation(line: 922, column: 32, scope: !2697)
!2705 = !DILocation(line: 924, column: 10, scope: !2697)
!2706 = !DILocation(line: 924, column: 3, scope: !2697)
!2707 = distinct !DISubprogram(name: "quotearg_n_options", scope: !139, file: !139, line: 869, type: !2708, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !111, variables: !2710)
!2708 = !DISubroutineType(types: !2709)
!2709 = !{!25, !64, !35, !27, !1408}
!2710 = !{!2711, !2712, !2713, !2714, !2715, !2716, !2717, !2720, !2722, !2723, !2724}
!2711 = !DILocalVariable(name: "n", arg: 1, scope: !2707, file: !139, line: 869, type: !64)
!2712 = !DILocalVariable(name: "arg", arg: 2, scope: !2707, file: !139, line: 869, type: !35)
!2713 = !DILocalVariable(name: "argsize", arg: 3, scope: !2707, file: !139, line: 869, type: !27)
!2714 = !DILocalVariable(name: "options", arg: 4, scope: !2707, file: !139, line: 870, type: !1408)
!2715 = !DILocalVariable(name: "e", scope: !2707, file: !139, line: 872, type: !64)
!2716 = !DILocalVariable(name: "sv", scope: !2707, file: !139, line: 874, type: !166)
!2717 = !DILocalVariable(name: "preallocated", scope: !2718, file: !139, line: 881, type: !94)
!2718 = distinct !DILexicalBlock(scope: !2719, file: !139, line: 880, column: 5)
!2719 = distinct !DILexicalBlock(scope: !2707, file: !139, line: 879, column: 7)
!2720 = !DILocalVariable(name: "size", scope: !2721, file: !139, line: 894, type: !27)
!2721 = distinct !DILexicalBlock(scope: !2707, file: !139, line: 893, column: 3)
!2722 = !DILocalVariable(name: "val", scope: !2721, file: !139, line: 895, type: !25)
!2723 = !DILocalVariable(name: "flags", scope: !2721, file: !139, line: 897, type: !64)
!2724 = !DILocalVariable(name: "qsize", scope: !2721, file: !139, line: 898, type: !27)
!2725 = !DILocation(line: 869, column: 25, scope: !2707)
!2726 = !DILocation(line: 869, column: 40, scope: !2707)
!2727 = !DILocation(line: 869, column: 52, scope: !2707)
!2728 = !DILocation(line: 870, column: 51, scope: !2707)
!2729 = !DILocation(line: 872, column: 11, scope: !2707)
!2730 = !DILocation(line: 872, column: 7, scope: !2707)
!2731 = !DILocation(line: 874, column: 24, scope: !2707)
!2732 = !DILocation(line: 874, column: 19, scope: !2707)
!2733 = !DILocation(line: 876, column: 9, scope: !2734)
!2734 = distinct !DILexicalBlock(scope: !2707, file: !139, line: 876, column: 7)
!2735 = !DILocation(line: 876, column: 7, scope: !2707)
!2736 = !DILocation(line: 877, column: 5, scope: !2734)
!2737 = !DILocation(line: 879, column: 7, scope: !2719)
!2738 = !DILocation(line: 879, column: 14, scope: !2719)
!2739 = !DILocation(line: 879, column: 7, scope: !2707)
!2740 = !DILocation(line: 881, column: 31, scope: !2718)
!2741 = !DILocation(line: 883, column: 67, scope: !2742)
!2742 = distinct !DILexicalBlock(scope: !2718, file: !139, line: 883, column: 11)
!2743 = !DILocation(line: 883, column: 11, scope: !2718)
!2744 = !DILocation(line: 884, column: 9, scope: !2742)
!2745 = !DILocation(line: 886, column: 32, scope: !2746)
!2746 = !DILexicalBlockFile(scope: !2718, file: !139, discriminator: 3)
!2747 = !DILocation(line: 886, column: 61, scope: !2746)
!2748 = !DILocation(line: 886, column: 58, scope: !2746)
!2749 = !DILocation(line: 886, column: 66, scope: !2746)
!2750 = !DILocation(line: 886, column: 22, scope: !2746)
!2751 = !DILocation(line: 886, column: 15, scope: !2746)
!2752 = !DILocation(line: 887, column: 11, scope: !2718)
!2753 = !DILocation(line: 888, column: 15, scope: !2754)
!2754 = distinct !DILexicalBlock(scope: !2718, file: !139, line: 887, column: 11)
!2755 = !{i64 0, i64 8, !1198, i64 8, i64 8, !601}
!2756 = !DILocation(line: 888, column: 9, scope: !2754)
!2757 = !DILocation(line: 889, column: 20, scope: !2718)
!2758 = !DILocation(line: 889, column: 18, scope: !2718)
!2759 = !DILocation(line: 889, column: 7, scope: !2718)
!2760 = !DILocation(line: 889, column: 38, scope: !2718)
!2761 = !DILocation(line: 889, column: 31, scope: !2718)
!2762 = !DILocation(line: 889, column: 48, scope: !2718)
!2763 = !DILocation(line: 890, column: 14, scope: !2718)
!2764 = !DILocation(line: 891, column: 5, scope: !2718)
!2765 = !DILocation(line: 894, column: 19, scope: !2721)
!2766 = !DILocation(line: 894, column: 25, scope: !2721)
!2767 = !DILocation(line: 894, column: 12, scope: !2721)
!2768 = !DILocation(line: 895, column: 23, scope: !2721)
!2769 = !DILocation(line: 895, column: 11, scope: !2721)
!2770 = !DILocation(line: 897, column: 26, scope: !2721)
!2771 = !DILocation(line: 897, column: 32, scope: !2721)
!2772 = !DILocation(line: 897, column: 9, scope: !2721)
!2773 = !DILocation(line: 899, column: 55, scope: !2721)
!2774 = !DILocation(line: 900, column: 46, scope: !2721)
!2775 = !DILocation(line: 901, column: 55, scope: !2721)
!2776 = !DILocation(line: 902, column: 55, scope: !2721)
!2777 = !DILocation(line: 898, column: 20, scope: !2721)
!2778 = !DILocation(line: 898, column: 12, scope: !2721)
!2779 = !DILocation(line: 904, column: 14, scope: !2780)
!2780 = distinct !DILexicalBlock(scope: !2721, file: !139, line: 904, column: 9)
!2781 = !DILocation(line: 904, column: 9, scope: !2721)
!2782 = !DILocation(line: 906, column: 35, scope: !2783)
!2783 = distinct !DILexicalBlock(scope: !2780, file: !139, line: 905, column: 7)
!2784 = !DILocation(line: 906, column: 20, scope: !2783)
!2785 = !DILocation(line: 907, column: 17, scope: !2786)
!2786 = distinct !DILexicalBlock(scope: !2783, file: !139, line: 907, column: 13)
!2787 = !DILocation(line: 907, column: 13, scope: !2783)
!2788 = !DILocation(line: 908, column: 11, scope: !2786)
!2789 = !DILocation(line: 220, column: 20, scope: !2609, inlinedAt: !2790)
!2790 = distinct !DILocation(line: 909, column: 27, scope: !2783)
!2791 = !DILocation(line: 222, column: 10, scope: !2609, inlinedAt: !2790)
!2792 = !DILocation(line: 909, column: 19, scope: !2783)
!2793 = !DILocation(line: 910, column: 69, scope: !2783)
!2794 = !DILocation(line: 912, column: 44, scope: !2783)
!2795 = !DILocation(line: 913, column: 44, scope: !2783)
!2796 = !DILocation(line: 910, column: 9, scope: !2783)
!2797 = !DILocation(line: 914, column: 7, scope: !2783)
!2798 = !DILocation(line: 916, column: 11, scope: !2721)
!2799 = !DILocation(line: 917, column: 5, scope: !2721)
!2800 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !139, file: !139, line: 928, type: !2801, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !111, variables: !2803)
!2801 = !DISubroutineType(types: !2802)
!2802 = !{!25, !64, !35, !27}
!2803 = !{!2804, !2805, !2806}
!2804 = !DILocalVariable(name: "n", arg: 1, scope: !2800, file: !139, line: 928, type: !64)
!2805 = !DILocalVariable(name: "arg", arg: 2, scope: !2800, file: !139, line: 928, type: !35)
!2806 = !DILocalVariable(name: "argsize", arg: 3, scope: !2800, file: !139, line: 928, type: !27)
!2807 = !DILocation(line: 928, column: 21, scope: !2800)
!2808 = !DILocation(line: 928, column: 36, scope: !2800)
!2809 = !DILocation(line: 928, column: 48, scope: !2800)
!2810 = !DILocation(line: 930, column: 10, scope: !2800)
!2811 = !DILocation(line: 930, column: 3, scope: !2800)
!2812 = distinct !DISubprogram(name: "quotearg", scope: !139, file: !139, line: 934, type: !2813, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !111, variables: !2815)
!2813 = !DISubroutineType(types: !2814)
!2814 = !{!25, !35}
!2815 = !{!2816}
!2816 = !DILocalVariable(name: "arg", arg: 1, scope: !2812, file: !139, line: 934, type: !35)
!2817 = !DILocation(line: 934, column: 23, scope: !2812)
!2818 = !DILocation(line: 922, column: 17, scope: !2697, inlinedAt: !2819)
!2819 = distinct !DILocation(line: 936, column: 10, scope: !2812)
!2820 = !DILocation(line: 922, column: 32, scope: !2697, inlinedAt: !2819)
!2821 = !DILocation(line: 924, column: 10, scope: !2697, inlinedAt: !2819)
!2822 = !DILocation(line: 936, column: 3, scope: !2812)
!2823 = distinct !DISubprogram(name: "quotearg_mem", scope: !139, file: !139, line: 940, type: !2824, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !111, variables: !2826)
!2824 = !DISubroutineType(types: !2825)
!2825 = !{!25, !35, !27}
!2826 = !{!2827, !2828}
!2827 = !DILocalVariable(name: "arg", arg: 1, scope: !2823, file: !139, line: 940, type: !35)
!2828 = !DILocalVariable(name: "argsize", arg: 2, scope: !2823, file: !139, line: 940, type: !27)
!2829 = !DILocation(line: 940, column: 27, scope: !2823)
!2830 = !DILocation(line: 940, column: 39, scope: !2823)
!2831 = !DILocation(line: 928, column: 21, scope: !2800, inlinedAt: !2832)
!2832 = distinct !DILocation(line: 942, column: 10, scope: !2823)
!2833 = !DILocation(line: 928, column: 36, scope: !2800, inlinedAt: !2832)
!2834 = !DILocation(line: 928, column: 48, scope: !2800, inlinedAt: !2832)
!2835 = !DILocation(line: 930, column: 10, scope: !2800, inlinedAt: !2832)
!2836 = !DILocation(line: 942, column: 3, scope: !2823)
!2837 = distinct !DISubprogram(name: "quotearg_n_style", scope: !139, file: !139, line: 946, type: !2838, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !111, variables: !2840)
!2838 = !DISubroutineType(types: !2839)
!2839 = !{!25, !64, !5, !35}
!2840 = !{!2841, !2842, !2843, !2844}
!2841 = !DILocalVariable(name: "n", arg: 1, scope: !2837, file: !139, line: 946, type: !64)
!2842 = !DILocalVariable(name: "s", arg: 2, scope: !2837, file: !139, line: 946, type: !5)
!2843 = !DILocalVariable(name: "arg", arg: 3, scope: !2837, file: !139, line: 946, type: !35)
!2844 = !DILocalVariable(name: "o", scope: !2837, file: !139, line: 948, type: !1409)
!2845 = !DILocalVariable(name: "o", scope: !2846, file: !139, line: 187, type: !146)
!2846 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !139, file: !139, line: 185, type: !2847, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !111, variables: !2849)
!2847 = !DISubroutineType(types: !2848)
!2848 = !{!146, !5}
!2849 = !{!2850, !2845}
!2850 = !DILocalVariable(name: "style", arg: 1, scope: !2846, file: !139, line: 185, type: !5)
!2851 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!2852 = !DILocation(line: 187, column: 26, scope: !2846, inlinedAt: !2853)
!2853 = distinct !DILocation(line: 948, column: 36, scope: !2837)
!2854 = !DILocation(line: 946, column: 23, scope: !2837)
!2855 = !DILocation(line: 946, column: 45, scope: !2837)
!2856 = !DILocation(line: 946, column: 60, scope: !2837)
!2857 = !DILocation(line: 948, column: 3, scope: !2837)
!2858 = !DILocation(line: 948, column: 32, scope: !2837)
!2859 = !DILocation(line: 185, column: 48, scope: !2846, inlinedAt: !2853)
!2860 = !DILocation(line: 187, column: 3, scope: !2846, inlinedAt: !2853)
!2861 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!2862 = !DILocation(line: 188, column: 13, scope: !2863, inlinedAt: !2853)
!2863 = distinct !DILexicalBlock(scope: !2846, file: !139, line: 188, column: 7)
!2864 = !DILocation(line: 188, column: 7, scope: !2846, inlinedAt: !2853)
!2865 = !DILocation(line: 189, column: 5, scope: !2863, inlinedAt: !2853)
!2866 = !{!2867}
!2867 = distinct !{!2867, !2868, !"quoting_options_from_style: argument 0"}
!2868 = distinct !{!2868, !"quoting_options_from_style"}
!2869 = !DILocation(line: 191, column: 10, scope: !2846, inlinedAt: !2853)
!2870 = !DILocation(line: 192, column: 1, scope: !2846, inlinedAt: !2853)
!2871 = !DILocation(line: 949, column: 10, scope: !2837)
!2872 = !DILocation(line: 950, column: 1, scope: !2837)
!2873 = !DILocation(line: 949, column: 3, scope: !2837)
!2874 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !139, file: !139, line: 953, type: !2875, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !111, variables: !2877)
!2875 = !DISubroutineType(types: !2876)
!2876 = !{!25, !64, !5, !35, !27}
!2877 = !{!2878, !2879, !2880, !2881, !2882}
!2878 = !DILocalVariable(name: "n", arg: 1, scope: !2874, file: !139, line: 953, type: !64)
!2879 = !DILocalVariable(name: "s", arg: 2, scope: !2874, file: !139, line: 953, type: !5)
!2880 = !DILocalVariable(name: "arg", arg: 3, scope: !2874, file: !139, line: 954, type: !35)
!2881 = !DILocalVariable(name: "argsize", arg: 4, scope: !2874, file: !139, line: 954, type: !27)
!2882 = !DILocalVariable(name: "o", scope: !2874, file: !139, line: 956, type: !1409)
!2883 = !DILocation(line: 187, column: 26, scope: !2846, inlinedAt: !2884)
!2884 = distinct !DILocation(line: 956, column: 36, scope: !2874)
!2885 = !DILocation(line: 953, column: 27, scope: !2874)
!2886 = !DILocation(line: 953, column: 49, scope: !2874)
!2887 = !DILocation(line: 954, column: 35, scope: !2874)
!2888 = !DILocation(line: 954, column: 47, scope: !2874)
!2889 = !DILocation(line: 956, column: 3, scope: !2874)
!2890 = !DILocation(line: 956, column: 32, scope: !2874)
!2891 = !DILocation(line: 185, column: 48, scope: !2846, inlinedAt: !2884)
!2892 = !DILocation(line: 187, column: 3, scope: !2846, inlinedAt: !2884)
!2893 = !DILocation(line: 188, column: 13, scope: !2863, inlinedAt: !2884)
!2894 = !DILocation(line: 188, column: 7, scope: !2846, inlinedAt: !2884)
!2895 = !DILocation(line: 189, column: 5, scope: !2863, inlinedAt: !2884)
!2896 = !{!2897}
!2897 = distinct !{!2897, !2898, !"quoting_options_from_style: argument 0"}
!2898 = distinct !{!2898, !"quoting_options_from_style"}
!2899 = !DILocation(line: 191, column: 10, scope: !2846, inlinedAt: !2884)
!2900 = !DILocation(line: 192, column: 1, scope: !2846, inlinedAt: !2884)
!2901 = !DILocation(line: 957, column: 10, scope: !2874)
!2902 = !DILocation(line: 958, column: 1, scope: !2874)
!2903 = !DILocation(line: 957, column: 3, scope: !2874)
!2904 = distinct !DISubprogram(name: "quotearg_style", scope: !139, file: !139, line: 961, type: !2905, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !111, variables: !2907)
!2905 = !DISubroutineType(types: !2906)
!2906 = !{!25, !5, !35}
!2907 = !{!2908, !2909}
!2908 = !DILocalVariable(name: "s", arg: 1, scope: !2904, file: !139, line: 961, type: !5)
!2909 = !DILocalVariable(name: "arg", arg: 2, scope: !2904, file: !139, line: 961, type: !35)
!2910 = !DILocation(line: 187, column: 26, scope: !2846, inlinedAt: !2911)
!2911 = distinct !DILocation(line: 948, column: 36, scope: !2837, inlinedAt: !2912)
!2912 = distinct !DILocation(line: 963, column: 10, scope: !2904)
!2913 = !DILocation(line: 961, column: 36, scope: !2904)
!2914 = !DILocation(line: 961, column: 51, scope: !2904)
!2915 = !DILocation(line: 946, column: 23, scope: !2837, inlinedAt: !2912)
!2916 = !DILocation(line: 946, column: 45, scope: !2837, inlinedAt: !2912)
!2917 = !DILocation(line: 946, column: 60, scope: !2837, inlinedAt: !2912)
!2918 = !DILocation(line: 948, column: 3, scope: !2837, inlinedAt: !2912)
!2919 = !DILocation(line: 948, column: 32, scope: !2837, inlinedAt: !2912)
!2920 = !DILocation(line: 185, column: 48, scope: !2846, inlinedAt: !2911)
!2921 = !DILocation(line: 187, column: 3, scope: !2846, inlinedAt: !2911)
!2922 = !DILocation(line: 188, column: 13, scope: !2863, inlinedAt: !2911)
!2923 = !DILocation(line: 188, column: 7, scope: !2846, inlinedAt: !2911)
!2924 = !DILocation(line: 189, column: 5, scope: !2863, inlinedAt: !2911)
!2925 = !{!2926}
!2926 = distinct !{!2926, !2927, !"quoting_options_from_style: argument 0"}
!2927 = distinct !{!2927, !"quoting_options_from_style"}
!2928 = !DILocation(line: 191, column: 10, scope: !2846, inlinedAt: !2911)
!2929 = !DILocation(line: 192, column: 1, scope: !2846, inlinedAt: !2911)
!2930 = !DILocation(line: 949, column: 10, scope: !2837, inlinedAt: !2912)
!2931 = !DILocation(line: 950, column: 1, scope: !2837, inlinedAt: !2912)
!2932 = !DILocation(line: 963, column: 3, scope: !2904)
!2933 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !139, file: !139, line: 967, type: !2934, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !111, variables: !2936)
!2934 = !DISubroutineType(types: !2935)
!2935 = !{!25, !5, !35, !27}
!2936 = !{!2937, !2938, !2939}
!2937 = !DILocalVariable(name: "s", arg: 1, scope: !2933, file: !139, line: 967, type: !5)
!2938 = !DILocalVariable(name: "arg", arg: 2, scope: !2933, file: !139, line: 967, type: !35)
!2939 = !DILocalVariable(name: "argsize", arg: 3, scope: !2933, file: !139, line: 967, type: !27)
!2940 = !DILocation(line: 187, column: 26, scope: !2846, inlinedAt: !2941)
!2941 = distinct !DILocation(line: 956, column: 36, scope: !2874, inlinedAt: !2942)
!2942 = distinct !DILocation(line: 969, column: 10, scope: !2933)
!2943 = !DILocation(line: 967, column: 40, scope: !2933)
!2944 = !DILocation(line: 967, column: 55, scope: !2933)
!2945 = !DILocation(line: 967, column: 67, scope: !2933)
!2946 = !DILocation(line: 953, column: 27, scope: !2874, inlinedAt: !2942)
!2947 = !DILocation(line: 953, column: 49, scope: !2874, inlinedAt: !2942)
!2948 = !DILocation(line: 954, column: 35, scope: !2874, inlinedAt: !2942)
!2949 = !DILocation(line: 954, column: 47, scope: !2874, inlinedAt: !2942)
!2950 = !DILocation(line: 956, column: 3, scope: !2874, inlinedAt: !2942)
!2951 = !DILocation(line: 956, column: 32, scope: !2874, inlinedAt: !2942)
!2952 = !DILocation(line: 185, column: 48, scope: !2846, inlinedAt: !2941)
!2953 = !DILocation(line: 187, column: 3, scope: !2846, inlinedAt: !2941)
!2954 = !DILocation(line: 188, column: 13, scope: !2863, inlinedAt: !2941)
!2955 = !DILocation(line: 188, column: 7, scope: !2846, inlinedAt: !2941)
!2956 = !DILocation(line: 189, column: 5, scope: !2863, inlinedAt: !2941)
!2957 = !{!2958}
!2958 = distinct !{!2958, !2959, !"quoting_options_from_style: argument 0"}
!2959 = distinct !{!2959, !"quoting_options_from_style"}
!2960 = !DILocation(line: 191, column: 10, scope: !2846, inlinedAt: !2941)
!2961 = !DILocation(line: 192, column: 1, scope: !2846, inlinedAt: !2941)
!2962 = !DILocation(line: 957, column: 10, scope: !2874, inlinedAt: !2942)
!2963 = !DILocation(line: 958, column: 1, scope: !2874, inlinedAt: !2942)
!2964 = !DILocation(line: 969, column: 3, scope: !2933)
!2965 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !139, file: !139, line: 973, type: !2966, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !111, variables: !2968)
!2966 = !DISubroutineType(types: !2967)
!2967 = !{!25, !35, !27, !26}
!2968 = !{!2969, !2970, !2971, !2972}
!2969 = !DILocalVariable(name: "arg", arg: 1, scope: !2965, file: !139, line: 973, type: !35)
!2970 = !DILocalVariable(name: "argsize", arg: 2, scope: !2965, file: !139, line: 973, type: !27)
!2971 = !DILocalVariable(name: "ch", arg: 3, scope: !2965, file: !139, line: 973, type: !26)
!2972 = !DILocalVariable(name: "options", scope: !2965, file: !139, line: 975, type: !146)
!2973 = !DILocation(line: 973, column: 32, scope: !2965)
!2974 = !DILocation(line: 973, column: 44, scope: !2965)
!2975 = !DILocation(line: 973, column: 58, scope: !2965)
!2976 = !DILocation(line: 975, column: 3, scope: !2965)
!2977 = !DILocation(line: 976, column: 13, scope: !2965)
!2978 = !{i64 0, i64 4, !761, i64 4, i64 4, !692, i64 8, i64 32, !761, i64 40, i64 8, !601, i64 48, i64 8, !601}
!2979 = !DILocation(line: 975, column: 26, scope: !2965)
!2980 = !DILocation(line: 144, column: 43, scope: !1432, inlinedAt: !2981)
!2981 = distinct !DILocation(line: 977, column: 3, scope: !2965)
!2982 = !DILocation(line: 144, column: 51, scope: !1432, inlinedAt: !2981)
!2983 = !DILocation(line: 144, column: 58, scope: !1432, inlinedAt: !2981)
!2984 = !DILocation(line: 146, column: 17, scope: !1432, inlinedAt: !2981)
!2985 = !DILocation(line: 148, column: 62, scope: !1450, inlinedAt: !2981)
!2986 = !DILocation(line: 148, column: 57, scope: !1450, inlinedAt: !2981)
!2987 = !DILocation(line: 147, column: 17, scope: !1432, inlinedAt: !2981)
!2988 = !DILocation(line: 149, column: 18, scope: !1432, inlinedAt: !2981)
!2989 = !DILocation(line: 149, column: 15, scope: !1432, inlinedAt: !2981)
!2990 = !DILocation(line: 149, column: 7, scope: !1432, inlinedAt: !2981)
!2991 = !DILocation(line: 150, column: 12, scope: !1432, inlinedAt: !2981)
!2992 = !DILocation(line: 150, column: 15, scope: !1432, inlinedAt: !2981)
!2993 = !DILocation(line: 150, column: 25, scope: !1432, inlinedAt: !2981)
!2994 = !DILocation(line: 150, column: 7, scope: !1432, inlinedAt: !2981)
!2995 = !DILocation(line: 151, column: 18, scope: !1432, inlinedAt: !2981)
!2996 = !DILocation(line: 151, column: 23, scope: !1432, inlinedAt: !2981)
!2997 = !DILocation(line: 151, column: 6, scope: !1432, inlinedAt: !2981)
!2998 = !DILocation(line: 978, column: 10, scope: !2965)
!2999 = !DILocation(line: 979, column: 1, scope: !2965)
!3000 = !DILocation(line: 978, column: 3, scope: !2965)
!3001 = distinct !DISubprogram(name: "quotearg_char", scope: !139, file: !139, line: 982, type: !3002, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !111, variables: !3004)
!3002 = !DISubroutineType(types: !3003)
!3003 = !{!25, !35, !26}
!3004 = !{!3005, !3006}
!3005 = !DILocalVariable(name: "arg", arg: 1, scope: !3001, file: !139, line: 982, type: !35)
!3006 = !DILocalVariable(name: "ch", arg: 2, scope: !3001, file: !139, line: 982, type: !26)
!3007 = !DILocation(line: 982, column: 28, scope: !3001)
!3008 = !DILocation(line: 982, column: 38, scope: !3001)
!3009 = !DILocation(line: 973, column: 32, scope: !2965, inlinedAt: !3010)
!3010 = distinct !DILocation(line: 984, column: 10, scope: !3001)
!3011 = !DILocation(line: 973, column: 44, scope: !2965, inlinedAt: !3010)
!3012 = !DILocation(line: 973, column: 58, scope: !2965, inlinedAt: !3010)
!3013 = !DILocation(line: 975, column: 3, scope: !2965, inlinedAt: !3010)
!3014 = !DILocation(line: 976, column: 13, scope: !2965, inlinedAt: !3010)
!3015 = !DILocation(line: 975, column: 26, scope: !2965, inlinedAt: !3010)
!3016 = !DILocation(line: 144, column: 43, scope: !1432, inlinedAt: !3017)
!3017 = distinct !DILocation(line: 977, column: 3, scope: !2965, inlinedAt: !3010)
!3018 = !DILocation(line: 144, column: 51, scope: !1432, inlinedAt: !3017)
!3019 = !DILocation(line: 144, column: 58, scope: !1432, inlinedAt: !3017)
!3020 = !DILocation(line: 146, column: 17, scope: !1432, inlinedAt: !3017)
!3021 = !DILocation(line: 148, column: 62, scope: !1450, inlinedAt: !3017)
!3022 = !DILocation(line: 148, column: 57, scope: !1450, inlinedAt: !3017)
!3023 = !DILocation(line: 147, column: 17, scope: !1432, inlinedAt: !3017)
!3024 = !DILocation(line: 149, column: 18, scope: !1432, inlinedAt: !3017)
!3025 = !DILocation(line: 149, column: 15, scope: !1432, inlinedAt: !3017)
!3026 = !DILocation(line: 149, column: 7, scope: !1432, inlinedAt: !3017)
!3027 = !DILocation(line: 150, column: 12, scope: !1432, inlinedAt: !3017)
!3028 = !DILocation(line: 150, column: 15, scope: !1432, inlinedAt: !3017)
!3029 = !DILocation(line: 150, column: 25, scope: !1432, inlinedAt: !3017)
!3030 = !DILocation(line: 150, column: 7, scope: !1432, inlinedAt: !3017)
!3031 = !DILocation(line: 151, column: 18, scope: !1432, inlinedAt: !3017)
!3032 = !DILocation(line: 151, column: 23, scope: !1432, inlinedAt: !3017)
!3033 = !DILocation(line: 151, column: 6, scope: !1432, inlinedAt: !3017)
!3034 = !DILocation(line: 978, column: 10, scope: !2965, inlinedAt: !3010)
!3035 = !DILocation(line: 979, column: 1, scope: !2965, inlinedAt: !3010)
!3036 = !DILocation(line: 984, column: 3, scope: !3001)
!3037 = distinct !DISubprogram(name: "quotearg_colon", scope: !139, file: !139, line: 988, type: !2813, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !111, variables: !3038)
!3038 = !{!3039}
!3039 = !DILocalVariable(name: "arg", arg: 1, scope: !3037, file: !139, line: 988, type: !35)
!3040 = !DILocation(line: 988, column: 29, scope: !3037)
!3041 = !DILocation(line: 982, column: 28, scope: !3001, inlinedAt: !3042)
!3042 = distinct !DILocation(line: 990, column: 10, scope: !3037)
!3043 = !DILocation(line: 982, column: 38, scope: !3001, inlinedAt: !3042)
!3044 = !DILocation(line: 973, column: 32, scope: !2965, inlinedAt: !3045)
!3045 = distinct !DILocation(line: 984, column: 10, scope: !3001, inlinedAt: !3042)
!3046 = !DILocation(line: 973, column: 44, scope: !2965, inlinedAt: !3045)
!3047 = !DILocation(line: 973, column: 58, scope: !2965, inlinedAt: !3045)
!3048 = !DILocation(line: 975, column: 3, scope: !2965, inlinedAt: !3045)
!3049 = !DILocation(line: 976, column: 13, scope: !2965, inlinedAt: !3045)
!3050 = !DILocation(line: 975, column: 26, scope: !2965, inlinedAt: !3045)
!3051 = !DILocation(line: 144, column: 43, scope: !1432, inlinedAt: !3052)
!3052 = distinct !DILocation(line: 977, column: 3, scope: !2965, inlinedAt: !3045)
!3053 = !DILocation(line: 144, column: 51, scope: !1432, inlinedAt: !3052)
!3054 = !DILocation(line: 144, column: 58, scope: !1432, inlinedAt: !3052)
!3055 = !DILocation(line: 146, column: 17, scope: !1432, inlinedAt: !3052)
!3056 = !DILocation(line: 148, column: 57, scope: !1450, inlinedAt: !3052)
!3057 = !DILocation(line: 147, column: 17, scope: !1432, inlinedAt: !3052)
!3058 = !DILocation(line: 149, column: 7, scope: !1432, inlinedAt: !3052)
!3059 = !DILocation(line: 150, column: 12, scope: !1432, inlinedAt: !3052)
!3060 = !DILocation(line: 151, column: 6, scope: !1432, inlinedAt: !3052)
!3061 = !DILocation(line: 978, column: 10, scope: !2965, inlinedAt: !3045)
!3062 = !DILocation(line: 979, column: 1, scope: !2965, inlinedAt: !3045)
!3063 = !DILocation(line: 990, column: 3, scope: !3037)
!3064 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !139, file: !139, line: 994, type: !2824, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !111, variables: !3065)
!3065 = !{!3066, !3067}
!3066 = !DILocalVariable(name: "arg", arg: 1, scope: !3064, file: !139, line: 994, type: !35)
!3067 = !DILocalVariable(name: "argsize", arg: 2, scope: !3064, file: !139, line: 994, type: !27)
!3068 = !DILocation(line: 994, column: 33, scope: !3064)
!3069 = !DILocation(line: 994, column: 45, scope: !3064)
!3070 = !DILocation(line: 973, column: 32, scope: !2965, inlinedAt: !3071)
!3071 = distinct !DILocation(line: 996, column: 10, scope: !3064)
!3072 = !DILocation(line: 973, column: 44, scope: !2965, inlinedAt: !3071)
!3073 = !DILocation(line: 973, column: 58, scope: !2965, inlinedAt: !3071)
!3074 = !DILocation(line: 975, column: 3, scope: !2965, inlinedAt: !3071)
!3075 = !DILocation(line: 976, column: 13, scope: !2965, inlinedAt: !3071)
!3076 = !DILocation(line: 975, column: 26, scope: !2965, inlinedAt: !3071)
!3077 = !DILocation(line: 144, column: 43, scope: !1432, inlinedAt: !3078)
!3078 = distinct !DILocation(line: 977, column: 3, scope: !2965, inlinedAt: !3071)
!3079 = !DILocation(line: 144, column: 51, scope: !1432, inlinedAt: !3078)
!3080 = !DILocation(line: 144, column: 58, scope: !1432, inlinedAt: !3078)
!3081 = !DILocation(line: 146, column: 17, scope: !1432, inlinedAt: !3078)
!3082 = !DILocation(line: 148, column: 57, scope: !1450, inlinedAt: !3078)
!3083 = !DILocation(line: 147, column: 17, scope: !1432, inlinedAt: !3078)
!3084 = !DILocation(line: 149, column: 7, scope: !1432, inlinedAt: !3078)
!3085 = !DILocation(line: 150, column: 12, scope: !1432, inlinedAt: !3078)
!3086 = !DILocation(line: 151, column: 6, scope: !1432, inlinedAt: !3078)
!3087 = !DILocation(line: 978, column: 10, scope: !2965, inlinedAt: !3071)
!3088 = !DILocation(line: 979, column: 1, scope: !2965, inlinedAt: !3071)
!3089 = !DILocation(line: 996, column: 3, scope: !3064)
!3090 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !139, file: !139, line: 1000, type: !2838, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !111, variables: !3091)
!3091 = !{!3092, !3093, !3094, !3095}
!3092 = !DILocalVariable(name: "n", arg: 1, scope: !3090, file: !139, line: 1000, type: !64)
!3093 = !DILocalVariable(name: "s", arg: 2, scope: !3090, file: !139, line: 1000, type: !5)
!3094 = !DILocalVariable(name: "arg", arg: 3, scope: !3090, file: !139, line: 1000, type: !35)
!3095 = !DILocalVariable(name: "options", scope: !3090, file: !139, line: 1002, type: !146)
!3096 = !DILocation(line: 187, column: 26, scope: !2846, inlinedAt: !3097)
!3097 = distinct !DILocation(line: 1003, column: 13, scope: !3090)
!3098 = !DILocation(line: 1000, column: 29, scope: !3090)
!3099 = !DILocation(line: 1000, column: 51, scope: !3090)
!3100 = !DILocation(line: 1000, column: 66, scope: !3090)
!3101 = !DILocation(line: 1002, column: 3, scope: !3090)
!3102 = !DILocation(line: 185, column: 48, scope: !2846, inlinedAt: !3097)
!3103 = !DILocation(line: 187, column: 3, scope: !2846, inlinedAt: !3097)
!3104 = !DILocation(line: 188, column: 13, scope: !2863, inlinedAt: !3097)
!3105 = !DILocation(line: 188, column: 7, scope: !2846, inlinedAt: !3097)
!3106 = !DILocation(line: 189, column: 5, scope: !2863, inlinedAt: !3097)
!3107 = !{!3108}
!3108 = distinct !{!3108, !3109, !"quoting_options_from_style: argument 0"}
!3109 = distinct !{!3109, !"quoting_options_from_style"}
!3110 = !DILocation(line: 191, column: 10, scope: !2846, inlinedAt: !3097)
!3111 = !DILocation(line: 192, column: 1, scope: !2846, inlinedAt: !3097)
!3112 = !DILocation(line: 1003, column: 13, scope: !3090)
!3113 = !DILocation(line: 1002, column: 26, scope: !3090)
!3114 = !DILocation(line: 144, column: 43, scope: !1432, inlinedAt: !3115)
!3115 = distinct !DILocation(line: 1004, column: 3, scope: !3090)
!3116 = !DILocation(line: 144, column: 51, scope: !1432, inlinedAt: !3115)
!3117 = !DILocation(line: 144, column: 58, scope: !1432, inlinedAt: !3115)
!3118 = !DILocation(line: 146, column: 17, scope: !1432, inlinedAt: !3115)
!3119 = !DILocation(line: 148, column: 57, scope: !1450, inlinedAt: !3115)
!3120 = !DILocation(line: 147, column: 17, scope: !1432, inlinedAt: !3115)
!3121 = !DILocation(line: 149, column: 7, scope: !1432, inlinedAt: !3115)
!3122 = !DILocation(line: 150, column: 12, scope: !1432, inlinedAt: !3115)
!3123 = !DILocation(line: 151, column: 6, scope: !1432, inlinedAt: !3115)
!3124 = !DILocation(line: 1005, column: 10, scope: !3090)
!3125 = !DILocation(line: 1006, column: 1, scope: !3090)
!3126 = !DILocation(line: 1005, column: 3, scope: !3090)
!3127 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !139, file: !139, line: 1009, type: !3128, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !111, variables: !3130)
!3128 = !DISubroutineType(types: !3129)
!3129 = !{!25, !64, !35, !35, !35}
!3130 = !{!3131, !3132, !3133, !3134}
!3131 = !DILocalVariable(name: "n", arg: 1, scope: !3127, file: !139, line: 1009, type: !64)
!3132 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3127, file: !139, line: 1009, type: !35)
!3133 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3127, file: !139, line: 1010, type: !35)
!3134 = !DILocalVariable(name: "arg", arg: 4, scope: !3127, file: !139, line: 1010, type: !35)
!3135 = !DILocation(line: 1009, column: 24, scope: !3127)
!3136 = !DILocation(line: 1009, column: 39, scope: !3127)
!3137 = !DILocation(line: 1010, column: 32, scope: !3127)
!3138 = !DILocation(line: 1010, column: 57, scope: !3127)
!3139 = !DILocalVariable(name: "n", arg: 1, scope: !3140, file: !139, line: 1017, type: !64)
!3140 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !139, file: !139, line: 1017, type: !3141, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !111, variables: !3143)
!3141 = !DISubroutineType(types: !3142)
!3142 = !{!25, !64, !35, !35, !35, !27}
!3143 = !{!3139, !3144, !3145, !3146, !3147, !3148}
!3144 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3140, file: !139, line: 1017, type: !35)
!3145 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3140, file: !139, line: 1018, type: !35)
!3146 = !DILocalVariable(name: "arg", arg: 4, scope: !3140, file: !139, line: 1019, type: !35)
!3147 = !DILocalVariable(name: "argsize", arg: 5, scope: !3140, file: !139, line: 1019, type: !27)
!3148 = !DILocalVariable(name: "o", scope: !3140, file: !139, line: 1021, type: !146)
!3149 = !DILocation(line: 1017, column: 28, scope: !3140, inlinedAt: !3150)
!3150 = distinct !DILocation(line: 1012, column: 10, scope: !3127)
!3151 = !DILocation(line: 1017, column: 43, scope: !3140, inlinedAt: !3150)
!3152 = !DILocation(line: 1018, column: 36, scope: !3140, inlinedAt: !3150)
!3153 = !DILocation(line: 1019, column: 36, scope: !3140, inlinedAt: !3150)
!3154 = !DILocation(line: 1019, column: 48, scope: !3140, inlinedAt: !3150)
!3155 = !DILocation(line: 1021, column: 3, scope: !3140, inlinedAt: !3150)
!3156 = !DILocation(line: 1021, column: 30, scope: !3140, inlinedAt: !3150)
!3157 = !DILocation(line: 1021, column: 26, scope: !3140, inlinedAt: !3150)
!3158 = !DILocation(line: 171, column: 45, scope: !1482, inlinedAt: !3159)
!3159 = distinct !DILocation(line: 1022, column: 3, scope: !3140, inlinedAt: !3150)
!3160 = !DILocation(line: 172, column: 33, scope: !1482, inlinedAt: !3159)
!3161 = !DILocation(line: 172, column: 57, scope: !1482, inlinedAt: !3159)
!3162 = !DILocation(line: 176, column: 6, scope: !1482, inlinedAt: !3159)
!3163 = !DILocation(line: 176, column: 12, scope: !1482, inlinedAt: !3159)
!3164 = !DILocation(line: 177, column: 8, scope: !1498, inlinedAt: !3159)
!3165 = !DILocation(line: 177, column: 23, scope: !1500, inlinedAt: !3159)
!3166 = !DILocation(line: 177, column: 19, scope: !1498, inlinedAt: !3159)
!3167 = !DILocation(line: 178, column: 5, scope: !1498, inlinedAt: !3159)
!3168 = !DILocation(line: 179, column: 6, scope: !1482, inlinedAt: !3159)
!3169 = !DILocation(line: 179, column: 17, scope: !1482, inlinedAt: !3159)
!3170 = !DILocation(line: 180, column: 6, scope: !1482, inlinedAt: !3159)
!3171 = !DILocation(line: 180, column: 18, scope: !1482, inlinedAt: !3159)
!3172 = !DILocation(line: 1023, column: 10, scope: !3140, inlinedAt: !3150)
!3173 = !DILocation(line: 1024, column: 1, scope: !3140, inlinedAt: !3150)
!3174 = !DILocation(line: 1012, column: 3, scope: !3127)
!3175 = !DILocation(line: 1017, column: 28, scope: !3140)
!3176 = !DILocation(line: 1017, column: 43, scope: !3140)
!3177 = !DILocation(line: 1018, column: 36, scope: !3140)
!3178 = !DILocation(line: 1019, column: 36, scope: !3140)
!3179 = !DILocation(line: 1019, column: 48, scope: !3140)
!3180 = !DILocation(line: 1021, column: 3, scope: !3140)
!3181 = !DILocation(line: 1021, column: 30, scope: !3140)
!3182 = !DILocation(line: 1021, column: 26, scope: !3140)
!3183 = !DILocation(line: 171, column: 45, scope: !1482, inlinedAt: !3184)
!3184 = distinct !DILocation(line: 1022, column: 3, scope: !3140)
!3185 = !DILocation(line: 172, column: 33, scope: !1482, inlinedAt: !3184)
!3186 = !DILocation(line: 172, column: 57, scope: !1482, inlinedAt: !3184)
!3187 = !DILocation(line: 176, column: 6, scope: !1482, inlinedAt: !3184)
!3188 = !DILocation(line: 176, column: 12, scope: !1482, inlinedAt: !3184)
!3189 = !DILocation(line: 177, column: 8, scope: !1498, inlinedAt: !3184)
!3190 = !DILocation(line: 177, column: 23, scope: !1500, inlinedAt: !3184)
!3191 = !DILocation(line: 177, column: 19, scope: !1498, inlinedAt: !3184)
!3192 = !DILocation(line: 178, column: 5, scope: !1498, inlinedAt: !3184)
!3193 = !DILocation(line: 179, column: 6, scope: !1482, inlinedAt: !3184)
!3194 = !DILocation(line: 179, column: 17, scope: !1482, inlinedAt: !3184)
!3195 = !DILocation(line: 180, column: 6, scope: !1482, inlinedAt: !3184)
!3196 = !DILocation(line: 180, column: 18, scope: !1482, inlinedAt: !3184)
!3197 = !DILocation(line: 1023, column: 10, scope: !3140)
!3198 = !DILocation(line: 1024, column: 1, scope: !3140)
!3199 = !DILocation(line: 1023, column: 3, scope: !3140)
!3200 = distinct !DISubprogram(name: "quotearg_custom", scope: !139, file: !139, line: 1027, type: !3201, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !111, variables: !3203)
!3201 = !DISubroutineType(types: !3202)
!3202 = !{!25, !35, !35, !35}
!3203 = !{!3204, !3205, !3206}
!3204 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3200, file: !139, line: 1027, type: !35)
!3205 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3200, file: !139, line: 1027, type: !35)
!3206 = !DILocalVariable(name: "arg", arg: 3, scope: !3200, file: !139, line: 1028, type: !35)
!3207 = !DILocation(line: 1027, column: 30, scope: !3200)
!3208 = !DILocation(line: 1027, column: 54, scope: !3200)
!3209 = !DILocation(line: 1028, column: 30, scope: !3200)
!3210 = !DILocation(line: 1009, column: 24, scope: !3127, inlinedAt: !3211)
!3211 = distinct !DILocation(line: 1030, column: 10, scope: !3200)
!3212 = !DILocation(line: 1009, column: 39, scope: !3127, inlinedAt: !3211)
!3213 = !DILocation(line: 1010, column: 32, scope: !3127, inlinedAt: !3211)
!3214 = !DILocation(line: 1010, column: 57, scope: !3127, inlinedAt: !3211)
!3215 = !DILocation(line: 1017, column: 28, scope: !3140, inlinedAt: !3216)
!3216 = distinct !DILocation(line: 1012, column: 10, scope: !3127, inlinedAt: !3211)
!3217 = !DILocation(line: 1017, column: 43, scope: !3140, inlinedAt: !3216)
!3218 = !DILocation(line: 1018, column: 36, scope: !3140, inlinedAt: !3216)
!3219 = !DILocation(line: 1019, column: 36, scope: !3140, inlinedAt: !3216)
!3220 = !DILocation(line: 1019, column: 48, scope: !3140, inlinedAt: !3216)
!3221 = !DILocation(line: 1021, column: 3, scope: !3140, inlinedAt: !3216)
!3222 = !DILocation(line: 1021, column: 30, scope: !3140, inlinedAt: !3216)
!3223 = !DILocation(line: 1021, column: 26, scope: !3140, inlinedAt: !3216)
!3224 = !DILocation(line: 171, column: 45, scope: !1482, inlinedAt: !3225)
!3225 = distinct !DILocation(line: 1022, column: 3, scope: !3140, inlinedAt: !3216)
!3226 = !DILocation(line: 172, column: 33, scope: !1482, inlinedAt: !3225)
!3227 = !DILocation(line: 172, column: 57, scope: !1482, inlinedAt: !3225)
!3228 = !DILocation(line: 176, column: 6, scope: !1482, inlinedAt: !3225)
!3229 = !DILocation(line: 176, column: 12, scope: !1482, inlinedAt: !3225)
!3230 = !DILocation(line: 177, column: 8, scope: !1498, inlinedAt: !3225)
!3231 = !DILocation(line: 177, column: 23, scope: !1500, inlinedAt: !3225)
!3232 = !DILocation(line: 177, column: 19, scope: !1498, inlinedAt: !3225)
!3233 = !DILocation(line: 178, column: 5, scope: !1498, inlinedAt: !3225)
!3234 = !DILocation(line: 179, column: 6, scope: !1482, inlinedAt: !3225)
!3235 = !DILocation(line: 179, column: 17, scope: !1482, inlinedAt: !3225)
!3236 = !DILocation(line: 180, column: 6, scope: !1482, inlinedAt: !3225)
!3237 = !DILocation(line: 180, column: 18, scope: !1482, inlinedAt: !3225)
!3238 = !DILocation(line: 1023, column: 10, scope: !3140, inlinedAt: !3216)
!3239 = !DILocation(line: 1024, column: 1, scope: !3140, inlinedAt: !3216)
!3240 = !DILocation(line: 1030, column: 3, scope: !3200)
!3241 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !139, file: !139, line: 1034, type: !3242, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !111, variables: !3244)
!3242 = !DISubroutineType(types: !3243)
!3243 = !{!25, !35, !35, !35, !27}
!3244 = !{!3245, !3246, !3247, !3248}
!3245 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3241, file: !139, line: 1034, type: !35)
!3246 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3241, file: !139, line: 1034, type: !35)
!3247 = !DILocalVariable(name: "arg", arg: 3, scope: !3241, file: !139, line: 1035, type: !35)
!3248 = !DILocalVariable(name: "argsize", arg: 4, scope: !3241, file: !139, line: 1035, type: !27)
!3249 = !DILocation(line: 1034, column: 34, scope: !3241)
!3250 = !DILocation(line: 1034, column: 58, scope: !3241)
!3251 = !DILocation(line: 1035, column: 34, scope: !3241)
!3252 = !DILocation(line: 1035, column: 46, scope: !3241)
!3253 = !DILocation(line: 1017, column: 28, scope: !3140, inlinedAt: !3254)
!3254 = distinct !DILocation(line: 1037, column: 10, scope: !3241)
!3255 = !DILocation(line: 1017, column: 43, scope: !3140, inlinedAt: !3254)
!3256 = !DILocation(line: 1018, column: 36, scope: !3140, inlinedAt: !3254)
!3257 = !DILocation(line: 1019, column: 36, scope: !3140, inlinedAt: !3254)
!3258 = !DILocation(line: 1019, column: 48, scope: !3140, inlinedAt: !3254)
!3259 = !DILocation(line: 1021, column: 3, scope: !3140, inlinedAt: !3254)
!3260 = !DILocation(line: 1021, column: 30, scope: !3140, inlinedAt: !3254)
!3261 = !DILocation(line: 1021, column: 26, scope: !3140, inlinedAt: !3254)
!3262 = !DILocation(line: 171, column: 45, scope: !1482, inlinedAt: !3263)
!3263 = distinct !DILocation(line: 1022, column: 3, scope: !3140, inlinedAt: !3254)
!3264 = !DILocation(line: 172, column: 33, scope: !1482, inlinedAt: !3263)
!3265 = !DILocation(line: 172, column: 57, scope: !1482, inlinedAt: !3263)
!3266 = !DILocation(line: 176, column: 6, scope: !1482, inlinedAt: !3263)
!3267 = !DILocation(line: 176, column: 12, scope: !1482, inlinedAt: !3263)
!3268 = !DILocation(line: 177, column: 8, scope: !1498, inlinedAt: !3263)
!3269 = !DILocation(line: 177, column: 23, scope: !1500, inlinedAt: !3263)
!3270 = !DILocation(line: 177, column: 19, scope: !1498, inlinedAt: !3263)
!3271 = !DILocation(line: 178, column: 5, scope: !1498, inlinedAt: !3263)
!3272 = !DILocation(line: 179, column: 6, scope: !1482, inlinedAt: !3263)
!3273 = !DILocation(line: 179, column: 17, scope: !1482, inlinedAt: !3263)
!3274 = !DILocation(line: 180, column: 6, scope: !1482, inlinedAt: !3263)
!3275 = !DILocation(line: 180, column: 18, scope: !1482, inlinedAt: !3263)
!3276 = !DILocation(line: 1023, column: 10, scope: !3140, inlinedAt: !3254)
!3277 = !DILocation(line: 1024, column: 1, scope: !3140, inlinedAt: !3254)
!3278 = !DILocation(line: 1037, column: 3, scope: !3241)
!3279 = distinct !DISubprogram(name: "quote_n_mem", scope: !139, file: !139, line: 1052, type: !3280, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !111, variables: !3282)
!3280 = !DISubroutineType(types: !3281)
!3281 = !{!35, !64, !35, !27}
!3282 = !{!3283, !3284, !3285}
!3283 = !DILocalVariable(name: "n", arg: 1, scope: !3279, file: !139, line: 1052, type: !64)
!3284 = !DILocalVariable(name: "arg", arg: 2, scope: !3279, file: !139, line: 1052, type: !35)
!3285 = !DILocalVariable(name: "argsize", arg: 3, scope: !3279, file: !139, line: 1052, type: !27)
!3286 = !DILocation(line: 1052, column: 18, scope: !3279)
!3287 = !DILocation(line: 1052, column: 33, scope: !3279)
!3288 = !DILocation(line: 1052, column: 45, scope: !3279)
!3289 = !DILocation(line: 1054, column: 10, scope: !3279)
!3290 = !DILocation(line: 1054, column: 3, scope: !3279)
!3291 = distinct !DISubprogram(name: "quote_mem", scope: !139, file: !139, line: 1058, type: !3292, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !111, variables: !3294)
!3292 = !DISubroutineType(types: !3293)
!3293 = !{!35, !35, !27}
!3294 = !{!3295, !3296}
!3295 = !DILocalVariable(name: "arg", arg: 1, scope: !3291, file: !139, line: 1058, type: !35)
!3296 = !DILocalVariable(name: "argsize", arg: 2, scope: !3291, file: !139, line: 1058, type: !27)
!3297 = !DILocation(line: 1058, column: 24, scope: !3291)
!3298 = !DILocation(line: 1058, column: 36, scope: !3291)
!3299 = !DILocation(line: 1052, column: 18, scope: !3279, inlinedAt: !3300)
!3300 = distinct !DILocation(line: 1060, column: 10, scope: !3291)
!3301 = !DILocation(line: 1052, column: 33, scope: !3279, inlinedAt: !3300)
!3302 = !DILocation(line: 1052, column: 45, scope: !3279, inlinedAt: !3300)
!3303 = !DILocation(line: 1054, column: 10, scope: !3279, inlinedAt: !3300)
!3304 = !DILocation(line: 1060, column: 3, scope: !3291)
!3305 = distinct !DISubprogram(name: "quote_n", scope: !139, file: !139, line: 1064, type: !3306, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !111, variables: !3308)
!3306 = !DISubroutineType(types: !3307)
!3307 = !{!35, !64, !35}
!3308 = !{!3309, !3310}
!3309 = !DILocalVariable(name: "n", arg: 1, scope: !3305, file: !139, line: 1064, type: !64)
!3310 = !DILocalVariable(name: "arg", arg: 2, scope: !3305, file: !139, line: 1064, type: !35)
!3311 = !DILocation(line: 1064, column: 14, scope: !3305)
!3312 = !DILocation(line: 1064, column: 29, scope: !3305)
!3313 = !DILocation(line: 1052, column: 18, scope: !3279, inlinedAt: !3314)
!3314 = distinct !DILocation(line: 1066, column: 10, scope: !3305)
!3315 = !DILocation(line: 1052, column: 33, scope: !3279, inlinedAt: !3314)
!3316 = !DILocation(line: 1052, column: 45, scope: !3279, inlinedAt: !3314)
!3317 = !DILocation(line: 1054, column: 10, scope: !3279, inlinedAt: !3314)
!3318 = !DILocation(line: 1066, column: 3, scope: !3305)
!3319 = distinct !DISubprogram(name: "quote", scope: !139, file: !139, line: 1070, type: !3320, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !111, variables: !3322)
!3320 = !DISubroutineType(types: !3321)
!3321 = !{!35, !35}
!3322 = !{!3323}
!3323 = !DILocalVariable(name: "arg", arg: 1, scope: !3319, file: !139, line: 1070, type: !35)
!3324 = !DILocation(line: 1070, column: 20, scope: !3319)
!3325 = !DILocation(line: 1064, column: 14, scope: !3305, inlinedAt: !3326)
!3326 = distinct !DILocation(line: 1072, column: 10, scope: !3319)
!3327 = !DILocation(line: 1064, column: 29, scope: !3305, inlinedAt: !3326)
!3328 = !DILocation(line: 1052, column: 18, scope: !3279, inlinedAt: !3329)
!3329 = distinct !DILocation(line: 1066, column: 10, scope: !3305, inlinedAt: !3326)
!3330 = !DILocation(line: 1052, column: 33, scope: !3279, inlinedAt: !3329)
!3331 = !DILocation(line: 1052, column: 45, scope: !3279, inlinedAt: !3329)
!3332 = !DILocation(line: 1054, column: 10, scope: !3279, inlinedAt: !3329)
!3333 = !DILocation(line: 1072, column: 3, scope: !3319)
!3334 = distinct !DISubprogram(name: "get_root_dev_ino", scope: !3335, file: !3335, line: 29, type: !3336, isLocal: false, isDefinition: true, scopeLine: 30, flags: DIFlagPrototyped, isOptimized: true, unit: !536, variables: !3343)
!3335 = !DIFile(filename: "lib/root-dev-ino.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3336 = !DISubroutineType(types: !3337)
!3337 = !{!3338, !3338}
!3338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3339, size: 64)
!3339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_ino", file: !855, line: 7, size: 128, elements: !3340)
!3340 = !{!3341, !3342}
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !3339, file: !855, line: 9, baseType: !858, size: 64)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !3339, file: !855, line: 10, baseType: !861, size: 64, offset: 64)
!3343 = !{!3344, !3345}
!3344 = !DILocalVariable(name: "root_d_i", arg: 1, scope: !3334, file: !3335, line: 29, type: !3338)
!3345 = !DILocalVariable(name: "statbuf", scope: !3334, file: !3335, line: 31, type: !3346)
!3346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !710, line: 46, size: 1152, elements: !3347)
!3347 = !{!3348, !3349, !3350, !3351, !3352, !3353, !3354, !3355, !3356, !3357, !3358, !3359, !3364, !3365, !3366}
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !3346, file: !710, line: 48, baseType: !713, size: 64)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !3346, file: !710, line: 53, baseType: !716, size: 64, offset: 64)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !3346, file: !710, line: 61, baseType: !718, size: 64, offset: 128)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !3346, file: !710, line: 62, baseType: !720, size: 32, offset: 192)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !3346, file: !710, line: 64, baseType: !722, size: 32, offset: 224)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !3346, file: !710, line: 65, baseType: !724, size: 32, offset: 256)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !3346, file: !710, line: 67, baseType: !64, size: 32, offset: 288)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !3346, file: !710, line: 69, baseType: !713, size: 64, offset: 320)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !3346, file: !710, line: 74, baseType: !728, size: 64, offset: 384)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !3346, file: !710, line: 78, baseType: !731, size: 64, offset: 448)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !3346, file: !710, line: 80, baseType: !733, size: 64, offset: 512)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !3346, file: !710, line: 91, baseType: !3360, size: 128, offset: 576)
!3360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !736, line: 8, size: 128, elements: !3361)
!3361 = !{!3362, !3363}
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3360, file: !736, line: 10, baseType: !739, size: 64)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3360, file: !736, line: 11, baseType: !741, size: 64, offset: 64)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !3346, file: !710, line: 92, baseType: !3360, size: 128, offset: 704)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !3346, file: !710, line: 93, baseType: !3360, size: 128, offset: 832)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !3346, file: !710, line: 106, baseType: !745, size: 192, offset: 960)
!3367 = !DILocation(line: 29, column: 35, scope: !3334)
!3368 = !DILocation(line: 31, column: 3, scope: !3334)
!3369 = !DILocation(line: 31, column: 15, scope: !3334)
!3370 = !DILocalVariable(name: "__path", arg: 1, scope: !3371, file: !783, line: 456, type: !35)
!3371 = distinct !DISubprogram(name: "lstat", scope: !783, file: !783, line: 456, type: !3372, isLocal: false, isDefinition: true, scopeLine: 457, flags: DIFlagPrototyped, isOptimized: true, unit: !536, variables: !3375)
!3372 = !DISubroutineType(types: !3373)
!3373 = !{!64, !35, !3374}
!3374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3346, size: 64)
!3375 = !{!3370, !3376}
!3376 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !3371, file: !783, line: 456, type: !3374)
!3377 = !DILocation(line: 456, column: 1, scope: !3371, inlinedAt: !3378)
!3378 = distinct !DILocation(line: 32, column: 7, scope: !3379)
!3379 = distinct !DILexicalBlock(scope: !3334, file: !3335, line: 32, column: 7)
!3380 = !DILocation(line: 458, column: 10, scope: !3371, inlinedAt: !3378)
!3381 = !DILocation(line: 32, column: 7, scope: !3379)
!3382 = !DILocation(line: 32, column: 7, scope: !3334)
!3383 = !DILocation(line: 34, column: 30, scope: !3334)
!3384 = !DILocation(line: 34, column: 13, scope: !3334)
!3385 = !DILocation(line: 34, column: 20, scope: !3334)
!3386 = !DILocation(line: 35, column: 30, scope: !3334)
!3387 = !DILocation(line: 35, column: 13, scope: !3334)
!3388 = !DILocation(line: 35, column: 20, scope: !3334)
!3389 = !DILocation(line: 36, column: 3, scope: !3334)
!3390 = !DILocation(line: 37, column: 1, scope: !3334)
!3391 = distinct !DISubprogram(name: "version_etc_arn", scope: !542, file: !542, line: 62, type: !3392, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !538, variables: !3447)
!3392 = !DISubroutineType(types: !3393)
!3393 = !{null, !3394, !35, !35, !35, !3446, !27}
!3394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3395, size: 64)
!3395 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3396, line: 49, baseType: !3397)
!3396 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3398, line: 241, size: 1728, elements: !3399)
!3398 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3399 = !{!3400, !3401, !3402, !3403, !3404, !3405, !3406, !3407, !3408, !3409, !3410, !3411, !3412, !3420, !3421, !3422, !3423, !3424, !3425, !3427, !3431, !3434, !3436, !3437, !3438, !3439, !3440, !3441, !3442}
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3397, file: !3398, line: 242, baseType: !64, size: 32)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3397, file: !3398, line: 247, baseType: !25, size: 64, offset: 64)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3397, file: !3398, line: 248, baseType: !25, size: 64, offset: 128)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3397, file: !3398, line: 249, baseType: !25, size: 64, offset: 192)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3397, file: !3398, line: 250, baseType: !25, size: 64, offset: 256)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3397, file: !3398, line: 251, baseType: !25, size: 64, offset: 320)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3397, file: !3398, line: 252, baseType: !25, size: 64, offset: 384)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3397, file: !3398, line: 253, baseType: !25, size: 64, offset: 448)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3397, file: !3398, line: 254, baseType: !25, size: 64, offset: 512)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3397, file: !3398, line: 256, baseType: !25, size: 64, offset: 576)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3397, file: !3398, line: 257, baseType: !25, size: 64, offset: 640)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3397, file: !3398, line: 258, baseType: !25, size: 64, offset: 704)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3397, file: !3398, line: 260, baseType: !3413, size: 64, offset: 768)
!3413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3414, size: 64)
!3414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3398, line: 156, size: 192, elements: !3415)
!3415 = !{!3416, !3417, !3419}
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3414, file: !3398, line: 157, baseType: !3413, size: 64)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3414, file: !3398, line: 158, baseType: !3418, size: 64, offset: 64)
!3418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3397, size: 64)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3414, file: !3398, line: 162, baseType: !64, size: 32, offset: 128)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3397, file: !3398, line: 262, baseType: !3418, size: 64, offset: 832)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3397, file: !3398, line: 264, baseType: !64, size: 32, offset: 896)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3397, file: !3398, line: 268, baseType: !64, size: 32, offset: 928)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3397, file: !3398, line: 270, baseType: !728, size: 64, offset: 960)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3397, file: !3398, line: 274, baseType: !135, size: 16, offset: 1024)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3397, file: !3398, line: 275, baseType: !3426, size: 8, offset: 1040)
!3426 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3397, file: !3398, line: 276, baseType: !3428, size: 8, offset: 1048)
!3428 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 8, elements: !3429)
!3429 = !{!3430}
!3430 = !DISubrange(count: 1)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3397, file: !3398, line: 280, baseType: !3432, size: 64, offset: 1088)
!3432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3433, size: 64)
!3433 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !3398, line: 150, baseType: null)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3397, file: !3398, line: 289, baseType: !3435, size: 64, offset: 1152)
!3435 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !714, line: 141, baseType: !729)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3397, file: !3398, line: 297, baseType: !24, size: 64, offset: 1216)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3397, file: !3398, line: 298, baseType: !24, size: 64, offset: 1280)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3397, file: !3398, line: 299, baseType: !24, size: 64, offset: 1344)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3397, file: !3398, line: 300, baseType: !24, size: 64, offset: 1408)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3397, file: !3398, line: 302, baseType: !27, size: 64, offset: 1472)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3397, file: !3398, line: 303, baseType: !64, size: 32, offset: 1536)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3397, file: !3398, line: 305, baseType: !3443, size: 160, offset: 1568)
!3443 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 160, elements: !3444)
!3444 = !{!3445}
!3445 = !DISubrange(count: 20)
!3446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!3447 = !{!3448, !3449, !3450, !3451, !3452, !3453}
!3448 = !DILocalVariable(name: "stream", arg: 1, scope: !3391, file: !542, line: 62, type: !3394)
!3449 = !DILocalVariable(name: "command_name", arg: 2, scope: !3391, file: !542, line: 63, type: !35)
!3450 = !DILocalVariable(name: "package", arg: 3, scope: !3391, file: !542, line: 63, type: !35)
!3451 = !DILocalVariable(name: "version", arg: 4, scope: !3391, file: !542, line: 64, type: !35)
!3452 = !DILocalVariable(name: "authors", arg: 5, scope: !3391, file: !542, line: 65, type: !3446)
!3453 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3391, file: !542, line: 65, type: !27)
!3454 = !DILocation(line: 62, column: 24, scope: !3391)
!3455 = !DILocation(line: 63, column: 30, scope: !3391)
!3456 = !DILocation(line: 63, column: 56, scope: !3391)
!3457 = !DILocation(line: 64, column: 30, scope: !3391)
!3458 = !DILocation(line: 65, column: 39, scope: !3391)
!3459 = !DILocation(line: 65, column: 55, scope: !3391)
!3460 = !DILocation(line: 67, column: 7, scope: !3461)
!3461 = distinct !DILexicalBlock(scope: !3391, file: !542, line: 67, column: 7)
!3462 = !DILocation(line: 67, column: 7, scope: !3391)
!3463 = !DILocation(line: 68, column: 5, scope: !3461)
!3464 = !DILocation(line: 70, column: 5, scope: !3461)
!3465 = !DILocation(line: 84, column: 3, scope: !3391)
!3466 = !DILocation(line: 84, column: 3, scope: !3467)
!3467 = !DILexicalBlockFile(scope: !3391, file: !542, discriminator: 1)
!3468 = !DILocation(line: 86, column: 3, scope: !3391)
!3469 = !DILocation(line: 86, column: 3, scope: !3467)
!3470 = !DILocation(line: 95, column: 3, scope: !3391)
!3471 = !DILocation(line: 99, column: 7, scope: !3472)
!3472 = distinct !DILexicalBlock(scope: !3391, file: !542, line: 96, column: 5)
!3473 = !DILocation(line: 102, column: 7, scope: !3472)
!3474 = !DILocation(line: 102, column: 7, scope: !3475)
!3475 = !DILexicalBlockFile(scope: !3472, file: !542, discriminator: 1)
!3476 = !DILocation(line: 103, column: 7, scope: !3472)
!3477 = !DILocation(line: 106, column: 7, scope: !3472)
!3478 = !DILocation(line: 106, column: 7, scope: !3475)
!3479 = !DILocation(line: 107, column: 7, scope: !3472)
!3480 = !DILocation(line: 110, column: 7, scope: !3472)
!3481 = !DILocation(line: 110, column: 7, scope: !3475)
!3482 = !DILocation(line: 112, column: 7, scope: !3472)
!3483 = !DILocation(line: 117, column: 7, scope: !3472)
!3484 = !DILocation(line: 117, column: 7, scope: !3475)
!3485 = !DILocation(line: 119, column: 7, scope: !3472)
!3486 = !DILocation(line: 124, column: 7, scope: !3472)
!3487 = !DILocation(line: 124, column: 7, scope: !3475)
!3488 = !DILocation(line: 126, column: 7, scope: !3472)
!3489 = !DILocation(line: 131, column: 7, scope: !3472)
!3490 = !DILocation(line: 131, column: 7, scope: !3475)
!3491 = !DILocation(line: 134, column: 7, scope: !3472)
!3492 = !DILocation(line: 139, column: 7, scope: !3472)
!3493 = !DILocation(line: 139, column: 7, scope: !3475)
!3494 = !DILocation(line: 142, column: 7, scope: !3472)
!3495 = !DILocation(line: 147, column: 7, scope: !3472)
!3496 = !DILocation(line: 147, column: 7, scope: !3475)
!3497 = !DILocation(line: 151, column: 7, scope: !3472)
!3498 = !DILocation(line: 156, column: 7, scope: !3472)
!3499 = !DILocation(line: 156, column: 7, scope: !3475)
!3500 = !DILocation(line: 160, column: 7, scope: !3472)
!3501 = !DILocation(line: 167, column: 7, scope: !3472)
!3502 = !DILocation(line: 167, column: 7, scope: !3475)
!3503 = !DILocation(line: 171, column: 7, scope: !3472)
!3504 = !DILocation(line: 173, column: 1, scope: !3391)
!3505 = distinct !DISubprogram(name: "version_etc_ar", scope: !542, file: !542, line: 180, type: !3506, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !538, variables: !3508)
!3506 = !DISubroutineType(types: !3507)
!3507 = !{null, !3394, !35, !35, !35, !3446}
!3508 = !{!3509, !3510, !3511, !3512, !3513, !3514}
!3509 = !DILocalVariable(name: "stream", arg: 1, scope: !3505, file: !542, line: 180, type: !3394)
!3510 = !DILocalVariable(name: "command_name", arg: 2, scope: !3505, file: !542, line: 181, type: !35)
!3511 = !DILocalVariable(name: "package", arg: 3, scope: !3505, file: !542, line: 181, type: !35)
!3512 = !DILocalVariable(name: "version", arg: 4, scope: !3505, file: !542, line: 182, type: !35)
!3513 = !DILocalVariable(name: "authors", arg: 5, scope: !3505, file: !542, line: 182, type: !3446)
!3514 = !DILocalVariable(name: "n_authors", scope: !3505, file: !542, line: 184, type: !27)
!3515 = !DILocation(line: 180, column: 23, scope: !3505)
!3516 = !DILocation(line: 181, column: 29, scope: !3505)
!3517 = !DILocation(line: 181, column: 55, scope: !3505)
!3518 = !DILocation(line: 182, column: 29, scope: !3505)
!3519 = !DILocation(line: 182, column: 59, scope: !3505)
!3520 = !DILocation(line: 184, column: 10, scope: !3505)
!3521 = !DILocation(line: 186, column: 8, scope: !3522)
!3522 = distinct !DILexicalBlock(scope: !3505, file: !542, line: 186, column: 3)
!3523 = !DILocation(line: 186, column: 23, scope: !3524)
!3524 = !DILexicalBlockFile(scope: !3525, file: !542, discriminator: 1)
!3525 = distinct !DILexicalBlock(scope: !3522, file: !542, line: 186, column: 3)
!3526 = !DILocation(line: 186, column: 3, scope: !3527)
!3527 = !DILexicalBlockFile(scope: !3522, file: !542, discriminator: 1)
!3528 = !DILocation(line: 186, column: 52, scope: !3529)
!3529 = !DILexicalBlockFile(scope: !3525, file: !542, discriminator: 3)
!3530 = distinct !{!3530, !3531, !3532}
!3531 = !DILocation(line: 186, column: 3, scope: !3522)
!3532 = !DILocation(line: 187, column: 5, scope: !3522)
!3533 = !DILocation(line: 188, column: 3, scope: !3505)
!3534 = !DILocation(line: 189, column: 1, scope: !3505)
!3535 = distinct !DISubprogram(name: "version_etc_va", scope: !542, file: !542, line: 196, type: !3536, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !538, variables: !3545)
!3536 = !DISubroutineType(types: !3537)
!3537 = !{null, !3394, !35, !35, !35, !3538}
!3538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3539, size: 64)
!3539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !539, line: 189, size: 192, elements: !3540)
!3540 = !{!3541, !3542, !3543, !3544}
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3539, file: !539, line: 189, baseType: !152, size: 32)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3539, file: !539, line: 189, baseType: !152, size: 32, offset: 32)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3539, file: !539, line: 189, baseType: !24, size: 64, offset: 64)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3539, file: !539, line: 189, baseType: !24, size: 64, offset: 128)
!3545 = !{!3546, !3547, !3548, !3549, !3550, !3551, !3552}
!3546 = !DILocalVariable(name: "stream", arg: 1, scope: !3535, file: !542, line: 196, type: !3394)
!3547 = !DILocalVariable(name: "command_name", arg: 2, scope: !3535, file: !542, line: 197, type: !35)
!3548 = !DILocalVariable(name: "package", arg: 3, scope: !3535, file: !542, line: 197, type: !35)
!3549 = !DILocalVariable(name: "version", arg: 4, scope: !3535, file: !542, line: 198, type: !35)
!3550 = !DILocalVariable(name: "authors", arg: 5, scope: !3535, file: !542, line: 198, type: !3538)
!3551 = !DILocalVariable(name: "n_authors", scope: !3535, file: !542, line: 200, type: !27)
!3552 = !DILocalVariable(name: "authtab", scope: !3535, file: !542, line: 201, type: !3553)
!3553 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 640, elements: !142)
!3554 = !DILocation(line: 196, column: 23, scope: !3535)
!3555 = !DILocation(line: 197, column: 29, scope: !3535)
!3556 = !DILocation(line: 197, column: 55, scope: !3535)
!3557 = !DILocation(line: 198, column: 29, scope: !3535)
!3558 = !DILocation(line: 198, column: 46, scope: !3535)
!3559 = !DILocation(line: 201, column: 3, scope: !3535)
!3560 = !DILocation(line: 201, column: 15, scope: !3535)
!3561 = !DILocation(line: 200, column: 10, scope: !3535)
!3562 = !DILocation(line: 205, column: 35, scope: !3563)
!3563 = !DILexicalBlockFile(scope: !3564, file: !542, discriminator: 1)
!3564 = distinct !DILexicalBlock(scope: !3565, file: !542, line: 203, column: 3)
!3565 = distinct !DILexicalBlock(scope: !3535, file: !542, line: 203, column: 3)
!3566 = !DILocation(line: 205, column: 35, scope: !3567)
!3567 = !DILexicalBlockFile(scope: !3564, file: !542, discriminator: 2)
!3568 = !DILocation(line: 205, column: 35, scope: !3569)
!3569 = !DILexicalBlockFile(scope: !3564, file: !542, discriminator: 3)
!3570 = !DILocation(line: 205, column: 35, scope: !3571)
!3571 = !DILexicalBlockFile(scope: !3564, file: !542, discriminator: 4)
!3572 = !DILocation(line: 205, column: 14, scope: !3571)
!3573 = !DILocation(line: 205, column: 33, scope: !3571)
!3574 = !DILocation(line: 205, column: 67, scope: !3571)
!3575 = !DILocation(line: 203, column: 3, scope: !3576)
!3576 = !DILexicalBlockFile(scope: !3565, file: !542, discriminator: 1)
!3577 = !DILocation(line: 208, column: 3, scope: !3535)
!3578 = !DILocation(line: 210, column: 1, scope: !3535)
!3579 = distinct !DISubprogram(name: "version_etc", scope: !542, file: !542, line: 227, type: !3580, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !538, variables: !3582)
!3580 = !DISubroutineType(types: !3581)
!3581 = !{null, !3394, !35, !35, !35, null}
!3582 = !{!3583, !3584, !3585, !3586, !3587}
!3583 = !DILocalVariable(name: "stream", arg: 1, scope: !3579, file: !542, line: 227, type: !3394)
!3584 = !DILocalVariable(name: "command_name", arg: 2, scope: !3579, file: !542, line: 228, type: !35)
!3585 = !DILocalVariable(name: "package", arg: 3, scope: !3579, file: !542, line: 228, type: !35)
!3586 = !DILocalVariable(name: "version", arg: 4, scope: !3579, file: !542, line: 229, type: !35)
!3587 = !DILocalVariable(name: "authors", scope: !3579, file: !542, line: 231, type: !3588)
!3588 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !3396, line: 80, baseType: !3589)
!3589 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3590, line: 50, baseType: !3591)
!3590 = !DIFile(filename: "/usr/bin/../lib/clang/4.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3591 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !539, line: 231, baseType: !3592)
!3592 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3539, size: 192, elements: !3429)
!3593 = !DILocation(line: 227, column: 20, scope: !3579)
!3594 = !DILocation(line: 228, column: 26, scope: !3579)
!3595 = !DILocation(line: 228, column: 52, scope: !3579)
!3596 = !DILocation(line: 229, column: 26, scope: !3579)
!3597 = !DILocation(line: 231, column: 3, scope: !3579)
!3598 = !DILocation(line: 231, column: 11, scope: !3579)
!3599 = !DILocation(line: 233, column: 3, scope: !3579)
!3600 = !DILocation(line: 234, column: 3, scope: !3579)
!3601 = !DILocation(line: 235, column: 3, scope: !3579)
!3602 = !DILocation(line: 236, column: 1, scope: !3579)
!3603 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !542, file: !542, line: 239, type: !1306, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !538, variables: !84)
!3604 = !DILocation(line: 245, column: 3, scope: !3603)
!3605 = !DILocation(line: 245, column: 3, scope: !3606)
!3606 = !DILexicalBlockFile(scope: !3603, file: !542, discriminator: 1)
!3607 = !DILocation(line: 251, column: 3, scope: !3603)
!3608 = !DILocation(line: 251, column: 3, scope: !3606)
!3609 = !DILocation(line: 256, column: 3, scope: !3603)
!3610 = !DILocation(line: 256, column: 3, scope: !3606)
!3611 = !DILocation(line: 258, column: 1, scope: !3603)
!3612 = distinct !DISubprogram(name: "xnmalloc", scope: !550, file: !550, line: 105, type: !1140, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !546, variables: !3613)
!3613 = !{!3614, !3615}
!3614 = !DILocalVariable(name: "n", arg: 1, scope: !3612, file: !550, line: 105, type: !27)
!3615 = !DILocalVariable(name: "s", arg: 2, scope: !3612, file: !550, line: 105, type: !27)
!3616 = !DILocation(line: 105, column: 18, scope: !3612)
!3617 = !DILocation(line: 105, column: 28, scope: !3612)
!3618 = !DILocation(line: 107, column: 7, scope: !3619)
!3619 = distinct !DILexicalBlock(scope: !3612, file: !550, line: 107, column: 7)
!3620 = !DILocation(line: 107, column: 7, scope: !3612)
!3621 = !DILocation(line: 108, column: 5, scope: !3619)
!3622 = !DILocation(line: 109, column: 21, scope: !3612)
!3623 = !DILocalVariable(name: "n", arg: 1, scope: !3624, file: !3625, line: 39, type: !27)
!3624 = distinct !DISubprogram(name: "xmalloc", scope: !3625, file: !3625, line: 39, type: !3626, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !546, variables: !3628)
!3625 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3626 = !DISubroutineType(types: !3627)
!3627 = !{!24, !27}
!3628 = !{!3623, !3629}
!3629 = !DILocalVariable(name: "p", scope: !3624, file: !3625, line: 41, type: !24)
!3630 = !DILocation(line: 39, column: 17, scope: !3624, inlinedAt: !3631)
!3631 = distinct !DILocation(line: 109, column: 10, scope: !3612)
!3632 = !DILocation(line: 41, column: 13, scope: !3624, inlinedAt: !3631)
!3633 = !DILocation(line: 41, column: 9, scope: !3624, inlinedAt: !3631)
!3634 = !DILocation(line: 42, column: 8, scope: !3635, inlinedAt: !3631)
!3635 = distinct !DILexicalBlock(scope: !3624, file: !3625, line: 42, column: 7)
!3636 = !DILocation(line: 42, column: 15, scope: !3637, inlinedAt: !3631)
!3637 = !DILexicalBlockFile(scope: !3635, file: !3625, discriminator: 1)
!3638 = !DILocation(line: 42, column: 10, scope: !3635, inlinedAt: !3631)
!3639 = !DILocation(line: 43, column: 5, scope: !3635, inlinedAt: !3631)
!3640 = !DILocation(line: 109, column: 3, scope: !3612)
!3641 = !DILocation(line: 39, column: 17, scope: !3624)
!3642 = !DILocation(line: 41, column: 13, scope: !3624)
!3643 = !DILocation(line: 41, column: 9, scope: !3624)
!3644 = !DILocation(line: 42, column: 8, scope: !3635)
!3645 = !DILocation(line: 42, column: 15, scope: !3637)
!3646 = !DILocation(line: 42, column: 10, scope: !3635)
!3647 = !DILocation(line: 43, column: 5, scope: !3635)
!3648 = !DILocation(line: 44, column: 3, scope: !3624)
!3649 = distinct !DISubprogram(name: "xnrealloc", scope: !550, file: !550, line: 118, type: !3650, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !546, variables: !3652)
!3650 = !DISubroutineType(types: !3651)
!3651 = !{!24, !24, !27, !27}
!3652 = !{!3653, !3654, !3655}
!3653 = !DILocalVariable(name: "p", arg: 1, scope: !3649, file: !550, line: 118, type: !24)
!3654 = !DILocalVariable(name: "n", arg: 2, scope: !3649, file: !550, line: 118, type: !27)
!3655 = !DILocalVariable(name: "s", arg: 3, scope: !3649, file: !550, line: 118, type: !27)
!3656 = !DILocation(line: 118, column: 18, scope: !3649)
!3657 = !DILocation(line: 118, column: 28, scope: !3649)
!3658 = !DILocation(line: 118, column: 38, scope: !3649)
!3659 = !DILocation(line: 120, column: 7, scope: !3660)
!3660 = distinct !DILexicalBlock(scope: !3649, file: !550, line: 120, column: 7)
!3661 = !DILocation(line: 120, column: 7, scope: !3649)
!3662 = !DILocation(line: 121, column: 5, scope: !3660)
!3663 = !DILocation(line: 122, column: 25, scope: !3649)
!3664 = !DILocalVariable(name: "p", arg: 1, scope: !3665, file: !3625, line: 51, type: !24)
!3665 = distinct !DISubprogram(name: "xrealloc", scope: !3625, file: !3625, line: 51, type: !3666, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !546, variables: !3668)
!3666 = !DISubroutineType(types: !3667)
!3667 = !{!24, !24, !27}
!3668 = !{!3664, !3669}
!3669 = !DILocalVariable(name: "n", arg: 2, scope: !3665, file: !3625, line: 51, type: !27)
!3670 = !DILocation(line: 51, column: 17, scope: !3665, inlinedAt: !3671)
!3671 = distinct !DILocation(line: 122, column: 10, scope: !3649)
!3672 = !DILocation(line: 51, column: 27, scope: !3665, inlinedAt: !3671)
!3673 = !DILocation(line: 53, column: 8, scope: !3674, inlinedAt: !3671)
!3674 = distinct !DILexicalBlock(scope: !3665, file: !3625, line: 53, column: 7)
!3675 = !DILocation(line: 53, column: 13, scope: !3676, inlinedAt: !3671)
!3676 = !DILexicalBlockFile(scope: !3674, file: !3625, discriminator: 1)
!3677 = !DILocation(line: 53, column: 10, scope: !3674, inlinedAt: !3671)
!3678 = !DILocation(line: 57, column: 7, scope: !3679, inlinedAt: !3671)
!3679 = distinct !DILexicalBlock(scope: !3674, file: !3625, line: 54, column: 5)
!3680 = !DILocation(line: 58, column: 7, scope: !3679, inlinedAt: !3671)
!3681 = !DILocation(line: 61, column: 7, scope: !3665, inlinedAt: !3671)
!3682 = !DILocation(line: 62, column: 8, scope: !3683, inlinedAt: !3671)
!3683 = distinct !DILexicalBlock(scope: !3665, file: !3625, line: 62, column: 7)
!3684 = !DILocation(line: 62, column: 13, scope: !3685, inlinedAt: !3671)
!3685 = !DILexicalBlockFile(scope: !3683, file: !3625, discriminator: 1)
!3686 = !DILocation(line: 62, column: 10, scope: !3683, inlinedAt: !3671)
!3687 = !DILocation(line: 63, column: 5, scope: !3683, inlinedAt: !3671)
!3688 = !DILocation(line: 122, column: 3, scope: !3649)
!3689 = !DILocation(line: 51, column: 17, scope: !3665)
!3690 = !DILocation(line: 51, column: 27, scope: !3665)
!3691 = !DILocation(line: 53, column: 8, scope: !3674)
!3692 = !DILocation(line: 53, column: 13, scope: !3676)
!3693 = !DILocation(line: 53, column: 10, scope: !3674)
!3694 = !DILocation(line: 57, column: 7, scope: !3679)
!3695 = !DILocation(line: 58, column: 7, scope: !3679)
!3696 = !DILocation(line: 61, column: 7, scope: !3665)
!3697 = !DILocation(line: 62, column: 8, scope: !3683)
!3698 = !DILocation(line: 62, column: 13, scope: !3685)
!3699 = !DILocation(line: 62, column: 10, scope: !3683)
!3700 = !DILocation(line: 63, column: 5, scope: !3683)
!3701 = !DILocation(line: 65, column: 1, scope: !3665)
!3702 = !DILocation(line: 180, column: 19, scope: !551)
!3703 = !DILocation(line: 180, column: 30, scope: !551)
!3704 = !DILocation(line: 180, column: 41, scope: !551)
!3705 = !DILocation(line: 182, column: 14, scope: !551)
!3706 = !DILocation(line: 182, column: 10, scope: !551)
!3707 = !DILocation(line: 184, column: 9, scope: !3708)
!3708 = distinct !DILexicalBlock(scope: !551, file: !550, line: 184, column: 7)
!3709 = !DILocation(line: 184, column: 7, scope: !551)
!3710 = !DILocation(line: 186, column: 13, scope: !3711)
!3711 = distinct !DILexicalBlock(scope: !3712, file: !550, line: 186, column: 11)
!3712 = distinct !DILexicalBlock(scope: !3708, file: !550, line: 185, column: 5)
!3713 = !DILocation(line: 186, column: 11, scope: !3712)
!3714 = !DILocation(line: 194, column: 30, scope: !3715)
!3715 = distinct !DILexicalBlock(scope: !3711, file: !550, line: 187, column: 9)
!3716 = !DILocation(line: 195, column: 16, scope: !3715)
!3717 = !DILocation(line: 195, column: 13, scope: !3715)
!3718 = !DILocation(line: 196, column: 9, scope: !3715)
!3719 = !DILocation(line: 204, column: 69, scope: !3720)
!3720 = distinct !DILexicalBlock(scope: !3721, file: !550, line: 204, column: 11)
!3721 = distinct !DILexicalBlock(scope: !3708, file: !550, line: 199, column: 5)
!3722 = !DILocation(line: 205, column: 11, scope: !3720)
!3723 = !DILocation(line: 204, column: 11, scope: !3721)
!3724 = !DILocation(line: 206, column: 9, scope: !3720)
!3725 = !DILocation(line: 210, column: 7, scope: !551)
!3726 = !DILocation(line: 211, column: 25, scope: !551)
!3727 = !DILocation(line: 51, column: 17, scope: !3665, inlinedAt: !3728)
!3728 = distinct !DILocation(line: 211, column: 10, scope: !551)
!3729 = !DILocation(line: 51, column: 27, scope: !3665, inlinedAt: !3728)
!3730 = !DILocation(line: 53, column: 10, scope: !3674, inlinedAt: !3728)
!3731 = !DILocation(line: 207, column: 14, scope: !3721)
!3732 = !DILocation(line: 207, column: 18, scope: !3721)
!3733 = !DILocation(line: 207, column: 9, scope: !3721)
!3734 = !DILocation(line: 53, column: 8, scope: !3674, inlinedAt: !3728)
!3735 = !DILocation(line: 57, column: 7, scope: !3679, inlinedAt: !3728)
!3736 = !DILocation(line: 58, column: 7, scope: !3679, inlinedAt: !3728)
!3737 = !DILocation(line: 61, column: 7, scope: !3665, inlinedAt: !3728)
!3738 = !DILocation(line: 62, column: 8, scope: !3683, inlinedAt: !3728)
!3739 = !DILocation(line: 62, column: 13, scope: !3685, inlinedAt: !3728)
!3740 = !DILocation(line: 62, column: 10, scope: !3683, inlinedAt: !3728)
!3741 = !DILocation(line: 63, column: 5, scope: !3683, inlinedAt: !3728)
!3742 = !DILocation(line: 211, column: 3, scope: !551)
!3743 = distinct !DISubprogram(name: "xcharalloc", scope: !550, file: !550, line: 220, type: !1250, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !546, variables: !3744)
!3744 = !{!3745}
!3745 = !DILocalVariable(name: "n", arg: 1, scope: !3743, file: !550, line: 220, type: !27)
!3746 = !DILocation(line: 220, column: 20, scope: !3743)
!3747 = !DILocation(line: 39, column: 17, scope: !3624, inlinedAt: !3748)
!3748 = distinct !DILocation(line: 222, column: 10, scope: !3743)
!3749 = !DILocation(line: 41, column: 13, scope: !3624, inlinedAt: !3748)
!3750 = !DILocation(line: 41, column: 9, scope: !3624, inlinedAt: !3748)
!3751 = !DILocation(line: 42, column: 8, scope: !3635, inlinedAt: !3748)
!3752 = !DILocation(line: 42, column: 15, scope: !3637, inlinedAt: !3748)
!3753 = !DILocation(line: 42, column: 10, scope: !3635, inlinedAt: !3748)
!3754 = !DILocation(line: 43, column: 5, scope: !3635, inlinedAt: !3748)
!3755 = !DILocation(line: 222, column: 3, scope: !3743)
!3756 = distinct !DISubprogram(name: "x2realloc", scope: !3625, file: !3625, line: 74, type: !3757, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !546, variables: !3759)
!3757 = !DISubroutineType(types: !3758)
!3758 = !{!24, !24, !554}
!3759 = !{!3760, !3761}
!3760 = !DILocalVariable(name: "p", arg: 1, scope: !3756, file: !3625, line: 74, type: !24)
!3761 = !DILocalVariable(name: "pn", arg: 2, scope: !3756, file: !3625, line: 74, type: !554)
!3762 = !DILocation(line: 74, column: 18, scope: !3756)
!3763 = !DILocation(line: 74, column: 29, scope: !3756)
!3764 = !DILocation(line: 180, column: 19, scope: !551, inlinedAt: !3765)
!3765 = distinct !DILocation(line: 76, column: 10, scope: !3756)
!3766 = !DILocation(line: 180, column: 30, scope: !551, inlinedAt: !3765)
!3767 = !DILocation(line: 180, column: 41, scope: !551, inlinedAt: !3765)
!3768 = !DILocation(line: 182, column: 14, scope: !551, inlinedAt: !3765)
!3769 = !DILocation(line: 182, column: 10, scope: !551, inlinedAt: !3765)
!3770 = !DILocation(line: 184, column: 9, scope: !3708, inlinedAt: !3765)
!3771 = !DILocation(line: 184, column: 7, scope: !551, inlinedAt: !3765)
!3772 = !DILocation(line: 186, column: 13, scope: !3711, inlinedAt: !3765)
!3773 = !DILocation(line: 186, column: 11, scope: !3712, inlinedAt: !3765)
!3774 = !DILocation(line: 210, column: 7, scope: !551, inlinedAt: !3765)
!3775 = !DILocation(line: 51, column: 17, scope: !3665, inlinedAt: !3776)
!3776 = distinct !DILocation(line: 211, column: 10, scope: !551, inlinedAt: !3765)
!3777 = !DILocation(line: 51, column: 27, scope: !3665, inlinedAt: !3776)
!3778 = !DILocation(line: 53, column: 10, scope: !3674, inlinedAt: !3776)
!3779 = !DILocation(line: 205, column: 11, scope: !3720, inlinedAt: !3765)
!3780 = !DILocation(line: 204, column: 11, scope: !3721, inlinedAt: !3765)
!3781 = !DILocation(line: 206, column: 9, scope: !3720, inlinedAt: !3765)
!3782 = !DILocation(line: 207, column: 14, scope: !3721, inlinedAt: !3765)
!3783 = !DILocation(line: 207, column: 18, scope: !3721, inlinedAt: !3765)
!3784 = !DILocation(line: 207, column: 9, scope: !3721, inlinedAt: !3765)
!3785 = !DILocation(line: 53, column: 8, scope: !3674, inlinedAt: !3776)
!3786 = !DILocation(line: 57, column: 7, scope: !3679, inlinedAt: !3776)
!3787 = !DILocation(line: 58, column: 7, scope: !3679, inlinedAt: !3776)
!3788 = !DILocation(line: 61, column: 7, scope: !3665, inlinedAt: !3776)
!3789 = !DILocation(line: 62, column: 8, scope: !3683, inlinedAt: !3776)
!3790 = !DILocation(line: 62, column: 13, scope: !3685, inlinedAt: !3776)
!3791 = !DILocation(line: 62, column: 10, scope: !3683, inlinedAt: !3776)
!3792 = !DILocation(line: 63, column: 5, scope: !3683, inlinedAt: !3776)
!3793 = !DILocation(line: 76, column: 3, scope: !3756)
!3794 = distinct !DISubprogram(name: "xzalloc", scope: !3625, file: !3625, line: 84, type: !3626, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !546, variables: !3795)
!3795 = !{!3796}
!3796 = !DILocalVariable(name: "s", arg: 1, scope: !3794, file: !3625, line: 84, type: !27)
!3797 = !DILocation(line: 84, column: 17, scope: !3794)
!3798 = !DILocation(line: 39, column: 17, scope: !3624, inlinedAt: !3799)
!3799 = distinct !DILocation(line: 86, column: 18, scope: !3794)
!3800 = !DILocation(line: 41, column: 13, scope: !3624, inlinedAt: !3799)
!3801 = !DILocation(line: 41, column: 9, scope: !3624, inlinedAt: !3799)
!3802 = !DILocation(line: 42, column: 8, scope: !3635, inlinedAt: !3799)
!3803 = !DILocation(line: 42, column: 15, scope: !3637, inlinedAt: !3799)
!3804 = !DILocation(line: 42, column: 10, scope: !3635, inlinedAt: !3799)
!3805 = !DILocation(line: 43, column: 5, scope: !3635, inlinedAt: !3799)
!3806 = !DILocation(line: 86, column: 10, scope: !3794)
!3807 = !DILocation(line: 86, column: 3, scope: !3794)
!3808 = distinct !DISubprogram(name: "xcalloc", scope: !3625, file: !3625, line: 93, type: !1140, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !546, variables: !3809)
!3809 = !{!3810, !3811, !3812}
!3810 = !DILocalVariable(name: "n", arg: 1, scope: !3808, file: !3625, line: 93, type: !27)
!3811 = !DILocalVariable(name: "s", arg: 2, scope: !3808, file: !3625, line: 93, type: !27)
!3812 = !DILocalVariable(name: "p", scope: !3808, file: !3625, line: 95, type: !24)
!3813 = !DILocation(line: 93, column: 17, scope: !3808)
!3814 = !DILocation(line: 93, column: 27, scope: !3808)
!3815 = !DILocation(line: 100, column: 7, scope: !3816)
!3816 = distinct !DILexicalBlock(scope: !3808, file: !3625, line: 100, column: 7)
!3817 = !DILocation(line: 101, column: 7, scope: !3816)
!3818 = !DILocation(line: 101, column: 18, scope: !3819)
!3819 = !DILexicalBlockFile(scope: !3816, file: !3625, discriminator: 1)
!3820 = !DILocation(line: 95, column: 9, scope: !3808)
!3821 = !DILocation(line: 101, column: 16, scope: !3819)
!3822 = !DILocation(line: 100, column: 7, scope: !3823)
!3823 = !DILexicalBlockFile(scope: !3808, file: !3625, discriminator: 1)
!3824 = !DILocation(line: 102, column: 5, scope: !3816)
!3825 = !DILocation(line: 103, column: 3, scope: !3808)
!3826 = distinct !DISubprogram(name: "xmemdup", scope: !3625, file: !3625, line: 111, type: !3827, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !546, variables: !3829)
!3827 = !DISubroutineType(types: !3828)
!3828 = !{!24, !30, !27}
!3829 = !{!3830, !3831}
!3830 = !DILocalVariable(name: "p", arg: 1, scope: !3826, file: !3625, line: 111, type: !30)
!3831 = !DILocalVariable(name: "s", arg: 2, scope: !3826, file: !3625, line: 111, type: !27)
!3832 = !DILocation(line: 111, column: 22, scope: !3826)
!3833 = !DILocation(line: 111, column: 32, scope: !3826)
!3834 = !DILocation(line: 39, column: 17, scope: !3624, inlinedAt: !3835)
!3835 = distinct !DILocation(line: 113, column: 18, scope: !3826)
!3836 = !DILocation(line: 41, column: 13, scope: !3624, inlinedAt: !3835)
!3837 = !DILocation(line: 41, column: 9, scope: !3624, inlinedAt: !3835)
!3838 = !DILocation(line: 42, column: 8, scope: !3635, inlinedAt: !3835)
!3839 = !DILocation(line: 42, column: 15, scope: !3637, inlinedAt: !3835)
!3840 = !DILocation(line: 42, column: 10, scope: !3635, inlinedAt: !3835)
!3841 = !DILocation(line: 43, column: 5, scope: !3635, inlinedAt: !3835)
!3842 = !DILocation(line: 113, column: 10, scope: !3826)
!3843 = !DILocation(line: 113, column: 3, scope: !3826)
!3844 = distinct !DISubprogram(name: "xstrdup", scope: !3625, file: !3625, line: 119, type: !2813, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !546, variables: !3845)
!3845 = !{!3846}
!3846 = !DILocalVariable(name: "string", arg: 1, scope: !3844, file: !3625, line: 119, type: !35)
!3847 = !DILocation(line: 119, column: 22, scope: !3844)
!3848 = !DILocation(line: 121, column: 27, scope: !3844)
!3849 = !DILocation(line: 121, column: 43, scope: !3844)
!3850 = !DILocation(line: 111, column: 22, scope: !3826, inlinedAt: !3851)
!3851 = distinct !DILocation(line: 121, column: 10, scope: !3852)
!3852 = !DILexicalBlockFile(scope: !3844, file: !3625, discriminator: 1)
!3853 = !DILocation(line: 111, column: 32, scope: !3826, inlinedAt: !3851)
!3854 = !DILocation(line: 39, column: 17, scope: !3624, inlinedAt: !3855)
!3855 = distinct !DILocation(line: 113, column: 18, scope: !3826, inlinedAt: !3851)
!3856 = !DILocation(line: 41, column: 13, scope: !3624, inlinedAt: !3855)
!3857 = !DILocation(line: 41, column: 9, scope: !3624, inlinedAt: !3855)
!3858 = !DILocation(line: 42, column: 8, scope: !3635, inlinedAt: !3855)
!3859 = !DILocation(line: 42, column: 15, scope: !3637, inlinedAt: !3855)
!3860 = !DILocation(line: 42, column: 10, scope: !3635, inlinedAt: !3855)
!3861 = !DILocation(line: 43, column: 5, scope: !3635, inlinedAt: !3855)
!3862 = !DILocation(line: 113, column: 10, scope: !3826, inlinedAt: !3851)
!3863 = !DILocation(line: 121, column: 3, scope: !3844)
!3864 = distinct !DISubprogram(name: "xalloc_die", scope: !3865, file: !3865, line: 32, type: !1306, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !563, variables: !84)
!3865 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3866 = !DILocation(line: 34, column: 10, scope: !3864)
!3867 = !DILocation(line: 34, column: 33, scope: !3864)
!3868 = !DILocation(line: 34, column: 3, scope: !3869)
!3869 = !DILexicalBlockFile(scope: !3864, file: !3865, discriminator: 1)
!3870 = !DILocation(line: 40, column: 3, scope: !3864)
!3871 = distinct !DISubprogram(name: "xgetcwd", scope: !3872, file: !3872, line: 35, type: !705, isLocal: false, isDefinition: true, scopeLine: 36, flags: DIFlagPrototyped, isOptimized: true, unit: !565, variables: !3873)
!3872 = !DIFile(filename: "lib/xgetcwd.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3873 = !{!3874}
!3874 = !DILocalVariable(name: "cwd", scope: !3871, file: !3872, line: 37, type: !25)
!3875 = !DILocation(line: 37, column: 15, scope: !3871)
!3876 = !DILocation(line: 37, column: 9, scope: !3871)
!3877 = !DILocation(line: 38, column: 9, scope: !3878)
!3878 = distinct !DILexicalBlock(scope: !3871, file: !3872, line: 38, column: 7)
!3879 = !DILocation(line: 38, column: 13, scope: !3878)
!3880 = !DILocation(line: 38, column: 16, scope: !3881)
!3881 = !DILexicalBlockFile(scope: !3878, file: !3872, discriminator: 1)
!3882 = !DILocation(line: 38, column: 22, scope: !3881)
!3883 = !DILocation(line: 38, column: 7, scope: !3884)
!3884 = !DILexicalBlockFile(scope: !3871, file: !3872, discriminator: 1)
!3885 = !DILocation(line: 39, column: 5, scope: !3878)
!3886 = !DILocation(line: 40, column: 3, scope: !3871)
!3887 = distinct !DISubprogram(name: "rpl_calloc", scope: !3888, file: !3888, line: 42, type: !1140, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !567, variables: !3889)
!3888 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3889 = !{!3890, !3891, !3892, !3893}
!3890 = !DILocalVariable(name: "n", arg: 1, scope: !3887, file: !3888, line: 42, type: !27)
!3891 = !DILocalVariable(name: "s", arg: 2, scope: !3887, file: !3888, line: 42, type: !27)
!3892 = !DILocalVariable(name: "result", scope: !3887, file: !3888, line: 44, type: !24)
!3893 = !DILocalVariable(name: "bytes", scope: !3894, file: !3888, line: 56, type: !27)
!3894 = distinct !DILexicalBlock(scope: !3895, file: !3888, line: 53, column: 5)
!3895 = distinct !DILexicalBlock(scope: !3887, file: !3888, line: 47, column: 7)
!3896 = !DILocation(line: 42, column: 20, scope: !3887)
!3897 = !DILocation(line: 42, column: 30, scope: !3887)
!3898 = !DILocation(line: 47, column: 9, scope: !3895)
!3899 = !DILocation(line: 47, column: 19, scope: !3900)
!3900 = !DILexicalBlockFile(scope: !3895, file: !3888, discriminator: 1)
!3901 = !DILocation(line: 47, column: 14, scope: !3895)
!3902 = !DILocation(line: 56, column: 24, scope: !3894)
!3903 = !DILocation(line: 56, column: 14, scope: !3894)
!3904 = !DILocation(line: 57, column: 17, scope: !3905)
!3905 = distinct !DILexicalBlock(scope: !3894, file: !3888, line: 57, column: 11)
!3906 = !DILocation(line: 57, column: 21, scope: !3905)
!3907 = !DILocation(line: 57, column: 11, scope: !3894)
!3908 = !DILocation(line: 59, column: 11, scope: !3909)
!3909 = distinct !DILexicalBlock(scope: !3905, file: !3888, line: 58, column: 9)
!3910 = !DILocation(line: 59, column: 17, scope: !3909)
!3911 = !DILocation(line: 65, column: 12, scope: !3887)
!3912 = !DILocation(line: 44, column: 9, scope: !3887)
!3913 = !DILocation(line: 72, column: 3, scope: !3887)
!3914 = !DILocation(line: 73, column: 1, scope: !3887)
!3915 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !3916, file: !3916, line: 334, type: !3917, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !569, variables: !3931)
!3916 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3917 = !DISubroutineType(types: !3918)
!3918 = !{!27, !3919, !35, !27, !3920}
!3919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1597, size: 64)
!3920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3921, size: 64)
!3921 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1582, line: 107, baseType: !3922)
!3922 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1582, line: 95, baseType: !3923)
!3923 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1582, line: 83, size: 64, elements: !3924)
!3924 = !{!3925, !3926}
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3923, file: !1582, line: 85, baseType: !64, size: 32)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3923, file: !1582, line: 94, baseType: !3927, size: 32, offset: 32)
!3927 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3923, file: !1582, line: 86, size: 32, elements: !3928)
!3928 = !{!3929, !3930}
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3927, file: !1582, line: 89, baseType: !152, size: 32)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3927, file: !1582, line: 93, baseType: !1592, size: 32)
!3931 = !{!3932, !3933, !3934, !3935, !3936, !3937, !3938}
!3932 = !DILocalVariable(name: "pwc", arg: 1, scope: !3915, file: !3916, line: 334, type: !3919)
!3933 = !DILocalVariable(name: "s", arg: 2, scope: !3915, file: !3916, line: 334, type: !35)
!3934 = !DILocalVariable(name: "n", arg: 3, scope: !3915, file: !3916, line: 334, type: !27)
!3935 = !DILocalVariable(name: "ps", arg: 4, scope: !3915, file: !3916, line: 334, type: !3920)
!3936 = !DILocalVariable(name: "ret", scope: !3915, file: !3916, line: 336, type: !27)
!3937 = !DILocalVariable(name: "wc", scope: !3915, file: !3916, line: 337, type: !1597)
!3938 = !DILocalVariable(name: "uc", scope: !3939, file: !3916, line: 398, type: !34)
!3939 = distinct !DILexicalBlock(scope: !3940, file: !3916, line: 397, column: 5)
!3940 = distinct !DILexicalBlock(scope: !3915, file: !3916, line: 396, column: 7)
!3941 = !DILocation(line: 334, column: 23, scope: !3915)
!3942 = !DILocation(line: 334, column: 40, scope: !3915)
!3943 = !DILocation(line: 334, column: 50, scope: !3915)
!3944 = !DILocation(line: 334, column: 64, scope: !3915)
!3945 = !DILocation(line: 337, column: 3, scope: !3915)
!3946 = !DILocation(line: 353, column: 9, scope: !3947)
!3947 = distinct !DILexicalBlock(scope: !3915, file: !3916, line: 353, column: 7)
!3948 = !DILocation(line: 353, column: 7, scope: !3915)
!3949 = !DILocation(line: 388, column: 9, scope: !3915)
!3950 = !DILocation(line: 336, column: 10, scope: !3915)
!3951 = !DILocation(line: 396, column: 19, scope: !3940)
!3952 = !DILocation(line: 396, column: 31, scope: !3953)
!3953 = !DILexicalBlockFile(scope: !3940, file: !3916, discriminator: 1)
!3954 = !DILocation(line: 396, column: 26, scope: !3940)
!3955 = !DILocation(line: 396, column: 41, scope: !3956)
!3956 = !DILexicalBlockFile(scope: !3940, file: !3916, discriminator: 2)
!3957 = !DILocation(line: 396, column: 7, scope: !3958)
!3958 = !DILexicalBlockFile(scope: !3915, file: !3916, discriminator: 2)
!3959 = !DILocation(line: 398, column: 26, scope: !3939)
!3960 = !DILocation(line: 398, column: 21, scope: !3939)
!3961 = !DILocation(line: 399, column: 14, scope: !3939)
!3962 = !DILocation(line: 399, column: 12, scope: !3939)
!3963 = !DILocation(line: 405, column: 1, scope: !3915)
!3964 = distinct !DISubprogram(name: "close_stream", scope: !3965, file: !3965, line: 56, type: !3966, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !572, variables: !4008)
!3965 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3966 = !DISubroutineType(types: !3967)
!3967 = !{!64, !3968}
!3968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3969, size: 64)
!3969 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3396, line: 49, baseType: !3970)
!3970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3398, line: 241, size: 1728, elements: !3971)
!3971 = !{!3972, !3973, !3974, !3975, !3976, !3977, !3978, !3979, !3980, !3981, !3982, !3983, !3984, !3992, !3993, !3994, !3995, !3996, !3997, !3998, !3999, !4000, !4001, !4002, !4003, !4004, !4005, !4006, !4007}
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3970, file: !3398, line: 242, baseType: !64, size: 32)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3970, file: !3398, line: 247, baseType: !25, size: 64, offset: 64)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3970, file: !3398, line: 248, baseType: !25, size: 64, offset: 128)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3970, file: !3398, line: 249, baseType: !25, size: 64, offset: 192)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3970, file: !3398, line: 250, baseType: !25, size: 64, offset: 256)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3970, file: !3398, line: 251, baseType: !25, size: 64, offset: 320)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3970, file: !3398, line: 252, baseType: !25, size: 64, offset: 384)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3970, file: !3398, line: 253, baseType: !25, size: 64, offset: 448)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3970, file: !3398, line: 254, baseType: !25, size: 64, offset: 512)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3970, file: !3398, line: 256, baseType: !25, size: 64, offset: 576)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3970, file: !3398, line: 257, baseType: !25, size: 64, offset: 640)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3970, file: !3398, line: 258, baseType: !25, size: 64, offset: 704)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3970, file: !3398, line: 260, baseType: !3985, size: 64, offset: 768)
!3985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3986, size: 64)
!3986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3398, line: 156, size: 192, elements: !3987)
!3987 = !{!3988, !3989, !3991}
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3986, file: !3398, line: 157, baseType: !3985, size: 64)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3986, file: !3398, line: 158, baseType: !3990, size: 64, offset: 64)
!3990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3970, size: 64)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3986, file: !3398, line: 162, baseType: !64, size: 32, offset: 128)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3970, file: !3398, line: 262, baseType: !3990, size: 64, offset: 832)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3970, file: !3398, line: 264, baseType: !64, size: 32, offset: 896)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3970, file: !3398, line: 268, baseType: !64, size: 32, offset: 928)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3970, file: !3398, line: 270, baseType: !728, size: 64, offset: 960)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3970, file: !3398, line: 274, baseType: !135, size: 16, offset: 1024)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3970, file: !3398, line: 275, baseType: !3426, size: 8, offset: 1040)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3970, file: !3398, line: 276, baseType: !3428, size: 8, offset: 1048)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3970, file: !3398, line: 280, baseType: !3432, size: 64, offset: 1088)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3970, file: !3398, line: 289, baseType: !3435, size: 64, offset: 1152)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3970, file: !3398, line: 297, baseType: !24, size: 64, offset: 1216)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3970, file: !3398, line: 298, baseType: !24, size: 64, offset: 1280)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3970, file: !3398, line: 299, baseType: !24, size: 64, offset: 1344)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3970, file: !3398, line: 300, baseType: !24, size: 64, offset: 1408)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3970, file: !3398, line: 302, baseType: !27, size: 64, offset: 1472)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3970, file: !3398, line: 303, baseType: !64, size: 32, offset: 1536)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3970, file: !3398, line: 305, baseType: !3443, size: 160, offset: 1568)
!4008 = !{!4009, !4010, !4012, !4013}
!4009 = !DILocalVariable(name: "stream", arg: 1, scope: !3964, file: !3965, line: 56, type: !3968)
!4010 = !DILocalVariable(name: "some_pending", scope: !3964, file: !3965, line: 58, type: !4011)
!4011 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !94)
!4012 = !DILocalVariable(name: "prev_fail", scope: !3964, file: !3965, line: 59, type: !4011)
!4013 = !DILocalVariable(name: "fclose_fail", scope: !3964, file: !3965, line: 60, type: !4011)
!4014 = !DILocation(line: 56, column: 21, scope: !3964)
!4015 = !DILocation(line: 58, column: 30, scope: !3964)
!4016 = !DILocalVariable(name: "__stream", arg: 1, scope: !4017, file: !4018, line: 132, type: !3968)
!4017 = distinct !DISubprogram(name: "ferror_unlocked", scope: !4018, file: !4018, line: 132, type: !3966, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !572, variables: !4019)
!4018 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4019 = !{!4016}
!4020 = !DILocation(line: 132, column: 1, scope: !4017, inlinedAt: !4021)
!4021 = distinct !DILocation(line: 59, column: 27, scope: !3964)
!4022 = !DILocation(line: 134, column: 10, scope: !4017, inlinedAt: !4021)
!4023 = !{!4024, !693, i64 0}
!4024 = !{!"_IO_FILE", !693, i64 0, !602, i64 8, !602, i64 16, !602, i64 24, !602, i64 32, !602, i64 40, !602, i64 48, !602, i64 56, !602, i64 64, !602, i64 72, !602, i64 80, !602, i64 88, !602, i64 96, !602, i64 104, !693, i64 112, !693, i64 116, !806, i64 120, !1091, i64 128, !603, i64 130, !603, i64 131, !602, i64 136, !806, i64 144, !602, i64 152, !602, i64 160, !602, i64 168, !602, i64 176, !806, i64 184, !693, i64 192, !603, i64 196}
!4025 = !DILocation(line: 59, column: 43, scope: !3964)
!4026 = !DILocation(line: 60, column: 29, scope: !3964)
!4027 = !DILocation(line: 60, column: 45, scope: !3964)
!4028 = !DILocation(line: 70, column: 17, scope: !4029)
!4029 = distinct !DILexicalBlock(scope: !3964, file: !3965, line: 70, column: 7)
!4030 = !DILocation(line: 70, column: 33, scope: !4031)
!4031 = !DILexicalBlockFile(scope: !4029, file: !3965, discriminator: 1)
!4032 = !DILocation(line: 70, column: 53, scope: !4033)
!4033 = !DILexicalBlockFile(scope: !4029, file: !3965, discriminator: 3)
!4034 = !DILocation(line: 70, column: 7, scope: !4035)
!4035 = !DILexicalBlockFile(scope: !3964, file: !3965, discriminator: 3)
!4036 = !DILocation(line: 72, column: 11, scope: !4037)
!4037 = distinct !DILexicalBlock(scope: !4029, file: !3965, line: 71, column: 5)
!4038 = !DILocation(line: 73, column: 9, scope: !4039)
!4039 = distinct !DILexicalBlock(scope: !4037, file: !3965, line: 72, column: 11)
!4040 = !DILocation(line: 73, column: 15, scope: !4039)
!4041 = !DILocation(line: 78, column: 1, scope: !3964)
!4042 = distinct !DISubprogram(name: "hard_locale", scope: !4043, file: !4043, line: 38, type: !4044, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !574, variables: !4046)
!4043 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4044 = !DISubroutineType(types: !4045)
!4045 = !{!94, !64}
!4046 = !{!4047, !4048, !4049, !4050, !4057, !4058, !4060, !4061, !4063, !4064, !4066}
!4047 = !DILocalVariable(name: "category", arg: 1, scope: !4042, file: !4043, line: 38, type: !64)
!4048 = !DILocalVariable(name: "hard", scope: !4042, file: !4043, line: 40, type: !94)
!4049 = !DILocalVariable(name: "p", scope: !4042, file: !4043, line: 41, type: !35)
!4050 = !DILocalVariable(name: "__s1_len", scope: !4051, file: !4043, line: 47, type: !27)
!4051 = distinct !DILexicalBlock(scope: !4052, file: !4043, line: 47, column: 15)
!4052 = distinct !DILexicalBlock(scope: !4053, file: !4043, line: 47, column: 15)
!4053 = distinct !DILexicalBlock(scope: !4054, file: !4043, line: 46, column: 9)
!4054 = distinct !DILexicalBlock(scope: !4055, file: !4043, line: 45, column: 11)
!4055 = distinct !DILexicalBlock(scope: !4056, file: !4043, line: 44, column: 5)
!4056 = distinct !DILexicalBlock(scope: !4042, file: !4043, line: 43, column: 7)
!4057 = !DILocalVariable(name: "__s2_len", scope: !4051, file: !4043, line: 47, type: !27)
!4058 = !DILocalVariable(name: "__s2", scope: !4059, file: !4043, line: 47, type: !32)
!4059 = distinct !DILexicalBlock(scope: !4051, file: !4043, line: 47, column: 15)
!4060 = !DILocalVariable(name: "__result", scope: !4059, file: !4043, line: 47, type: !64)
!4061 = !DILocalVariable(name: "__s1_len", scope: !4062, file: !4043, line: 47, type: !27)
!4062 = distinct !DILexicalBlock(scope: !4052, file: !4043, line: 47, column: 39)
!4063 = !DILocalVariable(name: "__s2_len", scope: !4062, file: !4043, line: 47, type: !27)
!4064 = !DILocalVariable(name: "__s2", scope: !4065, file: !4043, line: 47, type: !32)
!4065 = distinct !DILexicalBlock(scope: !4062, file: !4043, line: 47, column: 39)
!4066 = !DILocalVariable(name: "__result", scope: !4065, file: !4043, line: 47, type: !64)
!4067 = !DILocation(line: 38, column: 18, scope: !4042)
!4068 = !DILocation(line: 40, column: 8, scope: !4042)
!4069 = !DILocation(line: 41, column: 19, scope: !4042)
!4070 = !DILocation(line: 41, column: 15, scope: !4042)
!4071 = !DILocation(line: 43, column: 7, scope: !4056)
!4072 = !DILocation(line: 43, column: 7, scope: !4042)
!4073 = !DILocation(line: 47, column: 15, scope: !4051)
!4074 = !DILocation(line: 47, column: 15, scope: !4059)
!4075 = !DILocation(line: 47, column: 15, scope: !4076)
!4076 = !DILexicalBlockFile(scope: !4059, file: !4043, discriminator: 2)
!4077 = !DILocation(line: 47, column: 15, scope: !4078)
!4078 = !DILexicalBlockFile(scope: !4079, file: !4043, discriminator: 3)
!4079 = distinct !DILexicalBlock(scope: !4059, file: !4043, line: 47, column: 15)
!4080 = !DILocation(line: 47, column: 15, scope: !4081)
!4081 = !DILexicalBlockFile(scope: !4079, file: !4043, discriminator: 2)
!4082 = !DILocation(line: 47, column: 15, scope: !4083)
!4083 = !DILexicalBlockFile(scope: !4084, file: !4043, discriminator: 4)
!4084 = distinct !DILexicalBlock(scope: !4079, file: !4043, line: 47, column: 15)
!4085 = !DILocation(line: 47, column: 15, scope: !4086)
!4086 = !DILexicalBlockFile(scope: !4051, file: !4043, discriminator: 11)
!4087 = !DILocation(line: 47, column: 36, scope: !4088)
!4088 = !DILexicalBlockFile(scope: !4052, file: !4043, discriminator: 13)
!4089 = !DILocation(line: 47, column: 39, scope: !4062)
!4090 = !DILocation(line: 47, column: 39, scope: !4091)
!4091 = !DILexicalBlockFile(scope: !4062, file: !4043, discriminator: 26)
!4092 = !DILocation(line: 47, column: 59, scope: !4093)
!4093 = !DILexicalBlockFile(scope: !4052, file: !4043, discriminator: 27)
!4094 = !DILocation(line: 47, column: 15, scope: !4095)
!4095 = !DILexicalBlockFile(scope: !4053, file: !4043, discriminator: 27)
!4096 = !DILocation(line: 48, column: 13, scope: !4052)
!4097 = !DILocation(line: 71, column: 3, scope: !4042)
!4098 = distinct !DISubprogram(name: "locale_charset", scope: !534, file: !534, line: 393, type: !4099, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !190, variables: !4101)
!4099 = !DISubroutineType(types: !4100)
!4100 = !{!35}
!4101 = !{!4102, !4103, !4104, !4109}
!4102 = !DILocalVariable(name: "codeset", scope: !4098, file: !534, line: 395, type: !35)
!4103 = !DILocalVariable(name: "aliases", scope: !4098, file: !534, line: 396, type: !35)
!4104 = !DILocalVariable(name: "__s1_len", scope: !4105, file: !534, line: 592, type: !27)
!4105 = distinct !DILexicalBlock(scope: !4106, file: !534, line: 592, column: 9)
!4106 = distinct !DILexicalBlock(scope: !4107, file: !534, line: 592, column: 9)
!4107 = distinct !DILexicalBlock(scope: !4108, file: !534, line: 589, column: 3)
!4108 = distinct !DILexicalBlock(scope: !4098, file: !534, line: 589, column: 3)
!4109 = !DILocalVariable(name: "__s2_len", scope: !4105, file: !534, line: 592, type: !27)
!4110 = !DILocalVariable(name: "buf1", scope: !4111, file: !534, line: 196, type: !4178)
!4111 = distinct !DILexicalBlock(scope: !4112, file: !534, line: 194, column: 21)
!4112 = distinct !DILexicalBlock(scope: !4113, file: !534, line: 193, column: 19)
!4113 = distinct !DILexicalBlock(scope: !4114, file: !534, line: 193, column: 19)
!4114 = distinct !DILexicalBlock(scope: !4115, file: !534, line: 188, column: 17)
!4115 = distinct !DILexicalBlock(scope: !4116, file: !534, line: 181, column: 19)
!4116 = distinct !DILexicalBlock(scope: !4117, file: !534, line: 177, column: 13)
!4117 = distinct !DILexicalBlock(scope: !4118, file: !534, line: 173, column: 15)
!4118 = distinct !DILexicalBlock(scope: !4119, file: !534, line: 161, column: 9)
!4119 = distinct !DILexicalBlock(scope: !4120, file: !534, line: 157, column: 11)
!4120 = distinct !DILexicalBlock(scope: !4121, file: !534, line: 130, column: 5)
!4121 = distinct !DILexicalBlock(scope: !4122, file: !534, line: 129, column: 7)
!4122 = distinct !DISubprogram(name: "get_charset_aliases", scope: !534, file: !534, line: 124, type: !4099, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !190, variables: !4123)
!4123 = !{!4124, !4125, !4126, !4127, !4128, !4130, !4131, !4132, !4133, !4174, !4175, !4176, !4110, !4177, !4181, !4182, !4183}
!4124 = !DILocalVariable(name: "cp", scope: !4122, file: !534, line: 126, type: !35)
!4125 = !DILocalVariable(name: "dir", scope: !4120, file: !534, line: 132, type: !35)
!4126 = !DILocalVariable(name: "base", scope: !4120, file: !534, line: 133, type: !35)
!4127 = !DILocalVariable(name: "file_name", scope: !4120, file: !534, line: 134, type: !25)
!4128 = !DILocalVariable(name: "dir_len", scope: !4129, file: !534, line: 144, type: !27)
!4129 = distinct !DILexicalBlock(scope: !4120, file: !534, line: 143, column: 7)
!4130 = !DILocalVariable(name: "base_len", scope: !4129, file: !534, line: 145, type: !27)
!4131 = !DILocalVariable(name: "add_slash", scope: !4129, file: !534, line: 146, type: !64)
!4132 = !DILocalVariable(name: "fd", scope: !4118, file: !534, line: 162, type: !64)
!4133 = !DILocalVariable(name: "fp", scope: !4116, file: !534, line: 178, type: !4134)
!4134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4135, size: 64)
!4135 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3396, line: 49, baseType: !4136)
!4136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3398, line: 241, size: 1728, elements: !4137)
!4137 = !{!4138, !4139, !4140, !4141, !4142, !4143, !4144, !4145, !4146, !4147, !4148, !4149, !4150, !4158, !4159, !4160, !4161, !4162, !4163, !4164, !4165, !4166, !4167, !4168, !4169, !4170, !4171, !4172, !4173}
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4136, file: !3398, line: 242, baseType: !64, size: 32)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4136, file: !3398, line: 247, baseType: !25, size: 64, offset: 64)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4136, file: !3398, line: 248, baseType: !25, size: 64, offset: 128)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4136, file: !3398, line: 249, baseType: !25, size: 64, offset: 192)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4136, file: !3398, line: 250, baseType: !25, size: 64, offset: 256)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4136, file: !3398, line: 251, baseType: !25, size: 64, offset: 320)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4136, file: !3398, line: 252, baseType: !25, size: 64, offset: 384)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4136, file: !3398, line: 253, baseType: !25, size: 64, offset: 448)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4136, file: !3398, line: 254, baseType: !25, size: 64, offset: 512)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4136, file: !3398, line: 256, baseType: !25, size: 64, offset: 576)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4136, file: !3398, line: 257, baseType: !25, size: 64, offset: 640)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4136, file: !3398, line: 258, baseType: !25, size: 64, offset: 704)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4136, file: !3398, line: 260, baseType: !4151, size: 64, offset: 768)
!4151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4152, size: 64)
!4152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3398, line: 156, size: 192, elements: !4153)
!4153 = !{!4154, !4155, !4157}
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4152, file: !3398, line: 157, baseType: !4151, size: 64)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4152, file: !3398, line: 158, baseType: !4156, size: 64, offset: 64)
!4156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4136, size: 64)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4152, file: !3398, line: 162, baseType: !64, size: 32, offset: 128)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4136, file: !3398, line: 262, baseType: !4156, size: 64, offset: 832)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4136, file: !3398, line: 264, baseType: !64, size: 32, offset: 896)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4136, file: !3398, line: 268, baseType: !64, size: 32, offset: 928)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4136, file: !3398, line: 270, baseType: !728, size: 64, offset: 960)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4136, file: !3398, line: 274, baseType: !135, size: 16, offset: 1024)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4136, file: !3398, line: 275, baseType: !3426, size: 8, offset: 1040)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4136, file: !3398, line: 276, baseType: !3428, size: 8, offset: 1048)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4136, file: !3398, line: 280, baseType: !3432, size: 64, offset: 1088)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4136, file: !3398, line: 289, baseType: !3435, size: 64, offset: 1152)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4136, file: !3398, line: 297, baseType: !24, size: 64, offset: 1216)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4136, file: !3398, line: 298, baseType: !24, size: 64, offset: 1280)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4136, file: !3398, line: 299, baseType: !24, size: 64, offset: 1344)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4136, file: !3398, line: 300, baseType: !24, size: 64, offset: 1408)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4136, file: !3398, line: 302, baseType: !27, size: 64, offset: 1472)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4136, file: !3398, line: 303, baseType: !64, size: 32, offset: 1536)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4136, file: !3398, line: 305, baseType: !3443, size: 160, offset: 1568)
!4174 = !DILocalVariable(name: "res_ptr", scope: !4114, file: !534, line: 190, type: !25)
!4175 = !DILocalVariable(name: "res_size", scope: !4114, file: !534, line: 191, type: !27)
!4176 = !DILocalVariable(name: "c", scope: !4111, file: !534, line: 195, type: !64)
!4177 = !DILocalVariable(name: "buf2", scope: !4111, file: !534, line: 197, type: !4178)
!4178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 408, elements: !4179)
!4179 = !{!4180}
!4180 = !DISubrange(count: 51)
!4181 = !DILocalVariable(name: "l1", scope: !4111, file: !534, line: 198, type: !27)
!4182 = !DILocalVariable(name: "l2", scope: !4111, file: !534, line: 198, type: !27)
!4183 = !DILocalVariable(name: "old_res_ptr", scope: !4111, file: !534, line: 199, type: !25)
!4184 = !DILocation(line: 196, column: 28, scope: !4111, inlinedAt: !4185)
!4185 = distinct !DILocation(line: 589, column: 18, scope: !4108)
!4186 = !DILocation(line: 197, column: 28, scope: !4111, inlinedAt: !4185)
!4187 = !DILocation(line: 403, column: 13, scope: !4098)
!4188 = !DILocation(line: 395, column: 15, scope: !4098)
!4189 = !DILocation(line: 584, column: 15, scope: !4190)
!4190 = distinct !DILexicalBlock(scope: !4098, file: !534, line: 584, column: 7)
!4191 = !DILocation(line: 584, column: 7, scope: !4098)
!4192 = !DILocation(line: 128, column: 8, scope: !4122, inlinedAt: !4185)
!4193 = !DILocation(line: 126, column: 15, scope: !4122, inlinedAt: !4185)
!4194 = !DILocation(line: 129, column: 10, scope: !4121, inlinedAt: !4185)
!4195 = !DILocation(line: 129, column: 7, scope: !4122, inlinedAt: !4185)
!4196 = !DILocation(line: 138, column: 13, scope: !4120, inlinedAt: !4185)
!4197 = !DILocation(line: 132, column: 19, scope: !4120, inlinedAt: !4185)
!4198 = !DILocation(line: 139, column: 15, scope: !4199, inlinedAt: !4185)
!4199 = distinct !DILexicalBlock(scope: !4120, file: !534, line: 139, column: 11)
!4200 = !DILocation(line: 139, column: 23, scope: !4199, inlinedAt: !4185)
!4201 = !DILocation(line: 139, column: 26, scope: !4202, inlinedAt: !4185)
!4202 = !DILexicalBlockFile(scope: !4199, file: !534, discriminator: 1)
!4203 = !DILocation(line: 139, column: 33, scope: !4202, inlinedAt: !4185)
!4204 = !DILocation(line: 139, column: 11, scope: !4205, inlinedAt: !4185)
!4205 = !DILexicalBlockFile(scope: !4120, file: !534, discriminator: 1)
!4206 = !DILocation(line: 140, column: 9, scope: !4199, inlinedAt: !4185)
!4207 = !DILocation(line: 144, column: 26, scope: !4129, inlinedAt: !4185)
!4208 = !DILocation(line: 144, column: 16, scope: !4129, inlinedAt: !4185)
!4209 = !DILocation(line: 145, column: 16, scope: !4129, inlinedAt: !4185)
!4210 = !DILocation(line: 146, column: 34, scope: !4129, inlinedAt: !4185)
!4211 = !DILocation(line: 146, column: 38, scope: !4129, inlinedAt: !4185)
!4212 = !DILocation(line: 146, column: 42, scope: !4213, inlinedAt: !4185)
!4213 = !DILexicalBlockFile(scope: !4129, file: !534, discriminator: 1)
!4214 = !DILocation(line: 146, column: 41, scope: !4213, inlinedAt: !4185)
!4215 = !DILocation(line: 147, column: 48, scope: !4129, inlinedAt: !4185)
!4216 = !DILocation(line: 147, column: 46, scope: !4129, inlinedAt: !4185)
!4217 = !DILocation(line: 147, column: 69, scope: !4129, inlinedAt: !4185)
!4218 = !DILocation(line: 147, column: 30, scope: !4129, inlinedAt: !4185)
!4219 = !DILocation(line: 134, column: 13, scope: !4120, inlinedAt: !4185)
!4220 = !DILocation(line: 148, column: 13, scope: !4129, inlinedAt: !4185)
!4221 = !DILocation(line: 150, column: 13, scope: !4222, inlinedAt: !4185)
!4222 = distinct !DILexicalBlock(scope: !4223, file: !534, line: 149, column: 11)
!4223 = distinct !DILexicalBlock(scope: !4129, file: !534, line: 148, column: 13)
!4224 = !DILocation(line: 151, column: 17, scope: !4222, inlinedAt: !4185)
!4225 = !DILocation(line: 152, column: 34, scope: !4226, inlinedAt: !4185)
!4226 = distinct !DILexicalBlock(scope: !4222, file: !534, line: 151, column: 17)
!4227 = !DILocation(line: 153, column: 41, scope: !4222, inlinedAt: !4185)
!4228 = !DILocation(line: 153, column: 13, scope: !4222, inlinedAt: !4185)
!4229 = !DILocation(line: 157, column: 11, scope: !4120, inlinedAt: !4185)
!4230 = !DILocation(line: 171, column: 16, scope: !4118, inlinedAt: !4185)
!4231 = !DILocation(line: 162, column: 15, scope: !4118, inlinedAt: !4185)
!4232 = !DILocation(line: 173, column: 18, scope: !4117, inlinedAt: !4185)
!4233 = !DILocation(line: 173, column: 15, scope: !4118, inlinedAt: !4185)
!4234 = !DILocation(line: 180, column: 20, scope: !4116, inlinedAt: !4185)
!4235 = !DILocation(line: 178, column: 21, scope: !4116, inlinedAt: !4185)
!4236 = !DILocation(line: 181, column: 22, scope: !4115, inlinedAt: !4185)
!4237 = !DILocation(line: 181, column: 19, scope: !4116, inlinedAt: !4185)
!4238 = !DILocation(line: 190, column: 25, scope: !4114, inlinedAt: !4185)
!4239 = !DILocation(line: 184, column: 19, scope: !4240, inlinedAt: !4185)
!4240 = distinct !DILexicalBlock(scope: !4115, file: !534, line: 182, column: 17)
!4241 = !DILocation(line: 186, column: 17, scope: !4240, inlinedAt: !4185)
!4242 = !DILocation(line: 191, column: 26, scope: !4114, inlinedAt: !4185)
!4243 = !DILocation(line: 196, column: 23, scope: !4111, inlinedAt: !4185)
!4244 = !DILocation(line: 197, column: 23, scope: !4111, inlinedAt: !4185)
!4245 = !DILocalVariable(name: "__fp", arg: 1, scope: !4246, file: !4018, line: 63, type: !4134)
!4246 = distinct !DISubprogram(name: "getc_unlocked", scope: !4018, file: !4018, line: 63, type: !4247, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !190, variables: !4249)
!4247 = !DISubroutineType(types: !4248)
!4248 = !{!64, !4134}
!4249 = !{!4245}
!4250 = !DILocation(line: 63, column: 22, scope: !4246, inlinedAt: !4251)
!4251 = distinct !DILocation(line: 201, column: 27, scope: !4111, inlinedAt: !4185)
!4252 = !DILocation(line: 65, column: 10, scope: !4246, inlinedAt: !4251)
!4253 = !{!4024, !602, i64 8}
!4254 = !{!4024, !602, i64 16}
!4255 = !{!"branch_weights", i32 2000, i32 1}
!4256 = !DILocation(line: 65, column: 10, scope: !4257, inlinedAt: !4251)
!4257 = !DILexicalBlockFile(scope: !4246, file: !4018, discriminator: 1)
!4258 = !DILocation(line: 65, column: 10, scope: !4259, inlinedAt: !4251)
!4259 = !DILexicalBlockFile(scope: !4246, file: !4018, discriminator: 2)
!4260 = !DILocation(line: 65, column: 10, scope: !4261, inlinedAt: !4251)
!4261 = !DILexicalBlockFile(scope: !4246, file: !4018, discriminator: 3)
!4262 = !DILocation(line: 195, column: 27, scope: !4111, inlinedAt: !4185)
!4263 = !DILocation(line: 202, column: 27, scope: !4111, inlinedAt: !4185)
!4264 = !DILocation(line: 63, column: 22, scope: !4246, inlinedAt: !4265)
!4265 = distinct !DILocation(line: 210, column: 33, scope: !4266, inlinedAt: !4185)
!4266 = distinct !DILexicalBlock(scope: !4267, file: !534, line: 207, column: 25)
!4267 = distinct !DILexicalBlock(scope: !4111, file: !534, line: 206, column: 27)
!4268 = !DILocation(line: 65, column: 10, scope: !4246, inlinedAt: !4265)
!4269 = !DILocation(line: 65, column: 10, scope: !4257, inlinedAt: !4265)
!4270 = !DILocation(line: 65, column: 10, scope: !4259, inlinedAt: !4265)
!4271 = !DILocation(line: 65, column: 10, scope: !4261, inlinedAt: !4265)
!4272 = !DILocation(line: 210, column: 29, scope: !4273, inlinedAt: !4185)
!4273 = !DILexicalBlockFile(scope: !4266, file: !534, discriminator: 1)
!4274 = distinct !{!4274, !4275, !4276}
!4275 = !DILocation(line: 193, column: 19, scope: !4113)
!4276 = !DILocation(line: 241, column: 21, scope: !4113)
!4277 = !DILocation(line: 216, column: 23, scope: !4111, inlinedAt: !4185)
!4278 = !DILocation(line: 217, column: 27, scope: !4279, inlinedAt: !4185)
!4279 = distinct !DILexicalBlock(scope: !4111, file: !534, line: 217, column: 27)
!4280 = !DILocation(line: 217, column: 64, scope: !4279, inlinedAt: !4185)
!4281 = !DILocation(line: 217, column: 27, scope: !4111, inlinedAt: !4185)
!4282 = !DILocation(line: 219, column: 28, scope: !4111, inlinedAt: !4185)
!4283 = !DILocation(line: 198, column: 30, scope: !4111, inlinedAt: !4185)
!4284 = !DILocation(line: 220, column: 28, scope: !4111, inlinedAt: !4185)
!4285 = !DILocation(line: 198, column: 34, scope: !4111, inlinedAt: !4185)
!4286 = !DILocation(line: 199, column: 29, scope: !4111, inlinedAt: !4185)
!4287 = !DILocation(line: 222, column: 36, scope: !4288, inlinedAt: !4185)
!4288 = distinct !DILexicalBlock(scope: !4111, file: !534, line: 222, column: 27)
!4289 = !DILocation(line: 222, column: 27, scope: !4111, inlinedAt: !4185)
!4290 = !DILocation(line: 225, column: 63, scope: !4291, inlinedAt: !4185)
!4291 = distinct !DILexicalBlock(scope: !4288, file: !534, line: 223, column: 25)
!4292 = !DILocation(line: 225, column: 46, scope: !4291, inlinedAt: !4185)
!4293 = !DILocation(line: 226, column: 25, scope: !4291, inlinedAt: !4185)
!4294 = !DILocation(line: 229, column: 36, scope: !4295, inlinedAt: !4185)
!4295 = distinct !DILexicalBlock(scope: !4288, file: !534, line: 228, column: 25)
!4296 = !DILocation(line: 230, column: 73, scope: !4295, inlinedAt: !4185)
!4297 = !DILocation(line: 230, column: 46, scope: !4295, inlinedAt: !4185)
!4298 = !DILocation(line: 232, column: 35, scope: !4299, inlinedAt: !4185)
!4299 = distinct !DILexicalBlock(scope: !4111, file: !534, line: 232, column: 27)
!4300 = !DILocation(line: 232, column: 27, scope: !4111, inlinedAt: !4185)
!4301 = !DILocation(line: 236, column: 27, scope: !4302, inlinedAt: !4185)
!4302 = distinct !DILexicalBlock(scope: !4299, file: !534, line: 233, column: 25)
!4303 = !DILocation(line: 237, column: 27, scope: !4302, inlinedAt: !4185)
!4304 = !DILocation(line: 239, column: 39, scope: !4111, inlinedAt: !4185)
!4305 = !DILocation(line: 239, column: 50, scope: !4111, inlinedAt: !4185)
!4306 = !DILocation(line: 239, column: 61, scope: !4111, inlinedAt: !4185)
!4307 = !DILocalVariable(name: "__dest", arg: 1, scope: !4308, file: !4309, line: 107, type: !4312)
!4308 = distinct !DISubprogram(name: "strcpy", scope: !4309, file: !4309, line: 107, type: !4310, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !190, variables: !4314)
!4309 = !DIFile(filename: "/usr/include/bits/string3.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4310 = !DISubroutineType(types: !4311)
!4311 = !{!25, !4312, !4313}
!4312 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !25)
!4313 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !35)
!4314 = !{!4307, !4315}
!4315 = !DILocalVariable(name: "__src", arg: 2, scope: !4308, file: !4309, line: 107, type: !4313)
!4316 = !DILocation(line: 107, column: 1, scope: !4308, inlinedAt: !4317)
!4317 = distinct !DILocation(line: 239, column: 23, scope: !4111, inlinedAt: !4185)
!4318 = !DILocation(line: 109, column: 49, scope: !4308, inlinedAt: !4317)
!4319 = !DILocation(line: 109, column: 10, scope: !4308, inlinedAt: !4317)
!4320 = !DILocation(line: 107, column: 1, scope: !4308, inlinedAt: !4321)
!4321 = distinct !DILocation(line: 240, column: 23, scope: !4111, inlinedAt: !4185)
!4322 = !DILocation(line: 109, column: 49, scope: !4308, inlinedAt: !4321)
!4323 = !DILocation(line: 109, column: 10, scope: !4308, inlinedAt: !4321)
!4324 = !DILocation(line: 241, column: 21, scope: !4112, inlinedAt: !4185)
!4325 = !DILocation(line: 242, column: 19, scope: !4114, inlinedAt: !4185)
!4326 = !DILocation(line: 243, column: 32, scope: !4327, inlinedAt: !4185)
!4327 = distinct !DILexicalBlock(scope: !4114, file: !534, line: 243, column: 23)
!4328 = !DILocation(line: 243, column: 23, scope: !4114, inlinedAt: !4185)
!4329 = !DILocation(line: 247, column: 33, scope: !4330, inlinedAt: !4185)
!4330 = distinct !DILexicalBlock(scope: !4327, file: !534, line: 246, column: 21)
!4331 = !DILocation(line: 247, column: 45, scope: !4330, inlinedAt: !4185)
!4332 = !DILocation(line: 253, column: 11, scope: !4118, inlinedAt: !4185)
!4333 = !DILocation(line: 377, column: 23, scope: !4120, inlinedAt: !4185)
!4334 = !DILocation(line: 378, column: 5, scope: !4120, inlinedAt: !4185)
!4335 = !DILocation(line: 396, column: 15, scope: !4098)
!4336 = !DILocation(line: 590, column: 8, scope: !4107)
!4337 = !DILocation(line: 590, column: 17, scope: !4107)
!4338 = !DILocation(line: 589, column: 3, scope: !4339)
!4339 = !DILexicalBlockFile(scope: !4108, file: !534, discriminator: 1)
!4340 = !DILocation(line: 592, column: 9, scope: !4105)
!4341 = !DILocation(line: 592, column: 35, scope: !4106)
!4342 = !DILocation(line: 593, column: 9, scope: !4106)
!4343 = !DILocation(line: 593, column: 24, scope: !4344)
!4344 = !DILexicalBlockFile(scope: !4106, file: !534, discriminator: 1)
!4345 = !DILocation(line: 593, column: 31, scope: !4344)
!4346 = !DILocation(line: 593, column: 34, scope: !4347)
!4347 = !DILexicalBlockFile(scope: !4106, file: !534, discriminator: 2)
!4348 = !DILocation(line: 593, column: 45, scope: !4347)
!4349 = !DILocation(line: 592, column: 9, scope: !4350)
!4350 = !DILexicalBlockFile(scope: !4107, file: !534, discriminator: 1)
!4351 = !DILocation(line: 595, column: 29, scope: !4352)
!4352 = distinct !DILexicalBlock(scope: !4106, file: !534, line: 594, column: 7)
!4353 = !DILocation(line: 595, column: 27, scope: !4352)
!4354 = !DILocation(line: 595, column: 46, scope: !4352)
!4355 = !DILocation(line: 596, column: 9, scope: !4352)
!4356 = !DILocation(line: 591, column: 19, scope: !4107)
!4357 = !DILocation(line: 591, column: 36, scope: !4107)
!4358 = !DILocation(line: 591, column: 16, scope: !4107)
!4359 = !DILocation(line: 591, column: 52, scope: !4350)
!4360 = !DILocation(line: 591, column: 69, scope: !4107)
!4361 = !DILocation(line: 591, column: 49, scope: !4107)
!4362 = distinct !{!4362, !4363, !4364}
!4363 = !DILocation(line: 589, column: 3, scope: !4108)
!4364 = !DILocation(line: 597, column: 7, scope: !4108)
!4365 = !DILocation(line: 602, column: 7, scope: !4366)
!4366 = distinct !DILexicalBlock(scope: !4098, file: !534, line: 602, column: 7)
!4367 = !DILocation(line: 602, column: 18, scope: !4366)
!4368 = !DILocation(line: 602, column: 7, scope: !4098)
!4369 = !DILocation(line: 612, column: 3, scope: !4098)
!4370 = distinct !DISubprogram(name: "rpl_fclose", scope: !4371, file: !4371, line: 56, type: !4372, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !577, variables: !4414)
!4371 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4372 = !DISubroutineType(types: !4373)
!4373 = !{!64, !4374}
!4374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4375, size: 64)
!4375 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3396, line: 49, baseType: !4376)
!4376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3398, line: 241, size: 1728, elements: !4377)
!4377 = !{!4378, !4379, !4380, !4381, !4382, !4383, !4384, !4385, !4386, !4387, !4388, !4389, !4390, !4398, !4399, !4400, !4401, !4402, !4403, !4404, !4405, !4406, !4407, !4408, !4409, !4410, !4411, !4412, !4413}
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4376, file: !3398, line: 242, baseType: !64, size: 32)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4376, file: !3398, line: 247, baseType: !25, size: 64, offset: 64)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4376, file: !3398, line: 248, baseType: !25, size: 64, offset: 128)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4376, file: !3398, line: 249, baseType: !25, size: 64, offset: 192)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4376, file: !3398, line: 250, baseType: !25, size: 64, offset: 256)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4376, file: !3398, line: 251, baseType: !25, size: 64, offset: 320)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4376, file: !3398, line: 252, baseType: !25, size: 64, offset: 384)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4376, file: !3398, line: 253, baseType: !25, size: 64, offset: 448)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4376, file: !3398, line: 254, baseType: !25, size: 64, offset: 512)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4376, file: !3398, line: 256, baseType: !25, size: 64, offset: 576)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4376, file: !3398, line: 257, baseType: !25, size: 64, offset: 640)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4376, file: !3398, line: 258, baseType: !25, size: 64, offset: 704)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4376, file: !3398, line: 260, baseType: !4391, size: 64, offset: 768)
!4391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4392, size: 64)
!4392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3398, line: 156, size: 192, elements: !4393)
!4393 = !{!4394, !4395, !4397}
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4392, file: !3398, line: 157, baseType: !4391, size: 64)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4392, file: !3398, line: 158, baseType: !4396, size: 64, offset: 64)
!4396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4376, size: 64)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4392, file: !3398, line: 162, baseType: !64, size: 32, offset: 128)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4376, file: !3398, line: 262, baseType: !4396, size: 64, offset: 832)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4376, file: !3398, line: 264, baseType: !64, size: 32, offset: 896)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4376, file: !3398, line: 268, baseType: !64, size: 32, offset: 928)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4376, file: !3398, line: 270, baseType: !728, size: 64, offset: 960)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4376, file: !3398, line: 274, baseType: !135, size: 16, offset: 1024)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4376, file: !3398, line: 275, baseType: !3426, size: 8, offset: 1040)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4376, file: !3398, line: 276, baseType: !3428, size: 8, offset: 1048)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4376, file: !3398, line: 280, baseType: !3432, size: 64, offset: 1088)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4376, file: !3398, line: 289, baseType: !3435, size: 64, offset: 1152)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4376, file: !3398, line: 297, baseType: !24, size: 64, offset: 1216)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4376, file: !3398, line: 298, baseType: !24, size: 64, offset: 1280)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4376, file: !3398, line: 299, baseType: !24, size: 64, offset: 1344)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4376, file: !3398, line: 300, baseType: !24, size: 64, offset: 1408)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4376, file: !3398, line: 302, baseType: !27, size: 64, offset: 1472)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4376, file: !3398, line: 303, baseType: !64, size: 32, offset: 1536)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4376, file: !3398, line: 305, baseType: !3443, size: 160, offset: 1568)
!4414 = !{!4415, !4416, !4417, !4418}
!4415 = !DILocalVariable(name: "fp", arg: 1, scope: !4370, file: !4371, line: 56, type: !4374)
!4416 = !DILocalVariable(name: "saved_errno", scope: !4370, file: !4371, line: 58, type: !64)
!4417 = !DILocalVariable(name: "fd", scope: !4370, file: !4371, line: 59, type: !64)
!4418 = !DILocalVariable(name: "result", scope: !4370, file: !4371, line: 60, type: !64)
!4419 = !DILocation(line: 56, column: 19, scope: !4370)
!4420 = !DILocation(line: 58, column: 7, scope: !4370)
!4421 = !DILocation(line: 60, column: 7, scope: !4370)
!4422 = !DILocation(line: 63, column: 8, scope: !4370)
!4423 = !DILocation(line: 59, column: 7, scope: !4370)
!4424 = !DILocation(line: 64, column: 10, scope: !4425)
!4425 = distinct !DILexicalBlock(scope: !4370, file: !4371, line: 64, column: 7)
!4426 = !DILocation(line: 64, column: 7, scope: !4370)
!4427 = !DILocation(line: 65, column: 12, scope: !4425)
!4428 = !DILocation(line: 65, column: 5, scope: !4425)
!4429 = !DILocation(line: 70, column: 9, scope: !4430)
!4430 = distinct !DILexicalBlock(scope: !4370, file: !4371, line: 70, column: 7)
!4431 = !DILocation(line: 70, column: 23, scope: !4430)
!4432 = !DILocation(line: 70, column: 33, scope: !4433)
!4433 = !DILexicalBlockFile(scope: !4430, file: !4371, discriminator: 1)
!4434 = !DILocation(line: 70, column: 26, scope: !4435)
!4435 = !DILexicalBlockFile(scope: !4430, file: !4371, discriminator: 3)
!4436 = !DILocation(line: 70, column: 59, scope: !4433)
!4437 = !DILocation(line: 71, column: 7, scope: !4430)
!4438 = !DILocation(line: 71, column: 10, scope: !4433)
!4439 = !DILocation(line: 70, column: 7, scope: !4440)
!4440 = !DILexicalBlockFile(scope: !4370, file: !4371, discriminator: 2)
!4441 = !DILocation(line: 98, column: 12, scope: !4370)
!4442 = !DILocation(line: 103, column: 7, scope: !4370)
!4443 = !DILocation(line: 72, column: 19, scope: !4430)
!4444 = !DILocation(line: 103, column: 19, scope: !4445)
!4445 = distinct !DILexicalBlock(scope: !4370, file: !4371, line: 103, column: 7)
!4446 = !DILocation(line: 105, column: 13, scope: !4447)
!4447 = distinct !DILexicalBlock(scope: !4445, file: !4371, line: 104, column: 5)
!4448 = !DILocation(line: 107, column: 5, scope: !4447)
!4449 = !DILocation(line: 110, column: 1, scope: !4370)
!4450 = distinct !DISubprogram(name: "rpl_fflush", scope: !4451, file: !4451, line: 127, type: !4452, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !579, variables: !4494)
!4451 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4452 = !DISubroutineType(types: !4453)
!4453 = !{!64, !4454}
!4454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4455, size: 64)
!4455 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3396, line: 49, baseType: !4456)
!4456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3398, line: 241, size: 1728, elements: !4457)
!4457 = !{!4458, !4459, !4460, !4461, !4462, !4463, !4464, !4465, !4466, !4467, !4468, !4469, !4470, !4478, !4479, !4480, !4481, !4482, !4483, !4484, !4485, !4486, !4487, !4488, !4489, !4490, !4491, !4492, !4493}
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4456, file: !3398, line: 242, baseType: !64, size: 32)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4456, file: !3398, line: 247, baseType: !25, size: 64, offset: 64)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4456, file: !3398, line: 248, baseType: !25, size: 64, offset: 128)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4456, file: !3398, line: 249, baseType: !25, size: 64, offset: 192)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4456, file: !3398, line: 250, baseType: !25, size: 64, offset: 256)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4456, file: !3398, line: 251, baseType: !25, size: 64, offset: 320)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4456, file: !3398, line: 252, baseType: !25, size: 64, offset: 384)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4456, file: !3398, line: 253, baseType: !25, size: 64, offset: 448)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4456, file: !3398, line: 254, baseType: !25, size: 64, offset: 512)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4456, file: !3398, line: 256, baseType: !25, size: 64, offset: 576)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4456, file: !3398, line: 257, baseType: !25, size: 64, offset: 640)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4456, file: !3398, line: 258, baseType: !25, size: 64, offset: 704)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4456, file: !3398, line: 260, baseType: !4471, size: 64, offset: 768)
!4471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4472, size: 64)
!4472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3398, line: 156, size: 192, elements: !4473)
!4473 = !{!4474, !4475, !4477}
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4472, file: !3398, line: 157, baseType: !4471, size: 64)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4472, file: !3398, line: 158, baseType: !4476, size: 64, offset: 64)
!4476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4456, size: 64)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4472, file: !3398, line: 162, baseType: !64, size: 32, offset: 128)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4456, file: !3398, line: 262, baseType: !4476, size: 64, offset: 832)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4456, file: !3398, line: 264, baseType: !64, size: 32, offset: 896)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4456, file: !3398, line: 268, baseType: !64, size: 32, offset: 928)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4456, file: !3398, line: 270, baseType: !728, size: 64, offset: 960)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4456, file: !3398, line: 274, baseType: !135, size: 16, offset: 1024)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4456, file: !3398, line: 275, baseType: !3426, size: 8, offset: 1040)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4456, file: !3398, line: 276, baseType: !3428, size: 8, offset: 1048)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4456, file: !3398, line: 280, baseType: !3432, size: 64, offset: 1088)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4456, file: !3398, line: 289, baseType: !3435, size: 64, offset: 1152)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4456, file: !3398, line: 297, baseType: !24, size: 64, offset: 1216)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4456, file: !3398, line: 298, baseType: !24, size: 64, offset: 1280)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4456, file: !3398, line: 299, baseType: !24, size: 64, offset: 1344)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4456, file: !3398, line: 300, baseType: !24, size: 64, offset: 1408)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4456, file: !3398, line: 302, baseType: !27, size: 64, offset: 1472)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4456, file: !3398, line: 303, baseType: !64, size: 32, offset: 1536)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4456, file: !3398, line: 305, baseType: !3443, size: 160, offset: 1568)
!4494 = !{!4495}
!4495 = !DILocalVariable(name: "stream", arg: 1, scope: !4450, file: !4451, line: 127, type: !4454)
!4496 = !DILocation(line: 127, column: 19, scope: !4450)
!4497 = !DILocation(line: 148, column: 14, scope: !4498)
!4498 = distinct !DILexicalBlock(scope: !4450, file: !4451, line: 148, column: 7)
!4499 = !DILocation(line: 148, column: 22, scope: !4498)
!4500 = !DILocation(line: 148, column: 27, scope: !4501)
!4501 = !DILexicalBlockFile(scope: !4498, file: !4451, discriminator: 1)
!4502 = !DILocation(line: 148, column: 7, scope: !4503)
!4503 = !DILexicalBlockFile(scope: !4450, file: !4451, discriminator: 1)
!4504 = !DILocation(line: 149, column: 12, scope: !4498)
!4505 = !DILocation(line: 149, column: 5, scope: !4498)
!4506 = !DILocalVariable(name: "fp", arg: 1, scope: !4507, file: !4451, line: 40, type: !4454)
!4507 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !4451, file: !4451, line: 40, type: !4508, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !579, variables: !4510)
!4508 = !DISubroutineType(types: !4509)
!4509 = !{null, !4454}
!4510 = !{!4506}
!4511 = !DILocation(line: 40, column: 48, scope: !4507, inlinedAt: !4512)
!4512 = distinct !DILocation(line: 153, column: 3, scope: !4450)
!4513 = !DILocation(line: 42, column: 11, scope: !4514, inlinedAt: !4512)
!4514 = distinct !DILexicalBlock(scope: !4507, file: !4451, line: 42, column: 7)
!4515 = !DILocation(line: 42, column: 18, scope: !4514, inlinedAt: !4512)
!4516 = !DILocation(line: 42, column: 7, scope: !4507, inlinedAt: !4512)
!4517 = !DILocation(line: 44, column: 5, scope: !4514, inlinedAt: !4512)
!4518 = !DILocation(line: 155, column: 10, scope: !4450)
!4519 = !DILocation(line: 155, column: 3, scope: !4450)
!4520 = !DILocation(line: 229, column: 1, scope: !4450)
!4521 = distinct !DISubprogram(name: "rpl_fseeko", scope: !4522, file: !4522, line: 28, type: !4523, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !581, variables: !4566)
!4522 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4523 = !DISubroutineType(types: !4524)
!4524 = !{!64, !4525, !4565, !64}
!4525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4526, size: 64)
!4526 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3396, line: 49, baseType: !4527)
!4527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3398, line: 241, size: 1728, elements: !4528)
!4528 = !{!4529, !4530, !4531, !4532, !4533, !4534, !4535, !4536, !4537, !4538, !4539, !4540, !4541, !4549, !4550, !4551, !4552, !4553, !4554, !4555, !4556, !4557, !4558, !4559, !4560, !4561, !4562, !4563, !4564}
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4527, file: !3398, line: 242, baseType: !64, size: 32)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4527, file: !3398, line: 247, baseType: !25, size: 64, offset: 64)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4527, file: !3398, line: 248, baseType: !25, size: 64, offset: 128)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4527, file: !3398, line: 249, baseType: !25, size: 64, offset: 192)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4527, file: !3398, line: 250, baseType: !25, size: 64, offset: 256)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4527, file: !3398, line: 251, baseType: !25, size: 64, offset: 320)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4527, file: !3398, line: 252, baseType: !25, size: 64, offset: 384)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4527, file: !3398, line: 253, baseType: !25, size: 64, offset: 448)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4527, file: !3398, line: 254, baseType: !25, size: 64, offset: 512)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4527, file: !3398, line: 256, baseType: !25, size: 64, offset: 576)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4527, file: !3398, line: 257, baseType: !25, size: 64, offset: 640)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4527, file: !3398, line: 258, baseType: !25, size: 64, offset: 704)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4527, file: !3398, line: 260, baseType: !4542, size: 64, offset: 768)
!4542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4543, size: 64)
!4543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3398, line: 156, size: 192, elements: !4544)
!4544 = !{!4545, !4546, !4548}
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4543, file: !3398, line: 157, baseType: !4542, size: 64)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4543, file: !3398, line: 158, baseType: !4547, size: 64, offset: 64)
!4547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4527, size: 64)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4543, file: !3398, line: 162, baseType: !64, size: 32, offset: 128)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4527, file: !3398, line: 262, baseType: !4547, size: 64, offset: 832)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4527, file: !3398, line: 264, baseType: !64, size: 32, offset: 896)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4527, file: !3398, line: 268, baseType: !64, size: 32, offset: 928)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4527, file: !3398, line: 270, baseType: !728, size: 64, offset: 960)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4527, file: !3398, line: 274, baseType: !135, size: 16, offset: 1024)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4527, file: !3398, line: 275, baseType: !3426, size: 8, offset: 1040)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4527, file: !3398, line: 276, baseType: !3428, size: 8, offset: 1048)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4527, file: !3398, line: 280, baseType: !3432, size: 64, offset: 1088)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4527, file: !3398, line: 289, baseType: !3435, size: 64, offset: 1152)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4527, file: !3398, line: 297, baseType: !24, size: 64, offset: 1216)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4527, file: !3398, line: 298, baseType: !24, size: 64, offset: 1280)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4527, file: !3398, line: 299, baseType: !24, size: 64, offset: 1344)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4527, file: !3398, line: 300, baseType: !24, size: 64, offset: 1408)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4527, file: !3398, line: 302, baseType: !27, size: 64, offset: 1472)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4527, file: !3398, line: 303, baseType: !64, size: 32, offset: 1536)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4527, file: !3398, line: 305, baseType: !3443, size: 160, offset: 1568)
!4565 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !3396, line: 91, baseType: !728)
!4566 = !{!4567, !4568, !4569, !4570}
!4567 = !DILocalVariable(name: "fp", arg: 1, scope: !4521, file: !4522, line: 28, type: !4525)
!4568 = !DILocalVariable(name: "offset", arg: 2, scope: !4521, file: !4522, line: 28, type: !4565)
!4569 = !DILocalVariable(name: "whence", arg: 3, scope: !4521, file: !4522, line: 28, type: !64)
!4570 = !DILocalVariable(name: "pos", scope: !4571, file: !4522, line: 116, type: !4565)
!4571 = distinct !DILexicalBlock(scope: !4572, file: !4522, line: 112, column: 5)
!4572 = distinct !DILexicalBlock(scope: !4521, file: !4522, line: 51, column: 7)
!4573 = !DILocation(line: 28, column: 15, scope: !4521)
!4574 = !DILocation(line: 28, column: 25, scope: !4521)
!4575 = !DILocation(line: 28, column: 37, scope: !4521)
!4576 = !DILocation(line: 51, column: 11, scope: !4572)
!4577 = !DILocation(line: 51, column: 31, scope: !4572)
!4578 = !DILocation(line: 51, column: 24, scope: !4572)
!4579 = !DILocation(line: 52, column: 7, scope: !4572)
!4580 = !DILocation(line: 52, column: 14, scope: !4581)
!4581 = !DILexicalBlockFile(scope: !4572, file: !4522, discriminator: 1)
!4582 = !{!4024, !602, i64 40}
!4583 = !DILocation(line: 52, column: 35, scope: !4581)
!4584 = !{!4024, !602, i64 32}
!4585 = !DILocation(line: 52, column: 28, scope: !4581)
!4586 = !DILocation(line: 53, column: 7, scope: !4572)
!4587 = !DILocation(line: 53, column: 14, scope: !4581)
!4588 = !{!4024, !602, i64 72}
!4589 = !DILocation(line: 53, column: 28, scope: !4581)
!4590 = !DILocation(line: 51, column: 7, scope: !4591)
!4591 = !DILexicalBlockFile(scope: !4521, file: !4522, discriminator: 1)
!4592 = !DILocation(line: 116, column: 26, scope: !4571)
!4593 = !DILocation(line: 116, column: 19, scope: !4594)
!4594 = !DILexicalBlockFile(scope: !4571, file: !4522, discriminator: 1)
!4595 = !DILocation(line: 116, column: 13, scope: !4571)
!4596 = !DILocation(line: 117, column: 15, scope: !4597)
!4597 = distinct !DILexicalBlock(scope: !4571, file: !4522, line: 117, column: 11)
!4598 = !DILocation(line: 117, column: 11, scope: !4571)
!4599 = !DILocation(line: 127, column: 11, scope: !4571)
!4600 = !DILocation(line: 127, column: 18, scope: !4571)
!4601 = !DILocation(line: 128, column: 11, scope: !4571)
!4602 = !DILocation(line: 128, column: 19, scope: !4571)
!4603 = !{!4024, !806, i64 144}
!4604 = !DILocation(line: 159, column: 7, scope: !4571)
!4605 = !DILocation(line: 161, column: 10, scope: !4521)
!4606 = !DILocation(line: 161, column: 3, scope: !4521)
!4607 = !DILocation(line: 162, column: 1, scope: !4521)
