; ModuleID = 'coreutils-8.27/src/paste.bc'
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
@.str.1 = private unnamed_addr constant [33 x i8] c"Usage: %s [OPTION]... [FILE]...\0A\00", align 1
@.str.2 = private unnamed_addr constant [119 x i8] c"Write lines consisting of the sequentially corresponding lines from\0Aeach FILE, separated by TABs, to standard output.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.19 = private unnamed_addr constant [56 x i8] c"\0AWith no FILE, or when FILE is -, read standard input.\0A\00", align 1
@.str.20 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@.str.3 = private unnamed_addr constant [144 x i8] c"  -d, --delimiters=LIST   reuse characters from LIST instead of TABs\0A  -s, --serial            paste one file at a time instead of in parallel\0A\00", align 1
@.str.4 = private unnamed_addr constant [63 x i8] c"  -z, --zero-terminated    line delimiter is NUL, not newline\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"paste\00", align 1
@.str.29 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.30 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.32 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.33 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.34 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@have_read_stdin = internal unnamed_addr global i1 false, align 1
@serial_merge = internal unnamed_addr global i1 false, align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"d:sz\00", align 1
@longopts = internal constant [6 x %struct.option] [%struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i32 0, i32 0), i32 0, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.37, i32 0, i32 0), i32 1, i32* null, i32 100 }, %struct.option { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.38, i32 0, i32 0), i32 0, i32* null, i32 122 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !0
@optarg = external local_unnamed_addr global i8*, align 8
@.str.13 = private unnamed_addr constant [3 x i8] c"\5C0\00", align 1
@line_delim = internal unnamed_addr global i1 false, align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"David M. Ihnat\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.17 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@delims = internal unnamed_addr global i8* null, align 8, !dbg !49
@delim_end = internal unnamed_addr global i8* null, align 8, !dbg !84
@.str.18 = private unnamed_addr constant [52 x i8] c"delimiter list ends with an unescaped backslash: %s\00", align 1
@stdin = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.41 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.42 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.44 = private unnamed_addr constant [25 x i8] c"standard input is closed\00", align 1
@.str.43 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"serial\00", align 1
@.str.37 = private unnamed_addr constant [11 x i8] c"delimiters\00", align 1
@.str.38 = private unnamed_addr constant [16 x i8] c"zero-terminated\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0), align 8, !dbg !98
@.str.21 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !104
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !109
@.str.24 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.25 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.26 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !112
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !119
@.str.45 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.46 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.47 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.49, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.50, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.51, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.52, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.53, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.54, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.55, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.56, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.57, i32 0, i32 0), i8* null], align 16, !dbg !126
@.str.48 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.49 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.50 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.51 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.52 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.53 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.54 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.55 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.56 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.57 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !154
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !161
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !174
@.str.11.58 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.59 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.60 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.61 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.62 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.63 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.64 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !181
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !188
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !176
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !190
@.str.69 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.70 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.71 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.72 = private unnamed_addr constant [203 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.73 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.74 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.75 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.76 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.77 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.78 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.79 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.80 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.81 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.82 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.85 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.86 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.87 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.88 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.89 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19.90 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !196
@.str.1.103 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.104 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.119 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.122 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !205
@.str.3.123 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.124 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.125 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.126 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.127 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.128 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) local_unnamed_addr #0 !dbg !603 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !607, metadata !608), !dbg !609
  %2 = icmp eq i32 %0, 0, !dbg !610
  br i1 %2, label %8, label %3, !dbg !612

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !613, !tbaa !616
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #9, !dbg !613
  %6 = load i8*, i8** @program_name, align 8, !dbg !613, !tbaa !616
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #9, !dbg !620
  br label %48, !dbg !622

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 5) #9, !dbg !624
  %10 = load i8*, i8** @program_name, align 8, !dbg !624, !tbaa !616
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10) #9, !dbg !626
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @.str.2, i64 0, i64 0), i32 5) #9, !dbg !628
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !628, !tbaa !616
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #9, !dbg !629
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.19, i64 0, i64 0), i32 5) #9, !dbg !630
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !630, !tbaa !616
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #9, !dbg !635
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.20, i64 0, i64 0), i32 5) #9, !dbg !637
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !637, !tbaa !616
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #9, !dbg !640
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([144 x i8], [144 x i8]* @.str.3, i64 0, i64 0), i32 5) #9, !dbg !642
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !642, !tbaa !616
  %23 = tail call i32 @fputs_unlocked(i8* %21, %struct._IO_FILE* %22) #9, !dbg !643
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.4, i64 0, i64 0), i32 5) #9, !dbg !644
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !644, !tbaa !616
  %26 = tail call i32 @fputs_unlocked(i8* %24, %struct._IO_FILE* %25) #9, !dbg !645
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 5) #9, !dbg !646
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !646, !tbaa !616
  %29 = tail call i32 @fputs_unlocked(i8* %27, %struct._IO_FILE* %28) #9, !dbg !647
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0), i32 5) #9, !dbg !648
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !648, !tbaa !616
  %32 = tail call i32 @fputs_unlocked(i8* %30, %struct._IO_FILE* %31) #9, !dbg !649
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !59, metadata !608) #9, !dbg !650
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i64 0, metadata !59, metadata !608) #9, !dbg !650
  %33 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.29, i64 0, i64 0), i32 5) #9, !dbg !652
  %34 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %33, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.30, i64 0, i64 0)) #9, !dbg !653
  %35 = tail call i8* @setlocale(i32 5, i8* null) #9, !dbg !655
  tail call void @llvm.dbg.value(metadata i8* %35, i64 0, metadata !70, metadata !608) #9, !dbg !656
  %36 = icmp eq i8* %35, null, !dbg !657
  br i1 %36, label %43, label %37, !dbg !658

; <label>:37:                                     ; preds = %8
  %38 = tail call i32 @strncmp(i8* nonnull %35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i64 0, i64 0), i64 3) #13, !dbg !659
  %39 = icmp eq i32 %38, 0, !dbg !659
  br i1 %39, label %43, label %40, !dbg !661

; <label>:40:                                     ; preds = %37
  %41 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.32, i64 0, i64 0), i32 5) #9, !dbg !663
  %42 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0)) #9, !dbg !665
  br label %43, !dbg !667

; <label>:43:                                     ; preds = %8, %37, %40
  %44 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.33, i64 0, i64 0), i32 5) #9, !dbg !668
  %45 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %44, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0)) #9, !dbg !669
  %46 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.34, i64 0, i64 0), i32 5) #9, !dbg !670
  %47 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %46, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.35, i64 0, i64 0)) #9, !dbg !671
  br label %48

; <label>:48:                                     ; preds = %43, %3
  tail call void @exit(i32 %0) #14, !dbg !672
  unreachable, !dbg !672
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
define i32 @main(i32, i8**) local_unnamed_addr #6 !dbg !673 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !678, metadata !608), !dbg !684
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !679, metadata !608), !dbg !685
  %3 = load i8*, i8** %1, align 8, !dbg !686, !tbaa !616
  tail call void @set_program_name(i8* %3) #9, !dbg !687
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0)) #9, !dbg !688
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0)) #9, !dbg !689
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0)) #9, !dbg !690
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #9, !dbg !691
  store i1 false, i1* @have_read_stdin, align 1
  store i1 false, i1* @serial_merge, align 1
  br label %8, !dbg !692

; <label>:8:                                      ; preds = %12, %2
  %9 = phi i8* [ %16, %12 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), %2 ]
  br label %10, !dbg !693

; <label>:10:                                     ; preds = %18, %8
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !681, metadata !608), !dbg !693
  %11 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), %struct.option* getelementptr inbounds ([6 x %struct.option], [6 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #9, !dbg !694
  tail call void @llvm.dbg.value(metadata i32 %11, i64 0, metadata !680, metadata !608), !dbg !696
  switch i32 %11, label %24 [
    i32 -1, label %25
    i32 100, label %12
    i32 115, label %17
    i32 122, label %18
    i32 -130, label %20
    i32 -131, label %21
  ], !dbg !697

; <label>:12:                                     ; preds = %10
  %13 = load i8*, i8** @optarg, align 8, !dbg !698, !tbaa !616
  %14 = load i8, i8* %13, align 1, !dbg !698, !tbaa !701
  %15 = icmp eq i8 %14, 0, !dbg !702
  %16 = select i1 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i8* %13, !dbg !698
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !681, metadata !608), !dbg !693
  br label %8, !dbg !703, !llvm.loop !704

; <label>:17:                                     ; preds = %10
  br label %18, !dbg !706

; <label>:18:                                     ; preds = %10, %17
  %19 = phi i1* [ @serial_merge, %17 ], [ @line_delim, %10 ]
  store i1 true, i1* %19, align 1
  br label %10, !dbg !693, !llvm.loop !704

; <label>:20:                                     ; preds = %10
  tail call void @usage(i32 0) #15, !dbg !707
  unreachable, !dbg !707

; <label>:21:                                     ; preds = %10
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !708, !tbaa !616
  %23 = load i8*, i8** @Version, align 8, !dbg !708, !tbaa !616
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i8* %23, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0), i8* null) #9, !dbg !708
  tail call void @exit(i32 0) #14, !dbg !709
  unreachable, !dbg !708

; <label>:24:                                     ; preds = %10
  tail call void @usage(i32 1) #15, !dbg !711
  unreachable, !dbg !711

; <label>:25:                                     ; preds = %10
  %26 = load i32, i32* @optind, align 4, !dbg !712, !tbaa !713
  %27 = sub nsw i32 %0, %26, !dbg !715
  tail call void @llvm.dbg.value(metadata i32 %27, i64 0, metadata !682, metadata !608), !dbg !716
  %28 = icmp eq i32 %27, 0, !dbg !717
  br i1 %28, label %29, label %32, !dbg !719

; <label>:29:                                     ; preds = %25
  %30 = sext i32 %26 to i64, !dbg !720
  %31 = getelementptr inbounds i8*, i8** %1, i64 %30, !dbg !720
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), i8** %31, align 8, !dbg !722, !tbaa !616
  br label %32, !dbg !723

; <label>:32:                                     ; preds = %29, %25
  %33 = phi i32 [ 1, %29 ], [ %27, %25 ]
  tail call void @llvm.dbg.value(metadata i32 %33, i64 0, metadata !682, metadata !608), !dbg !716
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !724, metadata !608) #9, !dbg !731
  %34 = tail call noalias i8* @xstrdup(i8* %9) #9, !dbg !734
  tail call void @llvm.dbg.value(metadata i8* %34, i64 0, metadata !729, metadata !608) #9, !dbg !735
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !730, metadata !608) #9, !dbg !736
  store i8* %34, i8** @delims, align 8, !dbg !737, !tbaa !616
  tail call void @llvm.dbg.value(metadata i8* %34, i64 0, metadata !729, metadata !608) #9, !dbg !735
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !724, metadata !608) #9, !dbg !731
  %35 = load i8, i8* %9, align 1, !dbg !738, !tbaa !701
  %36 = icmp eq i8 %35, 0, !dbg !740
  br i1 %36, label %68, label %37, !dbg !740

; <label>:37:                                     ; preds = %32
  br label %38, !dbg !741

; <label>:38:                                     ; preds = %37, %59
  %39 = phi i8 [ %62, %59 ], [ %35, %37 ]
  %40 = phi i8* [ %61, %59 ], [ %34, %37 ]
  %41 = phi i8* [ %60, %59 ], [ %9, %37 ]
  %42 = icmp eq i8 %39, 92, !dbg !741
  %43 = getelementptr inbounds i8, i8* %41, i64 1
  tail call void @llvm.dbg.value(metadata i8* %43, i64 0, metadata !724, metadata !608) #9, !dbg !731
  br i1 %42, label %45, label %44, !dbg !744

; <label>:44:                                     ; preds = %38
  store i8 %39, i8* %40, align 1, !dbg !745, !tbaa !701
  br label %59, !dbg !746

; <label>:45:                                     ; preds = %38
  %46 = load i8, i8* %43, align 1, !dbg !747, !tbaa !701
  %47 = sext i8 %46 to i32, !dbg !747
  switch i32 %47, label %55 [
    i32 48, label %48
    i32 98, label %56
    i32 102, label %49
    i32 110, label %50
    i32 114, label %51
    i32 116, label %52
    i32 118, label %53
    i32 92, label %54
    i32 0, label %64
  ], !dbg !749

; <label>:48:                                     ; preds = %45
  br label %56, !dbg !750

; <label>:49:                                     ; preds = %45
  br label %56, !dbg !752

; <label>:50:                                     ; preds = %45
  br label %56, !dbg !753

; <label>:51:                                     ; preds = %45
  br label %56, !dbg !754

; <label>:52:                                     ; preds = %45
  br label %56, !dbg !755

; <label>:53:                                     ; preds = %45
  br label %56, !dbg !756

; <label>:54:                                     ; preds = %45
  br label %56, !dbg !757

; <label>:55:                                     ; preds = %45
  br label %56, !dbg !758

; <label>:56:                                     ; preds = %55, %54, %53, %52, %51, %50, %49, %48, %45
  %57 = phi i8 [ %46, %55 ], [ 92, %54 ], [ 11, %53 ], [ 9, %52 ], [ 13, %51 ], [ 10, %50 ], [ 12, %49 ], [ 0, %48 ], [ 8, %45 ]
  store i8 %57, i8* %40, align 1, !tbaa !701
  %58 = getelementptr inbounds i8, i8* %41, i64 2, !dbg !759
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !724, metadata !608) #9, !dbg !731
  br label %59

; <label>:59:                                     ; preds = %56, %44
  %60 = phi i8* [ %43, %44 ], [ %58, %56 ]
  %61 = getelementptr inbounds i8, i8* %40, i64 1
  tail call void @llvm.dbg.value(metadata i8* %61, i64 0, metadata !729, metadata !608) #9, !dbg !735
  tail call void @llvm.dbg.value(metadata i8* %60, i64 0, metadata !724, metadata !608) #9, !dbg !731
  %62 = load i8, i8* %60, align 1, !dbg !738, !tbaa !701
  %63 = icmp eq i8 %62, 0, !dbg !740
  br i1 %63, label %67, label %38, !dbg !740, !llvm.loop !760

; <label>:64:                                     ; preds = %45
  store i8* %40, i8** @delim_end, align 8, !dbg !763, !tbaa !616
  %65 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.18, i64 0, i64 0), i32 5) #9, !dbg !764
  %66 = tail call i8* @quotearg_n_style_colon(i32 0, i32 6, i8* %9) #9, !dbg !766
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %65, i8* %66) #9, !dbg !768
  unreachable, !dbg !764

; <label>:67:                                     ; preds = %59
  br label %68, !dbg !763

; <label>:68:                                     ; preds = %67, %32
  %69 = phi i8* [ %34, %32 ], [ %61, %67 ]
  store i8* %69, i8** @delim_end, align 8, !dbg !763, !tbaa !616
  %70 = load i1, i1* @serial_merge, align 1
  %71 = select i1 %70, i1 (i64, i8**)* @paste_serial, i1 (i64, i8**)* @paste_parallel, !dbg !770
  %72 = sext i32 %33 to i64, !dbg !771
  %73 = load i32, i32* @optind, align 4, !dbg !772, !tbaa !713
  %74 = sext i32 %73 to i64, !dbg !773
  %75 = getelementptr inbounds i8*, i8** %1, i64 %74, !dbg !773
  %76 = tail call zeroext i1 %71(i64 %72, i8** %75) #9, !dbg !774
  %77 = load i8*, i8** @delims, align 8, !dbg !775, !tbaa !616
  tail call void @free(i8* %77) #9, !dbg !776
  %78 = load i1, i1* @have_read_stdin, align 1
  br i1 %78, label %79, label %86, !dbg !777

; <label>:79:                                     ; preds = %68
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !779, !tbaa !616
  %81 = tail call i32 @rpl_fclose(%struct._IO_FILE* %80) #9, !dbg !781
  %82 = icmp eq i32 %81, -1, !dbg !782
  br i1 %82, label %83, label %86, !dbg !783

; <label>:83:                                     ; preds = %79
  %84 = tail call i32* @__errno_location() #1, !dbg !784
  %85 = load i32, i32* %84, align 4, !dbg !784, !tbaa !713
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %85, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0)) #9, !dbg !785
  unreachable, !dbg !784

; <label>:86:                                     ; preds = %79, %68
  %87 = xor i1 %76, true, !dbg !786
  %88 = zext i1 %87 to i32, !dbg !786
  ret i32 %88, !dbg !787
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

; Function Attrs: nounwind sspstrong uwtable
define internal zeroext i1 @paste_serial(i64, i8** nocapture readonly) unnamed_addr #6 !dbg !788 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !792, metadata !608), !dbg !865
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !793, metadata !608), !dbg !866
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !794, metadata !608), !dbg !867
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !792, metadata !608), !dbg !865
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !793, metadata !608), !dbg !866
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !794, metadata !608), !dbg !867
  %3 = icmp eq i64 %0, 0, !dbg !868
  br i1 %3, label %176, label %4, !dbg !868

; <label>:4:                                      ; preds = %2
  br label %5, !dbg !870

; <label>:5:                                      ; preds = %4, %170
  %6 = phi i64 [ %172, %170 ], [ %0, %4 ]
  %7 = phi i8** [ %173, %170 ], [ %1, %4 ]
  %8 = phi i8 [ %171, %170 ], [ 1, %4 ]
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !861, metadata !608), !dbg !870
  %9 = load i8*, i8** %7, align 8, !dbg !871, !tbaa !616
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !862, metadata !608), !dbg !873
  %10 = load i8, i8* %9, align 1, !dbg !871, !tbaa !701
  %11 = icmp eq i8 %10, 45, !dbg !874
  br i1 %11, label %12, label %18, !dbg !877

; <label>:12:                                     ; preds = %5
  %13 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !879
  %14 = load i8, i8* %13, align 1, !dbg !879, !tbaa !701
  %15 = icmp eq i8 %14, 0, !dbg !882
  br i1 %15, label %16, label %18, !dbg !884

; <label>:16:                                     ; preds = %12
  store i1 true, i1* @have_read_stdin, align 1
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !885, !tbaa !616
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %17, i64 0, metadata !798, metadata !608), !dbg !888
  br label %27, !dbg !889

; <label>:18:                                     ; preds = %5, %12
  %19 = tail call %struct._IO_FILE* @fopen(i8* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.41, i64 0, i64 0)), !dbg !890
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %19, i64 0, metadata !798, metadata !608), !dbg !888
  %20 = icmp eq %struct._IO_FILE* %19, null, !dbg !892
  br i1 %20, label %21, label %26, !dbg !894

; <label>:21:                                     ; preds = %18
  %22 = tail call i32* @__errno_location() #1, !dbg !895
  %23 = load i32, i32* %22, align 4, !dbg !895, !tbaa !713
  %24 = load i8*, i8** %7, align 8, !dbg !897, !tbaa !616
  %25 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %24) #9, !dbg !898
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i64 0, i64 0), i8* %25) #9, !dbg !900
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !794, metadata !608), !dbg !867
  br label %170, !dbg !902

; <label>:26:                                     ; preds = %18
  tail call void @fadvise(%struct._IO_FILE* nonnull %19, i32 2) #9, !dbg !903
  br label %27

; <label>:27:                                     ; preds = %26, %16
  %28 = phi i1 [ true, %16 ], [ false, %26 ]
  %29 = phi %struct._IO_FILE* [ %17, %16 ], [ %19, %26 ]
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %29, i64 0, metadata !798, metadata !608), !dbg !888
  %30 = load i8*, i8** @delims, align 8, !dbg !904, !tbaa !616
  tail call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !797, metadata !608), !dbg !905
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %29, i64 0, metadata !906, metadata !608) #9, !dbg !912
  %31 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %29, i64 0, i32 1, !dbg !914
  %32 = load i8*, i8** %31, align 8, !dbg !914, !tbaa !915
  %33 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %29, i64 0, i32 2, !dbg !914
  %34 = load i8*, i8** %33, align 8, !dbg !914, !tbaa !919
  %35 = icmp ult i8* %32, %34, !dbg !914
  br i1 %35, label %36, label %41, !dbg !914, !prof !920

; <label>:36:                                     ; preds = %27
  %37 = getelementptr inbounds i8, i8* %32, i64 1, !dbg !921
  store i8* %37, i8** %31, align 8, !dbg !921, !tbaa !915
  %38 = load i8, i8* %32, align 1, !dbg !921, !tbaa !701
  %39 = zext i8 %38 to i32, !dbg !921
  tail call void @llvm.dbg.value(metadata i32 %42, i64 0, metadata !796, metadata !608), !dbg !923
  %40 = tail call i32* @__errno_location() #1, !dbg !924
  tail call void @llvm.dbg.value(metadata i32 %46, i64 0, metadata !854, metadata !608), !dbg !925
  br label %50, !dbg !926

; <label>:41:                                     ; preds = %27
  %42 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %29) #9, !dbg !927
  tail call void @llvm.dbg.value(metadata i32 %42, i64 0, metadata !796, metadata !608), !dbg !923
  %43 = tail call i32* @__errno_location() #1, !dbg !924
  tail call void @llvm.dbg.value(metadata i32 %46, i64 0, metadata !854, metadata !608), !dbg !925
  %44 = icmp eq i32 %42, -1, !dbg !929
  br i1 %44, label %45, label %50, !dbg !926

; <label>:45:                                     ; preds = %41
  %46 = load i32, i32* %43, align 4, !dbg !924, !tbaa !713
  tail call void @llvm.dbg.value(metadata i32 %57, i64 0, metadata !796, metadata !608), !dbg !923
  tail call void @llvm.dbg.value(metadata i32 %113, i64 0, metadata !854, metadata !608), !dbg !925
  %47 = load i1, i1* @line_delim, align 1
  %48 = select i1 %47, i8 0, i8 10
  %49 = zext i8 %48 to i32, !dbg !931
  br label %133, !dbg !933

; <label>:50:                                     ; preds = %41, %36
  %51 = phi i32* [ %40, %36 ], [ %43, %41 ]
  %52 = phi i32 [ %39, %36 ], [ %42, %41 ]
  br label %53, !dbg !923

; <label>:53:                                     ; preds = %50, %90
  %54 = phi i8* [ %30, %50 ], [ %95, %90 ]
  %55 = phi i32 [ %52, %50 ], [ %69, %90 ]
  br label %56, !dbg !923

; <label>:56:                                     ; preds = %106, %53
  %57 = phi i32 [ %55, %53 ], [ %69, %106 ]
  tail call void @llvm.dbg.value(metadata i32 %57, i64 0, metadata !796, metadata !608), !dbg !923
  tail call void @llvm.dbg.value(metadata i8* %54, i64 0, metadata !797, metadata !608), !dbg !905
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %29, i64 0, metadata !906, metadata !608) #9, !dbg !934
  %58 = load i8*, i8** %31, align 8, !dbg !938, !tbaa !915
  %59 = load i8*, i8** %33, align 8, !dbg !938, !tbaa !919
  %60 = icmp ult i8* %58, %59, !dbg !938
  br i1 %60, label %61, label %65, !dbg !938, !prof !920

; <label>:61:                                     ; preds = %56
  %62 = getelementptr inbounds i8, i8* %58, i64 1, !dbg !939
  store i8* %62, i8** %31, align 8, !dbg !939, !tbaa !915
  %63 = load i8, i8* %58, align 1, !dbg !939, !tbaa !701
  %64 = zext i8 %63 to i32, !dbg !939
  tail call void @llvm.dbg.value(metadata i32 %66, i64 0, metadata !795, metadata !608), !dbg !940
  br label %68, !dbg !941

; <label>:65:                                     ; preds = %56
  %66 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %29) #9, !dbg !942
  tail call void @llvm.dbg.value(metadata i32 %66, i64 0, metadata !795, metadata !608), !dbg !940
  %67 = icmp eq i32 %66, -1, !dbg !943
  br i1 %67, label %112, label %68, !dbg !941

; <label>:68:                                     ; preds = %61, %65
  %69 = phi i32 [ %64, %61 ], [ %66, %65 ]
  %70 = load i1, i1* @line_delim, align 1
  %71 = select i1 %70, i32 0, i32 10, !dbg !944
  %72 = icmp eq i32 %57, %71, !dbg !947
  br i1 %72, label %73, label %96, !dbg !948

; <label>:73:                                     ; preds = %68
  %74 = load i8, i8* %54, align 1, !dbg !949, !tbaa !701
  %75 = icmp eq i8 %74, 0, !dbg !952
  br i1 %75, label %90, label %76, !dbg !953

; <label>:76:                                     ; preds = %73
  tail call void @llvm.dbg.value(metadata i8 %74, i64 0, metadata !954, metadata !608) #9, !dbg !959
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !961, !tbaa !616
  %78 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %77, i64 0, i32 5, !dbg !961
  %79 = load i8*, i8** %78, align 8, !dbg !961, !tbaa !969
  %80 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %77, i64 0, i32 6, !dbg !961
  %81 = load i8*, i8** %80, align 8, !dbg !961, !tbaa !970
  %82 = icmp ult i8* %79, %81, !dbg !961
  br i1 %82, label %83, label %85, !dbg !961, !prof !920

; <label>:83:                                     ; preds = %76
  %84 = getelementptr inbounds i8, i8* %79, i64 1, !dbg !971
  store i8* %84, i8** %78, align 8, !dbg !971, !tbaa !969
  store i8 %74, i8* %79, align 1, !dbg !971, !tbaa !701
  br label %90, !dbg !973

; <label>:85:                                     ; preds = %76
  %86 = zext i8 %74 to i32, !dbg !974
  %87 = tail call i32 @__overflow(%struct._IO_FILE* %77, i32 %86) #9, !dbg !975
  %88 = icmp slt i32 %87, 0, !dbg !977
  br i1 %88, label %89, label %90, !dbg !973

; <label>:89:                                     ; preds = %85
  tail call fastcc void @write_error() #14, !dbg !978
  unreachable, !dbg !978

; <label>:90:                                     ; preds = %85, %83, %73
  %91 = getelementptr inbounds i8, i8* %54, i64 1, !dbg !979
  tail call void @llvm.dbg.value(metadata i8* %91, i64 0, metadata !797, metadata !608), !dbg !905
  %92 = load i8*, i8** @delim_end, align 8, !dbg !981, !tbaa !616
  %93 = icmp eq i8* %91, %92, !dbg !982
  %94 = load i8*, i8** @delims, align 8, !dbg !983
  tail call void @llvm.dbg.value(metadata i8* %94, i64 0, metadata !797, metadata !608), !dbg !905
  %95 = select i1 %93, i8* %94, i8* %91, !dbg !984
  br label %53, !dbg !984

; <label>:96:                                     ; preds = %68
  tail call void @llvm.dbg.value(metadata i8 %104, i64 0, metadata !954, metadata !608) #9, !dbg !985
  %97 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !987, !tbaa !616
  %98 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %97, i64 0, i32 5, !dbg !987
  %99 = load i8*, i8** %98, align 8, !dbg !987, !tbaa !969
  %100 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %97, i64 0, i32 6, !dbg !987
  %101 = load i8*, i8** %100, align 8, !dbg !987, !tbaa !970
  %102 = icmp ult i8* %99, %101, !dbg !987
  br i1 %102, label %103, label %107, !dbg !987, !prof !920

; <label>:103:                                    ; preds = %96
  %104 = trunc i32 %57 to i8, !dbg !989
  %105 = getelementptr inbounds i8, i8* %99, i64 1, !dbg !990
  store i8* %105, i8** %98, align 8, !dbg !990, !tbaa !969
  store i8 %104, i8* %99, align 1, !dbg !990, !tbaa !701
  br label %106, !dbg !991

; <label>:106:                                    ; preds = %103, %107
  br label %56, !dbg !923, !llvm.loop !992

; <label>:107:                                    ; preds = %96
  %108 = and i32 %57, 255, !dbg !995
  %109 = tail call i32 @__overflow(%struct._IO_FILE* %97, i32 %108) #9, !dbg !996
  %110 = icmp slt i32 %109, 0, !dbg !997
  br i1 %110, label %111, label %106, !dbg !991

; <label>:111:                                    ; preds = %107
  tail call fastcc void @write_error() #14, !dbg !998
  unreachable, !dbg !998

; <label>:112:                                    ; preds = %65
  %113 = load i32, i32* %51, align 4, !dbg !999, !tbaa !713
  tail call void @llvm.dbg.value(metadata i32 %113, i64 0, metadata !854, metadata !608), !dbg !925
  tail call void @llvm.dbg.value(metadata i8 %121, i64 0, metadata !954, metadata !608) #9, !dbg !1000
  %114 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1002, !tbaa !616
  %115 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %114, i64 0, i32 5, !dbg !1002
  %116 = load i8*, i8** %115, align 8, !dbg !1002, !tbaa !969
  %117 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %114, i64 0, i32 6, !dbg !1002
  %118 = load i8*, i8** %117, align 8, !dbg !1002, !tbaa !970
  %119 = icmp ult i8* %116, %118, !dbg !1002
  br i1 %119, label %120, label %123, !dbg !1002, !prof !920

; <label>:120:                                    ; preds = %112
  %121 = trunc i32 %57 to i8, !dbg !1004
  %122 = getelementptr inbounds i8, i8* %116, i64 1, !dbg !1005
  store i8* %122, i8** %115, align 8, !dbg !1005, !tbaa !969
  store i8 %121, i8* %116, align 1, !dbg !1005, !tbaa !701
  br label %128, !dbg !1006

; <label>:123:                                    ; preds = %112
  %124 = and i32 %57, 255, !dbg !1007
  %125 = tail call i32 @__overflow(%struct._IO_FILE* %114, i32 %124) #9, !dbg !1008
  %126 = icmp slt i32 %125, 0, !dbg !1009
  br i1 %126, label %127, label %128, !dbg !1006

; <label>:127:                                    ; preds = %123
  tail call fastcc void @write_error() #14, !dbg !1010
  unreachable, !dbg !1010

; <label>:128:                                    ; preds = %123, %120
  tail call void @llvm.dbg.value(metadata i32 %57, i64 0, metadata !796, metadata !608), !dbg !923
  tail call void @llvm.dbg.value(metadata i32 %113, i64 0, metadata !854, metadata !608), !dbg !925
  %129 = load i1, i1* @line_delim, align 1
  %130 = select i1 %129, i8 0, i8 10
  %131 = zext i8 %130 to i32, !dbg !931
  %132 = icmp eq i32 %57, %131, !dbg !1011
  br i1 %132, label %150, label %133, !dbg !933

; <label>:133:                                    ; preds = %45, %128
  %134 = phi i32 [ %49, %45 ], [ %131, %128 ]
  %135 = phi i8 [ %48, %45 ], [ %130, %128 ]
  %136 = phi i32 [ %46, %45 ], [ %113, %128 ]
  %137 = phi i32* [ %43, %45 ], [ %51, %128 ]
  tail call void @llvm.dbg.value(metadata i8 %130, i64 0, metadata !954, metadata !608) #9, !dbg !1012
  %138 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1014, !tbaa !616
  %139 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %138, i64 0, i32 5, !dbg !1014
  %140 = load i8*, i8** %139, align 8, !dbg !1014, !tbaa !969
  %141 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %138, i64 0, i32 6, !dbg !1014
  %142 = load i8*, i8** %141, align 8, !dbg !1014, !tbaa !970
  %143 = icmp ult i8* %140, %142, !dbg !1014
  br i1 %143, label %144, label %146, !dbg !1014, !prof !920

; <label>:144:                                    ; preds = %133
  %145 = getelementptr inbounds i8, i8* %140, i64 1, !dbg !1016
  store i8* %145, i8** %139, align 8, !dbg !1016, !tbaa !969
  store i8 %135, i8* %140, align 1, !dbg !1016, !tbaa !701
  br label %150, !dbg !1017

; <label>:146:                                    ; preds = %133
  %147 = tail call i32 @__overflow(%struct._IO_FILE* %138, i32 %134) #9, !dbg !1018
  %148 = icmp slt i32 %147, 0, !dbg !1019
  br i1 %148, label %149, label %150, !dbg !1017

; <label>:149:                                    ; preds = %146
  tail call fastcc void @write_error() #14, !dbg !1020
  unreachable, !dbg !1020

; <label>:150:                                    ; preds = %146, %144, %128
  %151 = phi i32 [ %136, %146 ], [ %136, %144 ], [ %113, %128 ]
  %152 = phi i32* [ %137, %146 ], [ %137, %144 ], [ %51, %128 ]
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %29, i64 0, metadata !1021, metadata !608), !dbg !1024
  %153 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %29, i64 0, i32 0, !dbg !1027
  %154 = load i32, i32* %153, align 8, !dbg !1027, !tbaa !1028
  %155 = and i32 %154, 32, !dbg !1027
  %156 = icmp eq i32 %155, 0, !dbg !1029
  br i1 %156, label %160, label %157, !dbg !1030

; <label>:157:                                    ; preds = %150
  %158 = load i8*, i8** %7, align 8, !dbg !1031, !tbaa !616
  %159 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %158) #9, !dbg !1031
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %151, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i64 0, i64 0), i8* %159) #9, !dbg !1033
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !794, metadata !608), !dbg !867
  br label %160, !dbg !1035

; <label>:160:                                    ; preds = %150, %157
  %161 = phi i8 [ 0, %157 ], [ %8, %150 ]
  tail call void @llvm.dbg.value(metadata i8 %161, i64 0, metadata !794, metadata !608), !dbg !867
  br i1 %28, label %162, label %163, !dbg !1036

; <label>:162:                                    ; preds = %160
  tail call void @clearerr_unlocked(%struct._IO_FILE* %29) #9, !dbg !1037
  br label %170, !dbg !1037

; <label>:163:                                    ; preds = %160
  %164 = tail call i32 @rpl_fclose(%struct._IO_FILE* %29) #9, !dbg !1039
  %165 = icmp eq i32 %164, -1, !dbg !1041
  br i1 %165, label %166, label %170, !dbg !1042

; <label>:166:                                    ; preds = %163
  %167 = load i32, i32* %152, align 4, !dbg !1043, !tbaa !713
  %168 = load i8*, i8** %7, align 8, !dbg !1045, !tbaa !616
  %169 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %168) #9, !dbg !1046
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %167, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i64 0, i64 0), i8* %169) #9, !dbg !1048
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !794, metadata !608), !dbg !867
  br label %170, !dbg !1050

; <label>:170:                                    ; preds = %162, %166, %163, %21
  %171 = phi i8 [ 0, %21 ], [ %161, %162 ], [ 0, %166 ], [ %161, %163 ]
  tail call void @llvm.dbg.value(metadata i8 %171, i64 0, metadata !794, metadata !608), !dbg !867
  %172 = add i64 %6, -1, !dbg !1051
  tail call void @llvm.dbg.value(metadata i64 %172, i64 0, metadata !792, metadata !608), !dbg !865
  %173 = getelementptr inbounds i8*, i8** %7, i64 1, !dbg !1053
  tail call void @llvm.dbg.value(metadata i8** %173, i64 0, metadata !793, metadata !608), !dbg !866
  tail call void @llvm.dbg.value(metadata i64 %172, i64 0, metadata !792, metadata !608), !dbg !865
  tail call void @llvm.dbg.value(metadata i8** %173, i64 0, metadata !793, metadata !608), !dbg !866
  tail call void @llvm.dbg.value(metadata i8 %171, i64 0, metadata !794, metadata !608), !dbg !867
  %174 = icmp eq i64 %172, 0, !dbg !868
  br i1 %174, label %175, label %5, !dbg !868, !llvm.loop !1054

; <label>:175:                                    ; preds = %170
  br label %176, !dbg !1057

; <label>:176:                                    ; preds = %175, %2
  %177 = phi i8 [ 1, %2 ], [ %171, %175 ]
  %178 = and i8 %177, 1, !dbg !1057
  %179 = icmp ne i8 %178, 0, !dbg !1057
  ret i1 %179, !dbg !1058
}

; Function Attrs: nounwind sspstrong uwtable
define internal zeroext i1 @paste_parallel(i64, i8** nocapture readonly) unnamed_addr #6 !dbg !1059 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !1061, metadata !608), !dbg !1095
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !1062, metadata !608), !dbg !1096
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1063, metadata !608), !dbg !1097
  %3 = add i64 %0, 2, !dbg !1098
  %4 = tail call noalias i8* @xmalloc(i64 %3) #9, !dbg !1099
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !1064, metadata !608), !dbg !1100
  %5 = add i64 %0, 1, !dbg !1101
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !1102, metadata !608) #9, !dbg !1108
  tail call void @llvm.dbg.value(metadata i64 8, i64 0, metadata !1107, metadata !608) #9, !dbg !1110
  %6 = icmp ugt i64 %5, 1152921504606846975, !dbg !1111
  br i1 %6, label %7, label %8, !dbg !1113

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !1114
  unreachable, !dbg !1114

; <label>:8:                                      ; preds = %2
  %9 = shl i64 %5, 3, !dbg !1115
  %10 = tail call noalias i8* @xmalloc(i64 %9) #9, !dbg !1116
  %11 = bitcast i8* %10 to %struct._IO_FILE**, !dbg !1117
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE** %11, i64 0, metadata !1065, metadata !608), !dbg !1118
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1068, metadata !608), !dbg !1119
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1067, metadata !608), !dbg !1120
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1067, metadata !608), !dbg !1120
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1068, metadata !608), !dbg !1119
  %12 = icmp eq i64 %0, 0, !dbg !1121
  br i1 %12, label %291, label %13, !dbg !1123

; <label>:13:                                     ; preds = %8
  br label %14, !dbg !1125

; <label>:14:                                     ; preds = %13, %42
  %15 = phi i64 [ %44, %42 ], [ 0, %13 ]
  %16 = phi i8 [ %43, %42 ], [ 0, %13 ]
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1075, metadata !608), !dbg !1125
  %17 = getelementptr inbounds i8*, i8** %1, i64 %15, !dbg !1126
  %18 = load i8*, i8** %17, align 8, !dbg !1126, !tbaa !616
  tail call void @llvm.dbg.value(metadata i8* %18, i64 0, metadata !1076, metadata !608), !dbg !1128
  %19 = load i8, i8* %18, align 1, !dbg !1126, !tbaa !701
  %20 = icmp eq i8 %19, 45, !dbg !1129
  br i1 %20, label %21, label %29, !dbg !1132

; <label>:21:                                     ; preds = %14
  %22 = getelementptr inbounds i8, i8* %18, i64 1, !dbg !1134
  %23 = load i8, i8* %22, align 1, !dbg !1134, !tbaa !701
  %24 = icmp eq i8 %23, 0, !dbg !1137
  br i1 %24, label %25, label %29, !dbg !1139

; <label>:25:                                     ; preds = %21
  store i1 true, i1* @have_read_stdin, align 1
  %26 = load i64, i64* bitcast (%struct._IO_FILE** @stdin to i64*), align 8, !dbg !1141, !tbaa !616
  %27 = getelementptr inbounds %struct._IO_FILE*, %struct._IO_FILE** %11, i64 %15, !dbg !1143
  %28 = bitcast %struct._IO_FILE** %27 to i64*, !dbg !1144
  store i64 %26, i64* %28, align 8, !dbg !1144, !tbaa !616
  br label %42, !dbg !1145

; <label>:29:                                     ; preds = %14, %21
  %30 = tail call %struct._IO_FILE* @fopen(i8* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.41, i64 0, i64 0)), !dbg !1146
  %31 = getelementptr inbounds %struct._IO_FILE*, %struct._IO_FILE** %11, i64 %15, !dbg !1148
  store %struct._IO_FILE* %30, %struct._IO_FILE** %31, align 8, !dbg !1149, !tbaa !616
  %32 = icmp eq %struct._IO_FILE* %30, null, !dbg !1150
  br i1 %32, label %33, label %38, !dbg !1152

; <label>:33:                                     ; preds = %29
  %34 = tail call i32* @__errno_location() #1, !dbg !1153
  %35 = load i32, i32* %34, align 4, !dbg !1153, !tbaa !713
  %36 = load i8*, i8** %17, align 8, !dbg !1153, !tbaa !616
  %37 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %36) #9, !dbg !1154
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i64 0, i64 0), i8* %37) #9, !dbg !1156
  unreachable, !dbg !1153

; <label>:38:                                     ; preds = %29
  %39 = tail call i32 @fileno(%struct._IO_FILE* nonnull %30) #9, !dbg !1158
  %40 = icmp eq i32 %39, 0, !dbg !1160
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1068, metadata !608), !dbg !1119
  %41 = select i1 %40, i8 1, i8 %16, !dbg !1161
  tail call void @llvm.dbg.value(metadata i8 %41, i64 0, metadata !1068, metadata !608), !dbg !1119
  tail call void @fadvise(%struct._IO_FILE* nonnull %30, i32 2) #9, !dbg !1162
  br label %42

; <label>:42:                                     ; preds = %25, %38
  %43 = phi i8 [ %16, %25 ], [ %41, %38 ]
  tail call void @llvm.dbg.value(metadata i8 %43, i64 0, metadata !1068, metadata !608), !dbg !1119
  %44 = add nuw i64 %15, 1, !dbg !1163
  tail call void @llvm.dbg.value(metadata i64 %44, i64 0, metadata !1067, metadata !608), !dbg !1120
  tail call void @llvm.dbg.value(metadata i64 %44, i64 0, metadata !1067, metadata !608), !dbg !1120
  tail call void @llvm.dbg.value(metadata i8 %43, i64 0, metadata !1068, metadata !608), !dbg !1119
  %45 = icmp ult i64 %44, %0, !dbg !1121
  br i1 %45, label %14, label %46, !dbg !1123, !llvm.loop !1165

; <label>:46:                                     ; preds = %42
  %47 = and i8 %43, 1, !dbg !1168
  %48 = icmp eq i8 %47, 0, !dbg !1168
  br i1 %48, label %49, label %51, !dbg !1170

; <label>:49:                                     ; preds = %51, %46
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1063, metadata !608), !dbg !1097
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !1088, metadata !608), !dbg !1171
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !1084, metadata !608), !dbg !1172
  tail call void @llvm.dbg.value(metadata i64 %44, i64 0, metadata !1067, metadata !608), !dbg !1120
  %50 = icmp ne i64 %0, 0
  br label %60, !dbg !1173

; <label>:51:                                     ; preds = %46
  %52 = load i1, i1* @have_read_stdin, align 1
  br i1 %52, label %53, label %49, !dbg !1175

; <label>:53:                                     ; preds = %51
  %54 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.44, i64 0, i64 0), i32 5) #9, !dbg !1176
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %54) #9, !dbg !1177
  unreachable, !dbg !1176

; <label>:55:                                     ; preds = %280
  br label %56, !dbg !1097

; <label>:56:                                     ; preds = %55, %172, %191, %193
  %57 = phi i64 [ %168, %193 ], [ %168, %191 ], [ %168, %172 ], [ %282, %55 ]
  %58 = phi i8 [ %169, %193 ], [ %169, %191 ], [ %169, %172 ], [ %286, %55 ]
  tail call void @llvm.dbg.value(metadata i8 %58, i64 0, metadata !1063, metadata !608), !dbg !1097
  tail call void @llvm.dbg.value(metadata i64 %57, i64 0, metadata !1067, metadata !608), !dbg !1120
  %59 = icmp eq i64 %57, 0, !dbg !1173
  br i1 %59, label %290, label %60, !dbg !1173

; <label>:60:                                     ; preds = %56, %49
  %61 = phi i8 [ %58, %56 ], [ 1, %49 ]
  %62 = phi i64 [ %57, %56 ], [ %44, %49 ]
  %63 = icmp ne i64 %62, 0
  %64 = and i1 %63, %50
  br label %65, !dbg !1179

; <label>:65:                                     ; preds = %60, %65
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1079, metadata !608), !dbg !1179
  tail call void @llvm.dbg.value(metadata i8* %67, i64 0, metadata !1081, metadata !608), !dbg !1180
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1082, metadata !608), !dbg !1181
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1083, metadata !608), !dbg !1182
  tail call void @llvm.dbg.value(metadata i8 %61, i64 0, metadata !1063, metadata !608), !dbg !1097
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1083, metadata !608), !dbg !1182
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1082, metadata !608), !dbg !1181
  tail call void @llvm.dbg.value(metadata i8* %67, i64 0, metadata !1081, metadata !608), !dbg !1180
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1079, metadata !608), !dbg !1179
  tail call void @llvm.dbg.value(metadata i64 %62, i64 0, metadata !1067, metadata !608), !dbg !1120
  br i1 %64, label %66, label %65, !dbg !1183, !llvm.loop !1185

; <label>:66:                                     ; preds = %65
  %67 = load i8*, i8** @delims, align 8, !dbg !1188, !tbaa !616
  br label %68, !dbg !1189

; <label>:68:                                     ; preds = %66, %280
  %69 = phi i8 [ %286, %280 ], [ %61, %66 ]
  %70 = phi i64 [ %281, %280 ], [ 0, %66 ]
  %71 = phi i64 [ %285, %280 ], [ 0, %66 ]
  %72 = phi i8* [ %284, %280 ], [ %67, %66 ]
  %73 = phi i8 [ %283, %280 ], [ 0, %66 ]
  %74 = phi i64 [ %282, %280 ], [ %62, %66 ]
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1089, metadata !608), !dbg !1189
  %75 = getelementptr inbounds %struct._IO_FILE*, %struct._IO_FILE** %11, i64 %70, !dbg !1190
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** %75, align 8, !dbg !1190, !tbaa !616
  %77 = icmp eq %struct._IO_FILE* %76, null, !dbg !1190
  br i1 %77, label %167, label %78, !dbg !1192

; <label>:78:                                     ; preds = %68
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %76, i64 0, metadata !906, metadata !608) #9, !dbg !1193
  %79 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %76, i64 0, i32 1, !dbg !1196
  %80 = load i8*, i8** %79, align 8, !dbg !1196, !tbaa !915
  %81 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %76, i64 0, i32 2, !dbg !1196
  %82 = load i8*, i8** %81, align 8, !dbg !1196, !tbaa !919
  %83 = icmp ult i8* %80, %82, !dbg !1196
  br i1 %83, label %86, label %84, !dbg !1196, !prof !920

; <label>:84:                                     ; preds = %78
  %85 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %76) #9, !dbg !1197
  br label %90, !dbg !1197

; <label>:86:                                     ; preds = %78
  %87 = getelementptr inbounds i8, i8* %80, i64 1, !dbg !1198
  store i8* %87, i8** %79, align 8, !dbg !1198, !tbaa !915
  %88 = load i8, i8* %80, align 1, !dbg !1198, !tbaa !701
  %89 = zext i8 %88 to i32, !dbg !1198
  br label %90, !dbg !1198

; <label>:90:                                     ; preds = %84, %86
  %91 = phi i32 [ %85, %84 ], [ %89, %86 ], !dbg !1199
  tail call void @llvm.dbg.value(metadata i32 %91, i64 0, metadata !1084, metadata !608), !dbg !1172
  %92 = tail call i32* @__errno_location() #1, !dbg !1201
  %93 = load i32, i32* %92, align 4, !dbg !1201, !tbaa !713
  tail call void @llvm.dbg.value(metadata i32 %93, i64 0, metadata !1088, metadata !608), !dbg !1171
  %94 = icmp ne i32 %91, -1, !dbg !1202
  %95 = icmp ne i64 %71, 0, !dbg !1204
  %96 = and i1 %95, %94, !dbg !1206
  br i1 %96, label %97, label %101, !dbg !1206

; <label>:97:                                     ; preds = %90
  %98 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1207, !tbaa !616
  %99 = tail call i64 @fwrite_unlocked(i8* %4, i64 1, i64 %71, %struct._IO_FILE* %98) #9, !dbg !1207
  %100 = icmp eq i64 %99, %71, !dbg !1210
  br i1 %100, label %103, label %109, !dbg !1211

; <label>:101:                                    ; preds = %90
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1089, metadata !608), !dbg !1189
  tail call void @llvm.dbg.value(metadata i32 %93, i64 0, metadata !1088, metadata !608), !dbg !1171
  tail call void @llvm.dbg.value(metadata i32 %91, i64 0, metadata !1084, metadata !608), !dbg !1172
  tail call void @llvm.dbg.value(metadata i64 %71, i64 0, metadata !1082, metadata !608), !dbg !1181
  %102 = icmp eq i32 %91, -1, !dbg !1212
  br i1 %102, label %142, label %103, !dbg !1214

; <label>:103:                                    ; preds = %97, %101
  %104 = phi i64 [ %71, %101 ], [ 0, %97 ]
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1089, metadata !608), !dbg !1189
  %105 = load i1, i1* @line_delim, align 1
  %106 = select i1 %105, i32 0, i32 10, !dbg !1215
  %107 = icmp eq i32 %91, %106, !dbg !1218
  br i1 %107, label %213, label %108, !dbg !1219

; <label>:108:                                    ; preds = %103
  br label %110, !dbg !1220

; <label>:109:                                    ; preds = %97
  tail call fastcc void @write_error() #15, !dbg !1222
  unreachable, !dbg !1222

; <label>:110:                                    ; preds = %108, %137
  %111 = phi i32 [ %138, %137 ], [ %91, %108 ]
  tail call void @llvm.dbg.value(metadata i8 %119, i64 0, metadata !954, metadata !608) #9, !dbg !1220
  %112 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1223, !tbaa !616
  %113 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %112, i64 0, i32 5, !dbg !1223
  %114 = load i8*, i8** %113, align 8, !dbg !1223, !tbaa !969
  %115 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %112, i64 0, i32 6, !dbg !1223
  %116 = load i8*, i8** %115, align 8, !dbg !1223, !tbaa !970
  %117 = icmp ult i8* %114, %116, !dbg !1223
  br i1 %117, label %118, label %121, !dbg !1223, !prof !920

; <label>:118:                                    ; preds = %110
  %119 = trunc i32 %111 to i8, !dbg !1225
  %120 = getelementptr inbounds i8, i8* %114, i64 1, !dbg !1226
  store i8* %120, i8** %113, align 8, !dbg !1226, !tbaa !969
  store i8 %119, i8* %114, align 1, !dbg !1226, !tbaa !701
  br label %126, !dbg !1227

; <label>:121:                                    ; preds = %110
  %122 = and i32 %111, 255, !dbg !1228
  %123 = tail call i32 @__overflow(%struct._IO_FILE* %112, i32 %122) #9, !dbg !1229
  %124 = icmp slt i32 %123, 0, !dbg !1230
  br i1 %124, label %125, label %126, !dbg !1227

; <label>:125:                                    ; preds = %121
  tail call fastcc void @write_error() #14, !dbg !1231
  unreachable, !dbg !1231

; <label>:126:                                    ; preds = %118, %121
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %76, i64 0, metadata !906, metadata !608) #9, !dbg !1232
  %127 = load i8*, i8** %79, align 8, !dbg !1234, !tbaa !915
  %128 = load i8*, i8** %81, align 8, !dbg !1234, !tbaa !919
  %129 = icmp ult i8* %127, %128, !dbg !1234
  br i1 %129, label %130, label %134, !dbg !1234, !prof !920

; <label>:130:                                    ; preds = %126
  %131 = getelementptr inbounds i8, i8* %127, i64 1, !dbg !1235
  store i8* %131, i8** %79, align 8, !dbg !1235, !tbaa !915
  %132 = load i8, i8* %127, align 1, !dbg !1235, !tbaa !701
  %133 = zext i8 %132 to i32, !dbg !1235
  tail call void @llvm.dbg.value(metadata i32 %135, i64 0, metadata !1084, metadata !608), !dbg !1172
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1089, metadata !608), !dbg !1189
  tail call void @llvm.dbg.value(metadata i32 %135, i64 0, metadata !1084, metadata !608), !dbg !1172
  tail call void @llvm.dbg.value(metadata i64 %71, i64 0, metadata !1082, metadata !608), !dbg !1181
  br label %137, !dbg !1214

; <label>:134:                                    ; preds = %126
  %135 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %76) #9, !dbg !1236
  tail call void @llvm.dbg.value(metadata i32 %135, i64 0, metadata !1084, metadata !608), !dbg !1172
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1089, metadata !608), !dbg !1189
  tail call void @llvm.dbg.value(metadata i32 %135, i64 0, metadata !1084, metadata !608), !dbg !1172
  tail call void @llvm.dbg.value(metadata i64 %71, i64 0, metadata !1082, metadata !608), !dbg !1181
  %136 = icmp eq i32 %135, -1, !dbg !1212
  br i1 %136, label %211, label %137, !dbg !1214

; <label>:137:                                    ; preds = %134, %130
  %138 = phi i32 [ %135, %134 ], [ %133, %130 ]
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1089, metadata !608), !dbg !1189
  %139 = load i1, i1* @line_delim, align 1
  %140 = select i1 %139, i32 0, i32 10, !dbg !1215
  %141 = icmp eq i32 %138, %140, !dbg !1218
  br i1 %141, label %211, label %110, !dbg !1219, !llvm.loop !1237

; <label>:142:                                    ; preds = %101
  tail call void @llvm.dbg.value(metadata i8 undef, i64 0, metadata !1089, metadata !608), !dbg !1189
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !1088, metadata !608), !dbg !1171
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !1084, metadata !608), !dbg !1172
  tail call void @llvm.dbg.value(metadata i64 %71, i64 0, metadata !1082, metadata !608), !dbg !1181
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %76, i64 0, metadata !1021, metadata !608), !dbg !1240
  %143 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %76, i64 0, i32 0, !dbg !1246
  %144 = load i32, i32* %143, align 8, !dbg !1246, !tbaa !1028
  %145 = and i32 %144, 32, !dbg !1246
  %146 = icmp eq i32 %145, 0, !dbg !1247
  br i1 %146, label %151, label %147, !dbg !1248

; <label>:147:                                    ; preds = %142
  %148 = getelementptr inbounds i8*, i8** %1, i64 %70, !dbg !1249
  %149 = load i8*, i8** %148, align 8, !dbg !1249, !tbaa !616
  %150 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %149) #9, !dbg !1249
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %93, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i64 0, i64 0), i8* %150) #9, !dbg !1251
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1063, metadata !608), !dbg !1097
  br label %151, !dbg !1253

; <label>:151:                                    ; preds = %142, %147
  %152 = phi i8 [ 0, %147 ], [ %69, %142 ]
  tail call void @llvm.dbg.value(metadata i8 %152, i64 0, metadata !1063, metadata !608), !dbg !1097
  %153 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1254, !tbaa !616
  %154 = icmp eq %struct._IO_FILE* %76, %153, !dbg !1256
  br i1 %154, label %155, label %156, !dbg !1257

; <label>:155:                                    ; preds = %151
  tail call void @clearerr_unlocked(%struct._IO_FILE* nonnull %76) #9, !dbg !1258
  br label %164, !dbg !1258

; <label>:156:                                    ; preds = %151
  %157 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %76) #9, !dbg !1259
  %158 = icmp eq i32 %157, -1, !dbg !1261
  br i1 %158, label %159, label %164, !dbg !1262

; <label>:159:                                    ; preds = %156
  %160 = load i32, i32* %92, align 4, !dbg !1263, !tbaa !713
  %161 = getelementptr inbounds i8*, i8** %1, i64 %70, !dbg !1265
  %162 = load i8*, i8** %161, align 8, !dbg !1265, !tbaa !616
  %163 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %162) #9, !dbg !1266
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %160, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i64 0, i64 0), i8* %163) #9, !dbg !1268
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1063, metadata !608), !dbg !1097
  br label %164, !dbg !1270

; <label>:164:                                    ; preds = %156, %159, %155
  %165 = phi i8 [ %152, %155 ], [ 0, %159 ], [ %152, %156 ]
  tail call void @llvm.dbg.value(metadata i8 %165, i64 0, metadata !1063, metadata !608), !dbg !1097
  store %struct._IO_FILE* null, %struct._IO_FILE** %75, align 8, !dbg !1271, !tbaa !616
  %166 = add i64 %74, -1, !dbg !1272
  tail call void @llvm.dbg.value(metadata i64 %166, i64 0, metadata !1067, metadata !608), !dbg !1120
  br label %167, !dbg !1273

; <label>:167:                                    ; preds = %68, %164
  %168 = phi i64 [ %166, %164 ], [ %74, %68 ]
  %169 = phi i8 [ %165, %164 ], [ %69, %68 ]
  tail call void @llvm.dbg.value(metadata i8 %169, i64 0, metadata !1063, metadata !608), !dbg !1097
  tail call void @llvm.dbg.value(metadata i64 %168, i64 0, metadata !1067, metadata !608), !dbg !1120
  %170 = add nuw i64 %70, 1, !dbg !1274
  %171 = icmp eq i64 %170, %0, !dbg !1276
  br i1 %171, label %172, label %198, !dbg !1277

; <label>:172:                                    ; preds = %167
  %173 = and i8 %73, 1, !dbg !1278
  %174 = icmp eq i8 %173, 0, !dbg !1278
  br i1 %174, label %56, label %175, !dbg !1281

; <label>:175:                                    ; preds = %172
  %176 = icmp eq i64 %71, 0, !dbg !1282
  br i1 %176, label %182, label %177, !dbg !1285

; <label>:177:                                    ; preds = %175
  %178 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1286, !tbaa !616
  %179 = tail call i64 @fwrite_unlocked(i8* %4, i64 1, i64 %71, %struct._IO_FILE* %178) #9, !dbg !1286
  %180 = icmp eq i64 %179, %71, !dbg !1289
  br i1 %180, label %182, label %181, !dbg !1290

; <label>:181:                                    ; preds = %177
  tail call fastcc void @write_error() #15, !dbg !1291
  unreachable, !dbg !1291

; <label>:182:                                    ; preds = %177, %175
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1082, metadata !608), !dbg !1181
  %183 = load i1, i1* @line_delim, align 1
  %184 = select i1 %183, i8 0, i8 10
  tail call void @llvm.dbg.value(metadata i8 %184, i64 0, metadata !954, metadata !608) #9, !dbg !1292
  %185 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1294, !tbaa !616
  %186 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %185, i64 0, i32 5, !dbg !1294
  %187 = load i8*, i8** %186, align 8, !dbg !1294, !tbaa !969
  %188 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %185, i64 0, i32 6, !dbg !1294
  %189 = load i8*, i8** %188, align 8, !dbg !1294, !tbaa !970
  %190 = icmp ult i8* %187, %189, !dbg !1294
  br i1 %190, label %191, label %193, !dbg !1294, !prof !920

; <label>:191:                                    ; preds = %182
  %192 = getelementptr inbounds i8, i8* %187, i64 1, !dbg !1296
  store i8* %192, i8** %186, align 8, !dbg !1296, !tbaa !969
  store i8 %184, i8* %187, align 1, !dbg !1296, !tbaa !701
  br label %56, !dbg !1297

; <label>:193:                                    ; preds = %182
  %194 = zext i8 %184 to i32, !dbg !1298
  %195 = tail call i32 @__overflow(%struct._IO_FILE* %185, i32 %194) #9, !dbg !1299
  %196 = icmp slt i32 %195, 0, !dbg !1300
  br i1 %196, label %197, label %56, !dbg !1297

; <label>:197:                                    ; preds = %193
  tail call fastcc void @write_error() #14, !dbg !1301
  unreachable, !dbg !1301

; <label>:198:                                    ; preds = %167
  %199 = load i8, i8* %72, align 1, !dbg !1302, !tbaa !701
  %200 = icmp eq i8 %199, 0, !dbg !1305
  br i1 %200, label %204, label %201, !dbg !1306

; <label>:201:                                    ; preds = %198
  %202 = add i64 %71, 1, !dbg !1307
  tail call void @llvm.dbg.value(metadata i64 %202, i64 0, metadata !1082, metadata !608), !dbg !1181
  %203 = getelementptr inbounds i8, i8* %4, i64 %71, !dbg !1308
  store i8 %199, i8* %203, align 1, !dbg !1309, !tbaa !701
  br label %204, !dbg !1308

; <label>:204:                                    ; preds = %198, %201
  %205 = phi i64 [ %202, %201 ], [ %71, %198 ]
  tail call void @llvm.dbg.value(metadata i64 %205, i64 0, metadata !1082, metadata !608), !dbg !1181
  %206 = getelementptr inbounds i8, i8* %72, i64 1, !dbg !1310
  tail call void @llvm.dbg.value(metadata i8* %206, i64 0, metadata !1081, metadata !608), !dbg !1180
  %207 = load i8*, i8** @delim_end, align 8, !dbg !1312, !tbaa !616
  %208 = icmp eq i8* %206, %207, !dbg !1313
  %209 = load i8*, i8** @delims, align 8, !dbg !1314
  tail call void @llvm.dbg.value(metadata i8* %209, i64 0, metadata !1081, metadata !608), !dbg !1180
  %210 = select i1 %208, i8* %209, i8* %206, !dbg !1315
  br label %280, !dbg !1315

; <label>:211:                                    ; preds = %137, %134
  %212 = phi i32 [ -1, %134 ], [ %138, %137 ]
  br label %213, !dbg !1179

; <label>:213:                                    ; preds = %211, %103
  %214 = phi i32 [ %91, %103 ], [ %212, %211 ]
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1079, metadata !608), !dbg !1179
  %215 = add nuw i64 %70, 1, !dbg !1316
  %216 = icmp eq i64 %215, %0, !dbg !1317
  br i1 %216, label %261, label %217, !dbg !1318

; <label>:217:                                    ; preds = %213
  %218 = load i1, i1* @line_delim, align 1
  %219 = select i1 %218, i32 0, i32 10, !dbg !1319
  %220 = icmp ne i32 %214, %219, !dbg !1322
  %221 = icmp ne i32 %214, -1, !dbg !1323
  %222 = and i1 %221, %220, !dbg !1325
  br i1 %222, label %223, label %238, !dbg !1325

; <label>:223:                                    ; preds = %217
  tail call void @llvm.dbg.value(metadata i8 %231, i64 0, metadata !954, metadata !608) #9, !dbg !1326
  %224 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1328, !tbaa !616
  %225 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %224, i64 0, i32 5, !dbg !1328
  %226 = load i8*, i8** %225, align 8, !dbg !1328, !tbaa !969
  %227 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %224, i64 0, i32 6, !dbg !1328
  %228 = load i8*, i8** %227, align 8, !dbg !1328, !tbaa !970
  %229 = icmp ult i8* %226, %228, !dbg !1328
  br i1 %229, label %230, label %233, !dbg !1328, !prof !920

; <label>:230:                                    ; preds = %223
  %231 = trunc i32 %214 to i8, !dbg !1330
  %232 = getelementptr inbounds i8, i8* %226, i64 1, !dbg !1331
  store i8* %232, i8** %225, align 8, !dbg !1331, !tbaa !969
  store i8 %231, i8* %226, align 1, !dbg !1331, !tbaa !701
  br label %238, !dbg !1332

; <label>:233:                                    ; preds = %223
  %234 = and i32 %214, 255, !dbg !1333
  %235 = tail call i32 @__overflow(%struct._IO_FILE* %224, i32 %234) #9, !dbg !1334
  %236 = icmp slt i32 %235, 0, !dbg !1335
  br i1 %236, label %237, label %238, !dbg !1332

; <label>:237:                                    ; preds = %233
  tail call fastcc void @write_error() #14, !dbg !1336
  unreachable, !dbg !1336

; <label>:238:                                    ; preds = %233, %230, %217
  %239 = load i8, i8* %72, align 1, !dbg !1337, !tbaa !701
  %240 = icmp eq i8 %239, 0, !dbg !1339
  br i1 %240, label %255, label %241, !dbg !1340

; <label>:241:                                    ; preds = %238
  tail call void @llvm.dbg.value(metadata i8 %239, i64 0, metadata !954, metadata !608) #9, !dbg !1341
  %242 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1343, !tbaa !616
  %243 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %242, i64 0, i32 5, !dbg !1343
  %244 = load i8*, i8** %243, align 8, !dbg !1343, !tbaa !969
  %245 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %242, i64 0, i32 6, !dbg !1343
  %246 = load i8*, i8** %245, align 8, !dbg !1343, !tbaa !970
  %247 = icmp ult i8* %244, %246, !dbg !1343
  br i1 %247, label %248, label %250, !dbg !1343, !prof !920

; <label>:248:                                    ; preds = %241
  %249 = getelementptr inbounds i8, i8* %244, i64 1, !dbg !1345
  store i8* %249, i8** %243, align 8, !dbg !1345, !tbaa !969
  store i8 %239, i8* %244, align 1, !dbg !1345, !tbaa !701
  br label %255, !dbg !1346

; <label>:250:                                    ; preds = %241
  %251 = zext i8 %239 to i32, !dbg !1347
  %252 = tail call i32 @__overflow(%struct._IO_FILE* %242, i32 %251) #9, !dbg !1348
  %253 = icmp slt i32 %252, 0, !dbg !1349
  br i1 %253, label %254, label %255, !dbg !1346

; <label>:254:                                    ; preds = %250
  tail call fastcc void @write_error() #14, !dbg !1350
  unreachable, !dbg !1350

; <label>:255:                                    ; preds = %250, %248, %238
  %256 = getelementptr inbounds i8, i8* %72, i64 1, !dbg !1351
  tail call void @llvm.dbg.value(metadata i8* %256, i64 0, metadata !1081, metadata !608), !dbg !1180
  %257 = load i8*, i8** @delim_end, align 8, !dbg !1353, !tbaa !616
  %258 = icmp eq i8* %256, %257, !dbg !1354
  %259 = load i8*, i8** @delims, align 8, !dbg !1355
  tail call void @llvm.dbg.value(metadata i8* %259, i64 0, metadata !1081, metadata !608), !dbg !1180
  %260 = select i1 %258, i8* %259, i8* %256, !dbg !1356
  br label %280, !dbg !1356

; <label>:261:                                    ; preds = %213
  %262 = icmp eq i32 %214, -1, !dbg !1357
  %263 = load i1, i1* @line_delim, align 1
  %264 = select i1 %263, i32 0, i32 10, !dbg !1358
  %265 = select i1 %262, i32 %264, i32 %214, !dbg !1360
  tail call void @llvm.dbg.value(metadata i8 %273, i64 0, metadata !1090, metadata !608), !dbg !1361
  tail call void @llvm.dbg.value(metadata i8 %273, i64 0, metadata !954, metadata !608) #9, !dbg !1362
  %266 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1364, !tbaa !616
  %267 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %266, i64 0, i32 5, !dbg !1364
  %268 = load i8*, i8** %267, align 8, !dbg !1364, !tbaa !969
  %269 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %266, i64 0, i32 6, !dbg !1364
  %270 = load i8*, i8** %269, align 8, !dbg !1364, !tbaa !970
  %271 = icmp ult i8* %268, %270, !dbg !1364
  br i1 %271, label %272, label %275, !dbg !1364, !prof !920

; <label>:272:                                    ; preds = %261
  %273 = trunc i32 %265 to i8, !dbg !1366
  %274 = getelementptr inbounds i8, i8* %268, i64 1, !dbg !1368
  store i8* %274, i8** %267, align 8, !dbg !1368, !tbaa !969
  store i8 %273, i8* %268, align 1, !dbg !1368, !tbaa !701
  br label %280, !dbg !1369

; <label>:275:                                    ; preds = %261
  %276 = and i32 %265, 255, !dbg !1370
  %277 = tail call i32 @__overflow(%struct._IO_FILE* %266, i32 %276) #9, !dbg !1371
  %278 = icmp slt i32 %277, 0, !dbg !1372
  br i1 %278, label %279, label %280, !dbg !1369

; <label>:279:                                    ; preds = %275
  tail call fastcc void @write_error() #14, !dbg !1373
  unreachable, !dbg !1373

; <label>:280:                                    ; preds = %275, %272, %255, %204
  %281 = phi i64 [ %215, %275 ], [ %215, %272 ], [ %215, %255 ], [ %170, %204 ], !dbg !1374
  %282 = phi i64 [ %74, %275 ], [ %74, %272 ], [ %74, %255 ], [ %168, %204 ]
  %283 = phi i8 [ 1, %275 ], [ 1, %272 ], [ 1, %255 ], [ %73, %204 ]
  %284 = phi i8* [ %72, %275 ], [ %72, %272 ], [ %260, %255 ], [ %210, %204 ]
  %285 = phi i64 [ %104, %275 ], [ %104, %272 ], [ %104, %255 ], [ %205, %204 ]
  %286 = phi i8 [ %69, %275 ], [ %69, %272 ], [ %69, %255 ], [ %169, %204 ]
  tail call void @llvm.dbg.value(metadata i8 %286, i64 0, metadata !1063, metadata !608), !dbg !1097
  tail call void @llvm.dbg.value(metadata i64 %285, i64 0, metadata !1082, metadata !608), !dbg !1181
  tail call void @llvm.dbg.value(metadata i8* %284, i64 0, metadata !1081, metadata !608), !dbg !1180
  tail call void @llvm.dbg.value(metadata i8 %283, i64 0, metadata !1079, metadata !608), !dbg !1179
  tail call void @llvm.dbg.value(metadata i64 %282, i64 0, metadata !1067, metadata !608), !dbg !1120
  tail call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !1083, metadata !608), !dbg !1182
  tail call void @llvm.dbg.value(metadata i8 %286, i64 0, metadata !1063, metadata !608), !dbg !1097
  tail call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !1083, metadata !608), !dbg !1182
  tail call void @llvm.dbg.value(metadata i64 %285, i64 0, metadata !1082, metadata !608), !dbg !1181
  tail call void @llvm.dbg.value(metadata i8* %284, i64 0, metadata !1081, metadata !608), !dbg !1180
  tail call void @llvm.dbg.value(metadata i8 %283, i64 0, metadata !1079, metadata !608), !dbg !1179
  tail call void @llvm.dbg.value(metadata i64 %282, i64 0, metadata !1067, metadata !608), !dbg !1120
  %287 = icmp ult i64 %281, %0, !dbg !1376
  %288 = icmp ne i64 %282, 0, !dbg !1378
  %289 = and i1 %288, %287, !dbg !1380
  br i1 %289, label %68, label %55, !dbg !1183, !llvm.loop !1381

; <label>:290:                                    ; preds = %56
  br label %291, !dbg !1384

; <label>:291:                                    ; preds = %290, %8
  %292 = phi i8 [ 1, %8 ], [ %58, %290 ]
  tail call void @free(i8* %10) #9, !dbg !1384
  tail call void @free(i8* %4) #9, !dbg !1385
  %293 = and i8 %292, 1, !dbg !1386
  %294 = icmp ne i8 %293, 0, !dbg !1386
  ret i1 %294, !dbg !1387
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #7

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #2

declare i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #3

declare i64 @fwrite_unlocked(i8*, i64, i64, %struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: noreturn nounwind sspstrong uwtable
define internal fastcc void @write_error() unnamed_addr #0 !dbg !1388 {
  %1 = tail call i32* @__errno_location() #1, !dbg !1389
  %2 = load i32, i32* %1, align 4, !dbg !1389, !tbaa !713
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.43, i64 0, i64 0), i32 5) #9, !dbg !1390
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %2, i8* %3) #9, !dbg !1392
  unreachable, !dbg !1389
}

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @clearerr_unlocked(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !1394 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1396, metadata !608), !dbg !1397
  store i8* %0, i8** @file_name, align 8, !dbg !1398, !tbaa !616
  ret void, !dbg !1399
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !1400 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !1404, metadata !1405), !dbg !1406
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1407, !tbaa !1408
  ret void, !dbg !1410
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !1411 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1416, !tbaa !616
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #9, !dbg !1417
  %3 = icmp eq i32 %2, 0, !dbg !1418
  br i1 %3, label %21, label %4, !dbg !1419

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1420, !tbaa !1408, !range !1422
  %6 = icmp eq i8 %5, 0, !dbg !1420
  %7 = tail call i32* @__errno_location() #1, !dbg !1423
  br i1 %6, label %11, label %8, !dbg !1425

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !1426, !tbaa !713
  %10 = icmp eq i32 %9, 32, !dbg !1428
  br i1 %10, label %21, label %11, !dbg !1429

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i64 0, i64 0), i32 5) #9, !dbg !1431
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !1413, metadata !608), !dbg !1432
  %13 = load i8*, i8** @file_name, align 8, !dbg !1433, !tbaa !616
  %14 = icmp eq i8* %13, null, !dbg !1433
  %15 = load i32, i32* %7, align 4, !tbaa !713
  br i1 %14, label %18, label %16, !dbg !1434

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #9, !dbg !1435
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.25, i64 0, i64 0), i8* %17, i8* %12) #9, !dbg !1437
  br label %19, !dbg !1439

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.26, i64 0, i64 0), i8* %12) #9, !dbg !1440
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !1441, !tbaa !713
  tail call void @_exit(i32 %20) #14, !dbg !1442
  unreachable, !dbg !1442

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1443, !tbaa !616
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #9, !dbg !1445
  %24 = icmp eq i32 %23, 0, !dbg !1446
  br i1 %24, label %27, label %25, !dbg !1447

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !1448, !tbaa !713
  tail call void @_exit(i32 %26) #14, !dbg !1449
  unreachable, !dbg !1449

; <label>:27:                                     ; preds = %21
  ret void, !dbg !1450
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #8

; Function Attrs: nounwind sspstrong uwtable
define void @fdadvise(i32, i64, i64, i32) local_unnamed_addr #6 !dbg !1451 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1458, metadata !608), !dbg !1464
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1459, metadata !608), !dbg !1465
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !1460, metadata !608), !dbg !1466
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !1461, metadata !608), !dbg !1467
  %5 = tail call i32 @posix_fadvise(i32 %0, i64 %1, i64 %2, i32 %3) #9, !dbg !1468
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1462, metadata !608), !dbg !1468
  ret void, !dbg !1469
}

; Function Attrs: nounwind
declare i32 @posix_fadvise(i32, i64, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @fadvise(%struct._IO_FILE*, i32) local_unnamed_addr #6 !dbg !1470 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !1514, metadata !608), !dbg !1516
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1515, metadata !608), !dbg !1517
  %3 = icmp eq %struct._IO_FILE* %0, null, !dbg !1518
  br i1 %3, label %7, label %4, !dbg !1520

; <label>:4:                                      ; preds = %2
  %5 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #9, !dbg !1521
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1458, metadata !608) #9, !dbg !1522
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1459, metadata !608) #9, !dbg !1525
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1460, metadata !608) #9, !dbg !1526
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1461, metadata !608) #9, !dbg !1527
  %6 = tail call i32 @posix_fadvise(i32 %5, i64 0, i64 0, i32 %1) #9, !dbg !1528
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1462, metadata !608) #9, !dbg !1528
  br label %7, !dbg !1529

; <label>:7:                                      ; preds = %2, %4
  ret void, !dbg !1530
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !1531 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1533, metadata !608), !dbg !1536
  %2 = icmp eq i8* %0, null, !dbg !1537
  br i1 %2, label %3, label %6, !dbg !1539

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1540, !tbaa !616
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.45, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #16, !dbg !1542
  tail call void @abort() #14, !dbg !1543
  unreachable, !dbg !1543

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #13, !dbg !1544
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1534, metadata !608), !dbg !1545
  %8 = icmp ne i8* %7, null, !dbg !1546
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1547
  %10 = select i1 %8, i8* %9, i8* %0, !dbg !1549
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1535, metadata !608), !dbg !1550
  %11 = ptrtoint i8* %10 to i64, !dbg !1551
  %12 = ptrtoint i8* %0 to i64, !dbg !1551
  %13 = sub i64 %11, %12, !dbg !1551
  %14 = icmp sgt i64 %13, 6, !dbg !1553
  br i1 %14, label %15, label %24, !dbg !1554

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1555
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.46, i64 0, i64 0), i64 7) #13, !dbg !1555
  %18 = icmp eq i32 %17, 0, !dbg !1557
  br i1 %18, label %19, label %24, !dbg !1558

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1533, metadata !608), !dbg !1536
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.47, i64 0, i64 0), i64 3) #13, !dbg !1559
  %21 = icmp eq i32 %20, 0, !dbg !1562
  br i1 %21, label %22, label %24, !dbg !1563

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1564
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !1533, metadata !608), !dbg !1536
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1566, !tbaa !616
  br label %24, !dbg !1567

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !1533, metadata !608), !dbg !1536
  store i8* %25, i8** @program_name, align 8, !dbg !1568, !tbaa !616
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1569, !tbaa !616
  ret void, !dbg !1570
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #9

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !1571 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1576, metadata !608), !dbg !1579
  %2 = tail call i32* @__errno_location() #1, !dbg !1580
  %3 = load i32, i32* %2, align 4, !dbg !1580, !tbaa !713
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !1577, metadata !608), !dbg !1581
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !1582
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !1583
  %6 = select i1 %4, i8* %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), !dbg !1583
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #9, !dbg !1585
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1585
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !1578, metadata !608), !dbg !1586
  store i32 %3, i32* %2, align 4, !dbg !1587, !tbaa !713
  ret %struct.quoting_options* %8, !dbg !1588
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #10 !dbg !1589 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1595, metadata !608), !dbg !1596
  %2 = icmp ne %struct.quoting_options* %0, null, !dbg !1597
  %3 = select i1 %2, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !1597
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1598
  %5 = load i32, i32* %4, align 8, !dbg !1598, !tbaa !1600
  ret i32 %5, !dbg !1602
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1603 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1607, metadata !608), !dbg !1609
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1608, metadata !608), !dbg !1610
  %3 = icmp ne %struct.quoting_options* %0, null, !dbg !1611
  %4 = select i1 %3, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !1611
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1612
  store i32 %1, i32* %5, align 8, !dbg !1614, !tbaa !1600
  ret void, !dbg !1615
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !1616 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1620, metadata !608), !dbg !1628
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1621, metadata !608), !dbg !1629
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !1622, metadata !608), !dbg !1630
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1623, metadata !608), !dbg !1631
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !1632
  %5 = select i1 %4, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !1632
  %6 = lshr i8 %1, 5, !dbg !1633
  %7 = zext i8 %6 to i64, !dbg !1633
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1635
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1624, metadata !608), !dbg !1636
  %9 = and i8 %1, 31, !dbg !1637
  %10 = zext i8 %9 to i32, !dbg !1638
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1626, metadata !608), !dbg !1639
  %11 = load i32, i32* %8, align 4, !dbg !1640, !tbaa !713
  %12 = lshr i32 %11, %10, !dbg !1641
  %13 = and i32 %12, 1, !dbg !1642
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1627, metadata !608), !dbg !1643
  %14 = and i32 %2, 1, !dbg !1644
  %15 = xor i32 %13, %14, !dbg !1645
  %16 = shl i32 %15, %10, !dbg !1646
  %17 = xor i32 %16, %11, !dbg !1647
  store i32 %17, i32* %8, align 4, !dbg !1647, !tbaa !713
  ret i32 %13, !dbg !1648
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1649 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1653, metadata !608), !dbg !1656
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1654, metadata !608), !dbg !1657
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1658
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1653, metadata !608), !dbg !1656
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1660
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1653, metadata !608), !dbg !1656
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1661
  %6 = load i32, i32* %5, align 4, !dbg !1661, !tbaa !1662
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1655, metadata !608), !dbg !1663
  store i32 %1, i32* %5, align 4, !dbg !1664, !tbaa !1662
  ret i32 %6, !dbg !1665
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !1666 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1670, metadata !608), !dbg !1673
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1671, metadata !608), !dbg !1674
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1672, metadata !608), !dbg !1675
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1676
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1670, metadata !608), !dbg !1673
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1678
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1670, metadata !608), !dbg !1673
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1679
  store i32 10, i32* %6, align 8, !dbg !1680, !tbaa !1600
  %7 = icmp ne i8* %1, null, !dbg !1681
  %8 = icmp ne i8* %2, null, !dbg !1683
  %9 = and i1 %7, %8, !dbg !1685
  br i1 %9, label %11, label %10, !dbg !1685

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !1686
  unreachable, !dbg !1686

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1687
  store i8* %1, i8** %12, align 8, !dbg !1688, !tbaa !1689
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1690
  store i8* %2, i8** %13, align 8, !dbg !1691, !tbaa !1692
  ret void, !dbg !1693
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !1694 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1698, metadata !608), !dbg !1706
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1699, metadata !608), !dbg !1707
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1700, metadata !608), !dbg !1708
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1701, metadata !608), !dbg !1709
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1702, metadata !608), !dbg !1710
  %6 = icmp ne %struct.quoting_options* %4, null, !dbg !1711
  %7 = select i1 %6, %struct.quoting_options* %4, %struct.quoting_options* @default_quoting_options, !dbg !1711
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !1703, metadata !608), !dbg !1712
  %8 = tail call i32* @__errno_location() #1, !dbg !1713
  %9 = load i32, i32* %8, align 4, !dbg !1713, !tbaa !713
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1704, metadata !608), !dbg !1714
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1715
  %11 = load i32, i32* %10, align 8, !dbg !1715, !tbaa !1600
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1716
  %13 = load i32, i32* %12, align 4, !dbg !1716, !tbaa !1662
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1717
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1718
  %16 = load i8*, i8** %15, align 8, !dbg !1718, !tbaa !1689
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1719
  %18 = load i8*, i8** %17, align 8, !dbg !1719, !tbaa !1692
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !1720
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1705, metadata !608), !dbg !1721
  store i32 %9, i32* %8, align 4, !dbg !1722, !tbaa !713
  ret i64 %19, !dbg !1723
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !1724 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1730, metadata !608), !dbg !1793
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1731, metadata !608), !dbg !1794
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1732, metadata !608), !dbg !1795
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1733, metadata !608), !dbg !1796
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !1734, metadata !608), !dbg !1797
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1735, metadata !608), !dbg !1798
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !1736, metadata !608), !dbg !1799
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1737, metadata !608), !dbg !1800
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !1738, metadata !608), !dbg !1801
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1740, metadata !608), !dbg !1802
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1741, metadata !608), !dbg !1803
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1742, metadata !608), !dbg !1804
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1743, metadata !608), !dbg !1805
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1744, metadata !608), !dbg !1806
  %13 = tail call i64 @__ctype_get_mb_cur_max() #9, !dbg !1807
  %14 = icmp eq i64 %13, 1, !dbg !1808
  %15 = lshr i32 %5, 1, !dbg !1809
  %16 = trunc i32 %15 to i8, !dbg !1809
  %17 = and i8 %16, 1, !dbg !1809
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !1746, metadata !608), !dbg !1809
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1747, metadata !608), !dbg !1810
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1748, metadata !608), !dbg !1811
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1749, metadata !608), !dbg !1812
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !1813

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !1731, metadata !608), !dbg !1794
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !1749, metadata !608), !dbg !1812
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !1748, metadata !608), !dbg !1811
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !1747, metadata !608), !dbg !1810
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1746, metadata !608), !dbg !1809
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !1733, metadata !608), !dbg !1796
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !1744, metadata !608), !dbg !1806
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !1743, metadata !608), !dbg !1805
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !1742, metadata !608), !dbg !1804
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !1741, metadata !608), !dbg !1803
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1740, metadata !608), !dbg !1802
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !1738, metadata !608), !dbg !1801
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !1737, metadata !608), !dbg !1800
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !1734, metadata !608), !dbg !1797
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
  ], !dbg !1814

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1734, metadata !608), !dbg !1797
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1746, metadata !608), !dbg !1809
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1746, metadata !608), !dbg !1809
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1734, metadata !608), !dbg !1797
  br label %95, !dbg !1815

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1746, metadata !608), !dbg !1809
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1734, metadata !608), !dbg !1797
  %43 = and i8 %36, 1, !dbg !1817
  %44 = icmp eq i8 %43, 0, !dbg !1817
  br i1 %44, label %45, label %95, !dbg !1815

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1819
  br i1 %46, label %95, label %47, !dbg !1823

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1825, !tbaa !701
  br label %95, !dbg !1825

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.58, i64 0, i64 0), i32 %28), !dbg !1827
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !1737, metadata !608), !dbg !1800
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.59, i64 0, i64 0), i32 %28), !dbg !1831
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !1738, metadata !608), !dbg !1801
  br label %51, !dbg !1832

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1738, metadata !608), !dbg !1801
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1737, metadata !608), !dbg !1800
  %54 = and i8 %36, 1, !dbg !1833
  %55 = icmp eq i8 %54, 0, !dbg !1833
  br i1 %55, label %56, label %73, !dbg !1835

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1742, metadata !608), !dbg !1804
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1740, metadata !608), !dbg !1802
  %57 = load i8, i8* %52, align 1, !dbg !1836, !tbaa !701
  %58 = icmp eq i8 %57, 0, !dbg !1840
  br i1 %58, label %73, label %59, !dbg !1840

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !1842

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  %64 = icmp ult i64 %63, %40, !dbg !1842
  br i1 %64, label %65, label %67, !dbg !1846

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !1848
  store i8 %61, i8* %66, align 1, !dbg !1848, !tbaa !701
  br label %67, !dbg !1848

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !1850
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1740, metadata !608), !dbg !1802
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !1852
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1742, metadata !608), !dbg !1804
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1742, metadata !608), !dbg !1804
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1740, metadata !608), !dbg !1802
  %70 = load i8, i8* %69, align 1, !dbg !1836, !tbaa !701
  %71 = icmp eq i8 %70, 0, !dbg !1840
  br i1 %71, label %72, label %60, !dbg !1840, !llvm.loop !1854

; <label>:72:                                     ; preds = %67
  br label %73, !dbg !1802

; <label>:73:                                     ; preds = %72, %56, %51
  %74 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %72 ]
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !1740, metadata !608), !dbg !1802
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1744, metadata !608), !dbg !1806
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1742, metadata !608), !dbg !1804
  %75 = call i64 @strlen(i8* %53) #13, !dbg !1857
  call void @llvm.dbg.value(metadata i64 %75, i64 0, metadata !1743, metadata !608), !dbg !1805
  br label %95, !dbg !1858

; <label>:76:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1744, metadata !608), !dbg !1806
  br label %77, !dbg !1859

; <label>:77:                                     ; preds = %27, %76
  %78 = phi i8 [ %34, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %78, i64 0, metadata !1744, metadata !608), !dbg !1806
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1746, metadata !608), !dbg !1809
  br label %79, !dbg !1860

; <label>:79:                                     ; preds = %27, %77
  %80 = phi i8 [ %34, %27 ], [ %78, %77 ]
  %81 = phi i8 [ %36, %27 ], [ 1, %77 ]
  call void @llvm.dbg.value(metadata i8 %81, i64 0, metadata !1746, metadata !608), !dbg !1809
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !1744, metadata !608), !dbg !1806
  %82 = and i8 %81, 1, !dbg !1861
  %83 = icmp eq i8 %82, 0, !dbg !1861
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1744, metadata !608), !dbg !1806
  %84 = select i1 %83, i8 1, i8 %80, !dbg !1863
  br label %85, !dbg !1863

; <label>:85:                                     ; preds = %79, %27
  %86 = phi i8 [ %34, %27 ], [ %84, %79 ]
  %87 = phi i8 [ %36, %27 ], [ %81, %79 ]
  call void @llvm.dbg.value(metadata i8 %87, i64 0, metadata !1746, metadata !608), !dbg !1809
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !1744, metadata !608), !dbg !1806
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !1734, metadata !608), !dbg !1797
  %88 = and i8 %87, 1, !dbg !1864
  %89 = icmp eq i8 %88, 0, !dbg !1864
  br i1 %89, label %90, label %95, !dbg !1866

; <label>:90:                                     ; preds = %85
  %91 = icmp eq i64 %40, 0, !dbg !1867
  br i1 %91, label %95, label %92, !dbg !1871

; <label>:92:                                     ; preds = %90
  store i8 39, i8* %0, align 1, !dbg !1873, !tbaa !701
  br label %95, !dbg !1873

; <label>:93:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1746, metadata !608), !dbg !1809
  br label %95, !dbg !1875

; <label>:94:                                     ; preds = %27
  call void @abort() #14, !dbg !1876
  unreachable, !dbg !1876

; <label>:95:                                     ; preds = %41, %85, %90, %92, %27, %42, %45, %47, %93, %73
  %96 = phi i32 [ 0, %93 ], [ %28, %73 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %92 ], [ 2, %90 ], [ 2, %85 ], [ 5, %41 ]
  %97 = phi i8* [ %29, %93 ], [ %52, %73 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %92 ], [ %29, %90 ], [ %29, %85 ], [ %29, %41 ]
  %98 = phi i8* [ %30, %93 ], [ %53, %73 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %92 ], [ %30, %90 ], [ %30, %85 ], [ %30, %41 ]
  %99 = phi i64 [ 0, %93 ], [ %74, %73 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %92 ], [ 1, %90 ], [ 0, %85 ], [ 0, %41 ]
  %100 = phi i8* [ %32, %93 ], [ %53, %73 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.60, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.60, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.60, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.59, i64 0, i64 0), %92 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.59, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.59, i64 0, i64 0), %85 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.60, i64 0, i64 0), %41 ]
  %101 = phi i64 [ %33, %93 ], [ %75, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %92 ], [ 1, %90 ], [ 1, %85 ], [ 1, %41 ]
  %102 = phi i8 [ %34, %93 ], [ 1, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %86, %92 ], [ %86, %90 ], [ %86, %85 ], [ 1, %41 ]
  %103 = phi i8 [ 0, %93 ], [ %36, %73 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %87, %92 ], [ %87, %90 ], [ %87, %85 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %103, i64 0, metadata !1746, metadata !608), !dbg !1809
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !1744, metadata !608), !dbg !1806
  call void @llvm.dbg.value(metadata i64 %101, i64 0, metadata !1743, metadata !608), !dbg !1805
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !1742, metadata !608), !dbg !1804
  call void @llvm.dbg.value(metadata i64 %99, i64 0, metadata !1740, metadata !608), !dbg !1802
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !1738, metadata !608), !dbg !1801
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !1737, metadata !608), !dbg !1800
  call void @llvm.dbg.value(metadata i32 %96, i64 0, metadata !1734, metadata !608), !dbg !1797
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1739, metadata !608), !dbg !1877
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
  br label %123, !dbg !1878

; <label>:123:                                    ; preds = %587, %95
  %124 = phi i64 [ 0, %95 ], [ %596, %587 ]
  %125 = phi i64 [ %99, %95 ], [ %589, %587 ]
  %126 = phi i64 [ %31, %95 ], [ %590, %587 ]
  %127 = phi i64 [ %35, %95 ], [ %591, %587 ]
  %128 = phi i8 [ %37, %95 ], [ %592, %587 ]
  %129 = phi i8 [ %38, %95 ], [ %593, %587 ]
  %130 = phi i8 [ %39, %95 ], [ %594, %587 ]
  %131 = phi i64 [ %40, %95 ], [ %595, %587 ]
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !1731, metadata !608), !dbg !1794
  call void @llvm.dbg.value(metadata i8 %130, i64 0, metadata !1749, metadata !608), !dbg !1812
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !1748, metadata !608), !dbg !1811
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !1747, metadata !608), !dbg !1810
  call void @llvm.dbg.value(metadata i64 %127, i64 0, metadata !1733, metadata !608), !dbg !1796
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !1741, metadata !608), !dbg !1803
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1740, metadata !608), !dbg !1802
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1739, metadata !608), !dbg !1877
  %132 = icmp eq i64 %127, -1, !dbg !1879
  br i1 %132, label %135, label %133, !dbg !1881

; <label>:133:                                    ; preds = %123
  %134 = icmp eq i64 %124, %127, !dbg !1882
  br i1 %134, label %597, label %139, !dbg !1884

; <label>:135:                                    ; preds = %123
  %136 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !1886
  %137 = load i8, i8* %136, align 1, !dbg !1886, !tbaa !701
  %138 = icmp eq i8 %137, 0, !dbg !1888
  br i1 %138, label %597, label %139, !dbg !1884

; <label>:139:                                    ; preds = %133, %135
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1755, metadata !608), !dbg !1889
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1756, metadata !608), !dbg !1890
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1757, metadata !608), !dbg !1891
  br i1 %109, label %140, label %155, !dbg !1892

; <label>:140:                                    ; preds = %139
  %141 = add i64 %124, %101, !dbg !1894
  %142 = and i1 %110, %132, !dbg !1896
  br i1 %142, label %143, label %145, !dbg !1896

; <label>:143:                                    ; preds = %140
  %144 = call i64 @strlen(i8* %2) #13, !dbg !1897
  call void @llvm.dbg.value(metadata i64 %144, i64 0, metadata !1733, metadata !608), !dbg !1796
  br label %145, !dbg !1898

; <label>:145:                                    ; preds = %140, %143
  %146 = phi i64 [ %144, %143 ], [ %127, %140 ]
  call void @llvm.dbg.value(metadata i64 %146, i64 0, metadata !1733, metadata !608), !dbg !1796
  %147 = icmp ugt i64 %141, %146, !dbg !1900
  br i1 %147, label %155, label %148, !dbg !1902

; <label>:148:                                    ; preds = %145
  %149 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !1903
  %150 = call i32 @memcmp(i8* %149, i8* %100, i64 %101) #13, !dbg !1904
  %151 = icmp ne i32 %150, 0, !dbg !1905
  %152 = or i1 %151, %112, !dbg !1905
  %153 = xor i1 %151, true, !dbg !1905
  %154 = zext i1 %153 to i8, !dbg !1905
  br i1 %152, label %155, label %644, !dbg !1905

; <label>:155:                                    ; preds = %148, %145, %139
  %156 = phi i64 [ %146, %148 ], [ %146, %145 ], [ %127, %139 ]
  %157 = phi i8 [ %154, %148 ], [ 0, %145 ], [ 0, %139 ]
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !1755, metadata !608), !dbg !1889
  call void @llvm.dbg.value(metadata i64 %156, i64 0, metadata !1733, metadata !608), !dbg !1796
  %158 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !1907
  %159 = load i8, i8* %158, align 1, !dbg !1907, !tbaa !701
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !1750, metadata !608), !dbg !1908
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
  ], !dbg !1909

; <label>:160:                                    ; preds = %155
  br i1 %105, label %161, label %209, !dbg !1910

; <label>:161:                                    ; preds = %160
  br i1 %112, label %162, label %644, !dbg !1911

; <label>:162:                                    ; preds = %161
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1756, metadata !608), !dbg !1890
  %163 = and i8 %128, 1, !dbg !1916
  %164 = icmp eq i8 %163, 0, !dbg !1916
  %165 = and i1 %114, %164, !dbg !1919
  br i1 %165, label %166, label %182, !dbg !1919

; <label>:166:                                    ; preds = %162
  %167 = icmp ult i64 %125, %131, !dbg !1921
  br i1 %167, label %168, label %170, !dbg !1926

; <label>:168:                                    ; preds = %166
  %169 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !1928
  store i8 39, i8* %169, align 1, !dbg !1928, !tbaa !701
  br label %170, !dbg !1928

; <label>:170:                                    ; preds = %168, %166
  %171 = add i64 %125, 1, !dbg !1930
  call void @llvm.dbg.value(metadata i64 %171, i64 0, metadata !1740, metadata !608), !dbg !1802
  %172 = icmp ult i64 %171, %131, !dbg !1932
  br i1 %172, label %173, label %175, !dbg !1936

; <label>:173:                                    ; preds = %170
  %174 = getelementptr inbounds i8, i8* %0, i64 %171, !dbg !1938
  store i8 36, i8* %174, align 1, !dbg !1938, !tbaa !701
  br label %175, !dbg !1938

; <label>:175:                                    ; preds = %173, %170
  %176 = add i64 %125, 2, !dbg !1940
  call void @llvm.dbg.value(metadata i64 %176, i64 0, metadata !1740, metadata !608), !dbg !1802
  %177 = icmp ult i64 %176, %131, !dbg !1942
  br i1 %177, label %178, label %180, !dbg !1946

; <label>:178:                                    ; preds = %175
  %179 = getelementptr inbounds i8, i8* %0, i64 %176, !dbg !1948
  store i8 39, i8* %179, align 1, !dbg !1948, !tbaa !701
  br label %180, !dbg !1948

; <label>:180:                                    ; preds = %178, %175
  %181 = add i64 %125, 3, !dbg !1950
  call void @llvm.dbg.value(metadata i64 %181, i64 0, metadata !1740, metadata !608), !dbg !1802
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1747, metadata !608), !dbg !1810
  br label %182, !dbg !1952

; <label>:182:                                    ; preds = %162, %180
  %183 = phi i64 [ %181, %180 ], [ %125, %162 ]
  %184 = phi i8 [ 1, %180 ], [ %128, %162 ]
  call void @llvm.dbg.value(metadata i8 %184, i64 0, metadata !1747, metadata !608), !dbg !1810
  call void @llvm.dbg.value(metadata i64 %183, i64 0, metadata !1740, metadata !608), !dbg !1802
  %185 = icmp ult i64 %183, %131, !dbg !1954
  br i1 %185, label %186, label %188, !dbg !1958

; <label>:186:                                    ; preds = %182
  %187 = getelementptr inbounds i8, i8* %0, i64 %183, !dbg !1960
  store i8 92, i8* %187, align 1, !dbg !1960, !tbaa !701
  br label %188, !dbg !1960

; <label>:188:                                    ; preds = %186, %182
  %189 = add i64 %183, 1, !dbg !1962
  call void @llvm.dbg.value(metadata i64 %189, i64 0, metadata !1740, metadata !608), !dbg !1802
  br i1 %106, label %190, label %476, !dbg !1964

; <label>:190:                                    ; preds = %188
  %191 = add i64 %124, 1, !dbg !1966
  %192 = icmp ult i64 %191, %156, !dbg !1968
  br i1 %192, label %193, label %476, !dbg !1969

; <label>:193:                                    ; preds = %190
  %194 = getelementptr inbounds i8, i8* %2, i64 %191, !dbg !1970
  %195 = load i8, i8* %194, align 1, !dbg !1970, !tbaa !701
  %196 = add i8 %195, -48, !dbg !1972
  %197 = icmp ult i8 %196, 10, !dbg !1972
  br i1 %197, label %198, label %476, !dbg !1972

; <label>:198:                                    ; preds = %193
  %199 = icmp ult i64 %189, %131, !dbg !1973
  br i1 %199, label %200, label %202, !dbg !1978

; <label>:200:                                    ; preds = %198
  %201 = getelementptr inbounds i8, i8* %0, i64 %189, !dbg !1980
  store i8 48, i8* %201, align 1, !dbg !1980, !tbaa !701
  br label %202, !dbg !1980

; <label>:202:                                    ; preds = %200, %198
  %203 = add i64 %183, 2, !dbg !1982
  call void @llvm.dbg.value(metadata i64 %203, i64 0, metadata !1740, metadata !608), !dbg !1802
  %204 = icmp ult i64 %203, %131, !dbg !1984
  br i1 %204, label %205, label %207, !dbg !1988

; <label>:205:                                    ; preds = %202
  %206 = getelementptr inbounds i8, i8* %0, i64 %203, !dbg !1990
  store i8 48, i8* %206, align 1, !dbg !1990, !tbaa !701
  br label %207, !dbg !1990

; <label>:207:                                    ; preds = %205, %202
  %208 = add i64 %183, 3, !dbg !1992
  call void @llvm.dbg.value(metadata i64 %208, i64 0, metadata !1740, metadata !608), !dbg !1802
  br label %476, !dbg !1994

; <label>:209:                                    ; preds = %160
  br i1 %23, label %476, label %587, !dbg !1995

; <label>:210:                                    ; preds = %155
  switch i32 %96, label %476 [
    i32 2, label %211
    i32 5, label %212
  ], !dbg !1996

; <label>:211:                                    ; preds = %210
  br i1 %112, label %476, label %644, !dbg !1997

; <label>:212:                                    ; preds = %210
  br i1 %25, label %476, label %213, !dbg !1999

; <label>:213:                                    ; preds = %212
  %214 = add i64 %124, 2, !dbg !2001
  %215 = icmp ult i64 %214, %156, !dbg !2003
  br i1 %215, label %216, label %476, !dbg !2004

; <label>:216:                                    ; preds = %213
  %217 = add i64 %124, 1, !dbg !2005
  %218 = getelementptr inbounds i8, i8* %2, i64 %217, !dbg !2007
  %219 = load i8, i8* %218, align 1, !dbg !2007, !tbaa !701
  %220 = icmp eq i8 %219, 63, !dbg !2008
  br i1 %220, label %221, label %476, !dbg !2009

; <label>:221:                                    ; preds = %216
  %222 = getelementptr inbounds i8, i8* %2, i64 %214, !dbg !2011
  %223 = load i8, i8* %222, align 1, !dbg !2011, !tbaa !701
  %224 = sext i8 %223 to i32, !dbg !2011
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
  ], !dbg !2012

; <label>:225:                                    ; preds = %221, %221, %221, %221, %221, %221, %221, %221, %221
  br i1 %112, label %226, label %644, !dbg !2013

; <label>:226:                                    ; preds = %225
  call void @llvm.dbg.value(metadata i8 %223, i64 0, metadata !1750, metadata !608), !dbg !1908
  call void @llvm.dbg.value(metadata i64 %214, i64 0, metadata !1739, metadata !608), !dbg !1877
  %227 = icmp ult i64 %125, %131, !dbg !2015
  br i1 %227, label %228, label %230, !dbg !2019

; <label>:228:                                    ; preds = %226
  %229 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !2021
  store i8 63, i8* %229, align 1, !dbg !2021, !tbaa !701
  br label %230, !dbg !2021

; <label>:230:                                    ; preds = %228, %226
  %231 = add i64 %125, 1, !dbg !2023
  call void @llvm.dbg.value(metadata i64 %231, i64 0, metadata !1740, metadata !608), !dbg !1802
  %232 = icmp ult i64 %231, %131, !dbg !2025
  br i1 %232, label %233, label %235, !dbg !2029

; <label>:233:                                    ; preds = %230
  %234 = getelementptr inbounds i8, i8* %0, i64 %231, !dbg !2031
  store i8 34, i8* %234, align 1, !dbg !2031, !tbaa !701
  br label %235, !dbg !2031

; <label>:235:                                    ; preds = %233, %230
  %236 = add i64 %125, 2, !dbg !2033
  call void @llvm.dbg.value(metadata i64 %236, i64 0, metadata !1740, metadata !608), !dbg !1802
  %237 = icmp ult i64 %236, %131, !dbg !2035
  br i1 %237, label %238, label %240, !dbg !2039

; <label>:238:                                    ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236, !dbg !2041
  store i8 34, i8* %239, align 1, !dbg !2041, !tbaa !701
  br label %240, !dbg !2041

; <label>:240:                                    ; preds = %238, %235
  %241 = add i64 %125, 3, !dbg !2043
  call void @llvm.dbg.value(metadata i64 %241, i64 0, metadata !1740, metadata !608), !dbg !1802
  %242 = icmp ult i64 %241, %131, !dbg !2045
  br i1 %242, label %243, label %245, !dbg !2049

; <label>:243:                                    ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241, !dbg !2051
  store i8 63, i8* %244, align 1, !dbg !2051, !tbaa !701
  br label %245, !dbg !2051

; <label>:245:                                    ; preds = %243, %240
  %246 = add i64 %125, 4, !dbg !2053
  call void @llvm.dbg.value(metadata i64 %246, i64 0, metadata !1740, metadata !608), !dbg !1802
  br label %476, !dbg !2055

; <label>:247:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !1754, metadata !608), !dbg !2056
  br label %257, !dbg !2057

; <label>:248:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !1754, metadata !608), !dbg !2056
  br label %257, !dbg !2058

; <label>:249:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !1754, metadata !608), !dbg !2056
  br label %255, !dbg !2059

; <label>:250:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !1754, metadata !608), !dbg !2056
  br label %255, !dbg !2060

; <label>:251:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !1754, metadata !608), !dbg !2056
  br label %257, !dbg !2061

; <label>:252:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !1754, metadata !608), !dbg !2056
  br i1 %114, label %253, label %254, !dbg !2062

; <label>:253:                                    ; preds = %252
  br i1 %112, label %542, label %644, !dbg !2063

; <label>:254:                                    ; preds = %252
  br i1 %122, label %542, label %255, !dbg !2066

; <label>:255:                                    ; preds = %254, %155, %250, %249
  %256 = phi i8 [ 92, %254 ], [ 116, %250 ], [ 114, %249 ], [ 110, %155 ]
  call void @llvm.dbg.value(metadata i8 %256, i64 0, metadata !1754, metadata !608), !dbg !2056
  br i1 %118, label %257, label %644, !dbg !2068

; <label>:257:                                    ; preds = %255, %155, %251, %248, %247
  %258 = phi i8 [ %256, %255 ], [ 118, %251 ], [ 102, %248 ], [ 98, %247 ], [ 97, %155 ]
  call void @llvm.dbg.value(metadata i8 %258, i64 0, metadata !1754, metadata !608), !dbg !2056
  br i1 %105, label %503, label %476, !dbg !2070

; <label>:259:                                    ; preds = %155, %155
  %260 = icmp eq i64 %156, -1, !dbg !2071
  br i1 %260, label %261, label %266, !dbg !2073

; <label>:261:                                    ; preds = %259
  %262 = load i8, i8* %26, align 1, !dbg !2074, !tbaa !701
  %263 = icmp ne i8 %262, 0, !dbg !2076
  %264 = icmp ne i64 %124, 0, !dbg !2077
  %265 = or i1 %264, %263, !dbg !2079
  br i1 %265, label %476, label %272, !dbg !2079

; <label>:266:                                    ; preds = %259
  %267 = icmp ne i64 %156, 1, !dbg !2080
  %268 = icmp ne i64 %124, 0, !dbg !2077
  %269 = or i1 %268, %267, !dbg !2082
  br i1 %269, label %476, label %272, !dbg !2082

; <label>:270:                                    ; preds = %155, %155
  %271 = icmp eq i64 %124, 0, !dbg !2077
  br i1 %271, label %272, label %476, !dbg !2084

; <label>:272:                                    ; preds = %270, %266, %261, %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1757, metadata !608), !dbg !1891
  br label %273, !dbg !2085

; <label>:273:                                    ; preds = %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %272
  %274 = phi i8 [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 1, %272 ]
  call void @llvm.dbg.value(metadata i8 %274, i64 0, metadata !1757, metadata !608), !dbg !1891
  br i1 %118, label %476, label %644, !dbg !2086

; <label>:275:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1748, metadata !608), !dbg !1811
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1757, metadata !608), !dbg !1891
  br i1 %114, label %276, label %476, !dbg !2088

; <label>:276:                                    ; preds = %275
  br i1 %112, label %277, label %644, !dbg !2089

; <label>:277:                                    ; preds = %276
  %278 = icmp eq i64 %131, 0, !dbg !2092
  %279 = icmp ne i64 %126, 0, !dbg !2094
  %280 = or i1 %279, %278, !dbg !2096
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !1741, metadata !608), !dbg !1803
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1731, metadata !608), !dbg !1794
  %281 = select i1 %280, i64 %126, i64 %131, !dbg !2096
  %282 = select i1 %280, i64 %131, i64 0, !dbg !2096
  call void @llvm.dbg.value(metadata i64 %282, i64 0, metadata !1731, metadata !608), !dbg !1794
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !1741, metadata !608), !dbg !1803
  %283 = icmp ult i64 %125, %282, !dbg !2097
  br i1 %283, label %284, label %286, !dbg !2101

; <label>:284:                                    ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !2103
  store i8 39, i8* %285, align 1, !dbg !2103, !tbaa !701
  br label %286, !dbg !2103

; <label>:286:                                    ; preds = %284, %277
  %287 = add i64 %125, 1, !dbg !2105
  call void @llvm.dbg.value(metadata i64 %287, i64 0, metadata !1740, metadata !608), !dbg !1802
  %288 = icmp ult i64 %287, %282, !dbg !2107
  br i1 %288, label %289, label %291, !dbg !2111

; <label>:289:                                    ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287, !dbg !2113
  store i8 92, i8* %290, align 1, !dbg !2113, !tbaa !701
  br label %291, !dbg !2113

; <label>:291:                                    ; preds = %289, %286
  %292 = add i64 %125, 2, !dbg !2115
  call void @llvm.dbg.value(metadata i64 %292, i64 0, metadata !1740, metadata !608), !dbg !1802
  %293 = icmp ult i64 %292, %282, !dbg !2117
  br i1 %293, label %294, label %296, !dbg !2121

; <label>:294:                                    ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292, !dbg !2123
  store i8 39, i8* %295, align 1, !dbg !2123, !tbaa !701
  br label %296, !dbg !2123

; <label>:296:                                    ; preds = %294, %291
  %297 = add i64 %125, 3, !dbg !2125
  call void @llvm.dbg.value(metadata i64 %297, i64 0, metadata !1740, metadata !608), !dbg !1802
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1747, metadata !608), !dbg !1810
  br label %476, !dbg !2127

; <label>:298:                                    ; preds = %155
  br i1 %14, label %299, label %308, !dbg !2128

; <label>:299:                                    ; preds = %298
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1758, metadata !608), !dbg !2129
  %300 = tail call i16** @__ctype_b_loc() #1, !dbg !2130
  %301 = load i16*, i16** %300, align 8, !dbg !2130, !tbaa !616
  %302 = zext i8 %159 to i64, !dbg !2130
  %303 = getelementptr inbounds i16, i16* %301, i64 %302, !dbg !2130
  %304 = load i16, i16* %303, align 2, !dbg !2130, !tbaa !2132
  %305 = lshr i16 %304, 14, !dbg !2133
  %306 = trunc i16 %305 to i8, !dbg !2133
  %307 = and i8 %306, 1, !dbg !2133
  call void @llvm.dbg.value(metadata i8 %307, i64 0, metadata !1761, metadata !608), !dbg !2134
  br label %368, !dbg !2135

; <label>:308:                                    ; preds = %298
  call void @llvm.lifetime.start(i64 8, i8* nonnull %18) #9, !dbg !2136
  store i64 0, i64* %10, align 8, !dbg !2137
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1758, metadata !608), !dbg !2129
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1761, metadata !608), !dbg !2134
  %309 = icmp eq i64 %156, -1, !dbg !2138
  br i1 %309, label %310, label %312, !dbg !2140, !llvm.loop !2141

; <label>:310:                                    ; preds = %308
  %311 = call i64 @strlen(i8* nonnull %2) #13, !dbg !2144
  call void @llvm.dbg.value(metadata i64 %311, i64 0, metadata !1733, metadata !608), !dbg !1796
  br label %312, !dbg !2145, !llvm.loop !2141

; <label>:312:                                    ; preds = %310, %308
  %313 = phi i64 [ %156, %308 ], [ %311, %310 ]
  br label %314, !dbg !2134

; <label>:314:                                    ; preds = %312, %355
  %315 = phi i64 [ %360, %355 ], [ 0, %312 ]
  %316 = phi i8 [ %359, %355 ], [ 1, %312 ]
  call void @llvm.dbg.value(metadata i8 %316, i64 0, metadata !1761, metadata !608), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !1758, metadata !608), !dbg !2129
  call void @llvm.dbg.value(metadata i64 %313, i64 0, metadata !1733, metadata !608), !dbg !1796
  call void @llvm.lifetime.start(i64 4, i8* nonnull %19) #9, !dbg !2146
  %317 = add i64 %315, %124, !dbg !2147
  %318 = getelementptr inbounds i8, i8* %2, i64 %317, !dbg !2148
  %319 = sub i64 %313, %317, !dbg !2149
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1762, metadata !2150), !dbg !2151
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !1779, metadata !2150), !dbg !2152
  %320 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %318, i64 %319, %struct.__mbstate_t* nonnull %11) #9, !dbg !2153
  call void @llvm.dbg.value(metadata i64 %320, i64 0, metadata !1782, metadata !608), !dbg !2154
  switch i64 %320, label %334 [
    i64 0, label %350
    i64 -1, label %347
    i64 -2, label %321
  ], !dbg !2155

; <label>:321:                                    ; preds = %314
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !1758, metadata !608), !dbg !2129
  %322 = icmp ugt i64 %313, %317, !dbg !2156
  br i1 %322, label %323, label %351, !dbg !2159

; <label>:323:                                    ; preds = %321
  br label %324, !dbg !2160

; <label>:324:                                    ; preds = %323, %330
  %325 = phi i64 [ %332, %330 ], [ %317, %323 ]
  %326 = phi i64 [ %331, %330 ], [ %315, %323 ]
  %327 = getelementptr inbounds i8, i8* %2, i64 %325, !dbg !2160
  %328 = load i8, i8* %327, align 1, !dbg !2160, !tbaa !701
  %329 = icmp eq i8 %328, 0, !dbg !2162
  br i1 %329, label %348, label %330, !dbg !2163

; <label>:330:                                    ; preds = %324
  %331 = add i64 %326, 1, !dbg !2165
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !1758, metadata !608), !dbg !2129
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !1758, metadata !608), !dbg !2129
  %332 = add i64 %331, %124, !dbg !2166
  %333 = icmp ult i64 %332, %313, !dbg !2156
  br i1 %333, label %324, label %348, !dbg !2159, !llvm.loop !2167

; <label>:334:                                    ; preds = %314
  %335 = icmp ugt i64 %320, 1, !dbg !2169
  %336 = and i1 %116, %335, !dbg !2173
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1783, metadata !608), !dbg !2174
  br i1 %336, label %337, label %355, !dbg !2173

; <label>:337:                                    ; preds = %334
  br label %338, !dbg !2175

; <label>:338:                                    ; preds = %337, %344
  %339 = phi i64 [ %345, %344 ], [ 1, %337 ]
  %340 = add i64 %339, %317, !dbg !2175
  %341 = getelementptr inbounds i8, i8* %2, i64 %340, !dbg !2176
  %342 = load i8, i8* %341, align 1, !dbg !2176, !tbaa !701
  %343 = sext i8 %342 to i32, !dbg !2176
  switch i32 %343, label %344 [
    i32 91, label %367
    i32 92, label %367
    i32 94, label %367
    i32 96, label %367
    i32 124, label %367
  ], !dbg !2177

; <label>:344:                                    ; preds = %338
  %345 = add nuw i64 %339, 1, !dbg !2178
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !1783, metadata !608), !dbg !2174
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !1783, metadata !608), !dbg !2174
  %346 = icmp ult i64 %345, %320, !dbg !2169
  br i1 %346, label %338, label %354, !dbg !2180, !llvm.loop !2182

; <label>:347:                                    ; preds = %314
  br label %351, !dbg !2134

; <label>:348:                                    ; preds = %324, %330
  %349 = phi i64 [ %331, %330 ], [ %326, %324 ]
  br label %351, !dbg !2134

; <label>:350:                                    ; preds = %314
  br label %351, !dbg !2134

; <label>:351:                                    ; preds = %350, %348, %347, %321
  %352 = phi i64 [ %315, %321 ], [ %315, %347 ], [ %349, %348 ], [ %315, %350 ]
  %353 = phi i8 [ 0, %321 ], [ 0, %347 ], [ 0, %348 ], [ %316, %350 ]
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1761, metadata !608), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1758, metadata !608), !dbg !2129
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #9, !dbg !2185
  br label %364

; <label>:354:                                    ; preds = %344
  br label %355, !dbg !2186

; <label>:355:                                    ; preds = %354, %334
  %356 = load i32, i32* %12, align 4, !dbg !2186, !tbaa !713
  call void @llvm.dbg.value(metadata i32 %356, i64 0, metadata !1779, metadata !608), !dbg !2152
  %357 = call i32 @iswprint(i32 %356) #9, !dbg !2188
  %358 = icmp eq i32 %357, 0, !dbg !2188
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1761, metadata !608), !dbg !2134
  %359 = select i1 %358, i8 0, i8 %316, !dbg !2189
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1761, metadata !608), !dbg !2134
  %360 = add i64 %320, %315, !dbg !2190
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1758, metadata !608), !dbg !2129
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1761, metadata !608), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1758, metadata !608), !dbg !2129
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #9, !dbg !2185
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1762, metadata !2150), !dbg !2151
  %361 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #13, !dbg !2191
  %362 = icmp eq i32 %361, 0, !dbg !2192
  br i1 %362, label %314, label %363, !dbg !2193, !llvm.loop !2141

; <label>:363:                                    ; preds = %355
  br label %364, !dbg !2195

; <label>:364:                                    ; preds = %363, %351
  %365 = phi i8 [ %353, %351 ], [ %359, %363 ]
  %366 = phi i64 [ %352, %351 ], [ %360, %363 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #9, !dbg !2195
  br label %368

; <label>:367:                                    ; preds = %338, %338, %338, %338, %338
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1761, metadata !608), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1758, metadata !608), !dbg !2129
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #9, !dbg !2185
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #9, !dbg !2195
  br label %649

; <label>:368:                                    ; preds = %364, %299
  %369 = phi i64 [ %156, %299 ], [ %313, %364 ]
  %370 = phi i64 [ 1, %299 ], [ %366, %364 ]
  %371 = phi i8 [ %307, %299 ], [ %365, %364 ]
  call void @llvm.dbg.value(metadata i8 %371, i64 0, metadata !1761, metadata !608), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %370, i64 0, metadata !1758, metadata !608), !dbg !2129
  call void @llvm.dbg.value(metadata i64 %369, i64 0, metadata !1733, metadata !608), !dbg !1796
  %372 = and i8 %371, 1, !dbg !2196
  %373 = icmp ne i8 %372, 0, !dbg !2196
  call void @llvm.dbg.value(metadata i8 %372, i64 0, metadata !1757, metadata !608), !dbg !1891
  %374 = icmp ult i64 %370, 2, !dbg !2197
  %375 = or i1 %373, %113, !dbg !2198
  %376 = and i1 %374, %375, !dbg !2200
  br i1 %376, label %476, label %377, !dbg !2200

; <label>:377:                                    ; preds = %368
  %378 = add i64 %370, %124, !dbg !2201
  call void @llvm.dbg.value(metadata i64 %378, i64 0, metadata !1790, metadata !608), !dbg !2202
  br label %379, !dbg !2203

; <label>:379:                                    ; preds = %472, %377
  %380 = phi i64 [ %124, %377 ], [ %447, %472 ]
  %381 = phi i64 [ %125, %377 ], [ %473, %472 ]
  %382 = phi i8 [ %128, %377 ], [ %468, %472 ]
  %383 = phi i8 [ %159, %377 ], [ %475, %472 ]
  %384 = phi i8 [ %157, %377 ], [ %445, %472 ]
  %385 = phi i8 [ 0, %377 ], [ %446, %472 ]
  call void @llvm.dbg.value(metadata i8 %385, i64 0, metadata !1756, metadata !608), !dbg !1890
  call void @llvm.dbg.value(metadata i8 %384, i64 0, metadata !1755, metadata !608), !dbg !1889
  call void @llvm.dbg.value(metadata i8 %383, i64 0, metadata !1750, metadata !608), !dbg !1908
  call void @llvm.dbg.value(metadata i8 %382, i64 0, metadata !1747, metadata !608), !dbg !1810
  call void @llvm.dbg.value(metadata i64 %381, i64 0, metadata !1740, metadata !608), !dbg !1802
  call void @llvm.dbg.value(metadata i64 %380, i64 0, metadata !1739, metadata !608), !dbg !1877
  br i1 %375, label %432, label %386, !dbg !2204

; <label>:386:                                    ; preds = %379
  br i1 %112, label %387, label %643, !dbg !2209

; <label>:387:                                    ; preds = %386
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1756, metadata !608), !dbg !1890
  %388 = and i8 %382, 1, !dbg !2213
  %389 = icmp eq i8 %388, 0, !dbg !2213
  %390 = and i1 %114, %389, !dbg !2216
  br i1 %390, label %391, label %407, !dbg !2216

; <label>:391:                                    ; preds = %387
  %392 = icmp ult i64 %381, %131, !dbg !2218
  br i1 %392, label %393, label %395, !dbg !2223

; <label>:393:                                    ; preds = %391
  %394 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !2225
  store i8 39, i8* %394, align 1, !dbg !2225, !tbaa !701
  br label %395, !dbg !2225

; <label>:395:                                    ; preds = %393, %391
  %396 = add i64 %381, 1, !dbg !2227
  call void @llvm.dbg.value(metadata i64 %396, i64 0, metadata !1740, metadata !608), !dbg !1802
  %397 = icmp ult i64 %396, %131, !dbg !2229
  br i1 %397, label %398, label %400, !dbg !2233

; <label>:398:                                    ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !2235
  store i8 36, i8* %399, align 1, !dbg !2235, !tbaa !701
  br label %400, !dbg !2235

; <label>:400:                                    ; preds = %398, %395
  %401 = add i64 %381, 2, !dbg !2237
  call void @llvm.dbg.value(metadata i64 %401, i64 0, metadata !1740, metadata !608), !dbg !1802
  %402 = icmp ult i64 %401, %131, !dbg !2239
  br i1 %402, label %403, label %405, !dbg !2243

; <label>:403:                                    ; preds = %400
  %404 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !2245
  store i8 39, i8* %404, align 1, !dbg !2245, !tbaa !701
  br label %405, !dbg !2245

; <label>:405:                                    ; preds = %403, %400
  %406 = add i64 %381, 3, !dbg !2247
  call void @llvm.dbg.value(metadata i64 %406, i64 0, metadata !1740, metadata !608), !dbg !1802
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1747, metadata !608), !dbg !1810
  br label %407, !dbg !2249

; <label>:407:                                    ; preds = %387, %405
  %408 = phi i64 [ %406, %405 ], [ %381, %387 ]
  %409 = phi i8 [ 1, %405 ], [ %382, %387 ]
  call void @llvm.dbg.value(metadata i8 %409, i64 0, metadata !1747, metadata !608), !dbg !1810
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !1740, metadata !608), !dbg !1802
  %410 = icmp ult i64 %408, %131, !dbg !2251
  br i1 %410, label %411, label %413, !dbg !2255

; <label>:411:                                    ; preds = %407
  %412 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !2257
  store i8 92, i8* %412, align 1, !dbg !2257, !tbaa !701
  br label %413, !dbg !2257

; <label>:413:                                    ; preds = %411, %407
  %414 = add i64 %408, 1, !dbg !2259
  call void @llvm.dbg.value(metadata i64 %414, i64 0, metadata !1740, metadata !608), !dbg !1802
  %415 = icmp ult i64 %414, %131, !dbg !2261
  br i1 %415, label %416, label %420, !dbg !2265

; <label>:416:                                    ; preds = %413
  %417 = lshr i8 %383, 6, !dbg !2267
  %418 = or i8 %417, 48, !dbg !2267
  %419 = getelementptr inbounds i8, i8* %0, i64 %414, !dbg !2267
  store i8 %418, i8* %419, align 1, !dbg !2267, !tbaa !701
  br label %420, !dbg !2267

; <label>:420:                                    ; preds = %416, %413
  %421 = add i64 %408, 2, !dbg !2269
  call void @llvm.dbg.value(metadata i64 %421, i64 0, metadata !1740, metadata !608), !dbg !1802
  %422 = icmp ult i64 %421, %131, !dbg !2271
  br i1 %422, label %423, label %428, !dbg !2275

; <label>:423:                                    ; preds = %420
  %424 = lshr i8 %383, 3, !dbg !2277
  %425 = and i8 %424, 7, !dbg !2277
  %426 = or i8 %425, 48, !dbg !2277
  %427 = getelementptr inbounds i8, i8* %0, i64 %421, !dbg !2277
  store i8 %426, i8* %427, align 1, !dbg !2277, !tbaa !701
  br label %428, !dbg !2277

; <label>:428:                                    ; preds = %423, %420
  %429 = add i64 %408, 3, !dbg !2279
  call void @llvm.dbg.value(metadata i64 %429, i64 0, metadata !1740, metadata !608), !dbg !1802
  %430 = and i8 %383, 7, !dbg !2281
  %431 = or i8 %430, 48, !dbg !2282
  call void @llvm.dbg.value(metadata i8 %431, i64 0, metadata !1750, metadata !608), !dbg !1908
  br label %441, !dbg !2283

; <label>:432:                                    ; preds = %379
  %433 = and i8 %384, 1, !dbg !2284
  %434 = icmp eq i8 %433, 0, !dbg !2284
  br i1 %434, label %441, label %435, !dbg !2286

; <label>:435:                                    ; preds = %432
  %436 = icmp ult i64 %381, %131, !dbg !2287
  br i1 %436, label %437, label %439, !dbg !2292

; <label>:437:                                    ; preds = %435
  %438 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !2294
  store i8 92, i8* %438, align 1, !dbg !2294, !tbaa !701
  br label %439, !dbg !2294

; <label>:439:                                    ; preds = %437, %435
  %440 = add i64 %381, 1, !dbg !2296
  call void @llvm.dbg.value(metadata i64 %440, i64 0, metadata !1740, metadata !608), !dbg !1802
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1755, metadata !608), !dbg !1889
  br label %441, !dbg !2298

; <label>:441:                                    ; preds = %432, %439, %428
  %442 = phi i64 [ %440, %439 ], [ %381, %432 ], [ %429, %428 ]
  %443 = phi i8 [ %382, %439 ], [ %382, %432 ], [ %409, %428 ]
  %444 = phi i8 [ %383, %439 ], [ %383, %432 ], [ %431, %428 ]
  %445 = phi i8 [ 0, %439 ], [ %384, %432 ], [ %384, %428 ]
  %446 = phi i8 [ %385, %439 ], [ %385, %432 ], [ 1, %428 ]
  call void @llvm.dbg.value(metadata i8 %446, i64 0, metadata !1756, metadata !608), !dbg !1890
  call void @llvm.dbg.value(metadata i8 %445, i64 0, metadata !1755, metadata !608), !dbg !1889
  call void @llvm.dbg.value(metadata i8 %444, i64 0, metadata !1750, metadata !608), !dbg !1908
  call void @llvm.dbg.value(metadata i8 %443, i64 0, metadata !1747, metadata !608), !dbg !1810
  call void @llvm.dbg.value(metadata i64 %442, i64 0, metadata !1740, metadata !608), !dbg !1802
  %447 = add i64 %380, 1, !dbg !2299
  %448 = icmp ugt i64 %378, %447, !dbg !2301
  br i1 %448, label %449, label %541, !dbg !2302

; <label>:449:                                    ; preds = %441
  %450 = and i8 %443, 1, !dbg !2303
  %451 = icmp ne i8 %450, 0, !dbg !2303
  %452 = and i8 %446, 1, !dbg !2307
  %453 = icmp eq i8 %452, 0, !dbg !2307
  %454 = and i1 %451, %453, !dbg !2303
  br i1 %454, label %455, label %466, !dbg !2303

; <label>:455:                                    ; preds = %449
  %456 = icmp ult i64 %442, %131, !dbg !2309
  br i1 %456, label %457, label %459, !dbg !2314

; <label>:457:                                    ; preds = %455
  %458 = getelementptr inbounds i8, i8* %0, i64 %442, !dbg !2316
  store i8 39, i8* %458, align 1, !dbg !2316, !tbaa !701
  br label %459, !dbg !2316

; <label>:459:                                    ; preds = %457, %455
  %460 = add i64 %442, 1, !dbg !2318
  call void @llvm.dbg.value(metadata i64 %460, i64 0, metadata !1740, metadata !608), !dbg !1802
  %461 = icmp ult i64 %460, %131, !dbg !2320
  br i1 %461, label %462, label %464, !dbg !2324

; <label>:462:                                    ; preds = %459
  %463 = getelementptr inbounds i8, i8* %0, i64 %460, !dbg !2326
  store i8 39, i8* %463, align 1, !dbg !2326, !tbaa !701
  br label %464, !dbg !2326

; <label>:464:                                    ; preds = %462, %459
  %465 = add i64 %442, 2, !dbg !2328
  call void @llvm.dbg.value(metadata i64 %465, i64 0, metadata !1740, metadata !608), !dbg !1802
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1747, metadata !608), !dbg !1810
  br label %466, !dbg !2330

; <label>:466:                                    ; preds = %449, %464
  %467 = phi i64 [ %465, %464 ], [ %442, %449 ]
  %468 = phi i8 [ 0, %464 ], [ %443, %449 ]
  call void @llvm.dbg.value(metadata i8 %468, i64 0, metadata !1747, metadata !608), !dbg !1810
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !1740, metadata !608), !dbg !1802
  %469 = icmp ult i64 %467, %131, !dbg !2332
  br i1 %469, label %470, label %472, !dbg !2336

; <label>:470:                                    ; preds = %466
  %471 = getelementptr inbounds i8, i8* %0, i64 %467, !dbg !2338
  store i8 %444, i8* %471, align 1, !dbg !2338, !tbaa !701
  br label %472, !dbg !2338

; <label>:472:                                    ; preds = %470, %466
  %473 = add i64 %467, 1, !dbg !2340
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !1740, metadata !608), !dbg !1802
  call void @llvm.dbg.value(metadata i64 %447, i64 0, metadata !1739, metadata !608), !dbg !1877
  %474 = getelementptr inbounds i8, i8* %2, i64 %447, !dbg !2342
  %475 = load i8, i8* %474, align 1, !dbg !2342, !tbaa !701
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !1750, metadata !608), !dbg !1908
  br label %379, !dbg !2343, !llvm.loop !2345

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
  call void @llvm.dbg.value(metadata i64 %486, i64 0, metadata !1731, metadata !608), !dbg !1794
  call void @llvm.dbg.value(metadata i8 %485, i64 0, metadata !1757, metadata !608), !dbg !1891
  call void @llvm.dbg.value(metadata i8 %484, i64 0, metadata !1756, metadata !608), !dbg !1890
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !1755, metadata !608), !dbg !1889
  call void @llvm.dbg.value(metadata i8 %483, i64 0, metadata !1750, metadata !608), !dbg !1908
  call void @llvm.dbg.value(metadata i8 %482, i64 0, metadata !1748, metadata !608), !dbg !1811
  call void @llvm.dbg.value(metadata i8 %481, i64 0, metadata !1747, metadata !608), !dbg !1810
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !1733, metadata !608), !dbg !1796
  call void @llvm.dbg.value(metadata i64 %479, i64 0, metadata !1741, metadata !608), !dbg !1803
  call void @llvm.dbg.value(metadata i64 %478, i64 0, metadata !1740, metadata !608), !dbg !1802
  call void @llvm.dbg.value(metadata i64 %477, i64 0, metadata !1739, metadata !608), !dbg !1877
  br i1 %107, label %488, label %487, !dbg !2348

; <label>:487:                                    ; preds = %476
  br i1 %117, label %489, label %501, !dbg !2350

; <label>:488:                                    ; preds = %476
  br i1 %20, label %501, label %489, !dbg !2351

; <label>:489:                                    ; preds = %488, %487
  %490 = lshr i8 %483, 5, !dbg !2352
  %491 = zext i8 %490 to i64, !dbg !2352
  %492 = getelementptr inbounds i32, i32* %6, i64 %491, !dbg !2354
  %493 = load i32, i32* %492, align 4, !dbg !2354, !tbaa !713
  %494 = and i8 %483, 31, !dbg !2355
  %495 = zext i8 %494 to i32, !dbg !2356
  %496 = shl i32 1, %495, !dbg !2357
  %497 = and i32 %493, %496, !dbg !2357
  %498 = icmp eq i32 %497, 0, !dbg !2357
  %499 = icmp eq i8 %157, 0, !dbg !2358
  %500 = and i1 %499, %498, !dbg !2359
  br i1 %500, label %542, label %503, !dbg !2359

; <label>:501:                                    ; preds = %488, %487
  %502 = icmp eq i8 %157, 0, !dbg !2358
  br i1 %502, label %542, label %503, !dbg !2360

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
  call void @llvm.dbg.value(metadata i64 %512, i64 0, metadata !1731, metadata !608), !dbg !1794
  call void @llvm.dbg.value(metadata i8 %511, i64 0, metadata !1757, metadata !608), !dbg !1891
  call void @llvm.dbg.value(metadata i8 %510, i64 0, metadata !1750, metadata !608), !dbg !1908
  call void @llvm.dbg.value(metadata i8 %509, i64 0, metadata !1748, metadata !608), !dbg !1811
  call void @llvm.dbg.value(metadata i8 %508, i64 0, metadata !1747, metadata !608), !dbg !1810
  call void @llvm.dbg.value(metadata i64 %507, i64 0, metadata !1733, metadata !608), !dbg !1796
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !1741, metadata !608), !dbg !1803
  call void @llvm.dbg.value(metadata i64 %505, i64 0, metadata !1740, metadata !608), !dbg !1802
  call void @llvm.dbg.value(metadata i64 %504, i64 0, metadata !1739, metadata !608), !dbg !1877
  br i1 %112, label %513, label %644, !dbg !2362

; <label>:513:                                    ; preds = %503
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1756, metadata !608), !dbg !1890
  %514 = and i8 %508, 1, !dbg !2365
  %515 = icmp eq i8 %514, 0, !dbg !2365
  %516 = and i1 %114, %515, !dbg !2368
  br i1 %516, label %517, label %533, !dbg !2368

; <label>:517:                                    ; preds = %513
  %518 = icmp ult i64 %505, %512, !dbg !2370
  br i1 %518, label %519, label %521, !dbg !2375

; <label>:519:                                    ; preds = %517
  %520 = getelementptr inbounds i8, i8* %0, i64 %505, !dbg !2377
  store i8 39, i8* %520, align 1, !dbg !2377, !tbaa !701
  br label %521, !dbg !2377

; <label>:521:                                    ; preds = %519, %517
  %522 = add i64 %505, 1, !dbg !2379
  call void @llvm.dbg.value(metadata i64 %522, i64 0, metadata !1740, metadata !608), !dbg !1802
  %523 = icmp ult i64 %522, %512, !dbg !2381
  br i1 %523, label %524, label %526, !dbg !2385

; <label>:524:                                    ; preds = %521
  %525 = getelementptr inbounds i8, i8* %0, i64 %522, !dbg !2387
  store i8 36, i8* %525, align 1, !dbg !2387, !tbaa !701
  br label %526, !dbg !2387

; <label>:526:                                    ; preds = %524, %521
  %527 = add i64 %505, 2, !dbg !2389
  call void @llvm.dbg.value(metadata i64 %527, i64 0, metadata !1740, metadata !608), !dbg !1802
  %528 = icmp ult i64 %527, %512, !dbg !2391
  br i1 %528, label %529, label %531, !dbg !2395

; <label>:529:                                    ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527, !dbg !2397
  store i8 39, i8* %530, align 1, !dbg !2397, !tbaa !701
  br label %531, !dbg !2397

; <label>:531:                                    ; preds = %529, %526
  %532 = add i64 %505, 3, !dbg !2399
  call void @llvm.dbg.value(metadata i64 %532, i64 0, metadata !1740, metadata !608), !dbg !1802
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1747, metadata !608), !dbg !1810
  br label %533, !dbg !2401

; <label>:533:                                    ; preds = %513, %531
  %534 = phi i64 [ %532, %531 ], [ %505, %513 ]
  %535 = phi i8 [ 1, %531 ], [ %508, %513 ]
  call void @llvm.dbg.value(metadata i8 %535, i64 0, metadata !1747, metadata !608), !dbg !1810
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !1740, metadata !608), !dbg !1802
  %536 = icmp ult i64 %534, %512, !dbg !2403
  br i1 %536, label %537, label %539, !dbg !2407

; <label>:537:                                    ; preds = %533
  %538 = getelementptr inbounds i8, i8* %0, i64 %534, !dbg !2409
  store i8 92, i8* %538, align 1, !dbg !2409, !tbaa !701
  br label %539, !dbg !2409

; <label>:539:                                    ; preds = %533, %537
  %540 = add i64 %534, 1, !dbg !2411
  call void @llvm.dbg.value(metadata i64 %540, i64 0, metadata !1740, metadata !608), !dbg !1802
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !1731, metadata !608), !dbg !1794
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !1757, metadata !608), !dbg !1891
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !1756, metadata !608), !dbg !1890
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !1750, metadata !608), !dbg !1908
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !1748, metadata !608), !dbg !1811
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !1747, metadata !608), !dbg !1810
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !1733, metadata !608), !dbg !1796
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1741, metadata !608), !dbg !1803
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !1740, metadata !608), !dbg !1802
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !1739, metadata !608), !dbg !1877
  br label %569, !dbg !2413

; <label>:541:                                    ; preds = %441
  br label %542, !dbg !1794

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
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !1731, metadata !608), !dbg !1794
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !1757, metadata !608), !dbg !1891
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !1756, metadata !608), !dbg !1890
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !1750, metadata !608), !dbg !1908
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !1748, metadata !608), !dbg !1811
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !1747, metadata !608), !dbg !1810
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !1733, metadata !608), !dbg !1796
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1741, metadata !608), !dbg !1803
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !1740, metadata !608), !dbg !1802
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !1739, metadata !608), !dbg !1877
  %553 = and i8 %547, 1, !dbg !2413
  %554 = icmp ne i8 %553, 0, !dbg !2413
  %555 = and i8 %550, 1, !dbg !2417
  %556 = icmp eq i8 %555, 0, !dbg !2417
  %557 = and i1 %554, %556, !dbg !2413
  br i1 %557, label %558, label %569, !dbg !2413

; <label>:558:                                    ; preds = %542
  %559 = icmp ult i64 %544, %552, !dbg !2419
  br i1 %559, label %560, label %562, !dbg !2424

; <label>:560:                                    ; preds = %558
  %561 = getelementptr inbounds i8, i8* %0, i64 %544, !dbg !2426
  store i8 39, i8* %561, align 1, !dbg !2426, !tbaa !701
  br label %562, !dbg !2426

; <label>:562:                                    ; preds = %560, %558
  %563 = add i64 %544, 1, !dbg !2428
  call void @llvm.dbg.value(metadata i64 %563, i64 0, metadata !1740, metadata !608), !dbg !1802
  %564 = icmp ult i64 %563, %552, !dbg !2430
  br i1 %564, label %565, label %567, !dbg !2434

; <label>:565:                                    ; preds = %562
  %566 = getelementptr inbounds i8, i8* %0, i64 %563, !dbg !2436
  store i8 39, i8* %566, align 1, !dbg !2436, !tbaa !701
  br label %567, !dbg !2436

; <label>:567:                                    ; preds = %565, %562
  %568 = add i64 %544, 2, !dbg !2438
  call void @llvm.dbg.value(metadata i64 %568, i64 0, metadata !1740, metadata !608), !dbg !1802
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1747, metadata !608), !dbg !1810
  br label %569, !dbg !2440

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
  call void @llvm.dbg.value(metadata i8 %578, i64 0, metadata !1747, metadata !608), !dbg !1810
  call void @llvm.dbg.value(metadata i64 %577, i64 0, metadata !1740, metadata !608), !dbg !1802
  %579 = icmp ult i64 %577, %570, !dbg !2442
  br i1 %579, label %580, label %582, !dbg !2446

; <label>:580:                                    ; preds = %569
  %581 = getelementptr inbounds i8, i8* %0, i64 %577, !dbg !2448
  store i8 %572, i8* %581, align 1, !dbg !2448, !tbaa !701
  br label %582, !dbg !2448

; <label>:582:                                    ; preds = %580, %569
  %583 = add i64 %577, 1, !dbg !2450
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !1740, metadata !608), !dbg !1802
  %584 = and i8 %571, 1, !dbg !2452
  %585 = icmp eq i8 %584, 0, !dbg !2452
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1749, metadata !608), !dbg !1812
  %586 = select i1 %585, i8 0, i8 %130, !dbg !2454
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !1749, metadata !608), !dbg !1812
  br label %587, !dbg !2455

; <label>:587:                                    ; preds = %582, %209
  %588 = phi i64 [ %124, %209 ], [ %576, %582 ]
  %589 = phi i64 [ %125, %209 ], [ %583, %582 ]
  %590 = phi i64 [ %126, %209 ], [ %575, %582 ]
  %591 = phi i64 [ %156, %209 ], [ %574, %582 ]
  %592 = phi i8 [ %128, %209 ], [ %578, %582 ]
  %593 = phi i8 [ %129, %209 ], [ %573, %582 ]
  %594 = phi i8 [ %130, %209 ], [ %586, %582 ]
  %595 = phi i64 [ %131, %209 ], [ %570, %582 ]
  %596 = add i64 %588, 1, !dbg !2456
  call void @llvm.dbg.value(metadata i64 %596, i64 0, metadata !1739, metadata !608), !dbg !1877
  br label %123, !dbg !2458, !llvm.loop !2459

; <label>:597:                                    ; preds = %133, %135
  %598 = phi i64 [ %124, %133 ], [ -1, %135 ]
  %599 = icmp eq i64 %125, 0, !dbg !2462
  %600 = and i1 %114, %599, !dbg !2464
  %601 = xor i1 %600, true, !dbg !2464
  %602 = or i1 %112, %601, !dbg !2464
  br i1 %602, label %603, label %648, !dbg !2464

; <label>:603:                                    ; preds = %597
  %604 = and i1 %114, %112, !dbg !2465
  %605 = xor i1 %604, true, !dbg !2465
  %606 = and i8 %129, 1, !dbg !2467
  %607 = icmp eq i8 %606, 0, !dbg !2467
  %608 = or i1 %607, %605, !dbg !2465
  br i1 %608, label %618, label %609, !dbg !2465

; <label>:609:                                    ; preds = %603
  %610 = and i8 %130, 1, !dbg !2469
  %611 = icmp eq i8 %610, 0, !dbg !2469
  br i1 %611, label %614, label %612, !dbg !2472

; <label>:612:                                    ; preds = %609
  %613 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %126, i8* %2, i64 %598, i32 5, i32 %5, i32* %6, i8* %97, i8* %98), !dbg !2473
  br label %659, !dbg !2474

; <label>:614:                                    ; preds = %609
  %615 = icmp eq i64 %131, 0, !dbg !2475
  %616 = icmp ne i64 %126, 0, !dbg !2477
  %617 = and i1 %616, %615, !dbg !2479
  br i1 %617, label %27, label %618, !dbg !2479

; <label>:618:                                    ; preds = %603, %614
  %619 = icmp ne i8* %100, null, !dbg !2480
  %620 = and i1 %619, %112, !dbg !2482
  br i1 %620, label %621, label %638, !dbg !2482

; <label>:621:                                    ; preds = %618
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !1742, metadata !608), !dbg !1804
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1740, metadata !608), !dbg !1802
  %622 = load i8, i8* %100, align 1, !dbg !2483, !tbaa !701
  %623 = icmp eq i8 %622, 0, !dbg !2487
  br i1 %623, label %638, label %624, !dbg !2487

; <label>:624:                                    ; preds = %621
  br label %625, !dbg !2489

; <label>:625:                                    ; preds = %624, %632
  %626 = phi i8 [ %635, %632 ], [ %622, %624 ]
  %627 = phi i8* [ %634, %632 ], [ %100, %624 ]
  %628 = phi i64 [ %633, %632 ], [ %125, %624 ]
  %629 = icmp ult i64 %628, %131, !dbg !2489
  br i1 %629, label %630, label %632, !dbg !2493

; <label>:630:                                    ; preds = %625
  %631 = getelementptr inbounds i8, i8* %0, i64 %628, !dbg !2495
  store i8 %626, i8* %631, align 1, !dbg !2495, !tbaa !701
  br label %632, !dbg !2495

; <label>:632:                                    ; preds = %630, %625
  %633 = add i64 %628, 1, !dbg !2497
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !1740, metadata !608), !dbg !1802
  %634 = getelementptr inbounds i8, i8* %627, i64 1, !dbg !2499
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !1742, metadata !608), !dbg !1804
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !1742, metadata !608), !dbg !1804
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !1740, metadata !608), !dbg !1802
  %635 = load i8, i8* %634, align 1, !dbg !2483, !tbaa !701
  %636 = icmp eq i8 %635, 0, !dbg !2487
  br i1 %636, label %637, label %625, !dbg !2487, !llvm.loop !2501

; <label>:637:                                    ; preds = %632
  br label %638, !dbg !1802

; <label>:638:                                    ; preds = %637, %621, %618
  %639 = phi i64 [ %125, %618 ], [ %125, %621 ], [ %633, %637 ]
  call void @llvm.dbg.value(metadata i64 %639, i64 0, metadata !1740, metadata !608), !dbg !1802
  %640 = icmp ult i64 %639, %131, !dbg !2504
  br i1 %640, label %641, label %659, !dbg !2506

; <label>:641:                                    ; preds = %638
  %642 = getelementptr inbounds i8, i8* %0, i64 %639, !dbg !2507
  store i8 0, i8* %642, align 1, !dbg !2508, !tbaa !701
  br label %659, !dbg !2507

; <label>:643:                                    ; preds = %386
  br label %649, !dbg !1794

; <label>:644:                                    ; preds = %148, %161, %211, %225, %253, %255, %273, %276, %503
  %645 = phi i32 [ %96, %148 ], [ %96, %161 ], [ 2, %211 ], [ 5, %225 ], [ 2, %253 ], [ 2, %255 ], [ 2, %273 ], [ 2, %276 ], [ %96, %503 ]
  %646 = phi i64 [ %146, %148 ], [ %156, %161 ], [ %156, %211 ], [ %156, %225 ], [ %156, %253 ], [ %156, %255 ], [ %156, %273 ], [ %156, %276 ], [ %507, %503 ]
  %647 = phi i64 [ %131, %148 ], [ %131, %161 ], [ %131, %211 ], [ %131, %225 ], [ %131, %253 ], [ %131, %255 ], [ %131, %273 ], [ %131, %276 ], [ %512, %503 ]
  br label %649, !dbg !1794

; <label>:648:                                    ; preds = %597
  br label %649, !dbg !1794

; <label>:649:                                    ; preds = %648, %644, %643, %367
  %650 = phi i32 [ 2, %367 ], [ %96, %643 ], [ %645, %644 ], [ %96, %648 ]
  %651 = phi i64 [ %313, %367 ], [ %369, %643 ], [ %646, %644 ], [ %598, %648 ]
  %652 = phi i64 [ %131, %367 ], [ %131, %643 ], [ %647, %644 ], [ %131, %648 ]
  call void @llvm.dbg.value(metadata i64 %652, i64 0, metadata !1731, metadata !608), !dbg !1794
  call void @llvm.dbg.value(metadata i64 %651, i64 0, metadata !1733, metadata !608), !dbg !1796
  %653 = icmp ne i32 %650, 2, !dbg !2509
  %654 = icmp eq i8 %104, 0, !dbg !2511
  %655 = or i1 %653, %654, !dbg !2513
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !1734, metadata !608), !dbg !1797
  %656 = select i1 %655, i32 %650, i32 4, !dbg !2513
  call void @llvm.dbg.value(metadata i32 %656, i64 0, metadata !1734, metadata !608), !dbg !1797
  %657 = and i32 %5, -3, !dbg !2514
  %658 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %652, i8* %2, i64 %651, i32 %656, i32 %657, i32* null, i8* %97, i8* %98), !dbg !2515
  br label %659, !dbg !2516

; <label>:659:                                    ; preds = %638, %641, %649, %612
  %660 = phi i64 [ %658, %649 ], [ %613, %612 ], [ %639, %641 ], [ %639, %638 ]
  ret i64 %660, !dbg !2517
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !2518 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2522, metadata !608), !dbg !2526
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2523, metadata !608), !dbg !2527
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #9, !dbg !2528
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2524, metadata !608), !dbg !2529
  %4 = icmp eq i8* %3, %0, !dbg !2530
  br i1 %4, label %5, label %75, !dbg !2532

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #9, !dbg !2533
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !2525, metadata !608), !dbg !2534
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2535, metadata !608), !dbg !2551
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2549, metadata !608), !dbg !2554
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2550, metadata !608), !dbg !2555
  %7 = load i8, i8* %6, align 1, !tbaa !701
  %8 = sext i8 %7 to i32
  %9 = and i32 %8, -33, !dbg !2556
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !2556

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2559, metadata !608), !dbg !2573
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2571, metadata !608), !dbg !2577
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2572, metadata !608), !dbg !2578
  %11 = getelementptr inbounds i8, i8* %6, i64 1
  %12 = load i8, i8* %11, align 1, !tbaa !701
  %13 = sext i8 %12 to i32
  %14 = and i32 %13, -33, !dbg !2579
  %15 = icmp eq i32 %14, 84, !dbg !2579
  br i1 %15, label %16, label %72, !dbg !2579

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2582, metadata !608), !dbg !2595
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2593, metadata !608), !dbg !2599
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2594, metadata !608), !dbg !2600
  %17 = getelementptr inbounds i8, i8* %6, i64 2
  %18 = load i8, i8* %17, align 1, !tbaa !701
  %19 = sext i8 %18 to i32
  %20 = and i32 %19, -33, !dbg !2601
  %21 = icmp eq i32 %20, 70, !dbg !2601
  br i1 %21, label %22, label %72, !dbg !2601

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2604, metadata !608), !dbg !2616
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2614, metadata !608), !dbg !2620
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2615, metadata !608), !dbg !2621
  %23 = getelementptr inbounds i8, i8* %6, i64 3
  %24 = load i8, i8* %23, align 1, !tbaa !701
  %25 = icmp eq i8 %24, 45, !dbg !2622
  br i1 %25, label %26, label %72, !dbg !2625

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2627, metadata !608), !dbg !2638
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2636, metadata !608), !dbg !2642
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2637, metadata !608), !dbg !2643
  %27 = getelementptr inbounds i8, i8* %6, i64 4
  %28 = load i8, i8* %27, align 1, !tbaa !701
  %29 = icmp eq i8 %28, 56, !dbg !2644
  br i1 %29, label %30, label %72, !dbg !2647

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2649, metadata !608), !dbg !2659
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2657, metadata !608), !dbg !2663
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2658, metadata !608), !dbg !2664
  %31 = getelementptr inbounds i8, i8* %6, i64 5
  %32 = load i8, i8* %31, align 1, !tbaa !701
  %33 = icmp eq i8 %32, 0, !dbg !2665
  br i1 %33, label %34, label %72, !dbg !2668

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !2670, !tbaa !701
  %36 = icmp eq i8 %35, 96, !dbg !2671
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.61, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.62, i64 0, i64 0), !dbg !2670
  br label %75, !dbg !2672

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2559, metadata !608), !dbg !2673
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2571, metadata !608), !dbg !2677
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2572, metadata !608), !dbg !2678
  %39 = getelementptr inbounds i8, i8* %6, i64 1
  %40 = load i8, i8* %39, align 1, !tbaa !701
  %41 = sext i8 %40 to i32
  %42 = and i32 %41, -33, !dbg !2679
  %43 = icmp eq i32 %42, 66, !dbg !2679
  br i1 %43, label %44, label %72, !dbg !2679

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2582, metadata !608), !dbg !2680
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2593, metadata !608), !dbg !2682
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2594, metadata !608), !dbg !2683
  %45 = getelementptr inbounds i8, i8* %6, i64 2
  %46 = load i8, i8* %45, align 1, !tbaa !701
  %47 = icmp eq i8 %46, 49, !dbg !2684
  br i1 %47, label %48, label %72, !dbg !2686

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2604, metadata !608), !dbg !2688
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2614, metadata !608), !dbg !2690
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2615, metadata !608), !dbg !2691
  %49 = getelementptr inbounds i8, i8* %6, i64 3
  %50 = load i8, i8* %49, align 1, !tbaa !701
  %51 = icmp eq i8 %50, 56, !dbg !2692
  br i1 %51, label %52, label %72, !dbg !2693

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2627, metadata !608), !dbg !2694
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2636, metadata !608), !dbg !2696
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2637, metadata !608), !dbg !2697
  %53 = getelementptr inbounds i8, i8* %6, i64 4
  %54 = load i8, i8* %53, align 1, !tbaa !701
  %55 = icmp eq i8 %54, 48, !dbg !2698
  br i1 %55, label %56, label %72, !dbg !2699

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2649, metadata !608), !dbg !2700
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2657, metadata !608), !dbg !2702
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2658, metadata !608), !dbg !2703
  %57 = getelementptr inbounds i8, i8* %6, i64 5
  %58 = load i8, i8* %57, align 1, !tbaa !701
  %59 = icmp eq i8 %58, 51, !dbg !2704
  br i1 %59, label %60, label %72, !dbg !2705

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2706, metadata !608), !dbg !2715
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2713, metadata !608), !dbg !2719
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2714, metadata !608), !dbg !2720
  %61 = getelementptr inbounds i8, i8* %6, i64 6
  %62 = load i8, i8* %61, align 1, !tbaa !701
  %63 = icmp eq i8 %62, 48, !dbg !2721
  br i1 %63, label %64, label %72, !dbg !2724

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2726, metadata !608), !dbg !2734
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2732, metadata !608), !dbg !2738
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2733, metadata !608), !dbg !2739
  %65 = getelementptr inbounds i8, i8* %6, i64 7
  %66 = load i8, i8* %65, align 1, !tbaa !701
  %67 = icmp eq i8 %66, 0, !dbg !2740
  br i1 %67, label %68, label %72, !dbg !2743

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !2744, !tbaa !701
  %70 = icmp eq i8 %69, 96, !dbg !2745
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.63, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.64, i64 0, i64 0), !dbg !2744
  br label %75, !dbg !2746

; <label>:72:                                     ; preds = %5, %30, %26, %22, %16, %10, %64, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !2747
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.60, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.59, i64 0, i64 0), !dbg !2748
  br label %75, !dbg !2749

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !2750
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
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2751 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2755, metadata !608), !dbg !2758
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2756, metadata !608), !dbg !2759
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2757, metadata !608), !dbg !2760
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2761, metadata !608) #9, !dbg !2774
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2766, metadata !608) #9, !dbg !2776
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !2767, metadata !608) #9, !dbg !2777
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2768, metadata !608) #9, !dbg !2778
  %4 = icmp ne %struct.quoting_options* %2, null, !dbg !2779
  %5 = select i1 %4, %struct.quoting_options* %2, %struct.quoting_options* @default_quoting_options, !dbg !2779
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2769, metadata !608) #9, !dbg !2780
  %6 = tail call i32* @__errno_location() #1, !dbg !2781
  %7 = load i32, i32* %6, align 4, !dbg !2781, !tbaa !713
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !2770, metadata !608) #9, !dbg !2782
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2783
  %9 = load i32, i32* %8, align 4, !dbg !2783, !tbaa !1662
  %10 = or i32 %9, 1, !dbg !2784
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2771, metadata !608) #9, !dbg !2785
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2786
  %12 = load i32, i32* %11, align 8, !dbg !2786, !tbaa !1600
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2787
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2788
  %15 = load i8*, i8** %14, align 8, !dbg !2788, !tbaa !1689
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2789
  %17 = load i8*, i8** %16, align 8, !dbg !2789, !tbaa !1692
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #9, !dbg !2790
  %19 = add i64 %18, 1, !dbg !2791
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2772, metadata !608) #9, !dbg !2792
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2793, metadata !608) #9, !dbg !2798
  %20 = tail call noalias i8* @xmalloc(i64 %19) #9, !dbg !2800
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !2773, metadata !608) #9, !dbg !2801
  %21 = load i32, i32* %11, align 8, !dbg !2802, !tbaa !1600
  %22 = load i8*, i8** %14, align 8, !dbg !2803, !tbaa !1689
  %23 = load i8*, i8** %16, align 8, !dbg !2804, !tbaa !1692
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #9, !dbg !2805
  store i32 %7, i32* %6, align 4, !dbg !2806, !tbaa !713
  ret i8* %20, !dbg !2807
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2762 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2761, metadata !608), !dbg !2808
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2766, metadata !608), !dbg !2809
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !2767, metadata !608), !dbg !2810
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2768, metadata !608), !dbg !2811
  %5 = icmp ne %struct.quoting_options* %3, null, !dbg !2812
  %6 = select i1 %5, %struct.quoting_options* %3, %struct.quoting_options* @default_quoting_options, !dbg !2812
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2769, metadata !608), !dbg !2813
  %7 = tail call i32* @__errno_location() #1, !dbg !2814
  %8 = load i32, i32* %7, align 4, !dbg !2814, !tbaa !713
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !2770, metadata !608), !dbg !2815
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2816
  %10 = load i32, i32* %9, align 4, !dbg !2816, !tbaa !1662
  %11 = icmp ne i64* %2, null, !dbg !2817
  %12 = xor i1 %11, true, !dbg !2817
  %13 = zext i1 %12 to i32, !dbg !2817
  %14 = or i32 %10, %13, !dbg !2818
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !2771, metadata !608), !dbg !2819
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2820
  %16 = load i32, i32* %15, align 8, !dbg !2820, !tbaa !1600
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2821
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2822
  %19 = load i8*, i8** %18, align 8, !dbg !2822, !tbaa !1689
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2823
  %21 = load i8*, i8** %20, align 8, !dbg !2823, !tbaa !1692
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !2824
  %23 = add i64 %22, 1, !dbg !2825
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2772, metadata !608), !dbg !2826
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2793, metadata !608) #9, !dbg !2827
  %24 = tail call noalias i8* @xmalloc(i64 %23) #9, !dbg !2829
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !2773, metadata !608), !dbg !2830
  %25 = load i32, i32* %15, align 8, !dbg !2831, !tbaa !1600
  %26 = load i8*, i8** %18, align 8, !dbg !2832, !tbaa !1689
  %27 = load i8*, i8** %20, align 8, !dbg !2833, !tbaa !1692
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !2834
  store i32 %8, i32* %7, align 4, !dbg !2835, !tbaa !713
  br i1 %11, label %29, label %30, !dbg !2836

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2837, !tbaa !2839
  br label %30, !dbg !2840

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !2841
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !2842 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2846, !tbaa !616
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !2844, metadata !608), !dbg !2847
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2845, metadata !608), !dbg !2848
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2845, metadata !608), !dbg !2848
  %2 = load i32, i32* @nslots, align 4, !dbg !2849, !tbaa !713
  %3 = icmp sgt i32 %2, 1, !dbg !2853
  br i1 %3, label %4, label %14, !dbg !2854

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !2856

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !2856
  %8 = load i8*, i8** %7, align 8, !dbg !2856, !tbaa !2857
  tail call void @free(i8* %8) #9, !dbg !2859
  %9 = add nuw i64 %6, 1, !dbg !2860
  %10 = load i32, i32* @nslots, align 4, !dbg !2849, !tbaa !713
  %11 = sext i32 %10 to i64, !dbg !2853
  %12 = icmp slt i64 %9, %11, !dbg !2853
  br i1 %12, label %5, label %13, !dbg !2854, !llvm.loop !2862

; <label>:13:                                     ; preds = %5
  br label %14, !dbg !2865

; <label>:14:                                     ; preds = %13, %0
  %15 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2865
  %16 = load i8*, i8** %15, align 8, !dbg !2865, !tbaa !2857
  %17 = icmp eq i8* %16, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2867
  br i1 %17, label %19, label %18, !dbg !2868

; <label>:18:                                     ; preds = %14
  tail call void @free(i8* %16) #9, !dbg !2869
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2871, !tbaa !2872
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2873, !tbaa !2857
  br label %19, !dbg !2874

; <label>:19:                                     ; preds = %14, %18
  %20 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2875
  br i1 %20, label %23, label %21, !dbg !2877

; <label>:21:                                     ; preds = %19
  %22 = bitcast %struct.slotvec* %1 to i8*, !dbg !2878
  tail call void @free(i8* %22) #9, !dbg !2880
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2881, !tbaa !616
  br label %23, !dbg !2882

; <label>:23:                                     ; preds = %19, %21
  store i32 1, i32* @nslots, align 4, !dbg !2883, !tbaa !713
  ret void, !dbg !2884
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !2885 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2889, metadata !608), !dbg !2891
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2890, metadata !608), !dbg !2892
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2893
  ret i8* %3, !dbg !2894
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !2895 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2899, metadata !608), !dbg !2913
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2900, metadata !608), !dbg !2914
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2901, metadata !608), !dbg !2915
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2902, metadata !608), !dbg !2916
  %5 = tail call i32* @__errno_location() #1, !dbg !2917
  %6 = load i32, i32* %5, align 4, !dbg !2917, !tbaa !713
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !2903, metadata !608), !dbg !2918
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2919, !tbaa !616
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !2904, metadata !608), !dbg !2920
  %8 = icmp slt i32 %0, 0, !dbg !2921
  br i1 %8, label %9, label %10, !dbg !2923

; <label>:9:                                      ; preds = %4
  tail call void @abort() #14, !dbg !2924
  unreachable, !dbg !2924

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2925, !tbaa !713
  %12 = icmp sgt i32 %11, %0, !dbg !2926
  br i1 %12, label %34, label %13, !dbg !2927

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2928
  %15 = icmp ugt i32 %0, 2147483646, !dbg !2929
  br i1 %15, label %16, label %17, !dbg !2931

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !2932
  unreachable, !dbg !2932

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !2933
  %19 = select i1 %14, i8* null, i8* %18, !dbg !2933
  %20 = add nsw i32 %0, 1, !dbg !2935
  %21 = sext i32 %20 to i64, !dbg !2936
  %22 = shl nsw i64 %21, 4, !dbg !2937
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #9, !dbg !2938
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2938
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !2904, metadata !608), !dbg !2920
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2939, !tbaa !616
  br i1 %14, label %25, label %26, !dbg !2940

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !2941, !tbaa.struct !2943
  br label %26, !dbg !2944

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2945, !tbaa !713
  %28 = sext i32 %27 to i64, !dbg !2946
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2946
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2947
  %31 = sub nsw i32 %20, %27, !dbg !2948
  %32 = sext i32 %31 to i64, !dbg !2949
  %33 = shl nsw i64 %32, 4, !dbg !2950
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !2947
  store i32 %20, i32* @nslots, align 4, !dbg !2951, !tbaa !713
  br label %34, !dbg !2952

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !2904, metadata !608), !dbg !2920
  %36 = sext i32 %0 to i64, !dbg !2953
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2954
  %38 = load i64, i64* %37, align 8, !dbg !2954, !tbaa !2872
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !2908, metadata !608), !dbg !2955
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2956
  %40 = load i8*, i8** %39, align 8, !dbg !2956, !tbaa !2857
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !2910, metadata !608), !dbg !2957
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2958
  %42 = load i32, i32* %41, align 4, !dbg !2958, !tbaa !1662
  %43 = or i32 %42, 1, !dbg !2959
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !2911, metadata !608), !dbg !2960
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2961
  %45 = load i32, i32* %44, align 8, !dbg !2961, !tbaa !1600
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2962
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2963
  %48 = load i8*, i8** %47, align 8, !dbg !2963, !tbaa !1689
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2964
  %50 = load i8*, i8** %49, align 8, !dbg !2964, !tbaa !1692
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !2965
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !2912, metadata !608), !dbg !2966
  %52 = icmp ugt i64 %38, %51, !dbg !2967
  br i1 %52, label %63, label %53, !dbg !2969

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !2970
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2908, metadata !608), !dbg !2955
  store i64 %54, i64* %37, align 8, !dbg !2972, !tbaa !2872
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2973
  br i1 %55, label %57, label %56, !dbg !2975

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #9, !dbg !2976
  br label %57, !dbg !2976

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2793, metadata !608) #9, !dbg !2977
  %58 = tail call noalias i8* @xmalloc(i64 %54) #9, !dbg !2979
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !2910, metadata !608), !dbg !2957
  store i8* %58, i8** %39, align 8, !dbg !2980, !tbaa !2857
  %59 = load i32, i32* %44, align 8, !dbg !2981, !tbaa !1600
  %60 = load i8*, i8** %47, align 8, !dbg !2982, !tbaa !1689
  %61 = load i8*, i8** %49, align 8, !dbg !2983, !tbaa !1692
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !2984
  br label %63, !dbg !2985

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !2910, metadata !608), !dbg !2957
  store i32 %6, i32* %5, align 4, !dbg !2986, !tbaa !713
  ret i8* %64, !dbg !2987
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #11

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #11

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2988 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2992, metadata !608), !dbg !2995
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2993, metadata !608), !dbg !2996
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2994, metadata !608), !dbg !2997
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2998
  ret i8* %4, !dbg !2999
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !3000 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3004, metadata !608), !dbg !3005
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2889, metadata !608) #9, !dbg !3006
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2890, metadata !608) #9, !dbg !3008
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #9, !dbg !3009
  ret i8* %2, !dbg !3010
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !3011 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3015, metadata !608), !dbg !3017
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3016, metadata !608), !dbg !3018
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2992, metadata !608) #9, !dbg !3019
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2993, metadata !608) #9, !dbg !3021
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2994, metadata !608) #9, !dbg !3022
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #9, !dbg !3023
  ret i8* %3, !dbg !3024
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !3025 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !3033, metadata !3039), !dbg !3040
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3029, metadata !608), !dbg !3042
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3030, metadata !608), !dbg !3043
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3031, metadata !608), !dbg !3044
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3045
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #9, !dbg !3045
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3032, metadata !2150), !dbg !3046
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3038, metadata !608) #9, !dbg !3047
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3048
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !3048
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3033, metadata !608) #9, !dbg !3040
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3033, metadata !3049) #9, !dbg !3040
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !3040
  %8 = icmp eq i32 %1, 10, !dbg !3050
  br i1 %8, label %9, label %10, !dbg !3052

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14, !dbg !3053, !noalias !3054
  unreachable, !dbg !3053

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3033, metadata !3049) #9, !dbg !3040
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3057
  store i32 %1, i32* %11, align 8, !dbg !3057, !alias.scope !3054
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3057
  %13 = bitcast i32* %12 to i8*, !dbg !3057
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #9, !dbg !3057
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !3058
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3032, metadata !2150), !dbg !3046
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !3059
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #9, !dbg !3060
  ret i8* %14, !dbg !3061
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !3062 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !3033, metadata !3039), !dbg !3071
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3066, metadata !608), !dbg !3073
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3067, metadata !608), !dbg !3074
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3068, metadata !608), !dbg !3075
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3069, metadata !608), !dbg !3076
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3077
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #9, !dbg !3077
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3070, metadata !2150), !dbg !3078
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3038, metadata !608) #9, !dbg !3079
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !3080
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !3080
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3033, metadata !608) #9, !dbg !3071
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3033, metadata !3049) #9, !dbg !3071
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !3071
  %9 = icmp eq i32 %1, 10, !dbg !3081
  br i1 %9, label %10, label %11, !dbg !3082

; <label>:10:                                     ; preds = %4
  tail call void @abort() #14, !dbg !3083, !noalias !3084
  unreachable, !dbg !3083

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3033, metadata !3049) #9, !dbg !3071
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3087
  store i32 %1, i32* %12, align 8, !dbg !3087, !alias.scope !3084
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !3087
  %14 = bitcast i32* %13 to i8*, !dbg !3087
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #9, !dbg !3087
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !3088
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3070, metadata !2150), !dbg !3078
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !3089
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #9, !dbg !3090
  ret i8* %15, !dbg !3091
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !3092 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !3033, metadata !3039), !dbg !3098
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3096, metadata !608), !dbg !3101
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3097, metadata !608), !dbg !3102
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3029, metadata !608) #9, !dbg !3103
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3030, metadata !608) #9, !dbg !3104
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3031, metadata !608) #9, !dbg !3105
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3106
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #9, !dbg !3106
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3032, metadata !2150) #9, !dbg !3107
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3038, metadata !608) #9, !dbg !3108
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !3109
  call void @llvm.lifetime.start(i64 52, i8* nonnull %6), !dbg !3109
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3033, metadata !608) #9, !dbg !3098
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3033, metadata !3049) #9, !dbg !3098
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !3098
  %7 = icmp eq i32 %0, 10, !dbg !3110
  br i1 %7, label %8, label %9, !dbg !3111

; <label>:8:                                      ; preds = %2
  tail call void @abort() #14, !dbg !3112, !noalias !3113
  unreachable, !dbg !3112

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3033, metadata !3049) #9, !dbg !3098
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3116
  store i32 %0, i32* %10, align 8, !dbg !3116, !alias.scope !3113
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3116
  %12 = bitcast i32* %11 to i8*, !dbg !3116
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #9, !dbg !3116
  call void @llvm.lifetime.end(i64 52, i8* nonnull %6), !dbg !3117
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3032, metadata !2150) #9, !dbg !3107
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #9, !dbg !3118
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #9, !dbg !3119
  ret i8* %13, !dbg !3120
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3121 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !3033, metadata !3039), !dbg !3128
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3125, metadata !608), !dbg !3131
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3126, metadata !608), !dbg !3132
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3127, metadata !608), !dbg !3133
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3066, metadata !608) #9, !dbg !3134
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3067, metadata !608) #9, !dbg !3135
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3068, metadata !608) #9, !dbg !3136
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3069, metadata !608) #9, !dbg !3137
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3138
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #9, !dbg !3138
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3070, metadata !2150) #9, !dbg !3139
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3038, metadata !608) #9, !dbg !3140
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3141
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !3141
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3033, metadata !608) #9, !dbg !3128
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3033, metadata !3049) #9, !dbg !3128
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !3128
  %8 = icmp eq i32 %0, 10, !dbg !3142
  br i1 %8, label %9, label %10, !dbg !3143

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14, !dbg !3144, !noalias !3145
  unreachable, !dbg !3144

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3033, metadata !3049) #9, !dbg !3128
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3148
  store i32 %0, i32* %11, align 8, !dbg !3148, !alias.scope !3145
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3148
  %13 = bitcast i32* %12 to i8*, !dbg !3148
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #9, !dbg !3148
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !3149
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3070, metadata !2150) #9, !dbg !3139
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #9, !dbg !3150
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #9, !dbg !3151
  ret i8* %14, !dbg !3152
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !3153 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3157, metadata !608), !dbg !3161
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3158, metadata !608), !dbg !3162
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !3159, metadata !608), !dbg !3163
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3164
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #9, !dbg !3164
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !3165, !tbaa.struct !3166
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3160, metadata !2150), !dbg !3167
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1620, metadata !608), !dbg !3168
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1621, metadata !608), !dbg !3170
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1622, metadata !608), !dbg !3171
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1623, metadata !608), !dbg !3172
  %6 = lshr i8 %2, 5, !dbg !3173
  %7 = zext i8 %6 to i64, !dbg !3173
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3174
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1624, metadata !608), !dbg !3175
  %9 = and i8 %2, 31, !dbg !3176
  %10 = zext i8 %9 to i32, !dbg !3177
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1626, metadata !608), !dbg !3178
  %11 = load i32, i32* %8, align 4, !dbg !3179, !tbaa !713
  %12 = lshr i32 %11, %10, !dbg !3180
  %13 = and i32 %12, 1, !dbg !3181
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1627, metadata !608), !dbg !3182
  %14 = xor i32 %13, 1, !dbg !3183
  %15 = shl i32 %14, %10, !dbg !3184
  %16 = xor i32 %15, %11, !dbg !3185
  store i32 %16, i32* %8, align 4, !dbg !3185, !tbaa !713
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3160, metadata !2150), !dbg !3167
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !3186
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #9, !dbg !3187
  ret i8* %17, !dbg !3188
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !3189 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3193, metadata !608), !dbg !3195
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !3194, metadata !608), !dbg !3196
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3157, metadata !608) #9, !dbg !3197
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3158, metadata !608) #9, !dbg !3199
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !3159, metadata !608) #9, !dbg !3200
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3201
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #9, !dbg !3201
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9, !dbg !3202, !tbaa.struct !3166
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3160, metadata !2150) #9, !dbg !3203
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1620, metadata !608) #9, !dbg !3204
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1621, metadata !608) #9, !dbg !3206
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1622, metadata !608) #9, !dbg !3207
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1623, metadata !608) #9, !dbg !3208
  %5 = lshr i8 %1, 5, !dbg !3209
  %6 = zext i8 %5 to i64, !dbg !3209
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3210
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !1624, metadata !608) #9, !dbg !3211
  %8 = and i8 %1, 31, !dbg !3212
  %9 = zext i8 %8 to i32, !dbg !3213
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1626, metadata !608) #9, !dbg !3214
  %10 = load i32, i32* %7, align 4, !dbg !3215, !tbaa !713
  %11 = lshr i32 %10, %9, !dbg !3216
  %12 = and i32 %11, 1, !dbg !3217
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !1627, metadata !608) #9, !dbg !3218
  %13 = xor i32 %12, 1, !dbg !3219
  %14 = shl i32 %13, %9, !dbg !3220
  %15 = xor i32 %14, %10, !dbg !3221
  store i32 %15, i32* %7, align 4, !dbg !3221, !tbaa !713
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3160, metadata !2150) #9, !dbg !3203
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #9, !dbg !3222
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #9, !dbg !3223
  ret i8* %16, !dbg !3224
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !3225 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3227, metadata !608), !dbg !3228
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3193, metadata !608) #9, !dbg !3229
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3194, metadata !608) #9, !dbg !3231
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3157, metadata !608) #9, !dbg !3232
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3158, metadata !608) #9, !dbg !3234
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3159, metadata !608) #9, !dbg !3235
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3236
  call void @llvm.lifetime.start(i64 56, i8* nonnull %3) #9, !dbg !3236
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9, !dbg !3237, !tbaa.struct !3166
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3160, metadata !2150) #9, !dbg !3238
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1620, metadata !608) #9, !dbg !3239
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1621, metadata !608) #9, !dbg !3241
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1622, metadata !608) #9, !dbg !3242
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1623, metadata !608) #9, !dbg !3243
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3244
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !1624, metadata !608) #9, !dbg !3245
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1626, metadata !608) #9, !dbg !3246
  %5 = load i32, i32* %4, align 4, !dbg !3247, !tbaa !713
  %6 = or i32 %5, 67108864, !dbg !3248
  store i32 %6, i32* %4, align 4, !dbg !3248, !tbaa !713
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3160, metadata !2150) #9, !dbg !3238
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #9, !dbg !3249
  call void @llvm.lifetime.end(i64 56, i8* nonnull %3) #9, !dbg !3250
  ret i8* %7, !dbg !3251
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !3252 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3254, metadata !608), !dbg !3256
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3255, metadata !608), !dbg !3257
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3157, metadata !608) #9, !dbg !3258
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3158, metadata !608) #9, !dbg !3260
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3159, metadata !608) #9, !dbg !3261
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3262
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #9, !dbg !3262
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9, !dbg !3263, !tbaa.struct !3166
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3160, metadata !2150) #9, !dbg !3264
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1620, metadata !608) #9, !dbg !3265
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1621, metadata !608) #9, !dbg !3267
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1622, metadata !608) #9, !dbg !3268
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1623, metadata !608) #9, !dbg !3269
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3270
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !1624, metadata !608) #9, !dbg !3271
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1626, metadata !608) #9, !dbg !3272
  %6 = load i32, i32* %5, align 4, !dbg !3273, !tbaa !713
  %7 = or i32 %6, 67108864, !dbg !3274
  store i32 %7, i32* %5, align 4, !dbg !3274, !tbaa !713
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3160, metadata !2150) #9, !dbg !3264
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #9, !dbg !3275
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #9, !dbg !3276
  ret i8* %8, !dbg !3277
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !3278 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !3033, metadata !3039), !dbg !3284
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3280, metadata !608), !dbg !3286
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3281, metadata !608), !dbg !3287
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3282, metadata !608), !dbg !3288
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3289
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #9, !dbg !3289
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3038, metadata !608) #9, !dbg !3290
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3291
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !3291
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3033, metadata !608) #9, !dbg !3284
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3033, metadata !3049) #9, !dbg !3284
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !3284
  %9 = icmp eq i32 %1, 10, !dbg !3292
  br i1 %9, label %10, label %11, !dbg !3293

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !3294, !noalias !3295
  unreachable, !dbg !3294

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3033, metadata !3049) #9, !dbg !3284
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !3298
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !3298
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !3299
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3300
  store i32 %1, i32* %13, align 8, !dbg !3300
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3300
  %15 = bitcast i32* %14 to i8*, !dbg !3300
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !3300
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3283, metadata !2150), !dbg !3301
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1620, metadata !608), !dbg !3302
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1621, metadata !608), !dbg !3304
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1622, metadata !608), !dbg !3305
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1623, metadata !608), !dbg !3306
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !3307
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !1624, metadata !608), !dbg !3308
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1626, metadata !608), !dbg !3309
  %17 = load i32, i32* %16, align 4, !dbg !3310, !tbaa !713
  %18 = or i32 %17, 67108864, !dbg !3311
  store i32 %18, i32* %16, align 4, !dbg !3311, !tbaa !713
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3283, metadata !2150), !dbg !3301
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !3312
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #9, !dbg !3313
  ret i8* %19, !dbg !3314
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !3315 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3319, metadata !608), !dbg !3323
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3320, metadata !608), !dbg !3324
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3321, metadata !608), !dbg !3325
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3322, metadata !608), !dbg !3326
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3327, metadata !608) #9, !dbg !3337
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3332, metadata !608) #9, !dbg !3339
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3333, metadata !608) #9, !dbg !3340
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3334, metadata !608) #9, !dbg !3341
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3335, metadata !608) #9, !dbg !3342
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3343
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #9, !dbg !3343
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9, !dbg !3344, !tbaa.struct !3166
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3336, metadata !2150) #9, !dbg !3345
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1670, metadata !608) #9, !dbg !3346
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1671, metadata !608) #9, !dbg !3348
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1672, metadata !608) #9, !dbg !3349
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1670, metadata !608) #9, !dbg !3346
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1670, metadata !608) #9, !dbg !3346
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3350
  store i32 10, i32* %7, align 8, !dbg !3351, !tbaa !1600
  %8 = icmp ne i8* %1, null, !dbg !3352
  %9 = icmp ne i8* %2, null, !dbg !3353
  %10 = and i1 %8, %9, !dbg !3354
  br i1 %10, label %12, label %11, !dbg !3354

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14, !dbg !3355
  unreachable, !dbg !3355

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3356
  store i8* %1, i8** %13, align 8, !dbg !3357, !tbaa !1689
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3358
  store i8* %2, i8** %14, align 8, !dbg !3359, !tbaa !1692
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3336, metadata !2150) #9, !dbg !3345
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #9, !dbg !3360
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #9, !dbg !3361
  ret i8* %15, !dbg !3362
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !3328 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3327, metadata !608), !dbg !3363
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3332, metadata !608), !dbg !3364
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3333, metadata !608), !dbg !3365
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3334, metadata !608), !dbg !3366
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !3335, metadata !608), !dbg !3367
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3368
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #9, !dbg !3368
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !3369, !tbaa.struct !3166
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3336, metadata !2150), !dbg !3370
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1670, metadata !608) #9, !dbg !3371
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1671, metadata !608) #9, !dbg !3373
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1672, metadata !608) #9, !dbg !3374
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1670, metadata !608) #9, !dbg !3371
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1670, metadata !608) #9, !dbg !3371
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3375
  store i32 10, i32* %8, align 8, !dbg !3376, !tbaa !1600
  %9 = icmp ne i8* %1, null, !dbg !3377
  %10 = icmp ne i8* %2, null, !dbg !3378
  %11 = and i1 %9, %10, !dbg !3379
  br i1 %11, label %13, label %12, !dbg !3379

; <label>:12:                                     ; preds = %5
  tail call void @abort() #14, !dbg !3380
  unreachable, !dbg !3380

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3381
  store i8* %1, i8** %14, align 8, !dbg !3382, !tbaa !1689
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3383
  store i8* %2, i8** %15, align 8, !dbg !3384, !tbaa !1692
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3336, metadata !2150), !dbg !3370
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3385
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #9, !dbg !3386
  ret i8* %16, !dbg !3387
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !3388 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3392, metadata !608), !dbg !3395
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3393, metadata !608), !dbg !3396
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3394, metadata !608), !dbg !3397
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3319, metadata !608) #9, !dbg !3398
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3320, metadata !608) #9, !dbg !3400
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3321, metadata !608) #9, !dbg !3401
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3322, metadata !608) #9, !dbg !3402
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3327, metadata !608) #9, !dbg !3403
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3332, metadata !608) #9, !dbg !3405
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3333, metadata !608) #9, !dbg !3406
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3334, metadata !608) #9, !dbg !3407
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3335, metadata !608) #9, !dbg !3408
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3409
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #9, !dbg !3409
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9, !dbg !3410, !tbaa.struct !3166
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3336, metadata !2150) #9, !dbg !3411
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1670, metadata !608) #9, !dbg !3412
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1671, metadata !608) #9, !dbg !3414
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1672, metadata !608) #9, !dbg !3415
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1670, metadata !608) #9, !dbg !3412
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1670, metadata !608) #9, !dbg !3412
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3416
  store i32 10, i32* %6, align 8, !dbg !3417, !tbaa !1600
  %7 = icmp ne i8* %0, null, !dbg !3418
  %8 = icmp ne i8* %1, null, !dbg !3419
  %9 = and i1 %7, %8, !dbg !3420
  br i1 %9, label %11, label %10, !dbg !3420

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !3421
  unreachable, !dbg !3421

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3422
  store i8* %0, i8** %12, align 8, !dbg !3423, !tbaa !1689
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3424
  store i8* %1, i8** %13, align 8, !dbg !3425, !tbaa !1692
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3336, metadata !2150) #9, !dbg !3411
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #9, !dbg !3426
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #9, !dbg !3427
  ret i8* %14, !dbg !3428
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !3429 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3433, metadata !608), !dbg !3437
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3434, metadata !608), !dbg !3438
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3435, metadata !608), !dbg !3439
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3436, metadata !608), !dbg !3440
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3327, metadata !608) #9, !dbg !3441
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3332, metadata !608) #9, !dbg !3443
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3333, metadata !608) #9, !dbg !3444
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3334, metadata !608) #9, !dbg !3445
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3335, metadata !608) #9, !dbg !3446
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3447
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #9, !dbg !3447
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9, !dbg !3448, !tbaa.struct !3166
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3336, metadata !2150) #9, !dbg !3449
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1670, metadata !608) #9, !dbg !3450
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1671, metadata !608) #9, !dbg !3452
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1672, metadata !608) #9, !dbg !3453
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1670, metadata !608) #9, !dbg !3450
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1670, metadata !608) #9, !dbg !3450
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3454
  store i32 10, i32* %7, align 8, !dbg !3455, !tbaa !1600
  %8 = icmp ne i8* %0, null, !dbg !3456
  %9 = icmp ne i8* %1, null, !dbg !3457
  %10 = and i1 %8, %9, !dbg !3458
  br i1 %10, label %12, label %11, !dbg !3458

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14, !dbg !3459
  unreachable, !dbg !3459

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3460
  store i8* %0, i8** %13, align 8, !dbg !3461, !tbaa !1689
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3462
  store i8* %1, i8** %14, align 8, !dbg !3463, !tbaa !1692
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3336, metadata !2150) #9, !dbg !3449
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #9, !dbg !3464
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #9, !dbg !3465
  ret i8* %15, !dbg !3466
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3467 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3471, metadata !608), !dbg !3474
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3472, metadata !608), !dbg !3475
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3473, metadata !608), !dbg !3476
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3477
  ret i8* %4, !dbg !3478
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !3479 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3483, metadata !608), !dbg !3485
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3484, metadata !608), !dbg !3486
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3471, metadata !608) #9, !dbg !3487
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3472, metadata !608) #9, !dbg !3489
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3473, metadata !608) #9, !dbg !3490
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #9, !dbg !3491
  ret i8* %3, !dbg !3492
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !3493 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3497, metadata !608), !dbg !3499
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3498, metadata !608), !dbg !3500
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3471, metadata !608) #9, !dbg !3501
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3472, metadata !608) #9, !dbg !3503
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3473, metadata !608) #9, !dbg !3504
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #9, !dbg !3505
  ret i8* %3, !dbg !3506
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !3507 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3511, metadata !608), !dbg !3512
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3497, metadata !608) #9, !dbg !3513
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3498, metadata !608) #9, !dbg !3515
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3471, metadata !608) #9, !dbg !3516
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3472, metadata !608) #9, !dbg !3518
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3473, metadata !608) #9, !dbg !3519
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #9, !dbg !3520
  ret i8* %2, !dbg !3521
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !3522 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3567, metadata !608), !dbg !3573
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3568, metadata !608), !dbg !3574
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3569, metadata !608), !dbg !3575
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3570, metadata !608), !dbg !3576
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3571, metadata !608), !dbg !3577
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !3572, metadata !608), !dbg !3578
  %7 = icmp eq i8* %1, null, !dbg !3579
  br i1 %7, label %10, label %8, !dbg !3581

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.69, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #9, !dbg !3582
  br label %12, !dbg !3582

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.70, i64 0, i64 0), i8* %2, i8* %3) #9, !dbg !3583
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.71, i64 0, i64 0), i32 5) #9, !dbg !3584
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #9, !dbg !3585
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.72, i64 0, i64 0), i32 5) #9, !dbg !3587
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #9, !dbg !3588
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
  ], !dbg !3589

; <label>:17:                                     ; preds = %12
  tail call void @abort() #14, !dbg !3590
  unreachable, !dbg !3590

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.73, i64 0, i64 0), i32 5) #9, !dbg !3592
  %20 = load i8*, i8** %4, align 8, !dbg !3592, !tbaa !616
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #9, !dbg !3593
  br label %146, !dbg !3595

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.74, i64 0, i64 0), i32 5) #9, !dbg !3596
  %24 = load i8*, i8** %4, align 8, !dbg !3596, !tbaa !616
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3596
  %26 = load i8*, i8** %25, align 8, !dbg !3596, !tbaa !616
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #9, !dbg !3597
  br label %146, !dbg !3598

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.75, i64 0, i64 0), i32 5) #9, !dbg !3599
  %30 = load i8*, i8** %4, align 8, !dbg !3599, !tbaa !616
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3599
  %32 = load i8*, i8** %31, align 8, !dbg !3599, !tbaa !616
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3599
  %34 = load i8*, i8** %33, align 8, !dbg !3599, !tbaa !616
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #9, !dbg !3600
  br label %146, !dbg !3601

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.76, i64 0, i64 0), i32 5) #9, !dbg !3602
  %38 = load i8*, i8** %4, align 8, !dbg !3602, !tbaa !616
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3602
  %40 = load i8*, i8** %39, align 8, !dbg !3602, !tbaa !616
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3602
  %42 = load i8*, i8** %41, align 8, !dbg !3602, !tbaa !616
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3602
  %44 = load i8*, i8** %43, align 8, !dbg !3602, !tbaa !616
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #9, !dbg !3603
  br label %146, !dbg !3604

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.77, i64 0, i64 0), i32 5) #9, !dbg !3605
  %48 = load i8*, i8** %4, align 8, !dbg !3605, !tbaa !616
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3605
  %50 = load i8*, i8** %49, align 8, !dbg !3605, !tbaa !616
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3605
  %52 = load i8*, i8** %51, align 8, !dbg !3605, !tbaa !616
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3605
  %54 = load i8*, i8** %53, align 8, !dbg !3605, !tbaa !616
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3605
  %56 = load i8*, i8** %55, align 8, !dbg !3605, !tbaa !616
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #9, !dbg !3606
  br label %146, !dbg !3607

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.78, i64 0, i64 0), i32 5) #9, !dbg !3608
  %60 = load i8*, i8** %4, align 8, !dbg !3608, !tbaa !616
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3608
  %62 = load i8*, i8** %61, align 8, !dbg !3608, !tbaa !616
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3608
  %64 = load i8*, i8** %63, align 8, !dbg !3608, !tbaa !616
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3608
  %66 = load i8*, i8** %65, align 8, !dbg !3608, !tbaa !616
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3608
  %68 = load i8*, i8** %67, align 8, !dbg !3608, !tbaa !616
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3608
  %70 = load i8*, i8** %69, align 8, !dbg !3608, !tbaa !616
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #9, !dbg !3609
  br label %146, !dbg !3610

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.79, i64 0, i64 0), i32 5) #9, !dbg !3611
  %74 = load i8*, i8** %4, align 8, !dbg !3611, !tbaa !616
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3611
  %76 = load i8*, i8** %75, align 8, !dbg !3611, !tbaa !616
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3611
  %78 = load i8*, i8** %77, align 8, !dbg !3611, !tbaa !616
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3611
  %80 = load i8*, i8** %79, align 8, !dbg !3611, !tbaa !616
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3611
  %82 = load i8*, i8** %81, align 8, !dbg !3611, !tbaa !616
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3611
  %84 = load i8*, i8** %83, align 8, !dbg !3611, !tbaa !616
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3611
  %86 = load i8*, i8** %85, align 8, !dbg !3611, !tbaa !616
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #9, !dbg !3612
  br label %146, !dbg !3613

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.80, i64 0, i64 0), i32 5) #9, !dbg !3614
  %90 = load i8*, i8** %4, align 8, !dbg !3614, !tbaa !616
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3614
  %92 = load i8*, i8** %91, align 8, !dbg !3614, !tbaa !616
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3614
  %94 = load i8*, i8** %93, align 8, !dbg !3614, !tbaa !616
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3614
  %96 = load i8*, i8** %95, align 8, !dbg !3614, !tbaa !616
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3614
  %98 = load i8*, i8** %97, align 8, !dbg !3614, !tbaa !616
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3614
  %100 = load i8*, i8** %99, align 8, !dbg !3614, !tbaa !616
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3614
  %102 = load i8*, i8** %101, align 8, !dbg !3614, !tbaa !616
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3614
  %104 = load i8*, i8** %103, align 8, !dbg !3614, !tbaa !616
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #9, !dbg !3615
  br label %146, !dbg !3616

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.81, i64 0, i64 0), i32 5) #9, !dbg !3617
  %108 = load i8*, i8** %4, align 8, !dbg !3617, !tbaa !616
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3617
  %110 = load i8*, i8** %109, align 8, !dbg !3617, !tbaa !616
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3617
  %112 = load i8*, i8** %111, align 8, !dbg !3617, !tbaa !616
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3617
  %114 = load i8*, i8** %113, align 8, !dbg !3617, !tbaa !616
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3617
  %116 = load i8*, i8** %115, align 8, !dbg !3617, !tbaa !616
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3617
  %118 = load i8*, i8** %117, align 8, !dbg !3617, !tbaa !616
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3617
  %120 = load i8*, i8** %119, align 8, !dbg !3617, !tbaa !616
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3617
  %122 = load i8*, i8** %121, align 8, !dbg !3617, !tbaa !616
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3617
  %124 = load i8*, i8** %123, align 8, !dbg !3617, !tbaa !616
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #9, !dbg !3618
  br label %146, !dbg !3619

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.82, i64 0, i64 0), i32 5) #9, !dbg !3620
  %128 = load i8*, i8** %4, align 8, !dbg !3620, !tbaa !616
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3620
  %130 = load i8*, i8** %129, align 8, !dbg !3620, !tbaa !616
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3620
  %132 = load i8*, i8** %131, align 8, !dbg !3620, !tbaa !616
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3620
  %134 = load i8*, i8** %133, align 8, !dbg !3620, !tbaa !616
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3620
  %136 = load i8*, i8** %135, align 8, !dbg !3620, !tbaa !616
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3620
  %138 = load i8*, i8** %137, align 8, !dbg !3620, !tbaa !616
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3620
  %140 = load i8*, i8** %139, align 8, !dbg !3620, !tbaa !616
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3620
  %142 = load i8*, i8** %141, align 8, !dbg !3620, !tbaa !616
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3620
  %144 = load i8*, i8** %143, align 8, !dbg !3620, !tbaa !616
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #9, !dbg !3621
  br label %146, !dbg !3622

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !3623
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !3624 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3628, metadata !608), !dbg !3634
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3629, metadata !608), !dbg !3635
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3630, metadata !608), !dbg !3636
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3631, metadata !608), !dbg !3637
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3632, metadata !608), !dbg !3638
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3633, metadata !608), !dbg !3639
  br label %6, !dbg !3640

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3633, metadata !608), !dbg !3639
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3642
  %9 = load i8*, i8** %8, align 8, !dbg !3642, !tbaa !616
  %10 = icmp eq i8* %9, null, !dbg !3645
  %11 = add i64 %7, 1, !dbg !3647
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !3633, metadata !608), !dbg !3639
  br i1 %10, label %12, label %6, !dbg !3645, !llvm.loop !3649

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3652
  ret void, !dbg !3653
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !3654 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3665, metadata !608), !dbg !3673
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3666, metadata !608), !dbg !3674
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3667, metadata !608), !dbg !3675
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3668, metadata !608), !dbg !3676
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !3669, metadata !608), !dbg !3677
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3678
  call void @llvm.lifetime.start(i64 80, i8* nonnull %7) #9, !dbg !3678
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3671, metadata !608), !dbg !3679
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3670, metadata !608), !dbg !3680
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3670, metadata !608), !dbg !3680
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %11 = load i32, i32* %8, align 8, !dbg !3681
  %12 = icmp ult i32 %11, 41, !dbg !3681
  br i1 %12, label %13, label %18, !dbg !3681

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !3685
  %15 = sext i32 %11 to i64, !dbg !3685
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3685
  %17 = add i32 %11, 8, !dbg !3685
  store i32 %17, i32* %8, align 8, !dbg !3685
  br label %21, !dbg !3685

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !3687
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3687
  store i8* %20, i8** %10, align 8, !dbg !3687
  br label %21, !dbg !3687

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ], !dbg !3681
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3689
  %25 = load i8*, i8** %24, align 8, !dbg !3689
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3691
  store i8* %25, i8** %26, align 16, !dbg !3692, !tbaa !616
  %27 = icmp eq i8* %25, null, !dbg !3693
  br i1 %27, label %30, label %28, !dbg !3694

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3670, metadata !608), !dbg !3680
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3670, metadata !608), !dbg !3680
  %29 = icmp ult i32 %22, 41, !dbg !3681
  br i1 %29, label %35, label %32, !dbg !3681

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3696
  call void @llvm.lifetime.end(i64 80, i8* nonnull %7) #9, !dbg !3697
  ret void, !dbg !3697

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !3687
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3687
  store i8* %34, i8** %10, align 8, !dbg !3687
  br label %40, !dbg !3687

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !3685
  %37 = sext i32 %22 to i64, !dbg !3685
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3685
  %39 = add i32 %22, 8, !dbg !3685
  store i32 %39, i32* %8, align 8, !dbg !3685
  br label %40, !dbg !3685

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ], !dbg !3681
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3689
  %44 = load i8*, i8** %43, align 8, !dbg !3689
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3691
  store i8* %44, i8** %45, align 8, !dbg !3692, !tbaa !616
  %46 = icmp eq i8* %44, null, !dbg !3693
  br i1 %46, label %30, label %47, !dbg !3694

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3670, metadata !608), !dbg !3680
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3670, metadata !608), !dbg !3680
  %48 = icmp ult i32 %41, 41, !dbg !3681
  br i1 %48, label %52, label %49, !dbg !3681

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !3687
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3687
  store i8* %51, i8** %10, align 8, !dbg !3687
  br label %57, !dbg !3687

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !3685
  %54 = sext i32 %41 to i64, !dbg !3685
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3685
  %56 = add i32 %41, 8, !dbg !3685
  store i32 %56, i32* %8, align 8, !dbg !3685
  br label %57, !dbg !3685

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ], !dbg !3681
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3689
  %61 = load i8*, i8** %60, align 8, !dbg !3689
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3691
  store i8* %61, i8** %62, align 16, !dbg !3692, !tbaa !616
  %63 = icmp eq i8* %61, null, !dbg !3693
  br i1 %63, label %30, label %64, !dbg !3694

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3670, metadata !608), !dbg !3680
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3670, metadata !608), !dbg !3680
  %65 = icmp ult i32 %58, 41, !dbg !3681
  br i1 %65, label %69, label %66, !dbg !3681

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !3687
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3687
  store i8* %68, i8** %10, align 8, !dbg !3687
  br label %74, !dbg !3687

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !3685
  %71 = sext i32 %58 to i64, !dbg !3685
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3685
  %73 = add i32 %58, 8, !dbg !3685
  store i32 %73, i32* %8, align 8, !dbg !3685
  br label %74, !dbg !3685

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ], !dbg !3681
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3689
  %78 = load i8*, i8** %77, align 8, !dbg !3689
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3691
  store i8* %78, i8** %79, align 8, !dbg !3692, !tbaa !616
  %80 = icmp eq i8* %78, null, !dbg !3693
  br i1 %80, label %30, label %81, !dbg !3694

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3670, metadata !608), !dbg !3680
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3670, metadata !608), !dbg !3680
  %82 = icmp ult i32 %75, 41, !dbg !3681
  br i1 %82, label %86, label %83, !dbg !3681

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !3687
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3687
  store i8* %85, i8** %10, align 8, !dbg !3687
  br label %91, !dbg !3687

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !3685
  %88 = sext i32 %75 to i64, !dbg !3685
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3685
  %90 = add i32 %75, 8, !dbg !3685
  store i32 %90, i32* %8, align 8, !dbg !3685
  br label %91, !dbg !3685

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ], !dbg !3681
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3689
  %95 = load i8*, i8** %94, align 8, !dbg !3689
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3691
  store i8* %95, i8** %96, align 16, !dbg !3692, !tbaa !616
  %97 = icmp eq i8* %95, null, !dbg !3693
  br i1 %97, label %30, label %98, !dbg !3694

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3670, metadata !608), !dbg !3680
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3670, metadata !608), !dbg !3680
  %99 = icmp ult i32 %92, 41, !dbg !3681
  br i1 %99, label %103, label %100, !dbg !3681

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !3687
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3687
  store i8* %102, i8** %10, align 8, !dbg !3687
  br label %108, !dbg !3687

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !3685
  %105 = sext i32 %92 to i64, !dbg !3685
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3685
  %107 = add i32 %92, 8, !dbg !3685
  store i32 %107, i32* %8, align 8, !dbg !3685
  br label %108, !dbg !3685

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3689
  %111 = load i8*, i8** %110, align 8, !dbg !3689
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3691
  store i8* %111, i8** %112, align 8, !dbg !3692, !tbaa !616
  %113 = icmp eq i8* %111, null, !dbg !3693
  br i1 %113, label %30, label %114, !dbg !3694

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3670, metadata !608), !dbg !3680
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3670, metadata !608), !dbg !3680
  %115 = load i8*, i8** %10, align 8, !dbg !3687
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3687
  store i8* %116, i8** %10, align 8, !dbg !3687
  %117 = bitcast i8* %115 to i8**, !dbg !3689
  %118 = load i8*, i8** %117, align 8, !dbg !3689
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3691
  store i8* %118, i8** %119, align 16, !dbg !3692, !tbaa !616
  %120 = icmp eq i8* %118, null, !dbg !3693
  br i1 %120, label %30, label %121, !dbg !3694

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3670, metadata !608), !dbg !3680
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3670, metadata !608), !dbg !3680
  %122 = load i8*, i8** %10, align 8, !dbg !3687
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3687
  store i8* %123, i8** %10, align 8, !dbg !3687
  %124 = bitcast i8* %122 to i8**, !dbg !3689
  %125 = load i8*, i8** %124, align 8, !dbg !3689
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3691
  store i8* %125, i8** %126, align 8, !dbg !3692, !tbaa !616
  %127 = icmp eq i8* %125, null, !dbg !3693
  br i1 %127, label %30, label %128, !dbg !3694

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3670, metadata !608), !dbg !3680
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3670, metadata !608), !dbg !3680
  %129 = load i8*, i8** %10, align 8, !dbg !3687
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3687
  store i8* %130, i8** %10, align 8, !dbg !3687
  %131 = bitcast i8* %129 to i8**, !dbg !3689
  %132 = load i8*, i8** %131, align 8, !dbg !3689
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3691
  store i8* %132, i8** %133, align 16, !dbg !3692, !tbaa !616
  %134 = icmp eq i8* %132, null, !dbg !3693
  br i1 %134, label %30, label %135, !dbg !3694

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3670, metadata !608), !dbg !3680
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3670, metadata !608), !dbg !3680
  %136 = load i8*, i8** %10, align 8, !dbg !3687
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3687
  store i8* %137, i8** %10, align 8, !dbg !3687
  %138 = bitcast i8* %136 to i8**, !dbg !3689
  %139 = load i8*, i8** %138, align 8, !dbg !3689
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3691
  store i8* %139, i8** %140, align 8, !dbg !3692, !tbaa !616
  %141 = icmp eq i8* %139, null, !dbg !3693
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3670, metadata !608), !dbg !3680
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3670, metadata !608), !dbg !3680
  %142 = select i1 %141, i64 9, i64 10, !dbg !3694
  br label %30, !dbg !3694
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !3698 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3702, metadata !608), !dbg !3712
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3703, metadata !608), !dbg !3713
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3704, metadata !608), !dbg !3714
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3705, metadata !608), !dbg !3715
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3716
  call void @llvm.lifetime.start(i64 24, i8* nonnull %6) #9, !dbg !3716
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3706, metadata !608), !dbg !3717
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3718
  call void @llvm.va_start(i8* nonnull %6), !dbg !3718
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3719
  call void @llvm.va_end(i8* nonnull %6), !dbg !3720
  call void @llvm.lifetime.end(i64 24, i8* nonnull %6) #9, !dbg !3721
  ret void, !dbg !3721
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #9

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #9

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !3722 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.85, i64 0, i64 0), i32 5) #9, !dbg !3723
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.86, i64 0, i64 0)) #9, !dbg !3724
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.87, i64 0, i64 0), i32 5) #9, !dbg !3726
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.88, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.89, i64 0, i64 0)) #9, !dbg !3727
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19.90, i64 0, i64 0), i32 5) #9, !dbg !3728
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3728, !tbaa !616
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #9, !dbg !3729
  ret void, !dbg !3730
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #12 !dbg !3731 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3733, metadata !608), !dbg !3735
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3734, metadata !608), !dbg !3736
  %3 = udiv i64 9223372036854775807, %1, !dbg !3737
  %4 = icmp ult i64 %3, %0, !dbg !3737
  br i1 %4, label %5, label %6, !dbg !3739

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !3740
  unreachable, !dbg !3740

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3741
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3742, metadata !608) #9, !dbg !3749
  %8 = tail call noalias i8* @malloc(i64 %7) #9, !dbg !3751
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3748, metadata !608) #9, !dbg !3752
  %9 = icmp eq i8* %8, null, !dbg !3753
  %10 = icmp ne i64 %7, 0, !dbg !3755
  %11 = and i1 %10, %9, !dbg !3757
  br i1 %11, label %12, label %13, !dbg !3757

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #14, !dbg !3758
  unreachable, !dbg !3758

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !3759
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !3743 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3742, metadata !608), !dbg !3760
  %2 = tail call noalias i8* @malloc(i64 %0) #9, !dbg !3761
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3748, metadata !608), !dbg !3762
  %3 = icmp eq i8* %2, null, !dbg !3763
  %4 = icmp ne i64 %0, 0, !dbg !3764
  %5 = and i1 %4, %3, !dbg !3765
  br i1 %5, label %6, label %7, !dbg !3765

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3766
  unreachable, !dbg !3766

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3767
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #12 !dbg !3768 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3772, metadata !608), !dbg !3775
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3773, metadata !608), !dbg !3776
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3774, metadata !608), !dbg !3777
  %4 = udiv i64 9223372036854775807, %2, !dbg !3778
  %5 = icmp ult i64 %4, %1, !dbg !3778
  br i1 %5, label %6, label %7, !dbg !3780

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #14, !dbg !3781
  unreachable, !dbg !3781

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3782
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3783, metadata !608) #9, !dbg !3789
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !3788, metadata !608) #9, !dbg !3791
  %9 = icmp eq i64 %8, 0, !dbg !3792
  %10 = icmp ne i8* %0, null, !dbg !3794
  %11 = and i1 %10, %9, !dbg !3796
  br i1 %11, label %12, label %13, !dbg !3796

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #9, !dbg !3797
  br label %19, !dbg !3799

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #9, !dbg !3800
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !3783, metadata !608) #9, !dbg !3789
  %15 = icmp eq i8* %14, null, !dbg !3801
  %16 = icmp ne i64 %8, 0, !dbg !3803
  %17 = and i1 %16, %15, !dbg !3805
  br i1 %17, label %18, label %19, !dbg !3805

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !3806
  unreachable, !dbg !3806

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !3807
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !3784 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3783, metadata !608), !dbg !3808
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3788, metadata !608), !dbg !3809
  %3 = icmp eq i64 %1, 0, !dbg !3810
  %4 = icmp ne i8* %0, null, !dbg !3811
  %5 = and i1 %4, %3, !dbg !3812
  br i1 %5, label %6, label %7, !dbg !3812

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #9, !dbg !3813
  br label %13, !dbg !3814

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #9, !dbg !3815
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3783, metadata !608), !dbg !3808
  %9 = icmp eq i8* %8, null, !dbg !3816
  %10 = icmp ne i64 %1, 0, !dbg !3817
  %11 = and i1 %10, %9, !dbg !3818
  br i1 %11, label %12, label %13, !dbg !3818

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #14, !dbg !3819
  unreachable, !dbg !3819

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !3820
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #12 !dbg !568 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !573, metadata !608), !dbg !3821
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !574, metadata !608), !dbg !3822
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !575, metadata !608), !dbg !3823
  %4 = load i64, i64* %1, align 8, !dbg !3824, !tbaa !2839
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !576, metadata !608), !dbg !3825
  %5 = icmp eq i8* %0, null, !dbg !3826
  br i1 %5, label %6, label %13, !dbg !3828

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3829
  br i1 %7, label %8, label %17, !dbg !3832

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3833
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !576, metadata !608), !dbg !3825
  %10 = icmp ugt i64 %2, 128, !dbg !3835
  %11 = zext i1 %10 to i64, !dbg !3835
  %12 = add nuw nsw i64 %9, %11, !dbg !3836
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !576, metadata !608), !dbg !3825
  br label %17, !dbg !3837

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !3838
  %15 = icmp ugt i64 %14, %4, !dbg !3841
  br i1 %15, label %20, label %16, !dbg !3842

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !3843
  unreachable, !dbg !3843

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !576, metadata !608), !dbg !3825
  store i64 %18, i64* %1, align 8, !dbg !3844, !tbaa !2839
  %19 = mul i64 %18, %2, !dbg !3845
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3783, metadata !608) #9, !dbg !3846
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3788, metadata !608) #9, !dbg !3848
  br label %27, !dbg !3849

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !3850
  %22 = add i64 %4, 1, !dbg !3851
  %23 = add i64 %22, %21, !dbg !3852
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !576, metadata !608), !dbg !3825
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !576, metadata !608), !dbg !3825
  store i64 %23, i64* %1, align 8, !dbg !3844, !tbaa !2839
  %24 = mul i64 %23, %2, !dbg !3845
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3783, metadata !608) #9, !dbg !3846
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3788, metadata !608) #9, !dbg !3848
  %25 = icmp eq i64 %24, 0, !dbg !3853
  br i1 %25, label %26, label %27, !dbg !3849

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #9, !dbg !3854
  br label %34, !dbg !3855

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #9, !dbg !3856
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3783, metadata !608) #9, !dbg !3846
  %30 = icmp eq i8* %29, null, !dbg !3857
  %31 = icmp ne i64 %28, 0, !dbg !3858
  %32 = and i1 %31, %30, !dbg !3859
  br i1 %32, label %33, label %34, !dbg !3859

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #14, !dbg !3860
  unreachable, !dbg !3860

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !3861
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #12 !dbg !3862 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3864, metadata !608), !dbg !3865
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3742, metadata !608) #9, !dbg !3866
  %2 = tail call noalias i8* @malloc(i64 %0) #9, !dbg !3868
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3748, metadata !608) #9, !dbg !3869
  %3 = icmp eq i8* %2, null, !dbg !3870
  %4 = icmp ne i64 %0, 0, !dbg !3871
  %5 = and i1 %4, %3, !dbg !3872
  br i1 %5, label %6, label %7, !dbg !3872

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3873
  unreachable, !dbg !3873

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3874
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !3875 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3879, metadata !608), !dbg !3881
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !3880, metadata !608), !dbg !3882
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !573, metadata !608) #9, !dbg !3883
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !574, metadata !608) #9, !dbg !3885
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !575, metadata !608) #9, !dbg !3886
  %3 = load i64, i64* %1, align 8, !dbg !3887, !tbaa !2839
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !576, metadata !608) #9, !dbg !3888
  %4 = icmp eq i8* %0, null, !dbg !3889
  br i1 %4, label %5, label %8, !dbg !3890

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3891
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !576, metadata !608) #9, !dbg !3888
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !576, metadata !608) #9, !dbg !3888
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3892
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !576, metadata !608) #9, !dbg !3888
  store i64 %7, i64* %1, align 8, !dbg !3893, !tbaa !2839
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3783, metadata !608) #9, !dbg !3894
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3788, metadata !608) #9, !dbg !3896
  br label %17, !dbg !3897

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !3898
  br i1 %9, label %11, label %10, !dbg !3899

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #14, !dbg !3900
  unreachable, !dbg !3900

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !3901
  %13 = add i64 %3, 1, !dbg !3902
  %14 = add i64 %13, %12, !dbg !3903
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !576, metadata !608) #9, !dbg !3888
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !576, metadata !608) #9, !dbg !3888
  store i64 %14, i64* %1, align 8, !dbg !3893, !tbaa !2839
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3783, metadata !608) #9, !dbg !3894
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3788, metadata !608) #9, !dbg !3896
  %15 = icmp eq i64 %14, 0, !dbg !3904
  br i1 %15, label %16, label %17, !dbg !3897

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #9, !dbg !3905
  br label %24, !dbg !3906

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #9, !dbg !3907
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !3783, metadata !608) #9, !dbg !3894
  %20 = icmp eq i8* %19, null, !dbg !3908
  %21 = icmp ne i64 %18, 0, !dbg !3909
  %22 = and i1 %21, %20, !dbg !3910
  br i1 %22, label %23, label %24, !dbg !3910

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #14, !dbg !3911
  unreachable, !dbg !3911

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !3912
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !3913 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3915, metadata !608), !dbg !3916
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3742, metadata !608) #9, !dbg !3917
  %2 = tail call noalias i8* @malloc(i64 %0) #9, !dbg !3919
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3748, metadata !608) #9, !dbg !3920
  %3 = icmp eq i8* %2, null, !dbg !3921
  %4 = icmp ne i64 %0, 0, !dbg !3922
  %5 = and i1 %4, %3, !dbg !3923
  br i1 %5, label %6, label %7, !dbg !3923

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3924
  unreachable, !dbg !3924

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !3925
  ret i8* %2, !dbg !3926
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !3927 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3929, metadata !608), !dbg !3932
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3930, metadata !608), !dbg !3933
  %3 = udiv i64 9223372036854775807, %1, !dbg !3934
  %4 = icmp ult i64 %3, %0, !dbg !3934
  br i1 %4, label %8, label %5, !dbg !3936

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #9, !dbg !3937
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3931, metadata !608), !dbg !3939
  %7 = icmp eq i8* %6, null, !dbg !3940
  br i1 %7, label %8, label %9, !dbg !3941

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #14, !dbg !3943
  unreachable, !dbg !3943

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !3944
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !3945 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3949, metadata !608), !dbg !3951
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3950, metadata !608), !dbg !3952
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3742, metadata !608) #9, !dbg !3953
  %3 = tail call noalias i8* @malloc(i64 %1) #9, !dbg !3955
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3748, metadata !608) #9, !dbg !3956
  %4 = icmp eq i8* %3, null, !dbg !3957
  %5 = icmp ne i64 %1, 0, !dbg !3958
  %6 = and i1 %5, %4, !dbg !3959
  br i1 %6, label %7, label %8, !dbg !3959

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !3960
  unreachable, !dbg !3960

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !3961
  ret i8* %3, !dbg !3962
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !3963 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3965, metadata !608), !dbg !3966
  %2 = tail call i64 @strlen(i8* %0) #13, !dbg !3967
  %3 = add i64 %2, 1, !dbg !3968
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3949, metadata !608) #9, !dbg !3969
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3950, metadata !608) #9, !dbg !3972
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3742, metadata !608) #9, !dbg !3973
  %4 = tail call noalias i8* @malloc(i64 %3) #9, !dbg !3975
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !3748, metadata !608) #9, !dbg !3976
  %5 = icmp eq i8* %4, null, !dbg !3977
  %6 = icmp ne i64 %3, 0, !dbg !3978
  %7 = and i1 %6, %5, !dbg !3979
  br i1 %7, label %8, label %9, !dbg !3979

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3980
  unreachable, !dbg !3980

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #9, !dbg !3981
  ret i8* %4, !dbg !3982
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !3983 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3985, !tbaa !713
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.103, i64 0, i64 0), i32 5) #9, !dbg !3986
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.104, i64 0, i64 0), i8* %2) #9, !dbg !3987
  tail call void @abort() #14, !dbg !3989
  unreachable, !dbg !3989
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !3990 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3993, metadata !608), !dbg !3999
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3994, metadata !608), !dbg !4000
  %3 = icmp eq i64 %0, 0, !dbg !4001
  %4 = icmp eq i64 %1, 0, !dbg !4002
  %5 = or i1 %3, %4, !dbg !4004
  br i1 %5, label %12, label %6, !dbg !4004

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4005
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3996, metadata !608), !dbg !4006
  %8 = udiv i64 %7, %1, !dbg !4007
  %9 = icmp eq i64 %8, %0, !dbg !4009
  br i1 %9, label %12, label %10, !dbg !4010

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #1, !dbg !4011
  store i32 12, i32* %11, align 4, !dbg !4013, !tbaa !713
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3993, metadata !608), !dbg !3999
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !3994, metadata !608), !dbg !4000
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #9, !dbg !4014
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !3995, metadata !608), !dbg !4015
  br label %16, !dbg !4016

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !4017
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !4018 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4063, metadata !608), !dbg !4067
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4064, metadata !608), !dbg !4068
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4066, metadata !608), !dbg !4069
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #9, !dbg !4070
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4065, metadata !608), !dbg !4071
  %3 = icmp slt i32 %2, 0, !dbg !4072
  br i1 %3, label %4, label %6, !dbg !4074

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4075
  br label %24, !dbg !4076

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #9, !dbg !4077
  %8 = icmp eq i32 %7, 0, !dbg !4077
  br i1 %8, label %13, label %9, !dbg !4079

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #9, !dbg !4080
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #9, !dbg !4082
  %12 = icmp eq i64 %11, -1, !dbg !4084
  br i1 %12, label %16, label %13, !dbg !4085

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #9, !dbg !4086
  %15 = icmp eq i32 %14, 0, !dbg !4086
  br i1 %15, label %16, label %18, !dbg !4087

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4064, metadata !608), !dbg !4068
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4089
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4066, metadata !608), !dbg !4069
  br label %24, !dbg !4090

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #1, !dbg !4091
  %20 = load i32, i32* %19, align 4, !dbg !4091, !tbaa !713
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4064, metadata !608), !dbg !4068
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4064, metadata !608), !dbg !4068
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4089
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4066, metadata !608), !dbg !4069
  %22 = icmp eq i32 %20, 0, !dbg !4092
  br i1 %22, label %24, label %23, !dbg !4090

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4094, !tbaa !713
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !4066, metadata !608), !dbg !4069
  br label %24, !dbg !4096

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !4097
}

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !4098 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4143, metadata !608), !dbg !4144
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4145
  br i1 %2, label %6, label %3, !dbg !4147

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #9, !dbg !4148
  %5 = icmp eq i32 %4, 0, !dbg !4148
  br i1 %5, label %6, label %8, !dbg !4150

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4152
  br label %17, !dbg !4153

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4154, metadata !608) #9, !dbg !4159
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4161
  %10 = load i32, i32* %9, align 8, !dbg !4161, !tbaa !1028
  %11 = and i32 %10, 256, !dbg !4163
  %12 = icmp eq i32 %11, 0, !dbg !4163
  br i1 %12, label %15, label %13, !dbg !4164

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #9, !dbg !4165
  br label %15, !dbg !4165

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4166
  br label %17, !dbg !4167

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !4168
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !4169 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4214, metadata !608), !dbg !4220
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4215, metadata !608), !dbg !4221
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4216, metadata !608), !dbg !4222
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4223
  %5 = load i8*, i8** %4, align 8, !dbg !4223, !tbaa !919
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4224
  %7 = load i8*, i8** %6, align 8, !dbg !4224, !tbaa !915
  %8 = icmp eq i8* %5, %7, !dbg !4225
  br i1 %8, label %9, label %28, !dbg !4226

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4227
  %11 = load i8*, i8** %10, align 8, !dbg !4227, !tbaa !969
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4229
  %13 = load i8*, i8** %12, align 8, !dbg !4229, !tbaa !4230
  %14 = icmp eq i8* %11, %13, !dbg !4231
  br i1 %14, label %15, label %28, !dbg !4232

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4233
  %17 = load i8*, i8** %16, align 8, !dbg !4233, !tbaa !4234
  %18 = icmp eq i8* %17, null, !dbg !4235
  br i1 %18, label %19, label %28, !dbg !4236

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #9, !dbg !4238
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #9, !dbg !4239
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !4217, metadata !608), !dbg !4241
  %22 = icmp eq i64 %21, -1, !dbg !4242
  br i1 %22, label %30, label %23, !dbg !4244

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4245
  %25 = load i32, i32* %24, align 8, !dbg !4246, !tbaa !1028
  %26 = and i32 %25, -17, !dbg !4246
  store i32 %26, i32* %24, align 8, !dbg !4246, !tbaa !1028
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4247
  store i64 %21, i64* %27, align 8, !dbg !4248, !tbaa !4249
  br label %30, !dbg !4250

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4251
  br label %30, !dbg !4252

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !4253
}

; Function Attrs: nounwind
declare i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !4254 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !4271, metadata !608), !dbg !4280
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4272, metadata !608), !dbg !4281
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4273, metadata !608), !dbg !4282
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !4274, metadata !608), !dbg !4283
  %6 = bitcast i32* %5 to i8*, !dbg !4284
  call void @llvm.lifetime.start(i64 4, i8* nonnull %6) #9, !dbg !4284
  %7 = icmp eq i32* %0, null, !dbg !4285
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !4271, metadata !608), !dbg !4280
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !4287
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !4271, metadata !608), !dbg !4280
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #9, !dbg !4288
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !4275, metadata !608), !dbg !4289
  %10 = icmp ugt i64 %9, -3, !dbg !4290
  %11 = icmp ne i64 %2, 0, !dbg !4291
  %12 = and i1 %11, %10, !dbg !4293
  br i1 %12, label %13, label %18, !dbg !4293

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #9, !dbg !4294
  br i1 %14, label %18, label %15, !dbg !4296

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !4298, !tbaa !701
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !4277, metadata !608), !dbg !4299
  %17 = zext i8 %16 to i32, !dbg !4300
  store i32 %17, i32* %8, align 4, !dbg !4301, !tbaa !713
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end(i64 4, i8* nonnull %6) #9, !dbg !4302
  ret i64 %19, !dbg !4302
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !4303 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4348, metadata !608), !dbg !4353
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #9, !dbg !4354
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4355, metadata !608), !dbg !4358
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4360
  %4 = load i32, i32* %3, align 8, !dbg !4360, !tbaa !1028
  %5 = and i32 %4, 32, !dbg !4360
  %6 = icmp eq i32 %5, 0, !dbg !4361
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #9, !dbg !4362
  %8 = icmp ne i32 %7, 0, !dbg !4363
  br i1 %6, label %9, label %19, !dbg !4364

; <label>:9:                                      ; preds = %1
  %10 = xor i1 %8, true, !dbg !4366
  %11 = icmp ne i64 %2, 0, !dbg !4366
  %12 = or i1 %11, %10, !dbg !4366
  %13 = sext i1 %8 to i32, !dbg !4366
  br i1 %12, label %22, label %14, !dbg !4366

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #1, !dbg !4368
  %16 = load i32, i32* %15, align 4, !dbg !4368, !tbaa !713
  %17 = icmp ne i32 %16, 9, !dbg !4370
  %18 = sext i1 %17 to i32, !dbg !4370
  br label %22, !dbg !4370

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !4372

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #1, !dbg !4374
  store i32 0, i32* %21, align 4, !dbg !4376, !tbaa !713
  br label %22, !dbg !4374

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !4377
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !4378 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4383, metadata !608), !dbg !4403
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !4384, metadata !608), !dbg !4404
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #9, !dbg !4405
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4385, metadata !608), !dbg !4406
  %3 = icmp eq i8* %2, null, !dbg !4407
  br i1 %3, label %15, label %4, !dbg !4408

; <label>:4:                                      ; preds = %1
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4393, metadata !608), !dbg !4409
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4394, metadata !608), !dbg !4410
  %5 = load i8, i8* %2, align 1, !dbg !4411, !tbaa !701
  %6 = icmp eq i8 %5, 67, !dbg !4413
  br i1 %6, label %7, label %11, !dbg !4416

; <label>:7:                                      ; preds = %4
  %8 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !4418
  %9 = load i8, i8* %8, align 1, !dbg !4418, !tbaa !701
  %10 = icmp eq i8 %9, 0, !dbg !4421
  br i1 %10, label %14, label %11, !dbg !4423

; <label>:11:                                     ; preds = %4, %7
  tail call void @llvm.dbg.value(metadata i64 5, i64 0, metadata !4399, metadata !608), !dbg !4425
  %12 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.119, i64 0, i64 0)) #9, !dbg !4426
  %13 = icmp eq i32 %12, 0, !dbg !4428
  br i1 %13, label %14, label %15, !dbg !4430

; <label>:14:                                     ; preds = %11, %7
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4384, metadata !608), !dbg !4404
  br label %15, !dbg !4432

; <label>:15:                                     ; preds = %1, %11, %14
  %16 = phi i1 [ false, %14 ], [ true, %11 ], [ true, %1 ]
  ret i1 %16, !dbg !4433
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !4434 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !4446, metadata !608), !dbg !4520
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !4513, metadata !608), !dbg !4522
  %3 = tail call i8* @nl_langinfo(i32 14) #9, !dbg !4523
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4438, metadata !608), !dbg !4524
  %4 = icmp eq i8* %3, null, !dbg !4525
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.122, i64 0, i64 0), i8* %3, !dbg !4527
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !4438, metadata !608), !dbg !4524
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !4528, !tbaa !616
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !4460, metadata !608) #9, !dbg !4529
  %7 = icmp eq i8* %6, null, !dbg !4530
  br i1 %7, label %8, label %127, !dbg !4531

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.123, i64 0, i64 0)) #9, !dbg !4532
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !4461, metadata !608) #9, !dbg !4533
  %10 = icmp eq i8* %9, null, !dbg !4534
  br i1 %10, label %14, label %11, !dbg !4536

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !4537, !tbaa !701
  %13 = icmp eq i8 %12, 0, !dbg !4539
  br i1 %13, label %14, label %15, !dbg !4540

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !4542

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.124, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !4461, metadata !608) #9, !dbg !4533
  %17 = tail call i64 @strlen(i8* nonnull %16) #13, !dbg !4543
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !4464, metadata !608) #9, !dbg !4544
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !4466, metadata !608) #9, !dbg !4545
  %18 = icmp eq i64 %17, 0, !dbg !4546
  br i1 %18, label %24, label %19, !dbg !4547

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !4548
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !4548
  %22 = load i8, i8* %21, align 1, !dbg !4548, !tbaa !701
  %23 = icmp ne i8 %22, 47, !dbg !4550
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !4551
  %27 = add i64 %17, 14, !dbg !4552
  %28 = add i64 %27, %26, !dbg !4553
  %29 = tail call noalias i8* @malloc(i64 %28) #9, !dbg !4554
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !4463, metadata !608) #9, !dbg !4555
  %30 = icmp eq i8* %29, null, !dbg !4556
  br i1 %30, label %125, label %31, !dbg !4556

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #9, !dbg !4557
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !4560

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !4561, !tbaa !701
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !4563
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.125, i64 0, i64 0), i64 14, i32 1, i1 false) #9, !dbg !4564
  br label %37, !dbg !4565

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !4563
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.125, i64 0, i64 0), i64 14, i32 1, i1 false) #9, !dbg !4564
  br label %37, !dbg !4565

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #9, !dbg !4566
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !4468, metadata !608) #9, !dbg !4567
  %39 = icmp slt i32 %38, 0, !dbg !4568
  br i1 %39, label %123, label %40, !dbg !4569

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.126, i64 0, i64 0)) #9, !dbg !4570
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4469, metadata !608) #9, !dbg !4571
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !4572
  br i1 %42, label %48, label %43, !dbg !4573

; <label>:43:                                     ; preds = %40
  %44 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %45 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %46 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %47 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !4574

; <label>:48:                                     ; preds = %40
  %49 = tail call i32 @close(i32 %38) #9, !dbg !4575
  br label %123, !dbg !4577

; <label>:50:                                     ; preds = %111, %43
  %51 = phi i64 [ %112, %111 ], [ 0, %43 ]
  %52 = phi i8* [ %113, %111 ], [ null, %43 ]
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !4510, metadata !608) #9, !dbg !4574
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !4511, metadata !608) #9, !dbg !4578
  call void @llvm.lifetime.start(i64 51, i8* nonnull %44) #9, !dbg !4579
  call void @llvm.lifetime.start(i64 51, i8* nonnull %45) #9, !dbg !4580
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4581, metadata !608) #9, !dbg !4586
  %53 = load i8*, i8** %46, align 8, !dbg !4588, !tbaa !915
  %54 = load i8*, i8** %47, align 8, !dbg !4588, !tbaa !919
  %55 = icmp ult i8* %53, %54, !dbg !4588
  br i1 %55, label %58, label %56, !dbg !4588, !prof !920

; <label>:56:                                     ; preds = %50
  %57 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #9, !dbg !4589
  br label %62, !dbg !4589

; <label>:58:                                     ; preds = %50
  %59 = getelementptr inbounds i8, i8* %53, i64 1, !dbg !4591
  store i8* %59, i8** %46, align 8, !dbg !4591, !tbaa !915
  %60 = load i8, i8* %53, align 1, !dbg !4591, !tbaa !701
  %61 = zext i8 %60 to i32, !dbg !4591
  br label %62, !dbg !4591

; <label>:62:                                     ; preds = %58, %56
  %63 = phi i32 [ %57, %56 ], [ %61, %58 ], !dbg !4593
  call void @llvm.dbg.value(metadata i32 %63, i64 0, metadata !4512, metadata !608) #9, !dbg !4595
  switch i32 %63, label %77 [
    i32 -1, label %115
    i32 32, label %111
    i32 10, label %111
    i32 9, label %111
    i32 35, label %64
  ], !dbg !4596

; <label>:64:                                     ; preds = %62
  br label %65, !dbg !4597

; <label>:65:                                     ; preds = %64, %75
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4581, metadata !608) #9, !dbg !4597
  %66 = load i8*, i8** %46, align 8, !dbg !4601, !tbaa !915
  %67 = load i8*, i8** %47, align 8, !dbg !4601, !tbaa !919
  %68 = icmp ult i8* %66, %67, !dbg !4601
  br i1 %68, label %71, label %69, !dbg !4601, !prof !920

; <label>:69:                                     ; preds = %65
  %70 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #9, !dbg !4602
  br label %75, !dbg !4602

; <label>:71:                                     ; preds = %65
  %72 = getelementptr inbounds i8, i8* %66, i64 1, !dbg !4603
  store i8* %72, i8** %46, align 8, !dbg !4603, !tbaa !915
  %73 = load i8, i8* %66, align 1, !dbg !4603, !tbaa !701
  %74 = zext i8 %73 to i32, !dbg !4603
  br label %75, !dbg !4603

; <label>:75:                                     ; preds = %71, %69
  %76 = phi i32 [ %70, %69 ], [ %74, %71 ], !dbg !4604
  call void @llvm.dbg.value(metadata i32 %76, i64 0, metadata !4512, metadata !608) #9, !dbg !4595
  switch i32 %76, label %65 [
    i32 -1, label %114
    i32 10, label %110
  ], !dbg !4605, !llvm.loop !4607

; <label>:77:                                     ; preds = %62
  %78 = call i32 @ungetc(i32 %63, %struct._IO_FILE* nonnull %41) #9, !dbg !4610
  %79 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.127, i64 0, i64 0), i8* nonnull %44, i8* nonnull %45) #9, !dbg !4611
  %80 = icmp slt i32 %79, 2, !dbg !4613
  br i1 %80, label %115, label %81, !dbg !4614

; <label>:81:                                     ; preds = %77
  %82 = call i64 @strlen(i8* nonnull %44) #13, !dbg !4615
  call void @llvm.dbg.value(metadata i64 %82, i64 0, metadata !4517, metadata !608) #9, !dbg !4616
  %83 = call i64 @strlen(i8* nonnull %45) #13, !dbg !4617
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !4518, metadata !608) #9, !dbg !4618
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !4519, metadata !608) #9, !dbg !4619
  %84 = icmp eq i64 %51, 0, !dbg !4620
  %85 = add i64 %82, 1
  %86 = add i64 %85, %83
  %87 = add i64 %86, 1
  br i1 %84, label %88, label %91, !dbg !4622

; <label>:88:                                     ; preds = %81
  call void @llvm.dbg.value(metadata i64 %87, i64 0, metadata !4511, metadata !608) #9, !dbg !4578
  %89 = add i64 %86, 2, !dbg !4623
  %90 = call noalias i8* @malloc(i64 %89) #9, !dbg !4625
  call void @llvm.dbg.value(metadata i8* %90, i64 0, metadata !4510, metadata !608) #9, !dbg !4574
  br label %95, !dbg !4626

; <label>:91:                                     ; preds = %81
  %92 = add i64 %87, %51, !dbg !4627
  call void @llvm.dbg.value(metadata i64 %92, i64 0, metadata !4511, metadata !608) #9, !dbg !4578
  %93 = add i64 %92, 1, !dbg !4629
  %94 = call i8* @realloc(i8* %52, i64 %93) #9, !dbg !4630
  call void @llvm.dbg.value(metadata i8* %94, i64 0, metadata !4510, metadata !608) #9, !dbg !4574
  br label %95

; <label>:95:                                     ; preds = %91, %88
  %96 = phi i64 [ %87, %88 ], [ %92, %91 ]
  %97 = phi i8* [ %90, %88 ], [ %94, %91 ]
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !4510, metadata !608) #9, !dbg !4574
  call void @llvm.dbg.value(metadata i64 %96, i64 0, metadata !4511, metadata !608) #9, !dbg !4578
  %98 = icmp eq i8* %97, null, !dbg !4631
  br i1 %98, label %99, label %100, !dbg !4633

; <label>:99:                                     ; preds = %95
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4511, metadata !608) #9, !dbg !4578
  call void @free(i8* %52) #9, !dbg !4634
  br label %116, !dbg !4636

; <label>:100:                                    ; preds = %95
  %101 = getelementptr inbounds i8, i8* %97, i64 %96, !dbg !4637
  %102 = xor i64 %83, -1, !dbg !4638
  %103 = getelementptr inbounds i8, i8* %101, i64 %102, !dbg !4638
  %104 = xor i64 %82, -1, !dbg !4639
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !4639
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !4640, metadata !608) #9, !dbg !4649
  call void @llvm.dbg.value(metadata i8* %44, i64 0, metadata !4648, metadata !608) #9, !dbg !4649
  %106 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false) #9, !dbg !4651
  %107 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %44, i64 %106) #9, !dbg !4652
  call void @llvm.dbg.value(metadata i8* %103, i64 0, metadata !4640, metadata !608) #9, !dbg !4653
  call void @llvm.dbg.value(metadata i8* %45, i64 0, metadata !4648, metadata !608) #9, !dbg !4653
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %103, i1 false) #9, !dbg !4655
  %109 = call i8* @__strcpy_chk(i8* nonnull %103, i8* nonnull %45, i64 %108) #9, !dbg !4656
  br label %111, !dbg !4657

; <label>:110:                                    ; preds = %75
  br label %111, !dbg !4574

; <label>:111:                                    ; preds = %110, %100, %62, %62, %62
  %112 = phi i64 [ %96, %100 ], [ %51, %62 ], [ %51, %62 ], [ %51, %62 ], [ %51, %110 ]
  %113 = phi i8* [ %97, %100 ], [ %52, %62 ], [ %52, %62 ], [ %52, %62 ], [ %52, %110 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !4510, metadata !608) #9, !dbg !4574
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !4511, metadata !608) #9, !dbg !4578
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #9, !dbg !4657
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #9, !dbg !4657
  br label %50

; <label>:114:                                    ; preds = %75
  br label %116, !dbg !4574

; <label>:115:                                    ; preds = %62, %77
  br label %116, !dbg !4574

; <label>:116:                                    ; preds = %115, %114, %99
  %117 = phi i64 [ 0, %99 ], [ %51, %114 ], [ %51, %115 ]
  %118 = phi i8* [ null, %99 ], [ %52, %114 ], [ %52, %115 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !4510, metadata !608) #9, !dbg !4574
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !4511, metadata !608) #9, !dbg !4578
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #9, !dbg !4657
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #9, !dbg !4657
  %119 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #9, !dbg !4658
  %120 = icmp eq i64 %117, 0, !dbg !4659
  br i1 %120, label %123, label %121, !dbg !4661

; <label>:121:                                    ; preds = %116
  %122 = getelementptr inbounds i8, i8* %118, i64 %117, !dbg !4662
  store i8 0, i8* %122, align 1, !dbg !4664, !tbaa !701
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !4460, metadata !608) #9, !dbg !4529
  br label %123

; <label>:123:                                    ; preds = %121, %116, %48, %37
  %124 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.122, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.122, i64 0, i64 0), %48 ], [ %118, %121 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.122, i64 0, i64 0), %116 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !4460, metadata !608) #9, !dbg !4529
  call void @free(i8* %29) #9, !dbg !4665
  br label %125

; <label>:125:                                    ; preds = %123, %24
  %126 = phi i8* [ %124, %123 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.122, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %126, i64 0, metadata !4460, metadata !608) #9, !dbg !4529
  store volatile i8* %126, i8** @charset_aliases, align 8, !dbg !4666, !tbaa !616
  br label %127, !dbg !4667

; <label>:127:                                    ; preds = %0, %125
  %128 = phi i8* [ %6, %0 ], [ %126, %125 ]
  call void @llvm.dbg.value(metadata i8* %128, i64 0, metadata !4439, metadata !608), !dbg !4668
  %129 = load i8, i8* %128, align 1, !dbg !4669, !tbaa !701
  %130 = icmp eq i8 %129, 0, !dbg !4670
  br i1 %130, label %157, label %131, !dbg !4671

; <label>:131:                                    ; preds = %127
  br label %132, !dbg !4673

; <label>:132:                                    ; preds = %131, %147
  %133 = phi i8 [ %154, %147 ], [ %129, %131 ]
  %134 = phi i8* [ %153, %147 ], [ %128, %131 ]
  %135 = call i32 @strcmp(i8* %5, i8* %134) #9, !dbg !4673
  %136 = icmp eq i32 %135, 0, !dbg !4674
  br i1 %136, label %143, label %137, !dbg !4675

; <label>:137:                                    ; preds = %132
  %138 = icmp eq i8 %133, 42, !dbg !4676
  br i1 %138, label %139, label %147, !dbg !4678

; <label>:139:                                    ; preds = %137
  %140 = getelementptr inbounds i8, i8* %134, i64 1, !dbg !4679
  %141 = load i8, i8* %140, align 1, !dbg !4679, !tbaa !701
  %142 = icmp eq i8 %141, 0, !dbg !4681
  br i1 %142, label %143, label %147, !dbg !4682

; <label>:143:                                    ; preds = %139, %132
  %144 = call i64 @strlen(i8* %134) #13, !dbg !4684
  %145 = getelementptr inbounds i8, i8* %134, i64 %144, !dbg !4686
  %146 = getelementptr inbounds i8, i8* %145, i64 1, !dbg !4687
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !4438, metadata !608), !dbg !4524
  br label %157, !dbg !4688

; <label>:147:                                    ; preds = %137, %139
  %148 = call i64 @strlen(i8* %134) #13, !dbg !4689
  %149 = add i64 %148, 1, !dbg !4690
  %150 = getelementptr inbounds i8, i8* %134, i64 %149, !dbg !4691
  call void @llvm.dbg.value(metadata i8* %150, i64 0, metadata !4439, metadata !608), !dbg !4668
  %151 = call i64 @strlen(i8* %150) #13, !dbg !4692
  %152 = add i64 %151, 1, !dbg !4693
  %153 = getelementptr inbounds i8, i8* %150, i64 %152, !dbg !4694
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !4439, metadata !608), !dbg !4668
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !4439, metadata !608), !dbg !4668
  %154 = load i8, i8* %153, align 1, !dbg !4669, !tbaa !701
  %155 = icmp eq i8 %154, 0, !dbg !4670
  br i1 %155, label %156, label %132, !dbg !4671, !llvm.loop !4695

; <label>:156:                                    ; preds = %147
  br label %157, !dbg !4524

; <label>:157:                                    ; preds = %156, %127, %143
  %158 = phi i8* [ %146, %143 ], [ %5, %127 ], [ %5, %156 ]
  call void @llvm.dbg.value(metadata i8* %158, i64 0, metadata !4438, metadata !608), !dbg !4524
  %159 = load i8, i8* %158, align 1, !dbg !4698, !tbaa !701
  %160 = icmp eq i8 %159, 0, !dbg !4700
  %161 = select i1 %160, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.128, i64 0, i64 0), i8* %158, !dbg !4701
  call void @llvm.dbg.value(metadata i8* %161, i64 0, metadata !4438, metadata !608), !dbg !4524
  ret i8* %161, !dbg !4702
}

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i8* @getenv(i8* nocapture) local_unnamed_addr #4

declare i32 @open(i8* nocapture readonly, i32, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fdopen(i32, i8* nocapture readonly) local_unnamed_addr #2

declare i32 @close(i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @ungetc(i32, %struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @fscanf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #1

; Function Attrs: nounwind
declare i8* @__strcpy_chk(i8*, i8*, i64) local_unnamed_addr #2

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

!llvm.dbg.cu = !{!2, !100, !106, !114, !552, !121, !128, !555, !198, !563, !580, !582, !584, !586, !588, !590, !593, !595, !207}
!llvm.ident = !{!598, !598, !598, !598, !598, !598, !598, !598, !598, !598, !598, !598, !598, !598, !598, !598, !598, !598, !598}
!llvm.module.flags = !{!599, !600, !601, !602}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 73, type: !86, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !28, globals: !43)
!3 = !DIFile(filename: "src/paste.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
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
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !20, line: 45, size: 32, elements: !21)
!20 = !DIFile(filename: "./lib/fadvise.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!21 = !{!22, !23, !24, !25, !26, !27}
!22 = !DIEnumerator(name: "FADVISE_NORMAL", value: 0)
!23 = !DIEnumerator(name: "FADVISE_SEQUENTIAL", value: 2)
!24 = !DIEnumerator(name: "FADVISE_NOREUSE", value: 5)
!25 = !DIEnumerator(name: "FADVISE_DONTNEED", value: 4)
!26 = !DIEnumerator(name: "FADVISE_WILLNEED", value: 3)
!27 = !DIEnumerator(name: "FADVISE_RANDOM", value: 1)
!28 = !{!29, !31, !32, !35, !37, !40, !42, !39}
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !33, line: 62, baseType: !34)
!33 = !DIFile(filename: "/usr/bin/../lib/clang/4.0.1/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!34 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!39 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!43 = !{!44, !47, !49, !51, !0, !82, !84}
!44 = !DIGlobalVariableExpression(var: !45)
!45 = distinct !DIGlobalVariable(name: "have_read_stdin", scope: !2, file: !3, line: 59, type: !46, isLocal: true, isDefinition: true)
!46 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!47 = !DIGlobalVariableExpression(var: !48)
!48 = distinct !DIGlobalVariable(name: "serial_merge", scope: !2, file: !3, line: 63, type: !46, isLocal: true, isDefinition: true)
!49 = !DIGlobalVariableExpression(var: !50)
!50 = distinct !DIGlobalVariable(name: "delims", scope: !2, file: !3, line: 66, type: !29, isLocal: true, isDefinition: true)
!51 = !DIGlobalVariableExpression(var: !52)
!52 = distinct !DIGlobalVariable(name: "infomap", scope: !53, file: !54, line: 632, type: !79, isLocal: true, isDefinition: true)
!53 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !54, file: !54, line: 630, type: !55, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !57)
!54 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!55 = !DISubroutineType(types: !56)
!56 = !{null, !40}
!57 = !{!58, !59, !60, !67, !69, !70, !71, !74, !75, !77}
!58 = !DILocalVariable(name: "program", arg: 1, scope: !53, file: !54, line: 630, type: !40)
!59 = !DILocalVariable(name: "node", scope: !53, file: !54, line: 642, type: !40)
!60 = !DILocalVariable(name: "map_prog", scope: !53, file: !54, line: 643, type: !61)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !63)
!63 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !53, file: !54, line: 632, size: 128, elements: !64)
!64 = !{!65, !66}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !63, file: !54, line: 632, baseType: !40, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !63, file: !54, line: 632, baseType: !40, size: 64, offset: 64)
!67 = !DILocalVariable(name: "__s1_len", scope: !68, file: !54, line: 645, type: !32)
!68 = distinct !DILexicalBlock(scope: !53, file: !54, line: 645, column: 33)
!69 = !DILocalVariable(name: "__s2_len", scope: !68, file: !54, line: 645, type: !32)
!70 = !DILocalVariable(name: "lc_messages", scope: !53, file: !54, line: 655, type: !40)
!71 = !DILocalVariable(name: "__s1_len", scope: !72, file: !54, line: 656, type: !32)
!72 = distinct !DILexicalBlock(scope: !73, file: !54, line: 656, column: 22)
!73 = distinct !DILexicalBlock(scope: !53, file: !54, line: 656, column: 7)
!74 = !DILocalVariable(name: "__s2_len", scope: !72, file: !54, line: 656, type: !32)
!75 = !DILocalVariable(name: "__s2", scope: !76, file: !54, line: 656, type: !37)
!76 = distinct !DILexicalBlock(scope: !72, file: !54, line: 656, column: 22)
!77 = !DILocalVariable(name: "__result", scope: !76, file: !54, line: 656, type: !78)
!78 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!79 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 896, elements: !80)
!80 = !{!81}
!81 = !DISubrange(count: 7)
!82 = !DIGlobalVariableExpression(var: !83)
!83 = distinct !DIGlobalVariable(name: "line_delim", scope: !2, file: !3, line: 71, type: !39, isLocal: true, isDefinition: true)
!84 = !DIGlobalVariableExpression(var: !85)
!85 = distinct !DIGlobalVariable(name: "delim_end", scope: !2, file: !3, line: 69, type: !40, isLocal: true, isDefinition: true)
!86 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 1536, elements: !96)
!87 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !88)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !89, line: 104, size: 256, elements: !90)
!89 = !DIFile(filename: "/usr/include/getopt.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!90 = !{!91, !92, !93, !95}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !88, file: !89, line: 106, baseType: !40, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !88, file: !89, line: 109, baseType: !78, size: 32, offset: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !88, file: !89, line: 110, baseType: !94, size: 64, offset: 128)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !88, file: !89, line: 111, baseType: !78, size: 32, offset: 192)
!96 = !{!97}
!97 = !DISubrange(count: 6)
!98 = !DIGlobalVariableExpression(var: !99)
!99 = distinct !DIGlobalVariable(name: "Version", scope: !100, file: !101, line: 2, type: !40, isLocal: false, isDefinition: true)
!100 = distinct !DICompileUnit(language: DW_LANG_C99, file: !101, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !102, globals: !103)
!101 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!102 = !{}
!103 = !{!98}
!104 = !DIGlobalVariableExpression(var: !105)
!105 = distinct !DIGlobalVariable(name: "file_name", scope: !106, file: !111, line: 36, type: !40, isLocal: true, isDefinition: true)
!106 = distinct !DICompileUnit(language: DW_LANG_C99, file: !107, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !102, globals: !108)
!107 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!108 = !{!104, !109}
!109 = !DIGlobalVariableExpression(var: !110)
!110 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !106, file: !111, line: 46, type: !46, isLocal: true, isDefinition: true)
!111 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!112 = !DIGlobalVariableExpression(var: !113)
!113 = distinct !DIGlobalVariable(name: "exit_failure", scope: !114, file: !117, line: 24, type: !118, isLocal: false, isDefinition: true)
!114 = distinct !DICompileUnit(language: DW_LANG_C99, file: !115, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !102, globals: !116)
!115 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!116 = !{!112}
!117 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!118 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !78)
!119 = !DIGlobalVariableExpression(var: !120)
!120 = distinct !DIGlobalVariable(name: "program_name", scope: !121, file: !125, line: 33, type: !40, isLocal: false, isDefinition: true)
!121 = distinct !DICompileUnit(language: DW_LANG_C99, file: !122, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !102, retainedTypes: !123, globals: !124)
!122 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!123 = !{!31, !29}
!124 = !{!119}
!125 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!126 = !DIGlobalVariableExpression(var: !127)
!127 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !128, file: !156, line: 77, type: !192, isLocal: false, isDefinition: true)
!128 = distinct !DICompileUnit(language: DW_LANG_C99, file: !129, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !130, retainedTypes: !151, globals: !153)
!129 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!130 = !{!5, !131, !136}
!131 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !6, line: 242, size: 32, elements: !132)
!132 = !{!133, !134, !135}
!133 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!134 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!135 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!136 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !137, line: 46, size: 32, elements: !138)
!137 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!138 = !{!139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150}
!139 = !DIEnumerator(name: "_ISupper", value: 256)
!140 = !DIEnumerator(name: "_ISlower", value: 512)
!141 = !DIEnumerator(name: "_ISalpha", value: 1024)
!142 = !DIEnumerator(name: "_ISdigit", value: 2048)
!143 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!144 = !DIEnumerator(name: "_ISspace", value: 8192)
!145 = !DIEnumerator(name: "_ISprint", value: 16384)
!146 = !DIEnumerator(name: "_ISgraph", value: 32768)
!147 = !DIEnumerator(name: "_ISblank", value: 1)
!148 = !DIEnumerator(name: "_IScntrl", value: 2)
!149 = !DIEnumerator(name: "_ISpunct", value: 4)
!150 = !DIEnumerator(name: "_ISalnum", value: 8)
!151 = !{!78, !152, !32, !29}
!152 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!153 = !{!126, !154, !161, !174, !176, !181, !188, !190}
!154 = !DIGlobalVariableExpression(var: !155)
!155 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !128, file: !156, line: 93, type: !157, isLocal: false, isDefinition: true)
!156 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !158, size: 320, elements: !159)
!158 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!159 = !{!160}
!160 = !DISubrange(count: 10)
!161 = !DIGlobalVariableExpression(var: !162)
!162 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !128, file: !156, line: 1043, type: !163, isLocal: false, isDefinition: true)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !156, line: 57, size: 448, elements: !164)
!164 = !{!165, !166, !167, !172, !173}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !163, file: !156, line: 60, baseType: !5, size: 32)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !163, file: !156, line: 63, baseType: !78, size: 32, offset: 32)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !163, file: !156, line: 67, baseType: !168, size: 256, offset: 64)
!168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !169, size: 256, elements: !170)
!169 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!170 = !{!171}
!171 = !DISubrange(count: 8)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !163, file: !156, line: 70, baseType: !40, size: 64, offset: 320)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !163, file: !156, line: 73, baseType: !40, size: 64, offset: 384)
!174 = !DIGlobalVariableExpression(var: !175)
!175 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !128, file: !156, line: 108, type: !163, isLocal: true, isDefinition: true)
!176 = !DIGlobalVariableExpression(var: !177)
!177 = distinct !DIGlobalVariable(name: "slot0", scope: !128, file: !156, line: 834, type: !178, isLocal: true, isDefinition: true)
!178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 2048, elements: !179)
!179 = !{!180}
!180 = !DISubrange(count: 256)
!181 = !DIGlobalVariableExpression(var: !182)
!182 = distinct !DIGlobalVariable(name: "slotvec", scope: !128, file: !156, line: 837, type: !183, isLocal: true, isDefinition: true)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !156, line: 826, size: 128, elements: !185)
!185 = !{!186, !187}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !184, file: !156, line: 828, baseType: !32, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !184, file: !156, line: 829, baseType: !29, size: 64, offset: 64)
!188 = !DIGlobalVariableExpression(var: !189)
!189 = distinct !DIGlobalVariable(name: "nslots", scope: !128, file: !156, line: 835, type: !78, isLocal: true, isDefinition: true)
!190 = !DIGlobalVariableExpression(var: !191)
!191 = distinct !DIGlobalVariable(name: "slotvec0", scope: !128, file: !156, line: 836, type: !184, isLocal: true, isDefinition: true)
!192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !193, size: 704, elements: !194)
!193 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!194 = !{!195}
!195 = !DISubrange(count: 11)
!196 = !DIGlobalVariableExpression(var: !197)
!197 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !198, file: !201, line: 26, type: !202, isLocal: false, isDefinition: true)
!198 = distinct !DICompileUnit(language: DW_LANG_C99, file: !199, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !102, globals: !200)
!199 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!200 = !{!196}
!201 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 376, elements: !203)
!203 = !{!204}
!204 = !DISubrange(count: 47)
!205 = !DIGlobalVariableExpression(var: !206)
!206 = distinct !DIGlobalVariable(name: "charset_aliases", scope: !207, file: !550, line: 120, type: !551, isLocal: true, isDefinition: true)
!207 = distinct !DICompileUnit(language: DW_LANG_C99, file: !208, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !209, retainedTypes: !548, globals: !549)
!208 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!209 = !{!210}
!210 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !211, line: 41, size: 32, elements: !212)
!211 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!212 = !{!213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547}
!213 = !DIEnumerator(name: "ABDAY_1", value: 131072)
!214 = !DIEnumerator(name: "ABDAY_2", value: 131073)
!215 = !DIEnumerator(name: "ABDAY_3", value: 131074)
!216 = !DIEnumerator(name: "ABDAY_4", value: 131075)
!217 = !DIEnumerator(name: "ABDAY_5", value: 131076)
!218 = !DIEnumerator(name: "ABDAY_6", value: 131077)
!219 = !DIEnumerator(name: "ABDAY_7", value: 131078)
!220 = !DIEnumerator(name: "DAY_1", value: 131079)
!221 = !DIEnumerator(name: "DAY_2", value: 131080)
!222 = !DIEnumerator(name: "DAY_3", value: 131081)
!223 = !DIEnumerator(name: "DAY_4", value: 131082)
!224 = !DIEnumerator(name: "DAY_5", value: 131083)
!225 = !DIEnumerator(name: "DAY_6", value: 131084)
!226 = !DIEnumerator(name: "DAY_7", value: 131085)
!227 = !DIEnumerator(name: "ABMON_1", value: 131086)
!228 = !DIEnumerator(name: "ABMON_2", value: 131087)
!229 = !DIEnumerator(name: "ABMON_3", value: 131088)
!230 = !DIEnumerator(name: "ABMON_4", value: 131089)
!231 = !DIEnumerator(name: "ABMON_5", value: 131090)
!232 = !DIEnumerator(name: "ABMON_6", value: 131091)
!233 = !DIEnumerator(name: "ABMON_7", value: 131092)
!234 = !DIEnumerator(name: "ABMON_8", value: 131093)
!235 = !DIEnumerator(name: "ABMON_9", value: 131094)
!236 = !DIEnumerator(name: "ABMON_10", value: 131095)
!237 = !DIEnumerator(name: "ABMON_11", value: 131096)
!238 = !DIEnumerator(name: "ABMON_12", value: 131097)
!239 = !DIEnumerator(name: "MON_1", value: 131098)
!240 = !DIEnumerator(name: "MON_2", value: 131099)
!241 = !DIEnumerator(name: "MON_3", value: 131100)
!242 = !DIEnumerator(name: "MON_4", value: 131101)
!243 = !DIEnumerator(name: "MON_5", value: 131102)
!244 = !DIEnumerator(name: "MON_6", value: 131103)
!245 = !DIEnumerator(name: "MON_7", value: 131104)
!246 = !DIEnumerator(name: "MON_8", value: 131105)
!247 = !DIEnumerator(name: "MON_9", value: 131106)
!248 = !DIEnumerator(name: "MON_10", value: 131107)
!249 = !DIEnumerator(name: "MON_11", value: 131108)
!250 = !DIEnumerator(name: "MON_12", value: 131109)
!251 = !DIEnumerator(name: "AM_STR", value: 131110)
!252 = !DIEnumerator(name: "PM_STR", value: 131111)
!253 = !DIEnumerator(name: "D_T_FMT", value: 131112)
!254 = !DIEnumerator(name: "D_FMT", value: 131113)
!255 = !DIEnumerator(name: "T_FMT", value: 131114)
!256 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115)
!257 = !DIEnumerator(name: "ERA", value: 131116)
!258 = !DIEnumerator(name: "__ERA_YEAR", value: 131117)
!259 = !DIEnumerator(name: "ERA_D_FMT", value: 131118)
!260 = !DIEnumerator(name: "ALT_DIGITS", value: 131119)
!261 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120)
!262 = !DIEnumerator(name: "ERA_T_FMT", value: 131121)
!263 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122)
!264 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123)
!265 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124)
!266 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125)
!267 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126)
!268 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127)
!269 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128)
!270 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129)
!271 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130)
!272 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131)
!273 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132)
!274 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133)
!275 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134)
!276 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135)
!277 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136)
!278 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137)
!279 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138)
!280 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139)
!281 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140)
!282 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141)
!283 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142)
!284 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143)
!285 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144)
!286 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145)
!287 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146)
!288 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147)
!289 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148)
!290 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149)
!291 = !DIEnumerator(name: "_NL_WMON_1", value: 131150)
!292 = !DIEnumerator(name: "_NL_WMON_2", value: 131151)
!293 = !DIEnumerator(name: "_NL_WMON_3", value: 131152)
!294 = !DIEnumerator(name: "_NL_WMON_4", value: 131153)
!295 = !DIEnumerator(name: "_NL_WMON_5", value: 131154)
!296 = !DIEnumerator(name: "_NL_WMON_6", value: 131155)
!297 = !DIEnumerator(name: "_NL_WMON_7", value: 131156)
!298 = !DIEnumerator(name: "_NL_WMON_8", value: 131157)
!299 = !DIEnumerator(name: "_NL_WMON_9", value: 131158)
!300 = !DIEnumerator(name: "_NL_WMON_10", value: 131159)
!301 = !DIEnumerator(name: "_NL_WMON_11", value: 131160)
!302 = !DIEnumerator(name: "_NL_WMON_12", value: 131161)
!303 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162)
!304 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163)
!305 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164)
!306 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165)
!307 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166)
!308 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167)
!309 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168)
!310 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169)
!311 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170)
!312 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171)
!313 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172)
!314 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173)
!315 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174)
!316 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175)
!317 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176)
!318 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177)
!319 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178)
!320 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179)
!321 = !DIEnumerator(name: "_DATE_FMT", value: 131180)
!322 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181)
!323 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182)
!324 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131183)
!325 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608)
!326 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609)
!327 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610)
!328 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611)
!329 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612)
!330 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613)
!331 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614)
!332 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615)
!333 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616)
!334 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617)
!335 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618)
!336 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619)
!337 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620)
!338 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621)
!339 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622)
!340 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623)
!341 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624)
!342 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625)
!343 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626)
!344 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627)
!345 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0)
!346 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1)
!347 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2)
!348 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3)
!349 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4)
!350 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5)
!351 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6)
!352 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7)
!353 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8)
!354 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9)
!355 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10)
!356 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11)
!357 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12)
!358 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13)
!359 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14)
!360 = !DIEnumerator(name: "CODESET", value: 14)
!361 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15)
!362 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16)
!363 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17)
!364 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18)
!365 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19)
!366 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20)
!367 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21)
!368 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22)
!369 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23)
!370 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24)
!371 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25)
!372 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26)
!373 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27)
!374 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28)
!375 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29)
!376 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30)
!377 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31)
!378 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32)
!379 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33)
!380 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34)
!381 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35)
!382 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36)
!383 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37)
!384 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38)
!385 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39)
!386 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40)
!387 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41)
!388 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42)
!389 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43)
!390 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44)
!391 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45)
!392 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46)
!393 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47)
!394 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48)
!395 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49)
!396 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50)
!397 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51)
!398 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52)
!399 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53)
!400 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54)
!401 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55)
!402 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56)
!403 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57)
!404 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58)
!405 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59)
!406 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60)
!407 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61)
!408 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62)
!409 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63)
!410 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64)
!411 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65)
!412 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66)
!413 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67)
!414 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68)
!415 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69)
!416 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70)
!417 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71)
!418 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72)
!419 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73)
!420 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74)
!421 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75)
!422 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76)
!423 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77)
!424 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78)
!425 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79)
!426 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80)
!427 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81)
!428 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82)
!429 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83)
!430 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84)
!431 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85)
!432 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86)
!433 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144)
!434 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145)
!435 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146)
!436 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147)
!437 = !DIEnumerator(name: "__MON_GROUPING", value: 262148)
!438 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149)
!439 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150)
!440 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151)
!441 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152)
!442 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153)
!443 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154)
!444 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155)
!445 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156)
!446 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157)
!447 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158)
!448 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159)
!449 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160)
!450 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161)
!451 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162)
!452 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163)
!453 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164)
!454 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165)
!455 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166)
!456 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167)
!457 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168)
!458 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169)
!459 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170)
!460 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171)
!461 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172)
!462 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173)
!463 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174)
!464 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175)
!465 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176)
!466 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177)
!467 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178)
!468 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179)
!469 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180)
!470 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181)
!471 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182)
!472 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183)
!473 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184)
!474 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185)
!475 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186)
!476 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187)
!477 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188)
!478 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189)
!479 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190)
!480 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536)
!481 = !DIEnumerator(name: "RADIXCHAR", value: 65536)
!482 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537)
!483 = !DIEnumerator(name: "THOUSEP", value: 65537)
!484 = !DIEnumerator(name: "__GROUPING", value: 65538)
!485 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539)
!486 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540)
!487 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541)
!488 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542)
!489 = !DIEnumerator(name: "__YESEXPR", value: 327680)
!490 = !DIEnumerator(name: "__NOEXPR", value: 327681)
!491 = !DIEnumerator(name: "__YESSTR", value: 327682)
!492 = !DIEnumerator(name: "__NOSTR", value: 327683)
!493 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684)
!494 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685)
!495 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752)
!496 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753)
!497 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754)
!498 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755)
!499 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288)
!500 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289)
!501 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290)
!502 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291)
!503 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292)
!504 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293)
!505 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294)
!506 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295)
!507 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824)
!508 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825)
!509 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826)
!510 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827)
!511 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828)
!512 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829)
!513 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830)
!514 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831)
!515 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832)
!516 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833)
!517 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834)
!518 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835)
!519 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836)
!520 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837)
!521 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360)
!522 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361)
!523 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362)
!524 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363)
!525 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364)
!526 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365)
!527 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896)
!528 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897)
!529 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898)
!530 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432)
!531 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433)
!532 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434)
!533 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435)
!534 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436)
!535 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437)
!536 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438)
!537 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439)
!538 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440)
!539 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441)
!540 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442)
!541 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443)
!542 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444)
!543 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445)
!544 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446)
!545 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447)
!546 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448)
!547 = !DIEnumerator(name: "_NL_NUM", value: 786449)
!548 = !{!31, !29, !42}
!549 = !{!205}
!550 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!551 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !40)
!552 = distinct !DICompileUnit(language: DW_LANG_C99, file: !553, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !554)
!553 = !DIFile(filename: "./lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!554 = !{!19}
!555 = distinct !DICompileUnit(language: DW_LANG_C99, file: !556, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !557, retainedTypes: !562)
!556 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!557 = !{!558}
!558 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !559, line: 41, size: 32, elements: !560)
!559 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!560 = !{!561}
!561 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!562 = !{!31}
!563 = distinct !DICompileUnit(language: DW_LANG_C99, file: !564, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !565, retainedTypes: !579)
!564 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!565 = !{!566}
!566 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !568, file: !567, line: 192, size: 32, elements: !577)
!567 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!568 = distinct !DISubprogram(name: "x2nrealloc", scope: !567, file: !567, line: 180, type: !569, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !563, variables: !572)
!569 = !DISubroutineType(types: !570)
!570 = !{!31, !31, !571, !32}
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!572 = !{!573, !574, !575, !576}
!573 = !DILocalVariable(name: "p", arg: 1, scope: !568, file: !567, line: 180, type: !31)
!574 = !DILocalVariable(name: "pn", arg: 2, scope: !568, file: !567, line: 180, type: !571)
!575 = !DILocalVariable(name: "s", arg: 3, scope: !568, file: !567, line: 180, type: !32)
!576 = !DILocalVariable(name: "n", scope: !568, file: !567, line: 182, type: !32)
!577 = !{!578}
!578 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!579 = !{!32, !29, !31}
!580 = distinct !DICompileUnit(language: DW_LANG_C99, file: !581, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !102)
!581 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!582 = distinct !DICompileUnit(language: DW_LANG_C99, file: !583, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !102, retainedTypes: !562)
!583 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!584 = distinct !DICompileUnit(language: DW_LANG_C99, file: !585, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !102)
!585 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!586 = distinct !DICompileUnit(language: DW_LANG_C99, file: !587, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !102, retainedTypes: !562)
!587 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!588 = distinct !DICompileUnit(language: DW_LANG_C99, file: !589, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !102, retainedTypes: !562)
!589 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!590 = distinct !DICompileUnit(language: DW_LANG_C99, file: !591, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !102, retainedTypes: !592)
!591 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!592 = !{!32}
!593 = distinct !DICompileUnit(language: DW_LANG_C99, file: !594, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !102)
!594 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!595 = distinct !DICompileUnit(language: DW_LANG_C99, file: !596, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !102, retainedTypes: !597)
!596 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!597 = !{!32, !35, !37, !40}
!598 = !{!"clang version 4.0.1 (tags/RELEASE_401/final)"}
!599 = !{i32 2, !"Dwarf Version", i32 4}
!600 = !{i32 2, !"Debug Info Version", i32 3}
!601 = !{i32 1, !"PIC Level", i32 2}
!602 = !{i32 1, !"PIE Level", i32 2}
!603 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 431, type: !604, isLocal: false, isDefinition: true, scopeLine: 432, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, variables: !606)
!604 = !DISubroutineType(types: !605)
!605 = !{null, !78}
!606 = !{!607}
!607 = !DILocalVariable(name: "status", arg: 1, scope: !603, file: !3, line: 431, type: !78)
!608 = !DIExpression()
!609 = !DILocation(line: 431, column: 12, scope: !603)
!610 = !DILocation(line: 433, column: 14, scope: !611)
!611 = distinct !DILexicalBlock(scope: !603, file: !3, line: 433, column: 7)
!612 = !DILocation(line: 433, column: 7, scope: !603)
!613 = !DILocation(line: 434, column: 5, scope: !614)
!614 = !DILexicalBlockFile(scope: !615, file: !3, discriminator: 1)
!615 = distinct !DILexicalBlock(scope: !611, file: !3, line: 434, column: 5)
!616 = !{!617, !617, i64 0}
!617 = !{!"any pointer", !618, i64 0}
!618 = !{!"omnipotent char", !619, i64 0}
!619 = !{!"Simple C/C++ TBAA"}
!620 = !DILocation(line: 434, column: 5, scope: !621)
!621 = !DILexicalBlockFile(scope: !615, file: !3, discriminator: 3)
!622 = !DILocation(line: 434, column: 5, scope: !623)
!623 = !DILexicalBlockFile(scope: !615, file: !3, discriminator: 2)
!624 = !DILocation(line: 437, column: 7, scope: !625)
!625 = distinct !DILexicalBlock(scope: !611, file: !3, line: 436, column: 5)
!626 = !DILocation(line: 437, column: 7, scope: !627)
!627 = !DILexicalBlockFile(scope: !625, file: !3, discriminator: 1)
!628 = !DILocation(line: 441, column: 7, scope: !625)
!629 = !DILocation(line: 441, column: 7, scope: !627)
!630 = !DILocation(line: 580, column: 3, scope: !631, inlinedAt: !634)
!631 = distinct !DISubprogram(name: "emit_stdin_note", scope: !54, file: !54, line: 578, type: !632, isLocal: true, isDefinition: true, scopeLine: 579, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !102)
!632 = !DISubroutineType(types: !633)
!633 = !{null}
!634 = distinct !DILocation(line: 446, column: 7, scope: !625)
!635 = !DILocation(line: 580, column: 3, scope: !636, inlinedAt: !634)
!636 = !DILexicalBlockFile(scope: !631, file: !54, discriminator: 1)
!637 = !DILocation(line: 587, column: 3, scope: !638, inlinedAt: !639)
!638 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !54, file: !54, line: 585, type: !632, isLocal: true, isDefinition: true, scopeLine: 586, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !102)
!639 = distinct !DILocation(line: 447, column: 7, scope: !625)
!640 = !DILocation(line: 587, column: 3, scope: !641, inlinedAt: !639)
!641 = !DILexicalBlockFile(scope: !638, file: !54, discriminator: 1)
!642 = !DILocation(line: 449, column: 7, scope: !625)
!643 = !DILocation(line: 449, column: 7, scope: !627)
!644 = !DILocation(line: 453, column: 7, scope: !625)
!645 = !DILocation(line: 453, column: 7, scope: !627)
!646 = !DILocation(line: 456, column: 7, scope: !625)
!647 = !DILocation(line: 456, column: 7, scope: !627)
!648 = !DILocation(line: 457, column: 7, scope: !625)
!649 = !DILocation(line: 457, column: 7, scope: !627)
!650 = !DILocation(line: 642, column: 15, scope: !53, inlinedAt: !651)
!651 = distinct !DILocation(line: 459, column: 7, scope: !625)
!652 = !DILocation(line: 651, column: 3, scope: !53, inlinedAt: !651)
!653 = !DILocation(line: 651, column: 3, scope: !654, inlinedAt: !651)
!654 = !DILexicalBlockFile(scope: !53, file: !54, discriminator: 1)
!655 = !DILocation(line: 655, column: 29, scope: !53, inlinedAt: !651)
!656 = !DILocation(line: 655, column: 15, scope: !53, inlinedAt: !651)
!657 = !DILocation(line: 656, column: 7, scope: !73, inlinedAt: !651)
!658 = !DILocation(line: 656, column: 19, scope: !73, inlinedAt: !651)
!659 = !DILocation(line: 656, column: 22, scope: !660, inlinedAt: !651)
!660 = !DILexicalBlockFile(scope: !73, file: !54, discriminator: 16)
!661 = !DILocation(line: 656, column: 7, scope: !662, inlinedAt: !651)
!662 = !DILexicalBlockFile(scope: !53, file: !54, discriminator: 16)
!663 = !DILocation(line: 662, column: 7, scope: !664, inlinedAt: !651)
!664 = distinct !DILexicalBlock(scope: !73, file: !54, line: 657, column: 5)
!665 = !DILocation(line: 662, column: 7, scope: !666, inlinedAt: !651)
!666 = !DILexicalBlockFile(scope: !664, file: !54, discriminator: 1)
!667 = !DILocation(line: 664, column: 5, scope: !664, inlinedAt: !651)
!668 = !DILocation(line: 665, column: 3, scope: !53, inlinedAt: !651)
!669 = !DILocation(line: 665, column: 3, scope: !654, inlinedAt: !651)
!670 = !DILocation(line: 667, column: 3, scope: !53, inlinedAt: !651)
!671 = !DILocation(line: 667, column: 3, scope: !654, inlinedAt: !651)
!672 = !DILocation(line: 461, column: 3, scope: !603)
!673 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 465, type: !674, isLocal: false, isDefinition: true, scopeLine: 466, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !677)
!674 = !DISubroutineType(types: !675)
!675 = !{!78, !78, !676}
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!677 = !{!678, !679, !680, !681, !682, !683}
!678 = !DILocalVariable(name: "argc", arg: 1, scope: !673, file: !3, line: 465, type: !78)
!679 = !DILocalVariable(name: "argv", arg: 2, scope: !673, file: !3, line: 465, type: !676)
!680 = !DILocalVariable(name: "optc", scope: !673, file: !3, line: 467, type: !78)
!681 = !DILocalVariable(name: "delim_arg", scope: !673, file: !3, line: 468, type: !40)
!682 = !DILocalVariable(name: "nfiles", scope: !673, file: !3, line: 507, type: !78)
!683 = !DILocalVariable(name: "ok", scope: !673, file: !3, line: 523, type: !46)
!684 = !DILocation(line: 465, column: 11, scope: !673)
!685 = !DILocation(line: 465, column: 24, scope: !673)
!686 = !DILocation(line: 471, column: 21, scope: !673)
!687 = !DILocation(line: 471, column: 3, scope: !673)
!688 = !DILocation(line: 472, column: 3, scope: !673)
!689 = !DILocation(line: 473, column: 3, scope: !673)
!690 = !DILocation(line: 474, column: 3, scope: !673)
!691 = !DILocation(line: 476, column: 3, scope: !673)
!692 = !DILocation(line: 481, column: 3, scope: !673)
!693 = !DILocation(line: 468, column: 15, scope: !673)
!694 = !DILocation(line: 481, column: 18, scope: !695)
!695 = !DILexicalBlockFile(scope: !673, file: !3, discriminator: 1)
!696 = !DILocation(line: 467, column: 7, scope: !673)
!697 = !DILocation(line: 481, column: 3, scope: !695)
!698 = !DILocation(line: 487, column: 24, scope: !699)
!699 = distinct !DILexicalBlock(scope: !700, file: !3, line: 484, column: 9)
!700 = distinct !DILexicalBlock(scope: !673, file: !3, line: 482, column: 5)
!701 = !{!618, !618, i64 0}
!702 = !DILocation(line: 487, column: 34, scope: !699)
!703 = !DILocation(line: 488, column: 11, scope: !699)
!704 = distinct !{!704, !692, !705}
!705 = !DILocation(line: 505, column: 5, scope: !673)
!706 = !DILocation(line: 492, column: 11, scope: !699)
!707 = !DILocation(line: 498, column: 9, scope: !699)
!708 = !DILocation(line: 500, column: 9, scope: !699)
!709 = !DILocation(line: 500, column: 9, scope: !710)
!710 = !DILexicalBlockFile(scope: !699, file: !3, discriminator: 1)
!711 = !DILocation(line: 503, column: 11, scope: !699)
!712 = !DILocation(line: 507, column: 23, scope: !673)
!713 = !{!714, !714, i64 0}
!714 = !{!"int", !618, i64 0}
!715 = !DILocation(line: 507, column: 21, scope: !673)
!716 = !DILocation(line: 507, column: 7, scope: !673)
!717 = !DILocation(line: 508, column: 14, scope: !718)
!718 = distinct !DILexicalBlock(scope: !673, file: !3, line: 508, column: 7)
!719 = !DILocation(line: 508, column: 7, scope: !673)
!720 = !DILocation(line: 510, column: 7, scope: !721)
!721 = distinct !DILexicalBlock(scope: !718, file: !3, line: 509, column: 5)
!722 = !DILocation(line: 510, column: 20, scope: !721)
!723 = !DILocation(line: 512, column: 5, scope: !721)
!724 = !DILocalVariable(name: "strptr", arg: 1, scope: !725, file: !3, line: 92, type: !40)
!725 = distinct !DISubprogram(name: "collapse_escapes", scope: !3, file: !3, line: 92, type: !726, isLocal: true, isDefinition: true, scopeLine: 93, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !728)
!726 = !DISubroutineType(types: !727)
!727 = !{!78, !40}
!728 = !{!724, !729, !730}
!729 = !DILocalVariable(name: "strout", scope: !725, file: !3, line: 94, type: !29)
!730 = !DILocalVariable(name: "backslash_at_end", scope: !725, file: !3, line: 95, type: !46)
!731 = !DILocation(line: 92, column: 31, scope: !725, inlinedAt: !732)
!732 = distinct !DILocation(line: 514, column: 7, scope: !733)
!733 = distinct !DILexicalBlock(scope: !673, file: !3, line: 514, column: 7)
!734 = !DILocation(line: 94, column: 18, scope: !725, inlinedAt: !732)
!735 = !DILocation(line: 94, column: 9, scope: !725, inlinedAt: !732)
!736 = !DILocation(line: 95, column: 8, scope: !725, inlinedAt: !732)
!737 = !DILocation(line: 97, column: 10, scope: !725, inlinedAt: !732)
!738 = !DILocation(line: 99, column: 10, scope: !739, inlinedAt: !732)
!739 = !DILexicalBlockFile(scope: !725, file: !3, discriminator: 1)
!740 = !DILocation(line: 99, column: 3, scope: !739, inlinedAt: !732)
!741 = !DILocation(line: 101, column: 19, scope: !742, inlinedAt: !732)
!742 = distinct !DILexicalBlock(scope: !743, file: !3, line: 101, column: 11)
!743 = distinct !DILexicalBlock(scope: !725, file: !3, line: 100, column: 5)
!744 = !DILocation(line: 101, column: 11, scope: !743, inlinedAt: !732)
!745 = !DILocation(line: 102, column: 19, scope: !742, inlinedAt: !732)
!746 = !DILocation(line: 102, column: 9, scope: !742, inlinedAt: !732)
!747 = !DILocation(line: 105, column: 19, scope: !748, inlinedAt: !732)
!748 = distinct !DILexicalBlock(scope: !742, file: !3, line: 104, column: 9)
!749 = !DILocation(line: 105, column: 11, scope: !748, inlinedAt: !732)
!750 = !DILocation(line: 109, column: 15, scope: !751, inlinedAt: !732)
!751 = distinct !DILexicalBlock(scope: !748, file: !3, line: 106, column: 13)
!752 = !DILocation(line: 117, column: 15, scope: !751, inlinedAt: !732)
!753 = !DILocation(line: 121, column: 15, scope: !751, inlinedAt: !732)
!754 = !DILocation(line: 125, column: 15, scope: !751, inlinedAt: !732)
!755 = !DILocation(line: 129, column: 15, scope: !751, inlinedAt: !732)
!756 = !DILocation(line: 133, column: 15, scope: !751, inlinedAt: !732)
!757 = !DILocation(line: 137, column: 15, scope: !751, inlinedAt: !732)
!758 = !DILocation(line: 145, column: 15, scope: !751, inlinedAt: !732)
!759 = !DILocation(line: 147, column: 17, scope: !748, inlinedAt: !732)
!760 = distinct !{!760, !761, !762}
!761 = !DILocation(line: 99, column: 3, scope: !725)
!762 = !DILocation(line: 149, column: 5, scope: !725)
!763 = !DILocation(line: 153, column: 13, scope: !725, inlinedAt: !732)
!764 = !DILocation(line: 518, column: 7, scope: !765)
!765 = distinct !DILexicalBlock(scope: !733, file: !3, line: 515, column: 5)
!766 = !DILocation(line: 518, column: 7, scope: !767)
!767 = !DILexicalBlockFile(scope: !765, file: !3, discriminator: 1)
!768 = !DILocation(line: 518, column: 7, scope: !769)
!769 = !DILexicalBlockFile(scope: !765, file: !3, discriminator: 2)
!770 = !DILocation(line: 523, column: 15, scope: !673)
!771 = !DILocation(line: 524, column: 15, scope: !673)
!772 = !DILocation(line: 524, column: 29, scope: !673)
!773 = !DILocation(line: 524, column: 24, scope: !673)
!774 = !DILocation(line: 523, column: 14, scope: !673)
!775 = !DILocation(line: 526, column: 9, scope: !673)
!776 = !DILocation(line: 526, column: 3, scope: !673)
!777 = !DILocation(line: 528, column: 23, scope: !778)
!778 = distinct !DILexicalBlock(scope: !673, file: !3, line: 528, column: 7)
!779 = !DILocation(line: 528, column: 34, scope: !780)
!780 = !DILexicalBlockFile(scope: !778, file: !3, discriminator: 1)
!781 = !DILocation(line: 528, column: 26, scope: !780)
!782 = !DILocation(line: 528, column: 41, scope: !780)
!783 = !DILocation(line: 528, column: 7, scope: !695)
!784 = !DILocation(line: 529, column: 5, scope: !778)
!785 = !DILocation(line: 529, column: 5, scope: !780)
!786 = !DILocation(line: 530, column: 10, scope: !673)
!787 = !DILocation(line: 530, column: 3, scope: !673)
!788 = distinct !DISubprogram(name: "paste_serial", scope: !3, file: !3, line: 349, type: !789, isLocal: true, isDefinition: true, scopeLine: 350, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !791)
!789 = !DISubroutineType(types: !790)
!790 = !{!46, !32, !676}
!791 = !{!792, !793, !794, !795, !796, !797, !798, !854, !858, !859, !861, !862, !864}
!792 = !DILocalVariable(name: "nfiles", arg: 1, scope: !788, file: !3, line: 349, type: !32)
!793 = !DILocalVariable(name: "fnamptr", arg: 2, scope: !788, file: !3, line: 349, type: !676)
!794 = !DILocalVariable(name: "ok", scope: !788, file: !3, line: 351, type: !46)
!795 = !DILocalVariable(name: "charnew", scope: !788, file: !3, line: 352, type: !78)
!796 = !DILocalVariable(name: "charold", scope: !788, file: !3, line: 352, type: !78)
!797 = !DILocalVariable(name: "delimptr", scope: !788, file: !3, line: 353, type: !40)
!798 = !DILocalVariable(name: "fileptr", scope: !788, file: !3, line: 354, type: !799)
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!800 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !801, line: 49, baseType: !802)
!801 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !803, line: 241, size: 1728, elements: !804)
!803 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!804 = !{!805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !825, !826, !827, !828, !832, !833, !835, !839, !842, !844, !845, !846, !847, !848, !849, !850}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !802, file: !803, line: 242, baseType: !78, size: 32)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !802, file: !803, line: 247, baseType: !29, size: 64, offset: 64)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !802, file: !803, line: 248, baseType: !29, size: 64, offset: 128)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !802, file: !803, line: 249, baseType: !29, size: 64, offset: 192)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !802, file: !803, line: 250, baseType: !29, size: 64, offset: 256)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !802, file: !803, line: 251, baseType: !29, size: 64, offset: 320)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !802, file: !803, line: 252, baseType: !29, size: 64, offset: 384)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !802, file: !803, line: 253, baseType: !29, size: 64, offset: 448)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !802, file: !803, line: 254, baseType: !29, size: 64, offset: 512)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !802, file: !803, line: 256, baseType: !29, size: 64, offset: 576)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !802, file: !803, line: 257, baseType: !29, size: 64, offset: 640)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !802, file: !803, line: 258, baseType: !29, size: 64, offset: 704)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !802, file: !803, line: 260, baseType: !818, size: 64, offset: 768)
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !803, line: 156, size: 192, elements: !820)
!820 = !{!821, !822, !824}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !819, file: !803, line: 157, baseType: !818, size: 64)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !819, file: !803, line: 158, baseType: !823, size: 64, offset: 64)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !819, file: !803, line: 162, baseType: !78, size: 32, offset: 128)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !802, file: !803, line: 262, baseType: !823, size: 64, offset: 832)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !802, file: !803, line: 264, baseType: !78, size: 32, offset: 896)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !802, file: !803, line: 268, baseType: !78, size: 32, offset: 928)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !802, file: !803, line: 270, baseType: !829, size: 64, offset: 960)
!829 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !830, line: 140, baseType: !831)
!830 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!831 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !802, file: !803, line: 274, baseType: !152, size: 16, offset: 1024)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !802, file: !803, line: 275, baseType: !834, size: 8, offset: 1040)
!834 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !802, file: !803, line: 276, baseType: !836, size: 8, offset: 1048)
!836 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 8, elements: !837)
!837 = !{!838}
!838 = !DISubrange(count: 1)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !802, file: !803, line: 280, baseType: !840, size: 64, offset: 1088)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!841 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !803, line: 150, baseType: null)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !802, file: !803, line: 289, baseType: !843, size: 64, offset: 1152)
!843 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !830, line: 141, baseType: !831)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !802, file: !803, line: 297, baseType: !31, size: 64, offset: 1216)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !802, file: !803, line: 298, baseType: !31, size: 64, offset: 1280)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !802, file: !803, line: 299, baseType: !31, size: 64, offset: 1344)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !802, file: !803, line: 300, baseType: !31, size: 64, offset: 1408)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !802, file: !803, line: 302, baseType: !32, size: 64, offset: 1472)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !802, file: !803, line: 303, baseType: !78, size: 32, offset: 1536)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !802, file: !803, line: 305, baseType: !851, size: 160, offset: 1568)
!851 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 160, elements: !852)
!852 = !{!853}
!853 = !DISubrange(count: 20)
!854 = !DILocalVariable(name: "saved_errno", scope: !855, file: !3, line: 358, type: !78)
!855 = distinct !DILexicalBlock(scope: !856, file: !3, line: 357, column: 5)
!856 = distinct !DILexicalBlock(scope: !857, file: !3, line: 356, column: 3)
!857 = distinct !DILexicalBlock(scope: !788, file: !3, line: 356, column: 3)
!858 = !DILocalVariable(name: "is_stdin", scope: !855, file: !3, line: 359, type: !46)
!859 = !DILocalVariable(name: "__s1_len", scope: !860, file: !3, line: 359, type: !32)
!860 = distinct !DILexicalBlock(scope: !855, file: !3, line: 359, column: 23)
!861 = !DILocalVariable(name: "__s2_len", scope: !860, file: !3, line: 359, type: !32)
!862 = !DILocalVariable(name: "__s2", scope: !863, file: !3, line: 359, type: !37)
!863 = distinct !DILexicalBlock(scope: !860, file: !3, line: 359, column: 23)
!864 = !DILocalVariable(name: "__result", scope: !863, file: !3, line: 359, type: !78)
!865 = !DILocation(line: 349, column: 22, scope: !788)
!866 = !DILocation(line: 349, column: 37, scope: !788)
!867 = !DILocation(line: 351, column: 8, scope: !788)
!868 = !DILocation(line: 356, column: 3, scope: !869)
!869 = !DILexicalBlockFile(scope: !857, file: !3, discriminator: 1)
!870 = !DILocation(line: 359, column: 23, scope: !860)
!871 = !DILocation(line: 359, column: 23, scope: !872)
!872 = !DILexicalBlockFile(scope: !863, file: !3, discriminator: 2)
!873 = !DILocation(line: 359, column: 23, scope: !863)
!874 = !DILocation(line: 359, column: 23, scope: !875)
!875 = !DILexicalBlockFile(scope: !876, file: !3, discriminator: 3)
!876 = distinct !DILexicalBlock(scope: !863, file: !3, line: 359, column: 23)
!877 = !DILocation(line: 359, column: 23, scope: !878)
!878 = !DILexicalBlockFile(scope: !876, file: !3, discriminator: 2)
!879 = !DILocation(line: 359, column: 23, scope: !880)
!880 = !DILexicalBlockFile(scope: !881, file: !3, discriminator: 4)
!881 = distinct !DILexicalBlock(scope: !876, file: !3, line: 359, column: 23)
!882 = !DILocation(line: 359, column: 23, scope: !883)
!883 = !DILexicalBlockFile(scope: !855, file: !3, discriminator: 13)
!884 = !DILocation(line: 360, column: 11, scope: !855)
!885 = !DILocation(line: 363, column: 21, scope: !886)
!886 = distinct !DILexicalBlock(scope: !887, file: !3, line: 361, column: 9)
!887 = distinct !DILexicalBlock(scope: !855, file: !3, line: 360, column: 11)
!888 = !DILocation(line: 354, column: 9, scope: !788)
!889 = !DILocation(line: 364, column: 9, scope: !886)
!890 = !DILocation(line: 367, column: 21, scope: !891)
!891 = distinct !DILexicalBlock(scope: !887, file: !3, line: 366, column: 9)
!892 = !DILocation(line: 368, column: 23, scope: !893)
!893 = distinct !DILexicalBlock(scope: !891, file: !3, line: 368, column: 15)
!894 = !DILocation(line: 368, column: 15, scope: !891)
!895 = !DILocation(line: 370, column: 25, scope: !896)
!896 = distinct !DILexicalBlock(scope: !893, file: !3, line: 369, column: 13)
!897 = !DILocation(line: 370, column: 38, scope: !896)
!898 = !DILocation(line: 370, column: 38, scope: !899)
!899 = !DILexicalBlockFile(scope: !896, file: !3, discriminator: 1)
!900 = !DILocation(line: 370, column: 15, scope: !901)
!901 = !DILexicalBlockFile(scope: !896, file: !3, discriminator: 2)
!902 = !DILocation(line: 372, column: 15, scope: !896)
!903 = !DILocation(line: 374, column: 11, scope: !891)
!904 = !DILocation(line: 377, column: 18, scope: !855)
!905 = !DILocation(line: 353, column: 15, scope: !788)
!906 = !DILocalVariable(name: "__fp", arg: 1, scope: !907, file: !908, line: 63, type: !799)
!907 = distinct !DISubprogram(name: "getc_unlocked", scope: !908, file: !908, line: 63, type: !909, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !911)
!908 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!909 = !DISubroutineType(types: !910)
!910 = !{!78, !799}
!911 = !{!906}
!912 = !DILocation(line: 63, column: 22, scope: !907, inlinedAt: !913)
!913 = distinct !DILocation(line: 379, column: 17, scope: !855)
!914 = !DILocation(line: 65, column: 10, scope: !907, inlinedAt: !913)
!915 = !{!916, !617, i64 8}
!916 = !{!"_IO_FILE", !714, i64 0, !617, i64 8, !617, i64 16, !617, i64 24, !617, i64 32, !617, i64 40, !617, i64 48, !617, i64 56, !617, i64 64, !617, i64 72, !617, i64 80, !617, i64 88, !617, i64 96, !617, i64 104, !714, i64 112, !714, i64 116, !917, i64 120, !918, i64 128, !618, i64 130, !618, i64 131, !617, i64 136, !917, i64 144, !617, i64 152, !617, i64 160, !617, i64 168, !617, i64 176, !917, i64 184, !714, i64 192, !618, i64 196}
!917 = !{!"long", !618, i64 0}
!918 = !{!"short", !618, i64 0}
!919 = !{!916, !617, i64 16}
!920 = !{!"branch_weights", i32 2000, i32 1}
!921 = !DILocation(line: 65, column: 10, scope: !922, inlinedAt: !913)
!922 = !DILexicalBlockFile(scope: !907, file: !908, discriminator: 2)
!923 = !DILocation(line: 352, column: 16, scope: !788)
!924 = !DILocation(line: 380, column: 21, scope: !855)
!925 = !DILocation(line: 358, column: 11, scope: !855)
!926 = !DILocation(line: 381, column: 11, scope: !855)
!927 = !DILocation(line: 65, column: 10, scope: !928, inlinedAt: !913)
!928 = !DILexicalBlockFile(scope: !907, file: !908, discriminator: 1)
!929 = !DILocation(line: 381, column: 19, scope: !930)
!930 = distinct !DILexicalBlock(scope: !855, file: !3, line: 381, column: 11)
!931 = !DILocation(line: 411, column: 22, scope: !932)
!932 = distinct !DILexicalBlock(scope: !855, file: !3, line: 411, column: 11)
!933 = !DILocation(line: 411, column: 11, scope: !855)
!934 = !DILocation(line: 63, column: 22, scope: !907, inlinedAt: !935)
!935 = distinct !DILocation(line: 389, column: 29, scope: !936)
!936 = !DILexicalBlockFile(scope: !937, file: !3, discriminator: 1)
!937 = distinct !DILexicalBlock(scope: !930, file: !3, line: 382, column: 9)
!938 = !DILocation(line: 65, column: 10, scope: !907, inlinedAt: !935)
!939 = !DILocation(line: 65, column: 10, scope: !922, inlinedAt: !935)
!940 = !DILocation(line: 352, column: 7, scope: !788)
!941 = !DILocation(line: 389, column: 11, scope: !936)
!942 = !DILocation(line: 65, column: 10, scope: !928, inlinedAt: !935)
!943 = !DILocation(line: 389, column: 45, scope: !936)
!944 = !DILocation(line: 392, column: 30, scope: !945)
!945 = distinct !DILexicalBlock(scope: !946, file: !3, line: 392, column: 19)
!946 = distinct !DILexicalBlock(scope: !937, file: !3, line: 390, column: 13)
!947 = !DILocation(line: 392, column: 27, scope: !945)
!948 = !DILocation(line: 392, column: 19, scope: !946)
!949 = !DILocation(line: 394, column: 23, scope: !950)
!950 = distinct !DILexicalBlock(scope: !951, file: !3, line: 394, column: 23)
!951 = distinct !DILexicalBlock(scope: !945, file: !3, line: 393, column: 17)
!952 = !DILocation(line: 394, column: 33, scope: !950)
!953 = !DILocation(line: 394, column: 23, scope: !951)
!954 = !DILocalVariable(name: "c", arg: 1, scope: !955, file: !3, line: 169, type: !30)
!955 = distinct !DISubprogram(name: "xputchar", scope: !3, file: !3, line: 169, type: !956, isLocal: true, isDefinition: true, scopeLine: 170, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !958)
!956 = !DISubroutineType(types: !957)
!957 = !{null, !30}
!958 = !{!954}
!959 = !DILocation(line: 169, column: 16, scope: !955, inlinedAt: !960)
!960 = distinct !DILocation(line: 395, column: 21, scope: !950)
!961 = !DILocation(line: 107, column: 10, scope: !962, inlinedAt: !967)
!962 = distinct !DISubprogram(name: "putchar_unlocked", scope: !908, file: !908, line: 105, type: !963, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !965)
!963 = !DISubroutineType(types: !964)
!964 = !{!78, !78}
!965 = !{!966}
!966 = !DILocalVariable(name: "__c", arg: 1, scope: !962, file: !908, line: 105, type: !78)
!967 = distinct !DILocation(line: 171, column: 7, scope: !968, inlinedAt: !960)
!968 = distinct !DILexicalBlock(scope: !955, file: !3, line: 171, column: 7)
!969 = !{!916, !617, i64 40}
!970 = !{!916, !617, i64 48}
!971 = !DILocation(line: 107, column: 10, scope: !972, inlinedAt: !967)
!972 = !DILexicalBlockFile(scope: !962, file: !908, discriminator: 2)
!973 = !DILocation(line: 171, column: 7, scope: !955, inlinedAt: !960)
!974 = !DILocation(line: 171, column: 7, scope: !968, inlinedAt: !960)
!975 = !DILocation(line: 107, column: 10, scope: !976, inlinedAt: !967)
!976 = !DILexicalBlockFile(scope: !962, file: !908, discriminator: 1)
!977 = !DILocation(line: 171, column: 19, scope: !968, inlinedAt: !960)
!978 = !DILocation(line: 172, column: 5, scope: !968, inlinedAt: !960)
!979 = !DILocation(line: 397, column: 23, scope: !980)
!980 = distinct !DILexicalBlock(scope: !951, file: !3, line: 397, column: 23)
!981 = !DILocation(line: 397, column: 37, scope: !980)
!982 = !DILocation(line: 397, column: 34, scope: !980)
!983 = !DILocation(line: 398, column: 32, scope: !980)
!984 = !DILocation(line: 397, column: 23, scope: !951)
!985 = !DILocation(line: 169, column: 16, scope: !955, inlinedAt: !986)
!986 = distinct !DILocation(line: 401, column: 17, scope: !945)
!987 = !DILocation(line: 107, column: 10, scope: !962, inlinedAt: !988)
!988 = distinct !DILocation(line: 171, column: 7, scope: !968, inlinedAt: !986)
!989 = !DILocation(line: 401, column: 27, scope: !945)
!990 = !DILocation(line: 107, column: 10, scope: !972, inlinedAt: !988)
!991 = !DILocation(line: 171, column: 7, scope: !955, inlinedAt: !986)
!992 = distinct !{!992, !993, !994}
!993 = !DILocation(line: 389, column: 11, scope: !937)
!994 = !DILocation(line: 404, column: 13, scope: !937)
!995 = !DILocation(line: 171, column: 7, scope: !968, inlinedAt: !986)
!996 = !DILocation(line: 107, column: 10, scope: !976, inlinedAt: !988)
!997 = !DILocation(line: 171, column: 19, scope: !968, inlinedAt: !986)
!998 = !DILocation(line: 172, column: 5, scope: !968, inlinedAt: !986)
!999 = !DILocation(line: 405, column: 25, scope: !937)
!1000 = !DILocation(line: 169, column: 16, scope: !955, inlinedAt: !1001)
!1001 = distinct !DILocation(line: 408, column: 11, scope: !937)
!1002 = !DILocation(line: 107, column: 10, scope: !962, inlinedAt: !1003)
!1003 = distinct !DILocation(line: 171, column: 7, scope: !968, inlinedAt: !1001)
!1004 = !DILocation(line: 408, column: 21, scope: !937)
!1005 = !DILocation(line: 107, column: 10, scope: !972, inlinedAt: !1003)
!1006 = !DILocation(line: 171, column: 7, scope: !955, inlinedAt: !1001)
!1007 = !DILocation(line: 171, column: 7, scope: !968, inlinedAt: !1001)
!1008 = !DILocation(line: 107, column: 10, scope: !976, inlinedAt: !1003)
!1009 = !DILocation(line: 171, column: 19, scope: !968, inlinedAt: !1001)
!1010 = !DILocation(line: 172, column: 5, scope: !968, inlinedAt: !1001)
!1011 = !DILocation(line: 411, column: 19, scope: !932)
!1012 = !DILocation(line: 169, column: 16, scope: !955, inlinedAt: !1013)
!1013 = distinct !DILocation(line: 412, column: 9, scope: !932)
!1014 = !DILocation(line: 107, column: 10, scope: !962, inlinedAt: !1015)
!1015 = distinct !DILocation(line: 171, column: 7, scope: !968, inlinedAt: !1013)
!1016 = !DILocation(line: 107, column: 10, scope: !972, inlinedAt: !1015)
!1017 = !DILocation(line: 171, column: 7, scope: !955, inlinedAt: !1013)
!1018 = !DILocation(line: 107, column: 10, scope: !976, inlinedAt: !1015)
!1019 = !DILocation(line: 171, column: 19, scope: !968, inlinedAt: !1013)
!1020 = !DILocation(line: 172, column: 5, scope: !968, inlinedAt: !1013)
!1021 = !DILocalVariable(name: "__stream", arg: 1, scope: !1022, file: !908, line: 132, type: !799)
!1022 = distinct !DISubprogram(name: "ferror_unlocked", scope: !908, file: !908, line: 132, type: !909, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1023)
!1023 = !{!1021}
!1024 = !DILocation(line: 132, column: 1, scope: !1022, inlinedAt: !1025)
!1025 = distinct !DILocation(line: 414, column: 11, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !855, file: !3, line: 414, column: 11)
!1027 = !DILocation(line: 134, column: 10, scope: !1022, inlinedAt: !1025)
!1028 = !{!916, !714, i64 0}
!1029 = !DILocation(line: 414, column: 11, scope: !1026)
!1030 = !DILocation(line: 414, column: 11, scope: !855)
!1031 = !DILocation(line: 416, column: 40, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !1026, file: !3, line: 415, column: 9)
!1033 = !DILocation(line: 416, column: 11, scope: !1034)
!1034 = !DILexicalBlockFile(scope: !1032, file: !3, discriminator: 1)
!1035 = !DILocation(line: 418, column: 9, scope: !1032)
!1036 = !DILocation(line: 419, column: 11, scope: !855)
!1037 = !DILocation(line: 420, column: 9, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !855, file: !3, line: 419, column: 11)
!1039 = !DILocation(line: 421, column: 16, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !1038, file: !3, line: 421, column: 16)
!1041 = !DILocation(line: 421, column: 33, scope: !1040)
!1042 = !DILocation(line: 421, column: 16, scope: !1038)
!1043 = !DILocation(line: 423, column: 21, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !1040, file: !3, line: 422, column: 9)
!1045 = !DILocation(line: 423, column: 34, scope: !1044)
!1046 = !DILocation(line: 423, column: 34, scope: !1047)
!1047 = !DILexicalBlockFile(scope: !1044, file: !3, discriminator: 1)
!1048 = !DILocation(line: 423, column: 11, scope: !1049)
!1049 = !DILexicalBlockFile(scope: !1044, file: !3, discriminator: 2)
!1050 = !DILocation(line: 425, column: 9, scope: !1044)
!1051 = !DILocation(line: 356, column: 24, scope: !1052)
!1052 = !DILexicalBlockFile(scope: !856, file: !3, discriminator: 2)
!1053 = !DILocation(line: 356, column: 35, scope: !1052)
!1054 = distinct !{!1054, !1055, !1056}
!1055 = !DILocation(line: 356, column: 3, scope: !857)
!1056 = !DILocation(line: 426, column: 5, scope: !857)
!1057 = !DILocation(line: 427, column: 10, scope: !788)
!1058 = !DILocation(line: 427, column: 3, scope: !788)
!1059 = distinct !DISubprogram(name: "paste_parallel", scope: !3, file: !3, line: 180, type: !789, isLocal: true, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1060)
!1060 = !{!1061, !1062, !1063, !1064, !1065, !1067, !1068, !1069, !1075, !1076, !1078, !1079, !1081, !1082, !1083, !1084, !1088, !1089, !1090}
!1061 = !DILocalVariable(name: "nfiles", arg: 1, scope: !1059, file: !3, line: 180, type: !32)
!1062 = !DILocalVariable(name: "fnamptr", arg: 2, scope: !1059, file: !3, line: 180, type: !676)
!1063 = !DILocalVariable(name: "ok", scope: !1059, file: !3, line: 182, type: !46)
!1064 = !DILocalVariable(name: "delbuf", scope: !1059, file: !3, line: 187, type: !29)
!1065 = !DILocalVariable(name: "fileptr", scope: !1059, file: !3, line: 191, type: !1066)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!1067 = !DILocalVariable(name: "files_open", scope: !1059, file: !3, line: 194, type: !32)
!1068 = !DILocalVariable(name: "opened_stdin", scope: !1059, file: !3, line: 197, type: !46)
!1069 = !DILocalVariable(name: "__s1_len", scope: !1070, file: !3, line: 205, type: !32)
!1070 = distinct !DILexicalBlock(scope: !1071, file: !3, line: 205, column: 11)
!1071 = distinct !DILexicalBlock(scope: !1072, file: !3, line: 205, column: 11)
!1072 = distinct !DILexicalBlock(scope: !1073, file: !3, line: 204, column: 5)
!1073 = distinct !DILexicalBlock(scope: !1074, file: !3, line: 203, column: 3)
!1074 = distinct !DILexicalBlock(scope: !1059, file: !3, line: 203, column: 3)
!1075 = !DILocalVariable(name: "__s2_len", scope: !1070, file: !3, line: 205, type: !32)
!1076 = !DILocalVariable(name: "__s2", scope: !1077, file: !3, line: 205, type: !37)
!1077 = distinct !DILexicalBlock(scope: !1070, file: !3, line: 205, column: 11)
!1078 = !DILocalVariable(name: "__result", scope: !1077, file: !3, line: 205, type: !78)
!1079 = !DILocalVariable(name: "somedone", scope: !1080, file: !3, line: 231, type: !46)
!1080 = distinct !DILexicalBlock(scope: !1059, file: !3, line: 229, column: 5)
!1081 = !DILocalVariable(name: "delimptr", scope: !1080, file: !3, line: 232, type: !40)
!1082 = !DILocalVariable(name: "delims_saved", scope: !1080, file: !3, line: 233, type: !32)
!1083 = !DILocalVariable(name: "i", scope: !1080, file: !3, line: 234, type: !32)
!1084 = !DILocalVariable(name: "chr", scope: !1085, file: !3, line: 238, type: !78)
!1085 = distinct !DILexicalBlock(scope: !1086, file: !3, line: 237, column: 9)
!1086 = distinct !DILexicalBlock(scope: !1087, file: !3, line: 236, column: 7)
!1087 = distinct !DILexicalBlock(scope: !1080, file: !3, line: 236, column: 7)
!1088 = !DILocalVariable(name: "err", scope: !1085, file: !3, line: 239, type: !78)
!1089 = !DILocalVariable(name: "sometodo", scope: !1085, file: !3, line: 240, type: !46)
!1090 = !DILocalVariable(name: "c", scope: !1091, file: !3, line: 333, type: !30)
!1091 = distinct !DILexicalBlock(scope: !1092, file: !3, line: 330, column: 17)
!1092 = distinct !DILexicalBlock(scope: !1093, file: !3, line: 320, column: 19)
!1093 = distinct !DILexicalBlock(scope: !1094, file: !3, line: 315, column: 13)
!1094 = distinct !DILexicalBlock(scope: !1085, file: !3, line: 264, column: 15)
!1095 = !DILocation(line: 180, column: 24, scope: !1059)
!1096 = !DILocation(line: 180, column: 39, scope: !1059)
!1097 = !DILocation(line: 182, column: 8, scope: !1059)
!1098 = !DILocation(line: 187, column: 34, scope: !1059)
!1099 = !DILocation(line: 187, column: 18, scope: !1059)
!1100 = !DILocation(line: 187, column: 9, scope: !1059)
!1101 = !DILocation(line: 191, column: 37, scope: !1059)
!1102 = !DILocalVariable(name: "n", arg: 1, scope: !1103, file: !567, line: 105, type: !32)
!1103 = distinct !DISubprogram(name: "xnmalloc", scope: !567, file: !567, line: 105, type: !1104, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1106)
!1104 = !DISubroutineType(types: !1105)
!1105 = !{!31, !32, !32}
!1106 = !{!1102, !1107}
!1107 = !DILocalVariable(name: "s", arg: 2, scope: !1103, file: !567, line: 105, type: !32)
!1108 = !DILocation(line: 105, column: 18, scope: !1103, inlinedAt: !1109)
!1109 = distinct !DILocation(line: 191, column: 20, scope: !1059)
!1110 = !DILocation(line: 105, column: 28, scope: !1103, inlinedAt: !1109)
!1111 = !DILocation(line: 107, column: 7, scope: !1112, inlinedAt: !1109)
!1112 = distinct !DILexicalBlock(scope: !1103, file: !567, line: 107, column: 7)
!1113 = !DILocation(line: 107, column: 7, scope: !1103, inlinedAt: !1109)
!1114 = !DILocation(line: 108, column: 5, scope: !1112, inlinedAt: !1109)
!1115 = !DILocation(line: 109, column: 21, scope: !1103, inlinedAt: !1109)
!1116 = !DILocation(line: 109, column: 10, scope: !1103, inlinedAt: !1109)
!1117 = !DILocation(line: 191, column: 20, scope: !1059)
!1118 = !DILocation(line: 191, column: 10, scope: !1059)
!1119 = !DILocation(line: 197, column: 8, scope: !1059)
!1120 = !DILocation(line: 194, column: 10, scope: !1059)
!1121 = !DILocation(line: 203, column: 35, scope: !1122)
!1122 = !DILexicalBlockFile(scope: !1073, file: !3, discriminator: 1)
!1123 = !DILocation(line: 203, column: 3, scope: !1124)
!1124 = !DILexicalBlockFile(scope: !1074, file: !3, discriminator: 1)
!1125 = !DILocation(line: 205, column: 11, scope: !1070)
!1126 = !DILocation(line: 205, column: 11, scope: !1127)
!1127 = !DILexicalBlockFile(scope: !1077, file: !3, discriminator: 2)
!1128 = !DILocation(line: 205, column: 11, scope: !1077)
!1129 = !DILocation(line: 205, column: 11, scope: !1130)
!1130 = !DILexicalBlockFile(scope: !1131, file: !3, discriminator: 3)
!1131 = distinct !DILexicalBlock(scope: !1077, file: !3, line: 205, column: 11)
!1132 = !DILocation(line: 205, column: 11, scope: !1133)
!1133 = !DILexicalBlockFile(scope: !1131, file: !3, discriminator: 2)
!1134 = !DILocation(line: 205, column: 11, scope: !1135)
!1135 = !DILexicalBlockFile(scope: !1136, file: !3, discriminator: 4)
!1136 = distinct !DILexicalBlock(scope: !1131, file: !3, line: 205, column: 11)
!1137 = !DILocation(line: 205, column: 11, scope: !1138)
!1138 = !DILexicalBlockFile(scope: !1071, file: !3, discriminator: 13)
!1139 = !DILocation(line: 205, column: 11, scope: !1140)
!1140 = !DILexicalBlockFile(scope: !1072, file: !3, discriminator: 13)
!1141 = !DILocation(line: 208, column: 33, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !1071, file: !3, line: 206, column: 9)
!1143 = !DILocation(line: 208, column: 11, scope: !1142)
!1144 = !DILocation(line: 208, column: 31, scope: !1142)
!1145 = !DILocation(line: 209, column: 9, scope: !1142)
!1146 = !DILocation(line: 212, column: 33, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !1071, file: !3, line: 211, column: 9)
!1148 = !DILocation(line: 212, column: 11, scope: !1147)
!1149 = !DILocation(line: 212, column: 31, scope: !1147)
!1150 = !DILocation(line: 213, column: 35, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !1147, file: !3, line: 213, column: 15)
!1152 = !DILocation(line: 213, column: 15, scope: !1147)
!1153 = !DILocation(line: 214, column: 13, scope: !1151)
!1154 = !DILocation(line: 214, column: 13, scope: !1155)
!1155 = !DILexicalBlockFile(scope: !1151, file: !3, discriminator: 1)
!1156 = !DILocation(line: 214, column: 13, scope: !1157)
!1157 = !DILexicalBlockFile(scope: !1151, file: !3, discriminator: 2)
!1158 = !DILocation(line: 215, column: 20, scope: !1159)
!1159 = distinct !DILexicalBlock(scope: !1151, file: !3, line: 215, column: 20)
!1160 = !DILocation(line: 215, column: 49, scope: !1159)
!1161 = !DILocation(line: 215, column: 20, scope: !1151)
!1162 = !DILocation(line: 217, column: 11, scope: !1147)
!1163 = !DILocation(line: 203, column: 45, scope: !1164)
!1164 = !DILexicalBlockFile(scope: !1073, file: !3, discriminator: 2)
!1165 = distinct !{!1165, !1166, !1167}
!1166 = !DILocation(line: 203, column: 3, scope: !1074)
!1167 = !DILocation(line: 219, column: 5, scope: !1074)
!1168 = !DILocation(line: 221, column: 7, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1059, file: !3, line: 221, column: 7)
!1170 = !DILocation(line: 221, column: 20, scope: !1169)
!1171 = !DILocation(line: 239, column: 15, scope: !1085)
!1172 = !DILocation(line: 238, column: 15, scope: !1085)
!1173 = !DILocation(line: 228, column: 3, scope: !1174)
!1174 = !DILexicalBlockFile(scope: !1059, file: !3, discriminator: 1)
!1175 = !DILocation(line: 221, column: 7, scope: !1174)
!1176 = !DILocation(line: 222, column: 5, scope: !1169)
!1177 = !DILocation(line: 222, column: 5, scope: !1178)
!1178 = !DILexicalBlockFile(scope: !1169, file: !3, discriminator: 1)
!1179 = !DILocation(line: 231, column: 12, scope: !1080)
!1180 = !DILocation(line: 232, column: 19, scope: !1080)
!1181 = !DILocation(line: 233, column: 14, scope: !1080)
!1182 = !DILocation(line: 234, column: 14, scope: !1080)
!1183 = !DILocation(line: 236, column: 7, scope: !1184)
!1184 = !DILexicalBlockFile(scope: !1087, file: !3, discriminator: 3)
!1185 = distinct !{!1185, !1186, !1187}
!1186 = !DILocation(line: 228, column: 3, scope: !1059)
!1187 = !DILocation(line: 338, column: 5, scope: !1059)
!1188 = !DILocation(line: 232, column: 30, scope: !1080)
!1189 = !DILocation(line: 240, column: 16, scope: !1085)
!1190 = !DILocation(line: 242, column: 15, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !1085, file: !3, line: 242, column: 15)
!1192 = !DILocation(line: 242, column: 15, scope: !1085)
!1193 = !DILocation(line: 63, column: 22, scope: !907, inlinedAt: !1194)
!1194 = distinct !DILocation(line: 244, column: 21, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1191, file: !3, line: 243, column: 13)
!1196 = !DILocation(line: 65, column: 10, scope: !907, inlinedAt: !1194)
!1197 = !DILocation(line: 65, column: 10, scope: !928, inlinedAt: !1194)
!1198 = !DILocation(line: 65, column: 10, scope: !922, inlinedAt: !1194)
!1199 = !DILocation(line: 65, column: 10, scope: !1200, inlinedAt: !1194)
!1200 = !DILexicalBlockFile(scope: !907, file: !908, discriminator: 3)
!1201 = !DILocation(line: 245, column: 21, scope: !1195)
!1202 = !DILocation(line: 246, column: 23, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !1195, file: !3, line: 246, column: 19)
!1204 = !DILocation(line: 246, column: 33, scope: !1205)
!1205 = !DILexicalBlockFile(scope: !1203, file: !3, discriminator: 1)
!1206 = !DILocation(line: 246, column: 30, scope: !1203)
!1207 = !DILocation(line: 248, column: 23, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !1209, file: !3, line: 248, column: 23)
!1209 = distinct !DILexicalBlock(scope: !1203, file: !3, line: 247, column: 17)
!1210 = !DILocation(line: 248, column: 64, scope: !1208)
!1211 = !DILocation(line: 248, column: 23, scope: !1209)
!1212 = !DILocation(line: 253, column: 26, scope: !1213)
!1213 = !DILexicalBlockFile(scope: !1195, file: !3, discriminator: 1)
!1214 = !DILocation(line: 253, column: 15, scope: !1213)
!1215 = !DILocation(line: 256, column: 30, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !1217, file: !3, line: 256, column: 23)
!1217 = distinct !DILexicalBlock(scope: !1195, file: !3, line: 254, column: 17)
!1218 = !DILocation(line: 256, column: 27, scope: !1216)
!1219 = !DILocation(line: 256, column: 23, scope: !1217)
!1220 = !DILocation(line: 169, column: 16, scope: !955, inlinedAt: !1221)
!1221 = distinct !DILocation(line: 258, column: 19, scope: !1217)
!1222 = !DILocation(line: 249, column: 21, scope: !1208)
!1223 = !DILocation(line: 107, column: 10, scope: !962, inlinedAt: !1224)
!1224 = distinct !DILocation(line: 171, column: 7, scope: !968, inlinedAt: !1221)
!1225 = !DILocation(line: 258, column: 29, scope: !1217)
!1226 = !DILocation(line: 107, column: 10, scope: !972, inlinedAt: !1224)
!1227 = !DILocation(line: 171, column: 7, scope: !955, inlinedAt: !1221)
!1228 = !DILocation(line: 171, column: 7, scope: !968, inlinedAt: !1221)
!1229 = !DILocation(line: 107, column: 10, scope: !976, inlinedAt: !1224)
!1230 = !DILocation(line: 171, column: 19, scope: !968, inlinedAt: !1221)
!1231 = !DILocation(line: 172, column: 5, scope: !968, inlinedAt: !1221)
!1232 = !DILocation(line: 63, column: 22, scope: !907, inlinedAt: !1233)
!1233 = distinct !DILocation(line: 259, column: 25, scope: !1217)
!1234 = !DILocation(line: 65, column: 10, scope: !907, inlinedAt: !1233)
!1235 = !DILocation(line: 65, column: 10, scope: !922, inlinedAt: !1233)
!1236 = !DILocation(line: 65, column: 10, scope: !928, inlinedAt: !1233)
!1237 = distinct !{!1237, !1238, !1239}
!1238 = !DILocation(line: 253, column: 15, scope: !1195)
!1239 = !DILocation(line: 261, column: 17, scope: !1195)
!1240 = !DILocation(line: 132, column: 1, scope: !1022, inlinedAt: !1241)
!1241 = distinct !DILocation(line: 270, column: 23, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !1243, file: !3, line: 270, column: 23)
!1243 = distinct !DILexicalBlock(scope: !1244, file: !3, line: 269, column: 17)
!1244 = distinct !DILexicalBlock(scope: !1245, file: !3, line: 268, column: 19)
!1245 = distinct !DILexicalBlock(scope: !1094, file: !3, line: 265, column: 13)
!1246 = !DILocation(line: 134, column: 10, scope: !1022, inlinedAt: !1241)
!1247 = !DILocation(line: 270, column: 23, scope: !1242)
!1248 = !DILocation(line: 270, column: 23, scope: !1243)
!1249 = !DILocation(line: 272, column: 44, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !1242, file: !3, line: 271, column: 21)
!1251 = !DILocation(line: 272, column: 23, scope: !1252)
!1252 = !DILexicalBlockFile(scope: !1250, file: !3, discriminator: 1)
!1253 = !DILocation(line: 274, column: 21, scope: !1250)
!1254 = !DILocation(line: 275, column: 37, scope: !1255)
!1255 = distinct !DILexicalBlock(scope: !1243, file: !3, line: 275, column: 23)
!1256 = !DILocation(line: 275, column: 34, scope: !1255)
!1257 = !DILocation(line: 275, column: 23, scope: !1243)
!1258 = !DILocation(line: 276, column: 21, scope: !1255)
!1259 = !DILocation(line: 277, column: 28, scope: !1260)
!1260 = distinct !DILexicalBlock(scope: !1255, file: !3, line: 277, column: 28)
!1261 = !DILocation(line: 277, column: 48, scope: !1260)
!1262 = !DILocation(line: 277, column: 28, scope: !1255)
!1263 = !DILocation(line: 279, column: 33, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !1260, file: !3, line: 278, column: 21)
!1265 = !DILocation(line: 279, column: 46, scope: !1264)
!1266 = !DILocation(line: 279, column: 46, scope: !1267)
!1267 = !DILexicalBlockFile(scope: !1264, file: !3, discriminator: 1)
!1268 = !DILocation(line: 279, column: 23, scope: !1269)
!1269 = !DILexicalBlockFile(scope: !1264, file: !3, discriminator: 2)
!1270 = !DILocation(line: 281, column: 21, scope: !1264)
!1271 = !DILocation(line: 283, column: 30, scope: !1243)
!1272 = !DILocation(line: 284, column: 29, scope: !1243)
!1273 = !DILocation(line: 285, column: 17, scope: !1243)
!1274 = !DILocation(line: 287, column: 21, scope: !1275)
!1275 = distinct !DILexicalBlock(scope: !1245, file: !3, line: 287, column: 19)
!1276 = !DILocation(line: 287, column: 25, scope: !1275)
!1277 = !DILocation(line: 287, column: 19, scope: !1245)
!1278 = !DILocation(line: 291, column: 23, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !1280, file: !3, line: 291, column: 23)
!1280 = distinct !DILexicalBlock(scope: !1275, file: !3, line: 288, column: 17)
!1281 = !DILocation(line: 291, column: 23, scope: !1280)
!1282 = !DILocation(line: 294, column: 27, scope: !1283)
!1283 = distinct !DILexicalBlock(scope: !1284, file: !3, line: 294, column: 27)
!1284 = distinct !DILexicalBlock(scope: !1279, file: !3, line: 292, column: 21)
!1285 = !DILocation(line: 294, column: 27, scope: !1284)
!1286 = !DILocation(line: 296, column: 31, scope: !1287)
!1287 = distinct !DILexicalBlock(scope: !1288, file: !3, line: 296, column: 31)
!1288 = distinct !DILexicalBlock(scope: !1283, file: !3, line: 295, column: 25)
!1289 = !DILocation(line: 297, column: 31, scope: !1287)
!1290 = !DILocation(line: 296, column: 31, scope: !1288)
!1291 = !DILocation(line: 298, column: 29, scope: !1287)
!1292 = !DILocation(line: 169, column: 16, scope: !955, inlinedAt: !1293)
!1293 = distinct !DILocation(line: 301, column: 23, scope: !1284)
!1294 = !DILocation(line: 107, column: 10, scope: !962, inlinedAt: !1295)
!1295 = distinct !DILocation(line: 171, column: 7, scope: !968, inlinedAt: !1293)
!1296 = !DILocation(line: 107, column: 10, scope: !972, inlinedAt: !1295)
!1297 = !DILocation(line: 171, column: 7, scope: !955, inlinedAt: !1293)
!1298 = !DILocation(line: 171, column: 7, scope: !968, inlinedAt: !1293)
!1299 = !DILocation(line: 107, column: 10, scope: !976, inlinedAt: !1295)
!1300 = !DILocation(line: 171, column: 19, scope: !968, inlinedAt: !1293)
!1301 = !DILocation(line: 172, column: 5, scope: !968, inlinedAt: !1293)
!1302 = !DILocation(line: 308, column: 23, scope: !1303)
!1303 = distinct !DILexicalBlock(scope: !1304, file: !3, line: 308, column: 23)
!1304 = distinct !DILexicalBlock(scope: !1275, file: !3, line: 306, column: 17)
!1305 = !DILocation(line: 308, column: 33, scope: !1303)
!1306 = !DILocation(line: 308, column: 23, scope: !1304)
!1307 = !DILocation(line: 309, column: 40, scope: !1303)
!1308 = !DILocation(line: 309, column: 21, scope: !1303)
!1309 = !DILocation(line: 309, column: 44, scope: !1303)
!1310 = !DILocation(line: 310, column: 23, scope: !1311)
!1311 = distinct !DILexicalBlock(scope: !1304, file: !3, line: 310, column: 23)
!1312 = !DILocation(line: 310, column: 37, scope: !1311)
!1313 = !DILocation(line: 310, column: 34, scope: !1311)
!1314 = !DILocation(line: 311, column: 32, scope: !1311)
!1315 = !DILocation(line: 310, column: 23, scope: !1304)
!1316 = !DILocation(line: 320, column: 21, scope: !1092)
!1317 = !DILocation(line: 320, column: 25, scope: !1092)
!1318 = !DILocation(line: 320, column: 19, scope: !1093)
!1319 = !DILocation(line: 322, column: 30, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !1321, file: !3, line: 322, column: 23)
!1321 = distinct !DILexicalBlock(scope: !1092, file: !3, line: 321, column: 17)
!1322 = !DILocation(line: 322, column: 27, scope: !1320)
!1323 = !DILocation(line: 322, column: 48, scope: !1324)
!1324 = !DILexicalBlockFile(scope: !1320, file: !3, discriminator: 1)
!1325 = !DILocation(line: 322, column: 41, scope: !1320)
!1326 = !DILocation(line: 169, column: 16, scope: !955, inlinedAt: !1327)
!1327 = distinct !DILocation(line: 323, column: 21, scope: !1320)
!1328 = !DILocation(line: 107, column: 10, scope: !962, inlinedAt: !1329)
!1329 = distinct !DILocation(line: 171, column: 7, scope: !968, inlinedAt: !1327)
!1330 = !DILocation(line: 323, column: 31, scope: !1320)
!1331 = !DILocation(line: 107, column: 10, scope: !972, inlinedAt: !1329)
!1332 = !DILocation(line: 171, column: 7, scope: !955, inlinedAt: !1327)
!1333 = !DILocation(line: 171, column: 7, scope: !968, inlinedAt: !1327)
!1334 = !DILocation(line: 107, column: 10, scope: !976, inlinedAt: !1329)
!1335 = !DILocation(line: 171, column: 19, scope: !968, inlinedAt: !1327)
!1336 = !DILocation(line: 172, column: 5, scope: !968, inlinedAt: !1327)
!1337 = !DILocation(line: 324, column: 23, scope: !1338)
!1338 = distinct !DILexicalBlock(scope: !1321, file: !3, line: 324, column: 23)
!1339 = !DILocation(line: 324, column: 33, scope: !1338)
!1340 = !DILocation(line: 324, column: 23, scope: !1321)
!1341 = !DILocation(line: 169, column: 16, scope: !955, inlinedAt: !1342)
!1342 = distinct !DILocation(line: 325, column: 21, scope: !1338)
!1343 = !DILocation(line: 107, column: 10, scope: !962, inlinedAt: !1344)
!1344 = distinct !DILocation(line: 171, column: 7, scope: !968, inlinedAt: !1342)
!1345 = !DILocation(line: 107, column: 10, scope: !972, inlinedAt: !1344)
!1346 = !DILocation(line: 171, column: 7, scope: !955, inlinedAt: !1342)
!1347 = !DILocation(line: 171, column: 7, scope: !968, inlinedAt: !1342)
!1348 = !DILocation(line: 107, column: 10, scope: !976, inlinedAt: !1344)
!1349 = !DILocation(line: 171, column: 19, scope: !968, inlinedAt: !1342)
!1350 = !DILocation(line: 172, column: 5, scope: !968, inlinedAt: !1342)
!1351 = !DILocation(line: 326, column: 23, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !1321, file: !3, line: 326, column: 23)
!1353 = !DILocation(line: 326, column: 37, scope: !1352)
!1354 = !DILocation(line: 326, column: 34, scope: !1352)
!1355 = !DILocation(line: 327, column: 32, scope: !1352)
!1356 = !DILocation(line: 326, column: 23, scope: !1321)
!1357 = !DILocation(line: 333, column: 33, scope: !1091)
!1358 = !DILocation(line: 333, column: 42, scope: !1359)
!1359 = !DILexicalBlockFile(scope: !1091, file: !3, discriminator: 1)
!1360 = !DILocation(line: 333, column: 29, scope: !1091)
!1361 = !DILocation(line: 333, column: 24, scope: !1091)
!1362 = !DILocation(line: 169, column: 16, scope: !955, inlinedAt: !1363)
!1363 = distinct !DILocation(line: 334, column: 19, scope: !1091)
!1364 = !DILocation(line: 107, column: 10, scope: !962, inlinedAt: !1365)
!1365 = distinct !DILocation(line: 171, column: 7, scope: !968, inlinedAt: !1363)
!1366 = !DILocation(line: 333, column: 28, scope: !1367)
!1367 = !DILexicalBlockFile(scope: !1091, file: !3, discriminator: 3)
!1368 = !DILocation(line: 107, column: 10, scope: !972, inlinedAt: !1365)
!1369 = !DILocation(line: 171, column: 7, scope: !955, inlinedAt: !1363)
!1370 = !DILocation(line: 171, column: 7, scope: !968, inlinedAt: !1363)
!1371 = !DILocation(line: 107, column: 10, scope: !976, inlinedAt: !1365)
!1372 = !DILocation(line: 171, column: 19, scope: !968, inlinedAt: !1363)
!1373 = !DILocation(line: 172, column: 5, scope: !968, inlinedAt: !1363)
!1374 = !DILocation(line: 236, column: 46, scope: !1375)
!1375 = !DILexicalBlockFile(scope: !1086, file: !3, discriminator: 4)
!1376 = !DILocation(line: 236, column: 21, scope: !1377)
!1377 = !DILexicalBlockFile(scope: !1086, file: !3, discriminator: 1)
!1378 = !DILocation(line: 236, column: 30, scope: !1379)
!1379 = !DILexicalBlockFile(scope: !1086, file: !3, discriminator: 2)
!1380 = !DILocation(line: 236, column: 30, scope: !1377)
!1381 = distinct !{!1381, !1382, !1383}
!1382 = !DILocation(line: 236, column: 7, scope: !1087)
!1383 = !DILocation(line: 337, column: 9, scope: !1087)
!1384 = !DILocation(line: 339, column: 3, scope: !1059)
!1385 = !DILocation(line: 340, column: 3, scope: !1059)
!1386 = !DILocation(line: 341, column: 10, scope: !1059)
!1387 = !DILocation(line: 341, column: 3, scope: !1059)
!1388 = distinct !DISubprogram(name: "write_error", scope: !3, file: !3, line: 161, type: !632, isLocal: true, isDefinition: true, scopeLine: 162, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, variables: !102)
!1389 = !DILocation(line: 163, column: 3, scope: !1388)
!1390 = !DILocation(line: 163, column: 3, scope: !1391)
!1391 = !DILexicalBlockFile(scope: !1388, file: !3, discriminator: 1)
!1392 = !DILocation(line: 163, column: 3, scope: !1393)
!1393 = !DILexicalBlockFile(scope: !1388, file: !3, discriminator: 2)
!1394 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !111, file: !111, line: 41, type: !55, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !106, variables: !1395)
!1395 = !{!1396}
!1396 = !DILocalVariable(name: "file", arg: 1, scope: !1394, file: !111, line: 41, type: !40)
!1397 = !DILocation(line: 41, column: 41, scope: !1394)
!1398 = !DILocation(line: 43, column: 13, scope: !1394)
!1399 = !DILocation(line: 44, column: 1, scope: !1394)
!1400 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !111, file: !111, line: 78, type: !1401, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !106, variables: !1403)
!1401 = !DISubroutineType(types: !1402)
!1402 = !{null, !46}
!1403 = !{!1404}
!1404 = !DILocalVariable(name: "ignore", arg: 1, scope: !1400, file: !111, line: 78, type: !46)
!1405 = !DIExpression(DW_OP_LLVM_fragment, 0, 1)
!1406 = !DILocation(line: 78, column: 37, scope: !1400)
!1407 = !DILocation(line: 80, column: 16, scope: !1400)
!1408 = !{!1409, !1409, i64 0}
!1409 = !{!"_Bool", !618, i64 0}
!1410 = !DILocation(line: 81, column: 1, scope: !1400)
!1411 = distinct !DISubprogram(name: "close_stdout", scope: !111, file: !111, line: 107, type: !632, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !106, variables: !1412)
!1412 = !{!1413}
!1413 = !DILocalVariable(name: "write_error", scope: !1414, file: !111, line: 112, type: !40)
!1414 = distinct !DILexicalBlock(scope: !1415, file: !111, line: 111, column: 5)
!1415 = distinct !DILexicalBlock(scope: !1411, file: !111, line: 109, column: 7)
!1416 = !DILocation(line: 109, column: 21, scope: !1415)
!1417 = !DILocation(line: 109, column: 7, scope: !1415)
!1418 = !DILocation(line: 109, column: 29, scope: !1415)
!1419 = !DILocation(line: 110, column: 7, scope: !1415)
!1420 = !DILocation(line: 110, column: 12, scope: !1421)
!1421 = !DILexicalBlockFile(scope: !1415, file: !111, discriminator: 1)
!1422 = !{i8 0, i8 2}
!1423 = !DILocation(line: 114, column: 19, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1414, file: !111, line: 113, column: 11)
!1425 = !DILocation(line: 110, column: 25, scope: !1421)
!1426 = !DILocation(line: 110, column: 28, scope: !1427)
!1427 = !DILexicalBlockFile(scope: !1415, file: !111, discriminator: 2)
!1428 = !DILocation(line: 110, column: 34, scope: !1427)
!1429 = !DILocation(line: 109, column: 7, scope: !1430)
!1430 = !DILexicalBlockFile(scope: !1411, file: !111, discriminator: 1)
!1431 = !DILocation(line: 112, column: 33, scope: !1414)
!1432 = !DILocation(line: 112, column: 19, scope: !1414)
!1433 = !DILocation(line: 113, column: 11, scope: !1424)
!1434 = !DILocation(line: 113, column: 11, scope: !1414)
!1435 = !DILocation(line: 114, column: 36, scope: !1436)
!1436 = !DILexicalBlockFile(scope: !1424, file: !111, discriminator: 1)
!1437 = !DILocation(line: 114, column: 9, scope: !1438)
!1438 = !DILexicalBlockFile(scope: !1424, file: !111, discriminator: 2)
!1439 = !DILocation(line: 114, column: 9, scope: !1424)
!1440 = !DILocation(line: 117, column: 9, scope: !1436)
!1441 = !DILocation(line: 119, column: 14, scope: !1414)
!1442 = !DILocation(line: 119, column: 7, scope: !1414)
!1443 = !DILocation(line: 122, column: 22, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !1411, file: !111, line: 122, column: 8)
!1445 = !DILocation(line: 122, column: 8, scope: !1444)
!1446 = !DILocation(line: 122, column: 30, scope: !1444)
!1447 = !DILocation(line: 122, column: 8, scope: !1411)
!1448 = !DILocation(line: 123, column: 13, scope: !1444)
!1449 = !DILocation(line: 123, column: 6, scope: !1444)
!1450 = !DILocation(line: 124, column: 1, scope: !1411)
!1451 = distinct !DISubprogram(name: "fdadvise", scope: !1452, file: !1452, line: 31, type: !1453, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !552, variables: !1457)
!1452 = !DIFile(filename: "lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1453 = !DISubroutineType(types: !1454)
!1454 = !{null, !78, !1455, !1455, !1456}
!1455 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !801, line: 91, baseType: !829)
!1456 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !20, line: 52, baseType: !19)
!1457 = !{!1458, !1459, !1460, !1461, !1462}
!1458 = !DILocalVariable(name: "fd", arg: 1, scope: !1451, file: !1452, line: 31, type: !78)
!1459 = !DILocalVariable(name: "offset", arg: 2, scope: !1451, file: !1452, line: 31, type: !1455)
!1460 = !DILocalVariable(name: "len", arg: 3, scope: !1451, file: !1452, line: 31, type: !1455)
!1461 = !DILocalVariable(name: "advice", arg: 4, scope: !1451, file: !1452, line: 31, type: !1456)
!1462 = !DILocalVariable(name: "__x", scope: !1463, file: !1452, line: 34, type: !78)
!1463 = distinct !DILexicalBlock(scope: !1451, file: !1452, line: 34, column: 3)
!1464 = !DILocation(line: 31, column: 15, scope: !1451)
!1465 = !DILocation(line: 31, column: 25, scope: !1451)
!1466 = !DILocation(line: 31, column: 39, scope: !1451)
!1467 = !DILocation(line: 31, column: 54, scope: !1451)
!1468 = !DILocation(line: 34, column: 3, scope: !1463)
!1469 = !DILocation(line: 36, column: 1, scope: !1451)
!1470 = distinct !DISubprogram(name: "fadvise", scope: !1452, file: !1452, line: 39, type: !1471, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !552, variables: !1513)
!1471 = !DISubroutineType(types: !1472)
!1472 = !{null, !1473, !1456}
!1473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1474, size: 64)
!1474 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !801, line: 49, baseType: !1475)
!1475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !803, line: 241, size: 1728, elements: !1476)
!1476 = !{!1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512}
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1475, file: !803, line: 242, baseType: !78, size: 32)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1475, file: !803, line: 247, baseType: !29, size: 64, offset: 64)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1475, file: !803, line: 248, baseType: !29, size: 64, offset: 128)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1475, file: !803, line: 249, baseType: !29, size: 64, offset: 192)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1475, file: !803, line: 250, baseType: !29, size: 64, offset: 256)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1475, file: !803, line: 251, baseType: !29, size: 64, offset: 320)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1475, file: !803, line: 252, baseType: !29, size: 64, offset: 384)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1475, file: !803, line: 253, baseType: !29, size: 64, offset: 448)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1475, file: !803, line: 254, baseType: !29, size: 64, offset: 512)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1475, file: !803, line: 256, baseType: !29, size: 64, offset: 576)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1475, file: !803, line: 257, baseType: !29, size: 64, offset: 640)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1475, file: !803, line: 258, baseType: !29, size: 64, offset: 704)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1475, file: !803, line: 260, baseType: !1490, size: 64, offset: 768)
!1490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1491, size: 64)
!1491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !803, line: 156, size: 192, elements: !1492)
!1492 = !{!1493, !1494, !1496}
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !1491, file: !803, line: 157, baseType: !1490, size: 64)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !1491, file: !803, line: 158, baseType: !1495, size: 64, offset: 64)
!1495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1475, size: 64)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !1491, file: !803, line: 162, baseType: !78, size: 32, offset: 128)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1475, file: !803, line: 262, baseType: !1495, size: 64, offset: 832)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1475, file: !803, line: 264, baseType: !78, size: 32, offset: 896)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1475, file: !803, line: 268, baseType: !78, size: 32, offset: 928)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1475, file: !803, line: 270, baseType: !829, size: 64, offset: 960)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1475, file: !803, line: 274, baseType: !152, size: 16, offset: 1024)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1475, file: !803, line: 275, baseType: !834, size: 8, offset: 1040)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1475, file: !803, line: 276, baseType: !836, size: 8, offset: 1048)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1475, file: !803, line: 280, baseType: !840, size: 64, offset: 1088)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1475, file: !803, line: 289, baseType: !843, size: 64, offset: 1152)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !1475, file: !803, line: 297, baseType: !31, size: 64, offset: 1216)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !1475, file: !803, line: 298, baseType: !31, size: 64, offset: 1280)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !1475, file: !803, line: 299, baseType: !31, size: 64, offset: 1344)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !1475, file: !803, line: 300, baseType: !31, size: 64, offset: 1408)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1475, file: !803, line: 302, baseType: !32, size: 64, offset: 1472)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1475, file: !803, line: 303, baseType: !78, size: 32, offset: 1536)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1475, file: !803, line: 305, baseType: !851, size: 160, offset: 1568)
!1513 = !{!1514, !1515}
!1514 = !DILocalVariable(name: "fp", arg: 1, scope: !1470, file: !1452, line: 39, type: !1473)
!1515 = !DILocalVariable(name: "advice", arg: 2, scope: !1470, file: !1452, line: 39, type: !1456)
!1516 = !DILocation(line: 39, column: 16, scope: !1470)
!1517 = !DILocation(line: 39, column: 30, scope: !1470)
!1518 = !DILocation(line: 41, column: 7, scope: !1519)
!1519 = distinct !DILexicalBlock(scope: !1470, file: !1452, line: 41, column: 7)
!1520 = !DILocation(line: 41, column: 7, scope: !1470)
!1521 = !DILocation(line: 42, column: 15, scope: !1519)
!1522 = !DILocation(line: 31, column: 15, scope: !1451, inlinedAt: !1523)
!1523 = distinct !DILocation(line: 42, column: 5, scope: !1524)
!1524 = !DILexicalBlockFile(scope: !1519, file: !1452, discriminator: 1)
!1525 = !DILocation(line: 31, column: 25, scope: !1451, inlinedAt: !1523)
!1526 = !DILocation(line: 31, column: 39, scope: !1451, inlinedAt: !1523)
!1527 = !DILocation(line: 31, column: 54, scope: !1451, inlinedAt: !1523)
!1528 = !DILocation(line: 34, column: 3, scope: !1463, inlinedAt: !1523)
!1529 = !DILocation(line: 42, column: 5, scope: !1519)
!1530 = !DILocation(line: 43, column: 1, scope: !1470)
!1531 = distinct !DISubprogram(name: "set_program_name", scope: !125, file: !125, line: 39, type: !55, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !121, variables: !1532)
!1532 = !{!1533, !1534, !1535}
!1533 = !DILocalVariable(name: "argv0", arg: 1, scope: !1531, file: !125, line: 39, type: !40)
!1534 = !DILocalVariable(name: "slash", scope: !1531, file: !125, line: 46, type: !40)
!1535 = !DILocalVariable(name: "base", scope: !1531, file: !125, line: 47, type: !40)
!1536 = !DILocation(line: 39, column: 31, scope: !1531)
!1537 = !DILocation(line: 51, column: 13, scope: !1538)
!1538 = distinct !DILexicalBlock(scope: !1531, file: !125, line: 51, column: 7)
!1539 = !DILocation(line: 51, column: 7, scope: !1531)
!1540 = !DILocation(line: 55, column: 14, scope: !1541)
!1541 = distinct !DILexicalBlock(scope: !1538, file: !125, line: 52, column: 5)
!1542 = !DILocation(line: 54, column: 7, scope: !1541)
!1543 = !DILocation(line: 56, column: 7, scope: !1541)
!1544 = !DILocation(line: 59, column: 11, scope: !1531)
!1545 = !DILocation(line: 46, column: 15, scope: !1531)
!1546 = !DILocation(line: 60, column: 17, scope: !1531)
!1547 = !DILocation(line: 60, column: 33, scope: !1548)
!1548 = !DILexicalBlockFile(scope: !1531, file: !125, discriminator: 1)
!1549 = !DILocation(line: 60, column: 11, scope: !1531)
!1550 = !DILocation(line: 47, column: 15, scope: !1531)
!1551 = !DILocation(line: 61, column: 12, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1531, file: !125, line: 61, column: 7)
!1553 = !DILocation(line: 61, column: 20, scope: !1552)
!1554 = !DILocation(line: 61, column: 25, scope: !1552)
!1555 = !DILocation(line: 61, column: 28, scope: !1556)
!1556 = !DILexicalBlockFile(scope: !1552, file: !125, discriminator: 1)
!1557 = !DILocation(line: 61, column: 61, scope: !1556)
!1558 = !DILocation(line: 61, column: 7, scope: !1548)
!1559 = !DILocation(line: 64, column: 11, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !1561, file: !125, line: 64, column: 11)
!1561 = distinct !DILexicalBlock(scope: !1552, file: !125, line: 62, column: 5)
!1562 = !DILocation(line: 64, column: 36, scope: !1560)
!1563 = !DILocation(line: 64, column: 11, scope: !1561)
!1564 = !DILocation(line: 66, column: 24, scope: !1565)
!1565 = distinct !DILexicalBlock(scope: !1560, file: !125, line: 65, column: 9)
!1566 = !DILocation(line: 70, column: 41, scope: !1565)
!1567 = !DILocation(line: 72, column: 9, scope: !1565)
!1568 = !DILocation(line: 84, column: 16, scope: !1531)
!1569 = !DILocation(line: 90, column: 27, scope: !1531)
!1570 = !DILocation(line: 92, column: 1, scope: !1531)
!1571 = distinct !DISubprogram(name: "clone_quoting_options", scope: !156, file: !156, line: 114, type: !1572, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !128, variables: !1575)
!1572 = !DISubroutineType(types: !1573)
!1573 = !{!1574, !1574}
!1574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!1575 = !{!1576, !1577, !1578}
!1576 = !DILocalVariable(name: "o", arg: 1, scope: !1571, file: !156, line: 114, type: !1574)
!1577 = !DILocalVariable(name: "e", scope: !1571, file: !156, line: 116, type: !78)
!1578 = !DILocalVariable(name: "p", scope: !1571, file: !156, line: 117, type: !1574)
!1579 = !DILocation(line: 114, column: 48, scope: !1571)
!1580 = !DILocation(line: 116, column: 11, scope: !1571)
!1581 = !DILocation(line: 116, column: 7, scope: !1571)
!1582 = !DILocation(line: 117, column: 40, scope: !1571)
!1583 = !DILocation(line: 117, column: 40, scope: !1584)
!1584 = !DILexicalBlockFile(scope: !1571, file: !156, discriminator: 3)
!1585 = !DILocation(line: 117, column: 31, scope: !1584)
!1586 = !DILocation(line: 117, column: 27, scope: !1571)
!1587 = !DILocation(line: 119, column: 9, scope: !1571)
!1588 = !DILocation(line: 120, column: 3, scope: !1571)
!1589 = distinct !DISubprogram(name: "get_quoting_style", scope: !156, file: !156, line: 125, type: !1590, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !128, variables: !1594)
!1590 = !DISubroutineType(types: !1591)
!1591 = !{!5, !1592}
!1592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1593, size: 64)
!1593 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !163)
!1594 = !{!1595}
!1595 = !DILocalVariable(name: "o", arg: 1, scope: !1589, file: !156, line: 125, type: !1592)
!1596 = !DILocation(line: 125, column: 50, scope: !1589)
!1597 = !DILocation(line: 127, column: 11, scope: !1589)
!1598 = !DILocation(line: 127, column: 46, scope: !1599)
!1599 = !DILexicalBlockFile(scope: !1589, file: !156, discriminator: 3)
!1600 = !{!1601, !618, i64 0}
!1601 = !{!"quoting_options", !618, i64 0, !714, i64 4, !618, i64 8, !617, i64 40, !617, i64 48}
!1602 = !DILocation(line: 127, column: 3, scope: !1599)
!1603 = distinct !DISubprogram(name: "set_quoting_style", scope: !156, file: !156, line: 133, type: !1604, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !128, variables: !1606)
!1604 = !DISubroutineType(types: !1605)
!1605 = !{null, !1574, !5}
!1606 = !{!1607, !1608}
!1607 = !DILocalVariable(name: "o", arg: 1, scope: !1603, file: !156, line: 133, type: !1574)
!1608 = !DILocalVariable(name: "s", arg: 2, scope: !1603, file: !156, line: 133, type: !5)
!1609 = !DILocation(line: 133, column: 44, scope: !1603)
!1610 = !DILocation(line: 133, column: 66, scope: !1603)
!1611 = !DILocation(line: 135, column: 4, scope: !1603)
!1612 = !DILocation(line: 135, column: 39, scope: !1613)
!1613 = !DILexicalBlockFile(scope: !1603, file: !156, discriminator: 3)
!1614 = !DILocation(line: 135, column: 45, scope: !1613)
!1615 = !DILocation(line: 136, column: 1, scope: !1603)
!1616 = distinct !DISubprogram(name: "set_char_quoting", scope: !156, file: !156, line: 144, type: !1617, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !128, variables: !1619)
!1617 = !DISubroutineType(types: !1618)
!1618 = !{!78, !1574, !30, !78}
!1619 = !{!1620, !1621, !1622, !1623, !1624, !1626, !1627}
!1620 = !DILocalVariable(name: "o", arg: 1, scope: !1616, file: !156, line: 144, type: !1574)
!1621 = !DILocalVariable(name: "c", arg: 2, scope: !1616, file: !156, line: 144, type: !30)
!1622 = !DILocalVariable(name: "i", arg: 3, scope: !1616, file: !156, line: 144, type: !78)
!1623 = !DILocalVariable(name: "uc", scope: !1616, file: !156, line: 146, type: !39)
!1624 = !DILocalVariable(name: "p", scope: !1616, file: !156, line: 147, type: !1625)
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!1626 = !DILocalVariable(name: "shift", scope: !1616, file: !156, line: 149, type: !78)
!1627 = !DILocalVariable(name: "r", scope: !1616, file: !156, line: 150, type: !78)
!1628 = !DILocation(line: 144, column: 43, scope: !1616)
!1629 = !DILocation(line: 144, column: 51, scope: !1616)
!1630 = !DILocation(line: 144, column: 58, scope: !1616)
!1631 = !DILocation(line: 146, column: 17, scope: !1616)
!1632 = !DILocation(line: 148, column: 6, scope: !1616)
!1633 = !DILocation(line: 148, column: 62, scope: !1634)
!1634 = !DILexicalBlockFile(scope: !1616, file: !156, discriminator: 3)
!1635 = !DILocation(line: 148, column: 57, scope: !1634)
!1636 = !DILocation(line: 147, column: 17, scope: !1616)
!1637 = !DILocation(line: 149, column: 18, scope: !1616)
!1638 = !DILocation(line: 149, column: 15, scope: !1616)
!1639 = !DILocation(line: 149, column: 7, scope: !1616)
!1640 = !DILocation(line: 150, column: 12, scope: !1616)
!1641 = !DILocation(line: 150, column: 15, scope: !1616)
!1642 = !DILocation(line: 150, column: 25, scope: !1616)
!1643 = !DILocation(line: 150, column: 7, scope: !1616)
!1644 = !DILocation(line: 151, column: 13, scope: !1616)
!1645 = !DILocation(line: 151, column: 18, scope: !1616)
!1646 = !DILocation(line: 151, column: 23, scope: !1616)
!1647 = !DILocation(line: 151, column: 6, scope: !1616)
!1648 = !DILocation(line: 152, column: 3, scope: !1616)
!1649 = distinct !DISubprogram(name: "set_quoting_flags", scope: !156, file: !156, line: 160, type: !1650, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !128, variables: !1652)
!1650 = !DISubroutineType(types: !1651)
!1651 = !{!78, !1574, !78}
!1652 = !{!1653, !1654, !1655}
!1653 = !DILocalVariable(name: "o", arg: 1, scope: !1649, file: !156, line: 160, type: !1574)
!1654 = !DILocalVariable(name: "i", arg: 2, scope: !1649, file: !156, line: 160, type: !78)
!1655 = !DILocalVariable(name: "r", scope: !1649, file: !156, line: 162, type: !78)
!1656 = !DILocation(line: 160, column: 44, scope: !1649)
!1657 = !DILocation(line: 160, column: 51, scope: !1649)
!1658 = !DILocation(line: 163, column: 8, scope: !1659)
!1659 = distinct !DILexicalBlock(scope: !1649, file: !156, line: 163, column: 7)
!1660 = !DILocation(line: 163, column: 7, scope: !1649)
!1661 = !DILocation(line: 165, column: 10, scope: !1649)
!1662 = !{!1601, !714, i64 4}
!1663 = !DILocation(line: 162, column: 7, scope: !1649)
!1664 = !DILocation(line: 166, column: 12, scope: !1649)
!1665 = !DILocation(line: 167, column: 3, scope: !1649)
!1666 = distinct !DISubprogram(name: "set_custom_quoting", scope: !156, file: !156, line: 171, type: !1667, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !128, variables: !1669)
!1667 = !DISubroutineType(types: !1668)
!1668 = !{null, !1574, !40, !40}
!1669 = !{!1670, !1671, !1672}
!1670 = !DILocalVariable(name: "o", arg: 1, scope: !1666, file: !156, line: 171, type: !1574)
!1671 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1666, file: !156, line: 172, type: !40)
!1672 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1666, file: !156, line: 172, type: !40)
!1673 = !DILocation(line: 171, column: 45, scope: !1666)
!1674 = !DILocation(line: 172, column: 33, scope: !1666)
!1675 = !DILocation(line: 172, column: 57, scope: !1666)
!1676 = !DILocation(line: 174, column: 8, scope: !1677)
!1677 = distinct !DILexicalBlock(scope: !1666, file: !156, line: 174, column: 7)
!1678 = !DILocation(line: 174, column: 7, scope: !1666)
!1679 = !DILocation(line: 176, column: 6, scope: !1666)
!1680 = !DILocation(line: 176, column: 12, scope: !1666)
!1681 = !DILocation(line: 177, column: 8, scope: !1682)
!1682 = distinct !DILexicalBlock(scope: !1666, file: !156, line: 177, column: 7)
!1683 = !DILocation(line: 177, column: 23, scope: !1684)
!1684 = !DILexicalBlockFile(scope: !1682, file: !156, discriminator: 1)
!1685 = !DILocation(line: 177, column: 19, scope: !1682)
!1686 = !DILocation(line: 178, column: 5, scope: !1682)
!1687 = !DILocation(line: 179, column: 6, scope: !1666)
!1688 = !DILocation(line: 179, column: 17, scope: !1666)
!1689 = !{!1601, !617, i64 40}
!1690 = !DILocation(line: 180, column: 6, scope: !1666)
!1691 = !DILocation(line: 180, column: 18, scope: !1666)
!1692 = !{!1601, !617, i64 48}
!1693 = !DILocation(line: 181, column: 1, scope: !1666)
!1694 = distinct !DISubprogram(name: "quotearg_buffer", scope: !156, file: !156, line: 776, type: !1695, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !128, variables: !1697)
!1695 = !DISubroutineType(types: !1696)
!1696 = !{!32, !29, !32, !40, !32, !1592}
!1697 = !{!1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705}
!1698 = !DILocalVariable(name: "buffer", arg: 1, scope: !1694, file: !156, line: 776, type: !29)
!1699 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1694, file: !156, line: 776, type: !32)
!1700 = !DILocalVariable(name: "arg", arg: 3, scope: !1694, file: !156, line: 777, type: !40)
!1701 = !DILocalVariable(name: "argsize", arg: 4, scope: !1694, file: !156, line: 777, type: !32)
!1702 = !DILocalVariable(name: "o", arg: 5, scope: !1694, file: !156, line: 778, type: !1592)
!1703 = !DILocalVariable(name: "p", scope: !1694, file: !156, line: 780, type: !1592)
!1704 = !DILocalVariable(name: "e", scope: !1694, file: !156, line: 781, type: !78)
!1705 = !DILocalVariable(name: "r", scope: !1694, file: !156, line: 782, type: !32)
!1706 = !DILocation(line: 776, column: 24, scope: !1694)
!1707 = !DILocation(line: 776, column: 39, scope: !1694)
!1708 = !DILocation(line: 777, column: 30, scope: !1694)
!1709 = !DILocation(line: 777, column: 42, scope: !1694)
!1710 = !DILocation(line: 778, column: 48, scope: !1694)
!1711 = !DILocation(line: 780, column: 37, scope: !1694)
!1712 = !DILocation(line: 780, column: 33, scope: !1694)
!1713 = !DILocation(line: 781, column: 11, scope: !1694)
!1714 = !DILocation(line: 781, column: 7, scope: !1694)
!1715 = !DILocation(line: 783, column: 43, scope: !1694)
!1716 = !DILocation(line: 783, column: 53, scope: !1694)
!1717 = !DILocation(line: 783, column: 60, scope: !1694)
!1718 = !DILocation(line: 784, column: 43, scope: !1694)
!1719 = !DILocation(line: 784, column: 58, scope: !1694)
!1720 = !DILocation(line: 782, column: 14, scope: !1694)
!1721 = !DILocation(line: 782, column: 10, scope: !1694)
!1722 = !DILocation(line: 785, column: 9, scope: !1694)
!1723 = !DILocation(line: 786, column: 3, scope: !1694)
!1724 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !156, file: !156, line: 248, type: !1725, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !128, variables: !1729)
!1725 = !DISubroutineType(types: !1726)
!1726 = !{!32, !29, !32, !40, !32, !5, !78, !1727, !40, !40}
!1727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1728, size: 64)
!1728 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !169)
!1729 = !{!1730, !1731, !1732, !1733, !1734, !1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1754, !1755, !1756, !1757, !1758, !1761, !1762, !1779, !1782, !1783, !1790}
!1730 = !DILocalVariable(name: "buffer", arg: 1, scope: !1724, file: !156, line: 248, type: !29)
!1731 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1724, file: !156, line: 248, type: !32)
!1732 = !DILocalVariable(name: "arg", arg: 3, scope: !1724, file: !156, line: 249, type: !40)
!1733 = !DILocalVariable(name: "argsize", arg: 4, scope: !1724, file: !156, line: 249, type: !32)
!1734 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1724, file: !156, line: 250, type: !5)
!1735 = !DILocalVariable(name: "flags", arg: 6, scope: !1724, file: !156, line: 250, type: !78)
!1736 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1724, file: !156, line: 251, type: !1727)
!1737 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1724, file: !156, line: 252, type: !40)
!1738 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1724, file: !156, line: 253, type: !40)
!1739 = !DILocalVariable(name: "i", scope: !1724, file: !156, line: 255, type: !32)
!1740 = !DILocalVariable(name: "len", scope: !1724, file: !156, line: 256, type: !32)
!1741 = !DILocalVariable(name: "orig_buffersize", scope: !1724, file: !156, line: 257, type: !32)
!1742 = !DILocalVariable(name: "quote_string", scope: !1724, file: !156, line: 258, type: !40)
!1743 = !DILocalVariable(name: "quote_string_len", scope: !1724, file: !156, line: 259, type: !32)
!1744 = !DILocalVariable(name: "backslash_escapes", scope: !1724, file: !156, line: 260, type: !46)
!1745 = !DILocalVariable(name: "unibyte_locale", scope: !1724, file: !156, line: 261, type: !46)
!1746 = !DILocalVariable(name: "elide_outer_quotes", scope: !1724, file: !156, line: 262, type: !46)
!1747 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1724, file: !156, line: 263, type: !46)
!1748 = !DILocalVariable(name: "encountered_single_quote", scope: !1724, file: !156, line: 264, type: !46)
!1749 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1724, file: !156, line: 265, type: !46)
!1750 = !DILocalVariable(name: "c", scope: !1751, file: !156, line: 394, type: !39)
!1751 = distinct !DILexicalBlock(scope: !1752, file: !156, line: 393, column: 5)
!1752 = distinct !DILexicalBlock(scope: !1753, file: !156, line: 392, column: 3)
!1753 = distinct !DILexicalBlock(scope: !1724, file: !156, line: 392, column: 3)
!1754 = !DILocalVariable(name: "esc", scope: !1751, file: !156, line: 395, type: !39)
!1755 = !DILocalVariable(name: "is_right_quote", scope: !1751, file: !156, line: 396, type: !46)
!1756 = !DILocalVariable(name: "escaping", scope: !1751, file: !156, line: 397, type: !46)
!1757 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1751, file: !156, line: 398, type: !46)
!1758 = !DILocalVariable(name: "m", scope: !1759, file: !156, line: 602, type: !32)
!1759 = distinct !DILexicalBlock(scope: !1760, file: !156, line: 600, column: 11)
!1760 = distinct !DILexicalBlock(scope: !1751, file: !156, line: 418, column: 9)
!1761 = !DILocalVariable(name: "printable", scope: !1759, file: !156, line: 604, type: !46)
!1762 = !DILocalVariable(name: "mbstate", scope: !1763, file: !156, line: 613, type: !1765)
!1763 = distinct !DILexicalBlock(scope: !1764, file: !156, line: 612, column: 15)
!1764 = distinct !DILexicalBlock(scope: !1759, file: !156, line: 606, column: 17)
!1765 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1766, line: 107, baseType: !1767)
!1766 = !DIFile(filename: "/usr/include/wchar.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1767 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1766, line: 95, baseType: !1768)
!1768 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1766, line: 83, size: 64, elements: !1769)
!1769 = !{!1770, !1771}
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1768, file: !1766, line: 85, baseType: !78, size: 32)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1768, file: !1766, line: 94, baseType: !1772, size: 32, offset: 32)
!1772 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1768, file: !1766, line: 86, size: 32, elements: !1773)
!1773 = !{!1774, !1775}
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1772, file: !1766, line: 89, baseType: !169, size: 32)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1772, file: !1766, line: 93, baseType: !1776, size: 32)
!1776 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 32, elements: !1777)
!1777 = !{!1778}
!1778 = !DISubrange(count: 4)
!1779 = !DILocalVariable(name: "w", scope: !1780, file: !156, line: 623, type: !1781)
!1780 = distinct !DILexicalBlock(scope: !1763, file: !156, line: 622, column: 19)
!1781 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !33, line: 90, baseType: !78)
!1782 = !DILocalVariable(name: "bytes", scope: !1780, file: !156, line: 624, type: !32)
!1783 = !DILocalVariable(name: "j", scope: !1784, file: !156, line: 649, type: !32)
!1784 = distinct !DILexicalBlock(scope: !1785, file: !156, line: 648, column: 27)
!1785 = distinct !DILexicalBlock(scope: !1786, file: !156, line: 646, column: 29)
!1786 = distinct !DILexicalBlock(scope: !1787, file: !156, line: 641, column: 23)
!1787 = distinct !DILexicalBlock(scope: !1788, file: !156, line: 633, column: 30)
!1788 = distinct !DILexicalBlock(scope: !1789, file: !156, line: 628, column: 30)
!1789 = distinct !DILexicalBlock(scope: !1780, file: !156, line: 626, column: 25)
!1790 = !DILocalVariable(name: "ilim", scope: !1791, file: !156, line: 676, type: !32)
!1791 = distinct !DILexicalBlock(scope: !1792, file: !156, line: 673, column: 15)
!1792 = distinct !DILexicalBlock(scope: !1759, file: !156, line: 672, column: 17)
!1793 = !DILocation(line: 248, column: 33, scope: !1724)
!1794 = !DILocation(line: 248, column: 48, scope: !1724)
!1795 = !DILocation(line: 249, column: 39, scope: !1724)
!1796 = !DILocation(line: 249, column: 51, scope: !1724)
!1797 = !DILocation(line: 250, column: 46, scope: !1724)
!1798 = !DILocation(line: 250, column: 65, scope: !1724)
!1799 = !DILocation(line: 251, column: 47, scope: !1724)
!1800 = !DILocation(line: 252, column: 39, scope: !1724)
!1801 = !DILocation(line: 253, column: 39, scope: !1724)
!1802 = !DILocation(line: 256, column: 10, scope: !1724)
!1803 = !DILocation(line: 257, column: 10, scope: !1724)
!1804 = !DILocation(line: 258, column: 15, scope: !1724)
!1805 = !DILocation(line: 259, column: 10, scope: !1724)
!1806 = !DILocation(line: 260, column: 8, scope: !1724)
!1807 = !DILocation(line: 261, column: 25, scope: !1724)
!1808 = !DILocation(line: 261, column: 36, scope: !1724)
!1809 = !DILocation(line: 262, column: 8, scope: !1724)
!1810 = !DILocation(line: 263, column: 8, scope: !1724)
!1811 = !DILocation(line: 264, column: 8, scope: !1724)
!1812 = !DILocation(line: 265, column: 8, scope: !1724)
!1813 = !DILocation(line: 265, column: 3, scope: !1724)
!1814 = !DILocation(line: 308, column: 3, scope: !1724)
!1815 = !DILocation(line: 315, column: 11, scope: !1816)
!1816 = distinct !DILexicalBlock(scope: !1724, file: !156, line: 309, column: 5)
!1817 = !DILocation(line: 315, column: 12, scope: !1818)
!1818 = distinct !DILexicalBlock(scope: !1816, file: !156, line: 315, column: 11)
!1819 = !DILocation(line: 316, column: 9, scope: !1820)
!1820 = !DILexicalBlockFile(scope: !1821, file: !156, discriminator: 1)
!1821 = distinct !DILexicalBlock(scope: !1822, file: !156, line: 316, column: 9)
!1822 = distinct !DILexicalBlock(scope: !1818, file: !156, line: 316, column: 9)
!1823 = !DILocation(line: 316, column: 9, scope: !1824)
!1824 = !DILexicalBlockFile(scope: !1822, file: !156, discriminator: 1)
!1825 = !DILocation(line: 316, column: 9, scope: !1826)
!1826 = !DILexicalBlockFile(scope: !1821, file: !156, discriminator: 2)
!1827 = !DILocation(line: 354, column: 26, scope: !1828)
!1828 = distinct !DILexicalBlock(scope: !1829, file: !156, line: 332, column: 11)
!1829 = distinct !DILexicalBlock(scope: !1830, file: !156, line: 331, column: 13)
!1830 = distinct !DILexicalBlock(scope: !1816, file: !156, line: 330, column: 7)
!1831 = !DILocation(line: 355, column: 27, scope: !1828)
!1832 = !DILocation(line: 356, column: 11, scope: !1828)
!1833 = !DILocation(line: 357, column: 14, scope: !1834)
!1834 = distinct !DILexicalBlock(scope: !1830, file: !156, line: 357, column: 13)
!1835 = !DILocation(line: 357, column: 13, scope: !1830)
!1836 = !DILocation(line: 358, column: 43, scope: !1837)
!1837 = !DILexicalBlockFile(scope: !1838, file: !156, discriminator: 1)
!1838 = distinct !DILexicalBlock(scope: !1839, file: !156, line: 358, column: 11)
!1839 = distinct !DILexicalBlock(scope: !1834, file: !156, line: 358, column: 11)
!1840 = !DILocation(line: 358, column: 11, scope: !1841)
!1841 = !DILexicalBlockFile(scope: !1839, file: !156, discriminator: 1)
!1842 = !DILocation(line: 359, column: 13, scope: !1843)
!1843 = !DILexicalBlockFile(scope: !1844, file: !156, discriminator: 1)
!1844 = distinct !DILexicalBlock(scope: !1845, file: !156, line: 359, column: 13)
!1845 = distinct !DILexicalBlock(scope: !1838, file: !156, line: 359, column: 13)
!1846 = !DILocation(line: 359, column: 13, scope: !1847)
!1847 = !DILexicalBlockFile(scope: !1845, file: !156, discriminator: 1)
!1848 = !DILocation(line: 359, column: 13, scope: !1849)
!1849 = !DILexicalBlockFile(scope: !1844, file: !156, discriminator: 2)
!1850 = !DILocation(line: 359, column: 13, scope: !1851)
!1851 = !DILexicalBlockFile(scope: !1845, file: !156, discriminator: 3)
!1852 = !DILocation(line: 358, column: 70, scope: !1853)
!1853 = !DILexicalBlockFile(scope: !1838, file: !156, discriminator: 2)
!1854 = distinct !{!1854, !1855, !1856}
!1855 = !DILocation(line: 358, column: 11, scope: !1839)
!1856 = !DILocation(line: 359, column: 13, scope: !1839)
!1857 = !DILocation(line: 362, column: 28, scope: !1830)
!1858 = !DILocation(line: 364, column: 7, scope: !1816)
!1859 = !DILocation(line: 367, column: 7, scope: !1816)
!1860 = !DILocation(line: 370, column: 7, scope: !1816)
!1861 = !DILocation(line: 373, column: 12, scope: !1862)
!1862 = distinct !DILexicalBlock(scope: !1816, file: !156, line: 373, column: 11)
!1863 = !DILocation(line: 373, column: 11, scope: !1816)
!1864 = !DILocation(line: 378, column: 12, scope: !1865)
!1865 = distinct !DILexicalBlock(scope: !1816, file: !156, line: 378, column: 11)
!1866 = !DILocation(line: 378, column: 11, scope: !1816)
!1867 = !DILocation(line: 379, column: 9, scope: !1868)
!1868 = !DILexicalBlockFile(scope: !1869, file: !156, discriminator: 1)
!1869 = distinct !DILexicalBlock(scope: !1870, file: !156, line: 379, column: 9)
!1870 = distinct !DILexicalBlock(scope: !1865, file: !156, line: 379, column: 9)
!1871 = !DILocation(line: 379, column: 9, scope: !1872)
!1872 = !DILexicalBlockFile(scope: !1870, file: !156, discriminator: 1)
!1873 = !DILocation(line: 379, column: 9, scope: !1874)
!1874 = !DILexicalBlockFile(scope: !1869, file: !156, discriminator: 2)
!1875 = !DILocation(line: 386, column: 7, scope: !1816)
!1876 = !DILocation(line: 389, column: 7, scope: !1816)
!1877 = !DILocation(line: 255, column: 10, scope: !1724)
!1878 = !DILocation(line: 392, column: 8, scope: !1753)
!1879 = !DILocation(line: 392, column: 27, scope: !1880)
!1880 = !DILexicalBlockFile(scope: !1752, file: !156, discriminator: 1)
!1881 = !DILocation(line: 392, column: 19, scope: !1880)
!1882 = !DILocation(line: 392, column: 60, scope: !1883)
!1883 = !DILexicalBlockFile(scope: !1752, file: !156, discriminator: 3)
!1884 = !DILocation(line: 392, column: 3, scope: !1885)
!1885 = !DILexicalBlockFile(scope: !1753, file: !156, discriminator: 4)
!1886 = !DILocation(line: 392, column: 41, scope: !1887)
!1887 = !DILexicalBlockFile(scope: !1752, file: !156, discriminator: 2)
!1888 = !DILocation(line: 392, column: 48, scope: !1887)
!1889 = !DILocation(line: 396, column: 12, scope: !1751)
!1890 = !DILocation(line: 397, column: 12, scope: !1751)
!1891 = !DILocation(line: 398, column: 12, scope: !1751)
!1892 = !DILocation(line: 401, column: 11, scope: !1893)
!1893 = distinct !DILexicalBlock(scope: !1751, file: !156, line: 400, column: 11)
!1894 = !DILocation(line: 403, column: 17, scope: !1895)
!1895 = !DILexicalBlockFile(scope: !1893, file: !156, discriminator: 1)
!1896 = !DILocation(line: 404, column: 39, scope: !1893)
!1897 = !DILocation(line: 408, column: 32, scope: !1893)
!1898 = !DILocation(line: 404, column: 19, scope: !1899)
!1899 = !DILexicalBlockFile(scope: !1893, file: !156, discriminator: 2)
!1900 = !DILocation(line: 404, column: 15, scope: !1901)
!1901 = !DILexicalBlockFile(scope: !1893, file: !156, discriminator: 4)
!1902 = !DILocation(line: 409, column: 11, scope: !1893)
!1903 = !DILocation(line: 409, column: 26, scope: !1895)
!1904 = !DILocation(line: 409, column: 14, scope: !1895)
!1905 = !DILocation(line: 400, column: 11, scope: !1906)
!1906 = !DILexicalBlockFile(scope: !1751, file: !156, discriminator: 1)
!1907 = !DILocation(line: 416, column: 11, scope: !1751)
!1908 = !DILocation(line: 394, column: 21, scope: !1751)
!1909 = !DILocation(line: 417, column: 7, scope: !1751)
!1910 = !DILocation(line: 420, column: 15, scope: !1760)
!1911 = !DILocation(line: 422, column: 15, scope: !1912)
!1912 = !DILexicalBlockFile(scope: !1913, file: !156, discriminator: 1)
!1913 = distinct !DILexicalBlock(scope: !1914, file: !156, line: 422, column: 15)
!1914 = distinct !DILexicalBlock(scope: !1915, file: !156, line: 421, column: 13)
!1915 = distinct !DILexicalBlock(scope: !1760, file: !156, line: 420, column: 15)
!1916 = !DILocation(line: 422, column: 15, scope: !1917)
!1917 = !DILexicalBlockFile(scope: !1918, file: !156, discriminator: 4)
!1918 = distinct !DILexicalBlock(scope: !1913, file: !156, line: 422, column: 15)
!1919 = !DILocation(line: 422, column: 15, scope: !1920)
!1920 = !DILexicalBlockFile(scope: !1918, file: !156, discriminator: 3)
!1921 = !DILocation(line: 422, column: 15, scope: !1922)
!1922 = !DILexicalBlockFile(scope: !1923, file: !156, discriminator: 6)
!1923 = distinct !DILexicalBlock(scope: !1924, file: !156, line: 422, column: 15)
!1924 = distinct !DILexicalBlock(scope: !1925, file: !156, line: 422, column: 15)
!1925 = distinct !DILexicalBlock(scope: !1918, file: !156, line: 422, column: 15)
!1926 = !DILocation(line: 422, column: 15, scope: !1927)
!1927 = !DILexicalBlockFile(scope: !1924, file: !156, discriminator: 6)
!1928 = !DILocation(line: 422, column: 15, scope: !1929)
!1929 = !DILexicalBlockFile(scope: !1923, file: !156, discriminator: 7)
!1930 = !DILocation(line: 422, column: 15, scope: !1931)
!1931 = !DILexicalBlockFile(scope: !1924, file: !156, discriminator: 8)
!1932 = !DILocation(line: 422, column: 15, scope: !1933)
!1933 = !DILexicalBlockFile(scope: !1934, file: !156, discriminator: 11)
!1934 = distinct !DILexicalBlock(scope: !1935, file: !156, line: 422, column: 15)
!1935 = distinct !DILexicalBlock(scope: !1925, file: !156, line: 422, column: 15)
!1936 = !DILocation(line: 422, column: 15, scope: !1937)
!1937 = !DILexicalBlockFile(scope: !1935, file: !156, discriminator: 11)
!1938 = !DILocation(line: 422, column: 15, scope: !1939)
!1939 = !DILexicalBlockFile(scope: !1934, file: !156, discriminator: 12)
!1940 = !DILocation(line: 422, column: 15, scope: !1941)
!1941 = !DILexicalBlockFile(scope: !1935, file: !156, discriminator: 13)
!1942 = !DILocation(line: 422, column: 15, scope: !1943)
!1943 = !DILexicalBlockFile(scope: !1944, file: !156, discriminator: 16)
!1944 = distinct !DILexicalBlock(scope: !1945, file: !156, line: 422, column: 15)
!1945 = distinct !DILexicalBlock(scope: !1925, file: !156, line: 422, column: 15)
!1946 = !DILocation(line: 422, column: 15, scope: !1947)
!1947 = !DILexicalBlockFile(scope: !1945, file: !156, discriminator: 16)
!1948 = !DILocation(line: 422, column: 15, scope: !1949)
!1949 = !DILexicalBlockFile(scope: !1944, file: !156, discriminator: 17)
!1950 = !DILocation(line: 422, column: 15, scope: !1951)
!1951 = !DILexicalBlockFile(scope: !1945, file: !156, discriminator: 18)
!1952 = !DILocation(line: 422, column: 15, scope: !1953)
!1953 = !DILexicalBlockFile(scope: !1925, file: !156, discriminator: 20)
!1954 = !DILocation(line: 422, column: 15, scope: !1955)
!1955 = !DILexicalBlockFile(scope: !1956, file: !156, discriminator: 22)
!1956 = distinct !DILexicalBlock(scope: !1957, file: !156, line: 422, column: 15)
!1957 = distinct !DILexicalBlock(scope: !1913, file: !156, line: 422, column: 15)
!1958 = !DILocation(line: 422, column: 15, scope: !1959)
!1959 = !DILexicalBlockFile(scope: !1957, file: !156, discriminator: 22)
!1960 = !DILocation(line: 422, column: 15, scope: !1961)
!1961 = !DILexicalBlockFile(scope: !1956, file: !156, discriminator: 23)
!1962 = !DILocation(line: 422, column: 15, scope: !1963)
!1963 = !DILexicalBlockFile(scope: !1957, file: !156, discriminator: 24)
!1964 = !DILocation(line: 430, column: 19, scope: !1965)
!1965 = distinct !DILexicalBlock(scope: !1914, file: !156, line: 429, column: 19)
!1966 = !DILocation(line: 430, column: 24, scope: !1967)
!1967 = !DILexicalBlockFile(scope: !1965, file: !156, discriminator: 1)
!1968 = !DILocation(line: 430, column: 28, scope: !1967)
!1969 = !DILocation(line: 430, column: 38, scope: !1967)
!1970 = !DILocation(line: 430, column: 48, scope: !1971)
!1971 = !DILexicalBlockFile(scope: !1965, file: !156, discriminator: 2)
!1972 = !DILocation(line: 430, column: 59, scope: !1971)
!1973 = !DILocation(line: 432, column: 19, scope: !1974)
!1974 = !DILexicalBlockFile(scope: !1975, file: !156, discriminator: 1)
!1975 = distinct !DILexicalBlock(scope: !1976, file: !156, line: 432, column: 19)
!1976 = distinct !DILexicalBlock(scope: !1977, file: !156, line: 432, column: 19)
!1977 = distinct !DILexicalBlock(scope: !1965, file: !156, line: 431, column: 17)
!1978 = !DILocation(line: 432, column: 19, scope: !1979)
!1979 = !DILexicalBlockFile(scope: !1976, file: !156, discriminator: 1)
!1980 = !DILocation(line: 432, column: 19, scope: !1981)
!1981 = !DILexicalBlockFile(scope: !1975, file: !156, discriminator: 2)
!1982 = !DILocation(line: 432, column: 19, scope: !1983)
!1983 = !DILexicalBlockFile(scope: !1976, file: !156, discriminator: 3)
!1984 = !DILocation(line: 433, column: 19, scope: !1985)
!1985 = !DILexicalBlockFile(scope: !1986, file: !156, discriminator: 1)
!1986 = distinct !DILexicalBlock(scope: !1987, file: !156, line: 433, column: 19)
!1987 = distinct !DILexicalBlock(scope: !1977, file: !156, line: 433, column: 19)
!1988 = !DILocation(line: 433, column: 19, scope: !1989)
!1989 = !DILexicalBlockFile(scope: !1987, file: !156, discriminator: 1)
!1990 = !DILocation(line: 433, column: 19, scope: !1991)
!1991 = !DILexicalBlockFile(scope: !1986, file: !156, discriminator: 2)
!1992 = !DILocation(line: 433, column: 19, scope: !1993)
!1993 = !DILexicalBlockFile(scope: !1987, file: !156, discriminator: 3)
!1994 = !DILocation(line: 434, column: 17, scope: !1977)
!1995 = !DILocation(line: 441, column: 20, scope: !1915)
!1996 = !DILocation(line: 446, column: 11, scope: !1760)
!1997 = !DILocation(line: 449, column: 19, scope: !1998)
!1998 = distinct !DILexicalBlock(scope: !1760, file: !156, line: 447, column: 13)
!1999 = !DILocation(line: 455, column: 19, scope: !2000)
!2000 = distinct !DILexicalBlock(scope: !1998, file: !156, line: 454, column: 19)
!2001 = !DILocation(line: 455, column: 24, scope: !2002)
!2002 = !DILexicalBlockFile(scope: !2000, file: !156, discriminator: 1)
!2003 = !DILocation(line: 455, column: 28, scope: !2002)
!2004 = !DILocation(line: 455, column: 38, scope: !2002)
!2005 = !DILocation(line: 455, column: 47, scope: !2006)
!2006 = !DILexicalBlockFile(scope: !2000, file: !156, discriminator: 2)
!2007 = !DILocation(line: 455, column: 41, scope: !2006)
!2008 = !DILocation(line: 455, column: 52, scope: !2006)
!2009 = !DILocation(line: 454, column: 19, scope: !2010)
!2010 = !DILexicalBlockFile(scope: !1998, file: !156, discriminator: 1)
!2011 = !DILocation(line: 456, column: 25, scope: !2000)
!2012 = !DILocation(line: 456, column: 17, scope: !2000)
!2013 = !DILocation(line: 463, column: 25, scope: !2014)
!2014 = distinct !DILexicalBlock(scope: !2000, file: !156, line: 457, column: 19)
!2015 = !DILocation(line: 467, column: 21, scope: !2016)
!2016 = !DILexicalBlockFile(scope: !2017, file: !156, discriminator: 1)
!2017 = distinct !DILexicalBlock(scope: !2018, file: !156, line: 467, column: 21)
!2018 = distinct !DILexicalBlock(scope: !2014, file: !156, line: 467, column: 21)
!2019 = !DILocation(line: 467, column: 21, scope: !2020)
!2020 = !DILexicalBlockFile(scope: !2018, file: !156, discriminator: 1)
!2021 = !DILocation(line: 467, column: 21, scope: !2022)
!2022 = !DILexicalBlockFile(scope: !2017, file: !156, discriminator: 2)
!2023 = !DILocation(line: 467, column: 21, scope: !2024)
!2024 = !DILexicalBlockFile(scope: !2018, file: !156, discriminator: 3)
!2025 = !DILocation(line: 468, column: 21, scope: !2026)
!2026 = !DILexicalBlockFile(scope: !2027, file: !156, discriminator: 1)
!2027 = distinct !DILexicalBlock(scope: !2028, file: !156, line: 468, column: 21)
!2028 = distinct !DILexicalBlock(scope: !2014, file: !156, line: 468, column: 21)
!2029 = !DILocation(line: 468, column: 21, scope: !2030)
!2030 = !DILexicalBlockFile(scope: !2028, file: !156, discriminator: 1)
!2031 = !DILocation(line: 468, column: 21, scope: !2032)
!2032 = !DILexicalBlockFile(scope: !2027, file: !156, discriminator: 2)
!2033 = !DILocation(line: 468, column: 21, scope: !2034)
!2034 = !DILexicalBlockFile(scope: !2028, file: !156, discriminator: 3)
!2035 = !DILocation(line: 469, column: 21, scope: !2036)
!2036 = !DILexicalBlockFile(scope: !2037, file: !156, discriminator: 1)
!2037 = distinct !DILexicalBlock(scope: !2038, file: !156, line: 469, column: 21)
!2038 = distinct !DILexicalBlock(scope: !2014, file: !156, line: 469, column: 21)
!2039 = !DILocation(line: 469, column: 21, scope: !2040)
!2040 = !DILexicalBlockFile(scope: !2038, file: !156, discriminator: 1)
!2041 = !DILocation(line: 469, column: 21, scope: !2042)
!2042 = !DILexicalBlockFile(scope: !2037, file: !156, discriminator: 2)
!2043 = !DILocation(line: 469, column: 21, scope: !2044)
!2044 = !DILexicalBlockFile(scope: !2038, file: !156, discriminator: 3)
!2045 = !DILocation(line: 470, column: 21, scope: !2046)
!2046 = !DILexicalBlockFile(scope: !2047, file: !156, discriminator: 1)
!2047 = distinct !DILexicalBlock(scope: !2048, file: !156, line: 470, column: 21)
!2048 = distinct !DILexicalBlock(scope: !2014, file: !156, line: 470, column: 21)
!2049 = !DILocation(line: 470, column: 21, scope: !2050)
!2050 = !DILexicalBlockFile(scope: !2048, file: !156, discriminator: 1)
!2051 = !DILocation(line: 470, column: 21, scope: !2052)
!2052 = !DILexicalBlockFile(scope: !2047, file: !156, discriminator: 2)
!2053 = !DILocation(line: 470, column: 21, scope: !2054)
!2054 = !DILexicalBlockFile(scope: !2048, file: !156, discriminator: 3)
!2055 = !DILocation(line: 471, column: 21, scope: !2014)
!2056 = !DILocation(line: 395, column: 21, scope: !1751)
!2057 = !DILocation(line: 484, column: 31, scope: !1760)
!2058 = !DILocation(line: 485, column: 31, scope: !1760)
!2059 = !DILocation(line: 487, column: 31, scope: !1760)
!2060 = !DILocation(line: 488, column: 31, scope: !1760)
!2061 = !DILocation(line: 489, column: 31, scope: !1760)
!2062 = !DILocation(line: 492, column: 15, scope: !1760)
!2063 = !DILocation(line: 494, column: 19, scope: !2064)
!2064 = distinct !DILexicalBlock(scope: !2065, file: !156, line: 493, column: 13)
!2065 = distinct !DILexicalBlock(scope: !1760, file: !156, line: 492, column: 15)
!2066 = !DILocation(line: 501, column: 33, scope: !2067)
!2067 = distinct !DILexicalBlock(scope: !1760, file: !156, line: 501, column: 15)
!2068 = !DILocation(line: 506, column: 15, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !1760, file: !156, line: 505, column: 15)
!2070 = !DILocation(line: 510, column: 15, scope: !1760)
!2071 = !DILocation(line: 518, column: 26, scope: !2072)
!2072 = distinct !DILexicalBlock(scope: !1760, file: !156, line: 518, column: 15)
!2073 = !DILocation(line: 518, column: 15, scope: !1760)
!2074 = !DILocation(line: 518, column: 40, scope: !2075)
!2075 = !DILexicalBlockFile(scope: !2072, file: !156, discriminator: 1)
!2076 = !DILocation(line: 518, column: 47, scope: !2075)
!2077 = !DILocation(line: 522, column: 17, scope: !2078)
!2078 = distinct !DILexicalBlock(scope: !1760, file: !156, line: 522, column: 15)
!2079 = !DILocation(line: 518, column: 18, scope: !2075)
!2080 = !DILocation(line: 518, column: 65, scope: !2081)
!2081 = !DILexicalBlockFile(scope: !2072, file: !156, discriminator: 2)
!2082 = !DILocation(line: 518, column: 15, scope: !2083)
!2083 = !DILexicalBlockFile(scope: !1760, file: !156, discriminator: 2)
!2084 = !DILocation(line: 522, column: 15, scope: !1760)
!2085 = !DILocation(line: 526, column: 11, scope: !1760)
!2086 = !DILocation(line: 541, column: 15, scope: !2087)
!2087 = distinct !DILexicalBlock(scope: !1760, file: !156, line: 540, column: 15)
!2088 = !DILocation(line: 548, column: 15, scope: !1760)
!2089 = !DILocation(line: 550, column: 19, scope: !2090)
!2090 = distinct !DILexicalBlock(scope: !2091, file: !156, line: 549, column: 13)
!2091 = distinct !DILexicalBlock(scope: !1760, file: !156, line: 548, column: 15)
!2092 = !DILocation(line: 553, column: 19, scope: !2093)
!2093 = distinct !DILexicalBlock(scope: !2090, file: !156, line: 553, column: 19)
!2094 = !DILocation(line: 553, column: 35, scope: !2095)
!2095 = !DILexicalBlockFile(scope: !2093, file: !156, discriminator: 1)
!2096 = !DILocation(line: 553, column: 30, scope: !2093)
!2097 = !DILocation(line: 562, column: 15, scope: !2098)
!2098 = !DILexicalBlockFile(scope: !2099, file: !156, discriminator: 1)
!2099 = distinct !DILexicalBlock(scope: !2100, file: !156, line: 562, column: 15)
!2100 = distinct !DILexicalBlock(scope: !2090, file: !156, line: 562, column: 15)
!2101 = !DILocation(line: 562, column: 15, scope: !2102)
!2102 = !DILexicalBlockFile(scope: !2100, file: !156, discriminator: 1)
!2103 = !DILocation(line: 562, column: 15, scope: !2104)
!2104 = !DILexicalBlockFile(scope: !2099, file: !156, discriminator: 2)
!2105 = !DILocation(line: 562, column: 15, scope: !2106)
!2106 = !DILexicalBlockFile(scope: !2100, file: !156, discriminator: 3)
!2107 = !DILocation(line: 563, column: 15, scope: !2108)
!2108 = !DILexicalBlockFile(scope: !2109, file: !156, discriminator: 1)
!2109 = distinct !DILexicalBlock(scope: !2110, file: !156, line: 563, column: 15)
!2110 = distinct !DILexicalBlock(scope: !2090, file: !156, line: 563, column: 15)
!2111 = !DILocation(line: 563, column: 15, scope: !2112)
!2112 = !DILexicalBlockFile(scope: !2110, file: !156, discriminator: 1)
!2113 = !DILocation(line: 563, column: 15, scope: !2114)
!2114 = !DILexicalBlockFile(scope: !2109, file: !156, discriminator: 2)
!2115 = !DILocation(line: 563, column: 15, scope: !2116)
!2116 = !DILexicalBlockFile(scope: !2110, file: !156, discriminator: 3)
!2117 = !DILocation(line: 564, column: 15, scope: !2118)
!2118 = !DILexicalBlockFile(scope: !2119, file: !156, discriminator: 1)
!2119 = distinct !DILexicalBlock(scope: !2120, file: !156, line: 564, column: 15)
!2120 = distinct !DILexicalBlock(scope: !2090, file: !156, line: 564, column: 15)
!2121 = !DILocation(line: 564, column: 15, scope: !2122)
!2122 = !DILexicalBlockFile(scope: !2120, file: !156, discriminator: 1)
!2123 = !DILocation(line: 564, column: 15, scope: !2124)
!2124 = !DILexicalBlockFile(scope: !2119, file: !156, discriminator: 2)
!2125 = !DILocation(line: 564, column: 15, scope: !2126)
!2126 = !DILexicalBlockFile(scope: !2120, file: !156, discriminator: 3)
!2127 = !DILocation(line: 566, column: 13, scope: !2090)
!2128 = !DILocation(line: 606, column: 17, scope: !1759)
!2129 = !DILocation(line: 602, column: 20, scope: !1759)
!2130 = !DILocation(line: 609, column: 29, scope: !2131)
!2131 = distinct !DILexicalBlock(scope: !1764, file: !156, line: 607, column: 15)
!2132 = !{!918, !918, i64 0}
!2133 = !DILocation(line: 609, column: 27, scope: !2131)
!2134 = !DILocation(line: 604, column: 18, scope: !1759)
!2135 = !DILocation(line: 610, column: 15, scope: !2131)
!2136 = !DILocation(line: 613, column: 17, scope: !1763)
!2137 = !DILocation(line: 614, column: 17, scope: !1763)
!2138 = !DILocation(line: 618, column: 29, scope: !2139)
!2139 = distinct !DILexicalBlock(scope: !1763, file: !156, line: 618, column: 21)
!2140 = !DILocation(line: 618, column: 21, scope: !1763)
!2141 = distinct !{!2141, !2142, !2143}
!2142 = !DILocation(line: 621, column: 17, scope: !1763)
!2143 = !DILocation(line: 667, column: 44, scope: !1763)
!2144 = !DILocation(line: 619, column: 29, scope: !2139)
!2145 = !DILocation(line: 619, column: 19, scope: !2139)
!2146 = !DILocation(line: 623, column: 21, scope: !1780)
!2147 = !DILocation(line: 624, column: 56, scope: !1780)
!2148 = !DILocation(line: 624, column: 50, scope: !1780)
!2149 = !DILocation(line: 625, column: 53, scope: !1780)
!2150 = !DIExpression(DW_OP_deref)
!2151 = !DILocation(line: 613, column: 27, scope: !1763)
!2152 = !DILocation(line: 623, column: 29, scope: !1780)
!2153 = !DILocation(line: 624, column: 36, scope: !1780)
!2154 = !DILocation(line: 624, column: 28, scope: !1780)
!2155 = !DILocation(line: 626, column: 25, scope: !1780)
!2156 = !DILocation(line: 636, column: 38, scope: !2157)
!2157 = !DILexicalBlockFile(scope: !2158, file: !156, discriminator: 1)
!2158 = distinct !DILexicalBlock(scope: !1787, file: !156, line: 634, column: 23)
!2159 = !DILocation(line: 636, column: 48, scope: !2157)
!2160 = !DILocation(line: 636, column: 51, scope: !2161)
!2161 = !DILexicalBlockFile(scope: !2158, file: !156, discriminator: 2)
!2162 = !DILocation(line: 636, column: 48, scope: !2161)
!2163 = !DILocation(line: 636, column: 25, scope: !2164)
!2164 = !DILexicalBlockFile(scope: !2158, file: !156, discriminator: 3)
!2165 = !DILocation(line: 637, column: 28, scope: !2158)
!2166 = !DILocation(line: 636, column: 34, scope: !2157)
!2167 = distinct !{!2167, !2168, !2165}
!2168 = !DILocation(line: 636, column: 25, scope: !2158)
!2169 = !DILocation(line: 650, column: 43, scope: !2170)
!2170 = !DILexicalBlockFile(scope: !2171, file: !156, discriminator: 1)
!2171 = distinct !DILexicalBlock(scope: !2172, file: !156, line: 650, column: 29)
!2172 = distinct !DILexicalBlock(scope: !1784, file: !156, line: 650, column: 29)
!2173 = !DILocation(line: 647, column: 29, scope: !1785)
!2174 = !DILocation(line: 649, column: 36, scope: !1784)
!2175 = !DILocation(line: 651, column: 49, scope: !2171)
!2176 = !DILocation(line: 651, column: 39, scope: !2171)
!2177 = !DILocation(line: 651, column: 31, scope: !2171)
!2178 = !DILocation(line: 650, column: 53, scope: !2179)
!2179 = !DILexicalBlockFile(scope: !2171, file: !156, discriminator: 2)
!2180 = !DILocation(line: 650, column: 29, scope: !2181)
!2181 = !DILexicalBlockFile(scope: !2172, file: !156, discriminator: 1)
!2182 = distinct !{!2182, !2183, !2184}
!2183 = !DILocation(line: 650, column: 29, scope: !2172)
!2184 = !DILocation(line: 659, column: 33, scope: !2172)
!2185 = !DILocation(line: 666, column: 19, scope: !1763)
!2186 = !DILocation(line: 662, column: 41, scope: !2187)
!2187 = distinct !DILexicalBlock(scope: !1786, file: !156, line: 662, column: 29)
!2188 = !DILocation(line: 662, column: 31, scope: !2187)
!2189 = !DILocation(line: 662, column: 29, scope: !1786)
!2190 = !DILocation(line: 664, column: 27, scope: !1786)
!2191 = !DILocation(line: 667, column: 26, scope: !1763)
!2192 = !DILocation(line: 667, column: 24, scope: !1763)
!2193 = !DILocation(line: 666, column: 19, scope: !2194)
!2194 = !DILexicalBlockFile(scope: !1780, file: !156, discriminator: 3)
!2195 = !DILocation(line: 668, column: 15, scope: !1764)
!2196 = !DILocation(line: 670, column: 40, scope: !1759)
!2197 = !DILocation(line: 672, column: 19, scope: !1792)
!2198 = !DILocation(line: 672, column: 45, scope: !2199)
!2199 = !DILexicalBlockFile(scope: !1792, file: !156, discriminator: 1)
!2200 = !DILocation(line: 672, column: 23, scope: !1792)
!2201 = !DILocation(line: 676, column: 33, scope: !1791)
!2202 = !DILocation(line: 676, column: 24, scope: !1791)
!2203 = !DILocation(line: 678, column: 17, scope: !1791)
!2204 = !DILocation(line: 680, column: 43, scope: !2205)
!2205 = distinct !DILexicalBlock(scope: !2206, file: !156, line: 680, column: 25)
!2206 = distinct !DILexicalBlock(scope: !2207, file: !156, line: 679, column: 19)
!2207 = distinct !DILexicalBlock(scope: !2208, file: !156, line: 678, column: 17)
!2208 = distinct !DILexicalBlock(scope: !1791, file: !156, line: 678, column: 17)
!2209 = !DILocation(line: 682, column: 25, scope: !2210)
!2210 = !DILexicalBlockFile(scope: !2211, file: !156, discriminator: 1)
!2211 = distinct !DILexicalBlock(scope: !2212, file: !156, line: 682, column: 25)
!2212 = distinct !DILexicalBlock(scope: !2205, file: !156, line: 681, column: 23)
!2213 = !DILocation(line: 682, column: 25, scope: !2214)
!2214 = !DILexicalBlockFile(scope: !2215, file: !156, discriminator: 4)
!2215 = distinct !DILexicalBlock(scope: !2211, file: !156, line: 682, column: 25)
!2216 = !DILocation(line: 682, column: 25, scope: !2217)
!2217 = !DILexicalBlockFile(scope: !2215, file: !156, discriminator: 3)
!2218 = !DILocation(line: 682, column: 25, scope: !2219)
!2219 = !DILexicalBlockFile(scope: !2220, file: !156, discriminator: 6)
!2220 = distinct !DILexicalBlock(scope: !2221, file: !156, line: 682, column: 25)
!2221 = distinct !DILexicalBlock(scope: !2222, file: !156, line: 682, column: 25)
!2222 = distinct !DILexicalBlock(scope: !2215, file: !156, line: 682, column: 25)
!2223 = !DILocation(line: 682, column: 25, scope: !2224)
!2224 = !DILexicalBlockFile(scope: !2221, file: !156, discriminator: 6)
!2225 = !DILocation(line: 682, column: 25, scope: !2226)
!2226 = !DILexicalBlockFile(scope: !2220, file: !156, discriminator: 7)
!2227 = !DILocation(line: 682, column: 25, scope: !2228)
!2228 = !DILexicalBlockFile(scope: !2221, file: !156, discriminator: 8)
!2229 = !DILocation(line: 682, column: 25, scope: !2230)
!2230 = !DILexicalBlockFile(scope: !2231, file: !156, discriminator: 11)
!2231 = distinct !DILexicalBlock(scope: !2232, file: !156, line: 682, column: 25)
!2232 = distinct !DILexicalBlock(scope: !2222, file: !156, line: 682, column: 25)
!2233 = !DILocation(line: 682, column: 25, scope: !2234)
!2234 = !DILexicalBlockFile(scope: !2232, file: !156, discriminator: 11)
!2235 = !DILocation(line: 682, column: 25, scope: !2236)
!2236 = !DILexicalBlockFile(scope: !2231, file: !156, discriminator: 12)
!2237 = !DILocation(line: 682, column: 25, scope: !2238)
!2238 = !DILexicalBlockFile(scope: !2232, file: !156, discriminator: 13)
!2239 = !DILocation(line: 682, column: 25, scope: !2240)
!2240 = !DILexicalBlockFile(scope: !2241, file: !156, discriminator: 16)
!2241 = distinct !DILexicalBlock(scope: !2242, file: !156, line: 682, column: 25)
!2242 = distinct !DILexicalBlock(scope: !2222, file: !156, line: 682, column: 25)
!2243 = !DILocation(line: 682, column: 25, scope: !2244)
!2244 = !DILexicalBlockFile(scope: !2242, file: !156, discriminator: 16)
!2245 = !DILocation(line: 682, column: 25, scope: !2246)
!2246 = !DILexicalBlockFile(scope: !2241, file: !156, discriminator: 17)
!2247 = !DILocation(line: 682, column: 25, scope: !2248)
!2248 = !DILexicalBlockFile(scope: !2242, file: !156, discriminator: 18)
!2249 = !DILocation(line: 682, column: 25, scope: !2250)
!2250 = !DILexicalBlockFile(scope: !2222, file: !156, discriminator: 20)
!2251 = !DILocation(line: 682, column: 25, scope: !2252)
!2252 = !DILexicalBlockFile(scope: !2253, file: !156, discriminator: 22)
!2253 = distinct !DILexicalBlock(scope: !2254, file: !156, line: 682, column: 25)
!2254 = distinct !DILexicalBlock(scope: !2211, file: !156, line: 682, column: 25)
!2255 = !DILocation(line: 682, column: 25, scope: !2256)
!2256 = !DILexicalBlockFile(scope: !2254, file: !156, discriminator: 22)
!2257 = !DILocation(line: 682, column: 25, scope: !2258)
!2258 = !DILexicalBlockFile(scope: !2253, file: !156, discriminator: 23)
!2259 = !DILocation(line: 682, column: 25, scope: !2260)
!2260 = !DILexicalBlockFile(scope: !2254, file: !156, discriminator: 24)
!2261 = !DILocation(line: 683, column: 25, scope: !2262)
!2262 = !DILexicalBlockFile(scope: !2263, file: !156, discriminator: 1)
!2263 = distinct !DILexicalBlock(scope: !2264, file: !156, line: 683, column: 25)
!2264 = distinct !DILexicalBlock(scope: !2212, file: !156, line: 683, column: 25)
!2265 = !DILocation(line: 683, column: 25, scope: !2266)
!2266 = !DILexicalBlockFile(scope: !2264, file: !156, discriminator: 1)
!2267 = !DILocation(line: 683, column: 25, scope: !2268)
!2268 = !DILexicalBlockFile(scope: !2263, file: !156, discriminator: 2)
!2269 = !DILocation(line: 683, column: 25, scope: !2270)
!2270 = !DILexicalBlockFile(scope: !2264, file: !156, discriminator: 3)
!2271 = !DILocation(line: 684, column: 25, scope: !2272)
!2272 = !DILexicalBlockFile(scope: !2273, file: !156, discriminator: 1)
!2273 = distinct !DILexicalBlock(scope: !2274, file: !156, line: 684, column: 25)
!2274 = distinct !DILexicalBlock(scope: !2212, file: !156, line: 684, column: 25)
!2275 = !DILocation(line: 684, column: 25, scope: !2276)
!2276 = !DILexicalBlockFile(scope: !2274, file: !156, discriminator: 1)
!2277 = !DILocation(line: 684, column: 25, scope: !2278)
!2278 = !DILexicalBlockFile(scope: !2273, file: !156, discriminator: 2)
!2279 = !DILocation(line: 684, column: 25, scope: !2280)
!2280 = !DILexicalBlockFile(scope: !2274, file: !156, discriminator: 3)
!2281 = !DILocation(line: 685, column: 38, scope: !2212)
!2282 = !DILocation(line: 685, column: 33, scope: !2212)
!2283 = !DILocation(line: 686, column: 23, scope: !2212)
!2284 = !DILocation(line: 687, column: 30, scope: !2285)
!2285 = distinct !DILexicalBlock(scope: !2205, file: !156, line: 687, column: 30)
!2286 = !DILocation(line: 687, column: 30, scope: !2205)
!2287 = !DILocation(line: 689, column: 25, scope: !2288)
!2288 = !DILexicalBlockFile(scope: !2289, file: !156, discriminator: 1)
!2289 = distinct !DILexicalBlock(scope: !2290, file: !156, line: 689, column: 25)
!2290 = distinct !DILexicalBlock(scope: !2291, file: !156, line: 689, column: 25)
!2291 = distinct !DILexicalBlock(scope: !2285, file: !156, line: 688, column: 23)
!2292 = !DILocation(line: 689, column: 25, scope: !2293)
!2293 = !DILexicalBlockFile(scope: !2290, file: !156, discriminator: 1)
!2294 = !DILocation(line: 689, column: 25, scope: !2295)
!2295 = !DILexicalBlockFile(scope: !2289, file: !156, discriminator: 2)
!2296 = !DILocation(line: 689, column: 25, scope: !2297)
!2297 = !DILexicalBlockFile(scope: !2290, file: !156, discriminator: 3)
!2298 = !DILocation(line: 691, column: 23, scope: !2291)
!2299 = !DILocation(line: 692, column: 35, scope: !2300)
!2300 = distinct !DILexicalBlock(scope: !2206, file: !156, line: 692, column: 25)
!2301 = !DILocation(line: 692, column: 30, scope: !2300)
!2302 = !DILocation(line: 692, column: 25, scope: !2206)
!2303 = !DILocation(line: 694, column: 21, scope: !2304)
!2304 = !DILexicalBlockFile(scope: !2305, file: !156, discriminator: 1)
!2305 = distinct !DILexicalBlock(scope: !2306, file: !156, line: 694, column: 21)
!2306 = distinct !DILexicalBlock(scope: !2206, file: !156, line: 694, column: 21)
!2307 = !DILocation(line: 694, column: 21, scope: !2308)
!2308 = !DILexicalBlockFile(scope: !2305, file: !156, discriminator: 2)
!2309 = !DILocation(line: 694, column: 21, scope: !2310)
!2310 = !DILexicalBlockFile(scope: !2311, file: !156, discriminator: 4)
!2311 = distinct !DILexicalBlock(scope: !2312, file: !156, line: 694, column: 21)
!2312 = distinct !DILexicalBlock(scope: !2313, file: !156, line: 694, column: 21)
!2313 = distinct !DILexicalBlock(scope: !2305, file: !156, line: 694, column: 21)
!2314 = !DILocation(line: 694, column: 21, scope: !2315)
!2315 = !DILexicalBlockFile(scope: !2312, file: !156, discriminator: 4)
!2316 = !DILocation(line: 694, column: 21, scope: !2317)
!2317 = !DILexicalBlockFile(scope: !2311, file: !156, discriminator: 5)
!2318 = !DILocation(line: 694, column: 21, scope: !2319)
!2319 = !DILexicalBlockFile(scope: !2312, file: !156, discriminator: 6)
!2320 = !DILocation(line: 694, column: 21, scope: !2321)
!2321 = !DILexicalBlockFile(scope: !2322, file: !156, discriminator: 9)
!2322 = distinct !DILexicalBlock(scope: !2323, file: !156, line: 694, column: 21)
!2323 = distinct !DILexicalBlock(scope: !2313, file: !156, line: 694, column: 21)
!2324 = !DILocation(line: 694, column: 21, scope: !2325)
!2325 = !DILexicalBlockFile(scope: !2323, file: !156, discriminator: 9)
!2326 = !DILocation(line: 694, column: 21, scope: !2327)
!2327 = !DILexicalBlockFile(scope: !2322, file: !156, discriminator: 10)
!2328 = !DILocation(line: 694, column: 21, scope: !2329)
!2329 = !DILexicalBlockFile(scope: !2323, file: !156, discriminator: 11)
!2330 = !DILocation(line: 694, column: 21, scope: !2331)
!2331 = !DILexicalBlockFile(scope: !2313, file: !156, discriminator: 13)
!2332 = !DILocation(line: 695, column: 21, scope: !2333)
!2333 = !DILexicalBlockFile(scope: !2334, file: !156, discriminator: 1)
!2334 = distinct !DILexicalBlock(scope: !2335, file: !156, line: 695, column: 21)
!2335 = distinct !DILexicalBlock(scope: !2206, file: !156, line: 695, column: 21)
!2336 = !DILocation(line: 695, column: 21, scope: !2337)
!2337 = !DILexicalBlockFile(scope: !2335, file: !156, discriminator: 1)
!2338 = !DILocation(line: 695, column: 21, scope: !2339)
!2339 = !DILexicalBlockFile(scope: !2334, file: !156, discriminator: 2)
!2340 = !DILocation(line: 695, column: 21, scope: !2341)
!2341 = !DILexicalBlockFile(scope: !2335, file: !156, discriminator: 3)
!2342 = !DILocation(line: 696, column: 25, scope: !2206)
!2343 = !DILocation(line: 678, column: 17, scope: !2344)
!2344 = !DILexicalBlockFile(scope: !2207, file: !156, discriminator: 1)
!2345 = distinct !{!2345, !2346, !2347}
!2346 = !DILocation(line: 678, column: 17, scope: !2208)
!2347 = !DILocation(line: 697, column: 19, scope: !2208)
!2348 = !DILocation(line: 704, column: 34, scope: !2349)
!2349 = distinct !DILexicalBlock(scope: !1751, file: !156, line: 704, column: 11)
!2350 = !DILocation(line: 706, column: 14, scope: !2349)
!2351 = !DILocation(line: 707, column: 14, scope: !2349)
!2352 = !DILocation(line: 707, column: 35, scope: !2353)
!2353 = !DILexicalBlockFile(scope: !2349, file: !156, discriminator: 1)
!2354 = !DILocation(line: 707, column: 17, scope: !2353)
!2355 = !DILocation(line: 707, column: 53, scope: !2353)
!2356 = !DILocation(line: 707, column: 47, scope: !2353)
!2357 = !DILocation(line: 707, column: 65, scope: !2353)
!2358 = !DILocation(line: 708, column: 15, scope: !2353)
!2359 = !DILocation(line: 708, column: 11, scope: !2349)
!2360 = !DILocation(line: 704, column: 11, scope: !2361)
!2361 = !DILexicalBlockFile(scope: !1751, file: !156, discriminator: 2)
!2362 = !DILocation(line: 712, column: 7, scope: !2363)
!2363 = !DILexicalBlockFile(scope: !2364, file: !156, discriminator: 1)
!2364 = distinct !DILexicalBlock(scope: !1751, file: !156, line: 712, column: 7)
!2365 = !DILocation(line: 712, column: 7, scope: !2366)
!2366 = !DILexicalBlockFile(scope: !2367, file: !156, discriminator: 4)
!2367 = distinct !DILexicalBlock(scope: !2364, file: !156, line: 712, column: 7)
!2368 = !DILocation(line: 712, column: 7, scope: !2369)
!2369 = !DILexicalBlockFile(scope: !2367, file: !156, discriminator: 3)
!2370 = !DILocation(line: 712, column: 7, scope: !2371)
!2371 = !DILexicalBlockFile(scope: !2372, file: !156, discriminator: 6)
!2372 = distinct !DILexicalBlock(scope: !2373, file: !156, line: 712, column: 7)
!2373 = distinct !DILexicalBlock(scope: !2374, file: !156, line: 712, column: 7)
!2374 = distinct !DILexicalBlock(scope: !2367, file: !156, line: 712, column: 7)
!2375 = !DILocation(line: 712, column: 7, scope: !2376)
!2376 = !DILexicalBlockFile(scope: !2373, file: !156, discriminator: 6)
!2377 = !DILocation(line: 712, column: 7, scope: !2378)
!2378 = !DILexicalBlockFile(scope: !2372, file: !156, discriminator: 7)
!2379 = !DILocation(line: 712, column: 7, scope: !2380)
!2380 = !DILexicalBlockFile(scope: !2373, file: !156, discriminator: 8)
!2381 = !DILocation(line: 712, column: 7, scope: !2382)
!2382 = !DILexicalBlockFile(scope: !2383, file: !156, discriminator: 11)
!2383 = distinct !DILexicalBlock(scope: !2384, file: !156, line: 712, column: 7)
!2384 = distinct !DILexicalBlock(scope: !2374, file: !156, line: 712, column: 7)
!2385 = !DILocation(line: 712, column: 7, scope: !2386)
!2386 = !DILexicalBlockFile(scope: !2384, file: !156, discriminator: 11)
!2387 = !DILocation(line: 712, column: 7, scope: !2388)
!2388 = !DILexicalBlockFile(scope: !2383, file: !156, discriminator: 12)
!2389 = !DILocation(line: 712, column: 7, scope: !2390)
!2390 = !DILexicalBlockFile(scope: !2384, file: !156, discriminator: 13)
!2391 = !DILocation(line: 712, column: 7, scope: !2392)
!2392 = !DILexicalBlockFile(scope: !2393, file: !156, discriminator: 16)
!2393 = distinct !DILexicalBlock(scope: !2394, file: !156, line: 712, column: 7)
!2394 = distinct !DILexicalBlock(scope: !2374, file: !156, line: 712, column: 7)
!2395 = !DILocation(line: 712, column: 7, scope: !2396)
!2396 = !DILexicalBlockFile(scope: !2394, file: !156, discriminator: 16)
!2397 = !DILocation(line: 712, column: 7, scope: !2398)
!2398 = !DILexicalBlockFile(scope: !2393, file: !156, discriminator: 17)
!2399 = !DILocation(line: 712, column: 7, scope: !2400)
!2400 = !DILexicalBlockFile(scope: !2394, file: !156, discriminator: 18)
!2401 = !DILocation(line: 712, column: 7, scope: !2402)
!2402 = !DILexicalBlockFile(scope: !2374, file: !156, discriminator: 20)
!2403 = !DILocation(line: 712, column: 7, scope: !2404)
!2404 = !DILexicalBlockFile(scope: !2405, file: !156, discriminator: 22)
!2405 = distinct !DILexicalBlock(scope: !2406, file: !156, line: 712, column: 7)
!2406 = distinct !DILexicalBlock(scope: !2364, file: !156, line: 712, column: 7)
!2407 = !DILocation(line: 712, column: 7, scope: !2408)
!2408 = !DILexicalBlockFile(scope: !2406, file: !156, discriminator: 22)
!2409 = !DILocation(line: 712, column: 7, scope: !2410)
!2410 = !DILexicalBlockFile(scope: !2405, file: !156, discriminator: 23)
!2411 = !DILocation(line: 712, column: 7, scope: !2412)
!2412 = !DILexicalBlockFile(scope: !2406, file: !156, discriminator: 24)
!2413 = !DILocation(line: 715, column: 7, scope: !2414)
!2414 = !DILexicalBlockFile(scope: !2415, file: !156, discriminator: 1)
!2415 = distinct !DILexicalBlock(scope: !2416, file: !156, line: 715, column: 7)
!2416 = distinct !DILexicalBlock(scope: !1751, file: !156, line: 715, column: 7)
!2417 = !DILocation(line: 715, column: 7, scope: !2418)
!2418 = !DILexicalBlockFile(scope: !2415, file: !156, discriminator: 2)
!2419 = !DILocation(line: 715, column: 7, scope: !2420)
!2420 = !DILexicalBlockFile(scope: !2421, file: !156, discriminator: 4)
!2421 = distinct !DILexicalBlock(scope: !2422, file: !156, line: 715, column: 7)
!2422 = distinct !DILexicalBlock(scope: !2423, file: !156, line: 715, column: 7)
!2423 = distinct !DILexicalBlock(scope: !2415, file: !156, line: 715, column: 7)
!2424 = !DILocation(line: 715, column: 7, scope: !2425)
!2425 = !DILexicalBlockFile(scope: !2422, file: !156, discriminator: 4)
!2426 = !DILocation(line: 715, column: 7, scope: !2427)
!2427 = !DILexicalBlockFile(scope: !2421, file: !156, discriminator: 5)
!2428 = !DILocation(line: 715, column: 7, scope: !2429)
!2429 = !DILexicalBlockFile(scope: !2422, file: !156, discriminator: 6)
!2430 = !DILocation(line: 715, column: 7, scope: !2431)
!2431 = !DILexicalBlockFile(scope: !2432, file: !156, discriminator: 9)
!2432 = distinct !DILexicalBlock(scope: !2433, file: !156, line: 715, column: 7)
!2433 = distinct !DILexicalBlock(scope: !2423, file: !156, line: 715, column: 7)
!2434 = !DILocation(line: 715, column: 7, scope: !2435)
!2435 = !DILexicalBlockFile(scope: !2433, file: !156, discriminator: 9)
!2436 = !DILocation(line: 715, column: 7, scope: !2437)
!2437 = !DILexicalBlockFile(scope: !2432, file: !156, discriminator: 10)
!2438 = !DILocation(line: 715, column: 7, scope: !2439)
!2439 = !DILexicalBlockFile(scope: !2433, file: !156, discriminator: 11)
!2440 = !DILocation(line: 715, column: 7, scope: !2441)
!2441 = !DILexicalBlockFile(scope: !2423, file: !156, discriminator: 13)
!2442 = !DILocation(line: 716, column: 7, scope: !2443)
!2443 = !DILexicalBlockFile(scope: !2444, file: !156, discriminator: 1)
!2444 = distinct !DILexicalBlock(scope: !2445, file: !156, line: 716, column: 7)
!2445 = distinct !DILexicalBlock(scope: !1751, file: !156, line: 716, column: 7)
!2446 = !DILocation(line: 716, column: 7, scope: !2447)
!2447 = !DILexicalBlockFile(scope: !2445, file: !156, discriminator: 1)
!2448 = !DILocation(line: 716, column: 7, scope: !2449)
!2449 = !DILexicalBlockFile(scope: !2444, file: !156, discriminator: 2)
!2450 = !DILocation(line: 716, column: 7, scope: !2451)
!2451 = !DILexicalBlockFile(scope: !2445, file: !156, discriminator: 3)
!2452 = !DILocation(line: 718, column: 13, scope: !2453)
!2453 = distinct !DILexicalBlock(scope: !1751, file: !156, line: 718, column: 11)
!2454 = !DILocation(line: 718, column: 11, scope: !1751)
!2455 = !DILocation(line: 720, column: 5, scope: !1752)
!2456 = !DILocation(line: 392, column: 75, scope: !2457)
!2457 = !DILexicalBlockFile(scope: !1752, file: !156, discriminator: 5)
!2458 = !DILocation(line: 392, column: 3, scope: !2457)
!2459 = distinct !{!2459, !2460, !2461}
!2460 = !DILocation(line: 392, column: 3, scope: !1753)
!2461 = !DILocation(line: 720, column: 5, scope: !1753)
!2462 = !DILocation(line: 722, column: 11, scope: !2463)
!2463 = distinct !DILexicalBlock(scope: !1724, file: !156, line: 722, column: 7)
!2464 = !DILocation(line: 722, column: 16, scope: !2463)
!2465 = !DILocation(line: 730, column: 51, scope: !2466)
!2466 = distinct !DILexicalBlock(scope: !1724, file: !156, line: 730, column: 7)
!2467 = !DILocation(line: 731, column: 10, scope: !2468)
!2468 = !DILexicalBlockFile(scope: !2466, file: !156, discriminator: 1)
!2469 = !DILocation(line: 733, column: 11, scope: !2470)
!2470 = distinct !DILexicalBlock(scope: !2471, file: !156, line: 733, column: 11)
!2471 = distinct !DILexicalBlock(scope: !2466, file: !156, line: 732, column: 5)
!2472 = !DILocation(line: 733, column: 11, scope: !2471)
!2473 = !DILocation(line: 734, column: 16, scope: !2470)
!2474 = !DILocation(line: 734, column: 9, scope: !2470)
!2475 = !DILocation(line: 738, column: 18, scope: !2476)
!2476 = distinct !DILexicalBlock(scope: !2470, file: !156, line: 738, column: 16)
!2477 = !DILocation(line: 738, column: 32, scope: !2478)
!2478 = !DILexicalBlockFile(scope: !2476, file: !156, discriminator: 1)
!2479 = !DILocation(line: 738, column: 29, scope: !2476)
!2480 = !DILocation(line: 747, column: 7, scope: !2481)
!2481 = distinct !DILexicalBlock(scope: !1724, file: !156, line: 747, column: 7)
!2482 = !DILocation(line: 747, column: 20, scope: !2481)
!2483 = !DILocation(line: 748, column: 12, scope: !2484)
!2484 = !DILexicalBlockFile(scope: !2485, file: !156, discriminator: 1)
!2485 = distinct !DILexicalBlock(scope: !2486, file: !156, line: 748, column: 5)
!2486 = distinct !DILexicalBlock(scope: !2481, file: !156, line: 748, column: 5)
!2487 = !DILocation(line: 748, column: 5, scope: !2488)
!2488 = !DILexicalBlockFile(scope: !2486, file: !156, discriminator: 1)
!2489 = !DILocation(line: 749, column: 7, scope: !2490)
!2490 = !DILexicalBlockFile(scope: !2491, file: !156, discriminator: 1)
!2491 = distinct !DILexicalBlock(scope: !2492, file: !156, line: 749, column: 7)
!2492 = distinct !DILexicalBlock(scope: !2485, file: !156, line: 749, column: 7)
!2493 = !DILocation(line: 749, column: 7, scope: !2494)
!2494 = !DILexicalBlockFile(scope: !2492, file: !156, discriminator: 1)
!2495 = !DILocation(line: 749, column: 7, scope: !2496)
!2496 = !DILexicalBlockFile(scope: !2491, file: !156, discriminator: 2)
!2497 = !DILocation(line: 749, column: 7, scope: !2498)
!2498 = !DILexicalBlockFile(scope: !2492, file: !156, discriminator: 3)
!2499 = !DILocation(line: 748, column: 39, scope: !2500)
!2500 = !DILexicalBlockFile(scope: !2485, file: !156, discriminator: 2)
!2501 = distinct !{!2501, !2502, !2503}
!2502 = !DILocation(line: 748, column: 5, scope: !2486)
!2503 = !DILocation(line: 749, column: 7, scope: !2486)
!2504 = !DILocation(line: 751, column: 11, scope: !2505)
!2505 = distinct !DILexicalBlock(scope: !1724, file: !156, line: 751, column: 7)
!2506 = !DILocation(line: 751, column: 7, scope: !1724)
!2507 = !DILocation(line: 752, column: 5, scope: !2505)
!2508 = !DILocation(line: 752, column: 17, scope: !2505)
!2509 = !DILocation(line: 758, column: 21, scope: !2510)
!2510 = distinct !DILexicalBlock(scope: !1724, file: !156, line: 758, column: 7)
!2511 = !DILocation(line: 758, column: 54, scope: !2512)
!2512 = !DILexicalBlockFile(scope: !2510, file: !156, discriminator: 1)
!2513 = !DILocation(line: 758, column: 51, scope: !2510)
!2514 = !DILocation(line: 762, column: 42, scope: !1724)
!2515 = !DILocation(line: 760, column: 10, scope: !1724)
!2516 = !DILocation(line: 760, column: 3, scope: !1724)
!2517 = !DILocation(line: 764, column: 1, scope: !1724)
!2518 = distinct !DISubprogram(name: "gettext_quote", scope: !156, file: !156, line: 199, type: !2519, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !128, variables: !2521)
!2519 = !DISubroutineType(types: !2520)
!2520 = !{!40, !40, !5}
!2521 = !{!2522, !2523, !2524, !2525}
!2522 = !DILocalVariable(name: "msgid", arg: 1, scope: !2518, file: !156, line: 199, type: !40)
!2523 = !DILocalVariable(name: "s", arg: 2, scope: !2518, file: !156, line: 199, type: !5)
!2524 = !DILocalVariable(name: "translation", scope: !2518, file: !156, line: 201, type: !40)
!2525 = !DILocalVariable(name: "locale_code", scope: !2518, file: !156, line: 202, type: !40)
!2526 = !DILocation(line: 199, column: 28, scope: !2518)
!2527 = !DILocation(line: 199, column: 54, scope: !2518)
!2528 = !DILocation(line: 201, column: 29, scope: !2518)
!2529 = !DILocation(line: 201, column: 15, scope: !2518)
!2530 = !DILocation(line: 204, column: 19, scope: !2531)
!2531 = distinct !DILexicalBlock(scope: !2518, file: !156, line: 204, column: 7)
!2532 = !DILocation(line: 204, column: 7, scope: !2518)
!2533 = !DILocation(line: 225, column: 17, scope: !2518)
!2534 = !DILocation(line: 202, column: 15, scope: !2518)
!2535 = !DILocalVariable(name: "s2", arg: 2, scope: !2536, file: !2537, line: 160, type: !40)
!2536 = distinct !DISubprogram(name: "strcaseeq0", scope: !2537, file: !2537, line: 160, type: !2538, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !128, variables: !2540)
!2537 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2538 = !DISubroutineType(types: !2539)
!2539 = !{!78, !40, !40, !30, !30, !30, !30, !30, !30, !30, !30, !30}
!2540 = !{!2541, !2535, !2542, !2543, !2544, !2545, !2546, !2547, !2548, !2549, !2550}
!2541 = !DILocalVariable(name: "s1", arg: 1, scope: !2536, file: !2537, line: 160, type: !40)
!2542 = !DILocalVariable(name: "s20", arg: 3, scope: !2536, file: !2537, line: 160, type: !30)
!2543 = !DILocalVariable(name: "s21", arg: 4, scope: !2536, file: !2537, line: 160, type: !30)
!2544 = !DILocalVariable(name: "s22", arg: 5, scope: !2536, file: !2537, line: 160, type: !30)
!2545 = !DILocalVariable(name: "s23", arg: 6, scope: !2536, file: !2537, line: 160, type: !30)
!2546 = !DILocalVariable(name: "s24", arg: 7, scope: !2536, file: !2537, line: 160, type: !30)
!2547 = !DILocalVariable(name: "s25", arg: 8, scope: !2536, file: !2537, line: 160, type: !30)
!2548 = !DILocalVariable(name: "s26", arg: 9, scope: !2536, file: !2537, line: 160, type: !30)
!2549 = !DILocalVariable(name: "s27", arg: 10, scope: !2536, file: !2537, line: 160, type: !30)
!2550 = !DILocalVariable(name: "s28", arg: 11, scope: !2536, file: !2537, line: 160, type: !30)
!2551 = !DILocation(line: 160, column: 41, scope: !2536, inlinedAt: !2552)
!2552 = distinct !DILocation(line: 226, column: 7, scope: !2553)
!2553 = distinct !DILexicalBlock(scope: !2518, file: !156, line: 226, column: 7)
!2554 = !DILocation(line: 160, column: 120, scope: !2536, inlinedAt: !2552)
!2555 = !DILocation(line: 160, column: 130, scope: !2536, inlinedAt: !2552)
!2556 = !DILocation(line: 162, column: 7, scope: !2557, inlinedAt: !2552)
!2557 = !DILexicalBlockFile(scope: !2558, file: !2537, discriminator: 1)
!2558 = distinct !DILexicalBlock(scope: !2536, file: !2537, line: 162, column: 7)
!2559 = !DILocalVariable(name: "s2", arg: 2, scope: !2560, file: !2537, line: 146, type: !40)
!2560 = distinct !DISubprogram(name: "strcaseeq1", scope: !2537, file: !2537, line: 146, type: !2561, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !128, variables: !2563)
!2561 = !DISubroutineType(types: !2562)
!2562 = !{!78, !40, !40, !30, !30, !30, !30, !30, !30, !30, !30}
!2563 = !{!2564, !2559, !2565, !2566, !2567, !2568, !2569, !2570, !2571, !2572}
!2564 = !DILocalVariable(name: "s1", arg: 1, scope: !2560, file: !2537, line: 146, type: !40)
!2565 = !DILocalVariable(name: "s21", arg: 3, scope: !2560, file: !2537, line: 146, type: !30)
!2566 = !DILocalVariable(name: "s22", arg: 4, scope: !2560, file: !2537, line: 146, type: !30)
!2567 = !DILocalVariable(name: "s23", arg: 5, scope: !2560, file: !2537, line: 146, type: !30)
!2568 = !DILocalVariable(name: "s24", arg: 6, scope: !2560, file: !2537, line: 146, type: !30)
!2569 = !DILocalVariable(name: "s25", arg: 7, scope: !2560, file: !2537, line: 146, type: !30)
!2570 = !DILocalVariable(name: "s26", arg: 8, scope: !2560, file: !2537, line: 146, type: !30)
!2571 = !DILocalVariable(name: "s27", arg: 9, scope: !2560, file: !2537, line: 146, type: !30)
!2572 = !DILocalVariable(name: "s28", arg: 10, scope: !2560, file: !2537, line: 146, type: !30)
!2573 = !DILocation(line: 146, column: 41, scope: !2560, inlinedAt: !2574)
!2574 = distinct !DILocation(line: 167, column: 16, scope: !2575, inlinedAt: !2552)
!2575 = distinct !DILexicalBlock(scope: !2576, file: !2537, line: 164, column: 11)
!2576 = distinct !DILexicalBlock(scope: !2558, file: !2537, line: 163, column: 5)
!2577 = !DILocation(line: 146, column: 110, scope: !2560, inlinedAt: !2574)
!2578 = !DILocation(line: 146, column: 120, scope: !2560, inlinedAt: !2574)
!2579 = !DILocation(line: 148, column: 7, scope: !2580, inlinedAt: !2574)
!2580 = !DILexicalBlockFile(scope: !2581, file: !2537, discriminator: 1)
!2581 = distinct !DILexicalBlock(scope: !2560, file: !2537, line: 148, column: 7)
!2582 = !DILocalVariable(name: "s2", arg: 2, scope: !2583, file: !2537, line: 132, type: !40)
!2583 = distinct !DISubprogram(name: "strcaseeq2", scope: !2537, file: !2537, line: 132, type: !2584, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !128, variables: !2586)
!2584 = !DISubroutineType(types: !2585)
!2585 = !{!78, !40, !40, !30, !30, !30, !30, !30, !30, !30}
!2586 = !{!2587, !2582, !2588, !2589, !2590, !2591, !2592, !2593, !2594}
!2587 = !DILocalVariable(name: "s1", arg: 1, scope: !2583, file: !2537, line: 132, type: !40)
!2588 = !DILocalVariable(name: "s22", arg: 3, scope: !2583, file: !2537, line: 132, type: !30)
!2589 = !DILocalVariable(name: "s23", arg: 4, scope: !2583, file: !2537, line: 132, type: !30)
!2590 = !DILocalVariable(name: "s24", arg: 5, scope: !2583, file: !2537, line: 132, type: !30)
!2591 = !DILocalVariable(name: "s25", arg: 6, scope: !2583, file: !2537, line: 132, type: !30)
!2592 = !DILocalVariable(name: "s26", arg: 7, scope: !2583, file: !2537, line: 132, type: !30)
!2593 = !DILocalVariable(name: "s27", arg: 8, scope: !2583, file: !2537, line: 132, type: !30)
!2594 = !DILocalVariable(name: "s28", arg: 9, scope: !2583, file: !2537, line: 132, type: !30)
!2595 = !DILocation(line: 132, column: 41, scope: !2583, inlinedAt: !2596)
!2596 = distinct !DILocation(line: 153, column: 16, scope: !2597, inlinedAt: !2574)
!2597 = distinct !DILexicalBlock(scope: !2598, file: !2537, line: 150, column: 11)
!2598 = distinct !DILexicalBlock(scope: !2581, file: !2537, line: 149, column: 5)
!2599 = !DILocation(line: 132, column: 100, scope: !2583, inlinedAt: !2596)
!2600 = !DILocation(line: 132, column: 110, scope: !2583, inlinedAt: !2596)
!2601 = !DILocation(line: 134, column: 7, scope: !2602, inlinedAt: !2596)
!2602 = !DILexicalBlockFile(scope: !2603, file: !2537, discriminator: 1)
!2603 = distinct !DILexicalBlock(scope: !2583, file: !2537, line: 134, column: 7)
!2604 = !DILocalVariable(name: "s2", arg: 2, scope: !2605, file: !2537, line: 118, type: !40)
!2605 = distinct !DISubprogram(name: "strcaseeq3", scope: !2537, file: !2537, line: 118, type: !2606, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !128, variables: !2608)
!2606 = !DISubroutineType(types: !2607)
!2607 = !{!78, !40, !40, !30, !30, !30, !30, !30, !30}
!2608 = !{!2609, !2604, !2610, !2611, !2612, !2613, !2614, !2615}
!2609 = !DILocalVariable(name: "s1", arg: 1, scope: !2605, file: !2537, line: 118, type: !40)
!2610 = !DILocalVariable(name: "s23", arg: 3, scope: !2605, file: !2537, line: 118, type: !30)
!2611 = !DILocalVariable(name: "s24", arg: 4, scope: !2605, file: !2537, line: 118, type: !30)
!2612 = !DILocalVariable(name: "s25", arg: 5, scope: !2605, file: !2537, line: 118, type: !30)
!2613 = !DILocalVariable(name: "s26", arg: 6, scope: !2605, file: !2537, line: 118, type: !30)
!2614 = !DILocalVariable(name: "s27", arg: 7, scope: !2605, file: !2537, line: 118, type: !30)
!2615 = !DILocalVariable(name: "s28", arg: 8, scope: !2605, file: !2537, line: 118, type: !30)
!2616 = !DILocation(line: 118, column: 41, scope: !2605, inlinedAt: !2617)
!2617 = distinct !DILocation(line: 139, column: 16, scope: !2618, inlinedAt: !2596)
!2618 = distinct !DILexicalBlock(scope: !2619, file: !2537, line: 136, column: 11)
!2619 = distinct !DILexicalBlock(scope: !2603, file: !2537, line: 135, column: 5)
!2620 = !DILocation(line: 118, column: 90, scope: !2605, inlinedAt: !2617)
!2621 = !DILocation(line: 118, column: 100, scope: !2605, inlinedAt: !2617)
!2622 = !DILocation(line: 120, column: 7, scope: !2623, inlinedAt: !2617)
!2623 = !DILexicalBlockFile(scope: !2624, file: !2537, discriminator: 2)
!2624 = distinct !DILexicalBlock(scope: !2605, file: !2537, line: 120, column: 7)
!2625 = !DILocation(line: 120, column: 7, scope: !2626, inlinedAt: !2617)
!2626 = !DILexicalBlockFile(scope: !2605, file: !2537, discriminator: 2)
!2627 = !DILocalVariable(name: "s2", arg: 2, scope: !2628, file: !2537, line: 104, type: !40)
!2628 = distinct !DISubprogram(name: "strcaseeq4", scope: !2537, file: !2537, line: 104, type: !2629, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !128, variables: !2631)
!2629 = !DISubroutineType(types: !2630)
!2630 = !{!78, !40, !40, !30, !30, !30, !30, !30}
!2631 = !{!2632, !2627, !2633, !2634, !2635, !2636, !2637}
!2632 = !DILocalVariable(name: "s1", arg: 1, scope: !2628, file: !2537, line: 104, type: !40)
!2633 = !DILocalVariable(name: "s24", arg: 3, scope: !2628, file: !2537, line: 104, type: !30)
!2634 = !DILocalVariable(name: "s25", arg: 4, scope: !2628, file: !2537, line: 104, type: !30)
!2635 = !DILocalVariable(name: "s26", arg: 5, scope: !2628, file: !2537, line: 104, type: !30)
!2636 = !DILocalVariable(name: "s27", arg: 6, scope: !2628, file: !2537, line: 104, type: !30)
!2637 = !DILocalVariable(name: "s28", arg: 7, scope: !2628, file: !2537, line: 104, type: !30)
!2638 = !DILocation(line: 104, column: 41, scope: !2628, inlinedAt: !2639)
!2639 = distinct !DILocation(line: 125, column: 16, scope: !2640, inlinedAt: !2617)
!2640 = distinct !DILexicalBlock(scope: !2641, file: !2537, line: 122, column: 11)
!2641 = distinct !DILexicalBlock(scope: !2624, file: !2537, line: 121, column: 5)
!2642 = !DILocation(line: 104, column: 80, scope: !2628, inlinedAt: !2639)
!2643 = !DILocation(line: 104, column: 90, scope: !2628, inlinedAt: !2639)
!2644 = !DILocation(line: 106, column: 7, scope: !2645, inlinedAt: !2639)
!2645 = !DILexicalBlockFile(scope: !2646, file: !2537, discriminator: 2)
!2646 = distinct !DILexicalBlock(scope: !2628, file: !2537, line: 106, column: 7)
!2647 = !DILocation(line: 106, column: 7, scope: !2648, inlinedAt: !2639)
!2648 = !DILexicalBlockFile(scope: !2628, file: !2537, discriminator: 2)
!2649 = !DILocalVariable(name: "s2", arg: 2, scope: !2650, file: !2537, line: 90, type: !40)
!2650 = distinct !DISubprogram(name: "strcaseeq5", scope: !2537, file: !2537, line: 90, type: !2651, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !128, variables: !2653)
!2651 = !DISubroutineType(types: !2652)
!2652 = !{!78, !40, !40, !30, !30, !30, !30}
!2653 = !{!2654, !2649, !2655, !2656, !2657, !2658}
!2654 = !DILocalVariable(name: "s1", arg: 1, scope: !2650, file: !2537, line: 90, type: !40)
!2655 = !DILocalVariable(name: "s25", arg: 3, scope: !2650, file: !2537, line: 90, type: !30)
!2656 = !DILocalVariable(name: "s26", arg: 4, scope: !2650, file: !2537, line: 90, type: !30)
!2657 = !DILocalVariable(name: "s27", arg: 5, scope: !2650, file: !2537, line: 90, type: !30)
!2658 = !DILocalVariable(name: "s28", arg: 6, scope: !2650, file: !2537, line: 90, type: !30)
!2659 = !DILocation(line: 90, column: 41, scope: !2650, inlinedAt: !2660)
!2660 = distinct !DILocation(line: 111, column: 16, scope: !2661, inlinedAt: !2639)
!2661 = distinct !DILexicalBlock(scope: !2662, file: !2537, line: 108, column: 11)
!2662 = distinct !DILexicalBlock(scope: !2646, file: !2537, line: 107, column: 5)
!2663 = !DILocation(line: 90, column: 70, scope: !2650, inlinedAt: !2660)
!2664 = !DILocation(line: 90, column: 80, scope: !2650, inlinedAt: !2660)
!2665 = !DILocation(line: 92, column: 7, scope: !2666, inlinedAt: !2660)
!2666 = !DILexicalBlockFile(scope: !2667, file: !2537, discriminator: 2)
!2667 = distinct !DILexicalBlock(scope: !2650, file: !2537, line: 92, column: 7)
!2668 = !DILocation(line: 92, column: 7, scope: !2669, inlinedAt: !2660)
!2669 = !DILexicalBlockFile(scope: !2650, file: !2537, discriminator: 2)
!2670 = !DILocation(line: 227, column: 12, scope: !2553)
!2671 = !DILocation(line: 227, column: 21, scope: !2553)
!2672 = !DILocation(line: 227, column: 5, scope: !2553)
!2673 = !DILocation(line: 146, column: 41, scope: !2560, inlinedAt: !2674)
!2674 = distinct !DILocation(line: 167, column: 16, scope: !2575, inlinedAt: !2675)
!2675 = distinct !DILocation(line: 228, column: 7, scope: !2676)
!2676 = distinct !DILexicalBlock(scope: !2518, file: !156, line: 228, column: 7)
!2677 = !DILocation(line: 146, column: 110, scope: !2560, inlinedAt: !2674)
!2678 = !DILocation(line: 146, column: 120, scope: !2560, inlinedAt: !2674)
!2679 = !DILocation(line: 148, column: 7, scope: !2580, inlinedAt: !2674)
!2680 = !DILocation(line: 132, column: 41, scope: !2583, inlinedAt: !2681)
!2681 = distinct !DILocation(line: 153, column: 16, scope: !2597, inlinedAt: !2674)
!2682 = !DILocation(line: 132, column: 100, scope: !2583, inlinedAt: !2681)
!2683 = !DILocation(line: 132, column: 110, scope: !2583, inlinedAt: !2681)
!2684 = !DILocation(line: 134, column: 7, scope: !2685, inlinedAt: !2681)
!2685 = !DILexicalBlockFile(scope: !2603, file: !2537, discriminator: 2)
!2686 = !DILocation(line: 134, column: 7, scope: !2687, inlinedAt: !2681)
!2687 = !DILexicalBlockFile(scope: !2583, file: !2537, discriminator: 2)
!2688 = !DILocation(line: 118, column: 41, scope: !2605, inlinedAt: !2689)
!2689 = distinct !DILocation(line: 139, column: 16, scope: !2618, inlinedAt: !2681)
!2690 = !DILocation(line: 118, column: 90, scope: !2605, inlinedAt: !2689)
!2691 = !DILocation(line: 118, column: 100, scope: !2605, inlinedAt: !2689)
!2692 = !DILocation(line: 120, column: 7, scope: !2623, inlinedAt: !2689)
!2693 = !DILocation(line: 120, column: 7, scope: !2626, inlinedAt: !2689)
!2694 = !DILocation(line: 104, column: 41, scope: !2628, inlinedAt: !2695)
!2695 = distinct !DILocation(line: 125, column: 16, scope: !2640, inlinedAt: !2689)
!2696 = !DILocation(line: 104, column: 80, scope: !2628, inlinedAt: !2695)
!2697 = !DILocation(line: 104, column: 90, scope: !2628, inlinedAt: !2695)
!2698 = !DILocation(line: 106, column: 7, scope: !2645, inlinedAt: !2695)
!2699 = !DILocation(line: 106, column: 7, scope: !2648, inlinedAt: !2695)
!2700 = !DILocation(line: 90, column: 41, scope: !2650, inlinedAt: !2701)
!2701 = distinct !DILocation(line: 111, column: 16, scope: !2661, inlinedAt: !2695)
!2702 = !DILocation(line: 90, column: 70, scope: !2650, inlinedAt: !2701)
!2703 = !DILocation(line: 90, column: 80, scope: !2650, inlinedAt: !2701)
!2704 = !DILocation(line: 92, column: 7, scope: !2666, inlinedAt: !2701)
!2705 = !DILocation(line: 92, column: 7, scope: !2669, inlinedAt: !2701)
!2706 = !DILocalVariable(name: "s2", arg: 2, scope: !2707, file: !2537, line: 76, type: !40)
!2707 = distinct !DISubprogram(name: "strcaseeq6", scope: !2537, file: !2537, line: 76, type: !2708, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !128, variables: !2710)
!2708 = !DISubroutineType(types: !2709)
!2709 = !{!78, !40, !40, !30, !30, !30}
!2710 = !{!2711, !2706, !2712, !2713, !2714}
!2711 = !DILocalVariable(name: "s1", arg: 1, scope: !2707, file: !2537, line: 76, type: !40)
!2712 = !DILocalVariable(name: "s26", arg: 3, scope: !2707, file: !2537, line: 76, type: !30)
!2713 = !DILocalVariable(name: "s27", arg: 4, scope: !2707, file: !2537, line: 76, type: !30)
!2714 = !DILocalVariable(name: "s28", arg: 5, scope: !2707, file: !2537, line: 76, type: !30)
!2715 = !DILocation(line: 76, column: 41, scope: !2707, inlinedAt: !2716)
!2716 = distinct !DILocation(line: 97, column: 16, scope: !2717, inlinedAt: !2701)
!2717 = distinct !DILexicalBlock(scope: !2718, file: !2537, line: 94, column: 11)
!2718 = distinct !DILexicalBlock(scope: !2667, file: !2537, line: 93, column: 5)
!2719 = !DILocation(line: 76, column: 60, scope: !2707, inlinedAt: !2716)
!2720 = !DILocation(line: 76, column: 70, scope: !2707, inlinedAt: !2716)
!2721 = !DILocation(line: 78, column: 7, scope: !2722, inlinedAt: !2716)
!2722 = !DILexicalBlockFile(scope: !2723, file: !2537, discriminator: 2)
!2723 = distinct !DILexicalBlock(scope: !2707, file: !2537, line: 78, column: 7)
!2724 = !DILocation(line: 78, column: 7, scope: !2725, inlinedAt: !2716)
!2725 = !DILexicalBlockFile(scope: !2707, file: !2537, discriminator: 2)
!2726 = !DILocalVariable(name: "s2", arg: 2, scope: !2727, file: !2537, line: 62, type: !40)
!2727 = distinct !DISubprogram(name: "strcaseeq7", scope: !2537, file: !2537, line: 62, type: !2728, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !128, variables: !2730)
!2728 = !DISubroutineType(types: !2729)
!2729 = !{!78, !40, !40, !30, !30}
!2730 = !{!2731, !2726, !2732, !2733}
!2731 = !DILocalVariable(name: "s1", arg: 1, scope: !2727, file: !2537, line: 62, type: !40)
!2732 = !DILocalVariable(name: "s27", arg: 3, scope: !2727, file: !2537, line: 62, type: !30)
!2733 = !DILocalVariable(name: "s28", arg: 4, scope: !2727, file: !2537, line: 62, type: !30)
!2734 = !DILocation(line: 62, column: 41, scope: !2727, inlinedAt: !2735)
!2735 = distinct !DILocation(line: 83, column: 16, scope: !2736, inlinedAt: !2716)
!2736 = distinct !DILexicalBlock(scope: !2737, file: !2537, line: 80, column: 11)
!2737 = distinct !DILexicalBlock(scope: !2723, file: !2537, line: 79, column: 5)
!2738 = !DILocation(line: 62, column: 50, scope: !2727, inlinedAt: !2735)
!2739 = !DILocation(line: 62, column: 60, scope: !2727, inlinedAt: !2735)
!2740 = !DILocation(line: 64, column: 7, scope: !2741, inlinedAt: !2735)
!2741 = !DILexicalBlockFile(scope: !2742, file: !2537, discriminator: 2)
!2742 = distinct !DILexicalBlock(scope: !2727, file: !2537, line: 64, column: 7)
!2743 = !DILocation(line: 228, column: 7, scope: !2518)
!2744 = !DILocation(line: 229, column: 12, scope: !2676)
!2745 = !DILocation(line: 229, column: 21, scope: !2676)
!2746 = !DILocation(line: 229, column: 5, scope: !2676)
!2747 = !DILocation(line: 231, column: 13, scope: !2518)
!2748 = !DILocation(line: 231, column: 11, scope: !2518)
!2749 = !DILocation(line: 231, column: 3, scope: !2518)
!2750 = !DILocation(line: 232, column: 1, scope: !2518)
!2751 = distinct !DISubprogram(name: "quotearg_alloc", scope: !156, file: !156, line: 791, type: !2752, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !128, variables: !2754)
!2752 = !DISubroutineType(types: !2753)
!2753 = !{!29, !40, !32, !1592}
!2754 = !{!2755, !2756, !2757}
!2755 = !DILocalVariable(name: "arg", arg: 1, scope: !2751, file: !156, line: 791, type: !40)
!2756 = !DILocalVariable(name: "argsize", arg: 2, scope: !2751, file: !156, line: 791, type: !32)
!2757 = !DILocalVariable(name: "o", arg: 3, scope: !2751, file: !156, line: 792, type: !1592)
!2758 = !DILocation(line: 791, column: 29, scope: !2751)
!2759 = !DILocation(line: 791, column: 41, scope: !2751)
!2760 = !DILocation(line: 792, column: 47, scope: !2751)
!2761 = !DILocalVariable(name: "arg", arg: 1, scope: !2762, file: !156, line: 804, type: !40)
!2762 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !156, file: !156, line: 804, type: !2763, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !128, variables: !2765)
!2763 = !DISubroutineType(types: !2764)
!2764 = !{!29, !40, !32, !571, !1592}
!2765 = !{!2761, !2766, !2767, !2768, !2769, !2770, !2771, !2772, !2773}
!2766 = !DILocalVariable(name: "argsize", arg: 2, scope: !2762, file: !156, line: 804, type: !32)
!2767 = !DILocalVariable(name: "size", arg: 3, scope: !2762, file: !156, line: 804, type: !571)
!2768 = !DILocalVariable(name: "o", arg: 4, scope: !2762, file: !156, line: 805, type: !1592)
!2769 = !DILocalVariable(name: "p", scope: !2762, file: !156, line: 807, type: !1592)
!2770 = !DILocalVariable(name: "e", scope: !2762, file: !156, line: 808, type: !78)
!2771 = !DILocalVariable(name: "flags", scope: !2762, file: !156, line: 810, type: !78)
!2772 = !DILocalVariable(name: "bufsize", scope: !2762, file: !156, line: 811, type: !32)
!2773 = !DILocalVariable(name: "buf", scope: !2762, file: !156, line: 815, type: !29)
!2774 = !DILocation(line: 804, column: 33, scope: !2762, inlinedAt: !2775)
!2775 = distinct !DILocation(line: 794, column: 10, scope: !2751)
!2776 = !DILocation(line: 804, column: 45, scope: !2762, inlinedAt: !2775)
!2777 = !DILocation(line: 804, column: 62, scope: !2762, inlinedAt: !2775)
!2778 = !DILocation(line: 805, column: 51, scope: !2762, inlinedAt: !2775)
!2779 = !DILocation(line: 807, column: 37, scope: !2762, inlinedAt: !2775)
!2780 = !DILocation(line: 807, column: 33, scope: !2762, inlinedAt: !2775)
!2781 = !DILocation(line: 808, column: 11, scope: !2762, inlinedAt: !2775)
!2782 = !DILocation(line: 808, column: 7, scope: !2762, inlinedAt: !2775)
!2783 = !DILocation(line: 810, column: 18, scope: !2762, inlinedAt: !2775)
!2784 = !DILocation(line: 810, column: 24, scope: !2762, inlinedAt: !2775)
!2785 = !DILocation(line: 810, column: 7, scope: !2762, inlinedAt: !2775)
!2786 = !DILocation(line: 811, column: 69, scope: !2762, inlinedAt: !2775)
!2787 = !DILocation(line: 812, column: 53, scope: !2762, inlinedAt: !2775)
!2788 = !DILocation(line: 813, column: 49, scope: !2762, inlinedAt: !2775)
!2789 = !DILocation(line: 814, column: 49, scope: !2762, inlinedAt: !2775)
!2790 = !DILocation(line: 811, column: 20, scope: !2762, inlinedAt: !2775)
!2791 = !DILocation(line: 814, column: 62, scope: !2762, inlinedAt: !2775)
!2792 = !DILocation(line: 811, column: 10, scope: !2762, inlinedAt: !2775)
!2793 = !DILocalVariable(name: "n", arg: 1, scope: !2794, file: !567, line: 220, type: !32)
!2794 = distinct !DISubprogram(name: "xcharalloc", scope: !567, file: !567, line: 220, type: !2795, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !128, variables: !2797)
!2795 = !DISubroutineType(types: !2796)
!2796 = !{!29, !32}
!2797 = !{!2793}
!2798 = !DILocation(line: 220, column: 20, scope: !2794, inlinedAt: !2799)
!2799 = distinct !DILocation(line: 815, column: 15, scope: !2762, inlinedAt: !2775)
!2800 = !DILocation(line: 222, column: 10, scope: !2794, inlinedAt: !2799)
!2801 = !DILocation(line: 815, column: 9, scope: !2762, inlinedAt: !2775)
!2802 = !DILocation(line: 816, column: 60, scope: !2762, inlinedAt: !2775)
!2803 = !DILocation(line: 818, column: 32, scope: !2762, inlinedAt: !2775)
!2804 = !DILocation(line: 818, column: 47, scope: !2762, inlinedAt: !2775)
!2805 = !DILocation(line: 816, column: 3, scope: !2762, inlinedAt: !2775)
!2806 = !DILocation(line: 819, column: 9, scope: !2762, inlinedAt: !2775)
!2807 = !DILocation(line: 794, column: 3, scope: !2751)
!2808 = !DILocation(line: 804, column: 33, scope: !2762)
!2809 = !DILocation(line: 804, column: 45, scope: !2762)
!2810 = !DILocation(line: 804, column: 62, scope: !2762)
!2811 = !DILocation(line: 805, column: 51, scope: !2762)
!2812 = !DILocation(line: 807, column: 37, scope: !2762)
!2813 = !DILocation(line: 807, column: 33, scope: !2762)
!2814 = !DILocation(line: 808, column: 11, scope: !2762)
!2815 = !DILocation(line: 808, column: 7, scope: !2762)
!2816 = !DILocation(line: 810, column: 18, scope: !2762)
!2817 = !DILocation(line: 810, column: 27, scope: !2762)
!2818 = !DILocation(line: 810, column: 24, scope: !2762)
!2819 = !DILocation(line: 810, column: 7, scope: !2762)
!2820 = !DILocation(line: 811, column: 69, scope: !2762)
!2821 = !DILocation(line: 812, column: 53, scope: !2762)
!2822 = !DILocation(line: 813, column: 49, scope: !2762)
!2823 = !DILocation(line: 814, column: 49, scope: !2762)
!2824 = !DILocation(line: 811, column: 20, scope: !2762)
!2825 = !DILocation(line: 814, column: 62, scope: !2762)
!2826 = !DILocation(line: 811, column: 10, scope: !2762)
!2827 = !DILocation(line: 220, column: 20, scope: !2794, inlinedAt: !2828)
!2828 = distinct !DILocation(line: 815, column: 15, scope: !2762)
!2829 = !DILocation(line: 222, column: 10, scope: !2794, inlinedAt: !2828)
!2830 = !DILocation(line: 815, column: 9, scope: !2762)
!2831 = !DILocation(line: 816, column: 60, scope: !2762)
!2832 = !DILocation(line: 818, column: 32, scope: !2762)
!2833 = !DILocation(line: 818, column: 47, scope: !2762)
!2834 = !DILocation(line: 816, column: 3, scope: !2762)
!2835 = !DILocation(line: 819, column: 9, scope: !2762)
!2836 = !DILocation(line: 820, column: 7, scope: !2762)
!2837 = !DILocation(line: 821, column: 11, scope: !2838)
!2838 = distinct !DILexicalBlock(scope: !2762, file: !156, line: 820, column: 7)
!2839 = !{!917, !917, i64 0}
!2840 = !DILocation(line: 821, column: 5, scope: !2838)
!2841 = !DILocation(line: 822, column: 3, scope: !2762)
!2842 = distinct !DISubprogram(name: "quotearg_free", scope: !156, file: !156, line: 840, type: !632, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !128, variables: !2843)
!2843 = !{!2844, !2845}
!2844 = !DILocalVariable(name: "sv", scope: !2842, file: !156, line: 842, type: !183)
!2845 = !DILocalVariable(name: "i", scope: !2842, file: !156, line: 843, type: !78)
!2846 = !DILocation(line: 842, column: 24, scope: !2842)
!2847 = !DILocation(line: 842, column: 19, scope: !2842)
!2848 = !DILocation(line: 843, column: 7, scope: !2842)
!2849 = !DILocation(line: 844, column: 19, scope: !2850)
!2850 = !DILexicalBlockFile(scope: !2851, file: !156, discriminator: 1)
!2851 = distinct !DILexicalBlock(scope: !2852, file: !156, line: 844, column: 3)
!2852 = distinct !DILexicalBlock(scope: !2842, file: !156, line: 844, column: 3)
!2853 = !DILocation(line: 844, column: 17, scope: !2850)
!2854 = !DILocation(line: 844, column: 3, scope: !2855)
!2855 = !DILexicalBlockFile(scope: !2852, file: !156, discriminator: 1)
!2856 = !DILocation(line: 845, column: 17, scope: !2851)
!2857 = !{!2858, !617, i64 8}
!2858 = !{!"slotvec", !917, i64 0, !617, i64 8}
!2859 = !DILocation(line: 845, column: 5, scope: !2851)
!2860 = !DILocation(line: 844, column: 28, scope: !2861)
!2861 = !DILexicalBlockFile(scope: !2851, file: !156, discriminator: 2)
!2862 = distinct !{!2862, !2863, !2864}
!2863 = !DILocation(line: 844, column: 3, scope: !2852)
!2864 = !DILocation(line: 845, column: 20, scope: !2852)
!2865 = !DILocation(line: 846, column: 13, scope: !2866)
!2866 = distinct !DILexicalBlock(scope: !2842, file: !156, line: 846, column: 7)
!2867 = !DILocation(line: 846, column: 17, scope: !2866)
!2868 = !DILocation(line: 846, column: 7, scope: !2842)
!2869 = !DILocation(line: 848, column: 7, scope: !2870)
!2870 = distinct !DILexicalBlock(scope: !2866, file: !156, line: 847, column: 5)
!2871 = !DILocation(line: 849, column: 21, scope: !2870)
!2872 = !{!2858, !917, i64 0}
!2873 = !DILocation(line: 850, column: 20, scope: !2870)
!2874 = !DILocation(line: 851, column: 5, scope: !2870)
!2875 = !DILocation(line: 852, column: 10, scope: !2876)
!2876 = distinct !DILexicalBlock(scope: !2842, file: !156, line: 852, column: 7)
!2877 = !DILocation(line: 852, column: 7, scope: !2842)
!2878 = !DILocation(line: 854, column: 13, scope: !2879)
!2879 = distinct !DILexicalBlock(scope: !2876, file: !156, line: 853, column: 5)
!2880 = !DILocation(line: 854, column: 7, scope: !2879)
!2881 = !DILocation(line: 855, column: 15, scope: !2879)
!2882 = !DILocation(line: 856, column: 5, scope: !2879)
!2883 = !DILocation(line: 857, column: 10, scope: !2842)
!2884 = !DILocation(line: 858, column: 1, scope: !2842)
!2885 = distinct !DISubprogram(name: "quotearg_n", scope: !156, file: !156, line: 922, type: !2886, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !128, variables: !2888)
!2886 = !DISubroutineType(types: !2887)
!2887 = !{!29, !78, !40}
!2888 = !{!2889, !2890}
!2889 = !DILocalVariable(name: "n", arg: 1, scope: !2885, file: !156, line: 922, type: !78)
!2890 = !DILocalVariable(name: "arg", arg: 2, scope: !2885, file: !156, line: 922, type: !40)
!2891 = !DILocation(line: 922, column: 17, scope: !2885)
!2892 = !DILocation(line: 922, column: 32, scope: !2885)
!2893 = !DILocation(line: 924, column: 10, scope: !2885)
!2894 = !DILocation(line: 924, column: 3, scope: !2885)
!2895 = distinct !DISubprogram(name: "quotearg_n_options", scope: !156, file: !156, line: 869, type: !2896, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !128, variables: !2898)
!2896 = !DISubroutineType(types: !2897)
!2897 = !{!29, !78, !40, !32, !1592}
!2898 = !{!2899, !2900, !2901, !2902, !2903, !2904, !2905, !2908, !2910, !2911, !2912}
!2899 = !DILocalVariable(name: "n", arg: 1, scope: !2895, file: !156, line: 869, type: !78)
!2900 = !DILocalVariable(name: "arg", arg: 2, scope: !2895, file: !156, line: 869, type: !40)
!2901 = !DILocalVariable(name: "argsize", arg: 3, scope: !2895, file: !156, line: 869, type: !32)
!2902 = !DILocalVariable(name: "options", arg: 4, scope: !2895, file: !156, line: 870, type: !1592)
!2903 = !DILocalVariable(name: "e", scope: !2895, file: !156, line: 872, type: !78)
!2904 = !DILocalVariable(name: "sv", scope: !2895, file: !156, line: 874, type: !183)
!2905 = !DILocalVariable(name: "preallocated", scope: !2906, file: !156, line: 881, type: !46)
!2906 = distinct !DILexicalBlock(scope: !2907, file: !156, line: 880, column: 5)
!2907 = distinct !DILexicalBlock(scope: !2895, file: !156, line: 879, column: 7)
!2908 = !DILocalVariable(name: "size", scope: !2909, file: !156, line: 894, type: !32)
!2909 = distinct !DILexicalBlock(scope: !2895, file: !156, line: 893, column: 3)
!2910 = !DILocalVariable(name: "val", scope: !2909, file: !156, line: 895, type: !29)
!2911 = !DILocalVariable(name: "flags", scope: !2909, file: !156, line: 897, type: !78)
!2912 = !DILocalVariable(name: "qsize", scope: !2909, file: !156, line: 898, type: !32)
!2913 = !DILocation(line: 869, column: 25, scope: !2895)
!2914 = !DILocation(line: 869, column: 40, scope: !2895)
!2915 = !DILocation(line: 869, column: 52, scope: !2895)
!2916 = !DILocation(line: 870, column: 51, scope: !2895)
!2917 = !DILocation(line: 872, column: 11, scope: !2895)
!2918 = !DILocation(line: 872, column: 7, scope: !2895)
!2919 = !DILocation(line: 874, column: 24, scope: !2895)
!2920 = !DILocation(line: 874, column: 19, scope: !2895)
!2921 = !DILocation(line: 876, column: 9, scope: !2922)
!2922 = distinct !DILexicalBlock(scope: !2895, file: !156, line: 876, column: 7)
!2923 = !DILocation(line: 876, column: 7, scope: !2895)
!2924 = !DILocation(line: 877, column: 5, scope: !2922)
!2925 = !DILocation(line: 879, column: 7, scope: !2907)
!2926 = !DILocation(line: 879, column: 14, scope: !2907)
!2927 = !DILocation(line: 879, column: 7, scope: !2895)
!2928 = !DILocation(line: 881, column: 31, scope: !2906)
!2929 = !DILocation(line: 883, column: 67, scope: !2930)
!2930 = distinct !DILexicalBlock(scope: !2906, file: !156, line: 883, column: 11)
!2931 = !DILocation(line: 883, column: 11, scope: !2906)
!2932 = !DILocation(line: 884, column: 9, scope: !2930)
!2933 = !DILocation(line: 886, column: 32, scope: !2934)
!2934 = !DILexicalBlockFile(scope: !2906, file: !156, discriminator: 3)
!2935 = !DILocation(line: 886, column: 61, scope: !2934)
!2936 = !DILocation(line: 886, column: 58, scope: !2934)
!2937 = !DILocation(line: 886, column: 66, scope: !2934)
!2938 = !DILocation(line: 886, column: 22, scope: !2934)
!2939 = !DILocation(line: 886, column: 15, scope: !2934)
!2940 = !DILocation(line: 887, column: 11, scope: !2906)
!2941 = !DILocation(line: 888, column: 15, scope: !2942)
!2942 = distinct !DILexicalBlock(scope: !2906, file: !156, line: 887, column: 11)
!2943 = !{i64 0, i64 8, !2839, i64 8, i64 8, !616}
!2944 = !DILocation(line: 888, column: 9, scope: !2942)
!2945 = !DILocation(line: 889, column: 20, scope: !2906)
!2946 = !DILocation(line: 889, column: 18, scope: !2906)
!2947 = !DILocation(line: 889, column: 7, scope: !2906)
!2948 = !DILocation(line: 889, column: 38, scope: !2906)
!2949 = !DILocation(line: 889, column: 31, scope: !2906)
!2950 = !DILocation(line: 889, column: 48, scope: !2906)
!2951 = !DILocation(line: 890, column: 14, scope: !2906)
!2952 = !DILocation(line: 891, column: 5, scope: !2906)
!2953 = !DILocation(line: 894, column: 19, scope: !2909)
!2954 = !DILocation(line: 894, column: 25, scope: !2909)
!2955 = !DILocation(line: 894, column: 12, scope: !2909)
!2956 = !DILocation(line: 895, column: 23, scope: !2909)
!2957 = !DILocation(line: 895, column: 11, scope: !2909)
!2958 = !DILocation(line: 897, column: 26, scope: !2909)
!2959 = !DILocation(line: 897, column: 32, scope: !2909)
!2960 = !DILocation(line: 897, column: 9, scope: !2909)
!2961 = !DILocation(line: 899, column: 55, scope: !2909)
!2962 = !DILocation(line: 900, column: 46, scope: !2909)
!2963 = !DILocation(line: 901, column: 55, scope: !2909)
!2964 = !DILocation(line: 902, column: 55, scope: !2909)
!2965 = !DILocation(line: 898, column: 20, scope: !2909)
!2966 = !DILocation(line: 898, column: 12, scope: !2909)
!2967 = !DILocation(line: 904, column: 14, scope: !2968)
!2968 = distinct !DILexicalBlock(scope: !2909, file: !156, line: 904, column: 9)
!2969 = !DILocation(line: 904, column: 9, scope: !2909)
!2970 = !DILocation(line: 906, column: 35, scope: !2971)
!2971 = distinct !DILexicalBlock(scope: !2968, file: !156, line: 905, column: 7)
!2972 = !DILocation(line: 906, column: 20, scope: !2971)
!2973 = !DILocation(line: 907, column: 17, scope: !2974)
!2974 = distinct !DILexicalBlock(scope: !2971, file: !156, line: 907, column: 13)
!2975 = !DILocation(line: 907, column: 13, scope: !2971)
!2976 = !DILocation(line: 908, column: 11, scope: !2974)
!2977 = !DILocation(line: 220, column: 20, scope: !2794, inlinedAt: !2978)
!2978 = distinct !DILocation(line: 909, column: 27, scope: !2971)
!2979 = !DILocation(line: 222, column: 10, scope: !2794, inlinedAt: !2978)
!2980 = !DILocation(line: 909, column: 19, scope: !2971)
!2981 = !DILocation(line: 910, column: 69, scope: !2971)
!2982 = !DILocation(line: 912, column: 44, scope: !2971)
!2983 = !DILocation(line: 913, column: 44, scope: !2971)
!2984 = !DILocation(line: 910, column: 9, scope: !2971)
!2985 = !DILocation(line: 914, column: 7, scope: !2971)
!2986 = !DILocation(line: 916, column: 11, scope: !2909)
!2987 = !DILocation(line: 917, column: 5, scope: !2909)
!2988 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !156, file: !156, line: 928, type: !2989, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !128, variables: !2991)
!2989 = !DISubroutineType(types: !2990)
!2990 = !{!29, !78, !40, !32}
!2991 = !{!2992, !2993, !2994}
!2992 = !DILocalVariable(name: "n", arg: 1, scope: !2988, file: !156, line: 928, type: !78)
!2993 = !DILocalVariable(name: "arg", arg: 2, scope: !2988, file: !156, line: 928, type: !40)
!2994 = !DILocalVariable(name: "argsize", arg: 3, scope: !2988, file: !156, line: 928, type: !32)
!2995 = !DILocation(line: 928, column: 21, scope: !2988)
!2996 = !DILocation(line: 928, column: 36, scope: !2988)
!2997 = !DILocation(line: 928, column: 48, scope: !2988)
!2998 = !DILocation(line: 930, column: 10, scope: !2988)
!2999 = !DILocation(line: 930, column: 3, scope: !2988)
!3000 = distinct !DISubprogram(name: "quotearg", scope: !156, file: !156, line: 934, type: !3001, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !128, variables: !3003)
!3001 = !DISubroutineType(types: !3002)
!3002 = !{!29, !40}
!3003 = !{!3004}
!3004 = !DILocalVariable(name: "arg", arg: 1, scope: !3000, file: !156, line: 934, type: !40)
!3005 = !DILocation(line: 934, column: 23, scope: !3000)
!3006 = !DILocation(line: 922, column: 17, scope: !2885, inlinedAt: !3007)
!3007 = distinct !DILocation(line: 936, column: 10, scope: !3000)
!3008 = !DILocation(line: 922, column: 32, scope: !2885, inlinedAt: !3007)
!3009 = !DILocation(line: 924, column: 10, scope: !2885, inlinedAt: !3007)
!3010 = !DILocation(line: 936, column: 3, scope: !3000)
!3011 = distinct !DISubprogram(name: "quotearg_mem", scope: !156, file: !156, line: 940, type: !3012, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !128, variables: !3014)
!3012 = !DISubroutineType(types: !3013)
!3013 = !{!29, !40, !32}
!3014 = !{!3015, !3016}
!3015 = !DILocalVariable(name: "arg", arg: 1, scope: !3011, file: !156, line: 940, type: !40)
!3016 = !DILocalVariable(name: "argsize", arg: 2, scope: !3011, file: !156, line: 940, type: !32)
!3017 = !DILocation(line: 940, column: 27, scope: !3011)
!3018 = !DILocation(line: 940, column: 39, scope: !3011)
!3019 = !DILocation(line: 928, column: 21, scope: !2988, inlinedAt: !3020)
!3020 = distinct !DILocation(line: 942, column: 10, scope: !3011)
!3021 = !DILocation(line: 928, column: 36, scope: !2988, inlinedAt: !3020)
!3022 = !DILocation(line: 928, column: 48, scope: !2988, inlinedAt: !3020)
!3023 = !DILocation(line: 930, column: 10, scope: !2988, inlinedAt: !3020)
!3024 = !DILocation(line: 942, column: 3, scope: !3011)
!3025 = distinct !DISubprogram(name: "quotearg_n_style", scope: !156, file: !156, line: 946, type: !3026, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !128, variables: !3028)
!3026 = !DISubroutineType(types: !3027)
!3027 = !{!29, !78, !5, !40}
!3028 = !{!3029, !3030, !3031, !3032}
!3029 = !DILocalVariable(name: "n", arg: 1, scope: !3025, file: !156, line: 946, type: !78)
!3030 = !DILocalVariable(name: "s", arg: 2, scope: !3025, file: !156, line: 946, type: !5)
!3031 = !DILocalVariable(name: "arg", arg: 3, scope: !3025, file: !156, line: 946, type: !40)
!3032 = !DILocalVariable(name: "o", scope: !3025, file: !156, line: 948, type: !1593)
!3033 = !DILocalVariable(name: "o", scope: !3034, file: !156, line: 187, type: !163)
!3034 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !156, file: !156, line: 185, type: !3035, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !128, variables: !3037)
!3035 = !DISubroutineType(types: !3036)
!3036 = !{!163, !5}
!3037 = !{!3038, !3033}
!3038 = !DILocalVariable(name: "style", arg: 1, scope: !3034, file: !156, line: 185, type: !5)
!3039 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!3040 = !DILocation(line: 187, column: 26, scope: !3034, inlinedAt: !3041)
!3041 = distinct !DILocation(line: 948, column: 36, scope: !3025)
!3042 = !DILocation(line: 946, column: 23, scope: !3025)
!3043 = !DILocation(line: 946, column: 45, scope: !3025)
!3044 = !DILocation(line: 946, column: 60, scope: !3025)
!3045 = !DILocation(line: 948, column: 3, scope: !3025)
!3046 = !DILocation(line: 948, column: 32, scope: !3025)
!3047 = !DILocation(line: 185, column: 48, scope: !3034, inlinedAt: !3041)
!3048 = !DILocation(line: 187, column: 3, scope: !3034, inlinedAt: !3041)
!3049 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!3050 = !DILocation(line: 188, column: 13, scope: !3051, inlinedAt: !3041)
!3051 = distinct !DILexicalBlock(scope: !3034, file: !156, line: 188, column: 7)
!3052 = !DILocation(line: 188, column: 7, scope: !3034, inlinedAt: !3041)
!3053 = !DILocation(line: 189, column: 5, scope: !3051, inlinedAt: !3041)
!3054 = !{!3055}
!3055 = distinct !{!3055, !3056, !"quoting_options_from_style: argument 0"}
!3056 = distinct !{!3056, !"quoting_options_from_style"}
!3057 = !DILocation(line: 191, column: 10, scope: !3034, inlinedAt: !3041)
!3058 = !DILocation(line: 192, column: 1, scope: !3034, inlinedAt: !3041)
!3059 = !DILocation(line: 949, column: 10, scope: !3025)
!3060 = !DILocation(line: 950, column: 1, scope: !3025)
!3061 = !DILocation(line: 949, column: 3, scope: !3025)
!3062 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !156, file: !156, line: 953, type: !3063, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !128, variables: !3065)
!3063 = !DISubroutineType(types: !3064)
!3064 = !{!29, !78, !5, !40, !32}
!3065 = !{!3066, !3067, !3068, !3069, !3070}
!3066 = !DILocalVariable(name: "n", arg: 1, scope: !3062, file: !156, line: 953, type: !78)
!3067 = !DILocalVariable(name: "s", arg: 2, scope: !3062, file: !156, line: 953, type: !5)
!3068 = !DILocalVariable(name: "arg", arg: 3, scope: !3062, file: !156, line: 954, type: !40)
!3069 = !DILocalVariable(name: "argsize", arg: 4, scope: !3062, file: !156, line: 954, type: !32)
!3070 = !DILocalVariable(name: "o", scope: !3062, file: !156, line: 956, type: !1593)
!3071 = !DILocation(line: 187, column: 26, scope: !3034, inlinedAt: !3072)
!3072 = distinct !DILocation(line: 956, column: 36, scope: !3062)
!3073 = !DILocation(line: 953, column: 27, scope: !3062)
!3074 = !DILocation(line: 953, column: 49, scope: !3062)
!3075 = !DILocation(line: 954, column: 35, scope: !3062)
!3076 = !DILocation(line: 954, column: 47, scope: !3062)
!3077 = !DILocation(line: 956, column: 3, scope: !3062)
!3078 = !DILocation(line: 956, column: 32, scope: !3062)
!3079 = !DILocation(line: 185, column: 48, scope: !3034, inlinedAt: !3072)
!3080 = !DILocation(line: 187, column: 3, scope: !3034, inlinedAt: !3072)
!3081 = !DILocation(line: 188, column: 13, scope: !3051, inlinedAt: !3072)
!3082 = !DILocation(line: 188, column: 7, scope: !3034, inlinedAt: !3072)
!3083 = !DILocation(line: 189, column: 5, scope: !3051, inlinedAt: !3072)
!3084 = !{!3085}
!3085 = distinct !{!3085, !3086, !"quoting_options_from_style: argument 0"}
!3086 = distinct !{!3086, !"quoting_options_from_style"}
!3087 = !DILocation(line: 191, column: 10, scope: !3034, inlinedAt: !3072)
!3088 = !DILocation(line: 192, column: 1, scope: !3034, inlinedAt: !3072)
!3089 = !DILocation(line: 957, column: 10, scope: !3062)
!3090 = !DILocation(line: 958, column: 1, scope: !3062)
!3091 = !DILocation(line: 957, column: 3, scope: !3062)
!3092 = distinct !DISubprogram(name: "quotearg_style", scope: !156, file: !156, line: 961, type: !3093, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !128, variables: !3095)
!3093 = !DISubroutineType(types: !3094)
!3094 = !{!29, !5, !40}
!3095 = !{!3096, !3097}
!3096 = !DILocalVariable(name: "s", arg: 1, scope: !3092, file: !156, line: 961, type: !5)
!3097 = !DILocalVariable(name: "arg", arg: 2, scope: !3092, file: !156, line: 961, type: !40)
!3098 = !DILocation(line: 187, column: 26, scope: !3034, inlinedAt: !3099)
!3099 = distinct !DILocation(line: 948, column: 36, scope: !3025, inlinedAt: !3100)
!3100 = distinct !DILocation(line: 963, column: 10, scope: !3092)
!3101 = !DILocation(line: 961, column: 36, scope: !3092)
!3102 = !DILocation(line: 961, column: 51, scope: !3092)
!3103 = !DILocation(line: 946, column: 23, scope: !3025, inlinedAt: !3100)
!3104 = !DILocation(line: 946, column: 45, scope: !3025, inlinedAt: !3100)
!3105 = !DILocation(line: 946, column: 60, scope: !3025, inlinedAt: !3100)
!3106 = !DILocation(line: 948, column: 3, scope: !3025, inlinedAt: !3100)
!3107 = !DILocation(line: 948, column: 32, scope: !3025, inlinedAt: !3100)
!3108 = !DILocation(line: 185, column: 48, scope: !3034, inlinedAt: !3099)
!3109 = !DILocation(line: 187, column: 3, scope: !3034, inlinedAt: !3099)
!3110 = !DILocation(line: 188, column: 13, scope: !3051, inlinedAt: !3099)
!3111 = !DILocation(line: 188, column: 7, scope: !3034, inlinedAt: !3099)
!3112 = !DILocation(line: 189, column: 5, scope: !3051, inlinedAt: !3099)
!3113 = !{!3114}
!3114 = distinct !{!3114, !3115, !"quoting_options_from_style: argument 0"}
!3115 = distinct !{!3115, !"quoting_options_from_style"}
!3116 = !DILocation(line: 191, column: 10, scope: !3034, inlinedAt: !3099)
!3117 = !DILocation(line: 192, column: 1, scope: !3034, inlinedAt: !3099)
!3118 = !DILocation(line: 949, column: 10, scope: !3025, inlinedAt: !3100)
!3119 = !DILocation(line: 950, column: 1, scope: !3025, inlinedAt: !3100)
!3120 = !DILocation(line: 963, column: 3, scope: !3092)
!3121 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !156, file: !156, line: 967, type: !3122, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !128, variables: !3124)
!3122 = !DISubroutineType(types: !3123)
!3123 = !{!29, !5, !40, !32}
!3124 = !{!3125, !3126, !3127}
!3125 = !DILocalVariable(name: "s", arg: 1, scope: !3121, file: !156, line: 967, type: !5)
!3126 = !DILocalVariable(name: "arg", arg: 2, scope: !3121, file: !156, line: 967, type: !40)
!3127 = !DILocalVariable(name: "argsize", arg: 3, scope: !3121, file: !156, line: 967, type: !32)
!3128 = !DILocation(line: 187, column: 26, scope: !3034, inlinedAt: !3129)
!3129 = distinct !DILocation(line: 956, column: 36, scope: !3062, inlinedAt: !3130)
!3130 = distinct !DILocation(line: 969, column: 10, scope: !3121)
!3131 = !DILocation(line: 967, column: 40, scope: !3121)
!3132 = !DILocation(line: 967, column: 55, scope: !3121)
!3133 = !DILocation(line: 967, column: 67, scope: !3121)
!3134 = !DILocation(line: 953, column: 27, scope: !3062, inlinedAt: !3130)
!3135 = !DILocation(line: 953, column: 49, scope: !3062, inlinedAt: !3130)
!3136 = !DILocation(line: 954, column: 35, scope: !3062, inlinedAt: !3130)
!3137 = !DILocation(line: 954, column: 47, scope: !3062, inlinedAt: !3130)
!3138 = !DILocation(line: 956, column: 3, scope: !3062, inlinedAt: !3130)
!3139 = !DILocation(line: 956, column: 32, scope: !3062, inlinedAt: !3130)
!3140 = !DILocation(line: 185, column: 48, scope: !3034, inlinedAt: !3129)
!3141 = !DILocation(line: 187, column: 3, scope: !3034, inlinedAt: !3129)
!3142 = !DILocation(line: 188, column: 13, scope: !3051, inlinedAt: !3129)
!3143 = !DILocation(line: 188, column: 7, scope: !3034, inlinedAt: !3129)
!3144 = !DILocation(line: 189, column: 5, scope: !3051, inlinedAt: !3129)
!3145 = !{!3146}
!3146 = distinct !{!3146, !3147, !"quoting_options_from_style: argument 0"}
!3147 = distinct !{!3147, !"quoting_options_from_style"}
!3148 = !DILocation(line: 191, column: 10, scope: !3034, inlinedAt: !3129)
!3149 = !DILocation(line: 192, column: 1, scope: !3034, inlinedAt: !3129)
!3150 = !DILocation(line: 957, column: 10, scope: !3062, inlinedAt: !3130)
!3151 = !DILocation(line: 958, column: 1, scope: !3062, inlinedAt: !3130)
!3152 = !DILocation(line: 969, column: 3, scope: !3121)
!3153 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !156, file: !156, line: 973, type: !3154, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !128, variables: !3156)
!3154 = !DISubroutineType(types: !3155)
!3155 = !{!29, !40, !32, !30}
!3156 = !{!3157, !3158, !3159, !3160}
!3157 = !DILocalVariable(name: "arg", arg: 1, scope: !3153, file: !156, line: 973, type: !40)
!3158 = !DILocalVariable(name: "argsize", arg: 2, scope: !3153, file: !156, line: 973, type: !32)
!3159 = !DILocalVariable(name: "ch", arg: 3, scope: !3153, file: !156, line: 973, type: !30)
!3160 = !DILocalVariable(name: "options", scope: !3153, file: !156, line: 975, type: !163)
!3161 = !DILocation(line: 973, column: 32, scope: !3153)
!3162 = !DILocation(line: 973, column: 44, scope: !3153)
!3163 = !DILocation(line: 973, column: 58, scope: !3153)
!3164 = !DILocation(line: 975, column: 3, scope: !3153)
!3165 = !DILocation(line: 976, column: 13, scope: !3153)
!3166 = !{i64 0, i64 4, !701, i64 4, i64 4, !713, i64 8, i64 32, !701, i64 40, i64 8, !616, i64 48, i64 8, !616}
!3167 = !DILocation(line: 975, column: 26, scope: !3153)
!3168 = !DILocation(line: 144, column: 43, scope: !1616, inlinedAt: !3169)
!3169 = distinct !DILocation(line: 977, column: 3, scope: !3153)
!3170 = !DILocation(line: 144, column: 51, scope: !1616, inlinedAt: !3169)
!3171 = !DILocation(line: 144, column: 58, scope: !1616, inlinedAt: !3169)
!3172 = !DILocation(line: 146, column: 17, scope: !1616, inlinedAt: !3169)
!3173 = !DILocation(line: 148, column: 62, scope: !1634, inlinedAt: !3169)
!3174 = !DILocation(line: 148, column: 57, scope: !1634, inlinedAt: !3169)
!3175 = !DILocation(line: 147, column: 17, scope: !1616, inlinedAt: !3169)
!3176 = !DILocation(line: 149, column: 18, scope: !1616, inlinedAt: !3169)
!3177 = !DILocation(line: 149, column: 15, scope: !1616, inlinedAt: !3169)
!3178 = !DILocation(line: 149, column: 7, scope: !1616, inlinedAt: !3169)
!3179 = !DILocation(line: 150, column: 12, scope: !1616, inlinedAt: !3169)
!3180 = !DILocation(line: 150, column: 15, scope: !1616, inlinedAt: !3169)
!3181 = !DILocation(line: 150, column: 25, scope: !1616, inlinedAt: !3169)
!3182 = !DILocation(line: 150, column: 7, scope: !1616, inlinedAt: !3169)
!3183 = !DILocation(line: 151, column: 18, scope: !1616, inlinedAt: !3169)
!3184 = !DILocation(line: 151, column: 23, scope: !1616, inlinedAt: !3169)
!3185 = !DILocation(line: 151, column: 6, scope: !1616, inlinedAt: !3169)
!3186 = !DILocation(line: 978, column: 10, scope: !3153)
!3187 = !DILocation(line: 979, column: 1, scope: !3153)
!3188 = !DILocation(line: 978, column: 3, scope: !3153)
!3189 = distinct !DISubprogram(name: "quotearg_char", scope: !156, file: !156, line: 982, type: !3190, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !128, variables: !3192)
!3190 = !DISubroutineType(types: !3191)
!3191 = !{!29, !40, !30}
!3192 = !{!3193, !3194}
!3193 = !DILocalVariable(name: "arg", arg: 1, scope: !3189, file: !156, line: 982, type: !40)
!3194 = !DILocalVariable(name: "ch", arg: 2, scope: !3189, file: !156, line: 982, type: !30)
!3195 = !DILocation(line: 982, column: 28, scope: !3189)
!3196 = !DILocation(line: 982, column: 38, scope: !3189)
!3197 = !DILocation(line: 973, column: 32, scope: !3153, inlinedAt: !3198)
!3198 = distinct !DILocation(line: 984, column: 10, scope: !3189)
!3199 = !DILocation(line: 973, column: 44, scope: !3153, inlinedAt: !3198)
!3200 = !DILocation(line: 973, column: 58, scope: !3153, inlinedAt: !3198)
!3201 = !DILocation(line: 975, column: 3, scope: !3153, inlinedAt: !3198)
!3202 = !DILocation(line: 976, column: 13, scope: !3153, inlinedAt: !3198)
!3203 = !DILocation(line: 975, column: 26, scope: !3153, inlinedAt: !3198)
!3204 = !DILocation(line: 144, column: 43, scope: !1616, inlinedAt: !3205)
!3205 = distinct !DILocation(line: 977, column: 3, scope: !3153, inlinedAt: !3198)
!3206 = !DILocation(line: 144, column: 51, scope: !1616, inlinedAt: !3205)
!3207 = !DILocation(line: 144, column: 58, scope: !1616, inlinedAt: !3205)
!3208 = !DILocation(line: 146, column: 17, scope: !1616, inlinedAt: !3205)
!3209 = !DILocation(line: 148, column: 62, scope: !1634, inlinedAt: !3205)
!3210 = !DILocation(line: 148, column: 57, scope: !1634, inlinedAt: !3205)
!3211 = !DILocation(line: 147, column: 17, scope: !1616, inlinedAt: !3205)
!3212 = !DILocation(line: 149, column: 18, scope: !1616, inlinedAt: !3205)
!3213 = !DILocation(line: 149, column: 15, scope: !1616, inlinedAt: !3205)
!3214 = !DILocation(line: 149, column: 7, scope: !1616, inlinedAt: !3205)
!3215 = !DILocation(line: 150, column: 12, scope: !1616, inlinedAt: !3205)
!3216 = !DILocation(line: 150, column: 15, scope: !1616, inlinedAt: !3205)
!3217 = !DILocation(line: 150, column: 25, scope: !1616, inlinedAt: !3205)
!3218 = !DILocation(line: 150, column: 7, scope: !1616, inlinedAt: !3205)
!3219 = !DILocation(line: 151, column: 18, scope: !1616, inlinedAt: !3205)
!3220 = !DILocation(line: 151, column: 23, scope: !1616, inlinedAt: !3205)
!3221 = !DILocation(line: 151, column: 6, scope: !1616, inlinedAt: !3205)
!3222 = !DILocation(line: 978, column: 10, scope: !3153, inlinedAt: !3198)
!3223 = !DILocation(line: 979, column: 1, scope: !3153, inlinedAt: !3198)
!3224 = !DILocation(line: 984, column: 3, scope: !3189)
!3225 = distinct !DISubprogram(name: "quotearg_colon", scope: !156, file: !156, line: 988, type: !3001, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !128, variables: !3226)
!3226 = !{!3227}
!3227 = !DILocalVariable(name: "arg", arg: 1, scope: !3225, file: !156, line: 988, type: !40)
!3228 = !DILocation(line: 988, column: 29, scope: !3225)
!3229 = !DILocation(line: 982, column: 28, scope: !3189, inlinedAt: !3230)
!3230 = distinct !DILocation(line: 990, column: 10, scope: !3225)
!3231 = !DILocation(line: 982, column: 38, scope: !3189, inlinedAt: !3230)
!3232 = !DILocation(line: 973, column: 32, scope: !3153, inlinedAt: !3233)
!3233 = distinct !DILocation(line: 984, column: 10, scope: !3189, inlinedAt: !3230)
!3234 = !DILocation(line: 973, column: 44, scope: !3153, inlinedAt: !3233)
!3235 = !DILocation(line: 973, column: 58, scope: !3153, inlinedAt: !3233)
!3236 = !DILocation(line: 975, column: 3, scope: !3153, inlinedAt: !3233)
!3237 = !DILocation(line: 976, column: 13, scope: !3153, inlinedAt: !3233)
!3238 = !DILocation(line: 975, column: 26, scope: !3153, inlinedAt: !3233)
!3239 = !DILocation(line: 144, column: 43, scope: !1616, inlinedAt: !3240)
!3240 = distinct !DILocation(line: 977, column: 3, scope: !3153, inlinedAt: !3233)
!3241 = !DILocation(line: 144, column: 51, scope: !1616, inlinedAt: !3240)
!3242 = !DILocation(line: 144, column: 58, scope: !1616, inlinedAt: !3240)
!3243 = !DILocation(line: 146, column: 17, scope: !1616, inlinedAt: !3240)
!3244 = !DILocation(line: 148, column: 57, scope: !1634, inlinedAt: !3240)
!3245 = !DILocation(line: 147, column: 17, scope: !1616, inlinedAt: !3240)
!3246 = !DILocation(line: 149, column: 7, scope: !1616, inlinedAt: !3240)
!3247 = !DILocation(line: 150, column: 12, scope: !1616, inlinedAt: !3240)
!3248 = !DILocation(line: 151, column: 6, scope: !1616, inlinedAt: !3240)
!3249 = !DILocation(line: 978, column: 10, scope: !3153, inlinedAt: !3233)
!3250 = !DILocation(line: 979, column: 1, scope: !3153, inlinedAt: !3233)
!3251 = !DILocation(line: 990, column: 3, scope: !3225)
!3252 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !156, file: !156, line: 994, type: !3012, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !128, variables: !3253)
!3253 = !{!3254, !3255}
!3254 = !DILocalVariable(name: "arg", arg: 1, scope: !3252, file: !156, line: 994, type: !40)
!3255 = !DILocalVariable(name: "argsize", arg: 2, scope: !3252, file: !156, line: 994, type: !32)
!3256 = !DILocation(line: 994, column: 33, scope: !3252)
!3257 = !DILocation(line: 994, column: 45, scope: !3252)
!3258 = !DILocation(line: 973, column: 32, scope: !3153, inlinedAt: !3259)
!3259 = distinct !DILocation(line: 996, column: 10, scope: !3252)
!3260 = !DILocation(line: 973, column: 44, scope: !3153, inlinedAt: !3259)
!3261 = !DILocation(line: 973, column: 58, scope: !3153, inlinedAt: !3259)
!3262 = !DILocation(line: 975, column: 3, scope: !3153, inlinedAt: !3259)
!3263 = !DILocation(line: 976, column: 13, scope: !3153, inlinedAt: !3259)
!3264 = !DILocation(line: 975, column: 26, scope: !3153, inlinedAt: !3259)
!3265 = !DILocation(line: 144, column: 43, scope: !1616, inlinedAt: !3266)
!3266 = distinct !DILocation(line: 977, column: 3, scope: !3153, inlinedAt: !3259)
!3267 = !DILocation(line: 144, column: 51, scope: !1616, inlinedAt: !3266)
!3268 = !DILocation(line: 144, column: 58, scope: !1616, inlinedAt: !3266)
!3269 = !DILocation(line: 146, column: 17, scope: !1616, inlinedAt: !3266)
!3270 = !DILocation(line: 148, column: 57, scope: !1634, inlinedAt: !3266)
!3271 = !DILocation(line: 147, column: 17, scope: !1616, inlinedAt: !3266)
!3272 = !DILocation(line: 149, column: 7, scope: !1616, inlinedAt: !3266)
!3273 = !DILocation(line: 150, column: 12, scope: !1616, inlinedAt: !3266)
!3274 = !DILocation(line: 151, column: 6, scope: !1616, inlinedAt: !3266)
!3275 = !DILocation(line: 978, column: 10, scope: !3153, inlinedAt: !3259)
!3276 = !DILocation(line: 979, column: 1, scope: !3153, inlinedAt: !3259)
!3277 = !DILocation(line: 996, column: 3, scope: !3252)
!3278 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !156, file: !156, line: 1000, type: !3026, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !128, variables: !3279)
!3279 = !{!3280, !3281, !3282, !3283}
!3280 = !DILocalVariable(name: "n", arg: 1, scope: !3278, file: !156, line: 1000, type: !78)
!3281 = !DILocalVariable(name: "s", arg: 2, scope: !3278, file: !156, line: 1000, type: !5)
!3282 = !DILocalVariable(name: "arg", arg: 3, scope: !3278, file: !156, line: 1000, type: !40)
!3283 = !DILocalVariable(name: "options", scope: !3278, file: !156, line: 1002, type: !163)
!3284 = !DILocation(line: 187, column: 26, scope: !3034, inlinedAt: !3285)
!3285 = distinct !DILocation(line: 1003, column: 13, scope: !3278)
!3286 = !DILocation(line: 1000, column: 29, scope: !3278)
!3287 = !DILocation(line: 1000, column: 51, scope: !3278)
!3288 = !DILocation(line: 1000, column: 66, scope: !3278)
!3289 = !DILocation(line: 1002, column: 3, scope: !3278)
!3290 = !DILocation(line: 185, column: 48, scope: !3034, inlinedAt: !3285)
!3291 = !DILocation(line: 187, column: 3, scope: !3034, inlinedAt: !3285)
!3292 = !DILocation(line: 188, column: 13, scope: !3051, inlinedAt: !3285)
!3293 = !DILocation(line: 188, column: 7, scope: !3034, inlinedAt: !3285)
!3294 = !DILocation(line: 189, column: 5, scope: !3051, inlinedAt: !3285)
!3295 = !{!3296}
!3296 = distinct !{!3296, !3297, !"quoting_options_from_style: argument 0"}
!3297 = distinct !{!3297, !"quoting_options_from_style"}
!3298 = !DILocation(line: 191, column: 10, scope: !3034, inlinedAt: !3285)
!3299 = !DILocation(line: 192, column: 1, scope: !3034, inlinedAt: !3285)
!3300 = !DILocation(line: 1003, column: 13, scope: !3278)
!3301 = !DILocation(line: 1002, column: 26, scope: !3278)
!3302 = !DILocation(line: 144, column: 43, scope: !1616, inlinedAt: !3303)
!3303 = distinct !DILocation(line: 1004, column: 3, scope: !3278)
!3304 = !DILocation(line: 144, column: 51, scope: !1616, inlinedAt: !3303)
!3305 = !DILocation(line: 144, column: 58, scope: !1616, inlinedAt: !3303)
!3306 = !DILocation(line: 146, column: 17, scope: !1616, inlinedAt: !3303)
!3307 = !DILocation(line: 148, column: 57, scope: !1634, inlinedAt: !3303)
!3308 = !DILocation(line: 147, column: 17, scope: !1616, inlinedAt: !3303)
!3309 = !DILocation(line: 149, column: 7, scope: !1616, inlinedAt: !3303)
!3310 = !DILocation(line: 150, column: 12, scope: !1616, inlinedAt: !3303)
!3311 = !DILocation(line: 151, column: 6, scope: !1616, inlinedAt: !3303)
!3312 = !DILocation(line: 1005, column: 10, scope: !3278)
!3313 = !DILocation(line: 1006, column: 1, scope: !3278)
!3314 = !DILocation(line: 1005, column: 3, scope: !3278)
!3315 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !156, file: !156, line: 1009, type: !3316, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !128, variables: !3318)
!3316 = !DISubroutineType(types: !3317)
!3317 = !{!29, !78, !40, !40, !40}
!3318 = !{!3319, !3320, !3321, !3322}
!3319 = !DILocalVariable(name: "n", arg: 1, scope: !3315, file: !156, line: 1009, type: !78)
!3320 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3315, file: !156, line: 1009, type: !40)
!3321 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3315, file: !156, line: 1010, type: !40)
!3322 = !DILocalVariable(name: "arg", arg: 4, scope: !3315, file: !156, line: 1010, type: !40)
!3323 = !DILocation(line: 1009, column: 24, scope: !3315)
!3324 = !DILocation(line: 1009, column: 39, scope: !3315)
!3325 = !DILocation(line: 1010, column: 32, scope: !3315)
!3326 = !DILocation(line: 1010, column: 57, scope: !3315)
!3327 = !DILocalVariable(name: "n", arg: 1, scope: !3328, file: !156, line: 1017, type: !78)
!3328 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !156, file: !156, line: 1017, type: !3329, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !128, variables: !3331)
!3329 = !DISubroutineType(types: !3330)
!3330 = !{!29, !78, !40, !40, !40, !32}
!3331 = !{!3327, !3332, !3333, !3334, !3335, !3336}
!3332 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3328, file: !156, line: 1017, type: !40)
!3333 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3328, file: !156, line: 1018, type: !40)
!3334 = !DILocalVariable(name: "arg", arg: 4, scope: !3328, file: !156, line: 1019, type: !40)
!3335 = !DILocalVariable(name: "argsize", arg: 5, scope: !3328, file: !156, line: 1019, type: !32)
!3336 = !DILocalVariable(name: "o", scope: !3328, file: !156, line: 1021, type: !163)
!3337 = !DILocation(line: 1017, column: 28, scope: !3328, inlinedAt: !3338)
!3338 = distinct !DILocation(line: 1012, column: 10, scope: !3315)
!3339 = !DILocation(line: 1017, column: 43, scope: !3328, inlinedAt: !3338)
!3340 = !DILocation(line: 1018, column: 36, scope: !3328, inlinedAt: !3338)
!3341 = !DILocation(line: 1019, column: 36, scope: !3328, inlinedAt: !3338)
!3342 = !DILocation(line: 1019, column: 48, scope: !3328, inlinedAt: !3338)
!3343 = !DILocation(line: 1021, column: 3, scope: !3328, inlinedAt: !3338)
!3344 = !DILocation(line: 1021, column: 30, scope: !3328, inlinedAt: !3338)
!3345 = !DILocation(line: 1021, column: 26, scope: !3328, inlinedAt: !3338)
!3346 = !DILocation(line: 171, column: 45, scope: !1666, inlinedAt: !3347)
!3347 = distinct !DILocation(line: 1022, column: 3, scope: !3328, inlinedAt: !3338)
!3348 = !DILocation(line: 172, column: 33, scope: !1666, inlinedAt: !3347)
!3349 = !DILocation(line: 172, column: 57, scope: !1666, inlinedAt: !3347)
!3350 = !DILocation(line: 176, column: 6, scope: !1666, inlinedAt: !3347)
!3351 = !DILocation(line: 176, column: 12, scope: !1666, inlinedAt: !3347)
!3352 = !DILocation(line: 177, column: 8, scope: !1682, inlinedAt: !3347)
!3353 = !DILocation(line: 177, column: 23, scope: !1684, inlinedAt: !3347)
!3354 = !DILocation(line: 177, column: 19, scope: !1682, inlinedAt: !3347)
!3355 = !DILocation(line: 178, column: 5, scope: !1682, inlinedAt: !3347)
!3356 = !DILocation(line: 179, column: 6, scope: !1666, inlinedAt: !3347)
!3357 = !DILocation(line: 179, column: 17, scope: !1666, inlinedAt: !3347)
!3358 = !DILocation(line: 180, column: 6, scope: !1666, inlinedAt: !3347)
!3359 = !DILocation(line: 180, column: 18, scope: !1666, inlinedAt: !3347)
!3360 = !DILocation(line: 1023, column: 10, scope: !3328, inlinedAt: !3338)
!3361 = !DILocation(line: 1024, column: 1, scope: !3328, inlinedAt: !3338)
!3362 = !DILocation(line: 1012, column: 3, scope: !3315)
!3363 = !DILocation(line: 1017, column: 28, scope: !3328)
!3364 = !DILocation(line: 1017, column: 43, scope: !3328)
!3365 = !DILocation(line: 1018, column: 36, scope: !3328)
!3366 = !DILocation(line: 1019, column: 36, scope: !3328)
!3367 = !DILocation(line: 1019, column: 48, scope: !3328)
!3368 = !DILocation(line: 1021, column: 3, scope: !3328)
!3369 = !DILocation(line: 1021, column: 30, scope: !3328)
!3370 = !DILocation(line: 1021, column: 26, scope: !3328)
!3371 = !DILocation(line: 171, column: 45, scope: !1666, inlinedAt: !3372)
!3372 = distinct !DILocation(line: 1022, column: 3, scope: !3328)
!3373 = !DILocation(line: 172, column: 33, scope: !1666, inlinedAt: !3372)
!3374 = !DILocation(line: 172, column: 57, scope: !1666, inlinedAt: !3372)
!3375 = !DILocation(line: 176, column: 6, scope: !1666, inlinedAt: !3372)
!3376 = !DILocation(line: 176, column: 12, scope: !1666, inlinedAt: !3372)
!3377 = !DILocation(line: 177, column: 8, scope: !1682, inlinedAt: !3372)
!3378 = !DILocation(line: 177, column: 23, scope: !1684, inlinedAt: !3372)
!3379 = !DILocation(line: 177, column: 19, scope: !1682, inlinedAt: !3372)
!3380 = !DILocation(line: 178, column: 5, scope: !1682, inlinedAt: !3372)
!3381 = !DILocation(line: 179, column: 6, scope: !1666, inlinedAt: !3372)
!3382 = !DILocation(line: 179, column: 17, scope: !1666, inlinedAt: !3372)
!3383 = !DILocation(line: 180, column: 6, scope: !1666, inlinedAt: !3372)
!3384 = !DILocation(line: 180, column: 18, scope: !1666, inlinedAt: !3372)
!3385 = !DILocation(line: 1023, column: 10, scope: !3328)
!3386 = !DILocation(line: 1024, column: 1, scope: !3328)
!3387 = !DILocation(line: 1023, column: 3, scope: !3328)
!3388 = distinct !DISubprogram(name: "quotearg_custom", scope: !156, file: !156, line: 1027, type: !3389, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !128, variables: !3391)
!3389 = !DISubroutineType(types: !3390)
!3390 = !{!29, !40, !40, !40}
!3391 = !{!3392, !3393, !3394}
!3392 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3388, file: !156, line: 1027, type: !40)
!3393 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3388, file: !156, line: 1027, type: !40)
!3394 = !DILocalVariable(name: "arg", arg: 3, scope: !3388, file: !156, line: 1028, type: !40)
!3395 = !DILocation(line: 1027, column: 30, scope: !3388)
!3396 = !DILocation(line: 1027, column: 54, scope: !3388)
!3397 = !DILocation(line: 1028, column: 30, scope: !3388)
!3398 = !DILocation(line: 1009, column: 24, scope: !3315, inlinedAt: !3399)
!3399 = distinct !DILocation(line: 1030, column: 10, scope: !3388)
!3400 = !DILocation(line: 1009, column: 39, scope: !3315, inlinedAt: !3399)
!3401 = !DILocation(line: 1010, column: 32, scope: !3315, inlinedAt: !3399)
!3402 = !DILocation(line: 1010, column: 57, scope: !3315, inlinedAt: !3399)
!3403 = !DILocation(line: 1017, column: 28, scope: !3328, inlinedAt: !3404)
!3404 = distinct !DILocation(line: 1012, column: 10, scope: !3315, inlinedAt: !3399)
!3405 = !DILocation(line: 1017, column: 43, scope: !3328, inlinedAt: !3404)
!3406 = !DILocation(line: 1018, column: 36, scope: !3328, inlinedAt: !3404)
!3407 = !DILocation(line: 1019, column: 36, scope: !3328, inlinedAt: !3404)
!3408 = !DILocation(line: 1019, column: 48, scope: !3328, inlinedAt: !3404)
!3409 = !DILocation(line: 1021, column: 3, scope: !3328, inlinedAt: !3404)
!3410 = !DILocation(line: 1021, column: 30, scope: !3328, inlinedAt: !3404)
!3411 = !DILocation(line: 1021, column: 26, scope: !3328, inlinedAt: !3404)
!3412 = !DILocation(line: 171, column: 45, scope: !1666, inlinedAt: !3413)
!3413 = distinct !DILocation(line: 1022, column: 3, scope: !3328, inlinedAt: !3404)
!3414 = !DILocation(line: 172, column: 33, scope: !1666, inlinedAt: !3413)
!3415 = !DILocation(line: 172, column: 57, scope: !1666, inlinedAt: !3413)
!3416 = !DILocation(line: 176, column: 6, scope: !1666, inlinedAt: !3413)
!3417 = !DILocation(line: 176, column: 12, scope: !1666, inlinedAt: !3413)
!3418 = !DILocation(line: 177, column: 8, scope: !1682, inlinedAt: !3413)
!3419 = !DILocation(line: 177, column: 23, scope: !1684, inlinedAt: !3413)
!3420 = !DILocation(line: 177, column: 19, scope: !1682, inlinedAt: !3413)
!3421 = !DILocation(line: 178, column: 5, scope: !1682, inlinedAt: !3413)
!3422 = !DILocation(line: 179, column: 6, scope: !1666, inlinedAt: !3413)
!3423 = !DILocation(line: 179, column: 17, scope: !1666, inlinedAt: !3413)
!3424 = !DILocation(line: 180, column: 6, scope: !1666, inlinedAt: !3413)
!3425 = !DILocation(line: 180, column: 18, scope: !1666, inlinedAt: !3413)
!3426 = !DILocation(line: 1023, column: 10, scope: !3328, inlinedAt: !3404)
!3427 = !DILocation(line: 1024, column: 1, scope: !3328, inlinedAt: !3404)
!3428 = !DILocation(line: 1030, column: 3, scope: !3388)
!3429 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !156, file: !156, line: 1034, type: !3430, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !128, variables: !3432)
!3430 = !DISubroutineType(types: !3431)
!3431 = !{!29, !40, !40, !40, !32}
!3432 = !{!3433, !3434, !3435, !3436}
!3433 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3429, file: !156, line: 1034, type: !40)
!3434 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3429, file: !156, line: 1034, type: !40)
!3435 = !DILocalVariable(name: "arg", arg: 3, scope: !3429, file: !156, line: 1035, type: !40)
!3436 = !DILocalVariable(name: "argsize", arg: 4, scope: !3429, file: !156, line: 1035, type: !32)
!3437 = !DILocation(line: 1034, column: 34, scope: !3429)
!3438 = !DILocation(line: 1034, column: 58, scope: !3429)
!3439 = !DILocation(line: 1035, column: 34, scope: !3429)
!3440 = !DILocation(line: 1035, column: 46, scope: !3429)
!3441 = !DILocation(line: 1017, column: 28, scope: !3328, inlinedAt: !3442)
!3442 = distinct !DILocation(line: 1037, column: 10, scope: !3429)
!3443 = !DILocation(line: 1017, column: 43, scope: !3328, inlinedAt: !3442)
!3444 = !DILocation(line: 1018, column: 36, scope: !3328, inlinedAt: !3442)
!3445 = !DILocation(line: 1019, column: 36, scope: !3328, inlinedAt: !3442)
!3446 = !DILocation(line: 1019, column: 48, scope: !3328, inlinedAt: !3442)
!3447 = !DILocation(line: 1021, column: 3, scope: !3328, inlinedAt: !3442)
!3448 = !DILocation(line: 1021, column: 30, scope: !3328, inlinedAt: !3442)
!3449 = !DILocation(line: 1021, column: 26, scope: !3328, inlinedAt: !3442)
!3450 = !DILocation(line: 171, column: 45, scope: !1666, inlinedAt: !3451)
!3451 = distinct !DILocation(line: 1022, column: 3, scope: !3328, inlinedAt: !3442)
!3452 = !DILocation(line: 172, column: 33, scope: !1666, inlinedAt: !3451)
!3453 = !DILocation(line: 172, column: 57, scope: !1666, inlinedAt: !3451)
!3454 = !DILocation(line: 176, column: 6, scope: !1666, inlinedAt: !3451)
!3455 = !DILocation(line: 176, column: 12, scope: !1666, inlinedAt: !3451)
!3456 = !DILocation(line: 177, column: 8, scope: !1682, inlinedAt: !3451)
!3457 = !DILocation(line: 177, column: 23, scope: !1684, inlinedAt: !3451)
!3458 = !DILocation(line: 177, column: 19, scope: !1682, inlinedAt: !3451)
!3459 = !DILocation(line: 178, column: 5, scope: !1682, inlinedAt: !3451)
!3460 = !DILocation(line: 179, column: 6, scope: !1666, inlinedAt: !3451)
!3461 = !DILocation(line: 179, column: 17, scope: !1666, inlinedAt: !3451)
!3462 = !DILocation(line: 180, column: 6, scope: !1666, inlinedAt: !3451)
!3463 = !DILocation(line: 180, column: 18, scope: !1666, inlinedAt: !3451)
!3464 = !DILocation(line: 1023, column: 10, scope: !3328, inlinedAt: !3442)
!3465 = !DILocation(line: 1024, column: 1, scope: !3328, inlinedAt: !3442)
!3466 = !DILocation(line: 1037, column: 3, scope: !3429)
!3467 = distinct !DISubprogram(name: "quote_n_mem", scope: !156, file: !156, line: 1052, type: !3468, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !128, variables: !3470)
!3468 = !DISubroutineType(types: !3469)
!3469 = !{!40, !78, !40, !32}
!3470 = !{!3471, !3472, !3473}
!3471 = !DILocalVariable(name: "n", arg: 1, scope: !3467, file: !156, line: 1052, type: !78)
!3472 = !DILocalVariable(name: "arg", arg: 2, scope: !3467, file: !156, line: 1052, type: !40)
!3473 = !DILocalVariable(name: "argsize", arg: 3, scope: !3467, file: !156, line: 1052, type: !32)
!3474 = !DILocation(line: 1052, column: 18, scope: !3467)
!3475 = !DILocation(line: 1052, column: 33, scope: !3467)
!3476 = !DILocation(line: 1052, column: 45, scope: !3467)
!3477 = !DILocation(line: 1054, column: 10, scope: !3467)
!3478 = !DILocation(line: 1054, column: 3, scope: !3467)
!3479 = distinct !DISubprogram(name: "quote_mem", scope: !156, file: !156, line: 1058, type: !3480, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !128, variables: !3482)
!3480 = !DISubroutineType(types: !3481)
!3481 = !{!40, !40, !32}
!3482 = !{!3483, !3484}
!3483 = !DILocalVariable(name: "arg", arg: 1, scope: !3479, file: !156, line: 1058, type: !40)
!3484 = !DILocalVariable(name: "argsize", arg: 2, scope: !3479, file: !156, line: 1058, type: !32)
!3485 = !DILocation(line: 1058, column: 24, scope: !3479)
!3486 = !DILocation(line: 1058, column: 36, scope: !3479)
!3487 = !DILocation(line: 1052, column: 18, scope: !3467, inlinedAt: !3488)
!3488 = distinct !DILocation(line: 1060, column: 10, scope: !3479)
!3489 = !DILocation(line: 1052, column: 33, scope: !3467, inlinedAt: !3488)
!3490 = !DILocation(line: 1052, column: 45, scope: !3467, inlinedAt: !3488)
!3491 = !DILocation(line: 1054, column: 10, scope: !3467, inlinedAt: !3488)
!3492 = !DILocation(line: 1060, column: 3, scope: !3479)
!3493 = distinct !DISubprogram(name: "quote_n", scope: !156, file: !156, line: 1064, type: !3494, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !128, variables: !3496)
!3494 = !DISubroutineType(types: !3495)
!3495 = !{!40, !78, !40}
!3496 = !{!3497, !3498}
!3497 = !DILocalVariable(name: "n", arg: 1, scope: !3493, file: !156, line: 1064, type: !78)
!3498 = !DILocalVariable(name: "arg", arg: 2, scope: !3493, file: !156, line: 1064, type: !40)
!3499 = !DILocation(line: 1064, column: 14, scope: !3493)
!3500 = !DILocation(line: 1064, column: 29, scope: !3493)
!3501 = !DILocation(line: 1052, column: 18, scope: !3467, inlinedAt: !3502)
!3502 = distinct !DILocation(line: 1066, column: 10, scope: !3493)
!3503 = !DILocation(line: 1052, column: 33, scope: !3467, inlinedAt: !3502)
!3504 = !DILocation(line: 1052, column: 45, scope: !3467, inlinedAt: !3502)
!3505 = !DILocation(line: 1054, column: 10, scope: !3467, inlinedAt: !3502)
!3506 = !DILocation(line: 1066, column: 3, scope: !3493)
!3507 = distinct !DISubprogram(name: "quote", scope: !156, file: !156, line: 1070, type: !3508, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !128, variables: !3510)
!3508 = !DISubroutineType(types: !3509)
!3509 = !{!40, !40}
!3510 = !{!3511}
!3511 = !DILocalVariable(name: "arg", arg: 1, scope: !3507, file: !156, line: 1070, type: !40)
!3512 = !DILocation(line: 1070, column: 20, scope: !3507)
!3513 = !DILocation(line: 1064, column: 14, scope: !3493, inlinedAt: !3514)
!3514 = distinct !DILocation(line: 1072, column: 10, scope: !3507)
!3515 = !DILocation(line: 1064, column: 29, scope: !3493, inlinedAt: !3514)
!3516 = !DILocation(line: 1052, column: 18, scope: !3467, inlinedAt: !3517)
!3517 = distinct !DILocation(line: 1066, column: 10, scope: !3493, inlinedAt: !3514)
!3518 = !DILocation(line: 1052, column: 33, scope: !3467, inlinedAt: !3517)
!3519 = !DILocation(line: 1052, column: 45, scope: !3467, inlinedAt: !3517)
!3520 = !DILocation(line: 1054, column: 10, scope: !3467, inlinedAt: !3517)
!3521 = !DILocation(line: 1072, column: 3, scope: !3507)
!3522 = distinct !DISubprogram(name: "version_etc_arn", scope: !559, file: !559, line: 62, type: !3523, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !555, variables: !3566)
!3523 = !DISubroutineType(types: !3524)
!3524 = !{null, !3525, !40, !40, !40, !3565, !32}
!3525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3526, size: 64)
!3526 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !801, line: 49, baseType: !3527)
!3527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !803, line: 241, size: 1728, elements: !3528)
!3528 = !{!3529, !3530, !3531, !3532, !3533, !3534, !3535, !3536, !3537, !3538, !3539, !3540, !3541, !3549, !3550, !3551, !3552, !3553, !3554, !3555, !3556, !3557, !3558, !3559, !3560, !3561, !3562, !3563, !3564}
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3527, file: !803, line: 242, baseType: !78, size: 32)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3527, file: !803, line: 247, baseType: !29, size: 64, offset: 64)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3527, file: !803, line: 248, baseType: !29, size: 64, offset: 128)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3527, file: !803, line: 249, baseType: !29, size: 64, offset: 192)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3527, file: !803, line: 250, baseType: !29, size: 64, offset: 256)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3527, file: !803, line: 251, baseType: !29, size: 64, offset: 320)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3527, file: !803, line: 252, baseType: !29, size: 64, offset: 384)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3527, file: !803, line: 253, baseType: !29, size: 64, offset: 448)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3527, file: !803, line: 254, baseType: !29, size: 64, offset: 512)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3527, file: !803, line: 256, baseType: !29, size: 64, offset: 576)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3527, file: !803, line: 257, baseType: !29, size: 64, offset: 640)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3527, file: !803, line: 258, baseType: !29, size: 64, offset: 704)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3527, file: !803, line: 260, baseType: !3542, size: 64, offset: 768)
!3542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3543, size: 64)
!3543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !803, line: 156, size: 192, elements: !3544)
!3544 = !{!3545, !3546, !3548}
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3543, file: !803, line: 157, baseType: !3542, size: 64)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3543, file: !803, line: 158, baseType: !3547, size: 64, offset: 64)
!3547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3527, size: 64)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3543, file: !803, line: 162, baseType: !78, size: 32, offset: 128)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3527, file: !803, line: 262, baseType: !3547, size: 64, offset: 832)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3527, file: !803, line: 264, baseType: !78, size: 32, offset: 896)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3527, file: !803, line: 268, baseType: !78, size: 32, offset: 928)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3527, file: !803, line: 270, baseType: !829, size: 64, offset: 960)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3527, file: !803, line: 274, baseType: !152, size: 16, offset: 1024)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3527, file: !803, line: 275, baseType: !834, size: 8, offset: 1040)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3527, file: !803, line: 276, baseType: !836, size: 8, offset: 1048)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3527, file: !803, line: 280, baseType: !840, size: 64, offset: 1088)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3527, file: !803, line: 289, baseType: !843, size: 64, offset: 1152)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3527, file: !803, line: 297, baseType: !31, size: 64, offset: 1216)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3527, file: !803, line: 298, baseType: !31, size: 64, offset: 1280)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3527, file: !803, line: 299, baseType: !31, size: 64, offset: 1344)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3527, file: !803, line: 300, baseType: !31, size: 64, offset: 1408)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3527, file: !803, line: 302, baseType: !32, size: 64, offset: 1472)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3527, file: !803, line: 303, baseType: !78, size: 32, offset: 1536)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3527, file: !803, line: 305, baseType: !851, size: 160, offset: 1568)
!3565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!3566 = !{!3567, !3568, !3569, !3570, !3571, !3572}
!3567 = !DILocalVariable(name: "stream", arg: 1, scope: !3522, file: !559, line: 62, type: !3525)
!3568 = !DILocalVariable(name: "command_name", arg: 2, scope: !3522, file: !559, line: 63, type: !40)
!3569 = !DILocalVariable(name: "package", arg: 3, scope: !3522, file: !559, line: 63, type: !40)
!3570 = !DILocalVariable(name: "version", arg: 4, scope: !3522, file: !559, line: 64, type: !40)
!3571 = !DILocalVariable(name: "authors", arg: 5, scope: !3522, file: !559, line: 65, type: !3565)
!3572 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3522, file: !559, line: 65, type: !32)
!3573 = !DILocation(line: 62, column: 24, scope: !3522)
!3574 = !DILocation(line: 63, column: 30, scope: !3522)
!3575 = !DILocation(line: 63, column: 56, scope: !3522)
!3576 = !DILocation(line: 64, column: 30, scope: !3522)
!3577 = !DILocation(line: 65, column: 39, scope: !3522)
!3578 = !DILocation(line: 65, column: 55, scope: !3522)
!3579 = !DILocation(line: 67, column: 7, scope: !3580)
!3580 = distinct !DILexicalBlock(scope: !3522, file: !559, line: 67, column: 7)
!3581 = !DILocation(line: 67, column: 7, scope: !3522)
!3582 = !DILocation(line: 68, column: 5, scope: !3580)
!3583 = !DILocation(line: 70, column: 5, scope: !3580)
!3584 = !DILocation(line: 84, column: 3, scope: !3522)
!3585 = !DILocation(line: 84, column: 3, scope: !3586)
!3586 = !DILexicalBlockFile(scope: !3522, file: !559, discriminator: 1)
!3587 = !DILocation(line: 86, column: 3, scope: !3522)
!3588 = !DILocation(line: 86, column: 3, scope: !3586)
!3589 = !DILocation(line: 95, column: 3, scope: !3522)
!3590 = !DILocation(line: 99, column: 7, scope: !3591)
!3591 = distinct !DILexicalBlock(scope: !3522, file: !559, line: 96, column: 5)
!3592 = !DILocation(line: 102, column: 7, scope: !3591)
!3593 = !DILocation(line: 102, column: 7, scope: !3594)
!3594 = !DILexicalBlockFile(scope: !3591, file: !559, discriminator: 1)
!3595 = !DILocation(line: 103, column: 7, scope: !3591)
!3596 = !DILocation(line: 106, column: 7, scope: !3591)
!3597 = !DILocation(line: 106, column: 7, scope: !3594)
!3598 = !DILocation(line: 107, column: 7, scope: !3591)
!3599 = !DILocation(line: 110, column: 7, scope: !3591)
!3600 = !DILocation(line: 110, column: 7, scope: !3594)
!3601 = !DILocation(line: 112, column: 7, scope: !3591)
!3602 = !DILocation(line: 117, column: 7, scope: !3591)
!3603 = !DILocation(line: 117, column: 7, scope: !3594)
!3604 = !DILocation(line: 119, column: 7, scope: !3591)
!3605 = !DILocation(line: 124, column: 7, scope: !3591)
!3606 = !DILocation(line: 124, column: 7, scope: !3594)
!3607 = !DILocation(line: 126, column: 7, scope: !3591)
!3608 = !DILocation(line: 131, column: 7, scope: !3591)
!3609 = !DILocation(line: 131, column: 7, scope: !3594)
!3610 = !DILocation(line: 134, column: 7, scope: !3591)
!3611 = !DILocation(line: 139, column: 7, scope: !3591)
!3612 = !DILocation(line: 139, column: 7, scope: !3594)
!3613 = !DILocation(line: 142, column: 7, scope: !3591)
!3614 = !DILocation(line: 147, column: 7, scope: !3591)
!3615 = !DILocation(line: 147, column: 7, scope: !3594)
!3616 = !DILocation(line: 151, column: 7, scope: !3591)
!3617 = !DILocation(line: 156, column: 7, scope: !3591)
!3618 = !DILocation(line: 156, column: 7, scope: !3594)
!3619 = !DILocation(line: 160, column: 7, scope: !3591)
!3620 = !DILocation(line: 167, column: 7, scope: !3591)
!3621 = !DILocation(line: 167, column: 7, scope: !3594)
!3622 = !DILocation(line: 171, column: 7, scope: !3591)
!3623 = !DILocation(line: 173, column: 1, scope: !3522)
!3624 = distinct !DISubprogram(name: "version_etc_ar", scope: !559, file: !559, line: 180, type: !3625, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !555, variables: !3627)
!3625 = !DISubroutineType(types: !3626)
!3626 = !{null, !3525, !40, !40, !40, !3565}
!3627 = !{!3628, !3629, !3630, !3631, !3632, !3633}
!3628 = !DILocalVariable(name: "stream", arg: 1, scope: !3624, file: !559, line: 180, type: !3525)
!3629 = !DILocalVariable(name: "command_name", arg: 2, scope: !3624, file: !559, line: 181, type: !40)
!3630 = !DILocalVariable(name: "package", arg: 3, scope: !3624, file: !559, line: 181, type: !40)
!3631 = !DILocalVariable(name: "version", arg: 4, scope: !3624, file: !559, line: 182, type: !40)
!3632 = !DILocalVariable(name: "authors", arg: 5, scope: !3624, file: !559, line: 182, type: !3565)
!3633 = !DILocalVariable(name: "n_authors", scope: !3624, file: !559, line: 184, type: !32)
!3634 = !DILocation(line: 180, column: 23, scope: !3624)
!3635 = !DILocation(line: 181, column: 29, scope: !3624)
!3636 = !DILocation(line: 181, column: 55, scope: !3624)
!3637 = !DILocation(line: 182, column: 29, scope: !3624)
!3638 = !DILocation(line: 182, column: 59, scope: !3624)
!3639 = !DILocation(line: 184, column: 10, scope: !3624)
!3640 = !DILocation(line: 186, column: 8, scope: !3641)
!3641 = distinct !DILexicalBlock(scope: !3624, file: !559, line: 186, column: 3)
!3642 = !DILocation(line: 186, column: 23, scope: !3643)
!3643 = !DILexicalBlockFile(scope: !3644, file: !559, discriminator: 1)
!3644 = distinct !DILexicalBlock(scope: !3641, file: !559, line: 186, column: 3)
!3645 = !DILocation(line: 186, column: 3, scope: !3646)
!3646 = !DILexicalBlockFile(scope: !3641, file: !559, discriminator: 1)
!3647 = !DILocation(line: 186, column: 52, scope: !3648)
!3648 = !DILexicalBlockFile(scope: !3644, file: !559, discriminator: 3)
!3649 = distinct !{!3649, !3650, !3651}
!3650 = !DILocation(line: 186, column: 3, scope: !3641)
!3651 = !DILocation(line: 187, column: 5, scope: !3641)
!3652 = !DILocation(line: 188, column: 3, scope: !3624)
!3653 = !DILocation(line: 189, column: 1, scope: !3624)
!3654 = distinct !DISubprogram(name: "version_etc_va", scope: !559, file: !559, line: 196, type: !3655, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !555, variables: !3664)
!3655 = !DISubroutineType(types: !3656)
!3656 = !{null, !3525, !40, !40, !40, !3657}
!3657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3658, size: 64)
!3658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !556, line: 189, size: 192, elements: !3659)
!3659 = !{!3660, !3661, !3662, !3663}
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3658, file: !556, line: 189, baseType: !169, size: 32)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3658, file: !556, line: 189, baseType: !169, size: 32, offset: 32)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3658, file: !556, line: 189, baseType: !31, size: 64, offset: 64)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3658, file: !556, line: 189, baseType: !31, size: 64, offset: 128)
!3664 = !{!3665, !3666, !3667, !3668, !3669, !3670, !3671}
!3665 = !DILocalVariable(name: "stream", arg: 1, scope: !3654, file: !559, line: 196, type: !3525)
!3666 = !DILocalVariable(name: "command_name", arg: 2, scope: !3654, file: !559, line: 197, type: !40)
!3667 = !DILocalVariable(name: "package", arg: 3, scope: !3654, file: !559, line: 197, type: !40)
!3668 = !DILocalVariable(name: "version", arg: 4, scope: !3654, file: !559, line: 198, type: !40)
!3669 = !DILocalVariable(name: "authors", arg: 5, scope: !3654, file: !559, line: 198, type: !3657)
!3670 = !DILocalVariable(name: "n_authors", scope: !3654, file: !559, line: 200, type: !32)
!3671 = !DILocalVariable(name: "authtab", scope: !3654, file: !559, line: 201, type: !3672)
!3672 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 640, elements: !159)
!3673 = !DILocation(line: 196, column: 23, scope: !3654)
!3674 = !DILocation(line: 197, column: 29, scope: !3654)
!3675 = !DILocation(line: 197, column: 55, scope: !3654)
!3676 = !DILocation(line: 198, column: 29, scope: !3654)
!3677 = !DILocation(line: 198, column: 46, scope: !3654)
!3678 = !DILocation(line: 201, column: 3, scope: !3654)
!3679 = !DILocation(line: 201, column: 15, scope: !3654)
!3680 = !DILocation(line: 200, column: 10, scope: !3654)
!3681 = !DILocation(line: 205, column: 35, scope: !3682)
!3682 = !DILexicalBlockFile(scope: !3683, file: !559, discriminator: 1)
!3683 = distinct !DILexicalBlock(scope: !3684, file: !559, line: 203, column: 3)
!3684 = distinct !DILexicalBlock(scope: !3654, file: !559, line: 203, column: 3)
!3685 = !DILocation(line: 205, column: 35, scope: !3686)
!3686 = !DILexicalBlockFile(scope: !3683, file: !559, discriminator: 2)
!3687 = !DILocation(line: 205, column: 35, scope: !3688)
!3688 = !DILexicalBlockFile(scope: !3683, file: !559, discriminator: 3)
!3689 = !DILocation(line: 205, column: 35, scope: !3690)
!3690 = !DILexicalBlockFile(scope: !3683, file: !559, discriminator: 4)
!3691 = !DILocation(line: 205, column: 14, scope: !3690)
!3692 = !DILocation(line: 205, column: 33, scope: !3690)
!3693 = !DILocation(line: 205, column: 67, scope: !3690)
!3694 = !DILocation(line: 203, column: 3, scope: !3695)
!3695 = !DILexicalBlockFile(scope: !3684, file: !559, discriminator: 1)
!3696 = !DILocation(line: 208, column: 3, scope: !3654)
!3697 = !DILocation(line: 210, column: 1, scope: !3654)
!3698 = distinct !DISubprogram(name: "version_etc", scope: !559, file: !559, line: 227, type: !3699, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !555, variables: !3701)
!3699 = !DISubroutineType(types: !3700)
!3700 = !{null, !3525, !40, !40, !40, null}
!3701 = !{!3702, !3703, !3704, !3705, !3706}
!3702 = !DILocalVariable(name: "stream", arg: 1, scope: !3698, file: !559, line: 227, type: !3525)
!3703 = !DILocalVariable(name: "command_name", arg: 2, scope: !3698, file: !559, line: 228, type: !40)
!3704 = !DILocalVariable(name: "package", arg: 3, scope: !3698, file: !559, line: 228, type: !40)
!3705 = !DILocalVariable(name: "version", arg: 4, scope: !3698, file: !559, line: 229, type: !40)
!3706 = !DILocalVariable(name: "authors", scope: !3698, file: !559, line: 231, type: !3707)
!3707 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !801, line: 80, baseType: !3708)
!3708 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3709, line: 50, baseType: !3710)
!3709 = !DIFile(filename: "/usr/bin/../lib/clang/4.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3710 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !556, line: 231, baseType: !3711)
!3711 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3658, size: 192, elements: !837)
!3712 = !DILocation(line: 227, column: 20, scope: !3698)
!3713 = !DILocation(line: 228, column: 26, scope: !3698)
!3714 = !DILocation(line: 228, column: 52, scope: !3698)
!3715 = !DILocation(line: 229, column: 26, scope: !3698)
!3716 = !DILocation(line: 231, column: 3, scope: !3698)
!3717 = !DILocation(line: 231, column: 11, scope: !3698)
!3718 = !DILocation(line: 233, column: 3, scope: !3698)
!3719 = !DILocation(line: 234, column: 3, scope: !3698)
!3720 = !DILocation(line: 235, column: 3, scope: !3698)
!3721 = !DILocation(line: 236, column: 1, scope: !3698)
!3722 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !559, file: !559, line: 239, type: !632, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !555, variables: !102)
!3723 = !DILocation(line: 245, column: 3, scope: !3722)
!3724 = !DILocation(line: 245, column: 3, scope: !3725)
!3725 = !DILexicalBlockFile(scope: !3722, file: !559, discriminator: 1)
!3726 = !DILocation(line: 251, column: 3, scope: !3722)
!3727 = !DILocation(line: 251, column: 3, scope: !3725)
!3728 = !DILocation(line: 256, column: 3, scope: !3722)
!3729 = !DILocation(line: 256, column: 3, scope: !3725)
!3730 = !DILocation(line: 258, column: 1, scope: !3722)
!3731 = distinct !DISubprogram(name: "xnmalloc", scope: !567, file: !567, line: 105, type: !1104, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !563, variables: !3732)
!3732 = !{!3733, !3734}
!3733 = !DILocalVariable(name: "n", arg: 1, scope: !3731, file: !567, line: 105, type: !32)
!3734 = !DILocalVariable(name: "s", arg: 2, scope: !3731, file: !567, line: 105, type: !32)
!3735 = !DILocation(line: 105, column: 18, scope: !3731)
!3736 = !DILocation(line: 105, column: 28, scope: !3731)
!3737 = !DILocation(line: 107, column: 7, scope: !3738)
!3738 = distinct !DILexicalBlock(scope: !3731, file: !567, line: 107, column: 7)
!3739 = !DILocation(line: 107, column: 7, scope: !3731)
!3740 = !DILocation(line: 108, column: 5, scope: !3738)
!3741 = !DILocation(line: 109, column: 21, scope: !3731)
!3742 = !DILocalVariable(name: "n", arg: 1, scope: !3743, file: !3744, line: 39, type: !32)
!3743 = distinct !DISubprogram(name: "xmalloc", scope: !3744, file: !3744, line: 39, type: !3745, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !563, variables: !3747)
!3744 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3745 = !DISubroutineType(types: !3746)
!3746 = !{!31, !32}
!3747 = !{!3742, !3748}
!3748 = !DILocalVariable(name: "p", scope: !3743, file: !3744, line: 41, type: !31)
!3749 = !DILocation(line: 39, column: 17, scope: !3743, inlinedAt: !3750)
!3750 = distinct !DILocation(line: 109, column: 10, scope: !3731)
!3751 = !DILocation(line: 41, column: 13, scope: !3743, inlinedAt: !3750)
!3752 = !DILocation(line: 41, column: 9, scope: !3743, inlinedAt: !3750)
!3753 = !DILocation(line: 42, column: 8, scope: !3754, inlinedAt: !3750)
!3754 = distinct !DILexicalBlock(scope: !3743, file: !3744, line: 42, column: 7)
!3755 = !DILocation(line: 42, column: 15, scope: !3756, inlinedAt: !3750)
!3756 = !DILexicalBlockFile(scope: !3754, file: !3744, discriminator: 1)
!3757 = !DILocation(line: 42, column: 10, scope: !3754, inlinedAt: !3750)
!3758 = !DILocation(line: 43, column: 5, scope: !3754, inlinedAt: !3750)
!3759 = !DILocation(line: 109, column: 3, scope: !3731)
!3760 = !DILocation(line: 39, column: 17, scope: !3743)
!3761 = !DILocation(line: 41, column: 13, scope: !3743)
!3762 = !DILocation(line: 41, column: 9, scope: !3743)
!3763 = !DILocation(line: 42, column: 8, scope: !3754)
!3764 = !DILocation(line: 42, column: 15, scope: !3756)
!3765 = !DILocation(line: 42, column: 10, scope: !3754)
!3766 = !DILocation(line: 43, column: 5, scope: !3754)
!3767 = !DILocation(line: 44, column: 3, scope: !3743)
!3768 = distinct !DISubprogram(name: "xnrealloc", scope: !567, file: !567, line: 118, type: !3769, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !563, variables: !3771)
!3769 = !DISubroutineType(types: !3770)
!3770 = !{!31, !31, !32, !32}
!3771 = !{!3772, !3773, !3774}
!3772 = !DILocalVariable(name: "p", arg: 1, scope: !3768, file: !567, line: 118, type: !31)
!3773 = !DILocalVariable(name: "n", arg: 2, scope: !3768, file: !567, line: 118, type: !32)
!3774 = !DILocalVariable(name: "s", arg: 3, scope: !3768, file: !567, line: 118, type: !32)
!3775 = !DILocation(line: 118, column: 18, scope: !3768)
!3776 = !DILocation(line: 118, column: 28, scope: !3768)
!3777 = !DILocation(line: 118, column: 38, scope: !3768)
!3778 = !DILocation(line: 120, column: 7, scope: !3779)
!3779 = distinct !DILexicalBlock(scope: !3768, file: !567, line: 120, column: 7)
!3780 = !DILocation(line: 120, column: 7, scope: !3768)
!3781 = !DILocation(line: 121, column: 5, scope: !3779)
!3782 = !DILocation(line: 122, column: 25, scope: !3768)
!3783 = !DILocalVariable(name: "p", arg: 1, scope: !3784, file: !3744, line: 51, type: !31)
!3784 = distinct !DISubprogram(name: "xrealloc", scope: !3744, file: !3744, line: 51, type: !3785, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !563, variables: !3787)
!3785 = !DISubroutineType(types: !3786)
!3786 = !{!31, !31, !32}
!3787 = !{!3783, !3788}
!3788 = !DILocalVariable(name: "n", arg: 2, scope: !3784, file: !3744, line: 51, type: !32)
!3789 = !DILocation(line: 51, column: 17, scope: !3784, inlinedAt: !3790)
!3790 = distinct !DILocation(line: 122, column: 10, scope: !3768)
!3791 = !DILocation(line: 51, column: 27, scope: !3784, inlinedAt: !3790)
!3792 = !DILocation(line: 53, column: 8, scope: !3793, inlinedAt: !3790)
!3793 = distinct !DILexicalBlock(scope: !3784, file: !3744, line: 53, column: 7)
!3794 = !DILocation(line: 53, column: 13, scope: !3795, inlinedAt: !3790)
!3795 = !DILexicalBlockFile(scope: !3793, file: !3744, discriminator: 1)
!3796 = !DILocation(line: 53, column: 10, scope: !3793, inlinedAt: !3790)
!3797 = !DILocation(line: 57, column: 7, scope: !3798, inlinedAt: !3790)
!3798 = distinct !DILexicalBlock(scope: !3793, file: !3744, line: 54, column: 5)
!3799 = !DILocation(line: 58, column: 7, scope: !3798, inlinedAt: !3790)
!3800 = !DILocation(line: 61, column: 7, scope: !3784, inlinedAt: !3790)
!3801 = !DILocation(line: 62, column: 8, scope: !3802, inlinedAt: !3790)
!3802 = distinct !DILexicalBlock(scope: !3784, file: !3744, line: 62, column: 7)
!3803 = !DILocation(line: 62, column: 13, scope: !3804, inlinedAt: !3790)
!3804 = !DILexicalBlockFile(scope: !3802, file: !3744, discriminator: 1)
!3805 = !DILocation(line: 62, column: 10, scope: !3802, inlinedAt: !3790)
!3806 = !DILocation(line: 63, column: 5, scope: !3802, inlinedAt: !3790)
!3807 = !DILocation(line: 122, column: 3, scope: !3768)
!3808 = !DILocation(line: 51, column: 17, scope: !3784)
!3809 = !DILocation(line: 51, column: 27, scope: !3784)
!3810 = !DILocation(line: 53, column: 8, scope: !3793)
!3811 = !DILocation(line: 53, column: 13, scope: !3795)
!3812 = !DILocation(line: 53, column: 10, scope: !3793)
!3813 = !DILocation(line: 57, column: 7, scope: !3798)
!3814 = !DILocation(line: 58, column: 7, scope: !3798)
!3815 = !DILocation(line: 61, column: 7, scope: !3784)
!3816 = !DILocation(line: 62, column: 8, scope: !3802)
!3817 = !DILocation(line: 62, column: 13, scope: !3804)
!3818 = !DILocation(line: 62, column: 10, scope: !3802)
!3819 = !DILocation(line: 63, column: 5, scope: !3802)
!3820 = !DILocation(line: 65, column: 1, scope: !3784)
!3821 = !DILocation(line: 180, column: 19, scope: !568)
!3822 = !DILocation(line: 180, column: 30, scope: !568)
!3823 = !DILocation(line: 180, column: 41, scope: !568)
!3824 = !DILocation(line: 182, column: 14, scope: !568)
!3825 = !DILocation(line: 182, column: 10, scope: !568)
!3826 = !DILocation(line: 184, column: 9, scope: !3827)
!3827 = distinct !DILexicalBlock(scope: !568, file: !567, line: 184, column: 7)
!3828 = !DILocation(line: 184, column: 7, scope: !568)
!3829 = !DILocation(line: 186, column: 13, scope: !3830)
!3830 = distinct !DILexicalBlock(scope: !3831, file: !567, line: 186, column: 11)
!3831 = distinct !DILexicalBlock(scope: !3827, file: !567, line: 185, column: 5)
!3832 = !DILocation(line: 186, column: 11, scope: !3831)
!3833 = !DILocation(line: 194, column: 30, scope: !3834)
!3834 = distinct !DILexicalBlock(scope: !3830, file: !567, line: 187, column: 9)
!3835 = !DILocation(line: 195, column: 16, scope: !3834)
!3836 = !DILocation(line: 195, column: 13, scope: !3834)
!3837 = !DILocation(line: 196, column: 9, scope: !3834)
!3838 = !DILocation(line: 204, column: 69, scope: !3839)
!3839 = distinct !DILexicalBlock(scope: !3840, file: !567, line: 204, column: 11)
!3840 = distinct !DILexicalBlock(scope: !3827, file: !567, line: 199, column: 5)
!3841 = !DILocation(line: 205, column: 11, scope: !3839)
!3842 = !DILocation(line: 204, column: 11, scope: !3840)
!3843 = !DILocation(line: 206, column: 9, scope: !3839)
!3844 = !DILocation(line: 210, column: 7, scope: !568)
!3845 = !DILocation(line: 211, column: 25, scope: !568)
!3846 = !DILocation(line: 51, column: 17, scope: !3784, inlinedAt: !3847)
!3847 = distinct !DILocation(line: 211, column: 10, scope: !568)
!3848 = !DILocation(line: 51, column: 27, scope: !3784, inlinedAt: !3847)
!3849 = !DILocation(line: 53, column: 10, scope: !3793, inlinedAt: !3847)
!3850 = !DILocation(line: 207, column: 14, scope: !3840)
!3851 = !DILocation(line: 207, column: 18, scope: !3840)
!3852 = !DILocation(line: 207, column: 9, scope: !3840)
!3853 = !DILocation(line: 53, column: 8, scope: !3793, inlinedAt: !3847)
!3854 = !DILocation(line: 57, column: 7, scope: !3798, inlinedAt: !3847)
!3855 = !DILocation(line: 58, column: 7, scope: !3798, inlinedAt: !3847)
!3856 = !DILocation(line: 61, column: 7, scope: !3784, inlinedAt: !3847)
!3857 = !DILocation(line: 62, column: 8, scope: !3802, inlinedAt: !3847)
!3858 = !DILocation(line: 62, column: 13, scope: !3804, inlinedAt: !3847)
!3859 = !DILocation(line: 62, column: 10, scope: !3802, inlinedAt: !3847)
!3860 = !DILocation(line: 63, column: 5, scope: !3802, inlinedAt: !3847)
!3861 = !DILocation(line: 211, column: 3, scope: !568)
!3862 = distinct !DISubprogram(name: "xcharalloc", scope: !567, file: !567, line: 220, type: !2795, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !563, variables: !3863)
!3863 = !{!3864}
!3864 = !DILocalVariable(name: "n", arg: 1, scope: !3862, file: !567, line: 220, type: !32)
!3865 = !DILocation(line: 220, column: 20, scope: !3862)
!3866 = !DILocation(line: 39, column: 17, scope: !3743, inlinedAt: !3867)
!3867 = distinct !DILocation(line: 222, column: 10, scope: !3862)
!3868 = !DILocation(line: 41, column: 13, scope: !3743, inlinedAt: !3867)
!3869 = !DILocation(line: 41, column: 9, scope: !3743, inlinedAt: !3867)
!3870 = !DILocation(line: 42, column: 8, scope: !3754, inlinedAt: !3867)
!3871 = !DILocation(line: 42, column: 15, scope: !3756, inlinedAt: !3867)
!3872 = !DILocation(line: 42, column: 10, scope: !3754, inlinedAt: !3867)
!3873 = !DILocation(line: 43, column: 5, scope: !3754, inlinedAt: !3867)
!3874 = !DILocation(line: 222, column: 3, scope: !3862)
!3875 = distinct !DISubprogram(name: "x2realloc", scope: !3744, file: !3744, line: 74, type: !3876, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !563, variables: !3878)
!3876 = !DISubroutineType(types: !3877)
!3877 = !{!31, !31, !571}
!3878 = !{!3879, !3880}
!3879 = !DILocalVariable(name: "p", arg: 1, scope: !3875, file: !3744, line: 74, type: !31)
!3880 = !DILocalVariable(name: "pn", arg: 2, scope: !3875, file: !3744, line: 74, type: !571)
!3881 = !DILocation(line: 74, column: 18, scope: !3875)
!3882 = !DILocation(line: 74, column: 29, scope: !3875)
!3883 = !DILocation(line: 180, column: 19, scope: !568, inlinedAt: !3884)
!3884 = distinct !DILocation(line: 76, column: 10, scope: !3875)
!3885 = !DILocation(line: 180, column: 30, scope: !568, inlinedAt: !3884)
!3886 = !DILocation(line: 180, column: 41, scope: !568, inlinedAt: !3884)
!3887 = !DILocation(line: 182, column: 14, scope: !568, inlinedAt: !3884)
!3888 = !DILocation(line: 182, column: 10, scope: !568, inlinedAt: !3884)
!3889 = !DILocation(line: 184, column: 9, scope: !3827, inlinedAt: !3884)
!3890 = !DILocation(line: 184, column: 7, scope: !568, inlinedAt: !3884)
!3891 = !DILocation(line: 186, column: 13, scope: !3830, inlinedAt: !3884)
!3892 = !DILocation(line: 186, column: 11, scope: !3831, inlinedAt: !3884)
!3893 = !DILocation(line: 210, column: 7, scope: !568, inlinedAt: !3884)
!3894 = !DILocation(line: 51, column: 17, scope: !3784, inlinedAt: !3895)
!3895 = distinct !DILocation(line: 211, column: 10, scope: !568, inlinedAt: !3884)
!3896 = !DILocation(line: 51, column: 27, scope: !3784, inlinedAt: !3895)
!3897 = !DILocation(line: 53, column: 10, scope: !3793, inlinedAt: !3895)
!3898 = !DILocation(line: 205, column: 11, scope: !3839, inlinedAt: !3884)
!3899 = !DILocation(line: 204, column: 11, scope: !3840, inlinedAt: !3884)
!3900 = !DILocation(line: 206, column: 9, scope: !3839, inlinedAt: !3884)
!3901 = !DILocation(line: 207, column: 14, scope: !3840, inlinedAt: !3884)
!3902 = !DILocation(line: 207, column: 18, scope: !3840, inlinedAt: !3884)
!3903 = !DILocation(line: 207, column: 9, scope: !3840, inlinedAt: !3884)
!3904 = !DILocation(line: 53, column: 8, scope: !3793, inlinedAt: !3895)
!3905 = !DILocation(line: 57, column: 7, scope: !3798, inlinedAt: !3895)
!3906 = !DILocation(line: 58, column: 7, scope: !3798, inlinedAt: !3895)
!3907 = !DILocation(line: 61, column: 7, scope: !3784, inlinedAt: !3895)
!3908 = !DILocation(line: 62, column: 8, scope: !3802, inlinedAt: !3895)
!3909 = !DILocation(line: 62, column: 13, scope: !3804, inlinedAt: !3895)
!3910 = !DILocation(line: 62, column: 10, scope: !3802, inlinedAt: !3895)
!3911 = !DILocation(line: 63, column: 5, scope: !3802, inlinedAt: !3895)
!3912 = !DILocation(line: 76, column: 3, scope: !3875)
!3913 = distinct !DISubprogram(name: "xzalloc", scope: !3744, file: !3744, line: 84, type: !3745, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !563, variables: !3914)
!3914 = !{!3915}
!3915 = !DILocalVariable(name: "s", arg: 1, scope: !3913, file: !3744, line: 84, type: !32)
!3916 = !DILocation(line: 84, column: 17, scope: !3913)
!3917 = !DILocation(line: 39, column: 17, scope: !3743, inlinedAt: !3918)
!3918 = distinct !DILocation(line: 86, column: 18, scope: !3913)
!3919 = !DILocation(line: 41, column: 13, scope: !3743, inlinedAt: !3918)
!3920 = !DILocation(line: 41, column: 9, scope: !3743, inlinedAt: !3918)
!3921 = !DILocation(line: 42, column: 8, scope: !3754, inlinedAt: !3918)
!3922 = !DILocation(line: 42, column: 15, scope: !3756, inlinedAt: !3918)
!3923 = !DILocation(line: 42, column: 10, scope: !3754, inlinedAt: !3918)
!3924 = !DILocation(line: 43, column: 5, scope: !3754, inlinedAt: !3918)
!3925 = !DILocation(line: 86, column: 10, scope: !3913)
!3926 = !DILocation(line: 86, column: 3, scope: !3913)
!3927 = distinct !DISubprogram(name: "xcalloc", scope: !3744, file: !3744, line: 93, type: !1104, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !563, variables: !3928)
!3928 = !{!3929, !3930, !3931}
!3929 = !DILocalVariable(name: "n", arg: 1, scope: !3927, file: !3744, line: 93, type: !32)
!3930 = !DILocalVariable(name: "s", arg: 2, scope: !3927, file: !3744, line: 93, type: !32)
!3931 = !DILocalVariable(name: "p", scope: !3927, file: !3744, line: 95, type: !31)
!3932 = !DILocation(line: 93, column: 17, scope: !3927)
!3933 = !DILocation(line: 93, column: 27, scope: !3927)
!3934 = !DILocation(line: 100, column: 7, scope: !3935)
!3935 = distinct !DILexicalBlock(scope: !3927, file: !3744, line: 100, column: 7)
!3936 = !DILocation(line: 101, column: 7, scope: !3935)
!3937 = !DILocation(line: 101, column: 18, scope: !3938)
!3938 = !DILexicalBlockFile(scope: !3935, file: !3744, discriminator: 1)
!3939 = !DILocation(line: 95, column: 9, scope: !3927)
!3940 = !DILocation(line: 101, column: 16, scope: !3938)
!3941 = !DILocation(line: 100, column: 7, scope: !3942)
!3942 = !DILexicalBlockFile(scope: !3927, file: !3744, discriminator: 1)
!3943 = !DILocation(line: 102, column: 5, scope: !3935)
!3944 = !DILocation(line: 103, column: 3, scope: !3927)
!3945 = distinct !DISubprogram(name: "xmemdup", scope: !3744, file: !3744, line: 111, type: !3946, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !563, variables: !3948)
!3946 = !DISubroutineType(types: !3947)
!3947 = !{!31, !35, !32}
!3948 = !{!3949, !3950}
!3949 = !DILocalVariable(name: "p", arg: 1, scope: !3945, file: !3744, line: 111, type: !35)
!3950 = !DILocalVariable(name: "s", arg: 2, scope: !3945, file: !3744, line: 111, type: !32)
!3951 = !DILocation(line: 111, column: 22, scope: !3945)
!3952 = !DILocation(line: 111, column: 32, scope: !3945)
!3953 = !DILocation(line: 39, column: 17, scope: !3743, inlinedAt: !3954)
!3954 = distinct !DILocation(line: 113, column: 18, scope: !3945)
!3955 = !DILocation(line: 41, column: 13, scope: !3743, inlinedAt: !3954)
!3956 = !DILocation(line: 41, column: 9, scope: !3743, inlinedAt: !3954)
!3957 = !DILocation(line: 42, column: 8, scope: !3754, inlinedAt: !3954)
!3958 = !DILocation(line: 42, column: 15, scope: !3756, inlinedAt: !3954)
!3959 = !DILocation(line: 42, column: 10, scope: !3754, inlinedAt: !3954)
!3960 = !DILocation(line: 43, column: 5, scope: !3754, inlinedAt: !3954)
!3961 = !DILocation(line: 113, column: 10, scope: !3945)
!3962 = !DILocation(line: 113, column: 3, scope: !3945)
!3963 = distinct !DISubprogram(name: "xstrdup", scope: !3744, file: !3744, line: 119, type: !3001, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !563, variables: !3964)
!3964 = !{!3965}
!3965 = !DILocalVariable(name: "string", arg: 1, scope: !3963, file: !3744, line: 119, type: !40)
!3966 = !DILocation(line: 119, column: 22, scope: !3963)
!3967 = !DILocation(line: 121, column: 27, scope: !3963)
!3968 = !DILocation(line: 121, column: 43, scope: !3963)
!3969 = !DILocation(line: 111, column: 22, scope: !3945, inlinedAt: !3970)
!3970 = distinct !DILocation(line: 121, column: 10, scope: !3971)
!3971 = !DILexicalBlockFile(scope: !3963, file: !3744, discriminator: 1)
!3972 = !DILocation(line: 111, column: 32, scope: !3945, inlinedAt: !3970)
!3973 = !DILocation(line: 39, column: 17, scope: !3743, inlinedAt: !3974)
!3974 = distinct !DILocation(line: 113, column: 18, scope: !3945, inlinedAt: !3970)
!3975 = !DILocation(line: 41, column: 13, scope: !3743, inlinedAt: !3974)
!3976 = !DILocation(line: 41, column: 9, scope: !3743, inlinedAt: !3974)
!3977 = !DILocation(line: 42, column: 8, scope: !3754, inlinedAt: !3974)
!3978 = !DILocation(line: 42, column: 15, scope: !3756, inlinedAt: !3974)
!3979 = !DILocation(line: 42, column: 10, scope: !3754, inlinedAt: !3974)
!3980 = !DILocation(line: 43, column: 5, scope: !3754, inlinedAt: !3974)
!3981 = !DILocation(line: 113, column: 10, scope: !3945, inlinedAt: !3970)
!3982 = !DILocation(line: 121, column: 3, scope: !3963)
!3983 = distinct !DISubprogram(name: "xalloc_die", scope: !3984, file: !3984, line: 32, type: !632, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !580, variables: !102)
!3984 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3985 = !DILocation(line: 34, column: 10, scope: !3983)
!3986 = !DILocation(line: 34, column: 33, scope: !3983)
!3987 = !DILocation(line: 34, column: 3, scope: !3988)
!3988 = !DILexicalBlockFile(scope: !3983, file: !3984, discriminator: 1)
!3989 = !DILocation(line: 40, column: 3, scope: !3983)
!3990 = distinct !DISubprogram(name: "rpl_calloc", scope: !3991, file: !3991, line: 42, type: !1104, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !582, variables: !3992)
!3991 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3992 = !{!3993, !3994, !3995, !3996}
!3993 = !DILocalVariable(name: "n", arg: 1, scope: !3990, file: !3991, line: 42, type: !32)
!3994 = !DILocalVariable(name: "s", arg: 2, scope: !3990, file: !3991, line: 42, type: !32)
!3995 = !DILocalVariable(name: "result", scope: !3990, file: !3991, line: 44, type: !31)
!3996 = !DILocalVariable(name: "bytes", scope: !3997, file: !3991, line: 56, type: !32)
!3997 = distinct !DILexicalBlock(scope: !3998, file: !3991, line: 53, column: 5)
!3998 = distinct !DILexicalBlock(scope: !3990, file: !3991, line: 47, column: 7)
!3999 = !DILocation(line: 42, column: 20, scope: !3990)
!4000 = !DILocation(line: 42, column: 30, scope: !3990)
!4001 = !DILocation(line: 47, column: 9, scope: !3998)
!4002 = !DILocation(line: 47, column: 19, scope: !4003)
!4003 = !DILexicalBlockFile(scope: !3998, file: !3991, discriminator: 1)
!4004 = !DILocation(line: 47, column: 14, scope: !3998)
!4005 = !DILocation(line: 56, column: 24, scope: !3997)
!4006 = !DILocation(line: 56, column: 14, scope: !3997)
!4007 = !DILocation(line: 57, column: 17, scope: !4008)
!4008 = distinct !DILexicalBlock(scope: !3997, file: !3991, line: 57, column: 11)
!4009 = !DILocation(line: 57, column: 21, scope: !4008)
!4010 = !DILocation(line: 57, column: 11, scope: !3997)
!4011 = !DILocation(line: 59, column: 11, scope: !4012)
!4012 = distinct !DILexicalBlock(scope: !4008, file: !3991, line: 58, column: 9)
!4013 = !DILocation(line: 59, column: 17, scope: !4012)
!4014 = !DILocation(line: 65, column: 12, scope: !3990)
!4015 = !DILocation(line: 44, column: 9, scope: !3990)
!4016 = !DILocation(line: 72, column: 3, scope: !3990)
!4017 = !DILocation(line: 73, column: 1, scope: !3990)
!4018 = distinct !DISubprogram(name: "rpl_fclose", scope: !4019, file: !4019, line: 56, type: !4020, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !584, variables: !4062)
!4019 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4020 = !DISubroutineType(types: !4021)
!4021 = !{!78, !4022}
!4022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4023, size: 64)
!4023 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !801, line: 49, baseType: !4024)
!4024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !803, line: 241, size: 1728, elements: !4025)
!4025 = !{!4026, !4027, !4028, !4029, !4030, !4031, !4032, !4033, !4034, !4035, !4036, !4037, !4038, !4046, !4047, !4048, !4049, !4050, !4051, !4052, !4053, !4054, !4055, !4056, !4057, !4058, !4059, !4060, !4061}
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4024, file: !803, line: 242, baseType: !78, size: 32)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4024, file: !803, line: 247, baseType: !29, size: 64, offset: 64)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4024, file: !803, line: 248, baseType: !29, size: 64, offset: 128)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4024, file: !803, line: 249, baseType: !29, size: 64, offset: 192)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4024, file: !803, line: 250, baseType: !29, size: 64, offset: 256)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4024, file: !803, line: 251, baseType: !29, size: 64, offset: 320)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4024, file: !803, line: 252, baseType: !29, size: 64, offset: 384)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4024, file: !803, line: 253, baseType: !29, size: 64, offset: 448)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4024, file: !803, line: 254, baseType: !29, size: 64, offset: 512)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4024, file: !803, line: 256, baseType: !29, size: 64, offset: 576)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4024, file: !803, line: 257, baseType: !29, size: 64, offset: 640)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4024, file: !803, line: 258, baseType: !29, size: 64, offset: 704)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4024, file: !803, line: 260, baseType: !4039, size: 64, offset: 768)
!4039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4040, size: 64)
!4040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !803, line: 156, size: 192, elements: !4041)
!4041 = !{!4042, !4043, !4045}
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4040, file: !803, line: 157, baseType: !4039, size: 64)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4040, file: !803, line: 158, baseType: !4044, size: 64, offset: 64)
!4044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4024, size: 64)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4040, file: !803, line: 162, baseType: !78, size: 32, offset: 128)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4024, file: !803, line: 262, baseType: !4044, size: 64, offset: 832)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4024, file: !803, line: 264, baseType: !78, size: 32, offset: 896)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4024, file: !803, line: 268, baseType: !78, size: 32, offset: 928)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4024, file: !803, line: 270, baseType: !829, size: 64, offset: 960)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4024, file: !803, line: 274, baseType: !152, size: 16, offset: 1024)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4024, file: !803, line: 275, baseType: !834, size: 8, offset: 1040)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4024, file: !803, line: 276, baseType: !836, size: 8, offset: 1048)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4024, file: !803, line: 280, baseType: !840, size: 64, offset: 1088)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4024, file: !803, line: 289, baseType: !843, size: 64, offset: 1152)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4024, file: !803, line: 297, baseType: !31, size: 64, offset: 1216)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4024, file: !803, line: 298, baseType: !31, size: 64, offset: 1280)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4024, file: !803, line: 299, baseType: !31, size: 64, offset: 1344)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4024, file: !803, line: 300, baseType: !31, size: 64, offset: 1408)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4024, file: !803, line: 302, baseType: !32, size: 64, offset: 1472)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4024, file: !803, line: 303, baseType: !78, size: 32, offset: 1536)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4024, file: !803, line: 305, baseType: !851, size: 160, offset: 1568)
!4062 = !{!4063, !4064, !4065, !4066}
!4063 = !DILocalVariable(name: "fp", arg: 1, scope: !4018, file: !4019, line: 56, type: !4022)
!4064 = !DILocalVariable(name: "saved_errno", scope: !4018, file: !4019, line: 58, type: !78)
!4065 = !DILocalVariable(name: "fd", scope: !4018, file: !4019, line: 59, type: !78)
!4066 = !DILocalVariable(name: "result", scope: !4018, file: !4019, line: 60, type: !78)
!4067 = !DILocation(line: 56, column: 19, scope: !4018)
!4068 = !DILocation(line: 58, column: 7, scope: !4018)
!4069 = !DILocation(line: 60, column: 7, scope: !4018)
!4070 = !DILocation(line: 63, column: 8, scope: !4018)
!4071 = !DILocation(line: 59, column: 7, scope: !4018)
!4072 = !DILocation(line: 64, column: 10, scope: !4073)
!4073 = distinct !DILexicalBlock(scope: !4018, file: !4019, line: 64, column: 7)
!4074 = !DILocation(line: 64, column: 7, scope: !4018)
!4075 = !DILocation(line: 65, column: 12, scope: !4073)
!4076 = !DILocation(line: 65, column: 5, scope: !4073)
!4077 = !DILocation(line: 70, column: 9, scope: !4078)
!4078 = distinct !DILexicalBlock(scope: !4018, file: !4019, line: 70, column: 7)
!4079 = !DILocation(line: 70, column: 23, scope: !4078)
!4080 = !DILocation(line: 70, column: 33, scope: !4081)
!4081 = !DILexicalBlockFile(scope: !4078, file: !4019, discriminator: 1)
!4082 = !DILocation(line: 70, column: 26, scope: !4083)
!4083 = !DILexicalBlockFile(scope: !4078, file: !4019, discriminator: 3)
!4084 = !DILocation(line: 70, column: 59, scope: !4081)
!4085 = !DILocation(line: 71, column: 7, scope: !4078)
!4086 = !DILocation(line: 71, column: 10, scope: !4081)
!4087 = !DILocation(line: 70, column: 7, scope: !4088)
!4088 = !DILexicalBlockFile(scope: !4018, file: !4019, discriminator: 2)
!4089 = !DILocation(line: 98, column: 12, scope: !4018)
!4090 = !DILocation(line: 103, column: 7, scope: !4018)
!4091 = !DILocation(line: 72, column: 19, scope: !4078)
!4092 = !DILocation(line: 103, column: 19, scope: !4093)
!4093 = distinct !DILexicalBlock(scope: !4018, file: !4019, line: 103, column: 7)
!4094 = !DILocation(line: 105, column: 13, scope: !4095)
!4095 = distinct !DILexicalBlock(scope: !4093, file: !4019, line: 104, column: 5)
!4096 = !DILocation(line: 107, column: 5, scope: !4095)
!4097 = !DILocation(line: 110, column: 1, scope: !4018)
!4098 = distinct !DISubprogram(name: "rpl_fflush", scope: !4099, file: !4099, line: 127, type: !4100, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !586, variables: !4142)
!4099 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4100 = !DISubroutineType(types: !4101)
!4101 = !{!78, !4102}
!4102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4103, size: 64)
!4103 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !801, line: 49, baseType: !4104)
!4104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !803, line: 241, size: 1728, elements: !4105)
!4105 = !{!4106, !4107, !4108, !4109, !4110, !4111, !4112, !4113, !4114, !4115, !4116, !4117, !4118, !4126, !4127, !4128, !4129, !4130, !4131, !4132, !4133, !4134, !4135, !4136, !4137, !4138, !4139, !4140, !4141}
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4104, file: !803, line: 242, baseType: !78, size: 32)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4104, file: !803, line: 247, baseType: !29, size: 64, offset: 64)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4104, file: !803, line: 248, baseType: !29, size: 64, offset: 128)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4104, file: !803, line: 249, baseType: !29, size: 64, offset: 192)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4104, file: !803, line: 250, baseType: !29, size: 64, offset: 256)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4104, file: !803, line: 251, baseType: !29, size: 64, offset: 320)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4104, file: !803, line: 252, baseType: !29, size: 64, offset: 384)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4104, file: !803, line: 253, baseType: !29, size: 64, offset: 448)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4104, file: !803, line: 254, baseType: !29, size: 64, offset: 512)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4104, file: !803, line: 256, baseType: !29, size: 64, offset: 576)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4104, file: !803, line: 257, baseType: !29, size: 64, offset: 640)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4104, file: !803, line: 258, baseType: !29, size: 64, offset: 704)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4104, file: !803, line: 260, baseType: !4119, size: 64, offset: 768)
!4119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4120, size: 64)
!4120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !803, line: 156, size: 192, elements: !4121)
!4121 = !{!4122, !4123, !4125}
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4120, file: !803, line: 157, baseType: !4119, size: 64)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4120, file: !803, line: 158, baseType: !4124, size: 64, offset: 64)
!4124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4104, size: 64)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4120, file: !803, line: 162, baseType: !78, size: 32, offset: 128)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4104, file: !803, line: 262, baseType: !4124, size: 64, offset: 832)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4104, file: !803, line: 264, baseType: !78, size: 32, offset: 896)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4104, file: !803, line: 268, baseType: !78, size: 32, offset: 928)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4104, file: !803, line: 270, baseType: !829, size: 64, offset: 960)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4104, file: !803, line: 274, baseType: !152, size: 16, offset: 1024)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4104, file: !803, line: 275, baseType: !834, size: 8, offset: 1040)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4104, file: !803, line: 276, baseType: !836, size: 8, offset: 1048)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4104, file: !803, line: 280, baseType: !840, size: 64, offset: 1088)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4104, file: !803, line: 289, baseType: !843, size: 64, offset: 1152)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4104, file: !803, line: 297, baseType: !31, size: 64, offset: 1216)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4104, file: !803, line: 298, baseType: !31, size: 64, offset: 1280)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4104, file: !803, line: 299, baseType: !31, size: 64, offset: 1344)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4104, file: !803, line: 300, baseType: !31, size: 64, offset: 1408)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4104, file: !803, line: 302, baseType: !32, size: 64, offset: 1472)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4104, file: !803, line: 303, baseType: !78, size: 32, offset: 1536)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4104, file: !803, line: 305, baseType: !851, size: 160, offset: 1568)
!4142 = !{!4143}
!4143 = !DILocalVariable(name: "stream", arg: 1, scope: !4098, file: !4099, line: 127, type: !4102)
!4144 = !DILocation(line: 127, column: 19, scope: !4098)
!4145 = !DILocation(line: 148, column: 14, scope: !4146)
!4146 = distinct !DILexicalBlock(scope: !4098, file: !4099, line: 148, column: 7)
!4147 = !DILocation(line: 148, column: 22, scope: !4146)
!4148 = !DILocation(line: 148, column: 27, scope: !4149)
!4149 = !DILexicalBlockFile(scope: !4146, file: !4099, discriminator: 1)
!4150 = !DILocation(line: 148, column: 7, scope: !4151)
!4151 = !DILexicalBlockFile(scope: !4098, file: !4099, discriminator: 1)
!4152 = !DILocation(line: 149, column: 12, scope: !4146)
!4153 = !DILocation(line: 149, column: 5, scope: !4146)
!4154 = !DILocalVariable(name: "fp", arg: 1, scope: !4155, file: !4099, line: 40, type: !4102)
!4155 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !4099, file: !4099, line: 40, type: !4156, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !586, variables: !4158)
!4156 = !DISubroutineType(types: !4157)
!4157 = !{null, !4102}
!4158 = !{!4154}
!4159 = !DILocation(line: 40, column: 48, scope: !4155, inlinedAt: !4160)
!4160 = distinct !DILocation(line: 153, column: 3, scope: !4098)
!4161 = !DILocation(line: 42, column: 11, scope: !4162, inlinedAt: !4160)
!4162 = distinct !DILexicalBlock(scope: !4155, file: !4099, line: 42, column: 7)
!4163 = !DILocation(line: 42, column: 18, scope: !4162, inlinedAt: !4160)
!4164 = !DILocation(line: 42, column: 7, scope: !4155, inlinedAt: !4160)
!4165 = !DILocation(line: 44, column: 5, scope: !4162, inlinedAt: !4160)
!4166 = !DILocation(line: 155, column: 10, scope: !4098)
!4167 = !DILocation(line: 155, column: 3, scope: !4098)
!4168 = !DILocation(line: 229, column: 1, scope: !4098)
!4169 = distinct !DISubprogram(name: "rpl_fseeko", scope: !4170, file: !4170, line: 28, type: !4171, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !588, variables: !4213)
!4170 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4171 = !DISubroutineType(types: !4172)
!4172 = !{!78, !4173, !1455, !78}
!4173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4174, size: 64)
!4174 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !801, line: 49, baseType: !4175)
!4175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !803, line: 241, size: 1728, elements: !4176)
!4176 = !{!4177, !4178, !4179, !4180, !4181, !4182, !4183, !4184, !4185, !4186, !4187, !4188, !4189, !4197, !4198, !4199, !4200, !4201, !4202, !4203, !4204, !4205, !4206, !4207, !4208, !4209, !4210, !4211, !4212}
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4175, file: !803, line: 242, baseType: !78, size: 32)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4175, file: !803, line: 247, baseType: !29, size: 64, offset: 64)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4175, file: !803, line: 248, baseType: !29, size: 64, offset: 128)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4175, file: !803, line: 249, baseType: !29, size: 64, offset: 192)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4175, file: !803, line: 250, baseType: !29, size: 64, offset: 256)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4175, file: !803, line: 251, baseType: !29, size: 64, offset: 320)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4175, file: !803, line: 252, baseType: !29, size: 64, offset: 384)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4175, file: !803, line: 253, baseType: !29, size: 64, offset: 448)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4175, file: !803, line: 254, baseType: !29, size: 64, offset: 512)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4175, file: !803, line: 256, baseType: !29, size: 64, offset: 576)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4175, file: !803, line: 257, baseType: !29, size: 64, offset: 640)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4175, file: !803, line: 258, baseType: !29, size: 64, offset: 704)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4175, file: !803, line: 260, baseType: !4190, size: 64, offset: 768)
!4190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4191, size: 64)
!4191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !803, line: 156, size: 192, elements: !4192)
!4192 = !{!4193, !4194, !4196}
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4191, file: !803, line: 157, baseType: !4190, size: 64)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4191, file: !803, line: 158, baseType: !4195, size: 64, offset: 64)
!4195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4175, size: 64)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4191, file: !803, line: 162, baseType: !78, size: 32, offset: 128)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4175, file: !803, line: 262, baseType: !4195, size: 64, offset: 832)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4175, file: !803, line: 264, baseType: !78, size: 32, offset: 896)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4175, file: !803, line: 268, baseType: !78, size: 32, offset: 928)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4175, file: !803, line: 270, baseType: !829, size: 64, offset: 960)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4175, file: !803, line: 274, baseType: !152, size: 16, offset: 1024)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4175, file: !803, line: 275, baseType: !834, size: 8, offset: 1040)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4175, file: !803, line: 276, baseType: !836, size: 8, offset: 1048)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4175, file: !803, line: 280, baseType: !840, size: 64, offset: 1088)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4175, file: !803, line: 289, baseType: !843, size: 64, offset: 1152)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4175, file: !803, line: 297, baseType: !31, size: 64, offset: 1216)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4175, file: !803, line: 298, baseType: !31, size: 64, offset: 1280)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4175, file: !803, line: 299, baseType: !31, size: 64, offset: 1344)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4175, file: !803, line: 300, baseType: !31, size: 64, offset: 1408)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4175, file: !803, line: 302, baseType: !32, size: 64, offset: 1472)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4175, file: !803, line: 303, baseType: !78, size: 32, offset: 1536)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4175, file: !803, line: 305, baseType: !851, size: 160, offset: 1568)
!4213 = !{!4214, !4215, !4216, !4217}
!4214 = !DILocalVariable(name: "fp", arg: 1, scope: !4169, file: !4170, line: 28, type: !4173)
!4215 = !DILocalVariable(name: "offset", arg: 2, scope: !4169, file: !4170, line: 28, type: !1455)
!4216 = !DILocalVariable(name: "whence", arg: 3, scope: !4169, file: !4170, line: 28, type: !78)
!4217 = !DILocalVariable(name: "pos", scope: !4218, file: !4170, line: 116, type: !1455)
!4218 = distinct !DILexicalBlock(scope: !4219, file: !4170, line: 112, column: 5)
!4219 = distinct !DILexicalBlock(scope: !4169, file: !4170, line: 51, column: 7)
!4220 = !DILocation(line: 28, column: 15, scope: !4169)
!4221 = !DILocation(line: 28, column: 25, scope: !4169)
!4222 = !DILocation(line: 28, column: 37, scope: !4169)
!4223 = !DILocation(line: 51, column: 11, scope: !4219)
!4224 = !DILocation(line: 51, column: 31, scope: !4219)
!4225 = !DILocation(line: 51, column: 24, scope: !4219)
!4226 = !DILocation(line: 52, column: 7, scope: !4219)
!4227 = !DILocation(line: 52, column: 14, scope: !4228)
!4228 = !DILexicalBlockFile(scope: !4219, file: !4170, discriminator: 1)
!4229 = !DILocation(line: 52, column: 35, scope: !4228)
!4230 = !{!916, !617, i64 32}
!4231 = !DILocation(line: 52, column: 28, scope: !4228)
!4232 = !DILocation(line: 53, column: 7, scope: !4219)
!4233 = !DILocation(line: 53, column: 14, scope: !4228)
!4234 = !{!916, !617, i64 72}
!4235 = !DILocation(line: 53, column: 28, scope: !4228)
!4236 = !DILocation(line: 51, column: 7, scope: !4237)
!4237 = !DILexicalBlockFile(scope: !4169, file: !4170, discriminator: 1)
!4238 = !DILocation(line: 116, column: 26, scope: !4218)
!4239 = !DILocation(line: 116, column: 19, scope: !4240)
!4240 = !DILexicalBlockFile(scope: !4218, file: !4170, discriminator: 1)
!4241 = !DILocation(line: 116, column: 13, scope: !4218)
!4242 = !DILocation(line: 117, column: 15, scope: !4243)
!4243 = distinct !DILexicalBlock(scope: !4218, file: !4170, line: 117, column: 11)
!4244 = !DILocation(line: 117, column: 11, scope: !4218)
!4245 = !DILocation(line: 127, column: 11, scope: !4218)
!4246 = !DILocation(line: 127, column: 18, scope: !4218)
!4247 = !DILocation(line: 128, column: 11, scope: !4218)
!4248 = !DILocation(line: 128, column: 19, scope: !4218)
!4249 = !{!916, !917, i64 144}
!4250 = !DILocation(line: 159, column: 7, scope: !4218)
!4251 = !DILocation(line: 161, column: 10, scope: !4169)
!4252 = !DILocation(line: 161, column: 3, scope: !4169)
!4253 = !DILocation(line: 162, column: 1, scope: !4169)
!4254 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !4255, file: !4255, line: 334, type: !4256, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !590, variables: !4270)
!4255 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4256 = !DISubroutineType(types: !4257)
!4257 = !{!32, !4258, !40, !32, !4259}
!4258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1781, size: 64)
!4259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4260, size: 64)
!4260 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1766, line: 107, baseType: !4261)
!4261 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1766, line: 95, baseType: !4262)
!4262 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1766, line: 83, size: 64, elements: !4263)
!4263 = !{!4264, !4265}
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !4262, file: !1766, line: 85, baseType: !78, size: 32)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !4262, file: !1766, line: 94, baseType: !4266, size: 32, offset: 32)
!4266 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4262, file: !1766, line: 86, size: 32, elements: !4267)
!4267 = !{!4268, !4269}
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !4266, file: !1766, line: 89, baseType: !169, size: 32)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !4266, file: !1766, line: 93, baseType: !1776, size: 32)
!4270 = !{!4271, !4272, !4273, !4274, !4275, !4276, !4277}
!4271 = !DILocalVariable(name: "pwc", arg: 1, scope: !4254, file: !4255, line: 334, type: !4258)
!4272 = !DILocalVariable(name: "s", arg: 2, scope: !4254, file: !4255, line: 334, type: !40)
!4273 = !DILocalVariable(name: "n", arg: 3, scope: !4254, file: !4255, line: 334, type: !32)
!4274 = !DILocalVariable(name: "ps", arg: 4, scope: !4254, file: !4255, line: 334, type: !4259)
!4275 = !DILocalVariable(name: "ret", scope: !4254, file: !4255, line: 336, type: !32)
!4276 = !DILocalVariable(name: "wc", scope: !4254, file: !4255, line: 337, type: !1781)
!4277 = !DILocalVariable(name: "uc", scope: !4278, file: !4255, line: 398, type: !39)
!4278 = distinct !DILexicalBlock(scope: !4279, file: !4255, line: 397, column: 5)
!4279 = distinct !DILexicalBlock(scope: !4254, file: !4255, line: 396, column: 7)
!4280 = !DILocation(line: 334, column: 23, scope: !4254)
!4281 = !DILocation(line: 334, column: 40, scope: !4254)
!4282 = !DILocation(line: 334, column: 50, scope: !4254)
!4283 = !DILocation(line: 334, column: 64, scope: !4254)
!4284 = !DILocation(line: 337, column: 3, scope: !4254)
!4285 = !DILocation(line: 353, column: 9, scope: !4286)
!4286 = distinct !DILexicalBlock(scope: !4254, file: !4255, line: 353, column: 7)
!4287 = !DILocation(line: 353, column: 7, scope: !4254)
!4288 = !DILocation(line: 388, column: 9, scope: !4254)
!4289 = !DILocation(line: 336, column: 10, scope: !4254)
!4290 = !DILocation(line: 396, column: 19, scope: !4279)
!4291 = !DILocation(line: 396, column: 31, scope: !4292)
!4292 = !DILexicalBlockFile(scope: !4279, file: !4255, discriminator: 1)
!4293 = !DILocation(line: 396, column: 26, scope: !4279)
!4294 = !DILocation(line: 396, column: 41, scope: !4295)
!4295 = !DILexicalBlockFile(scope: !4279, file: !4255, discriminator: 2)
!4296 = !DILocation(line: 396, column: 7, scope: !4297)
!4297 = !DILexicalBlockFile(scope: !4254, file: !4255, discriminator: 2)
!4298 = !DILocation(line: 398, column: 26, scope: !4278)
!4299 = !DILocation(line: 398, column: 21, scope: !4278)
!4300 = !DILocation(line: 399, column: 14, scope: !4278)
!4301 = !DILocation(line: 399, column: 12, scope: !4278)
!4302 = !DILocation(line: 405, column: 1, scope: !4254)
!4303 = distinct !DISubprogram(name: "close_stream", scope: !4304, file: !4304, line: 56, type: !4305, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !593, variables: !4347)
!4304 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4305 = !DISubroutineType(types: !4306)
!4306 = !{!78, !4307}
!4307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4308, size: 64)
!4308 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !801, line: 49, baseType: !4309)
!4309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !803, line: 241, size: 1728, elements: !4310)
!4310 = !{!4311, !4312, !4313, !4314, !4315, !4316, !4317, !4318, !4319, !4320, !4321, !4322, !4323, !4331, !4332, !4333, !4334, !4335, !4336, !4337, !4338, !4339, !4340, !4341, !4342, !4343, !4344, !4345, !4346}
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4309, file: !803, line: 242, baseType: !78, size: 32)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4309, file: !803, line: 247, baseType: !29, size: 64, offset: 64)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4309, file: !803, line: 248, baseType: !29, size: 64, offset: 128)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4309, file: !803, line: 249, baseType: !29, size: 64, offset: 192)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4309, file: !803, line: 250, baseType: !29, size: 64, offset: 256)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4309, file: !803, line: 251, baseType: !29, size: 64, offset: 320)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4309, file: !803, line: 252, baseType: !29, size: 64, offset: 384)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4309, file: !803, line: 253, baseType: !29, size: 64, offset: 448)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4309, file: !803, line: 254, baseType: !29, size: 64, offset: 512)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4309, file: !803, line: 256, baseType: !29, size: 64, offset: 576)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4309, file: !803, line: 257, baseType: !29, size: 64, offset: 640)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4309, file: !803, line: 258, baseType: !29, size: 64, offset: 704)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4309, file: !803, line: 260, baseType: !4324, size: 64, offset: 768)
!4324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4325, size: 64)
!4325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !803, line: 156, size: 192, elements: !4326)
!4326 = !{!4327, !4328, !4330}
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4325, file: !803, line: 157, baseType: !4324, size: 64)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4325, file: !803, line: 158, baseType: !4329, size: 64, offset: 64)
!4329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4309, size: 64)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4325, file: !803, line: 162, baseType: !78, size: 32, offset: 128)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4309, file: !803, line: 262, baseType: !4329, size: 64, offset: 832)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4309, file: !803, line: 264, baseType: !78, size: 32, offset: 896)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4309, file: !803, line: 268, baseType: !78, size: 32, offset: 928)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4309, file: !803, line: 270, baseType: !829, size: 64, offset: 960)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4309, file: !803, line: 274, baseType: !152, size: 16, offset: 1024)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4309, file: !803, line: 275, baseType: !834, size: 8, offset: 1040)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4309, file: !803, line: 276, baseType: !836, size: 8, offset: 1048)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4309, file: !803, line: 280, baseType: !840, size: 64, offset: 1088)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4309, file: !803, line: 289, baseType: !843, size: 64, offset: 1152)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4309, file: !803, line: 297, baseType: !31, size: 64, offset: 1216)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4309, file: !803, line: 298, baseType: !31, size: 64, offset: 1280)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4309, file: !803, line: 299, baseType: !31, size: 64, offset: 1344)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4309, file: !803, line: 300, baseType: !31, size: 64, offset: 1408)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4309, file: !803, line: 302, baseType: !32, size: 64, offset: 1472)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4309, file: !803, line: 303, baseType: !78, size: 32, offset: 1536)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4309, file: !803, line: 305, baseType: !851, size: 160, offset: 1568)
!4347 = !{!4348, !4349, !4351, !4352}
!4348 = !DILocalVariable(name: "stream", arg: 1, scope: !4303, file: !4304, line: 56, type: !4307)
!4349 = !DILocalVariable(name: "some_pending", scope: !4303, file: !4304, line: 58, type: !4350)
!4350 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!4351 = !DILocalVariable(name: "prev_fail", scope: !4303, file: !4304, line: 59, type: !4350)
!4352 = !DILocalVariable(name: "fclose_fail", scope: !4303, file: !4304, line: 60, type: !4350)
!4353 = !DILocation(line: 56, column: 21, scope: !4303)
!4354 = !DILocation(line: 58, column: 30, scope: !4303)
!4355 = !DILocalVariable(name: "__stream", arg: 1, scope: !4356, file: !908, line: 132, type: !4307)
!4356 = distinct !DISubprogram(name: "ferror_unlocked", scope: !908, file: !908, line: 132, type: !4305, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !593, variables: !4357)
!4357 = !{!4355}
!4358 = !DILocation(line: 132, column: 1, scope: !4356, inlinedAt: !4359)
!4359 = distinct !DILocation(line: 59, column: 27, scope: !4303)
!4360 = !DILocation(line: 134, column: 10, scope: !4356, inlinedAt: !4359)
!4361 = !DILocation(line: 59, column: 43, scope: !4303)
!4362 = !DILocation(line: 60, column: 29, scope: !4303)
!4363 = !DILocation(line: 60, column: 45, scope: !4303)
!4364 = !DILocation(line: 70, column: 17, scope: !4365)
!4365 = distinct !DILexicalBlock(scope: !4303, file: !4304, line: 70, column: 7)
!4366 = !DILocation(line: 70, column: 33, scope: !4367)
!4367 = !DILexicalBlockFile(scope: !4365, file: !4304, discriminator: 1)
!4368 = !DILocation(line: 70, column: 53, scope: !4369)
!4369 = !DILexicalBlockFile(scope: !4365, file: !4304, discriminator: 3)
!4370 = !DILocation(line: 70, column: 7, scope: !4371)
!4371 = !DILexicalBlockFile(scope: !4303, file: !4304, discriminator: 3)
!4372 = !DILocation(line: 72, column: 11, scope: !4373)
!4373 = distinct !DILexicalBlock(scope: !4365, file: !4304, line: 71, column: 5)
!4374 = !DILocation(line: 73, column: 9, scope: !4375)
!4375 = distinct !DILexicalBlock(scope: !4373, file: !4304, line: 72, column: 11)
!4376 = !DILocation(line: 73, column: 15, scope: !4375)
!4377 = !DILocation(line: 78, column: 1, scope: !4303)
!4378 = distinct !DISubprogram(name: "hard_locale", scope: !4379, file: !4379, line: 38, type: !4380, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !595, variables: !4382)
!4379 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4380 = !DISubroutineType(types: !4381)
!4381 = !{!46, !78}
!4382 = !{!4383, !4384, !4385, !4386, !4393, !4394, !4396, !4397, !4399, !4400, !4402}
!4383 = !DILocalVariable(name: "category", arg: 1, scope: !4378, file: !4379, line: 38, type: !78)
!4384 = !DILocalVariable(name: "hard", scope: !4378, file: !4379, line: 40, type: !46)
!4385 = !DILocalVariable(name: "p", scope: !4378, file: !4379, line: 41, type: !40)
!4386 = !DILocalVariable(name: "__s1_len", scope: !4387, file: !4379, line: 47, type: !32)
!4387 = distinct !DILexicalBlock(scope: !4388, file: !4379, line: 47, column: 15)
!4388 = distinct !DILexicalBlock(scope: !4389, file: !4379, line: 47, column: 15)
!4389 = distinct !DILexicalBlock(scope: !4390, file: !4379, line: 46, column: 9)
!4390 = distinct !DILexicalBlock(scope: !4391, file: !4379, line: 45, column: 11)
!4391 = distinct !DILexicalBlock(scope: !4392, file: !4379, line: 44, column: 5)
!4392 = distinct !DILexicalBlock(scope: !4378, file: !4379, line: 43, column: 7)
!4393 = !DILocalVariable(name: "__s2_len", scope: !4387, file: !4379, line: 47, type: !32)
!4394 = !DILocalVariable(name: "__s2", scope: !4395, file: !4379, line: 47, type: !37)
!4395 = distinct !DILexicalBlock(scope: !4387, file: !4379, line: 47, column: 15)
!4396 = !DILocalVariable(name: "__result", scope: !4395, file: !4379, line: 47, type: !78)
!4397 = !DILocalVariable(name: "__s1_len", scope: !4398, file: !4379, line: 47, type: !32)
!4398 = distinct !DILexicalBlock(scope: !4388, file: !4379, line: 47, column: 39)
!4399 = !DILocalVariable(name: "__s2_len", scope: !4398, file: !4379, line: 47, type: !32)
!4400 = !DILocalVariable(name: "__s2", scope: !4401, file: !4379, line: 47, type: !37)
!4401 = distinct !DILexicalBlock(scope: !4398, file: !4379, line: 47, column: 39)
!4402 = !DILocalVariable(name: "__result", scope: !4401, file: !4379, line: 47, type: !78)
!4403 = !DILocation(line: 38, column: 18, scope: !4378)
!4404 = !DILocation(line: 40, column: 8, scope: !4378)
!4405 = !DILocation(line: 41, column: 19, scope: !4378)
!4406 = !DILocation(line: 41, column: 15, scope: !4378)
!4407 = !DILocation(line: 43, column: 7, scope: !4392)
!4408 = !DILocation(line: 43, column: 7, scope: !4378)
!4409 = !DILocation(line: 47, column: 15, scope: !4387)
!4410 = !DILocation(line: 47, column: 15, scope: !4395)
!4411 = !DILocation(line: 47, column: 15, scope: !4412)
!4412 = !DILexicalBlockFile(scope: !4395, file: !4379, discriminator: 2)
!4413 = !DILocation(line: 47, column: 15, scope: !4414)
!4414 = !DILexicalBlockFile(scope: !4415, file: !4379, discriminator: 3)
!4415 = distinct !DILexicalBlock(scope: !4395, file: !4379, line: 47, column: 15)
!4416 = !DILocation(line: 47, column: 15, scope: !4417)
!4417 = !DILexicalBlockFile(scope: !4415, file: !4379, discriminator: 2)
!4418 = !DILocation(line: 47, column: 15, scope: !4419)
!4419 = !DILexicalBlockFile(scope: !4420, file: !4379, discriminator: 4)
!4420 = distinct !DILexicalBlock(scope: !4415, file: !4379, line: 47, column: 15)
!4421 = !DILocation(line: 47, column: 15, scope: !4422)
!4422 = !DILexicalBlockFile(scope: !4387, file: !4379, discriminator: 11)
!4423 = !DILocation(line: 47, column: 36, scope: !4424)
!4424 = !DILexicalBlockFile(scope: !4388, file: !4379, discriminator: 13)
!4425 = !DILocation(line: 47, column: 39, scope: !4398)
!4426 = !DILocation(line: 47, column: 39, scope: !4427)
!4427 = !DILexicalBlockFile(scope: !4398, file: !4379, discriminator: 26)
!4428 = !DILocation(line: 47, column: 59, scope: !4429)
!4429 = !DILexicalBlockFile(scope: !4388, file: !4379, discriminator: 27)
!4430 = !DILocation(line: 47, column: 15, scope: !4431)
!4431 = !DILexicalBlockFile(scope: !4389, file: !4379, discriminator: 27)
!4432 = !DILocation(line: 48, column: 13, scope: !4388)
!4433 = !DILocation(line: 71, column: 3, scope: !4378)
!4434 = distinct !DISubprogram(name: "locale_charset", scope: !550, file: !550, line: 393, type: !4435, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !207, variables: !4437)
!4435 = !DISubroutineType(types: !4436)
!4436 = !{!40}
!4437 = !{!4438, !4439, !4440, !4445}
!4438 = !DILocalVariable(name: "codeset", scope: !4434, file: !550, line: 395, type: !40)
!4439 = !DILocalVariable(name: "aliases", scope: !4434, file: !550, line: 396, type: !40)
!4440 = !DILocalVariable(name: "__s1_len", scope: !4441, file: !550, line: 592, type: !32)
!4441 = distinct !DILexicalBlock(scope: !4442, file: !550, line: 592, column: 9)
!4442 = distinct !DILexicalBlock(scope: !4443, file: !550, line: 592, column: 9)
!4443 = distinct !DILexicalBlock(scope: !4444, file: !550, line: 589, column: 3)
!4444 = distinct !DILexicalBlock(scope: !4434, file: !550, line: 589, column: 3)
!4445 = !DILocalVariable(name: "__s2_len", scope: !4441, file: !550, line: 592, type: !32)
!4446 = !DILocalVariable(name: "buf1", scope: !4447, file: !550, line: 196, type: !4514)
!4447 = distinct !DILexicalBlock(scope: !4448, file: !550, line: 194, column: 21)
!4448 = distinct !DILexicalBlock(scope: !4449, file: !550, line: 193, column: 19)
!4449 = distinct !DILexicalBlock(scope: !4450, file: !550, line: 193, column: 19)
!4450 = distinct !DILexicalBlock(scope: !4451, file: !550, line: 188, column: 17)
!4451 = distinct !DILexicalBlock(scope: !4452, file: !550, line: 181, column: 19)
!4452 = distinct !DILexicalBlock(scope: !4453, file: !550, line: 177, column: 13)
!4453 = distinct !DILexicalBlock(scope: !4454, file: !550, line: 173, column: 15)
!4454 = distinct !DILexicalBlock(scope: !4455, file: !550, line: 161, column: 9)
!4455 = distinct !DILexicalBlock(scope: !4456, file: !550, line: 157, column: 11)
!4456 = distinct !DILexicalBlock(scope: !4457, file: !550, line: 130, column: 5)
!4457 = distinct !DILexicalBlock(scope: !4458, file: !550, line: 129, column: 7)
!4458 = distinct !DISubprogram(name: "get_charset_aliases", scope: !550, file: !550, line: 124, type: !4435, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !207, variables: !4459)
!4459 = !{!4460, !4461, !4462, !4463, !4464, !4466, !4467, !4468, !4469, !4510, !4511, !4512, !4446, !4513, !4517, !4518, !4519}
!4460 = !DILocalVariable(name: "cp", scope: !4458, file: !550, line: 126, type: !40)
!4461 = !DILocalVariable(name: "dir", scope: !4456, file: !550, line: 132, type: !40)
!4462 = !DILocalVariable(name: "base", scope: !4456, file: !550, line: 133, type: !40)
!4463 = !DILocalVariable(name: "file_name", scope: !4456, file: !550, line: 134, type: !29)
!4464 = !DILocalVariable(name: "dir_len", scope: !4465, file: !550, line: 144, type: !32)
!4465 = distinct !DILexicalBlock(scope: !4456, file: !550, line: 143, column: 7)
!4466 = !DILocalVariable(name: "base_len", scope: !4465, file: !550, line: 145, type: !32)
!4467 = !DILocalVariable(name: "add_slash", scope: !4465, file: !550, line: 146, type: !78)
!4468 = !DILocalVariable(name: "fd", scope: !4454, file: !550, line: 162, type: !78)
!4469 = !DILocalVariable(name: "fp", scope: !4452, file: !550, line: 178, type: !4470)
!4470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4471, size: 64)
!4471 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !801, line: 49, baseType: !4472)
!4472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !803, line: 241, size: 1728, elements: !4473)
!4473 = !{!4474, !4475, !4476, !4477, !4478, !4479, !4480, !4481, !4482, !4483, !4484, !4485, !4486, !4494, !4495, !4496, !4497, !4498, !4499, !4500, !4501, !4502, !4503, !4504, !4505, !4506, !4507, !4508, !4509}
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4472, file: !803, line: 242, baseType: !78, size: 32)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4472, file: !803, line: 247, baseType: !29, size: 64, offset: 64)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4472, file: !803, line: 248, baseType: !29, size: 64, offset: 128)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4472, file: !803, line: 249, baseType: !29, size: 64, offset: 192)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4472, file: !803, line: 250, baseType: !29, size: 64, offset: 256)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4472, file: !803, line: 251, baseType: !29, size: 64, offset: 320)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4472, file: !803, line: 252, baseType: !29, size: 64, offset: 384)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4472, file: !803, line: 253, baseType: !29, size: 64, offset: 448)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4472, file: !803, line: 254, baseType: !29, size: 64, offset: 512)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4472, file: !803, line: 256, baseType: !29, size: 64, offset: 576)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4472, file: !803, line: 257, baseType: !29, size: 64, offset: 640)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4472, file: !803, line: 258, baseType: !29, size: 64, offset: 704)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4472, file: !803, line: 260, baseType: !4487, size: 64, offset: 768)
!4487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4488, size: 64)
!4488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !803, line: 156, size: 192, elements: !4489)
!4489 = !{!4490, !4491, !4493}
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4488, file: !803, line: 157, baseType: !4487, size: 64)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4488, file: !803, line: 158, baseType: !4492, size: 64, offset: 64)
!4492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4472, size: 64)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4488, file: !803, line: 162, baseType: !78, size: 32, offset: 128)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4472, file: !803, line: 262, baseType: !4492, size: 64, offset: 832)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4472, file: !803, line: 264, baseType: !78, size: 32, offset: 896)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4472, file: !803, line: 268, baseType: !78, size: 32, offset: 928)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4472, file: !803, line: 270, baseType: !829, size: 64, offset: 960)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4472, file: !803, line: 274, baseType: !152, size: 16, offset: 1024)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4472, file: !803, line: 275, baseType: !834, size: 8, offset: 1040)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4472, file: !803, line: 276, baseType: !836, size: 8, offset: 1048)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4472, file: !803, line: 280, baseType: !840, size: 64, offset: 1088)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4472, file: !803, line: 289, baseType: !843, size: 64, offset: 1152)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4472, file: !803, line: 297, baseType: !31, size: 64, offset: 1216)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4472, file: !803, line: 298, baseType: !31, size: 64, offset: 1280)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4472, file: !803, line: 299, baseType: !31, size: 64, offset: 1344)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4472, file: !803, line: 300, baseType: !31, size: 64, offset: 1408)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4472, file: !803, line: 302, baseType: !32, size: 64, offset: 1472)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4472, file: !803, line: 303, baseType: !78, size: 32, offset: 1536)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4472, file: !803, line: 305, baseType: !851, size: 160, offset: 1568)
!4510 = !DILocalVariable(name: "res_ptr", scope: !4450, file: !550, line: 190, type: !29)
!4511 = !DILocalVariable(name: "res_size", scope: !4450, file: !550, line: 191, type: !32)
!4512 = !DILocalVariable(name: "c", scope: !4447, file: !550, line: 195, type: !78)
!4513 = !DILocalVariable(name: "buf2", scope: !4447, file: !550, line: 197, type: !4514)
!4514 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 408, elements: !4515)
!4515 = !{!4516}
!4516 = !DISubrange(count: 51)
!4517 = !DILocalVariable(name: "l1", scope: !4447, file: !550, line: 198, type: !32)
!4518 = !DILocalVariable(name: "l2", scope: !4447, file: !550, line: 198, type: !32)
!4519 = !DILocalVariable(name: "old_res_ptr", scope: !4447, file: !550, line: 199, type: !29)
!4520 = !DILocation(line: 196, column: 28, scope: !4447, inlinedAt: !4521)
!4521 = distinct !DILocation(line: 589, column: 18, scope: !4444)
!4522 = !DILocation(line: 197, column: 28, scope: !4447, inlinedAt: !4521)
!4523 = !DILocation(line: 403, column: 13, scope: !4434)
!4524 = !DILocation(line: 395, column: 15, scope: !4434)
!4525 = !DILocation(line: 584, column: 15, scope: !4526)
!4526 = distinct !DILexicalBlock(scope: !4434, file: !550, line: 584, column: 7)
!4527 = !DILocation(line: 584, column: 7, scope: !4434)
!4528 = !DILocation(line: 128, column: 8, scope: !4458, inlinedAt: !4521)
!4529 = !DILocation(line: 126, column: 15, scope: !4458, inlinedAt: !4521)
!4530 = !DILocation(line: 129, column: 10, scope: !4457, inlinedAt: !4521)
!4531 = !DILocation(line: 129, column: 7, scope: !4458, inlinedAt: !4521)
!4532 = !DILocation(line: 138, column: 13, scope: !4456, inlinedAt: !4521)
!4533 = !DILocation(line: 132, column: 19, scope: !4456, inlinedAt: !4521)
!4534 = !DILocation(line: 139, column: 15, scope: !4535, inlinedAt: !4521)
!4535 = distinct !DILexicalBlock(scope: !4456, file: !550, line: 139, column: 11)
!4536 = !DILocation(line: 139, column: 23, scope: !4535, inlinedAt: !4521)
!4537 = !DILocation(line: 139, column: 26, scope: !4538, inlinedAt: !4521)
!4538 = !DILexicalBlockFile(scope: !4535, file: !550, discriminator: 1)
!4539 = !DILocation(line: 139, column: 33, scope: !4538, inlinedAt: !4521)
!4540 = !DILocation(line: 139, column: 11, scope: !4541, inlinedAt: !4521)
!4541 = !DILexicalBlockFile(scope: !4456, file: !550, discriminator: 1)
!4542 = !DILocation(line: 140, column: 9, scope: !4535, inlinedAt: !4521)
!4543 = !DILocation(line: 144, column: 26, scope: !4465, inlinedAt: !4521)
!4544 = !DILocation(line: 144, column: 16, scope: !4465, inlinedAt: !4521)
!4545 = !DILocation(line: 145, column: 16, scope: !4465, inlinedAt: !4521)
!4546 = !DILocation(line: 146, column: 34, scope: !4465, inlinedAt: !4521)
!4547 = !DILocation(line: 146, column: 38, scope: !4465, inlinedAt: !4521)
!4548 = !DILocation(line: 146, column: 42, scope: !4549, inlinedAt: !4521)
!4549 = !DILexicalBlockFile(scope: !4465, file: !550, discriminator: 1)
!4550 = !DILocation(line: 146, column: 41, scope: !4549, inlinedAt: !4521)
!4551 = !DILocation(line: 147, column: 48, scope: !4465, inlinedAt: !4521)
!4552 = !DILocation(line: 147, column: 46, scope: !4465, inlinedAt: !4521)
!4553 = !DILocation(line: 147, column: 69, scope: !4465, inlinedAt: !4521)
!4554 = !DILocation(line: 147, column: 30, scope: !4465, inlinedAt: !4521)
!4555 = !DILocation(line: 134, column: 13, scope: !4456, inlinedAt: !4521)
!4556 = !DILocation(line: 148, column: 13, scope: !4465, inlinedAt: !4521)
!4557 = !DILocation(line: 150, column: 13, scope: !4558, inlinedAt: !4521)
!4558 = distinct !DILexicalBlock(scope: !4559, file: !550, line: 149, column: 11)
!4559 = distinct !DILexicalBlock(scope: !4465, file: !550, line: 148, column: 13)
!4560 = !DILocation(line: 151, column: 17, scope: !4558, inlinedAt: !4521)
!4561 = !DILocation(line: 152, column: 34, scope: !4562, inlinedAt: !4521)
!4562 = distinct !DILexicalBlock(scope: !4558, file: !550, line: 151, column: 17)
!4563 = !DILocation(line: 153, column: 41, scope: !4558, inlinedAt: !4521)
!4564 = !DILocation(line: 153, column: 13, scope: !4558, inlinedAt: !4521)
!4565 = !DILocation(line: 157, column: 11, scope: !4456, inlinedAt: !4521)
!4566 = !DILocation(line: 171, column: 16, scope: !4454, inlinedAt: !4521)
!4567 = !DILocation(line: 162, column: 15, scope: !4454, inlinedAt: !4521)
!4568 = !DILocation(line: 173, column: 18, scope: !4453, inlinedAt: !4521)
!4569 = !DILocation(line: 173, column: 15, scope: !4454, inlinedAt: !4521)
!4570 = !DILocation(line: 180, column: 20, scope: !4452, inlinedAt: !4521)
!4571 = !DILocation(line: 178, column: 21, scope: !4452, inlinedAt: !4521)
!4572 = !DILocation(line: 181, column: 22, scope: !4451, inlinedAt: !4521)
!4573 = !DILocation(line: 181, column: 19, scope: !4452, inlinedAt: !4521)
!4574 = !DILocation(line: 190, column: 25, scope: !4450, inlinedAt: !4521)
!4575 = !DILocation(line: 184, column: 19, scope: !4576, inlinedAt: !4521)
!4576 = distinct !DILexicalBlock(scope: !4451, file: !550, line: 182, column: 17)
!4577 = !DILocation(line: 186, column: 17, scope: !4576, inlinedAt: !4521)
!4578 = !DILocation(line: 191, column: 26, scope: !4450, inlinedAt: !4521)
!4579 = !DILocation(line: 196, column: 23, scope: !4447, inlinedAt: !4521)
!4580 = !DILocation(line: 197, column: 23, scope: !4447, inlinedAt: !4521)
!4581 = !DILocalVariable(name: "__fp", arg: 1, scope: !4582, file: !908, line: 63, type: !4470)
!4582 = distinct !DISubprogram(name: "getc_unlocked", scope: !908, file: !908, line: 63, type: !4583, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !207, variables: !4585)
!4583 = !DISubroutineType(types: !4584)
!4584 = !{!78, !4470}
!4585 = !{!4581}
!4586 = !DILocation(line: 63, column: 22, scope: !4582, inlinedAt: !4587)
!4587 = distinct !DILocation(line: 201, column: 27, scope: !4447, inlinedAt: !4521)
!4588 = !DILocation(line: 65, column: 10, scope: !4582, inlinedAt: !4587)
!4589 = !DILocation(line: 65, column: 10, scope: !4590, inlinedAt: !4587)
!4590 = !DILexicalBlockFile(scope: !4582, file: !908, discriminator: 1)
!4591 = !DILocation(line: 65, column: 10, scope: !4592, inlinedAt: !4587)
!4592 = !DILexicalBlockFile(scope: !4582, file: !908, discriminator: 2)
!4593 = !DILocation(line: 65, column: 10, scope: !4594, inlinedAt: !4587)
!4594 = !DILexicalBlockFile(scope: !4582, file: !908, discriminator: 3)
!4595 = !DILocation(line: 195, column: 27, scope: !4447, inlinedAt: !4521)
!4596 = !DILocation(line: 202, column: 27, scope: !4447, inlinedAt: !4521)
!4597 = !DILocation(line: 63, column: 22, scope: !4582, inlinedAt: !4598)
!4598 = distinct !DILocation(line: 210, column: 33, scope: !4599, inlinedAt: !4521)
!4599 = distinct !DILexicalBlock(scope: !4600, file: !550, line: 207, column: 25)
!4600 = distinct !DILexicalBlock(scope: !4447, file: !550, line: 206, column: 27)
!4601 = !DILocation(line: 65, column: 10, scope: !4582, inlinedAt: !4598)
!4602 = !DILocation(line: 65, column: 10, scope: !4590, inlinedAt: !4598)
!4603 = !DILocation(line: 65, column: 10, scope: !4592, inlinedAt: !4598)
!4604 = !DILocation(line: 65, column: 10, scope: !4594, inlinedAt: !4598)
!4605 = !DILocation(line: 210, column: 29, scope: !4606, inlinedAt: !4521)
!4606 = !DILexicalBlockFile(scope: !4599, file: !550, discriminator: 1)
!4607 = distinct !{!4607, !4608, !4609}
!4608 = !DILocation(line: 193, column: 19, scope: !4449)
!4609 = !DILocation(line: 241, column: 21, scope: !4449)
!4610 = !DILocation(line: 216, column: 23, scope: !4447, inlinedAt: !4521)
!4611 = !DILocation(line: 217, column: 27, scope: !4612, inlinedAt: !4521)
!4612 = distinct !DILexicalBlock(scope: !4447, file: !550, line: 217, column: 27)
!4613 = !DILocation(line: 217, column: 64, scope: !4612, inlinedAt: !4521)
!4614 = !DILocation(line: 217, column: 27, scope: !4447, inlinedAt: !4521)
!4615 = !DILocation(line: 219, column: 28, scope: !4447, inlinedAt: !4521)
!4616 = !DILocation(line: 198, column: 30, scope: !4447, inlinedAt: !4521)
!4617 = !DILocation(line: 220, column: 28, scope: !4447, inlinedAt: !4521)
!4618 = !DILocation(line: 198, column: 34, scope: !4447, inlinedAt: !4521)
!4619 = !DILocation(line: 199, column: 29, scope: !4447, inlinedAt: !4521)
!4620 = !DILocation(line: 222, column: 36, scope: !4621, inlinedAt: !4521)
!4621 = distinct !DILexicalBlock(scope: !4447, file: !550, line: 222, column: 27)
!4622 = !DILocation(line: 222, column: 27, scope: !4447, inlinedAt: !4521)
!4623 = !DILocation(line: 225, column: 63, scope: !4624, inlinedAt: !4521)
!4624 = distinct !DILexicalBlock(scope: !4621, file: !550, line: 223, column: 25)
!4625 = !DILocation(line: 225, column: 46, scope: !4624, inlinedAt: !4521)
!4626 = !DILocation(line: 226, column: 25, scope: !4624, inlinedAt: !4521)
!4627 = !DILocation(line: 229, column: 36, scope: !4628, inlinedAt: !4521)
!4628 = distinct !DILexicalBlock(scope: !4621, file: !550, line: 228, column: 25)
!4629 = !DILocation(line: 230, column: 73, scope: !4628, inlinedAt: !4521)
!4630 = !DILocation(line: 230, column: 46, scope: !4628, inlinedAt: !4521)
!4631 = !DILocation(line: 232, column: 35, scope: !4632, inlinedAt: !4521)
!4632 = distinct !DILexicalBlock(scope: !4447, file: !550, line: 232, column: 27)
!4633 = !DILocation(line: 232, column: 27, scope: !4447, inlinedAt: !4521)
!4634 = !DILocation(line: 236, column: 27, scope: !4635, inlinedAt: !4521)
!4635 = distinct !DILexicalBlock(scope: !4632, file: !550, line: 233, column: 25)
!4636 = !DILocation(line: 237, column: 27, scope: !4635, inlinedAt: !4521)
!4637 = !DILocation(line: 239, column: 39, scope: !4447, inlinedAt: !4521)
!4638 = !DILocation(line: 239, column: 50, scope: !4447, inlinedAt: !4521)
!4639 = !DILocation(line: 239, column: 61, scope: !4447, inlinedAt: !4521)
!4640 = !DILocalVariable(name: "__dest", arg: 1, scope: !4641, file: !4642, line: 107, type: !4645)
!4641 = distinct !DISubprogram(name: "strcpy", scope: !4642, file: !4642, line: 107, type: !4643, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !207, variables: !4647)
!4642 = !DIFile(filename: "/usr/include/bits/string3.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4643 = !DISubroutineType(types: !4644)
!4644 = !{!29, !4645, !4646}
!4645 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !29)
!4646 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !40)
!4647 = !{!4640, !4648}
!4648 = !DILocalVariable(name: "__src", arg: 2, scope: !4641, file: !4642, line: 107, type: !4646)
!4649 = !DILocation(line: 107, column: 1, scope: !4641, inlinedAt: !4650)
!4650 = distinct !DILocation(line: 239, column: 23, scope: !4447, inlinedAt: !4521)
!4651 = !DILocation(line: 109, column: 49, scope: !4641, inlinedAt: !4650)
!4652 = !DILocation(line: 109, column: 10, scope: !4641, inlinedAt: !4650)
!4653 = !DILocation(line: 107, column: 1, scope: !4641, inlinedAt: !4654)
!4654 = distinct !DILocation(line: 240, column: 23, scope: !4447, inlinedAt: !4521)
!4655 = !DILocation(line: 109, column: 49, scope: !4641, inlinedAt: !4654)
!4656 = !DILocation(line: 109, column: 10, scope: !4641, inlinedAt: !4654)
!4657 = !DILocation(line: 241, column: 21, scope: !4448, inlinedAt: !4521)
!4658 = !DILocation(line: 242, column: 19, scope: !4450, inlinedAt: !4521)
!4659 = !DILocation(line: 243, column: 32, scope: !4660, inlinedAt: !4521)
!4660 = distinct !DILexicalBlock(scope: !4450, file: !550, line: 243, column: 23)
!4661 = !DILocation(line: 243, column: 23, scope: !4450, inlinedAt: !4521)
!4662 = !DILocation(line: 247, column: 33, scope: !4663, inlinedAt: !4521)
!4663 = distinct !DILexicalBlock(scope: !4660, file: !550, line: 246, column: 21)
!4664 = !DILocation(line: 247, column: 45, scope: !4663, inlinedAt: !4521)
!4665 = !DILocation(line: 253, column: 11, scope: !4454, inlinedAt: !4521)
!4666 = !DILocation(line: 377, column: 23, scope: !4456, inlinedAt: !4521)
!4667 = !DILocation(line: 378, column: 5, scope: !4456, inlinedAt: !4521)
!4668 = !DILocation(line: 396, column: 15, scope: !4434)
!4669 = !DILocation(line: 590, column: 8, scope: !4443)
!4670 = !DILocation(line: 590, column: 17, scope: !4443)
!4671 = !DILocation(line: 589, column: 3, scope: !4672)
!4672 = !DILexicalBlockFile(scope: !4444, file: !550, discriminator: 1)
!4673 = !DILocation(line: 592, column: 9, scope: !4441)
!4674 = !DILocation(line: 592, column: 35, scope: !4442)
!4675 = !DILocation(line: 593, column: 9, scope: !4442)
!4676 = !DILocation(line: 593, column: 24, scope: !4677)
!4677 = !DILexicalBlockFile(scope: !4442, file: !550, discriminator: 1)
!4678 = !DILocation(line: 593, column: 31, scope: !4677)
!4679 = !DILocation(line: 593, column: 34, scope: !4680)
!4680 = !DILexicalBlockFile(scope: !4442, file: !550, discriminator: 2)
!4681 = !DILocation(line: 593, column: 45, scope: !4680)
!4682 = !DILocation(line: 592, column: 9, scope: !4683)
!4683 = !DILexicalBlockFile(scope: !4443, file: !550, discriminator: 1)
!4684 = !DILocation(line: 595, column: 29, scope: !4685)
!4685 = distinct !DILexicalBlock(scope: !4442, file: !550, line: 594, column: 7)
!4686 = !DILocation(line: 595, column: 27, scope: !4685)
!4687 = !DILocation(line: 595, column: 46, scope: !4685)
!4688 = !DILocation(line: 596, column: 9, scope: !4685)
!4689 = !DILocation(line: 591, column: 19, scope: !4443)
!4690 = !DILocation(line: 591, column: 36, scope: !4443)
!4691 = !DILocation(line: 591, column: 16, scope: !4443)
!4692 = !DILocation(line: 591, column: 52, scope: !4683)
!4693 = !DILocation(line: 591, column: 69, scope: !4443)
!4694 = !DILocation(line: 591, column: 49, scope: !4443)
!4695 = distinct !{!4695, !4696, !4697}
!4696 = !DILocation(line: 589, column: 3, scope: !4444)
!4697 = !DILocation(line: 597, column: 7, scope: !4444)
!4698 = !DILocation(line: 602, column: 7, scope: !4699)
!4699 = distinct !DILexicalBlock(scope: !4434, file: !550, line: 602, column: 7)
!4700 = !DILocation(line: 602, column: 18, scope: !4699)
!4701 = !DILocation(line: 602, column: 7, scope: !4434)
!4702 = !DILocation(line: 612, column: 3, scope: !4434)
