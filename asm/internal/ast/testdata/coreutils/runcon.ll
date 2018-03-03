; ModuleID = 'coreutils-8.27/src/runcon.bc'
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
@.str.1 = private unnamed_addr constant [107 x i8] c"Usage: %s CONTEXT COMMAND [args]\0A  or:  %s [ -c ] [-u USER] [-r ROLE] [-t TYPE] [-l RANGE] COMMAND [args]\0A\00", align 1
@.str.2 = private unnamed_addr constant [126 x i8] c"Run a program in a different SELinux security context.\0AWith neither CONTEXT nor COMMAND, print the current security context.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.21 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@.str.3 = private unnamed_addr constant [267 x i8] c"  CONTEXT            Complete security context\0A  -c, --compute      compute process transition context before modifying\0A  -t, --type=TYPE    type (for same role as parent)\0A  -u, --user=USER    user identity\0A  -r, --role=ROLE    role\0A  -l, --range=RANGE  levelrange\0A\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"runcon\00", align 1
@.str.30 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.31 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.33 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.34 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.35 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"+r:t:u:l:c\00", align 1
@long_options = internal constant [8 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i32 0, i32 0), i32 1, i32* null, i32 114 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0), i32 1, i32* null, i32 116 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0), i32 1, i32* null, i32 117 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i32 0, i32 0), i32 1, i32* null, i32 108 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i32 0, i32 0), i32 0, i32* null, i32 99 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.43, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !0
@.str.11 = private unnamed_addr constant [15 x i8] c"multiple roles\00", align 1
@optarg = external local_unnamed_addr global i8*, align 8
@.str.12 = private unnamed_addr constant [15 x i8] c"multiple types\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"multiple users\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"multiple levelranges\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"Russell Coker\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.17 = private unnamed_addr constant [30 x i8] c"failed to get current context\00", align 1
@.str.18 = private unnamed_addr constant [48 x i8] c"you must specify -c, -t, -u, -l, -r, or context\00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"no command specified\00", align 1
@.str.20 = private unnamed_addr constant [40 x i8] c"%s may be used only on a SELinux kernel\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"role\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"user\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"range\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"compute\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.43 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0), align 8, !dbg !63
@.str.22 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !68
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !73
@.str.25 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.26 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.27 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !77
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !84
@.str.44 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.45 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.46 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.48, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.49, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.50, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.51, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.52, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.53, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.54, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.55, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.56, i32 0, i32 0), i8* null], align 16, !dbg !91
@.str.47 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.48 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.49 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.50 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.51 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.52 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.53 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.54 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.55 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.56 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !133
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !140
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !151
@.str.11.57 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.58 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.59 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.60 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.61 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.62 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.63 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !158
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !165
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !153
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !167
@.str.66 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.67 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.68 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.69 = private unnamed_addr constant [203 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.70 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.71 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.72 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.73 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.74 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.75 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.76 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.77 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.78 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.79 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.82 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.83 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.84 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.85 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.86 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19.87 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !173
@.str.1.98 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.99 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.108 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.111 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !182
@.str.3.112 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.113 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.114 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.115 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.116 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.117 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) local_unnamed_addr #0 !dbg !578 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !582, metadata !583), !dbg !584
  %2 = icmp eq i32 %0, 0, !dbg !585
  br i1 %2, label %8, label %3, !dbg !587

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !588, !tbaa !591
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #10, !dbg !588
  %6 = load i8*, i8** @program_name, align 8, !dbg !588, !tbaa !591
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #10, !dbg !595
  br label %42, !dbg !597

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.1, i64 0, i64 0), i32 5) #10, !dbg !599
  %10 = load i8*, i8** @program_name, align 8, !dbg !599, !tbaa !591
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10, i8* %10) #10, !dbg !601
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.2, i64 0, i64 0), i32 5) #10, !dbg !603
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !603, !tbaa !591
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #10, !dbg !604
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.21, i64 0, i64 0), i32 5) #10, !dbg !605
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !605, !tbaa !591
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #10, !dbg !610
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([267 x i8], [267 x i8]* @.str.3, i64 0, i64 0), i32 5) #10, !dbg !612
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !612, !tbaa !591
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #10, !dbg !613
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 5) #10, !dbg !614
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !614, !tbaa !591
  %23 = tail call i32 @fputs_unlocked(i8* %21, %struct._IO_FILE* %22) #10, !dbg !615
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 5) #10, !dbg !616
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !616, !tbaa !591
  %26 = tail call i32 @fputs_unlocked(i8* %24, %struct._IO_FILE* %25) #10, !dbg !617
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !28, metadata !583) #10, !dbg !618
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i64 0, metadata !28, metadata !583) #10, !dbg !618
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.30, i64 0, i64 0), i32 5) #10, !dbg !620
  %28 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %27, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.31, i64 0, i64 0)) #10, !dbg !621
  %29 = tail call i8* @setlocale(i32 5, i8* null) #10, !dbg !623
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !39, metadata !583) #10, !dbg !624
  %30 = icmp eq i8* %29, null, !dbg !625
  br i1 %30, label %37, label %31, !dbg !626

; <label>:31:                                     ; preds = %8
  %32 = tail call i32 @strncmp(i8* nonnull %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0), i64 3) #13, !dbg !627
  %33 = icmp eq i32 %32, 0, !dbg !627
  br i1 %33, label %37, label %34, !dbg !629

; <label>:34:                                     ; preds = %31
  %35 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.33, i64 0, i64 0), i32 5) #10, !dbg !631
  %36 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0)) #10, !dbg !633
  br label %37, !dbg !635

; <label>:37:                                     ; preds = %8, %31, %34
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.34, i64 0, i64 0), i32 5) #10, !dbg !636
  %39 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %38, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0)) #10, !dbg !637
  %40 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.35, i64 0, i64 0), i32 5) #10, !dbg !638
  %41 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i64 0, i64 0)) #10, !dbg !639
  br label %42

; <label>:42:                                     ; preds = %37, %3
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
  %3 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !646, metadata !583), !dbg !663
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !647, metadata !583), !dbg !664
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !648, metadata !583), !dbg !665
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !649, metadata !583), !dbg !666
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !650, metadata !583), !dbg !667
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !651, metadata !583), !dbg !668
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !652, metadata !583), !dbg !669
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !653, metadata !583), !dbg !670
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !654, metadata !583), !dbg !671
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !655, metadata !583), !dbg !672
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !656, metadata !583), !dbg !673
  %4 = load i8*, i8** %1, align 8, !dbg !674, !tbaa !591
  tail call void @set_program_name(i8* %4) #10, !dbg !675
  %5 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)) #10, !dbg !676
  %6 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0)) #10, !dbg !677
  %7 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0)) #10, !dbg !678
  %8 = tail call i32 @atexit(void ()* nonnull @close_stdout) #10, !dbg !679
  %9 = bitcast i32* %3 to i8*
  br label %10, !dbg !680

; <label>:10:                                     ; preds = %46, %2
  %11 = phi i8* [ null, %2 ], [ %47, %46 ]
  %12 = phi i8* [ null, %2 ], [ %48, %46 ]
  %13 = phi i8* [ null, %2 ], [ %49, %46 ]
  %14 = phi i8 [ 0, %2 ], [ %50, %46 ]
  %15 = phi i8* [ null, %2 ], [ %51, %46 ]
  call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !648, metadata !583), !dbg !665
  call void @llvm.dbg.value(metadata i8 %14, i64 0, metadata !656, metadata !583), !dbg !673
  call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !649, metadata !583), !dbg !666
  call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !650, metadata !583), !dbg !667
  call void @llvm.dbg.value(metadata i8* %11, i64 0, metadata !651, metadata !583), !dbg !668
  call void @llvm.lifetime.start(i64 4, i8* nonnull %9) #10, !dbg !681
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !660, metadata !583), !dbg !682
  store i32 0, i32* %3, align 4, !dbg !682, !tbaa !683
  call void @llvm.dbg.value(metadata i32* %3, i64 0, metadata !660, metadata !685), !dbg !682
  %16 = call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), %struct.option* getelementptr inbounds ([8 x %struct.option], [8 x %struct.option]* @long_options, i64 0, i64 0), i32* nonnull %3) #10, !dbg !686
  call void @llvm.dbg.value(metadata i32 %16, i64 0, metadata !662, metadata !583), !dbg !687
  switch i32 %16, label %45 [
    i32 -1, label %52
    i32 114, label %17
    i32 116, label %23
    i32 117, label %29
    i32 108, label %35
    i32 99, label %46
    i32 -130, label %41
    i32 -131, label %42
  ], !dbg !688

; <label>:17:                                     ; preds = %10
  %18 = icmp eq i8* %15, null, !dbg !689
  br i1 %18, label %21, label %19, !dbg !692

; <label>:19:                                     ; preds = %17
  %20 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i32 5) #10, !dbg !693
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %20) #10, !dbg !694
  unreachable, !dbg !693

; <label>:21:                                     ; preds = %17
  %22 = load i8*, i8** @optarg, align 8, !dbg !696, !tbaa !591
  call void @llvm.dbg.value(metadata i8* %22, i64 0, metadata !648, metadata !583), !dbg !665
  br label %46, !dbg !697

; <label>:23:                                     ; preds = %10
  %24 = icmp eq i8* %11, null, !dbg !698
  br i1 %24, label %27, label %25, !dbg !700

; <label>:25:                                     ; preds = %23
  %26 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i32 5) #10, !dbg !701
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %26) #10, !dbg !702
  unreachable, !dbg !701

; <label>:27:                                     ; preds = %23
  %28 = load i8*, i8** @optarg, align 8, !dbg !704, !tbaa !591
  call void @llvm.dbg.value(metadata i8* %28, i64 0, metadata !651, metadata !583), !dbg !668
  br label %46, !dbg !705

; <label>:29:                                     ; preds = %10
  %30 = icmp eq i8* %12, null, !dbg !706
  br i1 %30, label %33, label %31, !dbg !708

; <label>:31:                                     ; preds = %29
  %32 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0), i32 5) #10, !dbg !709
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %32) #10, !dbg !710
  unreachable, !dbg !709

; <label>:33:                                     ; preds = %29
  %34 = load i8*, i8** @optarg, align 8, !dbg !712, !tbaa !591
  call void @llvm.dbg.value(metadata i8* %34, i64 0, metadata !650, metadata !583), !dbg !667
  br label %46, !dbg !713

; <label>:35:                                     ; preds = %10
  %36 = icmp eq i8* %13, null, !dbg !714
  br i1 %36, label %39, label %37, !dbg !716

; <label>:37:                                     ; preds = %35
  %38 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0), i32 5) #10, !dbg !717
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %38) #10, !dbg !718
  unreachable, !dbg !717

; <label>:39:                                     ; preds = %35
  %40 = load i8*, i8** @optarg, align 8, !dbg !720, !tbaa !591
  call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !649, metadata !583), !dbg !666
  br label %46, !dbg !721

; <label>:41:                                     ; preds = %10
  call void @usage(i32 0) #15, !dbg !722
  unreachable, !dbg !722

; <label>:42:                                     ; preds = %10
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !723, !tbaa !591
  %44 = load i8*, i8** @Version, align 8, !dbg !723, !tbaa !591
  call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %43, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i8* %44, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i8* null) #10, !dbg !723
  call void @exit(i32 0) #14, !dbg !724
  unreachable, !dbg !723

; <label>:45:                                     ; preds = %10
  call void @usage(i32 1) #15, !dbg !726
  unreachable, !dbg !726

; <label>:46:                                     ; preds = %21, %27, %33, %39, %10
  %47 = phi i8* [ %11, %39 ], [ %11, %33 ], [ %28, %27 ], [ %11, %21 ], [ %11, %10 ]
  %48 = phi i8* [ %12, %39 ], [ %34, %33 ], [ %12, %27 ], [ %12, %21 ], [ %12, %10 ]
  %49 = phi i8* [ %40, %39 ], [ %13, %33 ], [ %13, %27 ], [ %13, %21 ], [ %13, %10 ]
  %50 = phi i8 [ %14, %39 ], [ %14, %33 ], [ %14, %27 ], [ %14, %21 ], [ 1, %10 ]
  %51 = phi i8* [ %15, %39 ], [ %15, %33 ], [ %15, %27 ], [ %22, %21 ], [ %15, %10 ]
  call void @llvm.dbg.value(metadata i8* %51, i64 0, metadata !648, metadata !583), !dbg !665
  call void @llvm.dbg.value(metadata i8 %50, i64 0, metadata !656, metadata !583), !dbg !673
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !649, metadata !583), !dbg !666
  call void @llvm.dbg.value(metadata i8* %48, i64 0, metadata !650, metadata !583), !dbg !667
  call void @llvm.dbg.value(metadata i8* %47, i64 0, metadata !651, metadata !583), !dbg !668
  call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !648, metadata !583), !dbg !665
  call void @llvm.dbg.value(metadata i8 %14, i64 0, metadata !656, metadata !583), !dbg !673
  call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !649, metadata !583), !dbg !666
  call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !650, metadata !583), !dbg !667
  call void @llvm.dbg.value(metadata i8* %11, i64 0, metadata !651, metadata !583), !dbg !668
  call void @llvm.lifetime.end(i64 4, i8* nonnull %9) #10, !dbg !727
  br label %10

; <label>:52:                                     ; preds = %10
  call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !648, metadata !583), !dbg !665
  call void @llvm.dbg.value(metadata i8 %14, i64 0, metadata !656, metadata !583), !dbg !673
  call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !649, metadata !583), !dbg !666
  call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !650, metadata !583), !dbg !667
  call void @llvm.dbg.value(metadata i8* %11, i64 0, metadata !651, metadata !583), !dbg !668
  call void @llvm.lifetime.end(i64 4, i8* nonnull %9) #10, !dbg !727
  %53 = load i32, i32* @optind, align 4, !dbg !728, !tbaa !683
  %54 = icmp eq i32 %53, %0, !dbg !730
  br i1 %54, label %55, label %58, !dbg !731

; <label>:55:                                     ; preds = %52
  %56 = tail call i32* @__errno_location() #1, !dbg !732
  store i32 95, i32* %56, align 4, !dbg !744, !tbaa !683
  %57 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.17, i64 0, i64 0), i32 5) #10, !dbg !745
  call void (i32, i32, i8*, ...) @error(i32 1, i32 95, i8* %57) #10, !dbg !747
  unreachable, !dbg !749

; <label>:58:                                     ; preds = %52
  %59 = icmp ne i8* %12, null, !dbg !750
  %60 = icmp ne i8* %15, null, !dbg !752
  %61 = or i1 %59, %60, !dbg !754
  %62 = icmp ne i8* %11, null, !dbg !755
  %63 = or i1 %62, %61, !dbg !754
  %64 = icmp ne i8* %13, null, !dbg !757
  %65 = or i1 %64, %63, !dbg !754
  %66 = xor i1 %65, true, !dbg !754
  %67 = and i8 %14, 1, !dbg !759
  %68 = icmp eq i8 %67, 0, !dbg !759
  %69 = and i1 %68, %66, !dbg !754
  br i1 %69, label %70, label %76, !dbg !754

; <label>:70:                                     ; preds = %58
  %71 = icmp slt i32 %53, %0, !dbg !761
  br i1 %71, label %74, label %72, !dbg !764

; <label>:72:                                     ; preds = %70
  %73 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.18, i64 0, i64 0), i32 5) #10, !dbg !765
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %73) #10, !dbg !767
  call void @usage(i32 1) #15, !dbg !769
  unreachable, !dbg !769

; <label>:74:                                     ; preds = %70
  %75 = add nsw i32 %53, 1, !dbg !770
  store i32 %75, i32* @optind, align 4, !dbg !770, !tbaa !683
  br label %76, !dbg !771

; <label>:76:                                     ; preds = %58, %74
  %77 = phi i32 [ %53, %58 ], [ %75, %74 ], !dbg !772
  %78 = icmp slt i32 %77, %0, !dbg !774
  br i1 %78, label %81, label %79, !dbg !775

; <label>:79:                                     ; preds = %76
  %80 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.19, i64 0, i64 0), i32 5) #10, !dbg !776
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %80) #10, !dbg !778
  call void @usage(i32 1) #15, !dbg !780
  unreachable, !dbg !780

; <label>:81:                                     ; preds = %76
  %82 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20, i64 0, i64 0), i32 5) #10, !dbg !781
  %83 = load i8*, i8** @program_name, align 8, !dbg !781, !tbaa !591
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %82, i8* %83) #10, !dbg !783
  unreachable, !dbg !781
}

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #7

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #7

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #8

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !785 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !787, metadata !583), !dbg !788
  store i8* %0, i8** @file_name, align 8, !dbg !789, !tbaa !591
  ret void, !dbg !790
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !791 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !795, metadata !796), !dbg !797
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !798, !tbaa !799
  ret void, !dbg !801
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !802 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !807, !tbaa !591
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #10, !dbg !808
  %3 = icmp eq i32 %2, 0, !dbg !809
  br i1 %3, label %21, label %4, !dbg !810

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !811, !tbaa !799, !range !813
  %6 = icmp eq i8 %5, 0, !dbg !811
  %7 = tail call i32* @__errno_location() #1, !dbg !814
  br i1 %6, label %11, label %8, !dbg !816

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !817, !tbaa !683
  %10 = icmp eq i32 %9, 32, !dbg !819
  br i1 %10, label %21, label %11, !dbg !820

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i64 0, i64 0), i32 5) #10, !dbg !822
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !804, metadata !583), !dbg !823
  %13 = load i8*, i8** @file_name, align 8, !dbg !824, !tbaa !591
  %14 = icmp eq i8* %13, null, !dbg !824
  %15 = load i32, i32* %7, align 4, !tbaa !683
  br i1 %14, label %18, label %16, !dbg !825

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #10, !dbg !826
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.26, i64 0, i64 0), i8* %17, i8* %12) #10, !dbg !828
  br label %19, !dbg !830

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.27, i64 0, i64 0), i8* %12) #10, !dbg !831
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !832, !tbaa !683
  tail call void @_exit(i32 %20) #14, !dbg !833
  unreachable, !dbg !833

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !834, !tbaa !591
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #10, !dbg !836
  %24 = icmp eq i32 %23, 0, !dbg !837
  br i1 %24, label %27, label %25, !dbg !838

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !839, !tbaa !683
  tail call void @_exit(i32 %26) #14, !dbg !840
  unreachable, !dbg !840

; <label>:27:                                     ; preds = %21
  ret void, !dbg !841
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !842 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !844, metadata !583), !dbg !847
  %2 = icmp eq i8* %0, null, !dbg !848
  br i1 %2, label %3, label %6, !dbg !850

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !851, !tbaa !591
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.44, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #16, !dbg !853
  tail call void @abort() #14, !dbg !854
  unreachable, !dbg !854

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #13, !dbg !855
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !845, metadata !583), !dbg !856
  %8 = icmp ne i8* %7, null, !dbg !857
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !858
  %10 = select i1 %8, i8* %9, i8* %0, !dbg !860
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !846, metadata !583), !dbg !861
  %11 = ptrtoint i8* %10 to i64, !dbg !862
  %12 = ptrtoint i8* %0 to i64, !dbg !862
  %13 = sub i64 %11, %12, !dbg !862
  %14 = icmp sgt i64 %13, 6, !dbg !864
  br i1 %14, label %15, label %24, !dbg !865

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !866
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.45, i64 0, i64 0), i64 7) #13, !dbg !866
  %18 = icmp eq i32 %17, 0, !dbg !868
  br i1 %18, label %19, label %24, !dbg !869

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !844, metadata !583), !dbg !847
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.46, i64 0, i64 0), i64 3) #13, !dbg !870
  %21 = icmp eq i32 %20, 0, !dbg !873
  br i1 %21, label %22, label %24, !dbg !874

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !875
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !844, metadata !583), !dbg !847
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !877, !tbaa !591
  br label %24, !dbg !878

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !844, metadata !583), !dbg !847
  store i8* %25, i8** @program_name, align 8, !dbg !879, !tbaa !591
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !880, !tbaa !591
  ret void, !dbg !881
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #10

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !882 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !887, metadata !583), !dbg !890
  %2 = tail call i32* @__errno_location() #1, !dbg !891
  %3 = load i32, i32* %2, align 4, !dbg !891, !tbaa !683
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !888, metadata !583), !dbg !892
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !893
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !894
  %6 = select i1 %4, i8* %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), !dbg !894
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #10, !dbg !896
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !896
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !889, metadata !583), !dbg !897
  store i32 %3, i32* %2, align 4, !dbg !898, !tbaa !683
  ret %struct.quoting_options* %8, !dbg !899
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #11 !dbg !900 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !906, metadata !583), !dbg !907
  %2 = icmp ne %struct.quoting_options* %0, null, !dbg !908
  %3 = select i1 %2, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !908
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !909
  %5 = load i32, i32* %4, align 8, !dbg !909, !tbaa !911
  ret i32 %5, !dbg !913
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !914 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !918, metadata !583), !dbg !920
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !919, metadata !583), !dbg !921
  %3 = icmp ne %struct.quoting_options* %0, null, !dbg !922
  %4 = select i1 %3, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !922
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !923
  store i32 %1, i32* %5, align 8, !dbg !925, !tbaa !911
  ret void, !dbg !926
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !927 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !931, metadata !583), !dbg !939
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !932, metadata !583), !dbg !940
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !933, metadata !583), !dbg !941
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !934, metadata !583), !dbg !942
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !943
  %5 = select i1 %4, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !943
  %6 = lshr i8 %1, 5, !dbg !944
  %7 = zext i8 %6 to i64, !dbg !944
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !946
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !935, metadata !583), !dbg !947
  %9 = and i8 %1, 31, !dbg !948
  %10 = zext i8 %9 to i32, !dbg !949
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !937, metadata !583), !dbg !950
  %11 = load i32, i32* %8, align 4, !dbg !951, !tbaa !683
  %12 = lshr i32 %11, %10, !dbg !952
  %13 = and i32 %12, 1, !dbg !953
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !938, metadata !583), !dbg !954
  %14 = and i32 %2, 1, !dbg !955
  %15 = xor i32 %13, %14, !dbg !956
  %16 = shl i32 %15, %10, !dbg !957
  %17 = xor i32 %16, %11, !dbg !958
  store i32 %17, i32* %8, align 4, !dbg !958, !tbaa !683
  ret i32 %13, !dbg !959
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !960 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !964, metadata !583), !dbg !967
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !965, metadata !583), !dbg !968
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !969
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !964, metadata !583), !dbg !967
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !971
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !964, metadata !583), !dbg !967
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !972
  %6 = load i32, i32* %5, align 4, !dbg !972, !tbaa !973
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !966, metadata !583), !dbg !974
  store i32 %1, i32* %5, align 4, !dbg !975, !tbaa !973
  ret i32 %6, !dbg !976
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !977 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !981, metadata !583), !dbg !984
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !982, metadata !583), !dbg !985
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !983, metadata !583), !dbg !986
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !987
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !981, metadata !583), !dbg !984
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !989
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !981, metadata !583), !dbg !984
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !990
  store i32 10, i32* %6, align 8, !dbg !991, !tbaa !911
  %7 = icmp ne i8* %1, null, !dbg !992
  %8 = icmp ne i8* %2, null, !dbg !994
  %9 = and i1 %7, %8, !dbg !996
  br i1 %9, label %11, label %10, !dbg !996

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !997
  unreachable, !dbg !997

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !998
  store i8* %1, i8** %12, align 8, !dbg !999, !tbaa !1000
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1001
  store i8* %2, i8** %13, align 8, !dbg !1002, !tbaa !1003
  ret void, !dbg !1004
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !1005 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1009, metadata !583), !dbg !1017
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1010, metadata !583), !dbg !1018
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1011, metadata !583), !dbg !1019
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1012, metadata !583), !dbg !1020
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1013, metadata !583), !dbg !1021
  %6 = icmp ne %struct.quoting_options* %4, null, !dbg !1022
  %7 = select i1 %6, %struct.quoting_options* %4, %struct.quoting_options* @default_quoting_options, !dbg !1022
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !1014, metadata !583), !dbg !1023
  %8 = tail call i32* @__errno_location() #1, !dbg !1024
  %9 = load i32, i32* %8, align 4, !dbg !1024, !tbaa !683
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1015, metadata !583), !dbg !1025
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1026
  %11 = load i32, i32* %10, align 8, !dbg !1026, !tbaa !911
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1027
  %13 = load i32, i32* %12, align 4, !dbg !1027, !tbaa !973
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1028
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1029
  %16 = load i8*, i8** %15, align 8, !dbg !1029, !tbaa !1000
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1030
  %18 = load i8*, i8** %17, align 8, !dbg !1030, !tbaa !1003
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !1031
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1016, metadata !583), !dbg !1032
  store i32 %9, i32* %8, align 4, !dbg !1033, !tbaa !683
  ret i64 %19, !dbg !1034
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !1035 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1041, metadata !583), !dbg !1104
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1042, metadata !583), !dbg !1105
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1043, metadata !583), !dbg !1106
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1044, metadata !583), !dbg !1107
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !1045, metadata !583), !dbg !1108
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1046, metadata !583), !dbg !1109
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !1047, metadata !583), !dbg !1110
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1048, metadata !583), !dbg !1111
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !1049, metadata !583), !dbg !1112
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1051, metadata !583), !dbg !1113
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1052, metadata !583), !dbg !1114
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1053, metadata !583), !dbg !1115
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1054, metadata !583), !dbg !1116
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1055, metadata !583), !dbg !1117
  %13 = tail call i64 @__ctype_get_mb_cur_max() #10, !dbg !1118
  %14 = icmp eq i64 %13, 1, !dbg !1119
  %15 = lshr i32 %5, 1, !dbg !1120
  %16 = trunc i32 %15 to i8, !dbg !1120
  %17 = and i8 %16, 1, !dbg !1120
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !1057, metadata !583), !dbg !1120
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1058, metadata !583), !dbg !1121
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1059, metadata !583), !dbg !1122
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1060, metadata !583), !dbg !1123
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !1124

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !1042, metadata !583), !dbg !1105
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !1060, metadata !583), !dbg !1123
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !1059, metadata !583), !dbg !1122
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !1058, metadata !583), !dbg !1121
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1057, metadata !583), !dbg !1120
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !1044, metadata !583), !dbg !1107
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !1055, metadata !583), !dbg !1117
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !1054, metadata !583), !dbg !1116
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !1053, metadata !583), !dbg !1115
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !1052, metadata !583), !dbg !1114
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1051, metadata !583), !dbg !1113
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !1049, metadata !583), !dbg !1112
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !1048, metadata !583), !dbg !1111
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !1045, metadata !583), !dbg !1108
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
  ], !dbg !1125

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1045, metadata !583), !dbg !1108
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1057, metadata !583), !dbg !1120
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1057, metadata !583), !dbg !1120
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1045, metadata !583), !dbg !1108
  br label %95, !dbg !1126

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1057, metadata !583), !dbg !1120
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1045, metadata !583), !dbg !1108
  %43 = and i8 %36, 1, !dbg !1128
  %44 = icmp eq i8 %43, 0, !dbg !1128
  br i1 %44, label %45, label %95, !dbg !1126

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1130
  br i1 %46, label %95, label %47, !dbg !1134

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1136, !tbaa !1138
  br label %95, !dbg !1136

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.57, i64 0, i64 0), i32 %28), !dbg !1139
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !1048, metadata !583), !dbg !1111
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.58, i64 0, i64 0), i32 %28), !dbg !1143
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !1049, metadata !583), !dbg !1112
  br label %51, !dbg !1144

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1049, metadata !583), !dbg !1112
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1048, metadata !583), !dbg !1111
  %54 = and i8 %36, 1, !dbg !1145
  %55 = icmp eq i8 %54, 0, !dbg !1145
  br i1 %55, label %56, label %73, !dbg !1147

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1053, metadata !583), !dbg !1115
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1051, metadata !583), !dbg !1113
  %57 = load i8, i8* %52, align 1, !dbg !1148, !tbaa !1138
  %58 = icmp eq i8 %57, 0, !dbg !1152
  br i1 %58, label %73, label %59, !dbg !1152

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !1154

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  %64 = icmp ult i64 %63, %40, !dbg !1154
  br i1 %64, label %65, label %67, !dbg !1158

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !1160
  store i8 %61, i8* %66, align 1, !dbg !1160, !tbaa !1138
  br label %67, !dbg !1160

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !1162
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1051, metadata !583), !dbg !1113
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !1164
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1053, metadata !583), !dbg !1115
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1053, metadata !583), !dbg !1115
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1051, metadata !583), !dbg !1113
  %70 = load i8, i8* %69, align 1, !dbg !1148, !tbaa !1138
  %71 = icmp eq i8 %70, 0, !dbg !1152
  br i1 %71, label %72, label %60, !dbg !1152, !llvm.loop !1166

; <label>:72:                                     ; preds = %67
  br label %73, !dbg !1113

; <label>:73:                                     ; preds = %72, %56, %51
  %74 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %72 ]
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !1051, metadata !583), !dbg !1113
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1055, metadata !583), !dbg !1117
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1053, metadata !583), !dbg !1115
  %75 = call i64 @strlen(i8* %53) #13, !dbg !1169
  call void @llvm.dbg.value(metadata i64 %75, i64 0, metadata !1054, metadata !583), !dbg !1116
  br label %95, !dbg !1170

; <label>:76:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1055, metadata !583), !dbg !1117
  br label %77, !dbg !1171

; <label>:77:                                     ; preds = %27, %76
  %78 = phi i8 [ %34, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %78, i64 0, metadata !1055, metadata !583), !dbg !1117
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1057, metadata !583), !dbg !1120
  br label %79, !dbg !1172

; <label>:79:                                     ; preds = %27, %77
  %80 = phi i8 [ %34, %27 ], [ %78, %77 ]
  %81 = phi i8 [ %36, %27 ], [ 1, %77 ]
  call void @llvm.dbg.value(metadata i8 %81, i64 0, metadata !1057, metadata !583), !dbg !1120
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !1055, metadata !583), !dbg !1117
  %82 = and i8 %81, 1, !dbg !1173
  %83 = icmp eq i8 %82, 0, !dbg !1173
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1055, metadata !583), !dbg !1117
  %84 = select i1 %83, i8 1, i8 %80, !dbg !1175
  br label %85, !dbg !1175

; <label>:85:                                     ; preds = %79, %27
  %86 = phi i8 [ %34, %27 ], [ %84, %79 ]
  %87 = phi i8 [ %36, %27 ], [ %81, %79 ]
  call void @llvm.dbg.value(metadata i8 %87, i64 0, metadata !1057, metadata !583), !dbg !1120
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !1055, metadata !583), !dbg !1117
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !1045, metadata !583), !dbg !1108
  %88 = and i8 %87, 1, !dbg !1176
  %89 = icmp eq i8 %88, 0, !dbg !1176
  br i1 %89, label %90, label %95, !dbg !1178

; <label>:90:                                     ; preds = %85
  %91 = icmp eq i64 %40, 0, !dbg !1179
  br i1 %91, label %95, label %92, !dbg !1183

; <label>:92:                                     ; preds = %90
  store i8 39, i8* %0, align 1, !dbg !1185, !tbaa !1138
  br label %95, !dbg !1185

; <label>:93:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1057, metadata !583), !dbg !1120
  br label %95, !dbg !1187

; <label>:94:                                     ; preds = %27
  call void @abort() #14, !dbg !1188
  unreachable, !dbg !1188

; <label>:95:                                     ; preds = %41, %85, %90, %92, %27, %42, %45, %47, %93, %73
  %96 = phi i32 [ 0, %93 ], [ %28, %73 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %92 ], [ 2, %90 ], [ 2, %85 ], [ 5, %41 ]
  %97 = phi i8* [ %29, %93 ], [ %52, %73 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %92 ], [ %29, %90 ], [ %29, %85 ], [ %29, %41 ]
  %98 = phi i8* [ %30, %93 ], [ %53, %73 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %92 ], [ %30, %90 ], [ %30, %85 ], [ %30, %41 ]
  %99 = phi i64 [ 0, %93 ], [ %74, %73 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %92 ], [ 1, %90 ], [ 0, %85 ], [ 0, %41 ]
  %100 = phi i8* [ %32, %93 ], [ %53, %73 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.59, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.59, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.59, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.58, i64 0, i64 0), %92 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.58, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.58, i64 0, i64 0), %85 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.59, i64 0, i64 0), %41 ]
  %101 = phi i64 [ %33, %93 ], [ %75, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %92 ], [ 1, %90 ], [ 1, %85 ], [ 1, %41 ]
  %102 = phi i8 [ %34, %93 ], [ 1, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %86, %92 ], [ %86, %90 ], [ %86, %85 ], [ 1, %41 ]
  %103 = phi i8 [ 0, %93 ], [ %36, %73 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %87, %92 ], [ %87, %90 ], [ %87, %85 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %103, i64 0, metadata !1057, metadata !583), !dbg !1120
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !1055, metadata !583), !dbg !1117
  call void @llvm.dbg.value(metadata i64 %101, i64 0, metadata !1054, metadata !583), !dbg !1116
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !1053, metadata !583), !dbg !1115
  call void @llvm.dbg.value(metadata i64 %99, i64 0, metadata !1051, metadata !583), !dbg !1113
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !1049, metadata !583), !dbg !1112
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !1048, metadata !583), !dbg !1111
  call void @llvm.dbg.value(metadata i32 %96, i64 0, metadata !1045, metadata !583), !dbg !1108
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1050, metadata !583), !dbg !1189
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
  br label %123, !dbg !1190

; <label>:123:                                    ; preds = %587, %95
  %124 = phi i64 [ 0, %95 ], [ %596, %587 ]
  %125 = phi i64 [ %99, %95 ], [ %589, %587 ]
  %126 = phi i64 [ %31, %95 ], [ %590, %587 ]
  %127 = phi i64 [ %35, %95 ], [ %591, %587 ]
  %128 = phi i8 [ %37, %95 ], [ %592, %587 ]
  %129 = phi i8 [ %38, %95 ], [ %593, %587 ]
  %130 = phi i8 [ %39, %95 ], [ %594, %587 ]
  %131 = phi i64 [ %40, %95 ], [ %595, %587 ]
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !1042, metadata !583), !dbg !1105
  call void @llvm.dbg.value(metadata i8 %130, i64 0, metadata !1060, metadata !583), !dbg !1123
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !1059, metadata !583), !dbg !1122
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !1058, metadata !583), !dbg !1121
  call void @llvm.dbg.value(metadata i64 %127, i64 0, metadata !1044, metadata !583), !dbg !1107
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !1052, metadata !583), !dbg !1114
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1051, metadata !583), !dbg !1113
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1050, metadata !583), !dbg !1189
  %132 = icmp eq i64 %127, -1, !dbg !1191
  br i1 %132, label %135, label %133, !dbg !1193

; <label>:133:                                    ; preds = %123
  %134 = icmp eq i64 %124, %127, !dbg !1194
  br i1 %134, label %597, label %139, !dbg !1196

; <label>:135:                                    ; preds = %123
  %136 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !1198
  %137 = load i8, i8* %136, align 1, !dbg !1198, !tbaa !1138
  %138 = icmp eq i8 %137, 0, !dbg !1200
  br i1 %138, label %597, label %139, !dbg !1196

; <label>:139:                                    ; preds = %133, %135
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1066, metadata !583), !dbg !1201
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1067, metadata !583), !dbg !1202
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1068, metadata !583), !dbg !1203
  br i1 %109, label %140, label %155, !dbg !1204

; <label>:140:                                    ; preds = %139
  %141 = add i64 %124, %101, !dbg !1206
  %142 = and i1 %110, %132, !dbg !1208
  br i1 %142, label %143, label %145, !dbg !1208

; <label>:143:                                    ; preds = %140
  %144 = call i64 @strlen(i8* %2) #13, !dbg !1209
  call void @llvm.dbg.value(metadata i64 %144, i64 0, metadata !1044, metadata !583), !dbg !1107
  br label %145, !dbg !1210

; <label>:145:                                    ; preds = %140, %143
  %146 = phi i64 [ %144, %143 ], [ %127, %140 ]
  call void @llvm.dbg.value(metadata i64 %146, i64 0, metadata !1044, metadata !583), !dbg !1107
  %147 = icmp ugt i64 %141, %146, !dbg !1212
  br i1 %147, label %155, label %148, !dbg !1214

; <label>:148:                                    ; preds = %145
  %149 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !1215
  %150 = call i32 @memcmp(i8* %149, i8* %100, i64 %101) #13, !dbg !1216
  %151 = icmp ne i32 %150, 0, !dbg !1217
  %152 = or i1 %151, %112, !dbg !1217
  %153 = xor i1 %151, true, !dbg !1217
  %154 = zext i1 %153 to i8, !dbg !1217
  br i1 %152, label %155, label %644, !dbg !1217

; <label>:155:                                    ; preds = %148, %145, %139
  %156 = phi i64 [ %146, %148 ], [ %146, %145 ], [ %127, %139 ]
  %157 = phi i8 [ %154, %148 ], [ 0, %145 ], [ 0, %139 ]
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !1066, metadata !583), !dbg !1201
  call void @llvm.dbg.value(metadata i64 %156, i64 0, metadata !1044, metadata !583), !dbg !1107
  %158 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !1219
  %159 = load i8, i8* %158, align 1, !dbg !1219, !tbaa !1138
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !1061, metadata !583), !dbg !1220
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
  ], !dbg !1221

; <label>:160:                                    ; preds = %155
  br i1 %105, label %161, label %209, !dbg !1222

; <label>:161:                                    ; preds = %160
  br i1 %112, label %162, label %644, !dbg !1223

; <label>:162:                                    ; preds = %161
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1067, metadata !583), !dbg !1202
  %163 = and i8 %128, 1, !dbg !1228
  %164 = icmp eq i8 %163, 0, !dbg !1228
  %165 = and i1 %114, %164, !dbg !1231
  br i1 %165, label %166, label %182, !dbg !1231

; <label>:166:                                    ; preds = %162
  %167 = icmp ult i64 %125, %131, !dbg !1233
  br i1 %167, label %168, label %170, !dbg !1238

; <label>:168:                                    ; preds = %166
  %169 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !1240
  store i8 39, i8* %169, align 1, !dbg !1240, !tbaa !1138
  br label %170, !dbg !1240

; <label>:170:                                    ; preds = %168, %166
  %171 = add i64 %125, 1, !dbg !1242
  call void @llvm.dbg.value(metadata i64 %171, i64 0, metadata !1051, metadata !583), !dbg !1113
  %172 = icmp ult i64 %171, %131, !dbg !1244
  br i1 %172, label %173, label %175, !dbg !1248

; <label>:173:                                    ; preds = %170
  %174 = getelementptr inbounds i8, i8* %0, i64 %171, !dbg !1250
  store i8 36, i8* %174, align 1, !dbg !1250, !tbaa !1138
  br label %175, !dbg !1250

; <label>:175:                                    ; preds = %173, %170
  %176 = add i64 %125, 2, !dbg !1252
  call void @llvm.dbg.value(metadata i64 %176, i64 0, metadata !1051, metadata !583), !dbg !1113
  %177 = icmp ult i64 %176, %131, !dbg !1254
  br i1 %177, label %178, label %180, !dbg !1258

; <label>:178:                                    ; preds = %175
  %179 = getelementptr inbounds i8, i8* %0, i64 %176, !dbg !1260
  store i8 39, i8* %179, align 1, !dbg !1260, !tbaa !1138
  br label %180, !dbg !1260

; <label>:180:                                    ; preds = %178, %175
  %181 = add i64 %125, 3, !dbg !1262
  call void @llvm.dbg.value(metadata i64 %181, i64 0, metadata !1051, metadata !583), !dbg !1113
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1058, metadata !583), !dbg !1121
  br label %182, !dbg !1264

; <label>:182:                                    ; preds = %162, %180
  %183 = phi i64 [ %181, %180 ], [ %125, %162 ]
  %184 = phi i8 [ 1, %180 ], [ %128, %162 ]
  call void @llvm.dbg.value(metadata i8 %184, i64 0, metadata !1058, metadata !583), !dbg !1121
  call void @llvm.dbg.value(metadata i64 %183, i64 0, metadata !1051, metadata !583), !dbg !1113
  %185 = icmp ult i64 %183, %131, !dbg !1266
  br i1 %185, label %186, label %188, !dbg !1270

; <label>:186:                                    ; preds = %182
  %187 = getelementptr inbounds i8, i8* %0, i64 %183, !dbg !1272
  store i8 92, i8* %187, align 1, !dbg !1272, !tbaa !1138
  br label %188, !dbg !1272

; <label>:188:                                    ; preds = %186, %182
  %189 = add i64 %183, 1, !dbg !1274
  call void @llvm.dbg.value(metadata i64 %189, i64 0, metadata !1051, metadata !583), !dbg !1113
  br i1 %106, label %190, label %476, !dbg !1276

; <label>:190:                                    ; preds = %188
  %191 = add i64 %124, 1, !dbg !1278
  %192 = icmp ult i64 %191, %156, !dbg !1280
  br i1 %192, label %193, label %476, !dbg !1281

; <label>:193:                                    ; preds = %190
  %194 = getelementptr inbounds i8, i8* %2, i64 %191, !dbg !1282
  %195 = load i8, i8* %194, align 1, !dbg !1282, !tbaa !1138
  %196 = add i8 %195, -48, !dbg !1284
  %197 = icmp ult i8 %196, 10, !dbg !1284
  br i1 %197, label %198, label %476, !dbg !1284

; <label>:198:                                    ; preds = %193
  %199 = icmp ult i64 %189, %131, !dbg !1285
  br i1 %199, label %200, label %202, !dbg !1290

; <label>:200:                                    ; preds = %198
  %201 = getelementptr inbounds i8, i8* %0, i64 %189, !dbg !1292
  store i8 48, i8* %201, align 1, !dbg !1292, !tbaa !1138
  br label %202, !dbg !1292

; <label>:202:                                    ; preds = %200, %198
  %203 = add i64 %183, 2, !dbg !1294
  call void @llvm.dbg.value(metadata i64 %203, i64 0, metadata !1051, metadata !583), !dbg !1113
  %204 = icmp ult i64 %203, %131, !dbg !1296
  br i1 %204, label %205, label %207, !dbg !1300

; <label>:205:                                    ; preds = %202
  %206 = getelementptr inbounds i8, i8* %0, i64 %203, !dbg !1302
  store i8 48, i8* %206, align 1, !dbg !1302, !tbaa !1138
  br label %207, !dbg !1302

; <label>:207:                                    ; preds = %205, %202
  %208 = add i64 %183, 3, !dbg !1304
  call void @llvm.dbg.value(metadata i64 %208, i64 0, metadata !1051, metadata !583), !dbg !1113
  br label %476, !dbg !1306

; <label>:209:                                    ; preds = %160
  br i1 %23, label %476, label %587, !dbg !1307

; <label>:210:                                    ; preds = %155
  switch i32 %96, label %476 [
    i32 2, label %211
    i32 5, label %212
  ], !dbg !1308

; <label>:211:                                    ; preds = %210
  br i1 %112, label %476, label %644, !dbg !1309

; <label>:212:                                    ; preds = %210
  br i1 %25, label %476, label %213, !dbg !1311

; <label>:213:                                    ; preds = %212
  %214 = add i64 %124, 2, !dbg !1313
  %215 = icmp ult i64 %214, %156, !dbg !1315
  br i1 %215, label %216, label %476, !dbg !1316

; <label>:216:                                    ; preds = %213
  %217 = add i64 %124, 1, !dbg !1317
  %218 = getelementptr inbounds i8, i8* %2, i64 %217, !dbg !1319
  %219 = load i8, i8* %218, align 1, !dbg !1319, !tbaa !1138
  %220 = icmp eq i8 %219, 63, !dbg !1320
  br i1 %220, label %221, label %476, !dbg !1321

; <label>:221:                                    ; preds = %216
  %222 = getelementptr inbounds i8, i8* %2, i64 %214, !dbg !1323
  %223 = load i8, i8* %222, align 1, !dbg !1323, !tbaa !1138
  %224 = sext i8 %223 to i32, !dbg !1323
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
  ], !dbg !1324

; <label>:225:                                    ; preds = %221, %221, %221, %221, %221, %221, %221, %221, %221
  br i1 %112, label %226, label %644, !dbg !1325

; <label>:226:                                    ; preds = %225
  call void @llvm.dbg.value(metadata i8 %223, i64 0, metadata !1061, metadata !583), !dbg !1220
  call void @llvm.dbg.value(metadata i64 %214, i64 0, metadata !1050, metadata !583), !dbg !1189
  %227 = icmp ult i64 %125, %131, !dbg !1327
  br i1 %227, label %228, label %230, !dbg !1331

; <label>:228:                                    ; preds = %226
  %229 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !1333
  store i8 63, i8* %229, align 1, !dbg !1333, !tbaa !1138
  br label %230, !dbg !1333

; <label>:230:                                    ; preds = %228, %226
  %231 = add i64 %125, 1, !dbg !1335
  call void @llvm.dbg.value(metadata i64 %231, i64 0, metadata !1051, metadata !583), !dbg !1113
  %232 = icmp ult i64 %231, %131, !dbg !1337
  br i1 %232, label %233, label %235, !dbg !1341

; <label>:233:                                    ; preds = %230
  %234 = getelementptr inbounds i8, i8* %0, i64 %231, !dbg !1343
  store i8 34, i8* %234, align 1, !dbg !1343, !tbaa !1138
  br label %235, !dbg !1343

; <label>:235:                                    ; preds = %233, %230
  %236 = add i64 %125, 2, !dbg !1345
  call void @llvm.dbg.value(metadata i64 %236, i64 0, metadata !1051, metadata !583), !dbg !1113
  %237 = icmp ult i64 %236, %131, !dbg !1347
  br i1 %237, label %238, label %240, !dbg !1351

; <label>:238:                                    ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236, !dbg !1353
  store i8 34, i8* %239, align 1, !dbg !1353, !tbaa !1138
  br label %240, !dbg !1353

; <label>:240:                                    ; preds = %238, %235
  %241 = add i64 %125, 3, !dbg !1355
  call void @llvm.dbg.value(metadata i64 %241, i64 0, metadata !1051, metadata !583), !dbg !1113
  %242 = icmp ult i64 %241, %131, !dbg !1357
  br i1 %242, label %243, label %245, !dbg !1361

; <label>:243:                                    ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241, !dbg !1363
  store i8 63, i8* %244, align 1, !dbg !1363, !tbaa !1138
  br label %245, !dbg !1363

; <label>:245:                                    ; preds = %243, %240
  %246 = add i64 %125, 4, !dbg !1365
  call void @llvm.dbg.value(metadata i64 %246, i64 0, metadata !1051, metadata !583), !dbg !1113
  br label %476, !dbg !1367

; <label>:247:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !1065, metadata !583), !dbg !1368
  br label %257, !dbg !1369

; <label>:248:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !1065, metadata !583), !dbg !1368
  br label %257, !dbg !1370

; <label>:249:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !1065, metadata !583), !dbg !1368
  br label %255, !dbg !1371

; <label>:250:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !1065, metadata !583), !dbg !1368
  br label %255, !dbg !1372

; <label>:251:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !1065, metadata !583), !dbg !1368
  br label %257, !dbg !1373

; <label>:252:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !1065, metadata !583), !dbg !1368
  br i1 %114, label %253, label %254, !dbg !1374

; <label>:253:                                    ; preds = %252
  br i1 %112, label %542, label %644, !dbg !1375

; <label>:254:                                    ; preds = %252
  br i1 %122, label %542, label %255, !dbg !1378

; <label>:255:                                    ; preds = %254, %155, %250, %249
  %256 = phi i8 [ 92, %254 ], [ 116, %250 ], [ 114, %249 ], [ 110, %155 ]
  call void @llvm.dbg.value(metadata i8 %256, i64 0, metadata !1065, metadata !583), !dbg !1368
  br i1 %118, label %257, label %644, !dbg !1380

; <label>:257:                                    ; preds = %255, %155, %251, %248, %247
  %258 = phi i8 [ %256, %255 ], [ 118, %251 ], [ 102, %248 ], [ 98, %247 ], [ 97, %155 ]
  call void @llvm.dbg.value(metadata i8 %258, i64 0, metadata !1065, metadata !583), !dbg !1368
  br i1 %105, label %503, label %476, !dbg !1382

; <label>:259:                                    ; preds = %155, %155
  %260 = icmp eq i64 %156, -1, !dbg !1383
  br i1 %260, label %261, label %266, !dbg !1385

; <label>:261:                                    ; preds = %259
  %262 = load i8, i8* %26, align 1, !dbg !1386, !tbaa !1138
  %263 = icmp ne i8 %262, 0, !dbg !1388
  %264 = icmp ne i64 %124, 0, !dbg !1389
  %265 = or i1 %264, %263, !dbg !1391
  br i1 %265, label %476, label %272, !dbg !1391

; <label>:266:                                    ; preds = %259
  %267 = icmp ne i64 %156, 1, !dbg !1392
  %268 = icmp ne i64 %124, 0, !dbg !1389
  %269 = or i1 %268, %267, !dbg !1394
  br i1 %269, label %476, label %272, !dbg !1394

; <label>:270:                                    ; preds = %155, %155
  %271 = icmp eq i64 %124, 0, !dbg !1389
  br i1 %271, label %272, label %476, !dbg !1396

; <label>:272:                                    ; preds = %270, %266, %261, %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1068, metadata !583), !dbg !1203
  br label %273, !dbg !1397

; <label>:273:                                    ; preds = %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %272
  %274 = phi i8 [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 1, %272 ]
  call void @llvm.dbg.value(metadata i8 %274, i64 0, metadata !1068, metadata !583), !dbg !1203
  br i1 %118, label %476, label %644, !dbg !1398

; <label>:275:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1059, metadata !583), !dbg !1122
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1068, metadata !583), !dbg !1203
  br i1 %114, label %276, label %476, !dbg !1400

; <label>:276:                                    ; preds = %275
  br i1 %112, label %277, label %644, !dbg !1401

; <label>:277:                                    ; preds = %276
  %278 = icmp eq i64 %131, 0, !dbg !1404
  %279 = icmp ne i64 %126, 0, !dbg !1406
  %280 = or i1 %279, %278, !dbg !1408
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !1052, metadata !583), !dbg !1114
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1042, metadata !583), !dbg !1105
  %281 = select i1 %280, i64 %126, i64 %131, !dbg !1408
  %282 = select i1 %280, i64 %131, i64 0, !dbg !1408
  call void @llvm.dbg.value(metadata i64 %282, i64 0, metadata !1042, metadata !583), !dbg !1105
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !1052, metadata !583), !dbg !1114
  %283 = icmp ult i64 %125, %282, !dbg !1409
  br i1 %283, label %284, label %286, !dbg !1413

; <label>:284:                                    ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !1415
  store i8 39, i8* %285, align 1, !dbg !1415, !tbaa !1138
  br label %286, !dbg !1415

; <label>:286:                                    ; preds = %284, %277
  %287 = add i64 %125, 1, !dbg !1417
  call void @llvm.dbg.value(metadata i64 %287, i64 0, metadata !1051, metadata !583), !dbg !1113
  %288 = icmp ult i64 %287, %282, !dbg !1419
  br i1 %288, label %289, label %291, !dbg !1423

; <label>:289:                                    ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287, !dbg !1425
  store i8 92, i8* %290, align 1, !dbg !1425, !tbaa !1138
  br label %291, !dbg !1425

; <label>:291:                                    ; preds = %289, %286
  %292 = add i64 %125, 2, !dbg !1427
  call void @llvm.dbg.value(metadata i64 %292, i64 0, metadata !1051, metadata !583), !dbg !1113
  %293 = icmp ult i64 %292, %282, !dbg !1429
  br i1 %293, label %294, label %296, !dbg !1433

; <label>:294:                                    ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292, !dbg !1435
  store i8 39, i8* %295, align 1, !dbg !1435, !tbaa !1138
  br label %296, !dbg !1435

; <label>:296:                                    ; preds = %294, %291
  %297 = add i64 %125, 3, !dbg !1437
  call void @llvm.dbg.value(metadata i64 %297, i64 0, metadata !1051, metadata !583), !dbg !1113
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1058, metadata !583), !dbg !1121
  br label %476, !dbg !1439

; <label>:298:                                    ; preds = %155
  br i1 %14, label %299, label %308, !dbg !1440

; <label>:299:                                    ; preds = %298
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1069, metadata !583), !dbg !1441
  %300 = tail call i16** @__ctype_b_loc() #1, !dbg !1442
  %301 = load i16*, i16** %300, align 8, !dbg !1442, !tbaa !591
  %302 = zext i8 %159 to i64, !dbg !1442
  %303 = getelementptr inbounds i16, i16* %301, i64 %302, !dbg !1442
  %304 = load i16, i16* %303, align 2, !dbg !1442, !tbaa !1444
  %305 = lshr i16 %304, 14, !dbg !1446
  %306 = trunc i16 %305 to i8, !dbg !1446
  %307 = and i8 %306, 1, !dbg !1446
  call void @llvm.dbg.value(metadata i8 %307, i64 0, metadata !1072, metadata !583), !dbg !1447
  br label %368, !dbg !1448

; <label>:308:                                    ; preds = %298
  call void @llvm.lifetime.start(i64 8, i8* nonnull %18) #10, !dbg !1449
  store i64 0, i64* %10, align 8, !dbg !1450
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1069, metadata !583), !dbg !1441
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1072, metadata !583), !dbg !1447
  %309 = icmp eq i64 %156, -1, !dbg !1451
  br i1 %309, label %310, label %312, !dbg !1453, !llvm.loop !1454

; <label>:310:                                    ; preds = %308
  %311 = call i64 @strlen(i8* nonnull %2) #13, !dbg !1457
  call void @llvm.dbg.value(metadata i64 %311, i64 0, metadata !1044, metadata !583), !dbg !1107
  br label %312, !dbg !1458, !llvm.loop !1454

; <label>:312:                                    ; preds = %310, %308
  %313 = phi i64 [ %156, %308 ], [ %311, %310 ]
  br label %314, !dbg !1447

; <label>:314:                                    ; preds = %312, %355
  %315 = phi i64 [ %360, %355 ], [ 0, %312 ]
  %316 = phi i8 [ %359, %355 ], [ 1, %312 ]
  call void @llvm.dbg.value(metadata i8 %316, i64 0, metadata !1072, metadata !583), !dbg !1447
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !1069, metadata !583), !dbg !1441
  call void @llvm.dbg.value(metadata i64 %313, i64 0, metadata !1044, metadata !583), !dbg !1107
  call void @llvm.lifetime.start(i64 4, i8* nonnull %19) #10, !dbg !1459
  %317 = add i64 %315, %124, !dbg !1460
  %318 = getelementptr inbounds i8, i8* %2, i64 %317, !dbg !1461
  %319 = sub i64 %313, %317, !dbg !1462
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1073, metadata !685), !dbg !1463
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !1090, metadata !685), !dbg !1464
  %320 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %318, i64 %319, %struct.__mbstate_t* nonnull %11) #10, !dbg !1465
  call void @llvm.dbg.value(metadata i64 %320, i64 0, metadata !1093, metadata !583), !dbg !1466
  switch i64 %320, label %334 [
    i64 0, label %350
    i64 -1, label %347
    i64 -2, label %321
  ], !dbg !1467

; <label>:321:                                    ; preds = %314
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !1069, metadata !583), !dbg !1441
  %322 = icmp ugt i64 %313, %317, !dbg !1468
  br i1 %322, label %323, label %351, !dbg !1471

; <label>:323:                                    ; preds = %321
  br label %324, !dbg !1472

; <label>:324:                                    ; preds = %323, %330
  %325 = phi i64 [ %332, %330 ], [ %317, %323 ]
  %326 = phi i64 [ %331, %330 ], [ %315, %323 ]
  %327 = getelementptr inbounds i8, i8* %2, i64 %325, !dbg !1472
  %328 = load i8, i8* %327, align 1, !dbg !1472, !tbaa !1138
  %329 = icmp eq i8 %328, 0, !dbg !1474
  br i1 %329, label %348, label %330, !dbg !1475

; <label>:330:                                    ; preds = %324
  %331 = add i64 %326, 1, !dbg !1477
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !1069, metadata !583), !dbg !1441
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !1069, metadata !583), !dbg !1441
  %332 = add i64 %331, %124, !dbg !1478
  %333 = icmp ult i64 %332, %313, !dbg !1468
  br i1 %333, label %324, label %348, !dbg !1471, !llvm.loop !1479

; <label>:334:                                    ; preds = %314
  %335 = icmp ugt i64 %320, 1, !dbg !1481
  %336 = and i1 %116, %335, !dbg !1485
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1094, metadata !583), !dbg !1486
  br i1 %336, label %337, label %355, !dbg !1485

; <label>:337:                                    ; preds = %334
  br label %338, !dbg !1487

; <label>:338:                                    ; preds = %337, %344
  %339 = phi i64 [ %345, %344 ], [ 1, %337 ]
  %340 = add i64 %339, %317, !dbg !1487
  %341 = getelementptr inbounds i8, i8* %2, i64 %340, !dbg !1488
  %342 = load i8, i8* %341, align 1, !dbg !1488, !tbaa !1138
  %343 = sext i8 %342 to i32, !dbg !1488
  switch i32 %343, label %344 [
    i32 91, label %367
    i32 92, label %367
    i32 94, label %367
    i32 96, label %367
    i32 124, label %367
  ], !dbg !1489

; <label>:344:                                    ; preds = %338
  %345 = add nuw i64 %339, 1, !dbg !1490
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !1094, metadata !583), !dbg !1486
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !1094, metadata !583), !dbg !1486
  %346 = icmp ult i64 %345, %320, !dbg !1481
  br i1 %346, label %338, label %354, !dbg !1492, !llvm.loop !1494

; <label>:347:                                    ; preds = %314
  br label %351, !dbg !1447

; <label>:348:                                    ; preds = %324, %330
  %349 = phi i64 [ %331, %330 ], [ %326, %324 ]
  br label %351, !dbg !1447

; <label>:350:                                    ; preds = %314
  br label %351, !dbg !1447

; <label>:351:                                    ; preds = %350, %348, %347, %321
  %352 = phi i64 [ %315, %321 ], [ %315, %347 ], [ %349, %348 ], [ %315, %350 ]
  %353 = phi i8 [ 0, %321 ], [ 0, %347 ], [ 0, %348 ], [ %316, %350 ]
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1072, metadata !583), !dbg !1447
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1069, metadata !583), !dbg !1441
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10, !dbg !1497
  br label %364

; <label>:354:                                    ; preds = %344
  br label %355, !dbg !1498

; <label>:355:                                    ; preds = %354, %334
  %356 = load i32, i32* %12, align 4, !dbg !1498, !tbaa !683
  call void @llvm.dbg.value(metadata i32 %356, i64 0, metadata !1090, metadata !583), !dbg !1464
  %357 = call i32 @iswprint(i32 %356) #10, !dbg !1500
  %358 = icmp eq i32 %357, 0, !dbg !1500
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1072, metadata !583), !dbg !1447
  %359 = select i1 %358, i8 0, i8 %316, !dbg !1501
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1072, metadata !583), !dbg !1447
  %360 = add i64 %320, %315, !dbg !1502
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1069, metadata !583), !dbg !1441
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1072, metadata !583), !dbg !1447
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1069, metadata !583), !dbg !1441
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10, !dbg !1497
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1073, metadata !685), !dbg !1463
  %361 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #13, !dbg !1503
  %362 = icmp eq i32 %361, 0, !dbg !1504
  br i1 %362, label %314, label %363, !dbg !1505, !llvm.loop !1454

; <label>:363:                                    ; preds = %355
  br label %364, !dbg !1507

; <label>:364:                                    ; preds = %363, %351
  %365 = phi i8 [ %353, %351 ], [ %359, %363 ]
  %366 = phi i64 [ %352, %351 ], [ %360, %363 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #10, !dbg !1507
  br label %368

; <label>:367:                                    ; preds = %338, %338, %338, %338, %338
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1072, metadata !583), !dbg !1447
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1069, metadata !583), !dbg !1441
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10, !dbg !1497
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #10, !dbg !1507
  br label %649

; <label>:368:                                    ; preds = %364, %299
  %369 = phi i64 [ %156, %299 ], [ %313, %364 ]
  %370 = phi i64 [ 1, %299 ], [ %366, %364 ]
  %371 = phi i8 [ %307, %299 ], [ %365, %364 ]
  call void @llvm.dbg.value(metadata i8 %371, i64 0, metadata !1072, metadata !583), !dbg !1447
  call void @llvm.dbg.value(metadata i64 %370, i64 0, metadata !1069, metadata !583), !dbg !1441
  call void @llvm.dbg.value(metadata i64 %369, i64 0, metadata !1044, metadata !583), !dbg !1107
  %372 = and i8 %371, 1, !dbg !1508
  %373 = icmp ne i8 %372, 0, !dbg !1508
  call void @llvm.dbg.value(metadata i8 %372, i64 0, metadata !1068, metadata !583), !dbg !1203
  %374 = icmp ult i64 %370, 2, !dbg !1509
  %375 = or i1 %373, %113, !dbg !1510
  %376 = and i1 %374, %375, !dbg !1512
  br i1 %376, label %476, label %377, !dbg !1512

; <label>:377:                                    ; preds = %368
  %378 = add i64 %370, %124, !dbg !1513
  call void @llvm.dbg.value(metadata i64 %378, i64 0, metadata !1101, metadata !583), !dbg !1514
  br label %379, !dbg !1515

; <label>:379:                                    ; preds = %472, %377
  %380 = phi i64 [ %124, %377 ], [ %447, %472 ]
  %381 = phi i64 [ %125, %377 ], [ %473, %472 ]
  %382 = phi i8 [ %128, %377 ], [ %468, %472 ]
  %383 = phi i8 [ %159, %377 ], [ %475, %472 ]
  %384 = phi i8 [ %157, %377 ], [ %445, %472 ]
  %385 = phi i8 [ 0, %377 ], [ %446, %472 ]
  call void @llvm.dbg.value(metadata i8 %385, i64 0, metadata !1067, metadata !583), !dbg !1202
  call void @llvm.dbg.value(metadata i8 %384, i64 0, metadata !1066, metadata !583), !dbg !1201
  call void @llvm.dbg.value(metadata i8 %383, i64 0, metadata !1061, metadata !583), !dbg !1220
  call void @llvm.dbg.value(metadata i8 %382, i64 0, metadata !1058, metadata !583), !dbg !1121
  call void @llvm.dbg.value(metadata i64 %381, i64 0, metadata !1051, metadata !583), !dbg !1113
  call void @llvm.dbg.value(metadata i64 %380, i64 0, metadata !1050, metadata !583), !dbg !1189
  br i1 %375, label %432, label %386, !dbg !1516

; <label>:386:                                    ; preds = %379
  br i1 %112, label %387, label %643, !dbg !1521

; <label>:387:                                    ; preds = %386
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1067, metadata !583), !dbg !1202
  %388 = and i8 %382, 1, !dbg !1525
  %389 = icmp eq i8 %388, 0, !dbg !1525
  %390 = and i1 %114, %389, !dbg !1528
  br i1 %390, label %391, label %407, !dbg !1528

; <label>:391:                                    ; preds = %387
  %392 = icmp ult i64 %381, %131, !dbg !1530
  br i1 %392, label %393, label %395, !dbg !1535

; <label>:393:                                    ; preds = %391
  %394 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !1537
  store i8 39, i8* %394, align 1, !dbg !1537, !tbaa !1138
  br label %395, !dbg !1537

; <label>:395:                                    ; preds = %393, %391
  %396 = add i64 %381, 1, !dbg !1539
  call void @llvm.dbg.value(metadata i64 %396, i64 0, metadata !1051, metadata !583), !dbg !1113
  %397 = icmp ult i64 %396, %131, !dbg !1541
  br i1 %397, label %398, label %400, !dbg !1545

; <label>:398:                                    ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !1547
  store i8 36, i8* %399, align 1, !dbg !1547, !tbaa !1138
  br label %400, !dbg !1547

; <label>:400:                                    ; preds = %398, %395
  %401 = add i64 %381, 2, !dbg !1549
  call void @llvm.dbg.value(metadata i64 %401, i64 0, metadata !1051, metadata !583), !dbg !1113
  %402 = icmp ult i64 %401, %131, !dbg !1551
  br i1 %402, label %403, label %405, !dbg !1555

; <label>:403:                                    ; preds = %400
  %404 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !1557
  store i8 39, i8* %404, align 1, !dbg !1557, !tbaa !1138
  br label %405, !dbg !1557

; <label>:405:                                    ; preds = %403, %400
  %406 = add i64 %381, 3, !dbg !1559
  call void @llvm.dbg.value(metadata i64 %406, i64 0, metadata !1051, metadata !583), !dbg !1113
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1058, metadata !583), !dbg !1121
  br label %407, !dbg !1561

; <label>:407:                                    ; preds = %387, %405
  %408 = phi i64 [ %406, %405 ], [ %381, %387 ]
  %409 = phi i8 [ 1, %405 ], [ %382, %387 ]
  call void @llvm.dbg.value(metadata i8 %409, i64 0, metadata !1058, metadata !583), !dbg !1121
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !1051, metadata !583), !dbg !1113
  %410 = icmp ult i64 %408, %131, !dbg !1563
  br i1 %410, label %411, label %413, !dbg !1567

; <label>:411:                                    ; preds = %407
  %412 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !1569
  store i8 92, i8* %412, align 1, !dbg !1569, !tbaa !1138
  br label %413, !dbg !1569

; <label>:413:                                    ; preds = %411, %407
  %414 = add i64 %408, 1, !dbg !1571
  call void @llvm.dbg.value(metadata i64 %414, i64 0, metadata !1051, metadata !583), !dbg !1113
  %415 = icmp ult i64 %414, %131, !dbg !1573
  br i1 %415, label %416, label %420, !dbg !1577

; <label>:416:                                    ; preds = %413
  %417 = lshr i8 %383, 6, !dbg !1579
  %418 = or i8 %417, 48, !dbg !1579
  %419 = getelementptr inbounds i8, i8* %0, i64 %414, !dbg !1579
  store i8 %418, i8* %419, align 1, !dbg !1579, !tbaa !1138
  br label %420, !dbg !1579

; <label>:420:                                    ; preds = %416, %413
  %421 = add i64 %408, 2, !dbg !1581
  call void @llvm.dbg.value(metadata i64 %421, i64 0, metadata !1051, metadata !583), !dbg !1113
  %422 = icmp ult i64 %421, %131, !dbg !1583
  br i1 %422, label %423, label %428, !dbg !1587

; <label>:423:                                    ; preds = %420
  %424 = lshr i8 %383, 3, !dbg !1589
  %425 = and i8 %424, 7, !dbg !1589
  %426 = or i8 %425, 48, !dbg !1589
  %427 = getelementptr inbounds i8, i8* %0, i64 %421, !dbg !1589
  store i8 %426, i8* %427, align 1, !dbg !1589, !tbaa !1138
  br label %428, !dbg !1589

; <label>:428:                                    ; preds = %423, %420
  %429 = add i64 %408, 3, !dbg !1591
  call void @llvm.dbg.value(metadata i64 %429, i64 0, metadata !1051, metadata !583), !dbg !1113
  %430 = and i8 %383, 7, !dbg !1593
  %431 = or i8 %430, 48, !dbg !1594
  call void @llvm.dbg.value(metadata i8 %431, i64 0, metadata !1061, metadata !583), !dbg !1220
  br label %441, !dbg !1595

; <label>:432:                                    ; preds = %379
  %433 = and i8 %384, 1, !dbg !1596
  %434 = icmp eq i8 %433, 0, !dbg !1596
  br i1 %434, label %441, label %435, !dbg !1598

; <label>:435:                                    ; preds = %432
  %436 = icmp ult i64 %381, %131, !dbg !1599
  br i1 %436, label %437, label %439, !dbg !1604

; <label>:437:                                    ; preds = %435
  %438 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !1606
  store i8 92, i8* %438, align 1, !dbg !1606, !tbaa !1138
  br label %439, !dbg !1606

; <label>:439:                                    ; preds = %437, %435
  %440 = add i64 %381, 1, !dbg !1608
  call void @llvm.dbg.value(metadata i64 %440, i64 0, metadata !1051, metadata !583), !dbg !1113
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1066, metadata !583), !dbg !1201
  br label %441, !dbg !1610

; <label>:441:                                    ; preds = %432, %439, %428
  %442 = phi i64 [ %440, %439 ], [ %381, %432 ], [ %429, %428 ]
  %443 = phi i8 [ %382, %439 ], [ %382, %432 ], [ %409, %428 ]
  %444 = phi i8 [ %383, %439 ], [ %383, %432 ], [ %431, %428 ]
  %445 = phi i8 [ 0, %439 ], [ %384, %432 ], [ %384, %428 ]
  %446 = phi i8 [ %385, %439 ], [ %385, %432 ], [ 1, %428 ]
  call void @llvm.dbg.value(metadata i8 %446, i64 0, metadata !1067, metadata !583), !dbg !1202
  call void @llvm.dbg.value(metadata i8 %445, i64 0, metadata !1066, metadata !583), !dbg !1201
  call void @llvm.dbg.value(metadata i8 %444, i64 0, metadata !1061, metadata !583), !dbg !1220
  call void @llvm.dbg.value(metadata i8 %443, i64 0, metadata !1058, metadata !583), !dbg !1121
  call void @llvm.dbg.value(metadata i64 %442, i64 0, metadata !1051, metadata !583), !dbg !1113
  %447 = add i64 %380, 1, !dbg !1611
  %448 = icmp ugt i64 %378, %447, !dbg !1613
  br i1 %448, label %449, label %541, !dbg !1614

; <label>:449:                                    ; preds = %441
  %450 = and i8 %443, 1, !dbg !1615
  %451 = icmp ne i8 %450, 0, !dbg !1615
  %452 = and i8 %446, 1, !dbg !1619
  %453 = icmp eq i8 %452, 0, !dbg !1619
  %454 = and i1 %451, %453, !dbg !1615
  br i1 %454, label %455, label %466, !dbg !1615

; <label>:455:                                    ; preds = %449
  %456 = icmp ult i64 %442, %131, !dbg !1621
  br i1 %456, label %457, label %459, !dbg !1626

; <label>:457:                                    ; preds = %455
  %458 = getelementptr inbounds i8, i8* %0, i64 %442, !dbg !1628
  store i8 39, i8* %458, align 1, !dbg !1628, !tbaa !1138
  br label %459, !dbg !1628

; <label>:459:                                    ; preds = %457, %455
  %460 = add i64 %442, 1, !dbg !1630
  call void @llvm.dbg.value(metadata i64 %460, i64 0, metadata !1051, metadata !583), !dbg !1113
  %461 = icmp ult i64 %460, %131, !dbg !1632
  br i1 %461, label %462, label %464, !dbg !1636

; <label>:462:                                    ; preds = %459
  %463 = getelementptr inbounds i8, i8* %0, i64 %460, !dbg !1638
  store i8 39, i8* %463, align 1, !dbg !1638, !tbaa !1138
  br label %464, !dbg !1638

; <label>:464:                                    ; preds = %462, %459
  %465 = add i64 %442, 2, !dbg !1640
  call void @llvm.dbg.value(metadata i64 %465, i64 0, metadata !1051, metadata !583), !dbg !1113
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1058, metadata !583), !dbg !1121
  br label %466, !dbg !1642

; <label>:466:                                    ; preds = %449, %464
  %467 = phi i64 [ %465, %464 ], [ %442, %449 ]
  %468 = phi i8 [ 0, %464 ], [ %443, %449 ]
  call void @llvm.dbg.value(metadata i8 %468, i64 0, metadata !1058, metadata !583), !dbg !1121
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !1051, metadata !583), !dbg !1113
  %469 = icmp ult i64 %467, %131, !dbg !1644
  br i1 %469, label %470, label %472, !dbg !1648

; <label>:470:                                    ; preds = %466
  %471 = getelementptr inbounds i8, i8* %0, i64 %467, !dbg !1650
  store i8 %444, i8* %471, align 1, !dbg !1650, !tbaa !1138
  br label %472, !dbg !1650

; <label>:472:                                    ; preds = %470, %466
  %473 = add i64 %467, 1, !dbg !1652
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !1051, metadata !583), !dbg !1113
  call void @llvm.dbg.value(metadata i64 %447, i64 0, metadata !1050, metadata !583), !dbg !1189
  %474 = getelementptr inbounds i8, i8* %2, i64 %447, !dbg !1654
  %475 = load i8, i8* %474, align 1, !dbg !1654, !tbaa !1138
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !1061, metadata !583), !dbg !1220
  br label %379, !dbg !1655, !llvm.loop !1657

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
  call void @llvm.dbg.value(metadata i64 %486, i64 0, metadata !1042, metadata !583), !dbg !1105
  call void @llvm.dbg.value(metadata i8 %485, i64 0, metadata !1068, metadata !583), !dbg !1203
  call void @llvm.dbg.value(metadata i8 %484, i64 0, metadata !1067, metadata !583), !dbg !1202
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !1066, metadata !583), !dbg !1201
  call void @llvm.dbg.value(metadata i8 %483, i64 0, metadata !1061, metadata !583), !dbg !1220
  call void @llvm.dbg.value(metadata i8 %482, i64 0, metadata !1059, metadata !583), !dbg !1122
  call void @llvm.dbg.value(metadata i8 %481, i64 0, metadata !1058, metadata !583), !dbg !1121
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !1044, metadata !583), !dbg !1107
  call void @llvm.dbg.value(metadata i64 %479, i64 0, metadata !1052, metadata !583), !dbg !1114
  call void @llvm.dbg.value(metadata i64 %478, i64 0, metadata !1051, metadata !583), !dbg !1113
  call void @llvm.dbg.value(metadata i64 %477, i64 0, metadata !1050, metadata !583), !dbg !1189
  br i1 %107, label %488, label %487, !dbg !1660

; <label>:487:                                    ; preds = %476
  br i1 %117, label %489, label %501, !dbg !1662

; <label>:488:                                    ; preds = %476
  br i1 %20, label %501, label %489, !dbg !1663

; <label>:489:                                    ; preds = %488, %487
  %490 = lshr i8 %483, 5, !dbg !1664
  %491 = zext i8 %490 to i64, !dbg !1664
  %492 = getelementptr inbounds i32, i32* %6, i64 %491, !dbg !1666
  %493 = load i32, i32* %492, align 4, !dbg !1666, !tbaa !683
  %494 = and i8 %483, 31, !dbg !1667
  %495 = zext i8 %494 to i32, !dbg !1668
  %496 = shl i32 1, %495, !dbg !1669
  %497 = and i32 %493, %496, !dbg !1669
  %498 = icmp eq i32 %497, 0, !dbg !1669
  %499 = icmp eq i8 %157, 0, !dbg !1670
  %500 = and i1 %499, %498, !dbg !1671
  br i1 %500, label %542, label %503, !dbg !1671

; <label>:501:                                    ; preds = %488, %487
  %502 = icmp eq i8 %157, 0, !dbg !1670
  br i1 %502, label %542, label %503, !dbg !1672

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
  call void @llvm.dbg.value(metadata i64 %512, i64 0, metadata !1042, metadata !583), !dbg !1105
  call void @llvm.dbg.value(metadata i8 %511, i64 0, metadata !1068, metadata !583), !dbg !1203
  call void @llvm.dbg.value(metadata i8 %510, i64 0, metadata !1061, metadata !583), !dbg !1220
  call void @llvm.dbg.value(metadata i8 %509, i64 0, metadata !1059, metadata !583), !dbg !1122
  call void @llvm.dbg.value(metadata i8 %508, i64 0, metadata !1058, metadata !583), !dbg !1121
  call void @llvm.dbg.value(metadata i64 %507, i64 0, metadata !1044, metadata !583), !dbg !1107
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !1052, metadata !583), !dbg !1114
  call void @llvm.dbg.value(metadata i64 %505, i64 0, metadata !1051, metadata !583), !dbg !1113
  call void @llvm.dbg.value(metadata i64 %504, i64 0, metadata !1050, metadata !583), !dbg !1189
  br i1 %112, label %513, label %644, !dbg !1674

; <label>:513:                                    ; preds = %503
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1067, metadata !583), !dbg !1202
  %514 = and i8 %508, 1, !dbg !1677
  %515 = icmp eq i8 %514, 0, !dbg !1677
  %516 = and i1 %114, %515, !dbg !1680
  br i1 %516, label %517, label %533, !dbg !1680

; <label>:517:                                    ; preds = %513
  %518 = icmp ult i64 %505, %512, !dbg !1682
  br i1 %518, label %519, label %521, !dbg !1687

; <label>:519:                                    ; preds = %517
  %520 = getelementptr inbounds i8, i8* %0, i64 %505, !dbg !1689
  store i8 39, i8* %520, align 1, !dbg !1689, !tbaa !1138
  br label %521, !dbg !1689

; <label>:521:                                    ; preds = %519, %517
  %522 = add i64 %505, 1, !dbg !1691
  call void @llvm.dbg.value(metadata i64 %522, i64 0, metadata !1051, metadata !583), !dbg !1113
  %523 = icmp ult i64 %522, %512, !dbg !1693
  br i1 %523, label %524, label %526, !dbg !1697

; <label>:524:                                    ; preds = %521
  %525 = getelementptr inbounds i8, i8* %0, i64 %522, !dbg !1699
  store i8 36, i8* %525, align 1, !dbg !1699, !tbaa !1138
  br label %526, !dbg !1699

; <label>:526:                                    ; preds = %524, %521
  %527 = add i64 %505, 2, !dbg !1701
  call void @llvm.dbg.value(metadata i64 %527, i64 0, metadata !1051, metadata !583), !dbg !1113
  %528 = icmp ult i64 %527, %512, !dbg !1703
  br i1 %528, label %529, label %531, !dbg !1707

; <label>:529:                                    ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527, !dbg !1709
  store i8 39, i8* %530, align 1, !dbg !1709, !tbaa !1138
  br label %531, !dbg !1709

; <label>:531:                                    ; preds = %529, %526
  %532 = add i64 %505, 3, !dbg !1711
  call void @llvm.dbg.value(metadata i64 %532, i64 0, metadata !1051, metadata !583), !dbg !1113
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1058, metadata !583), !dbg !1121
  br label %533, !dbg !1713

; <label>:533:                                    ; preds = %513, %531
  %534 = phi i64 [ %532, %531 ], [ %505, %513 ]
  %535 = phi i8 [ 1, %531 ], [ %508, %513 ]
  call void @llvm.dbg.value(metadata i8 %535, i64 0, metadata !1058, metadata !583), !dbg !1121
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !1051, metadata !583), !dbg !1113
  %536 = icmp ult i64 %534, %512, !dbg !1715
  br i1 %536, label %537, label %539, !dbg !1719

; <label>:537:                                    ; preds = %533
  %538 = getelementptr inbounds i8, i8* %0, i64 %534, !dbg !1721
  store i8 92, i8* %538, align 1, !dbg !1721, !tbaa !1138
  br label %539, !dbg !1721

; <label>:539:                                    ; preds = %533, %537
  %540 = add i64 %534, 1, !dbg !1723
  call void @llvm.dbg.value(metadata i64 %540, i64 0, metadata !1051, metadata !583), !dbg !1113
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !1042, metadata !583), !dbg !1105
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !1068, metadata !583), !dbg !1203
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !1067, metadata !583), !dbg !1202
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !1061, metadata !583), !dbg !1220
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !1059, metadata !583), !dbg !1122
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !1058, metadata !583), !dbg !1121
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !1044, metadata !583), !dbg !1107
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1052, metadata !583), !dbg !1114
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !1051, metadata !583), !dbg !1113
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !1050, metadata !583), !dbg !1189
  br label %569, !dbg !1725

; <label>:541:                                    ; preds = %441
  br label %542, !dbg !1105

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
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !1042, metadata !583), !dbg !1105
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !1068, metadata !583), !dbg !1203
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !1067, metadata !583), !dbg !1202
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !1061, metadata !583), !dbg !1220
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !1059, metadata !583), !dbg !1122
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !1058, metadata !583), !dbg !1121
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !1044, metadata !583), !dbg !1107
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1052, metadata !583), !dbg !1114
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !1051, metadata !583), !dbg !1113
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !1050, metadata !583), !dbg !1189
  %553 = and i8 %547, 1, !dbg !1725
  %554 = icmp ne i8 %553, 0, !dbg !1725
  %555 = and i8 %550, 1, !dbg !1729
  %556 = icmp eq i8 %555, 0, !dbg !1729
  %557 = and i1 %554, %556, !dbg !1725
  br i1 %557, label %558, label %569, !dbg !1725

; <label>:558:                                    ; preds = %542
  %559 = icmp ult i64 %544, %552, !dbg !1731
  br i1 %559, label %560, label %562, !dbg !1736

; <label>:560:                                    ; preds = %558
  %561 = getelementptr inbounds i8, i8* %0, i64 %544, !dbg !1738
  store i8 39, i8* %561, align 1, !dbg !1738, !tbaa !1138
  br label %562, !dbg !1738

; <label>:562:                                    ; preds = %560, %558
  %563 = add i64 %544, 1, !dbg !1740
  call void @llvm.dbg.value(metadata i64 %563, i64 0, metadata !1051, metadata !583), !dbg !1113
  %564 = icmp ult i64 %563, %552, !dbg !1742
  br i1 %564, label %565, label %567, !dbg !1746

; <label>:565:                                    ; preds = %562
  %566 = getelementptr inbounds i8, i8* %0, i64 %563, !dbg !1748
  store i8 39, i8* %566, align 1, !dbg !1748, !tbaa !1138
  br label %567, !dbg !1748

; <label>:567:                                    ; preds = %565, %562
  %568 = add i64 %544, 2, !dbg !1750
  call void @llvm.dbg.value(metadata i64 %568, i64 0, metadata !1051, metadata !583), !dbg !1113
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1058, metadata !583), !dbg !1121
  br label %569, !dbg !1752

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
  call void @llvm.dbg.value(metadata i8 %578, i64 0, metadata !1058, metadata !583), !dbg !1121
  call void @llvm.dbg.value(metadata i64 %577, i64 0, metadata !1051, metadata !583), !dbg !1113
  %579 = icmp ult i64 %577, %570, !dbg !1754
  br i1 %579, label %580, label %582, !dbg !1758

; <label>:580:                                    ; preds = %569
  %581 = getelementptr inbounds i8, i8* %0, i64 %577, !dbg !1760
  store i8 %572, i8* %581, align 1, !dbg !1760, !tbaa !1138
  br label %582, !dbg !1760

; <label>:582:                                    ; preds = %580, %569
  %583 = add i64 %577, 1, !dbg !1762
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !1051, metadata !583), !dbg !1113
  %584 = and i8 %571, 1, !dbg !1764
  %585 = icmp eq i8 %584, 0, !dbg !1764
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1060, metadata !583), !dbg !1123
  %586 = select i1 %585, i8 0, i8 %130, !dbg !1766
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !1060, metadata !583), !dbg !1123
  br label %587, !dbg !1767

; <label>:587:                                    ; preds = %582, %209
  %588 = phi i64 [ %124, %209 ], [ %576, %582 ]
  %589 = phi i64 [ %125, %209 ], [ %583, %582 ]
  %590 = phi i64 [ %126, %209 ], [ %575, %582 ]
  %591 = phi i64 [ %156, %209 ], [ %574, %582 ]
  %592 = phi i8 [ %128, %209 ], [ %578, %582 ]
  %593 = phi i8 [ %129, %209 ], [ %573, %582 ]
  %594 = phi i8 [ %130, %209 ], [ %586, %582 ]
  %595 = phi i64 [ %131, %209 ], [ %570, %582 ]
  %596 = add i64 %588, 1, !dbg !1768
  call void @llvm.dbg.value(metadata i64 %596, i64 0, metadata !1050, metadata !583), !dbg !1189
  br label %123, !dbg !1770, !llvm.loop !1771

; <label>:597:                                    ; preds = %133, %135
  %598 = phi i64 [ %124, %133 ], [ -1, %135 ]
  %599 = icmp eq i64 %125, 0, !dbg !1774
  %600 = and i1 %114, %599, !dbg !1776
  %601 = xor i1 %600, true, !dbg !1776
  %602 = or i1 %112, %601, !dbg !1776
  br i1 %602, label %603, label %648, !dbg !1776

; <label>:603:                                    ; preds = %597
  %604 = and i1 %114, %112, !dbg !1777
  %605 = xor i1 %604, true, !dbg !1777
  %606 = and i8 %129, 1, !dbg !1779
  %607 = icmp eq i8 %606, 0, !dbg !1779
  %608 = or i1 %607, %605, !dbg !1777
  br i1 %608, label %618, label %609, !dbg !1777

; <label>:609:                                    ; preds = %603
  %610 = and i8 %130, 1, !dbg !1781
  %611 = icmp eq i8 %610, 0, !dbg !1781
  br i1 %611, label %614, label %612, !dbg !1784

; <label>:612:                                    ; preds = %609
  %613 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %126, i8* %2, i64 %598, i32 5, i32 %5, i32* %6, i8* %97, i8* %98), !dbg !1785
  br label %659, !dbg !1786

; <label>:614:                                    ; preds = %609
  %615 = icmp eq i64 %131, 0, !dbg !1787
  %616 = icmp ne i64 %126, 0, !dbg !1789
  %617 = and i1 %616, %615, !dbg !1791
  br i1 %617, label %27, label %618, !dbg !1791

; <label>:618:                                    ; preds = %603, %614
  %619 = icmp ne i8* %100, null, !dbg !1792
  %620 = and i1 %619, %112, !dbg !1794
  br i1 %620, label %621, label %638, !dbg !1794

; <label>:621:                                    ; preds = %618
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !1053, metadata !583), !dbg !1115
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1051, metadata !583), !dbg !1113
  %622 = load i8, i8* %100, align 1, !dbg !1795, !tbaa !1138
  %623 = icmp eq i8 %622, 0, !dbg !1799
  br i1 %623, label %638, label %624, !dbg !1799

; <label>:624:                                    ; preds = %621
  br label %625, !dbg !1801

; <label>:625:                                    ; preds = %624, %632
  %626 = phi i8 [ %635, %632 ], [ %622, %624 ]
  %627 = phi i8* [ %634, %632 ], [ %100, %624 ]
  %628 = phi i64 [ %633, %632 ], [ %125, %624 ]
  %629 = icmp ult i64 %628, %131, !dbg !1801
  br i1 %629, label %630, label %632, !dbg !1805

; <label>:630:                                    ; preds = %625
  %631 = getelementptr inbounds i8, i8* %0, i64 %628, !dbg !1807
  store i8 %626, i8* %631, align 1, !dbg !1807, !tbaa !1138
  br label %632, !dbg !1807

; <label>:632:                                    ; preds = %630, %625
  %633 = add i64 %628, 1, !dbg !1809
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !1051, metadata !583), !dbg !1113
  %634 = getelementptr inbounds i8, i8* %627, i64 1, !dbg !1811
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !1053, metadata !583), !dbg !1115
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !1053, metadata !583), !dbg !1115
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !1051, metadata !583), !dbg !1113
  %635 = load i8, i8* %634, align 1, !dbg !1795, !tbaa !1138
  %636 = icmp eq i8 %635, 0, !dbg !1799
  br i1 %636, label %637, label %625, !dbg !1799, !llvm.loop !1813

; <label>:637:                                    ; preds = %632
  br label %638, !dbg !1113

; <label>:638:                                    ; preds = %637, %621, %618
  %639 = phi i64 [ %125, %618 ], [ %125, %621 ], [ %633, %637 ]
  call void @llvm.dbg.value(metadata i64 %639, i64 0, metadata !1051, metadata !583), !dbg !1113
  %640 = icmp ult i64 %639, %131, !dbg !1816
  br i1 %640, label %641, label %659, !dbg !1818

; <label>:641:                                    ; preds = %638
  %642 = getelementptr inbounds i8, i8* %0, i64 %639, !dbg !1819
  store i8 0, i8* %642, align 1, !dbg !1820, !tbaa !1138
  br label %659, !dbg !1819

; <label>:643:                                    ; preds = %386
  br label %649, !dbg !1105

; <label>:644:                                    ; preds = %148, %161, %211, %225, %253, %255, %273, %276, %503
  %645 = phi i32 [ %96, %148 ], [ %96, %161 ], [ 2, %211 ], [ 5, %225 ], [ 2, %253 ], [ 2, %255 ], [ 2, %273 ], [ 2, %276 ], [ %96, %503 ]
  %646 = phi i64 [ %146, %148 ], [ %156, %161 ], [ %156, %211 ], [ %156, %225 ], [ %156, %253 ], [ %156, %255 ], [ %156, %273 ], [ %156, %276 ], [ %507, %503 ]
  %647 = phi i64 [ %131, %148 ], [ %131, %161 ], [ %131, %211 ], [ %131, %225 ], [ %131, %253 ], [ %131, %255 ], [ %131, %273 ], [ %131, %276 ], [ %512, %503 ]
  br label %649, !dbg !1105

; <label>:648:                                    ; preds = %597
  br label %649, !dbg !1105

; <label>:649:                                    ; preds = %648, %644, %643, %367
  %650 = phi i32 [ 2, %367 ], [ %96, %643 ], [ %645, %644 ], [ %96, %648 ]
  %651 = phi i64 [ %313, %367 ], [ %369, %643 ], [ %646, %644 ], [ %598, %648 ]
  %652 = phi i64 [ %131, %367 ], [ %131, %643 ], [ %647, %644 ], [ %131, %648 ]
  call void @llvm.dbg.value(metadata i64 %652, i64 0, metadata !1042, metadata !583), !dbg !1105
  call void @llvm.dbg.value(metadata i64 %651, i64 0, metadata !1044, metadata !583), !dbg !1107
  %653 = icmp ne i32 %650, 2, !dbg !1821
  %654 = icmp eq i8 %104, 0, !dbg !1823
  %655 = or i1 %653, %654, !dbg !1825
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !1045, metadata !583), !dbg !1108
  %656 = select i1 %655, i32 %650, i32 4, !dbg !1825
  call void @llvm.dbg.value(metadata i32 %656, i64 0, metadata !1045, metadata !583), !dbg !1108
  %657 = and i32 %5, -3, !dbg !1826
  %658 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %652, i8* %2, i64 %651, i32 %656, i32 %657, i32* null, i8* %97, i8* %98), !dbg !1827
  br label %659, !dbg !1828

; <label>:659:                                    ; preds = %638, %641, %649, %612
  %660 = phi i64 [ %658, %649 ], [ %613, %612 ], [ %639, %641 ], [ %639, %638 ]
  ret i64 %660, !dbg !1829
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !1830 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1834, metadata !583), !dbg !1838
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1835, metadata !583), !dbg !1839
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #10, !dbg !1840
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !1836, metadata !583), !dbg !1841
  %4 = icmp eq i8* %3, %0, !dbg !1842
  br i1 %4, label %5, label %75, !dbg !1844

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #10, !dbg !1845
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !1837, metadata !583), !dbg !1846
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1847, metadata !583), !dbg !1863
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1861, metadata !583), !dbg !1866
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1862, metadata !583), !dbg !1867
  %7 = load i8, i8* %6, align 1, !tbaa !1138
  %8 = sext i8 %7 to i32
  %9 = and i32 %8, -33, !dbg !1868
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !1868

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1871, metadata !583), !dbg !1885
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1883, metadata !583), !dbg !1889
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1884, metadata !583), !dbg !1890
  %11 = getelementptr inbounds i8, i8* %6, i64 1
  %12 = load i8, i8* %11, align 1, !tbaa !1138
  %13 = sext i8 %12 to i32
  %14 = and i32 %13, -33, !dbg !1891
  %15 = icmp eq i32 %14, 84, !dbg !1891
  br i1 %15, label %16, label %72, !dbg !1891

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1894, metadata !583), !dbg !1907
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1905, metadata !583), !dbg !1911
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1906, metadata !583), !dbg !1912
  %17 = getelementptr inbounds i8, i8* %6, i64 2
  %18 = load i8, i8* %17, align 1, !tbaa !1138
  %19 = sext i8 %18 to i32
  %20 = and i32 %19, -33, !dbg !1913
  %21 = icmp eq i32 %20, 70, !dbg !1913
  br i1 %21, label %22, label %72, !dbg !1913

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1916, metadata !583), !dbg !1928
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1926, metadata !583), !dbg !1932
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1927, metadata !583), !dbg !1933
  %23 = getelementptr inbounds i8, i8* %6, i64 3
  %24 = load i8, i8* %23, align 1, !tbaa !1138
  %25 = icmp eq i8 %24, 45, !dbg !1934
  br i1 %25, label %26, label %72, !dbg !1937

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1939, metadata !583), !dbg !1950
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1948, metadata !583), !dbg !1954
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1949, metadata !583), !dbg !1955
  %27 = getelementptr inbounds i8, i8* %6, i64 4
  %28 = load i8, i8* %27, align 1, !tbaa !1138
  %29 = icmp eq i8 %28, 56, !dbg !1956
  br i1 %29, label %30, label %72, !dbg !1959

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1961, metadata !583), !dbg !1971
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1969, metadata !583), !dbg !1975
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1970, metadata !583), !dbg !1976
  %31 = getelementptr inbounds i8, i8* %6, i64 5
  %32 = load i8, i8* %31, align 1, !tbaa !1138
  %33 = icmp eq i8 %32, 0, !dbg !1977
  br i1 %33, label %34, label %72, !dbg !1980

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !1982, !tbaa !1138
  %36 = icmp eq i8 %35, 96, !dbg !1983
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.60, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.61, i64 0, i64 0), !dbg !1982
  br label %75, !dbg !1984

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1871, metadata !583), !dbg !1985
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1883, metadata !583), !dbg !1989
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1884, metadata !583), !dbg !1990
  %39 = getelementptr inbounds i8, i8* %6, i64 1
  %40 = load i8, i8* %39, align 1, !tbaa !1138
  %41 = sext i8 %40 to i32
  %42 = and i32 %41, -33, !dbg !1991
  %43 = icmp eq i32 %42, 66, !dbg !1991
  br i1 %43, label %44, label %72, !dbg !1991

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1894, metadata !583), !dbg !1992
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1905, metadata !583), !dbg !1994
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1906, metadata !583), !dbg !1995
  %45 = getelementptr inbounds i8, i8* %6, i64 2
  %46 = load i8, i8* %45, align 1, !tbaa !1138
  %47 = icmp eq i8 %46, 49, !dbg !1996
  br i1 %47, label %48, label %72, !dbg !1998

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1916, metadata !583), !dbg !2000
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1926, metadata !583), !dbg !2002
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1927, metadata !583), !dbg !2003
  %49 = getelementptr inbounds i8, i8* %6, i64 3
  %50 = load i8, i8* %49, align 1, !tbaa !1138
  %51 = icmp eq i8 %50, 56, !dbg !2004
  br i1 %51, label %52, label %72, !dbg !2005

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1939, metadata !583), !dbg !2006
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1948, metadata !583), !dbg !2008
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1949, metadata !583), !dbg !2009
  %53 = getelementptr inbounds i8, i8* %6, i64 4
  %54 = load i8, i8* %53, align 1, !tbaa !1138
  %55 = icmp eq i8 %54, 48, !dbg !2010
  br i1 %55, label %56, label %72, !dbg !2011

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1961, metadata !583), !dbg !2012
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1969, metadata !583), !dbg !2014
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1970, metadata !583), !dbg !2015
  %57 = getelementptr inbounds i8, i8* %6, i64 5
  %58 = load i8, i8* %57, align 1, !tbaa !1138
  %59 = icmp eq i8 %58, 51, !dbg !2016
  br i1 %59, label %60, label %72, !dbg !2017

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2018, metadata !583), !dbg !2027
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2025, metadata !583), !dbg !2031
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2026, metadata !583), !dbg !2032
  %61 = getelementptr inbounds i8, i8* %6, i64 6
  %62 = load i8, i8* %61, align 1, !tbaa !1138
  %63 = icmp eq i8 %62, 48, !dbg !2033
  br i1 %63, label %64, label %72, !dbg !2036

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2038, metadata !583), !dbg !2046
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2044, metadata !583), !dbg !2050
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2045, metadata !583), !dbg !2051
  %65 = getelementptr inbounds i8, i8* %6, i64 7
  %66 = load i8, i8* %65, align 1, !tbaa !1138
  %67 = icmp eq i8 %66, 0, !dbg !2052
  br i1 %67, label %68, label %72, !dbg !2055

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !2056, !tbaa !1138
  %70 = icmp eq i8 %69, 96, !dbg !2057
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.62, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.63, i64 0, i64 0), !dbg !2056
  br label %75, !dbg !2058

; <label>:72:                                     ; preds = %5, %30, %26, %22, %16, %10, %64, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !2059
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.59, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.58, i64 0, i64 0), !dbg !2060
  br label %75, !dbg !2061

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !2062
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2063 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2067, metadata !583), !dbg !2070
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2068, metadata !583), !dbg !2071
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2069, metadata !583), !dbg !2072
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2073, metadata !583) #10, !dbg !2086
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2078, metadata !583) #10, !dbg !2088
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !2079, metadata !583) #10, !dbg !2089
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2080, metadata !583) #10, !dbg !2090
  %4 = icmp ne %struct.quoting_options* %2, null, !dbg !2091
  %5 = select i1 %4, %struct.quoting_options* %2, %struct.quoting_options* @default_quoting_options, !dbg !2091
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2081, metadata !583) #10, !dbg !2092
  %6 = tail call i32* @__errno_location() #1, !dbg !2093
  %7 = load i32, i32* %6, align 4, !dbg !2093, !tbaa !683
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !2082, metadata !583) #10, !dbg !2094
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2095
  %9 = load i32, i32* %8, align 4, !dbg !2095, !tbaa !973
  %10 = or i32 %9, 1, !dbg !2096
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2083, metadata !583) #10, !dbg !2097
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2098
  %12 = load i32, i32* %11, align 8, !dbg !2098, !tbaa !911
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2099
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2100
  %15 = load i8*, i8** %14, align 8, !dbg !2100, !tbaa !1000
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2101
  %17 = load i8*, i8** %16, align 8, !dbg !2101, !tbaa !1003
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #10, !dbg !2102
  %19 = add i64 %18, 1, !dbg !2103
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2084, metadata !583) #10, !dbg !2104
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2105, metadata !583) #10, !dbg !2110
  %20 = tail call noalias i8* @xmalloc(i64 %19) #10, !dbg !2112
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !2085, metadata !583) #10, !dbg !2113
  %21 = load i32, i32* %11, align 8, !dbg !2114, !tbaa !911
  %22 = load i8*, i8** %14, align 8, !dbg !2115, !tbaa !1000
  %23 = load i8*, i8** %16, align 8, !dbg !2116, !tbaa !1003
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #10, !dbg !2117
  store i32 %7, i32* %6, align 4, !dbg !2118, !tbaa !683
  ret i8* %20, !dbg !2119
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2074 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2073, metadata !583), !dbg !2120
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2078, metadata !583), !dbg !2121
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !2079, metadata !583), !dbg !2122
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2080, metadata !583), !dbg !2123
  %5 = icmp ne %struct.quoting_options* %3, null, !dbg !2124
  %6 = select i1 %5, %struct.quoting_options* %3, %struct.quoting_options* @default_quoting_options, !dbg !2124
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2081, metadata !583), !dbg !2125
  %7 = tail call i32* @__errno_location() #1, !dbg !2126
  %8 = load i32, i32* %7, align 4, !dbg !2126, !tbaa !683
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !2082, metadata !583), !dbg !2127
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2128
  %10 = load i32, i32* %9, align 4, !dbg !2128, !tbaa !973
  %11 = icmp ne i64* %2, null, !dbg !2129
  %12 = xor i1 %11, true, !dbg !2129
  %13 = zext i1 %12 to i32, !dbg !2129
  %14 = or i32 %10, %13, !dbg !2130
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !2083, metadata !583), !dbg !2131
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2132
  %16 = load i32, i32* %15, align 8, !dbg !2132, !tbaa !911
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2133
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2134
  %19 = load i8*, i8** %18, align 8, !dbg !2134, !tbaa !1000
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2135
  %21 = load i8*, i8** %20, align 8, !dbg !2135, !tbaa !1003
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !2136
  %23 = add i64 %22, 1, !dbg !2137
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2084, metadata !583), !dbg !2138
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2105, metadata !583) #10, !dbg !2139
  %24 = tail call noalias i8* @xmalloc(i64 %23) #10, !dbg !2141
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !2085, metadata !583), !dbg !2142
  %25 = load i32, i32* %15, align 8, !dbg !2143, !tbaa !911
  %26 = load i8*, i8** %18, align 8, !dbg !2144, !tbaa !1000
  %27 = load i8*, i8** %20, align 8, !dbg !2145, !tbaa !1003
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !2146
  store i32 %8, i32* %7, align 4, !dbg !2147, !tbaa !683
  br i1 %11, label %29, label %30, !dbg !2148

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2149, !tbaa !2151
  br label %30, !dbg !2153

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !2154
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !2155 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2159, !tbaa !591
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !2157, metadata !583), !dbg !2160
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2158, metadata !583), !dbg !2161
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2158, metadata !583), !dbg !2161
  %2 = load i32, i32* @nslots, align 4, !dbg !2162, !tbaa !683
  %3 = icmp sgt i32 %2, 1, !dbg !2166
  br i1 %3, label %4, label %14, !dbg !2167

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !2169

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !2169
  %8 = load i8*, i8** %7, align 8, !dbg !2169, !tbaa !2170
  tail call void @free(i8* %8) #10, !dbg !2172
  %9 = add nuw i64 %6, 1, !dbg !2173
  %10 = load i32, i32* @nslots, align 4, !dbg !2162, !tbaa !683
  %11 = sext i32 %10 to i64, !dbg !2166
  %12 = icmp slt i64 %9, %11, !dbg !2166
  br i1 %12, label %5, label %13, !dbg !2167, !llvm.loop !2175

; <label>:13:                                     ; preds = %5
  br label %14, !dbg !2178

; <label>:14:                                     ; preds = %13, %0
  %15 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2178
  %16 = load i8*, i8** %15, align 8, !dbg !2178, !tbaa !2170
  %17 = icmp eq i8* %16, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2180
  br i1 %17, label %19, label %18, !dbg !2181

; <label>:18:                                     ; preds = %14
  tail call void @free(i8* %16) #10, !dbg !2182
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2184, !tbaa !2185
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2186, !tbaa !2170
  br label %19, !dbg !2187

; <label>:19:                                     ; preds = %14, %18
  %20 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2188
  br i1 %20, label %23, label %21, !dbg !2190

; <label>:21:                                     ; preds = %19
  %22 = bitcast %struct.slotvec* %1 to i8*, !dbg !2191
  tail call void @free(i8* %22) #10, !dbg !2193
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2194, !tbaa !591
  br label %23, !dbg !2195

; <label>:23:                                     ; preds = %19, %21
  store i32 1, i32* @nslots, align 4, !dbg !2196, !tbaa !683
  ret void, !dbg !2197
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !2198 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2202, metadata !583), !dbg !2204
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2203, metadata !583), !dbg !2205
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2206
  ret i8* %3, !dbg !2207
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !2208 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2212, metadata !583), !dbg !2226
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2213, metadata !583), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2214, metadata !583), !dbg !2228
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2215, metadata !583), !dbg !2229
  %5 = tail call i32* @__errno_location() #1, !dbg !2230
  %6 = load i32, i32* %5, align 4, !dbg !2230, !tbaa !683
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !2216, metadata !583), !dbg !2231
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2232, !tbaa !591
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !2217, metadata !583), !dbg !2233
  %8 = icmp slt i32 %0, 0, !dbg !2234
  br i1 %8, label %9, label %10, !dbg !2236

; <label>:9:                                      ; preds = %4
  tail call void @abort() #14, !dbg !2237
  unreachable, !dbg !2237

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2238, !tbaa !683
  %12 = icmp sgt i32 %11, %0, !dbg !2239
  br i1 %12, label %34, label %13, !dbg !2240

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2241
  %15 = icmp ugt i32 %0, 2147483646, !dbg !2242
  br i1 %15, label %16, label %17, !dbg !2244

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !2245
  unreachable, !dbg !2245

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !2246
  %19 = select i1 %14, i8* null, i8* %18, !dbg !2246
  %20 = add nsw i32 %0, 1, !dbg !2248
  %21 = sext i32 %20 to i64, !dbg !2249
  %22 = shl nsw i64 %21, 4, !dbg !2250
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #10, !dbg !2251
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2251
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !2217, metadata !583), !dbg !2233
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2252, !tbaa !591
  br i1 %14, label %25, label %26, !dbg !2253

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !2254, !tbaa.struct !2256
  br label %26, !dbg !2257

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2258, !tbaa !683
  %28 = sext i32 %27 to i64, !dbg !2259
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2259
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2260
  %31 = sub nsw i32 %20, %27, !dbg !2261
  %32 = sext i32 %31 to i64, !dbg !2262
  %33 = shl nsw i64 %32, 4, !dbg !2263
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !2260
  store i32 %20, i32* @nslots, align 4, !dbg !2264, !tbaa !683
  br label %34, !dbg !2265

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !2217, metadata !583), !dbg !2233
  %36 = sext i32 %0 to i64, !dbg !2266
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2267
  %38 = load i64, i64* %37, align 8, !dbg !2267, !tbaa !2185
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !2221, metadata !583), !dbg !2268
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2269
  %40 = load i8*, i8** %39, align 8, !dbg !2269, !tbaa !2170
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !2223, metadata !583), !dbg !2270
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2271
  %42 = load i32, i32* %41, align 4, !dbg !2271, !tbaa !973
  %43 = or i32 %42, 1, !dbg !2272
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !2224, metadata !583), !dbg !2273
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2274
  %45 = load i32, i32* %44, align 8, !dbg !2274, !tbaa !911
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2275
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2276
  %48 = load i8*, i8** %47, align 8, !dbg !2276, !tbaa !1000
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2277
  %50 = load i8*, i8** %49, align 8, !dbg !2277, !tbaa !1003
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !2278
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !2225, metadata !583), !dbg !2279
  %52 = icmp ugt i64 %38, %51, !dbg !2280
  br i1 %52, label %63, label %53, !dbg !2282

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !2283
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2221, metadata !583), !dbg !2268
  store i64 %54, i64* %37, align 8, !dbg !2285, !tbaa !2185
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2286
  br i1 %55, label %57, label %56, !dbg !2288

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #10, !dbg !2289
  br label %57, !dbg !2289

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2105, metadata !583) #10, !dbg !2290
  %58 = tail call noalias i8* @xmalloc(i64 %54) #10, !dbg !2292
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !2223, metadata !583), !dbg !2270
  store i8* %58, i8** %39, align 8, !dbg !2293, !tbaa !2170
  %59 = load i32, i32* %44, align 8, !dbg !2294, !tbaa !911
  %60 = load i8*, i8** %47, align 8, !dbg !2295, !tbaa !1000
  %61 = load i8*, i8** %49, align 8, !dbg !2296, !tbaa !1003
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !2297
  br label %63, !dbg !2298

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !2223, metadata !583), !dbg !2270
  store i32 %6, i32* %5, align 4, !dbg !2299, !tbaa !683
  ret i8* %64, !dbg !2300
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #7

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2301 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2305, metadata !583), !dbg !2308
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2306, metadata !583), !dbg !2309
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2307, metadata !583), !dbg !2310
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2311
  ret i8* %4, !dbg !2312
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !2313 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2317, metadata !583), !dbg !2318
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2202, metadata !583) #10, !dbg !2319
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2203, metadata !583) #10, !dbg !2321
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2322
  ret i8* %2, !dbg !2323
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !2324 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2328, metadata !583), !dbg !2330
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2329, metadata !583), !dbg !2331
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2305, metadata !583) #10, !dbg !2332
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2306, metadata !583) #10, !dbg !2334
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2307, metadata !583) #10, !dbg !2335
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2336
  ret i8* %3, !dbg !2337
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !2338 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2346, metadata !2352), !dbg !2353
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2342, metadata !583), !dbg !2355
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2343, metadata !583), !dbg !2356
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2344, metadata !583), !dbg !2357
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2358
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !2358
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2345, metadata !685), !dbg !2359
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2351, metadata !583) #10, !dbg !2360
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2361
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !2361
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2346, metadata !583) #10, !dbg !2353
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2346, metadata !2362) #10, !dbg !2353
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2353
  %8 = icmp eq i32 %1, 10, !dbg !2363
  br i1 %8, label %9, label %10, !dbg !2365

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14, !dbg !2366, !noalias !2367
  unreachable, !dbg !2366

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2346, metadata !2362) #10, !dbg !2353
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2370
  store i32 %1, i32* %11, align 8, !dbg !2370, !alias.scope !2367
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2370
  %13 = bitcast i32* %12 to i8*, !dbg !2370
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !2370
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !2371
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2345, metadata !685), !dbg !2359
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2372
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !2373
  ret i8* %14, !dbg !2374
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !2375 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2346, metadata !2352), !dbg !2384
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2379, metadata !583), !dbg !2386
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2380, metadata !583), !dbg !2387
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2381, metadata !583), !dbg !2388
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2382, metadata !583), !dbg !2389
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2390
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10, !dbg !2390
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2383, metadata !685), !dbg !2391
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2351, metadata !583) #10, !dbg !2392
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2393
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !2393
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2346, metadata !583) #10, !dbg !2384
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2346, metadata !2362) #10, !dbg !2384
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2384
  %9 = icmp eq i32 %1, 10, !dbg !2394
  br i1 %9, label %10, label %11, !dbg !2395

; <label>:10:                                     ; preds = %4
  tail call void @abort() #14, !dbg !2396, !noalias !2397
  unreachable, !dbg !2396

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2346, metadata !2362) #10, !dbg !2384
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2400
  store i32 %1, i32* %12, align 8, !dbg !2400, !alias.scope !2397
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2400
  %14 = bitcast i32* %13 to i8*, !dbg !2400
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #10, !dbg !2400
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !2401
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2383, metadata !685), !dbg !2391
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !2402
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10, !dbg !2403
  ret i8* %15, !dbg !2404
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !2405 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !2346, metadata !2352), !dbg !2411
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2409, metadata !583), !dbg !2414
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2410, metadata !583), !dbg !2415
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2342, metadata !583) #10, !dbg !2416
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2343, metadata !583) #10, !dbg !2417
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2344, metadata !583) #10, !dbg !2418
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2419
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10, !dbg !2419
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2345, metadata !685) #10, !dbg !2420
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2351, metadata !583) #10, !dbg !2421
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !2422
  call void @llvm.lifetime.start(i64 52, i8* nonnull %6), !dbg !2422
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2346, metadata !583) #10, !dbg !2411
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2346, metadata !2362) #10, !dbg !2411
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !2411
  %7 = icmp eq i32 %0, 10, !dbg !2423
  br i1 %7, label %8, label %9, !dbg !2424

; <label>:8:                                      ; preds = %2
  tail call void @abort() #14, !dbg !2425, !noalias !2426
  unreachable, !dbg !2425

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2346, metadata !2362) #10, !dbg !2411
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2429
  store i32 %0, i32* %10, align 8, !dbg !2429, !alias.scope !2426
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2429
  %12 = bitcast i32* %11 to i8*, !dbg !2429
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #10, !dbg !2429
  call void @llvm.lifetime.end(i64 52, i8* nonnull %6), !dbg !2430
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2345, metadata !685) #10, !dbg !2420
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !2431
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10, !dbg !2432
  ret i8* %13, !dbg !2433
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2434 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2346, metadata !2352), !dbg !2441
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2438, metadata !583), !dbg !2444
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2439, metadata !583), !dbg !2445
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2440, metadata !583), !dbg !2446
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2379, metadata !583) #10, !dbg !2447
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2380, metadata !583) #10, !dbg !2448
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2381, metadata !583) #10, !dbg !2449
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2382, metadata !583) #10, !dbg !2450
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2451
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !2451
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2383, metadata !685) #10, !dbg !2452
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2351, metadata !583) #10, !dbg !2453
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2454
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !2454
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2346, metadata !583) #10, !dbg !2441
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2346, metadata !2362) #10, !dbg !2441
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2441
  %8 = icmp eq i32 %0, 10, !dbg !2455
  br i1 %8, label %9, label %10, !dbg !2456

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14, !dbg !2457, !noalias !2458
  unreachable, !dbg !2457

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2346, metadata !2362) #10, !dbg !2441
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2461
  store i32 %0, i32* %11, align 8, !dbg !2461, !alias.scope !2458
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2461
  %13 = bitcast i32* %12 to i8*, !dbg !2461
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !2461
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !2462
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2383, metadata !685) #10, !dbg !2452
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #10, !dbg !2463
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !2464
  ret i8* %14, !dbg !2465
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !2466 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2470, metadata !583), !dbg !2474
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2471, metadata !583), !dbg !2475
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2472, metadata !583), !dbg !2476
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2477
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10, !dbg !2477
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2478, !tbaa.struct !2479
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2473, metadata !685), !dbg !2480
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !931, metadata !583), !dbg !2481
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !932, metadata !583), !dbg !2483
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !933, metadata !583), !dbg !2484
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !934, metadata !583), !dbg !2485
  %6 = lshr i8 %2, 5, !dbg !2486
  %7 = zext i8 %6 to i64, !dbg !2486
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2487
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !935, metadata !583), !dbg !2488
  %9 = and i8 %2, 31, !dbg !2489
  %10 = zext i8 %9 to i32, !dbg !2490
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !937, metadata !583), !dbg !2491
  %11 = load i32, i32* %8, align 4, !dbg !2492, !tbaa !683
  %12 = lshr i32 %11, %10, !dbg !2493
  %13 = and i32 %12, 1, !dbg !2494
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !938, metadata !583), !dbg !2495
  %14 = xor i32 %13, 1, !dbg !2496
  %15 = shl i32 %14, %10, !dbg !2497
  %16 = xor i32 %15, %11, !dbg !2498
  store i32 %16, i32* %8, align 4, !dbg !2498, !tbaa !683
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2473, metadata !685), !dbg !2480
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2499
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10, !dbg !2500
  ret i8* %17, !dbg !2501
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !2502 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2506, metadata !583), !dbg !2508
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2507, metadata !583), !dbg !2509
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2470, metadata !583) #10, !dbg !2510
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2471, metadata !583) #10, !dbg !2512
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2472, metadata !583) #10, !dbg !2513
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2514
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #10, !dbg !2514
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2515, !tbaa.struct !2479
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2473, metadata !685) #10, !dbg !2516
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !931, metadata !583) #10, !dbg !2517
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !932, metadata !583) #10, !dbg !2519
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !933, metadata !583) #10, !dbg !2520
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !934, metadata !583) #10, !dbg !2521
  %5 = lshr i8 %1, 5, !dbg !2522
  %6 = zext i8 %5 to i64, !dbg !2522
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2523
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !935, metadata !583) #10, !dbg !2524
  %8 = and i8 %1, 31, !dbg !2525
  %9 = zext i8 %8 to i32, !dbg !2526
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !937, metadata !583) #10, !dbg !2527
  %10 = load i32, i32* %7, align 4, !dbg !2528, !tbaa !683
  %11 = lshr i32 %10, %9, !dbg !2529
  %12 = and i32 %11, 1, !dbg !2530
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !938, metadata !583) #10, !dbg !2531
  %13 = xor i32 %12, 1, !dbg !2532
  %14 = shl i32 %13, %9, !dbg !2533
  %15 = xor i32 %14, %10, !dbg !2534
  store i32 %15, i32* %7, align 4, !dbg !2534, !tbaa !683
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2473, metadata !685) #10, !dbg !2516
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #10, !dbg !2535
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #10, !dbg !2536
  ret i8* %16, !dbg !2537
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !2538 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2540, metadata !583), !dbg !2541
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2506, metadata !583) #10, !dbg !2542
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2507, metadata !583) #10, !dbg !2544
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2470, metadata !583) #10, !dbg !2545
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2471, metadata !583) #10, !dbg !2547
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2472, metadata !583) #10, !dbg !2548
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2549
  call void @llvm.lifetime.start(i64 56, i8* nonnull %3) #10, !dbg !2549
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2550, !tbaa.struct !2479
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2473, metadata !685) #10, !dbg !2551
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !931, metadata !583) #10, !dbg !2552
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !932, metadata !583) #10, !dbg !2554
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !933, metadata !583) #10, !dbg !2555
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !934, metadata !583) #10, !dbg !2556
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2557
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !935, metadata !583) #10, !dbg !2558
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !937, metadata !583) #10, !dbg !2559
  %5 = load i32, i32* %4, align 4, !dbg !2560, !tbaa !683
  %6 = or i32 %5, 67108864, !dbg !2561
  store i32 %6, i32* %4, align 4, !dbg !2561, !tbaa !683
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2473, metadata !685) #10, !dbg !2551
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #10, !dbg !2562
  call void @llvm.lifetime.end(i64 56, i8* nonnull %3) #10, !dbg !2563
  ret i8* %7, !dbg !2564
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !2565 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2567, metadata !583), !dbg !2569
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2568, metadata !583), !dbg !2570
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2470, metadata !583) #10, !dbg !2571
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2471, metadata !583) #10, !dbg !2573
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2472, metadata !583) #10, !dbg !2574
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2575
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #10, !dbg !2575
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2576, !tbaa.struct !2479
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2473, metadata !685) #10, !dbg !2577
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !931, metadata !583) #10, !dbg !2578
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !932, metadata !583) #10, !dbg !2580
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !933, metadata !583) #10, !dbg !2581
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !934, metadata !583) #10, !dbg !2582
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2583
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !935, metadata !583) #10, !dbg !2584
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !937, metadata !583) #10, !dbg !2585
  %6 = load i32, i32* %5, align 4, !dbg !2586, !tbaa !683
  %7 = or i32 %6, 67108864, !dbg !2587
  store i32 %7, i32* %5, align 4, !dbg !2587, !tbaa !683
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2473, metadata !685) #10, !dbg !2577
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #10, !dbg !2588
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #10, !dbg !2589
  ret i8* %8, !dbg !2590
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !2591 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2346, metadata !2352), !dbg !2597
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2593, metadata !583), !dbg !2599
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2594, metadata !583), !dbg !2600
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2595, metadata !583), !dbg !2601
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2602
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10, !dbg !2602
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2351, metadata !583) #10, !dbg !2603
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2604
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !2604
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2346, metadata !583) #10, !dbg !2597
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2346, metadata !2362) #10, !dbg !2597
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2597
  %9 = icmp eq i32 %1, 10, !dbg !2605
  br i1 %9, label %10, label %11, !dbg !2606

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !2607, !noalias !2608
  unreachable, !dbg !2607

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2346, metadata !2362) #10, !dbg !2597
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !2611
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !2611
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !2612
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2613
  store i32 %1, i32* %13, align 8, !dbg !2613
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2613
  %15 = bitcast i32* %14 to i8*, !dbg !2613
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !2613
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2596, metadata !685), !dbg !2614
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !931, metadata !583), !dbg !2615
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !932, metadata !583), !dbg !2617
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !933, metadata !583), !dbg !2618
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !934, metadata !583), !dbg !2619
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !2620
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !935, metadata !583), !dbg !2621
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !937, metadata !583), !dbg !2622
  %17 = load i32, i32* %16, align 4, !dbg !2623, !tbaa !683
  %18 = or i32 %17, 67108864, !dbg !2624
  store i32 %18, i32* %16, align 4, !dbg !2624, !tbaa !683
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2596, metadata !685), !dbg !2614
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2625
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10, !dbg !2626
  ret i8* %19, !dbg !2627
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !2628 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2632, metadata !583), !dbg !2636
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2633, metadata !583), !dbg !2637
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2634, metadata !583), !dbg !2638
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2635, metadata !583), !dbg !2639
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2640, metadata !583) #10, !dbg !2650
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2645, metadata !583) #10, !dbg !2652
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2646, metadata !583) #10, !dbg !2653
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2647, metadata !583) #10, !dbg !2654
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2648, metadata !583) #10, !dbg !2655
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2656
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !2656
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2657, !tbaa.struct !2479
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2649, metadata !685) #10, !dbg !2658
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !981, metadata !583) #10, !dbg !2659
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !982, metadata !583) #10, !dbg !2661
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !983, metadata !583) #10, !dbg !2662
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !981, metadata !583) #10, !dbg !2659
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !981, metadata !583) #10, !dbg !2659
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2663
  store i32 10, i32* %7, align 8, !dbg !2664, !tbaa !911
  %8 = icmp ne i8* %1, null, !dbg !2665
  %9 = icmp ne i8* %2, null, !dbg !2666
  %10 = and i1 %8, %9, !dbg !2667
  br i1 %10, label %12, label %11, !dbg !2667

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14, !dbg !2668
  unreachable, !dbg !2668

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2669
  store i8* %1, i8** %13, align 8, !dbg !2670, !tbaa !1000
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2671
  store i8* %2, i8** %14, align 8, !dbg !2672, !tbaa !1003
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2649, metadata !685) #10, !dbg !2658
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #10, !dbg !2673
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !2674
  ret i8* %15, !dbg !2675
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !2641 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2640, metadata !583), !dbg !2676
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2645, metadata !583), !dbg !2677
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2646, metadata !583), !dbg !2678
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2647, metadata !583), !dbg !2679
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !2648, metadata !583), !dbg !2680
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2681
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10, !dbg !2681
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2682, !tbaa.struct !2479
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2649, metadata !685), !dbg !2683
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !981, metadata !583) #10, !dbg !2684
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !982, metadata !583) #10, !dbg !2686
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !983, metadata !583) #10, !dbg !2687
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !981, metadata !583) #10, !dbg !2684
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !981, metadata !583) #10, !dbg !2684
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2688
  store i32 10, i32* %8, align 8, !dbg !2689, !tbaa !911
  %9 = icmp ne i8* %1, null, !dbg !2690
  %10 = icmp ne i8* %2, null, !dbg !2691
  %11 = and i1 %9, %10, !dbg !2692
  br i1 %11, label %13, label %12, !dbg !2692

; <label>:12:                                     ; preds = %5
  tail call void @abort() #14, !dbg !2693
  unreachable, !dbg !2693

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2694
  store i8* %1, i8** %14, align 8, !dbg !2695, !tbaa !1000
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2696
  store i8* %2, i8** %15, align 8, !dbg !2697, !tbaa !1003
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2649, metadata !685), !dbg !2683
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2698
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10, !dbg !2699
  ret i8* %16, !dbg !2700
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !2701 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2705, metadata !583), !dbg !2708
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2706, metadata !583), !dbg !2709
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2707, metadata !583), !dbg !2710
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2632, metadata !583) #10, !dbg !2711
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2633, metadata !583) #10, !dbg !2713
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2634, metadata !583) #10, !dbg !2714
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2635, metadata !583) #10, !dbg !2715
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2640, metadata !583) #10, !dbg !2716
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2645, metadata !583) #10, !dbg !2718
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2646, metadata !583) #10, !dbg !2719
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2647, metadata !583) #10, !dbg !2720
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2648, metadata !583) #10, !dbg !2721
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2722
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10, !dbg !2722
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2723, !tbaa.struct !2479
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2649, metadata !685) #10, !dbg !2724
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !981, metadata !583) #10, !dbg !2725
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !982, metadata !583) #10, !dbg !2727
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !983, metadata !583) #10, !dbg !2728
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !981, metadata !583) #10, !dbg !2725
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !981, metadata !583) #10, !dbg !2725
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2729
  store i32 10, i32* %6, align 8, !dbg !2730, !tbaa !911
  %7 = icmp ne i8* %0, null, !dbg !2731
  %8 = icmp ne i8* %1, null, !dbg !2732
  %9 = and i1 %7, %8, !dbg !2733
  br i1 %9, label %11, label %10, !dbg !2733

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !2734
  unreachable, !dbg !2734

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2735
  store i8* %0, i8** %12, align 8, !dbg !2736, !tbaa !1000
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2737
  store i8* %1, i8** %13, align 8, !dbg !2738, !tbaa !1003
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2649, metadata !685) #10, !dbg !2724
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !2739
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10, !dbg !2740
  ret i8* %14, !dbg !2741
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !2742 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2746, metadata !583), !dbg !2750
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2747, metadata !583), !dbg !2751
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2748, metadata !583), !dbg !2752
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2749, metadata !583), !dbg !2753
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2640, metadata !583) #10, !dbg !2754
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2645, metadata !583) #10, !dbg !2756
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2646, metadata !583) #10, !dbg !2757
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2647, metadata !583) #10, !dbg !2758
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2648, metadata !583) #10, !dbg !2759
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2760
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !2760
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2761, !tbaa.struct !2479
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2649, metadata !685) #10, !dbg !2762
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !981, metadata !583) #10, !dbg !2763
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !982, metadata !583) #10, !dbg !2765
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !983, metadata !583) #10, !dbg !2766
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !981, metadata !583) #10, !dbg !2763
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !981, metadata !583) #10, !dbg !2763
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2767
  store i32 10, i32* %7, align 8, !dbg !2768, !tbaa !911
  %8 = icmp ne i8* %0, null, !dbg !2769
  %9 = icmp ne i8* %1, null, !dbg !2770
  %10 = and i1 %8, %9, !dbg !2771
  br i1 %10, label %12, label %11, !dbg !2771

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14, !dbg !2772
  unreachable, !dbg !2772

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2773
  store i8* %0, i8** %13, align 8, !dbg !2774, !tbaa !1000
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2775
  store i8* %1, i8** %14, align 8, !dbg !2776, !tbaa !1003
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2649, metadata !685) #10, !dbg !2762
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #10, !dbg !2777
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !2778
  ret i8* %15, !dbg !2779
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2780 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2784, metadata !583), !dbg !2787
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2785, metadata !583), !dbg !2788
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2786, metadata !583), !dbg !2789
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2790
  ret i8* %4, !dbg !2791
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !2792 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2796, metadata !583), !dbg !2798
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2797, metadata !583), !dbg !2799
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2784, metadata !583) #10, !dbg !2800
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2785, metadata !583) #10, !dbg !2802
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2786, metadata !583) #10, !dbg !2803
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2804
  ret i8* %3, !dbg !2805
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !2806 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2810, metadata !583), !dbg !2812
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2811, metadata !583), !dbg !2813
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2784, metadata !583) #10, !dbg !2814
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2785, metadata !583) #10, !dbg !2816
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2786, metadata !583) #10, !dbg !2817
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2818
  ret i8* %3, !dbg !2819
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !2820 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2824, metadata !583), !dbg !2825
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2810, metadata !583) #10, !dbg !2826
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2811, metadata !583) #10, !dbg !2828
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2784, metadata !583) #10, !dbg !2829
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2785, metadata !583) #10, !dbg !2831
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2786, metadata !583) #10, !dbg !2832
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2833
  ret i8* %2, !dbg !2834
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !2835 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2895, metadata !583), !dbg !2901
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2896, metadata !583), !dbg !2902
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2897, metadata !583), !dbg !2903
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2898, metadata !583), !dbg !2904
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !2899, metadata !583), !dbg !2905
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !2900, metadata !583), !dbg !2906
  %7 = icmp eq i8* %1, null, !dbg !2907
  br i1 %7, label %10, label %8, !dbg !2909

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.66, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #10, !dbg !2910
  br label %12, !dbg !2910

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.67, i64 0, i64 0), i8* %2, i8* %3) #10, !dbg !2911
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.68, i64 0, i64 0), i32 5) #10, !dbg !2912
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #10, !dbg !2913
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.69, i64 0, i64 0), i32 5) #10, !dbg !2915
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #10, !dbg !2916
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
  ], !dbg !2917

; <label>:17:                                     ; preds = %12
  tail call void @abort() #14, !dbg !2918
  unreachable, !dbg !2918

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.70, i64 0, i64 0), i32 5) #10, !dbg !2920
  %20 = load i8*, i8** %4, align 8, !dbg !2920, !tbaa !591
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #10, !dbg !2921
  br label %146, !dbg !2923

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.71, i64 0, i64 0), i32 5) #10, !dbg !2924
  %24 = load i8*, i8** %4, align 8, !dbg !2924, !tbaa !591
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2924
  %26 = load i8*, i8** %25, align 8, !dbg !2924, !tbaa !591
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #10, !dbg !2925
  br label %146, !dbg !2926

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.72, i64 0, i64 0), i32 5) #10, !dbg !2927
  %30 = load i8*, i8** %4, align 8, !dbg !2927, !tbaa !591
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2927
  %32 = load i8*, i8** %31, align 8, !dbg !2927, !tbaa !591
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2927
  %34 = load i8*, i8** %33, align 8, !dbg !2927, !tbaa !591
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #10, !dbg !2928
  br label %146, !dbg !2929

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.73, i64 0, i64 0), i32 5) #10, !dbg !2930
  %38 = load i8*, i8** %4, align 8, !dbg !2930, !tbaa !591
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2930
  %40 = load i8*, i8** %39, align 8, !dbg !2930, !tbaa !591
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2930
  %42 = load i8*, i8** %41, align 8, !dbg !2930, !tbaa !591
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2930
  %44 = load i8*, i8** %43, align 8, !dbg !2930, !tbaa !591
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #10, !dbg !2931
  br label %146, !dbg !2932

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.74, i64 0, i64 0), i32 5) #10, !dbg !2933
  %48 = load i8*, i8** %4, align 8, !dbg !2933, !tbaa !591
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2933
  %50 = load i8*, i8** %49, align 8, !dbg !2933, !tbaa !591
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2933
  %52 = load i8*, i8** %51, align 8, !dbg !2933, !tbaa !591
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2933
  %54 = load i8*, i8** %53, align 8, !dbg !2933, !tbaa !591
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2933
  %56 = load i8*, i8** %55, align 8, !dbg !2933, !tbaa !591
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #10, !dbg !2934
  br label %146, !dbg !2935

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.75, i64 0, i64 0), i32 5) #10, !dbg !2936
  %60 = load i8*, i8** %4, align 8, !dbg !2936, !tbaa !591
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2936
  %62 = load i8*, i8** %61, align 8, !dbg !2936, !tbaa !591
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2936
  %64 = load i8*, i8** %63, align 8, !dbg !2936, !tbaa !591
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2936
  %66 = load i8*, i8** %65, align 8, !dbg !2936, !tbaa !591
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2936
  %68 = load i8*, i8** %67, align 8, !dbg !2936, !tbaa !591
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2936
  %70 = load i8*, i8** %69, align 8, !dbg !2936, !tbaa !591
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #10, !dbg !2937
  br label %146, !dbg !2938

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.76, i64 0, i64 0), i32 5) #10, !dbg !2939
  %74 = load i8*, i8** %4, align 8, !dbg !2939, !tbaa !591
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2939
  %76 = load i8*, i8** %75, align 8, !dbg !2939, !tbaa !591
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2939
  %78 = load i8*, i8** %77, align 8, !dbg !2939, !tbaa !591
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2939
  %80 = load i8*, i8** %79, align 8, !dbg !2939, !tbaa !591
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2939
  %82 = load i8*, i8** %81, align 8, !dbg !2939, !tbaa !591
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2939
  %84 = load i8*, i8** %83, align 8, !dbg !2939, !tbaa !591
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2939
  %86 = load i8*, i8** %85, align 8, !dbg !2939, !tbaa !591
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #10, !dbg !2940
  br label %146, !dbg !2941

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.77, i64 0, i64 0), i32 5) #10, !dbg !2942
  %90 = load i8*, i8** %4, align 8, !dbg !2942, !tbaa !591
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2942
  %92 = load i8*, i8** %91, align 8, !dbg !2942, !tbaa !591
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2942
  %94 = load i8*, i8** %93, align 8, !dbg !2942, !tbaa !591
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2942
  %96 = load i8*, i8** %95, align 8, !dbg !2942, !tbaa !591
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2942
  %98 = load i8*, i8** %97, align 8, !dbg !2942, !tbaa !591
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2942
  %100 = load i8*, i8** %99, align 8, !dbg !2942, !tbaa !591
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2942
  %102 = load i8*, i8** %101, align 8, !dbg !2942, !tbaa !591
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2942
  %104 = load i8*, i8** %103, align 8, !dbg !2942, !tbaa !591
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #10, !dbg !2943
  br label %146, !dbg !2944

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.78, i64 0, i64 0), i32 5) #10, !dbg !2945
  %108 = load i8*, i8** %4, align 8, !dbg !2945, !tbaa !591
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2945
  %110 = load i8*, i8** %109, align 8, !dbg !2945, !tbaa !591
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2945
  %112 = load i8*, i8** %111, align 8, !dbg !2945, !tbaa !591
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2945
  %114 = load i8*, i8** %113, align 8, !dbg !2945, !tbaa !591
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2945
  %116 = load i8*, i8** %115, align 8, !dbg !2945, !tbaa !591
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2945
  %118 = load i8*, i8** %117, align 8, !dbg !2945, !tbaa !591
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2945
  %120 = load i8*, i8** %119, align 8, !dbg !2945, !tbaa !591
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2945
  %122 = load i8*, i8** %121, align 8, !dbg !2945, !tbaa !591
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2945
  %124 = load i8*, i8** %123, align 8, !dbg !2945, !tbaa !591
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #10, !dbg !2946
  br label %146, !dbg !2947

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.79, i64 0, i64 0), i32 5) #10, !dbg !2948
  %128 = load i8*, i8** %4, align 8, !dbg !2948, !tbaa !591
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2948
  %130 = load i8*, i8** %129, align 8, !dbg !2948, !tbaa !591
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2948
  %132 = load i8*, i8** %131, align 8, !dbg !2948, !tbaa !591
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2948
  %134 = load i8*, i8** %133, align 8, !dbg !2948, !tbaa !591
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2948
  %136 = load i8*, i8** %135, align 8, !dbg !2948, !tbaa !591
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2948
  %138 = load i8*, i8** %137, align 8, !dbg !2948, !tbaa !591
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2948
  %140 = load i8*, i8** %139, align 8, !dbg !2948, !tbaa !591
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2948
  %142 = load i8*, i8** %141, align 8, !dbg !2948, !tbaa !591
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2948
  %144 = load i8*, i8** %143, align 8, !dbg !2948, !tbaa !591
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #10, !dbg !2949
  br label %146, !dbg !2950

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !2951
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !2952 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2956, metadata !583), !dbg !2962
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2957, metadata !583), !dbg !2963
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2958, metadata !583), !dbg !2964
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2959, metadata !583), !dbg !2965
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !2960, metadata !583), !dbg !2966
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2961, metadata !583), !dbg !2967
  br label %6, !dbg !2968

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !2961, metadata !583), !dbg !2967
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2970
  %9 = load i8*, i8** %8, align 8, !dbg !2970, !tbaa !591
  %10 = icmp eq i8* %9, null, !dbg !2973
  %11 = add i64 %7, 1, !dbg !2975
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !2961, metadata !583), !dbg !2967
  br i1 %10, label %12, label %6, !dbg !2973, !llvm.loop !2977

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !2980
  ret void, !dbg !2981
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !2982 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2993, metadata !583), !dbg !3001
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2994, metadata !583), !dbg !3002
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2995, metadata !583), !dbg !3003
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2996, metadata !583), !dbg !3004
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !2997, metadata !583), !dbg !3005
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3006
  call void @llvm.lifetime.start(i64 80, i8* nonnull %7) #10, !dbg !3006
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2999, metadata !583), !dbg !3007
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2998, metadata !583), !dbg !3008
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2998, metadata !583), !dbg !3008
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %11 = load i32, i32* %8, align 8, !dbg !3009
  %12 = icmp ult i32 %11, 41, !dbg !3009
  br i1 %12, label %13, label %18, !dbg !3009

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !3013
  %15 = sext i32 %11 to i64, !dbg !3013
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3013
  %17 = add i32 %11, 8, !dbg !3013
  store i32 %17, i32* %8, align 8, !dbg !3013
  br label %21, !dbg !3013

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !3015
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3015
  store i8* %20, i8** %10, align 8, !dbg !3015
  br label %21, !dbg !3015

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ], !dbg !3009
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3017
  %25 = load i8*, i8** %24, align 8, !dbg !3017
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3019
  store i8* %25, i8** %26, align 16, !dbg !3020, !tbaa !591
  %27 = icmp eq i8* %25, null, !dbg !3021
  br i1 %27, label %30, label %28, !dbg !3022

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2998, metadata !583), !dbg !3008
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2998, metadata !583), !dbg !3008
  %29 = icmp ult i32 %22, 41, !dbg !3009
  br i1 %29, label %35, label %32, !dbg !3009

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3024
  call void @llvm.lifetime.end(i64 80, i8* nonnull %7) #10, !dbg !3025
  ret void, !dbg !3025

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !3015
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3015
  store i8* %34, i8** %10, align 8, !dbg !3015
  br label %40, !dbg !3015

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !3013
  %37 = sext i32 %22 to i64, !dbg !3013
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3013
  %39 = add i32 %22, 8, !dbg !3013
  store i32 %39, i32* %8, align 8, !dbg !3013
  br label %40, !dbg !3013

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ], !dbg !3009
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3017
  %44 = load i8*, i8** %43, align 8, !dbg !3017
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3019
  store i8* %44, i8** %45, align 8, !dbg !3020, !tbaa !591
  %46 = icmp eq i8* %44, null, !dbg !3021
  br i1 %46, label %30, label %47, !dbg !3022

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2998, metadata !583), !dbg !3008
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2998, metadata !583), !dbg !3008
  %48 = icmp ult i32 %41, 41, !dbg !3009
  br i1 %48, label %52, label %49, !dbg !3009

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !3015
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3015
  store i8* %51, i8** %10, align 8, !dbg !3015
  br label %57, !dbg !3015

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !3013
  %54 = sext i32 %41 to i64, !dbg !3013
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3013
  %56 = add i32 %41, 8, !dbg !3013
  store i32 %56, i32* %8, align 8, !dbg !3013
  br label %57, !dbg !3013

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ], !dbg !3009
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3017
  %61 = load i8*, i8** %60, align 8, !dbg !3017
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3019
  store i8* %61, i8** %62, align 16, !dbg !3020, !tbaa !591
  %63 = icmp eq i8* %61, null, !dbg !3021
  br i1 %63, label %30, label %64, !dbg !3022

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2998, metadata !583), !dbg !3008
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2998, metadata !583), !dbg !3008
  %65 = icmp ult i32 %58, 41, !dbg !3009
  br i1 %65, label %69, label %66, !dbg !3009

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !3015
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3015
  store i8* %68, i8** %10, align 8, !dbg !3015
  br label %74, !dbg !3015

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !3013
  %71 = sext i32 %58 to i64, !dbg !3013
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3013
  %73 = add i32 %58, 8, !dbg !3013
  store i32 %73, i32* %8, align 8, !dbg !3013
  br label %74, !dbg !3013

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ], !dbg !3009
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3017
  %78 = load i8*, i8** %77, align 8, !dbg !3017
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3019
  store i8* %78, i8** %79, align 8, !dbg !3020, !tbaa !591
  %80 = icmp eq i8* %78, null, !dbg !3021
  br i1 %80, label %30, label %81, !dbg !3022

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2998, metadata !583), !dbg !3008
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2998, metadata !583), !dbg !3008
  %82 = icmp ult i32 %75, 41, !dbg !3009
  br i1 %82, label %86, label %83, !dbg !3009

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !3015
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3015
  store i8* %85, i8** %10, align 8, !dbg !3015
  br label %91, !dbg !3015

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !3013
  %88 = sext i32 %75 to i64, !dbg !3013
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3013
  %90 = add i32 %75, 8, !dbg !3013
  store i32 %90, i32* %8, align 8, !dbg !3013
  br label %91, !dbg !3013

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ], !dbg !3009
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3017
  %95 = load i8*, i8** %94, align 8, !dbg !3017
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3019
  store i8* %95, i8** %96, align 16, !dbg !3020, !tbaa !591
  %97 = icmp eq i8* %95, null, !dbg !3021
  br i1 %97, label %30, label %98, !dbg !3022

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2998, metadata !583), !dbg !3008
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2998, metadata !583), !dbg !3008
  %99 = icmp ult i32 %92, 41, !dbg !3009
  br i1 %99, label %103, label %100, !dbg !3009

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !3015
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3015
  store i8* %102, i8** %10, align 8, !dbg !3015
  br label %108, !dbg !3015

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !3013
  %105 = sext i32 %92 to i64, !dbg !3013
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3013
  %107 = add i32 %92, 8, !dbg !3013
  store i32 %107, i32* %8, align 8, !dbg !3013
  br label %108, !dbg !3013

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3017
  %111 = load i8*, i8** %110, align 8, !dbg !3017
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3019
  store i8* %111, i8** %112, align 8, !dbg !3020, !tbaa !591
  %113 = icmp eq i8* %111, null, !dbg !3021
  br i1 %113, label %30, label %114, !dbg !3022

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2998, metadata !583), !dbg !3008
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2998, metadata !583), !dbg !3008
  %115 = load i8*, i8** %10, align 8, !dbg !3015
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3015
  store i8* %116, i8** %10, align 8, !dbg !3015
  %117 = bitcast i8* %115 to i8**, !dbg !3017
  %118 = load i8*, i8** %117, align 8, !dbg !3017
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3019
  store i8* %118, i8** %119, align 16, !dbg !3020, !tbaa !591
  %120 = icmp eq i8* %118, null, !dbg !3021
  br i1 %120, label %30, label %121, !dbg !3022

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2998, metadata !583), !dbg !3008
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2998, metadata !583), !dbg !3008
  %122 = load i8*, i8** %10, align 8, !dbg !3015
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3015
  store i8* %123, i8** %10, align 8, !dbg !3015
  %124 = bitcast i8* %122 to i8**, !dbg !3017
  %125 = load i8*, i8** %124, align 8, !dbg !3017
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3019
  store i8* %125, i8** %126, align 8, !dbg !3020, !tbaa !591
  %127 = icmp eq i8* %125, null, !dbg !3021
  br i1 %127, label %30, label %128, !dbg !3022

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2998, metadata !583), !dbg !3008
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2998, metadata !583), !dbg !3008
  %129 = load i8*, i8** %10, align 8, !dbg !3015
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3015
  store i8* %130, i8** %10, align 8, !dbg !3015
  %131 = bitcast i8* %129 to i8**, !dbg !3017
  %132 = load i8*, i8** %131, align 8, !dbg !3017
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3019
  store i8* %132, i8** %133, align 16, !dbg !3020, !tbaa !591
  %134 = icmp eq i8* %132, null, !dbg !3021
  br i1 %134, label %30, label %135, !dbg !3022

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2998, metadata !583), !dbg !3008
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2998, metadata !583), !dbg !3008
  %136 = load i8*, i8** %10, align 8, !dbg !3015
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3015
  store i8* %137, i8** %10, align 8, !dbg !3015
  %138 = bitcast i8* %136 to i8**, !dbg !3017
  %139 = load i8*, i8** %138, align 8, !dbg !3017
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3019
  store i8* %139, i8** %140, align 8, !dbg !3020, !tbaa !591
  %141 = icmp eq i8* %139, null, !dbg !3021
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2998, metadata !583), !dbg !3008
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2998, metadata !583), !dbg !3008
  %142 = select i1 %141, i64 9, i64 10, !dbg !3022
  br label %30, !dbg !3022
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !3026 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3030, metadata !583), !dbg !3040
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3031, metadata !583), !dbg !3041
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3032, metadata !583), !dbg !3042
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3033, metadata !583), !dbg !3043
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3044
  call void @llvm.lifetime.start(i64 24, i8* nonnull %6) #10, !dbg !3044
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3034, metadata !583), !dbg !3045
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3046
  call void @llvm.va_start(i8* nonnull %6), !dbg !3046
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3047
  call void @llvm.va_end(i8* nonnull %6), !dbg !3048
  call void @llvm.lifetime.end(i64 24, i8* nonnull %6) #10, !dbg !3049
  ret void, !dbg !3049
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #10

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !3050 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.82, i64 0, i64 0), i32 5) #10, !dbg !3051
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.83, i64 0, i64 0)) #10, !dbg !3052
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.84, i64 0, i64 0), i32 5) #10, !dbg !3054
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.85, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.86, i64 0, i64 0)) #10, !dbg !3055
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19.87, i64 0, i64 0), i32 5) #10, !dbg !3056
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3056, !tbaa !591
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #10, !dbg !3057
  ret void, !dbg !3058
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #12 !dbg !3059 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3063, metadata !583), !dbg !3065
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3064, metadata !583), !dbg !3066
  %3 = udiv i64 9223372036854775807, %1, !dbg !3067
  %4 = icmp ult i64 %3, %0, !dbg !3067
  br i1 %4, label %5, label %6, !dbg !3069

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !3070
  unreachable, !dbg !3070

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3071
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3072, metadata !583) #10, !dbg !3079
  %8 = tail call noalias i8* @malloc(i64 %7) #10, !dbg !3081
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3078, metadata !583) #10, !dbg !3082
  %9 = icmp eq i8* %8, null, !dbg !3083
  %10 = icmp ne i64 %7, 0, !dbg !3085
  %11 = and i1 %10, %9, !dbg !3087
  br i1 %11, label %12, label %13, !dbg !3087

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #14, !dbg !3088
  unreachable, !dbg !3088

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !3089
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !3073 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3072, metadata !583), !dbg !3090
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3091
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3078, metadata !583), !dbg !3092
  %3 = icmp eq i8* %2, null, !dbg !3093
  %4 = icmp ne i64 %0, 0, !dbg !3094
  %5 = and i1 %4, %3, !dbg !3095
  br i1 %5, label %6, label %7, !dbg !3095

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3096
  unreachable, !dbg !3096

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3097
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #12 !dbg !3098 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3102, metadata !583), !dbg !3105
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3103, metadata !583), !dbg !3106
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3104, metadata !583), !dbg !3107
  %4 = udiv i64 9223372036854775807, %2, !dbg !3108
  %5 = icmp ult i64 %4, %1, !dbg !3108
  br i1 %5, label %6, label %7, !dbg !3110

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #14, !dbg !3111
  unreachable, !dbg !3111

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3112
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3113, metadata !583) #10, !dbg !3119
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !3118, metadata !583) #10, !dbg !3121
  %9 = icmp eq i64 %8, 0, !dbg !3122
  %10 = icmp ne i8* %0, null, !dbg !3124
  %11 = and i1 %10, %9, !dbg !3126
  br i1 %11, label %12, label %13, !dbg !3126

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #10, !dbg !3127
  br label %19, !dbg !3129

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #10, !dbg !3130
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !3113, metadata !583) #10, !dbg !3119
  %15 = icmp eq i8* %14, null, !dbg !3131
  %16 = icmp ne i64 %8, 0, !dbg !3133
  %17 = and i1 %16, %15, !dbg !3135
  br i1 %17, label %18, label %19, !dbg !3135

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !3136
  unreachable, !dbg !3136

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !3137
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !3114 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3113, metadata !583), !dbg !3138
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3118, metadata !583), !dbg !3139
  %3 = icmp eq i64 %1, 0, !dbg !3140
  %4 = icmp ne i8* %0, null, !dbg !3141
  %5 = and i1 %4, %3, !dbg !3142
  br i1 %5, label %6, label %7, !dbg !3142

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #10, !dbg !3143
  br label %13, !dbg !3144

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #10, !dbg !3145
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3113, metadata !583), !dbg !3138
  %9 = icmp eq i8* %8, null, !dbg !3146
  %10 = icmp ne i64 %1, 0, !dbg !3147
  %11 = and i1 %10, %9, !dbg !3148
  br i1 %11, label %12, label %13, !dbg !3148

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #14, !dbg !3149
  unreachable, !dbg !3149

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !3150
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #12 !dbg !543 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !548, metadata !583), !dbg !3151
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !549, metadata !583), !dbg !3152
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !550, metadata !583), !dbg !3153
  %4 = load i64, i64* %1, align 8, !dbg !3154, !tbaa !2151
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !551, metadata !583), !dbg !3155
  %5 = icmp eq i8* %0, null, !dbg !3156
  br i1 %5, label %6, label %13, !dbg !3158

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3159
  br i1 %7, label %8, label %17, !dbg !3162

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3163
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !551, metadata !583), !dbg !3155
  %10 = icmp ugt i64 %2, 128, !dbg !3165
  %11 = zext i1 %10 to i64, !dbg !3165
  %12 = add nuw nsw i64 %9, %11, !dbg !3166
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !551, metadata !583), !dbg !3155
  br label %17, !dbg !3167

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !3168
  %15 = icmp ugt i64 %14, %4, !dbg !3171
  br i1 %15, label %20, label %16, !dbg !3172

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !3173
  unreachable, !dbg !3173

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !551, metadata !583), !dbg !3155
  store i64 %18, i64* %1, align 8, !dbg !3174, !tbaa !2151
  %19 = mul i64 %18, %2, !dbg !3175
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3113, metadata !583) #10, !dbg !3176
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3118, metadata !583) #10, !dbg !3178
  br label %27, !dbg !3179

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !3180
  %22 = add i64 %4, 1, !dbg !3181
  %23 = add i64 %22, %21, !dbg !3182
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !551, metadata !583), !dbg !3155
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !551, metadata !583), !dbg !3155
  store i64 %23, i64* %1, align 8, !dbg !3174, !tbaa !2151
  %24 = mul i64 %23, %2, !dbg !3175
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3113, metadata !583) #10, !dbg !3176
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3118, metadata !583) #10, !dbg !3178
  %25 = icmp eq i64 %24, 0, !dbg !3183
  br i1 %25, label %26, label %27, !dbg !3179

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #10, !dbg !3184
  br label %34, !dbg !3185

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #10, !dbg !3186
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3113, metadata !583) #10, !dbg !3176
  %30 = icmp eq i8* %29, null, !dbg !3187
  %31 = icmp ne i64 %28, 0, !dbg !3188
  %32 = and i1 %31, %30, !dbg !3189
  br i1 %32, label %33, label %34, !dbg !3189

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #14, !dbg !3190
  unreachable, !dbg !3190

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !3191
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #12 !dbg !3192 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3194, metadata !583), !dbg !3195
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3072, metadata !583) #10, !dbg !3196
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3198
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3078, metadata !583) #10, !dbg !3199
  %3 = icmp eq i8* %2, null, !dbg !3200
  %4 = icmp ne i64 %0, 0, !dbg !3201
  %5 = and i1 %4, %3, !dbg !3202
  br i1 %5, label %6, label %7, !dbg !3202

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3203
  unreachable, !dbg !3203

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3204
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !3205 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3209, metadata !583), !dbg !3211
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !3210, metadata !583), !dbg !3212
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !548, metadata !583) #10, !dbg !3213
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !549, metadata !583) #10, !dbg !3215
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !550, metadata !583) #10, !dbg !3216
  %3 = load i64, i64* %1, align 8, !dbg !3217, !tbaa !2151
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !551, metadata !583) #10, !dbg !3218
  %4 = icmp eq i8* %0, null, !dbg !3219
  br i1 %4, label %5, label %8, !dbg !3220

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3221
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !551, metadata !583) #10, !dbg !3218
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !551, metadata !583) #10, !dbg !3218
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3222
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !551, metadata !583) #10, !dbg !3218
  store i64 %7, i64* %1, align 8, !dbg !3223, !tbaa !2151
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3113, metadata !583) #10, !dbg !3224
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3118, metadata !583) #10, !dbg !3226
  br label %17, !dbg !3227

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !3228
  br i1 %9, label %11, label %10, !dbg !3229

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #14, !dbg !3230
  unreachable, !dbg !3230

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !3231
  %13 = add i64 %3, 1, !dbg !3232
  %14 = add i64 %13, %12, !dbg !3233
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !551, metadata !583) #10, !dbg !3218
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !551, metadata !583) #10, !dbg !3218
  store i64 %14, i64* %1, align 8, !dbg !3223, !tbaa !2151
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3113, metadata !583) #10, !dbg !3224
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3118, metadata !583) #10, !dbg !3226
  %15 = icmp eq i64 %14, 0, !dbg !3234
  br i1 %15, label %16, label %17, !dbg !3227

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #10, !dbg !3235
  br label %24, !dbg !3236

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #10, !dbg !3237
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !3113, metadata !583) #10, !dbg !3224
  %20 = icmp eq i8* %19, null, !dbg !3238
  %21 = icmp ne i64 %18, 0, !dbg !3239
  %22 = and i1 %21, %20, !dbg !3240
  br i1 %22, label %23, label %24, !dbg !3240

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #14, !dbg !3241
  unreachable, !dbg !3241

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !3242
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !3243 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3245, metadata !583), !dbg !3246
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3072, metadata !583) #10, !dbg !3247
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3249
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3078, metadata !583) #10, !dbg !3250
  %3 = icmp eq i8* %2, null, !dbg !3251
  %4 = icmp ne i64 %0, 0, !dbg !3252
  %5 = and i1 %4, %3, !dbg !3253
  br i1 %5, label %6, label %7, !dbg !3253

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3254
  unreachable, !dbg !3254

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !3255
  ret i8* %2, !dbg !3256
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !3257 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3259, metadata !583), !dbg !3262
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3260, metadata !583), !dbg !3263
  %3 = udiv i64 9223372036854775807, %1, !dbg !3264
  %4 = icmp ult i64 %3, %0, !dbg !3264
  br i1 %4, label %8, label %5, !dbg !3266

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #10, !dbg !3267
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3261, metadata !583), !dbg !3269
  %7 = icmp eq i8* %6, null, !dbg !3270
  br i1 %7, label %8, label %9, !dbg !3271

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #14, !dbg !3273
  unreachable, !dbg !3273

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !3274
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !3275 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3279, metadata !583), !dbg !3281
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3280, metadata !583), !dbg !3282
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3072, metadata !583) #10, !dbg !3283
  %3 = tail call noalias i8* @malloc(i64 %1) #10, !dbg !3285
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3078, metadata !583) #10, !dbg !3286
  %4 = icmp eq i8* %3, null, !dbg !3287
  %5 = icmp ne i64 %1, 0, !dbg !3288
  %6 = and i1 %5, %4, !dbg !3289
  br i1 %6, label %7, label %8, !dbg !3289

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !3290
  unreachable, !dbg !3290

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !3291
  ret i8* %3, !dbg !3292
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !3293 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3295, metadata !583), !dbg !3296
  %2 = tail call i64 @strlen(i8* %0) #13, !dbg !3297
  %3 = add i64 %2, 1, !dbg !3298
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3279, metadata !583) #10, !dbg !3299
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3280, metadata !583) #10, !dbg !3302
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3072, metadata !583) #10, !dbg !3303
  %4 = tail call noalias i8* @malloc(i64 %3) #10, !dbg !3305
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !3078, metadata !583) #10, !dbg !3306
  %5 = icmp eq i8* %4, null, !dbg !3307
  %6 = icmp ne i64 %3, 0, !dbg !3308
  %7 = and i1 %6, %5, !dbg !3309
  br i1 %7, label %8, label %9, !dbg !3309

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3310
  unreachable, !dbg !3310

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #10, !dbg !3311
  ret i8* %4, !dbg !3312
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !3313 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3315, !tbaa !683
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.98, i64 0, i64 0), i32 5) #10, !dbg !3316
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.99, i64 0, i64 0), i8* %2) #10, !dbg !3317
  tail call void @abort() #14, !dbg !3319
  unreachable, !dbg !3319
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !3320 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3323, metadata !583), !dbg !3329
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3324, metadata !583), !dbg !3330
  %3 = icmp eq i64 %0, 0, !dbg !3331
  %4 = icmp eq i64 %1, 0, !dbg !3332
  %5 = or i1 %3, %4, !dbg !3334
  br i1 %5, label %12, label %6, !dbg !3334

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3335
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3326, metadata !583), !dbg !3336
  %8 = udiv i64 %7, %1, !dbg !3337
  %9 = icmp eq i64 %8, %0, !dbg !3339
  br i1 %9, label %12, label %10, !dbg !3340

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #1, !dbg !3341
  store i32 12, i32* %11, align 4, !dbg !3343, !tbaa !683
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3323, metadata !583), !dbg !3329
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !3324, metadata !583), !dbg !3330
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #10, !dbg !3344
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !3325, metadata !583), !dbg !3345
  br label %16, !dbg !3346

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !3347
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !3348 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !3365, metadata !583), !dbg !3374
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3366, metadata !583), !dbg !3375
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3367, metadata !583), !dbg !3376
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !3368, metadata !583), !dbg !3377
  %6 = bitcast i32* %5 to i8*, !dbg !3378
  call void @llvm.lifetime.start(i64 4, i8* nonnull %6) #10, !dbg !3378
  %7 = icmp eq i32* %0, null, !dbg !3379
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !3365, metadata !583), !dbg !3374
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3381
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !3365, metadata !583), !dbg !3374
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #10, !dbg !3382
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !3369, metadata !583), !dbg !3383
  %10 = icmp ugt i64 %9, -3, !dbg !3384
  %11 = icmp ne i64 %2, 0, !dbg !3385
  %12 = and i1 %11, %10, !dbg !3387
  br i1 %12, label %13, label %18, !dbg !3387

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #10, !dbg !3388
  br i1 %14, label %18, label %15, !dbg !3390

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3392, !tbaa !1138
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !3371, metadata !583), !dbg !3393
  %17 = zext i8 %16 to i32, !dbg !3394
  store i32 %17, i32* %8, align 4, !dbg !3395, !tbaa !683
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end(i64 4, i8* nonnull %6) #10, !dbg !3396
  ret i64 %19, !dbg !3396
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !3397 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3442, metadata !583), !dbg !3447
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #10, !dbg !3448
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3449, metadata !583), !dbg !3453
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3455
  %4 = load i32, i32* %3, align 8, !dbg !3455, !tbaa !3456
  %5 = and i32 %4, 32, !dbg !3455
  %6 = icmp eq i32 %5, 0, !dbg !3458
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #10, !dbg !3459
  %8 = icmp ne i32 %7, 0, !dbg !3460
  br i1 %6, label %9, label %19, !dbg !3461

; <label>:9:                                      ; preds = %1
  %10 = xor i1 %8, true, !dbg !3463
  %11 = icmp ne i64 %2, 0, !dbg !3463
  %12 = or i1 %11, %10, !dbg !3463
  %13 = sext i1 %8 to i32, !dbg !3463
  br i1 %12, label %22, label %14, !dbg !3463

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #1, !dbg !3465
  %16 = load i32, i32* %15, align 4, !dbg !3465, !tbaa !683
  %17 = icmp ne i32 %16, 9, !dbg !3467
  %18 = sext i1 %17 to i32, !dbg !3467
  br label %22, !dbg !3467

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !3469

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #1, !dbg !3471
  store i32 0, i32* %21, align 4, !dbg !3473, !tbaa !683
  br label %22, !dbg !3471

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !3474
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !3475 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3480, metadata !583), !dbg !3500
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3481, metadata !583), !dbg !3501
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #10, !dbg !3502
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3482, metadata !583), !dbg !3503
  %3 = icmp eq i8* %2, null, !dbg !3504
  br i1 %3, label %15, label %4, !dbg !3505

; <label>:4:                                      ; preds = %1
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3490, metadata !583), !dbg !3506
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3491, metadata !583), !dbg !3507
  %5 = load i8, i8* %2, align 1, !dbg !3508, !tbaa !1138
  %6 = icmp eq i8 %5, 67, !dbg !3510
  br i1 %6, label %7, label %11, !dbg !3513

; <label>:7:                                      ; preds = %4
  %8 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !3515
  %9 = load i8, i8* %8, align 1, !dbg !3515, !tbaa !1138
  %10 = icmp eq i8 %9, 0, !dbg !3518
  br i1 %10, label %14, label %11, !dbg !3520

; <label>:11:                                     ; preds = %4, %7
  tail call void @llvm.dbg.value(metadata i64 5, i64 0, metadata !3496, metadata !583), !dbg !3522
  %12 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.108, i64 0, i64 0)) #10, !dbg !3523
  %13 = icmp eq i32 %12, 0, !dbg !3525
  br i1 %13, label %14, label %15, !dbg !3527

; <label>:14:                                     ; preds = %11, %7
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3481, metadata !583), !dbg !3501
  br label %15, !dbg !3529

; <label>:15:                                     ; preds = %1, %11, %14
  %16 = phi i1 [ false, %14 ], [ true, %11 ], [ true, %1 ]
  ret i1 %16, !dbg !3530
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !3531 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !3543, metadata !583), !dbg !3617
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !3610, metadata !583), !dbg !3619
  %3 = tail call i8* @nl_langinfo(i32 14) #10, !dbg !3620
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3535, metadata !583), !dbg !3621
  %4 = icmp eq i8* %3, null, !dbg !3622
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.111, i64 0, i64 0), i8* %3, !dbg !3624
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !3535, metadata !583), !dbg !3621
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !3625, !tbaa !591
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3557, metadata !583) #10, !dbg !3626
  %7 = icmp eq i8* %6, null, !dbg !3627
  br i1 %7, label %8, label %127, !dbg !3628

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.112, i64 0, i64 0)) #10, !dbg !3629
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !3558, metadata !583) #10, !dbg !3630
  %10 = icmp eq i8* %9, null, !dbg !3631
  br i1 %10, label %14, label %11, !dbg !3633

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !3634, !tbaa !1138
  %13 = icmp eq i8 %12, 0, !dbg !3636
  br i1 %13, label %14, label %15, !dbg !3637

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !3639

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.113, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !3558, metadata !583) #10, !dbg !3630
  %17 = tail call i64 @strlen(i8* nonnull %16) #13, !dbg !3640
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !3561, metadata !583) #10, !dbg !3641
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !3563, metadata !583) #10, !dbg !3642
  %18 = icmp eq i64 %17, 0, !dbg !3643
  br i1 %18, label %24, label %19, !dbg !3644

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !3645
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !3645
  %22 = load i8, i8* %21, align 1, !dbg !3645, !tbaa !1138
  %23 = icmp ne i8 %22, 47, !dbg !3647
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !3648
  %27 = add i64 %17, 14, !dbg !3649
  %28 = add i64 %27, %26, !dbg !3650
  %29 = tail call noalias i8* @malloc(i64 %28) #10, !dbg !3651
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3560, metadata !583) #10, !dbg !3652
  %30 = icmp eq i8* %29, null, !dbg !3653
  br i1 %30, label %125, label %31, !dbg !3653

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #10, !dbg !3654
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !3657

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !3658, !tbaa !1138
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !3660
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.114, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !3661
  br label %37, !dbg !3662

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !3660
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.114, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !3661
  br label %37, !dbg !3662

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #10, !dbg !3663
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !3565, metadata !583) #10, !dbg !3664
  %39 = icmp slt i32 %38, 0, !dbg !3665
  br i1 %39, label %123, label %40, !dbg !3666

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.115, i64 0, i64 0)) #10, !dbg !3667
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3566, metadata !583) #10, !dbg !3668
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !3669
  br i1 %42, label %48, label %43, !dbg !3670

; <label>:43:                                     ; preds = %40
  %44 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %45 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %46 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %47 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !3671

; <label>:48:                                     ; preds = %40
  %49 = tail call i32 @close(i32 %38) #10, !dbg !3672
  br label %123, !dbg !3674

; <label>:50:                                     ; preds = %111, %43
  %51 = phi i64 [ %112, %111 ], [ 0, %43 ]
  %52 = phi i8* [ %113, %111 ], [ null, %43 ]
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3607, metadata !583) #10, !dbg !3671
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !3608, metadata !583) #10, !dbg !3675
  call void @llvm.lifetime.start(i64 51, i8* nonnull %44) #10, !dbg !3676
  call void @llvm.lifetime.start(i64 51, i8* nonnull %45) #10, !dbg !3677
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3678, metadata !583) #10, !dbg !3683
  %53 = load i8*, i8** %46, align 8, !dbg !3685, !tbaa !3686
  %54 = load i8*, i8** %47, align 8, !dbg !3685, !tbaa !3687
  %55 = icmp ult i8* %53, %54, !dbg !3685
  br i1 %55, label %58, label %56, !dbg !3685, !prof !3688

; <label>:56:                                     ; preds = %50
  %57 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !3689
  br label %62, !dbg !3689

; <label>:58:                                     ; preds = %50
  %59 = getelementptr inbounds i8, i8* %53, i64 1, !dbg !3691
  store i8* %59, i8** %46, align 8, !dbg !3691, !tbaa !3686
  %60 = load i8, i8* %53, align 1, !dbg !3691, !tbaa !1138
  %61 = zext i8 %60 to i32, !dbg !3691
  br label %62, !dbg !3691

; <label>:62:                                     ; preds = %58, %56
  %63 = phi i32 [ %57, %56 ], [ %61, %58 ], !dbg !3693
  call void @llvm.dbg.value(metadata i32 %63, i64 0, metadata !3609, metadata !583) #10, !dbg !3695
  switch i32 %63, label %77 [
    i32 -1, label %115
    i32 32, label %111
    i32 10, label %111
    i32 9, label %111
    i32 35, label %64
  ], !dbg !3696

; <label>:64:                                     ; preds = %62
  br label %65, !dbg !3697

; <label>:65:                                     ; preds = %64, %75
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3678, metadata !583) #10, !dbg !3697
  %66 = load i8*, i8** %46, align 8, !dbg !3701, !tbaa !3686
  %67 = load i8*, i8** %47, align 8, !dbg !3701, !tbaa !3687
  %68 = icmp ult i8* %66, %67, !dbg !3701
  br i1 %68, label %71, label %69, !dbg !3701, !prof !3688

; <label>:69:                                     ; preds = %65
  %70 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !3702
  br label %75, !dbg !3702

; <label>:71:                                     ; preds = %65
  %72 = getelementptr inbounds i8, i8* %66, i64 1, !dbg !3703
  store i8* %72, i8** %46, align 8, !dbg !3703, !tbaa !3686
  %73 = load i8, i8* %66, align 1, !dbg !3703, !tbaa !1138
  %74 = zext i8 %73 to i32, !dbg !3703
  br label %75, !dbg !3703

; <label>:75:                                     ; preds = %71, %69
  %76 = phi i32 [ %70, %69 ], [ %74, %71 ], !dbg !3704
  call void @llvm.dbg.value(metadata i32 %76, i64 0, metadata !3609, metadata !583) #10, !dbg !3695
  switch i32 %76, label %65 [
    i32 -1, label %114
    i32 10, label %110
  ], !dbg !3705, !llvm.loop !3707

; <label>:77:                                     ; preds = %62
  %78 = call i32 @ungetc(i32 %63, %struct._IO_FILE* nonnull %41) #10, !dbg !3710
  %79 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.116, i64 0, i64 0), i8* nonnull %44, i8* nonnull %45) #10, !dbg !3711
  %80 = icmp slt i32 %79, 2, !dbg !3713
  br i1 %80, label %115, label %81, !dbg !3714

; <label>:81:                                     ; preds = %77
  %82 = call i64 @strlen(i8* nonnull %44) #13, !dbg !3715
  call void @llvm.dbg.value(metadata i64 %82, i64 0, metadata !3614, metadata !583) #10, !dbg !3716
  %83 = call i64 @strlen(i8* nonnull %45) #13, !dbg !3717
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !3615, metadata !583) #10, !dbg !3718
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3616, metadata !583) #10, !dbg !3719
  %84 = icmp eq i64 %51, 0, !dbg !3720
  %85 = add i64 %82, 1
  %86 = add i64 %85, %83
  %87 = add i64 %86, 1
  br i1 %84, label %88, label %91, !dbg !3722

; <label>:88:                                     ; preds = %81
  call void @llvm.dbg.value(metadata i64 %87, i64 0, metadata !3608, metadata !583) #10, !dbg !3675
  %89 = add i64 %86, 2, !dbg !3723
  %90 = call noalias i8* @malloc(i64 %89) #10, !dbg !3725
  call void @llvm.dbg.value(metadata i8* %90, i64 0, metadata !3607, metadata !583) #10, !dbg !3671
  br label %95, !dbg !3726

; <label>:91:                                     ; preds = %81
  %92 = add i64 %87, %51, !dbg !3727
  call void @llvm.dbg.value(metadata i64 %92, i64 0, metadata !3608, metadata !583) #10, !dbg !3675
  %93 = add i64 %92, 1, !dbg !3729
  %94 = call i8* @realloc(i8* %52, i64 %93) #10, !dbg !3730
  call void @llvm.dbg.value(metadata i8* %94, i64 0, metadata !3607, metadata !583) #10, !dbg !3671
  br label %95

; <label>:95:                                     ; preds = %91, %88
  %96 = phi i64 [ %87, %88 ], [ %92, %91 ]
  %97 = phi i8* [ %90, %88 ], [ %94, %91 ]
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !3607, metadata !583) #10, !dbg !3671
  call void @llvm.dbg.value(metadata i64 %96, i64 0, metadata !3608, metadata !583) #10, !dbg !3675
  %98 = icmp eq i8* %97, null, !dbg !3731
  br i1 %98, label %99, label %100, !dbg !3733

; <label>:99:                                     ; preds = %95
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3608, metadata !583) #10, !dbg !3675
  call void @free(i8* %52) #10, !dbg !3734
  br label %116, !dbg !3736

; <label>:100:                                    ; preds = %95
  %101 = getelementptr inbounds i8, i8* %97, i64 %96, !dbg !3737
  %102 = xor i64 %83, -1, !dbg !3738
  %103 = getelementptr inbounds i8, i8* %101, i64 %102, !dbg !3738
  %104 = xor i64 %82, -1, !dbg !3739
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !3739
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !3740, metadata !583) #10, !dbg !3749
  call void @llvm.dbg.value(metadata i8* %44, i64 0, metadata !3748, metadata !583) #10, !dbg !3749
  %106 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false) #10, !dbg !3751
  %107 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %44, i64 %106) #10, !dbg !3752
  call void @llvm.dbg.value(metadata i8* %103, i64 0, metadata !3740, metadata !583) #10, !dbg !3753
  call void @llvm.dbg.value(metadata i8* %45, i64 0, metadata !3748, metadata !583) #10, !dbg !3753
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %103, i1 false) #10, !dbg !3755
  %109 = call i8* @__strcpy_chk(i8* nonnull %103, i8* nonnull %45, i64 %108) #10, !dbg !3756
  br label %111, !dbg !3757

; <label>:110:                                    ; preds = %75
  br label %111, !dbg !3671

; <label>:111:                                    ; preds = %110, %100, %62, %62, %62
  %112 = phi i64 [ %96, %100 ], [ %51, %62 ], [ %51, %62 ], [ %51, %62 ], [ %51, %110 ]
  %113 = phi i8* [ %97, %100 ], [ %52, %62 ], [ %52, %62 ], [ %52, %62 ], [ %52, %110 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !3607, metadata !583) #10, !dbg !3671
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !3608, metadata !583) #10, !dbg !3675
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #10, !dbg !3757
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #10, !dbg !3757
  br label %50

; <label>:114:                                    ; preds = %75
  br label %116, !dbg !3671

; <label>:115:                                    ; preds = %62, %77
  br label %116, !dbg !3671

; <label>:116:                                    ; preds = %115, %114, %99
  %117 = phi i64 [ 0, %99 ], [ %51, %114 ], [ %51, %115 ]
  %118 = phi i8* [ null, %99 ], [ %52, %114 ], [ %52, %115 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !3607, metadata !583) #10, !dbg !3671
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !3608, metadata !583) #10, !dbg !3675
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #10, !dbg !3757
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #10, !dbg !3757
  %119 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #10, !dbg !3758
  %120 = icmp eq i64 %117, 0, !dbg !3759
  br i1 %120, label %123, label %121, !dbg !3761

; <label>:121:                                    ; preds = %116
  %122 = getelementptr inbounds i8, i8* %118, i64 %117, !dbg !3762
  store i8 0, i8* %122, align 1, !dbg !3764, !tbaa !1138
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !3557, metadata !583) #10, !dbg !3626
  br label %123

; <label>:123:                                    ; preds = %121, %116, %48, %37
  %124 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.111, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.111, i64 0, i64 0), %48 ], [ %118, %121 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.111, i64 0, i64 0), %116 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !3557, metadata !583) #10, !dbg !3626
  call void @free(i8* %29) #10, !dbg !3765
  br label %125

; <label>:125:                                    ; preds = %123, %24
  %126 = phi i8* [ %124, %123 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.111, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %126, i64 0, metadata !3557, metadata !583) #10, !dbg !3626
  store volatile i8* %126, i8** @charset_aliases, align 8, !dbg !3766, !tbaa !591
  br label %127, !dbg !3767

; <label>:127:                                    ; preds = %0, %125
  %128 = phi i8* [ %6, %0 ], [ %126, %125 ]
  call void @llvm.dbg.value(metadata i8* %128, i64 0, metadata !3536, metadata !583), !dbg !3768
  %129 = load i8, i8* %128, align 1, !dbg !3769, !tbaa !1138
  %130 = icmp eq i8 %129, 0, !dbg !3770
  br i1 %130, label %157, label %131, !dbg !3771

; <label>:131:                                    ; preds = %127
  br label %132, !dbg !3773

; <label>:132:                                    ; preds = %131, %147
  %133 = phi i8 [ %154, %147 ], [ %129, %131 ]
  %134 = phi i8* [ %153, %147 ], [ %128, %131 ]
  %135 = call i32 @strcmp(i8* %5, i8* %134) #10, !dbg !3773
  %136 = icmp eq i32 %135, 0, !dbg !3774
  br i1 %136, label %143, label %137, !dbg !3775

; <label>:137:                                    ; preds = %132
  %138 = icmp eq i8 %133, 42, !dbg !3776
  br i1 %138, label %139, label %147, !dbg !3778

; <label>:139:                                    ; preds = %137
  %140 = getelementptr inbounds i8, i8* %134, i64 1, !dbg !3779
  %141 = load i8, i8* %140, align 1, !dbg !3779, !tbaa !1138
  %142 = icmp eq i8 %141, 0, !dbg !3781
  br i1 %142, label %143, label %147, !dbg !3782

; <label>:143:                                    ; preds = %139, %132
  %144 = call i64 @strlen(i8* %134) #13, !dbg !3784
  %145 = getelementptr inbounds i8, i8* %134, i64 %144, !dbg !3786
  %146 = getelementptr inbounds i8, i8* %145, i64 1, !dbg !3787
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !3535, metadata !583), !dbg !3621
  br label %157, !dbg !3788

; <label>:147:                                    ; preds = %137, %139
  %148 = call i64 @strlen(i8* %134) #13, !dbg !3789
  %149 = add i64 %148, 1, !dbg !3790
  %150 = getelementptr inbounds i8, i8* %134, i64 %149, !dbg !3791
  call void @llvm.dbg.value(metadata i8* %150, i64 0, metadata !3536, metadata !583), !dbg !3768
  %151 = call i64 @strlen(i8* %150) #13, !dbg !3792
  %152 = add i64 %151, 1, !dbg !3793
  %153 = getelementptr inbounds i8, i8* %150, i64 %152, !dbg !3794
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !3536, metadata !583), !dbg !3768
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !3536, metadata !583), !dbg !3768
  %154 = load i8, i8* %153, align 1, !dbg !3769, !tbaa !1138
  %155 = icmp eq i8 %154, 0, !dbg !3770
  br i1 %155, label %156, label %132, !dbg !3771, !llvm.loop !3795

; <label>:156:                                    ; preds = %147
  br label %157, !dbg !3621

; <label>:157:                                    ; preds = %156, %127, %143
  %158 = phi i8* [ %146, %143 ], [ %5, %127 ], [ %5, %156 ]
  call void @llvm.dbg.value(metadata i8* %158, i64 0, metadata !3535, metadata !583), !dbg !3621
  %159 = load i8, i8* %158, align 1, !dbg !3798, !tbaa !1138
  %160 = icmp eq i8 %159, 0, !dbg !3800
  %161 = select i1 %160, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.117, i64 0, i64 0), i8* %158, !dbg !3801
  call void @llvm.dbg.value(metadata i8* %161, i64 0, metadata !3535, metadata !583), !dbg !3621
  ret i8* %161, !dbg !3802
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
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !3803 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3848, metadata !583), !dbg !3852
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3849, metadata !583), !dbg !3853
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3851, metadata !583), !dbg !3854
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3855
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3850, metadata !583), !dbg !3856
  %3 = icmp slt i32 %2, 0, !dbg !3857
  br i1 %3, label %4, label %6, !dbg !3859

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3860
  br label %24, !dbg !3861

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !3862
  %8 = icmp eq i32 %7, 0, !dbg !3862
  br i1 %8, label %13, label %9, !dbg !3864

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3865
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #10, !dbg !3867
  %12 = icmp eq i64 %11, -1, !dbg !3869
  br i1 %12, label %16, label %13, !dbg !3870

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #10, !dbg !3871
  %15 = icmp eq i32 %14, 0, !dbg !3871
  br i1 %15, label %16, label %18, !dbg !3872

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3849, metadata !583), !dbg !3853
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3874
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !3851, metadata !583), !dbg !3854
  br label %24, !dbg !3875

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #1, !dbg !3876
  %20 = load i32, i32* %19, align 4, !dbg !3876, !tbaa !683
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3849, metadata !583), !dbg !3853
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3849, metadata !583), !dbg !3853
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3874
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !3851, metadata !583), !dbg !3854
  %22 = icmp eq i32 %20, 0, !dbg !3877
  br i1 %22, label %24, label %23, !dbg !3875

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3879, !tbaa !683
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !3851, metadata !583), !dbg !3854
  br label %24, !dbg !3881

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !3882
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
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !3883 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3928, metadata !583), !dbg !3929
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3930
  br i1 %2, label %6, label %3, !dbg !3932

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !3933
  %5 = icmp eq i32 %4, 0, !dbg !3933
  br i1 %5, label %6, label %8, !dbg !3935

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3937
  br label %17, !dbg !3938

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3939, metadata !583) #10, !dbg !3944
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3946
  %10 = load i32, i32* %9, align 8, !dbg !3946, !tbaa !3456
  %11 = and i32 %10, 256, !dbg !3948
  %12 = icmp eq i32 %11, 0, !dbg !3948
  br i1 %12, label %15, label %13, !dbg !3949

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #10, !dbg !3950
  br label %15, !dbg !3950

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3951
  br label %17, !dbg !3952

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !3953
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !3954 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4000, metadata !583), !dbg !4006
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4001, metadata !583), !dbg !4007
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4002, metadata !583), !dbg !4008
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4009
  %5 = load i8*, i8** %4, align 8, !dbg !4009, !tbaa !3687
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4010
  %7 = load i8*, i8** %6, align 8, !dbg !4010, !tbaa !3686
  %8 = icmp eq i8* %5, %7, !dbg !4011
  br i1 %8, label %9, label %28, !dbg !4012

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4013
  %11 = load i8*, i8** %10, align 8, !dbg !4013, !tbaa !4015
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4016
  %13 = load i8*, i8** %12, align 8, !dbg !4016, !tbaa !4017
  %14 = icmp eq i8* %11, %13, !dbg !4018
  br i1 %14, label %15, label %28, !dbg !4019

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4020
  %17 = load i8*, i8** %16, align 8, !dbg !4020, !tbaa !4021
  %18 = icmp eq i8* %17, null, !dbg !4022
  br i1 %18, label %19, label %28, !dbg !4023

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !4025
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #10, !dbg !4026
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !4003, metadata !583), !dbg !4028
  %22 = icmp eq i64 %21, -1, !dbg !4029
  br i1 %22, label %30, label %23, !dbg !4031

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4032
  %25 = load i32, i32* %24, align 8, !dbg !4033, !tbaa !3456
  %26 = and i32 %25, -17, !dbg !4033
  store i32 %26, i32* %24, align 8, !dbg !4033, !tbaa !3456
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4034
  store i64 %21, i64* %27, align 8, !dbg !4035, !tbaa !4036
  br label %30, !dbg !4037

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4038
  br label %30, !dbg !4039

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !4040
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

!llvm.dbg.cu = !{!2, !65, !70, !79, !86, !93, !530, !175, !538, !555, !557, !559, !562, !564, !184, !567, !569, !571}
!llvm.ident = !{!573, !573, !573, !573, !573, !573, !573, !573, !573, !573, !573, !573, !573, !573, !573, !573, !573, !573}
!llvm.module.flags = !{!574, !575, !576, !577}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "long_options", scope: !2, file: !3, line: 59, type: !51, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !19)
!3 = !DIFile(filename: "src/runcon.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
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
!19 = !{!20, !0}
!20 = !DIGlobalVariableExpression(var: !21)
!21 = distinct !DIGlobalVariable(name: "infomap", scope: !22, file: !23, line: 632, type: !48, isLocal: true, isDefinition: true)
!22 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !23, file: !23, line: 630, type: !24, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !26)
!23 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!24 = !DISubroutineType(types: !25)
!25 = !{null, !17}
!26 = !{!27, !28, !29, !36, !38, !39, !40, !43, !44, !46}
!27 = !DILocalVariable(name: "program", arg: 1, scope: !22, file: !23, line: 630, type: !17)
!28 = !DILocalVariable(name: "node", scope: !22, file: !23, line: 642, type: !17)
!29 = !DILocalVariable(name: "map_prog", scope: !22, file: !23, line: 643, type: !30)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !32)
!32 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !22, file: !23, line: 632, size: 128, elements: !33)
!33 = !{!34, !35}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !32, file: !23, line: 632, baseType: !17, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !32, file: !23, line: 632, baseType: !17, size: 64, offset: 64)
!36 = !DILocalVariable(name: "__s1_len", scope: !37, file: !23, line: 645, type: !9)
!37 = distinct !DILexicalBlock(scope: !22, file: !23, line: 645, column: 33)
!38 = !DILocalVariable(name: "__s2_len", scope: !37, file: !23, line: 645, type: !9)
!39 = !DILocalVariable(name: "lc_messages", scope: !22, file: !23, line: 655, type: !17)
!40 = !DILocalVariable(name: "__s1_len", scope: !41, file: !23, line: 656, type: !9)
!41 = distinct !DILexicalBlock(scope: !42, file: !23, line: 656, column: 22)
!42 = distinct !DILexicalBlock(scope: !22, file: !23, line: 656, column: 7)
!43 = !DILocalVariable(name: "__s2_len", scope: !41, file: !23, line: 656, type: !9)
!44 = !DILocalVariable(name: "__s2", scope: !45, file: !23, line: 656, type: !14)
!45 = distinct !DILexicalBlock(scope: !41, file: !23, line: 656, column: 22)
!46 = !DILocalVariable(name: "__result", scope: !45, file: !23, line: 656, type: !47)
!47 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!48 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 896, elements: !49)
!49 = !{!50}
!50 = !DISubrange(count: 7)
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 2048, elements: !61)
!52 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !53)
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !54, line: 104, size: 256, elements: !55)
!54 = !DIFile(filename: "/usr/include/getopt.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!55 = !{!56, !57, !58, !60}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !53, file: !54, line: 106, baseType: !17, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !53, file: !54, line: 109, baseType: !47, size: 32, offset: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !53, file: !54, line: 110, baseType: !59, size: 64, offset: 128)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !53, file: !54, line: 111, baseType: !47, size: 32, offset: 192)
!61 = !{!62}
!62 = !DISubrange(count: 8)
!63 = !DIGlobalVariableExpression(var: !64)
!64 = distinct !DIGlobalVariable(name: "Version", scope: !65, file: !66, line: 2, type: !17, isLocal: false, isDefinition: true)
!65 = distinct !DICompileUnit(language: DW_LANG_C99, file: !66, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !67)
!66 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!67 = !{!63}
!68 = !DIGlobalVariableExpression(var: !69)
!69 = distinct !DIGlobalVariable(name: "file_name", scope: !70, file: !75, line: 36, type: !17, isLocal: true, isDefinition: true)
!70 = distinct !DICompileUnit(language: DW_LANG_C99, file: !71, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !72)
!71 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!72 = !{!68, !73}
!73 = !DIGlobalVariableExpression(var: !74)
!74 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !70, file: !75, line: 46, type: !76, isLocal: true, isDefinition: true)
!75 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!76 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!77 = !DIGlobalVariableExpression(var: !78)
!78 = distinct !DIGlobalVariable(name: "exit_failure", scope: !79, file: !82, line: 24, type: !83, isLocal: false, isDefinition: true)
!79 = distinct !DICompileUnit(language: DW_LANG_C99, file: !80, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !81)
!80 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!81 = !{!77}
!82 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!83 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !47)
!84 = !DIGlobalVariableExpression(var: !85)
!85 = distinct !DIGlobalVariable(name: "program_name", scope: !86, file: !90, line: 33, type: !17, isLocal: false, isDefinition: true)
!86 = distinct !DICompileUnit(language: DW_LANG_C99, file: !87, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !88, globals: !89)
!87 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!88 = !{!8, !6}
!89 = !{!84}
!90 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!91 = !DIGlobalVariableExpression(var: !92)
!92 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !93, file: !135, line: 77, type: !169, isLocal: false, isDefinition: true)
!93 = distinct !DICompileUnit(language: DW_LANG_C99, file: !94, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !95, retainedTypes: !130, globals: !132)
!94 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!95 = !{!96, !110, !115}
!96 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !97, line: 32, size: 32, elements: !98)
!97 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!98 = !{!99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109}
!99 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!100 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!101 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!102 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!103 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!104 = !DIEnumerator(name: "c_quoting_style", value: 5)
!105 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!106 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!107 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!108 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!109 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!110 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !97, line: 242, size: 32, elements: !111)
!111 = !{!112, !113, !114}
!112 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!113 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!114 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!115 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !116, line: 46, size: 32, elements: !117)
!116 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!117 = !{!118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129}
!118 = !DIEnumerator(name: "_ISupper", value: 256)
!119 = !DIEnumerator(name: "_ISlower", value: 512)
!120 = !DIEnumerator(name: "_ISalpha", value: 1024)
!121 = !DIEnumerator(name: "_ISdigit", value: 2048)
!122 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!123 = !DIEnumerator(name: "_ISspace", value: 8192)
!124 = !DIEnumerator(name: "_ISprint", value: 16384)
!125 = !DIEnumerator(name: "_ISgraph", value: 32768)
!126 = !DIEnumerator(name: "_ISblank", value: 1)
!127 = !DIEnumerator(name: "_IScntrl", value: 2)
!128 = !DIEnumerator(name: "_ISpunct", value: 4)
!129 = !DIEnumerator(name: "_ISalnum", value: 8)
!130 = !{!47, !131, !9, !6}
!131 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!132 = !{!91, !133, !140, !151, !153, !158, !165, !167}
!133 = !DIGlobalVariableExpression(var: !134)
!134 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !93, file: !135, line: 93, type: !136, isLocal: false, isDefinition: true)
!135 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 320, elements: !138)
!137 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !96)
!138 = !{!139}
!139 = !DISubrange(count: 10)
!140 = !DIGlobalVariableExpression(var: !141)
!141 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !93, file: !135, line: 1043, type: !142, isLocal: false, isDefinition: true)
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !135, line: 57, size: 448, elements: !143)
!143 = !{!144, !145, !146, !149, !150}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !142, file: !135, line: 60, baseType: !96, size: 32)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !142, file: !135, line: 63, baseType: !47, size: 32, offset: 32)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !142, file: !135, line: 67, baseType: !147, size: 256, offset: 64)
!147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !148, size: 256, elements: !61)
!148 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !142, file: !135, line: 70, baseType: !17, size: 64, offset: 320)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !142, file: !135, line: 73, baseType: !17, size: 64, offset: 384)
!151 = !DIGlobalVariableExpression(var: !152)
!152 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !93, file: !135, line: 108, type: !142, isLocal: true, isDefinition: true)
!153 = !DIGlobalVariableExpression(var: !154)
!154 = distinct !DIGlobalVariable(name: "slot0", scope: !93, file: !135, line: 834, type: !155, isLocal: true, isDefinition: true)
!155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 2048, elements: !156)
!156 = !{!157}
!157 = !DISubrange(count: 256)
!158 = !DIGlobalVariableExpression(var: !159)
!159 = distinct !DIGlobalVariable(name: "slotvec", scope: !93, file: !135, line: 837, type: !160, isLocal: true, isDefinition: true)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !135, line: 826, size: 128, elements: !162)
!162 = !{!163, !164}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !161, file: !135, line: 828, baseType: !9, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !161, file: !135, line: 829, baseType: !6, size: 64, offset: 64)
!165 = !DIGlobalVariableExpression(var: !166)
!166 = distinct !DIGlobalVariable(name: "nslots", scope: !93, file: !135, line: 835, type: !47, isLocal: true, isDefinition: true)
!167 = !DIGlobalVariableExpression(var: !168)
!168 = distinct !DIGlobalVariable(name: "slotvec0", scope: !93, file: !135, line: 836, type: !161, isLocal: true, isDefinition: true)
!169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !170, size: 704, elements: !171)
!170 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!171 = !{!172}
!172 = !DISubrange(count: 11)
!173 = !DIGlobalVariableExpression(var: !174)
!174 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !175, file: !178, line: 26, type: !179, isLocal: false, isDefinition: true)
!175 = distinct !DICompileUnit(language: DW_LANG_C99, file: !176, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !177)
!176 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!177 = !{!173}
!178 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!179 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 376, elements: !180)
!180 = !{!181}
!181 = !DISubrange(count: 47)
!182 = !DIGlobalVariableExpression(var: !183)
!183 = distinct !DIGlobalVariable(name: "charset_aliases", scope: !184, file: !528, line: 120, type: !529, isLocal: true, isDefinition: true)
!184 = distinct !DICompileUnit(language: DW_LANG_C99, file: !185, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !186, retainedTypes: !525, globals: !527)
!185 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!186 = !{!187}
!187 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !188, line: 41, size: 32, elements: !189)
!188 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!189 = !{!190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524}
!190 = !DIEnumerator(name: "ABDAY_1", value: 131072)
!191 = !DIEnumerator(name: "ABDAY_2", value: 131073)
!192 = !DIEnumerator(name: "ABDAY_3", value: 131074)
!193 = !DIEnumerator(name: "ABDAY_4", value: 131075)
!194 = !DIEnumerator(name: "ABDAY_5", value: 131076)
!195 = !DIEnumerator(name: "ABDAY_6", value: 131077)
!196 = !DIEnumerator(name: "ABDAY_7", value: 131078)
!197 = !DIEnumerator(name: "DAY_1", value: 131079)
!198 = !DIEnumerator(name: "DAY_2", value: 131080)
!199 = !DIEnumerator(name: "DAY_3", value: 131081)
!200 = !DIEnumerator(name: "DAY_4", value: 131082)
!201 = !DIEnumerator(name: "DAY_5", value: 131083)
!202 = !DIEnumerator(name: "DAY_6", value: 131084)
!203 = !DIEnumerator(name: "DAY_7", value: 131085)
!204 = !DIEnumerator(name: "ABMON_1", value: 131086)
!205 = !DIEnumerator(name: "ABMON_2", value: 131087)
!206 = !DIEnumerator(name: "ABMON_3", value: 131088)
!207 = !DIEnumerator(name: "ABMON_4", value: 131089)
!208 = !DIEnumerator(name: "ABMON_5", value: 131090)
!209 = !DIEnumerator(name: "ABMON_6", value: 131091)
!210 = !DIEnumerator(name: "ABMON_7", value: 131092)
!211 = !DIEnumerator(name: "ABMON_8", value: 131093)
!212 = !DIEnumerator(name: "ABMON_9", value: 131094)
!213 = !DIEnumerator(name: "ABMON_10", value: 131095)
!214 = !DIEnumerator(name: "ABMON_11", value: 131096)
!215 = !DIEnumerator(name: "ABMON_12", value: 131097)
!216 = !DIEnumerator(name: "MON_1", value: 131098)
!217 = !DIEnumerator(name: "MON_2", value: 131099)
!218 = !DIEnumerator(name: "MON_3", value: 131100)
!219 = !DIEnumerator(name: "MON_4", value: 131101)
!220 = !DIEnumerator(name: "MON_5", value: 131102)
!221 = !DIEnumerator(name: "MON_6", value: 131103)
!222 = !DIEnumerator(name: "MON_7", value: 131104)
!223 = !DIEnumerator(name: "MON_8", value: 131105)
!224 = !DIEnumerator(name: "MON_9", value: 131106)
!225 = !DIEnumerator(name: "MON_10", value: 131107)
!226 = !DIEnumerator(name: "MON_11", value: 131108)
!227 = !DIEnumerator(name: "MON_12", value: 131109)
!228 = !DIEnumerator(name: "AM_STR", value: 131110)
!229 = !DIEnumerator(name: "PM_STR", value: 131111)
!230 = !DIEnumerator(name: "D_T_FMT", value: 131112)
!231 = !DIEnumerator(name: "D_FMT", value: 131113)
!232 = !DIEnumerator(name: "T_FMT", value: 131114)
!233 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115)
!234 = !DIEnumerator(name: "ERA", value: 131116)
!235 = !DIEnumerator(name: "__ERA_YEAR", value: 131117)
!236 = !DIEnumerator(name: "ERA_D_FMT", value: 131118)
!237 = !DIEnumerator(name: "ALT_DIGITS", value: 131119)
!238 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120)
!239 = !DIEnumerator(name: "ERA_T_FMT", value: 131121)
!240 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122)
!241 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123)
!242 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124)
!243 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125)
!244 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126)
!245 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127)
!246 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128)
!247 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129)
!248 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130)
!249 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131)
!250 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132)
!251 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133)
!252 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134)
!253 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135)
!254 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136)
!255 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137)
!256 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138)
!257 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139)
!258 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140)
!259 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141)
!260 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142)
!261 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143)
!262 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144)
!263 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145)
!264 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146)
!265 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147)
!266 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148)
!267 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149)
!268 = !DIEnumerator(name: "_NL_WMON_1", value: 131150)
!269 = !DIEnumerator(name: "_NL_WMON_2", value: 131151)
!270 = !DIEnumerator(name: "_NL_WMON_3", value: 131152)
!271 = !DIEnumerator(name: "_NL_WMON_4", value: 131153)
!272 = !DIEnumerator(name: "_NL_WMON_5", value: 131154)
!273 = !DIEnumerator(name: "_NL_WMON_6", value: 131155)
!274 = !DIEnumerator(name: "_NL_WMON_7", value: 131156)
!275 = !DIEnumerator(name: "_NL_WMON_8", value: 131157)
!276 = !DIEnumerator(name: "_NL_WMON_9", value: 131158)
!277 = !DIEnumerator(name: "_NL_WMON_10", value: 131159)
!278 = !DIEnumerator(name: "_NL_WMON_11", value: 131160)
!279 = !DIEnumerator(name: "_NL_WMON_12", value: 131161)
!280 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162)
!281 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163)
!282 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164)
!283 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165)
!284 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166)
!285 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167)
!286 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168)
!287 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169)
!288 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170)
!289 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171)
!290 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172)
!291 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173)
!292 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174)
!293 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175)
!294 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176)
!295 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177)
!296 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178)
!297 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179)
!298 = !DIEnumerator(name: "_DATE_FMT", value: 131180)
!299 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181)
!300 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182)
!301 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131183)
!302 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608)
!303 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609)
!304 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610)
!305 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611)
!306 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612)
!307 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613)
!308 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614)
!309 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615)
!310 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616)
!311 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617)
!312 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618)
!313 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619)
!314 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620)
!315 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621)
!316 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622)
!317 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623)
!318 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624)
!319 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625)
!320 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626)
!321 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627)
!322 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0)
!323 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1)
!324 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2)
!325 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3)
!326 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4)
!327 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5)
!328 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6)
!329 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7)
!330 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8)
!331 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9)
!332 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10)
!333 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11)
!334 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12)
!335 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13)
!336 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14)
!337 = !DIEnumerator(name: "CODESET", value: 14)
!338 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15)
!339 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16)
!340 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17)
!341 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18)
!342 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19)
!343 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20)
!344 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21)
!345 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22)
!346 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23)
!347 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24)
!348 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25)
!349 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26)
!350 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27)
!351 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28)
!352 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29)
!353 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30)
!354 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31)
!355 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32)
!356 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33)
!357 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34)
!358 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35)
!359 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36)
!360 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37)
!361 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38)
!362 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39)
!363 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40)
!364 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41)
!365 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42)
!366 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43)
!367 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44)
!368 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45)
!369 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46)
!370 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47)
!371 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48)
!372 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49)
!373 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50)
!374 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51)
!375 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52)
!376 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53)
!377 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54)
!378 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55)
!379 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56)
!380 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57)
!381 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58)
!382 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59)
!383 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60)
!384 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61)
!385 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62)
!386 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63)
!387 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64)
!388 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65)
!389 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66)
!390 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67)
!391 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68)
!392 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69)
!393 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70)
!394 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71)
!395 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72)
!396 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73)
!397 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74)
!398 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75)
!399 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76)
!400 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77)
!401 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78)
!402 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79)
!403 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80)
!404 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81)
!405 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82)
!406 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83)
!407 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84)
!408 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85)
!409 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86)
!410 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144)
!411 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145)
!412 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146)
!413 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147)
!414 = !DIEnumerator(name: "__MON_GROUPING", value: 262148)
!415 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149)
!416 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150)
!417 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151)
!418 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152)
!419 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153)
!420 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154)
!421 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155)
!422 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156)
!423 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157)
!424 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158)
!425 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159)
!426 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160)
!427 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161)
!428 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162)
!429 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163)
!430 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164)
!431 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165)
!432 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166)
!433 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167)
!434 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168)
!435 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169)
!436 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170)
!437 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171)
!438 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172)
!439 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173)
!440 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174)
!441 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175)
!442 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176)
!443 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177)
!444 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178)
!445 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179)
!446 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180)
!447 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181)
!448 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182)
!449 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183)
!450 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184)
!451 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185)
!452 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186)
!453 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187)
!454 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188)
!455 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189)
!456 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190)
!457 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536)
!458 = !DIEnumerator(name: "RADIXCHAR", value: 65536)
!459 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537)
!460 = !DIEnumerator(name: "THOUSEP", value: 65537)
!461 = !DIEnumerator(name: "__GROUPING", value: 65538)
!462 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539)
!463 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540)
!464 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541)
!465 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542)
!466 = !DIEnumerator(name: "__YESEXPR", value: 327680)
!467 = !DIEnumerator(name: "__NOEXPR", value: 327681)
!468 = !DIEnumerator(name: "__YESSTR", value: 327682)
!469 = !DIEnumerator(name: "__NOSTR", value: 327683)
!470 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684)
!471 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685)
!472 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752)
!473 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753)
!474 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754)
!475 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755)
!476 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288)
!477 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289)
!478 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290)
!479 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291)
!480 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292)
!481 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293)
!482 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294)
!483 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295)
!484 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824)
!485 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825)
!486 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826)
!487 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827)
!488 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828)
!489 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829)
!490 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830)
!491 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831)
!492 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832)
!493 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833)
!494 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834)
!495 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835)
!496 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836)
!497 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837)
!498 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360)
!499 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361)
!500 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362)
!501 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363)
!502 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364)
!503 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365)
!504 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896)
!505 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897)
!506 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898)
!507 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432)
!508 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433)
!509 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434)
!510 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435)
!511 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436)
!512 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437)
!513 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438)
!514 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439)
!515 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440)
!516 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441)
!517 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442)
!518 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443)
!519 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444)
!520 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445)
!521 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446)
!522 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447)
!523 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448)
!524 = !DIEnumerator(name: "_NL_NUM", value: 786449)
!525 = !{!8, !6, !526}
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!527 = !{!182}
!528 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!529 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !17)
!530 = distinct !DICompileUnit(language: DW_LANG_C99, file: !531, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !532, retainedTypes: !537)
!531 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!532 = !{!533}
!533 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !534, line: 41, size: 32, elements: !535)
!534 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!535 = !{!536}
!536 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!537 = !{!8}
!538 = distinct !DICompileUnit(language: DW_LANG_C99, file: !539, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !540, retainedTypes: !554)
!539 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!540 = !{!541}
!541 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !543, file: !542, line: 192, size: 32, elements: !552)
!542 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!543 = distinct !DISubprogram(name: "x2nrealloc", scope: !542, file: !542, line: 180, type: !544, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !538, variables: !547)
!544 = !DISubroutineType(types: !545)
!545 = !{!8, !8, !546, !9}
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!547 = !{!548, !549, !550, !551}
!548 = !DILocalVariable(name: "p", arg: 1, scope: !543, file: !542, line: 180, type: !8)
!549 = !DILocalVariable(name: "pn", arg: 2, scope: !543, file: !542, line: 180, type: !546)
!550 = !DILocalVariable(name: "s", arg: 3, scope: !543, file: !542, line: 180, type: !9)
!551 = !DILocalVariable(name: "n", scope: !543, file: !542, line: 182, type: !9)
!552 = !{!553}
!553 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!554 = !{!9, !6, !8}
!555 = distinct !DICompileUnit(language: DW_LANG_C99, file: !556, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!556 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!557 = distinct !DICompileUnit(language: DW_LANG_C99, file: !558, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !537)
!558 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!559 = distinct !DICompileUnit(language: DW_LANG_C99, file: !560, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !561)
!560 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!561 = !{!9}
!562 = distinct !DICompileUnit(language: DW_LANG_C99, file: !563, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!563 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!564 = distinct !DICompileUnit(language: DW_LANG_C99, file: !565, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !566)
!565 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!566 = !{!9, !12, !14, !17}
!567 = distinct !DICompileUnit(language: DW_LANG_C99, file: !568, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!568 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!569 = distinct !DICompileUnit(language: DW_LANG_C99, file: !570, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !537)
!570 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!571 = distinct !DICompileUnit(language: DW_LANG_C99, file: !572, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !537)
!572 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!573 = !{!"clang version 4.0.1 (tags/RELEASE_401/final)"}
!574 = !{i32 2, !"Dwarf Version", i32 4}
!575 = !{i32 2, !"Debug Info Version", i32 3}
!576 = !{i32 1, !"PIC Level", i32 2}
!577 = !{i32 1, !"PIE Level", i32 2}
!578 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 72, type: !579, isLocal: false, isDefinition: true, scopeLine: 73, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, variables: !581)
!579 = !DISubroutineType(types: !580)
!580 = !{null, !47}
!581 = !{!582}
!582 = !DILocalVariable(name: "status", arg: 1, scope: !578, file: !3, line: 72, type: !47)
!583 = !DIExpression()
!584 = !DILocation(line: 72, column: 12, scope: !578)
!585 = !DILocation(line: 74, column: 14, scope: !586)
!586 = distinct !DILexicalBlock(scope: !578, file: !3, line: 74, column: 7)
!587 = !DILocation(line: 74, column: 7, scope: !578)
!588 = !DILocation(line: 75, column: 5, scope: !589)
!589 = !DILexicalBlockFile(scope: !590, file: !3, discriminator: 1)
!590 = distinct !DILexicalBlock(scope: !586, file: !3, line: 75, column: 5)
!591 = !{!592, !592, i64 0}
!592 = !{!"any pointer", !593, i64 0}
!593 = !{!"omnipotent char", !594, i64 0}
!594 = !{!"Simple C/C++ TBAA"}
!595 = !DILocation(line: 75, column: 5, scope: !596)
!596 = !DILexicalBlockFile(scope: !590, file: !3, discriminator: 3)
!597 = !DILocation(line: 75, column: 5, scope: !598)
!598 = !DILexicalBlockFile(scope: !590, file: !3, discriminator: 2)
!599 = !DILocation(line: 78, column: 7, scope: !600)
!600 = distinct !DILexicalBlock(scope: !586, file: !3, line: 77, column: 5)
!601 = !DILocation(line: 78, column: 7, scope: !602)
!602 = !DILexicalBlockFile(scope: !600, file: !3, discriminator: 1)
!603 = !DILocation(line: 82, column: 7, scope: !600)
!604 = !DILocation(line: 82, column: 7, scope: !602)
!605 = !DILocation(line: 587, column: 3, scope: !606, inlinedAt: !609)
!606 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !23, file: !23, line: 585, type: !607, isLocal: true, isDefinition: true, scopeLine: 586, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !4)
!607 = !DISubroutineType(types: !608)
!608 = !{null}
!609 = distinct !DILocation(line: 87, column: 7, scope: !600)
!610 = !DILocation(line: 587, column: 3, scope: !611, inlinedAt: !609)
!611 = !DILexicalBlockFile(scope: !606, file: !23, discriminator: 1)
!612 = !DILocation(line: 89, column: 7, scope: !600)
!613 = !DILocation(line: 89, column: 7, scope: !602)
!614 = !DILocation(line: 98, column: 7, scope: !600)
!615 = !DILocation(line: 98, column: 7, scope: !602)
!616 = !DILocation(line: 99, column: 7, scope: !600)
!617 = !DILocation(line: 99, column: 7, scope: !602)
!618 = !DILocation(line: 642, column: 15, scope: !22, inlinedAt: !619)
!619 = distinct !DILocation(line: 100, column: 7, scope: !600)
!620 = !DILocation(line: 651, column: 3, scope: !22, inlinedAt: !619)
!621 = !DILocation(line: 651, column: 3, scope: !622, inlinedAt: !619)
!622 = !DILexicalBlockFile(scope: !22, file: !23, discriminator: 1)
!623 = !DILocation(line: 655, column: 29, scope: !22, inlinedAt: !619)
!624 = !DILocation(line: 655, column: 15, scope: !22, inlinedAt: !619)
!625 = !DILocation(line: 656, column: 7, scope: !42, inlinedAt: !619)
!626 = !DILocation(line: 656, column: 19, scope: !42, inlinedAt: !619)
!627 = !DILocation(line: 656, column: 22, scope: !628, inlinedAt: !619)
!628 = !DILexicalBlockFile(scope: !42, file: !23, discriminator: 16)
!629 = !DILocation(line: 656, column: 7, scope: !630, inlinedAt: !619)
!630 = !DILexicalBlockFile(scope: !22, file: !23, discriminator: 16)
!631 = !DILocation(line: 662, column: 7, scope: !632, inlinedAt: !619)
!632 = distinct !DILexicalBlock(scope: !42, file: !23, line: 657, column: 5)
!633 = !DILocation(line: 662, column: 7, scope: !634, inlinedAt: !619)
!634 = !DILexicalBlockFile(scope: !632, file: !23, discriminator: 1)
!635 = !DILocation(line: 664, column: 5, scope: !632, inlinedAt: !619)
!636 = !DILocation(line: 665, column: 3, scope: !22, inlinedAt: !619)
!637 = !DILocation(line: 665, column: 3, scope: !622, inlinedAt: !619)
!638 = !DILocation(line: 667, column: 3, scope: !22, inlinedAt: !619)
!639 = !DILocation(line: 667, column: 3, scope: !622, inlinedAt: !619)
!640 = !DILocation(line: 102, column: 3, scope: !578)
!641 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 106, type: !642, isLocal: false, isDefinition: true, scopeLine: 107, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !645)
!642 = !DISubroutineType(types: !643)
!643 = !{!47, !47, !644}
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!645 = !{!646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !660, !662}
!646 = !DILocalVariable(name: "argc", arg: 1, scope: !641, file: !3, line: 106, type: !47)
!647 = !DILocalVariable(name: "argv", arg: 2, scope: !641, file: !3, line: 106, type: !644)
!648 = !DILocalVariable(name: "role", scope: !641, file: !3, line: 108, type: !6)
!649 = !DILocalVariable(name: "range", scope: !641, file: !3, line: 109, type: !6)
!650 = !DILocalVariable(name: "user", scope: !641, file: !3, line: 110, type: !6)
!651 = !DILocalVariable(name: "type", scope: !641, file: !3, line: 111, type: !6)
!652 = !DILocalVariable(name: "context", scope: !641, file: !3, line: 112, type: !6)
!653 = !DILocalVariable(name: "cur_context", scope: !641, file: !3, line: 113, type: !6)
!654 = !DILocalVariable(name: "file_context", scope: !641, file: !3, line: 114, type: !6)
!655 = !DILocalVariable(name: "new_context", scope: !641, file: !3, line: 115, type: !6)
!656 = !DILocalVariable(name: "compute_trans", scope: !641, file: !3, line: 116, type: !76)
!657 = !DILocalVariable(name: "con", scope: !641, file: !3, line: 118, type: !658)
!658 = !DIDerivedType(tag: DW_TAG_typedef, name: "context_t", file: !659, line: 37, baseType: !47)
!659 = !DIFile(filename: "./lib/selinux/context.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!660 = !DILocalVariable(name: "option_index", scope: !661, file: !3, line: 130, type: !47)
!661 = distinct !DILexicalBlock(scope: !641, file: !3, line: 129, column: 5)
!662 = !DILocalVariable(name: "c", scope: !661, file: !3, line: 131, type: !47)
!663 = !DILocation(line: 106, column: 11, scope: !641)
!664 = !DILocation(line: 106, column: 24, scope: !641)
!665 = !DILocation(line: 108, column: 9, scope: !641)
!666 = !DILocation(line: 109, column: 9, scope: !641)
!667 = !DILocation(line: 110, column: 9, scope: !641)
!668 = !DILocation(line: 111, column: 9, scope: !641)
!669 = !DILocation(line: 112, column: 9, scope: !641)
!670 = !DILocation(line: 113, column: 9, scope: !641)
!671 = !DILocation(line: 114, column: 9, scope: !641)
!672 = !DILocation(line: 115, column: 9, scope: !641)
!673 = !DILocation(line: 116, column: 8, scope: !641)
!674 = !DILocation(line: 121, column: 21, scope: !641)
!675 = !DILocation(line: 121, column: 3, scope: !641)
!676 = !DILocation(line: 122, column: 3, scope: !641)
!677 = !DILocation(line: 123, column: 3, scope: !641)
!678 = !DILocation(line: 124, column: 3, scope: !641)
!679 = !DILocation(line: 126, column: 3, scope: !641)
!680 = !DILocation(line: 128, column: 3, scope: !641)
!681 = !DILocation(line: 130, column: 7, scope: !661)
!682 = !DILocation(line: 130, column: 11, scope: !661)
!683 = !{!684, !684, i64 0}
!684 = !{!"int", !593, i64 0}
!685 = !DIExpression(DW_OP_deref)
!686 = !DILocation(line: 131, column: 15, scope: !661)
!687 = !DILocation(line: 131, column: 11, scope: !661)
!688 = !DILocation(line: 133, column: 11, scope: !661)
!689 = !DILocation(line: 138, column: 15, scope: !690)
!690 = distinct !DILexicalBlock(scope: !691, file: !3, line: 138, column: 15)
!691 = distinct !DILexicalBlock(scope: !661, file: !3, line: 136, column: 9)
!692 = !DILocation(line: 138, column: 15, scope: !691)
!693 = !DILocation(line: 139, column: 13, scope: !690)
!694 = !DILocation(line: 139, column: 13, scope: !695)
!695 = !DILexicalBlockFile(scope: !690, file: !3, discriminator: 1)
!696 = !DILocation(line: 140, column: 18, scope: !691)
!697 = !DILocation(line: 141, column: 11, scope: !691)
!698 = !DILocation(line: 143, column: 15, scope: !699)
!699 = distinct !DILexicalBlock(scope: !691, file: !3, line: 143, column: 15)
!700 = !DILocation(line: 143, column: 15, scope: !691)
!701 = !DILocation(line: 144, column: 13, scope: !699)
!702 = !DILocation(line: 144, column: 13, scope: !703)
!703 = !DILexicalBlockFile(scope: !699, file: !3, discriminator: 1)
!704 = !DILocation(line: 145, column: 18, scope: !691)
!705 = !DILocation(line: 146, column: 11, scope: !691)
!706 = !DILocation(line: 148, column: 15, scope: !707)
!707 = distinct !DILexicalBlock(scope: !691, file: !3, line: 148, column: 15)
!708 = !DILocation(line: 148, column: 15, scope: !691)
!709 = !DILocation(line: 149, column: 13, scope: !707)
!710 = !DILocation(line: 149, column: 13, scope: !711)
!711 = !DILexicalBlockFile(scope: !707, file: !3, discriminator: 1)
!712 = !DILocation(line: 150, column: 18, scope: !691)
!713 = !DILocation(line: 151, column: 11, scope: !691)
!714 = !DILocation(line: 153, column: 15, scope: !715)
!715 = distinct !DILexicalBlock(scope: !691, file: !3, line: 153, column: 15)
!716 = !DILocation(line: 153, column: 15, scope: !691)
!717 = !DILocation(line: 154, column: 13, scope: !715)
!718 = !DILocation(line: 154, column: 13, scope: !719)
!719 = !DILexicalBlockFile(scope: !715, file: !3, discriminator: 1)
!720 = !DILocation(line: 155, column: 19, scope: !691)
!721 = !DILocation(line: 156, column: 11, scope: !691)
!722 = !DILocation(line: 161, column: 9, scope: !691)
!723 = !DILocation(line: 162, column: 9, scope: !691)
!724 = !DILocation(line: 162, column: 9, scope: !725)
!725 = !DILexicalBlockFile(scope: !691, file: !3, discriminator: 1)
!726 = !DILocation(line: 164, column: 11, scope: !691)
!727 = !DILocation(line: 167, column: 5, scope: !641)
!728 = !DILocation(line: 169, column: 14, scope: !729)
!729 = distinct !DILexicalBlock(scope: !641, file: !3, line: 169, column: 7)
!730 = !DILocation(line: 169, column: 21, scope: !729)
!731 = !DILocation(line: 169, column: 7, scope: !641)
!732 = !DILocation(line: 72, column: 5, scope: !733, inlinedAt: !741)
!733 = distinct !DISubprogram(name: "getcon", scope: !734, file: !734, line: 71, type: !735, isLocal: false, isDefinition: true, scopeLine: 72, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !739)
!734 = !DIFile(filename: "./lib/selinux/selinux.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!735 = !DISubroutineType(types: !736)
!736 = !{!47, !737}
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!738 = !DIDerivedType(tag: DW_TAG_typedef, name: "security_context_t", file: !734, line: 67, baseType: !6)
!739 = !{!740}
!740 = !DILocalVariable(name: "con", arg: 1, scope: !733, file: !734, line: 71, type: !737)
!741 = distinct !DILocation(line: 171, column: 11, scope: !742)
!742 = distinct !DILexicalBlock(scope: !743, file: !3, line: 171, column: 11)
!743 = distinct !DILexicalBlock(scope: !729, file: !3, line: 170, column: 5)
!744 = !DILocation(line: 72, column: 11, scope: !733, inlinedAt: !741)
!745 = !DILocation(line: 172, column: 9, scope: !746)
!746 = !DILexicalBlockFile(scope: !742, file: !3, discriminator: 1)
!747 = !DILocation(line: 172, column: 9, scope: !748)
!748 = !DILexicalBlockFile(scope: !742, file: !3, discriminator: 2)
!749 = !DILocation(line: 172, column: 9, scope: !742)
!750 = !DILocation(line: 178, column: 9, scope: !751)
!751 = distinct !DILexicalBlock(scope: !641, file: !3, line: 178, column: 7)
!752 = !DILocation(line: 178, column: 17, scope: !753)
!753 = !DILexicalBlockFile(scope: !751, file: !3, discriminator: 1)
!754 = !DILocation(line: 178, column: 14, scope: !751)
!755 = !DILocation(line: 178, column: 25, scope: !756)
!756 = !DILexicalBlockFile(scope: !751, file: !3, discriminator: 2)
!757 = !DILocation(line: 178, column: 33, scope: !758)
!758 = !DILexicalBlockFile(scope: !751, file: !3, discriminator: 3)
!759 = !DILocation(line: 178, column: 42, scope: !760)
!760 = !DILexicalBlockFile(scope: !751, file: !3, discriminator: 4)
!761 = !DILocation(line: 180, column: 18, scope: !762)
!762 = distinct !DILexicalBlock(scope: !763, file: !3, line: 180, column: 11)
!763 = distinct !DILexicalBlock(scope: !751, file: !3, line: 179, column: 5)
!764 = !DILocation(line: 180, column: 11, scope: !763)
!765 = !DILocation(line: 182, column: 24, scope: !766)
!766 = distinct !DILexicalBlock(scope: !762, file: !3, line: 181, column: 9)
!767 = !DILocation(line: 182, column: 11, scope: !768)
!768 = !DILexicalBlockFile(scope: !766, file: !3, discriminator: 1)
!769 = !DILocation(line: 183, column: 11, scope: !766)
!770 = !DILocation(line: 185, column: 28, scope: !763)
!771 = !DILocation(line: 186, column: 5, scope: !763)
!772 = !DILocation(line: 188, column: 7, scope: !773)
!773 = distinct !DILexicalBlock(scope: !641, file: !3, line: 188, column: 7)
!774 = !DILocation(line: 188, column: 14, scope: !773)
!775 = !DILocation(line: 188, column: 7, scope: !641)
!776 = !DILocation(line: 190, column: 20, scope: !777)
!777 = distinct !DILexicalBlock(scope: !773, file: !3, line: 189, column: 5)
!778 = !DILocation(line: 190, column: 7, scope: !779)
!779 = !DILexicalBlockFile(scope: !777, file: !3, discriminator: 1)
!780 = !DILocation(line: 191, column: 7, scope: !777)
!781 = !DILocation(line: 195, column: 5, scope: !782)
!782 = distinct !DILexicalBlock(scope: !641, file: !3, line: 194, column: 7)
!783 = !DILocation(line: 195, column: 5, scope: !784)
!784 = !DILexicalBlockFile(scope: !782, file: !3, discriminator: 1)
!785 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !75, file: !75, line: 41, type: !24, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !70, variables: !786)
!786 = !{!787}
!787 = !DILocalVariable(name: "file", arg: 1, scope: !785, file: !75, line: 41, type: !17)
!788 = !DILocation(line: 41, column: 41, scope: !785)
!789 = !DILocation(line: 43, column: 13, scope: !785)
!790 = !DILocation(line: 44, column: 1, scope: !785)
!791 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !75, file: !75, line: 78, type: !792, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !70, variables: !794)
!792 = !DISubroutineType(types: !793)
!793 = !{null, !76}
!794 = !{!795}
!795 = !DILocalVariable(name: "ignore", arg: 1, scope: !791, file: !75, line: 78, type: !76)
!796 = !DIExpression(DW_OP_LLVM_fragment, 0, 1)
!797 = !DILocation(line: 78, column: 37, scope: !791)
!798 = !DILocation(line: 80, column: 16, scope: !791)
!799 = !{!800, !800, i64 0}
!800 = !{!"_Bool", !593, i64 0}
!801 = !DILocation(line: 81, column: 1, scope: !791)
!802 = distinct !DISubprogram(name: "close_stdout", scope: !75, file: !75, line: 107, type: !607, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !70, variables: !803)
!803 = !{!804}
!804 = !DILocalVariable(name: "write_error", scope: !805, file: !75, line: 112, type: !17)
!805 = distinct !DILexicalBlock(scope: !806, file: !75, line: 111, column: 5)
!806 = distinct !DILexicalBlock(scope: !802, file: !75, line: 109, column: 7)
!807 = !DILocation(line: 109, column: 21, scope: !806)
!808 = !DILocation(line: 109, column: 7, scope: !806)
!809 = !DILocation(line: 109, column: 29, scope: !806)
!810 = !DILocation(line: 110, column: 7, scope: !806)
!811 = !DILocation(line: 110, column: 12, scope: !812)
!812 = !DILexicalBlockFile(scope: !806, file: !75, discriminator: 1)
!813 = !{i8 0, i8 2}
!814 = !DILocation(line: 114, column: 19, scope: !815)
!815 = distinct !DILexicalBlock(scope: !805, file: !75, line: 113, column: 11)
!816 = !DILocation(line: 110, column: 25, scope: !812)
!817 = !DILocation(line: 110, column: 28, scope: !818)
!818 = !DILexicalBlockFile(scope: !806, file: !75, discriminator: 2)
!819 = !DILocation(line: 110, column: 34, scope: !818)
!820 = !DILocation(line: 109, column: 7, scope: !821)
!821 = !DILexicalBlockFile(scope: !802, file: !75, discriminator: 1)
!822 = !DILocation(line: 112, column: 33, scope: !805)
!823 = !DILocation(line: 112, column: 19, scope: !805)
!824 = !DILocation(line: 113, column: 11, scope: !815)
!825 = !DILocation(line: 113, column: 11, scope: !805)
!826 = !DILocation(line: 114, column: 36, scope: !827)
!827 = !DILexicalBlockFile(scope: !815, file: !75, discriminator: 1)
!828 = !DILocation(line: 114, column: 9, scope: !829)
!829 = !DILexicalBlockFile(scope: !815, file: !75, discriminator: 2)
!830 = !DILocation(line: 114, column: 9, scope: !815)
!831 = !DILocation(line: 117, column: 9, scope: !827)
!832 = !DILocation(line: 119, column: 14, scope: !805)
!833 = !DILocation(line: 119, column: 7, scope: !805)
!834 = !DILocation(line: 122, column: 22, scope: !835)
!835 = distinct !DILexicalBlock(scope: !802, file: !75, line: 122, column: 8)
!836 = !DILocation(line: 122, column: 8, scope: !835)
!837 = !DILocation(line: 122, column: 30, scope: !835)
!838 = !DILocation(line: 122, column: 8, scope: !802)
!839 = !DILocation(line: 123, column: 13, scope: !835)
!840 = !DILocation(line: 123, column: 6, scope: !835)
!841 = !DILocation(line: 124, column: 1, scope: !802)
!842 = distinct !DISubprogram(name: "set_program_name", scope: !90, file: !90, line: 39, type: !24, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !86, variables: !843)
!843 = !{!844, !845, !846}
!844 = !DILocalVariable(name: "argv0", arg: 1, scope: !842, file: !90, line: 39, type: !17)
!845 = !DILocalVariable(name: "slash", scope: !842, file: !90, line: 46, type: !17)
!846 = !DILocalVariable(name: "base", scope: !842, file: !90, line: 47, type: !17)
!847 = !DILocation(line: 39, column: 31, scope: !842)
!848 = !DILocation(line: 51, column: 13, scope: !849)
!849 = distinct !DILexicalBlock(scope: !842, file: !90, line: 51, column: 7)
!850 = !DILocation(line: 51, column: 7, scope: !842)
!851 = !DILocation(line: 55, column: 14, scope: !852)
!852 = distinct !DILexicalBlock(scope: !849, file: !90, line: 52, column: 5)
!853 = !DILocation(line: 54, column: 7, scope: !852)
!854 = !DILocation(line: 56, column: 7, scope: !852)
!855 = !DILocation(line: 59, column: 11, scope: !842)
!856 = !DILocation(line: 46, column: 15, scope: !842)
!857 = !DILocation(line: 60, column: 17, scope: !842)
!858 = !DILocation(line: 60, column: 33, scope: !859)
!859 = !DILexicalBlockFile(scope: !842, file: !90, discriminator: 1)
!860 = !DILocation(line: 60, column: 11, scope: !842)
!861 = !DILocation(line: 47, column: 15, scope: !842)
!862 = !DILocation(line: 61, column: 12, scope: !863)
!863 = distinct !DILexicalBlock(scope: !842, file: !90, line: 61, column: 7)
!864 = !DILocation(line: 61, column: 20, scope: !863)
!865 = !DILocation(line: 61, column: 25, scope: !863)
!866 = !DILocation(line: 61, column: 28, scope: !867)
!867 = !DILexicalBlockFile(scope: !863, file: !90, discriminator: 1)
!868 = !DILocation(line: 61, column: 61, scope: !867)
!869 = !DILocation(line: 61, column: 7, scope: !859)
!870 = !DILocation(line: 64, column: 11, scope: !871)
!871 = distinct !DILexicalBlock(scope: !872, file: !90, line: 64, column: 11)
!872 = distinct !DILexicalBlock(scope: !863, file: !90, line: 62, column: 5)
!873 = !DILocation(line: 64, column: 36, scope: !871)
!874 = !DILocation(line: 64, column: 11, scope: !872)
!875 = !DILocation(line: 66, column: 24, scope: !876)
!876 = distinct !DILexicalBlock(scope: !871, file: !90, line: 65, column: 9)
!877 = !DILocation(line: 70, column: 41, scope: !876)
!878 = !DILocation(line: 72, column: 9, scope: !876)
!879 = !DILocation(line: 84, column: 16, scope: !842)
!880 = !DILocation(line: 90, column: 27, scope: !842)
!881 = !DILocation(line: 92, column: 1, scope: !842)
!882 = distinct !DISubprogram(name: "clone_quoting_options", scope: !135, file: !135, line: 114, type: !883, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !886)
!883 = !DISubroutineType(types: !884)
!884 = !{!885, !885}
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!886 = !{!887, !888, !889}
!887 = !DILocalVariable(name: "o", arg: 1, scope: !882, file: !135, line: 114, type: !885)
!888 = !DILocalVariable(name: "e", scope: !882, file: !135, line: 116, type: !47)
!889 = !DILocalVariable(name: "p", scope: !882, file: !135, line: 117, type: !885)
!890 = !DILocation(line: 114, column: 48, scope: !882)
!891 = !DILocation(line: 116, column: 11, scope: !882)
!892 = !DILocation(line: 116, column: 7, scope: !882)
!893 = !DILocation(line: 117, column: 40, scope: !882)
!894 = !DILocation(line: 117, column: 40, scope: !895)
!895 = !DILexicalBlockFile(scope: !882, file: !135, discriminator: 3)
!896 = !DILocation(line: 117, column: 31, scope: !895)
!897 = !DILocation(line: 117, column: 27, scope: !882)
!898 = !DILocation(line: 119, column: 9, scope: !882)
!899 = !DILocation(line: 120, column: 3, scope: !882)
!900 = distinct !DISubprogram(name: "get_quoting_style", scope: !135, file: !135, line: 125, type: !901, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !905)
!901 = !DISubroutineType(types: !902)
!902 = !{!96, !903}
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !904, size: 64)
!904 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !142)
!905 = !{!906}
!906 = !DILocalVariable(name: "o", arg: 1, scope: !900, file: !135, line: 125, type: !903)
!907 = !DILocation(line: 125, column: 50, scope: !900)
!908 = !DILocation(line: 127, column: 11, scope: !900)
!909 = !DILocation(line: 127, column: 46, scope: !910)
!910 = !DILexicalBlockFile(scope: !900, file: !135, discriminator: 3)
!911 = !{!912, !593, i64 0}
!912 = !{!"quoting_options", !593, i64 0, !684, i64 4, !593, i64 8, !592, i64 40, !592, i64 48}
!913 = !DILocation(line: 127, column: 3, scope: !910)
!914 = distinct !DISubprogram(name: "set_quoting_style", scope: !135, file: !135, line: 133, type: !915, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !917)
!915 = !DISubroutineType(types: !916)
!916 = !{null, !885, !96}
!917 = !{!918, !919}
!918 = !DILocalVariable(name: "o", arg: 1, scope: !914, file: !135, line: 133, type: !885)
!919 = !DILocalVariable(name: "s", arg: 2, scope: !914, file: !135, line: 133, type: !96)
!920 = !DILocation(line: 133, column: 44, scope: !914)
!921 = !DILocation(line: 133, column: 66, scope: !914)
!922 = !DILocation(line: 135, column: 4, scope: !914)
!923 = !DILocation(line: 135, column: 39, scope: !924)
!924 = !DILexicalBlockFile(scope: !914, file: !135, discriminator: 3)
!925 = !DILocation(line: 135, column: 45, scope: !924)
!926 = !DILocation(line: 136, column: 1, scope: !914)
!927 = distinct !DISubprogram(name: "set_char_quoting", scope: !135, file: !135, line: 144, type: !928, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !930)
!928 = !DISubroutineType(types: !929)
!929 = !{!47, !885, !7, !47}
!930 = !{!931, !932, !933, !934, !935, !937, !938}
!931 = !DILocalVariable(name: "o", arg: 1, scope: !927, file: !135, line: 144, type: !885)
!932 = !DILocalVariable(name: "c", arg: 2, scope: !927, file: !135, line: 144, type: !7)
!933 = !DILocalVariable(name: "i", arg: 3, scope: !927, file: !135, line: 144, type: !47)
!934 = !DILocalVariable(name: "uc", scope: !927, file: !135, line: 146, type: !16)
!935 = !DILocalVariable(name: "p", scope: !927, file: !135, line: 147, type: !936)
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!937 = !DILocalVariable(name: "shift", scope: !927, file: !135, line: 149, type: !47)
!938 = !DILocalVariable(name: "r", scope: !927, file: !135, line: 150, type: !47)
!939 = !DILocation(line: 144, column: 43, scope: !927)
!940 = !DILocation(line: 144, column: 51, scope: !927)
!941 = !DILocation(line: 144, column: 58, scope: !927)
!942 = !DILocation(line: 146, column: 17, scope: !927)
!943 = !DILocation(line: 148, column: 6, scope: !927)
!944 = !DILocation(line: 148, column: 62, scope: !945)
!945 = !DILexicalBlockFile(scope: !927, file: !135, discriminator: 3)
!946 = !DILocation(line: 148, column: 57, scope: !945)
!947 = !DILocation(line: 147, column: 17, scope: !927)
!948 = !DILocation(line: 149, column: 18, scope: !927)
!949 = !DILocation(line: 149, column: 15, scope: !927)
!950 = !DILocation(line: 149, column: 7, scope: !927)
!951 = !DILocation(line: 150, column: 12, scope: !927)
!952 = !DILocation(line: 150, column: 15, scope: !927)
!953 = !DILocation(line: 150, column: 25, scope: !927)
!954 = !DILocation(line: 150, column: 7, scope: !927)
!955 = !DILocation(line: 151, column: 13, scope: !927)
!956 = !DILocation(line: 151, column: 18, scope: !927)
!957 = !DILocation(line: 151, column: 23, scope: !927)
!958 = !DILocation(line: 151, column: 6, scope: !927)
!959 = !DILocation(line: 152, column: 3, scope: !927)
!960 = distinct !DISubprogram(name: "set_quoting_flags", scope: !135, file: !135, line: 160, type: !961, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !963)
!961 = !DISubroutineType(types: !962)
!962 = !{!47, !885, !47}
!963 = !{!964, !965, !966}
!964 = !DILocalVariable(name: "o", arg: 1, scope: !960, file: !135, line: 160, type: !885)
!965 = !DILocalVariable(name: "i", arg: 2, scope: !960, file: !135, line: 160, type: !47)
!966 = !DILocalVariable(name: "r", scope: !960, file: !135, line: 162, type: !47)
!967 = !DILocation(line: 160, column: 44, scope: !960)
!968 = !DILocation(line: 160, column: 51, scope: !960)
!969 = !DILocation(line: 163, column: 8, scope: !970)
!970 = distinct !DILexicalBlock(scope: !960, file: !135, line: 163, column: 7)
!971 = !DILocation(line: 163, column: 7, scope: !960)
!972 = !DILocation(line: 165, column: 10, scope: !960)
!973 = !{!912, !684, i64 4}
!974 = !DILocation(line: 162, column: 7, scope: !960)
!975 = !DILocation(line: 166, column: 12, scope: !960)
!976 = !DILocation(line: 167, column: 3, scope: !960)
!977 = distinct !DISubprogram(name: "set_custom_quoting", scope: !135, file: !135, line: 171, type: !978, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !980)
!978 = !DISubroutineType(types: !979)
!979 = !{null, !885, !17, !17}
!980 = !{!981, !982, !983}
!981 = !DILocalVariable(name: "o", arg: 1, scope: !977, file: !135, line: 171, type: !885)
!982 = !DILocalVariable(name: "left_quote", arg: 2, scope: !977, file: !135, line: 172, type: !17)
!983 = !DILocalVariable(name: "right_quote", arg: 3, scope: !977, file: !135, line: 172, type: !17)
!984 = !DILocation(line: 171, column: 45, scope: !977)
!985 = !DILocation(line: 172, column: 33, scope: !977)
!986 = !DILocation(line: 172, column: 57, scope: !977)
!987 = !DILocation(line: 174, column: 8, scope: !988)
!988 = distinct !DILexicalBlock(scope: !977, file: !135, line: 174, column: 7)
!989 = !DILocation(line: 174, column: 7, scope: !977)
!990 = !DILocation(line: 176, column: 6, scope: !977)
!991 = !DILocation(line: 176, column: 12, scope: !977)
!992 = !DILocation(line: 177, column: 8, scope: !993)
!993 = distinct !DILexicalBlock(scope: !977, file: !135, line: 177, column: 7)
!994 = !DILocation(line: 177, column: 23, scope: !995)
!995 = !DILexicalBlockFile(scope: !993, file: !135, discriminator: 1)
!996 = !DILocation(line: 177, column: 19, scope: !993)
!997 = !DILocation(line: 178, column: 5, scope: !993)
!998 = !DILocation(line: 179, column: 6, scope: !977)
!999 = !DILocation(line: 179, column: 17, scope: !977)
!1000 = !{!912, !592, i64 40}
!1001 = !DILocation(line: 180, column: 6, scope: !977)
!1002 = !DILocation(line: 180, column: 18, scope: !977)
!1003 = !{!912, !592, i64 48}
!1004 = !DILocation(line: 181, column: 1, scope: !977)
!1005 = distinct !DISubprogram(name: "quotearg_buffer", scope: !135, file: !135, line: 776, type: !1006, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !1008)
!1006 = !DISubroutineType(types: !1007)
!1007 = !{!9, !6, !9, !17, !9, !903}
!1008 = !{!1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016}
!1009 = !DILocalVariable(name: "buffer", arg: 1, scope: !1005, file: !135, line: 776, type: !6)
!1010 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1005, file: !135, line: 776, type: !9)
!1011 = !DILocalVariable(name: "arg", arg: 3, scope: !1005, file: !135, line: 777, type: !17)
!1012 = !DILocalVariable(name: "argsize", arg: 4, scope: !1005, file: !135, line: 777, type: !9)
!1013 = !DILocalVariable(name: "o", arg: 5, scope: !1005, file: !135, line: 778, type: !903)
!1014 = !DILocalVariable(name: "p", scope: !1005, file: !135, line: 780, type: !903)
!1015 = !DILocalVariable(name: "e", scope: !1005, file: !135, line: 781, type: !47)
!1016 = !DILocalVariable(name: "r", scope: !1005, file: !135, line: 782, type: !9)
!1017 = !DILocation(line: 776, column: 24, scope: !1005)
!1018 = !DILocation(line: 776, column: 39, scope: !1005)
!1019 = !DILocation(line: 777, column: 30, scope: !1005)
!1020 = !DILocation(line: 777, column: 42, scope: !1005)
!1021 = !DILocation(line: 778, column: 48, scope: !1005)
!1022 = !DILocation(line: 780, column: 37, scope: !1005)
!1023 = !DILocation(line: 780, column: 33, scope: !1005)
!1024 = !DILocation(line: 781, column: 11, scope: !1005)
!1025 = !DILocation(line: 781, column: 7, scope: !1005)
!1026 = !DILocation(line: 783, column: 43, scope: !1005)
!1027 = !DILocation(line: 783, column: 53, scope: !1005)
!1028 = !DILocation(line: 783, column: 60, scope: !1005)
!1029 = !DILocation(line: 784, column: 43, scope: !1005)
!1030 = !DILocation(line: 784, column: 58, scope: !1005)
!1031 = !DILocation(line: 782, column: 14, scope: !1005)
!1032 = !DILocation(line: 782, column: 10, scope: !1005)
!1033 = !DILocation(line: 785, column: 9, scope: !1005)
!1034 = !DILocation(line: 786, column: 3, scope: !1005)
!1035 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !135, file: !135, line: 248, type: !1036, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !1040)
!1036 = !DISubroutineType(types: !1037)
!1037 = !{!9, !6, !9, !17, !9, !96, !47, !1038, !17, !17}
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1039, size: 64)
!1039 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !148)
!1040 = !{!1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1065, !1066, !1067, !1068, !1069, !1072, !1073, !1090, !1093, !1094, !1101}
!1041 = !DILocalVariable(name: "buffer", arg: 1, scope: !1035, file: !135, line: 248, type: !6)
!1042 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1035, file: !135, line: 248, type: !9)
!1043 = !DILocalVariable(name: "arg", arg: 3, scope: !1035, file: !135, line: 249, type: !17)
!1044 = !DILocalVariable(name: "argsize", arg: 4, scope: !1035, file: !135, line: 249, type: !9)
!1045 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1035, file: !135, line: 250, type: !96)
!1046 = !DILocalVariable(name: "flags", arg: 6, scope: !1035, file: !135, line: 250, type: !47)
!1047 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1035, file: !135, line: 251, type: !1038)
!1048 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1035, file: !135, line: 252, type: !17)
!1049 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1035, file: !135, line: 253, type: !17)
!1050 = !DILocalVariable(name: "i", scope: !1035, file: !135, line: 255, type: !9)
!1051 = !DILocalVariable(name: "len", scope: !1035, file: !135, line: 256, type: !9)
!1052 = !DILocalVariable(name: "orig_buffersize", scope: !1035, file: !135, line: 257, type: !9)
!1053 = !DILocalVariable(name: "quote_string", scope: !1035, file: !135, line: 258, type: !17)
!1054 = !DILocalVariable(name: "quote_string_len", scope: !1035, file: !135, line: 259, type: !9)
!1055 = !DILocalVariable(name: "backslash_escapes", scope: !1035, file: !135, line: 260, type: !76)
!1056 = !DILocalVariable(name: "unibyte_locale", scope: !1035, file: !135, line: 261, type: !76)
!1057 = !DILocalVariable(name: "elide_outer_quotes", scope: !1035, file: !135, line: 262, type: !76)
!1058 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1035, file: !135, line: 263, type: !76)
!1059 = !DILocalVariable(name: "encountered_single_quote", scope: !1035, file: !135, line: 264, type: !76)
!1060 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1035, file: !135, line: 265, type: !76)
!1061 = !DILocalVariable(name: "c", scope: !1062, file: !135, line: 394, type: !16)
!1062 = distinct !DILexicalBlock(scope: !1063, file: !135, line: 393, column: 5)
!1063 = distinct !DILexicalBlock(scope: !1064, file: !135, line: 392, column: 3)
!1064 = distinct !DILexicalBlock(scope: !1035, file: !135, line: 392, column: 3)
!1065 = !DILocalVariable(name: "esc", scope: !1062, file: !135, line: 395, type: !16)
!1066 = !DILocalVariable(name: "is_right_quote", scope: !1062, file: !135, line: 396, type: !76)
!1067 = !DILocalVariable(name: "escaping", scope: !1062, file: !135, line: 397, type: !76)
!1068 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1062, file: !135, line: 398, type: !76)
!1069 = !DILocalVariable(name: "m", scope: !1070, file: !135, line: 602, type: !9)
!1070 = distinct !DILexicalBlock(scope: !1071, file: !135, line: 600, column: 11)
!1071 = distinct !DILexicalBlock(scope: !1062, file: !135, line: 418, column: 9)
!1072 = !DILocalVariable(name: "printable", scope: !1070, file: !135, line: 604, type: !76)
!1073 = !DILocalVariable(name: "mbstate", scope: !1074, file: !135, line: 613, type: !1076)
!1074 = distinct !DILexicalBlock(scope: !1075, file: !135, line: 612, column: 15)
!1075 = distinct !DILexicalBlock(scope: !1070, file: !135, line: 606, column: 17)
!1076 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1077, line: 107, baseType: !1078)
!1077 = !DIFile(filename: "/usr/include/wchar.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1078 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1077, line: 95, baseType: !1079)
!1079 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1077, line: 83, size: 64, elements: !1080)
!1080 = !{!1081, !1082}
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1079, file: !1077, line: 85, baseType: !47, size: 32)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1079, file: !1077, line: 94, baseType: !1083, size: 32, offset: 32)
!1083 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1079, file: !1077, line: 86, size: 32, elements: !1084)
!1084 = !{!1085, !1086}
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1083, file: !1077, line: 89, baseType: !148, size: 32)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1083, file: !1077, line: 93, baseType: !1087, size: 32)
!1087 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 32, elements: !1088)
!1088 = !{!1089}
!1089 = !DISubrange(count: 4)
!1090 = !DILocalVariable(name: "w", scope: !1091, file: !135, line: 623, type: !1092)
!1091 = distinct !DILexicalBlock(scope: !1074, file: !135, line: 622, column: 19)
!1092 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !10, line: 90, baseType: !47)
!1093 = !DILocalVariable(name: "bytes", scope: !1091, file: !135, line: 624, type: !9)
!1094 = !DILocalVariable(name: "j", scope: !1095, file: !135, line: 649, type: !9)
!1095 = distinct !DILexicalBlock(scope: !1096, file: !135, line: 648, column: 27)
!1096 = distinct !DILexicalBlock(scope: !1097, file: !135, line: 646, column: 29)
!1097 = distinct !DILexicalBlock(scope: !1098, file: !135, line: 641, column: 23)
!1098 = distinct !DILexicalBlock(scope: !1099, file: !135, line: 633, column: 30)
!1099 = distinct !DILexicalBlock(scope: !1100, file: !135, line: 628, column: 30)
!1100 = distinct !DILexicalBlock(scope: !1091, file: !135, line: 626, column: 25)
!1101 = !DILocalVariable(name: "ilim", scope: !1102, file: !135, line: 676, type: !9)
!1102 = distinct !DILexicalBlock(scope: !1103, file: !135, line: 673, column: 15)
!1103 = distinct !DILexicalBlock(scope: !1070, file: !135, line: 672, column: 17)
!1104 = !DILocation(line: 248, column: 33, scope: !1035)
!1105 = !DILocation(line: 248, column: 48, scope: !1035)
!1106 = !DILocation(line: 249, column: 39, scope: !1035)
!1107 = !DILocation(line: 249, column: 51, scope: !1035)
!1108 = !DILocation(line: 250, column: 46, scope: !1035)
!1109 = !DILocation(line: 250, column: 65, scope: !1035)
!1110 = !DILocation(line: 251, column: 47, scope: !1035)
!1111 = !DILocation(line: 252, column: 39, scope: !1035)
!1112 = !DILocation(line: 253, column: 39, scope: !1035)
!1113 = !DILocation(line: 256, column: 10, scope: !1035)
!1114 = !DILocation(line: 257, column: 10, scope: !1035)
!1115 = !DILocation(line: 258, column: 15, scope: !1035)
!1116 = !DILocation(line: 259, column: 10, scope: !1035)
!1117 = !DILocation(line: 260, column: 8, scope: !1035)
!1118 = !DILocation(line: 261, column: 25, scope: !1035)
!1119 = !DILocation(line: 261, column: 36, scope: !1035)
!1120 = !DILocation(line: 262, column: 8, scope: !1035)
!1121 = !DILocation(line: 263, column: 8, scope: !1035)
!1122 = !DILocation(line: 264, column: 8, scope: !1035)
!1123 = !DILocation(line: 265, column: 8, scope: !1035)
!1124 = !DILocation(line: 265, column: 3, scope: !1035)
!1125 = !DILocation(line: 308, column: 3, scope: !1035)
!1126 = !DILocation(line: 315, column: 11, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !1035, file: !135, line: 309, column: 5)
!1128 = !DILocation(line: 315, column: 12, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1127, file: !135, line: 315, column: 11)
!1130 = !DILocation(line: 316, column: 9, scope: !1131)
!1131 = !DILexicalBlockFile(scope: !1132, file: !135, discriminator: 1)
!1132 = distinct !DILexicalBlock(scope: !1133, file: !135, line: 316, column: 9)
!1133 = distinct !DILexicalBlock(scope: !1129, file: !135, line: 316, column: 9)
!1134 = !DILocation(line: 316, column: 9, scope: !1135)
!1135 = !DILexicalBlockFile(scope: !1133, file: !135, discriminator: 1)
!1136 = !DILocation(line: 316, column: 9, scope: !1137)
!1137 = !DILexicalBlockFile(scope: !1132, file: !135, discriminator: 2)
!1138 = !{!593, !593, i64 0}
!1139 = !DILocation(line: 354, column: 26, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !1141, file: !135, line: 332, column: 11)
!1141 = distinct !DILexicalBlock(scope: !1142, file: !135, line: 331, column: 13)
!1142 = distinct !DILexicalBlock(scope: !1127, file: !135, line: 330, column: 7)
!1143 = !DILocation(line: 355, column: 27, scope: !1140)
!1144 = !DILocation(line: 356, column: 11, scope: !1140)
!1145 = !DILocation(line: 357, column: 14, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !1142, file: !135, line: 357, column: 13)
!1147 = !DILocation(line: 357, column: 13, scope: !1142)
!1148 = !DILocation(line: 358, column: 43, scope: !1149)
!1149 = !DILexicalBlockFile(scope: !1150, file: !135, discriminator: 1)
!1150 = distinct !DILexicalBlock(scope: !1151, file: !135, line: 358, column: 11)
!1151 = distinct !DILexicalBlock(scope: !1146, file: !135, line: 358, column: 11)
!1152 = !DILocation(line: 358, column: 11, scope: !1153)
!1153 = !DILexicalBlockFile(scope: !1151, file: !135, discriminator: 1)
!1154 = !DILocation(line: 359, column: 13, scope: !1155)
!1155 = !DILexicalBlockFile(scope: !1156, file: !135, discriminator: 1)
!1156 = distinct !DILexicalBlock(scope: !1157, file: !135, line: 359, column: 13)
!1157 = distinct !DILexicalBlock(scope: !1150, file: !135, line: 359, column: 13)
!1158 = !DILocation(line: 359, column: 13, scope: !1159)
!1159 = !DILexicalBlockFile(scope: !1157, file: !135, discriminator: 1)
!1160 = !DILocation(line: 359, column: 13, scope: !1161)
!1161 = !DILexicalBlockFile(scope: !1156, file: !135, discriminator: 2)
!1162 = !DILocation(line: 359, column: 13, scope: !1163)
!1163 = !DILexicalBlockFile(scope: !1157, file: !135, discriminator: 3)
!1164 = !DILocation(line: 358, column: 70, scope: !1165)
!1165 = !DILexicalBlockFile(scope: !1150, file: !135, discriminator: 2)
!1166 = distinct !{!1166, !1167, !1168}
!1167 = !DILocation(line: 358, column: 11, scope: !1151)
!1168 = !DILocation(line: 359, column: 13, scope: !1151)
!1169 = !DILocation(line: 362, column: 28, scope: !1142)
!1170 = !DILocation(line: 364, column: 7, scope: !1127)
!1171 = !DILocation(line: 367, column: 7, scope: !1127)
!1172 = !DILocation(line: 370, column: 7, scope: !1127)
!1173 = !DILocation(line: 373, column: 12, scope: !1174)
!1174 = distinct !DILexicalBlock(scope: !1127, file: !135, line: 373, column: 11)
!1175 = !DILocation(line: 373, column: 11, scope: !1127)
!1176 = !DILocation(line: 378, column: 12, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !1127, file: !135, line: 378, column: 11)
!1178 = !DILocation(line: 378, column: 11, scope: !1127)
!1179 = !DILocation(line: 379, column: 9, scope: !1180)
!1180 = !DILexicalBlockFile(scope: !1181, file: !135, discriminator: 1)
!1181 = distinct !DILexicalBlock(scope: !1182, file: !135, line: 379, column: 9)
!1182 = distinct !DILexicalBlock(scope: !1177, file: !135, line: 379, column: 9)
!1183 = !DILocation(line: 379, column: 9, scope: !1184)
!1184 = !DILexicalBlockFile(scope: !1182, file: !135, discriminator: 1)
!1185 = !DILocation(line: 379, column: 9, scope: !1186)
!1186 = !DILexicalBlockFile(scope: !1181, file: !135, discriminator: 2)
!1187 = !DILocation(line: 386, column: 7, scope: !1127)
!1188 = !DILocation(line: 389, column: 7, scope: !1127)
!1189 = !DILocation(line: 255, column: 10, scope: !1035)
!1190 = !DILocation(line: 392, column: 8, scope: !1064)
!1191 = !DILocation(line: 392, column: 27, scope: !1192)
!1192 = !DILexicalBlockFile(scope: !1063, file: !135, discriminator: 1)
!1193 = !DILocation(line: 392, column: 19, scope: !1192)
!1194 = !DILocation(line: 392, column: 60, scope: !1195)
!1195 = !DILexicalBlockFile(scope: !1063, file: !135, discriminator: 3)
!1196 = !DILocation(line: 392, column: 3, scope: !1197)
!1197 = !DILexicalBlockFile(scope: !1064, file: !135, discriminator: 4)
!1198 = !DILocation(line: 392, column: 41, scope: !1199)
!1199 = !DILexicalBlockFile(scope: !1063, file: !135, discriminator: 2)
!1200 = !DILocation(line: 392, column: 48, scope: !1199)
!1201 = !DILocation(line: 396, column: 12, scope: !1062)
!1202 = !DILocation(line: 397, column: 12, scope: !1062)
!1203 = !DILocation(line: 398, column: 12, scope: !1062)
!1204 = !DILocation(line: 401, column: 11, scope: !1205)
!1205 = distinct !DILexicalBlock(scope: !1062, file: !135, line: 400, column: 11)
!1206 = !DILocation(line: 403, column: 17, scope: !1207)
!1207 = !DILexicalBlockFile(scope: !1205, file: !135, discriminator: 1)
!1208 = !DILocation(line: 404, column: 39, scope: !1205)
!1209 = !DILocation(line: 408, column: 32, scope: !1205)
!1210 = !DILocation(line: 404, column: 19, scope: !1211)
!1211 = !DILexicalBlockFile(scope: !1205, file: !135, discriminator: 2)
!1212 = !DILocation(line: 404, column: 15, scope: !1213)
!1213 = !DILexicalBlockFile(scope: !1205, file: !135, discriminator: 4)
!1214 = !DILocation(line: 409, column: 11, scope: !1205)
!1215 = !DILocation(line: 409, column: 26, scope: !1207)
!1216 = !DILocation(line: 409, column: 14, scope: !1207)
!1217 = !DILocation(line: 400, column: 11, scope: !1218)
!1218 = !DILexicalBlockFile(scope: !1062, file: !135, discriminator: 1)
!1219 = !DILocation(line: 416, column: 11, scope: !1062)
!1220 = !DILocation(line: 394, column: 21, scope: !1062)
!1221 = !DILocation(line: 417, column: 7, scope: !1062)
!1222 = !DILocation(line: 420, column: 15, scope: !1071)
!1223 = !DILocation(line: 422, column: 15, scope: !1224)
!1224 = !DILexicalBlockFile(scope: !1225, file: !135, discriminator: 1)
!1225 = distinct !DILexicalBlock(scope: !1226, file: !135, line: 422, column: 15)
!1226 = distinct !DILexicalBlock(scope: !1227, file: !135, line: 421, column: 13)
!1227 = distinct !DILexicalBlock(scope: !1071, file: !135, line: 420, column: 15)
!1228 = !DILocation(line: 422, column: 15, scope: !1229)
!1229 = !DILexicalBlockFile(scope: !1230, file: !135, discriminator: 4)
!1230 = distinct !DILexicalBlock(scope: !1225, file: !135, line: 422, column: 15)
!1231 = !DILocation(line: 422, column: 15, scope: !1232)
!1232 = !DILexicalBlockFile(scope: !1230, file: !135, discriminator: 3)
!1233 = !DILocation(line: 422, column: 15, scope: !1234)
!1234 = !DILexicalBlockFile(scope: !1235, file: !135, discriminator: 6)
!1235 = distinct !DILexicalBlock(scope: !1236, file: !135, line: 422, column: 15)
!1236 = distinct !DILexicalBlock(scope: !1237, file: !135, line: 422, column: 15)
!1237 = distinct !DILexicalBlock(scope: !1230, file: !135, line: 422, column: 15)
!1238 = !DILocation(line: 422, column: 15, scope: !1239)
!1239 = !DILexicalBlockFile(scope: !1236, file: !135, discriminator: 6)
!1240 = !DILocation(line: 422, column: 15, scope: !1241)
!1241 = !DILexicalBlockFile(scope: !1235, file: !135, discriminator: 7)
!1242 = !DILocation(line: 422, column: 15, scope: !1243)
!1243 = !DILexicalBlockFile(scope: !1236, file: !135, discriminator: 8)
!1244 = !DILocation(line: 422, column: 15, scope: !1245)
!1245 = !DILexicalBlockFile(scope: !1246, file: !135, discriminator: 11)
!1246 = distinct !DILexicalBlock(scope: !1247, file: !135, line: 422, column: 15)
!1247 = distinct !DILexicalBlock(scope: !1237, file: !135, line: 422, column: 15)
!1248 = !DILocation(line: 422, column: 15, scope: !1249)
!1249 = !DILexicalBlockFile(scope: !1247, file: !135, discriminator: 11)
!1250 = !DILocation(line: 422, column: 15, scope: !1251)
!1251 = !DILexicalBlockFile(scope: !1246, file: !135, discriminator: 12)
!1252 = !DILocation(line: 422, column: 15, scope: !1253)
!1253 = !DILexicalBlockFile(scope: !1247, file: !135, discriminator: 13)
!1254 = !DILocation(line: 422, column: 15, scope: !1255)
!1255 = !DILexicalBlockFile(scope: !1256, file: !135, discriminator: 16)
!1256 = distinct !DILexicalBlock(scope: !1257, file: !135, line: 422, column: 15)
!1257 = distinct !DILexicalBlock(scope: !1237, file: !135, line: 422, column: 15)
!1258 = !DILocation(line: 422, column: 15, scope: !1259)
!1259 = !DILexicalBlockFile(scope: !1257, file: !135, discriminator: 16)
!1260 = !DILocation(line: 422, column: 15, scope: !1261)
!1261 = !DILexicalBlockFile(scope: !1256, file: !135, discriminator: 17)
!1262 = !DILocation(line: 422, column: 15, scope: !1263)
!1263 = !DILexicalBlockFile(scope: !1257, file: !135, discriminator: 18)
!1264 = !DILocation(line: 422, column: 15, scope: !1265)
!1265 = !DILexicalBlockFile(scope: !1237, file: !135, discriminator: 20)
!1266 = !DILocation(line: 422, column: 15, scope: !1267)
!1267 = !DILexicalBlockFile(scope: !1268, file: !135, discriminator: 22)
!1268 = distinct !DILexicalBlock(scope: !1269, file: !135, line: 422, column: 15)
!1269 = distinct !DILexicalBlock(scope: !1225, file: !135, line: 422, column: 15)
!1270 = !DILocation(line: 422, column: 15, scope: !1271)
!1271 = !DILexicalBlockFile(scope: !1269, file: !135, discriminator: 22)
!1272 = !DILocation(line: 422, column: 15, scope: !1273)
!1273 = !DILexicalBlockFile(scope: !1268, file: !135, discriminator: 23)
!1274 = !DILocation(line: 422, column: 15, scope: !1275)
!1275 = !DILexicalBlockFile(scope: !1269, file: !135, discriminator: 24)
!1276 = !DILocation(line: 430, column: 19, scope: !1277)
!1277 = distinct !DILexicalBlock(scope: !1226, file: !135, line: 429, column: 19)
!1278 = !DILocation(line: 430, column: 24, scope: !1279)
!1279 = !DILexicalBlockFile(scope: !1277, file: !135, discriminator: 1)
!1280 = !DILocation(line: 430, column: 28, scope: !1279)
!1281 = !DILocation(line: 430, column: 38, scope: !1279)
!1282 = !DILocation(line: 430, column: 48, scope: !1283)
!1283 = !DILexicalBlockFile(scope: !1277, file: !135, discriminator: 2)
!1284 = !DILocation(line: 430, column: 59, scope: !1283)
!1285 = !DILocation(line: 432, column: 19, scope: !1286)
!1286 = !DILexicalBlockFile(scope: !1287, file: !135, discriminator: 1)
!1287 = distinct !DILexicalBlock(scope: !1288, file: !135, line: 432, column: 19)
!1288 = distinct !DILexicalBlock(scope: !1289, file: !135, line: 432, column: 19)
!1289 = distinct !DILexicalBlock(scope: !1277, file: !135, line: 431, column: 17)
!1290 = !DILocation(line: 432, column: 19, scope: !1291)
!1291 = !DILexicalBlockFile(scope: !1288, file: !135, discriminator: 1)
!1292 = !DILocation(line: 432, column: 19, scope: !1293)
!1293 = !DILexicalBlockFile(scope: !1287, file: !135, discriminator: 2)
!1294 = !DILocation(line: 432, column: 19, scope: !1295)
!1295 = !DILexicalBlockFile(scope: !1288, file: !135, discriminator: 3)
!1296 = !DILocation(line: 433, column: 19, scope: !1297)
!1297 = !DILexicalBlockFile(scope: !1298, file: !135, discriminator: 1)
!1298 = distinct !DILexicalBlock(scope: !1299, file: !135, line: 433, column: 19)
!1299 = distinct !DILexicalBlock(scope: !1289, file: !135, line: 433, column: 19)
!1300 = !DILocation(line: 433, column: 19, scope: !1301)
!1301 = !DILexicalBlockFile(scope: !1299, file: !135, discriminator: 1)
!1302 = !DILocation(line: 433, column: 19, scope: !1303)
!1303 = !DILexicalBlockFile(scope: !1298, file: !135, discriminator: 2)
!1304 = !DILocation(line: 433, column: 19, scope: !1305)
!1305 = !DILexicalBlockFile(scope: !1299, file: !135, discriminator: 3)
!1306 = !DILocation(line: 434, column: 17, scope: !1289)
!1307 = !DILocation(line: 441, column: 20, scope: !1227)
!1308 = !DILocation(line: 446, column: 11, scope: !1071)
!1309 = !DILocation(line: 449, column: 19, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !1071, file: !135, line: 447, column: 13)
!1311 = !DILocation(line: 455, column: 19, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !1310, file: !135, line: 454, column: 19)
!1313 = !DILocation(line: 455, column: 24, scope: !1314)
!1314 = !DILexicalBlockFile(scope: !1312, file: !135, discriminator: 1)
!1315 = !DILocation(line: 455, column: 28, scope: !1314)
!1316 = !DILocation(line: 455, column: 38, scope: !1314)
!1317 = !DILocation(line: 455, column: 47, scope: !1318)
!1318 = !DILexicalBlockFile(scope: !1312, file: !135, discriminator: 2)
!1319 = !DILocation(line: 455, column: 41, scope: !1318)
!1320 = !DILocation(line: 455, column: 52, scope: !1318)
!1321 = !DILocation(line: 454, column: 19, scope: !1322)
!1322 = !DILexicalBlockFile(scope: !1310, file: !135, discriminator: 1)
!1323 = !DILocation(line: 456, column: 25, scope: !1312)
!1324 = !DILocation(line: 456, column: 17, scope: !1312)
!1325 = !DILocation(line: 463, column: 25, scope: !1326)
!1326 = distinct !DILexicalBlock(scope: !1312, file: !135, line: 457, column: 19)
!1327 = !DILocation(line: 467, column: 21, scope: !1328)
!1328 = !DILexicalBlockFile(scope: !1329, file: !135, discriminator: 1)
!1329 = distinct !DILexicalBlock(scope: !1330, file: !135, line: 467, column: 21)
!1330 = distinct !DILexicalBlock(scope: !1326, file: !135, line: 467, column: 21)
!1331 = !DILocation(line: 467, column: 21, scope: !1332)
!1332 = !DILexicalBlockFile(scope: !1330, file: !135, discriminator: 1)
!1333 = !DILocation(line: 467, column: 21, scope: !1334)
!1334 = !DILexicalBlockFile(scope: !1329, file: !135, discriminator: 2)
!1335 = !DILocation(line: 467, column: 21, scope: !1336)
!1336 = !DILexicalBlockFile(scope: !1330, file: !135, discriminator: 3)
!1337 = !DILocation(line: 468, column: 21, scope: !1338)
!1338 = !DILexicalBlockFile(scope: !1339, file: !135, discriminator: 1)
!1339 = distinct !DILexicalBlock(scope: !1340, file: !135, line: 468, column: 21)
!1340 = distinct !DILexicalBlock(scope: !1326, file: !135, line: 468, column: 21)
!1341 = !DILocation(line: 468, column: 21, scope: !1342)
!1342 = !DILexicalBlockFile(scope: !1340, file: !135, discriminator: 1)
!1343 = !DILocation(line: 468, column: 21, scope: !1344)
!1344 = !DILexicalBlockFile(scope: !1339, file: !135, discriminator: 2)
!1345 = !DILocation(line: 468, column: 21, scope: !1346)
!1346 = !DILexicalBlockFile(scope: !1340, file: !135, discriminator: 3)
!1347 = !DILocation(line: 469, column: 21, scope: !1348)
!1348 = !DILexicalBlockFile(scope: !1349, file: !135, discriminator: 1)
!1349 = distinct !DILexicalBlock(scope: !1350, file: !135, line: 469, column: 21)
!1350 = distinct !DILexicalBlock(scope: !1326, file: !135, line: 469, column: 21)
!1351 = !DILocation(line: 469, column: 21, scope: !1352)
!1352 = !DILexicalBlockFile(scope: !1350, file: !135, discriminator: 1)
!1353 = !DILocation(line: 469, column: 21, scope: !1354)
!1354 = !DILexicalBlockFile(scope: !1349, file: !135, discriminator: 2)
!1355 = !DILocation(line: 469, column: 21, scope: !1356)
!1356 = !DILexicalBlockFile(scope: !1350, file: !135, discriminator: 3)
!1357 = !DILocation(line: 470, column: 21, scope: !1358)
!1358 = !DILexicalBlockFile(scope: !1359, file: !135, discriminator: 1)
!1359 = distinct !DILexicalBlock(scope: !1360, file: !135, line: 470, column: 21)
!1360 = distinct !DILexicalBlock(scope: !1326, file: !135, line: 470, column: 21)
!1361 = !DILocation(line: 470, column: 21, scope: !1362)
!1362 = !DILexicalBlockFile(scope: !1360, file: !135, discriminator: 1)
!1363 = !DILocation(line: 470, column: 21, scope: !1364)
!1364 = !DILexicalBlockFile(scope: !1359, file: !135, discriminator: 2)
!1365 = !DILocation(line: 470, column: 21, scope: !1366)
!1366 = !DILexicalBlockFile(scope: !1360, file: !135, discriminator: 3)
!1367 = !DILocation(line: 471, column: 21, scope: !1326)
!1368 = !DILocation(line: 395, column: 21, scope: !1062)
!1369 = !DILocation(line: 484, column: 31, scope: !1071)
!1370 = !DILocation(line: 485, column: 31, scope: !1071)
!1371 = !DILocation(line: 487, column: 31, scope: !1071)
!1372 = !DILocation(line: 488, column: 31, scope: !1071)
!1373 = !DILocation(line: 489, column: 31, scope: !1071)
!1374 = !DILocation(line: 492, column: 15, scope: !1071)
!1375 = !DILocation(line: 494, column: 19, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !1377, file: !135, line: 493, column: 13)
!1377 = distinct !DILexicalBlock(scope: !1071, file: !135, line: 492, column: 15)
!1378 = !DILocation(line: 501, column: 33, scope: !1379)
!1379 = distinct !DILexicalBlock(scope: !1071, file: !135, line: 501, column: 15)
!1380 = !DILocation(line: 506, column: 15, scope: !1381)
!1381 = distinct !DILexicalBlock(scope: !1071, file: !135, line: 505, column: 15)
!1382 = !DILocation(line: 510, column: 15, scope: !1071)
!1383 = !DILocation(line: 518, column: 26, scope: !1384)
!1384 = distinct !DILexicalBlock(scope: !1071, file: !135, line: 518, column: 15)
!1385 = !DILocation(line: 518, column: 15, scope: !1071)
!1386 = !DILocation(line: 518, column: 40, scope: !1387)
!1387 = !DILexicalBlockFile(scope: !1384, file: !135, discriminator: 1)
!1388 = !DILocation(line: 518, column: 47, scope: !1387)
!1389 = !DILocation(line: 522, column: 17, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1071, file: !135, line: 522, column: 15)
!1391 = !DILocation(line: 518, column: 18, scope: !1387)
!1392 = !DILocation(line: 518, column: 65, scope: !1393)
!1393 = !DILexicalBlockFile(scope: !1384, file: !135, discriminator: 2)
!1394 = !DILocation(line: 518, column: 15, scope: !1395)
!1395 = !DILexicalBlockFile(scope: !1071, file: !135, discriminator: 2)
!1396 = !DILocation(line: 522, column: 15, scope: !1071)
!1397 = !DILocation(line: 526, column: 11, scope: !1071)
!1398 = !DILocation(line: 541, column: 15, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !1071, file: !135, line: 540, column: 15)
!1400 = !DILocation(line: 548, column: 15, scope: !1071)
!1401 = !DILocation(line: 550, column: 19, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !1403, file: !135, line: 549, column: 13)
!1403 = distinct !DILexicalBlock(scope: !1071, file: !135, line: 548, column: 15)
!1404 = !DILocation(line: 553, column: 19, scope: !1405)
!1405 = distinct !DILexicalBlock(scope: !1402, file: !135, line: 553, column: 19)
!1406 = !DILocation(line: 553, column: 35, scope: !1407)
!1407 = !DILexicalBlockFile(scope: !1405, file: !135, discriminator: 1)
!1408 = !DILocation(line: 553, column: 30, scope: !1405)
!1409 = !DILocation(line: 562, column: 15, scope: !1410)
!1410 = !DILexicalBlockFile(scope: !1411, file: !135, discriminator: 1)
!1411 = distinct !DILexicalBlock(scope: !1412, file: !135, line: 562, column: 15)
!1412 = distinct !DILexicalBlock(scope: !1402, file: !135, line: 562, column: 15)
!1413 = !DILocation(line: 562, column: 15, scope: !1414)
!1414 = !DILexicalBlockFile(scope: !1412, file: !135, discriminator: 1)
!1415 = !DILocation(line: 562, column: 15, scope: !1416)
!1416 = !DILexicalBlockFile(scope: !1411, file: !135, discriminator: 2)
!1417 = !DILocation(line: 562, column: 15, scope: !1418)
!1418 = !DILexicalBlockFile(scope: !1412, file: !135, discriminator: 3)
!1419 = !DILocation(line: 563, column: 15, scope: !1420)
!1420 = !DILexicalBlockFile(scope: !1421, file: !135, discriminator: 1)
!1421 = distinct !DILexicalBlock(scope: !1422, file: !135, line: 563, column: 15)
!1422 = distinct !DILexicalBlock(scope: !1402, file: !135, line: 563, column: 15)
!1423 = !DILocation(line: 563, column: 15, scope: !1424)
!1424 = !DILexicalBlockFile(scope: !1422, file: !135, discriminator: 1)
!1425 = !DILocation(line: 563, column: 15, scope: !1426)
!1426 = !DILexicalBlockFile(scope: !1421, file: !135, discriminator: 2)
!1427 = !DILocation(line: 563, column: 15, scope: !1428)
!1428 = !DILexicalBlockFile(scope: !1422, file: !135, discriminator: 3)
!1429 = !DILocation(line: 564, column: 15, scope: !1430)
!1430 = !DILexicalBlockFile(scope: !1431, file: !135, discriminator: 1)
!1431 = distinct !DILexicalBlock(scope: !1432, file: !135, line: 564, column: 15)
!1432 = distinct !DILexicalBlock(scope: !1402, file: !135, line: 564, column: 15)
!1433 = !DILocation(line: 564, column: 15, scope: !1434)
!1434 = !DILexicalBlockFile(scope: !1432, file: !135, discriminator: 1)
!1435 = !DILocation(line: 564, column: 15, scope: !1436)
!1436 = !DILexicalBlockFile(scope: !1431, file: !135, discriminator: 2)
!1437 = !DILocation(line: 564, column: 15, scope: !1438)
!1438 = !DILexicalBlockFile(scope: !1432, file: !135, discriminator: 3)
!1439 = !DILocation(line: 566, column: 13, scope: !1402)
!1440 = !DILocation(line: 606, column: 17, scope: !1070)
!1441 = !DILocation(line: 602, column: 20, scope: !1070)
!1442 = !DILocation(line: 609, column: 29, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !1075, file: !135, line: 607, column: 15)
!1444 = !{!1445, !1445, i64 0}
!1445 = !{!"short", !593, i64 0}
!1446 = !DILocation(line: 609, column: 27, scope: !1443)
!1447 = !DILocation(line: 604, column: 18, scope: !1070)
!1448 = !DILocation(line: 610, column: 15, scope: !1443)
!1449 = !DILocation(line: 613, column: 17, scope: !1074)
!1450 = !DILocation(line: 614, column: 17, scope: !1074)
!1451 = !DILocation(line: 618, column: 29, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1074, file: !135, line: 618, column: 21)
!1453 = !DILocation(line: 618, column: 21, scope: !1074)
!1454 = distinct !{!1454, !1455, !1456}
!1455 = !DILocation(line: 621, column: 17, scope: !1074)
!1456 = !DILocation(line: 667, column: 44, scope: !1074)
!1457 = !DILocation(line: 619, column: 29, scope: !1452)
!1458 = !DILocation(line: 619, column: 19, scope: !1452)
!1459 = !DILocation(line: 623, column: 21, scope: !1091)
!1460 = !DILocation(line: 624, column: 56, scope: !1091)
!1461 = !DILocation(line: 624, column: 50, scope: !1091)
!1462 = !DILocation(line: 625, column: 53, scope: !1091)
!1463 = !DILocation(line: 613, column: 27, scope: !1074)
!1464 = !DILocation(line: 623, column: 29, scope: !1091)
!1465 = !DILocation(line: 624, column: 36, scope: !1091)
!1466 = !DILocation(line: 624, column: 28, scope: !1091)
!1467 = !DILocation(line: 626, column: 25, scope: !1091)
!1468 = !DILocation(line: 636, column: 38, scope: !1469)
!1469 = !DILexicalBlockFile(scope: !1470, file: !135, discriminator: 1)
!1470 = distinct !DILexicalBlock(scope: !1098, file: !135, line: 634, column: 23)
!1471 = !DILocation(line: 636, column: 48, scope: !1469)
!1472 = !DILocation(line: 636, column: 51, scope: !1473)
!1473 = !DILexicalBlockFile(scope: !1470, file: !135, discriminator: 2)
!1474 = !DILocation(line: 636, column: 48, scope: !1473)
!1475 = !DILocation(line: 636, column: 25, scope: !1476)
!1476 = !DILexicalBlockFile(scope: !1470, file: !135, discriminator: 3)
!1477 = !DILocation(line: 637, column: 28, scope: !1470)
!1478 = !DILocation(line: 636, column: 34, scope: !1469)
!1479 = distinct !{!1479, !1480, !1477}
!1480 = !DILocation(line: 636, column: 25, scope: !1470)
!1481 = !DILocation(line: 650, column: 43, scope: !1482)
!1482 = !DILexicalBlockFile(scope: !1483, file: !135, discriminator: 1)
!1483 = distinct !DILexicalBlock(scope: !1484, file: !135, line: 650, column: 29)
!1484 = distinct !DILexicalBlock(scope: !1095, file: !135, line: 650, column: 29)
!1485 = !DILocation(line: 647, column: 29, scope: !1096)
!1486 = !DILocation(line: 649, column: 36, scope: !1095)
!1487 = !DILocation(line: 651, column: 49, scope: !1483)
!1488 = !DILocation(line: 651, column: 39, scope: !1483)
!1489 = !DILocation(line: 651, column: 31, scope: !1483)
!1490 = !DILocation(line: 650, column: 53, scope: !1491)
!1491 = !DILexicalBlockFile(scope: !1483, file: !135, discriminator: 2)
!1492 = !DILocation(line: 650, column: 29, scope: !1493)
!1493 = !DILexicalBlockFile(scope: !1484, file: !135, discriminator: 1)
!1494 = distinct !{!1494, !1495, !1496}
!1495 = !DILocation(line: 650, column: 29, scope: !1484)
!1496 = !DILocation(line: 659, column: 33, scope: !1484)
!1497 = !DILocation(line: 666, column: 19, scope: !1074)
!1498 = !DILocation(line: 662, column: 41, scope: !1499)
!1499 = distinct !DILexicalBlock(scope: !1097, file: !135, line: 662, column: 29)
!1500 = !DILocation(line: 662, column: 31, scope: !1499)
!1501 = !DILocation(line: 662, column: 29, scope: !1097)
!1502 = !DILocation(line: 664, column: 27, scope: !1097)
!1503 = !DILocation(line: 667, column: 26, scope: !1074)
!1504 = !DILocation(line: 667, column: 24, scope: !1074)
!1505 = !DILocation(line: 666, column: 19, scope: !1506)
!1506 = !DILexicalBlockFile(scope: !1091, file: !135, discriminator: 3)
!1507 = !DILocation(line: 668, column: 15, scope: !1075)
!1508 = !DILocation(line: 670, column: 40, scope: !1070)
!1509 = !DILocation(line: 672, column: 19, scope: !1103)
!1510 = !DILocation(line: 672, column: 45, scope: !1511)
!1511 = !DILexicalBlockFile(scope: !1103, file: !135, discriminator: 1)
!1512 = !DILocation(line: 672, column: 23, scope: !1103)
!1513 = !DILocation(line: 676, column: 33, scope: !1102)
!1514 = !DILocation(line: 676, column: 24, scope: !1102)
!1515 = !DILocation(line: 678, column: 17, scope: !1102)
!1516 = !DILocation(line: 680, column: 43, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !1518, file: !135, line: 680, column: 25)
!1518 = distinct !DILexicalBlock(scope: !1519, file: !135, line: 679, column: 19)
!1519 = distinct !DILexicalBlock(scope: !1520, file: !135, line: 678, column: 17)
!1520 = distinct !DILexicalBlock(scope: !1102, file: !135, line: 678, column: 17)
!1521 = !DILocation(line: 682, column: 25, scope: !1522)
!1522 = !DILexicalBlockFile(scope: !1523, file: !135, discriminator: 1)
!1523 = distinct !DILexicalBlock(scope: !1524, file: !135, line: 682, column: 25)
!1524 = distinct !DILexicalBlock(scope: !1517, file: !135, line: 681, column: 23)
!1525 = !DILocation(line: 682, column: 25, scope: !1526)
!1526 = !DILexicalBlockFile(scope: !1527, file: !135, discriminator: 4)
!1527 = distinct !DILexicalBlock(scope: !1523, file: !135, line: 682, column: 25)
!1528 = !DILocation(line: 682, column: 25, scope: !1529)
!1529 = !DILexicalBlockFile(scope: !1527, file: !135, discriminator: 3)
!1530 = !DILocation(line: 682, column: 25, scope: !1531)
!1531 = !DILexicalBlockFile(scope: !1532, file: !135, discriminator: 6)
!1532 = distinct !DILexicalBlock(scope: !1533, file: !135, line: 682, column: 25)
!1533 = distinct !DILexicalBlock(scope: !1534, file: !135, line: 682, column: 25)
!1534 = distinct !DILexicalBlock(scope: !1527, file: !135, line: 682, column: 25)
!1535 = !DILocation(line: 682, column: 25, scope: !1536)
!1536 = !DILexicalBlockFile(scope: !1533, file: !135, discriminator: 6)
!1537 = !DILocation(line: 682, column: 25, scope: !1538)
!1538 = !DILexicalBlockFile(scope: !1532, file: !135, discriminator: 7)
!1539 = !DILocation(line: 682, column: 25, scope: !1540)
!1540 = !DILexicalBlockFile(scope: !1533, file: !135, discriminator: 8)
!1541 = !DILocation(line: 682, column: 25, scope: !1542)
!1542 = !DILexicalBlockFile(scope: !1543, file: !135, discriminator: 11)
!1543 = distinct !DILexicalBlock(scope: !1544, file: !135, line: 682, column: 25)
!1544 = distinct !DILexicalBlock(scope: !1534, file: !135, line: 682, column: 25)
!1545 = !DILocation(line: 682, column: 25, scope: !1546)
!1546 = !DILexicalBlockFile(scope: !1544, file: !135, discriminator: 11)
!1547 = !DILocation(line: 682, column: 25, scope: !1548)
!1548 = !DILexicalBlockFile(scope: !1543, file: !135, discriminator: 12)
!1549 = !DILocation(line: 682, column: 25, scope: !1550)
!1550 = !DILexicalBlockFile(scope: !1544, file: !135, discriminator: 13)
!1551 = !DILocation(line: 682, column: 25, scope: !1552)
!1552 = !DILexicalBlockFile(scope: !1553, file: !135, discriminator: 16)
!1553 = distinct !DILexicalBlock(scope: !1554, file: !135, line: 682, column: 25)
!1554 = distinct !DILexicalBlock(scope: !1534, file: !135, line: 682, column: 25)
!1555 = !DILocation(line: 682, column: 25, scope: !1556)
!1556 = !DILexicalBlockFile(scope: !1554, file: !135, discriminator: 16)
!1557 = !DILocation(line: 682, column: 25, scope: !1558)
!1558 = !DILexicalBlockFile(scope: !1553, file: !135, discriminator: 17)
!1559 = !DILocation(line: 682, column: 25, scope: !1560)
!1560 = !DILexicalBlockFile(scope: !1554, file: !135, discriminator: 18)
!1561 = !DILocation(line: 682, column: 25, scope: !1562)
!1562 = !DILexicalBlockFile(scope: !1534, file: !135, discriminator: 20)
!1563 = !DILocation(line: 682, column: 25, scope: !1564)
!1564 = !DILexicalBlockFile(scope: !1565, file: !135, discriminator: 22)
!1565 = distinct !DILexicalBlock(scope: !1566, file: !135, line: 682, column: 25)
!1566 = distinct !DILexicalBlock(scope: !1523, file: !135, line: 682, column: 25)
!1567 = !DILocation(line: 682, column: 25, scope: !1568)
!1568 = !DILexicalBlockFile(scope: !1566, file: !135, discriminator: 22)
!1569 = !DILocation(line: 682, column: 25, scope: !1570)
!1570 = !DILexicalBlockFile(scope: !1565, file: !135, discriminator: 23)
!1571 = !DILocation(line: 682, column: 25, scope: !1572)
!1572 = !DILexicalBlockFile(scope: !1566, file: !135, discriminator: 24)
!1573 = !DILocation(line: 683, column: 25, scope: !1574)
!1574 = !DILexicalBlockFile(scope: !1575, file: !135, discriminator: 1)
!1575 = distinct !DILexicalBlock(scope: !1576, file: !135, line: 683, column: 25)
!1576 = distinct !DILexicalBlock(scope: !1524, file: !135, line: 683, column: 25)
!1577 = !DILocation(line: 683, column: 25, scope: !1578)
!1578 = !DILexicalBlockFile(scope: !1576, file: !135, discriminator: 1)
!1579 = !DILocation(line: 683, column: 25, scope: !1580)
!1580 = !DILexicalBlockFile(scope: !1575, file: !135, discriminator: 2)
!1581 = !DILocation(line: 683, column: 25, scope: !1582)
!1582 = !DILexicalBlockFile(scope: !1576, file: !135, discriminator: 3)
!1583 = !DILocation(line: 684, column: 25, scope: !1584)
!1584 = !DILexicalBlockFile(scope: !1585, file: !135, discriminator: 1)
!1585 = distinct !DILexicalBlock(scope: !1586, file: !135, line: 684, column: 25)
!1586 = distinct !DILexicalBlock(scope: !1524, file: !135, line: 684, column: 25)
!1587 = !DILocation(line: 684, column: 25, scope: !1588)
!1588 = !DILexicalBlockFile(scope: !1586, file: !135, discriminator: 1)
!1589 = !DILocation(line: 684, column: 25, scope: !1590)
!1590 = !DILexicalBlockFile(scope: !1585, file: !135, discriminator: 2)
!1591 = !DILocation(line: 684, column: 25, scope: !1592)
!1592 = !DILexicalBlockFile(scope: !1586, file: !135, discriminator: 3)
!1593 = !DILocation(line: 685, column: 38, scope: !1524)
!1594 = !DILocation(line: 685, column: 33, scope: !1524)
!1595 = !DILocation(line: 686, column: 23, scope: !1524)
!1596 = !DILocation(line: 687, column: 30, scope: !1597)
!1597 = distinct !DILexicalBlock(scope: !1517, file: !135, line: 687, column: 30)
!1598 = !DILocation(line: 687, column: 30, scope: !1517)
!1599 = !DILocation(line: 689, column: 25, scope: !1600)
!1600 = !DILexicalBlockFile(scope: !1601, file: !135, discriminator: 1)
!1601 = distinct !DILexicalBlock(scope: !1602, file: !135, line: 689, column: 25)
!1602 = distinct !DILexicalBlock(scope: !1603, file: !135, line: 689, column: 25)
!1603 = distinct !DILexicalBlock(scope: !1597, file: !135, line: 688, column: 23)
!1604 = !DILocation(line: 689, column: 25, scope: !1605)
!1605 = !DILexicalBlockFile(scope: !1602, file: !135, discriminator: 1)
!1606 = !DILocation(line: 689, column: 25, scope: !1607)
!1607 = !DILexicalBlockFile(scope: !1601, file: !135, discriminator: 2)
!1608 = !DILocation(line: 689, column: 25, scope: !1609)
!1609 = !DILexicalBlockFile(scope: !1602, file: !135, discriminator: 3)
!1610 = !DILocation(line: 691, column: 23, scope: !1603)
!1611 = !DILocation(line: 692, column: 35, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1518, file: !135, line: 692, column: 25)
!1613 = !DILocation(line: 692, column: 30, scope: !1612)
!1614 = !DILocation(line: 692, column: 25, scope: !1518)
!1615 = !DILocation(line: 694, column: 21, scope: !1616)
!1616 = !DILexicalBlockFile(scope: !1617, file: !135, discriminator: 1)
!1617 = distinct !DILexicalBlock(scope: !1618, file: !135, line: 694, column: 21)
!1618 = distinct !DILexicalBlock(scope: !1518, file: !135, line: 694, column: 21)
!1619 = !DILocation(line: 694, column: 21, scope: !1620)
!1620 = !DILexicalBlockFile(scope: !1617, file: !135, discriminator: 2)
!1621 = !DILocation(line: 694, column: 21, scope: !1622)
!1622 = !DILexicalBlockFile(scope: !1623, file: !135, discriminator: 4)
!1623 = distinct !DILexicalBlock(scope: !1624, file: !135, line: 694, column: 21)
!1624 = distinct !DILexicalBlock(scope: !1625, file: !135, line: 694, column: 21)
!1625 = distinct !DILexicalBlock(scope: !1617, file: !135, line: 694, column: 21)
!1626 = !DILocation(line: 694, column: 21, scope: !1627)
!1627 = !DILexicalBlockFile(scope: !1624, file: !135, discriminator: 4)
!1628 = !DILocation(line: 694, column: 21, scope: !1629)
!1629 = !DILexicalBlockFile(scope: !1623, file: !135, discriminator: 5)
!1630 = !DILocation(line: 694, column: 21, scope: !1631)
!1631 = !DILexicalBlockFile(scope: !1624, file: !135, discriminator: 6)
!1632 = !DILocation(line: 694, column: 21, scope: !1633)
!1633 = !DILexicalBlockFile(scope: !1634, file: !135, discriminator: 9)
!1634 = distinct !DILexicalBlock(scope: !1635, file: !135, line: 694, column: 21)
!1635 = distinct !DILexicalBlock(scope: !1625, file: !135, line: 694, column: 21)
!1636 = !DILocation(line: 694, column: 21, scope: !1637)
!1637 = !DILexicalBlockFile(scope: !1635, file: !135, discriminator: 9)
!1638 = !DILocation(line: 694, column: 21, scope: !1639)
!1639 = !DILexicalBlockFile(scope: !1634, file: !135, discriminator: 10)
!1640 = !DILocation(line: 694, column: 21, scope: !1641)
!1641 = !DILexicalBlockFile(scope: !1635, file: !135, discriminator: 11)
!1642 = !DILocation(line: 694, column: 21, scope: !1643)
!1643 = !DILexicalBlockFile(scope: !1625, file: !135, discriminator: 13)
!1644 = !DILocation(line: 695, column: 21, scope: !1645)
!1645 = !DILexicalBlockFile(scope: !1646, file: !135, discriminator: 1)
!1646 = distinct !DILexicalBlock(scope: !1647, file: !135, line: 695, column: 21)
!1647 = distinct !DILexicalBlock(scope: !1518, file: !135, line: 695, column: 21)
!1648 = !DILocation(line: 695, column: 21, scope: !1649)
!1649 = !DILexicalBlockFile(scope: !1647, file: !135, discriminator: 1)
!1650 = !DILocation(line: 695, column: 21, scope: !1651)
!1651 = !DILexicalBlockFile(scope: !1646, file: !135, discriminator: 2)
!1652 = !DILocation(line: 695, column: 21, scope: !1653)
!1653 = !DILexicalBlockFile(scope: !1647, file: !135, discriminator: 3)
!1654 = !DILocation(line: 696, column: 25, scope: !1518)
!1655 = !DILocation(line: 678, column: 17, scope: !1656)
!1656 = !DILexicalBlockFile(scope: !1519, file: !135, discriminator: 1)
!1657 = distinct !{!1657, !1658, !1659}
!1658 = !DILocation(line: 678, column: 17, scope: !1520)
!1659 = !DILocation(line: 697, column: 19, scope: !1520)
!1660 = !DILocation(line: 704, column: 34, scope: !1661)
!1661 = distinct !DILexicalBlock(scope: !1062, file: !135, line: 704, column: 11)
!1662 = !DILocation(line: 706, column: 14, scope: !1661)
!1663 = !DILocation(line: 707, column: 14, scope: !1661)
!1664 = !DILocation(line: 707, column: 35, scope: !1665)
!1665 = !DILexicalBlockFile(scope: !1661, file: !135, discriminator: 1)
!1666 = !DILocation(line: 707, column: 17, scope: !1665)
!1667 = !DILocation(line: 707, column: 53, scope: !1665)
!1668 = !DILocation(line: 707, column: 47, scope: !1665)
!1669 = !DILocation(line: 707, column: 65, scope: !1665)
!1670 = !DILocation(line: 708, column: 15, scope: !1665)
!1671 = !DILocation(line: 708, column: 11, scope: !1661)
!1672 = !DILocation(line: 704, column: 11, scope: !1673)
!1673 = !DILexicalBlockFile(scope: !1062, file: !135, discriminator: 2)
!1674 = !DILocation(line: 712, column: 7, scope: !1675)
!1675 = !DILexicalBlockFile(scope: !1676, file: !135, discriminator: 1)
!1676 = distinct !DILexicalBlock(scope: !1062, file: !135, line: 712, column: 7)
!1677 = !DILocation(line: 712, column: 7, scope: !1678)
!1678 = !DILexicalBlockFile(scope: !1679, file: !135, discriminator: 4)
!1679 = distinct !DILexicalBlock(scope: !1676, file: !135, line: 712, column: 7)
!1680 = !DILocation(line: 712, column: 7, scope: !1681)
!1681 = !DILexicalBlockFile(scope: !1679, file: !135, discriminator: 3)
!1682 = !DILocation(line: 712, column: 7, scope: !1683)
!1683 = !DILexicalBlockFile(scope: !1684, file: !135, discriminator: 6)
!1684 = distinct !DILexicalBlock(scope: !1685, file: !135, line: 712, column: 7)
!1685 = distinct !DILexicalBlock(scope: !1686, file: !135, line: 712, column: 7)
!1686 = distinct !DILexicalBlock(scope: !1679, file: !135, line: 712, column: 7)
!1687 = !DILocation(line: 712, column: 7, scope: !1688)
!1688 = !DILexicalBlockFile(scope: !1685, file: !135, discriminator: 6)
!1689 = !DILocation(line: 712, column: 7, scope: !1690)
!1690 = !DILexicalBlockFile(scope: !1684, file: !135, discriminator: 7)
!1691 = !DILocation(line: 712, column: 7, scope: !1692)
!1692 = !DILexicalBlockFile(scope: !1685, file: !135, discriminator: 8)
!1693 = !DILocation(line: 712, column: 7, scope: !1694)
!1694 = !DILexicalBlockFile(scope: !1695, file: !135, discriminator: 11)
!1695 = distinct !DILexicalBlock(scope: !1696, file: !135, line: 712, column: 7)
!1696 = distinct !DILexicalBlock(scope: !1686, file: !135, line: 712, column: 7)
!1697 = !DILocation(line: 712, column: 7, scope: !1698)
!1698 = !DILexicalBlockFile(scope: !1696, file: !135, discriminator: 11)
!1699 = !DILocation(line: 712, column: 7, scope: !1700)
!1700 = !DILexicalBlockFile(scope: !1695, file: !135, discriminator: 12)
!1701 = !DILocation(line: 712, column: 7, scope: !1702)
!1702 = !DILexicalBlockFile(scope: !1696, file: !135, discriminator: 13)
!1703 = !DILocation(line: 712, column: 7, scope: !1704)
!1704 = !DILexicalBlockFile(scope: !1705, file: !135, discriminator: 16)
!1705 = distinct !DILexicalBlock(scope: !1706, file: !135, line: 712, column: 7)
!1706 = distinct !DILexicalBlock(scope: !1686, file: !135, line: 712, column: 7)
!1707 = !DILocation(line: 712, column: 7, scope: !1708)
!1708 = !DILexicalBlockFile(scope: !1706, file: !135, discriminator: 16)
!1709 = !DILocation(line: 712, column: 7, scope: !1710)
!1710 = !DILexicalBlockFile(scope: !1705, file: !135, discriminator: 17)
!1711 = !DILocation(line: 712, column: 7, scope: !1712)
!1712 = !DILexicalBlockFile(scope: !1706, file: !135, discriminator: 18)
!1713 = !DILocation(line: 712, column: 7, scope: !1714)
!1714 = !DILexicalBlockFile(scope: !1686, file: !135, discriminator: 20)
!1715 = !DILocation(line: 712, column: 7, scope: !1716)
!1716 = !DILexicalBlockFile(scope: !1717, file: !135, discriminator: 22)
!1717 = distinct !DILexicalBlock(scope: !1718, file: !135, line: 712, column: 7)
!1718 = distinct !DILexicalBlock(scope: !1676, file: !135, line: 712, column: 7)
!1719 = !DILocation(line: 712, column: 7, scope: !1720)
!1720 = !DILexicalBlockFile(scope: !1718, file: !135, discriminator: 22)
!1721 = !DILocation(line: 712, column: 7, scope: !1722)
!1722 = !DILexicalBlockFile(scope: !1717, file: !135, discriminator: 23)
!1723 = !DILocation(line: 712, column: 7, scope: !1724)
!1724 = !DILexicalBlockFile(scope: !1718, file: !135, discriminator: 24)
!1725 = !DILocation(line: 715, column: 7, scope: !1726)
!1726 = !DILexicalBlockFile(scope: !1727, file: !135, discriminator: 1)
!1727 = distinct !DILexicalBlock(scope: !1728, file: !135, line: 715, column: 7)
!1728 = distinct !DILexicalBlock(scope: !1062, file: !135, line: 715, column: 7)
!1729 = !DILocation(line: 715, column: 7, scope: !1730)
!1730 = !DILexicalBlockFile(scope: !1727, file: !135, discriminator: 2)
!1731 = !DILocation(line: 715, column: 7, scope: !1732)
!1732 = !DILexicalBlockFile(scope: !1733, file: !135, discriminator: 4)
!1733 = distinct !DILexicalBlock(scope: !1734, file: !135, line: 715, column: 7)
!1734 = distinct !DILexicalBlock(scope: !1735, file: !135, line: 715, column: 7)
!1735 = distinct !DILexicalBlock(scope: !1727, file: !135, line: 715, column: 7)
!1736 = !DILocation(line: 715, column: 7, scope: !1737)
!1737 = !DILexicalBlockFile(scope: !1734, file: !135, discriminator: 4)
!1738 = !DILocation(line: 715, column: 7, scope: !1739)
!1739 = !DILexicalBlockFile(scope: !1733, file: !135, discriminator: 5)
!1740 = !DILocation(line: 715, column: 7, scope: !1741)
!1741 = !DILexicalBlockFile(scope: !1734, file: !135, discriminator: 6)
!1742 = !DILocation(line: 715, column: 7, scope: !1743)
!1743 = !DILexicalBlockFile(scope: !1744, file: !135, discriminator: 9)
!1744 = distinct !DILexicalBlock(scope: !1745, file: !135, line: 715, column: 7)
!1745 = distinct !DILexicalBlock(scope: !1735, file: !135, line: 715, column: 7)
!1746 = !DILocation(line: 715, column: 7, scope: !1747)
!1747 = !DILexicalBlockFile(scope: !1745, file: !135, discriminator: 9)
!1748 = !DILocation(line: 715, column: 7, scope: !1749)
!1749 = !DILexicalBlockFile(scope: !1744, file: !135, discriminator: 10)
!1750 = !DILocation(line: 715, column: 7, scope: !1751)
!1751 = !DILexicalBlockFile(scope: !1745, file: !135, discriminator: 11)
!1752 = !DILocation(line: 715, column: 7, scope: !1753)
!1753 = !DILexicalBlockFile(scope: !1735, file: !135, discriminator: 13)
!1754 = !DILocation(line: 716, column: 7, scope: !1755)
!1755 = !DILexicalBlockFile(scope: !1756, file: !135, discriminator: 1)
!1756 = distinct !DILexicalBlock(scope: !1757, file: !135, line: 716, column: 7)
!1757 = distinct !DILexicalBlock(scope: !1062, file: !135, line: 716, column: 7)
!1758 = !DILocation(line: 716, column: 7, scope: !1759)
!1759 = !DILexicalBlockFile(scope: !1757, file: !135, discriminator: 1)
!1760 = !DILocation(line: 716, column: 7, scope: !1761)
!1761 = !DILexicalBlockFile(scope: !1756, file: !135, discriminator: 2)
!1762 = !DILocation(line: 716, column: 7, scope: !1763)
!1763 = !DILexicalBlockFile(scope: !1757, file: !135, discriminator: 3)
!1764 = !DILocation(line: 718, column: 13, scope: !1765)
!1765 = distinct !DILexicalBlock(scope: !1062, file: !135, line: 718, column: 11)
!1766 = !DILocation(line: 718, column: 11, scope: !1062)
!1767 = !DILocation(line: 720, column: 5, scope: !1063)
!1768 = !DILocation(line: 392, column: 75, scope: !1769)
!1769 = !DILexicalBlockFile(scope: !1063, file: !135, discriminator: 5)
!1770 = !DILocation(line: 392, column: 3, scope: !1769)
!1771 = distinct !{!1771, !1772, !1773}
!1772 = !DILocation(line: 392, column: 3, scope: !1064)
!1773 = !DILocation(line: 720, column: 5, scope: !1064)
!1774 = !DILocation(line: 722, column: 11, scope: !1775)
!1775 = distinct !DILexicalBlock(scope: !1035, file: !135, line: 722, column: 7)
!1776 = !DILocation(line: 722, column: 16, scope: !1775)
!1777 = !DILocation(line: 730, column: 51, scope: !1778)
!1778 = distinct !DILexicalBlock(scope: !1035, file: !135, line: 730, column: 7)
!1779 = !DILocation(line: 731, column: 10, scope: !1780)
!1780 = !DILexicalBlockFile(scope: !1778, file: !135, discriminator: 1)
!1781 = !DILocation(line: 733, column: 11, scope: !1782)
!1782 = distinct !DILexicalBlock(scope: !1783, file: !135, line: 733, column: 11)
!1783 = distinct !DILexicalBlock(scope: !1778, file: !135, line: 732, column: 5)
!1784 = !DILocation(line: 733, column: 11, scope: !1783)
!1785 = !DILocation(line: 734, column: 16, scope: !1782)
!1786 = !DILocation(line: 734, column: 9, scope: !1782)
!1787 = !DILocation(line: 738, column: 18, scope: !1788)
!1788 = distinct !DILexicalBlock(scope: !1782, file: !135, line: 738, column: 16)
!1789 = !DILocation(line: 738, column: 32, scope: !1790)
!1790 = !DILexicalBlockFile(scope: !1788, file: !135, discriminator: 1)
!1791 = !DILocation(line: 738, column: 29, scope: !1788)
!1792 = !DILocation(line: 747, column: 7, scope: !1793)
!1793 = distinct !DILexicalBlock(scope: !1035, file: !135, line: 747, column: 7)
!1794 = !DILocation(line: 747, column: 20, scope: !1793)
!1795 = !DILocation(line: 748, column: 12, scope: !1796)
!1796 = !DILexicalBlockFile(scope: !1797, file: !135, discriminator: 1)
!1797 = distinct !DILexicalBlock(scope: !1798, file: !135, line: 748, column: 5)
!1798 = distinct !DILexicalBlock(scope: !1793, file: !135, line: 748, column: 5)
!1799 = !DILocation(line: 748, column: 5, scope: !1800)
!1800 = !DILexicalBlockFile(scope: !1798, file: !135, discriminator: 1)
!1801 = !DILocation(line: 749, column: 7, scope: !1802)
!1802 = !DILexicalBlockFile(scope: !1803, file: !135, discriminator: 1)
!1803 = distinct !DILexicalBlock(scope: !1804, file: !135, line: 749, column: 7)
!1804 = distinct !DILexicalBlock(scope: !1797, file: !135, line: 749, column: 7)
!1805 = !DILocation(line: 749, column: 7, scope: !1806)
!1806 = !DILexicalBlockFile(scope: !1804, file: !135, discriminator: 1)
!1807 = !DILocation(line: 749, column: 7, scope: !1808)
!1808 = !DILexicalBlockFile(scope: !1803, file: !135, discriminator: 2)
!1809 = !DILocation(line: 749, column: 7, scope: !1810)
!1810 = !DILexicalBlockFile(scope: !1804, file: !135, discriminator: 3)
!1811 = !DILocation(line: 748, column: 39, scope: !1812)
!1812 = !DILexicalBlockFile(scope: !1797, file: !135, discriminator: 2)
!1813 = distinct !{!1813, !1814, !1815}
!1814 = !DILocation(line: 748, column: 5, scope: !1798)
!1815 = !DILocation(line: 749, column: 7, scope: !1798)
!1816 = !DILocation(line: 751, column: 11, scope: !1817)
!1817 = distinct !DILexicalBlock(scope: !1035, file: !135, line: 751, column: 7)
!1818 = !DILocation(line: 751, column: 7, scope: !1035)
!1819 = !DILocation(line: 752, column: 5, scope: !1817)
!1820 = !DILocation(line: 752, column: 17, scope: !1817)
!1821 = !DILocation(line: 758, column: 21, scope: !1822)
!1822 = distinct !DILexicalBlock(scope: !1035, file: !135, line: 758, column: 7)
!1823 = !DILocation(line: 758, column: 54, scope: !1824)
!1824 = !DILexicalBlockFile(scope: !1822, file: !135, discriminator: 1)
!1825 = !DILocation(line: 758, column: 51, scope: !1822)
!1826 = !DILocation(line: 762, column: 42, scope: !1035)
!1827 = !DILocation(line: 760, column: 10, scope: !1035)
!1828 = !DILocation(line: 760, column: 3, scope: !1035)
!1829 = !DILocation(line: 764, column: 1, scope: !1035)
!1830 = distinct !DISubprogram(name: "gettext_quote", scope: !135, file: !135, line: 199, type: !1831, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !1833)
!1831 = !DISubroutineType(types: !1832)
!1832 = !{!17, !17, !96}
!1833 = !{!1834, !1835, !1836, !1837}
!1834 = !DILocalVariable(name: "msgid", arg: 1, scope: !1830, file: !135, line: 199, type: !17)
!1835 = !DILocalVariable(name: "s", arg: 2, scope: !1830, file: !135, line: 199, type: !96)
!1836 = !DILocalVariable(name: "translation", scope: !1830, file: !135, line: 201, type: !17)
!1837 = !DILocalVariable(name: "locale_code", scope: !1830, file: !135, line: 202, type: !17)
!1838 = !DILocation(line: 199, column: 28, scope: !1830)
!1839 = !DILocation(line: 199, column: 54, scope: !1830)
!1840 = !DILocation(line: 201, column: 29, scope: !1830)
!1841 = !DILocation(line: 201, column: 15, scope: !1830)
!1842 = !DILocation(line: 204, column: 19, scope: !1843)
!1843 = distinct !DILexicalBlock(scope: !1830, file: !135, line: 204, column: 7)
!1844 = !DILocation(line: 204, column: 7, scope: !1830)
!1845 = !DILocation(line: 225, column: 17, scope: !1830)
!1846 = !DILocation(line: 202, column: 15, scope: !1830)
!1847 = !DILocalVariable(name: "s2", arg: 2, scope: !1848, file: !1849, line: 160, type: !17)
!1848 = distinct !DISubprogram(name: "strcaseeq0", scope: !1849, file: !1849, line: 160, type: !1850, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !1852)
!1849 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1850 = !DISubroutineType(types: !1851)
!1851 = !{!47, !17, !17, !7, !7, !7, !7, !7, !7, !7, !7, !7}
!1852 = !{!1853, !1847, !1854, !1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862}
!1853 = !DILocalVariable(name: "s1", arg: 1, scope: !1848, file: !1849, line: 160, type: !17)
!1854 = !DILocalVariable(name: "s20", arg: 3, scope: !1848, file: !1849, line: 160, type: !7)
!1855 = !DILocalVariable(name: "s21", arg: 4, scope: !1848, file: !1849, line: 160, type: !7)
!1856 = !DILocalVariable(name: "s22", arg: 5, scope: !1848, file: !1849, line: 160, type: !7)
!1857 = !DILocalVariable(name: "s23", arg: 6, scope: !1848, file: !1849, line: 160, type: !7)
!1858 = !DILocalVariable(name: "s24", arg: 7, scope: !1848, file: !1849, line: 160, type: !7)
!1859 = !DILocalVariable(name: "s25", arg: 8, scope: !1848, file: !1849, line: 160, type: !7)
!1860 = !DILocalVariable(name: "s26", arg: 9, scope: !1848, file: !1849, line: 160, type: !7)
!1861 = !DILocalVariable(name: "s27", arg: 10, scope: !1848, file: !1849, line: 160, type: !7)
!1862 = !DILocalVariable(name: "s28", arg: 11, scope: !1848, file: !1849, line: 160, type: !7)
!1863 = !DILocation(line: 160, column: 41, scope: !1848, inlinedAt: !1864)
!1864 = distinct !DILocation(line: 226, column: 7, scope: !1865)
!1865 = distinct !DILexicalBlock(scope: !1830, file: !135, line: 226, column: 7)
!1866 = !DILocation(line: 160, column: 120, scope: !1848, inlinedAt: !1864)
!1867 = !DILocation(line: 160, column: 130, scope: !1848, inlinedAt: !1864)
!1868 = !DILocation(line: 162, column: 7, scope: !1869, inlinedAt: !1864)
!1869 = !DILexicalBlockFile(scope: !1870, file: !1849, discriminator: 1)
!1870 = distinct !DILexicalBlock(scope: !1848, file: !1849, line: 162, column: 7)
!1871 = !DILocalVariable(name: "s2", arg: 2, scope: !1872, file: !1849, line: 146, type: !17)
!1872 = distinct !DISubprogram(name: "strcaseeq1", scope: !1849, file: !1849, line: 146, type: !1873, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !1875)
!1873 = !DISubroutineType(types: !1874)
!1874 = !{!47, !17, !17, !7, !7, !7, !7, !7, !7, !7, !7}
!1875 = !{!1876, !1871, !1877, !1878, !1879, !1880, !1881, !1882, !1883, !1884}
!1876 = !DILocalVariable(name: "s1", arg: 1, scope: !1872, file: !1849, line: 146, type: !17)
!1877 = !DILocalVariable(name: "s21", arg: 3, scope: !1872, file: !1849, line: 146, type: !7)
!1878 = !DILocalVariable(name: "s22", arg: 4, scope: !1872, file: !1849, line: 146, type: !7)
!1879 = !DILocalVariable(name: "s23", arg: 5, scope: !1872, file: !1849, line: 146, type: !7)
!1880 = !DILocalVariable(name: "s24", arg: 6, scope: !1872, file: !1849, line: 146, type: !7)
!1881 = !DILocalVariable(name: "s25", arg: 7, scope: !1872, file: !1849, line: 146, type: !7)
!1882 = !DILocalVariable(name: "s26", arg: 8, scope: !1872, file: !1849, line: 146, type: !7)
!1883 = !DILocalVariable(name: "s27", arg: 9, scope: !1872, file: !1849, line: 146, type: !7)
!1884 = !DILocalVariable(name: "s28", arg: 10, scope: !1872, file: !1849, line: 146, type: !7)
!1885 = !DILocation(line: 146, column: 41, scope: !1872, inlinedAt: !1886)
!1886 = distinct !DILocation(line: 167, column: 16, scope: !1887, inlinedAt: !1864)
!1887 = distinct !DILexicalBlock(scope: !1888, file: !1849, line: 164, column: 11)
!1888 = distinct !DILexicalBlock(scope: !1870, file: !1849, line: 163, column: 5)
!1889 = !DILocation(line: 146, column: 110, scope: !1872, inlinedAt: !1886)
!1890 = !DILocation(line: 146, column: 120, scope: !1872, inlinedAt: !1886)
!1891 = !DILocation(line: 148, column: 7, scope: !1892, inlinedAt: !1886)
!1892 = !DILexicalBlockFile(scope: !1893, file: !1849, discriminator: 1)
!1893 = distinct !DILexicalBlock(scope: !1872, file: !1849, line: 148, column: 7)
!1894 = !DILocalVariable(name: "s2", arg: 2, scope: !1895, file: !1849, line: 132, type: !17)
!1895 = distinct !DISubprogram(name: "strcaseeq2", scope: !1849, file: !1849, line: 132, type: !1896, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !1898)
!1896 = !DISubroutineType(types: !1897)
!1897 = !{!47, !17, !17, !7, !7, !7, !7, !7, !7, !7}
!1898 = !{!1899, !1894, !1900, !1901, !1902, !1903, !1904, !1905, !1906}
!1899 = !DILocalVariable(name: "s1", arg: 1, scope: !1895, file: !1849, line: 132, type: !17)
!1900 = !DILocalVariable(name: "s22", arg: 3, scope: !1895, file: !1849, line: 132, type: !7)
!1901 = !DILocalVariable(name: "s23", arg: 4, scope: !1895, file: !1849, line: 132, type: !7)
!1902 = !DILocalVariable(name: "s24", arg: 5, scope: !1895, file: !1849, line: 132, type: !7)
!1903 = !DILocalVariable(name: "s25", arg: 6, scope: !1895, file: !1849, line: 132, type: !7)
!1904 = !DILocalVariable(name: "s26", arg: 7, scope: !1895, file: !1849, line: 132, type: !7)
!1905 = !DILocalVariable(name: "s27", arg: 8, scope: !1895, file: !1849, line: 132, type: !7)
!1906 = !DILocalVariable(name: "s28", arg: 9, scope: !1895, file: !1849, line: 132, type: !7)
!1907 = !DILocation(line: 132, column: 41, scope: !1895, inlinedAt: !1908)
!1908 = distinct !DILocation(line: 153, column: 16, scope: !1909, inlinedAt: !1886)
!1909 = distinct !DILexicalBlock(scope: !1910, file: !1849, line: 150, column: 11)
!1910 = distinct !DILexicalBlock(scope: !1893, file: !1849, line: 149, column: 5)
!1911 = !DILocation(line: 132, column: 100, scope: !1895, inlinedAt: !1908)
!1912 = !DILocation(line: 132, column: 110, scope: !1895, inlinedAt: !1908)
!1913 = !DILocation(line: 134, column: 7, scope: !1914, inlinedAt: !1908)
!1914 = !DILexicalBlockFile(scope: !1915, file: !1849, discriminator: 1)
!1915 = distinct !DILexicalBlock(scope: !1895, file: !1849, line: 134, column: 7)
!1916 = !DILocalVariable(name: "s2", arg: 2, scope: !1917, file: !1849, line: 118, type: !17)
!1917 = distinct !DISubprogram(name: "strcaseeq3", scope: !1849, file: !1849, line: 118, type: !1918, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !1920)
!1918 = !DISubroutineType(types: !1919)
!1919 = !{!47, !17, !17, !7, !7, !7, !7, !7, !7}
!1920 = !{!1921, !1916, !1922, !1923, !1924, !1925, !1926, !1927}
!1921 = !DILocalVariable(name: "s1", arg: 1, scope: !1917, file: !1849, line: 118, type: !17)
!1922 = !DILocalVariable(name: "s23", arg: 3, scope: !1917, file: !1849, line: 118, type: !7)
!1923 = !DILocalVariable(name: "s24", arg: 4, scope: !1917, file: !1849, line: 118, type: !7)
!1924 = !DILocalVariable(name: "s25", arg: 5, scope: !1917, file: !1849, line: 118, type: !7)
!1925 = !DILocalVariable(name: "s26", arg: 6, scope: !1917, file: !1849, line: 118, type: !7)
!1926 = !DILocalVariable(name: "s27", arg: 7, scope: !1917, file: !1849, line: 118, type: !7)
!1927 = !DILocalVariable(name: "s28", arg: 8, scope: !1917, file: !1849, line: 118, type: !7)
!1928 = !DILocation(line: 118, column: 41, scope: !1917, inlinedAt: !1929)
!1929 = distinct !DILocation(line: 139, column: 16, scope: !1930, inlinedAt: !1908)
!1930 = distinct !DILexicalBlock(scope: !1931, file: !1849, line: 136, column: 11)
!1931 = distinct !DILexicalBlock(scope: !1915, file: !1849, line: 135, column: 5)
!1932 = !DILocation(line: 118, column: 90, scope: !1917, inlinedAt: !1929)
!1933 = !DILocation(line: 118, column: 100, scope: !1917, inlinedAt: !1929)
!1934 = !DILocation(line: 120, column: 7, scope: !1935, inlinedAt: !1929)
!1935 = !DILexicalBlockFile(scope: !1936, file: !1849, discriminator: 2)
!1936 = distinct !DILexicalBlock(scope: !1917, file: !1849, line: 120, column: 7)
!1937 = !DILocation(line: 120, column: 7, scope: !1938, inlinedAt: !1929)
!1938 = !DILexicalBlockFile(scope: !1917, file: !1849, discriminator: 2)
!1939 = !DILocalVariable(name: "s2", arg: 2, scope: !1940, file: !1849, line: 104, type: !17)
!1940 = distinct !DISubprogram(name: "strcaseeq4", scope: !1849, file: !1849, line: 104, type: !1941, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !1943)
!1941 = !DISubroutineType(types: !1942)
!1942 = !{!47, !17, !17, !7, !7, !7, !7, !7}
!1943 = !{!1944, !1939, !1945, !1946, !1947, !1948, !1949}
!1944 = !DILocalVariable(name: "s1", arg: 1, scope: !1940, file: !1849, line: 104, type: !17)
!1945 = !DILocalVariable(name: "s24", arg: 3, scope: !1940, file: !1849, line: 104, type: !7)
!1946 = !DILocalVariable(name: "s25", arg: 4, scope: !1940, file: !1849, line: 104, type: !7)
!1947 = !DILocalVariable(name: "s26", arg: 5, scope: !1940, file: !1849, line: 104, type: !7)
!1948 = !DILocalVariable(name: "s27", arg: 6, scope: !1940, file: !1849, line: 104, type: !7)
!1949 = !DILocalVariable(name: "s28", arg: 7, scope: !1940, file: !1849, line: 104, type: !7)
!1950 = !DILocation(line: 104, column: 41, scope: !1940, inlinedAt: !1951)
!1951 = distinct !DILocation(line: 125, column: 16, scope: !1952, inlinedAt: !1929)
!1952 = distinct !DILexicalBlock(scope: !1953, file: !1849, line: 122, column: 11)
!1953 = distinct !DILexicalBlock(scope: !1936, file: !1849, line: 121, column: 5)
!1954 = !DILocation(line: 104, column: 80, scope: !1940, inlinedAt: !1951)
!1955 = !DILocation(line: 104, column: 90, scope: !1940, inlinedAt: !1951)
!1956 = !DILocation(line: 106, column: 7, scope: !1957, inlinedAt: !1951)
!1957 = !DILexicalBlockFile(scope: !1958, file: !1849, discriminator: 2)
!1958 = distinct !DILexicalBlock(scope: !1940, file: !1849, line: 106, column: 7)
!1959 = !DILocation(line: 106, column: 7, scope: !1960, inlinedAt: !1951)
!1960 = !DILexicalBlockFile(scope: !1940, file: !1849, discriminator: 2)
!1961 = !DILocalVariable(name: "s2", arg: 2, scope: !1962, file: !1849, line: 90, type: !17)
!1962 = distinct !DISubprogram(name: "strcaseeq5", scope: !1849, file: !1849, line: 90, type: !1963, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !1965)
!1963 = !DISubroutineType(types: !1964)
!1964 = !{!47, !17, !17, !7, !7, !7, !7}
!1965 = !{!1966, !1961, !1967, !1968, !1969, !1970}
!1966 = !DILocalVariable(name: "s1", arg: 1, scope: !1962, file: !1849, line: 90, type: !17)
!1967 = !DILocalVariable(name: "s25", arg: 3, scope: !1962, file: !1849, line: 90, type: !7)
!1968 = !DILocalVariable(name: "s26", arg: 4, scope: !1962, file: !1849, line: 90, type: !7)
!1969 = !DILocalVariable(name: "s27", arg: 5, scope: !1962, file: !1849, line: 90, type: !7)
!1970 = !DILocalVariable(name: "s28", arg: 6, scope: !1962, file: !1849, line: 90, type: !7)
!1971 = !DILocation(line: 90, column: 41, scope: !1962, inlinedAt: !1972)
!1972 = distinct !DILocation(line: 111, column: 16, scope: !1973, inlinedAt: !1951)
!1973 = distinct !DILexicalBlock(scope: !1974, file: !1849, line: 108, column: 11)
!1974 = distinct !DILexicalBlock(scope: !1958, file: !1849, line: 107, column: 5)
!1975 = !DILocation(line: 90, column: 70, scope: !1962, inlinedAt: !1972)
!1976 = !DILocation(line: 90, column: 80, scope: !1962, inlinedAt: !1972)
!1977 = !DILocation(line: 92, column: 7, scope: !1978, inlinedAt: !1972)
!1978 = !DILexicalBlockFile(scope: !1979, file: !1849, discriminator: 2)
!1979 = distinct !DILexicalBlock(scope: !1962, file: !1849, line: 92, column: 7)
!1980 = !DILocation(line: 92, column: 7, scope: !1981, inlinedAt: !1972)
!1981 = !DILexicalBlockFile(scope: !1962, file: !1849, discriminator: 2)
!1982 = !DILocation(line: 227, column: 12, scope: !1865)
!1983 = !DILocation(line: 227, column: 21, scope: !1865)
!1984 = !DILocation(line: 227, column: 5, scope: !1865)
!1985 = !DILocation(line: 146, column: 41, scope: !1872, inlinedAt: !1986)
!1986 = distinct !DILocation(line: 167, column: 16, scope: !1887, inlinedAt: !1987)
!1987 = distinct !DILocation(line: 228, column: 7, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !1830, file: !135, line: 228, column: 7)
!1989 = !DILocation(line: 146, column: 110, scope: !1872, inlinedAt: !1986)
!1990 = !DILocation(line: 146, column: 120, scope: !1872, inlinedAt: !1986)
!1991 = !DILocation(line: 148, column: 7, scope: !1892, inlinedAt: !1986)
!1992 = !DILocation(line: 132, column: 41, scope: !1895, inlinedAt: !1993)
!1993 = distinct !DILocation(line: 153, column: 16, scope: !1909, inlinedAt: !1986)
!1994 = !DILocation(line: 132, column: 100, scope: !1895, inlinedAt: !1993)
!1995 = !DILocation(line: 132, column: 110, scope: !1895, inlinedAt: !1993)
!1996 = !DILocation(line: 134, column: 7, scope: !1997, inlinedAt: !1993)
!1997 = !DILexicalBlockFile(scope: !1915, file: !1849, discriminator: 2)
!1998 = !DILocation(line: 134, column: 7, scope: !1999, inlinedAt: !1993)
!1999 = !DILexicalBlockFile(scope: !1895, file: !1849, discriminator: 2)
!2000 = !DILocation(line: 118, column: 41, scope: !1917, inlinedAt: !2001)
!2001 = distinct !DILocation(line: 139, column: 16, scope: !1930, inlinedAt: !1993)
!2002 = !DILocation(line: 118, column: 90, scope: !1917, inlinedAt: !2001)
!2003 = !DILocation(line: 118, column: 100, scope: !1917, inlinedAt: !2001)
!2004 = !DILocation(line: 120, column: 7, scope: !1935, inlinedAt: !2001)
!2005 = !DILocation(line: 120, column: 7, scope: !1938, inlinedAt: !2001)
!2006 = !DILocation(line: 104, column: 41, scope: !1940, inlinedAt: !2007)
!2007 = distinct !DILocation(line: 125, column: 16, scope: !1952, inlinedAt: !2001)
!2008 = !DILocation(line: 104, column: 80, scope: !1940, inlinedAt: !2007)
!2009 = !DILocation(line: 104, column: 90, scope: !1940, inlinedAt: !2007)
!2010 = !DILocation(line: 106, column: 7, scope: !1957, inlinedAt: !2007)
!2011 = !DILocation(line: 106, column: 7, scope: !1960, inlinedAt: !2007)
!2012 = !DILocation(line: 90, column: 41, scope: !1962, inlinedAt: !2013)
!2013 = distinct !DILocation(line: 111, column: 16, scope: !1973, inlinedAt: !2007)
!2014 = !DILocation(line: 90, column: 70, scope: !1962, inlinedAt: !2013)
!2015 = !DILocation(line: 90, column: 80, scope: !1962, inlinedAt: !2013)
!2016 = !DILocation(line: 92, column: 7, scope: !1978, inlinedAt: !2013)
!2017 = !DILocation(line: 92, column: 7, scope: !1981, inlinedAt: !2013)
!2018 = !DILocalVariable(name: "s2", arg: 2, scope: !2019, file: !1849, line: 76, type: !17)
!2019 = distinct !DISubprogram(name: "strcaseeq6", scope: !1849, file: !1849, line: 76, type: !2020, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !2022)
!2020 = !DISubroutineType(types: !2021)
!2021 = !{!47, !17, !17, !7, !7, !7}
!2022 = !{!2023, !2018, !2024, !2025, !2026}
!2023 = !DILocalVariable(name: "s1", arg: 1, scope: !2019, file: !1849, line: 76, type: !17)
!2024 = !DILocalVariable(name: "s26", arg: 3, scope: !2019, file: !1849, line: 76, type: !7)
!2025 = !DILocalVariable(name: "s27", arg: 4, scope: !2019, file: !1849, line: 76, type: !7)
!2026 = !DILocalVariable(name: "s28", arg: 5, scope: !2019, file: !1849, line: 76, type: !7)
!2027 = !DILocation(line: 76, column: 41, scope: !2019, inlinedAt: !2028)
!2028 = distinct !DILocation(line: 97, column: 16, scope: !2029, inlinedAt: !2013)
!2029 = distinct !DILexicalBlock(scope: !2030, file: !1849, line: 94, column: 11)
!2030 = distinct !DILexicalBlock(scope: !1979, file: !1849, line: 93, column: 5)
!2031 = !DILocation(line: 76, column: 60, scope: !2019, inlinedAt: !2028)
!2032 = !DILocation(line: 76, column: 70, scope: !2019, inlinedAt: !2028)
!2033 = !DILocation(line: 78, column: 7, scope: !2034, inlinedAt: !2028)
!2034 = !DILexicalBlockFile(scope: !2035, file: !1849, discriminator: 2)
!2035 = distinct !DILexicalBlock(scope: !2019, file: !1849, line: 78, column: 7)
!2036 = !DILocation(line: 78, column: 7, scope: !2037, inlinedAt: !2028)
!2037 = !DILexicalBlockFile(scope: !2019, file: !1849, discriminator: 2)
!2038 = !DILocalVariable(name: "s2", arg: 2, scope: !2039, file: !1849, line: 62, type: !17)
!2039 = distinct !DISubprogram(name: "strcaseeq7", scope: !1849, file: !1849, line: 62, type: !2040, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !2042)
!2040 = !DISubroutineType(types: !2041)
!2041 = !{!47, !17, !17, !7, !7}
!2042 = !{!2043, !2038, !2044, !2045}
!2043 = !DILocalVariable(name: "s1", arg: 1, scope: !2039, file: !1849, line: 62, type: !17)
!2044 = !DILocalVariable(name: "s27", arg: 3, scope: !2039, file: !1849, line: 62, type: !7)
!2045 = !DILocalVariable(name: "s28", arg: 4, scope: !2039, file: !1849, line: 62, type: !7)
!2046 = !DILocation(line: 62, column: 41, scope: !2039, inlinedAt: !2047)
!2047 = distinct !DILocation(line: 83, column: 16, scope: !2048, inlinedAt: !2028)
!2048 = distinct !DILexicalBlock(scope: !2049, file: !1849, line: 80, column: 11)
!2049 = distinct !DILexicalBlock(scope: !2035, file: !1849, line: 79, column: 5)
!2050 = !DILocation(line: 62, column: 50, scope: !2039, inlinedAt: !2047)
!2051 = !DILocation(line: 62, column: 60, scope: !2039, inlinedAt: !2047)
!2052 = !DILocation(line: 64, column: 7, scope: !2053, inlinedAt: !2047)
!2053 = !DILexicalBlockFile(scope: !2054, file: !1849, discriminator: 2)
!2054 = distinct !DILexicalBlock(scope: !2039, file: !1849, line: 64, column: 7)
!2055 = !DILocation(line: 228, column: 7, scope: !1830)
!2056 = !DILocation(line: 229, column: 12, scope: !1988)
!2057 = !DILocation(line: 229, column: 21, scope: !1988)
!2058 = !DILocation(line: 229, column: 5, scope: !1988)
!2059 = !DILocation(line: 231, column: 13, scope: !1830)
!2060 = !DILocation(line: 231, column: 11, scope: !1830)
!2061 = !DILocation(line: 231, column: 3, scope: !1830)
!2062 = !DILocation(line: 232, column: 1, scope: !1830)
!2063 = distinct !DISubprogram(name: "quotearg_alloc", scope: !135, file: !135, line: 791, type: !2064, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !2066)
!2064 = !DISubroutineType(types: !2065)
!2065 = !{!6, !17, !9, !903}
!2066 = !{!2067, !2068, !2069}
!2067 = !DILocalVariable(name: "arg", arg: 1, scope: !2063, file: !135, line: 791, type: !17)
!2068 = !DILocalVariable(name: "argsize", arg: 2, scope: !2063, file: !135, line: 791, type: !9)
!2069 = !DILocalVariable(name: "o", arg: 3, scope: !2063, file: !135, line: 792, type: !903)
!2070 = !DILocation(line: 791, column: 29, scope: !2063)
!2071 = !DILocation(line: 791, column: 41, scope: !2063)
!2072 = !DILocation(line: 792, column: 47, scope: !2063)
!2073 = !DILocalVariable(name: "arg", arg: 1, scope: !2074, file: !135, line: 804, type: !17)
!2074 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !135, file: !135, line: 804, type: !2075, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !2077)
!2075 = !DISubroutineType(types: !2076)
!2076 = !{!6, !17, !9, !546, !903}
!2077 = !{!2073, !2078, !2079, !2080, !2081, !2082, !2083, !2084, !2085}
!2078 = !DILocalVariable(name: "argsize", arg: 2, scope: !2074, file: !135, line: 804, type: !9)
!2079 = !DILocalVariable(name: "size", arg: 3, scope: !2074, file: !135, line: 804, type: !546)
!2080 = !DILocalVariable(name: "o", arg: 4, scope: !2074, file: !135, line: 805, type: !903)
!2081 = !DILocalVariable(name: "p", scope: !2074, file: !135, line: 807, type: !903)
!2082 = !DILocalVariable(name: "e", scope: !2074, file: !135, line: 808, type: !47)
!2083 = !DILocalVariable(name: "flags", scope: !2074, file: !135, line: 810, type: !47)
!2084 = !DILocalVariable(name: "bufsize", scope: !2074, file: !135, line: 811, type: !9)
!2085 = !DILocalVariable(name: "buf", scope: !2074, file: !135, line: 815, type: !6)
!2086 = !DILocation(line: 804, column: 33, scope: !2074, inlinedAt: !2087)
!2087 = distinct !DILocation(line: 794, column: 10, scope: !2063)
!2088 = !DILocation(line: 804, column: 45, scope: !2074, inlinedAt: !2087)
!2089 = !DILocation(line: 804, column: 62, scope: !2074, inlinedAt: !2087)
!2090 = !DILocation(line: 805, column: 51, scope: !2074, inlinedAt: !2087)
!2091 = !DILocation(line: 807, column: 37, scope: !2074, inlinedAt: !2087)
!2092 = !DILocation(line: 807, column: 33, scope: !2074, inlinedAt: !2087)
!2093 = !DILocation(line: 808, column: 11, scope: !2074, inlinedAt: !2087)
!2094 = !DILocation(line: 808, column: 7, scope: !2074, inlinedAt: !2087)
!2095 = !DILocation(line: 810, column: 18, scope: !2074, inlinedAt: !2087)
!2096 = !DILocation(line: 810, column: 24, scope: !2074, inlinedAt: !2087)
!2097 = !DILocation(line: 810, column: 7, scope: !2074, inlinedAt: !2087)
!2098 = !DILocation(line: 811, column: 69, scope: !2074, inlinedAt: !2087)
!2099 = !DILocation(line: 812, column: 53, scope: !2074, inlinedAt: !2087)
!2100 = !DILocation(line: 813, column: 49, scope: !2074, inlinedAt: !2087)
!2101 = !DILocation(line: 814, column: 49, scope: !2074, inlinedAt: !2087)
!2102 = !DILocation(line: 811, column: 20, scope: !2074, inlinedAt: !2087)
!2103 = !DILocation(line: 814, column: 62, scope: !2074, inlinedAt: !2087)
!2104 = !DILocation(line: 811, column: 10, scope: !2074, inlinedAt: !2087)
!2105 = !DILocalVariable(name: "n", arg: 1, scope: !2106, file: !542, line: 220, type: !9)
!2106 = distinct !DISubprogram(name: "xcharalloc", scope: !542, file: !542, line: 220, type: !2107, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !2109)
!2107 = !DISubroutineType(types: !2108)
!2108 = !{!6, !9}
!2109 = !{!2105}
!2110 = !DILocation(line: 220, column: 20, scope: !2106, inlinedAt: !2111)
!2111 = distinct !DILocation(line: 815, column: 15, scope: !2074, inlinedAt: !2087)
!2112 = !DILocation(line: 222, column: 10, scope: !2106, inlinedAt: !2111)
!2113 = !DILocation(line: 815, column: 9, scope: !2074, inlinedAt: !2087)
!2114 = !DILocation(line: 816, column: 60, scope: !2074, inlinedAt: !2087)
!2115 = !DILocation(line: 818, column: 32, scope: !2074, inlinedAt: !2087)
!2116 = !DILocation(line: 818, column: 47, scope: !2074, inlinedAt: !2087)
!2117 = !DILocation(line: 816, column: 3, scope: !2074, inlinedAt: !2087)
!2118 = !DILocation(line: 819, column: 9, scope: !2074, inlinedAt: !2087)
!2119 = !DILocation(line: 794, column: 3, scope: !2063)
!2120 = !DILocation(line: 804, column: 33, scope: !2074)
!2121 = !DILocation(line: 804, column: 45, scope: !2074)
!2122 = !DILocation(line: 804, column: 62, scope: !2074)
!2123 = !DILocation(line: 805, column: 51, scope: !2074)
!2124 = !DILocation(line: 807, column: 37, scope: !2074)
!2125 = !DILocation(line: 807, column: 33, scope: !2074)
!2126 = !DILocation(line: 808, column: 11, scope: !2074)
!2127 = !DILocation(line: 808, column: 7, scope: !2074)
!2128 = !DILocation(line: 810, column: 18, scope: !2074)
!2129 = !DILocation(line: 810, column: 27, scope: !2074)
!2130 = !DILocation(line: 810, column: 24, scope: !2074)
!2131 = !DILocation(line: 810, column: 7, scope: !2074)
!2132 = !DILocation(line: 811, column: 69, scope: !2074)
!2133 = !DILocation(line: 812, column: 53, scope: !2074)
!2134 = !DILocation(line: 813, column: 49, scope: !2074)
!2135 = !DILocation(line: 814, column: 49, scope: !2074)
!2136 = !DILocation(line: 811, column: 20, scope: !2074)
!2137 = !DILocation(line: 814, column: 62, scope: !2074)
!2138 = !DILocation(line: 811, column: 10, scope: !2074)
!2139 = !DILocation(line: 220, column: 20, scope: !2106, inlinedAt: !2140)
!2140 = distinct !DILocation(line: 815, column: 15, scope: !2074)
!2141 = !DILocation(line: 222, column: 10, scope: !2106, inlinedAt: !2140)
!2142 = !DILocation(line: 815, column: 9, scope: !2074)
!2143 = !DILocation(line: 816, column: 60, scope: !2074)
!2144 = !DILocation(line: 818, column: 32, scope: !2074)
!2145 = !DILocation(line: 818, column: 47, scope: !2074)
!2146 = !DILocation(line: 816, column: 3, scope: !2074)
!2147 = !DILocation(line: 819, column: 9, scope: !2074)
!2148 = !DILocation(line: 820, column: 7, scope: !2074)
!2149 = !DILocation(line: 821, column: 11, scope: !2150)
!2150 = distinct !DILexicalBlock(scope: !2074, file: !135, line: 820, column: 7)
!2151 = !{!2152, !2152, i64 0}
!2152 = !{!"long", !593, i64 0}
!2153 = !DILocation(line: 821, column: 5, scope: !2150)
!2154 = !DILocation(line: 822, column: 3, scope: !2074)
!2155 = distinct !DISubprogram(name: "quotearg_free", scope: !135, file: !135, line: 840, type: !607, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !2156)
!2156 = !{!2157, !2158}
!2157 = !DILocalVariable(name: "sv", scope: !2155, file: !135, line: 842, type: !160)
!2158 = !DILocalVariable(name: "i", scope: !2155, file: !135, line: 843, type: !47)
!2159 = !DILocation(line: 842, column: 24, scope: !2155)
!2160 = !DILocation(line: 842, column: 19, scope: !2155)
!2161 = !DILocation(line: 843, column: 7, scope: !2155)
!2162 = !DILocation(line: 844, column: 19, scope: !2163)
!2163 = !DILexicalBlockFile(scope: !2164, file: !135, discriminator: 1)
!2164 = distinct !DILexicalBlock(scope: !2165, file: !135, line: 844, column: 3)
!2165 = distinct !DILexicalBlock(scope: !2155, file: !135, line: 844, column: 3)
!2166 = !DILocation(line: 844, column: 17, scope: !2163)
!2167 = !DILocation(line: 844, column: 3, scope: !2168)
!2168 = !DILexicalBlockFile(scope: !2165, file: !135, discriminator: 1)
!2169 = !DILocation(line: 845, column: 17, scope: !2164)
!2170 = !{!2171, !592, i64 8}
!2171 = !{!"slotvec", !2152, i64 0, !592, i64 8}
!2172 = !DILocation(line: 845, column: 5, scope: !2164)
!2173 = !DILocation(line: 844, column: 28, scope: !2174)
!2174 = !DILexicalBlockFile(scope: !2164, file: !135, discriminator: 2)
!2175 = distinct !{!2175, !2176, !2177}
!2176 = !DILocation(line: 844, column: 3, scope: !2165)
!2177 = !DILocation(line: 845, column: 20, scope: !2165)
!2178 = !DILocation(line: 846, column: 13, scope: !2179)
!2179 = distinct !DILexicalBlock(scope: !2155, file: !135, line: 846, column: 7)
!2180 = !DILocation(line: 846, column: 17, scope: !2179)
!2181 = !DILocation(line: 846, column: 7, scope: !2155)
!2182 = !DILocation(line: 848, column: 7, scope: !2183)
!2183 = distinct !DILexicalBlock(scope: !2179, file: !135, line: 847, column: 5)
!2184 = !DILocation(line: 849, column: 21, scope: !2183)
!2185 = !{!2171, !2152, i64 0}
!2186 = !DILocation(line: 850, column: 20, scope: !2183)
!2187 = !DILocation(line: 851, column: 5, scope: !2183)
!2188 = !DILocation(line: 852, column: 10, scope: !2189)
!2189 = distinct !DILexicalBlock(scope: !2155, file: !135, line: 852, column: 7)
!2190 = !DILocation(line: 852, column: 7, scope: !2155)
!2191 = !DILocation(line: 854, column: 13, scope: !2192)
!2192 = distinct !DILexicalBlock(scope: !2189, file: !135, line: 853, column: 5)
!2193 = !DILocation(line: 854, column: 7, scope: !2192)
!2194 = !DILocation(line: 855, column: 15, scope: !2192)
!2195 = !DILocation(line: 856, column: 5, scope: !2192)
!2196 = !DILocation(line: 857, column: 10, scope: !2155)
!2197 = !DILocation(line: 858, column: 1, scope: !2155)
!2198 = distinct !DISubprogram(name: "quotearg_n", scope: !135, file: !135, line: 922, type: !2199, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !2201)
!2199 = !DISubroutineType(types: !2200)
!2200 = !{!6, !47, !17}
!2201 = !{!2202, !2203}
!2202 = !DILocalVariable(name: "n", arg: 1, scope: !2198, file: !135, line: 922, type: !47)
!2203 = !DILocalVariable(name: "arg", arg: 2, scope: !2198, file: !135, line: 922, type: !17)
!2204 = !DILocation(line: 922, column: 17, scope: !2198)
!2205 = !DILocation(line: 922, column: 32, scope: !2198)
!2206 = !DILocation(line: 924, column: 10, scope: !2198)
!2207 = !DILocation(line: 924, column: 3, scope: !2198)
!2208 = distinct !DISubprogram(name: "quotearg_n_options", scope: !135, file: !135, line: 869, type: !2209, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !2211)
!2209 = !DISubroutineType(types: !2210)
!2210 = !{!6, !47, !17, !9, !903}
!2211 = !{!2212, !2213, !2214, !2215, !2216, !2217, !2218, !2221, !2223, !2224, !2225}
!2212 = !DILocalVariable(name: "n", arg: 1, scope: !2208, file: !135, line: 869, type: !47)
!2213 = !DILocalVariable(name: "arg", arg: 2, scope: !2208, file: !135, line: 869, type: !17)
!2214 = !DILocalVariable(name: "argsize", arg: 3, scope: !2208, file: !135, line: 869, type: !9)
!2215 = !DILocalVariable(name: "options", arg: 4, scope: !2208, file: !135, line: 870, type: !903)
!2216 = !DILocalVariable(name: "e", scope: !2208, file: !135, line: 872, type: !47)
!2217 = !DILocalVariable(name: "sv", scope: !2208, file: !135, line: 874, type: !160)
!2218 = !DILocalVariable(name: "preallocated", scope: !2219, file: !135, line: 881, type: !76)
!2219 = distinct !DILexicalBlock(scope: !2220, file: !135, line: 880, column: 5)
!2220 = distinct !DILexicalBlock(scope: !2208, file: !135, line: 879, column: 7)
!2221 = !DILocalVariable(name: "size", scope: !2222, file: !135, line: 894, type: !9)
!2222 = distinct !DILexicalBlock(scope: !2208, file: !135, line: 893, column: 3)
!2223 = !DILocalVariable(name: "val", scope: !2222, file: !135, line: 895, type: !6)
!2224 = !DILocalVariable(name: "flags", scope: !2222, file: !135, line: 897, type: !47)
!2225 = !DILocalVariable(name: "qsize", scope: !2222, file: !135, line: 898, type: !9)
!2226 = !DILocation(line: 869, column: 25, scope: !2208)
!2227 = !DILocation(line: 869, column: 40, scope: !2208)
!2228 = !DILocation(line: 869, column: 52, scope: !2208)
!2229 = !DILocation(line: 870, column: 51, scope: !2208)
!2230 = !DILocation(line: 872, column: 11, scope: !2208)
!2231 = !DILocation(line: 872, column: 7, scope: !2208)
!2232 = !DILocation(line: 874, column: 24, scope: !2208)
!2233 = !DILocation(line: 874, column: 19, scope: !2208)
!2234 = !DILocation(line: 876, column: 9, scope: !2235)
!2235 = distinct !DILexicalBlock(scope: !2208, file: !135, line: 876, column: 7)
!2236 = !DILocation(line: 876, column: 7, scope: !2208)
!2237 = !DILocation(line: 877, column: 5, scope: !2235)
!2238 = !DILocation(line: 879, column: 7, scope: !2220)
!2239 = !DILocation(line: 879, column: 14, scope: !2220)
!2240 = !DILocation(line: 879, column: 7, scope: !2208)
!2241 = !DILocation(line: 881, column: 31, scope: !2219)
!2242 = !DILocation(line: 883, column: 67, scope: !2243)
!2243 = distinct !DILexicalBlock(scope: !2219, file: !135, line: 883, column: 11)
!2244 = !DILocation(line: 883, column: 11, scope: !2219)
!2245 = !DILocation(line: 884, column: 9, scope: !2243)
!2246 = !DILocation(line: 886, column: 32, scope: !2247)
!2247 = !DILexicalBlockFile(scope: !2219, file: !135, discriminator: 3)
!2248 = !DILocation(line: 886, column: 61, scope: !2247)
!2249 = !DILocation(line: 886, column: 58, scope: !2247)
!2250 = !DILocation(line: 886, column: 66, scope: !2247)
!2251 = !DILocation(line: 886, column: 22, scope: !2247)
!2252 = !DILocation(line: 886, column: 15, scope: !2247)
!2253 = !DILocation(line: 887, column: 11, scope: !2219)
!2254 = !DILocation(line: 888, column: 15, scope: !2255)
!2255 = distinct !DILexicalBlock(scope: !2219, file: !135, line: 887, column: 11)
!2256 = !{i64 0, i64 8, !2151, i64 8, i64 8, !591}
!2257 = !DILocation(line: 888, column: 9, scope: !2255)
!2258 = !DILocation(line: 889, column: 20, scope: !2219)
!2259 = !DILocation(line: 889, column: 18, scope: !2219)
!2260 = !DILocation(line: 889, column: 7, scope: !2219)
!2261 = !DILocation(line: 889, column: 38, scope: !2219)
!2262 = !DILocation(line: 889, column: 31, scope: !2219)
!2263 = !DILocation(line: 889, column: 48, scope: !2219)
!2264 = !DILocation(line: 890, column: 14, scope: !2219)
!2265 = !DILocation(line: 891, column: 5, scope: !2219)
!2266 = !DILocation(line: 894, column: 19, scope: !2222)
!2267 = !DILocation(line: 894, column: 25, scope: !2222)
!2268 = !DILocation(line: 894, column: 12, scope: !2222)
!2269 = !DILocation(line: 895, column: 23, scope: !2222)
!2270 = !DILocation(line: 895, column: 11, scope: !2222)
!2271 = !DILocation(line: 897, column: 26, scope: !2222)
!2272 = !DILocation(line: 897, column: 32, scope: !2222)
!2273 = !DILocation(line: 897, column: 9, scope: !2222)
!2274 = !DILocation(line: 899, column: 55, scope: !2222)
!2275 = !DILocation(line: 900, column: 46, scope: !2222)
!2276 = !DILocation(line: 901, column: 55, scope: !2222)
!2277 = !DILocation(line: 902, column: 55, scope: !2222)
!2278 = !DILocation(line: 898, column: 20, scope: !2222)
!2279 = !DILocation(line: 898, column: 12, scope: !2222)
!2280 = !DILocation(line: 904, column: 14, scope: !2281)
!2281 = distinct !DILexicalBlock(scope: !2222, file: !135, line: 904, column: 9)
!2282 = !DILocation(line: 904, column: 9, scope: !2222)
!2283 = !DILocation(line: 906, column: 35, scope: !2284)
!2284 = distinct !DILexicalBlock(scope: !2281, file: !135, line: 905, column: 7)
!2285 = !DILocation(line: 906, column: 20, scope: !2284)
!2286 = !DILocation(line: 907, column: 17, scope: !2287)
!2287 = distinct !DILexicalBlock(scope: !2284, file: !135, line: 907, column: 13)
!2288 = !DILocation(line: 907, column: 13, scope: !2284)
!2289 = !DILocation(line: 908, column: 11, scope: !2287)
!2290 = !DILocation(line: 220, column: 20, scope: !2106, inlinedAt: !2291)
!2291 = distinct !DILocation(line: 909, column: 27, scope: !2284)
!2292 = !DILocation(line: 222, column: 10, scope: !2106, inlinedAt: !2291)
!2293 = !DILocation(line: 909, column: 19, scope: !2284)
!2294 = !DILocation(line: 910, column: 69, scope: !2284)
!2295 = !DILocation(line: 912, column: 44, scope: !2284)
!2296 = !DILocation(line: 913, column: 44, scope: !2284)
!2297 = !DILocation(line: 910, column: 9, scope: !2284)
!2298 = !DILocation(line: 914, column: 7, scope: !2284)
!2299 = !DILocation(line: 916, column: 11, scope: !2222)
!2300 = !DILocation(line: 917, column: 5, scope: !2222)
!2301 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !135, file: !135, line: 928, type: !2302, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !2304)
!2302 = !DISubroutineType(types: !2303)
!2303 = !{!6, !47, !17, !9}
!2304 = !{!2305, !2306, !2307}
!2305 = !DILocalVariable(name: "n", arg: 1, scope: !2301, file: !135, line: 928, type: !47)
!2306 = !DILocalVariable(name: "arg", arg: 2, scope: !2301, file: !135, line: 928, type: !17)
!2307 = !DILocalVariable(name: "argsize", arg: 3, scope: !2301, file: !135, line: 928, type: !9)
!2308 = !DILocation(line: 928, column: 21, scope: !2301)
!2309 = !DILocation(line: 928, column: 36, scope: !2301)
!2310 = !DILocation(line: 928, column: 48, scope: !2301)
!2311 = !DILocation(line: 930, column: 10, scope: !2301)
!2312 = !DILocation(line: 930, column: 3, scope: !2301)
!2313 = distinct !DISubprogram(name: "quotearg", scope: !135, file: !135, line: 934, type: !2314, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !2316)
!2314 = !DISubroutineType(types: !2315)
!2315 = !{!6, !17}
!2316 = !{!2317}
!2317 = !DILocalVariable(name: "arg", arg: 1, scope: !2313, file: !135, line: 934, type: !17)
!2318 = !DILocation(line: 934, column: 23, scope: !2313)
!2319 = !DILocation(line: 922, column: 17, scope: !2198, inlinedAt: !2320)
!2320 = distinct !DILocation(line: 936, column: 10, scope: !2313)
!2321 = !DILocation(line: 922, column: 32, scope: !2198, inlinedAt: !2320)
!2322 = !DILocation(line: 924, column: 10, scope: !2198, inlinedAt: !2320)
!2323 = !DILocation(line: 936, column: 3, scope: !2313)
!2324 = distinct !DISubprogram(name: "quotearg_mem", scope: !135, file: !135, line: 940, type: !2325, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !2327)
!2325 = !DISubroutineType(types: !2326)
!2326 = !{!6, !17, !9}
!2327 = !{!2328, !2329}
!2328 = !DILocalVariable(name: "arg", arg: 1, scope: !2324, file: !135, line: 940, type: !17)
!2329 = !DILocalVariable(name: "argsize", arg: 2, scope: !2324, file: !135, line: 940, type: !9)
!2330 = !DILocation(line: 940, column: 27, scope: !2324)
!2331 = !DILocation(line: 940, column: 39, scope: !2324)
!2332 = !DILocation(line: 928, column: 21, scope: !2301, inlinedAt: !2333)
!2333 = distinct !DILocation(line: 942, column: 10, scope: !2324)
!2334 = !DILocation(line: 928, column: 36, scope: !2301, inlinedAt: !2333)
!2335 = !DILocation(line: 928, column: 48, scope: !2301, inlinedAt: !2333)
!2336 = !DILocation(line: 930, column: 10, scope: !2301, inlinedAt: !2333)
!2337 = !DILocation(line: 942, column: 3, scope: !2324)
!2338 = distinct !DISubprogram(name: "quotearg_n_style", scope: !135, file: !135, line: 946, type: !2339, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !2341)
!2339 = !DISubroutineType(types: !2340)
!2340 = !{!6, !47, !96, !17}
!2341 = !{!2342, !2343, !2344, !2345}
!2342 = !DILocalVariable(name: "n", arg: 1, scope: !2338, file: !135, line: 946, type: !47)
!2343 = !DILocalVariable(name: "s", arg: 2, scope: !2338, file: !135, line: 946, type: !96)
!2344 = !DILocalVariable(name: "arg", arg: 3, scope: !2338, file: !135, line: 946, type: !17)
!2345 = !DILocalVariable(name: "o", scope: !2338, file: !135, line: 948, type: !904)
!2346 = !DILocalVariable(name: "o", scope: !2347, file: !135, line: 187, type: !142)
!2347 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !135, file: !135, line: 185, type: !2348, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !2350)
!2348 = !DISubroutineType(types: !2349)
!2349 = !{!142, !96}
!2350 = !{!2351, !2346}
!2351 = !DILocalVariable(name: "style", arg: 1, scope: !2347, file: !135, line: 185, type: !96)
!2352 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!2353 = !DILocation(line: 187, column: 26, scope: !2347, inlinedAt: !2354)
!2354 = distinct !DILocation(line: 948, column: 36, scope: !2338)
!2355 = !DILocation(line: 946, column: 23, scope: !2338)
!2356 = !DILocation(line: 946, column: 45, scope: !2338)
!2357 = !DILocation(line: 946, column: 60, scope: !2338)
!2358 = !DILocation(line: 948, column: 3, scope: !2338)
!2359 = !DILocation(line: 948, column: 32, scope: !2338)
!2360 = !DILocation(line: 185, column: 48, scope: !2347, inlinedAt: !2354)
!2361 = !DILocation(line: 187, column: 3, scope: !2347, inlinedAt: !2354)
!2362 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!2363 = !DILocation(line: 188, column: 13, scope: !2364, inlinedAt: !2354)
!2364 = distinct !DILexicalBlock(scope: !2347, file: !135, line: 188, column: 7)
!2365 = !DILocation(line: 188, column: 7, scope: !2347, inlinedAt: !2354)
!2366 = !DILocation(line: 189, column: 5, scope: !2364, inlinedAt: !2354)
!2367 = !{!2368}
!2368 = distinct !{!2368, !2369, !"quoting_options_from_style: argument 0"}
!2369 = distinct !{!2369, !"quoting_options_from_style"}
!2370 = !DILocation(line: 191, column: 10, scope: !2347, inlinedAt: !2354)
!2371 = !DILocation(line: 192, column: 1, scope: !2347, inlinedAt: !2354)
!2372 = !DILocation(line: 949, column: 10, scope: !2338)
!2373 = !DILocation(line: 950, column: 1, scope: !2338)
!2374 = !DILocation(line: 949, column: 3, scope: !2338)
!2375 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !135, file: !135, line: 953, type: !2376, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !2378)
!2376 = !DISubroutineType(types: !2377)
!2377 = !{!6, !47, !96, !17, !9}
!2378 = !{!2379, !2380, !2381, !2382, !2383}
!2379 = !DILocalVariable(name: "n", arg: 1, scope: !2375, file: !135, line: 953, type: !47)
!2380 = !DILocalVariable(name: "s", arg: 2, scope: !2375, file: !135, line: 953, type: !96)
!2381 = !DILocalVariable(name: "arg", arg: 3, scope: !2375, file: !135, line: 954, type: !17)
!2382 = !DILocalVariable(name: "argsize", arg: 4, scope: !2375, file: !135, line: 954, type: !9)
!2383 = !DILocalVariable(name: "o", scope: !2375, file: !135, line: 956, type: !904)
!2384 = !DILocation(line: 187, column: 26, scope: !2347, inlinedAt: !2385)
!2385 = distinct !DILocation(line: 956, column: 36, scope: !2375)
!2386 = !DILocation(line: 953, column: 27, scope: !2375)
!2387 = !DILocation(line: 953, column: 49, scope: !2375)
!2388 = !DILocation(line: 954, column: 35, scope: !2375)
!2389 = !DILocation(line: 954, column: 47, scope: !2375)
!2390 = !DILocation(line: 956, column: 3, scope: !2375)
!2391 = !DILocation(line: 956, column: 32, scope: !2375)
!2392 = !DILocation(line: 185, column: 48, scope: !2347, inlinedAt: !2385)
!2393 = !DILocation(line: 187, column: 3, scope: !2347, inlinedAt: !2385)
!2394 = !DILocation(line: 188, column: 13, scope: !2364, inlinedAt: !2385)
!2395 = !DILocation(line: 188, column: 7, scope: !2347, inlinedAt: !2385)
!2396 = !DILocation(line: 189, column: 5, scope: !2364, inlinedAt: !2385)
!2397 = !{!2398}
!2398 = distinct !{!2398, !2399, !"quoting_options_from_style: argument 0"}
!2399 = distinct !{!2399, !"quoting_options_from_style"}
!2400 = !DILocation(line: 191, column: 10, scope: !2347, inlinedAt: !2385)
!2401 = !DILocation(line: 192, column: 1, scope: !2347, inlinedAt: !2385)
!2402 = !DILocation(line: 957, column: 10, scope: !2375)
!2403 = !DILocation(line: 958, column: 1, scope: !2375)
!2404 = !DILocation(line: 957, column: 3, scope: !2375)
!2405 = distinct !DISubprogram(name: "quotearg_style", scope: !135, file: !135, line: 961, type: !2406, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !2408)
!2406 = !DISubroutineType(types: !2407)
!2407 = !{!6, !96, !17}
!2408 = !{!2409, !2410}
!2409 = !DILocalVariable(name: "s", arg: 1, scope: !2405, file: !135, line: 961, type: !96)
!2410 = !DILocalVariable(name: "arg", arg: 2, scope: !2405, file: !135, line: 961, type: !17)
!2411 = !DILocation(line: 187, column: 26, scope: !2347, inlinedAt: !2412)
!2412 = distinct !DILocation(line: 948, column: 36, scope: !2338, inlinedAt: !2413)
!2413 = distinct !DILocation(line: 963, column: 10, scope: !2405)
!2414 = !DILocation(line: 961, column: 36, scope: !2405)
!2415 = !DILocation(line: 961, column: 51, scope: !2405)
!2416 = !DILocation(line: 946, column: 23, scope: !2338, inlinedAt: !2413)
!2417 = !DILocation(line: 946, column: 45, scope: !2338, inlinedAt: !2413)
!2418 = !DILocation(line: 946, column: 60, scope: !2338, inlinedAt: !2413)
!2419 = !DILocation(line: 948, column: 3, scope: !2338, inlinedAt: !2413)
!2420 = !DILocation(line: 948, column: 32, scope: !2338, inlinedAt: !2413)
!2421 = !DILocation(line: 185, column: 48, scope: !2347, inlinedAt: !2412)
!2422 = !DILocation(line: 187, column: 3, scope: !2347, inlinedAt: !2412)
!2423 = !DILocation(line: 188, column: 13, scope: !2364, inlinedAt: !2412)
!2424 = !DILocation(line: 188, column: 7, scope: !2347, inlinedAt: !2412)
!2425 = !DILocation(line: 189, column: 5, scope: !2364, inlinedAt: !2412)
!2426 = !{!2427}
!2427 = distinct !{!2427, !2428, !"quoting_options_from_style: argument 0"}
!2428 = distinct !{!2428, !"quoting_options_from_style"}
!2429 = !DILocation(line: 191, column: 10, scope: !2347, inlinedAt: !2412)
!2430 = !DILocation(line: 192, column: 1, scope: !2347, inlinedAt: !2412)
!2431 = !DILocation(line: 949, column: 10, scope: !2338, inlinedAt: !2413)
!2432 = !DILocation(line: 950, column: 1, scope: !2338, inlinedAt: !2413)
!2433 = !DILocation(line: 963, column: 3, scope: !2405)
!2434 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !135, file: !135, line: 967, type: !2435, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !2437)
!2435 = !DISubroutineType(types: !2436)
!2436 = !{!6, !96, !17, !9}
!2437 = !{!2438, !2439, !2440}
!2438 = !DILocalVariable(name: "s", arg: 1, scope: !2434, file: !135, line: 967, type: !96)
!2439 = !DILocalVariable(name: "arg", arg: 2, scope: !2434, file: !135, line: 967, type: !17)
!2440 = !DILocalVariable(name: "argsize", arg: 3, scope: !2434, file: !135, line: 967, type: !9)
!2441 = !DILocation(line: 187, column: 26, scope: !2347, inlinedAt: !2442)
!2442 = distinct !DILocation(line: 956, column: 36, scope: !2375, inlinedAt: !2443)
!2443 = distinct !DILocation(line: 969, column: 10, scope: !2434)
!2444 = !DILocation(line: 967, column: 40, scope: !2434)
!2445 = !DILocation(line: 967, column: 55, scope: !2434)
!2446 = !DILocation(line: 967, column: 67, scope: !2434)
!2447 = !DILocation(line: 953, column: 27, scope: !2375, inlinedAt: !2443)
!2448 = !DILocation(line: 953, column: 49, scope: !2375, inlinedAt: !2443)
!2449 = !DILocation(line: 954, column: 35, scope: !2375, inlinedAt: !2443)
!2450 = !DILocation(line: 954, column: 47, scope: !2375, inlinedAt: !2443)
!2451 = !DILocation(line: 956, column: 3, scope: !2375, inlinedAt: !2443)
!2452 = !DILocation(line: 956, column: 32, scope: !2375, inlinedAt: !2443)
!2453 = !DILocation(line: 185, column: 48, scope: !2347, inlinedAt: !2442)
!2454 = !DILocation(line: 187, column: 3, scope: !2347, inlinedAt: !2442)
!2455 = !DILocation(line: 188, column: 13, scope: !2364, inlinedAt: !2442)
!2456 = !DILocation(line: 188, column: 7, scope: !2347, inlinedAt: !2442)
!2457 = !DILocation(line: 189, column: 5, scope: !2364, inlinedAt: !2442)
!2458 = !{!2459}
!2459 = distinct !{!2459, !2460, !"quoting_options_from_style: argument 0"}
!2460 = distinct !{!2460, !"quoting_options_from_style"}
!2461 = !DILocation(line: 191, column: 10, scope: !2347, inlinedAt: !2442)
!2462 = !DILocation(line: 192, column: 1, scope: !2347, inlinedAt: !2442)
!2463 = !DILocation(line: 957, column: 10, scope: !2375, inlinedAt: !2443)
!2464 = !DILocation(line: 958, column: 1, scope: !2375, inlinedAt: !2443)
!2465 = !DILocation(line: 969, column: 3, scope: !2434)
!2466 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !135, file: !135, line: 973, type: !2467, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !2469)
!2467 = !DISubroutineType(types: !2468)
!2468 = !{!6, !17, !9, !7}
!2469 = !{!2470, !2471, !2472, !2473}
!2470 = !DILocalVariable(name: "arg", arg: 1, scope: !2466, file: !135, line: 973, type: !17)
!2471 = !DILocalVariable(name: "argsize", arg: 2, scope: !2466, file: !135, line: 973, type: !9)
!2472 = !DILocalVariable(name: "ch", arg: 3, scope: !2466, file: !135, line: 973, type: !7)
!2473 = !DILocalVariable(name: "options", scope: !2466, file: !135, line: 975, type: !142)
!2474 = !DILocation(line: 973, column: 32, scope: !2466)
!2475 = !DILocation(line: 973, column: 44, scope: !2466)
!2476 = !DILocation(line: 973, column: 58, scope: !2466)
!2477 = !DILocation(line: 975, column: 3, scope: !2466)
!2478 = !DILocation(line: 976, column: 13, scope: !2466)
!2479 = !{i64 0, i64 4, !1138, i64 4, i64 4, !683, i64 8, i64 32, !1138, i64 40, i64 8, !591, i64 48, i64 8, !591}
!2480 = !DILocation(line: 975, column: 26, scope: !2466)
!2481 = !DILocation(line: 144, column: 43, scope: !927, inlinedAt: !2482)
!2482 = distinct !DILocation(line: 977, column: 3, scope: !2466)
!2483 = !DILocation(line: 144, column: 51, scope: !927, inlinedAt: !2482)
!2484 = !DILocation(line: 144, column: 58, scope: !927, inlinedAt: !2482)
!2485 = !DILocation(line: 146, column: 17, scope: !927, inlinedAt: !2482)
!2486 = !DILocation(line: 148, column: 62, scope: !945, inlinedAt: !2482)
!2487 = !DILocation(line: 148, column: 57, scope: !945, inlinedAt: !2482)
!2488 = !DILocation(line: 147, column: 17, scope: !927, inlinedAt: !2482)
!2489 = !DILocation(line: 149, column: 18, scope: !927, inlinedAt: !2482)
!2490 = !DILocation(line: 149, column: 15, scope: !927, inlinedAt: !2482)
!2491 = !DILocation(line: 149, column: 7, scope: !927, inlinedAt: !2482)
!2492 = !DILocation(line: 150, column: 12, scope: !927, inlinedAt: !2482)
!2493 = !DILocation(line: 150, column: 15, scope: !927, inlinedAt: !2482)
!2494 = !DILocation(line: 150, column: 25, scope: !927, inlinedAt: !2482)
!2495 = !DILocation(line: 150, column: 7, scope: !927, inlinedAt: !2482)
!2496 = !DILocation(line: 151, column: 18, scope: !927, inlinedAt: !2482)
!2497 = !DILocation(line: 151, column: 23, scope: !927, inlinedAt: !2482)
!2498 = !DILocation(line: 151, column: 6, scope: !927, inlinedAt: !2482)
!2499 = !DILocation(line: 978, column: 10, scope: !2466)
!2500 = !DILocation(line: 979, column: 1, scope: !2466)
!2501 = !DILocation(line: 978, column: 3, scope: !2466)
!2502 = distinct !DISubprogram(name: "quotearg_char", scope: !135, file: !135, line: 982, type: !2503, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !2505)
!2503 = !DISubroutineType(types: !2504)
!2504 = !{!6, !17, !7}
!2505 = !{!2506, !2507}
!2506 = !DILocalVariable(name: "arg", arg: 1, scope: !2502, file: !135, line: 982, type: !17)
!2507 = !DILocalVariable(name: "ch", arg: 2, scope: !2502, file: !135, line: 982, type: !7)
!2508 = !DILocation(line: 982, column: 28, scope: !2502)
!2509 = !DILocation(line: 982, column: 38, scope: !2502)
!2510 = !DILocation(line: 973, column: 32, scope: !2466, inlinedAt: !2511)
!2511 = distinct !DILocation(line: 984, column: 10, scope: !2502)
!2512 = !DILocation(line: 973, column: 44, scope: !2466, inlinedAt: !2511)
!2513 = !DILocation(line: 973, column: 58, scope: !2466, inlinedAt: !2511)
!2514 = !DILocation(line: 975, column: 3, scope: !2466, inlinedAt: !2511)
!2515 = !DILocation(line: 976, column: 13, scope: !2466, inlinedAt: !2511)
!2516 = !DILocation(line: 975, column: 26, scope: !2466, inlinedAt: !2511)
!2517 = !DILocation(line: 144, column: 43, scope: !927, inlinedAt: !2518)
!2518 = distinct !DILocation(line: 977, column: 3, scope: !2466, inlinedAt: !2511)
!2519 = !DILocation(line: 144, column: 51, scope: !927, inlinedAt: !2518)
!2520 = !DILocation(line: 144, column: 58, scope: !927, inlinedAt: !2518)
!2521 = !DILocation(line: 146, column: 17, scope: !927, inlinedAt: !2518)
!2522 = !DILocation(line: 148, column: 62, scope: !945, inlinedAt: !2518)
!2523 = !DILocation(line: 148, column: 57, scope: !945, inlinedAt: !2518)
!2524 = !DILocation(line: 147, column: 17, scope: !927, inlinedAt: !2518)
!2525 = !DILocation(line: 149, column: 18, scope: !927, inlinedAt: !2518)
!2526 = !DILocation(line: 149, column: 15, scope: !927, inlinedAt: !2518)
!2527 = !DILocation(line: 149, column: 7, scope: !927, inlinedAt: !2518)
!2528 = !DILocation(line: 150, column: 12, scope: !927, inlinedAt: !2518)
!2529 = !DILocation(line: 150, column: 15, scope: !927, inlinedAt: !2518)
!2530 = !DILocation(line: 150, column: 25, scope: !927, inlinedAt: !2518)
!2531 = !DILocation(line: 150, column: 7, scope: !927, inlinedAt: !2518)
!2532 = !DILocation(line: 151, column: 18, scope: !927, inlinedAt: !2518)
!2533 = !DILocation(line: 151, column: 23, scope: !927, inlinedAt: !2518)
!2534 = !DILocation(line: 151, column: 6, scope: !927, inlinedAt: !2518)
!2535 = !DILocation(line: 978, column: 10, scope: !2466, inlinedAt: !2511)
!2536 = !DILocation(line: 979, column: 1, scope: !2466, inlinedAt: !2511)
!2537 = !DILocation(line: 984, column: 3, scope: !2502)
!2538 = distinct !DISubprogram(name: "quotearg_colon", scope: !135, file: !135, line: 988, type: !2314, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !2539)
!2539 = !{!2540}
!2540 = !DILocalVariable(name: "arg", arg: 1, scope: !2538, file: !135, line: 988, type: !17)
!2541 = !DILocation(line: 988, column: 29, scope: !2538)
!2542 = !DILocation(line: 982, column: 28, scope: !2502, inlinedAt: !2543)
!2543 = distinct !DILocation(line: 990, column: 10, scope: !2538)
!2544 = !DILocation(line: 982, column: 38, scope: !2502, inlinedAt: !2543)
!2545 = !DILocation(line: 973, column: 32, scope: !2466, inlinedAt: !2546)
!2546 = distinct !DILocation(line: 984, column: 10, scope: !2502, inlinedAt: !2543)
!2547 = !DILocation(line: 973, column: 44, scope: !2466, inlinedAt: !2546)
!2548 = !DILocation(line: 973, column: 58, scope: !2466, inlinedAt: !2546)
!2549 = !DILocation(line: 975, column: 3, scope: !2466, inlinedAt: !2546)
!2550 = !DILocation(line: 976, column: 13, scope: !2466, inlinedAt: !2546)
!2551 = !DILocation(line: 975, column: 26, scope: !2466, inlinedAt: !2546)
!2552 = !DILocation(line: 144, column: 43, scope: !927, inlinedAt: !2553)
!2553 = distinct !DILocation(line: 977, column: 3, scope: !2466, inlinedAt: !2546)
!2554 = !DILocation(line: 144, column: 51, scope: !927, inlinedAt: !2553)
!2555 = !DILocation(line: 144, column: 58, scope: !927, inlinedAt: !2553)
!2556 = !DILocation(line: 146, column: 17, scope: !927, inlinedAt: !2553)
!2557 = !DILocation(line: 148, column: 57, scope: !945, inlinedAt: !2553)
!2558 = !DILocation(line: 147, column: 17, scope: !927, inlinedAt: !2553)
!2559 = !DILocation(line: 149, column: 7, scope: !927, inlinedAt: !2553)
!2560 = !DILocation(line: 150, column: 12, scope: !927, inlinedAt: !2553)
!2561 = !DILocation(line: 151, column: 6, scope: !927, inlinedAt: !2553)
!2562 = !DILocation(line: 978, column: 10, scope: !2466, inlinedAt: !2546)
!2563 = !DILocation(line: 979, column: 1, scope: !2466, inlinedAt: !2546)
!2564 = !DILocation(line: 990, column: 3, scope: !2538)
!2565 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !135, file: !135, line: 994, type: !2325, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !2566)
!2566 = !{!2567, !2568}
!2567 = !DILocalVariable(name: "arg", arg: 1, scope: !2565, file: !135, line: 994, type: !17)
!2568 = !DILocalVariable(name: "argsize", arg: 2, scope: !2565, file: !135, line: 994, type: !9)
!2569 = !DILocation(line: 994, column: 33, scope: !2565)
!2570 = !DILocation(line: 994, column: 45, scope: !2565)
!2571 = !DILocation(line: 973, column: 32, scope: !2466, inlinedAt: !2572)
!2572 = distinct !DILocation(line: 996, column: 10, scope: !2565)
!2573 = !DILocation(line: 973, column: 44, scope: !2466, inlinedAt: !2572)
!2574 = !DILocation(line: 973, column: 58, scope: !2466, inlinedAt: !2572)
!2575 = !DILocation(line: 975, column: 3, scope: !2466, inlinedAt: !2572)
!2576 = !DILocation(line: 976, column: 13, scope: !2466, inlinedAt: !2572)
!2577 = !DILocation(line: 975, column: 26, scope: !2466, inlinedAt: !2572)
!2578 = !DILocation(line: 144, column: 43, scope: !927, inlinedAt: !2579)
!2579 = distinct !DILocation(line: 977, column: 3, scope: !2466, inlinedAt: !2572)
!2580 = !DILocation(line: 144, column: 51, scope: !927, inlinedAt: !2579)
!2581 = !DILocation(line: 144, column: 58, scope: !927, inlinedAt: !2579)
!2582 = !DILocation(line: 146, column: 17, scope: !927, inlinedAt: !2579)
!2583 = !DILocation(line: 148, column: 57, scope: !945, inlinedAt: !2579)
!2584 = !DILocation(line: 147, column: 17, scope: !927, inlinedAt: !2579)
!2585 = !DILocation(line: 149, column: 7, scope: !927, inlinedAt: !2579)
!2586 = !DILocation(line: 150, column: 12, scope: !927, inlinedAt: !2579)
!2587 = !DILocation(line: 151, column: 6, scope: !927, inlinedAt: !2579)
!2588 = !DILocation(line: 978, column: 10, scope: !2466, inlinedAt: !2572)
!2589 = !DILocation(line: 979, column: 1, scope: !2466, inlinedAt: !2572)
!2590 = !DILocation(line: 996, column: 3, scope: !2565)
!2591 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !135, file: !135, line: 1000, type: !2339, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !2592)
!2592 = !{!2593, !2594, !2595, !2596}
!2593 = !DILocalVariable(name: "n", arg: 1, scope: !2591, file: !135, line: 1000, type: !47)
!2594 = !DILocalVariable(name: "s", arg: 2, scope: !2591, file: !135, line: 1000, type: !96)
!2595 = !DILocalVariable(name: "arg", arg: 3, scope: !2591, file: !135, line: 1000, type: !17)
!2596 = !DILocalVariable(name: "options", scope: !2591, file: !135, line: 1002, type: !142)
!2597 = !DILocation(line: 187, column: 26, scope: !2347, inlinedAt: !2598)
!2598 = distinct !DILocation(line: 1003, column: 13, scope: !2591)
!2599 = !DILocation(line: 1000, column: 29, scope: !2591)
!2600 = !DILocation(line: 1000, column: 51, scope: !2591)
!2601 = !DILocation(line: 1000, column: 66, scope: !2591)
!2602 = !DILocation(line: 1002, column: 3, scope: !2591)
!2603 = !DILocation(line: 185, column: 48, scope: !2347, inlinedAt: !2598)
!2604 = !DILocation(line: 187, column: 3, scope: !2347, inlinedAt: !2598)
!2605 = !DILocation(line: 188, column: 13, scope: !2364, inlinedAt: !2598)
!2606 = !DILocation(line: 188, column: 7, scope: !2347, inlinedAt: !2598)
!2607 = !DILocation(line: 189, column: 5, scope: !2364, inlinedAt: !2598)
!2608 = !{!2609}
!2609 = distinct !{!2609, !2610, !"quoting_options_from_style: argument 0"}
!2610 = distinct !{!2610, !"quoting_options_from_style"}
!2611 = !DILocation(line: 191, column: 10, scope: !2347, inlinedAt: !2598)
!2612 = !DILocation(line: 192, column: 1, scope: !2347, inlinedAt: !2598)
!2613 = !DILocation(line: 1003, column: 13, scope: !2591)
!2614 = !DILocation(line: 1002, column: 26, scope: !2591)
!2615 = !DILocation(line: 144, column: 43, scope: !927, inlinedAt: !2616)
!2616 = distinct !DILocation(line: 1004, column: 3, scope: !2591)
!2617 = !DILocation(line: 144, column: 51, scope: !927, inlinedAt: !2616)
!2618 = !DILocation(line: 144, column: 58, scope: !927, inlinedAt: !2616)
!2619 = !DILocation(line: 146, column: 17, scope: !927, inlinedAt: !2616)
!2620 = !DILocation(line: 148, column: 57, scope: !945, inlinedAt: !2616)
!2621 = !DILocation(line: 147, column: 17, scope: !927, inlinedAt: !2616)
!2622 = !DILocation(line: 149, column: 7, scope: !927, inlinedAt: !2616)
!2623 = !DILocation(line: 150, column: 12, scope: !927, inlinedAt: !2616)
!2624 = !DILocation(line: 151, column: 6, scope: !927, inlinedAt: !2616)
!2625 = !DILocation(line: 1005, column: 10, scope: !2591)
!2626 = !DILocation(line: 1006, column: 1, scope: !2591)
!2627 = !DILocation(line: 1005, column: 3, scope: !2591)
!2628 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !135, file: !135, line: 1009, type: !2629, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !2631)
!2629 = !DISubroutineType(types: !2630)
!2630 = !{!6, !47, !17, !17, !17}
!2631 = !{!2632, !2633, !2634, !2635}
!2632 = !DILocalVariable(name: "n", arg: 1, scope: !2628, file: !135, line: 1009, type: !47)
!2633 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2628, file: !135, line: 1009, type: !17)
!2634 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2628, file: !135, line: 1010, type: !17)
!2635 = !DILocalVariable(name: "arg", arg: 4, scope: !2628, file: !135, line: 1010, type: !17)
!2636 = !DILocation(line: 1009, column: 24, scope: !2628)
!2637 = !DILocation(line: 1009, column: 39, scope: !2628)
!2638 = !DILocation(line: 1010, column: 32, scope: !2628)
!2639 = !DILocation(line: 1010, column: 57, scope: !2628)
!2640 = !DILocalVariable(name: "n", arg: 1, scope: !2641, file: !135, line: 1017, type: !47)
!2641 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !135, file: !135, line: 1017, type: !2642, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !2644)
!2642 = !DISubroutineType(types: !2643)
!2643 = !{!6, !47, !17, !17, !17, !9}
!2644 = !{!2640, !2645, !2646, !2647, !2648, !2649}
!2645 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2641, file: !135, line: 1017, type: !17)
!2646 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2641, file: !135, line: 1018, type: !17)
!2647 = !DILocalVariable(name: "arg", arg: 4, scope: !2641, file: !135, line: 1019, type: !17)
!2648 = !DILocalVariable(name: "argsize", arg: 5, scope: !2641, file: !135, line: 1019, type: !9)
!2649 = !DILocalVariable(name: "o", scope: !2641, file: !135, line: 1021, type: !142)
!2650 = !DILocation(line: 1017, column: 28, scope: !2641, inlinedAt: !2651)
!2651 = distinct !DILocation(line: 1012, column: 10, scope: !2628)
!2652 = !DILocation(line: 1017, column: 43, scope: !2641, inlinedAt: !2651)
!2653 = !DILocation(line: 1018, column: 36, scope: !2641, inlinedAt: !2651)
!2654 = !DILocation(line: 1019, column: 36, scope: !2641, inlinedAt: !2651)
!2655 = !DILocation(line: 1019, column: 48, scope: !2641, inlinedAt: !2651)
!2656 = !DILocation(line: 1021, column: 3, scope: !2641, inlinedAt: !2651)
!2657 = !DILocation(line: 1021, column: 30, scope: !2641, inlinedAt: !2651)
!2658 = !DILocation(line: 1021, column: 26, scope: !2641, inlinedAt: !2651)
!2659 = !DILocation(line: 171, column: 45, scope: !977, inlinedAt: !2660)
!2660 = distinct !DILocation(line: 1022, column: 3, scope: !2641, inlinedAt: !2651)
!2661 = !DILocation(line: 172, column: 33, scope: !977, inlinedAt: !2660)
!2662 = !DILocation(line: 172, column: 57, scope: !977, inlinedAt: !2660)
!2663 = !DILocation(line: 176, column: 6, scope: !977, inlinedAt: !2660)
!2664 = !DILocation(line: 176, column: 12, scope: !977, inlinedAt: !2660)
!2665 = !DILocation(line: 177, column: 8, scope: !993, inlinedAt: !2660)
!2666 = !DILocation(line: 177, column: 23, scope: !995, inlinedAt: !2660)
!2667 = !DILocation(line: 177, column: 19, scope: !993, inlinedAt: !2660)
!2668 = !DILocation(line: 178, column: 5, scope: !993, inlinedAt: !2660)
!2669 = !DILocation(line: 179, column: 6, scope: !977, inlinedAt: !2660)
!2670 = !DILocation(line: 179, column: 17, scope: !977, inlinedAt: !2660)
!2671 = !DILocation(line: 180, column: 6, scope: !977, inlinedAt: !2660)
!2672 = !DILocation(line: 180, column: 18, scope: !977, inlinedAt: !2660)
!2673 = !DILocation(line: 1023, column: 10, scope: !2641, inlinedAt: !2651)
!2674 = !DILocation(line: 1024, column: 1, scope: !2641, inlinedAt: !2651)
!2675 = !DILocation(line: 1012, column: 3, scope: !2628)
!2676 = !DILocation(line: 1017, column: 28, scope: !2641)
!2677 = !DILocation(line: 1017, column: 43, scope: !2641)
!2678 = !DILocation(line: 1018, column: 36, scope: !2641)
!2679 = !DILocation(line: 1019, column: 36, scope: !2641)
!2680 = !DILocation(line: 1019, column: 48, scope: !2641)
!2681 = !DILocation(line: 1021, column: 3, scope: !2641)
!2682 = !DILocation(line: 1021, column: 30, scope: !2641)
!2683 = !DILocation(line: 1021, column: 26, scope: !2641)
!2684 = !DILocation(line: 171, column: 45, scope: !977, inlinedAt: !2685)
!2685 = distinct !DILocation(line: 1022, column: 3, scope: !2641)
!2686 = !DILocation(line: 172, column: 33, scope: !977, inlinedAt: !2685)
!2687 = !DILocation(line: 172, column: 57, scope: !977, inlinedAt: !2685)
!2688 = !DILocation(line: 176, column: 6, scope: !977, inlinedAt: !2685)
!2689 = !DILocation(line: 176, column: 12, scope: !977, inlinedAt: !2685)
!2690 = !DILocation(line: 177, column: 8, scope: !993, inlinedAt: !2685)
!2691 = !DILocation(line: 177, column: 23, scope: !995, inlinedAt: !2685)
!2692 = !DILocation(line: 177, column: 19, scope: !993, inlinedAt: !2685)
!2693 = !DILocation(line: 178, column: 5, scope: !993, inlinedAt: !2685)
!2694 = !DILocation(line: 179, column: 6, scope: !977, inlinedAt: !2685)
!2695 = !DILocation(line: 179, column: 17, scope: !977, inlinedAt: !2685)
!2696 = !DILocation(line: 180, column: 6, scope: !977, inlinedAt: !2685)
!2697 = !DILocation(line: 180, column: 18, scope: !977, inlinedAt: !2685)
!2698 = !DILocation(line: 1023, column: 10, scope: !2641)
!2699 = !DILocation(line: 1024, column: 1, scope: !2641)
!2700 = !DILocation(line: 1023, column: 3, scope: !2641)
!2701 = distinct !DISubprogram(name: "quotearg_custom", scope: !135, file: !135, line: 1027, type: !2702, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !2704)
!2702 = !DISubroutineType(types: !2703)
!2703 = !{!6, !17, !17, !17}
!2704 = !{!2705, !2706, !2707}
!2705 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2701, file: !135, line: 1027, type: !17)
!2706 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2701, file: !135, line: 1027, type: !17)
!2707 = !DILocalVariable(name: "arg", arg: 3, scope: !2701, file: !135, line: 1028, type: !17)
!2708 = !DILocation(line: 1027, column: 30, scope: !2701)
!2709 = !DILocation(line: 1027, column: 54, scope: !2701)
!2710 = !DILocation(line: 1028, column: 30, scope: !2701)
!2711 = !DILocation(line: 1009, column: 24, scope: !2628, inlinedAt: !2712)
!2712 = distinct !DILocation(line: 1030, column: 10, scope: !2701)
!2713 = !DILocation(line: 1009, column: 39, scope: !2628, inlinedAt: !2712)
!2714 = !DILocation(line: 1010, column: 32, scope: !2628, inlinedAt: !2712)
!2715 = !DILocation(line: 1010, column: 57, scope: !2628, inlinedAt: !2712)
!2716 = !DILocation(line: 1017, column: 28, scope: !2641, inlinedAt: !2717)
!2717 = distinct !DILocation(line: 1012, column: 10, scope: !2628, inlinedAt: !2712)
!2718 = !DILocation(line: 1017, column: 43, scope: !2641, inlinedAt: !2717)
!2719 = !DILocation(line: 1018, column: 36, scope: !2641, inlinedAt: !2717)
!2720 = !DILocation(line: 1019, column: 36, scope: !2641, inlinedAt: !2717)
!2721 = !DILocation(line: 1019, column: 48, scope: !2641, inlinedAt: !2717)
!2722 = !DILocation(line: 1021, column: 3, scope: !2641, inlinedAt: !2717)
!2723 = !DILocation(line: 1021, column: 30, scope: !2641, inlinedAt: !2717)
!2724 = !DILocation(line: 1021, column: 26, scope: !2641, inlinedAt: !2717)
!2725 = !DILocation(line: 171, column: 45, scope: !977, inlinedAt: !2726)
!2726 = distinct !DILocation(line: 1022, column: 3, scope: !2641, inlinedAt: !2717)
!2727 = !DILocation(line: 172, column: 33, scope: !977, inlinedAt: !2726)
!2728 = !DILocation(line: 172, column: 57, scope: !977, inlinedAt: !2726)
!2729 = !DILocation(line: 176, column: 6, scope: !977, inlinedAt: !2726)
!2730 = !DILocation(line: 176, column: 12, scope: !977, inlinedAt: !2726)
!2731 = !DILocation(line: 177, column: 8, scope: !993, inlinedAt: !2726)
!2732 = !DILocation(line: 177, column: 23, scope: !995, inlinedAt: !2726)
!2733 = !DILocation(line: 177, column: 19, scope: !993, inlinedAt: !2726)
!2734 = !DILocation(line: 178, column: 5, scope: !993, inlinedAt: !2726)
!2735 = !DILocation(line: 179, column: 6, scope: !977, inlinedAt: !2726)
!2736 = !DILocation(line: 179, column: 17, scope: !977, inlinedAt: !2726)
!2737 = !DILocation(line: 180, column: 6, scope: !977, inlinedAt: !2726)
!2738 = !DILocation(line: 180, column: 18, scope: !977, inlinedAt: !2726)
!2739 = !DILocation(line: 1023, column: 10, scope: !2641, inlinedAt: !2717)
!2740 = !DILocation(line: 1024, column: 1, scope: !2641, inlinedAt: !2717)
!2741 = !DILocation(line: 1030, column: 3, scope: !2701)
!2742 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !135, file: !135, line: 1034, type: !2743, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !2745)
!2743 = !DISubroutineType(types: !2744)
!2744 = !{!6, !17, !17, !17, !9}
!2745 = !{!2746, !2747, !2748, !2749}
!2746 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2742, file: !135, line: 1034, type: !17)
!2747 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2742, file: !135, line: 1034, type: !17)
!2748 = !DILocalVariable(name: "arg", arg: 3, scope: !2742, file: !135, line: 1035, type: !17)
!2749 = !DILocalVariable(name: "argsize", arg: 4, scope: !2742, file: !135, line: 1035, type: !9)
!2750 = !DILocation(line: 1034, column: 34, scope: !2742)
!2751 = !DILocation(line: 1034, column: 58, scope: !2742)
!2752 = !DILocation(line: 1035, column: 34, scope: !2742)
!2753 = !DILocation(line: 1035, column: 46, scope: !2742)
!2754 = !DILocation(line: 1017, column: 28, scope: !2641, inlinedAt: !2755)
!2755 = distinct !DILocation(line: 1037, column: 10, scope: !2742)
!2756 = !DILocation(line: 1017, column: 43, scope: !2641, inlinedAt: !2755)
!2757 = !DILocation(line: 1018, column: 36, scope: !2641, inlinedAt: !2755)
!2758 = !DILocation(line: 1019, column: 36, scope: !2641, inlinedAt: !2755)
!2759 = !DILocation(line: 1019, column: 48, scope: !2641, inlinedAt: !2755)
!2760 = !DILocation(line: 1021, column: 3, scope: !2641, inlinedAt: !2755)
!2761 = !DILocation(line: 1021, column: 30, scope: !2641, inlinedAt: !2755)
!2762 = !DILocation(line: 1021, column: 26, scope: !2641, inlinedAt: !2755)
!2763 = !DILocation(line: 171, column: 45, scope: !977, inlinedAt: !2764)
!2764 = distinct !DILocation(line: 1022, column: 3, scope: !2641, inlinedAt: !2755)
!2765 = !DILocation(line: 172, column: 33, scope: !977, inlinedAt: !2764)
!2766 = !DILocation(line: 172, column: 57, scope: !977, inlinedAt: !2764)
!2767 = !DILocation(line: 176, column: 6, scope: !977, inlinedAt: !2764)
!2768 = !DILocation(line: 176, column: 12, scope: !977, inlinedAt: !2764)
!2769 = !DILocation(line: 177, column: 8, scope: !993, inlinedAt: !2764)
!2770 = !DILocation(line: 177, column: 23, scope: !995, inlinedAt: !2764)
!2771 = !DILocation(line: 177, column: 19, scope: !993, inlinedAt: !2764)
!2772 = !DILocation(line: 178, column: 5, scope: !993, inlinedAt: !2764)
!2773 = !DILocation(line: 179, column: 6, scope: !977, inlinedAt: !2764)
!2774 = !DILocation(line: 179, column: 17, scope: !977, inlinedAt: !2764)
!2775 = !DILocation(line: 180, column: 6, scope: !977, inlinedAt: !2764)
!2776 = !DILocation(line: 180, column: 18, scope: !977, inlinedAt: !2764)
!2777 = !DILocation(line: 1023, column: 10, scope: !2641, inlinedAt: !2755)
!2778 = !DILocation(line: 1024, column: 1, scope: !2641, inlinedAt: !2755)
!2779 = !DILocation(line: 1037, column: 3, scope: !2742)
!2780 = distinct !DISubprogram(name: "quote_n_mem", scope: !135, file: !135, line: 1052, type: !2781, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !2783)
!2781 = !DISubroutineType(types: !2782)
!2782 = !{!17, !47, !17, !9}
!2783 = !{!2784, !2785, !2786}
!2784 = !DILocalVariable(name: "n", arg: 1, scope: !2780, file: !135, line: 1052, type: !47)
!2785 = !DILocalVariable(name: "arg", arg: 2, scope: !2780, file: !135, line: 1052, type: !17)
!2786 = !DILocalVariable(name: "argsize", arg: 3, scope: !2780, file: !135, line: 1052, type: !9)
!2787 = !DILocation(line: 1052, column: 18, scope: !2780)
!2788 = !DILocation(line: 1052, column: 33, scope: !2780)
!2789 = !DILocation(line: 1052, column: 45, scope: !2780)
!2790 = !DILocation(line: 1054, column: 10, scope: !2780)
!2791 = !DILocation(line: 1054, column: 3, scope: !2780)
!2792 = distinct !DISubprogram(name: "quote_mem", scope: !135, file: !135, line: 1058, type: !2793, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !2795)
!2793 = !DISubroutineType(types: !2794)
!2794 = !{!17, !17, !9}
!2795 = !{!2796, !2797}
!2796 = !DILocalVariable(name: "arg", arg: 1, scope: !2792, file: !135, line: 1058, type: !17)
!2797 = !DILocalVariable(name: "argsize", arg: 2, scope: !2792, file: !135, line: 1058, type: !9)
!2798 = !DILocation(line: 1058, column: 24, scope: !2792)
!2799 = !DILocation(line: 1058, column: 36, scope: !2792)
!2800 = !DILocation(line: 1052, column: 18, scope: !2780, inlinedAt: !2801)
!2801 = distinct !DILocation(line: 1060, column: 10, scope: !2792)
!2802 = !DILocation(line: 1052, column: 33, scope: !2780, inlinedAt: !2801)
!2803 = !DILocation(line: 1052, column: 45, scope: !2780, inlinedAt: !2801)
!2804 = !DILocation(line: 1054, column: 10, scope: !2780, inlinedAt: !2801)
!2805 = !DILocation(line: 1060, column: 3, scope: !2792)
!2806 = distinct !DISubprogram(name: "quote_n", scope: !135, file: !135, line: 1064, type: !2807, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !2809)
!2807 = !DISubroutineType(types: !2808)
!2808 = !{!17, !47, !17}
!2809 = !{!2810, !2811}
!2810 = !DILocalVariable(name: "n", arg: 1, scope: !2806, file: !135, line: 1064, type: !47)
!2811 = !DILocalVariable(name: "arg", arg: 2, scope: !2806, file: !135, line: 1064, type: !17)
!2812 = !DILocation(line: 1064, column: 14, scope: !2806)
!2813 = !DILocation(line: 1064, column: 29, scope: !2806)
!2814 = !DILocation(line: 1052, column: 18, scope: !2780, inlinedAt: !2815)
!2815 = distinct !DILocation(line: 1066, column: 10, scope: !2806)
!2816 = !DILocation(line: 1052, column: 33, scope: !2780, inlinedAt: !2815)
!2817 = !DILocation(line: 1052, column: 45, scope: !2780, inlinedAt: !2815)
!2818 = !DILocation(line: 1054, column: 10, scope: !2780, inlinedAt: !2815)
!2819 = !DILocation(line: 1066, column: 3, scope: !2806)
!2820 = distinct !DISubprogram(name: "quote", scope: !135, file: !135, line: 1070, type: !2821, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !2823)
!2821 = !DISubroutineType(types: !2822)
!2822 = !{!17, !17}
!2823 = !{!2824}
!2824 = !DILocalVariable(name: "arg", arg: 1, scope: !2820, file: !135, line: 1070, type: !17)
!2825 = !DILocation(line: 1070, column: 20, scope: !2820)
!2826 = !DILocation(line: 1064, column: 14, scope: !2806, inlinedAt: !2827)
!2827 = distinct !DILocation(line: 1072, column: 10, scope: !2820)
!2828 = !DILocation(line: 1064, column: 29, scope: !2806, inlinedAt: !2827)
!2829 = !DILocation(line: 1052, column: 18, scope: !2780, inlinedAt: !2830)
!2830 = distinct !DILocation(line: 1066, column: 10, scope: !2806, inlinedAt: !2827)
!2831 = !DILocation(line: 1052, column: 33, scope: !2780, inlinedAt: !2830)
!2832 = !DILocation(line: 1052, column: 45, scope: !2780, inlinedAt: !2830)
!2833 = !DILocation(line: 1054, column: 10, scope: !2780, inlinedAt: !2830)
!2834 = !DILocation(line: 1072, column: 3, scope: !2820)
!2835 = distinct !DISubprogram(name: "version_etc_arn", scope: !534, file: !534, line: 62, type: !2836, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !530, variables: !2894)
!2836 = !DISubroutineType(types: !2837)
!2837 = !{null, !2838, !17, !17, !17, !2893, !9}
!2838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2839, size: 64)
!2839 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2840, line: 49, baseType: !2841)
!2840 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2842, line: 241, size: 1728, elements: !2843)
!2842 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2843 = !{!2844, !2845, !2846, !2847, !2848, !2849, !2850, !2851, !2852, !2853, !2854, !2855, !2856, !2864, !2865, !2866, !2867, !2871, !2872, !2874, !2878, !2881, !2883, !2884, !2885, !2886, !2887, !2888, !2889}
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2841, file: !2842, line: 242, baseType: !47, size: 32)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2841, file: !2842, line: 247, baseType: !6, size: 64, offset: 64)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2841, file: !2842, line: 248, baseType: !6, size: 64, offset: 128)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2841, file: !2842, line: 249, baseType: !6, size: 64, offset: 192)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2841, file: !2842, line: 250, baseType: !6, size: 64, offset: 256)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2841, file: !2842, line: 251, baseType: !6, size: 64, offset: 320)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2841, file: !2842, line: 252, baseType: !6, size: 64, offset: 384)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2841, file: !2842, line: 253, baseType: !6, size: 64, offset: 448)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2841, file: !2842, line: 254, baseType: !6, size: 64, offset: 512)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2841, file: !2842, line: 256, baseType: !6, size: 64, offset: 576)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2841, file: !2842, line: 257, baseType: !6, size: 64, offset: 640)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2841, file: !2842, line: 258, baseType: !6, size: 64, offset: 704)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2841, file: !2842, line: 260, baseType: !2857, size: 64, offset: 768)
!2857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2858, size: 64)
!2858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2842, line: 156, size: 192, elements: !2859)
!2859 = !{!2860, !2861, !2863}
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !2858, file: !2842, line: 157, baseType: !2857, size: 64)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !2858, file: !2842, line: 158, baseType: !2862, size: 64, offset: 64)
!2862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2841, size: 64)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !2858, file: !2842, line: 162, baseType: !47, size: 32, offset: 128)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2841, file: !2842, line: 262, baseType: !2862, size: 64, offset: 832)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2841, file: !2842, line: 264, baseType: !47, size: 32, offset: 896)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2841, file: !2842, line: 268, baseType: !47, size: 32, offset: 928)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2841, file: !2842, line: 270, baseType: !2868, size: 64, offset: 960)
!2868 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !2869, line: 140, baseType: !2870)
!2869 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2870 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2841, file: !2842, line: 274, baseType: !131, size: 16, offset: 1024)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2841, file: !2842, line: 275, baseType: !2873, size: 8, offset: 1040)
!2873 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2841, file: !2842, line: 276, baseType: !2875, size: 8, offset: 1048)
!2875 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 8, elements: !2876)
!2876 = !{!2877}
!2877 = !DISubrange(count: 1)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2841, file: !2842, line: 280, baseType: !2879, size: 64, offset: 1088)
!2879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2880, size: 64)
!2880 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2842, line: 150, baseType: null)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2841, file: !2842, line: 289, baseType: !2882, size: 64, offset: 1152)
!2882 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !2869, line: 141, baseType: !2870)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !2841, file: !2842, line: 297, baseType: !8, size: 64, offset: 1216)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !2841, file: !2842, line: 298, baseType: !8, size: 64, offset: 1280)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !2841, file: !2842, line: 299, baseType: !8, size: 64, offset: 1344)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !2841, file: !2842, line: 300, baseType: !8, size: 64, offset: 1408)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2841, file: !2842, line: 302, baseType: !9, size: 64, offset: 1472)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2841, file: !2842, line: 303, baseType: !47, size: 32, offset: 1536)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2841, file: !2842, line: 305, baseType: !2890, size: 160, offset: 1568)
!2890 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 160, elements: !2891)
!2891 = !{!2892}
!2892 = !DISubrange(count: 20)
!2893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!2894 = !{!2895, !2896, !2897, !2898, !2899, !2900}
!2895 = !DILocalVariable(name: "stream", arg: 1, scope: !2835, file: !534, line: 62, type: !2838)
!2896 = !DILocalVariable(name: "command_name", arg: 2, scope: !2835, file: !534, line: 63, type: !17)
!2897 = !DILocalVariable(name: "package", arg: 3, scope: !2835, file: !534, line: 63, type: !17)
!2898 = !DILocalVariable(name: "version", arg: 4, scope: !2835, file: !534, line: 64, type: !17)
!2899 = !DILocalVariable(name: "authors", arg: 5, scope: !2835, file: !534, line: 65, type: !2893)
!2900 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2835, file: !534, line: 65, type: !9)
!2901 = !DILocation(line: 62, column: 24, scope: !2835)
!2902 = !DILocation(line: 63, column: 30, scope: !2835)
!2903 = !DILocation(line: 63, column: 56, scope: !2835)
!2904 = !DILocation(line: 64, column: 30, scope: !2835)
!2905 = !DILocation(line: 65, column: 39, scope: !2835)
!2906 = !DILocation(line: 65, column: 55, scope: !2835)
!2907 = !DILocation(line: 67, column: 7, scope: !2908)
!2908 = distinct !DILexicalBlock(scope: !2835, file: !534, line: 67, column: 7)
!2909 = !DILocation(line: 67, column: 7, scope: !2835)
!2910 = !DILocation(line: 68, column: 5, scope: !2908)
!2911 = !DILocation(line: 70, column: 5, scope: !2908)
!2912 = !DILocation(line: 84, column: 3, scope: !2835)
!2913 = !DILocation(line: 84, column: 3, scope: !2914)
!2914 = !DILexicalBlockFile(scope: !2835, file: !534, discriminator: 1)
!2915 = !DILocation(line: 86, column: 3, scope: !2835)
!2916 = !DILocation(line: 86, column: 3, scope: !2914)
!2917 = !DILocation(line: 95, column: 3, scope: !2835)
!2918 = !DILocation(line: 99, column: 7, scope: !2919)
!2919 = distinct !DILexicalBlock(scope: !2835, file: !534, line: 96, column: 5)
!2920 = !DILocation(line: 102, column: 7, scope: !2919)
!2921 = !DILocation(line: 102, column: 7, scope: !2922)
!2922 = !DILexicalBlockFile(scope: !2919, file: !534, discriminator: 1)
!2923 = !DILocation(line: 103, column: 7, scope: !2919)
!2924 = !DILocation(line: 106, column: 7, scope: !2919)
!2925 = !DILocation(line: 106, column: 7, scope: !2922)
!2926 = !DILocation(line: 107, column: 7, scope: !2919)
!2927 = !DILocation(line: 110, column: 7, scope: !2919)
!2928 = !DILocation(line: 110, column: 7, scope: !2922)
!2929 = !DILocation(line: 112, column: 7, scope: !2919)
!2930 = !DILocation(line: 117, column: 7, scope: !2919)
!2931 = !DILocation(line: 117, column: 7, scope: !2922)
!2932 = !DILocation(line: 119, column: 7, scope: !2919)
!2933 = !DILocation(line: 124, column: 7, scope: !2919)
!2934 = !DILocation(line: 124, column: 7, scope: !2922)
!2935 = !DILocation(line: 126, column: 7, scope: !2919)
!2936 = !DILocation(line: 131, column: 7, scope: !2919)
!2937 = !DILocation(line: 131, column: 7, scope: !2922)
!2938 = !DILocation(line: 134, column: 7, scope: !2919)
!2939 = !DILocation(line: 139, column: 7, scope: !2919)
!2940 = !DILocation(line: 139, column: 7, scope: !2922)
!2941 = !DILocation(line: 142, column: 7, scope: !2919)
!2942 = !DILocation(line: 147, column: 7, scope: !2919)
!2943 = !DILocation(line: 147, column: 7, scope: !2922)
!2944 = !DILocation(line: 151, column: 7, scope: !2919)
!2945 = !DILocation(line: 156, column: 7, scope: !2919)
!2946 = !DILocation(line: 156, column: 7, scope: !2922)
!2947 = !DILocation(line: 160, column: 7, scope: !2919)
!2948 = !DILocation(line: 167, column: 7, scope: !2919)
!2949 = !DILocation(line: 167, column: 7, scope: !2922)
!2950 = !DILocation(line: 171, column: 7, scope: !2919)
!2951 = !DILocation(line: 173, column: 1, scope: !2835)
!2952 = distinct !DISubprogram(name: "version_etc_ar", scope: !534, file: !534, line: 180, type: !2953, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !530, variables: !2955)
!2953 = !DISubroutineType(types: !2954)
!2954 = !{null, !2838, !17, !17, !17, !2893}
!2955 = !{!2956, !2957, !2958, !2959, !2960, !2961}
!2956 = !DILocalVariable(name: "stream", arg: 1, scope: !2952, file: !534, line: 180, type: !2838)
!2957 = !DILocalVariable(name: "command_name", arg: 2, scope: !2952, file: !534, line: 181, type: !17)
!2958 = !DILocalVariable(name: "package", arg: 3, scope: !2952, file: !534, line: 181, type: !17)
!2959 = !DILocalVariable(name: "version", arg: 4, scope: !2952, file: !534, line: 182, type: !17)
!2960 = !DILocalVariable(name: "authors", arg: 5, scope: !2952, file: !534, line: 182, type: !2893)
!2961 = !DILocalVariable(name: "n_authors", scope: !2952, file: !534, line: 184, type: !9)
!2962 = !DILocation(line: 180, column: 23, scope: !2952)
!2963 = !DILocation(line: 181, column: 29, scope: !2952)
!2964 = !DILocation(line: 181, column: 55, scope: !2952)
!2965 = !DILocation(line: 182, column: 29, scope: !2952)
!2966 = !DILocation(line: 182, column: 59, scope: !2952)
!2967 = !DILocation(line: 184, column: 10, scope: !2952)
!2968 = !DILocation(line: 186, column: 8, scope: !2969)
!2969 = distinct !DILexicalBlock(scope: !2952, file: !534, line: 186, column: 3)
!2970 = !DILocation(line: 186, column: 23, scope: !2971)
!2971 = !DILexicalBlockFile(scope: !2972, file: !534, discriminator: 1)
!2972 = distinct !DILexicalBlock(scope: !2969, file: !534, line: 186, column: 3)
!2973 = !DILocation(line: 186, column: 3, scope: !2974)
!2974 = !DILexicalBlockFile(scope: !2969, file: !534, discriminator: 1)
!2975 = !DILocation(line: 186, column: 52, scope: !2976)
!2976 = !DILexicalBlockFile(scope: !2972, file: !534, discriminator: 3)
!2977 = distinct !{!2977, !2978, !2979}
!2978 = !DILocation(line: 186, column: 3, scope: !2969)
!2979 = !DILocation(line: 187, column: 5, scope: !2969)
!2980 = !DILocation(line: 188, column: 3, scope: !2952)
!2981 = !DILocation(line: 189, column: 1, scope: !2952)
!2982 = distinct !DISubprogram(name: "version_etc_va", scope: !534, file: !534, line: 196, type: !2983, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !530, variables: !2992)
!2983 = !DISubroutineType(types: !2984)
!2984 = !{null, !2838, !17, !17, !17, !2985}
!2985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2986, size: 64)
!2986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !531, line: 189, size: 192, elements: !2987)
!2987 = !{!2988, !2989, !2990, !2991}
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2986, file: !531, line: 189, baseType: !148, size: 32)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2986, file: !531, line: 189, baseType: !148, size: 32, offset: 32)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2986, file: !531, line: 189, baseType: !8, size: 64, offset: 64)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2986, file: !531, line: 189, baseType: !8, size: 64, offset: 128)
!2992 = !{!2993, !2994, !2995, !2996, !2997, !2998, !2999}
!2993 = !DILocalVariable(name: "stream", arg: 1, scope: !2982, file: !534, line: 196, type: !2838)
!2994 = !DILocalVariable(name: "command_name", arg: 2, scope: !2982, file: !534, line: 197, type: !17)
!2995 = !DILocalVariable(name: "package", arg: 3, scope: !2982, file: !534, line: 197, type: !17)
!2996 = !DILocalVariable(name: "version", arg: 4, scope: !2982, file: !534, line: 198, type: !17)
!2997 = !DILocalVariable(name: "authors", arg: 5, scope: !2982, file: !534, line: 198, type: !2985)
!2998 = !DILocalVariable(name: "n_authors", scope: !2982, file: !534, line: 200, type: !9)
!2999 = !DILocalVariable(name: "authtab", scope: !2982, file: !534, line: 201, type: !3000)
!3000 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 640, elements: !138)
!3001 = !DILocation(line: 196, column: 23, scope: !2982)
!3002 = !DILocation(line: 197, column: 29, scope: !2982)
!3003 = !DILocation(line: 197, column: 55, scope: !2982)
!3004 = !DILocation(line: 198, column: 29, scope: !2982)
!3005 = !DILocation(line: 198, column: 46, scope: !2982)
!3006 = !DILocation(line: 201, column: 3, scope: !2982)
!3007 = !DILocation(line: 201, column: 15, scope: !2982)
!3008 = !DILocation(line: 200, column: 10, scope: !2982)
!3009 = !DILocation(line: 205, column: 35, scope: !3010)
!3010 = !DILexicalBlockFile(scope: !3011, file: !534, discriminator: 1)
!3011 = distinct !DILexicalBlock(scope: !3012, file: !534, line: 203, column: 3)
!3012 = distinct !DILexicalBlock(scope: !2982, file: !534, line: 203, column: 3)
!3013 = !DILocation(line: 205, column: 35, scope: !3014)
!3014 = !DILexicalBlockFile(scope: !3011, file: !534, discriminator: 2)
!3015 = !DILocation(line: 205, column: 35, scope: !3016)
!3016 = !DILexicalBlockFile(scope: !3011, file: !534, discriminator: 3)
!3017 = !DILocation(line: 205, column: 35, scope: !3018)
!3018 = !DILexicalBlockFile(scope: !3011, file: !534, discriminator: 4)
!3019 = !DILocation(line: 205, column: 14, scope: !3018)
!3020 = !DILocation(line: 205, column: 33, scope: !3018)
!3021 = !DILocation(line: 205, column: 67, scope: !3018)
!3022 = !DILocation(line: 203, column: 3, scope: !3023)
!3023 = !DILexicalBlockFile(scope: !3012, file: !534, discriminator: 1)
!3024 = !DILocation(line: 208, column: 3, scope: !2982)
!3025 = !DILocation(line: 210, column: 1, scope: !2982)
!3026 = distinct !DISubprogram(name: "version_etc", scope: !534, file: !534, line: 227, type: !3027, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !530, variables: !3029)
!3027 = !DISubroutineType(types: !3028)
!3028 = !{null, !2838, !17, !17, !17, null}
!3029 = !{!3030, !3031, !3032, !3033, !3034}
!3030 = !DILocalVariable(name: "stream", arg: 1, scope: !3026, file: !534, line: 227, type: !2838)
!3031 = !DILocalVariable(name: "command_name", arg: 2, scope: !3026, file: !534, line: 228, type: !17)
!3032 = !DILocalVariable(name: "package", arg: 3, scope: !3026, file: !534, line: 228, type: !17)
!3033 = !DILocalVariable(name: "version", arg: 4, scope: !3026, file: !534, line: 229, type: !17)
!3034 = !DILocalVariable(name: "authors", scope: !3026, file: !534, line: 231, type: !3035)
!3035 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !2840, line: 80, baseType: !3036)
!3036 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3037, line: 50, baseType: !3038)
!3037 = !DIFile(filename: "/usr/bin/../lib/clang/4.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3038 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !531, line: 231, baseType: !3039)
!3039 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2986, size: 192, elements: !2876)
!3040 = !DILocation(line: 227, column: 20, scope: !3026)
!3041 = !DILocation(line: 228, column: 26, scope: !3026)
!3042 = !DILocation(line: 228, column: 52, scope: !3026)
!3043 = !DILocation(line: 229, column: 26, scope: !3026)
!3044 = !DILocation(line: 231, column: 3, scope: !3026)
!3045 = !DILocation(line: 231, column: 11, scope: !3026)
!3046 = !DILocation(line: 233, column: 3, scope: !3026)
!3047 = !DILocation(line: 234, column: 3, scope: !3026)
!3048 = !DILocation(line: 235, column: 3, scope: !3026)
!3049 = !DILocation(line: 236, column: 1, scope: !3026)
!3050 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !534, file: !534, line: 239, type: !607, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !530, variables: !4)
!3051 = !DILocation(line: 245, column: 3, scope: !3050)
!3052 = !DILocation(line: 245, column: 3, scope: !3053)
!3053 = !DILexicalBlockFile(scope: !3050, file: !534, discriminator: 1)
!3054 = !DILocation(line: 251, column: 3, scope: !3050)
!3055 = !DILocation(line: 251, column: 3, scope: !3053)
!3056 = !DILocation(line: 256, column: 3, scope: !3050)
!3057 = !DILocation(line: 256, column: 3, scope: !3053)
!3058 = !DILocation(line: 258, column: 1, scope: !3050)
!3059 = distinct !DISubprogram(name: "xnmalloc", scope: !542, file: !542, line: 105, type: !3060, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !538, variables: !3062)
!3060 = !DISubroutineType(types: !3061)
!3061 = !{!8, !9, !9}
!3062 = !{!3063, !3064}
!3063 = !DILocalVariable(name: "n", arg: 1, scope: !3059, file: !542, line: 105, type: !9)
!3064 = !DILocalVariable(name: "s", arg: 2, scope: !3059, file: !542, line: 105, type: !9)
!3065 = !DILocation(line: 105, column: 18, scope: !3059)
!3066 = !DILocation(line: 105, column: 28, scope: !3059)
!3067 = !DILocation(line: 107, column: 7, scope: !3068)
!3068 = distinct !DILexicalBlock(scope: !3059, file: !542, line: 107, column: 7)
!3069 = !DILocation(line: 107, column: 7, scope: !3059)
!3070 = !DILocation(line: 108, column: 5, scope: !3068)
!3071 = !DILocation(line: 109, column: 21, scope: !3059)
!3072 = !DILocalVariable(name: "n", arg: 1, scope: !3073, file: !3074, line: 39, type: !9)
!3073 = distinct !DISubprogram(name: "xmalloc", scope: !3074, file: !3074, line: 39, type: !3075, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !538, variables: !3077)
!3074 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3075 = !DISubroutineType(types: !3076)
!3076 = !{!8, !9}
!3077 = !{!3072, !3078}
!3078 = !DILocalVariable(name: "p", scope: !3073, file: !3074, line: 41, type: !8)
!3079 = !DILocation(line: 39, column: 17, scope: !3073, inlinedAt: !3080)
!3080 = distinct !DILocation(line: 109, column: 10, scope: !3059)
!3081 = !DILocation(line: 41, column: 13, scope: !3073, inlinedAt: !3080)
!3082 = !DILocation(line: 41, column: 9, scope: !3073, inlinedAt: !3080)
!3083 = !DILocation(line: 42, column: 8, scope: !3084, inlinedAt: !3080)
!3084 = distinct !DILexicalBlock(scope: !3073, file: !3074, line: 42, column: 7)
!3085 = !DILocation(line: 42, column: 15, scope: !3086, inlinedAt: !3080)
!3086 = !DILexicalBlockFile(scope: !3084, file: !3074, discriminator: 1)
!3087 = !DILocation(line: 42, column: 10, scope: !3084, inlinedAt: !3080)
!3088 = !DILocation(line: 43, column: 5, scope: !3084, inlinedAt: !3080)
!3089 = !DILocation(line: 109, column: 3, scope: !3059)
!3090 = !DILocation(line: 39, column: 17, scope: !3073)
!3091 = !DILocation(line: 41, column: 13, scope: !3073)
!3092 = !DILocation(line: 41, column: 9, scope: !3073)
!3093 = !DILocation(line: 42, column: 8, scope: !3084)
!3094 = !DILocation(line: 42, column: 15, scope: !3086)
!3095 = !DILocation(line: 42, column: 10, scope: !3084)
!3096 = !DILocation(line: 43, column: 5, scope: !3084)
!3097 = !DILocation(line: 44, column: 3, scope: !3073)
!3098 = distinct !DISubprogram(name: "xnrealloc", scope: !542, file: !542, line: 118, type: !3099, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !538, variables: !3101)
!3099 = !DISubroutineType(types: !3100)
!3100 = !{!8, !8, !9, !9}
!3101 = !{!3102, !3103, !3104}
!3102 = !DILocalVariable(name: "p", arg: 1, scope: !3098, file: !542, line: 118, type: !8)
!3103 = !DILocalVariable(name: "n", arg: 2, scope: !3098, file: !542, line: 118, type: !9)
!3104 = !DILocalVariable(name: "s", arg: 3, scope: !3098, file: !542, line: 118, type: !9)
!3105 = !DILocation(line: 118, column: 18, scope: !3098)
!3106 = !DILocation(line: 118, column: 28, scope: !3098)
!3107 = !DILocation(line: 118, column: 38, scope: !3098)
!3108 = !DILocation(line: 120, column: 7, scope: !3109)
!3109 = distinct !DILexicalBlock(scope: !3098, file: !542, line: 120, column: 7)
!3110 = !DILocation(line: 120, column: 7, scope: !3098)
!3111 = !DILocation(line: 121, column: 5, scope: !3109)
!3112 = !DILocation(line: 122, column: 25, scope: !3098)
!3113 = !DILocalVariable(name: "p", arg: 1, scope: !3114, file: !3074, line: 51, type: !8)
!3114 = distinct !DISubprogram(name: "xrealloc", scope: !3074, file: !3074, line: 51, type: !3115, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !538, variables: !3117)
!3115 = !DISubroutineType(types: !3116)
!3116 = !{!8, !8, !9}
!3117 = !{!3113, !3118}
!3118 = !DILocalVariable(name: "n", arg: 2, scope: !3114, file: !3074, line: 51, type: !9)
!3119 = !DILocation(line: 51, column: 17, scope: !3114, inlinedAt: !3120)
!3120 = distinct !DILocation(line: 122, column: 10, scope: !3098)
!3121 = !DILocation(line: 51, column: 27, scope: !3114, inlinedAt: !3120)
!3122 = !DILocation(line: 53, column: 8, scope: !3123, inlinedAt: !3120)
!3123 = distinct !DILexicalBlock(scope: !3114, file: !3074, line: 53, column: 7)
!3124 = !DILocation(line: 53, column: 13, scope: !3125, inlinedAt: !3120)
!3125 = !DILexicalBlockFile(scope: !3123, file: !3074, discriminator: 1)
!3126 = !DILocation(line: 53, column: 10, scope: !3123, inlinedAt: !3120)
!3127 = !DILocation(line: 57, column: 7, scope: !3128, inlinedAt: !3120)
!3128 = distinct !DILexicalBlock(scope: !3123, file: !3074, line: 54, column: 5)
!3129 = !DILocation(line: 58, column: 7, scope: !3128, inlinedAt: !3120)
!3130 = !DILocation(line: 61, column: 7, scope: !3114, inlinedAt: !3120)
!3131 = !DILocation(line: 62, column: 8, scope: !3132, inlinedAt: !3120)
!3132 = distinct !DILexicalBlock(scope: !3114, file: !3074, line: 62, column: 7)
!3133 = !DILocation(line: 62, column: 13, scope: !3134, inlinedAt: !3120)
!3134 = !DILexicalBlockFile(scope: !3132, file: !3074, discriminator: 1)
!3135 = !DILocation(line: 62, column: 10, scope: !3132, inlinedAt: !3120)
!3136 = !DILocation(line: 63, column: 5, scope: !3132, inlinedAt: !3120)
!3137 = !DILocation(line: 122, column: 3, scope: !3098)
!3138 = !DILocation(line: 51, column: 17, scope: !3114)
!3139 = !DILocation(line: 51, column: 27, scope: !3114)
!3140 = !DILocation(line: 53, column: 8, scope: !3123)
!3141 = !DILocation(line: 53, column: 13, scope: !3125)
!3142 = !DILocation(line: 53, column: 10, scope: !3123)
!3143 = !DILocation(line: 57, column: 7, scope: !3128)
!3144 = !DILocation(line: 58, column: 7, scope: !3128)
!3145 = !DILocation(line: 61, column: 7, scope: !3114)
!3146 = !DILocation(line: 62, column: 8, scope: !3132)
!3147 = !DILocation(line: 62, column: 13, scope: !3134)
!3148 = !DILocation(line: 62, column: 10, scope: !3132)
!3149 = !DILocation(line: 63, column: 5, scope: !3132)
!3150 = !DILocation(line: 65, column: 1, scope: !3114)
!3151 = !DILocation(line: 180, column: 19, scope: !543)
!3152 = !DILocation(line: 180, column: 30, scope: !543)
!3153 = !DILocation(line: 180, column: 41, scope: !543)
!3154 = !DILocation(line: 182, column: 14, scope: !543)
!3155 = !DILocation(line: 182, column: 10, scope: !543)
!3156 = !DILocation(line: 184, column: 9, scope: !3157)
!3157 = distinct !DILexicalBlock(scope: !543, file: !542, line: 184, column: 7)
!3158 = !DILocation(line: 184, column: 7, scope: !543)
!3159 = !DILocation(line: 186, column: 13, scope: !3160)
!3160 = distinct !DILexicalBlock(scope: !3161, file: !542, line: 186, column: 11)
!3161 = distinct !DILexicalBlock(scope: !3157, file: !542, line: 185, column: 5)
!3162 = !DILocation(line: 186, column: 11, scope: !3161)
!3163 = !DILocation(line: 194, column: 30, scope: !3164)
!3164 = distinct !DILexicalBlock(scope: !3160, file: !542, line: 187, column: 9)
!3165 = !DILocation(line: 195, column: 16, scope: !3164)
!3166 = !DILocation(line: 195, column: 13, scope: !3164)
!3167 = !DILocation(line: 196, column: 9, scope: !3164)
!3168 = !DILocation(line: 204, column: 69, scope: !3169)
!3169 = distinct !DILexicalBlock(scope: !3170, file: !542, line: 204, column: 11)
!3170 = distinct !DILexicalBlock(scope: !3157, file: !542, line: 199, column: 5)
!3171 = !DILocation(line: 205, column: 11, scope: !3169)
!3172 = !DILocation(line: 204, column: 11, scope: !3170)
!3173 = !DILocation(line: 206, column: 9, scope: !3169)
!3174 = !DILocation(line: 210, column: 7, scope: !543)
!3175 = !DILocation(line: 211, column: 25, scope: !543)
!3176 = !DILocation(line: 51, column: 17, scope: !3114, inlinedAt: !3177)
!3177 = distinct !DILocation(line: 211, column: 10, scope: !543)
!3178 = !DILocation(line: 51, column: 27, scope: !3114, inlinedAt: !3177)
!3179 = !DILocation(line: 53, column: 10, scope: !3123, inlinedAt: !3177)
!3180 = !DILocation(line: 207, column: 14, scope: !3170)
!3181 = !DILocation(line: 207, column: 18, scope: !3170)
!3182 = !DILocation(line: 207, column: 9, scope: !3170)
!3183 = !DILocation(line: 53, column: 8, scope: !3123, inlinedAt: !3177)
!3184 = !DILocation(line: 57, column: 7, scope: !3128, inlinedAt: !3177)
!3185 = !DILocation(line: 58, column: 7, scope: !3128, inlinedAt: !3177)
!3186 = !DILocation(line: 61, column: 7, scope: !3114, inlinedAt: !3177)
!3187 = !DILocation(line: 62, column: 8, scope: !3132, inlinedAt: !3177)
!3188 = !DILocation(line: 62, column: 13, scope: !3134, inlinedAt: !3177)
!3189 = !DILocation(line: 62, column: 10, scope: !3132, inlinedAt: !3177)
!3190 = !DILocation(line: 63, column: 5, scope: !3132, inlinedAt: !3177)
!3191 = !DILocation(line: 211, column: 3, scope: !543)
!3192 = distinct !DISubprogram(name: "xcharalloc", scope: !542, file: !542, line: 220, type: !2107, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !538, variables: !3193)
!3193 = !{!3194}
!3194 = !DILocalVariable(name: "n", arg: 1, scope: !3192, file: !542, line: 220, type: !9)
!3195 = !DILocation(line: 220, column: 20, scope: !3192)
!3196 = !DILocation(line: 39, column: 17, scope: !3073, inlinedAt: !3197)
!3197 = distinct !DILocation(line: 222, column: 10, scope: !3192)
!3198 = !DILocation(line: 41, column: 13, scope: !3073, inlinedAt: !3197)
!3199 = !DILocation(line: 41, column: 9, scope: !3073, inlinedAt: !3197)
!3200 = !DILocation(line: 42, column: 8, scope: !3084, inlinedAt: !3197)
!3201 = !DILocation(line: 42, column: 15, scope: !3086, inlinedAt: !3197)
!3202 = !DILocation(line: 42, column: 10, scope: !3084, inlinedAt: !3197)
!3203 = !DILocation(line: 43, column: 5, scope: !3084, inlinedAt: !3197)
!3204 = !DILocation(line: 222, column: 3, scope: !3192)
!3205 = distinct !DISubprogram(name: "x2realloc", scope: !3074, file: !3074, line: 74, type: !3206, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !538, variables: !3208)
!3206 = !DISubroutineType(types: !3207)
!3207 = !{!8, !8, !546}
!3208 = !{!3209, !3210}
!3209 = !DILocalVariable(name: "p", arg: 1, scope: !3205, file: !3074, line: 74, type: !8)
!3210 = !DILocalVariable(name: "pn", arg: 2, scope: !3205, file: !3074, line: 74, type: !546)
!3211 = !DILocation(line: 74, column: 18, scope: !3205)
!3212 = !DILocation(line: 74, column: 29, scope: !3205)
!3213 = !DILocation(line: 180, column: 19, scope: !543, inlinedAt: !3214)
!3214 = distinct !DILocation(line: 76, column: 10, scope: !3205)
!3215 = !DILocation(line: 180, column: 30, scope: !543, inlinedAt: !3214)
!3216 = !DILocation(line: 180, column: 41, scope: !543, inlinedAt: !3214)
!3217 = !DILocation(line: 182, column: 14, scope: !543, inlinedAt: !3214)
!3218 = !DILocation(line: 182, column: 10, scope: !543, inlinedAt: !3214)
!3219 = !DILocation(line: 184, column: 9, scope: !3157, inlinedAt: !3214)
!3220 = !DILocation(line: 184, column: 7, scope: !543, inlinedAt: !3214)
!3221 = !DILocation(line: 186, column: 13, scope: !3160, inlinedAt: !3214)
!3222 = !DILocation(line: 186, column: 11, scope: !3161, inlinedAt: !3214)
!3223 = !DILocation(line: 210, column: 7, scope: !543, inlinedAt: !3214)
!3224 = !DILocation(line: 51, column: 17, scope: !3114, inlinedAt: !3225)
!3225 = distinct !DILocation(line: 211, column: 10, scope: !543, inlinedAt: !3214)
!3226 = !DILocation(line: 51, column: 27, scope: !3114, inlinedAt: !3225)
!3227 = !DILocation(line: 53, column: 10, scope: !3123, inlinedAt: !3225)
!3228 = !DILocation(line: 205, column: 11, scope: !3169, inlinedAt: !3214)
!3229 = !DILocation(line: 204, column: 11, scope: !3170, inlinedAt: !3214)
!3230 = !DILocation(line: 206, column: 9, scope: !3169, inlinedAt: !3214)
!3231 = !DILocation(line: 207, column: 14, scope: !3170, inlinedAt: !3214)
!3232 = !DILocation(line: 207, column: 18, scope: !3170, inlinedAt: !3214)
!3233 = !DILocation(line: 207, column: 9, scope: !3170, inlinedAt: !3214)
!3234 = !DILocation(line: 53, column: 8, scope: !3123, inlinedAt: !3225)
!3235 = !DILocation(line: 57, column: 7, scope: !3128, inlinedAt: !3225)
!3236 = !DILocation(line: 58, column: 7, scope: !3128, inlinedAt: !3225)
!3237 = !DILocation(line: 61, column: 7, scope: !3114, inlinedAt: !3225)
!3238 = !DILocation(line: 62, column: 8, scope: !3132, inlinedAt: !3225)
!3239 = !DILocation(line: 62, column: 13, scope: !3134, inlinedAt: !3225)
!3240 = !DILocation(line: 62, column: 10, scope: !3132, inlinedAt: !3225)
!3241 = !DILocation(line: 63, column: 5, scope: !3132, inlinedAt: !3225)
!3242 = !DILocation(line: 76, column: 3, scope: !3205)
!3243 = distinct !DISubprogram(name: "xzalloc", scope: !3074, file: !3074, line: 84, type: !3075, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !538, variables: !3244)
!3244 = !{!3245}
!3245 = !DILocalVariable(name: "s", arg: 1, scope: !3243, file: !3074, line: 84, type: !9)
!3246 = !DILocation(line: 84, column: 17, scope: !3243)
!3247 = !DILocation(line: 39, column: 17, scope: !3073, inlinedAt: !3248)
!3248 = distinct !DILocation(line: 86, column: 18, scope: !3243)
!3249 = !DILocation(line: 41, column: 13, scope: !3073, inlinedAt: !3248)
!3250 = !DILocation(line: 41, column: 9, scope: !3073, inlinedAt: !3248)
!3251 = !DILocation(line: 42, column: 8, scope: !3084, inlinedAt: !3248)
!3252 = !DILocation(line: 42, column: 15, scope: !3086, inlinedAt: !3248)
!3253 = !DILocation(line: 42, column: 10, scope: !3084, inlinedAt: !3248)
!3254 = !DILocation(line: 43, column: 5, scope: !3084, inlinedAt: !3248)
!3255 = !DILocation(line: 86, column: 10, scope: !3243)
!3256 = !DILocation(line: 86, column: 3, scope: !3243)
!3257 = distinct !DISubprogram(name: "xcalloc", scope: !3074, file: !3074, line: 93, type: !3060, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !538, variables: !3258)
!3258 = !{!3259, !3260, !3261}
!3259 = !DILocalVariable(name: "n", arg: 1, scope: !3257, file: !3074, line: 93, type: !9)
!3260 = !DILocalVariable(name: "s", arg: 2, scope: !3257, file: !3074, line: 93, type: !9)
!3261 = !DILocalVariable(name: "p", scope: !3257, file: !3074, line: 95, type: !8)
!3262 = !DILocation(line: 93, column: 17, scope: !3257)
!3263 = !DILocation(line: 93, column: 27, scope: !3257)
!3264 = !DILocation(line: 100, column: 7, scope: !3265)
!3265 = distinct !DILexicalBlock(scope: !3257, file: !3074, line: 100, column: 7)
!3266 = !DILocation(line: 101, column: 7, scope: !3265)
!3267 = !DILocation(line: 101, column: 18, scope: !3268)
!3268 = !DILexicalBlockFile(scope: !3265, file: !3074, discriminator: 1)
!3269 = !DILocation(line: 95, column: 9, scope: !3257)
!3270 = !DILocation(line: 101, column: 16, scope: !3268)
!3271 = !DILocation(line: 100, column: 7, scope: !3272)
!3272 = !DILexicalBlockFile(scope: !3257, file: !3074, discriminator: 1)
!3273 = !DILocation(line: 102, column: 5, scope: !3265)
!3274 = !DILocation(line: 103, column: 3, scope: !3257)
!3275 = distinct !DISubprogram(name: "xmemdup", scope: !3074, file: !3074, line: 111, type: !3276, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !538, variables: !3278)
!3276 = !DISubroutineType(types: !3277)
!3277 = !{!8, !12, !9}
!3278 = !{!3279, !3280}
!3279 = !DILocalVariable(name: "p", arg: 1, scope: !3275, file: !3074, line: 111, type: !12)
!3280 = !DILocalVariable(name: "s", arg: 2, scope: !3275, file: !3074, line: 111, type: !9)
!3281 = !DILocation(line: 111, column: 22, scope: !3275)
!3282 = !DILocation(line: 111, column: 32, scope: !3275)
!3283 = !DILocation(line: 39, column: 17, scope: !3073, inlinedAt: !3284)
!3284 = distinct !DILocation(line: 113, column: 18, scope: !3275)
!3285 = !DILocation(line: 41, column: 13, scope: !3073, inlinedAt: !3284)
!3286 = !DILocation(line: 41, column: 9, scope: !3073, inlinedAt: !3284)
!3287 = !DILocation(line: 42, column: 8, scope: !3084, inlinedAt: !3284)
!3288 = !DILocation(line: 42, column: 15, scope: !3086, inlinedAt: !3284)
!3289 = !DILocation(line: 42, column: 10, scope: !3084, inlinedAt: !3284)
!3290 = !DILocation(line: 43, column: 5, scope: !3084, inlinedAt: !3284)
!3291 = !DILocation(line: 113, column: 10, scope: !3275)
!3292 = !DILocation(line: 113, column: 3, scope: !3275)
!3293 = distinct !DISubprogram(name: "xstrdup", scope: !3074, file: !3074, line: 119, type: !2314, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !538, variables: !3294)
!3294 = !{!3295}
!3295 = !DILocalVariable(name: "string", arg: 1, scope: !3293, file: !3074, line: 119, type: !17)
!3296 = !DILocation(line: 119, column: 22, scope: !3293)
!3297 = !DILocation(line: 121, column: 27, scope: !3293)
!3298 = !DILocation(line: 121, column: 43, scope: !3293)
!3299 = !DILocation(line: 111, column: 22, scope: !3275, inlinedAt: !3300)
!3300 = distinct !DILocation(line: 121, column: 10, scope: !3301)
!3301 = !DILexicalBlockFile(scope: !3293, file: !3074, discriminator: 1)
!3302 = !DILocation(line: 111, column: 32, scope: !3275, inlinedAt: !3300)
!3303 = !DILocation(line: 39, column: 17, scope: !3073, inlinedAt: !3304)
!3304 = distinct !DILocation(line: 113, column: 18, scope: !3275, inlinedAt: !3300)
!3305 = !DILocation(line: 41, column: 13, scope: !3073, inlinedAt: !3304)
!3306 = !DILocation(line: 41, column: 9, scope: !3073, inlinedAt: !3304)
!3307 = !DILocation(line: 42, column: 8, scope: !3084, inlinedAt: !3304)
!3308 = !DILocation(line: 42, column: 15, scope: !3086, inlinedAt: !3304)
!3309 = !DILocation(line: 42, column: 10, scope: !3084, inlinedAt: !3304)
!3310 = !DILocation(line: 43, column: 5, scope: !3084, inlinedAt: !3304)
!3311 = !DILocation(line: 113, column: 10, scope: !3275, inlinedAt: !3300)
!3312 = !DILocation(line: 121, column: 3, scope: !3293)
!3313 = distinct !DISubprogram(name: "xalloc_die", scope: !3314, file: !3314, line: 32, type: !607, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !555, variables: !4)
!3314 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3315 = !DILocation(line: 34, column: 10, scope: !3313)
!3316 = !DILocation(line: 34, column: 33, scope: !3313)
!3317 = !DILocation(line: 34, column: 3, scope: !3318)
!3318 = !DILexicalBlockFile(scope: !3313, file: !3314, discriminator: 1)
!3319 = !DILocation(line: 40, column: 3, scope: !3313)
!3320 = distinct !DISubprogram(name: "rpl_calloc", scope: !3321, file: !3321, line: 42, type: !3060, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !557, variables: !3322)
!3321 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3322 = !{!3323, !3324, !3325, !3326}
!3323 = !DILocalVariable(name: "n", arg: 1, scope: !3320, file: !3321, line: 42, type: !9)
!3324 = !DILocalVariable(name: "s", arg: 2, scope: !3320, file: !3321, line: 42, type: !9)
!3325 = !DILocalVariable(name: "result", scope: !3320, file: !3321, line: 44, type: !8)
!3326 = !DILocalVariable(name: "bytes", scope: !3327, file: !3321, line: 56, type: !9)
!3327 = distinct !DILexicalBlock(scope: !3328, file: !3321, line: 53, column: 5)
!3328 = distinct !DILexicalBlock(scope: !3320, file: !3321, line: 47, column: 7)
!3329 = !DILocation(line: 42, column: 20, scope: !3320)
!3330 = !DILocation(line: 42, column: 30, scope: !3320)
!3331 = !DILocation(line: 47, column: 9, scope: !3328)
!3332 = !DILocation(line: 47, column: 19, scope: !3333)
!3333 = !DILexicalBlockFile(scope: !3328, file: !3321, discriminator: 1)
!3334 = !DILocation(line: 47, column: 14, scope: !3328)
!3335 = !DILocation(line: 56, column: 24, scope: !3327)
!3336 = !DILocation(line: 56, column: 14, scope: !3327)
!3337 = !DILocation(line: 57, column: 17, scope: !3338)
!3338 = distinct !DILexicalBlock(scope: !3327, file: !3321, line: 57, column: 11)
!3339 = !DILocation(line: 57, column: 21, scope: !3338)
!3340 = !DILocation(line: 57, column: 11, scope: !3327)
!3341 = !DILocation(line: 59, column: 11, scope: !3342)
!3342 = distinct !DILexicalBlock(scope: !3338, file: !3321, line: 58, column: 9)
!3343 = !DILocation(line: 59, column: 17, scope: !3342)
!3344 = !DILocation(line: 65, column: 12, scope: !3320)
!3345 = !DILocation(line: 44, column: 9, scope: !3320)
!3346 = !DILocation(line: 72, column: 3, scope: !3320)
!3347 = !DILocation(line: 73, column: 1, scope: !3320)
!3348 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !3349, file: !3349, line: 334, type: !3350, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !559, variables: !3364)
!3349 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3350 = !DISubroutineType(types: !3351)
!3351 = !{!9, !3352, !17, !9, !3353}
!3352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1092, size: 64)
!3353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3354, size: 64)
!3354 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1077, line: 107, baseType: !3355)
!3355 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1077, line: 95, baseType: !3356)
!3356 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1077, line: 83, size: 64, elements: !3357)
!3357 = !{!3358, !3359}
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3356, file: !1077, line: 85, baseType: !47, size: 32)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3356, file: !1077, line: 94, baseType: !3360, size: 32, offset: 32)
!3360 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3356, file: !1077, line: 86, size: 32, elements: !3361)
!3361 = !{!3362, !3363}
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3360, file: !1077, line: 89, baseType: !148, size: 32)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3360, file: !1077, line: 93, baseType: !1087, size: 32)
!3364 = !{!3365, !3366, !3367, !3368, !3369, !3370, !3371}
!3365 = !DILocalVariable(name: "pwc", arg: 1, scope: !3348, file: !3349, line: 334, type: !3352)
!3366 = !DILocalVariable(name: "s", arg: 2, scope: !3348, file: !3349, line: 334, type: !17)
!3367 = !DILocalVariable(name: "n", arg: 3, scope: !3348, file: !3349, line: 334, type: !9)
!3368 = !DILocalVariable(name: "ps", arg: 4, scope: !3348, file: !3349, line: 334, type: !3353)
!3369 = !DILocalVariable(name: "ret", scope: !3348, file: !3349, line: 336, type: !9)
!3370 = !DILocalVariable(name: "wc", scope: !3348, file: !3349, line: 337, type: !1092)
!3371 = !DILocalVariable(name: "uc", scope: !3372, file: !3349, line: 398, type: !16)
!3372 = distinct !DILexicalBlock(scope: !3373, file: !3349, line: 397, column: 5)
!3373 = distinct !DILexicalBlock(scope: !3348, file: !3349, line: 396, column: 7)
!3374 = !DILocation(line: 334, column: 23, scope: !3348)
!3375 = !DILocation(line: 334, column: 40, scope: !3348)
!3376 = !DILocation(line: 334, column: 50, scope: !3348)
!3377 = !DILocation(line: 334, column: 64, scope: !3348)
!3378 = !DILocation(line: 337, column: 3, scope: !3348)
!3379 = !DILocation(line: 353, column: 9, scope: !3380)
!3380 = distinct !DILexicalBlock(scope: !3348, file: !3349, line: 353, column: 7)
!3381 = !DILocation(line: 353, column: 7, scope: !3348)
!3382 = !DILocation(line: 388, column: 9, scope: !3348)
!3383 = !DILocation(line: 336, column: 10, scope: !3348)
!3384 = !DILocation(line: 396, column: 19, scope: !3373)
!3385 = !DILocation(line: 396, column: 31, scope: !3386)
!3386 = !DILexicalBlockFile(scope: !3373, file: !3349, discriminator: 1)
!3387 = !DILocation(line: 396, column: 26, scope: !3373)
!3388 = !DILocation(line: 396, column: 41, scope: !3389)
!3389 = !DILexicalBlockFile(scope: !3373, file: !3349, discriminator: 2)
!3390 = !DILocation(line: 396, column: 7, scope: !3391)
!3391 = !DILexicalBlockFile(scope: !3348, file: !3349, discriminator: 2)
!3392 = !DILocation(line: 398, column: 26, scope: !3372)
!3393 = !DILocation(line: 398, column: 21, scope: !3372)
!3394 = !DILocation(line: 399, column: 14, scope: !3372)
!3395 = !DILocation(line: 399, column: 12, scope: !3372)
!3396 = !DILocation(line: 405, column: 1, scope: !3348)
!3397 = distinct !DISubprogram(name: "close_stream", scope: !3398, file: !3398, line: 56, type: !3399, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !562, variables: !3441)
!3398 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3399 = !DISubroutineType(types: !3400)
!3400 = !{!47, !3401}
!3401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3402, size: 64)
!3402 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2840, line: 49, baseType: !3403)
!3403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2842, line: 241, size: 1728, elements: !3404)
!3404 = !{!3405, !3406, !3407, !3408, !3409, !3410, !3411, !3412, !3413, !3414, !3415, !3416, !3417, !3425, !3426, !3427, !3428, !3429, !3430, !3431, !3432, !3433, !3434, !3435, !3436, !3437, !3438, !3439, !3440}
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3403, file: !2842, line: 242, baseType: !47, size: 32)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3403, file: !2842, line: 247, baseType: !6, size: 64, offset: 64)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3403, file: !2842, line: 248, baseType: !6, size: 64, offset: 128)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3403, file: !2842, line: 249, baseType: !6, size: 64, offset: 192)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3403, file: !2842, line: 250, baseType: !6, size: 64, offset: 256)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3403, file: !2842, line: 251, baseType: !6, size: 64, offset: 320)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3403, file: !2842, line: 252, baseType: !6, size: 64, offset: 384)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3403, file: !2842, line: 253, baseType: !6, size: 64, offset: 448)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3403, file: !2842, line: 254, baseType: !6, size: 64, offset: 512)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3403, file: !2842, line: 256, baseType: !6, size: 64, offset: 576)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3403, file: !2842, line: 257, baseType: !6, size: 64, offset: 640)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3403, file: !2842, line: 258, baseType: !6, size: 64, offset: 704)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3403, file: !2842, line: 260, baseType: !3418, size: 64, offset: 768)
!3418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3419, size: 64)
!3419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2842, line: 156, size: 192, elements: !3420)
!3420 = !{!3421, !3422, !3424}
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3419, file: !2842, line: 157, baseType: !3418, size: 64)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3419, file: !2842, line: 158, baseType: !3423, size: 64, offset: 64)
!3423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3403, size: 64)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3419, file: !2842, line: 162, baseType: !47, size: 32, offset: 128)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3403, file: !2842, line: 262, baseType: !3423, size: 64, offset: 832)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3403, file: !2842, line: 264, baseType: !47, size: 32, offset: 896)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3403, file: !2842, line: 268, baseType: !47, size: 32, offset: 928)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3403, file: !2842, line: 270, baseType: !2868, size: 64, offset: 960)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3403, file: !2842, line: 274, baseType: !131, size: 16, offset: 1024)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3403, file: !2842, line: 275, baseType: !2873, size: 8, offset: 1040)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3403, file: !2842, line: 276, baseType: !2875, size: 8, offset: 1048)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3403, file: !2842, line: 280, baseType: !2879, size: 64, offset: 1088)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3403, file: !2842, line: 289, baseType: !2882, size: 64, offset: 1152)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3403, file: !2842, line: 297, baseType: !8, size: 64, offset: 1216)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3403, file: !2842, line: 298, baseType: !8, size: 64, offset: 1280)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3403, file: !2842, line: 299, baseType: !8, size: 64, offset: 1344)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3403, file: !2842, line: 300, baseType: !8, size: 64, offset: 1408)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3403, file: !2842, line: 302, baseType: !9, size: 64, offset: 1472)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3403, file: !2842, line: 303, baseType: !47, size: 32, offset: 1536)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3403, file: !2842, line: 305, baseType: !2890, size: 160, offset: 1568)
!3441 = !{!3442, !3443, !3445, !3446}
!3442 = !DILocalVariable(name: "stream", arg: 1, scope: !3397, file: !3398, line: 56, type: !3401)
!3443 = !DILocalVariable(name: "some_pending", scope: !3397, file: !3398, line: 58, type: !3444)
!3444 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !76)
!3445 = !DILocalVariable(name: "prev_fail", scope: !3397, file: !3398, line: 59, type: !3444)
!3446 = !DILocalVariable(name: "fclose_fail", scope: !3397, file: !3398, line: 60, type: !3444)
!3447 = !DILocation(line: 56, column: 21, scope: !3397)
!3448 = !DILocation(line: 58, column: 30, scope: !3397)
!3449 = !DILocalVariable(name: "__stream", arg: 1, scope: !3450, file: !3451, line: 132, type: !3401)
!3450 = distinct !DISubprogram(name: "ferror_unlocked", scope: !3451, file: !3451, line: 132, type: !3399, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !562, variables: !3452)
!3451 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3452 = !{!3449}
!3453 = !DILocation(line: 132, column: 1, scope: !3450, inlinedAt: !3454)
!3454 = distinct !DILocation(line: 59, column: 27, scope: !3397)
!3455 = !DILocation(line: 134, column: 10, scope: !3450, inlinedAt: !3454)
!3456 = !{!3457, !684, i64 0}
!3457 = !{!"_IO_FILE", !684, i64 0, !592, i64 8, !592, i64 16, !592, i64 24, !592, i64 32, !592, i64 40, !592, i64 48, !592, i64 56, !592, i64 64, !592, i64 72, !592, i64 80, !592, i64 88, !592, i64 96, !592, i64 104, !684, i64 112, !684, i64 116, !2152, i64 120, !1445, i64 128, !593, i64 130, !593, i64 131, !592, i64 136, !2152, i64 144, !592, i64 152, !592, i64 160, !592, i64 168, !592, i64 176, !2152, i64 184, !684, i64 192, !593, i64 196}
!3458 = !DILocation(line: 59, column: 43, scope: !3397)
!3459 = !DILocation(line: 60, column: 29, scope: !3397)
!3460 = !DILocation(line: 60, column: 45, scope: !3397)
!3461 = !DILocation(line: 70, column: 17, scope: !3462)
!3462 = distinct !DILexicalBlock(scope: !3397, file: !3398, line: 70, column: 7)
!3463 = !DILocation(line: 70, column: 33, scope: !3464)
!3464 = !DILexicalBlockFile(scope: !3462, file: !3398, discriminator: 1)
!3465 = !DILocation(line: 70, column: 53, scope: !3466)
!3466 = !DILexicalBlockFile(scope: !3462, file: !3398, discriminator: 3)
!3467 = !DILocation(line: 70, column: 7, scope: !3468)
!3468 = !DILexicalBlockFile(scope: !3397, file: !3398, discriminator: 3)
!3469 = !DILocation(line: 72, column: 11, scope: !3470)
!3470 = distinct !DILexicalBlock(scope: !3462, file: !3398, line: 71, column: 5)
!3471 = !DILocation(line: 73, column: 9, scope: !3472)
!3472 = distinct !DILexicalBlock(scope: !3470, file: !3398, line: 72, column: 11)
!3473 = !DILocation(line: 73, column: 15, scope: !3472)
!3474 = !DILocation(line: 78, column: 1, scope: !3397)
!3475 = distinct !DISubprogram(name: "hard_locale", scope: !3476, file: !3476, line: 38, type: !3477, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !564, variables: !3479)
!3476 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3477 = !DISubroutineType(types: !3478)
!3478 = !{!76, !47}
!3479 = !{!3480, !3481, !3482, !3483, !3490, !3491, !3493, !3494, !3496, !3497, !3499}
!3480 = !DILocalVariable(name: "category", arg: 1, scope: !3475, file: !3476, line: 38, type: !47)
!3481 = !DILocalVariable(name: "hard", scope: !3475, file: !3476, line: 40, type: !76)
!3482 = !DILocalVariable(name: "p", scope: !3475, file: !3476, line: 41, type: !17)
!3483 = !DILocalVariable(name: "__s1_len", scope: !3484, file: !3476, line: 47, type: !9)
!3484 = distinct !DILexicalBlock(scope: !3485, file: !3476, line: 47, column: 15)
!3485 = distinct !DILexicalBlock(scope: !3486, file: !3476, line: 47, column: 15)
!3486 = distinct !DILexicalBlock(scope: !3487, file: !3476, line: 46, column: 9)
!3487 = distinct !DILexicalBlock(scope: !3488, file: !3476, line: 45, column: 11)
!3488 = distinct !DILexicalBlock(scope: !3489, file: !3476, line: 44, column: 5)
!3489 = distinct !DILexicalBlock(scope: !3475, file: !3476, line: 43, column: 7)
!3490 = !DILocalVariable(name: "__s2_len", scope: !3484, file: !3476, line: 47, type: !9)
!3491 = !DILocalVariable(name: "__s2", scope: !3492, file: !3476, line: 47, type: !14)
!3492 = distinct !DILexicalBlock(scope: !3484, file: !3476, line: 47, column: 15)
!3493 = !DILocalVariable(name: "__result", scope: !3492, file: !3476, line: 47, type: !47)
!3494 = !DILocalVariable(name: "__s1_len", scope: !3495, file: !3476, line: 47, type: !9)
!3495 = distinct !DILexicalBlock(scope: !3485, file: !3476, line: 47, column: 39)
!3496 = !DILocalVariable(name: "__s2_len", scope: !3495, file: !3476, line: 47, type: !9)
!3497 = !DILocalVariable(name: "__s2", scope: !3498, file: !3476, line: 47, type: !14)
!3498 = distinct !DILexicalBlock(scope: !3495, file: !3476, line: 47, column: 39)
!3499 = !DILocalVariable(name: "__result", scope: !3498, file: !3476, line: 47, type: !47)
!3500 = !DILocation(line: 38, column: 18, scope: !3475)
!3501 = !DILocation(line: 40, column: 8, scope: !3475)
!3502 = !DILocation(line: 41, column: 19, scope: !3475)
!3503 = !DILocation(line: 41, column: 15, scope: !3475)
!3504 = !DILocation(line: 43, column: 7, scope: !3489)
!3505 = !DILocation(line: 43, column: 7, scope: !3475)
!3506 = !DILocation(line: 47, column: 15, scope: !3484)
!3507 = !DILocation(line: 47, column: 15, scope: !3492)
!3508 = !DILocation(line: 47, column: 15, scope: !3509)
!3509 = !DILexicalBlockFile(scope: !3492, file: !3476, discriminator: 2)
!3510 = !DILocation(line: 47, column: 15, scope: !3511)
!3511 = !DILexicalBlockFile(scope: !3512, file: !3476, discriminator: 3)
!3512 = distinct !DILexicalBlock(scope: !3492, file: !3476, line: 47, column: 15)
!3513 = !DILocation(line: 47, column: 15, scope: !3514)
!3514 = !DILexicalBlockFile(scope: !3512, file: !3476, discriminator: 2)
!3515 = !DILocation(line: 47, column: 15, scope: !3516)
!3516 = !DILexicalBlockFile(scope: !3517, file: !3476, discriminator: 4)
!3517 = distinct !DILexicalBlock(scope: !3512, file: !3476, line: 47, column: 15)
!3518 = !DILocation(line: 47, column: 15, scope: !3519)
!3519 = !DILexicalBlockFile(scope: !3484, file: !3476, discriminator: 11)
!3520 = !DILocation(line: 47, column: 36, scope: !3521)
!3521 = !DILexicalBlockFile(scope: !3485, file: !3476, discriminator: 13)
!3522 = !DILocation(line: 47, column: 39, scope: !3495)
!3523 = !DILocation(line: 47, column: 39, scope: !3524)
!3524 = !DILexicalBlockFile(scope: !3495, file: !3476, discriminator: 26)
!3525 = !DILocation(line: 47, column: 59, scope: !3526)
!3526 = !DILexicalBlockFile(scope: !3485, file: !3476, discriminator: 27)
!3527 = !DILocation(line: 47, column: 15, scope: !3528)
!3528 = !DILexicalBlockFile(scope: !3486, file: !3476, discriminator: 27)
!3529 = !DILocation(line: 48, column: 13, scope: !3485)
!3530 = !DILocation(line: 71, column: 3, scope: !3475)
!3531 = distinct !DISubprogram(name: "locale_charset", scope: !528, file: !528, line: 393, type: !3532, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !184, variables: !3534)
!3532 = !DISubroutineType(types: !3533)
!3533 = !{!17}
!3534 = !{!3535, !3536, !3537, !3542}
!3535 = !DILocalVariable(name: "codeset", scope: !3531, file: !528, line: 395, type: !17)
!3536 = !DILocalVariable(name: "aliases", scope: !3531, file: !528, line: 396, type: !17)
!3537 = !DILocalVariable(name: "__s1_len", scope: !3538, file: !528, line: 592, type: !9)
!3538 = distinct !DILexicalBlock(scope: !3539, file: !528, line: 592, column: 9)
!3539 = distinct !DILexicalBlock(scope: !3540, file: !528, line: 592, column: 9)
!3540 = distinct !DILexicalBlock(scope: !3541, file: !528, line: 589, column: 3)
!3541 = distinct !DILexicalBlock(scope: !3531, file: !528, line: 589, column: 3)
!3542 = !DILocalVariable(name: "__s2_len", scope: !3538, file: !528, line: 592, type: !9)
!3543 = !DILocalVariable(name: "buf1", scope: !3544, file: !528, line: 196, type: !3611)
!3544 = distinct !DILexicalBlock(scope: !3545, file: !528, line: 194, column: 21)
!3545 = distinct !DILexicalBlock(scope: !3546, file: !528, line: 193, column: 19)
!3546 = distinct !DILexicalBlock(scope: !3547, file: !528, line: 193, column: 19)
!3547 = distinct !DILexicalBlock(scope: !3548, file: !528, line: 188, column: 17)
!3548 = distinct !DILexicalBlock(scope: !3549, file: !528, line: 181, column: 19)
!3549 = distinct !DILexicalBlock(scope: !3550, file: !528, line: 177, column: 13)
!3550 = distinct !DILexicalBlock(scope: !3551, file: !528, line: 173, column: 15)
!3551 = distinct !DILexicalBlock(scope: !3552, file: !528, line: 161, column: 9)
!3552 = distinct !DILexicalBlock(scope: !3553, file: !528, line: 157, column: 11)
!3553 = distinct !DILexicalBlock(scope: !3554, file: !528, line: 130, column: 5)
!3554 = distinct !DILexicalBlock(scope: !3555, file: !528, line: 129, column: 7)
!3555 = distinct !DISubprogram(name: "get_charset_aliases", scope: !528, file: !528, line: 124, type: !3532, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !184, variables: !3556)
!3556 = !{!3557, !3558, !3559, !3560, !3561, !3563, !3564, !3565, !3566, !3607, !3608, !3609, !3543, !3610, !3614, !3615, !3616}
!3557 = !DILocalVariable(name: "cp", scope: !3555, file: !528, line: 126, type: !17)
!3558 = !DILocalVariable(name: "dir", scope: !3553, file: !528, line: 132, type: !17)
!3559 = !DILocalVariable(name: "base", scope: !3553, file: !528, line: 133, type: !17)
!3560 = !DILocalVariable(name: "file_name", scope: !3553, file: !528, line: 134, type: !6)
!3561 = !DILocalVariable(name: "dir_len", scope: !3562, file: !528, line: 144, type: !9)
!3562 = distinct !DILexicalBlock(scope: !3553, file: !528, line: 143, column: 7)
!3563 = !DILocalVariable(name: "base_len", scope: !3562, file: !528, line: 145, type: !9)
!3564 = !DILocalVariable(name: "add_slash", scope: !3562, file: !528, line: 146, type: !47)
!3565 = !DILocalVariable(name: "fd", scope: !3551, file: !528, line: 162, type: !47)
!3566 = !DILocalVariable(name: "fp", scope: !3549, file: !528, line: 178, type: !3567)
!3567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3568, size: 64)
!3568 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2840, line: 49, baseType: !3569)
!3569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2842, line: 241, size: 1728, elements: !3570)
!3570 = !{!3571, !3572, !3573, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3581, !3582, !3583, !3591, !3592, !3593, !3594, !3595, !3596, !3597, !3598, !3599, !3600, !3601, !3602, !3603, !3604, !3605, !3606}
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3569, file: !2842, line: 242, baseType: !47, size: 32)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3569, file: !2842, line: 247, baseType: !6, size: 64, offset: 64)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3569, file: !2842, line: 248, baseType: !6, size: 64, offset: 128)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3569, file: !2842, line: 249, baseType: !6, size: 64, offset: 192)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3569, file: !2842, line: 250, baseType: !6, size: 64, offset: 256)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3569, file: !2842, line: 251, baseType: !6, size: 64, offset: 320)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3569, file: !2842, line: 252, baseType: !6, size: 64, offset: 384)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3569, file: !2842, line: 253, baseType: !6, size: 64, offset: 448)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3569, file: !2842, line: 254, baseType: !6, size: 64, offset: 512)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3569, file: !2842, line: 256, baseType: !6, size: 64, offset: 576)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3569, file: !2842, line: 257, baseType: !6, size: 64, offset: 640)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3569, file: !2842, line: 258, baseType: !6, size: 64, offset: 704)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3569, file: !2842, line: 260, baseType: !3584, size: 64, offset: 768)
!3584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3585, size: 64)
!3585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2842, line: 156, size: 192, elements: !3586)
!3586 = !{!3587, !3588, !3590}
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3585, file: !2842, line: 157, baseType: !3584, size: 64)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3585, file: !2842, line: 158, baseType: !3589, size: 64, offset: 64)
!3589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3569, size: 64)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3585, file: !2842, line: 162, baseType: !47, size: 32, offset: 128)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3569, file: !2842, line: 262, baseType: !3589, size: 64, offset: 832)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3569, file: !2842, line: 264, baseType: !47, size: 32, offset: 896)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3569, file: !2842, line: 268, baseType: !47, size: 32, offset: 928)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3569, file: !2842, line: 270, baseType: !2868, size: 64, offset: 960)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3569, file: !2842, line: 274, baseType: !131, size: 16, offset: 1024)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3569, file: !2842, line: 275, baseType: !2873, size: 8, offset: 1040)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3569, file: !2842, line: 276, baseType: !2875, size: 8, offset: 1048)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3569, file: !2842, line: 280, baseType: !2879, size: 64, offset: 1088)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3569, file: !2842, line: 289, baseType: !2882, size: 64, offset: 1152)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3569, file: !2842, line: 297, baseType: !8, size: 64, offset: 1216)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3569, file: !2842, line: 298, baseType: !8, size: 64, offset: 1280)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3569, file: !2842, line: 299, baseType: !8, size: 64, offset: 1344)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3569, file: !2842, line: 300, baseType: !8, size: 64, offset: 1408)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3569, file: !2842, line: 302, baseType: !9, size: 64, offset: 1472)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3569, file: !2842, line: 303, baseType: !47, size: 32, offset: 1536)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3569, file: !2842, line: 305, baseType: !2890, size: 160, offset: 1568)
!3607 = !DILocalVariable(name: "res_ptr", scope: !3547, file: !528, line: 190, type: !6)
!3608 = !DILocalVariable(name: "res_size", scope: !3547, file: !528, line: 191, type: !9)
!3609 = !DILocalVariable(name: "c", scope: !3544, file: !528, line: 195, type: !47)
!3610 = !DILocalVariable(name: "buf2", scope: !3544, file: !528, line: 197, type: !3611)
!3611 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 408, elements: !3612)
!3612 = !{!3613}
!3613 = !DISubrange(count: 51)
!3614 = !DILocalVariable(name: "l1", scope: !3544, file: !528, line: 198, type: !9)
!3615 = !DILocalVariable(name: "l2", scope: !3544, file: !528, line: 198, type: !9)
!3616 = !DILocalVariable(name: "old_res_ptr", scope: !3544, file: !528, line: 199, type: !6)
!3617 = !DILocation(line: 196, column: 28, scope: !3544, inlinedAt: !3618)
!3618 = distinct !DILocation(line: 589, column: 18, scope: !3541)
!3619 = !DILocation(line: 197, column: 28, scope: !3544, inlinedAt: !3618)
!3620 = !DILocation(line: 403, column: 13, scope: !3531)
!3621 = !DILocation(line: 395, column: 15, scope: !3531)
!3622 = !DILocation(line: 584, column: 15, scope: !3623)
!3623 = distinct !DILexicalBlock(scope: !3531, file: !528, line: 584, column: 7)
!3624 = !DILocation(line: 584, column: 7, scope: !3531)
!3625 = !DILocation(line: 128, column: 8, scope: !3555, inlinedAt: !3618)
!3626 = !DILocation(line: 126, column: 15, scope: !3555, inlinedAt: !3618)
!3627 = !DILocation(line: 129, column: 10, scope: !3554, inlinedAt: !3618)
!3628 = !DILocation(line: 129, column: 7, scope: !3555, inlinedAt: !3618)
!3629 = !DILocation(line: 138, column: 13, scope: !3553, inlinedAt: !3618)
!3630 = !DILocation(line: 132, column: 19, scope: !3553, inlinedAt: !3618)
!3631 = !DILocation(line: 139, column: 15, scope: !3632, inlinedAt: !3618)
!3632 = distinct !DILexicalBlock(scope: !3553, file: !528, line: 139, column: 11)
!3633 = !DILocation(line: 139, column: 23, scope: !3632, inlinedAt: !3618)
!3634 = !DILocation(line: 139, column: 26, scope: !3635, inlinedAt: !3618)
!3635 = !DILexicalBlockFile(scope: !3632, file: !528, discriminator: 1)
!3636 = !DILocation(line: 139, column: 33, scope: !3635, inlinedAt: !3618)
!3637 = !DILocation(line: 139, column: 11, scope: !3638, inlinedAt: !3618)
!3638 = !DILexicalBlockFile(scope: !3553, file: !528, discriminator: 1)
!3639 = !DILocation(line: 140, column: 9, scope: !3632, inlinedAt: !3618)
!3640 = !DILocation(line: 144, column: 26, scope: !3562, inlinedAt: !3618)
!3641 = !DILocation(line: 144, column: 16, scope: !3562, inlinedAt: !3618)
!3642 = !DILocation(line: 145, column: 16, scope: !3562, inlinedAt: !3618)
!3643 = !DILocation(line: 146, column: 34, scope: !3562, inlinedAt: !3618)
!3644 = !DILocation(line: 146, column: 38, scope: !3562, inlinedAt: !3618)
!3645 = !DILocation(line: 146, column: 42, scope: !3646, inlinedAt: !3618)
!3646 = !DILexicalBlockFile(scope: !3562, file: !528, discriminator: 1)
!3647 = !DILocation(line: 146, column: 41, scope: !3646, inlinedAt: !3618)
!3648 = !DILocation(line: 147, column: 48, scope: !3562, inlinedAt: !3618)
!3649 = !DILocation(line: 147, column: 46, scope: !3562, inlinedAt: !3618)
!3650 = !DILocation(line: 147, column: 69, scope: !3562, inlinedAt: !3618)
!3651 = !DILocation(line: 147, column: 30, scope: !3562, inlinedAt: !3618)
!3652 = !DILocation(line: 134, column: 13, scope: !3553, inlinedAt: !3618)
!3653 = !DILocation(line: 148, column: 13, scope: !3562, inlinedAt: !3618)
!3654 = !DILocation(line: 150, column: 13, scope: !3655, inlinedAt: !3618)
!3655 = distinct !DILexicalBlock(scope: !3656, file: !528, line: 149, column: 11)
!3656 = distinct !DILexicalBlock(scope: !3562, file: !528, line: 148, column: 13)
!3657 = !DILocation(line: 151, column: 17, scope: !3655, inlinedAt: !3618)
!3658 = !DILocation(line: 152, column: 34, scope: !3659, inlinedAt: !3618)
!3659 = distinct !DILexicalBlock(scope: !3655, file: !528, line: 151, column: 17)
!3660 = !DILocation(line: 153, column: 41, scope: !3655, inlinedAt: !3618)
!3661 = !DILocation(line: 153, column: 13, scope: !3655, inlinedAt: !3618)
!3662 = !DILocation(line: 157, column: 11, scope: !3553, inlinedAt: !3618)
!3663 = !DILocation(line: 171, column: 16, scope: !3551, inlinedAt: !3618)
!3664 = !DILocation(line: 162, column: 15, scope: !3551, inlinedAt: !3618)
!3665 = !DILocation(line: 173, column: 18, scope: !3550, inlinedAt: !3618)
!3666 = !DILocation(line: 173, column: 15, scope: !3551, inlinedAt: !3618)
!3667 = !DILocation(line: 180, column: 20, scope: !3549, inlinedAt: !3618)
!3668 = !DILocation(line: 178, column: 21, scope: !3549, inlinedAt: !3618)
!3669 = !DILocation(line: 181, column: 22, scope: !3548, inlinedAt: !3618)
!3670 = !DILocation(line: 181, column: 19, scope: !3549, inlinedAt: !3618)
!3671 = !DILocation(line: 190, column: 25, scope: !3547, inlinedAt: !3618)
!3672 = !DILocation(line: 184, column: 19, scope: !3673, inlinedAt: !3618)
!3673 = distinct !DILexicalBlock(scope: !3548, file: !528, line: 182, column: 17)
!3674 = !DILocation(line: 186, column: 17, scope: !3673, inlinedAt: !3618)
!3675 = !DILocation(line: 191, column: 26, scope: !3547, inlinedAt: !3618)
!3676 = !DILocation(line: 196, column: 23, scope: !3544, inlinedAt: !3618)
!3677 = !DILocation(line: 197, column: 23, scope: !3544, inlinedAt: !3618)
!3678 = !DILocalVariable(name: "__fp", arg: 1, scope: !3679, file: !3451, line: 63, type: !3567)
!3679 = distinct !DISubprogram(name: "getc_unlocked", scope: !3451, file: !3451, line: 63, type: !3680, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !184, variables: !3682)
!3680 = !DISubroutineType(types: !3681)
!3681 = !{!47, !3567}
!3682 = !{!3678}
!3683 = !DILocation(line: 63, column: 22, scope: !3679, inlinedAt: !3684)
!3684 = distinct !DILocation(line: 201, column: 27, scope: !3544, inlinedAt: !3618)
!3685 = !DILocation(line: 65, column: 10, scope: !3679, inlinedAt: !3684)
!3686 = !{!3457, !592, i64 8}
!3687 = !{!3457, !592, i64 16}
!3688 = !{!"branch_weights", i32 2000, i32 1}
!3689 = !DILocation(line: 65, column: 10, scope: !3690, inlinedAt: !3684)
!3690 = !DILexicalBlockFile(scope: !3679, file: !3451, discriminator: 1)
!3691 = !DILocation(line: 65, column: 10, scope: !3692, inlinedAt: !3684)
!3692 = !DILexicalBlockFile(scope: !3679, file: !3451, discriminator: 2)
!3693 = !DILocation(line: 65, column: 10, scope: !3694, inlinedAt: !3684)
!3694 = !DILexicalBlockFile(scope: !3679, file: !3451, discriminator: 3)
!3695 = !DILocation(line: 195, column: 27, scope: !3544, inlinedAt: !3618)
!3696 = !DILocation(line: 202, column: 27, scope: !3544, inlinedAt: !3618)
!3697 = !DILocation(line: 63, column: 22, scope: !3679, inlinedAt: !3698)
!3698 = distinct !DILocation(line: 210, column: 33, scope: !3699, inlinedAt: !3618)
!3699 = distinct !DILexicalBlock(scope: !3700, file: !528, line: 207, column: 25)
!3700 = distinct !DILexicalBlock(scope: !3544, file: !528, line: 206, column: 27)
!3701 = !DILocation(line: 65, column: 10, scope: !3679, inlinedAt: !3698)
!3702 = !DILocation(line: 65, column: 10, scope: !3690, inlinedAt: !3698)
!3703 = !DILocation(line: 65, column: 10, scope: !3692, inlinedAt: !3698)
!3704 = !DILocation(line: 65, column: 10, scope: !3694, inlinedAt: !3698)
!3705 = !DILocation(line: 210, column: 29, scope: !3706, inlinedAt: !3618)
!3706 = !DILexicalBlockFile(scope: !3699, file: !528, discriminator: 1)
!3707 = distinct !{!3707, !3708, !3709}
!3708 = !DILocation(line: 193, column: 19, scope: !3546)
!3709 = !DILocation(line: 241, column: 21, scope: !3546)
!3710 = !DILocation(line: 216, column: 23, scope: !3544, inlinedAt: !3618)
!3711 = !DILocation(line: 217, column: 27, scope: !3712, inlinedAt: !3618)
!3712 = distinct !DILexicalBlock(scope: !3544, file: !528, line: 217, column: 27)
!3713 = !DILocation(line: 217, column: 64, scope: !3712, inlinedAt: !3618)
!3714 = !DILocation(line: 217, column: 27, scope: !3544, inlinedAt: !3618)
!3715 = !DILocation(line: 219, column: 28, scope: !3544, inlinedAt: !3618)
!3716 = !DILocation(line: 198, column: 30, scope: !3544, inlinedAt: !3618)
!3717 = !DILocation(line: 220, column: 28, scope: !3544, inlinedAt: !3618)
!3718 = !DILocation(line: 198, column: 34, scope: !3544, inlinedAt: !3618)
!3719 = !DILocation(line: 199, column: 29, scope: !3544, inlinedAt: !3618)
!3720 = !DILocation(line: 222, column: 36, scope: !3721, inlinedAt: !3618)
!3721 = distinct !DILexicalBlock(scope: !3544, file: !528, line: 222, column: 27)
!3722 = !DILocation(line: 222, column: 27, scope: !3544, inlinedAt: !3618)
!3723 = !DILocation(line: 225, column: 63, scope: !3724, inlinedAt: !3618)
!3724 = distinct !DILexicalBlock(scope: !3721, file: !528, line: 223, column: 25)
!3725 = !DILocation(line: 225, column: 46, scope: !3724, inlinedAt: !3618)
!3726 = !DILocation(line: 226, column: 25, scope: !3724, inlinedAt: !3618)
!3727 = !DILocation(line: 229, column: 36, scope: !3728, inlinedAt: !3618)
!3728 = distinct !DILexicalBlock(scope: !3721, file: !528, line: 228, column: 25)
!3729 = !DILocation(line: 230, column: 73, scope: !3728, inlinedAt: !3618)
!3730 = !DILocation(line: 230, column: 46, scope: !3728, inlinedAt: !3618)
!3731 = !DILocation(line: 232, column: 35, scope: !3732, inlinedAt: !3618)
!3732 = distinct !DILexicalBlock(scope: !3544, file: !528, line: 232, column: 27)
!3733 = !DILocation(line: 232, column: 27, scope: !3544, inlinedAt: !3618)
!3734 = !DILocation(line: 236, column: 27, scope: !3735, inlinedAt: !3618)
!3735 = distinct !DILexicalBlock(scope: !3732, file: !528, line: 233, column: 25)
!3736 = !DILocation(line: 237, column: 27, scope: !3735, inlinedAt: !3618)
!3737 = !DILocation(line: 239, column: 39, scope: !3544, inlinedAt: !3618)
!3738 = !DILocation(line: 239, column: 50, scope: !3544, inlinedAt: !3618)
!3739 = !DILocation(line: 239, column: 61, scope: !3544, inlinedAt: !3618)
!3740 = !DILocalVariable(name: "__dest", arg: 1, scope: !3741, file: !3742, line: 107, type: !3745)
!3741 = distinct !DISubprogram(name: "strcpy", scope: !3742, file: !3742, line: 107, type: !3743, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !184, variables: !3747)
!3742 = !DIFile(filename: "/usr/include/bits/string3.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3743 = !DISubroutineType(types: !3744)
!3744 = !{!6, !3745, !3746}
!3745 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !6)
!3746 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !17)
!3747 = !{!3740, !3748}
!3748 = !DILocalVariable(name: "__src", arg: 2, scope: !3741, file: !3742, line: 107, type: !3746)
!3749 = !DILocation(line: 107, column: 1, scope: !3741, inlinedAt: !3750)
!3750 = distinct !DILocation(line: 239, column: 23, scope: !3544, inlinedAt: !3618)
!3751 = !DILocation(line: 109, column: 49, scope: !3741, inlinedAt: !3750)
!3752 = !DILocation(line: 109, column: 10, scope: !3741, inlinedAt: !3750)
!3753 = !DILocation(line: 107, column: 1, scope: !3741, inlinedAt: !3754)
!3754 = distinct !DILocation(line: 240, column: 23, scope: !3544, inlinedAt: !3618)
!3755 = !DILocation(line: 109, column: 49, scope: !3741, inlinedAt: !3754)
!3756 = !DILocation(line: 109, column: 10, scope: !3741, inlinedAt: !3754)
!3757 = !DILocation(line: 241, column: 21, scope: !3545, inlinedAt: !3618)
!3758 = !DILocation(line: 242, column: 19, scope: !3547, inlinedAt: !3618)
!3759 = !DILocation(line: 243, column: 32, scope: !3760, inlinedAt: !3618)
!3760 = distinct !DILexicalBlock(scope: !3547, file: !528, line: 243, column: 23)
!3761 = !DILocation(line: 243, column: 23, scope: !3547, inlinedAt: !3618)
!3762 = !DILocation(line: 247, column: 33, scope: !3763, inlinedAt: !3618)
!3763 = distinct !DILexicalBlock(scope: !3760, file: !528, line: 246, column: 21)
!3764 = !DILocation(line: 247, column: 45, scope: !3763, inlinedAt: !3618)
!3765 = !DILocation(line: 253, column: 11, scope: !3551, inlinedAt: !3618)
!3766 = !DILocation(line: 377, column: 23, scope: !3553, inlinedAt: !3618)
!3767 = !DILocation(line: 378, column: 5, scope: !3553, inlinedAt: !3618)
!3768 = !DILocation(line: 396, column: 15, scope: !3531)
!3769 = !DILocation(line: 590, column: 8, scope: !3540)
!3770 = !DILocation(line: 590, column: 17, scope: !3540)
!3771 = !DILocation(line: 589, column: 3, scope: !3772)
!3772 = !DILexicalBlockFile(scope: !3541, file: !528, discriminator: 1)
!3773 = !DILocation(line: 592, column: 9, scope: !3538)
!3774 = !DILocation(line: 592, column: 35, scope: !3539)
!3775 = !DILocation(line: 593, column: 9, scope: !3539)
!3776 = !DILocation(line: 593, column: 24, scope: !3777)
!3777 = !DILexicalBlockFile(scope: !3539, file: !528, discriminator: 1)
!3778 = !DILocation(line: 593, column: 31, scope: !3777)
!3779 = !DILocation(line: 593, column: 34, scope: !3780)
!3780 = !DILexicalBlockFile(scope: !3539, file: !528, discriminator: 2)
!3781 = !DILocation(line: 593, column: 45, scope: !3780)
!3782 = !DILocation(line: 592, column: 9, scope: !3783)
!3783 = !DILexicalBlockFile(scope: !3540, file: !528, discriminator: 1)
!3784 = !DILocation(line: 595, column: 29, scope: !3785)
!3785 = distinct !DILexicalBlock(scope: !3539, file: !528, line: 594, column: 7)
!3786 = !DILocation(line: 595, column: 27, scope: !3785)
!3787 = !DILocation(line: 595, column: 46, scope: !3785)
!3788 = !DILocation(line: 596, column: 9, scope: !3785)
!3789 = !DILocation(line: 591, column: 19, scope: !3540)
!3790 = !DILocation(line: 591, column: 36, scope: !3540)
!3791 = !DILocation(line: 591, column: 16, scope: !3540)
!3792 = !DILocation(line: 591, column: 52, scope: !3783)
!3793 = !DILocation(line: 591, column: 69, scope: !3540)
!3794 = !DILocation(line: 591, column: 49, scope: !3540)
!3795 = distinct !{!3795, !3796, !3797}
!3796 = !DILocation(line: 589, column: 3, scope: !3541)
!3797 = !DILocation(line: 597, column: 7, scope: !3541)
!3798 = !DILocation(line: 602, column: 7, scope: !3799)
!3799 = distinct !DILexicalBlock(scope: !3531, file: !528, line: 602, column: 7)
!3800 = !DILocation(line: 602, column: 18, scope: !3799)
!3801 = !DILocation(line: 602, column: 7, scope: !3531)
!3802 = !DILocation(line: 612, column: 3, scope: !3531)
!3803 = distinct !DISubprogram(name: "rpl_fclose", scope: !3804, file: !3804, line: 56, type: !3805, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !567, variables: !3847)
!3804 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3805 = !DISubroutineType(types: !3806)
!3806 = !{!47, !3807}
!3807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3808, size: 64)
!3808 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2840, line: 49, baseType: !3809)
!3809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2842, line: 241, size: 1728, elements: !3810)
!3810 = !{!3811, !3812, !3813, !3814, !3815, !3816, !3817, !3818, !3819, !3820, !3821, !3822, !3823, !3831, !3832, !3833, !3834, !3835, !3836, !3837, !3838, !3839, !3840, !3841, !3842, !3843, !3844, !3845, !3846}
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3809, file: !2842, line: 242, baseType: !47, size: 32)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3809, file: !2842, line: 247, baseType: !6, size: 64, offset: 64)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3809, file: !2842, line: 248, baseType: !6, size: 64, offset: 128)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3809, file: !2842, line: 249, baseType: !6, size: 64, offset: 192)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3809, file: !2842, line: 250, baseType: !6, size: 64, offset: 256)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3809, file: !2842, line: 251, baseType: !6, size: 64, offset: 320)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3809, file: !2842, line: 252, baseType: !6, size: 64, offset: 384)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3809, file: !2842, line: 253, baseType: !6, size: 64, offset: 448)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3809, file: !2842, line: 254, baseType: !6, size: 64, offset: 512)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3809, file: !2842, line: 256, baseType: !6, size: 64, offset: 576)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3809, file: !2842, line: 257, baseType: !6, size: 64, offset: 640)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3809, file: !2842, line: 258, baseType: !6, size: 64, offset: 704)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3809, file: !2842, line: 260, baseType: !3824, size: 64, offset: 768)
!3824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3825, size: 64)
!3825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2842, line: 156, size: 192, elements: !3826)
!3826 = !{!3827, !3828, !3830}
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3825, file: !2842, line: 157, baseType: !3824, size: 64)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3825, file: !2842, line: 158, baseType: !3829, size: 64, offset: 64)
!3829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3809, size: 64)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3825, file: !2842, line: 162, baseType: !47, size: 32, offset: 128)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3809, file: !2842, line: 262, baseType: !3829, size: 64, offset: 832)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3809, file: !2842, line: 264, baseType: !47, size: 32, offset: 896)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3809, file: !2842, line: 268, baseType: !47, size: 32, offset: 928)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3809, file: !2842, line: 270, baseType: !2868, size: 64, offset: 960)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3809, file: !2842, line: 274, baseType: !131, size: 16, offset: 1024)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3809, file: !2842, line: 275, baseType: !2873, size: 8, offset: 1040)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3809, file: !2842, line: 276, baseType: !2875, size: 8, offset: 1048)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3809, file: !2842, line: 280, baseType: !2879, size: 64, offset: 1088)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3809, file: !2842, line: 289, baseType: !2882, size: 64, offset: 1152)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3809, file: !2842, line: 297, baseType: !8, size: 64, offset: 1216)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3809, file: !2842, line: 298, baseType: !8, size: 64, offset: 1280)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3809, file: !2842, line: 299, baseType: !8, size: 64, offset: 1344)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3809, file: !2842, line: 300, baseType: !8, size: 64, offset: 1408)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3809, file: !2842, line: 302, baseType: !9, size: 64, offset: 1472)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3809, file: !2842, line: 303, baseType: !47, size: 32, offset: 1536)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3809, file: !2842, line: 305, baseType: !2890, size: 160, offset: 1568)
!3847 = !{!3848, !3849, !3850, !3851}
!3848 = !DILocalVariable(name: "fp", arg: 1, scope: !3803, file: !3804, line: 56, type: !3807)
!3849 = !DILocalVariable(name: "saved_errno", scope: !3803, file: !3804, line: 58, type: !47)
!3850 = !DILocalVariable(name: "fd", scope: !3803, file: !3804, line: 59, type: !47)
!3851 = !DILocalVariable(name: "result", scope: !3803, file: !3804, line: 60, type: !47)
!3852 = !DILocation(line: 56, column: 19, scope: !3803)
!3853 = !DILocation(line: 58, column: 7, scope: !3803)
!3854 = !DILocation(line: 60, column: 7, scope: !3803)
!3855 = !DILocation(line: 63, column: 8, scope: !3803)
!3856 = !DILocation(line: 59, column: 7, scope: !3803)
!3857 = !DILocation(line: 64, column: 10, scope: !3858)
!3858 = distinct !DILexicalBlock(scope: !3803, file: !3804, line: 64, column: 7)
!3859 = !DILocation(line: 64, column: 7, scope: !3803)
!3860 = !DILocation(line: 65, column: 12, scope: !3858)
!3861 = !DILocation(line: 65, column: 5, scope: !3858)
!3862 = !DILocation(line: 70, column: 9, scope: !3863)
!3863 = distinct !DILexicalBlock(scope: !3803, file: !3804, line: 70, column: 7)
!3864 = !DILocation(line: 70, column: 23, scope: !3863)
!3865 = !DILocation(line: 70, column: 33, scope: !3866)
!3866 = !DILexicalBlockFile(scope: !3863, file: !3804, discriminator: 1)
!3867 = !DILocation(line: 70, column: 26, scope: !3868)
!3868 = !DILexicalBlockFile(scope: !3863, file: !3804, discriminator: 3)
!3869 = !DILocation(line: 70, column: 59, scope: !3866)
!3870 = !DILocation(line: 71, column: 7, scope: !3863)
!3871 = !DILocation(line: 71, column: 10, scope: !3866)
!3872 = !DILocation(line: 70, column: 7, scope: !3873)
!3873 = !DILexicalBlockFile(scope: !3803, file: !3804, discriminator: 2)
!3874 = !DILocation(line: 98, column: 12, scope: !3803)
!3875 = !DILocation(line: 103, column: 7, scope: !3803)
!3876 = !DILocation(line: 72, column: 19, scope: !3863)
!3877 = !DILocation(line: 103, column: 19, scope: !3878)
!3878 = distinct !DILexicalBlock(scope: !3803, file: !3804, line: 103, column: 7)
!3879 = !DILocation(line: 105, column: 13, scope: !3880)
!3880 = distinct !DILexicalBlock(scope: !3878, file: !3804, line: 104, column: 5)
!3881 = !DILocation(line: 107, column: 5, scope: !3880)
!3882 = !DILocation(line: 110, column: 1, scope: !3803)
!3883 = distinct !DISubprogram(name: "rpl_fflush", scope: !3884, file: !3884, line: 127, type: !3885, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !569, variables: !3927)
!3884 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3885 = !DISubroutineType(types: !3886)
!3886 = !{!47, !3887}
!3887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3888, size: 64)
!3888 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2840, line: 49, baseType: !3889)
!3889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2842, line: 241, size: 1728, elements: !3890)
!3890 = !{!3891, !3892, !3893, !3894, !3895, !3896, !3897, !3898, !3899, !3900, !3901, !3902, !3903, !3911, !3912, !3913, !3914, !3915, !3916, !3917, !3918, !3919, !3920, !3921, !3922, !3923, !3924, !3925, !3926}
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3889, file: !2842, line: 242, baseType: !47, size: 32)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3889, file: !2842, line: 247, baseType: !6, size: 64, offset: 64)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3889, file: !2842, line: 248, baseType: !6, size: 64, offset: 128)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3889, file: !2842, line: 249, baseType: !6, size: 64, offset: 192)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3889, file: !2842, line: 250, baseType: !6, size: 64, offset: 256)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3889, file: !2842, line: 251, baseType: !6, size: 64, offset: 320)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3889, file: !2842, line: 252, baseType: !6, size: 64, offset: 384)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3889, file: !2842, line: 253, baseType: !6, size: 64, offset: 448)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3889, file: !2842, line: 254, baseType: !6, size: 64, offset: 512)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3889, file: !2842, line: 256, baseType: !6, size: 64, offset: 576)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3889, file: !2842, line: 257, baseType: !6, size: 64, offset: 640)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3889, file: !2842, line: 258, baseType: !6, size: 64, offset: 704)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3889, file: !2842, line: 260, baseType: !3904, size: 64, offset: 768)
!3904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3905, size: 64)
!3905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2842, line: 156, size: 192, elements: !3906)
!3906 = !{!3907, !3908, !3910}
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3905, file: !2842, line: 157, baseType: !3904, size: 64)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3905, file: !2842, line: 158, baseType: !3909, size: 64, offset: 64)
!3909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3889, size: 64)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3905, file: !2842, line: 162, baseType: !47, size: 32, offset: 128)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3889, file: !2842, line: 262, baseType: !3909, size: 64, offset: 832)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3889, file: !2842, line: 264, baseType: !47, size: 32, offset: 896)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3889, file: !2842, line: 268, baseType: !47, size: 32, offset: 928)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3889, file: !2842, line: 270, baseType: !2868, size: 64, offset: 960)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3889, file: !2842, line: 274, baseType: !131, size: 16, offset: 1024)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3889, file: !2842, line: 275, baseType: !2873, size: 8, offset: 1040)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3889, file: !2842, line: 276, baseType: !2875, size: 8, offset: 1048)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3889, file: !2842, line: 280, baseType: !2879, size: 64, offset: 1088)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3889, file: !2842, line: 289, baseType: !2882, size: 64, offset: 1152)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3889, file: !2842, line: 297, baseType: !8, size: 64, offset: 1216)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3889, file: !2842, line: 298, baseType: !8, size: 64, offset: 1280)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3889, file: !2842, line: 299, baseType: !8, size: 64, offset: 1344)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3889, file: !2842, line: 300, baseType: !8, size: 64, offset: 1408)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3889, file: !2842, line: 302, baseType: !9, size: 64, offset: 1472)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3889, file: !2842, line: 303, baseType: !47, size: 32, offset: 1536)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3889, file: !2842, line: 305, baseType: !2890, size: 160, offset: 1568)
!3927 = !{!3928}
!3928 = !DILocalVariable(name: "stream", arg: 1, scope: !3883, file: !3884, line: 127, type: !3887)
!3929 = !DILocation(line: 127, column: 19, scope: !3883)
!3930 = !DILocation(line: 148, column: 14, scope: !3931)
!3931 = distinct !DILexicalBlock(scope: !3883, file: !3884, line: 148, column: 7)
!3932 = !DILocation(line: 148, column: 22, scope: !3931)
!3933 = !DILocation(line: 148, column: 27, scope: !3934)
!3934 = !DILexicalBlockFile(scope: !3931, file: !3884, discriminator: 1)
!3935 = !DILocation(line: 148, column: 7, scope: !3936)
!3936 = !DILexicalBlockFile(scope: !3883, file: !3884, discriminator: 1)
!3937 = !DILocation(line: 149, column: 12, scope: !3931)
!3938 = !DILocation(line: 149, column: 5, scope: !3931)
!3939 = !DILocalVariable(name: "fp", arg: 1, scope: !3940, file: !3884, line: 40, type: !3887)
!3940 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !3884, file: !3884, line: 40, type: !3941, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !569, variables: !3943)
!3941 = !DISubroutineType(types: !3942)
!3942 = !{null, !3887}
!3943 = !{!3939}
!3944 = !DILocation(line: 40, column: 48, scope: !3940, inlinedAt: !3945)
!3945 = distinct !DILocation(line: 153, column: 3, scope: !3883)
!3946 = !DILocation(line: 42, column: 11, scope: !3947, inlinedAt: !3945)
!3947 = distinct !DILexicalBlock(scope: !3940, file: !3884, line: 42, column: 7)
!3948 = !DILocation(line: 42, column: 18, scope: !3947, inlinedAt: !3945)
!3949 = !DILocation(line: 42, column: 7, scope: !3940, inlinedAt: !3945)
!3950 = !DILocation(line: 44, column: 5, scope: !3947, inlinedAt: !3945)
!3951 = !DILocation(line: 155, column: 10, scope: !3883)
!3952 = !DILocation(line: 155, column: 3, scope: !3883)
!3953 = !DILocation(line: 229, column: 1, scope: !3883)
!3954 = distinct !DISubprogram(name: "rpl_fseeko", scope: !3955, file: !3955, line: 28, type: !3956, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !571, variables: !3999)
!3955 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3956 = !DISubroutineType(types: !3957)
!3957 = !{!47, !3958, !3998, !47}
!3958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3959, size: 64)
!3959 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2840, line: 49, baseType: !3960)
!3960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2842, line: 241, size: 1728, elements: !3961)
!3961 = !{!3962, !3963, !3964, !3965, !3966, !3967, !3968, !3969, !3970, !3971, !3972, !3973, !3974, !3982, !3983, !3984, !3985, !3986, !3987, !3988, !3989, !3990, !3991, !3992, !3993, !3994, !3995, !3996, !3997}
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3960, file: !2842, line: 242, baseType: !47, size: 32)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3960, file: !2842, line: 247, baseType: !6, size: 64, offset: 64)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3960, file: !2842, line: 248, baseType: !6, size: 64, offset: 128)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3960, file: !2842, line: 249, baseType: !6, size: 64, offset: 192)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3960, file: !2842, line: 250, baseType: !6, size: 64, offset: 256)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3960, file: !2842, line: 251, baseType: !6, size: 64, offset: 320)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3960, file: !2842, line: 252, baseType: !6, size: 64, offset: 384)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3960, file: !2842, line: 253, baseType: !6, size: 64, offset: 448)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3960, file: !2842, line: 254, baseType: !6, size: 64, offset: 512)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3960, file: !2842, line: 256, baseType: !6, size: 64, offset: 576)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3960, file: !2842, line: 257, baseType: !6, size: 64, offset: 640)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3960, file: !2842, line: 258, baseType: !6, size: 64, offset: 704)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3960, file: !2842, line: 260, baseType: !3975, size: 64, offset: 768)
!3975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3976, size: 64)
!3976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2842, line: 156, size: 192, elements: !3977)
!3977 = !{!3978, !3979, !3981}
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3976, file: !2842, line: 157, baseType: !3975, size: 64)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3976, file: !2842, line: 158, baseType: !3980, size: 64, offset: 64)
!3980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3960, size: 64)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3976, file: !2842, line: 162, baseType: !47, size: 32, offset: 128)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3960, file: !2842, line: 262, baseType: !3980, size: 64, offset: 832)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3960, file: !2842, line: 264, baseType: !47, size: 32, offset: 896)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3960, file: !2842, line: 268, baseType: !47, size: 32, offset: 928)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3960, file: !2842, line: 270, baseType: !2868, size: 64, offset: 960)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3960, file: !2842, line: 274, baseType: !131, size: 16, offset: 1024)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3960, file: !2842, line: 275, baseType: !2873, size: 8, offset: 1040)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3960, file: !2842, line: 276, baseType: !2875, size: 8, offset: 1048)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3960, file: !2842, line: 280, baseType: !2879, size: 64, offset: 1088)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3960, file: !2842, line: 289, baseType: !2882, size: 64, offset: 1152)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3960, file: !2842, line: 297, baseType: !8, size: 64, offset: 1216)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3960, file: !2842, line: 298, baseType: !8, size: 64, offset: 1280)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3960, file: !2842, line: 299, baseType: !8, size: 64, offset: 1344)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3960, file: !2842, line: 300, baseType: !8, size: 64, offset: 1408)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3960, file: !2842, line: 302, baseType: !9, size: 64, offset: 1472)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3960, file: !2842, line: 303, baseType: !47, size: 32, offset: 1536)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3960, file: !2842, line: 305, baseType: !2890, size: 160, offset: 1568)
!3998 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !2840, line: 91, baseType: !2868)
!3999 = !{!4000, !4001, !4002, !4003}
!4000 = !DILocalVariable(name: "fp", arg: 1, scope: !3954, file: !3955, line: 28, type: !3958)
!4001 = !DILocalVariable(name: "offset", arg: 2, scope: !3954, file: !3955, line: 28, type: !3998)
!4002 = !DILocalVariable(name: "whence", arg: 3, scope: !3954, file: !3955, line: 28, type: !47)
!4003 = !DILocalVariable(name: "pos", scope: !4004, file: !3955, line: 116, type: !3998)
!4004 = distinct !DILexicalBlock(scope: !4005, file: !3955, line: 112, column: 5)
!4005 = distinct !DILexicalBlock(scope: !3954, file: !3955, line: 51, column: 7)
!4006 = !DILocation(line: 28, column: 15, scope: !3954)
!4007 = !DILocation(line: 28, column: 25, scope: !3954)
!4008 = !DILocation(line: 28, column: 37, scope: !3954)
!4009 = !DILocation(line: 51, column: 11, scope: !4005)
!4010 = !DILocation(line: 51, column: 31, scope: !4005)
!4011 = !DILocation(line: 51, column: 24, scope: !4005)
!4012 = !DILocation(line: 52, column: 7, scope: !4005)
!4013 = !DILocation(line: 52, column: 14, scope: !4014)
!4014 = !DILexicalBlockFile(scope: !4005, file: !3955, discriminator: 1)
!4015 = !{!3457, !592, i64 40}
!4016 = !DILocation(line: 52, column: 35, scope: !4014)
!4017 = !{!3457, !592, i64 32}
!4018 = !DILocation(line: 52, column: 28, scope: !4014)
!4019 = !DILocation(line: 53, column: 7, scope: !4005)
!4020 = !DILocation(line: 53, column: 14, scope: !4014)
!4021 = !{!3457, !592, i64 72}
!4022 = !DILocation(line: 53, column: 28, scope: !4014)
!4023 = !DILocation(line: 51, column: 7, scope: !4024)
!4024 = !DILexicalBlockFile(scope: !3954, file: !3955, discriminator: 1)
!4025 = !DILocation(line: 116, column: 26, scope: !4004)
!4026 = !DILocation(line: 116, column: 19, scope: !4027)
!4027 = !DILexicalBlockFile(scope: !4004, file: !3955, discriminator: 1)
!4028 = !DILocation(line: 116, column: 13, scope: !4004)
!4029 = !DILocation(line: 117, column: 15, scope: !4030)
!4030 = distinct !DILexicalBlock(scope: !4004, file: !3955, line: 117, column: 11)
!4031 = !DILocation(line: 117, column: 11, scope: !4004)
!4032 = !DILocation(line: 127, column: 11, scope: !4004)
!4033 = !DILocation(line: 127, column: 18, scope: !4004)
!4034 = !DILocation(line: 128, column: 11, scope: !4004)
!4035 = !DILocation(line: 128, column: 19, scope: !4004)
!4036 = !{!3457, !2152, i64 144}
!4037 = !DILocation(line: 159, column: 7, scope: !4004)
!4038 = !DILocation(line: 161, column: 10, scope: !3954)
!4039 = !DILocation(line: 161, column: 3, scope: !3954)
!4040 = !DILocation(line: 162, column: 1, scope: !3954)
