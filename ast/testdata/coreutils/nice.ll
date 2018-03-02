; ModuleID = 'coreutils-8.27/src/nice.bc'
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
@.str.1 = private unnamed_addr constant [39 x i8] c"Usage: %s [OPTION] [COMMAND [ARG]...]\0A\00", align 1
@.str.2 = private unnamed_addr constant [222 x i8] c"Run COMMAND with an adjusted niceness, which affects process scheduling.\0AWith no COMMAND, print the current niceness.  Niceness values range from\0A%d (most favorable to the process) to %d (least favorable to the process).\0A\00", align 1
@.str.20 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [67 x i8] c"  -n, --adjustment=N   add integer N to the niceness (default 10)\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [191 x i8] c"\0ANOTE: your shell may have its own version of %s, which usually supersedes\0Athe version described here.  Please refer to your shell's documentation\0Afor details about the options it supports.\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"nice\00", align 1
@.str.29 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.30 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.32 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.33 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.34 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.11 = private unnamed_addr constant [4 x i8] c"+n:\00", align 1
@longopts = internal constant [4 x %struct.option] [%struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.36, i32 0, i32 0), i32 1, i32* null, i32 110 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.38, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !0
@optarg = external local_unnamed_addr global i8*, align 8
@.str.13 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"invalid adjustment %s\00", align 1
@.str.15 = private unnamed_addr constant [43 x i8] c"a command must be given with an adjustment\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"cannot get niceness\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"cannot set niceness\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c"adjustment\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0), align 8, !dbg !115
@.str.21 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !121
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !126
@.str.24 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.25 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.26 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !129
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !136
@.str.39 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.40 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.41 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.43, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.44, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.45, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.46, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.47, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.48, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.49, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.50, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.51, i32 0, i32 0), i8* null], align 16, !dbg !143
@.str.42 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.43 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.44 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.45 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.46 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.47 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.48 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.49 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.50 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.51 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !185
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !192
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !204
@.str.11.52 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.53 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.54 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.55 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.56 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.57 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.58 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !211
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !218
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !206
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !220
@.str.63 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.64 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.65 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.66 = private unnamed_addr constant [203 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.67 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.68 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.69 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.70 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.71 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.72 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.73 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.74 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.75 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.76 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.79 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.80 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.81 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.82 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.83 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19.84 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !226
@.str.1.95 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.96 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.99 = private unnamed_addr constant [38 x i8] c"0 <= strtol_base && strtol_base <= 36\00", align 1
@.str.1.100 = private unnamed_addr constant [14 x i8] c"lib/xstrtol.c\00", align 1
@__PRETTY_FUNCTION__.xstrtol = private unnamed_addr constant [71 x i8] c"strtol_error xstrtol(const char *, char **, int, long *, const char *)\00", align 1
@.str.1.109 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.112 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !235
@.str.3.113 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.114 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.115 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.116 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.117 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.118 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) local_unnamed_addr #0 !dbg !635 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !639, metadata !640), !dbg !641
  %2 = icmp eq i32 %0, 0, !dbg !642
  br i1 %2, label %8, label %3, !dbg !644

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !645, !tbaa !648
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #10, !dbg !645
  %6 = load i8*, i8** @program_name, align 8, !dbg !645, !tbaa !648
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #10, !dbg !652
  br label %43, !dbg !654

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 5) #10, !dbg !656
  %10 = load i8*, i8** @program_name, align 8, !dbg !656, !tbaa !648
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10) #10, !dbg !658
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([222 x i8], [222 x i8]* @.str.2, i64 0, i64 0), i32 5) #10, !dbg !660
  %13 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %12, i32 -20, i32 19) #10, !dbg !661
  %14 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.20, i64 0, i64 0), i32 5) #10, !dbg !662
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !662, !tbaa !648
  %16 = tail call i32 @fputs_unlocked(i8* %14, %struct._IO_FILE* %15) #10, !dbg !667
  %17 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.3, i64 0, i64 0), i32 5) #10, !dbg !669
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !669, !tbaa !648
  %19 = tail call i32 @fputs_unlocked(i8* %17, %struct._IO_FILE* %18) #10, !dbg !670
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 5) #10, !dbg !671
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !671, !tbaa !648
  %22 = tail call i32 @fputs_unlocked(i8* %20, %struct._IO_FILE* %21) #10, !dbg !672
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 5) #10, !dbg !673
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !673, !tbaa !648
  %25 = tail call i32 @fputs_unlocked(i8* %23, %struct._IO_FILE* %24) #10, !dbg !674
  %26 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([191 x i8], [191 x i8]* @.str.6, i64 0, i64 0), i32 5) #10, !dbg !675
  %27 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0)) #10, !dbg !676
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !81, metadata !640) #10, !dbg !677
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 0, metadata !81, metadata !640) #10, !dbg !677
  %28 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.29, i64 0, i64 0), i32 5) #10, !dbg !679
  %29 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %28, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.30, i64 0, i64 0)) #10, !dbg !680
  %30 = tail call i8* @setlocale(i32 5, i8* null) #10, !dbg !682
  tail call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !92, metadata !640) #10, !dbg !683
  %31 = icmp eq i8* %30, null, !dbg !684
  br i1 %31, label %38, label %32, !dbg !685

; <label>:32:                                     ; preds = %8
  %33 = tail call i32 @strncmp(i8* nonnull %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i64 0, i64 0), i64 3) #13, !dbg !686
  %34 = icmp eq i32 %33, 0, !dbg !686
  br i1 %34, label %38, label %35, !dbg !688

; <label>:35:                                     ; preds = %32
  %36 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.32, i64 0, i64 0), i32 5) #10, !dbg !690
  %37 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0)) #10, !dbg !692
  br label %38, !dbg !694

; <label>:38:                                     ; preds = %8, %32, %35
  %39 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.33, i64 0, i64 0), i32 5) #10, !dbg !695
  %40 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %39, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0)) #10, !dbg !696
  %41 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.34, i64 0, i64 0), i32 5) #10, !dbg !697
  %42 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.35, i64 0, i64 0)) #10, !dbg !698
  br label %43

; <label>:43:                                     ; preds = %38, %3
  tail call void @exit(i32 %0) #14, !dbg !699
  unreachable, !dbg !699
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
define i32 @main(i32, i8**) local_unnamed_addr #6 !dbg !21 {
  %3 = alloca i64, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !29, metadata !640), !dbg !700
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !30, metadata !640), !dbg !701
  tail call void @llvm.dbg.value(metadata i32 10, i64 0, metadata !32, metadata !640), !dbg !702
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !33, metadata !640), !dbg !703
  %4 = load i8*, i8** %1, align 8, !dbg !704, !tbaa !648
  tail call void @set_program_name(i8* %4) #10, !dbg !705
  %5 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)) #10, !dbg !706
  %6 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0)) #10, !dbg !707
  %7 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0)) #10, !dbg !708
  tail call void @llvm.dbg.value(metadata i32 125, i64 0, metadata !709, metadata !640), !dbg !712
  store volatile i32 125, i32* @exit_failure, align 4, !dbg !714, !tbaa !716
  %8 = tail call i32 @atexit(void ()* nonnull @close_stdout) #10, !dbg !718
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !38, metadata !640), !dbg !719
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !33, metadata !640), !dbg !703
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !38, metadata !640), !dbg !719
  %9 = icmp sgt i32 %0, 1, !dbg !720
  br i1 %9, label %10, label %73, !dbg !722

; <label>:10:                                     ; preds = %2
  %11 = bitcast i8** %1 to i64*
  br label %12, !dbg !722

; <label>:12:                                     ; preds = %10, %46
  %13 = phi i8* [ null, %10 ], [ %48, %46 ]
  %14 = phi i32 [ 1, %10 ], [ %47, %46 ]
  %15 = sext i32 %14 to i64, !dbg !724
  %16 = getelementptr inbounds i8*, i8** %1, i64 %15, !dbg !724
  %17 = load i8*, i8** %16, align 8, !dbg !724, !tbaa !648
  tail call void @llvm.dbg.value(metadata i8* %17, i64 0, metadata !39, metadata !640), !dbg !725
  %18 = load i8, i8* %17, align 1, !dbg !726, !tbaa !727
  %19 = icmp eq i8 %18, 45, !dbg !728
  br i1 %19, label %20, label %34, !dbg !729

; <label>:20:                                     ; preds = %12
  %21 = getelementptr inbounds i8, i8* %17, i64 1, !dbg !730
  %22 = load i8, i8* %21, align 1, !dbg !730, !tbaa !727
  %23 = icmp eq i8 %22, 45, !dbg !730
  %24 = icmp eq i8 %22, 43, !dbg !732
  %25 = or i1 %23, %24, !dbg !730
  %26 = select i1 %25, i64 2, i64 1, !dbg !734
  %27 = getelementptr inbounds i8, i8* %17, i64 %26, !dbg !734
  %28 = load i8, i8* %27, align 1, !dbg !734, !tbaa !727
  %29 = sext i8 %28 to i32, !dbg !734
  %30 = add nsw i32 %29, -48, !dbg !734
  %31 = icmp ult i32 %30, 10, !dbg !734
  br i1 %31, label %32, label %34, !dbg !736

; <label>:32:                                     ; preds = %20
  tail call void @llvm.dbg.value(metadata i8* %21, i64 0, metadata !33, metadata !640), !dbg !703
  %33 = add nsw i32 %14, 1, !dbg !738
  tail call void @llvm.dbg.value(metadata i32 %33, i64 0, metadata !38, metadata !640), !dbg !719
  br label %46, !dbg !740

; <label>:34:                                     ; preds = %20, %12
  %35 = add i32 %14, -1, !dbg !741
  %36 = sub nsw i32 %0, %35, !dbg !742
  tail call void @llvm.dbg.value(metadata i32 %36, i64 0, metadata !46, metadata !640), !dbg !743
  %37 = sext i32 %35 to i64, !dbg !744
  %38 = getelementptr inbounds i8*, i8** %1, i64 %37, !dbg !744
  tail call void @llvm.dbg.value(metadata i8** %38, i64 0, metadata !47, metadata !640), !dbg !745
  %39 = load i64, i64* %11, align 8, !dbg !746, !tbaa !648
  %40 = bitcast i8** %38 to i64*, !dbg !747
  store i64 %39, i64* %40, align 8, !dbg !747, !tbaa !648
  store i32 0, i32* @optind, align 4, !dbg !748, !tbaa !716
  %41 = tail call i32 @getopt_long(i32 %36, i8** %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), %struct.option* getelementptr inbounds ([4 x %struct.option], [4 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #10, !dbg !749
  tail call void @llvm.dbg.value(metadata i32 %41, i64 0, metadata !43, metadata !640), !dbg !750
  %42 = load i32, i32* @optind, align 4, !dbg !751, !tbaa !716
  %43 = add i32 %35, %42, !dbg !752
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !38, metadata !640), !dbg !719
  switch i32 %41, label %54 [
    i32 110, label %44
    i32 -1, label %55
    i32 -130, label %50
    i32 -131, label %51
  ], !dbg !753

; <label>:44:                                     ; preds = %34
  %45 = load i8*, i8** @optarg, align 8, !dbg !754, !tbaa !648
  tail call void @llvm.dbg.value(metadata i8* %45, i64 0, metadata !33, metadata !640), !dbg !703
  br label %46

; <label>:46:                                     ; preds = %44, %32
  %47 = phi i32 [ %43, %44 ], [ %33, %32 ]
  %48 = phi i8* [ %45, %44 ], [ %21, %32 ]
  tail call void @llvm.dbg.value(metadata i8* %48, i64 0, metadata !33, metadata !640), !dbg !703
  tail call void @llvm.dbg.value(metadata i32 %47, i64 0, metadata !38, metadata !640), !dbg !719
  %49 = icmp slt i32 %47, %0, !dbg !720
  br i1 %49, label %12, label %55, !dbg !722

; <label>:50:                                     ; preds = %34
  tail call void @usage(i32 0) #15, !dbg !756
  unreachable, !dbg !756

; <label>:51:                                     ; preds = %34
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !757, !tbaa !648
  %53 = load i8*, i8** @Version, align 8, !dbg !757, !tbaa !648
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* %53, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i8* null) #10, !dbg !757
  tail call void @exit(i32 0) #14, !dbg !758
  unreachable, !dbg !757

; <label>:54:                                     ; preds = %34
  tail call void @usage(i32 125) #15, !dbg !760
  unreachable, !dbg !760

; <label>:55:                                     ; preds = %46, %34
  %56 = phi i8* [ %48, %46 ], [ %13, %34 ]
  %57 = phi i32 [ %47, %46 ], [ %43, %34 ]
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !33, metadata !640), !dbg !703
  tail call void @llvm.dbg.value(metadata i32 %57, i64 0, metadata !38, metadata !640), !dbg !719
  %58 = icmp eq i8* %56, null, !dbg !761
  br i1 %58, label %73, label %59, !dbg !762

; <label>:59:                                     ; preds = %55
  %60 = bitcast i64* %3 to i8*, !dbg !763
  call void @llvm.lifetime.start(i64 8, i8* nonnull %60) #10, !dbg !763
  tail call void @llvm.dbg.value(metadata i64* %3, i64 0, metadata !48, metadata !764), !dbg !765
  %61 = call i32 @xstrtol(i8* nonnull %56, i8** null, i32 10, i64* nonnull %3, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)) #10, !dbg !766
  %62 = icmp ugt i32 %61, 1, !dbg !768
  br i1 %62, label %63, label %66, !dbg !769

; <label>:63:                                     ; preds = %59
  %64 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0), i32 5) #10, !dbg !770
  %65 = call i8* @quote(i8* nonnull %56) #10, !dbg !771
  call void (i32, i32, i8*, ...) @error(i32 125, i32 0, i8* %64, i8* %65) #10, !dbg !773
  unreachable, !dbg !770

; <label>:66:                                     ; preds = %59
  %67 = load i64, i64* %3, align 8, !dbg !775, !tbaa !776
  call void @llvm.dbg.value(metadata i64 %67, i64 0, metadata !48, metadata !640), !dbg !765
  %68 = icmp slt i64 %67, 39, !dbg !775
  %69 = select i1 %68, i64 %67, i64 39, !dbg !775
  %70 = icmp sgt i64 %69, -39, !dbg !778
  %71 = select i1 %70, i64 %69, i64 -39, !dbg !778
  %72 = trunc i64 %71 to i32, !dbg !778
  call void @llvm.dbg.value(metadata i32 %72, i64 0, metadata !32, metadata !640), !dbg !702
  call void @llvm.lifetime.end(i64 8, i8* nonnull %60) #10, !dbg !780
  br label %73, !dbg !781

; <label>:73:                                     ; preds = %55, %2, %66
  %74 = phi i1 [ true, %66 ], [ false, %55 ], [ false, %2 ]
  %75 = phi i32 [ %57, %66 ], [ %57, %55 ], [ 1, %2 ]
  %76 = phi i32 [ %72, %66 ], [ 10, %55 ], [ 10, %2 ]
  call void @llvm.dbg.value(metadata i32 %76, i64 0, metadata !32, metadata !640), !dbg !702
  %77 = icmp eq i32 %75, %0, !dbg !782
  br i1 %77, label %78, label %92, !dbg !784

; <label>:78:                                     ; preds = %73
  br i1 %74, label %79, label %81, !dbg !785

; <label>:79:                                     ; preds = %78
  %80 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.15, i64 0, i64 0), i32 5) #10, !dbg !787
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %80) #10, !dbg !790
  call void @usage(i32 125) #15, !dbg !792
  unreachable, !dbg !792

; <label>:81:                                     ; preds = %78
  %82 = tail call i32* @__errno_location() #1, !dbg !793
  store i32 0, i32* %82, align 4, !dbg !794, !tbaa !716
  %83 = call i32 @getpriority(i32 0, i32 0) #10, !dbg !795
  call void @llvm.dbg.value(metadata i32 %83, i64 0, metadata !31, metadata !640), !dbg !796
  %84 = icmp eq i32 %83, -1, !dbg !797
  br i1 %84, label %85, label %90, !dbg !799

; <label>:85:                                     ; preds = %81
  %86 = load i32, i32* %82, align 4, !dbg !800, !tbaa !716
  %87 = icmp eq i32 %86, 0, !dbg !802
  br i1 %87, label %90, label %88, !dbg !803

; <label>:88:                                     ; preds = %85
  %89 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0), i32 5) #10, !dbg !805
  call void (i32, i32, i8*, ...) @error(i32 125, i32 %86, i8* %89) #10, !dbg !806
  unreachable, !dbg !808

; <label>:90:                                     ; preds = %85, %81
  %91 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i32 %83) #10, !dbg !809
  br label %127, !dbg !810

; <label>:92:                                     ; preds = %73
  %93 = tail call i32* @__errno_location() #1, !dbg !811
  store i32 0, i32* %93, align 4, !dbg !812, !tbaa !716
  %94 = call i32 @getpriority(i32 0, i32 0) #10, !dbg !813
  call void @llvm.dbg.value(metadata i32 %94, i64 0, metadata !31, metadata !640), !dbg !796
  %95 = icmp eq i32 %94, -1, !dbg !814
  br i1 %95, label %96, label %101, !dbg !816

; <label>:96:                                     ; preds = %92
  %97 = load i32, i32* %93, align 4, !dbg !817, !tbaa !716
  %98 = icmp eq i32 %97, 0, !dbg !819
  br i1 %98, label %101, label %99, !dbg !820

; <label>:99:                                     ; preds = %96
  %100 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0), i32 5) #10, !dbg !822
  call void (i32, i32, i8*, ...) @error(i32 125, i32 %97, i8* %100) #10, !dbg !823
  unreachable, !dbg !825

; <label>:101:                                    ; preds = %96, %92
  %102 = add nsw i32 %94, %76, !dbg !826
  %103 = call i32 @setpriority(i32 0, i32 0, i32 %102) #10, !dbg !827
  %104 = icmp eq i32 %103, 0, !dbg !828
  br i1 %104, label %117, label %105, !dbg !829

; <label>:105:                                    ; preds = %101
  %106 = load i32, i32* %93, align 4, !dbg !830, !tbaa !716
  tail call void @llvm.dbg.value(metadata i32 %106, i64 0, metadata !833, metadata !640), !dbg !838
  %107 = icmp eq i32 %106, 13, !dbg !841
  %108 = icmp eq i32 %106, 1, !dbg !842
  %109 = or i1 %107, %108, !dbg !844
  %110 = select i1 %109, i32 0, i32 125, !dbg !845
  %111 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i64 0, i64 0), i32 5) #10, !dbg !846
  call void (i32, i32, i8*, ...) @error(i32 %110, i32 %106, i8* %111) #10, !dbg !847
  %112 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !849, !tbaa !648
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %112, i64 0, metadata !851, metadata !640), !dbg !911
  %113 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %112, i64 0, i32 0, !dbg !913
  %114 = load i32, i32* %113, align 8, !dbg !913, !tbaa !914
  %115 = and i32 %114, 32, !dbg !913
  %116 = icmp eq i32 %115, 0, !dbg !849
  br i1 %116, label %117, label %127, !dbg !917

; <label>:117:                                    ; preds = %105, %101
  %118 = sext i32 %75 to i64, !dbg !918
  %119 = getelementptr inbounds i8*, i8** %1, i64 %118, !dbg !918
  %120 = load i8*, i8** %119, align 8, !dbg !918, !tbaa !648
  %121 = call i32 @execvp(i8* %120, i8** %119) #10, !dbg !919
  %122 = load i32, i32* %93, align 4, !dbg !920, !tbaa !716
  %123 = icmp eq i32 %122, 2, !dbg !921
  %124 = select i1 %123, i32 127, i32 126, !dbg !920
  call void @llvm.dbg.value(metadata i32 %124, i64 0, metadata !52, metadata !640), !dbg !922
  %125 = load i8*, i8** %119, align 8, !dbg !923, !tbaa !648
  %126 = call i8* @quote(i8* %125) #10, !dbg !924
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %122, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), i8* %126) #10, !dbg !925
  br label %127

; <label>:127:                                    ; preds = %105, %117, %90
  %128 = phi i32 [ 0, %90 ], [ %124, %117 ], [ 125, %105 ]
  ret i32 %128, !dbg !927
}

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #7

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #7

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @getpriority(i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @setpriority(i32, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @execvp(i8*, i8**) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !928 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !930, metadata !640), !dbg !931
  store i8* %0, i8** @file_name, align 8, !dbg !932, !tbaa !648
  ret void, !dbg !933
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !934 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !938, metadata !939), !dbg !940
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !941, !tbaa !942
  ret void, !dbg !944
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !945 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !950, !tbaa !648
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #10, !dbg !951
  %3 = icmp eq i32 %2, 0, !dbg !952
  br i1 %3, label %21, label %4, !dbg !953

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !954, !tbaa !942, !range !956
  %6 = icmp eq i8 %5, 0, !dbg !954
  %7 = tail call i32* @__errno_location() #1, !dbg !957
  br i1 %6, label %11, label %8, !dbg !959

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !960, !tbaa !716
  %10 = icmp eq i32 %9, 32, !dbg !962
  br i1 %10, label %21, label %11, !dbg !963

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i64 0, i64 0), i32 5) #10, !dbg !965
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !947, metadata !640), !dbg !966
  %13 = load i8*, i8** @file_name, align 8, !dbg !967, !tbaa !648
  %14 = icmp eq i8* %13, null, !dbg !967
  %15 = load i32, i32* %7, align 4, !tbaa !716
  br i1 %14, label %18, label %16, !dbg !968

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #10, !dbg !969
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.25, i64 0, i64 0), i8* %17, i8* %12) #10, !dbg !971
  br label %19, !dbg !973

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.26, i64 0, i64 0), i8* %12) #10, !dbg !974
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !975, !tbaa !716
  tail call void @_exit(i32 %20) #14, !dbg !976
  unreachable, !dbg !976

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !977, !tbaa !648
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #10, !dbg !979
  %24 = icmp eq i32 %23, 0, !dbg !980
  br i1 %24, label %27, label %25, !dbg !981

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !982, !tbaa !716
  tail call void @_exit(i32 %26) #14, !dbg !983
  unreachable, !dbg !983

; <label>:27:                                     ; preds = %21
  ret void, !dbg !984
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !985 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !987, metadata !640), !dbg !990
  %2 = icmp eq i8* %0, null, !dbg !991
  br i1 %2, label %3, label %6, !dbg !993

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !994, !tbaa !648
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.39, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #16, !dbg !996
  tail call void @abort() #14, !dbg !997
  unreachable, !dbg !997

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #13, !dbg !998
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !988, metadata !640), !dbg !999
  %8 = icmp ne i8* %7, null, !dbg !1000
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1001
  %10 = select i1 %8, i8* %9, i8* %0, !dbg !1003
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !989, metadata !640), !dbg !1004
  %11 = ptrtoint i8* %10 to i64, !dbg !1005
  %12 = ptrtoint i8* %0 to i64, !dbg !1005
  %13 = sub i64 %11, %12, !dbg !1005
  %14 = icmp sgt i64 %13, 6, !dbg !1007
  br i1 %14, label %15, label %24, !dbg !1008

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1009
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.40, i64 0, i64 0), i64 7) #13, !dbg !1009
  %18 = icmp eq i32 %17, 0, !dbg !1011
  br i1 %18, label %19, label %24, !dbg !1012

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !987, metadata !640), !dbg !990
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.41, i64 0, i64 0), i64 3) #13, !dbg !1013
  %21 = icmp eq i32 %20, 0, !dbg !1016
  br i1 %21, label %22, label %24, !dbg !1017

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1018
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !987, metadata !640), !dbg !990
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1020, !tbaa !648
  br label %24, !dbg !1021

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !987, metadata !640), !dbg !990
  store i8* %25, i8** @program_name, align 8, !dbg !1022, !tbaa !648
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1023, !tbaa !648
  ret void, !dbg !1024
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #10

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !1025 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1030, metadata !640), !dbg !1033
  %2 = tail call i32* @__errno_location() #1, !dbg !1034
  %3 = load i32, i32* %2, align 4, !dbg !1034, !tbaa !716
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !1031, metadata !640), !dbg !1035
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !1036
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !1037
  %6 = select i1 %4, i8* %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), !dbg !1037
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #10, !dbg !1039
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1039
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !1032, metadata !640), !dbg !1040
  store i32 %3, i32* %2, align 4, !dbg !1041, !tbaa !716
  ret %struct.quoting_options* %8, !dbg !1042
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #11 !dbg !1043 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1049, metadata !640), !dbg !1050
  %2 = icmp ne %struct.quoting_options* %0, null, !dbg !1051
  %3 = select i1 %2, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !1051
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1052
  %5 = load i32, i32* %4, align 8, !dbg !1052, !tbaa !1054
  ret i32 %5, !dbg !1056
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1057 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1061, metadata !640), !dbg !1063
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1062, metadata !640), !dbg !1064
  %3 = icmp ne %struct.quoting_options* %0, null, !dbg !1065
  %4 = select i1 %3, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !1065
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1066
  store i32 %1, i32* %5, align 8, !dbg !1068, !tbaa !1054
  ret void, !dbg !1069
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !1070 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1074, metadata !640), !dbg !1082
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1075, metadata !640), !dbg !1083
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !1076, metadata !640), !dbg !1084
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1077, metadata !640), !dbg !1085
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !1086
  %5 = select i1 %4, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !1086
  %6 = lshr i8 %1, 5, !dbg !1087
  %7 = zext i8 %6 to i64, !dbg !1087
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1089
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1078, metadata !640), !dbg !1090
  %9 = and i8 %1, 31, !dbg !1091
  %10 = zext i8 %9 to i32, !dbg !1092
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1080, metadata !640), !dbg !1093
  %11 = load i32, i32* %8, align 4, !dbg !1094, !tbaa !716
  %12 = lshr i32 %11, %10, !dbg !1095
  %13 = and i32 %12, 1, !dbg !1096
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1081, metadata !640), !dbg !1097
  %14 = and i32 %2, 1, !dbg !1098
  %15 = xor i32 %13, %14, !dbg !1099
  %16 = shl i32 %15, %10, !dbg !1100
  %17 = xor i32 %16, %11, !dbg !1101
  store i32 %17, i32* %8, align 4, !dbg !1101, !tbaa !716
  ret i32 %13, !dbg !1102
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1103 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1107, metadata !640), !dbg !1110
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1108, metadata !640), !dbg !1111
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1112
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1107, metadata !640), !dbg !1110
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1114
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1107, metadata !640), !dbg !1110
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1115
  %6 = load i32, i32* %5, align 4, !dbg !1115, !tbaa !1116
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1109, metadata !640), !dbg !1117
  store i32 %1, i32* %5, align 4, !dbg !1118, !tbaa !1116
  ret i32 %6, !dbg !1119
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !1120 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1124, metadata !640), !dbg !1127
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1125, metadata !640), !dbg !1128
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1126, metadata !640), !dbg !1129
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1130
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1124, metadata !640), !dbg !1127
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1132
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1124, metadata !640), !dbg !1127
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1133
  store i32 10, i32* %6, align 8, !dbg !1134, !tbaa !1054
  %7 = icmp ne i8* %1, null, !dbg !1135
  %8 = icmp ne i8* %2, null, !dbg !1137
  %9 = and i1 %7, %8, !dbg !1139
  br i1 %9, label %11, label %10, !dbg !1139

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !1140
  unreachable, !dbg !1140

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1141
  store i8* %1, i8** %12, align 8, !dbg !1142, !tbaa !1143
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1144
  store i8* %2, i8** %13, align 8, !dbg !1145, !tbaa !1146
  ret void, !dbg !1147
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !1148 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1152, metadata !640), !dbg !1160
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1153, metadata !640), !dbg !1161
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1154, metadata !640), !dbg !1162
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1155, metadata !640), !dbg !1163
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1156, metadata !640), !dbg !1164
  %6 = icmp ne %struct.quoting_options* %4, null, !dbg !1165
  %7 = select i1 %6, %struct.quoting_options* %4, %struct.quoting_options* @default_quoting_options, !dbg !1165
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !1157, metadata !640), !dbg !1166
  %8 = tail call i32* @__errno_location() #1, !dbg !1167
  %9 = load i32, i32* %8, align 4, !dbg !1167, !tbaa !716
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1158, metadata !640), !dbg !1168
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1169
  %11 = load i32, i32* %10, align 8, !dbg !1169, !tbaa !1054
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1170
  %13 = load i32, i32* %12, align 4, !dbg !1170, !tbaa !1116
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1171
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1172
  %16 = load i8*, i8** %15, align 8, !dbg !1172, !tbaa !1143
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1173
  %18 = load i8*, i8** %17, align 8, !dbg !1173, !tbaa !1146
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !1174
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1159, metadata !640), !dbg !1175
  store i32 %9, i32* %8, align 4, !dbg !1176, !tbaa !716
  ret i64 %19, !dbg !1177
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !1178 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1184, metadata !640), !dbg !1245
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1185, metadata !640), !dbg !1246
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1186, metadata !640), !dbg !1247
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1187, metadata !640), !dbg !1248
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !1188, metadata !640), !dbg !1249
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1189, metadata !640), !dbg !1250
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !1190, metadata !640), !dbg !1251
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1191, metadata !640), !dbg !1252
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !1192, metadata !640), !dbg !1253
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1194, metadata !640), !dbg !1254
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1195, metadata !640), !dbg !1255
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1196, metadata !640), !dbg !1256
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1197, metadata !640), !dbg !1257
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1198, metadata !640), !dbg !1258
  %13 = tail call i64 @__ctype_get_mb_cur_max() #10, !dbg !1259
  %14 = icmp eq i64 %13, 1, !dbg !1260
  %15 = lshr i32 %5, 1, !dbg !1261
  %16 = trunc i32 %15 to i8, !dbg !1261
  %17 = and i8 %16, 1, !dbg !1261
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !1200, metadata !640), !dbg !1261
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1201, metadata !640), !dbg !1262
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1202, metadata !640), !dbg !1263
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1203, metadata !640), !dbg !1264
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !1265

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !1185, metadata !640), !dbg !1246
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !1203, metadata !640), !dbg !1264
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !1202, metadata !640), !dbg !1263
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !1201, metadata !640), !dbg !1262
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1200, metadata !640), !dbg !1261
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !1187, metadata !640), !dbg !1248
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !1198, metadata !640), !dbg !1258
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !1197, metadata !640), !dbg !1257
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !1196, metadata !640), !dbg !1256
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !1195, metadata !640), !dbg !1255
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1194, metadata !640), !dbg !1254
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !1192, metadata !640), !dbg !1253
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !1191, metadata !640), !dbg !1252
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !1188, metadata !640), !dbg !1249
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
  ], !dbg !1266

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1188, metadata !640), !dbg !1249
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1200, metadata !640), !dbg !1261
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1200, metadata !640), !dbg !1261
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1188, metadata !640), !dbg !1249
  br label %95, !dbg !1267

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1200, metadata !640), !dbg !1261
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1188, metadata !640), !dbg !1249
  %43 = and i8 %36, 1, !dbg !1269
  %44 = icmp eq i8 %43, 0, !dbg !1269
  br i1 %44, label %45, label %95, !dbg !1267

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1271
  br i1 %46, label %95, label %47, !dbg !1275

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1277, !tbaa !727
  br label %95, !dbg !1277

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.52, i64 0, i64 0), i32 %28), !dbg !1279
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !1191, metadata !640), !dbg !1252
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.53, i64 0, i64 0), i32 %28), !dbg !1283
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !1192, metadata !640), !dbg !1253
  br label %51, !dbg !1284

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1192, metadata !640), !dbg !1253
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1191, metadata !640), !dbg !1252
  %54 = and i8 %36, 1, !dbg !1285
  %55 = icmp eq i8 %54, 0, !dbg !1285
  br i1 %55, label %56, label %73, !dbg !1287

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1196, metadata !640), !dbg !1256
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1194, metadata !640), !dbg !1254
  %57 = load i8, i8* %52, align 1, !dbg !1288, !tbaa !727
  %58 = icmp eq i8 %57, 0, !dbg !1292
  br i1 %58, label %73, label %59, !dbg !1292

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !1294

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  %64 = icmp ult i64 %63, %40, !dbg !1294
  br i1 %64, label %65, label %67, !dbg !1298

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !1300
  store i8 %61, i8* %66, align 1, !dbg !1300, !tbaa !727
  br label %67, !dbg !1300

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !1302
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1194, metadata !640), !dbg !1254
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !1304
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1196, metadata !640), !dbg !1256
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1196, metadata !640), !dbg !1256
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1194, metadata !640), !dbg !1254
  %70 = load i8, i8* %69, align 1, !dbg !1288, !tbaa !727
  %71 = icmp eq i8 %70, 0, !dbg !1292
  br i1 %71, label %72, label %60, !dbg !1292, !llvm.loop !1306

; <label>:72:                                     ; preds = %67
  br label %73, !dbg !1254

; <label>:73:                                     ; preds = %72, %56, %51
  %74 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %72 ]
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !1194, metadata !640), !dbg !1254
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1198, metadata !640), !dbg !1258
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1196, metadata !640), !dbg !1256
  %75 = call i64 @strlen(i8* %53) #13, !dbg !1309
  call void @llvm.dbg.value(metadata i64 %75, i64 0, metadata !1197, metadata !640), !dbg !1257
  br label %95, !dbg !1310

; <label>:76:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1198, metadata !640), !dbg !1258
  br label %77, !dbg !1311

; <label>:77:                                     ; preds = %27, %76
  %78 = phi i8 [ %34, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %78, i64 0, metadata !1198, metadata !640), !dbg !1258
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1200, metadata !640), !dbg !1261
  br label %79, !dbg !1312

; <label>:79:                                     ; preds = %27, %77
  %80 = phi i8 [ %34, %27 ], [ %78, %77 ]
  %81 = phi i8 [ %36, %27 ], [ 1, %77 ]
  call void @llvm.dbg.value(metadata i8 %81, i64 0, metadata !1200, metadata !640), !dbg !1261
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !1198, metadata !640), !dbg !1258
  %82 = and i8 %81, 1, !dbg !1313
  %83 = icmp eq i8 %82, 0, !dbg !1313
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1198, metadata !640), !dbg !1258
  %84 = select i1 %83, i8 1, i8 %80, !dbg !1315
  br label %85, !dbg !1315

; <label>:85:                                     ; preds = %79, %27
  %86 = phi i8 [ %34, %27 ], [ %84, %79 ]
  %87 = phi i8 [ %36, %27 ], [ %81, %79 ]
  call void @llvm.dbg.value(metadata i8 %87, i64 0, metadata !1200, metadata !640), !dbg !1261
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !1198, metadata !640), !dbg !1258
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !1188, metadata !640), !dbg !1249
  %88 = and i8 %87, 1, !dbg !1316
  %89 = icmp eq i8 %88, 0, !dbg !1316
  br i1 %89, label %90, label %95, !dbg !1318

; <label>:90:                                     ; preds = %85
  %91 = icmp eq i64 %40, 0, !dbg !1319
  br i1 %91, label %95, label %92, !dbg !1323

; <label>:92:                                     ; preds = %90
  store i8 39, i8* %0, align 1, !dbg !1325, !tbaa !727
  br label %95, !dbg !1325

; <label>:93:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1200, metadata !640), !dbg !1261
  br label %95, !dbg !1327

; <label>:94:                                     ; preds = %27
  call void @abort() #14, !dbg !1328
  unreachable, !dbg !1328

; <label>:95:                                     ; preds = %41, %85, %90, %92, %27, %42, %45, %47, %93, %73
  %96 = phi i32 [ 0, %93 ], [ %28, %73 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %92 ], [ 2, %90 ], [ 2, %85 ], [ 5, %41 ]
  %97 = phi i8* [ %29, %93 ], [ %52, %73 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %92 ], [ %29, %90 ], [ %29, %85 ], [ %29, %41 ]
  %98 = phi i8* [ %30, %93 ], [ %53, %73 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %92 ], [ %30, %90 ], [ %30, %85 ], [ %30, %41 ]
  %99 = phi i64 [ 0, %93 ], [ %74, %73 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %92 ], [ 1, %90 ], [ 0, %85 ], [ 0, %41 ]
  %100 = phi i8* [ %32, %93 ], [ %53, %73 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.54, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.54, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.54, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.53, i64 0, i64 0), %92 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.53, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.53, i64 0, i64 0), %85 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.54, i64 0, i64 0), %41 ]
  %101 = phi i64 [ %33, %93 ], [ %75, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %92 ], [ 1, %90 ], [ 1, %85 ], [ 1, %41 ]
  %102 = phi i8 [ %34, %93 ], [ 1, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %86, %92 ], [ %86, %90 ], [ %86, %85 ], [ 1, %41 ]
  %103 = phi i8 [ 0, %93 ], [ %36, %73 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %87, %92 ], [ %87, %90 ], [ %87, %85 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %103, i64 0, metadata !1200, metadata !640), !dbg !1261
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !1198, metadata !640), !dbg !1258
  call void @llvm.dbg.value(metadata i64 %101, i64 0, metadata !1197, metadata !640), !dbg !1257
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !1196, metadata !640), !dbg !1256
  call void @llvm.dbg.value(metadata i64 %99, i64 0, metadata !1194, metadata !640), !dbg !1254
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !1192, metadata !640), !dbg !1253
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !1191, metadata !640), !dbg !1252
  call void @llvm.dbg.value(metadata i32 %96, i64 0, metadata !1188, metadata !640), !dbg !1249
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1193, metadata !640), !dbg !1329
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
  br label %123, !dbg !1330

; <label>:123:                                    ; preds = %587, %95
  %124 = phi i64 [ 0, %95 ], [ %596, %587 ]
  %125 = phi i64 [ %99, %95 ], [ %589, %587 ]
  %126 = phi i64 [ %31, %95 ], [ %590, %587 ]
  %127 = phi i64 [ %35, %95 ], [ %591, %587 ]
  %128 = phi i8 [ %37, %95 ], [ %592, %587 ]
  %129 = phi i8 [ %38, %95 ], [ %593, %587 ]
  %130 = phi i8 [ %39, %95 ], [ %594, %587 ]
  %131 = phi i64 [ %40, %95 ], [ %595, %587 ]
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !1185, metadata !640), !dbg !1246
  call void @llvm.dbg.value(metadata i8 %130, i64 0, metadata !1203, metadata !640), !dbg !1264
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !1202, metadata !640), !dbg !1263
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !1201, metadata !640), !dbg !1262
  call void @llvm.dbg.value(metadata i64 %127, i64 0, metadata !1187, metadata !640), !dbg !1248
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !1195, metadata !640), !dbg !1255
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1194, metadata !640), !dbg !1254
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1193, metadata !640), !dbg !1329
  %132 = icmp eq i64 %127, -1, !dbg !1331
  br i1 %132, label %135, label %133, !dbg !1333

; <label>:133:                                    ; preds = %123
  %134 = icmp eq i64 %124, %127, !dbg !1334
  br i1 %134, label %597, label %139, !dbg !1336

; <label>:135:                                    ; preds = %123
  %136 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !1338
  %137 = load i8, i8* %136, align 1, !dbg !1338, !tbaa !727
  %138 = icmp eq i8 %137, 0, !dbg !1340
  br i1 %138, label %597, label %139, !dbg !1336

; <label>:139:                                    ; preds = %133, %135
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1209, metadata !640), !dbg !1341
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1210, metadata !640), !dbg !1342
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1211, metadata !640), !dbg !1343
  br i1 %109, label %140, label %155, !dbg !1344

; <label>:140:                                    ; preds = %139
  %141 = add i64 %124, %101, !dbg !1346
  %142 = and i1 %110, %132, !dbg !1348
  br i1 %142, label %143, label %145, !dbg !1348

; <label>:143:                                    ; preds = %140
  %144 = call i64 @strlen(i8* %2) #13, !dbg !1349
  call void @llvm.dbg.value(metadata i64 %144, i64 0, metadata !1187, metadata !640), !dbg !1248
  br label %145, !dbg !1350

; <label>:145:                                    ; preds = %140, %143
  %146 = phi i64 [ %144, %143 ], [ %127, %140 ]
  call void @llvm.dbg.value(metadata i64 %146, i64 0, metadata !1187, metadata !640), !dbg !1248
  %147 = icmp ugt i64 %141, %146, !dbg !1352
  br i1 %147, label %155, label %148, !dbg !1354

; <label>:148:                                    ; preds = %145
  %149 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !1355
  %150 = call i32 @memcmp(i8* %149, i8* %100, i64 %101) #13, !dbg !1356
  %151 = icmp ne i32 %150, 0, !dbg !1357
  %152 = or i1 %151, %112, !dbg !1357
  %153 = xor i1 %151, true, !dbg !1357
  %154 = zext i1 %153 to i8, !dbg !1357
  br i1 %152, label %155, label %644, !dbg !1357

; <label>:155:                                    ; preds = %148, %145, %139
  %156 = phi i64 [ %146, %148 ], [ %146, %145 ], [ %127, %139 ]
  %157 = phi i8 [ %154, %148 ], [ 0, %145 ], [ 0, %139 ]
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !1209, metadata !640), !dbg !1341
  call void @llvm.dbg.value(metadata i64 %156, i64 0, metadata !1187, metadata !640), !dbg !1248
  %158 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !1359
  %159 = load i8, i8* %158, align 1, !dbg !1359, !tbaa !727
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !1204, metadata !640), !dbg !1360
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
  ], !dbg !1361

; <label>:160:                                    ; preds = %155
  br i1 %105, label %161, label %209, !dbg !1362

; <label>:161:                                    ; preds = %160
  br i1 %112, label %162, label %644, !dbg !1363

; <label>:162:                                    ; preds = %161
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1210, metadata !640), !dbg !1342
  %163 = and i8 %128, 1, !dbg !1368
  %164 = icmp eq i8 %163, 0, !dbg !1368
  %165 = and i1 %114, %164, !dbg !1371
  br i1 %165, label %166, label %182, !dbg !1371

; <label>:166:                                    ; preds = %162
  %167 = icmp ult i64 %125, %131, !dbg !1373
  br i1 %167, label %168, label %170, !dbg !1378

; <label>:168:                                    ; preds = %166
  %169 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !1380
  store i8 39, i8* %169, align 1, !dbg !1380, !tbaa !727
  br label %170, !dbg !1380

; <label>:170:                                    ; preds = %168, %166
  %171 = add i64 %125, 1, !dbg !1382
  call void @llvm.dbg.value(metadata i64 %171, i64 0, metadata !1194, metadata !640), !dbg !1254
  %172 = icmp ult i64 %171, %131, !dbg !1384
  br i1 %172, label %173, label %175, !dbg !1388

; <label>:173:                                    ; preds = %170
  %174 = getelementptr inbounds i8, i8* %0, i64 %171, !dbg !1390
  store i8 36, i8* %174, align 1, !dbg !1390, !tbaa !727
  br label %175, !dbg !1390

; <label>:175:                                    ; preds = %173, %170
  %176 = add i64 %125, 2, !dbg !1392
  call void @llvm.dbg.value(metadata i64 %176, i64 0, metadata !1194, metadata !640), !dbg !1254
  %177 = icmp ult i64 %176, %131, !dbg !1394
  br i1 %177, label %178, label %180, !dbg !1398

; <label>:178:                                    ; preds = %175
  %179 = getelementptr inbounds i8, i8* %0, i64 %176, !dbg !1400
  store i8 39, i8* %179, align 1, !dbg !1400, !tbaa !727
  br label %180, !dbg !1400

; <label>:180:                                    ; preds = %178, %175
  %181 = add i64 %125, 3, !dbg !1402
  call void @llvm.dbg.value(metadata i64 %181, i64 0, metadata !1194, metadata !640), !dbg !1254
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1201, metadata !640), !dbg !1262
  br label %182, !dbg !1404

; <label>:182:                                    ; preds = %162, %180
  %183 = phi i64 [ %181, %180 ], [ %125, %162 ]
  %184 = phi i8 [ 1, %180 ], [ %128, %162 ]
  call void @llvm.dbg.value(metadata i8 %184, i64 0, metadata !1201, metadata !640), !dbg !1262
  call void @llvm.dbg.value(metadata i64 %183, i64 0, metadata !1194, metadata !640), !dbg !1254
  %185 = icmp ult i64 %183, %131, !dbg !1406
  br i1 %185, label %186, label %188, !dbg !1410

; <label>:186:                                    ; preds = %182
  %187 = getelementptr inbounds i8, i8* %0, i64 %183, !dbg !1412
  store i8 92, i8* %187, align 1, !dbg !1412, !tbaa !727
  br label %188, !dbg !1412

; <label>:188:                                    ; preds = %186, %182
  %189 = add i64 %183, 1, !dbg !1414
  call void @llvm.dbg.value(metadata i64 %189, i64 0, metadata !1194, metadata !640), !dbg !1254
  br i1 %106, label %190, label %476, !dbg !1416

; <label>:190:                                    ; preds = %188
  %191 = add i64 %124, 1, !dbg !1418
  %192 = icmp ult i64 %191, %156, !dbg !1420
  br i1 %192, label %193, label %476, !dbg !1421

; <label>:193:                                    ; preds = %190
  %194 = getelementptr inbounds i8, i8* %2, i64 %191, !dbg !1422
  %195 = load i8, i8* %194, align 1, !dbg !1422, !tbaa !727
  %196 = add i8 %195, -48, !dbg !1424
  %197 = icmp ult i8 %196, 10, !dbg !1424
  br i1 %197, label %198, label %476, !dbg !1424

; <label>:198:                                    ; preds = %193
  %199 = icmp ult i64 %189, %131, !dbg !1425
  br i1 %199, label %200, label %202, !dbg !1430

; <label>:200:                                    ; preds = %198
  %201 = getelementptr inbounds i8, i8* %0, i64 %189, !dbg !1432
  store i8 48, i8* %201, align 1, !dbg !1432, !tbaa !727
  br label %202, !dbg !1432

; <label>:202:                                    ; preds = %200, %198
  %203 = add i64 %183, 2, !dbg !1434
  call void @llvm.dbg.value(metadata i64 %203, i64 0, metadata !1194, metadata !640), !dbg !1254
  %204 = icmp ult i64 %203, %131, !dbg !1436
  br i1 %204, label %205, label %207, !dbg !1440

; <label>:205:                                    ; preds = %202
  %206 = getelementptr inbounds i8, i8* %0, i64 %203, !dbg !1442
  store i8 48, i8* %206, align 1, !dbg !1442, !tbaa !727
  br label %207, !dbg !1442

; <label>:207:                                    ; preds = %205, %202
  %208 = add i64 %183, 3, !dbg !1444
  call void @llvm.dbg.value(metadata i64 %208, i64 0, metadata !1194, metadata !640), !dbg !1254
  br label %476, !dbg !1446

; <label>:209:                                    ; preds = %160
  br i1 %23, label %476, label %587, !dbg !1447

; <label>:210:                                    ; preds = %155
  switch i32 %96, label %476 [
    i32 2, label %211
    i32 5, label %212
  ], !dbg !1448

; <label>:211:                                    ; preds = %210
  br i1 %112, label %476, label %644, !dbg !1449

; <label>:212:                                    ; preds = %210
  br i1 %25, label %476, label %213, !dbg !1451

; <label>:213:                                    ; preds = %212
  %214 = add i64 %124, 2, !dbg !1453
  %215 = icmp ult i64 %214, %156, !dbg !1455
  br i1 %215, label %216, label %476, !dbg !1456

; <label>:216:                                    ; preds = %213
  %217 = add i64 %124, 1, !dbg !1457
  %218 = getelementptr inbounds i8, i8* %2, i64 %217, !dbg !1459
  %219 = load i8, i8* %218, align 1, !dbg !1459, !tbaa !727
  %220 = icmp eq i8 %219, 63, !dbg !1460
  br i1 %220, label %221, label %476, !dbg !1461

; <label>:221:                                    ; preds = %216
  %222 = getelementptr inbounds i8, i8* %2, i64 %214, !dbg !1463
  %223 = load i8, i8* %222, align 1, !dbg !1463, !tbaa !727
  %224 = sext i8 %223 to i32, !dbg !1463
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
  ], !dbg !1464

; <label>:225:                                    ; preds = %221, %221, %221, %221, %221, %221, %221, %221, %221
  br i1 %112, label %226, label %644, !dbg !1465

; <label>:226:                                    ; preds = %225
  call void @llvm.dbg.value(metadata i8 %223, i64 0, metadata !1204, metadata !640), !dbg !1360
  call void @llvm.dbg.value(metadata i64 %214, i64 0, metadata !1193, metadata !640), !dbg !1329
  %227 = icmp ult i64 %125, %131, !dbg !1467
  br i1 %227, label %228, label %230, !dbg !1471

; <label>:228:                                    ; preds = %226
  %229 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !1473
  store i8 63, i8* %229, align 1, !dbg !1473, !tbaa !727
  br label %230, !dbg !1473

; <label>:230:                                    ; preds = %228, %226
  %231 = add i64 %125, 1, !dbg !1475
  call void @llvm.dbg.value(metadata i64 %231, i64 0, metadata !1194, metadata !640), !dbg !1254
  %232 = icmp ult i64 %231, %131, !dbg !1477
  br i1 %232, label %233, label %235, !dbg !1481

; <label>:233:                                    ; preds = %230
  %234 = getelementptr inbounds i8, i8* %0, i64 %231, !dbg !1483
  store i8 34, i8* %234, align 1, !dbg !1483, !tbaa !727
  br label %235, !dbg !1483

; <label>:235:                                    ; preds = %233, %230
  %236 = add i64 %125, 2, !dbg !1485
  call void @llvm.dbg.value(metadata i64 %236, i64 0, metadata !1194, metadata !640), !dbg !1254
  %237 = icmp ult i64 %236, %131, !dbg !1487
  br i1 %237, label %238, label %240, !dbg !1491

; <label>:238:                                    ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236, !dbg !1493
  store i8 34, i8* %239, align 1, !dbg !1493, !tbaa !727
  br label %240, !dbg !1493

; <label>:240:                                    ; preds = %238, %235
  %241 = add i64 %125, 3, !dbg !1495
  call void @llvm.dbg.value(metadata i64 %241, i64 0, metadata !1194, metadata !640), !dbg !1254
  %242 = icmp ult i64 %241, %131, !dbg !1497
  br i1 %242, label %243, label %245, !dbg !1501

; <label>:243:                                    ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241, !dbg !1503
  store i8 63, i8* %244, align 1, !dbg !1503, !tbaa !727
  br label %245, !dbg !1503

; <label>:245:                                    ; preds = %243, %240
  %246 = add i64 %125, 4, !dbg !1505
  call void @llvm.dbg.value(metadata i64 %246, i64 0, metadata !1194, metadata !640), !dbg !1254
  br label %476, !dbg !1507

; <label>:247:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !1208, metadata !640), !dbg !1508
  br label %257, !dbg !1509

; <label>:248:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !1208, metadata !640), !dbg !1508
  br label %257, !dbg !1510

; <label>:249:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !1208, metadata !640), !dbg !1508
  br label %255, !dbg !1511

; <label>:250:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !1208, metadata !640), !dbg !1508
  br label %255, !dbg !1512

; <label>:251:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !1208, metadata !640), !dbg !1508
  br label %257, !dbg !1513

; <label>:252:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !1208, metadata !640), !dbg !1508
  br i1 %114, label %253, label %254, !dbg !1514

; <label>:253:                                    ; preds = %252
  br i1 %112, label %542, label %644, !dbg !1515

; <label>:254:                                    ; preds = %252
  br i1 %122, label %542, label %255, !dbg !1518

; <label>:255:                                    ; preds = %254, %155, %250, %249
  %256 = phi i8 [ 92, %254 ], [ 116, %250 ], [ 114, %249 ], [ 110, %155 ]
  call void @llvm.dbg.value(metadata i8 %256, i64 0, metadata !1208, metadata !640), !dbg !1508
  br i1 %118, label %257, label %644, !dbg !1520

; <label>:257:                                    ; preds = %255, %155, %251, %248, %247
  %258 = phi i8 [ %256, %255 ], [ 118, %251 ], [ 102, %248 ], [ 98, %247 ], [ 97, %155 ]
  call void @llvm.dbg.value(metadata i8 %258, i64 0, metadata !1208, metadata !640), !dbg !1508
  br i1 %105, label %503, label %476, !dbg !1522

; <label>:259:                                    ; preds = %155, %155
  %260 = icmp eq i64 %156, -1, !dbg !1523
  br i1 %260, label %261, label %266, !dbg !1525

; <label>:261:                                    ; preds = %259
  %262 = load i8, i8* %26, align 1, !dbg !1526, !tbaa !727
  %263 = icmp ne i8 %262, 0, !dbg !1528
  %264 = icmp ne i64 %124, 0, !dbg !1529
  %265 = or i1 %264, %263, !dbg !1531
  br i1 %265, label %476, label %272, !dbg !1531

; <label>:266:                                    ; preds = %259
  %267 = icmp ne i64 %156, 1, !dbg !1532
  %268 = icmp ne i64 %124, 0, !dbg !1529
  %269 = or i1 %268, %267, !dbg !1534
  br i1 %269, label %476, label %272, !dbg !1534

; <label>:270:                                    ; preds = %155, %155
  %271 = icmp eq i64 %124, 0, !dbg !1529
  br i1 %271, label %272, label %476, !dbg !1536

; <label>:272:                                    ; preds = %270, %266, %261, %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1211, metadata !640), !dbg !1343
  br label %273, !dbg !1537

; <label>:273:                                    ; preds = %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %272
  %274 = phi i8 [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 1, %272 ]
  call void @llvm.dbg.value(metadata i8 %274, i64 0, metadata !1211, metadata !640), !dbg !1343
  br i1 %118, label %476, label %644, !dbg !1538

; <label>:275:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1202, metadata !640), !dbg !1263
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1211, metadata !640), !dbg !1343
  br i1 %114, label %276, label %476, !dbg !1540

; <label>:276:                                    ; preds = %275
  br i1 %112, label %277, label %644, !dbg !1541

; <label>:277:                                    ; preds = %276
  %278 = icmp eq i64 %131, 0, !dbg !1544
  %279 = icmp ne i64 %126, 0, !dbg !1546
  %280 = or i1 %279, %278, !dbg !1548
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !1195, metadata !640), !dbg !1255
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1185, metadata !640), !dbg !1246
  %281 = select i1 %280, i64 %126, i64 %131, !dbg !1548
  %282 = select i1 %280, i64 %131, i64 0, !dbg !1548
  call void @llvm.dbg.value(metadata i64 %282, i64 0, metadata !1185, metadata !640), !dbg !1246
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !1195, metadata !640), !dbg !1255
  %283 = icmp ult i64 %125, %282, !dbg !1549
  br i1 %283, label %284, label %286, !dbg !1553

; <label>:284:                                    ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !1555
  store i8 39, i8* %285, align 1, !dbg !1555, !tbaa !727
  br label %286, !dbg !1555

; <label>:286:                                    ; preds = %284, %277
  %287 = add i64 %125, 1, !dbg !1557
  call void @llvm.dbg.value(metadata i64 %287, i64 0, metadata !1194, metadata !640), !dbg !1254
  %288 = icmp ult i64 %287, %282, !dbg !1559
  br i1 %288, label %289, label %291, !dbg !1563

; <label>:289:                                    ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287, !dbg !1565
  store i8 92, i8* %290, align 1, !dbg !1565, !tbaa !727
  br label %291, !dbg !1565

; <label>:291:                                    ; preds = %289, %286
  %292 = add i64 %125, 2, !dbg !1567
  call void @llvm.dbg.value(metadata i64 %292, i64 0, metadata !1194, metadata !640), !dbg !1254
  %293 = icmp ult i64 %292, %282, !dbg !1569
  br i1 %293, label %294, label %296, !dbg !1573

; <label>:294:                                    ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292, !dbg !1575
  store i8 39, i8* %295, align 1, !dbg !1575, !tbaa !727
  br label %296, !dbg !1575

; <label>:296:                                    ; preds = %294, %291
  %297 = add i64 %125, 3, !dbg !1577
  call void @llvm.dbg.value(metadata i64 %297, i64 0, metadata !1194, metadata !640), !dbg !1254
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1201, metadata !640), !dbg !1262
  br label %476, !dbg !1579

; <label>:298:                                    ; preds = %155
  br i1 %14, label %299, label %308, !dbg !1580

; <label>:299:                                    ; preds = %298
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1212, metadata !640), !dbg !1581
  %300 = tail call i16** @__ctype_b_loc() #1, !dbg !1582
  %301 = load i16*, i16** %300, align 8, !dbg !1582, !tbaa !648
  %302 = zext i8 %159 to i64, !dbg !1582
  %303 = getelementptr inbounds i16, i16* %301, i64 %302, !dbg !1582
  %304 = load i16, i16* %303, align 2, !dbg !1582, !tbaa !1584
  %305 = lshr i16 %304, 14, !dbg !1585
  %306 = trunc i16 %305 to i8, !dbg !1585
  %307 = and i8 %306, 1, !dbg !1585
  call void @llvm.dbg.value(metadata i8 %307, i64 0, metadata !1215, metadata !640), !dbg !1586
  br label %368, !dbg !1587

; <label>:308:                                    ; preds = %298
  call void @llvm.lifetime.start(i64 8, i8* nonnull %18) #10, !dbg !1588
  store i64 0, i64* %10, align 8, !dbg !1589
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1212, metadata !640), !dbg !1581
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1215, metadata !640), !dbg !1586
  %309 = icmp eq i64 %156, -1, !dbg !1590
  br i1 %309, label %310, label %312, !dbg !1592, !llvm.loop !1593

; <label>:310:                                    ; preds = %308
  %311 = call i64 @strlen(i8* nonnull %2) #13, !dbg !1596
  call void @llvm.dbg.value(metadata i64 %311, i64 0, metadata !1187, metadata !640), !dbg !1248
  br label %312, !dbg !1597, !llvm.loop !1593

; <label>:312:                                    ; preds = %310, %308
  %313 = phi i64 [ %156, %308 ], [ %311, %310 ]
  br label %314, !dbg !1586

; <label>:314:                                    ; preds = %312, %355
  %315 = phi i64 [ %360, %355 ], [ 0, %312 ]
  %316 = phi i8 [ %359, %355 ], [ 1, %312 ]
  call void @llvm.dbg.value(metadata i8 %316, i64 0, metadata !1215, metadata !640), !dbg !1586
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !1212, metadata !640), !dbg !1581
  call void @llvm.dbg.value(metadata i64 %313, i64 0, metadata !1187, metadata !640), !dbg !1248
  call void @llvm.lifetime.start(i64 4, i8* nonnull %19) #10, !dbg !1598
  %317 = add i64 %315, %124, !dbg !1599
  %318 = getelementptr inbounds i8, i8* %2, i64 %317, !dbg !1600
  %319 = sub i64 %313, %317, !dbg !1601
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1216, metadata !764), !dbg !1602
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !1231, metadata !764), !dbg !1603
  %320 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %318, i64 %319, %struct.__mbstate_t* nonnull %11) #10, !dbg !1604
  call void @llvm.dbg.value(metadata i64 %320, i64 0, metadata !1234, metadata !640), !dbg !1605
  switch i64 %320, label %334 [
    i64 0, label %350
    i64 -1, label %347
    i64 -2, label %321
  ], !dbg !1606

; <label>:321:                                    ; preds = %314
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !1212, metadata !640), !dbg !1581
  %322 = icmp ugt i64 %313, %317, !dbg !1607
  br i1 %322, label %323, label %351, !dbg !1610

; <label>:323:                                    ; preds = %321
  br label %324, !dbg !1611

; <label>:324:                                    ; preds = %323, %330
  %325 = phi i64 [ %332, %330 ], [ %317, %323 ]
  %326 = phi i64 [ %331, %330 ], [ %315, %323 ]
  %327 = getelementptr inbounds i8, i8* %2, i64 %325, !dbg !1611
  %328 = load i8, i8* %327, align 1, !dbg !1611, !tbaa !727
  %329 = icmp eq i8 %328, 0, !dbg !1613
  br i1 %329, label %348, label %330, !dbg !1614

; <label>:330:                                    ; preds = %324
  %331 = add i64 %326, 1, !dbg !1616
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !1212, metadata !640), !dbg !1581
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !1212, metadata !640), !dbg !1581
  %332 = add i64 %331, %124, !dbg !1617
  %333 = icmp ult i64 %332, %313, !dbg !1607
  br i1 %333, label %324, label %348, !dbg !1610, !llvm.loop !1618

; <label>:334:                                    ; preds = %314
  %335 = icmp ugt i64 %320, 1, !dbg !1620
  %336 = and i1 %116, %335, !dbg !1624
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1235, metadata !640), !dbg !1625
  br i1 %336, label %337, label %355, !dbg !1624

; <label>:337:                                    ; preds = %334
  br label %338, !dbg !1626

; <label>:338:                                    ; preds = %337, %344
  %339 = phi i64 [ %345, %344 ], [ 1, %337 ]
  %340 = add i64 %339, %317, !dbg !1626
  %341 = getelementptr inbounds i8, i8* %2, i64 %340, !dbg !1627
  %342 = load i8, i8* %341, align 1, !dbg !1627, !tbaa !727
  %343 = sext i8 %342 to i32, !dbg !1627
  switch i32 %343, label %344 [
    i32 91, label %367
    i32 92, label %367
    i32 94, label %367
    i32 96, label %367
    i32 124, label %367
  ], !dbg !1628

; <label>:344:                                    ; preds = %338
  %345 = add nuw i64 %339, 1, !dbg !1629
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !1235, metadata !640), !dbg !1625
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !1235, metadata !640), !dbg !1625
  %346 = icmp ult i64 %345, %320, !dbg !1620
  br i1 %346, label %338, label %354, !dbg !1631, !llvm.loop !1633

; <label>:347:                                    ; preds = %314
  br label %351, !dbg !1586

; <label>:348:                                    ; preds = %324, %330
  %349 = phi i64 [ %331, %330 ], [ %326, %324 ]
  br label %351, !dbg !1586

; <label>:350:                                    ; preds = %314
  br label %351, !dbg !1586

; <label>:351:                                    ; preds = %350, %348, %347, %321
  %352 = phi i64 [ %315, %321 ], [ %315, %347 ], [ %349, %348 ], [ %315, %350 ]
  %353 = phi i8 [ 0, %321 ], [ 0, %347 ], [ 0, %348 ], [ %316, %350 ]
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1215, metadata !640), !dbg !1586
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1212, metadata !640), !dbg !1581
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10, !dbg !1636
  br label %364

; <label>:354:                                    ; preds = %344
  br label %355, !dbg !1637

; <label>:355:                                    ; preds = %354, %334
  %356 = load i32, i32* %12, align 4, !dbg !1637, !tbaa !716
  call void @llvm.dbg.value(metadata i32 %356, i64 0, metadata !1231, metadata !640), !dbg !1603
  %357 = call i32 @iswprint(i32 %356) #10, !dbg !1639
  %358 = icmp eq i32 %357, 0, !dbg !1639
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1215, metadata !640), !dbg !1586
  %359 = select i1 %358, i8 0, i8 %316, !dbg !1640
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1215, metadata !640), !dbg !1586
  %360 = add i64 %320, %315, !dbg !1641
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1212, metadata !640), !dbg !1581
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1215, metadata !640), !dbg !1586
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1212, metadata !640), !dbg !1581
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10, !dbg !1636
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1216, metadata !764), !dbg !1602
  %361 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #13, !dbg !1642
  %362 = icmp eq i32 %361, 0, !dbg !1643
  br i1 %362, label %314, label %363, !dbg !1644, !llvm.loop !1593

; <label>:363:                                    ; preds = %355
  br label %364, !dbg !1646

; <label>:364:                                    ; preds = %363, %351
  %365 = phi i8 [ %353, %351 ], [ %359, %363 ]
  %366 = phi i64 [ %352, %351 ], [ %360, %363 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #10, !dbg !1646
  br label %368

; <label>:367:                                    ; preds = %338, %338, %338, %338, %338
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1215, metadata !640), !dbg !1586
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1212, metadata !640), !dbg !1581
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10, !dbg !1636
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #10, !dbg !1646
  br label %649

; <label>:368:                                    ; preds = %364, %299
  %369 = phi i64 [ %156, %299 ], [ %313, %364 ]
  %370 = phi i64 [ 1, %299 ], [ %366, %364 ]
  %371 = phi i8 [ %307, %299 ], [ %365, %364 ]
  call void @llvm.dbg.value(metadata i8 %371, i64 0, metadata !1215, metadata !640), !dbg !1586
  call void @llvm.dbg.value(metadata i64 %370, i64 0, metadata !1212, metadata !640), !dbg !1581
  call void @llvm.dbg.value(metadata i64 %369, i64 0, metadata !1187, metadata !640), !dbg !1248
  %372 = and i8 %371, 1, !dbg !1647
  %373 = icmp ne i8 %372, 0, !dbg !1647
  call void @llvm.dbg.value(metadata i8 %372, i64 0, metadata !1211, metadata !640), !dbg !1343
  %374 = icmp ult i64 %370, 2, !dbg !1648
  %375 = or i1 %373, %113, !dbg !1649
  %376 = and i1 %374, %375, !dbg !1651
  br i1 %376, label %476, label %377, !dbg !1651

; <label>:377:                                    ; preds = %368
  %378 = add i64 %370, %124, !dbg !1652
  call void @llvm.dbg.value(metadata i64 %378, i64 0, metadata !1242, metadata !640), !dbg !1653
  br label %379, !dbg !1654

; <label>:379:                                    ; preds = %472, %377
  %380 = phi i64 [ %124, %377 ], [ %447, %472 ]
  %381 = phi i64 [ %125, %377 ], [ %473, %472 ]
  %382 = phi i8 [ %128, %377 ], [ %468, %472 ]
  %383 = phi i8 [ %159, %377 ], [ %475, %472 ]
  %384 = phi i8 [ %157, %377 ], [ %445, %472 ]
  %385 = phi i8 [ 0, %377 ], [ %446, %472 ]
  call void @llvm.dbg.value(metadata i8 %385, i64 0, metadata !1210, metadata !640), !dbg !1342
  call void @llvm.dbg.value(metadata i8 %384, i64 0, metadata !1209, metadata !640), !dbg !1341
  call void @llvm.dbg.value(metadata i8 %383, i64 0, metadata !1204, metadata !640), !dbg !1360
  call void @llvm.dbg.value(metadata i8 %382, i64 0, metadata !1201, metadata !640), !dbg !1262
  call void @llvm.dbg.value(metadata i64 %381, i64 0, metadata !1194, metadata !640), !dbg !1254
  call void @llvm.dbg.value(metadata i64 %380, i64 0, metadata !1193, metadata !640), !dbg !1329
  br i1 %375, label %432, label %386, !dbg !1655

; <label>:386:                                    ; preds = %379
  br i1 %112, label %387, label %643, !dbg !1660

; <label>:387:                                    ; preds = %386
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1210, metadata !640), !dbg !1342
  %388 = and i8 %382, 1, !dbg !1664
  %389 = icmp eq i8 %388, 0, !dbg !1664
  %390 = and i1 %114, %389, !dbg !1667
  br i1 %390, label %391, label %407, !dbg !1667

; <label>:391:                                    ; preds = %387
  %392 = icmp ult i64 %381, %131, !dbg !1669
  br i1 %392, label %393, label %395, !dbg !1674

; <label>:393:                                    ; preds = %391
  %394 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !1676
  store i8 39, i8* %394, align 1, !dbg !1676, !tbaa !727
  br label %395, !dbg !1676

; <label>:395:                                    ; preds = %393, %391
  %396 = add i64 %381, 1, !dbg !1678
  call void @llvm.dbg.value(metadata i64 %396, i64 0, metadata !1194, metadata !640), !dbg !1254
  %397 = icmp ult i64 %396, %131, !dbg !1680
  br i1 %397, label %398, label %400, !dbg !1684

; <label>:398:                                    ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !1686
  store i8 36, i8* %399, align 1, !dbg !1686, !tbaa !727
  br label %400, !dbg !1686

; <label>:400:                                    ; preds = %398, %395
  %401 = add i64 %381, 2, !dbg !1688
  call void @llvm.dbg.value(metadata i64 %401, i64 0, metadata !1194, metadata !640), !dbg !1254
  %402 = icmp ult i64 %401, %131, !dbg !1690
  br i1 %402, label %403, label %405, !dbg !1694

; <label>:403:                                    ; preds = %400
  %404 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !1696
  store i8 39, i8* %404, align 1, !dbg !1696, !tbaa !727
  br label %405, !dbg !1696

; <label>:405:                                    ; preds = %403, %400
  %406 = add i64 %381, 3, !dbg !1698
  call void @llvm.dbg.value(metadata i64 %406, i64 0, metadata !1194, metadata !640), !dbg !1254
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1201, metadata !640), !dbg !1262
  br label %407, !dbg !1700

; <label>:407:                                    ; preds = %387, %405
  %408 = phi i64 [ %406, %405 ], [ %381, %387 ]
  %409 = phi i8 [ 1, %405 ], [ %382, %387 ]
  call void @llvm.dbg.value(metadata i8 %409, i64 0, metadata !1201, metadata !640), !dbg !1262
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !1194, metadata !640), !dbg !1254
  %410 = icmp ult i64 %408, %131, !dbg !1702
  br i1 %410, label %411, label %413, !dbg !1706

; <label>:411:                                    ; preds = %407
  %412 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !1708
  store i8 92, i8* %412, align 1, !dbg !1708, !tbaa !727
  br label %413, !dbg !1708

; <label>:413:                                    ; preds = %411, %407
  %414 = add i64 %408, 1, !dbg !1710
  call void @llvm.dbg.value(metadata i64 %414, i64 0, metadata !1194, metadata !640), !dbg !1254
  %415 = icmp ult i64 %414, %131, !dbg !1712
  br i1 %415, label %416, label %420, !dbg !1716

; <label>:416:                                    ; preds = %413
  %417 = lshr i8 %383, 6, !dbg !1718
  %418 = or i8 %417, 48, !dbg !1718
  %419 = getelementptr inbounds i8, i8* %0, i64 %414, !dbg !1718
  store i8 %418, i8* %419, align 1, !dbg !1718, !tbaa !727
  br label %420, !dbg !1718

; <label>:420:                                    ; preds = %416, %413
  %421 = add i64 %408, 2, !dbg !1720
  call void @llvm.dbg.value(metadata i64 %421, i64 0, metadata !1194, metadata !640), !dbg !1254
  %422 = icmp ult i64 %421, %131, !dbg !1722
  br i1 %422, label %423, label %428, !dbg !1726

; <label>:423:                                    ; preds = %420
  %424 = lshr i8 %383, 3, !dbg !1728
  %425 = and i8 %424, 7, !dbg !1728
  %426 = or i8 %425, 48, !dbg !1728
  %427 = getelementptr inbounds i8, i8* %0, i64 %421, !dbg !1728
  store i8 %426, i8* %427, align 1, !dbg !1728, !tbaa !727
  br label %428, !dbg !1728

; <label>:428:                                    ; preds = %423, %420
  %429 = add i64 %408, 3, !dbg !1730
  call void @llvm.dbg.value(metadata i64 %429, i64 0, metadata !1194, metadata !640), !dbg !1254
  %430 = and i8 %383, 7, !dbg !1732
  %431 = or i8 %430, 48, !dbg !1733
  call void @llvm.dbg.value(metadata i8 %431, i64 0, metadata !1204, metadata !640), !dbg !1360
  br label %441, !dbg !1734

; <label>:432:                                    ; preds = %379
  %433 = and i8 %384, 1, !dbg !1735
  %434 = icmp eq i8 %433, 0, !dbg !1735
  br i1 %434, label %441, label %435, !dbg !1737

; <label>:435:                                    ; preds = %432
  %436 = icmp ult i64 %381, %131, !dbg !1738
  br i1 %436, label %437, label %439, !dbg !1743

; <label>:437:                                    ; preds = %435
  %438 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !1745
  store i8 92, i8* %438, align 1, !dbg !1745, !tbaa !727
  br label %439, !dbg !1745

; <label>:439:                                    ; preds = %437, %435
  %440 = add i64 %381, 1, !dbg !1747
  call void @llvm.dbg.value(metadata i64 %440, i64 0, metadata !1194, metadata !640), !dbg !1254
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1209, metadata !640), !dbg !1341
  br label %441, !dbg !1749

; <label>:441:                                    ; preds = %432, %439, %428
  %442 = phi i64 [ %440, %439 ], [ %381, %432 ], [ %429, %428 ]
  %443 = phi i8 [ %382, %439 ], [ %382, %432 ], [ %409, %428 ]
  %444 = phi i8 [ %383, %439 ], [ %383, %432 ], [ %431, %428 ]
  %445 = phi i8 [ 0, %439 ], [ %384, %432 ], [ %384, %428 ]
  %446 = phi i8 [ %385, %439 ], [ %385, %432 ], [ 1, %428 ]
  call void @llvm.dbg.value(metadata i8 %446, i64 0, metadata !1210, metadata !640), !dbg !1342
  call void @llvm.dbg.value(metadata i8 %445, i64 0, metadata !1209, metadata !640), !dbg !1341
  call void @llvm.dbg.value(metadata i8 %444, i64 0, metadata !1204, metadata !640), !dbg !1360
  call void @llvm.dbg.value(metadata i8 %443, i64 0, metadata !1201, metadata !640), !dbg !1262
  call void @llvm.dbg.value(metadata i64 %442, i64 0, metadata !1194, metadata !640), !dbg !1254
  %447 = add i64 %380, 1, !dbg !1750
  %448 = icmp ugt i64 %378, %447, !dbg !1752
  br i1 %448, label %449, label %541, !dbg !1753

; <label>:449:                                    ; preds = %441
  %450 = and i8 %443, 1, !dbg !1754
  %451 = icmp ne i8 %450, 0, !dbg !1754
  %452 = and i8 %446, 1, !dbg !1758
  %453 = icmp eq i8 %452, 0, !dbg !1758
  %454 = and i1 %451, %453, !dbg !1754
  br i1 %454, label %455, label %466, !dbg !1754

; <label>:455:                                    ; preds = %449
  %456 = icmp ult i64 %442, %131, !dbg !1760
  br i1 %456, label %457, label %459, !dbg !1765

; <label>:457:                                    ; preds = %455
  %458 = getelementptr inbounds i8, i8* %0, i64 %442, !dbg !1767
  store i8 39, i8* %458, align 1, !dbg !1767, !tbaa !727
  br label %459, !dbg !1767

; <label>:459:                                    ; preds = %457, %455
  %460 = add i64 %442, 1, !dbg !1769
  call void @llvm.dbg.value(metadata i64 %460, i64 0, metadata !1194, metadata !640), !dbg !1254
  %461 = icmp ult i64 %460, %131, !dbg !1771
  br i1 %461, label %462, label %464, !dbg !1775

; <label>:462:                                    ; preds = %459
  %463 = getelementptr inbounds i8, i8* %0, i64 %460, !dbg !1777
  store i8 39, i8* %463, align 1, !dbg !1777, !tbaa !727
  br label %464, !dbg !1777

; <label>:464:                                    ; preds = %462, %459
  %465 = add i64 %442, 2, !dbg !1779
  call void @llvm.dbg.value(metadata i64 %465, i64 0, metadata !1194, metadata !640), !dbg !1254
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1201, metadata !640), !dbg !1262
  br label %466, !dbg !1781

; <label>:466:                                    ; preds = %449, %464
  %467 = phi i64 [ %465, %464 ], [ %442, %449 ]
  %468 = phi i8 [ 0, %464 ], [ %443, %449 ]
  call void @llvm.dbg.value(metadata i8 %468, i64 0, metadata !1201, metadata !640), !dbg !1262
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !1194, metadata !640), !dbg !1254
  %469 = icmp ult i64 %467, %131, !dbg !1783
  br i1 %469, label %470, label %472, !dbg !1787

; <label>:470:                                    ; preds = %466
  %471 = getelementptr inbounds i8, i8* %0, i64 %467, !dbg !1789
  store i8 %444, i8* %471, align 1, !dbg !1789, !tbaa !727
  br label %472, !dbg !1789

; <label>:472:                                    ; preds = %470, %466
  %473 = add i64 %467, 1, !dbg !1791
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !1194, metadata !640), !dbg !1254
  call void @llvm.dbg.value(metadata i64 %447, i64 0, metadata !1193, metadata !640), !dbg !1329
  %474 = getelementptr inbounds i8, i8* %2, i64 %447, !dbg !1793
  %475 = load i8, i8* %474, align 1, !dbg !1793, !tbaa !727
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !1204, metadata !640), !dbg !1360
  br label %379, !dbg !1794, !llvm.loop !1796

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
  call void @llvm.dbg.value(metadata i64 %486, i64 0, metadata !1185, metadata !640), !dbg !1246
  call void @llvm.dbg.value(metadata i8 %485, i64 0, metadata !1211, metadata !640), !dbg !1343
  call void @llvm.dbg.value(metadata i8 %484, i64 0, metadata !1210, metadata !640), !dbg !1342
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !1209, metadata !640), !dbg !1341
  call void @llvm.dbg.value(metadata i8 %483, i64 0, metadata !1204, metadata !640), !dbg !1360
  call void @llvm.dbg.value(metadata i8 %482, i64 0, metadata !1202, metadata !640), !dbg !1263
  call void @llvm.dbg.value(metadata i8 %481, i64 0, metadata !1201, metadata !640), !dbg !1262
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !1187, metadata !640), !dbg !1248
  call void @llvm.dbg.value(metadata i64 %479, i64 0, metadata !1195, metadata !640), !dbg !1255
  call void @llvm.dbg.value(metadata i64 %478, i64 0, metadata !1194, metadata !640), !dbg !1254
  call void @llvm.dbg.value(metadata i64 %477, i64 0, metadata !1193, metadata !640), !dbg !1329
  br i1 %107, label %488, label %487, !dbg !1799

; <label>:487:                                    ; preds = %476
  br i1 %117, label %489, label %501, !dbg !1801

; <label>:488:                                    ; preds = %476
  br i1 %20, label %501, label %489, !dbg !1802

; <label>:489:                                    ; preds = %488, %487
  %490 = lshr i8 %483, 5, !dbg !1803
  %491 = zext i8 %490 to i64, !dbg !1803
  %492 = getelementptr inbounds i32, i32* %6, i64 %491, !dbg !1805
  %493 = load i32, i32* %492, align 4, !dbg !1805, !tbaa !716
  %494 = and i8 %483, 31, !dbg !1806
  %495 = zext i8 %494 to i32, !dbg !1807
  %496 = shl i32 1, %495, !dbg !1808
  %497 = and i32 %493, %496, !dbg !1808
  %498 = icmp eq i32 %497, 0, !dbg !1808
  %499 = icmp eq i8 %157, 0, !dbg !1809
  %500 = and i1 %499, %498, !dbg !1810
  br i1 %500, label %542, label %503, !dbg !1810

; <label>:501:                                    ; preds = %488, %487
  %502 = icmp eq i8 %157, 0, !dbg !1809
  br i1 %502, label %542, label %503, !dbg !1811

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
  call void @llvm.dbg.value(metadata i64 %512, i64 0, metadata !1185, metadata !640), !dbg !1246
  call void @llvm.dbg.value(metadata i8 %511, i64 0, metadata !1211, metadata !640), !dbg !1343
  call void @llvm.dbg.value(metadata i8 %510, i64 0, metadata !1204, metadata !640), !dbg !1360
  call void @llvm.dbg.value(metadata i8 %509, i64 0, metadata !1202, metadata !640), !dbg !1263
  call void @llvm.dbg.value(metadata i8 %508, i64 0, metadata !1201, metadata !640), !dbg !1262
  call void @llvm.dbg.value(metadata i64 %507, i64 0, metadata !1187, metadata !640), !dbg !1248
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !1195, metadata !640), !dbg !1255
  call void @llvm.dbg.value(metadata i64 %505, i64 0, metadata !1194, metadata !640), !dbg !1254
  call void @llvm.dbg.value(metadata i64 %504, i64 0, metadata !1193, metadata !640), !dbg !1329
  br i1 %112, label %513, label %644, !dbg !1813

; <label>:513:                                    ; preds = %503
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1210, metadata !640), !dbg !1342
  %514 = and i8 %508, 1, !dbg !1816
  %515 = icmp eq i8 %514, 0, !dbg !1816
  %516 = and i1 %114, %515, !dbg !1819
  br i1 %516, label %517, label %533, !dbg !1819

; <label>:517:                                    ; preds = %513
  %518 = icmp ult i64 %505, %512, !dbg !1821
  br i1 %518, label %519, label %521, !dbg !1826

; <label>:519:                                    ; preds = %517
  %520 = getelementptr inbounds i8, i8* %0, i64 %505, !dbg !1828
  store i8 39, i8* %520, align 1, !dbg !1828, !tbaa !727
  br label %521, !dbg !1828

; <label>:521:                                    ; preds = %519, %517
  %522 = add i64 %505, 1, !dbg !1830
  call void @llvm.dbg.value(metadata i64 %522, i64 0, metadata !1194, metadata !640), !dbg !1254
  %523 = icmp ult i64 %522, %512, !dbg !1832
  br i1 %523, label %524, label %526, !dbg !1836

; <label>:524:                                    ; preds = %521
  %525 = getelementptr inbounds i8, i8* %0, i64 %522, !dbg !1838
  store i8 36, i8* %525, align 1, !dbg !1838, !tbaa !727
  br label %526, !dbg !1838

; <label>:526:                                    ; preds = %524, %521
  %527 = add i64 %505, 2, !dbg !1840
  call void @llvm.dbg.value(metadata i64 %527, i64 0, metadata !1194, metadata !640), !dbg !1254
  %528 = icmp ult i64 %527, %512, !dbg !1842
  br i1 %528, label %529, label %531, !dbg !1846

; <label>:529:                                    ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527, !dbg !1848
  store i8 39, i8* %530, align 1, !dbg !1848, !tbaa !727
  br label %531, !dbg !1848

; <label>:531:                                    ; preds = %529, %526
  %532 = add i64 %505, 3, !dbg !1850
  call void @llvm.dbg.value(metadata i64 %532, i64 0, metadata !1194, metadata !640), !dbg !1254
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1201, metadata !640), !dbg !1262
  br label %533, !dbg !1852

; <label>:533:                                    ; preds = %513, %531
  %534 = phi i64 [ %532, %531 ], [ %505, %513 ]
  %535 = phi i8 [ 1, %531 ], [ %508, %513 ]
  call void @llvm.dbg.value(metadata i8 %535, i64 0, metadata !1201, metadata !640), !dbg !1262
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !1194, metadata !640), !dbg !1254
  %536 = icmp ult i64 %534, %512, !dbg !1854
  br i1 %536, label %537, label %539, !dbg !1858

; <label>:537:                                    ; preds = %533
  %538 = getelementptr inbounds i8, i8* %0, i64 %534, !dbg !1860
  store i8 92, i8* %538, align 1, !dbg !1860, !tbaa !727
  br label %539, !dbg !1860

; <label>:539:                                    ; preds = %533, %537
  %540 = add i64 %534, 1, !dbg !1862
  call void @llvm.dbg.value(metadata i64 %540, i64 0, metadata !1194, metadata !640), !dbg !1254
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !1185, metadata !640), !dbg !1246
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !1211, metadata !640), !dbg !1343
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !1210, metadata !640), !dbg !1342
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !1204, metadata !640), !dbg !1360
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !1202, metadata !640), !dbg !1263
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !1201, metadata !640), !dbg !1262
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !1187, metadata !640), !dbg !1248
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1195, metadata !640), !dbg !1255
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !1194, metadata !640), !dbg !1254
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !1193, metadata !640), !dbg !1329
  br label %569, !dbg !1864

; <label>:541:                                    ; preds = %441
  br label %542, !dbg !1246

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
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !1185, metadata !640), !dbg !1246
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !1211, metadata !640), !dbg !1343
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !1210, metadata !640), !dbg !1342
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !1204, metadata !640), !dbg !1360
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !1202, metadata !640), !dbg !1263
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !1201, metadata !640), !dbg !1262
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !1187, metadata !640), !dbg !1248
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1195, metadata !640), !dbg !1255
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !1194, metadata !640), !dbg !1254
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !1193, metadata !640), !dbg !1329
  %553 = and i8 %547, 1, !dbg !1864
  %554 = icmp ne i8 %553, 0, !dbg !1864
  %555 = and i8 %550, 1, !dbg !1868
  %556 = icmp eq i8 %555, 0, !dbg !1868
  %557 = and i1 %554, %556, !dbg !1864
  br i1 %557, label %558, label %569, !dbg !1864

; <label>:558:                                    ; preds = %542
  %559 = icmp ult i64 %544, %552, !dbg !1870
  br i1 %559, label %560, label %562, !dbg !1875

; <label>:560:                                    ; preds = %558
  %561 = getelementptr inbounds i8, i8* %0, i64 %544, !dbg !1877
  store i8 39, i8* %561, align 1, !dbg !1877, !tbaa !727
  br label %562, !dbg !1877

; <label>:562:                                    ; preds = %560, %558
  %563 = add i64 %544, 1, !dbg !1879
  call void @llvm.dbg.value(metadata i64 %563, i64 0, metadata !1194, metadata !640), !dbg !1254
  %564 = icmp ult i64 %563, %552, !dbg !1881
  br i1 %564, label %565, label %567, !dbg !1885

; <label>:565:                                    ; preds = %562
  %566 = getelementptr inbounds i8, i8* %0, i64 %563, !dbg !1887
  store i8 39, i8* %566, align 1, !dbg !1887, !tbaa !727
  br label %567, !dbg !1887

; <label>:567:                                    ; preds = %565, %562
  %568 = add i64 %544, 2, !dbg !1889
  call void @llvm.dbg.value(metadata i64 %568, i64 0, metadata !1194, metadata !640), !dbg !1254
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1201, metadata !640), !dbg !1262
  br label %569, !dbg !1891

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
  call void @llvm.dbg.value(metadata i8 %578, i64 0, metadata !1201, metadata !640), !dbg !1262
  call void @llvm.dbg.value(metadata i64 %577, i64 0, metadata !1194, metadata !640), !dbg !1254
  %579 = icmp ult i64 %577, %570, !dbg !1893
  br i1 %579, label %580, label %582, !dbg !1897

; <label>:580:                                    ; preds = %569
  %581 = getelementptr inbounds i8, i8* %0, i64 %577, !dbg !1899
  store i8 %572, i8* %581, align 1, !dbg !1899, !tbaa !727
  br label %582, !dbg !1899

; <label>:582:                                    ; preds = %580, %569
  %583 = add i64 %577, 1, !dbg !1901
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !1194, metadata !640), !dbg !1254
  %584 = and i8 %571, 1, !dbg !1903
  %585 = icmp eq i8 %584, 0, !dbg !1903
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1203, metadata !640), !dbg !1264
  %586 = select i1 %585, i8 0, i8 %130, !dbg !1905
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !1203, metadata !640), !dbg !1264
  br label %587, !dbg !1906

; <label>:587:                                    ; preds = %582, %209
  %588 = phi i64 [ %124, %209 ], [ %576, %582 ]
  %589 = phi i64 [ %125, %209 ], [ %583, %582 ]
  %590 = phi i64 [ %126, %209 ], [ %575, %582 ]
  %591 = phi i64 [ %156, %209 ], [ %574, %582 ]
  %592 = phi i8 [ %128, %209 ], [ %578, %582 ]
  %593 = phi i8 [ %129, %209 ], [ %573, %582 ]
  %594 = phi i8 [ %130, %209 ], [ %586, %582 ]
  %595 = phi i64 [ %131, %209 ], [ %570, %582 ]
  %596 = add i64 %588, 1, !dbg !1907
  call void @llvm.dbg.value(metadata i64 %596, i64 0, metadata !1193, metadata !640), !dbg !1329
  br label %123, !dbg !1909, !llvm.loop !1910

; <label>:597:                                    ; preds = %133, %135
  %598 = phi i64 [ %124, %133 ], [ -1, %135 ]
  %599 = icmp eq i64 %125, 0, !dbg !1913
  %600 = and i1 %114, %599, !dbg !1915
  %601 = xor i1 %600, true, !dbg !1915
  %602 = or i1 %112, %601, !dbg !1915
  br i1 %602, label %603, label %648, !dbg !1915

; <label>:603:                                    ; preds = %597
  %604 = and i1 %114, %112, !dbg !1916
  %605 = xor i1 %604, true, !dbg !1916
  %606 = and i8 %129, 1, !dbg !1918
  %607 = icmp eq i8 %606, 0, !dbg !1918
  %608 = or i1 %607, %605, !dbg !1916
  br i1 %608, label %618, label %609, !dbg !1916

; <label>:609:                                    ; preds = %603
  %610 = and i8 %130, 1, !dbg !1920
  %611 = icmp eq i8 %610, 0, !dbg !1920
  br i1 %611, label %614, label %612, !dbg !1923

; <label>:612:                                    ; preds = %609
  %613 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %126, i8* %2, i64 %598, i32 5, i32 %5, i32* %6, i8* %97, i8* %98), !dbg !1924
  br label %659, !dbg !1925

; <label>:614:                                    ; preds = %609
  %615 = icmp eq i64 %131, 0, !dbg !1926
  %616 = icmp ne i64 %126, 0, !dbg !1928
  %617 = and i1 %616, %615, !dbg !1930
  br i1 %617, label %27, label %618, !dbg !1930

; <label>:618:                                    ; preds = %603, %614
  %619 = icmp ne i8* %100, null, !dbg !1931
  %620 = and i1 %619, %112, !dbg !1933
  br i1 %620, label %621, label %638, !dbg !1933

; <label>:621:                                    ; preds = %618
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !1196, metadata !640), !dbg !1256
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1194, metadata !640), !dbg !1254
  %622 = load i8, i8* %100, align 1, !dbg !1934, !tbaa !727
  %623 = icmp eq i8 %622, 0, !dbg !1938
  br i1 %623, label %638, label %624, !dbg !1938

; <label>:624:                                    ; preds = %621
  br label %625, !dbg !1940

; <label>:625:                                    ; preds = %624, %632
  %626 = phi i8 [ %635, %632 ], [ %622, %624 ]
  %627 = phi i8* [ %634, %632 ], [ %100, %624 ]
  %628 = phi i64 [ %633, %632 ], [ %125, %624 ]
  %629 = icmp ult i64 %628, %131, !dbg !1940
  br i1 %629, label %630, label %632, !dbg !1944

; <label>:630:                                    ; preds = %625
  %631 = getelementptr inbounds i8, i8* %0, i64 %628, !dbg !1946
  store i8 %626, i8* %631, align 1, !dbg !1946, !tbaa !727
  br label %632, !dbg !1946

; <label>:632:                                    ; preds = %630, %625
  %633 = add i64 %628, 1, !dbg !1948
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !1194, metadata !640), !dbg !1254
  %634 = getelementptr inbounds i8, i8* %627, i64 1, !dbg !1950
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !1196, metadata !640), !dbg !1256
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !1196, metadata !640), !dbg !1256
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !1194, metadata !640), !dbg !1254
  %635 = load i8, i8* %634, align 1, !dbg !1934, !tbaa !727
  %636 = icmp eq i8 %635, 0, !dbg !1938
  br i1 %636, label %637, label %625, !dbg !1938, !llvm.loop !1952

; <label>:637:                                    ; preds = %632
  br label %638, !dbg !1254

; <label>:638:                                    ; preds = %637, %621, %618
  %639 = phi i64 [ %125, %618 ], [ %125, %621 ], [ %633, %637 ]
  call void @llvm.dbg.value(metadata i64 %639, i64 0, metadata !1194, metadata !640), !dbg !1254
  %640 = icmp ult i64 %639, %131, !dbg !1955
  br i1 %640, label %641, label %659, !dbg !1957

; <label>:641:                                    ; preds = %638
  %642 = getelementptr inbounds i8, i8* %0, i64 %639, !dbg !1958
  store i8 0, i8* %642, align 1, !dbg !1959, !tbaa !727
  br label %659, !dbg !1958

; <label>:643:                                    ; preds = %386
  br label %649, !dbg !1246

; <label>:644:                                    ; preds = %148, %161, %211, %225, %253, %255, %273, %276, %503
  %645 = phi i32 [ %96, %148 ], [ %96, %161 ], [ 2, %211 ], [ 5, %225 ], [ 2, %253 ], [ 2, %255 ], [ 2, %273 ], [ 2, %276 ], [ %96, %503 ]
  %646 = phi i64 [ %146, %148 ], [ %156, %161 ], [ %156, %211 ], [ %156, %225 ], [ %156, %253 ], [ %156, %255 ], [ %156, %273 ], [ %156, %276 ], [ %507, %503 ]
  %647 = phi i64 [ %131, %148 ], [ %131, %161 ], [ %131, %211 ], [ %131, %225 ], [ %131, %253 ], [ %131, %255 ], [ %131, %273 ], [ %131, %276 ], [ %512, %503 ]
  br label %649, !dbg !1246

; <label>:648:                                    ; preds = %597
  br label %649, !dbg !1246

; <label>:649:                                    ; preds = %648, %644, %643, %367
  %650 = phi i32 [ 2, %367 ], [ %96, %643 ], [ %645, %644 ], [ %96, %648 ]
  %651 = phi i64 [ %313, %367 ], [ %369, %643 ], [ %646, %644 ], [ %598, %648 ]
  %652 = phi i64 [ %131, %367 ], [ %131, %643 ], [ %647, %644 ], [ %131, %648 ]
  call void @llvm.dbg.value(metadata i64 %652, i64 0, metadata !1185, metadata !640), !dbg !1246
  call void @llvm.dbg.value(metadata i64 %651, i64 0, metadata !1187, metadata !640), !dbg !1248
  %653 = icmp ne i32 %650, 2, !dbg !1960
  %654 = icmp eq i8 %104, 0, !dbg !1962
  %655 = or i1 %653, %654, !dbg !1964
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !1188, metadata !640), !dbg !1249
  %656 = select i1 %655, i32 %650, i32 4, !dbg !1964
  call void @llvm.dbg.value(metadata i32 %656, i64 0, metadata !1188, metadata !640), !dbg !1249
  %657 = and i32 %5, -3, !dbg !1965
  %658 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %652, i8* %2, i64 %651, i32 %656, i32 %657, i32* null, i8* %97, i8* %98), !dbg !1966
  br label %659, !dbg !1967

; <label>:659:                                    ; preds = %638, %641, %649, %612
  %660 = phi i64 [ %658, %649 ], [ %613, %612 ], [ %639, %641 ], [ %639, %638 ]
  ret i64 %660, !dbg !1968
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !1969 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1973, metadata !640), !dbg !1977
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1974, metadata !640), !dbg !1978
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #10, !dbg !1979
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !1975, metadata !640), !dbg !1980
  %4 = icmp eq i8* %3, %0, !dbg !1981
  br i1 %4, label %5, label %75, !dbg !1983

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #10, !dbg !1984
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !1976, metadata !640), !dbg !1985
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1986, metadata !640), !dbg !2002
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2000, metadata !640), !dbg !2005
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2001, metadata !640), !dbg !2006
  %7 = load i8, i8* %6, align 1, !tbaa !727
  %8 = sext i8 %7 to i32
  %9 = and i32 %8, -33, !dbg !2007
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !2007

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2010, metadata !640), !dbg !2024
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2022, metadata !640), !dbg !2028
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2023, metadata !640), !dbg !2029
  %11 = getelementptr inbounds i8, i8* %6, i64 1
  %12 = load i8, i8* %11, align 1, !tbaa !727
  %13 = sext i8 %12 to i32
  %14 = and i32 %13, -33, !dbg !2030
  %15 = icmp eq i32 %14, 84, !dbg !2030
  br i1 %15, label %16, label %72, !dbg !2030

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2033, metadata !640), !dbg !2046
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2044, metadata !640), !dbg !2050
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2045, metadata !640), !dbg !2051
  %17 = getelementptr inbounds i8, i8* %6, i64 2
  %18 = load i8, i8* %17, align 1, !tbaa !727
  %19 = sext i8 %18 to i32
  %20 = and i32 %19, -33, !dbg !2052
  %21 = icmp eq i32 %20, 70, !dbg !2052
  br i1 %21, label %22, label %72, !dbg !2052

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2055, metadata !640), !dbg !2067
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2065, metadata !640), !dbg !2071
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2066, metadata !640), !dbg !2072
  %23 = getelementptr inbounds i8, i8* %6, i64 3
  %24 = load i8, i8* %23, align 1, !tbaa !727
  %25 = icmp eq i8 %24, 45, !dbg !2073
  br i1 %25, label %26, label %72, !dbg !2076

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2078, metadata !640), !dbg !2089
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2087, metadata !640), !dbg !2093
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2088, metadata !640), !dbg !2094
  %27 = getelementptr inbounds i8, i8* %6, i64 4
  %28 = load i8, i8* %27, align 1, !tbaa !727
  %29 = icmp eq i8 %28, 56, !dbg !2095
  br i1 %29, label %30, label %72, !dbg !2098

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2100, metadata !640), !dbg !2110
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2108, metadata !640), !dbg !2114
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2109, metadata !640), !dbg !2115
  %31 = getelementptr inbounds i8, i8* %6, i64 5
  %32 = load i8, i8* %31, align 1, !tbaa !727
  %33 = icmp eq i8 %32, 0, !dbg !2116
  br i1 %33, label %34, label %72, !dbg !2119

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !2121, !tbaa !727
  %36 = icmp eq i8 %35, 96, !dbg !2122
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.55, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.56, i64 0, i64 0), !dbg !2121
  br label %75, !dbg !2123

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2010, metadata !640), !dbg !2124
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2022, metadata !640), !dbg !2128
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2023, metadata !640), !dbg !2129
  %39 = getelementptr inbounds i8, i8* %6, i64 1
  %40 = load i8, i8* %39, align 1, !tbaa !727
  %41 = sext i8 %40 to i32
  %42 = and i32 %41, -33, !dbg !2130
  %43 = icmp eq i32 %42, 66, !dbg !2130
  br i1 %43, label %44, label %72, !dbg !2130

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2033, metadata !640), !dbg !2131
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2044, metadata !640), !dbg !2133
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2045, metadata !640), !dbg !2134
  %45 = getelementptr inbounds i8, i8* %6, i64 2
  %46 = load i8, i8* %45, align 1, !tbaa !727
  %47 = icmp eq i8 %46, 49, !dbg !2135
  br i1 %47, label %48, label %72, !dbg !2137

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2055, metadata !640), !dbg !2139
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2065, metadata !640), !dbg !2141
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2066, metadata !640), !dbg !2142
  %49 = getelementptr inbounds i8, i8* %6, i64 3
  %50 = load i8, i8* %49, align 1, !tbaa !727
  %51 = icmp eq i8 %50, 56, !dbg !2143
  br i1 %51, label %52, label %72, !dbg !2144

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2078, metadata !640), !dbg !2145
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2087, metadata !640), !dbg !2147
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2088, metadata !640), !dbg !2148
  %53 = getelementptr inbounds i8, i8* %6, i64 4
  %54 = load i8, i8* %53, align 1, !tbaa !727
  %55 = icmp eq i8 %54, 48, !dbg !2149
  br i1 %55, label %56, label %72, !dbg !2150

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2100, metadata !640), !dbg !2151
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2108, metadata !640), !dbg !2153
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2109, metadata !640), !dbg !2154
  %57 = getelementptr inbounds i8, i8* %6, i64 5
  %58 = load i8, i8* %57, align 1, !tbaa !727
  %59 = icmp eq i8 %58, 51, !dbg !2155
  br i1 %59, label %60, label %72, !dbg !2156

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2157, metadata !640), !dbg !2166
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2164, metadata !640), !dbg !2170
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2165, metadata !640), !dbg !2171
  %61 = getelementptr inbounds i8, i8* %6, i64 6
  %62 = load i8, i8* %61, align 1, !tbaa !727
  %63 = icmp eq i8 %62, 48, !dbg !2172
  br i1 %63, label %64, label %72, !dbg !2175

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2177, metadata !640), !dbg !2185
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2183, metadata !640), !dbg !2189
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2184, metadata !640), !dbg !2190
  %65 = getelementptr inbounds i8, i8* %6, i64 7
  %66 = load i8, i8* %65, align 1, !tbaa !727
  %67 = icmp eq i8 %66, 0, !dbg !2191
  br i1 %67, label %68, label %72, !dbg !2194

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !2195, !tbaa !727
  %70 = icmp eq i8 %69, 96, !dbg !2196
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.57, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.58, i64 0, i64 0), !dbg !2195
  br label %75, !dbg !2197

; <label>:72:                                     ; preds = %5, %30, %26, %22, %16, %10, %64, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !2198
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.54, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.53, i64 0, i64 0), !dbg !2199
  br label %75, !dbg !2200

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !2201
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
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2202 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2206, metadata !640), !dbg !2209
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2207, metadata !640), !dbg !2210
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2208, metadata !640), !dbg !2211
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2212, metadata !640) #10, !dbg !2225
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2217, metadata !640) #10, !dbg !2227
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !2218, metadata !640) #10, !dbg !2228
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2219, metadata !640) #10, !dbg !2229
  %4 = icmp ne %struct.quoting_options* %2, null, !dbg !2230
  %5 = select i1 %4, %struct.quoting_options* %2, %struct.quoting_options* @default_quoting_options, !dbg !2230
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2220, metadata !640) #10, !dbg !2231
  %6 = tail call i32* @__errno_location() #1, !dbg !2232
  %7 = load i32, i32* %6, align 4, !dbg !2232, !tbaa !716
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !2221, metadata !640) #10, !dbg !2233
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2234
  %9 = load i32, i32* %8, align 4, !dbg !2234, !tbaa !1116
  %10 = or i32 %9, 1, !dbg !2235
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2222, metadata !640) #10, !dbg !2236
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2237
  %12 = load i32, i32* %11, align 8, !dbg !2237, !tbaa !1054
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2238
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2239
  %15 = load i8*, i8** %14, align 8, !dbg !2239, !tbaa !1143
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2240
  %17 = load i8*, i8** %16, align 8, !dbg !2240, !tbaa !1146
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #10, !dbg !2241
  %19 = add i64 %18, 1, !dbg !2242
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2223, metadata !640) #10, !dbg !2243
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2244, metadata !640) #10, !dbg !2249
  %20 = tail call noalias i8* @xmalloc(i64 %19) #10, !dbg !2251
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !2224, metadata !640) #10, !dbg !2252
  %21 = load i32, i32* %11, align 8, !dbg !2253, !tbaa !1054
  %22 = load i8*, i8** %14, align 8, !dbg !2254, !tbaa !1143
  %23 = load i8*, i8** %16, align 8, !dbg !2255, !tbaa !1146
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #10, !dbg !2256
  store i32 %7, i32* %6, align 4, !dbg !2257, !tbaa !716
  ret i8* %20, !dbg !2258
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2213 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2212, metadata !640), !dbg !2259
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2217, metadata !640), !dbg !2260
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !2218, metadata !640), !dbg !2261
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2219, metadata !640), !dbg !2262
  %5 = icmp ne %struct.quoting_options* %3, null, !dbg !2263
  %6 = select i1 %5, %struct.quoting_options* %3, %struct.quoting_options* @default_quoting_options, !dbg !2263
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2220, metadata !640), !dbg !2264
  %7 = tail call i32* @__errno_location() #1, !dbg !2265
  %8 = load i32, i32* %7, align 4, !dbg !2265, !tbaa !716
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !2221, metadata !640), !dbg !2266
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2267
  %10 = load i32, i32* %9, align 4, !dbg !2267, !tbaa !1116
  %11 = icmp ne i64* %2, null, !dbg !2268
  %12 = xor i1 %11, true, !dbg !2268
  %13 = zext i1 %12 to i32, !dbg !2268
  %14 = or i32 %10, %13, !dbg !2269
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !2222, metadata !640), !dbg !2270
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2271
  %16 = load i32, i32* %15, align 8, !dbg !2271, !tbaa !1054
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2272
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2273
  %19 = load i8*, i8** %18, align 8, !dbg !2273, !tbaa !1143
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2274
  %21 = load i8*, i8** %20, align 8, !dbg !2274, !tbaa !1146
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !2275
  %23 = add i64 %22, 1, !dbg !2276
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2223, metadata !640), !dbg !2277
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2244, metadata !640) #10, !dbg !2278
  %24 = tail call noalias i8* @xmalloc(i64 %23) #10, !dbg !2280
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !2224, metadata !640), !dbg !2281
  %25 = load i32, i32* %15, align 8, !dbg !2282, !tbaa !1054
  %26 = load i8*, i8** %18, align 8, !dbg !2283, !tbaa !1143
  %27 = load i8*, i8** %20, align 8, !dbg !2284, !tbaa !1146
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !2285
  store i32 %8, i32* %7, align 4, !dbg !2286, !tbaa !716
  br i1 %11, label %29, label %30, !dbg !2287

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2288, !tbaa !776
  br label %30, !dbg !2290

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !2291
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !2292 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2296, !tbaa !648
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !2294, metadata !640), !dbg !2297
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2295, metadata !640), !dbg !2298
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2295, metadata !640), !dbg !2298
  %2 = load i32, i32* @nslots, align 4, !dbg !2299, !tbaa !716
  %3 = icmp sgt i32 %2, 1, !dbg !2303
  br i1 %3, label %4, label %14, !dbg !2304

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !2306

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !2306
  %8 = load i8*, i8** %7, align 8, !dbg !2306, !tbaa !2307
  tail call void @free(i8* %8) #10, !dbg !2309
  %9 = add nuw i64 %6, 1, !dbg !2310
  %10 = load i32, i32* @nslots, align 4, !dbg !2299, !tbaa !716
  %11 = sext i32 %10 to i64, !dbg !2303
  %12 = icmp slt i64 %9, %11, !dbg !2303
  br i1 %12, label %5, label %13, !dbg !2304, !llvm.loop !2312

; <label>:13:                                     ; preds = %5
  br label %14, !dbg !2315

; <label>:14:                                     ; preds = %13, %0
  %15 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2315
  %16 = load i8*, i8** %15, align 8, !dbg !2315, !tbaa !2307
  %17 = icmp eq i8* %16, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2317
  br i1 %17, label %19, label %18, !dbg !2318

; <label>:18:                                     ; preds = %14
  tail call void @free(i8* %16) #10, !dbg !2319
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2321, !tbaa !2322
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2323, !tbaa !2307
  br label %19, !dbg !2324

; <label>:19:                                     ; preds = %14, %18
  %20 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2325
  br i1 %20, label %23, label %21, !dbg !2327

; <label>:21:                                     ; preds = %19
  %22 = bitcast %struct.slotvec* %1 to i8*, !dbg !2328
  tail call void @free(i8* %22) #10, !dbg !2330
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2331, !tbaa !648
  br label %23, !dbg !2332

; <label>:23:                                     ; preds = %19, %21
  store i32 1, i32* @nslots, align 4, !dbg !2333, !tbaa !716
  ret void, !dbg !2334
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !2335 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2339, metadata !640), !dbg !2341
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2340, metadata !640), !dbg !2342
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2343
  ret i8* %3, !dbg !2344
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !2345 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2349, metadata !640), !dbg !2363
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2350, metadata !640), !dbg !2364
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2351, metadata !640), !dbg !2365
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2352, metadata !640), !dbg !2366
  %5 = tail call i32* @__errno_location() #1, !dbg !2367
  %6 = load i32, i32* %5, align 4, !dbg !2367, !tbaa !716
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !2353, metadata !640), !dbg !2368
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2369, !tbaa !648
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !2354, metadata !640), !dbg !2370
  %8 = icmp slt i32 %0, 0, !dbg !2371
  br i1 %8, label %9, label %10, !dbg !2373

; <label>:9:                                      ; preds = %4
  tail call void @abort() #14, !dbg !2374
  unreachable, !dbg !2374

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2375, !tbaa !716
  %12 = icmp sgt i32 %11, %0, !dbg !2376
  br i1 %12, label %34, label %13, !dbg !2377

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2378
  %15 = icmp ugt i32 %0, 2147483646, !dbg !2379
  br i1 %15, label %16, label %17, !dbg !2381

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !2382
  unreachable, !dbg !2382

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !2383
  %19 = select i1 %14, i8* null, i8* %18, !dbg !2383
  %20 = add nsw i32 %0, 1, !dbg !2385
  %21 = sext i32 %20 to i64, !dbg !2386
  %22 = shl nsw i64 %21, 4, !dbg !2387
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #10, !dbg !2388
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2388
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !2354, metadata !640), !dbg !2370
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2389, !tbaa !648
  br i1 %14, label %25, label %26, !dbg !2390

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !2391, !tbaa.struct !2393
  br label %26, !dbg !2394

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2395, !tbaa !716
  %28 = sext i32 %27 to i64, !dbg !2396
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2396
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2397
  %31 = sub nsw i32 %20, %27, !dbg !2398
  %32 = sext i32 %31 to i64, !dbg !2399
  %33 = shl nsw i64 %32, 4, !dbg !2400
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !2397
  store i32 %20, i32* @nslots, align 4, !dbg !2401, !tbaa !716
  br label %34, !dbg !2402

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !2354, metadata !640), !dbg !2370
  %36 = sext i32 %0 to i64, !dbg !2403
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2404
  %38 = load i64, i64* %37, align 8, !dbg !2404, !tbaa !2322
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !2358, metadata !640), !dbg !2405
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2406
  %40 = load i8*, i8** %39, align 8, !dbg !2406, !tbaa !2307
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !2360, metadata !640), !dbg !2407
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2408
  %42 = load i32, i32* %41, align 4, !dbg !2408, !tbaa !1116
  %43 = or i32 %42, 1, !dbg !2409
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !2361, metadata !640), !dbg !2410
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2411
  %45 = load i32, i32* %44, align 8, !dbg !2411, !tbaa !1054
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2412
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2413
  %48 = load i8*, i8** %47, align 8, !dbg !2413, !tbaa !1143
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2414
  %50 = load i8*, i8** %49, align 8, !dbg !2414, !tbaa !1146
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !2415
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !2362, metadata !640), !dbg !2416
  %52 = icmp ugt i64 %38, %51, !dbg !2417
  br i1 %52, label %63, label %53, !dbg !2419

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !2420
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2358, metadata !640), !dbg !2405
  store i64 %54, i64* %37, align 8, !dbg !2422, !tbaa !2322
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2423
  br i1 %55, label %57, label %56, !dbg !2425

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #10, !dbg !2426
  br label %57, !dbg !2426

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2244, metadata !640) #10, !dbg !2427
  %58 = tail call noalias i8* @xmalloc(i64 %54) #10, !dbg !2429
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !2360, metadata !640), !dbg !2407
  store i8* %58, i8** %39, align 8, !dbg !2430, !tbaa !2307
  %59 = load i32, i32* %44, align 8, !dbg !2431, !tbaa !1054
  %60 = load i8*, i8** %47, align 8, !dbg !2432, !tbaa !1143
  %61 = load i8*, i8** %49, align 8, !dbg !2433, !tbaa !1146
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !2434
  br label %63, !dbg !2435

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !2360, metadata !640), !dbg !2407
  store i32 %6, i32* %5, align 4, !dbg !2436, !tbaa !716
  ret i8* %64, !dbg !2437
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #7

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2438 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2442, metadata !640), !dbg !2445
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2443, metadata !640), !dbg !2446
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2444, metadata !640), !dbg !2447
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2448
  ret i8* %4, !dbg !2449
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !2450 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2454, metadata !640), !dbg !2455
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2339, metadata !640) #10, !dbg !2456
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2340, metadata !640) #10, !dbg !2458
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2459
  ret i8* %2, !dbg !2460
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !2461 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2465, metadata !640), !dbg !2467
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2466, metadata !640), !dbg !2468
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2442, metadata !640) #10, !dbg !2469
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2443, metadata !640) #10, !dbg !2471
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2444, metadata !640) #10, !dbg !2472
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2473
  ret i8* %3, !dbg !2474
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !2475 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2483, metadata !2489), !dbg !2490
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2479, metadata !640), !dbg !2492
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2480, metadata !640), !dbg !2493
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2481, metadata !640), !dbg !2494
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2495
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !2495
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2482, metadata !764), !dbg !2496
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2488, metadata !640) #10, !dbg !2497
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2498
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !2498
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2483, metadata !640) #10, !dbg !2490
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2483, metadata !2499) #10, !dbg !2490
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2490
  %8 = icmp eq i32 %1, 10, !dbg !2500
  br i1 %8, label %9, label %10, !dbg !2502

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14, !dbg !2503, !noalias !2504
  unreachable, !dbg !2503

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2483, metadata !2499) #10, !dbg !2490
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2507
  store i32 %1, i32* %11, align 8, !dbg !2507, !alias.scope !2504
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2507
  %13 = bitcast i32* %12 to i8*, !dbg !2507
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !2507
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !2508
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2482, metadata !764), !dbg !2496
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2509
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !2510
  ret i8* %14, !dbg !2511
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !2512 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2483, metadata !2489), !dbg !2521
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2516, metadata !640), !dbg !2523
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2517, metadata !640), !dbg !2524
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2518, metadata !640), !dbg !2525
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2519, metadata !640), !dbg !2526
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2527
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10, !dbg !2527
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2520, metadata !764), !dbg !2528
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2488, metadata !640) #10, !dbg !2529
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2530
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !2530
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2483, metadata !640) #10, !dbg !2521
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2483, metadata !2499) #10, !dbg !2521
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2521
  %9 = icmp eq i32 %1, 10, !dbg !2531
  br i1 %9, label %10, label %11, !dbg !2532

; <label>:10:                                     ; preds = %4
  tail call void @abort() #14, !dbg !2533, !noalias !2534
  unreachable, !dbg !2533

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2483, metadata !2499) #10, !dbg !2521
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2537
  store i32 %1, i32* %12, align 8, !dbg !2537, !alias.scope !2534
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2537
  %14 = bitcast i32* %13 to i8*, !dbg !2537
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #10, !dbg !2537
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !2538
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2520, metadata !764), !dbg !2528
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !2539
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10, !dbg !2540
  ret i8* %15, !dbg !2541
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !2542 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !2483, metadata !2489), !dbg !2548
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2546, metadata !640), !dbg !2551
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2547, metadata !640), !dbg !2552
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2479, metadata !640) #10, !dbg !2553
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2480, metadata !640) #10, !dbg !2554
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2481, metadata !640) #10, !dbg !2555
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2556
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10, !dbg !2556
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2482, metadata !764) #10, !dbg !2557
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2488, metadata !640) #10, !dbg !2558
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !2559
  call void @llvm.lifetime.start(i64 52, i8* nonnull %6), !dbg !2559
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2483, metadata !640) #10, !dbg !2548
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2483, metadata !2499) #10, !dbg !2548
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !2548
  %7 = icmp eq i32 %0, 10, !dbg !2560
  br i1 %7, label %8, label %9, !dbg !2561

; <label>:8:                                      ; preds = %2
  tail call void @abort() #14, !dbg !2562, !noalias !2563
  unreachable, !dbg !2562

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2483, metadata !2499) #10, !dbg !2548
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2566
  store i32 %0, i32* %10, align 8, !dbg !2566, !alias.scope !2563
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2566
  %12 = bitcast i32* %11 to i8*, !dbg !2566
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #10, !dbg !2566
  call void @llvm.lifetime.end(i64 52, i8* nonnull %6), !dbg !2567
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2482, metadata !764) #10, !dbg !2557
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !2568
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10, !dbg !2569
  ret i8* %13, !dbg !2570
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2571 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2483, metadata !2489), !dbg !2578
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2575, metadata !640), !dbg !2581
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2576, metadata !640), !dbg !2582
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2577, metadata !640), !dbg !2583
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2516, metadata !640) #10, !dbg !2584
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2517, metadata !640) #10, !dbg !2585
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2518, metadata !640) #10, !dbg !2586
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2519, metadata !640) #10, !dbg !2587
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2588
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !2588
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2520, metadata !764) #10, !dbg !2589
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2488, metadata !640) #10, !dbg !2590
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2591
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !2591
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2483, metadata !640) #10, !dbg !2578
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2483, metadata !2499) #10, !dbg !2578
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2578
  %8 = icmp eq i32 %0, 10, !dbg !2592
  br i1 %8, label %9, label %10, !dbg !2593

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14, !dbg !2594, !noalias !2595
  unreachable, !dbg !2594

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2483, metadata !2499) #10, !dbg !2578
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2598
  store i32 %0, i32* %11, align 8, !dbg !2598, !alias.scope !2595
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2598
  %13 = bitcast i32* %12 to i8*, !dbg !2598
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !2598
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !2599
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2520, metadata !764) #10, !dbg !2589
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #10, !dbg !2600
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !2601
  ret i8* %14, !dbg !2602
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !2603 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2607, metadata !640), !dbg !2611
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2608, metadata !640), !dbg !2612
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2609, metadata !640), !dbg !2613
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2614
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10, !dbg !2614
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2615, !tbaa.struct !2616
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2610, metadata !764), !dbg !2617
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1074, metadata !640), !dbg !2618
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1075, metadata !640), !dbg !2620
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1076, metadata !640), !dbg !2621
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1077, metadata !640), !dbg !2622
  %6 = lshr i8 %2, 5, !dbg !2623
  %7 = zext i8 %6 to i64, !dbg !2623
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2624
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1078, metadata !640), !dbg !2625
  %9 = and i8 %2, 31, !dbg !2626
  %10 = zext i8 %9 to i32, !dbg !2627
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1080, metadata !640), !dbg !2628
  %11 = load i32, i32* %8, align 4, !dbg !2629, !tbaa !716
  %12 = lshr i32 %11, %10, !dbg !2630
  %13 = and i32 %12, 1, !dbg !2631
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1081, metadata !640), !dbg !2632
  %14 = xor i32 %13, 1, !dbg !2633
  %15 = shl i32 %14, %10, !dbg !2634
  %16 = xor i32 %15, %11, !dbg !2635
  store i32 %16, i32* %8, align 4, !dbg !2635, !tbaa !716
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2610, metadata !764), !dbg !2617
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2636
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10, !dbg !2637
  ret i8* %17, !dbg !2638
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !2639 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2643, metadata !640), !dbg !2645
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2644, metadata !640), !dbg !2646
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2607, metadata !640) #10, !dbg !2647
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2608, metadata !640) #10, !dbg !2649
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2609, metadata !640) #10, !dbg !2650
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2651
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #10, !dbg !2651
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2652, !tbaa.struct !2616
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2610, metadata !764) #10, !dbg !2653
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1074, metadata !640) #10, !dbg !2654
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1075, metadata !640) #10, !dbg !2656
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1076, metadata !640) #10, !dbg !2657
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1077, metadata !640) #10, !dbg !2658
  %5 = lshr i8 %1, 5, !dbg !2659
  %6 = zext i8 %5 to i64, !dbg !2659
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2660
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !1078, metadata !640) #10, !dbg !2661
  %8 = and i8 %1, 31, !dbg !2662
  %9 = zext i8 %8 to i32, !dbg !2663
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1080, metadata !640) #10, !dbg !2664
  %10 = load i32, i32* %7, align 4, !dbg !2665, !tbaa !716
  %11 = lshr i32 %10, %9, !dbg !2666
  %12 = and i32 %11, 1, !dbg !2667
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !1081, metadata !640) #10, !dbg !2668
  %13 = xor i32 %12, 1, !dbg !2669
  %14 = shl i32 %13, %9, !dbg !2670
  %15 = xor i32 %14, %10, !dbg !2671
  store i32 %15, i32* %7, align 4, !dbg !2671, !tbaa !716
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2610, metadata !764) #10, !dbg !2653
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #10, !dbg !2672
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #10, !dbg !2673
  ret i8* %16, !dbg !2674
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !2675 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2677, metadata !640), !dbg !2678
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2643, metadata !640) #10, !dbg !2679
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2644, metadata !640) #10, !dbg !2681
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2607, metadata !640) #10, !dbg !2682
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2608, metadata !640) #10, !dbg !2684
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2609, metadata !640) #10, !dbg !2685
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2686
  call void @llvm.lifetime.start(i64 56, i8* nonnull %3) #10, !dbg !2686
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2687, !tbaa.struct !2616
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2610, metadata !764) #10, !dbg !2688
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1074, metadata !640) #10, !dbg !2689
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1075, metadata !640) #10, !dbg !2691
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1076, metadata !640) #10, !dbg !2692
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1077, metadata !640) #10, !dbg !2693
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2694
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !1078, metadata !640) #10, !dbg !2695
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1080, metadata !640) #10, !dbg !2696
  %5 = load i32, i32* %4, align 4, !dbg !2697, !tbaa !716
  %6 = or i32 %5, 67108864, !dbg !2698
  store i32 %6, i32* %4, align 4, !dbg !2698, !tbaa !716
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2610, metadata !764) #10, !dbg !2688
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #10, !dbg !2699
  call void @llvm.lifetime.end(i64 56, i8* nonnull %3) #10, !dbg !2700
  ret i8* %7, !dbg !2701
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !2702 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2704, metadata !640), !dbg !2706
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2705, metadata !640), !dbg !2707
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2607, metadata !640) #10, !dbg !2708
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2608, metadata !640) #10, !dbg !2710
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2609, metadata !640) #10, !dbg !2711
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2712
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #10, !dbg !2712
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2713, !tbaa.struct !2616
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2610, metadata !764) #10, !dbg !2714
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1074, metadata !640) #10, !dbg !2715
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1075, metadata !640) #10, !dbg !2717
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1076, metadata !640) #10, !dbg !2718
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1077, metadata !640) #10, !dbg !2719
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2720
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !1078, metadata !640) #10, !dbg !2721
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1080, metadata !640) #10, !dbg !2722
  %6 = load i32, i32* %5, align 4, !dbg !2723, !tbaa !716
  %7 = or i32 %6, 67108864, !dbg !2724
  store i32 %7, i32* %5, align 4, !dbg !2724, !tbaa !716
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2610, metadata !764) #10, !dbg !2714
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #10, !dbg !2725
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #10, !dbg !2726
  ret i8* %8, !dbg !2727
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !2728 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2483, metadata !2489), !dbg !2734
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2730, metadata !640), !dbg !2736
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2731, metadata !640), !dbg !2737
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2732, metadata !640), !dbg !2738
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2739
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10, !dbg !2739
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2488, metadata !640) #10, !dbg !2740
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2741
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !2741
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2483, metadata !640) #10, !dbg !2734
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2483, metadata !2499) #10, !dbg !2734
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2734
  %9 = icmp eq i32 %1, 10, !dbg !2742
  br i1 %9, label %10, label %11, !dbg !2743

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !2744, !noalias !2745
  unreachable, !dbg !2744

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2483, metadata !2499) #10, !dbg !2734
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !2748
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !2748
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !2749
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2750
  store i32 %1, i32* %13, align 8, !dbg !2750
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2750
  %15 = bitcast i32* %14 to i8*, !dbg !2750
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !2750
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2733, metadata !764), !dbg !2751
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1074, metadata !640), !dbg !2752
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1075, metadata !640), !dbg !2754
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1076, metadata !640), !dbg !2755
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1077, metadata !640), !dbg !2756
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !2757
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !1078, metadata !640), !dbg !2758
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1080, metadata !640), !dbg !2759
  %17 = load i32, i32* %16, align 4, !dbg !2760, !tbaa !716
  %18 = or i32 %17, 67108864, !dbg !2761
  store i32 %18, i32* %16, align 4, !dbg !2761, !tbaa !716
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2733, metadata !764), !dbg !2751
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2762
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10, !dbg !2763
  ret i8* %19, !dbg !2764
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !2765 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2769, metadata !640), !dbg !2773
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2770, metadata !640), !dbg !2774
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2771, metadata !640), !dbg !2775
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2772, metadata !640), !dbg !2776
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2777, metadata !640) #10, !dbg !2787
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2782, metadata !640) #10, !dbg !2789
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2783, metadata !640) #10, !dbg !2790
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2784, metadata !640) #10, !dbg !2791
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2785, metadata !640) #10, !dbg !2792
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2793
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !2793
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2794, !tbaa.struct !2616
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2786, metadata !764) #10, !dbg !2795
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1124, metadata !640) #10, !dbg !2796
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1125, metadata !640) #10, !dbg !2798
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1126, metadata !640) #10, !dbg !2799
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1124, metadata !640) #10, !dbg !2796
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1124, metadata !640) #10, !dbg !2796
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2800
  store i32 10, i32* %7, align 8, !dbg !2801, !tbaa !1054
  %8 = icmp ne i8* %1, null, !dbg !2802
  %9 = icmp ne i8* %2, null, !dbg !2803
  %10 = and i1 %8, %9, !dbg !2804
  br i1 %10, label %12, label %11, !dbg !2804

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14, !dbg !2805
  unreachable, !dbg !2805

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2806
  store i8* %1, i8** %13, align 8, !dbg !2807, !tbaa !1143
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2808
  store i8* %2, i8** %14, align 8, !dbg !2809, !tbaa !1146
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2786, metadata !764) #10, !dbg !2795
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #10, !dbg !2810
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !2811
  ret i8* %15, !dbg !2812
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !2778 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2777, metadata !640), !dbg !2813
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2782, metadata !640), !dbg !2814
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2783, metadata !640), !dbg !2815
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2784, metadata !640), !dbg !2816
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !2785, metadata !640), !dbg !2817
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2818
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10, !dbg !2818
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2819, !tbaa.struct !2616
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2786, metadata !764), !dbg !2820
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1124, metadata !640) #10, !dbg !2821
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1125, metadata !640) #10, !dbg !2823
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1126, metadata !640) #10, !dbg !2824
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1124, metadata !640) #10, !dbg !2821
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1124, metadata !640) #10, !dbg !2821
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2825
  store i32 10, i32* %8, align 8, !dbg !2826, !tbaa !1054
  %9 = icmp ne i8* %1, null, !dbg !2827
  %10 = icmp ne i8* %2, null, !dbg !2828
  %11 = and i1 %9, %10, !dbg !2829
  br i1 %11, label %13, label %12, !dbg !2829

; <label>:12:                                     ; preds = %5
  tail call void @abort() #14, !dbg !2830
  unreachable, !dbg !2830

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2831
  store i8* %1, i8** %14, align 8, !dbg !2832, !tbaa !1143
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2833
  store i8* %2, i8** %15, align 8, !dbg !2834, !tbaa !1146
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2786, metadata !764), !dbg !2820
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2835
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10, !dbg !2836
  ret i8* %16, !dbg !2837
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !2838 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2842, metadata !640), !dbg !2845
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2843, metadata !640), !dbg !2846
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2844, metadata !640), !dbg !2847
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2769, metadata !640) #10, !dbg !2848
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2770, metadata !640) #10, !dbg !2850
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2771, metadata !640) #10, !dbg !2851
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2772, metadata !640) #10, !dbg !2852
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2777, metadata !640) #10, !dbg !2853
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2782, metadata !640) #10, !dbg !2855
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2783, metadata !640) #10, !dbg !2856
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2784, metadata !640) #10, !dbg !2857
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2785, metadata !640) #10, !dbg !2858
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2859
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10, !dbg !2859
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2860, !tbaa.struct !2616
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2786, metadata !764) #10, !dbg !2861
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1124, metadata !640) #10, !dbg !2862
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1125, metadata !640) #10, !dbg !2864
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1126, metadata !640) #10, !dbg !2865
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1124, metadata !640) #10, !dbg !2862
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1124, metadata !640) #10, !dbg !2862
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2866
  store i32 10, i32* %6, align 8, !dbg !2867, !tbaa !1054
  %7 = icmp ne i8* %0, null, !dbg !2868
  %8 = icmp ne i8* %1, null, !dbg !2869
  %9 = and i1 %7, %8, !dbg !2870
  br i1 %9, label %11, label %10, !dbg !2870

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !2871
  unreachable, !dbg !2871

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2872
  store i8* %0, i8** %12, align 8, !dbg !2873, !tbaa !1143
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2874
  store i8* %1, i8** %13, align 8, !dbg !2875, !tbaa !1146
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2786, metadata !764) #10, !dbg !2861
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !2876
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10, !dbg !2877
  ret i8* %14, !dbg !2878
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !2879 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2883, metadata !640), !dbg !2887
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2884, metadata !640), !dbg !2888
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2885, metadata !640), !dbg !2889
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2886, metadata !640), !dbg !2890
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2777, metadata !640) #10, !dbg !2891
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2782, metadata !640) #10, !dbg !2893
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2783, metadata !640) #10, !dbg !2894
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2784, metadata !640) #10, !dbg !2895
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2785, metadata !640) #10, !dbg !2896
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2897
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !2897
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2898, !tbaa.struct !2616
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2786, metadata !764) #10, !dbg !2899
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1124, metadata !640) #10, !dbg !2900
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1125, metadata !640) #10, !dbg !2902
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1126, metadata !640) #10, !dbg !2903
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1124, metadata !640) #10, !dbg !2900
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1124, metadata !640) #10, !dbg !2900
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2904
  store i32 10, i32* %7, align 8, !dbg !2905, !tbaa !1054
  %8 = icmp ne i8* %0, null, !dbg !2906
  %9 = icmp ne i8* %1, null, !dbg !2907
  %10 = and i1 %8, %9, !dbg !2908
  br i1 %10, label %12, label %11, !dbg !2908

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14, !dbg !2909
  unreachable, !dbg !2909

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2910
  store i8* %0, i8** %13, align 8, !dbg !2911, !tbaa !1143
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2912
  store i8* %1, i8** %14, align 8, !dbg !2913, !tbaa !1146
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2786, metadata !764) #10, !dbg !2899
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #10, !dbg !2914
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !2915
  ret i8* %15, !dbg !2916
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2917 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2921, metadata !640), !dbg !2924
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2922, metadata !640), !dbg !2925
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2923, metadata !640), !dbg !2926
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2927
  ret i8* %4, !dbg !2928
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !2929 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2933, metadata !640), !dbg !2935
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2934, metadata !640), !dbg !2936
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2921, metadata !640) #10, !dbg !2937
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2922, metadata !640) #10, !dbg !2939
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2923, metadata !640) #10, !dbg !2940
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2941
  ret i8* %3, !dbg !2942
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !2943 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2947, metadata !640), !dbg !2949
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2948, metadata !640), !dbg !2950
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2921, metadata !640) #10, !dbg !2951
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2922, metadata !640) #10, !dbg !2953
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2923, metadata !640) #10, !dbg !2954
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2955
  ret i8* %3, !dbg !2956
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !2957 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2961, metadata !640), !dbg !2962
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2947, metadata !640) #10, !dbg !2963
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2948, metadata !640) #10, !dbg !2965
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2921, metadata !640) #10, !dbg !2966
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2922, metadata !640) #10, !dbg !2968
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2923, metadata !640) #10, !dbg !2969
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2970
  ret i8* %2, !dbg !2971
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !2972 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3017, metadata !640), !dbg !3023
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3018, metadata !640), !dbg !3024
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3019, metadata !640), !dbg !3025
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3020, metadata !640), !dbg !3026
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3021, metadata !640), !dbg !3027
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !3022, metadata !640), !dbg !3028
  %7 = icmp eq i8* %1, null, !dbg !3029
  br i1 %7, label %10, label %8, !dbg !3031

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.63, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #10, !dbg !3032
  br label %12, !dbg !3032

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.64, i64 0, i64 0), i8* %2, i8* %3) #10, !dbg !3033
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.65, i64 0, i64 0), i32 5) #10, !dbg !3034
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #10, !dbg !3035
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.66, i64 0, i64 0), i32 5) #10, !dbg !3037
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #10, !dbg !3038
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
  ], !dbg !3039

; <label>:17:                                     ; preds = %12
  tail call void @abort() #14, !dbg !3040
  unreachable, !dbg !3040

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.67, i64 0, i64 0), i32 5) #10, !dbg !3042
  %20 = load i8*, i8** %4, align 8, !dbg !3042, !tbaa !648
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #10, !dbg !3043
  br label %146, !dbg !3045

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.68, i64 0, i64 0), i32 5) #10, !dbg !3046
  %24 = load i8*, i8** %4, align 8, !dbg !3046, !tbaa !648
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3046
  %26 = load i8*, i8** %25, align 8, !dbg !3046, !tbaa !648
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #10, !dbg !3047
  br label %146, !dbg !3048

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.69, i64 0, i64 0), i32 5) #10, !dbg !3049
  %30 = load i8*, i8** %4, align 8, !dbg !3049, !tbaa !648
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3049
  %32 = load i8*, i8** %31, align 8, !dbg !3049, !tbaa !648
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3049
  %34 = load i8*, i8** %33, align 8, !dbg !3049, !tbaa !648
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #10, !dbg !3050
  br label %146, !dbg !3051

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.70, i64 0, i64 0), i32 5) #10, !dbg !3052
  %38 = load i8*, i8** %4, align 8, !dbg !3052, !tbaa !648
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3052
  %40 = load i8*, i8** %39, align 8, !dbg !3052, !tbaa !648
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3052
  %42 = load i8*, i8** %41, align 8, !dbg !3052, !tbaa !648
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3052
  %44 = load i8*, i8** %43, align 8, !dbg !3052, !tbaa !648
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #10, !dbg !3053
  br label %146, !dbg !3054

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.71, i64 0, i64 0), i32 5) #10, !dbg !3055
  %48 = load i8*, i8** %4, align 8, !dbg !3055, !tbaa !648
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3055
  %50 = load i8*, i8** %49, align 8, !dbg !3055, !tbaa !648
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3055
  %52 = load i8*, i8** %51, align 8, !dbg !3055, !tbaa !648
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3055
  %54 = load i8*, i8** %53, align 8, !dbg !3055, !tbaa !648
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3055
  %56 = load i8*, i8** %55, align 8, !dbg !3055, !tbaa !648
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #10, !dbg !3056
  br label %146, !dbg !3057

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.72, i64 0, i64 0), i32 5) #10, !dbg !3058
  %60 = load i8*, i8** %4, align 8, !dbg !3058, !tbaa !648
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3058
  %62 = load i8*, i8** %61, align 8, !dbg !3058, !tbaa !648
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3058
  %64 = load i8*, i8** %63, align 8, !dbg !3058, !tbaa !648
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3058
  %66 = load i8*, i8** %65, align 8, !dbg !3058, !tbaa !648
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3058
  %68 = load i8*, i8** %67, align 8, !dbg !3058, !tbaa !648
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3058
  %70 = load i8*, i8** %69, align 8, !dbg !3058, !tbaa !648
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #10, !dbg !3059
  br label %146, !dbg !3060

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.73, i64 0, i64 0), i32 5) #10, !dbg !3061
  %74 = load i8*, i8** %4, align 8, !dbg !3061, !tbaa !648
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3061
  %76 = load i8*, i8** %75, align 8, !dbg !3061, !tbaa !648
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3061
  %78 = load i8*, i8** %77, align 8, !dbg !3061, !tbaa !648
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3061
  %80 = load i8*, i8** %79, align 8, !dbg !3061, !tbaa !648
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3061
  %82 = load i8*, i8** %81, align 8, !dbg !3061, !tbaa !648
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3061
  %84 = load i8*, i8** %83, align 8, !dbg !3061, !tbaa !648
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3061
  %86 = load i8*, i8** %85, align 8, !dbg !3061, !tbaa !648
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #10, !dbg !3062
  br label %146, !dbg !3063

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.74, i64 0, i64 0), i32 5) #10, !dbg !3064
  %90 = load i8*, i8** %4, align 8, !dbg !3064, !tbaa !648
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3064
  %92 = load i8*, i8** %91, align 8, !dbg !3064, !tbaa !648
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3064
  %94 = load i8*, i8** %93, align 8, !dbg !3064, !tbaa !648
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3064
  %96 = load i8*, i8** %95, align 8, !dbg !3064, !tbaa !648
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3064
  %98 = load i8*, i8** %97, align 8, !dbg !3064, !tbaa !648
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3064
  %100 = load i8*, i8** %99, align 8, !dbg !3064, !tbaa !648
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3064
  %102 = load i8*, i8** %101, align 8, !dbg !3064, !tbaa !648
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3064
  %104 = load i8*, i8** %103, align 8, !dbg !3064, !tbaa !648
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #10, !dbg !3065
  br label %146, !dbg !3066

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.75, i64 0, i64 0), i32 5) #10, !dbg !3067
  %108 = load i8*, i8** %4, align 8, !dbg !3067, !tbaa !648
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3067
  %110 = load i8*, i8** %109, align 8, !dbg !3067, !tbaa !648
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3067
  %112 = load i8*, i8** %111, align 8, !dbg !3067, !tbaa !648
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3067
  %114 = load i8*, i8** %113, align 8, !dbg !3067, !tbaa !648
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3067
  %116 = load i8*, i8** %115, align 8, !dbg !3067, !tbaa !648
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3067
  %118 = load i8*, i8** %117, align 8, !dbg !3067, !tbaa !648
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3067
  %120 = load i8*, i8** %119, align 8, !dbg !3067, !tbaa !648
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3067
  %122 = load i8*, i8** %121, align 8, !dbg !3067, !tbaa !648
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3067
  %124 = load i8*, i8** %123, align 8, !dbg !3067, !tbaa !648
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #10, !dbg !3068
  br label %146, !dbg !3069

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.76, i64 0, i64 0), i32 5) #10, !dbg !3070
  %128 = load i8*, i8** %4, align 8, !dbg !3070, !tbaa !648
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3070
  %130 = load i8*, i8** %129, align 8, !dbg !3070, !tbaa !648
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3070
  %132 = load i8*, i8** %131, align 8, !dbg !3070, !tbaa !648
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3070
  %134 = load i8*, i8** %133, align 8, !dbg !3070, !tbaa !648
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3070
  %136 = load i8*, i8** %135, align 8, !dbg !3070, !tbaa !648
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3070
  %138 = load i8*, i8** %137, align 8, !dbg !3070, !tbaa !648
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3070
  %140 = load i8*, i8** %139, align 8, !dbg !3070, !tbaa !648
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3070
  %142 = load i8*, i8** %141, align 8, !dbg !3070, !tbaa !648
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3070
  %144 = load i8*, i8** %143, align 8, !dbg !3070, !tbaa !648
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #10, !dbg !3071
  br label %146, !dbg !3072

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !3073
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !3074 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3078, metadata !640), !dbg !3084
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3079, metadata !640), !dbg !3085
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3080, metadata !640), !dbg !3086
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3081, metadata !640), !dbg !3087
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3082, metadata !640), !dbg !3088
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3083, metadata !640), !dbg !3089
  br label %6, !dbg !3090

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3083, metadata !640), !dbg !3089
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3092
  %9 = load i8*, i8** %8, align 8, !dbg !3092, !tbaa !648
  %10 = icmp eq i8* %9, null, !dbg !3095
  %11 = add i64 %7, 1, !dbg !3097
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !3083, metadata !640), !dbg !3089
  br i1 %10, label %12, label %6, !dbg !3095, !llvm.loop !3099

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3102
  ret void, !dbg !3103
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !3104 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3115, metadata !640), !dbg !3123
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3116, metadata !640), !dbg !3124
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3117, metadata !640), !dbg !3125
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3118, metadata !640), !dbg !3126
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !3119, metadata !640), !dbg !3127
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3128
  call void @llvm.lifetime.start(i64 80, i8* nonnull %7) #10, !dbg !3128
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3121, metadata !640), !dbg !3129
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3120, metadata !640), !dbg !3130
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3120, metadata !640), !dbg !3130
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %11 = load i32, i32* %8, align 8, !dbg !3131
  %12 = icmp ult i32 %11, 41, !dbg !3131
  br i1 %12, label %13, label %18, !dbg !3131

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !3135
  %15 = sext i32 %11 to i64, !dbg !3135
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3135
  %17 = add i32 %11, 8, !dbg !3135
  store i32 %17, i32* %8, align 8, !dbg !3135
  br label %21, !dbg !3135

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !3137
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3137
  store i8* %20, i8** %10, align 8, !dbg !3137
  br label %21, !dbg !3137

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ], !dbg !3131
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3139
  %25 = load i8*, i8** %24, align 8, !dbg !3139
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3141
  store i8* %25, i8** %26, align 16, !dbg !3142, !tbaa !648
  %27 = icmp eq i8* %25, null, !dbg !3143
  br i1 %27, label %30, label %28, !dbg !3144

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3120, metadata !640), !dbg !3130
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3120, metadata !640), !dbg !3130
  %29 = icmp ult i32 %22, 41, !dbg !3131
  br i1 %29, label %35, label %32, !dbg !3131

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3146
  call void @llvm.lifetime.end(i64 80, i8* nonnull %7) #10, !dbg !3147
  ret void, !dbg !3147

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !3137
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3137
  store i8* %34, i8** %10, align 8, !dbg !3137
  br label %40, !dbg !3137

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !3135
  %37 = sext i32 %22 to i64, !dbg !3135
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3135
  %39 = add i32 %22, 8, !dbg !3135
  store i32 %39, i32* %8, align 8, !dbg !3135
  br label %40, !dbg !3135

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ], !dbg !3131
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3139
  %44 = load i8*, i8** %43, align 8, !dbg !3139
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3141
  store i8* %44, i8** %45, align 8, !dbg !3142, !tbaa !648
  %46 = icmp eq i8* %44, null, !dbg !3143
  br i1 %46, label %30, label %47, !dbg !3144

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3120, metadata !640), !dbg !3130
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3120, metadata !640), !dbg !3130
  %48 = icmp ult i32 %41, 41, !dbg !3131
  br i1 %48, label %52, label %49, !dbg !3131

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !3137
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3137
  store i8* %51, i8** %10, align 8, !dbg !3137
  br label %57, !dbg !3137

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !3135
  %54 = sext i32 %41 to i64, !dbg !3135
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3135
  %56 = add i32 %41, 8, !dbg !3135
  store i32 %56, i32* %8, align 8, !dbg !3135
  br label %57, !dbg !3135

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ], !dbg !3131
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3139
  %61 = load i8*, i8** %60, align 8, !dbg !3139
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3141
  store i8* %61, i8** %62, align 16, !dbg !3142, !tbaa !648
  %63 = icmp eq i8* %61, null, !dbg !3143
  br i1 %63, label %30, label %64, !dbg !3144

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3120, metadata !640), !dbg !3130
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3120, metadata !640), !dbg !3130
  %65 = icmp ult i32 %58, 41, !dbg !3131
  br i1 %65, label %69, label %66, !dbg !3131

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !3137
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3137
  store i8* %68, i8** %10, align 8, !dbg !3137
  br label %74, !dbg !3137

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !3135
  %71 = sext i32 %58 to i64, !dbg !3135
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3135
  %73 = add i32 %58, 8, !dbg !3135
  store i32 %73, i32* %8, align 8, !dbg !3135
  br label %74, !dbg !3135

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ], !dbg !3131
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3139
  %78 = load i8*, i8** %77, align 8, !dbg !3139
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3141
  store i8* %78, i8** %79, align 8, !dbg !3142, !tbaa !648
  %80 = icmp eq i8* %78, null, !dbg !3143
  br i1 %80, label %30, label %81, !dbg !3144

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3120, metadata !640), !dbg !3130
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3120, metadata !640), !dbg !3130
  %82 = icmp ult i32 %75, 41, !dbg !3131
  br i1 %82, label %86, label %83, !dbg !3131

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !3137
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3137
  store i8* %85, i8** %10, align 8, !dbg !3137
  br label %91, !dbg !3137

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !3135
  %88 = sext i32 %75 to i64, !dbg !3135
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3135
  %90 = add i32 %75, 8, !dbg !3135
  store i32 %90, i32* %8, align 8, !dbg !3135
  br label %91, !dbg !3135

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ], !dbg !3131
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3139
  %95 = load i8*, i8** %94, align 8, !dbg !3139
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3141
  store i8* %95, i8** %96, align 16, !dbg !3142, !tbaa !648
  %97 = icmp eq i8* %95, null, !dbg !3143
  br i1 %97, label %30, label %98, !dbg !3144

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3120, metadata !640), !dbg !3130
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3120, metadata !640), !dbg !3130
  %99 = icmp ult i32 %92, 41, !dbg !3131
  br i1 %99, label %103, label %100, !dbg !3131

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !3137
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3137
  store i8* %102, i8** %10, align 8, !dbg !3137
  br label %108, !dbg !3137

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !3135
  %105 = sext i32 %92 to i64, !dbg !3135
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3135
  %107 = add i32 %92, 8, !dbg !3135
  store i32 %107, i32* %8, align 8, !dbg !3135
  br label %108, !dbg !3135

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3139
  %111 = load i8*, i8** %110, align 8, !dbg !3139
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3141
  store i8* %111, i8** %112, align 8, !dbg !3142, !tbaa !648
  %113 = icmp eq i8* %111, null, !dbg !3143
  br i1 %113, label %30, label %114, !dbg !3144

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3120, metadata !640), !dbg !3130
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3120, metadata !640), !dbg !3130
  %115 = load i8*, i8** %10, align 8, !dbg !3137
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3137
  store i8* %116, i8** %10, align 8, !dbg !3137
  %117 = bitcast i8* %115 to i8**, !dbg !3139
  %118 = load i8*, i8** %117, align 8, !dbg !3139
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3141
  store i8* %118, i8** %119, align 16, !dbg !3142, !tbaa !648
  %120 = icmp eq i8* %118, null, !dbg !3143
  br i1 %120, label %30, label %121, !dbg !3144

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3120, metadata !640), !dbg !3130
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3120, metadata !640), !dbg !3130
  %122 = load i8*, i8** %10, align 8, !dbg !3137
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3137
  store i8* %123, i8** %10, align 8, !dbg !3137
  %124 = bitcast i8* %122 to i8**, !dbg !3139
  %125 = load i8*, i8** %124, align 8, !dbg !3139
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3141
  store i8* %125, i8** %126, align 8, !dbg !3142, !tbaa !648
  %127 = icmp eq i8* %125, null, !dbg !3143
  br i1 %127, label %30, label %128, !dbg !3144

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3120, metadata !640), !dbg !3130
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3120, metadata !640), !dbg !3130
  %129 = load i8*, i8** %10, align 8, !dbg !3137
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3137
  store i8* %130, i8** %10, align 8, !dbg !3137
  %131 = bitcast i8* %129 to i8**, !dbg !3139
  %132 = load i8*, i8** %131, align 8, !dbg !3139
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3141
  store i8* %132, i8** %133, align 16, !dbg !3142, !tbaa !648
  %134 = icmp eq i8* %132, null, !dbg !3143
  br i1 %134, label %30, label %135, !dbg !3144

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3120, metadata !640), !dbg !3130
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3120, metadata !640), !dbg !3130
  %136 = load i8*, i8** %10, align 8, !dbg !3137
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3137
  store i8* %137, i8** %10, align 8, !dbg !3137
  %138 = bitcast i8* %136 to i8**, !dbg !3139
  %139 = load i8*, i8** %138, align 8, !dbg !3139
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3141
  store i8* %139, i8** %140, align 8, !dbg !3142, !tbaa !648
  %141 = icmp eq i8* %139, null, !dbg !3143
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3120, metadata !640), !dbg !3130
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3120, metadata !640), !dbg !3130
  %142 = select i1 %141, i64 9, i64 10, !dbg !3144
  br label %30, !dbg !3144
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !3148 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3152, metadata !640), !dbg !3162
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3153, metadata !640), !dbg !3163
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3154, metadata !640), !dbg !3164
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3155, metadata !640), !dbg !3165
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3166
  call void @llvm.lifetime.start(i64 24, i8* nonnull %6) #10, !dbg !3166
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3156, metadata !640), !dbg !3167
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3168
  call void @llvm.va_start(i8* nonnull %6), !dbg !3168
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3169
  call void @llvm.va_end(i8* nonnull %6), !dbg !3170
  call void @llvm.lifetime.end(i64 24, i8* nonnull %6) #10, !dbg !3171
  ret void, !dbg !3171
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #10

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !3172 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.79, i64 0, i64 0), i32 5) #10, !dbg !3173
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.80, i64 0, i64 0)) #10, !dbg !3174
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.81, i64 0, i64 0), i32 5) #10, !dbg !3176
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.82, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.83, i64 0, i64 0)) #10, !dbg !3177
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19.84, i64 0, i64 0), i32 5) #10, !dbg !3178
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3178, !tbaa !648
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #10, !dbg !3179
  ret void, !dbg !3180
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #12 !dbg !3181 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3185, metadata !640), !dbg !3187
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3186, metadata !640), !dbg !3188
  %3 = udiv i64 9223372036854775807, %1, !dbg !3189
  %4 = icmp ult i64 %3, %0, !dbg !3189
  br i1 %4, label %5, label %6, !dbg !3191

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !3192
  unreachable, !dbg !3192

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3193
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3194, metadata !640) #10, !dbg !3201
  %8 = tail call noalias i8* @malloc(i64 %7) #10, !dbg !3203
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3200, metadata !640) #10, !dbg !3204
  %9 = icmp eq i8* %8, null, !dbg !3205
  %10 = icmp ne i64 %7, 0, !dbg !3207
  %11 = and i1 %10, %9, !dbg !3209
  br i1 %11, label %12, label %13, !dbg !3209

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #14, !dbg !3210
  unreachable, !dbg !3210

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !3211
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !3195 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3194, metadata !640), !dbg !3212
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3213
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3200, metadata !640), !dbg !3214
  %3 = icmp eq i8* %2, null, !dbg !3215
  %4 = icmp ne i64 %0, 0, !dbg !3216
  %5 = and i1 %4, %3, !dbg !3217
  br i1 %5, label %6, label %7, !dbg !3217

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3218
  unreachable, !dbg !3218

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3219
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #12 !dbg !3220 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3224, metadata !640), !dbg !3227
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3225, metadata !640), !dbg !3228
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3226, metadata !640), !dbg !3229
  %4 = udiv i64 9223372036854775807, %2, !dbg !3230
  %5 = icmp ult i64 %4, %1, !dbg !3230
  br i1 %5, label %6, label %7, !dbg !3232

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #14, !dbg !3233
  unreachable, !dbg !3233

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3234
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3235, metadata !640) #10, !dbg !3241
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !3240, metadata !640) #10, !dbg !3243
  %9 = icmp eq i64 %8, 0, !dbg !3244
  %10 = icmp ne i8* %0, null, !dbg !3246
  %11 = and i1 %10, %9, !dbg !3248
  br i1 %11, label %12, label %13, !dbg !3248

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #10, !dbg !3249
  br label %19, !dbg !3251

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #10, !dbg !3252
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !3235, metadata !640) #10, !dbg !3241
  %15 = icmp eq i8* %14, null, !dbg !3253
  %16 = icmp ne i64 %8, 0, !dbg !3255
  %17 = and i1 %16, %15, !dbg !3257
  br i1 %17, label %18, label %19, !dbg !3257

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !3258
  unreachable, !dbg !3258

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !3259
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !3236 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3235, metadata !640), !dbg !3260
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3240, metadata !640), !dbg !3261
  %3 = icmp eq i64 %1, 0, !dbg !3262
  %4 = icmp ne i8* %0, null, !dbg !3263
  %5 = and i1 %4, %3, !dbg !3264
  br i1 %5, label %6, label %7, !dbg !3264

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #10, !dbg !3265
  br label %13, !dbg !3266

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #10, !dbg !3267
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3235, metadata !640), !dbg !3260
  %9 = icmp eq i8* %8, null, !dbg !3268
  %10 = icmp ne i64 %1, 0, !dbg !3269
  %11 = and i1 %10, %9, !dbg !3270
  br i1 %11, label %12, label %13, !dbg !3270

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #14, !dbg !3271
  unreachable, !dbg !3271

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !3272
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #12 !dbg !596 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !601, metadata !640), !dbg !3273
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !602, metadata !640), !dbg !3274
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !603, metadata !640), !dbg !3275
  %4 = load i64, i64* %1, align 8, !dbg !3276, !tbaa !776
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !604, metadata !640), !dbg !3277
  %5 = icmp eq i8* %0, null, !dbg !3278
  br i1 %5, label %6, label %13, !dbg !3280

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3281
  br i1 %7, label %8, label %17, !dbg !3284

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3285
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !604, metadata !640), !dbg !3277
  %10 = icmp ugt i64 %2, 128, !dbg !3287
  %11 = zext i1 %10 to i64, !dbg !3287
  %12 = add nuw nsw i64 %9, %11, !dbg !3288
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !604, metadata !640), !dbg !3277
  br label %17, !dbg !3289

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !3290
  %15 = icmp ugt i64 %14, %4, !dbg !3293
  br i1 %15, label %20, label %16, !dbg !3294

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !3295
  unreachable, !dbg !3295

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !604, metadata !640), !dbg !3277
  store i64 %18, i64* %1, align 8, !dbg !3296, !tbaa !776
  %19 = mul i64 %18, %2, !dbg !3297
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3235, metadata !640) #10, !dbg !3298
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3240, metadata !640) #10, !dbg !3300
  br label %27, !dbg !3301

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !3302
  %22 = add i64 %4, 1, !dbg !3303
  %23 = add i64 %22, %21, !dbg !3304
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !604, metadata !640), !dbg !3277
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !604, metadata !640), !dbg !3277
  store i64 %23, i64* %1, align 8, !dbg !3296, !tbaa !776
  %24 = mul i64 %23, %2, !dbg !3297
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3235, metadata !640) #10, !dbg !3298
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3240, metadata !640) #10, !dbg !3300
  %25 = icmp eq i64 %24, 0, !dbg !3305
  br i1 %25, label %26, label %27, !dbg !3301

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #10, !dbg !3306
  br label %34, !dbg !3307

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #10, !dbg !3308
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3235, metadata !640) #10, !dbg !3298
  %30 = icmp eq i8* %29, null, !dbg !3309
  %31 = icmp ne i64 %28, 0, !dbg !3310
  %32 = and i1 %31, %30, !dbg !3311
  br i1 %32, label %33, label %34, !dbg !3311

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #14, !dbg !3312
  unreachable, !dbg !3312

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !3313
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #12 !dbg !3314 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3316, metadata !640), !dbg !3317
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3194, metadata !640) #10, !dbg !3318
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3320
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3200, metadata !640) #10, !dbg !3321
  %3 = icmp eq i8* %2, null, !dbg !3322
  %4 = icmp ne i64 %0, 0, !dbg !3323
  %5 = and i1 %4, %3, !dbg !3324
  br i1 %5, label %6, label %7, !dbg !3324

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3325
  unreachable, !dbg !3325

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3326
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !3327 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3331, metadata !640), !dbg !3333
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !3332, metadata !640), !dbg !3334
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !601, metadata !640) #10, !dbg !3335
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !602, metadata !640) #10, !dbg !3337
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !603, metadata !640) #10, !dbg !3338
  %3 = load i64, i64* %1, align 8, !dbg !3339, !tbaa !776
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !604, metadata !640) #10, !dbg !3340
  %4 = icmp eq i8* %0, null, !dbg !3341
  br i1 %4, label %5, label %8, !dbg !3342

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3343
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !604, metadata !640) #10, !dbg !3340
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !604, metadata !640) #10, !dbg !3340
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3344
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !604, metadata !640) #10, !dbg !3340
  store i64 %7, i64* %1, align 8, !dbg !3345, !tbaa !776
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3235, metadata !640) #10, !dbg !3346
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3240, metadata !640) #10, !dbg !3348
  br label %17, !dbg !3349

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !3350
  br i1 %9, label %11, label %10, !dbg !3351

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #14, !dbg !3352
  unreachable, !dbg !3352

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !3353
  %13 = add i64 %3, 1, !dbg !3354
  %14 = add i64 %13, %12, !dbg !3355
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !604, metadata !640) #10, !dbg !3340
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !604, metadata !640) #10, !dbg !3340
  store i64 %14, i64* %1, align 8, !dbg !3345, !tbaa !776
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3235, metadata !640) #10, !dbg !3346
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3240, metadata !640) #10, !dbg !3348
  %15 = icmp eq i64 %14, 0, !dbg !3356
  br i1 %15, label %16, label %17, !dbg !3349

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #10, !dbg !3357
  br label %24, !dbg !3358

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #10, !dbg !3359
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !3235, metadata !640) #10, !dbg !3346
  %20 = icmp eq i8* %19, null, !dbg !3360
  %21 = icmp ne i64 %18, 0, !dbg !3361
  %22 = and i1 %21, %20, !dbg !3362
  br i1 %22, label %23, label %24, !dbg !3362

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #14, !dbg !3363
  unreachable, !dbg !3363

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !3364
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !3365 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3367, metadata !640), !dbg !3368
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3194, metadata !640) #10, !dbg !3369
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3371
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3200, metadata !640) #10, !dbg !3372
  %3 = icmp eq i8* %2, null, !dbg !3373
  %4 = icmp ne i64 %0, 0, !dbg !3374
  %5 = and i1 %4, %3, !dbg !3375
  br i1 %5, label %6, label %7, !dbg !3375

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3376
  unreachable, !dbg !3376

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !3377
  ret i8* %2, !dbg !3378
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !3379 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3381, metadata !640), !dbg !3384
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3382, metadata !640), !dbg !3385
  %3 = udiv i64 9223372036854775807, %1, !dbg !3386
  %4 = icmp ult i64 %3, %0, !dbg !3386
  br i1 %4, label %8, label %5, !dbg !3388

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #10, !dbg !3389
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3383, metadata !640), !dbg !3391
  %7 = icmp eq i8* %6, null, !dbg !3392
  br i1 %7, label %8, label %9, !dbg !3393

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #14, !dbg !3395
  unreachable, !dbg !3395

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !3396
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !3397 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3401, metadata !640), !dbg !3403
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3402, metadata !640), !dbg !3404
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3194, metadata !640) #10, !dbg !3405
  %3 = tail call noalias i8* @malloc(i64 %1) #10, !dbg !3407
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3200, metadata !640) #10, !dbg !3408
  %4 = icmp eq i8* %3, null, !dbg !3409
  %5 = icmp ne i64 %1, 0, !dbg !3410
  %6 = and i1 %5, %4, !dbg !3411
  br i1 %6, label %7, label %8, !dbg !3411

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !3412
  unreachable, !dbg !3412

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !3413
  ret i8* %3, !dbg !3414
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !3415 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3417, metadata !640), !dbg !3418
  %2 = tail call i64 @strlen(i8* %0) #13, !dbg !3419
  %3 = add i64 %2, 1, !dbg !3420
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3401, metadata !640) #10, !dbg !3421
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3402, metadata !640) #10, !dbg !3424
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3194, metadata !640) #10, !dbg !3425
  %4 = tail call noalias i8* @malloc(i64 %3) #10, !dbg !3427
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !3200, metadata !640) #10, !dbg !3428
  %5 = icmp eq i8* %4, null, !dbg !3429
  %6 = icmp ne i64 %3, 0, !dbg !3430
  %7 = and i1 %6, %5, !dbg !3431
  br i1 %7, label %8, label %9, !dbg !3431

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3432
  unreachable, !dbg !3432

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #10, !dbg !3433
  ret i8* %4, !dbg !3434
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !3435 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3437, !tbaa !716
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.95, i64 0, i64 0), i32 5) #10, !dbg !3438
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.96, i64 0, i64 0), i8* %2) #10, !dbg !3439
  tail call void @abort() #14, !dbg !3441
  unreachable, !dbg !3441
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @xstrtol(i8*, i8**, i32, i64* nocapture, i8* readonly) local_unnamed_addr #6 !dbg !3442 {
  %6 = alloca i8*, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3449, metadata !640), !dbg !3463
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !3450, metadata !640), !dbg !3464
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3451, metadata !640), !dbg !3465
  tail call void @llvm.dbg.value(metadata i64* %3, i64 0, metadata !3452, metadata !640), !dbg !3466
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !3453, metadata !640), !dbg !3467
  %7 = bitcast i8** %6 to i8*, !dbg !3468
  call void @llvm.lifetime.start(i64 8, i8* nonnull %7) #10, !dbg !3468
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3457, metadata !640), !dbg !3469
  %8 = icmp ult i32 %2, 37, !dbg !3470
  br i1 %8, label %10, label %9, !dbg !3470

; <label>:9:                                      ; preds = %5
  tail call void @__assert_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.99, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.100, i64 0, i64 0), i32 96, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @__PRETTY_FUNCTION__.xstrtol, i64 0, i64 0)) #14, !dbg !3473
  unreachable, !dbg !3473

; <label>:10:                                     ; preds = %5
  %11 = icmp ne i8** %1, null, !dbg !3475
  %12 = select i1 %11, i8** %1, i8** %6, !dbg !3475
  tail call void @llvm.dbg.value(metadata i8** %12, i64 0, metadata !3455, metadata !640), !dbg !3476
  %13 = tail call i32* @__errno_location() #1, !dbg !3477
  store i32 0, i32* %13, align 4, !dbg !3478, !tbaa !716
  %14 = call i64 @strtol(i8* %0, i8** %12, i32 %2) #10, !dbg !3479
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3456, metadata !640), !dbg !3480
  %15 = load i8*, i8** %12, align 8, !dbg !3481, !tbaa !648
  %16 = icmp eq i8* %15, %0, !dbg !3483
  br i1 %16, label %17, label %26, !dbg !3484

; <label>:17:                                     ; preds = %10
  %18 = icmp eq i8* %4, null, !dbg !3485
  br i1 %18, label %196, label %19, !dbg !3488

; <label>:19:                                     ; preds = %17
  %20 = load i8, i8* %0, align 1, !dbg !3489, !tbaa !727
  %21 = icmp eq i8 %20, 0, !dbg !3489
  br i1 %21, label %196, label %22, !dbg !3491

; <label>:22:                                     ; preds = %19
  %23 = sext i8 %20 to i32, !dbg !3489
  %24 = tail call i8* @strchr(i8* nonnull %4, i32 %23) #10, !dbg !3492
  %25 = icmp eq i8* %24, null, !dbg !3492
  br i1 %25, label %196, label %33, !dbg !3494

; <label>:26:                                     ; preds = %10
  %27 = load i32, i32* %13, align 4, !dbg !3496, !tbaa !716
  switch i32 %27, label %196 [
    i32 0, label %29
    i32 34, label %28
  ], !dbg !3498

; <label>:28:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3457, metadata !640), !dbg !3469
  br label %29, !dbg !3499

; <label>:29:                                     ; preds = %26, %28
  %30 = phi i32 [ 1, %28 ], [ 0, %26 ]
  tail call void @llvm.dbg.value(metadata i32 %30, i64 0, metadata !3457, metadata !640), !dbg !3469
  %31 = icmp eq i8* %4, null, !dbg !3501
  br i1 %31, label %32, label %33, !dbg !3503

; <label>:32:                                     ; preds = %29
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3456, metadata !640), !dbg !3480
  store i64 %14, i64* %3, align 8, !dbg !3504, !tbaa !776
  br label %196, !dbg !3506

; <label>:33:                                     ; preds = %22, %29
  %34 = phi i32 [ %30, %29 ], [ 0, %22 ]
  %35 = phi i64 [ %14, %29 ], [ 1, %22 ]
  %36 = load i8, i8* %15, align 1, !dbg !3507, !tbaa !727
  %37 = icmp eq i8 %36, 0, !dbg !3508
  br i1 %37, label %193, label %38, !dbg !3509

; <label>:38:                                     ; preds = %33
  %39 = sext i8 %36 to i32, !dbg !3507
  tail call void @llvm.dbg.value(metadata i32 1024, i64 0, metadata !3458, metadata !640), !dbg !3510
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3461, metadata !640), !dbg !3511
  %40 = tail call i8* @strchr(i8* nonnull %4, i32 %39) #10, !dbg !3512
  %41 = icmp eq i8* %40, null, !dbg !3512
  br i1 %41, label %42, label %44, !dbg !3515

; <label>:42:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3456, metadata !640), !dbg !3480
  store i64 %35, i64* %3, align 8, !dbg !3517, !tbaa !776
  %43 = or i32 %34, 2, !dbg !3519
  br label %196, !dbg !3520

; <label>:44:                                     ; preds = %38
  switch i32 %39, label %58 [
    i32 69, label %45
    i32 71, label %45
    i32 103, label %45
    i32 107, label %45
    i32 75, label %45
    i32 77, label %45
    i32 109, label %45
    i32 80, label %45
    i32 84, label %45
    i32 116, label %45
    i32 89, label %45
    i32 90, label %45
  ], !dbg !3521

; <label>:45:                                     ; preds = %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44
  %46 = tail call i8* @strchr(i8* nonnull %4, i32 48) #10, !dbg !3522
  %47 = icmp eq i8* %46, null, !dbg !3522
  br i1 %47, label %58, label %48, !dbg !3526

; <label>:48:                                     ; preds = %45
  %49 = getelementptr inbounds i8, i8* %15, i64 1, !dbg !3528
  %50 = load i8, i8* %49, align 1, !dbg !3528, !tbaa !727
  %51 = sext i8 %50 to i32, !dbg !3528
  switch i32 %51, label %58 [
    i32 105, label %52
    i32 66, label %57
    i32 68, label %57
  ], !dbg !3529

; <label>:52:                                     ; preds = %48
  %53 = getelementptr inbounds i8, i8* %15, i64 2, !dbg !3530
  %54 = load i8, i8* %53, align 1, !dbg !3530, !tbaa !727
  %55 = icmp eq i8 %54, 66, !dbg !3533
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3461, metadata !640), !dbg !3511
  %56 = select i1 %55, i64 3, i64 1, !dbg !3534
  br label %58, !dbg !3534

; <label>:57:                                     ; preds = %48, %48
  tail call void @llvm.dbg.value(metadata i32 1000, i64 0, metadata !3458, metadata !640), !dbg !3510
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3461, metadata !640), !dbg !3511
  br label %58, !dbg !3535

; <label>:58:                                     ; preds = %52, %45, %48, %57, %44
  %59 = phi i64 [ 1024, %44 ], [ 1024, %48 ], [ 1000, %57 ], [ 1024, %45 ], [ 1024, %52 ]
  %60 = phi i64 [ 1, %44 ], [ 1, %48 ], [ 2, %57 ], [ 1, %45 ], [ %56, %52 ]
  switch i32 %39, label %182 [
    i32 98, label %61
    i32 66, label %68
    i32 99, label %184
    i32 69, label %75
    i32 71, label %88
    i32 103, label %88
    i32 107, label %101
    i32 75, label %101
    i32 77, label %110
    i32 109, label %110
    i32 80, label %123
    i32 84, label %136
    i32 116, label %136
    i32 119, label %149
    i32 89, label %156
    i32 90, label %169
  ], !dbg !3536

; <label>:61:                                     ; preds = %58
  tail call void @llvm.dbg.value(metadata i32 512, i64 0, metadata !3537, metadata !640), !dbg !3543
  %62 = icmp slt i64 %35, -18014398509481984, !dbg !3546
  br i1 %62, label %184, label %63, !dbg !3548

; <label>:63:                                     ; preds = %61
  %64 = icmp sgt i64 %35, 18014398509481983, !dbg !3549
  %65 = shl nsw i64 %35, 9, !dbg !3551
  %66 = select i1 %64, i64 9223372036854775807, i64 %65, !dbg !3552
  %67 = zext i1 %64 to i32, !dbg !3552
  br label %184, !dbg !3552

; <label>:68:                                     ; preds = %58
  tail call void @llvm.dbg.value(metadata i32 1024, i64 0, metadata !3537, metadata !640), !dbg !3553
  %69 = icmp slt i64 %35, -9007199254740992, !dbg !3555
  br i1 %69, label %184, label %70, !dbg !3556

; <label>:70:                                     ; preds = %68
  %71 = icmp sgt i64 %35, 9007199254740991, !dbg !3557
  %72 = shl nsw i64 %35, 10, !dbg !3558
  %73 = select i1 %71, i64 9223372036854775807, i64 %72, !dbg !3559
  %74 = zext i1 %71 to i32, !dbg !3559
  br label %184, !dbg !3559

; <label>:75:                                     ; preds = %58
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3560, metadata !640), !dbg !3568
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3567, metadata !640), !dbg !3570
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3567, metadata !640), !dbg !3570
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3560, metadata !640), !dbg !3568
  %76 = sdiv i64 -9223372036854775808, %59
  %77 = icmp slt i64 %35, %76, !dbg !3571
  br i1 %77, label %84, label %78, !dbg !3573

; <label>:78:                                     ; preds = %75
  %79 = udiv i64 9223372036854775807, %59, !dbg !3574
  %80 = icmp slt i64 %79, %35, !dbg !3575
  %81 = mul nsw i64 %35, %59, !dbg !3576
  %82 = select i1 %80, i64 9223372036854775807, i64 %81, !dbg !3577
  %83 = zext i1 %80 to i32, !dbg !3577
  br label %84, !dbg !3577

; <label>:84:                                     ; preds = %78, %75
  %85 = phi i64 [ -9223372036854775808, %75 ], [ %82, %78 ]
  %86 = phi i32 [ 1, %75 ], [ %83, %78 ]
  tail call void @llvm.dbg.value(metadata i32 %86, i64 0, metadata !3567, metadata !640), !dbg !3570
  tail call void @llvm.dbg.value(metadata i32 %86, i64 0, metadata !3567, metadata !640), !dbg !3570
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3560, metadata !640), !dbg !3568
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3560, metadata !640), !dbg !3568
  %87 = icmp slt i64 %85, %76, !dbg !3571
  br i1 %87, label %204, label %198, !dbg !3573

; <label>:88:                                     ; preds = %58, %58
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3560, metadata !640), !dbg !3578
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3567, metadata !640), !dbg !3580
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3567, metadata !640), !dbg !3580
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3560, metadata !640), !dbg !3578
  %89 = sdiv i64 -9223372036854775808, %59
  %90 = icmp slt i64 %35, %89, !dbg !3581
  br i1 %90, label %97, label %91, !dbg !3583

; <label>:91:                                     ; preds = %88
  %92 = udiv i64 9223372036854775807, %59, !dbg !3584
  %93 = icmp slt i64 %92, %35, !dbg !3585
  %94 = mul nsw i64 %35, %59, !dbg !3586
  %95 = select i1 %93, i64 9223372036854775807, i64 %94, !dbg !3587
  %96 = zext i1 %93 to i32, !dbg !3587
  br label %97, !dbg !3587

; <label>:97:                                     ; preds = %91, %88
  %98 = phi i64 [ -9223372036854775808, %88 ], [ %95, %91 ]
  %99 = phi i32 [ 1, %88 ], [ %96, %91 ]
  tail call void @llvm.dbg.value(metadata i32 %99, i64 0, metadata !3567, metadata !640), !dbg !3580
  tail call void @llvm.dbg.value(metadata i32 %99, i64 0, metadata !3567, metadata !640), !dbg !3580
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3560, metadata !640), !dbg !3578
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3560, metadata !640), !dbg !3578
  %100 = icmp slt i64 %98, %89, !dbg !3581
  br i1 %100, label %258, label %252, !dbg !3583

; <label>:101:                                    ; preds = %58, %58
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3560, metadata !640), !dbg !3588
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3567, metadata !640), !dbg !3590
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3567, metadata !640), !dbg !3590
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3560, metadata !640), !dbg !3588
  %102 = sdiv i64 -9223372036854775808, %59
  %103 = icmp slt i64 %35, %102, !dbg !3591
  br i1 %103, label %184, label %104, !dbg !3593

; <label>:104:                                    ; preds = %101
  %105 = udiv i64 9223372036854775807, %59, !dbg !3594
  %106 = icmp slt i64 %105, %35, !dbg !3595
  %107 = mul nsw i64 %35, %59, !dbg !3596
  %108 = select i1 %106, i64 9223372036854775807, i64 %107, !dbg !3597
  %109 = zext i1 %106 to i32, !dbg !3597
  br label %184, !dbg !3597

; <label>:110:                                    ; preds = %58, %58
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3560, metadata !640), !dbg !3598
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3567, metadata !640), !dbg !3600
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3567, metadata !640), !dbg !3600
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3560, metadata !640), !dbg !3598
  %111 = sdiv i64 -9223372036854775808, %59
  %112 = icmp slt i64 %35, %111, !dbg !3601
  br i1 %112, label %119, label %113, !dbg !3603

; <label>:113:                                    ; preds = %110
  %114 = udiv i64 9223372036854775807, %59, !dbg !3604
  %115 = icmp slt i64 %114, %35, !dbg !3605
  %116 = mul nsw i64 %35, %59, !dbg !3606
  %117 = select i1 %115, i64 9223372036854775807, i64 %116, !dbg !3607
  %118 = zext i1 %115 to i32, !dbg !3607
  br label %119, !dbg !3607

; <label>:119:                                    ; preds = %113, %110
  %120 = phi i64 [ -9223372036854775808, %110 ], [ %117, %113 ]
  %121 = phi i32 [ 1, %110 ], [ %118, %113 ]
  tail call void @llvm.dbg.value(metadata i32 %121, i64 0, metadata !3567, metadata !640), !dbg !3600
  tail call void @llvm.dbg.value(metadata i32 %121, i64 0, metadata !3567, metadata !640), !dbg !3600
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3560, metadata !640), !dbg !3598
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3560, metadata !640), !dbg !3598
  %122 = icmp slt i64 %120, %111, !dbg !3601
  br i1 %122, label %279, label %273, !dbg !3603

; <label>:123:                                    ; preds = %58
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3560, metadata !640), !dbg !3608
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3567, metadata !640), !dbg !3610
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3567, metadata !640), !dbg !3610
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3560, metadata !640), !dbg !3608
  %124 = sdiv i64 -9223372036854775808, %59
  %125 = icmp slt i64 %35, %124, !dbg !3611
  br i1 %125, label %132, label %126, !dbg !3613

; <label>:126:                                    ; preds = %123
  %127 = udiv i64 9223372036854775807, %59, !dbg !3614
  %128 = icmp slt i64 %127, %35, !dbg !3615
  %129 = mul nsw i64 %35, %59, !dbg !3616
  %130 = select i1 %128, i64 9223372036854775807, i64 %129, !dbg !3617
  %131 = zext i1 %128 to i32, !dbg !3617
  br label %132, !dbg !3617

; <label>:132:                                    ; preds = %126, %123
  %133 = phi i64 [ -9223372036854775808, %123 ], [ %130, %126 ]
  %134 = phi i32 [ 1, %123 ], [ %131, %126 ]
  tail call void @llvm.dbg.value(metadata i32 %134, i64 0, metadata !3567, metadata !640), !dbg !3610
  tail call void @llvm.dbg.value(metadata i32 %134, i64 0, metadata !3567, metadata !640), !dbg !3610
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3560, metadata !640), !dbg !3608
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3560, metadata !640), !dbg !3608
  %135 = icmp slt i64 %133, %124, !dbg !3611
  br i1 %135, label %289, label %283, !dbg !3613

; <label>:136:                                    ; preds = %58, %58
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3560, metadata !640), !dbg !3618
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3567, metadata !640), !dbg !3620
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3567, metadata !640), !dbg !3620
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3560, metadata !640), !dbg !3618
  %137 = sdiv i64 -9223372036854775808, %59
  %138 = icmp slt i64 %35, %137, !dbg !3621
  br i1 %138, label %145, label %139, !dbg !3623

; <label>:139:                                    ; preds = %136
  %140 = udiv i64 9223372036854775807, %59, !dbg !3624
  %141 = icmp slt i64 %140, %35, !dbg !3625
  %142 = mul nsw i64 %35, %59, !dbg !3626
  %143 = select i1 %141, i64 9223372036854775807, i64 %142, !dbg !3627
  %144 = zext i1 %141 to i32, !dbg !3627
  br label %145, !dbg !3627

; <label>:145:                                    ; preds = %139, %136
  %146 = phi i64 [ -9223372036854775808, %136 ], [ %143, %139 ]
  %147 = phi i32 [ 1, %136 ], [ %144, %139 ]
  tail call void @llvm.dbg.value(metadata i32 %147, i64 0, metadata !3567, metadata !640), !dbg !3620
  tail call void @llvm.dbg.value(metadata i32 %147, i64 0, metadata !3567, metadata !640), !dbg !3620
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3560, metadata !640), !dbg !3618
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3560, metadata !640), !dbg !3618
  %148 = icmp slt i64 %146, %137, !dbg !3621
  br i1 %148, label %332, label %326, !dbg !3623

; <label>:149:                                    ; preds = %58
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3537, metadata !640), !dbg !3628
  %150 = icmp slt i64 %35, -4611686018427387904, !dbg !3630
  br i1 %150, label %184, label %151, !dbg !3631

; <label>:151:                                    ; preds = %149
  %152 = icmp sgt i64 %35, 4611686018427387903, !dbg !3632
  %153 = shl nsw i64 %35, 1, !dbg !3633
  %154 = select i1 %152, i64 9223372036854775807, i64 %153, !dbg !3634
  %155 = zext i1 %152 to i32, !dbg !3634
  br label %184, !dbg !3634

; <label>:156:                                    ; preds = %58
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !3560, metadata !640), !dbg !3635
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3567, metadata !640), !dbg !3637
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3567, metadata !640), !dbg !3637
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !3560, metadata !640), !dbg !3635
  %157 = sdiv i64 -9223372036854775808, %59
  %158 = icmp slt i64 %35, %157, !dbg !3638
  br i1 %158, label %165, label %159, !dbg !3640

; <label>:159:                                    ; preds = %156
  %160 = udiv i64 9223372036854775807, %59, !dbg !3641
  %161 = icmp slt i64 %160, %35, !dbg !3642
  %162 = mul nsw i64 %35, %59, !dbg !3643
  %163 = select i1 %161, i64 9223372036854775807, i64 %162, !dbg !3644
  %164 = zext i1 %161 to i32, !dbg !3644
  br label %165, !dbg !3644

; <label>:165:                                    ; preds = %159, %156
  %166 = phi i64 [ -9223372036854775808, %156 ], [ %163, %159 ]
  %167 = phi i32 [ 1, %156 ], [ %164, %159 ]
  tail call void @llvm.dbg.value(metadata i32 %167, i64 0, metadata !3567, metadata !640), !dbg !3637
  tail call void @llvm.dbg.value(metadata i32 %167, i64 0, metadata !3567, metadata !640), !dbg !3637
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3560, metadata !640), !dbg !3635
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3560, metadata !640), !dbg !3635
  %168 = icmp slt i64 %166, %157, !dbg !3638
  br i1 %168, label %364, label %358, !dbg !3640

; <label>:169:                                    ; preds = %58
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3560, metadata !640), !dbg !3645
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3567, metadata !640), !dbg !3647
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3567, metadata !640), !dbg !3647
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3560, metadata !640), !dbg !3645
  %170 = sdiv i64 -9223372036854775808, %59
  %171 = icmp slt i64 %35, %170, !dbg !3648
  br i1 %171, label %178, label %172, !dbg !3650

; <label>:172:                                    ; preds = %169
  %173 = udiv i64 9223372036854775807, %59, !dbg !3651
  %174 = icmp slt i64 %173, %35, !dbg !3652
  %175 = mul nsw i64 %35, %59, !dbg !3653
  %176 = select i1 %174, i64 9223372036854775807, i64 %175, !dbg !3654
  %177 = zext i1 %174 to i32, !dbg !3654
  br label %178, !dbg !3654

; <label>:178:                                    ; preds = %172, %169
  %179 = phi i64 [ -9223372036854775808, %169 ], [ %176, %172 ]
  %180 = phi i32 [ 1, %169 ], [ %177, %172 ]
  tail call void @llvm.dbg.value(metadata i32 %180, i64 0, metadata !3567, metadata !640), !dbg !3647
  tail call void @llvm.dbg.value(metadata i32 %180, i64 0, metadata !3567, metadata !640), !dbg !3647
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3560, metadata !640), !dbg !3645
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3560, metadata !640), !dbg !3645
  %181 = icmp slt i64 %179, %170, !dbg !3648
  br i1 %181, label %440, label %434, !dbg !3650

; <label>:182:                                    ; preds = %58
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3456, metadata !640), !dbg !3480
  store i64 %35, i64* %3, align 8, !dbg !3655, !tbaa !776
  %183 = or i32 %34, 2, !dbg !3656
  br label %196, !dbg !3657

; <label>:184:                                    ; preds = %101, %104, %495, %430, %354, %322, %279, %269, %248, %58, %61, %63, %68, %70, %149, %151
  %185 = phi i64 [ %35, %58 ], [ -9223372036854775808, %61 ], [ %66, %63 ], [ -9223372036854775808, %68 ], [ %73, %70 ], [ -9223372036854775808, %149 ], [ %154, %151 ], [ %249, %248 ], [ %270, %269 ], [ %280, %279 ], [ %323, %322 ], [ %355, %354 ], [ %431, %430 ], [ %496, %495 ], [ -9223372036854775808, %101 ], [ %108, %104 ]
  %186 = phi i32 [ 0, %58 ], [ 1, %61 ], [ %67, %63 ], [ 1, %68 ], [ %74, %70 ], [ 1, %149 ], [ %155, %151 ], [ %251, %248 ], [ %272, %269 ], [ %282, %279 ], [ %325, %322 ], [ %357, %354 ], [ %433, %430 ], [ %498, %495 ], [ 1, %101 ], [ %109, %104 ]
  tail call void @llvm.dbg.value(metadata i32 %186, i64 0, metadata !3462, metadata !640), !dbg !3658
  %187 = or i32 %186, %34, !dbg !3659
  tail call void @llvm.dbg.value(metadata i32 %187, i64 0, metadata !3457, metadata !640), !dbg !3469
  %188 = getelementptr inbounds i8, i8* %15, i64 %60, !dbg !3660
  store i8* %188, i8** %12, align 8, !dbg !3660, !tbaa !648
  %189 = load i8, i8* %188, align 1, !dbg !3661, !tbaa !727
  %190 = icmp eq i8 %189, 0, !dbg !3661
  %191 = or i32 %187, 2, !dbg !3663
  tail call void @llvm.dbg.value(metadata i32 %191, i64 0, metadata !3457, metadata !640), !dbg !3469
  %192 = select i1 %190, i32 %187, i32 %191, !dbg !3664
  tail call void @llvm.dbg.value(metadata i32 %192, i64 0, metadata !3457, metadata !640), !dbg !3469
  tail call void @llvm.dbg.value(metadata i32 %192, i64 0, metadata !3457, metadata !640), !dbg !3469
  br label %193

; <label>:193:                                    ; preds = %184, %33
  %194 = phi i64 [ %35, %33 ], [ %185, %184 ]
  %195 = phi i32 [ %34, %33 ], [ %192, %184 ]
  tail call void @llvm.dbg.value(metadata i32 %195, i64 0, metadata !3457, metadata !640), !dbg !3469
  tail call void @llvm.dbg.value(metadata i64 %194, i64 0, metadata !3456, metadata !640), !dbg !3480
  store i64 %194, i64* %3, align 8, !dbg !3665, !tbaa !776
  br label %196, !dbg !3666

; <label>:196:                                    ; preds = %42, %182, %26, %17, %19, %22, %193, %32
  %197 = phi i32 [ %195, %193 ], [ %30, %32 ], [ 4, %22 ], [ 4, %19 ], [ 4, %17 ], [ 4, %26 ], [ %43, %42 ], [ %183, %182 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %7) #10, !dbg !3667
  ret i32 %197, !dbg !3667

; <label>:198:                                    ; preds = %84
  %199 = udiv i64 9223372036854775807, %59, !dbg !3574
  %200 = icmp slt i64 %199, %85, !dbg !3575
  %201 = mul nsw i64 %85, %59, !dbg !3576
  %202 = select i1 %200, i64 9223372036854775807, i64 %201, !dbg !3577
  %203 = zext i1 %200 to i32, !dbg !3577
  br label %204, !dbg !3577

; <label>:204:                                    ; preds = %198, %84
  %205 = phi i64 [ -9223372036854775808, %84 ], [ %202, %198 ]
  %206 = phi i32 [ 1, %84 ], [ %203, %198 ]
  %207 = or i32 %206, %86, !dbg !3668
  tail call void @llvm.dbg.value(metadata i32 %86, i64 0, metadata !3567, metadata !640), !dbg !3570
  tail call void @llvm.dbg.value(metadata i32 %86, i64 0, metadata !3567, metadata !640), !dbg !3570
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3560, metadata !640), !dbg !3568
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3560, metadata !640), !dbg !3568
  %208 = icmp slt i64 %205, %76, !dbg !3571
  br i1 %208, label %215, label %209, !dbg !3573

; <label>:209:                                    ; preds = %204
  %210 = udiv i64 9223372036854775807, %59, !dbg !3574
  %211 = icmp slt i64 %210, %205, !dbg !3575
  %212 = mul nsw i64 %205, %59, !dbg !3576
  %213 = select i1 %211, i64 9223372036854775807, i64 %212, !dbg !3577
  %214 = zext i1 %211 to i32, !dbg !3577
  br label %215, !dbg !3577

; <label>:215:                                    ; preds = %209, %204
  %216 = phi i64 [ -9223372036854775808, %204 ], [ %213, %209 ]
  %217 = phi i32 [ 1, %204 ], [ %214, %209 ]
  %218 = or i32 %217, %207, !dbg !3668
  tail call void @llvm.dbg.value(metadata i32 %86, i64 0, metadata !3567, metadata !640), !dbg !3570
  tail call void @llvm.dbg.value(metadata i32 %86, i64 0, metadata !3567, metadata !640), !dbg !3570
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3560, metadata !640), !dbg !3568
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3560, metadata !640), !dbg !3568
  %219 = icmp slt i64 %216, %76, !dbg !3571
  br i1 %219, label %226, label %220, !dbg !3573

; <label>:220:                                    ; preds = %215
  %221 = udiv i64 9223372036854775807, %59, !dbg !3574
  %222 = icmp slt i64 %221, %216, !dbg !3575
  %223 = mul nsw i64 %216, %59, !dbg !3576
  %224 = select i1 %222, i64 9223372036854775807, i64 %223, !dbg !3577
  %225 = zext i1 %222 to i32, !dbg !3577
  br label %226, !dbg !3577

; <label>:226:                                    ; preds = %220, %215
  %227 = phi i64 [ -9223372036854775808, %215 ], [ %224, %220 ]
  %228 = phi i32 [ 1, %215 ], [ %225, %220 ]
  %229 = or i32 %228, %218, !dbg !3668
  tail call void @llvm.dbg.value(metadata i32 %86, i64 0, metadata !3567, metadata !640), !dbg !3570
  tail call void @llvm.dbg.value(metadata i32 %86, i64 0, metadata !3567, metadata !640), !dbg !3570
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3560, metadata !640), !dbg !3568
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3560, metadata !640), !dbg !3568
  %230 = icmp slt i64 %227, %76, !dbg !3571
  br i1 %230, label %237, label %231, !dbg !3573

; <label>:231:                                    ; preds = %226
  %232 = udiv i64 9223372036854775807, %59, !dbg !3574
  %233 = icmp slt i64 %232, %227, !dbg !3575
  %234 = mul nsw i64 %227, %59, !dbg !3576
  %235 = select i1 %233, i64 9223372036854775807, i64 %234, !dbg !3577
  %236 = zext i1 %233 to i32, !dbg !3577
  br label %237, !dbg !3577

; <label>:237:                                    ; preds = %231, %226
  %238 = phi i64 [ -9223372036854775808, %226 ], [ %235, %231 ]
  %239 = phi i32 [ 1, %226 ], [ %236, %231 ]
  %240 = or i32 %239, %229, !dbg !3668
  tail call void @llvm.dbg.value(metadata i32 %86, i64 0, metadata !3567, metadata !640), !dbg !3570
  tail call void @llvm.dbg.value(metadata i32 %86, i64 0, metadata !3567, metadata !640), !dbg !3570
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3560, metadata !640), !dbg !3568
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3560, metadata !640), !dbg !3568
  %241 = icmp slt i64 %238, %76, !dbg !3571
  br i1 %241, label %248, label %242, !dbg !3573

; <label>:242:                                    ; preds = %237
  %243 = udiv i64 9223372036854775807, %59, !dbg !3574
  %244 = icmp slt i64 %243, %238, !dbg !3575
  %245 = mul nsw i64 %238, %59, !dbg !3576
  %246 = select i1 %244, i64 9223372036854775807, i64 %245, !dbg !3577
  %247 = zext i1 %244 to i32, !dbg !3577
  br label %248, !dbg !3577

; <label>:248:                                    ; preds = %242, %237
  %249 = phi i64 [ -9223372036854775808, %237 ], [ %246, %242 ]
  %250 = phi i32 [ 1, %237 ], [ %247, %242 ]
  %251 = or i32 %250, %240, !dbg !3668
  tail call void @llvm.dbg.value(metadata i32 %86, i64 0, metadata !3567, metadata !640), !dbg !3570
  tail call void @llvm.dbg.value(metadata i32 %86, i64 0, metadata !3567, metadata !640), !dbg !3570
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3560, metadata !640), !dbg !3568
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3560, metadata !640), !dbg !3568
  br label %184, !dbg !3658

; <label>:252:                                    ; preds = %97
  %253 = udiv i64 9223372036854775807, %59, !dbg !3584
  %254 = icmp slt i64 %253, %98, !dbg !3585
  %255 = mul nsw i64 %98, %59, !dbg !3586
  %256 = select i1 %254, i64 9223372036854775807, i64 %255, !dbg !3587
  %257 = zext i1 %254 to i32, !dbg !3587
  br label %258, !dbg !3587

; <label>:258:                                    ; preds = %252, %97
  %259 = phi i64 [ -9223372036854775808, %97 ], [ %256, %252 ]
  %260 = phi i32 [ 1, %97 ], [ %257, %252 ]
  %261 = or i32 %260, %99, !dbg !3669
  tail call void @llvm.dbg.value(metadata i32 %99, i64 0, metadata !3567, metadata !640), !dbg !3580
  tail call void @llvm.dbg.value(metadata i32 %99, i64 0, metadata !3567, metadata !640), !dbg !3580
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3560, metadata !640), !dbg !3578
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3560, metadata !640), !dbg !3578
  %262 = icmp slt i64 %259, %89, !dbg !3581
  br i1 %262, label %269, label %263, !dbg !3583

; <label>:263:                                    ; preds = %258
  %264 = udiv i64 9223372036854775807, %59, !dbg !3584
  %265 = icmp slt i64 %264, %259, !dbg !3585
  %266 = mul nsw i64 %259, %59, !dbg !3586
  %267 = select i1 %265, i64 9223372036854775807, i64 %266, !dbg !3587
  %268 = zext i1 %265 to i32, !dbg !3587
  br label %269, !dbg !3587

; <label>:269:                                    ; preds = %263, %258
  %270 = phi i64 [ -9223372036854775808, %258 ], [ %267, %263 ]
  %271 = phi i32 [ 1, %258 ], [ %268, %263 ]
  %272 = or i32 %271, %261, !dbg !3669
  tail call void @llvm.dbg.value(metadata i32 %99, i64 0, metadata !3567, metadata !640), !dbg !3580
  tail call void @llvm.dbg.value(metadata i32 %99, i64 0, metadata !3567, metadata !640), !dbg !3580
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3560, metadata !640), !dbg !3578
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3560, metadata !640), !dbg !3578
  br label %184, !dbg !3658

; <label>:273:                                    ; preds = %119
  %274 = udiv i64 9223372036854775807, %59, !dbg !3604
  %275 = icmp slt i64 %274, %120, !dbg !3605
  %276 = mul nsw i64 %120, %59, !dbg !3606
  %277 = select i1 %275, i64 9223372036854775807, i64 %276, !dbg !3607
  %278 = zext i1 %275 to i32, !dbg !3607
  br label %279, !dbg !3607

; <label>:279:                                    ; preds = %273, %119
  %280 = phi i64 [ -9223372036854775808, %119 ], [ %277, %273 ]
  %281 = phi i32 [ 1, %119 ], [ %278, %273 ]
  %282 = or i32 %281, %121, !dbg !3670
  tail call void @llvm.dbg.value(metadata i32 %121, i64 0, metadata !3567, metadata !640), !dbg !3600
  tail call void @llvm.dbg.value(metadata i32 %121, i64 0, metadata !3567, metadata !640), !dbg !3600
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3560, metadata !640), !dbg !3598
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3560, metadata !640), !dbg !3598
  br label %184, !dbg !3658

; <label>:283:                                    ; preds = %132
  %284 = udiv i64 9223372036854775807, %59, !dbg !3614
  %285 = icmp slt i64 %284, %133, !dbg !3615
  %286 = mul nsw i64 %133, %59, !dbg !3616
  %287 = select i1 %285, i64 9223372036854775807, i64 %286, !dbg !3617
  %288 = zext i1 %285 to i32, !dbg !3617
  br label %289, !dbg !3617

; <label>:289:                                    ; preds = %283, %132
  %290 = phi i64 [ -9223372036854775808, %132 ], [ %287, %283 ]
  %291 = phi i32 [ 1, %132 ], [ %288, %283 ]
  %292 = or i32 %291, %134, !dbg !3671
  tail call void @llvm.dbg.value(metadata i32 %134, i64 0, metadata !3567, metadata !640), !dbg !3610
  tail call void @llvm.dbg.value(metadata i32 %134, i64 0, metadata !3567, metadata !640), !dbg !3610
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3560, metadata !640), !dbg !3608
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3560, metadata !640), !dbg !3608
  %293 = icmp slt i64 %290, %124, !dbg !3611
  br i1 %293, label %300, label %294, !dbg !3613

; <label>:294:                                    ; preds = %289
  %295 = udiv i64 9223372036854775807, %59, !dbg !3614
  %296 = icmp slt i64 %295, %290, !dbg !3615
  %297 = mul nsw i64 %290, %59, !dbg !3616
  %298 = select i1 %296, i64 9223372036854775807, i64 %297, !dbg !3617
  %299 = zext i1 %296 to i32, !dbg !3617
  br label %300, !dbg !3617

; <label>:300:                                    ; preds = %294, %289
  %301 = phi i64 [ -9223372036854775808, %289 ], [ %298, %294 ]
  %302 = phi i32 [ 1, %289 ], [ %299, %294 ]
  %303 = or i32 %302, %292, !dbg !3671
  tail call void @llvm.dbg.value(metadata i32 %134, i64 0, metadata !3567, metadata !640), !dbg !3610
  tail call void @llvm.dbg.value(metadata i32 %134, i64 0, metadata !3567, metadata !640), !dbg !3610
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3560, metadata !640), !dbg !3608
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3560, metadata !640), !dbg !3608
  %304 = icmp slt i64 %301, %124, !dbg !3611
  br i1 %304, label %311, label %305, !dbg !3613

; <label>:305:                                    ; preds = %300
  %306 = udiv i64 9223372036854775807, %59, !dbg !3614
  %307 = icmp slt i64 %306, %301, !dbg !3615
  %308 = mul nsw i64 %301, %59, !dbg !3616
  %309 = select i1 %307, i64 9223372036854775807, i64 %308, !dbg !3617
  %310 = zext i1 %307 to i32, !dbg !3617
  br label %311, !dbg !3617

; <label>:311:                                    ; preds = %305, %300
  %312 = phi i64 [ -9223372036854775808, %300 ], [ %309, %305 ]
  %313 = phi i32 [ 1, %300 ], [ %310, %305 ]
  %314 = or i32 %313, %303, !dbg !3671
  tail call void @llvm.dbg.value(metadata i32 %134, i64 0, metadata !3567, metadata !640), !dbg !3610
  tail call void @llvm.dbg.value(metadata i32 %134, i64 0, metadata !3567, metadata !640), !dbg !3610
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3560, metadata !640), !dbg !3608
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3560, metadata !640), !dbg !3608
  %315 = icmp slt i64 %312, %124, !dbg !3611
  br i1 %315, label %322, label %316, !dbg !3613

; <label>:316:                                    ; preds = %311
  %317 = udiv i64 9223372036854775807, %59, !dbg !3614
  %318 = icmp slt i64 %317, %312, !dbg !3615
  %319 = mul nsw i64 %312, %59, !dbg !3616
  %320 = select i1 %318, i64 9223372036854775807, i64 %319, !dbg !3617
  %321 = zext i1 %318 to i32, !dbg !3617
  br label %322, !dbg !3617

; <label>:322:                                    ; preds = %316, %311
  %323 = phi i64 [ -9223372036854775808, %311 ], [ %320, %316 ]
  %324 = phi i32 [ 1, %311 ], [ %321, %316 ]
  %325 = or i32 %324, %314, !dbg !3671
  tail call void @llvm.dbg.value(metadata i32 %134, i64 0, metadata !3567, metadata !640), !dbg !3610
  tail call void @llvm.dbg.value(metadata i32 %134, i64 0, metadata !3567, metadata !640), !dbg !3610
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3560, metadata !640), !dbg !3608
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3560, metadata !640), !dbg !3608
  br label %184, !dbg !3658

; <label>:326:                                    ; preds = %145
  %327 = udiv i64 9223372036854775807, %59, !dbg !3624
  %328 = icmp slt i64 %327, %146, !dbg !3625
  %329 = mul nsw i64 %146, %59, !dbg !3626
  %330 = select i1 %328, i64 9223372036854775807, i64 %329, !dbg !3627
  %331 = zext i1 %328 to i32, !dbg !3627
  br label %332, !dbg !3627

; <label>:332:                                    ; preds = %326, %145
  %333 = phi i64 [ -9223372036854775808, %145 ], [ %330, %326 ]
  %334 = phi i32 [ 1, %145 ], [ %331, %326 ]
  %335 = or i32 %334, %147, !dbg !3672
  tail call void @llvm.dbg.value(metadata i32 %147, i64 0, metadata !3567, metadata !640), !dbg !3620
  tail call void @llvm.dbg.value(metadata i32 %147, i64 0, metadata !3567, metadata !640), !dbg !3620
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3560, metadata !640), !dbg !3618
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3560, metadata !640), !dbg !3618
  %336 = icmp slt i64 %333, %137, !dbg !3621
  br i1 %336, label %343, label %337, !dbg !3623

; <label>:337:                                    ; preds = %332
  %338 = udiv i64 9223372036854775807, %59, !dbg !3624
  %339 = icmp slt i64 %338, %333, !dbg !3625
  %340 = mul nsw i64 %333, %59, !dbg !3626
  %341 = select i1 %339, i64 9223372036854775807, i64 %340, !dbg !3627
  %342 = zext i1 %339 to i32, !dbg !3627
  br label %343, !dbg !3627

; <label>:343:                                    ; preds = %337, %332
  %344 = phi i64 [ -9223372036854775808, %332 ], [ %341, %337 ]
  %345 = phi i32 [ 1, %332 ], [ %342, %337 ]
  %346 = or i32 %345, %335, !dbg !3672
  tail call void @llvm.dbg.value(metadata i32 %147, i64 0, metadata !3567, metadata !640), !dbg !3620
  tail call void @llvm.dbg.value(metadata i32 %147, i64 0, metadata !3567, metadata !640), !dbg !3620
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3560, metadata !640), !dbg !3618
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3560, metadata !640), !dbg !3618
  %347 = icmp slt i64 %344, %137, !dbg !3621
  br i1 %347, label %354, label %348, !dbg !3623

; <label>:348:                                    ; preds = %343
  %349 = udiv i64 9223372036854775807, %59, !dbg !3624
  %350 = icmp slt i64 %349, %344, !dbg !3625
  %351 = mul nsw i64 %344, %59, !dbg !3626
  %352 = select i1 %350, i64 9223372036854775807, i64 %351, !dbg !3627
  %353 = zext i1 %350 to i32, !dbg !3627
  br label %354, !dbg !3627

; <label>:354:                                    ; preds = %348, %343
  %355 = phi i64 [ -9223372036854775808, %343 ], [ %352, %348 ]
  %356 = phi i32 [ 1, %343 ], [ %353, %348 ]
  %357 = or i32 %356, %346, !dbg !3672
  tail call void @llvm.dbg.value(metadata i32 %147, i64 0, metadata !3567, metadata !640), !dbg !3620
  tail call void @llvm.dbg.value(metadata i32 %147, i64 0, metadata !3567, metadata !640), !dbg !3620
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3560, metadata !640), !dbg !3618
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3560, metadata !640), !dbg !3618
  br label %184, !dbg !3658

; <label>:358:                                    ; preds = %165
  %359 = udiv i64 9223372036854775807, %59, !dbg !3641
  %360 = icmp slt i64 %359, %166, !dbg !3642
  %361 = mul nsw i64 %166, %59, !dbg !3643
  %362 = select i1 %360, i64 9223372036854775807, i64 %361, !dbg !3644
  %363 = zext i1 %360 to i32, !dbg !3644
  br label %364, !dbg !3644

; <label>:364:                                    ; preds = %358, %165
  %365 = phi i64 [ -9223372036854775808, %165 ], [ %362, %358 ]
  %366 = phi i32 [ 1, %165 ], [ %363, %358 ]
  %367 = or i32 %366, %167, !dbg !3673
  tail call void @llvm.dbg.value(metadata i32 %167, i64 0, metadata !3567, metadata !640), !dbg !3637
  tail call void @llvm.dbg.value(metadata i32 %167, i64 0, metadata !3567, metadata !640), !dbg !3637
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3560, metadata !640), !dbg !3635
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3560, metadata !640), !dbg !3635
  %368 = icmp slt i64 %365, %157, !dbg !3638
  br i1 %368, label %375, label %369, !dbg !3640

; <label>:369:                                    ; preds = %364
  %370 = udiv i64 9223372036854775807, %59, !dbg !3641
  %371 = icmp slt i64 %370, %365, !dbg !3642
  %372 = mul nsw i64 %365, %59, !dbg !3643
  %373 = select i1 %371, i64 9223372036854775807, i64 %372, !dbg !3644
  %374 = zext i1 %371 to i32, !dbg !3644
  br label %375, !dbg !3644

; <label>:375:                                    ; preds = %369, %364
  %376 = phi i64 [ -9223372036854775808, %364 ], [ %373, %369 ]
  %377 = phi i32 [ 1, %364 ], [ %374, %369 ]
  %378 = or i32 %377, %367, !dbg !3673
  tail call void @llvm.dbg.value(metadata i32 %167, i64 0, metadata !3567, metadata !640), !dbg !3637
  tail call void @llvm.dbg.value(metadata i32 %167, i64 0, metadata !3567, metadata !640), !dbg !3637
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3560, metadata !640), !dbg !3635
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3560, metadata !640), !dbg !3635
  %379 = icmp slt i64 %376, %157, !dbg !3638
  br i1 %379, label %386, label %380, !dbg !3640

; <label>:380:                                    ; preds = %375
  %381 = udiv i64 9223372036854775807, %59, !dbg !3641
  %382 = icmp slt i64 %381, %376, !dbg !3642
  %383 = mul nsw i64 %376, %59, !dbg !3643
  %384 = select i1 %382, i64 9223372036854775807, i64 %383, !dbg !3644
  %385 = zext i1 %382 to i32, !dbg !3644
  br label %386, !dbg !3644

; <label>:386:                                    ; preds = %380, %375
  %387 = phi i64 [ -9223372036854775808, %375 ], [ %384, %380 ]
  %388 = phi i32 [ 1, %375 ], [ %385, %380 ]
  %389 = or i32 %388, %378, !dbg !3673
  tail call void @llvm.dbg.value(metadata i32 %167, i64 0, metadata !3567, metadata !640), !dbg !3637
  tail call void @llvm.dbg.value(metadata i32 %167, i64 0, metadata !3567, metadata !640), !dbg !3637
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3560, metadata !640), !dbg !3635
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3560, metadata !640), !dbg !3635
  %390 = icmp slt i64 %387, %157, !dbg !3638
  br i1 %390, label %397, label %391, !dbg !3640

; <label>:391:                                    ; preds = %386
  %392 = udiv i64 9223372036854775807, %59, !dbg !3641
  %393 = icmp slt i64 %392, %387, !dbg !3642
  %394 = mul nsw i64 %387, %59, !dbg !3643
  %395 = select i1 %393, i64 9223372036854775807, i64 %394, !dbg !3644
  %396 = zext i1 %393 to i32, !dbg !3644
  br label %397, !dbg !3644

; <label>:397:                                    ; preds = %391, %386
  %398 = phi i64 [ -9223372036854775808, %386 ], [ %395, %391 ]
  %399 = phi i32 [ 1, %386 ], [ %396, %391 ]
  %400 = or i32 %399, %389, !dbg !3673
  tail call void @llvm.dbg.value(metadata i32 %167, i64 0, metadata !3567, metadata !640), !dbg !3637
  tail call void @llvm.dbg.value(metadata i32 %167, i64 0, metadata !3567, metadata !640), !dbg !3637
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3560, metadata !640), !dbg !3635
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3560, metadata !640), !dbg !3635
  %401 = icmp slt i64 %398, %157, !dbg !3638
  br i1 %401, label %408, label %402, !dbg !3640

; <label>:402:                                    ; preds = %397
  %403 = udiv i64 9223372036854775807, %59, !dbg !3641
  %404 = icmp slt i64 %403, %398, !dbg !3642
  %405 = mul nsw i64 %398, %59, !dbg !3643
  %406 = select i1 %404, i64 9223372036854775807, i64 %405, !dbg !3644
  %407 = zext i1 %404 to i32, !dbg !3644
  br label %408, !dbg !3644

; <label>:408:                                    ; preds = %402, %397
  %409 = phi i64 [ -9223372036854775808, %397 ], [ %406, %402 ]
  %410 = phi i32 [ 1, %397 ], [ %407, %402 ]
  %411 = or i32 %410, %400, !dbg !3673
  tail call void @llvm.dbg.value(metadata i32 %167, i64 0, metadata !3567, metadata !640), !dbg !3637
  tail call void @llvm.dbg.value(metadata i32 %167, i64 0, metadata !3567, metadata !640), !dbg !3637
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3560, metadata !640), !dbg !3635
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3560, metadata !640), !dbg !3635
  %412 = icmp slt i64 %409, %157, !dbg !3638
  br i1 %412, label %419, label %413, !dbg !3640

; <label>:413:                                    ; preds = %408
  %414 = udiv i64 9223372036854775807, %59, !dbg !3641
  %415 = icmp slt i64 %414, %409, !dbg !3642
  %416 = mul nsw i64 %409, %59, !dbg !3643
  %417 = select i1 %415, i64 9223372036854775807, i64 %416, !dbg !3644
  %418 = zext i1 %415 to i32, !dbg !3644
  br label %419, !dbg !3644

; <label>:419:                                    ; preds = %413, %408
  %420 = phi i64 [ -9223372036854775808, %408 ], [ %417, %413 ]
  %421 = phi i32 [ 1, %408 ], [ %418, %413 ]
  %422 = or i32 %421, %411, !dbg !3673
  tail call void @llvm.dbg.value(metadata i32 %167, i64 0, metadata !3567, metadata !640), !dbg !3637
  tail call void @llvm.dbg.value(metadata i32 %167, i64 0, metadata !3567, metadata !640), !dbg !3637
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3560, metadata !640), !dbg !3635
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3560, metadata !640), !dbg !3635
  %423 = icmp slt i64 %420, %157, !dbg !3638
  br i1 %423, label %430, label %424, !dbg !3640

; <label>:424:                                    ; preds = %419
  %425 = udiv i64 9223372036854775807, %59, !dbg !3641
  %426 = icmp slt i64 %425, %420, !dbg !3642
  %427 = mul nsw i64 %420, %59, !dbg !3643
  %428 = select i1 %426, i64 9223372036854775807, i64 %427, !dbg !3644
  %429 = zext i1 %426 to i32, !dbg !3644
  br label %430, !dbg !3644

; <label>:430:                                    ; preds = %424, %419
  %431 = phi i64 [ -9223372036854775808, %419 ], [ %428, %424 ]
  %432 = phi i32 [ 1, %419 ], [ %429, %424 ]
  %433 = or i32 %432, %422, !dbg !3673
  tail call void @llvm.dbg.value(metadata i32 %167, i64 0, metadata !3567, metadata !640), !dbg !3637
  tail call void @llvm.dbg.value(metadata i32 %167, i64 0, metadata !3567, metadata !640), !dbg !3637
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3560, metadata !640), !dbg !3635
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3560, metadata !640), !dbg !3635
  br label %184, !dbg !3658

; <label>:434:                                    ; preds = %178
  %435 = udiv i64 9223372036854775807, %59, !dbg !3651
  %436 = icmp slt i64 %435, %179, !dbg !3652
  %437 = mul nsw i64 %179, %59, !dbg !3653
  %438 = select i1 %436, i64 9223372036854775807, i64 %437, !dbg !3654
  %439 = zext i1 %436 to i32, !dbg !3654
  br label %440, !dbg !3654

; <label>:440:                                    ; preds = %434, %178
  %441 = phi i64 [ -9223372036854775808, %178 ], [ %438, %434 ]
  %442 = phi i32 [ 1, %178 ], [ %439, %434 ]
  %443 = or i32 %442, %180, !dbg !3674
  tail call void @llvm.dbg.value(metadata i32 %180, i64 0, metadata !3567, metadata !640), !dbg !3647
  tail call void @llvm.dbg.value(metadata i32 %180, i64 0, metadata !3567, metadata !640), !dbg !3647
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3560, metadata !640), !dbg !3645
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3560, metadata !640), !dbg !3645
  %444 = icmp slt i64 %441, %170, !dbg !3648
  br i1 %444, label %451, label %445, !dbg !3650

; <label>:445:                                    ; preds = %440
  %446 = udiv i64 9223372036854775807, %59, !dbg !3651
  %447 = icmp slt i64 %446, %441, !dbg !3652
  %448 = mul nsw i64 %441, %59, !dbg !3653
  %449 = select i1 %447, i64 9223372036854775807, i64 %448, !dbg !3654
  %450 = zext i1 %447 to i32, !dbg !3654
  br label %451, !dbg !3654

; <label>:451:                                    ; preds = %445, %440
  %452 = phi i64 [ -9223372036854775808, %440 ], [ %449, %445 ]
  %453 = phi i32 [ 1, %440 ], [ %450, %445 ]
  %454 = or i32 %453, %443, !dbg !3674
  tail call void @llvm.dbg.value(metadata i32 %180, i64 0, metadata !3567, metadata !640), !dbg !3647
  tail call void @llvm.dbg.value(metadata i32 %180, i64 0, metadata !3567, metadata !640), !dbg !3647
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3560, metadata !640), !dbg !3645
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3560, metadata !640), !dbg !3645
  %455 = icmp slt i64 %452, %170, !dbg !3648
  br i1 %455, label %462, label %456, !dbg !3650

; <label>:456:                                    ; preds = %451
  %457 = udiv i64 9223372036854775807, %59, !dbg !3651
  %458 = icmp slt i64 %457, %452, !dbg !3652
  %459 = mul nsw i64 %452, %59, !dbg !3653
  %460 = select i1 %458, i64 9223372036854775807, i64 %459, !dbg !3654
  %461 = zext i1 %458 to i32, !dbg !3654
  br label %462, !dbg !3654

; <label>:462:                                    ; preds = %456, %451
  %463 = phi i64 [ -9223372036854775808, %451 ], [ %460, %456 ]
  %464 = phi i32 [ 1, %451 ], [ %461, %456 ]
  %465 = or i32 %464, %454, !dbg !3674
  tail call void @llvm.dbg.value(metadata i32 %180, i64 0, metadata !3567, metadata !640), !dbg !3647
  tail call void @llvm.dbg.value(metadata i32 %180, i64 0, metadata !3567, metadata !640), !dbg !3647
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3560, metadata !640), !dbg !3645
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3560, metadata !640), !dbg !3645
  %466 = icmp slt i64 %463, %170, !dbg !3648
  br i1 %466, label %473, label %467, !dbg !3650

; <label>:467:                                    ; preds = %462
  %468 = udiv i64 9223372036854775807, %59, !dbg !3651
  %469 = icmp slt i64 %468, %463, !dbg !3652
  %470 = mul nsw i64 %463, %59, !dbg !3653
  %471 = select i1 %469, i64 9223372036854775807, i64 %470, !dbg !3654
  %472 = zext i1 %469 to i32, !dbg !3654
  br label %473, !dbg !3654

; <label>:473:                                    ; preds = %467, %462
  %474 = phi i64 [ -9223372036854775808, %462 ], [ %471, %467 ]
  %475 = phi i32 [ 1, %462 ], [ %472, %467 ]
  %476 = or i32 %475, %465, !dbg !3674
  tail call void @llvm.dbg.value(metadata i32 %180, i64 0, metadata !3567, metadata !640), !dbg !3647
  tail call void @llvm.dbg.value(metadata i32 %180, i64 0, metadata !3567, metadata !640), !dbg !3647
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3560, metadata !640), !dbg !3645
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3560, metadata !640), !dbg !3645
  %477 = icmp slt i64 %474, %170, !dbg !3648
  br i1 %477, label %484, label %478, !dbg !3650

; <label>:478:                                    ; preds = %473
  %479 = udiv i64 9223372036854775807, %59, !dbg !3651
  %480 = icmp slt i64 %479, %474, !dbg !3652
  %481 = mul nsw i64 %474, %59, !dbg !3653
  %482 = select i1 %480, i64 9223372036854775807, i64 %481, !dbg !3654
  %483 = zext i1 %480 to i32, !dbg !3654
  br label %484, !dbg !3654

; <label>:484:                                    ; preds = %478, %473
  %485 = phi i64 [ -9223372036854775808, %473 ], [ %482, %478 ]
  %486 = phi i32 [ 1, %473 ], [ %483, %478 ]
  %487 = or i32 %486, %476, !dbg !3674
  tail call void @llvm.dbg.value(metadata i32 %180, i64 0, metadata !3567, metadata !640), !dbg !3647
  tail call void @llvm.dbg.value(metadata i32 %180, i64 0, metadata !3567, metadata !640), !dbg !3647
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3560, metadata !640), !dbg !3645
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3560, metadata !640), !dbg !3645
  %488 = icmp slt i64 %485, %170, !dbg !3648
  br i1 %488, label %495, label %489, !dbg !3650

; <label>:489:                                    ; preds = %484
  %490 = udiv i64 9223372036854775807, %59, !dbg !3651
  %491 = icmp slt i64 %490, %485, !dbg !3652
  %492 = mul nsw i64 %485, %59, !dbg !3653
  %493 = select i1 %491, i64 9223372036854775807, i64 %492, !dbg !3654
  %494 = zext i1 %491 to i32, !dbg !3654
  br label %495, !dbg !3654

; <label>:495:                                    ; preds = %489, %484
  %496 = phi i64 [ -9223372036854775808, %484 ], [ %493, %489 ]
  %497 = phi i32 [ 1, %484 ], [ %494, %489 ]
  %498 = or i32 %497, %487, !dbg !3674
  tail call void @llvm.dbg.value(metadata i32 %180, i64 0, metadata !3567, metadata !640), !dbg !3647
  tail call void @llvm.dbg.value(metadata i32 %180, i64 0, metadata !3567, metadata !640), !dbg !3647
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3560, metadata !640), !dbg !3645
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3560, metadata !640), !dbg !3645
  br label %184, !dbg !3658
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #5

; Function Attrs: nounwind
declare i64 @strtol(i8* readonly, i8** nocapture, i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !3675 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3678, metadata !640), !dbg !3684
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3679, metadata !640), !dbg !3685
  %3 = icmp eq i64 %0, 0, !dbg !3686
  %4 = icmp eq i64 %1, 0, !dbg !3687
  %5 = or i1 %3, %4, !dbg !3689
  br i1 %5, label %12, label %6, !dbg !3689

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3690
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3681, metadata !640), !dbg !3691
  %8 = udiv i64 %7, %1, !dbg !3692
  %9 = icmp eq i64 %8, %0, !dbg !3694
  br i1 %9, label %12, label %10, !dbg !3695

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #1, !dbg !3696
  store i32 12, i32* %11, align 4, !dbg !3698, !tbaa !716
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3678, metadata !640), !dbg !3684
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !3679, metadata !640), !dbg !3685
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #10, !dbg !3699
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !3680, metadata !640), !dbg !3700
  br label %16, !dbg !3701

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !3702
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !3703 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !3720, metadata !640), !dbg !3729
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3721, metadata !640), !dbg !3730
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3722, metadata !640), !dbg !3731
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !3723, metadata !640), !dbg !3732
  %6 = bitcast i32* %5 to i8*, !dbg !3733
  call void @llvm.lifetime.start(i64 4, i8* nonnull %6) #10, !dbg !3733
  %7 = icmp eq i32* %0, null, !dbg !3734
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !3720, metadata !640), !dbg !3729
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3736
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !3720, metadata !640), !dbg !3729
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #10, !dbg !3737
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !3724, metadata !640), !dbg !3738
  %10 = icmp ugt i64 %9, -3, !dbg !3739
  %11 = icmp ne i64 %2, 0, !dbg !3740
  %12 = and i1 %11, %10, !dbg !3742
  br i1 %12, label %13, label %18, !dbg !3742

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #10, !dbg !3743
  br i1 %14, label %18, label %15, !dbg !3745

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3747, !tbaa !727
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !3726, metadata !640), !dbg !3748
  %17 = zext i8 %16 to i32, !dbg !3749
  store i32 %17, i32* %8, align 4, !dbg !3750, !tbaa !716
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end(i64 4, i8* nonnull %6) #10, !dbg !3751
  ret i64 %19, !dbg !3751
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !3752 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3797, metadata !640), !dbg !3802
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #10, !dbg !3803
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3804, metadata !640), !dbg !3807
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3809
  %4 = load i32, i32* %3, align 8, !dbg !3809, !tbaa !914
  %5 = and i32 %4, 32, !dbg !3809
  %6 = icmp eq i32 %5, 0, !dbg !3810
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #10, !dbg !3811
  %8 = icmp ne i32 %7, 0, !dbg !3812
  br i1 %6, label %9, label %19, !dbg !3813

; <label>:9:                                      ; preds = %1
  %10 = xor i1 %8, true, !dbg !3815
  %11 = icmp ne i64 %2, 0, !dbg !3815
  %12 = or i1 %11, %10, !dbg !3815
  %13 = sext i1 %8 to i32, !dbg !3815
  br i1 %12, label %22, label %14, !dbg !3815

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #1, !dbg !3817
  %16 = load i32, i32* %15, align 4, !dbg !3817, !tbaa !716
  %17 = icmp ne i32 %16, 9, !dbg !3819
  %18 = sext i1 %17 to i32, !dbg !3819
  br label %22, !dbg !3819

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !3821

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #1, !dbg !3823
  store i32 0, i32* %21, align 4, !dbg !3825, !tbaa !716
  br label %22, !dbg !3823

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !3826
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !3827 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3830, metadata !640), !dbg !3850
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3831, metadata !640), !dbg !3851
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #10, !dbg !3852
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3832, metadata !640), !dbg !3853
  %3 = icmp eq i8* %2, null, !dbg !3854
  br i1 %3, label %15, label %4, !dbg !3855

; <label>:4:                                      ; preds = %1
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3840, metadata !640), !dbg !3856
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3841, metadata !640), !dbg !3857
  %5 = load i8, i8* %2, align 1, !dbg !3858, !tbaa !727
  %6 = icmp eq i8 %5, 67, !dbg !3860
  br i1 %6, label %7, label %11, !dbg !3863

; <label>:7:                                      ; preds = %4
  %8 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !3865
  %9 = load i8, i8* %8, align 1, !dbg !3865, !tbaa !727
  %10 = icmp eq i8 %9, 0, !dbg !3868
  br i1 %10, label %14, label %11, !dbg !3870

; <label>:11:                                     ; preds = %4, %7
  tail call void @llvm.dbg.value(metadata i64 5, i64 0, metadata !3846, metadata !640), !dbg !3872
  %12 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.109, i64 0, i64 0)) #10, !dbg !3873
  %13 = icmp eq i32 %12, 0, !dbg !3875
  br i1 %13, label %14, label %15, !dbg !3877

; <label>:14:                                     ; preds = %11, %7
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3831, metadata !640), !dbg !3851
  br label %15, !dbg !3879

; <label>:15:                                     ; preds = %1, %11, %14
  %16 = phi i1 [ false, %14 ], [ true, %11 ], [ true, %1 ]
  ret i1 %16, !dbg !3880
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !3881 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !3893, metadata !640), !dbg !3967
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !3960, metadata !640), !dbg !3969
  %3 = tail call i8* @nl_langinfo(i32 14) #10, !dbg !3970
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3885, metadata !640), !dbg !3971
  %4 = icmp eq i8* %3, null, !dbg !3972
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.112, i64 0, i64 0), i8* %3, !dbg !3974
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !3885, metadata !640), !dbg !3971
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !3975, !tbaa !648
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3907, metadata !640) #10, !dbg !3976
  %7 = icmp eq i8* %6, null, !dbg !3977
  br i1 %7, label %8, label %127, !dbg !3978

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.113, i64 0, i64 0)) #10, !dbg !3979
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !3908, metadata !640) #10, !dbg !3980
  %10 = icmp eq i8* %9, null, !dbg !3981
  br i1 %10, label %14, label %11, !dbg !3983

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !3984, !tbaa !727
  %13 = icmp eq i8 %12, 0, !dbg !3986
  br i1 %13, label %14, label %15, !dbg !3987

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !3989

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.114, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !3908, metadata !640) #10, !dbg !3980
  %17 = tail call i64 @strlen(i8* nonnull %16) #13, !dbg !3990
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !3911, metadata !640) #10, !dbg !3991
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !3913, metadata !640) #10, !dbg !3992
  %18 = icmp eq i64 %17, 0, !dbg !3993
  br i1 %18, label %24, label %19, !dbg !3994

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !3995
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !3995
  %22 = load i8, i8* %21, align 1, !dbg !3995, !tbaa !727
  %23 = icmp ne i8 %22, 47, !dbg !3997
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !3998
  %27 = add i64 %17, 14, !dbg !3999
  %28 = add i64 %27, %26, !dbg !4000
  %29 = tail call noalias i8* @malloc(i64 %28) #10, !dbg !4001
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3910, metadata !640) #10, !dbg !4002
  %30 = icmp eq i8* %29, null, !dbg !4003
  br i1 %30, label %125, label %31, !dbg !4003

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #10, !dbg !4004
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !4007

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !4008, !tbaa !727
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !4010
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.115, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !4011
  br label %37, !dbg !4012

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !4010
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.115, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !4011
  br label %37, !dbg !4012

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #10, !dbg !4013
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !3915, metadata !640) #10, !dbg !4014
  %39 = icmp slt i32 %38, 0, !dbg !4015
  br i1 %39, label %123, label %40, !dbg !4016

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.116, i64 0, i64 0)) #10, !dbg !4017
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3916, metadata !640) #10, !dbg !4018
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !4019
  br i1 %42, label %48, label %43, !dbg !4020

; <label>:43:                                     ; preds = %40
  %44 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %45 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %46 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %47 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !4021

; <label>:48:                                     ; preds = %40
  %49 = tail call i32 @close(i32 %38) #10, !dbg !4022
  br label %123, !dbg !4024

; <label>:50:                                     ; preds = %111, %43
  %51 = phi i64 [ %112, %111 ], [ 0, %43 ]
  %52 = phi i8* [ %113, %111 ], [ null, %43 ]
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3957, metadata !640) #10, !dbg !4021
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !3958, metadata !640) #10, !dbg !4025
  call void @llvm.lifetime.start(i64 51, i8* nonnull %44) #10, !dbg !4026
  call void @llvm.lifetime.start(i64 51, i8* nonnull %45) #10, !dbg !4027
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4028, metadata !640) #10, !dbg !4033
  %53 = load i8*, i8** %46, align 8, !dbg !4035, !tbaa !4036
  %54 = load i8*, i8** %47, align 8, !dbg !4035, !tbaa !4037
  %55 = icmp ult i8* %53, %54, !dbg !4035
  br i1 %55, label %58, label %56, !dbg !4035, !prof !4038

; <label>:56:                                     ; preds = %50
  %57 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !4039
  br label %62, !dbg !4039

; <label>:58:                                     ; preds = %50
  %59 = getelementptr inbounds i8, i8* %53, i64 1, !dbg !4041
  store i8* %59, i8** %46, align 8, !dbg !4041, !tbaa !4036
  %60 = load i8, i8* %53, align 1, !dbg !4041, !tbaa !727
  %61 = zext i8 %60 to i32, !dbg !4041
  br label %62, !dbg !4041

; <label>:62:                                     ; preds = %58, %56
  %63 = phi i32 [ %57, %56 ], [ %61, %58 ], !dbg !4043
  call void @llvm.dbg.value(metadata i32 %63, i64 0, metadata !3959, metadata !640) #10, !dbg !4045
  switch i32 %63, label %77 [
    i32 -1, label %115
    i32 32, label %111
    i32 10, label %111
    i32 9, label %111
    i32 35, label %64
  ], !dbg !4046

; <label>:64:                                     ; preds = %62
  br label %65, !dbg !4047

; <label>:65:                                     ; preds = %64, %75
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4028, metadata !640) #10, !dbg !4047
  %66 = load i8*, i8** %46, align 8, !dbg !4051, !tbaa !4036
  %67 = load i8*, i8** %47, align 8, !dbg !4051, !tbaa !4037
  %68 = icmp ult i8* %66, %67, !dbg !4051
  br i1 %68, label %71, label %69, !dbg !4051, !prof !4038

; <label>:69:                                     ; preds = %65
  %70 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !4052
  br label %75, !dbg !4052

; <label>:71:                                     ; preds = %65
  %72 = getelementptr inbounds i8, i8* %66, i64 1, !dbg !4053
  store i8* %72, i8** %46, align 8, !dbg !4053, !tbaa !4036
  %73 = load i8, i8* %66, align 1, !dbg !4053, !tbaa !727
  %74 = zext i8 %73 to i32, !dbg !4053
  br label %75, !dbg !4053

; <label>:75:                                     ; preds = %71, %69
  %76 = phi i32 [ %70, %69 ], [ %74, %71 ], !dbg !4054
  call void @llvm.dbg.value(metadata i32 %76, i64 0, metadata !3959, metadata !640) #10, !dbg !4045
  switch i32 %76, label %65 [
    i32 -1, label %114
    i32 10, label %110
  ], !dbg !4055, !llvm.loop !4057

; <label>:77:                                     ; preds = %62
  %78 = call i32 @ungetc(i32 %63, %struct._IO_FILE* nonnull %41) #10, !dbg !4060
  %79 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.117, i64 0, i64 0), i8* nonnull %44, i8* nonnull %45) #10, !dbg !4061
  %80 = icmp slt i32 %79, 2, !dbg !4063
  br i1 %80, label %115, label %81, !dbg !4064

; <label>:81:                                     ; preds = %77
  %82 = call i64 @strlen(i8* nonnull %44) #13, !dbg !4065
  call void @llvm.dbg.value(metadata i64 %82, i64 0, metadata !3964, metadata !640) #10, !dbg !4066
  %83 = call i64 @strlen(i8* nonnull %45) #13, !dbg !4067
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !3965, metadata !640) #10, !dbg !4068
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3966, metadata !640) #10, !dbg !4069
  %84 = icmp eq i64 %51, 0, !dbg !4070
  %85 = add i64 %82, 1
  %86 = add i64 %85, %83
  %87 = add i64 %86, 1
  br i1 %84, label %88, label %91, !dbg !4072

; <label>:88:                                     ; preds = %81
  call void @llvm.dbg.value(metadata i64 %87, i64 0, metadata !3958, metadata !640) #10, !dbg !4025
  %89 = add i64 %86, 2, !dbg !4073
  %90 = call noalias i8* @malloc(i64 %89) #10, !dbg !4075
  call void @llvm.dbg.value(metadata i8* %90, i64 0, metadata !3957, metadata !640) #10, !dbg !4021
  br label %95, !dbg !4076

; <label>:91:                                     ; preds = %81
  %92 = add i64 %87, %51, !dbg !4077
  call void @llvm.dbg.value(metadata i64 %92, i64 0, metadata !3958, metadata !640) #10, !dbg !4025
  %93 = add i64 %92, 1, !dbg !4079
  %94 = call i8* @realloc(i8* %52, i64 %93) #10, !dbg !4080
  call void @llvm.dbg.value(metadata i8* %94, i64 0, metadata !3957, metadata !640) #10, !dbg !4021
  br label %95

; <label>:95:                                     ; preds = %91, %88
  %96 = phi i64 [ %87, %88 ], [ %92, %91 ]
  %97 = phi i8* [ %90, %88 ], [ %94, %91 ]
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !3957, metadata !640) #10, !dbg !4021
  call void @llvm.dbg.value(metadata i64 %96, i64 0, metadata !3958, metadata !640) #10, !dbg !4025
  %98 = icmp eq i8* %97, null, !dbg !4081
  br i1 %98, label %99, label %100, !dbg !4083

; <label>:99:                                     ; preds = %95
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3958, metadata !640) #10, !dbg !4025
  call void @free(i8* %52) #10, !dbg !4084
  br label %116, !dbg !4086

; <label>:100:                                    ; preds = %95
  %101 = getelementptr inbounds i8, i8* %97, i64 %96, !dbg !4087
  %102 = xor i64 %83, -1, !dbg !4088
  %103 = getelementptr inbounds i8, i8* %101, i64 %102, !dbg !4088
  %104 = xor i64 %82, -1, !dbg !4089
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !4089
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !4090, metadata !640) #10, !dbg !4099
  call void @llvm.dbg.value(metadata i8* %44, i64 0, metadata !4098, metadata !640) #10, !dbg !4099
  %106 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false) #10, !dbg !4101
  %107 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %44, i64 %106) #10, !dbg !4102
  call void @llvm.dbg.value(metadata i8* %103, i64 0, metadata !4090, metadata !640) #10, !dbg !4103
  call void @llvm.dbg.value(metadata i8* %45, i64 0, metadata !4098, metadata !640) #10, !dbg !4103
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %103, i1 false) #10, !dbg !4105
  %109 = call i8* @__strcpy_chk(i8* nonnull %103, i8* nonnull %45, i64 %108) #10, !dbg !4106
  br label %111, !dbg !4107

; <label>:110:                                    ; preds = %75
  br label %111, !dbg !4021

; <label>:111:                                    ; preds = %110, %100, %62, %62, %62
  %112 = phi i64 [ %96, %100 ], [ %51, %62 ], [ %51, %62 ], [ %51, %62 ], [ %51, %110 ]
  %113 = phi i8* [ %97, %100 ], [ %52, %62 ], [ %52, %62 ], [ %52, %62 ], [ %52, %110 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !3957, metadata !640) #10, !dbg !4021
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !3958, metadata !640) #10, !dbg !4025
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #10, !dbg !4107
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #10, !dbg !4107
  br label %50

; <label>:114:                                    ; preds = %75
  br label %116, !dbg !4021

; <label>:115:                                    ; preds = %62, %77
  br label %116, !dbg !4021

; <label>:116:                                    ; preds = %115, %114, %99
  %117 = phi i64 [ 0, %99 ], [ %51, %114 ], [ %51, %115 ]
  %118 = phi i8* [ null, %99 ], [ %52, %114 ], [ %52, %115 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !3957, metadata !640) #10, !dbg !4021
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !3958, metadata !640) #10, !dbg !4025
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #10, !dbg !4107
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #10, !dbg !4107
  %119 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #10, !dbg !4108
  %120 = icmp eq i64 %117, 0, !dbg !4109
  br i1 %120, label %123, label %121, !dbg !4111

; <label>:121:                                    ; preds = %116
  %122 = getelementptr inbounds i8, i8* %118, i64 %117, !dbg !4112
  store i8 0, i8* %122, align 1, !dbg !4114, !tbaa !727
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !3907, metadata !640) #10, !dbg !3976
  br label %123

; <label>:123:                                    ; preds = %121, %116, %48, %37
  %124 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.112, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.112, i64 0, i64 0), %48 ], [ %118, %121 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.112, i64 0, i64 0), %116 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !3907, metadata !640) #10, !dbg !3976
  call void @free(i8* %29) #10, !dbg !4115
  br label %125

; <label>:125:                                    ; preds = %123, %24
  %126 = phi i8* [ %124, %123 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.112, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %126, i64 0, metadata !3907, metadata !640) #10, !dbg !3976
  store volatile i8* %126, i8** @charset_aliases, align 8, !dbg !4116, !tbaa !648
  br label %127, !dbg !4117

; <label>:127:                                    ; preds = %0, %125
  %128 = phi i8* [ %6, %0 ], [ %126, %125 ]
  call void @llvm.dbg.value(metadata i8* %128, i64 0, metadata !3886, metadata !640), !dbg !4118
  %129 = load i8, i8* %128, align 1, !dbg !4119, !tbaa !727
  %130 = icmp eq i8 %129, 0, !dbg !4120
  br i1 %130, label %157, label %131, !dbg !4121

; <label>:131:                                    ; preds = %127
  br label %132, !dbg !4123

; <label>:132:                                    ; preds = %131, %147
  %133 = phi i8 [ %154, %147 ], [ %129, %131 ]
  %134 = phi i8* [ %153, %147 ], [ %128, %131 ]
  %135 = call i32 @strcmp(i8* %5, i8* %134) #10, !dbg !4123
  %136 = icmp eq i32 %135, 0, !dbg !4124
  br i1 %136, label %143, label %137, !dbg !4125

; <label>:137:                                    ; preds = %132
  %138 = icmp eq i8 %133, 42, !dbg !4126
  br i1 %138, label %139, label %147, !dbg !4128

; <label>:139:                                    ; preds = %137
  %140 = getelementptr inbounds i8, i8* %134, i64 1, !dbg !4129
  %141 = load i8, i8* %140, align 1, !dbg !4129, !tbaa !727
  %142 = icmp eq i8 %141, 0, !dbg !4131
  br i1 %142, label %143, label %147, !dbg !4132

; <label>:143:                                    ; preds = %139, %132
  %144 = call i64 @strlen(i8* %134) #13, !dbg !4134
  %145 = getelementptr inbounds i8, i8* %134, i64 %144, !dbg !4136
  %146 = getelementptr inbounds i8, i8* %145, i64 1, !dbg !4137
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !3885, metadata !640), !dbg !3971
  br label %157, !dbg !4138

; <label>:147:                                    ; preds = %137, %139
  %148 = call i64 @strlen(i8* %134) #13, !dbg !4139
  %149 = add i64 %148, 1, !dbg !4140
  %150 = getelementptr inbounds i8, i8* %134, i64 %149, !dbg !4141
  call void @llvm.dbg.value(metadata i8* %150, i64 0, metadata !3886, metadata !640), !dbg !4118
  %151 = call i64 @strlen(i8* %150) #13, !dbg !4142
  %152 = add i64 %151, 1, !dbg !4143
  %153 = getelementptr inbounds i8, i8* %150, i64 %152, !dbg !4144
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !3886, metadata !640), !dbg !4118
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !3886, metadata !640), !dbg !4118
  %154 = load i8, i8* %153, align 1, !dbg !4119, !tbaa !727
  %155 = icmp eq i8 %154, 0, !dbg !4120
  br i1 %155, label %156, label %132, !dbg !4121, !llvm.loop !4145

; <label>:156:                                    ; preds = %147
  br label %157, !dbg !3971

; <label>:157:                                    ; preds = %156, %127, %143
  %158 = phi i8* [ %146, %143 ], [ %5, %127 ], [ %5, %156 ]
  call void @llvm.dbg.value(metadata i8* %158, i64 0, metadata !3885, metadata !640), !dbg !3971
  %159 = load i8, i8* %158, align 1, !dbg !4148, !tbaa !727
  %160 = icmp eq i8 %159, 0, !dbg !4150
  %161 = select i1 %160, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.118, i64 0, i64 0), i8* %158, !dbg !4151
  call void @llvm.dbg.value(metadata i8* %161, i64 0, metadata !3885, metadata !640), !dbg !3971
  ret i8* %161, !dbg !4152
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
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !4153 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4198, metadata !640), !dbg !4202
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4199, metadata !640), !dbg !4203
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4201, metadata !640), !dbg !4204
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !4205
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4200, metadata !640), !dbg !4206
  %3 = icmp slt i32 %2, 0, !dbg !4207
  br i1 %3, label %4, label %6, !dbg !4209

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4210
  br label %24, !dbg !4211

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !4212
  %8 = icmp eq i32 %7, 0, !dbg !4212
  br i1 %8, label %13, label %9, !dbg !4214

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !4215
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #10, !dbg !4217
  %12 = icmp eq i64 %11, -1, !dbg !4219
  br i1 %12, label %16, label %13, !dbg !4220

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #10, !dbg !4221
  %15 = icmp eq i32 %14, 0, !dbg !4221
  br i1 %15, label %16, label %18, !dbg !4222

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4199, metadata !640), !dbg !4203
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4224
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4201, metadata !640), !dbg !4204
  br label %24, !dbg !4225

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #1, !dbg !4226
  %20 = load i32, i32* %19, align 4, !dbg !4226, !tbaa !716
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4199, metadata !640), !dbg !4203
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4199, metadata !640), !dbg !4203
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4224
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4201, metadata !640), !dbg !4204
  %22 = icmp eq i32 %20, 0, !dbg !4227
  br i1 %22, label %24, label %23, !dbg !4225

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4229, !tbaa !716
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !4201, metadata !640), !dbg !4204
  br label %24, !dbg !4231

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !4232
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
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !4233 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4278, metadata !640), !dbg !4279
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4280
  br i1 %2, label %6, label %3, !dbg !4282

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !4283
  %5 = icmp eq i32 %4, 0, !dbg !4283
  br i1 %5, label %6, label %8, !dbg !4285

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4287
  br label %17, !dbg !4288

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4289, metadata !640) #10, !dbg !4294
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4296
  %10 = load i32, i32* %9, align 8, !dbg !4296, !tbaa !914
  %11 = and i32 %10, 256, !dbg !4298
  %12 = icmp eq i32 %11, 0, !dbg !4298
  br i1 %12, label %15, label %13, !dbg !4299

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #10, !dbg !4300
  br label %15, !dbg !4300

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4301
  br label %17, !dbg !4302

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !4303
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !4304 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4350, metadata !640), !dbg !4356
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4351, metadata !640), !dbg !4357
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4352, metadata !640), !dbg !4358
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4359
  %5 = load i8*, i8** %4, align 8, !dbg !4359, !tbaa !4037
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4360
  %7 = load i8*, i8** %6, align 8, !dbg !4360, !tbaa !4036
  %8 = icmp eq i8* %5, %7, !dbg !4361
  br i1 %8, label %9, label %28, !dbg !4362

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4363
  %11 = load i8*, i8** %10, align 8, !dbg !4363, !tbaa !4365
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4366
  %13 = load i8*, i8** %12, align 8, !dbg !4366, !tbaa !4367
  %14 = icmp eq i8* %11, %13, !dbg !4368
  br i1 %14, label %15, label %28, !dbg !4369

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4370
  %17 = load i8*, i8** %16, align 8, !dbg !4370, !tbaa !4371
  %18 = icmp eq i8* %17, null, !dbg !4372
  br i1 %18, label %19, label %28, !dbg !4373

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !4375
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #10, !dbg !4376
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !4353, metadata !640), !dbg !4378
  %22 = icmp eq i64 %21, -1, !dbg !4379
  br i1 %22, label %30, label %23, !dbg !4381

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4382
  %25 = load i32, i32* %24, align 8, !dbg !4383, !tbaa !914
  %26 = and i32 %25, -17, !dbg !4383
  store i32 %26, i32* %24, align 8, !dbg !4383, !tbaa !914
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4384
  store i64 %21, i64* %27, align 8, !dbg !4385, !tbaa !4386
  br label %30, !dbg !4387

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4388
  br label %30, !dbg !4389

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !4390
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

!llvm.dbg.cu = !{!2, !117, !123, !131, !138, !145, !583, !228, !591, !608, !610, !614, !616, !619, !621, !237, !624, !626, !628}
!llvm.ident = !{!630, !630, !630, !630, !630, !630, !630, !630, !630, !630, !630, !630, !630, !630, !630, !630, !630, !630, !630}
!llvm.module.flags = !{!631, !632, !633, !634}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 58, type: !103, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !62, globals: !73)
!3 = !DIFile(filename: "src/nice.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4 = !{!5, !12, !20, !56}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 87, size: 32, elements: !7)
!6 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!7 = !{!8, !9, !10, !11}
!8 = !DIEnumerator(name: "EXIT_TIMEDOUT", value: 124)
!9 = !DIEnumerator(name: "EXIT_CANCELED", value: 125)
!10 = !DIEnumerator(name: "EXIT_CANNOT_INVOKE", value: 126)
!11 = !DIEnumerator(name: "EXIT_ENOENT", value: 127)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !13, line: 26, size: 32, elements: !14)
!13 = !DIFile(filename: "./lib/xstrtol.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!14 = !{!15, !16, !17, !18, !19}
!15 = !DIEnumerator(name: "LONGINT_OK", value: 0)
!16 = !DIEnumerator(name: "LONGINT_OVERFLOW", value: 1)
!17 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR", value: 2)
!18 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW", value: 3)
!19 = !DIEnumerator(name: "LONGINT_INVALID", value: 4)
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !21, file: !3, line: 170, size: 32, elements: !53)
!21 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 101, type: !22, isLocal: false, isDefinition: true, scopeLine: 102, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !28)
!22 = !DISubroutineType(types: !23)
!23 = !{!24, !24, !25}
!24 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!28 = !{!29, !30, !31, !32, !33, !36, !38, !39, !43, !46, !47, !48, !52}
!29 = !DILocalVariable(name: "argc", arg: 1, scope: !21, file: !3, line: 101, type: !24)
!30 = !DILocalVariable(name: "argv", arg: 2, scope: !21, file: !3, line: 101, type: !25)
!31 = !DILocalVariable(name: "current_niceness", scope: !21, file: !3, line: 103, type: !24)
!32 = !DILocalVariable(name: "adjustment", scope: !21, file: !3, line: 104, type: !24)
!33 = !DILocalVariable(name: "adjustment_given", scope: !21, file: !3, line: 105, type: !34)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!36 = !DILocalVariable(name: "ok", scope: !21, file: !3, line: 106, type: !37)
!37 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!38 = !DILocalVariable(name: "i", scope: !21, file: !3, line: 107, type: !24)
!39 = !DILocalVariable(name: "s", scope: !40, file: !3, line: 120, type: !34)
!40 = distinct !DILexicalBlock(scope: !41, file: !3, line: 119, column: 5)
!41 = distinct !DILexicalBlock(scope: !42, file: !3, line: 118, column: 3)
!42 = distinct !DILexicalBlock(scope: !21, file: !3, line: 118, column: 3)
!43 = !DILocalVariable(name: "c", scope: !44, file: !3, line: 129, type: !24)
!44 = distinct !DILexicalBlock(scope: !45, file: !3, line: 128, column: 9)
!45 = distinct !DILexicalBlock(scope: !40, file: !3, line: 122, column: 11)
!46 = !DILocalVariable(name: "fake_argc", scope: !44, file: !3, line: 130, type: !24)
!47 = !DILocalVariable(name: "fake_argv", scope: !44, file: !3, line: 131, type: !25)
!48 = !DILocalVariable(name: "tmp", scope: !49, file: !3, line: 171, type: !51)
!49 = distinct !DILexicalBlock(scope: !50, file: !3, line: 166, column: 5)
!50 = distinct !DILexicalBlock(scope: !21, file: !3, line: 165, column: 7)
!51 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!52 = !DILocalVariable(name: "exit_status", scope: !21, file: !3, line: 218, type: !24)
!53 = !{!54, !55}
!54 = !DIEnumerator(name: "MIN_ADJUSTMENT", value: -39)
!55 = !DIEnumerator(name: "MAX_ADJUSTMENT", value: 39)
!56 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "__priority_which", file: !57, line: 291, size: 32, elements: !58)
!57 = !DIFile(filename: "/usr/include/bits/resource.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!58 = !{!59, !60, !61}
!59 = !DIEnumerator(name: "PRIO_PROCESS", value: 0)
!60 = !DIEnumerator(name: "PRIO_PGRP", value: 1)
!61 = !DIEnumerator(name: "PRIO_USER", value: 2)
!62 = !{!63, !26, !64, !65, !68, !70, !34}
!63 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !66, line: 62, baseType: !67)
!66 = !DIFile(filename: "/usr/bin/../lib/clang/4.0.1/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!67 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !72)
!72 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!73 = !{!74, !0}
!74 = !DIGlobalVariableExpression(var: !75)
!75 = distinct !DIGlobalVariable(name: "infomap", scope: !76, file: !6, line: 632, type: !100, isLocal: true, isDefinition: true)
!76 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !6, file: !6, line: 630, type: !77, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !79)
!77 = !DISubroutineType(types: !78)
!78 = !{null, !34}
!79 = !{!80, !81, !82, !89, !91, !92, !93, !96, !97, !99}
!80 = !DILocalVariable(name: "program", arg: 1, scope: !76, file: !6, line: 630, type: !34)
!81 = !DILocalVariable(name: "node", scope: !76, file: !6, line: 642, type: !34)
!82 = !DILocalVariable(name: "map_prog", scope: !76, file: !6, line: 643, type: !83)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !85)
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !76, file: !6, line: 632, size: 128, elements: !86)
!86 = !{!87, !88}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !85, file: !6, line: 632, baseType: !34, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !85, file: !6, line: 632, baseType: !34, size: 64, offset: 64)
!89 = !DILocalVariable(name: "__s1_len", scope: !90, file: !6, line: 645, type: !65)
!90 = distinct !DILexicalBlock(scope: !76, file: !6, line: 645, column: 33)
!91 = !DILocalVariable(name: "__s2_len", scope: !90, file: !6, line: 645, type: !65)
!92 = !DILocalVariable(name: "lc_messages", scope: !76, file: !6, line: 655, type: !34)
!93 = !DILocalVariable(name: "__s1_len", scope: !94, file: !6, line: 656, type: !65)
!94 = distinct !DILexicalBlock(scope: !95, file: !6, line: 656, column: 22)
!95 = distinct !DILexicalBlock(scope: !76, file: !6, line: 656, column: 7)
!96 = !DILocalVariable(name: "__s2_len", scope: !94, file: !6, line: 656, type: !65)
!97 = !DILocalVariable(name: "__s2", scope: !98, file: !6, line: 656, type: !70)
!98 = distinct !DILexicalBlock(scope: !94, file: !6, line: 656, column: 22)
!99 = !DILocalVariable(name: "__result", scope: !98, file: !6, line: 656, type: !24)
!100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 896, elements: !101)
!101 = !{!102}
!102 = !DISubrange(count: 7)
!103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 1024, elements: !113)
!104 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !105)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !106, line: 104, size: 256, elements: !107)
!106 = !DIFile(filename: "/usr/include/getopt.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!107 = !{!108, !109, !110, !112}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !105, file: !106, line: 106, baseType: !34, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !105, file: !106, line: 109, baseType: !24, size: 32, offset: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !105, file: !106, line: 110, baseType: !111, size: 64, offset: 128)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !105, file: !106, line: 111, baseType: !24, size: 32, offset: 192)
!113 = !{!114}
!114 = !DISubrange(count: 4)
!115 = !DIGlobalVariableExpression(var: !116)
!116 = distinct !DIGlobalVariable(name: "Version", scope: !117, file: !118, line: 2, type: !34, isLocal: false, isDefinition: true)
!117 = distinct !DICompileUnit(language: DW_LANG_C99, file: !118, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !119, globals: !120)
!118 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!119 = !{}
!120 = !{!115}
!121 = !DIGlobalVariableExpression(var: !122)
!122 = distinct !DIGlobalVariable(name: "file_name", scope: !123, file: !128, line: 36, type: !34, isLocal: true, isDefinition: true)
!123 = distinct !DICompileUnit(language: DW_LANG_C99, file: !124, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !119, globals: !125)
!124 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!125 = !{!121, !126}
!126 = !DIGlobalVariableExpression(var: !127)
!127 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !123, file: !128, line: 46, type: !37, isLocal: true, isDefinition: true)
!128 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!129 = !DIGlobalVariableExpression(var: !130)
!130 = distinct !DIGlobalVariable(name: "exit_failure", scope: !131, file: !134, line: 24, type: !135, isLocal: false, isDefinition: true)
!131 = distinct !DICompileUnit(language: DW_LANG_C99, file: !132, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !119, globals: !133)
!132 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!133 = !{!129}
!134 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!135 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !24)
!136 = !DIGlobalVariableExpression(var: !137)
!137 = distinct !DIGlobalVariable(name: "program_name", scope: !138, file: !142, line: 33, type: !34, isLocal: false, isDefinition: true)
!138 = distinct !DICompileUnit(language: DW_LANG_C99, file: !139, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !119, retainedTypes: !140, globals: !141)
!139 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!140 = !{!64, !26}
!141 = !{!136}
!142 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!143 = !DIGlobalVariableExpression(var: !144)
!144 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !145, file: !187, line: 77, type: !222, isLocal: false, isDefinition: true)
!145 = distinct !DICompileUnit(language: DW_LANG_C99, file: !146, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !147, retainedTypes: !182, globals: !184)
!146 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!147 = !{!148, !162, !167}
!148 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !149, line: 32, size: 32, elements: !150)
!149 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!150 = !{!151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161}
!151 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!152 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!153 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!154 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!155 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!156 = !DIEnumerator(name: "c_quoting_style", value: 5)
!157 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!158 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!159 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!160 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!161 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!162 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !149, line: 242, size: 32, elements: !163)
!163 = !{!164, !165, !166}
!164 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!165 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!166 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!167 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !168, line: 46, size: 32, elements: !169)
!168 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!169 = !{!170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181}
!170 = !DIEnumerator(name: "_ISupper", value: 256)
!171 = !DIEnumerator(name: "_ISlower", value: 512)
!172 = !DIEnumerator(name: "_ISalpha", value: 1024)
!173 = !DIEnumerator(name: "_ISdigit", value: 2048)
!174 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!175 = !DIEnumerator(name: "_ISspace", value: 8192)
!176 = !DIEnumerator(name: "_ISprint", value: 16384)
!177 = !DIEnumerator(name: "_ISgraph", value: 32768)
!178 = !DIEnumerator(name: "_ISblank", value: 1)
!179 = !DIEnumerator(name: "_IScntrl", value: 2)
!180 = !DIEnumerator(name: "_ISpunct", value: 4)
!181 = !DIEnumerator(name: "_ISalnum", value: 8)
!182 = !{!24, !183, !65, !26}
!183 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!184 = !{!143, !185, !192, !204, !206, !211, !218, !220}
!185 = !DIGlobalVariableExpression(var: !186)
!186 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !145, file: !187, line: 93, type: !188, isLocal: false, isDefinition: true)
!187 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 320, elements: !190)
!189 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !148)
!190 = !{!191}
!191 = !DISubrange(count: 10)
!192 = !DIGlobalVariableExpression(var: !193)
!193 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !145, file: !187, line: 1043, type: !194, isLocal: false, isDefinition: true)
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !187, line: 57, size: 448, elements: !195)
!195 = !{!196, !197, !198, !202, !203}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !194, file: !187, line: 60, baseType: !148, size: 32)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !194, file: !187, line: 63, baseType: !24, size: 32, offset: 32)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !194, file: !187, line: 67, baseType: !199, size: 256, offset: 64)
!199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 256, elements: !200)
!200 = !{!201}
!201 = !DISubrange(count: 8)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !194, file: !187, line: 70, baseType: !34, size: 64, offset: 320)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !194, file: !187, line: 73, baseType: !34, size: 64, offset: 384)
!204 = !DIGlobalVariableExpression(var: !205)
!205 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !145, file: !187, line: 108, type: !194, isLocal: true, isDefinition: true)
!206 = !DIGlobalVariableExpression(var: !207)
!207 = distinct !DIGlobalVariable(name: "slot0", scope: !145, file: !187, line: 834, type: !208, isLocal: true, isDefinition: true)
!208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 2048, elements: !209)
!209 = !{!210}
!210 = !DISubrange(count: 256)
!211 = !DIGlobalVariableExpression(var: !212)
!212 = distinct !DIGlobalVariable(name: "slotvec", scope: !145, file: !187, line: 837, type: !213, isLocal: true, isDefinition: true)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !187, line: 826, size: 128, elements: !215)
!215 = !{!216, !217}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !214, file: !187, line: 828, baseType: !65, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !214, file: !187, line: 829, baseType: !26, size: 64, offset: 64)
!218 = !DIGlobalVariableExpression(var: !219)
!219 = distinct !DIGlobalVariable(name: "nslots", scope: !145, file: !187, line: 835, type: !24, isLocal: true, isDefinition: true)
!220 = !DIGlobalVariableExpression(var: !221)
!221 = distinct !DIGlobalVariable(name: "slotvec0", scope: !145, file: !187, line: 836, type: !214, isLocal: true, isDefinition: true)
!222 = !DICompositeType(tag: DW_TAG_array_type, baseType: !223, size: 704, elements: !224)
!223 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!224 = !{!225}
!225 = !DISubrange(count: 11)
!226 = !DIGlobalVariableExpression(var: !227)
!227 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !228, file: !231, line: 26, type: !232, isLocal: false, isDefinition: true)
!228 = distinct !DICompileUnit(language: DW_LANG_C99, file: !229, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !119, globals: !230)
!229 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!230 = !{!226}
!231 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 376, elements: !233)
!233 = !{!234}
!234 = !DISubrange(count: 47)
!235 = !DIGlobalVariableExpression(var: !236)
!236 = distinct !DIGlobalVariable(name: "charset_aliases", scope: !237, file: !581, line: 120, type: !582, isLocal: true, isDefinition: true)
!237 = distinct !DICompileUnit(language: DW_LANG_C99, file: !238, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !239, retainedTypes: !578, globals: !580)
!238 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!239 = !{!240}
!240 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !241, line: 41, size: 32, elements: !242)
!241 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!242 = !{!243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577}
!243 = !DIEnumerator(name: "ABDAY_1", value: 131072)
!244 = !DIEnumerator(name: "ABDAY_2", value: 131073)
!245 = !DIEnumerator(name: "ABDAY_3", value: 131074)
!246 = !DIEnumerator(name: "ABDAY_4", value: 131075)
!247 = !DIEnumerator(name: "ABDAY_5", value: 131076)
!248 = !DIEnumerator(name: "ABDAY_6", value: 131077)
!249 = !DIEnumerator(name: "ABDAY_7", value: 131078)
!250 = !DIEnumerator(name: "DAY_1", value: 131079)
!251 = !DIEnumerator(name: "DAY_2", value: 131080)
!252 = !DIEnumerator(name: "DAY_3", value: 131081)
!253 = !DIEnumerator(name: "DAY_4", value: 131082)
!254 = !DIEnumerator(name: "DAY_5", value: 131083)
!255 = !DIEnumerator(name: "DAY_6", value: 131084)
!256 = !DIEnumerator(name: "DAY_7", value: 131085)
!257 = !DIEnumerator(name: "ABMON_1", value: 131086)
!258 = !DIEnumerator(name: "ABMON_2", value: 131087)
!259 = !DIEnumerator(name: "ABMON_3", value: 131088)
!260 = !DIEnumerator(name: "ABMON_4", value: 131089)
!261 = !DIEnumerator(name: "ABMON_5", value: 131090)
!262 = !DIEnumerator(name: "ABMON_6", value: 131091)
!263 = !DIEnumerator(name: "ABMON_7", value: 131092)
!264 = !DIEnumerator(name: "ABMON_8", value: 131093)
!265 = !DIEnumerator(name: "ABMON_9", value: 131094)
!266 = !DIEnumerator(name: "ABMON_10", value: 131095)
!267 = !DIEnumerator(name: "ABMON_11", value: 131096)
!268 = !DIEnumerator(name: "ABMON_12", value: 131097)
!269 = !DIEnumerator(name: "MON_1", value: 131098)
!270 = !DIEnumerator(name: "MON_2", value: 131099)
!271 = !DIEnumerator(name: "MON_3", value: 131100)
!272 = !DIEnumerator(name: "MON_4", value: 131101)
!273 = !DIEnumerator(name: "MON_5", value: 131102)
!274 = !DIEnumerator(name: "MON_6", value: 131103)
!275 = !DIEnumerator(name: "MON_7", value: 131104)
!276 = !DIEnumerator(name: "MON_8", value: 131105)
!277 = !DIEnumerator(name: "MON_9", value: 131106)
!278 = !DIEnumerator(name: "MON_10", value: 131107)
!279 = !DIEnumerator(name: "MON_11", value: 131108)
!280 = !DIEnumerator(name: "MON_12", value: 131109)
!281 = !DIEnumerator(name: "AM_STR", value: 131110)
!282 = !DIEnumerator(name: "PM_STR", value: 131111)
!283 = !DIEnumerator(name: "D_T_FMT", value: 131112)
!284 = !DIEnumerator(name: "D_FMT", value: 131113)
!285 = !DIEnumerator(name: "T_FMT", value: 131114)
!286 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115)
!287 = !DIEnumerator(name: "ERA", value: 131116)
!288 = !DIEnumerator(name: "__ERA_YEAR", value: 131117)
!289 = !DIEnumerator(name: "ERA_D_FMT", value: 131118)
!290 = !DIEnumerator(name: "ALT_DIGITS", value: 131119)
!291 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120)
!292 = !DIEnumerator(name: "ERA_T_FMT", value: 131121)
!293 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122)
!294 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123)
!295 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124)
!296 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125)
!297 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126)
!298 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127)
!299 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128)
!300 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129)
!301 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130)
!302 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131)
!303 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132)
!304 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133)
!305 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134)
!306 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135)
!307 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136)
!308 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137)
!309 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138)
!310 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139)
!311 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140)
!312 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141)
!313 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142)
!314 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143)
!315 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144)
!316 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145)
!317 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146)
!318 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147)
!319 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148)
!320 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149)
!321 = !DIEnumerator(name: "_NL_WMON_1", value: 131150)
!322 = !DIEnumerator(name: "_NL_WMON_2", value: 131151)
!323 = !DIEnumerator(name: "_NL_WMON_3", value: 131152)
!324 = !DIEnumerator(name: "_NL_WMON_4", value: 131153)
!325 = !DIEnumerator(name: "_NL_WMON_5", value: 131154)
!326 = !DIEnumerator(name: "_NL_WMON_6", value: 131155)
!327 = !DIEnumerator(name: "_NL_WMON_7", value: 131156)
!328 = !DIEnumerator(name: "_NL_WMON_8", value: 131157)
!329 = !DIEnumerator(name: "_NL_WMON_9", value: 131158)
!330 = !DIEnumerator(name: "_NL_WMON_10", value: 131159)
!331 = !DIEnumerator(name: "_NL_WMON_11", value: 131160)
!332 = !DIEnumerator(name: "_NL_WMON_12", value: 131161)
!333 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162)
!334 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163)
!335 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164)
!336 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165)
!337 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166)
!338 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167)
!339 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168)
!340 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169)
!341 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170)
!342 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171)
!343 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172)
!344 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173)
!345 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174)
!346 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175)
!347 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176)
!348 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177)
!349 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178)
!350 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179)
!351 = !DIEnumerator(name: "_DATE_FMT", value: 131180)
!352 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181)
!353 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182)
!354 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131183)
!355 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608)
!356 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609)
!357 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610)
!358 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611)
!359 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612)
!360 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613)
!361 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614)
!362 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615)
!363 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616)
!364 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617)
!365 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618)
!366 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619)
!367 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620)
!368 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621)
!369 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622)
!370 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623)
!371 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624)
!372 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625)
!373 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626)
!374 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627)
!375 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0)
!376 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1)
!377 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2)
!378 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3)
!379 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4)
!380 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5)
!381 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6)
!382 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7)
!383 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8)
!384 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9)
!385 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10)
!386 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11)
!387 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12)
!388 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13)
!389 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14)
!390 = !DIEnumerator(name: "CODESET", value: 14)
!391 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15)
!392 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16)
!393 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17)
!394 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18)
!395 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19)
!396 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20)
!397 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21)
!398 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22)
!399 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23)
!400 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24)
!401 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25)
!402 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26)
!403 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27)
!404 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28)
!405 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29)
!406 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30)
!407 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31)
!408 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32)
!409 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33)
!410 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34)
!411 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35)
!412 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36)
!413 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37)
!414 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38)
!415 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39)
!416 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40)
!417 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41)
!418 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42)
!419 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43)
!420 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44)
!421 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45)
!422 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46)
!423 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47)
!424 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48)
!425 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49)
!426 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50)
!427 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51)
!428 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52)
!429 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53)
!430 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54)
!431 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55)
!432 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56)
!433 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57)
!434 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58)
!435 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59)
!436 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60)
!437 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61)
!438 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62)
!439 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63)
!440 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64)
!441 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65)
!442 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66)
!443 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67)
!444 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68)
!445 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69)
!446 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70)
!447 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71)
!448 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72)
!449 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73)
!450 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74)
!451 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75)
!452 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76)
!453 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77)
!454 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78)
!455 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79)
!456 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80)
!457 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81)
!458 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82)
!459 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83)
!460 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84)
!461 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85)
!462 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86)
!463 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144)
!464 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145)
!465 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146)
!466 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147)
!467 = !DIEnumerator(name: "__MON_GROUPING", value: 262148)
!468 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149)
!469 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150)
!470 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151)
!471 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152)
!472 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153)
!473 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154)
!474 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155)
!475 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156)
!476 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157)
!477 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158)
!478 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159)
!479 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160)
!480 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161)
!481 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162)
!482 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163)
!483 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164)
!484 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165)
!485 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166)
!486 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167)
!487 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168)
!488 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169)
!489 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170)
!490 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171)
!491 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172)
!492 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173)
!493 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174)
!494 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175)
!495 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176)
!496 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177)
!497 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178)
!498 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179)
!499 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180)
!500 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181)
!501 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182)
!502 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183)
!503 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184)
!504 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185)
!505 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186)
!506 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187)
!507 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188)
!508 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189)
!509 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190)
!510 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536)
!511 = !DIEnumerator(name: "RADIXCHAR", value: 65536)
!512 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537)
!513 = !DIEnumerator(name: "THOUSEP", value: 65537)
!514 = !DIEnumerator(name: "__GROUPING", value: 65538)
!515 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539)
!516 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540)
!517 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541)
!518 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542)
!519 = !DIEnumerator(name: "__YESEXPR", value: 327680)
!520 = !DIEnumerator(name: "__NOEXPR", value: 327681)
!521 = !DIEnumerator(name: "__YESSTR", value: 327682)
!522 = !DIEnumerator(name: "__NOSTR", value: 327683)
!523 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684)
!524 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685)
!525 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752)
!526 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753)
!527 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754)
!528 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755)
!529 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288)
!530 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289)
!531 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290)
!532 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291)
!533 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292)
!534 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293)
!535 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294)
!536 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295)
!537 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824)
!538 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825)
!539 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826)
!540 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827)
!541 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828)
!542 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829)
!543 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830)
!544 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831)
!545 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832)
!546 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833)
!547 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834)
!548 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835)
!549 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836)
!550 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837)
!551 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360)
!552 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361)
!553 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362)
!554 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363)
!555 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364)
!556 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365)
!557 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896)
!558 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897)
!559 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898)
!560 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432)
!561 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433)
!562 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434)
!563 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435)
!564 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436)
!565 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437)
!566 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438)
!567 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439)
!568 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440)
!569 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441)
!570 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442)
!571 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443)
!572 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444)
!573 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445)
!574 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446)
!575 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447)
!576 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448)
!577 = !DIEnumerator(name: "_NL_NUM", value: 786449)
!578 = !{!64, !26, !579}
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!580 = !{!235}
!581 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!582 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !34)
!583 = distinct !DICompileUnit(language: DW_LANG_C99, file: !584, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !585, retainedTypes: !590)
!584 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!585 = !{!586}
!586 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !587, line: 41, size: 32, elements: !588)
!587 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!588 = !{!589}
!589 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!590 = !{!64}
!591 = distinct !DICompileUnit(language: DW_LANG_C99, file: !592, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !593, retainedTypes: !607)
!592 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!593 = !{!594}
!594 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !596, file: !595, line: 192, size: 32, elements: !605)
!595 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!596 = distinct !DISubprogram(name: "x2nrealloc", scope: !595, file: !595, line: 180, type: !597, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !591, variables: !600)
!597 = !DISubroutineType(types: !598)
!598 = !{!64, !64, !599, !65}
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!600 = !{!601, !602, !603, !604}
!601 = !DILocalVariable(name: "p", arg: 1, scope: !596, file: !595, line: 180, type: !64)
!602 = !DILocalVariable(name: "pn", arg: 2, scope: !596, file: !595, line: 180, type: !599)
!603 = !DILocalVariable(name: "s", arg: 3, scope: !596, file: !595, line: 180, type: !65)
!604 = !DILocalVariable(name: "n", scope: !596, file: !595, line: 182, type: !65)
!605 = !{!606}
!606 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!607 = !{!65, !26, !64}
!608 = distinct !DICompileUnit(language: DW_LANG_C99, file: !609, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !119)
!609 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!610 = distinct !DICompileUnit(language: DW_LANG_C99, file: !611, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !612, retainedTypes: !613)
!611 = !DIFile(filename: "./lib/xstrtol.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!612 = !{!12}
!613 = !{!26}
!614 = distinct !DICompileUnit(language: DW_LANG_C99, file: !615, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !119, retainedTypes: !590)
!615 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!616 = distinct !DICompileUnit(language: DW_LANG_C99, file: !617, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !119, retainedTypes: !618)
!617 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!618 = !{!65}
!619 = distinct !DICompileUnit(language: DW_LANG_C99, file: !620, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !119)
!620 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!621 = distinct !DICompileUnit(language: DW_LANG_C99, file: !622, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !119, retainedTypes: !623)
!622 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!623 = !{!65, !68, !70, !34}
!624 = distinct !DICompileUnit(language: DW_LANG_C99, file: !625, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !119)
!625 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!626 = distinct !DICompileUnit(language: DW_LANG_C99, file: !627, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !119, retainedTypes: !590)
!627 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!628 = distinct !DICompileUnit(language: DW_LANG_C99, file: !629, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !119, retainedTypes: !590)
!629 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!630 = !{!"clang version 4.0.1 (tags/RELEASE_401/final)"}
!631 = !{i32 2, !"Dwarf Version", i32 4}
!632 = !{i32 2, !"Debug Info Version", i32 3}
!633 = !{i32 1, !"PIC Level", i32 2}
!634 = !{i32 1, !"PIE Level", i32 2}
!635 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 67, type: !636, isLocal: false, isDefinition: true, scopeLine: 68, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, variables: !638)
!636 = !DISubroutineType(types: !637)
!637 = !{null, !24}
!638 = !{!639}
!639 = !DILocalVariable(name: "status", arg: 1, scope: !635, file: !3, line: 67, type: !24)
!640 = !DIExpression()
!641 = !DILocation(line: 67, column: 12, scope: !635)
!642 = !DILocation(line: 69, column: 14, scope: !643)
!643 = distinct !DILexicalBlock(scope: !635, file: !3, line: 69, column: 7)
!644 = !DILocation(line: 69, column: 7, scope: !635)
!645 = !DILocation(line: 70, column: 5, scope: !646)
!646 = !DILexicalBlockFile(scope: !647, file: !3, discriminator: 1)
!647 = distinct !DILexicalBlock(scope: !643, file: !3, line: 70, column: 5)
!648 = !{!649, !649, i64 0}
!649 = !{!"any pointer", !650, i64 0}
!650 = !{!"omnipotent char", !651, i64 0}
!651 = !{!"Simple C/C++ TBAA"}
!652 = !DILocation(line: 70, column: 5, scope: !653)
!653 = !DILexicalBlockFile(scope: !647, file: !3, discriminator: 3)
!654 = !DILocation(line: 70, column: 5, scope: !655)
!655 = !DILexicalBlockFile(scope: !647, file: !3, discriminator: 2)
!656 = !DILocation(line: 73, column: 7, scope: !657)
!657 = distinct !DILexicalBlock(scope: !643, file: !3, line: 72, column: 5)
!658 = !DILocation(line: 73, column: 7, scope: !659)
!659 = !DILexicalBlockFile(scope: !657, file: !3, discriminator: 1)
!660 = !DILocation(line: 74, column: 7, scope: !657)
!661 = !DILocation(line: 74, column: 7, scope: !659)
!662 = !DILocation(line: 587, column: 3, scope: !663, inlinedAt: !666)
!663 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !6, file: !6, line: 585, type: !664, isLocal: true, isDefinition: true, scopeLine: 586, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !119)
!664 = !DISubroutineType(types: !665)
!665 = !{null}
!666 = distinct !DILocation(line: 81, column: 7, scope: !657)
!667 = !DILocation(line: 587, column: 3, scope: !668, inlinedAt: !666)
!668 = !DILexicalBlockFile(scope: !663, file: !6, discriminator: 1)
!669 = !DILocation(line: 83, column: 7, scope: !657)
!670 = !DILocation(line: 83, column: 7, scope: !659)
!671 = !DILocation(line: 86, column: 7, scope: !657)
!672 = !DILocation(line: 86, column: 7, scope: !659)
!673 = !DILocation(line: 87, column: 7, scope: !657)
!674 = !DILocation(line: 87, column: 7, scope: !659)
!675 = !DILocation(line: 88, column: 7, scope: !657)
!676 = !DILocation(line: 88, column: 7, scope: !659)
!677 = !DILocation(line: 642, column: 15, scope: !76, inlinedAt: !678)
!678 = distinct !DILocation(line: 89, column: 7, scope: !657)
!679 = !DILocation(line: 651, column: 3, scope: !76, inlinedAt: !678)
!680 = !DILocation(line: 651, column: 3, scope: !681, inlinedAt: !678)
!681 = !DILexicalBlockFile(scope: !76, file: !6, discriminator: 1)
!682 = !DILocation(line: 655, column: 29, scope: !76, inlinedAt: !678)
!683 = !DILocation(line: 655, column: 15, scope: !76, inlinedAt: !678)
!684 = !DILocation(line: 656, column: 7, scope: !95, inlinedAt: !678)
!685 = !DILocation(line: 656, column: 19, scope: !95, inlinedAt: !678)
!686 = !DILocation(line: 656, column: 22, scope: !687, inlinedAt: !678)
!687 = !DILexicalBlockFile(scope: !95, file: !6, discriminator: 16)
!688 = !DILocation(line: 656, column: 7, scope: !689, inlinedAt: !678)
!689 = !DILexicalBlockFile(scope: !76, file: !6, discriminator: 16)
!690 = !DILocation(line: 662, column: 7, scope: !691, inlinedAt: !678)
!691 = distinct !DILexicalBlock(scope: !95, file: !6, line: 657, column: 5)
!692 = !DILocation(line: 662, column: 7, scope: !693, inlinedAt: !678)
!693 = !DILexicalBlockFile(scope: !691, file: !6, discriminator: 1)
!694 = !DILocation(line: 664, column: 5, scope: !691, inlinedAt: !678)
!695 = !DILocation(line: 665, column: 3, scope: !76, inlinedAt: !678)
!696 = !DILocation(line: 665, column: 3, scope: !681, inlinedAt: !678)
!697 = !DILocation(line: 667, column: 3, scope: !76, inlinedAt: !678)
!698 = !DILocation(line: 667, column: 3, scope: !681, inlinedAt: !678)
!699 = !DILocation(line: 91, column: 3, scope: !635)
!700 = !DILocation(line: 101, column: 11, scope: !21)
!701 = !DILocation(line: 101, column: 24, scope: !21)
!702 = !DILocation(line: 104, column: 7, scope: !21)
!703 = !DILocation(line: 105, column: 15, scope: !21)
!704 = !DILocation(line: 110, column: 21, scope: !21)
!705 = !DILocation(line: 110, column: 3, scope: !21)
!706 = !DILocation(line: 111, column: 3, scope: !21)
!707 = !DILocation(line: 112, column: 3, scope: !21)
!708 = !DILocation(line: 113, column: 3, scope: !21)
!709 = !DILocalVariable(name: "status", arg: 1, scope: !710, file: !6, line: 99, type: !24)
!710 = distinct !DISubprogram(name: "initialize_exit_failure", scope: !6, file: !6, line: 99, type: !636, isLocal: true, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !711)
!711 = !{!709}
!712 = !DILocation(line: 99, column: 30, scope: !710, inlinedAt: !713)
!713 = distinct !DILocation(line: 115, column: 3, scope: !21)
!714 = !DILocation(line: 102, column: 18, scope: !715, inlinedAt: !713)
!715 = distinct !DILexicalBlock(scope: !710, file: !6, line: 101, column: 7)
!716 = !{!717, !717, i64 0}
!717 = !{!"int", !650, i64 0}
!718 = !DILocation(line: 116, column: 3, scope: !21)
!719 = !DILocation(line: 107, column: 7, scope: !21)
!720 = !DILocation(line: 118, column: 17, scope: !721)
!721 = !DILexicalBlockFile(scope: !41, file: !3, discriminator: 1)
!722 = !DILocation(line: 118, column: 3, scope: !723)
!723 = !DILexicalBlockFile(scope: !42, file: !3, discriminator: 1)
!724 = !DILocation(line: 120, column: 23, scope: !40)
!725 = !DILocation(line: 120, column: 19, scope: !40)
!726 = !DILocation(line: 122, column: 11, scope: !45)
!727 = !{!650, !650, i64 0}
!728 = !DILocation(line: 122, column: 16, scope: !45)
!729 = !DILocation(line: 122, column: 23, scope: !45)
!730 = !DILocation(line: 122, column: 26, scope: !731)
!731 = !DILexicalBlockFile(scope: !45, file: !3, discriminator: 1)
!732 = !DILocation(line: 122, column: 26, scope: !733)
!733 = !DILexicalBlockFile(scope: !45, file: !3, discriminator: 2)
!734 = !DILocation(line: 122, column: 26, scope: !735)
!735 = !DILexicalBlockFile(scope: !45, file: !3, discriminator: 3)
!736 = !DILocation(line: 122, column: 11, scope: !737)
!737 = !DILexicalBlockFile(scope: !40, file: !3, discriminator: 3)
!738 = !DILocation(line: 125, column: 11, scope: !739)
!739 = distinct !DILexicalBlock(scope: !45, file: !3, line: 123, column: 9)
!740 = !DILocation(line: 126, column: 9, scope: !739)
!741 = !DILocation(line: 130, column: 37, scope: !44)
!742 = !DILocation(line: 130, column: 32, scope: !44)
!743 = !DILocation(line: 130, column: 15, scope: !44)
!744 = !DILocation(line: 131, column: 35, scope: !44)
!745 = !DILocation(line: 131, column: 18, scope: !44)
!746 = !DILocation(line: 134, column: 26, scope: !44)
!747 = !DILocation(line: 134, column: 24, scope: !44)
!748 = !DILocation(line: 137, column: 18, scope: !44)
!749 = !DILocation(line: 139, column: 15, scope: !44)
!750 = !DILocation(line: 129, column: 15, scope: !44)
!751 = !DILocation(line: 140, column: 16, scope: !44)
!752 = !DILocation(line: 140, column: 13, scope: !44)
!753 = !DILocation(line: 142, column: 11, scope: !44)
!754 = !DILocation(line: 145, column: 34, scope: !755)
!755 = distinct !DILexicalBlock(scope: !44, file: !3, line: 143, column: 13)
!756 = !DILocation(line: 151, column: 13, scope: !755)
!757 = !DILocation(line: 153, column: 13, scope: !755)
!758 = !DILocation(line: 153, column: 13, scope: !759)
!759 = !DILexicalBlockFile(scope: !755, file: !3, discriminator: 1)
!760 = !DILocation(line: 156, column: 15, scope: !755)
!761 = !DILocation(line: 165, column: 7, scope: !50)
!762 = !DILocation(line: 165, column: 7, scope: !21)
!763 = !DILocation(line: 171, column: 7, scope: !49)
!764 = !DIExpression(DW_OP_deref)
!765 = !DILocation(line: 171, column: 16, scope: !49)
!766 = !DILocation(line: 172, column: 30, scope: !767)
!767 = distinct !DILexicalBlock(scope: !49, file: !3, line: 172, column: 11)
!768 = !DILocation(line: 172, column: 28, scope: !767)
!769 = !DILocation(line: 172, column: 11, scope: !49)
!770 = !DILocation(line: 173, column: 9, scope: !767)
!771 = !DILocation(line: 173, column: 9, scope: !772)
!772 = !DILexicalBlockFile(scope: !767, file: !3, discriminator: 1)
!773 = !DILocation(line: 173, column: 9, scope: !774)
!774 = !DILexicalBlockFile(scope: !767, file: !3, discriminator: 2)
!775 = !DILocation(line: 175, column: 20, scope: !49)
!776 = !{!777, !777, i64 0}
!777 = !{!"long", !650, i64 0}
!778 = !DILocation(line: 175, column: 20, scope: !779)
!779 = !DILexicalBlockFile(scope: !49, file: !3, discriminator: 3)
!780 = !DILocation(line: 176, column: 5, scope: !50)
!781 = !DILocation(line: 176, column: 5, scope: !49)
!782 = !DILocation(line: 178, column: 9, scope: !783)
!783 = distinct !DILexicalBlock(scope: !21, file: !3, line: 178, column: 7)
!784 = !DILocation(line: 178, column: 7, scope: !21)
!785 = !DILocation(line: 180, column: 11, scope: !786)
!786 = distinct !DILexicalBlock(scope: !783, file: !3, line: 179, column: 5)
!787 = !DILocation(line: 182, column: 24, scope: !788)
!788 = distinct !DILexicalBlock(scope: !789, file: !3, line: 181, column: 9)
!789 = distinct !DILexicalBlock(scope: !786, file: !3, line: 180, column: 11)
!790 = !DILocation(line: 182, column: 11, scope: !791)
!791 = !DILexicalBlockFile(scope: !788, file: !3, discriminator: 1)
!792 = !DILocation(line: 183, column: 11, scope: !788)
!793 = !DILocation(line: 186, column: 7, scope: !786)
!794 = !DILocation(line: 186, column: 13, scope: !786)
!795 = !DILocation(line: 187, column: 26, scope: !786)
!796 = !DILocation(line: 103, column: 7, scope: !21)
!797 = !DILocation(line: 188, column: 28, scope: !798)
!798 = distinct !DILexicalBlock(scope: !786, file: !3, line: 188, column: 11)
!799 = !DILocation(line: 188, column: 34, scope: !798)
!800 = !DILocation(line: 188, column: 37, scope: !801)
!801 = !DILexicalBlockFile(scope: !798, file: !3, discriminator: 1)
!802 = !DILocation(line: 188, column: 43, scope: !801)
!803 = !DILocation(line: 188, column: 11, scope: !804)
!804 = !DILexicalBlockFile(scope: !786, file: !3, discriminator: 1)
!805 = !DILocation(line: 189, column: 9, scope: !801)
!806 = !DILocation(line: 189, column: 9, scope: !807)
!807 = !DILexicalBlockFile(scope: !798, file: !3, discriminator: 2)
!808 = !DILocation(line: 189, column: 9, scope: !798)
!809 = !DILocation(line: 190, column: 7, scope: !786)
!810 = !DILocation(line: 191, column: 7, scope: !786)
!811 = !DILocation(line: 194, column: 3, scope: !21)
!812 = !DILocation(line: 194, column: 9, scope: !21)
!813 = !DILocation(line: 198, column: 22, scope: !21)
!814 = !DILocation(line: 199, column: 24, scope: !815)
!815 = distinct !DILexicalBlock(scope: !21, file: !3, line: 199, column: 7)
!816 = !DILocation(line: 199, column: 30, scope: !815)
!817 = !DILocation(line: 199, column: 33, scope: !818)
!818 = !DILexicalBlockFile(scope: !815, file: !3, discriminator: 1)
!819 = !DILocation(line: 199, column: 39, scope: !818)
!820 = !DILocation(line: 199, column: 7, scope: !821)
!821 = !DILexicalBlockFile(scope: !21, file: !3, discriminator: 1)
!822 = !DILocation(line: 200, column: 5, scope: !818)
!823 = !DILocation(line: 200, column: 5, scope: !824)
!824 = !DILexicalBlockFile(scope: !815, file: !3, discriminator: 2)
!825 = !DILocation(line: 200, column: 5, scope: !815)
!826 = !DILocation(line: 201, column: 56, scope: !21)
!827 = !DILocation(line: 201, column: 9, scope: !21)
!828 = !DILocation(line: 201, column: 70, scope: !21)
!829 = !DILocation(line: 203, column: 7, scope: !21)
!830 = !DILocation(line: 205, column: 34, scope: !831)
!831 = distinct !DILexicalBlock(scope: !832, file: !3, line: 204, column: 5)
!832 = distinct !DILexicalBlock(scope: !21, file: !3, line: 203, column: 7)
!833 = !DILocalVariable(name: "err", arg: 1, scope: !834, file: !3, line: 95, type: !24)
!834 = distinct !DISubprogram(name: "perm_related_errno", scope: !3, file: !3, line: 95, type: !835, isLocal: true, isDefinition: true, scopeLine: 96, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !837)
!835 = !DISubroutineType(types: !836)
!836 = !{!37, !24}
!837 = !{!833}
!838 = !DILocation(line: 95, column: 25, scope: !834, inlinedAt: !839)
!839 = distinct !DILocation(line: 205, column: 14, scope: !840)
!840 = !DILexicalBlockFile(scope: !831, file: !3, discriminator: 1)
!841 = !DILocation(line: 97, column: 14, scope: !834, inlinedAt: !839)
!842 = !DILocation(line: 97, column: 31, scope: !843, inlinedAt: !839)
!843 = !DILexicalBlockFile(scope: !834, file: !3, discriminator: 1)
!844 = !DILocation(line: 97, column: 24, scope: !834, inlinedAt: !839)
!845 = !DILocation(line: 205, column: 14, scope: !831)
!846 = !DILocation(line: 206, column: 38, scope: !840)
!847 = !DILocation(line: 205, column: 7, scope: !848)
!848 = !DILexicalBlockFile(scope: !831, file: !3, discriminator: 2)
!849 = !DILocation(line: 212, column: 11, scope: !850)
!850 = distinct !DILexicalBlock(scope: !831, file: !3, line: 212, column: 11)
!851 = !DILocalVariable(name: "__stream", arg: 1, scope: !852, file: !853, line: 132, type: !856)
!852 = distinct !DISubprogram(name: "ferror_unlocked", scope: !853, file: !853, line: 132, type: !854, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !910)
!853 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!854 = !DISubroutineType(types: !855)
!855 = !{!24, !856}
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!857 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !858, line: 49, baseType: !859)
!858 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !860, line: 241, size: 1728, elements: !861)
!860 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!861 = !{!862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !882, !883, !884, !885, !888, !889, !891, !895, !898, !900, !901, !902, !903, !904, !905, !906}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !859, file: !860, line: 242, baseType: !24, size: 32)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !859, file: !860, line: 247, baseType: !26, size: 64, offset: 64)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !859, file: !860, line: 248, baseType: !26, size: 64, offset: 128)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !859, file: !860, line: 249, baseType: !26, size: 64, offset: 192)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !859, file: !860, line: 250, baseType: !26, size: 64, offset: 256)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !859, file: !860, line: 251, baseType: !26, size: 64, offset: 320)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !859, file: !860, line: 252, baseType: !26, size: 64, offset: 384)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !859, file: !860, line: 253, baseType: !26, size: 64, offset: 448)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !859, file: !860, line: 254, baseType: !26, size: 64, offset: 512)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !859, file: !860, line: 256, baseType: !26, size: 64, offset: 576)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !859, file: !860, line: 257, baseType: !26, size: 64, offset: 640)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !859, file: !860, line: 258, baseType: !26, size: 64, offset: 704)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !859, file: !860, line: 260, baseType: !875, size: 64, offset: 768)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !860, line: 156, size: 192, elements: !877)
!877 = !{!878, !879, !881}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !876, file: !860, line: 157, baseType: !875, size: 64)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !876, file: !860, line: 158, baseType: !880, size: 64, offset: 64)
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !876, file: !860, line: 162, baseType: !24, size: 32, offset: 128)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !859, file: !860, line: 262, baseType: !880, size: 64, offset: 832)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !859, file: !860, line: 264, baseType: !24, size: 32, offset: 896)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !859, file: !860, line: 268, baseType: !24, size: 32, offset: 928)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !859, file: !860, line: 270, baseType: !886, size: 64, offset: 960)
!886 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !887, line: 140, baseType: !51)
!887 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!888 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !859, file: !860, line: 274, baseType: !183, size: 16, offset: 1024)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !859, file: !860, line: 275, baseType: !890, size: 8, offset: 1040)
!890 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !859, file: !860, line: 276, baseType: !892, size: 8, offset: 1048)
!892 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 8, elements: !893)
!893 = !{!894}
!894 = !DISubrange(count: 1)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !859, file: !860, line: 280, baseType: !896, size: 64, offset: 1088)
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!897 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !860, line: 150, baseType: null)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !859, file: !860, line: 289, baseType: !899, size: 64, offset: 1152)
!899 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !887, line: 141, baseType: !51)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !859, file: !860, line: 297, baseType: !64, size: 64, offset: 1216)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !859, file: !860, line: 298, baseType: !64, size: 64, offset: 1280)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !859, file: !860, line: 299, baseType: !64, size: 64, offset: 1344)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !859, file: !860, line: 300, baseType: !64, size: 64, offset: 1408)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !859, file: !860, line: 302, baseType: !65, size: 64, offset: 1472)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !859, file: !860, line: 303, baseType: !24, size: 32, offset: 1536)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !859, file: !860, line: 305, baseType: !907, size: 160, offset: 1568)
!907 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 160, elements: !908)
!908 = !{!909}
!909 = !DISubrange(count: 20)
!910 = !{!851}
!911 = !DILocation(line: 132, column: 1, scope: !852, inlinedAt: !912)
!912 = distinct !DILocation(line: 212, column: 11, scope: !850)
!913 = !DILocation(line: 134, column: 10, scope: !852, inlinedAt: !912)
!914 = !{!915, !717, i64 0}
!915 = !{!"_IO_FILE", !717, i64 0, !649, i64 8, !649, i64 16, !649, i64 24, !649, i64 32, !649, i64 40, !649, i64 48, !649, i64 56, !649, i64 64, !649, i64 72, !649, i64 80, !649, i64 88, !649, i64 96, !649, i64 104, !717, i64 112, !717, i64 116, !777, i64 120, !916, i64 128, !650, i64 130, !650, i64 131, !649, i64 136, !777, i64 144, !649, i64 152, !649, i64 160, !649, i64 168, !649, i64 176, !777, i64 184, !717, i64 192, !650, i64 196}
!916 = !{!"short", !650, i64 0}
!917 = !DILocation(line: 212, column: 11, scope: !831)
!918 = !DILocation(line: 216, column: 11, scope: !21)
!919 = !DILocation(line: 216, column: 3, scope: !21)
!920 = !DILocation(line: 218, column: 21, scope: !21)
!921 = !DILocation(line: 218, column: 27, scope: !21)
!922 = !DILocation(line: 218, column: 7, scope: !21)
!923 = !DILocation(line: 219, column: 33, scope: !21)
!924 = !DILocation(line: 219, column: 26, scope: !821)
!925 = !DILocation(line: 219, column: 3, scope: !926)
!926 = !DILexicalBlockFile(scope: !21, file: !3, discriminator: 2)
!927 = !DILocation(line: 221, column: 1, scope: !821)
!928 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !128, file: !128, line: 41, type: !77, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !123, variables: !929)
!929 = !{!930}
!930 = !DILocalVariable(name: "file", arg: 1, scope: !928, file: !128, line: 41, type: !34)
!931 = !DILocation(line: 41, column: 41, scope: !928)
!932 = !DILocation(line: 43, column: 13, scope: !928)
!933 = !DILocation(line: 44, column: 1, scope: !928)
!934 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !128, file: !128, line: 78, type: !935, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !123, variables: !937)
!935 = !DISubroutineType(types: !936)
!936 = !{null, !37}
!937 = !{!938}
!938 = !DILocalVariable(name: "ignore", arg: 1, scope: !934, file: !128, line: 78, type: !37)
!939 = !DIExpression(DW_OP_LLVM_fragment, 0, 1)
!940 = !DILocation(line: 78, column: 37, scope: !934)
!941 = !DILocation(line: 80, column: 16, scope: !934)
!942 = !{!943, !943, i64 0}
!943 = !{!"_Bool", !650, i64 0}
!944 = !DILocation(line: 81, column: 1, scope: !934)
!945 = distinct !DISubprogram(name: "close_stdout", scope: !128, file: !128, line: 107, type: !664, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !123, variables: !946)
!946 = !{!947}
!947 = !DILocalVariable(name: "write_error", scope: !948, file: !128, line: 112, type: !34)
!948 = distinct !DILexicalBlock(scope: !949, file: !128, line: 111, column: 5)
!949 = distinct !DILexicalBlock(scope: !945, file: !128, line: 109, column: 7)
!950 = !DILocation(line: 109, column: 21, scope: !949)
!951 = !DILocation(line: 109, column: 7, scope: !949)
!952 = !DILocation(line: 109, column: 29, scope: !949)
!953 = !DILocation(line: 110, column: 7, scope: !949)
!954 = !DILocation(line: 110, column: 12, scope: !955)
!955 = !DILexicalBlockFile(scope: !949, file: !128, discriminator: 1)
!956 = !{i8 0, i8 2}
!957 = !DILocation(line: 114, column: 19, scope: !958)
!958 = distinct !DILexicalBlock(scope: !948, file: !128, line: 113, column: 11)
!959 = !DILocation(line: 110, column: 25, scope: !955)
!960 = !DILocation(line: 110, column: 28, scope: !961)
!961 = !DILexicalBlockFile(scope: !949, file: !128, discriminator: 2)
!962 = !DILocation(line: 110, column: 34, scope: !961)
!963 = !DILocation(line: 109, column: 7, scope: !964)
!964 = !DILexicalBlockFile(scope: !945, file: !128, discriminator: 1)
!965 = !DILocation(line: 112, column: 33, scope: !948)
!966 = !DILocation(line: 112, column: 19, scope: !948)
!967 = !DILocation(line: 113, column: 11, scope: !958)
!968 = !DILocation(line: 113, column: 11, scope: !948)
!969 = !DILocation(line: 114, column: 36, scope: !970)
!970 = !DILexicalBlockFile(scope: !958, file: !128, discriminator: 1)
!971 = !DILocation(line: 114, column: 9, scope: !972)
!972 = !DILexicalBlockFile(scope: !958, file: !128, discriminator: 2)
!973 = !DILocation(line: 114, column: 9, scope: !958)
!974 = !DILocation(line: 117, column: 9, scope: !970)
!975 = !DILocation(line: 119, column: 14, scope: !948)
!976 = !DILocation(line: 119, column: 7, scope: !948)
!977 = !DILocation(line: 122, column: 22, scope: !978)
!978 = distinct !DILexicalBlock(scope: !945, file: !128, line: 122, column: 8)
!979 = !DILocation(line: 122, column: 8, scope: !978)
!980 = !DILocation(line: 122, column: 30, scope: !978)
!981 = !DILocation(line: 122, column: 8, scope: !945)
!982 = !DILocation(line: 123, column: 13, scope: !978)
!983 = !DILocation(line: 123, column: 6, scope: !978)
!984 = !DILocation(line: 124, column: 1, scope: !945)
!985 = distinct !DISubprogram(name: "set_program_name", scope: !142, file: !142, line: 39, type: !77, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !138, variables: !986)
!986 = !{!987, !988, !989}
!987 = !DILocalVariable(name: "argv0", arg: 1, scope: !985, file: !142, line: 39, type: !34)
!988 = !DILocalVariable(name: "slash", scope: !985, file: !142, line: 46, type: !34)
!989 = !DILocalVariable(name: "base", scope: !985, file: !142, line: 47, type: !34)
!990 = !DILocation(line: 39, column: 31, scope: !985)
!991 = !DILocation(line: 51, column: 13, scope: !992)
!992 = distinct !DILexicalBlock(scope: !985, file: !142, line: 51, column: 7)
!993 = !DILocation(line: 51, column: 7, scope: !985)
!994 = !DILocation(line: 55, column: 14, scope: !995)
!995 = distinct !DILexicalBlock(scope: !992, file: !142, line: 52, column: 5)
!996 = !DILocation(line: 54, column: 7, scope: !995)
!997 = !DILocation(line: 56, column: 7, scope: !995)
!998 = !DILocation(line: 59, column: 11, scope: !985)
!999 = !DILocation(line: 46, column: 15, scope: !985)
!1000 = !DILocation(line: 60, column: 17, scope: !985)
!1001 = !DILocation(line: 60, column: 33, scope: !1002)
!1002 = !DILexicalBlockFile(scope: !985, file: !142, discriminator: 1)
!1003 = !DILocation(line: 60, column: 11, scope: !985)
!1004 = !DILocation(line: 47, column: 15, scope: !985)
!1005 = !DILocation(line: 61, column: 12, scope: !1006)
!1006 = distinct !DILexicalBlock(scope: !985, file: !142, line: 61, column: 7)
!1007 = !DILocation(line: 61, column: 20, scope: !1006)
!1008 = !DILocation(line: 61, column: 25, scope: !1006)
!1009 = !DILocation(line: 61, column: 28, scope: !1010)
!1010 = !DILexicalBlockFile(scope: !1006, file: !142, discriminator: 1)
!1011 = !DILocation(line: 61, column: 61, scope: !1010)
!1012 = !DILocation(line: 61, column: 7, scope: !1002)
!1013 = !DILocation(line: 64, column: 11, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !1015, file: !142, line: 64, column: 11)
!1015 = distinct !DILexicalBlock(scope: !1006, file: !142, line: 62, column: 5)
!1016 = !DILocation(line: 64, column: 36, scope: !1014)
!1017 = !DILocation(line: 64, column: 11, scope: !1015)
!1018 = !DILocation(line: 66, column: 24, scope: !1019)
!1019 = distinct !DILexicalBlock(scope: !1014, file: !142, line: 65, column: 9)
!1020 = !DILocation(line: 70, column: 41, scope: !1019)
!1021 = !DILocation(line: 72, column: 9, scope: !1019)
!1022 = !DILocation(line: 84, column: 16, scope: !985)
!1023 = !DILocation(line: 90, column: 27, scope: !985)
!1024 = !DILocation(line: 92, column: 1, scope: !985)
!1025 = distinct !DISubprogram(name: "clone_quoting_options", scope: !187, file: !187, line: 114, type: !1026, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !145, variables: !1029)
!1026 = !DISubroutineType(types: !1027)
!1027 = !{!1028, !1028}
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!1029 = !{!1030, !1031, !1032}
!1030 = !DILocalVariable(name: "o", arg: 1, scope: !1025, file: !187, line: 114, type: !1028)
!1031 = !DILocalVariable(name: "e", scope: !1025, file: !187, line: 116, type: !24)
!1032 = !DILocalVariable(name: "p", scope: !1025, file: !187, line: 117, type: !1028)
!1033 = !DILocation(line: 114, column: 48, scope: !1025)
!1034 = !DILocation(line: 116, column: 11, scope: !1025)
!1035 = !DILocation(line: 116, column: 7, scope: !1025)
!1036 = !DILocation(line: 117, column: 40, scope: !1025)
!1037 = !DILocation(line: 117, column: 40, scope: !1038)
!1038 = !DILexicalBlockFile(scope: !1025, file: !187, discriminator: 3)
!1039 = !DILocation(line: 117, column: 31, scope: !1038)
!1040 = !DILocation(line: 117, column: 27, scope: !1025)
!1041 = !DILocation(line: 119, column: 9, scope: !1025)
!1042 = !DILocation(line: 120, column: 3, scope: !1025)
!1043 = distinct !DISubprogram(name: "get_quoting_style", scope: !187, file: !187, line: 125, type: !1044, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !145, variables: !1048)
!1044 = !DISubroutineType(types: !1045)
!1045 = !{!148, !1046}
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1047 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !194)
!1048 = !{!1049}
!1049 = !DILocalVariable(name: "o", arg: 1, scope: !1043, file: !187, line: 125, type: !1046)
!1050 = !DILocation(line: 125, column: 50, scope: !1043)
!1051 = !DILocation(line: 127, column: 11, scope: !1043)
!1052 = !DILocation(line: 127, column: 46, scope: !1053)
!1053 = !DILexicalBlockFile(scope: !1043, file: !187, discriminator: 3)
!1054 = !{!1055, !650, i64 0}
!1055 = !{!"quoting_options", !650, i64 0, !717, i64 4, !650, i64 8, !649, i64 40, !649, i64 48}
!1056 = !DILocation(line: 127, column: 3, scope: !1053)
!1057 = distinct !DISubprogram(name: "set_quoting_style", scope: !187, file: !187, line: 133, type: !1058, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !145, variables: !1060)
!1058 = !DISubroutineType(types: !1059)
!1059 = !{null, !1028, !148}
!1060 = !{!1061, !1062}
!1061 = !DILocalVariable(name: "o", arg: 1, scope: !1057, file: !187, line: 133, type: !1028)
!1062 = !DILocalVariable(name: "s", arg: 2, scope: !1057, file: !187, line: 133, type: !148)
!1063 = !DILocation(line: 133, column: 44, scope: !1057)
!1064 = !DILocation(line: 133, column: 66, scope: !1057)
!1065 = !DILocation(line: 135, column: 4, scope: !1057)
!1066 = !DILocation(line: 135, column: 39, scope: !1067)
!1067 = !DILexicalBlockFile(scope: !1057, file: !187, discriminator: 3)
!1068 = !DILocation(line: 135, column: 45, scope: !1067)
!1069 = !DILocation(line: 136, column: 1, scope: !1057)
!1070 = distinct !DISubprogram(name: "set_char_quoting", scope: !187, file: !187, line: 144, type: !1071, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !145, variables: !1073)
!1071 = !DISubroutineType(types: !1072)
!1072 = !{!24, !1028, !27, !24}
!1073 = !{!1074, !1075, !1076, !1077, !1078, !1080, !1081}
!1074 = !DILocalVariable(name: "o", arg: 1, scope: !1070, file: !187, line: 144, type: !1028)
!1075 = !DILocalVariable(name: "c", arg: 2, scope: !1070, file: !187, line: 144, type: !27)
!1076 = !DILocalVariable(name: "i", arg: 3, scope: !1070, file: !187, line: 144, type: !24)
!1077 = !DILocalVariable(name: "uc", scope: !1070, file: !187, line: 146, type: !72)
!1078 = !DILocalVariable(name: "p", scope: !1070, file: !187, line: 147, type: !1079)
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!1080 = !DILocalVariable(name: "shift", scope: !1070, file: !187, line: 149, type: !24)
!1081 = !DILocalVariable(name: "r", scope: !1070, file: !187, line: 150, type: !24)
!1082 = !DILocation(line: 144, column: 43, scope: !1070)
!1083 = !DILocation(line: 144, column: 51, scope: !1070)
!1084 = !DILocation(line: 144, column: 58, scope: !1070)
!1085 = !DILocation(line: 146, column: 17, scope: !1070)
!1086 = !DILocation(line: 148, column: 6, scope: !1070)
!1087 = !DILocation(line: 148, column: 62, scope: !1088)
!1088 = !DILexicalBlockFile(scope: !1070, file: !187, discriminator: 3)
!1089 = !DILocation(line: 148, column: 57, scope: !1088)
!1090 = !DILocation(line: 147, column: 17, scope: !1070)
!1091 = !DILocation(line: 149, column: 18, scope: !1070)
!1092 = !DILocation(line: 149, column: 15, scope: !1070)
!1093 = !DILocation(line: 149, column: 7, scope: !1070)
!1094 = !DILocation(line: 150, column: 12, scope: !1070)
!1095 = !DILocation(line: 150, column: 15, scope: !1070)
!1096 = !DILocation(line: 150, column: 25, scope: !1070)
!1097 = !DILocation(line: 150, column: 7, scope: !1070)
!1098 = !DILocation(line: 151, column: 13, scope: !1070)
!1099 = !DILocation(line: 151, column: 18, scope: !1070)
!1100 = !DILocation(line: 151, column: 23, scope: !1070)
!1101 = !DILocation(line: 151, column: 6, scope: !1070)
!1102 = !DILocation(line: 152, column: 3, scope: !1070)
!1103 = distinct !DISubprogram(name: "set_quoting_flags", scope: !187, file: !187, line: 160, type: !1104, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !145, variables: !1106)
!1104 = !DISubroutineType(types: !1105)
!1105 = !{!24, !1028, !24}
!1106 = !{!1107, !1108, !1109}
!1107 = !DILocalVariable(name: "o", arg: 1, scope: !1103, file: !187, line: 160, type: !1028)
!1108 = !DILocalVariable(name: "i", arg: 2, scope: !1103, file: !187, line: 160, type: !24)
!1109 = !DILocalVariable(name: "r", scope: !1103, file: !187, line: 162, type: !24)
!1110 = !DILocation(line: 160, column: 44, scope: !1103)
!1111 = !DILocation(line: 160, column: 51, scope: !1103)
!1112 = !DILocation(line: 163, column: 8, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !1103, file: !187, line: 163, column: 7)
!1114 = !DILocation(line: 163, column: 7, scope: !1103)
!1115 = !DILocation(line: 165, column: 10, scope: !1103)
!1116 = !{!1055, !717, i64 4}
!1117 = !DILocation(line: 162, column: 7, scope: !1103)
!1118 = !DILocation(line: 166, column: 12, scope: !1103)
!1119 = !DILocation(line: 167, column: 3, scope: !1103)
!1120 = distinct !DISubprogram(name: "set_custom_quoting", scope: !187, file: !187, line: 171, type: !1121, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !145, variables: !1123)
!1121 = !DISubroutineType(types: !1122)
!1122 = !{null, !1028, !34, !34}
!1123 = !{!1124, !1125, !1126}
!1124 = !DILocalVariable(name: "o", arg: 1, scope: !1120, file: !187, line: 171, type: !1028)
!1125 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1120, file: !187, line: 172, type: !34)
!1126 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1120, file: !187, line: 172, type: !34)
!1127 = !DILocation(line: 171, column: 45, scope: !1120)
!1128 = !DILocation(line: 172, column: 33, scope: !1120)
!1129 = !DILocation(line: 172, column: 57, scope: !1120)
!1130 = !DILocation(line: 174, column: 8, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !1120, file: !187, line: 174, column: 7)
!1132 = !DILocation(line: 174, column: 7, scope: !1120)
!1133 = !DILocation(line: 176, column: 6, scope: !1120)
!1134 = !DILocation(line: 176, column: 12, scope: !1120)
!1135 = !DILocation(line: 177, column: 8, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !1120, file: !187, line: 177, column: 7)
!1137 = !DILocation(line: 177, column: 23, scope: !1138)
!1138 = !DILexicalBlockFile(scope: !1136, file: !187, discriminator: 1)
!1139 = !DILocation(line: 177, column: 19, scope: !1136)
!1140 = !DILocation(line: 178, column: 5, scope: !1136)
!1141 = !DILocation(line: 179, column: 6, scope: !1120)
!1142 = !DILocation(line: 179, column: 17, scope: !1120)
!1143 = !{!1055, !649, i64 40}
!1144 = !DILocation(line: 180, column: 6, scope: !1120)
!1145 = !DILocation(line: 180, column: 18, scope: !1120)
!1146 = !{!1055, !649, i64 48}
!1147 = !DILocation(line: 181, column: 1, scope: !1120)
!1148 = distinct !DISubprogram(name: "quotearg_buffer", scope: !187, file: !187, line: 776, type: !1149, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !145, variables: !1151)
!1149 = !DISubroutineType(types: !1150)
!1150 = !{!65, !26, !65, !34, !65, !1046}
!1151 = !{!1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159}
!1152 = !DILocalVariable(name: "buffer", arg: 1, scope: !1148, file: !187, line: 776, type: !26)
!1153 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1148, file: !187, line: 776, type: !65)
!1154 = !DILocalVariable(name: "arg", arg: 3, scope: !1148, file: !187, line: 777, type: !34)
!1155 = !DILocalVariable(name: "argsize", arg: 4, scope: !1148, file: !187, line: 777, type: !65)
!1156 = !DILocalVariable(name: "o", arg: 5, scope: !1148, file: !187, line: 778, type: !1046)
!1157 = !DILocalVariable(name: "p", scope: !1148, file: !187, line: 780, type: !1046)
!1158 = !DILocalVariable(name: "e", scope: !1148, file: !187, line: 781, type: !24)
!1159 = !DILocalVariable(name: "r", scope: !1148, file: !187, line: 782, type: !65)
!1160 = !DILocation(line: 776, column: 24, scope: !1148)
!1161 = !DILocation(line: 776, column: 39, scope: !1148)
!1162 = !DILocation(line: 777, column: 30, scope: !1148)
!1163 = !DILocation(line: 777, column: 42, scope: !1148)
!1164 = !DILocation(line: 778, column: 48, scope: !1148)
!1165 = !DILocation(line: 780, column: 37, scope: !1148)
!1166 = !DILocation(line: 780, column: 33, scope: !1148)
!1167 = !DILocation(line: 781, column: 11, scope: !1148)
!1168 = !DILocation(line: 781, column: 7, scope: !1148)
!1169 = !DILocation(line: 783, column: 43, scope: !1148)
!1170 = !DILocation(line: 783, column: 53, scope: !1148)
!1171 = !DILocation(line: 783, column: 60, scope: !1148)
!1172 = !DILocation(line: 784, column: 43, scope: !1148)
!1173 = !DILocation(line: 784, column: 58, scope: !1148)
!1174 = !DILocation(line: 782, column: 14, scope: !1148)
!1175 = !DILocation(line: 782, column: 10, scope: !1148)
!1176 = !DILocation(line: 785, column: 9, scope: !1148)
!1177 = !DILocation(line: 786, column: 3, scope: !1148)
!1178 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !187, file: !187, line: 248, type: !1179, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !145, variables: !1183)
!1179 = !DISubroutineType(types: !1180)
!1180 = !{!65, !26, !65, !34, !65, !148, !24, !1181, !34, !34}
!1181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1182, size: 64)
!1182 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !63)
!1183 = !{!1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1208, !1209, !1210, !1211, !1212, !1215, !1216, !1231, !1234, !1235, !1242}
!1184 = !DILocalVariable(name: "buffer", arg: 1, scope: !1178, file: !187, line: 248, type: !26)
!1185 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1178, file: !187, line: 248, type: !65)
!1186 = !DILocalVariable(name: "arg", arg: 3, scope: !1178, file: !187, line: 249, type: !34)
!1187 = !DILocalVariable(name: "argsize", arg: 4, scope: !1178, file: !187, line: 249, type: !65)
!1188 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1178, file: !187, line: 250, type: !148)
!1189 = !DILocalVariable(name: "flags", arg: 6, scope: !1178, file: !187, line: 250, type: !24)
!1190 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1178, file: !187, line: 251, type: !1181)
!1191 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1178, file: !187, line: 252, type: !34)
!1192 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1178, file: !187, line: 253, type: !34)
!1193 = !DILocalVariable(name: "i", scope: !1178, file: !187, line: 255, type: !65)
!1194 = !DILocalVariable(name: "len", scope: !1178, file: !187, line: 256, type: !65)
!1195 = !DILocalVariable(name: "orig_buffersize", scope: !1178, file: !187, line: 257, type: !65)
!1196 = !DILocalVariable(name: "quote_string", scope: !1178, file: !187, line: 258, type: !34)
!1197 = !DILocalVariable(name: "quote_string_len", scope: !1178, file: !187, line: 259, type: !65)
!1198 = !DILocalVariable(name: "backslash_escapes", scope: !1178, file: !187, line: 260, type: !37)
!1199 = !DILocalVariable(name: "unibyte_locale", scope: !1178, file: !187, line: 261, type: !37)
!1200 = !DILocalVariable(name: "elide_outer_quotes", scope: !1178, file: !187, line: 262, type: !37)
!1201 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1178, file: !187, line: 263, type: !37)
!1202 = !DILocalVariable(name: "encountered_single_quote", scope: !1178, file: !187, line: 264, type: !37)
!1203 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1178, file: !187, line: 265, type: !37)
!1204 = !DILocalVariable(name: "c", scope: !1205, file: !187, line: 394, type: !72)
!1205 = distinct !DILexicalBlock(scope: !1206, file: !187, line: 393, column: 5)
!1206 = distinct !DILexicalBlock(scope: !1207, file: !187, line: 392, column: 3)
!1207 = distinct !DILexicalBlock(scope: !1178, file: !187, line: 392, column: 3)
!1208 = !DILocalVariable(name: "esc", scope: !1205, file: !187, line: 395, type: !72)
!1209 = !DILocalVariable(name: "is_right_quote", scope: !1205, file: !187, line: 396, type: !37)
!1210 = !DILocalVariable(name: "escaping", scope: !1205, file: !187, line: 397, type: !37)
!1211 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1205, file: !187, line: 398, type: !37)
!1212 = !DILocalVariable(name: "m", scope: !1213, file: !187, line: 602, type: !65)
!1213 = distinct !DILexicalBlock(scope: !1214, file: !187, line: 600, column: 11)
!1214 = distinct !DILexicalBlock(scope: !1205, file: !187, line: 418, column: 9)
!1215 = !DILocalVariable(name: "printable", scope: !1213, file: !187, line: 604, type: !37)
!1216 = !DILocalVariable(name: "mbstate", scope: !1217, file: !187, line: 613, type: !1219)
!1217 = distinct !DILexicalBlock(scope: !1218, file: !187, line: 612, column: 15)
!1218 = distinct !DILexicalBlock(scope: !1213, file: !187, line: 606, column: 17)
!1219 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1220, line: 107, baseType: !1221)
!1220 = !DIFile(filename: "/usr/include/wchar.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1221 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1220, line: 95, baseType: !1222)
!1222 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1220, line: 83, size: 64, elements: !1223)
!1223 = !{!1224, !1225}
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1222, file: !1220, line: 85, baseType: !24, size: 32)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1222, file: !1220, line: 94, baseType: !1226, size: 32, offset: 32)
!1226 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1222, file: !1220, line: 86, size: 32, elements: !1227)
!1227 = !{!1228, !1229}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1226, file: !1220, line: 89, baseType: !63, size: 32)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1226, file: !1220, line: 93, baseType: !1230, size: 32)
!1230 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 32, elements: !113)
!1231 = !DILocalVariable(name: "w", scope: !1232, file: !187, line: 623, type: !1233)
!1232 = distinct !DILexicalBlock(scope: !1217, file: !187, line: 622, column: 19)
!1233 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !66, line: 90, baseType: !24)
!1234 = !DILocalVariable(name: "bytes", scope: !1232, file: !187, line: 624, type: !65)
!1235 = !DILocalVariable(name: "j", scope: !1236, file: !187, line: 649, type: !65)
!1236 = distinct !DILexicalBlock(scope: !1237, file: !187, line: 648, column: 27)
!1237 = distinct !DILexicalBlock(scope: !1238, file: !187, line: 646, column: 29)
!1238 = distinct !DILexicalBlock(scope: !1239, file: !187, line: 641, column: 23)
!1239 = distinct !DILexicalBlock(scope: !1240, file: !187, line: 633, column: 30)
!1240 = distinct !DILexicalBlock(scope: !1241, file: !187, line: 628, column: 30)
!1241 = distinct !DILexicalBlock(scope: !1232, file: !187, line: 626, column: 25)
!1242 = !DILocalVariable(name: "ilim", scope: !1243, file: !187, line: 676, type: !65)
!1243 = distinct !DILexicalBlock(scope: !1244, file: !187, line: 673, column: 15)
!1244 = distinct !DILexicalBlock(scope: !1213, file: !187, line: 672, column: 17)
!1245 = !DILocation(line: 248, column: 33, scope: !1178)
!1246 = !DILocation(line: 248, column: 48, scope: !1178)
!1247 = !DILocation(line: 249, column: 39, scope: !1178)
!1248 = !DILocation(line: 249, column: 51, scope: !1178)
!1249 = !DILocation(line: 250, column: 46, scope: !1178)
!1250 = !DILocation(line: 250, column: 65, scope: !1178)
!1251 = !DILocation(line: 251, column: 47, scope: !1178)
!1252 = !DILocation(line: 252, column: 39, scope: !1178)
!1253 = !DILocation(line: 253, column: 39, scope: !1178)
!1254 = !DILocation(line: 256, column: 10, scope: !1178)
!1255 = !DILocation(line: 257, column: 10, scope: !1178)
!1256 = !DILocation(line: 258, column: 15, scope: !1178)
!1257 = !DILocation(line: 259, column: 10, scope: !1178)
!1258 = !DILocation(line: 260, column: 8, scope: !1178)
!1259 = !DILocation(line: 261, column: 25, scope: !1178)
!1260 = !DILocation(line: 261, column: 36, scope: !1178)
!1261 = !DILocation(line: 262, column: 8, scope: !1178)
!1262 = !DILocation(line: 263, column: 8, scope: !1178)
!1263 = !DILocation(line: 264, column: 8, scope: !1178)
!1264 = !DILocation(line: 265, column: 8, scope: !1178)
!1265 = !DILocation(line: 265, column: 3, scope: !1178)
!1266 = !DILocation(line: 308, column: 3, scope: !1178)
!1267 = !DILocation(line: 315, column: 11, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !1178, file: !187, line: 309, column: 5)
!1269 = !DILocation(line: 315, column: 12, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1268, file: !187, line: 315, column: 11)
!1271 = !DILocation(line: 316, column: 9, scope: !1272)
!1272 = !DILexicalBlockFile(scope: !1273, file: !187, discriminator: 1)
!1273 = distinct !DILexicalBlock(scope: !1274, file: !187, line: 316, column: 9)
!1274 = distinct !DILexicalBlock(scope: !1270, file: !187, line: 316, column: 9)
!1275 = !DILocation(line: 316, column: 9, scope: !1276)
!1276 = !DILexicalBlockFile(scope: !1274, file: !187, discriminator: 1)
!1277 = !DILocation(line: 316, column: 9, scope: !1278)
!1278 = !DILexicalBlockFile(scope: !1273, file: !187, discriminator: 2)
!1279 = !DILocation(line: 354, column: 26, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !1281, file: !187, line: 332, column: 11)
!1281 = distinct !DILexicalBlock(scope: !1282, file: !187, line: 331, column: 13)
!1282 = distinct !DILexicalBlock(scope: !1268, file: !187, line: 330, column: 7)
!1283 = !DILocation(line: 355, column: 27, scope: !1280)
!1284 = !DILocation(line: 356, column: 11, scope: !1280)
!1285 = !DILocation(line: 357, column: 14, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1282, file: !187, line: 357, column: 13)
!1287 = !DILocation(line: 357, column: 13, scope: !1282)
!1288 = !DILocation(line: 358, column: 43, scope: !1289)
!1289 = !DILexicalBlockFile(scope: !1290, file: !187, discriminator: 1)
!1290 = distinct !DILexicalBlock(scope: !1291, file: !187, line: 358, column: 11)
!1291 = distinct !DILexicalBlock(scope: !1286, file: !187, line: 358, column: 11)
!1292 = !DILocation(line: 358, column: 11, scope: !1293)
!1293 = !DILexicalBlockFile(scope: !1291, file: !187, discriminator: 1)
!1294 = !DILocation(line: 359, column: 13, scope: !1295)
!1295 = !DILexicalBlockFile(scope: !1296, file: !187, discriminator: 1)
!1296 = distinct !DILexicalBlock(scope: !1297, file: !187, line: 359, column: 13)
!1297 = distinct !DILexicalBlock(scope: !1290, file: !187, line: 359, column: 13)
!1298 = !DILocation(line: 359, column: 13, scope: !1299)
!1299 = !DILexicalBlockFile(scope: !1297, file: !187, discriminator: 1)
!1300 = !DILocation(line: 359, column: 13, scope: !1301)
!1301 = !DILexicalBlockFile(scope: !1296, file: !187, discriminator: 2)
!1302 = !DILocation(line: 359, column: 13, scope: !1303)
!1303 = !DILexicalBlockFile(scope: !1297, file: !187, discriminator: 3)
!1304 = !DILocation(line: 358, column: 70, scope: !1305)
!1305 = !DILexicalBlockFile(scope: !1290, file: !187, discriminator: 2)
!1306 = distinct !{!1306, !1307, !1308}
!1307 = !DILocation(line: 358, column: 11, scope: !1291)
!1308 = !DILocation(line: 359, column: 13, scope: !1291)
!1309 = !DILocation(line: 362, column: 28, scope: !1282)
!1310 = !DILocation(line: 364, column: 7, scope: !1268)
!1311 = !DILocation(line: 367, column: 7, scope: !1268)
!1312 = !DILocation(line: 370, column: 7, scope: !1268)
!1313 = !DILocation(line: 373, column: 12, scope: !1314)
!1314 = distinct !DILexicalBlock(scope: !1268, file: !187, line: 373, column: 11)
!1315 = !DILocation(line: 373, column: 11, scope: !1268)
!1316 = !DILocation(line: 378, column: 12, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1268, file: !187, line: 378, column: 11)
!1318 = !DILocation(line: 378, column: 11, scope: !1268)
!1319 = !DILocation(line: 379, column: 9, scope: !1320)
!1320 = !DILexicalBlockFile(scope: !1321, file: !187, discriminator: 1)
!1321 = distinct !DILexicalBlock(scope: !1322, file: !187, line: 379, column: 9)
!1322 = distinct !DILexicalBlock(scope: !1317, file: !187, line: 379, column: 9)
!1323 = !DILocation(line: 379, column: 9, scope: !1324)
!1324 = !DILexicalBlockFile(scope: !1322, file: !187, discriminator: 1)
!1325 = !DILocation(line: 379, column: 9, scope: !1326)
!1326 = !DILexicalBlockFile(scope: !1321, file: !187, discriminator: 2)
!1327 = !DILocation(line: 386, column: 7, scope: !1268)
!1328 = !DILocation(line: 389, column: 7, scope: !1268)
!1329 = !DILocation(line: 255, column: 10, scope: !1178)
!1330 = !DILocation(line: 392, column: 8, scope: !1207)
!1331 = !DILocation(line: 392, column: 27, scope: !1332)
!1332 = !DILexicalBlockFile(scope: !1206, file: !187, discriminator: 1)
!1333 = !DILocation(line: 392, column: 19, scope: !1332)
!1334 = !DILocation(line: 392, column: 60, scope: !1335)
!1335 = !DILexicalBlockFile(scope: !1206, file: !187, discriminator: 3)
!1336 = !DILocation(line: 392, column: 3, scope: !1337)
!1337 = !DILexicalBlockFile(scope: !1207, file: !187, discriminator: 4)
!1338 = !DILocation(line: 392, column: 41, scope: !1339)
!1339 = !DILexicalBlockFile(scope: !1206, file: !187, discriminator: 2)
!1340 = !DILocation(line: 392, column: 48, scope: !1339)
!1341 = !DILocation(line: 396, column: 12, scope: !1205)
!1342 = !DILocation(line: 397, column: 12, scope: !1205)
!1343 = !DILocation(line: 398, column: 12, scope: !1205)
!1344 = !DILocation(line: 401, column: 11, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !1205, file: !187, line: 400, column: 11)
!1346 = !DILocation(line: 403, column: 17, scope: !1347)
!1347 = !DILexicalBlockFile(scope: !1345, file: !187, discriminator: 1)
!1348 = !DILocation(line: 404, column: 39, scope: !1345)
!1349 = !DILocation(line: 408, column: 32, scope: !1345)
!1350 = !DILocation(line: 404, column: 19, scope: !1351)
!1351 = !DILexicalBlockFile(scope: !1345, file: !187, discriminator: 2)
!1352 = !DILocation(line: 404, column: 15, scope: !1353)
!1353 = !DILexicalBlockFile(scope: !1345, file: !187, discriminator: 4)
!1354 = !DILocation(line: 409, column: 11, scope: !1345)
!1355 = !DILocation(line: 409, column: 26, scope: !1347)
!1356 = !DILocation(line: 409, column: 14, scope: !1347)
!1357 = !DILocation(line: 400, column: 11, scope: !1358)
!1358 = !DILexicalBlockFile(scope: !1205, file: !187, discriminator: 1)
!1359 = !DILocation(line: 416, column: 11, scope: !1205)
!1360 = !DILocation(line: 394, column: 21, scope: !1205)
!1361 = !DILocation(line: 417, column: 7, scope: !1205)
!1362 = !DILocation(line: 420, column: 15, scope: !1214)
!1363 = !DILocation(line: 422, column: 15, scope: !1364)
!1364 = !DILexicalBlockFile(scope: !1365, file: !187, discriminator: 1)
!1365 = distinct !DILexicalBlock(scope: !1366, file: !187, line: 422, column: 15)
!1366 = distinct !DILexicalBlock(scope: !1367, file: !187, line: 421, column: 13)
!1367 = distinct !DILexicalBlock(scope: !1214, file: !187, line: 420, column: 15)
!1368 = !DILocation(line: 422, column: 15, scope: !1369)
!1369 = !DILexicalBlockFile(scope: !1370, file: !187, discriminator: 4)
!1370 = distinct !DILexicalBlock(scope: !1365, file: !187, line: 422, column: 15)
!1371 = !DILocation(line: 422, column: 15, scope: !1372)
!1372 = !DILexicalBlockFile(scope: !1370, file: !187, discriminator: 3)
!1373 = !DILocation(line: 422, column: 15, scope: !1374)
!1374 = !DILexicalBlockFile(scope: !1375, file: !187, discriminator: 6)
!1375 = distinct !DILexicalBlock(scope: !1376, file: !187, line: 422, column: 15)
!1376 = distinct !DILexicalBlock(scope: !1377, file: !187, line: 422, column: 15)
!1377 = distinct !DILexicalBlock(scope: !1370, file: !187, line: 422, column: 15)
!1378 = !DILocation(line: 422, column: 15, scope: !1379)
!1379 = !DILexicalBlockFile(scope: !1376, file: !187, discriminator: 6)
!1380 = !DILocation(line: 422, column: 15, scope: !1381)
!1381 = !DILexicalBlockFile(scope: !1375, file: !187, discriminator: 7)
!1382 = !DILocation(line: 422, column: 15, scope: !1383)
!1383 = !DILexicalBlockFile(scope: !1376, file: !187, discriminator: 8)
!1384 = !DILocation(line: 422, column: 15, scope: !1385)
!1385 = !DILexicalBlockFile(scope: !1386, file: !187, discriminator: 11)
!1386 = distinct !DILexicalBlock(scope: !1387, file: !187, line: 422, column: 15)
!1387 = distinct !DILexicalBlock(scope: !1377, file: !187, line: 422, column: 15)
!1388 = !DILocation(line: 422, column: 15, scope: !1389)
!1389 = !DILexicalBlockFile(scope: !1387, file: !187, discriminator: 11)
!1390 = !DILocation(line: 422, column: 15, scope: !1391)
!1391 = !DILexicalBlockFile(scope: !1386, file: !187, discriminator: 12)
!1392 = !DILocation(line: 422, column: 15, scope: !1393)
!1393 = !DILexicalBlockFile(scope: !1387, file: !187, discriminator: 13)
!1394 = !DILocation(line: 422, column: 15, scope: !1395)
!1395 = !DILexicalBlockFile(scope: !1396, file: !187, discriminator: 16)
!1396 = distinct !DILexicalBlock(scope: !1397, file: !187, line: 422, column: 15)
!1397 = distinct !DILexicalBlock(scope: !1377, file: !187, line: 422, column: 15)
!1398 = !DILocation(line: 422, column: 15, scope: !1399)
!1399 = !DILexicalBlockFile(scope: !1397, file: !187, discriminator: 16)
!1400 = !DILocation(line: 422, column: 15, scope: !1401)
!1401 = !DILexicalBlockFile(scope: !1396, file: !187, discriminator: 17)
!1402 = !DILocation(line: 422, column: 15, scope: !1403)
!1403 = !DILexicalBlockFile(scope: !1397, file: !187, discriminator: 18)
!1404 = !DILocation(line: 422, column: 15, scope: !1405)
!1405 = !DILexicalBlockFile(scope: !1377, file: !187, discriminator: 20)
!1406 = !DILocation(line: 422, column: 15, scope: !1407)
!1407 = !DILexicalBlockFile(scope: !1408, file: !187, discriminator: 22)
!1408 = distinct !DILexicalBlock(scope: !1409, file: !187, line: 422, column: 15)
!1409 = distinct !DILexicalBlock(scope: !1365, file: !187, line: 422, column: 15)
!1410 = !DILocation(line: 422, column: 15, scope: !1411)
!1411 = !DILexicalBlockFile(scope: !1409, file: !187, discriminator: 22)
!1412 = !DILocation(line: 422, column: 15, scope: !1413)
!1413 = !DILexicalBlockFile(scope: !1408, file: !187, discriminator: 23)
!1414 = !DILocation(line: 422, column: 15, scope: !1415)
!1415 = !DILexicalBlockFile(scope: !1409, file: !187, discriminator: 24)
!1416 = !DILocation(line: 430, column: 19, scope: !1417)
!1417 = distinct !DILexicalBlock(scope: !1366, file: !187, line: 429, column: 19)
!1418 = !DILocation(line: 430, column: 24, scope: !1419)
!1419 = !DILexicalBlockFile(scope: !1417, file: !187, discriminator: 1)
!1420 = !DILocation(line: 430, column: 28, scope: !1419)
!1421 = !DILocation(line: 430, column: 38, scope: !1419)
!1422 = !DILocation(line: 430, column: 48, scope: !1423)
!1423 = !DILexicalBlockFile(scope: !1417, file: !187, discriminator: 2)
!1424 = !DILocation(line: 430, column: 59, scope: !1423)
!1425 = !DILocation(line: 432, column: 19, scope: !1426)
!1426 = !DILexicalBlockFile(scope: !1427, file: !187, discriminator: 1)
!1427 = distinct !DILexicalBlock(scope: !1428, file: !187, line: 432, column: 19)
!1428 = distinct !DILexicalBlock(scope: !1429, file: !187, line: 432, column: 19)
!1429 = distinct !DILexicalBlock(scope: !1417, file: !187, line: 431, column: 17)
!1430 = !DILocation(line: 432, column: 19, scope: !1431)
!1431 = !DILexicalBlockFile(scope: !1428, file: !187, discriminator: 1)
!1432 = !DILocation(line: 432, column: 19, scope: !1433)
!1433 = !DILexicalBlockFile(scope: !1427, file: !187, discriminator: 2)
!1434 = !DILocation(line: 432, column: 19, scope: !1435)
!1435 = !DILexicalBlockFile(scope: !1428, file: !187, discriminator: 3)
!1436 = !DILocation(line: 433, column: 19, scope: !1437)
!1437 = !DILexicalBlockFile(scope: !1438, file: !187, discriminator: 1)
!1438 = distinct !DILexicalBlock(scope: !1439, file: !187, line: 433, column: 19)
!1439 = distinct !DILexicalBlock(scope: !1429, file: !187, line: 433, column: 19)
!1440 = !DILocation(line: 433, column: 19, scope: !1441)
!1441 = !DILexicalBlockFile(scope: !1439, file: !187, discriminator: 1)
!1442 = !DILocation(line: 433, column: 19, scope: !1443)
!1443 = !DILexicalBlockFile(scope: !1438, file: !187, discriminator: 2)
!1444 = !DILocation(line: 433, column: 19, scope: !1445)
!1445 = !DILexicalBlockFile(scope: !1439, file: !187, discriminator: 3)
!1446 = !DILocation(line: 434, column: 17, scope: !1429)
!1447 = !DILocation(line: 441, column: 20, scope: !1367)
!1448 = !DILocation(line: 446, column: 11, scope: !1214)
!1449 = !DILocation(line: 449, column: 19, scope: !1450)
!1450 = distinct !DILexicalBlock(scope: !1214, file: !187, line: 447, column: 13)
!1451 = !DILocation(line: 455, column: 19, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1450, file: !187, line: 454, column: 19)
!1453 = !DILocation(line: 455, column: 24, scope: !1454)
!1454 = !DILexicalBlockFile(scope: !1452, file: !187, discriminator: 1)
!1455 = !DILocation(line: 455, column: 28, scope: !1454)
!1456 = !DILocation(line: 455, column: 38, scope: !1454)
!1457 = !DILocation(line: 455, column: 47, scope: !1458)
!1458 = !DILexicalBlockFile(scope: !1452, file: !187, discriminator: 2)
!1459 = !DILocation(line: 455, column: 41, scope: !1458)
!1460 = !DILocation(line: 455, column: 52, scope: !1458)
!1461 = !DILocation(line: 454, column: 19, scope: !1462)
!1462 = !DILexicalBlockFile(scope: !1450, file: !187, discriminator: 1)
!1463 = !DILocation(line: 456, column: 25, scope: !1452)
!1464 = !DILocation(line: 456, column: 17, scope: !1452)
!1465 = !DILocation(line: 463, column: 25, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !1452, file: !187, line: 457, column: 19)
!1467 = !DILocation(line: 467, column: 21, scope: !1468)
!1468 = !DILexicalBlockFile(scope: !1469, file: !187, discriminator: 1)
!1469 = distinct !DILexicalBlock(scope: !1470, file: !187, line: 467, column: 21)
!1470 = distinct !DILexicalBlock(scope: !1466, file: !187, line: 467, column: 21)
!1471 = !DILocation(line: 467, column: 21, scope: !1472)
!1472 = !DILexicalBlockFile(scope: !1470, file: !187, discriminator: 1)
!1473 = !DILocation(line: 467, column: 21, scope: !1474)
!1474 = !DILexicalBlockFile(scope: !1469, file: !187, discriminator: 2)
!1475 = !DILocation(line: 467, column: 21, scope: !1476)
!1476 = !DILexicalBlockFile(scope: !1470, file: !187, discriminator: 3)
!1477 = !DILocation(line: 468, column: 21, scope: !1478)
!1478 = !DILexicalBlockFile(scope: !1479, file: !187, discriminator: 1)
!1479 = distinct !DILexicalBlock(scope: !1480, file: !187, line: 468, column: 21)
!1480 = distinct !DILexicalBlock(scope: !1466, file: !187, line: 468, column: 21)
!1481 = !DILocation(line: 468, column: 21, scope: !1482)
!1482 = !DILexicalBlockFile(scope: !1480, file: !187, discriminator: 1)
!1483 = !DILocation(line: 468, column: 21, scope: !1484)
!1484 = !DILexicalBlockFile(scope: !1479, file: !187, discriminator: 2)
!1485 = !DILocation(line: 468, column: 21, scope: !1486)
!1486 = !DILexicalBlockFile(scope: !1480, file: !187, discriminator: 3)
!1487 = !DILocation(line: 469, column: 21, scope: !1488)
!1488 = !DILexicalBlockFile(scope: !1489, file: !187, discriminator: 1)
!1489 = distinct !DILexicalBlock(scope: !1490, file: !187, line: 469, column: 21)
!1490 = distinct !DILexicalBlock(scope: !1466, file: !187, line: 469, column: 21)
!1491 = !DILocation(line: 469, column: 21, scope: !1492)
!1492 = !DILexicalBlockFile(scope: !1490, file: !187, discriminator: 1)
!1493 = !DILocation(line: 469, column: 21, scope: !1494)
!1494 = !DILexicalBlockFile(scope: !1489, file: !187, discriminator: 2)
!1495 = !DILocation(line: 469, column: 21, scope: !1496)
!1496 = !DILexicalBlockFile(scope: !1490, file: !187, discriminator: 3)
!1497 = !DILocation(line: 470, column: 21, scope: !1498)
!1498 = !DILexicalBlockFile(scope: !1499, file: !187, discriminator: 1)
!1499 = distinct !DILexicalBlock(scope: !1500, file: !187, line: 470, column: 21)
!1500 = distinct !DILexicalBlock(scope: !1466, file: !187, line: 470, column: 21)
!1501 = !DILocation(line: 470, column: 21, scope: !1502)
!1502 = !DILexicalBlockFile(scope: !1500, file: !187, discriminator: 1)
!1503 = !DILocation(line: 470, column: 21, scope: !1504)
!1504 = !DILexicalBlockFile(scope: !1499, file: !187, discriminator: 2)
!1505 = !DILocation(line: 470, column: 21, scope: !1506)
!1506 = !DILexicalBlockFile(scope: !1500, file: !187, discriminator: 3)
!1507 = !DILocation(line: 471, column: 21, scope: !1466)
!1508 = !DILocation(line: 395, column: 21, scope: !1205)
!1509 = !DILocation(line: 484, column: 31, scope: !1214)
!1510 = !DILocation(line: 485, column: 31, scope: !1214)
!1511 = !DILocation(line: 487, column: 31, scope: !1214)
!1512 = !DILocation(line: 488, column: 31, scope: !1214)
!1513 = !DILocation(line: 489, column: 31, scope: !1214)
!1514 = !DILocation(line: 492, column: 15, scope: !1214)
!1515 = !DILocation(line: 494, column: 19, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1517, file: !187, line: 493, column: 13)
!1517 = distinct !DILexicalBlock(scope: !1214, file: !187, line: 492, column: 15)
!1518 = !DILocation(line: 501, column: 33, scope: !1519)
!1519 = distinct !DILexicalBlock(scope: !1214, file: !187, line: 501, column: 15)
!1520 = !DILocation(line: 506, column: 15, scope: !1521)
!1521 = distinct !DILexicalBlock(scope: !1214, file: !187, line: 505, column: 15)
!1522 = !DILocation(line: 510, column: 15, scope: !1214)
!1523 = !DILocation(line: 518, column: 26, scope: !1524)
!1524 = distinct !DILexicalBlock(scope: !1214, file: !187, line: 518, column: 15)
!1525 = !DILocation(line: 518, column: 15, scope: !1214)
!1526 = !DILocation(line: 518, column: 40, scope: !1527)
!1527 = !DILexicalBlockFile(scope: !1524, file: !187, discriminator: 1)
!1528 = !DILocation(line: 518, column: 47, scope: !1527)
!1529 = !DILocation(line: 522, column: 17, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1214, file: !187, line: 522, column: 15)
!1531 = !DILocation(line: 518, column: 18, scope: !1527)
!1532 = !DILocation(line: 518, column: 65, scope: !1533)
!1533 = !DILexicalBlockFile(scope: !1524, file: !187, discriminator: 2)
!1534 = !DILocation(line: 518, column: 15, scope: !1535)
!1535 = !DILexicalBlockFile(scope: !1214, file: !187, discriminator: 2)
!1536 = !DILocation(line: 522, column: 15, scope: !1214)
!1537 = !DILocation(line: 526, column: 11, scope: !1214)
!1538 = !DILocation(line: 541, column: 15, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1214, file: !187, line: 540, column: 15)
!1540 = !DILocation(line: 548, column: 15, scope: !1214)
!1541 = !DILocation(line: 550, column: 19, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1543, file: !187, line: 549, column: 13)
!1543 = distinct !DILexicalBlock(scope: !1214, file: !187, line: 548, column: 15)
!1544 = !DILocation(line: 553, column: 19, scope: !1545)
!1545 = distinct !DILexicalBlock(scope: !1542, file: !187, line: 553, column: 19)
!1546 = !DILocation(line: 553, column: 35, scope: !1547)
!1547 = !DILexicalBlockFile(scope: !1545, file: !187, discriminator: 1)
!1548 = !DILocation(line: 553, column: 30, scope: !1545)
!1549 = !DILocation(line: 562, column: 15, scope: !1550)
!1550 = !DILexicalBlockFile(scope: !1551, file: !187, discriminator: 1)
!1551 = distinct !DILexicalBlock(scope: !1552, file: !187, line: 562, column: 15)
!1552 = distinct !DILexicalBlock(scope: !1542, file: !187, line: 562, column: 15)
!1553 = !DILocation(line: 562, column: 15, scope: !1554)
!1554 = !DILexicalBlockFile(scope: !1552, file: !187, discriminator: 1)
!1555 = !DILocation(line: 562, column: 15, scope: !1556)
!1556 = !DILexicalBlockFile(scope: !1551, file: !187, discriminator: 2)
!1557 = !DILocation(line: 562, column: 15, scope: !1558)
!1558 = !DILexicalBlockFile(scope: !1552, file: !187, discriminator: 3)
!1559 = !DILocation(line: 563, column: 15, scope: !1560)
!1560 = !DILexicalBlockFile(scope: !1561, file: !187, discriminator: 1)
!1561 = distinct !DILexicalBlock(scope: !1562, file: !187, line: 563, column: 15)
!1562 = distinct !DILexicalBlock(scope: !1542, file: !187, line: 563, column: 15)
!1563 = !DILocation(line: 563, column: 15, scope: !1564)
!1564 = !DILexicalBlockFile(scope: !1562, file: !187, discriminator: 1)
!1565 = !DILocation(line: 563, column: 15, scope: !1566)
!1566 = !DILexicalBlockFile(scope: !1561, file: !187, discriminator: 2)
!1567 = !DILocation(line: 563, column: 15, scope: !1568)
!1568 = !DILexicalBlockFile(scope: !1562, file: !187, discriminator: 3)
!1569 = !DILocation(line: 564, column: 15, scope: !1570)
!1570 = !DILexicalBlockFile(scope: !1571, file: !187, discriminator: 1)
!1571 = distinct !DILexicalBlock(scope: !1572, file: !187, line: 564, column: 15)
!1572 = distinct !DILexicalBlock(scope: !1542, file: !187, line: 564, column: 15)
!1573 = !DILocation(line: 564, column: 15, scope: !1574)
!1574 = !DILexicalBlockFile(scope: !1572, file: !187, discriminator: 1)
!1575 = !DILocation(line: 564, column: 15, scope: !1576)
!1576 = !DILexicalBlockFile(scope: !1571, file: !187, discriminator: 2)
!1577 = !DILocation(line: 564, column: 15, scope: !1578)
!1578 = !DILexicalBlockFile(scope: !1572, file: !187, discriminator: 3)
!1579 = !DILocation(line: 566, column: 13, scope: !1542)
!1580 = !DILocation(line: 606, column: 17, scope: !1213)
!1581 = !DILocation(line: 602, column: 20, scope: !1213)
!1582 = !DILocation(line: 609, column: 29, scope: !1583)
!1583 = distinct !DILexicalBlock(scope: !1218, file: !187, line: 607, column: 15)
!1584 = !{!916, !916, i64 0}
!1585 = !DILocation(line: 609, column: 27, scope: !1583)
!1586 = !DILocation(line: 604, column: 18, scope: !1213)
!1587 = !DILocation(line: 610, column: 15, scope: !1583)
!1588 = !DILocation(line: 613, column: 17, scope: !1217)
!1589 = !DILocation(line: 614, column: 17, scope: !1217)
!1590 = !DILocation(line: 618, column: 29, scope: !1591)
!1591 = distinct !DILexicalBlock(scope: !1217, file: !187, line: 618, column: 21)
!1592 = !DILocation(line: 618, column: 21, scope: !1217)
!1593 = distinct !{!1593, !1594, !1595}
!1594 = !DILocation(line: 621, column: 17, scope: !1217)
!1595 = !DILocation(line: 667, column: 44, scope: !1217)
!1596 = !DILocation(line: 619, column: 29, scope: !1591)
!1597 = !DILocation(line: 619, column: 19, scope: !1591)
!1598 = !DILocation(line: 623, column: 21, scope: !1232)
!1599 = !DILocation(line: 624, column: 56, scope: !1232)
!1600 = !DILocation(line: 624, column: 50, scope: !1232)
!1601 = !DILocation(line: 625, column: 53, scope: !1232)
!1602 = !DILocation(line: 613, column: 27, scope: !1217)
!1603 = !DILocation(line: 623, column: 29, scope: !1232)
!1604 = !DILocation(line: 624, column: 36, scope: !1232)
!1605 = !DILocation(line: 624, column: 28, scope: !1232)
!1606 = !DILocation(line: 626, column: 25, scope: !1232)
!1607 = !DILocation(line: 636, column: 38, scope: !1608)
!1608 = !DILexicalBlockFile(scope: !1609, file: !187, discriminator: 1)
!1609 = distinct !DILexicalBlock(scope: !1239, file: !187, line: 634, column: 23)
!1610 = !DILocation(line: 636, column: 48, scope: !1608)
!1611 = !DILocation(line: 636, column: 51, scope: !1612)
!1612 = !DILexicalBlockFile(scope: !1609, file: !187, discriminator: 2)
!1613 = !DILocation(line: 636, column: 48, scope: !1612)
!1614 = !DILocation(line: 636, column: 25, scope: !1615)
!1615 = !DILexicalBlockFile(scope: !1609, file: !187, discriminator: 3)
!1616 = !DILocation(line: 637, column: 28, scope: !1609)
!1617 = !DILocation(line: 636, column: 34, scope: !1608)
!1618 = distinct !{!1618, !1619, !1616}
!1619 = !DILocation(line: 636, column: 25, scope: !1609)
!1620 = !DILocation(line: 650, column: 43, scope: !1621)
!1621 = !DILexicalBlockFile(scope: !1622, file: !187, discriminator: 1)
!1622 = distinct !DILexicalBlock(scope: !1623, file: !187, line: 650, column: 29)
!1623 = distinct !DILexicalBlock(scope: !1236, file: !187, line: 650, column: 29)
!1624 = !DILocation(line: 647, column: 29, scope: !1237)
!1625 = !DILocation(line: 649, column: 36, scope: !1236)
!1626 = !DILocation(line: 651, column: 49, scope: !1622)
!1627 = !DILocation(line: 651, column: 39, scope: !1622)
!1628 = !DILocation(line: 651, column: 31, scope: !1622)
!1629 = !DILocation(line: 650, column: 53, scope: !1630)
!1630 = !DILexicalBlockFile(scope: !1622, file: !187, discriminator: 2)
!1631 = !DILocation(line: 650, column: 29, scope: !1632)
!1632 = !DILexicalBlockFile(scope: !1623, file: !187, discriminator: 1)
!1633 = distinct !{!1633, !1634, !1635}
!1634 = !DILocation(line: 650, column: 29, scope: !1623)
!1635 = !DILocation(line: 659, column: 33, scope: !1623)
!1636 = !DILocation(line: 666, column: 19, scope: !1217)
!1637 = !DILocation(line: 662, column: 41, scope: !1638)
!1638 = distinct !DILexicalBlock(scope: !1238, file: !187, line: 662, column: 29)
!1639 = !DILocation(line: 662, column: 31, scope: !1638)
!1640 = !DILocation(line: 662, column: 29, scope: !1238)
!1641 = !DILocation(line: 664, column: 27, scope: !1238)
!1642 = !DILocation(line: 667, column: 26, scope: !1217)
!1643 = !DILocation(line: 667, column: 24, scope: !1217)
!1644 = !DILocation(line: 666, column: 19, scope: !1645)
!1645 = !DILexicalBlockFile(scope: !1232, file: !187, discriminator: 3)
!1646 = !DILocation(line: 668, column: 15, scope: !1218)
!1647 = !DILocation(line: 670, column: 40, scope: !1213)
!1648 = !DILocation(line: 672, column: 19, scope: !1244)
!1649 = !DILocation(line: 672, column: 45, scope: !1650)
!1650 = !DILexicalBlockFile(scope: !1244, file: !187, discriminator: 1)
!1651 = !DILocation(line: 672, column: 23, scope: !1244)
!1652 = !DILocation(line: 676, column: 33, scope: !1243)
!1653 = !DILocation(line: 676, column: 24, scope: !1243)
!1654 = !DILocation(line: 678, column: 17, scope: !1243)
!1655 = !DILocation(line: 680, column: 43, scope: !1656)
!1656 = distinct !DILexicalBlock(scope: !1657, file: !187, line: 680, column: 25)
!1657 = distinct !DILexicalBlock(scope: !1658, file: !187, line: 679, column: 19)
!1658 = distinct !DILexicalBlock(scope: !1659, file: !187, line: 678, column: 17)
!1659 = distinct !DILexicalBlock(scope: !1243, file: !187, line: 678, column: 17)
!1660 = !DILocation(line: 682, column: 25, scope: !1661)
!1661 = !DILexicalBlockFile(scope: !1662, file: !187, discriminator: 1)
!1662 = distinct !DILexicalBlock(scope: !1663, file: !187, line: 682, column: 25)
!1663 = distinct !DILexicalBlock(scope: !1656, file: !187, line: 681, column: 23)
!1664 = !DILocation(line: 682, column: 25, scope: !1665)
!1665 = !DILexicalBlockFile(scope: !1666, file: !187, discriminator: 4)
!1666 = distinct !DILexicalBlock(scope: !1662, file: !187, line: 682, column: 25)
!1667 = !DILocation(line: 682, column: 25, scope: !1668)
!1668 = !DILexicalBlockFile(scope: !1666, file: !187, discriminator: 3)
!1669 = !DILocation(line: 682, column: 25, scope: !1670)
!1670 = !DILexicalBlockFile(scope: !1671, file: !187, discriminator: 6)
!1671 = distinct !DILexicalBlock(scope: !1672, file: !187, line: 682, column: 25)
!1672 = distinct !DILexicalBlock(scope: !1673, file: !187, line: 682, column: 25)
!1673 = distinct !DILexicalBlock(scope: !1666, file: !187, line: 682, column: 25)
!1674 = !DILocation(line: 682, column: 25, scope: !1675)
!1675 = !DILexicalBlockFile(scope: !1672, file: !187, discriminator: 6)
!1676 = !DILocation(line: 682, column: 25, scope: !1677)
!1677 = !DILexicalBlockFile(scope: !1671, file: !187, discriminator: 7)
!1678 = !DILocation(line: 682, column: 25, scope: !1679)
!1679 = !DILexicalBlockFile(scope: !1672, file: !187, discriminator: 8)
!1680 = !DILocation(line: 682, column: 25, scope: !1681)
!1681 = !DILexicalBlockFile(scope: !1682, file: !187, discriminator: 11)
!1682 = distinct !DILexicalBlock(scope: !1683, file: !187, line: 682, column: 25)
!1683 = distinct !DILexicalBlock(scope: !1673, file: !187, line: 682, column: 25)
!1684 = !DILocation(line: 682, column: 25, scope: !1685)
!1685 = !DILexicalBlockFile(scope: !1683, file: !187, discriminator: 11)
!1686 = !DILocation(line: 682, column: 25, scope: !1687)
!1687 = !DILexicalBlockFile(scope: !1682, file: !187, discriminator: 12)
!1688 = !DILocation(line: 682, column: 25, scope: !1689)
!1689 = !DILexicalBlockFile(scope: !1683, file: !187, discriminator: 13)
!1690 = !DILocation(line: 682, column: 25, scope: !1691)
!1691 = !DILexicalBlockFile(scope: !1692, file: !187, discriminator: 16)
!1692 = distinct !DILexicalBlock(scope: !1693, file: !187, line: 682, column: 25)
!1693 = distinct !DILexicalBlock(scope: !1673, file: !187, line: 682, column: 25)
!1694 = !DILocation(line: 682, column: 25, scope: !1695)
!1695 = !DILexicalBlockFile(scope: !1693, file: !187, discriminator: 16)
!1696 = !DILocation(line: 682, column: 25, scope: !1697)
!1697 = !DILexicalBlockFile(scope: !1692, file: !187, discriminator: 17)
!1698 = !DILocation(line: 682, column: 25, scope: !1699)
!1699 = !DILexicalBlockFile(scope: !1693, file: !187, discriminator: 18)
!1700 = !DILocation(line: 682, column: 25, scope: !1701)
!1701 = !DILexicalBlockFile(scope: !1673, file: !187, discriminator: 20)
!1702 = !DILocation(line: 682, column: 25, scope: !1703)
!1703 = !DILexicalBlockFile(scope: !1704, file: !187, discriminator: 22)
!1704 = distinct !DILexicalBlock(scope: !1705, file: !187, line: 682, column: 25)
!1705 = distinct !DILexicalBlock(scope: !1662, file: !187, line: 682, column: 25)
!1706 = !DILocation(line: 682, column: 25, scope: !1707)
!1707 = !DILexicalBlockFile(scope: !1705, file: !187, discriminator: 22)
!1708 = !DILocation(line: 682, column: 25, scope: !1709)
!1709 = !DILexicalBlockFile(scope: !1704, file: !187, discriminator: 23)
!1710 = !DILocation(line: 682, column: 25, scope: !1711)
!1711 = !DILexicalBlockFile(scope: !1705, file: !187, discriminator: 24)
!1712 = !DILocation(line: 683, column: 25, scope: !1713)
!1713 = !DILexicalBlockFile(scope: !1714, file: !187, discriminator: 1)
!1714 = distinct !DILexicalBlock(scope: !1715, file: !187, line: 683, column: 25)
!1715 = distinct !DILexicalBlock(scope: !1663, file: !187, line: 683, column: 25)
!1716 = !DILocation(line: 683, column: 25, scope: !1717)
!1717 = !DILexicalBlockFile(scope: !1715, file: !187, discriminator: 1)
!1718 = !DILocation(line: 683, column: 25, scope: !1719)
!1719 = !DILexicalBlockFile(scope: !1714, file: !187, discriminator: 2)
!1720 = !DILocation(line: 683, column: 25, scope: !1721)
!1721 = !DILexicalBlockFile(scope: !1715, file: !187, discriminator: 3)
!1722 = !DILocation(line: 684, column: 25, scope: !1723)
!1723 = !DILexicalBlockFile(scope: !1724, file: !187, discriminator: 1)
!1724 = distinct !DILexicalBlock(scope: !1725, file: !187, line: 684, column: 25)
!1725 = distinct !DILexicalBlock(scope: !1663, file: !187, line: 684, column: 25)
!1726 = !DILocation(line: 684, column: 25, scope: !1727)
!1727 = !DILexicalBlockFile(scope: !1725, file: !187, discriminator: 1)
!1728 = !DILocation(line: 684, column: 25, scope: !1729)
!1729 = !DILexicalBlockFile(scope: !1724, file: !187, discriminator: 2)
!1730 = !DILocation(line: 684, column: 25, scope: !1731)
!1731 = !DILexicalBlockFile(scope: !1725, file: !187, discriminator: 3)
!1732 = !DILocation(line: 685, column: 38, scope: !1663)
!1733 = !DILocation(line: 685, column: 33, scope: !1663)
!1734 = !DILocation(line: 686, column: 23, scope: !1663)
!1735 = !DILocation(line: 687, column: 30, scope: !1736)
!1736 = distinct !DILexicalBlock(scope: !1656, file: !187, line: 687, column: 30)
!1737 = !DILocation(line: 687, column: 30, scope: !1656)
!1738 = !DILocation(line: 689, column: 25, scope: !1739)
!1739 = !DILexicalBlockFile(scope: !1740, file: !187, discriminator: 1)
!1740 = distinct !DILexicalBlock(scope: !1741, file: !187, line: 689, column: 25)
!1741 = distinct !DILexicalBlock(scope: !1742, file: !187, line: 689, column: 25)
!1742 = distinct !DILexicalBlock(scope: !1736, file: !187, line: 688, column: 23)
!1743 = !DILocation(line: 689, column: 25, scope: !1744)
!1744 = !DILexicalBlockFile(scope: !1741, file: !187, discriminator: 1)
!1745 = !DILocation(line: 689, column: 25, scope: !1746)
!1746 = !DILexicalBlockFile(scope: !1740, file: !187, discriminator: 2)
!1747 = !DILocation(line: 689, column: 25, scope: !1748)
!1748 = !DILexicalBlockFile(scope: !1741, file: !187, discriminator: 3)
!1749 = !DILocation(line: 691, column: 23, scope: !1742)
!1750 = !DILocation(line: 692, column: 35, scope: !1751)
!1751 = distinct !DILexicalBlock(scope: !1657, file: !187, line: 692, column: 25)
!1752 = !DILocation(line: 692, column: 30, scope: !1751)
!1753 = !DILocation(line: 692, column: 25, scope: !1657)
!1754 = !DILocation(line: 694, column: 21, scope: !1755)
!1755 = !DILexicalBlockFile(scope: !1756, file: !187, discriminator: 1)
!1756 = distinct !DILexicalBlock(scope: !1757, file: !187, line: 694, column: 21)
!1757 = distinct !DILexicalBlock(scope: !1657, file: !187, line: 694, column: 21)
!1758 = !DILocation(line: 694, column: 21, scope: !1759)
!1759 = !DILexicalBlockFile(scope: !1756, file: !187, discriminator: 2)
!1760 = !DILocation(line: 694, column: 21, scope: !1761)
!1761 = !DILexicalBlockFile(scope: !1762, file: !187, discriminator: 4)
!1762 = distinct !DILexicalBlock(scope: !1763, file: !187, line: 694, column: 21)
!1763 = distinct !DILexicalBlock(scope: !1764, file: !187, line: 694, column: 21)
!1764 = distinct !DILexicalBlock(scope: !1756, file: !187, line: 694, column: 21)
!1765 = !DILocation(line: 694, column: 21, scope: !1766)
!1766 = !DILexicalBlockFile(scope: !1763, file: !187, discriminator: 4)
!1767 = !DILocation(line: 694, column: 21, scope: !1768)
!1768 = !DILexicalBlockFile(scope: !1762, file: !187, discriminator: 5)
!1769 = !DILocation(line: 694, column: 21, scope: !1770)
!1770 = !DILexicalBlockFile(scope: !1763, file: !187, discriminator: 6)
!1771 = !DILocation(line: 694, column: 21, scope: !1772)
!1772 = !DILexicalBlockFile(scope: !1773, file: !187, discriminator: 9)
!1773 = distinct !DILexicalBlock(scope: !1774, file: !187, line: 694, column: 21)
!1774 = distinct !DILexicalBlock(scope: !1764, file: !187, line: 694, column: 21)
!1775 = !DILocation(line: 694, column: 21, scope: !1776)
!1776 = !DILexicalBlockFile(scope: !1774, file: !187, discriminator: 9)
!1777 = !DILocation(line: 694, column: 21, scope: !1778)
!1778 = !DILexicalBlockFile(scope: !1773, file: !187, discriminator: 10)
!1779 = !DILocation(line: 694, column: 21, scope: !1780)
!1780 = !DILexicalBlockFile(scope: !1774, file: !187, discriminator: 11)
!1781 = !DILocation(line: 694, column: 21, scope: !1782)
!1782 = !DILexicalBlockFile(scope: !1764, file: !187, discriminator: 13)
!1783 = !DILocation(line: 695, column: 21, scope: !1784)
!1784 = !DILexicalBlockFile(scope: !1785, file: !187, discriminator: 1)
!1785 = distinct !DILexicalBlock(scope: !1786, file: !187, line: 695, column: 21)
!1786 = distinct !DILexicalBlock(scope: !1657, file: !187, line: 695, column: 21)
!1787 = !DILocation(line: 695, column: 21, scope: !1788)
!1788 = !DILexicalBlockFile(scope: !1786, file: !187, discriminator: 1)
!1789 = !DILocation(line: 695, column: 21, scope: !1790)
!1790 = !DILexicalBlockFile(scope: !1785, file: !187, discriminator: 2)
!1791 = !DILocation(line: 695, column: 21, scope: !1792)
!1792 = !DILexicalBlockFile(scope: !1786, file: !187, discriminator: 3)
!1793 = !DILocation(line: 696, column: 25, scope: !1657)
!1794 = !DILocation(line: 678, column: 17, scope: !1795)
!1795 = !DILexicalBlockFile(scope: !1658, file: !187, discriminator: 1)
!1796 = distinct !{!1796, !1797, !1798}
!1797 = !DILocation(line: 678, column: 17, scope: !1659)
!1798 = !DILocation(line: 697, column: 19, scope: !1659)
!1799 = !DILocation(line: 704, column: 34, scope: !1800)
!1800 = distinct !DILexicalBlock(scope: !1205, file: !187, line: 704, column: 11)
!1801 = !DILocation(line: 706, column: 14, scope: !1800)
!1802 = !DILocation(line: 707, column: 14, scope: !1800)
!1803 = !DILocation(line: 707, column: 35, scope: !1804)
!1804 = !DILexicalBlockFile(scope: !1800, file: !187, discriminator: 1)
!1805 = !DILocation(line: 707, column: 17, scope: !1804)
!1806 = !DILocation(line: 707, column: 53, scope: !1804)
!1807 = !DILocation(line: 707, column: 47, scope: !1804)
!1808 = !DILocation(line: 707, column: 65, scope: !1804)
!1809 = !DILocation(line: 708, column: 15, scope: !1804)
!1810 = !DILocation(line: 708, column: 11, scope: !1800)
!1811 = !DILocation(line: 704, column: 11, scope: !1812)
!1812 = !DILexicalBlockFile(scope: !1205, file: !187, discriminator: 2)
!1813 = !DILocation(line: 712, column: 7, scope: !1814)
!1814 = !DILexicalBlockFile(scope: !1815, file: !187, discriminator: 1)
!1815 = distinct !DILexicalBlock(scope: !1205, file: !187, line: 712, column: 7)
!1816 = !DILocation(line: 712, column: 7, scope: !1817)
!1817 = !DILexicalBlockFile(scope: !1818, file: !187, discriminator: 4)
!1818 = distinct !DILexicalBlock(scope: !1815, file: !187, line: 712, column: 7)
!1819 = !DILocation(line: 712, column: 7, scope: !1820)
!1820 = !DILexicalBlockFile(scope: !1818, file: !187, discriminator: 3)
!1821 = !DILocation(line: 712, column: 7, scope: !1822)
!1822 = !DILexicalBlockFile(scope: !1823, file: !187, discriminator: 6)
!1823 = distinct !DILexicalBlock(scope: !1824, file: !187, line: 712, column: 7)
!1824 = distinct !DILexicalBlock(scope: !1825, file: !187, line: 712, column: 7)
!1825 = distinct !DILexicalBlock(scope: !1818, file: !187, line: 712, column: 7)
!1826 = !DILocation(line: 712, column: 7, scope: !1827)
!1827 = !DILexicalBlockFile(scope: !1824, file: !187, discriminator: 6)
!1828 = !DILocation(line: 712, column: 7, scope: !1829)
!1829 = !DILexicalBlockFile(scope: !1823, file: !187, discriminator: 7)
!1830 = !DILocation(line: 712, column: 7, scope: !1831)
!1831 = !DILexicalBlockFile(scope: !1824, file: !187, discriminator: 8)
!1832 = !DILocation(line: 712, column: 7, scope: !1833)
!1833 = !DILexicalBlockFile(scope: !1834, file: !187, discriminator: 11)
!1834 = distinct !DILexicalBlock(scope: !1835, file: !187, line: 712, column: 7)
!1835 = distinct !DILexicalBlock(scope: !1825, file: !187, line: 712, column: 7)
!1836 = !DILocation(line: 712, column: 7, scope: !1837)
!1837 = !DILexicalBlockFile(scope: !1835, file: !187, discriminator: 11)
!1838 = !DILocation(line: 712, column: 7, scope: !1839)
!1839 = !DILexicalBlockFile(scope: !1834, file: !187, discriminator: 12)
!1840 = !DILocation(line: 712, column: 7, scope: !1841)
!1841 = !DILexicalBlockFile(scope: !1835, file: !187, discriminator: 13)
!1842 = !DILocation(line: 712, column: 7, scope: !1843)
!1843 = !DILexicalBlockFile(scope: !1844, file: !187, discriminator: 16)
!1844 = distinct !DILexicalBlock(scope: !1845, file: !187, line: 712, column: 7)
!1845 = distinct !DILexicalBlock(scope: !1825, file: !187, line: 712, column: 7)
!1846 = !DILocation(line: 712, column: 7, scope: !1847)
!1847 = !DILexicalBlockFile(scope: !1845, file: !187, discriminator: 16)
!1848 = !DILocation(line: 712, column: 7, scope: !1849)
!1849 = !DILexicalBlockFile(scope: !1844, file: !187, discriminator: 17)
!1850 = !DILocation(line: 712, column: 7, scope: !1851)
!1851 = !DILexicalBlockFile(scope: !1845, file: !187, discriminator: 18)
!1852 = !DILocation(line: 712, column: 7, scope: !1853)
!1853 = !DILexicalBlockFile(scope: !1825, file: !187, discriminator: 20)
!1854 = !DILocation(line: 712, column: 7, scope: !1855)
!1855 = !DILexicalBlockFile(scope: !1856, file: !187, discriminator: 22)
!1856 = distinct !DILexicalBlock(scope: !1857, file: !187, line: 712, column: 7)
!1857 = distinct !DILexicalBlock(scope: !1815, file: !187, line: 712, column: 7)
!1858 = !DILocation(line: 712, column: 7, scope: !1859)
!1859 = !DILexicalBlockFile(scope: !1857, file: !187, discriminator: 22)
!1860 = !DILocation(line: 712, column: 7, scope: !1861)
!1861 = !DILexicalBlockFile(scope: !1856, file: !187, discriminator: 23)
!1862 = !DILocation(line: 712, column: 7, scope: !1863)
!1863 = !DILexicalBlockFile(scope: !1857, file: !187, discriminator: 24)
!1864 = !DILocation(line: 715, column: 7, scope: !1865)
!1865 = !DILexicalBlockFile(scope: !1866, file: !187, discriminator: 1)
!1866 = distinct !DILexicalBlock(scope: !1867, file: !187, line: 715, column: 7)
!1867 = distinct !DILexicalBlock(scope: !1205, file: !187, line: 715, column: 7)
!1868 = !DILocation(line: 715, column: 7, scope: !1869)
!1869 = !DILexicalBlockFile(scope: !1866, file: !187, discriminator: 2)
!1870 = !DILocation(line: 715, column: 7, scope: !1871)
!1871 = !DILexicalBlockFile(scope: !1872, file: !187, discriminator: 4)
!1872 = distinct !DILexicalBlock(scope: !1873, file: !187, line: 715, column: 7)
!1873 = distinct !DILexicalBlock(scope: !1874, file: !187, line: 715, column: 7)
!1874 = distinct !DILexicalBlock(scope: !1866, file: !187, line: 715, column: 7)
!1875 = !DILocation(line: 715, column: 7, scope: !1876)
!1876 = !DILexicalBlockFile(scope: !1873, file: !187, discriminator: 4)
!1877 = !DILocation(line: 715, column: 7, scope: !1878)
!1878 = !DILexicalBlockFile(scope: !1872, file: !187, discriminator: 5)
!1879 = !DILocation(line: 715, column: 7, scope: !1880)
!1880 = !DILexicalBlockFile(scope: !1873, file: !187, discriminator: 6)
!1881 = !DILocation(line: 715, column: 7, scope: !1882)
!1882 = !DILexicalBlockFile(scope: !1883, file: !187, discriminator: 9)
!1883 = distinct !DILexicalBlock(scope: !1884, file: !187, line: 715, column: 7)
!1884 = distinct !DILexicalBlock(scope: !1874, file: !187, line: 715, column: 7)
!1885 = !DILocation(line: 715, column: 7, scope: !1886)
!1886 = !DILexicalBlockFile(scope: !1884, file: !187, discriminator: 9)
!1887 = !DILocation(line: 715, column: 7, scope: !1888)
!1888 = !DILexicalBlockFile(scope: !1883, file: !187, discriminator: 10)
!1889 = !DILocation(line: 715, column: 7, scope: !1890)
!1890 = !DILexicalBlockFile(scope: !1884, file: !187, discriminator: 11)
!1891 = !DILocation(line: 715, column: 7, scope: !1892)
!1892 = !DILexicalBlockFile(scope: !1874, file: !187, discriminator: 13)
!1893 = !DILocation(line: 716, column: 7, scope: !1894)
!1894 = !DILexicalBlockFile(scope: !1895, file: !187, discriminator: 1)
!1895 = distinct !DILexicalBlock(scope: !1896, file: !187, line: 716, column: 7)
!1896 = distinct !DILexicalBlock(scope: !1205, file: !187, line: 716, column: 7)
!1897 = !DILocation(line: 716, column: 7, scope: !1898)
!1898 = !DILexicalBlockFile(scope: !1896, file: !187, discriminator: 1)
!1899 = !DILocation(line: 716, column: 7, scope: !1900)
!1900 = !DILexicalBlockFile(scope: !1895, file: !187, discriminator: 2)
!1901 = !DILocation(line: 716, column: 7, scope: !1902)
!1902 = !DILexicalBlockFile(scope: !1896, file: !187, discriminator: 3)
!1903 = !DILocation(line: 718, column: 13, scope: !1904)
!1904 = distinct !DILexicalBlock(scope: !1205, file: !187, line: 718, column: 11)
!1905 = !DILocation(line: 718, column: 11, scope: !1205)
!1906 = !DILocation(line: 720, column: 5, scope: !1206)
!1907 = !DILocation(line: 392, column: 75, scope: !1908)
!1908 = !DILexicalBlockFile(scope: !1206, file: !187, discriminator: 5)
!1909 = !DILocation(line: 392, column: 3, scope: !1908)
!1910 = distinct !{!1910, !1911, !1912}
!1911 = !DILocation(line: 392, column: 3, scope: !1207)
!1912 = !DILocation(line: 720, column: 5, scope: !1207)
!1913 = !DILocation(line: 722, column: 11, scope: !1914)
!1914 = distinct !DILexicalBlock(scope: !1178, file: !187, line: 722, column: 7)
!1915 = !DILocation(line: 722, column: 16, scope: !1914)
!1916 = !DILocation(line: 730, column: 51, scope: !1917)
!1917 = distinct !DILexicalBlock(scope: !1178, file: !187, line: 730, column: 7)
!1918 = !DILocation(line: 731, column: 10, scope: !1919)
!1919 = !DILexicalBlockFile(scope: !1917, file: !187, discriminator: 1)
!1920 = !DILocation(line: 733, column: 11, scope: !1921)
!1921 = distinct !DILexicalBlock(scope: !1922, file: !187, line: 733, column: 11)
!1922 = distinct !DILexicalBlock(scope: !1917, file: !187, line: 732, column: 5)
!1923 = !DILocation(line: 733, column: 11, scope: !1922)
!1924 = !DILocation(line: 734, column: 16, scope: !1921)
!1925 = !DILocation(line: 734, column: 9, scope: !1921)
!1926 = !DILocation(line: 738, column: 18, scope: !1927)
!1927 = distinct !DILexicalBlock(scope: !1921, file: !187, line: 738, column: 16)
!1928 = !DILocation(line: 738, column: 32, scope: !1929)
!1929 = !DILexicalBlockFile(scope: !1927, file: !187, discriminator: 1)
!1930 = !DILocation(line: 738, column: 29, scope: !1927)
!1931 = !DILocation(line: 747, column: 7, scope: !1932)
!1932 = distinct !DILexicalBlock(scope: !1178, file: !187, line: 747, column: 7)
!1933 = !DILocation(line: 747, column: 20, scope: !1932)
!1934 = !DILocation(line: 748, column: 12, scope: !1935)
!1935 = !DILexicalBlockFile(scope: !1936, file: !187, discriminator: 1)
!1936 = distinct !DILexicalBlock(scope: !1937, file: !187, line: 748, column: 5)
!1937 = distinct !DILexicalBlock(scope: !1932, file: !187, line: 748, column: 5)
!1938 = !DILocation(line: 748, column: 5, scope: !1939)
!1939 = !DILexicalBlockFile(scope: !1937, file: !187, discriminator: 1)
!1940 = !DILocation(line: 749, column: 7, scope: !1941)
!1941 = !DILexicalBlockFile(scope: !1942, file: !187, discriminator: 1)
!1942 = distinct !DILexicalBlock(scope: !1943, file: !187, line: 749, column: 7)
!1943 = distinct !DILexicalBlock(scope: !1936, file: !187, line: 749, column: 7)
!1944 = !DILocation(line: 749, column: 7, scope: !1945)
!1945 = !DILexicalBlockFile(scope: !1943, file: !187, discriminator: 1)
!1946 = !DILocation(line: 749, column: 7, scope: !1947)
!1947 = !DILexicalBlockFile(scope: !1942, file: !187, discriminator: 2)
!1948 = !DILocation(line: 749, column: 7, scope: !1949)
!1949 = !DILexicalBlockFile(scope: !1943, file: !187, discriminator: 3)
!1950 = !DILocation(line: 748, column: 39, scope: !1951)
!1951 = !DILexicalBlockFile(scope: !1936, file: !187, discriminator: 2)
!1952 = distinct !{!1952, !1953, !1954}
!1953 = !DILocation(line: 748, column: 5, scope: !1937)
!1954 = !DILocation(line: 749, column: 7, scope: !1937)
!1955 = !DILocation(line: 751, column: 11, scope: !1956)
!1956 = distinct !DILexicalBlock(scope: !1178, file: !187, line: 751, column: 7)
!1957 = !DILocation(line: 751, column: 7, scope: !1178)
!1958 = !DILocation(line: 752, column: 5, scope: !1956)
!1959 = !DILocation(line: 752, column: 17, scope: !1956)
!1960 = !DILocation(line: 758, column: 21, scope: !1961)
!1961 = distinct !DILexicalBlock(scope: !1178, file: !187, line: 758, column: 7)
!1962 = !DILocation(line: 758, column: 54, scope: !1963)
!1963 = !DILexicalBlockFile(scope: !1961, file: !187, discriminator: 1)
!1964 = !DILocation(line: 758, column: 51, scope: !1961)
!1965 = !DILocation(line: 762, column: 42, scope: !1178)
!1966 = !DILocation(line: 760, column: 10, scope: !1178)
!1967 = !DILocation(line: 760, column: 3, scope: !1178)
!1968 = !DILocation(line: 764, column: 1, scope: !1178)
!1969 = distinct !DISubprogram(name: "gettext_quote", scope: !187, file: !187, line: 199, type: !1970, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !145, variables: !1972)
!1970 = !DISubroutineType(types: !1971)
!1971 = !{!34, !34, !148}
!1972 = !{!1973, !1974, !1975, !1976}
!1973 = !DILocalVariable(name: "msgid", arg: 1, scope: !1969, file: !187, line: 199, type: !34)
!1974 = !DILocalVariable(name: "s", arg: 2, scope: !1969, file: !187, line: 199, type: !148)
!1975 = !DILocalVariable(name: "translation", scope: !1969, file: !187, line: 201, type: !34)
!1976 = !DILocalVariable(name: "locale_code", scope: !1969, file: !187, line: 202, type: !34)
!1977 = !DILocation(line: 199, column: 28, scope: !1969)
!1978 = !DILocation(line: 199, column: 54, scope: !1969)
!1979 = !DILocation(line: 201, column: 29, scope: !1969)
!1980 = !DILocation(line: 201, column: 15, scope: !1969)
!1981 = !DILocation(line: 204, column: 19, scope: !1982)
!1982 = distinct !DILexicalBlock(scope: !1969, file: !187, line: 204, column: 7)
!1983 = !DILocation(line: 204, column: 7, scope: !1969)
!1984 = !DILocation(line: 225, column: 17, scope: !1969)
!1985 = !DILocation(line: 202, column: 15, scope: !1969)
!1986 = !DILocalVariable(name: "s2", arg: 2, scope: !1987, file: !1988, line: 160, type: !34)
!1987 = distinct !DISubprogram(name: "strcaseeq0", scope: !1988, file: !1988, line: 160, type: !1989, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !145, variables: !1991)
!1988 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1989 = !DISubroutineType(types: !1990)
!1990 = !{!24, !34, !34, !27, !27, !27, !27, !27, !27, !27, !27, !27}
!1991 = !{!1992, !1986, !1993, !1994, !1995, !1996, !1997, !1998, !1999, !2000, !2001}
!1992 = !DILocalVariable(name: "s1", arg: 1, scope: !1987, file: !1988, line: 160, type: !34)
!1993 = !DILocalVariable(name: "s20", arg: 3, scope: !1987, file: !1988, line: 160, type: !27)
!1994 = !DILocalVariable(name: "s21", arg: 4, scope: !1987, file: !1988, line: 160, type: !27)
!1995 = !DILocalVariable(name: "s22", arg: 5, scope: !1987, file: !1988, line: 160, type: !27)
!1996 = !DILocalVariable(name: "s23", arg: 6, scope: !1987, file: !1988, line: 160, type: !27)
!1997 = !DILocalVariable(name: "s24", arg: 7, scope: !1987, file: !1988, line: 160, type: !27)
!1998 = !DILocalVariable(name: "s25", arg: 8, scope: !1987, file: !1988, line: 160, type: !27)
!1999 = !DILocalVariable(name: "s26", arg: 9, scope: !1987, file: !1988, line: 160, type: !27)
!2000 = !DILocalVariable(name: "s27", arg: 10, scope: !1987, file: !1988, line: 160, type: !27)
!2001 = !DILocalVariable(name: "s28", arg: 11, scope: !1987, file: !1988, line: 160, type: !27)
!2002 = !DILocation(line: 160, column: 41, scope: !1987, inlinedAt: !2003)
!2003 = distinct !DILocation(line: 226, column: 7, scope: !2004)
!2004 = distinct !DILexicalBlock(scope: !1969, file: !187, line: 226, column: 7)
!2005 = !DILocation(line: 160, column: 120, scope: !1987, inlinedAt: !2003)
!2006 = !DILocation(line: 160, column: 130, scope: !1987, inlinedAt: !2003)
!2007 = !DILocation(line: 162, column: 7, scope: !2008, inlinedAt: !2003)
!2008 = !DILexicalBlockFile(scope: !2009, file: !1988, discriminator: 1)
!2009 = distinct !DILexicalBlock(scope: !1987, file: !1988, line: 162, column: 7)
!2010 = !DILocalVariable(name: "s2", arg: 2, scope: !2011, file: !1988, line: 146, type: !34)
!2011 = distinct !DISubprogram(name: "strcaseeq1", scope: !1988, file: !1988, line: 146, type: !2012, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !145, variables: !2014)
!2012 = !DISubroutineType(types: !2013)
!2013 = !{!24, !34, !34, !27, !27, !27, !27, !27, !27, !27, !27}
!2014 = !{!2015, !2010, !2016, !2017, !2018, !2019, !2020, !2021, !2022, !2023}
!2015 = !DILocalVariable(name: "s1", arg: 1, scope: !2011, file: !1988, line: 146, type: !34)
!2016 = !DILocalVariable(name: "s21", arg: 3, scope: !2011, file: !1988, line: 146, type: !27)
!2017 = !DILocalVariable(name: "s22", arg: 4, scope: !2011, file: !1988, line: 146, type: !27)
!2018 = !DILocalVariable(name: "s23", arg: 5, scope: !2011, file: !1988, line: 146, type: !27)
!2019 = !DILocalVariable(name: "s24", arg: 6, scope: !2011, file: !1988, line: 146, type: !27)
!2020 = !DILocalVariable(name: "s25", arg: 7, scope: !2011, file: !1988, line: 146, type: !27)
!2021 = !DILocalVariable(name: "s26", arg: 8, scope: !2011, file: !1988, line: 146, type: !27)
!2022 = !DILocalVariable(name: "s27", arg: 9, scope: !2011, file: !1988, line: 146, type: !27)
!2023 = !DILocalVariable(name: "s28", arg: 10, scope: !2011, file: !1988, line: 146, type: !27)
!2024 = !DILocation(line: 146, column: 41, scope: !2011, inlinedAt: !2025)
!2025 = distinct !DILocation(line: 167, column: 16, scope: !2026, inlinedAt: !2003)
!2026 = distinct !DILexicalBlock(scope: !2027, file: !1988, line: 164, column: 11)
!2027 = distinct !DILexicalBlock(scope: !2009, file: !1988, line: 163, column: 5)
!2028 = !DILocation(line: 146, column: 110, scope: !2011, inlinedAt: !2025)
!2029 = !DILocation(line: 146, column: 120, scope: !2011, inlinedAt: !2025)
!2030 = !DILocation(line: 148, column: 7, scope: !2031, inlinedAt: !2025)
!2031 = !DILexicalBlockFile(scope: !2032, file: !1988, discriminator: 1)
!2032 = distinct !DILexicalBlock(scope: !2011, file: !1988, line: 148, column: 7)
!2033 = !DILocalVariable(name: "s2", arg: 2, scope: !2034, file: !1988, line: 132, type: !34)
!2034 = distinct !DISubprogram(name: "strcaseeq2", scope: !1988, file: !1988, line: 132, type: !2035, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !145, variables: !2037)
!2035 = !DISubroutineType(types: !2036)
!2036 = !{!24, !34, !34, !27, !27, !27, !27, !27, !27, !27}
!2037 = !{!2038, !2033, !2039, !2040, !2041, !2042, !2043, !2044, !2045}
!2038 = !DILocalVariable(name: "s1", arg: 1, scope: !2034, file: !1988, line: 132, type: !34)
!2039 = !DILocalVariable(name: "s22", arg: 3, scope: !2034, file: !1988, line: 132, type: !27)
!2040 = !DILocalVariable(name: "s23", arg: 4, scope: !2034, file: !1988, line: 132, type: !27)
!2041 = !DILocalVariable(name: "s24", arg: 5, scope: !2034, file: !1988, line: 132, type: !27)
!2042 = !DILocalVariable(name: "s25", arg: 6, scope: !2034, file: !1988, line: 132, type: !27)
!2043 = !DILocalVariable(name: "s26", arg: 7, scope: !2034, file: !1988, line: 132, type: !27)
!2044 = !DILocalVariable(name: "s27", arg: 8, scope: !2034, file: !1988, line: 132, type: !27)
!2045 = !DILocalVariable(name: "s28", arg: 9, scope: !2034, file: !1988, line: 132, type: !27)
!2046 = !DILocation(line: 132, column: 41, scope: !2034, inlinedAt: !2047)
!2047 = distinct !DILocation(line: 153, column: 16, scope: !2048, inlinedAt: !2025)
!2048 = distinct !DILexicalBlock(scope: !2049, file: !1988, line: 150, column: 11)
!2049 = distinct !DILexicalBlock(scope: !2032, file: !1988, line: 149, column: 5)
!2050 = !DILocation(line: 132, column: 100, scope: !2034, inlinedAt: !2047)
!2051 = !DILocation(line: 132, column: 110, scope: !2034, inlinedAt: !2047)
!2052 = !DILocation(line: 134, column: 7, scope: !2053, inlinedAt: !2047)
!2053 = !DILexicalBlockFile(scope: !2054, file: !1988, discriminator: 1)
!2054 = distinct !DILexicalBlock(scope: !2034, file: !1988, line: 134, column: 7)
!2055 = !DILocalVariable(name: "s2", arg: 2, scope: !2056, file: !1988, line: 118, type: !34)
!2056 = distinct !DISubprogram(name: "strcaseeq3", scope: !1988, file: !1988, line: 118, type: !2057, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !145, variables: !2059)
!2057 = !DISubroutineType(types: !2058)
!2058 = !{!24, !34, !34, !27, !27, !27, !27, !27, !27}
!2059 = !{!2060, !2055, !2061, !2062, !2063, !2064, !2065, !2066}
!2060 = !DILocalVariable(name: "s1", arg: 1, scope: !2056, file: !1988, line: 118, type: !34)
!2061 = !DILocalVariable(name: "s23", arg: 3, scope: !2056, file: !1988, line: 118, type: !27)
!2062 = !DILocalVariable(name: "s24", arg: 4, scope: !2056, file: !1988, line: 118, type: !27)
!2063 = !DILocalVariable(name: "s25", arg: 5, scope: !2056, file: !1988, line: 118, type: !27)
!2064 = !DILocalVariable(name: "s26", arg: 6, scope: !2056, file: !1988, line: 118, type: !27)
!2065 = !DILocalVariable(name: "s27", arg: 7, scope: !2056, file: !1988, line: 118, type: !27)
!2066 = !DILocalVariable(name: "s28", arg: 8, scope: !2056, file: !1988, line: 118, type: !27)
!2067 = !DILocation(line: 118, column: 41, scope: !2056, inlinedAt: !2068)
!2068 = distinct !DILocation(line: 139, column: 16, scope: !2069, inlinedAt: !2047)
!2069 = distinct !DILexicalBlock(scope: !2070, file: !1988, line: 136, column: 11)
!2070 = distinct !DILexicalBlock(scope: !2054, file: !1988, line: 135, column: 5)
!2071 = !DILocation(line: 118, column: 90, scope: !2056, inlinedAt: !2068)
!2072 = !DILocation(line: 118, column: 100, scope: !2056, inlinedAt: !2068)
!2073 = !DILocation(line: 120, column: 7, scope: !2074, inlinedAt: !2068)
!2074 = !DILexicalBlockFile(scope: !2075, file: !1988, discriminator: 2)
!2075 = distinct !DILexicalBlock(scope: !2056, file: !1988, line: 120, column: 7)
!2076 = !DILocation(line: 120, column: 7, scope: !2077, inlinedAt: !2068)
!2077 = !DILexicalBlockFile(scope: !2056, file: !1988, discriminator: 2)
!2078 = !DILocalVariable(name: "s2", arg: 2, scope: !2079, file: !1988, line: 104, type: !34)
!2079 = distinct !DISubprogram(name: "strcaseeq4", scope: !1988, file: !1988, line: 104, type: !2080, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !145, variables: !2082)
!2080 = !DISubroutineType(types: !2081)
!2081 = !{!24, !34, !34, !27, !27, !27, !27, !27}
!2082 = !{!2083, !2078, !2084, !2085, !2086, !2087, !2088}
!2083 = !DILocalVariable(name: "s1", arg: 1, scope: !2079, file: !1988, line: 104, type: !34)
!2084 = !DILocalVariable(name: "s24", arg: 3, scope: !2079, file: !1988, line: 104, type: !27)
!2085 = !DILocalVariable(name: "s25", arg: 4, scope: !2079, file: !1988, line: 104, type: !27)
!2086 = !DILocalVariable(name: "s26", arg: 5, scope: !2079, file: !1988, line: 104, type: !27)
!2087 = !DILocalVariable(name: "s27", arg: 6, scope: !2079, file: !1988, line: 104, type: !27)
!2088 = !DILocalVariable(name: "s28", arg: 7, scope: !2079, file: !1988, line: 104, type: !27)
!2089 = !DILocation(line: 104, column: 41, scope: !2079, inlinedAt: !2090)
!2090 = distinct !DILocation(line: 125, column: 16, scope: !2091, inlinedAt: !2068)
!2091 = distinct !DILexicalBlock(scope: !2092, file: !1988, line: 122, column: 11)
!2092 = distinct !DILexicalBlock(scope: !2075, file: !1988, line: 121, column: 5)
!2093 = !DILocation(line: 104, column: 80, scope: !2079, inlinedAt: !2090)
!2094 = !DILocation(line: 104, column: 90, scope: !2079, inlinedAt: !2090)
!2095 = !DILocation(line: 106, column: 7, scope: !2096, inlinedAt: !2090)
!2096 = !DILexicalBlockFile(scope: !2097, file: !1988, discriminator: 2)
!2097 = distinct !DILexicalBlock(scope: !2079, file: !1988, line: 106, column: 7)
!2098 = !DILocation(line: 106, column: 7, scope: !2099, inlinedAt: !2090)
!2099 = !DILexicalBlockFile(scope: !2079, file: !1988, discriminator: 2)
!2100 = !DILocalVariable(name: "s2", arg: 2, scope: !2101, file: !1988, line: 90, type: !34)
!2101 = distinct !DISubprogram(name: "strcaseeq5", scope: !1988, file: !1988, line: 90, type: !2102, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !145, variables: !2104)
!2102 = !DISubroutineType(types: !2103)
!2103 = !{!24, !34, !34, !27, !27, !27, !27}
!2104 = !{!2105, !2100, !2106, !2107, !2108, !2109}
!2105 = !DILocalVariable(name: "s1", arg: 1, scope: !2101, file: !1988, line: 90, type: !34)
!2106 = !DILocalVariable(name: "s25", arg: 3, scope: !2101, file: !1988, line: 90, type: !27)
!2107 = !DILocalVariable(name: "s26", arg: 4, scope: !2101, file: !1988, line: 90, type: !27)
!2108 = !DILocalVariable(name: "s27", arg: 5, scope: !2101, file: !1988, line: 90, type: !27)
!2109 = !DILocalVariable(name: "s28", arg: 6, scope: !2101, file: !1988, line: 90, type: !27)
!2110 = !DILocation(line: 90, column: 41, scope: !2101, inlinedAt: !2111)
!2111 = distinct !DILocation(line: 111, column: 16, scope: !2112, inlinedAt: !2090)
!2112 = distinct !DILexicalBlock(scope: !2113, file: !1988, line: 108, column: 11)
!2113 = distinct !DILexicalBlock(scope: !2097, file: !1988, line: 107, column: 5)
!2114 = !DILocation(line: 90, column: 70, scope: !2101, inlinedAt: !2111)
!2115 = !DILocation(line: 90, column: 80, scope: !2101, inlinedAt: !2111)
!2116 = !DILocation(line: 92, column: 7, scope: !2117, inlinedAt: !2111)
!2117 = !DILexicalBlockFile(scope: !2118, file: !1988, discriminator: 2)
!2118 = distinct !DILexicalBlock(scope: !2101, file: !1988, line: 92, column: 7)
!2119 = !DILocation(line: 92, column: 7, scope: !2120, inlinedAt: !2111)
!2120 = !DILexicalBlockFile(scope: !2101, file: !1988, discriminator: 2)
!2121 = !DILocation(line: 227, column: 12, scope: !2004)
!2122 = !DILocation(line: 227, column: 21, scope: !2004)
!2123 = !DILocation(line: 227, column: 5, scope: !2004)
!2124 = !DILocation(line: 146, column: 41, scope: !2011, inlinedAt: !2125)
!2125 = distinct !DILocation(line: 167, column: 16, scope: !2026, inlinedAt: !2126)
!2126 = distinct !DILocation(line: 228, column: 7, scope: !2127)
!2127 = distinct !DILexicalBlock(scope: !1969, file: !187, line: 228, column: 7)
!2128 = !DILocation(line: 146, column: 110, scope: !2011, inlinedAt: !2125)
!2129 = !DILocation(line: 146, column: 120, scope: !2011, inlinedAt: !2125)
!2130 = !DILocation(line: 148, column: 7, scope: !2031, inlinedAt: !2125)
!2131 = !DILocation(line: 132, column: 41, scope: !2034, inlinedAt: !2132)
!2132 = distinct !DILocation(line: 153, column: 16, scope: !2048, inlinedAt: !2125)
!2133 = !DILocation(line: 132, column: 100, scope: !2034, inlinedAt: !2132)
!2134 = !DILocation(line: 132, column: 110, scope: !2034, inlinedAt: !2132)
!2135 = !DILocation(line: 134, column: 7, scope: !2136, inlinedAt: !2132)
!2136 = !DILexicalBlockFile(scope: !2054, file: !1988, discriminator: 2)
!2137 = !DILocation(line: 134, column: 7, scope: !2138, inlinedAt: !2132)
!2138 = !DILexicalBlockFile(scope: !2034, file: !1988, discriminator: 2)
!2139 = !DILocation(line: 118, column: 41, scope: !2056, inlinedAt: !2140)
!2140 = distinct !DILocation(line: 139, column: 16, scope: !2069, inlinedAt: !2132)
!2141 = !DILocation(line: 118, column: 90, scope: !2056, inlinedAt: !2140)
!2142 = !DILocation(line: 118, column: 100, scope: !2056, inlinedAt: !2140)
!2143 = !DILocation(line: 120, column: 7, scope: !2074, inlinedAt: !2140)
!2144 = !DILocation(line: 120, column: 7, scope: !2077, inlinedAt: !2140)
!2145 = !DILocation(line: 104, column: 41, scope: !2079, inlinedAt: !2146)
!2146 = distinct !DILocation(line: 125, column: 16, scope: !2091, inlinedAt: !2140)
!2147 = !DILocation(line: 104, column: 80, scope: !2079, inlinedAt: !2146)
!2148 = !DILocation(line: 104, column: 90, scope: !2079, inlinedAt: !2146)
!2149 = !DILocation(line: 106, column: 7, scope: !2096, inlinedAt: !2146)
!2150 = !DILocation(line: 106, column: 7, scope: !2099, inlinedAt: !2146)
!2151 = !DILocation(line: 90, column: 41, scope: !2101, inlinedAt: !2152)
!2152 = distinct !DILocation(line: 111, column: 16, scope: !2112, inlinedAt: !2146)
!2153 = !DILocation(line: 90, column: 70, scope: !2101, inlinedAt: !2152)
!2154 = !DILocation(line: 90, column: 80, scope: !2101, inlinedAt: !2152)
!2155 = !DILocation(line: 92, column: 7, scope: !2117, inlinedAt: !2152)
!2156 = !DILocation(line: 92, column: 7, scope: !2120, inlinedAt: !2152)
!2157 = !DILocalVariable(name: "s2", arg: 2, scope: !2158, file: !1988, line: 76, type: !34)
!2158 = distinct !DISubprogram(name: "strcaseeq6", scope: !1988, file: !1988, line: 76, type: !2159, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !145, variables: !2161)
!2159 = !DISubroutineType(types: !2160)
!2160 = !{!24, !34, !34, !27, !27, !27}
!2161 = !{!2162, !2157, !2163, !2164, !2165}
!2162 = !DILocalVariable(name: "s1", arg: 1, scope: !2158, file: !1988, line: 76, type: !34)
!2163 = !DILocalVariable(name: "s26", arg: 3, scope: !2158, file: !1988, line: 76, type: !27)
!2164 = !DILocalVariable(name: "s27", arg: 4, scope: !2158, file: !1988, line: 76, type: !27)
!2165 = !DILocalVariable(name: "s28", arg: 5, scope: !2158, file: !1988, line: 76, type: !27)
!2166 = !DILocation(line: 76, column: 41, scope: !2158, inlinedAt: !2167)
!2167 = distinct !DILocation(line: 97, column: 16, scope: !2168, inlinedAt: !2152)
!2168 = distinct !DILexicalBlock(scope: !2169, file: !1988, line: 94, column: 11)
!2169 = distinct !DILexicalBlock(scope: !2118, file: !1988, line: 93, column: 5)
!2170 = !DILocation(line: 76, column: 60, scope: !2158, inlinedAt: !2167)
!2171 = !DILocation(line: 76, column: 70, scope: !2158, inlinedAt: !2167)
!2172 = !DILocation(line: 78, column: 7, scope: !2173, inlinedAt: !2167)
!2173 = !DILexicalBlockFile(scope: !2174, file: !1988, discriminator: 2)
!2174 = distinct !DILexicalBlock(scope: !2158, file: !1988, line: 78, column: 7)
!2175 = !DILocation(line: 78, column: 7, scope: !2176, inlinedAt: !2167)
!2176 = !DILexicalBlockFile(scope: !2158, file: !1988, discriminator: 2)
!2177 = !DILocalVariable(name: "s2", arg: 2, scope: !2178, file: !1988, line: 62, type: !34)
!2178 = distinct !DISubprogram(name: "strcaseeq7", scope: !1988, file: !1988, line: 62, type: !2179, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !145, variables: !2181)
!2179 = !DISubroutineType(types: !2180)
!2180 = !{!24, !34, !34, !27, !27}
!2181 = !{!2182, !2177, !2183, !2184}
!2182 = !DILocalVariable(name: "s1", arg: 1, scope: !2178, file: !1988, line: 62, type: !34)
!2183 = !DILocalVariable(name: "s27", arg: 3, scope: !2178, file: !1988, line: 62, type: !27)
!2184 = !DILocalVariable(name: "s28", arg: 4, scope: !2178, file: !1988, line: 62, type: !27)
!2185 = !DILocation(line: 62, column: 41, scope: !2178, inlinedAt: !2186)
!2186 = distinct !DILocation(line: 83, column: 16, scope: !2187, inlinedAt: !2167)
!2187 = distinct !DILexicalBlock(scope: !2188, file: !1988, line: 80, column: 11)
!2188 = distinct !DILexicalBlock(scope: !2174, file: !1988, line: 79, column: 5)
!2189 = !DILocation(line: 62, column: 50, scope: !2178, inlinedAt: !2186)
!2190 = !DILocation(line: 62, column: 60, scope: !2178, inlinedAt: !2186)
!2191 = !DILocation(line: 64, column: 7, scope: !2192, inlinedAt: !2186)
!2192 = !DILexicalBlockFile(scope: !2193, file: !1988, discriminator: 2)
!2193 = distinct !DILexicalBlock(scope: !2178, file: !1988, line: 64, column: 7)
!2194 = !DILocation(line: 228, column: 7, scope: !1969)
!2195 = !DILocation(line: 229, column: 12, scope: !2127)
!2196 = !DILocation(line: 229, column: 21, scope: !2127)
!2197 = !DILocation(line: 229, column: 5, scope: !2127)
!2198 = !DILocation(line: 231, column: 13, scope: !1969)
!2199 = !DILocation(line: 231, column: 11, scope: !1969)
!2200 = !DILocation(line: 231, column: 3, scope: !1969)
!2201 = !DILocation(line: 232, column: 1, scope: !1969)
!2202 = distinct !DISubprogram(name: "quotearg_alloc", scope: !187, file: !187, line: 791, type: !2203, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !145, variables: !2205)
!2203 = !DISubroutineType(types: !2204)
!2204 = !{!26, !34, !65, !1046}
!2205 = !{!2206, !2207, !2208}
!2206 = !DILocalVariable(name: "arg", arg: 1, scope: !2202, file: !187, line: 791, type: !34)
!2207 = !DILocalVariable(name: "argsize", arg: 2, scope: !2202, file: !187, line: 791, type: !65)
!2208 = !DILocalVariable(name: "o", arg: 3, scope: !2202, file: !187, line: 792, type: !1046)
!2209 = !DILocation(line: 791, column: 29, scope: !2202)
!2210 = !DILocation(line: 791, column: 41, scope: !2202)
!2211 = !DILocation(line: 792, column: 47, scope: !2202)
!2212 = !DILocalVariable(name: "arg", arg: 1, scope: !2213, file: !187, line: 804, type: !34)
!2213 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !187, file: !187, line: 804, type: !2214, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !145, variables: !2216)
!2214 = !DISubroutineType(types: !2215)
!2215 = !{!26, !34, !65, !599, !1046}
!2216 = !{!2212, !2217, !2218, !2219, !2220, !2221, !2222, !2223, !2224}
!2217 = !DILocalVariable(name: "argsize", arg: 2, scope: !2213, file: !187, line: 804, type: !65)
!2218 = !DILocalVariable(name: "size", arg: 3, scope: !2213, file: !187, line: 804, type: !599)
!2219 = !DILocalVariable(name: "o", arg: 4, scope: !2213, file: !187, line: 805, type: !1046)
!2220 = !DILocalVariable(name: "p", scope: !2213, file: !187, line: 807, type: !1046)
!2221 = !DILocalVariable(name: "e", scope: !2213, file: !187, line: 808, type: !24)
!2222 = !DILocalVariable(name: "flags", scope: !2213, file: !187, line: 810, type: !24)
!2223 = !DILocalVariable(name: "bufsize", scope: !2213, file: !187, line: 811, type: !65)
!2224 = !DILocalVariable(name: "buf", scope: !2213, file: !187, line: 815, type: !26)
!2225 = !DILocation(line: 804, column: 33, scope: !2213, inlinedAt: !2226)
!2226 = distinct !DILocation(line: 794, column: 10, scope: !2202)
!2227 = !DILocation(line: 804, column: 45, scope: !2213, inlinedAt: !2226)
!2228 = !DILocation(line: 804, column: 62, scope: !2213, inlinedAt: !2226)
!2229 = !DILocation(line: 805, column: 51, scope: !2213, inlinedAt: !2226)
!2230 = !DILocation(line: 807, column: 37, scope: !2213, inlinedAt: !2226)
!2231 = !DILocation(line: 807, column: 33, scope: !2213, inlinedAt: !2226)
!2232 = !DILocation(line: 808, column: 11, scope: !2213, inlinedAt: !2226)
!2233 = !DILocation(line: 808, column: 7, scope: !2213, inlinedAt: !2226)
!2234 = !DILocation(line: 810, column: 18, scope: !2213, inlinedAt: !2226)
!2235 = !DILocation(line: 810, column: 24, scope: !2213, inlinedAt: !2226)
!2236 = !DILocation(line: 810, column: 7, scope: !2213, inlinedAt: !2226)
!2237 = !DILocation(line: 811, column: 69, scope: !2213, inlinedAt: !2226)
!2238 = !DILocation(line: 812, column: 53, scope: !2213, inlinedAt: !2226)
!2239 = !DILocation(line: 813, column: 49, scope: !2213, inlinedAt: !2226)
!2240 = !DILocation(line: 814, column: 49, scope: !2213, inlinedAt: !2226)
!2241 = !DILocation(line: 811, column: 20, scope: !2213, inlinedAt: !2226)
!2242 = !DILocation(line: 814, column: 62, scope: !2213, inlinedAt: !2226)
!2243 = !DILocation(line: 811, column: 10, scope: !2213, inlinedAt: !2226)
!2244 = !DILocalVariable(name: "n", arg: 1, scope: !2245, file: !595, line: 220, type: !65)
!2245 = distinct !DISubprogram(name: "xcharalloc", scope: !595, file: !595, line: 220, type: !2246, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !145, variables: !2248)
!2246 = !DISubroutineType(types: !2247)
!2247 = !{!26, !65}
!2248 = !{!2244}
!2249 = !DILocation(line: 220, column: 20, scope: !2245, inlinedAt: !2250)
!2250 = distinct !DILocation(line: 815, column: 15, scope: !2213, inlinedAt: !2226)
!2251 = !DILocation(line: 222, column: 10, scope: !2245, inlinedAt: !2250)
!2252 = !DILocation(line: 815, column: 9, scope: !2213, inlinedAt: !2226)
!2253 = !DILocation(line: 816, column: 60, scope: !2213, inlinedAt: !2226)
!2254 = !DILocation(line: 818, column: 32, scope: !2213, inlinedAt: !2226)
!2255 = !DILocation(line: 818, column: 47, scope: !2213, inlinedAt: !2226)
!2256 = !DILocation(line: 816, column: 3, scope: !2213, inlinedAt: !2226)
!2257 = !DILocation(line: 819, column: 9, scope: !2213, inlinedAt: !2226)
!2258 = !DILocation(line: 794, column: 3, scope: !2202)
!2259 = !DILocation(line: 804, column: 33, scope: !2213)
!2260 = !DILocation(line: 804, column: 45, scope: !2213)
!2261 = !DILocation(line: 804, column: 62, scope: !2213)
!2262 = !DILocation(line: 805, column: 51, scope: !2213)
!2263 = !DILocation(line: 807, column: 37, scope: !2213)
!2264 = !DILocation(line: 807, column: 33, scope: !2213)
!2265 = !DILocation(line: 808, column: 11, scope: !2213)
!2266 = !DILocation(line: 808, column: 7, scope: !2213)
!2267 = !DILocation(line: 810, column: 18, scope: !2213)
!2268 = !DILocation(line: 810, column: 27, scope: !2213)
!2269 = !DILocation(line: 810, column: 24, scope: !2213)
!2270 = !DILocation(line: 810, column: 7, scope: !2213)
!2271 = !DILocation(line: 811, column: 69, scope: !2213)
!2272 = !DILocation(line: 812, column: 53, scope: !2213)
!2273 = !DILocation(line: 813, column: 49, scope: !2213)
!2274 = !DILocation(line: 814, column: 49, scope: !2213)
!2275 = !DILocation(line: 811, column: 20, scope: !2213)
!2276 = !DILocation(line: 814, column: 62, scope: !2213)
!2277 = !DILocation(line: 811, column: 10, scope: !2213)
!2278 = !DILocation(line: 220, column: 20, scope: !2245, inlinedAt: !2279)
!2279 = distinct !DILocation(line: 815, column: 15, scope: !2213)
!2280 = !DILocation(line: 222, column: 10, scope: !2245, inlinedAt: !2279)
!2281 = !DILocation(line: 815, column: 9, scope: !2213)
!2282 = !DILocation(line: 816, column: 60, scope: !2213)
!2283 = !DILocation(line: 818, column: 32, scope: !2213)
!2284 = !DILocation(line: 818, column: 47, scope: !2213)
!2285 = !DILocation(line: 816, column: 3, scope: !2213)
!2286 = !DILocation(line: 819, column: 9, scope: !2213)
!2287 = !DILocation(line: 820, column: 7, scope: !2213)
!2288 = !DILocation(line: 821, column: 11, scope: !2289)
!2289 = distinct !DILexicalBlock(scope: !2213, file: !187, line: 820, column: 7)
!2290 = !DILocation(line: 821, column: 5, scope: !2289)
!2291 = !DILocation(line: 822, column: 3, scope: !2213)
!2292 = distinct !DISubprogram(name: "quotearg_free", scope: !187, file: !187, line: 840, type: !664, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !145, variables: !2293)
!2293 = !{!2294, !2295}
!2294 = !DILocalVariable(name: "sv", scope: !2292, file: !187, line: 842, type: !213)
!2295 = !DILocalVariable(name: "i", scope: !2292, file: !187, line: 843, type: !24)
!2296 = !DILocation(line: 842, column: 24, scope: !2292)
!2297 = !DILocation(line: 842, column: 19, scope: !2292)
!2298 = !DILocation(line: 843, column: 7, scope: !2292)
!2299 = !DILocation(line: 844, column: 19, scope: !2300)
!2300 = !DILexicalBlockFile(scope: !2301, file: !187, discriminator: 1)
!2301 = distinct !DILexicalBlock(scope: !2302, file: !187, line: 844, column: 3)
!2302 = distinct !DILexicalBlock(scope: !2292, file: !187, line: 844, column: 3)
!2303 = !DILocation(line: 844, column: 17, scope: !2300)
!2304 = !DILocation(line: 844, column: 3, scope: !2305)
!2305 = !DILexicalBlockFile(scope: !2302, file: !187, discriminator: 1)
!2306 = !DILocation(line: 845, column: 17, scope: !2301)
!2307 = !{!2308, !649, i64 8}
!2308 = !{!"slotvec", !777, i64 0, !649, i64 8}
!2309 = !DILocation(line: 845, column: 5, scope: !2301)
!2310 = !DILocation(line: 844, column: 28, scope: !2311)
!2311 = !DILexicalBlockFile(scope: !2301, file: !187, discriminator: 2)
!2312 = distinct !{!2312, !2313, !2314}
!2313 = !DILocation(line: 844, column: 3, scope: !2302)
!2314 = !DILocation(line: 845, column: 20, scope: !2302)
!2315 = !DILocation(line: 846, column: 13, scope: !2316)
!2316 = distinct !DILexicalBlock(scope: !2292, file: !187, line: 846, column: 7)
!2317 = !DILocation(line: 846, column: 17, scope: !2316)
!2318 = !DILocation(line: 846, column: 7, scope: !2292)
!2319 = !DILocation(line: 848, column: 7, scope: !2320)
!2320 = distinct !DILexicalBlock(scope: !2316, file: !187, line: 847, column: 5)
!2321 = !DILocation(line: 849, column: 21, scope: !2320)
!2322 = !{!2308, !777, i64 0}
!2323 = !DILocation(line: 850, column: 20, scope: !2320)
!2324 = !DILocation(line: 851, column: 5, scope: !2320)
!2325 = !DILocation(line: 852, column: 10, scope: !2326)
!2326 = distinct !DILexicalBlock(scope: !2292, file: !187, line: 852, column: 7)
!2327 = !DILocation(line: 852, column: 7, scope: !2292)
!2328 = !DILocation(line: 854, column: 13, scope: !2329)
!2329 = distinct !DILexicalBlock(scope: !2326, file: !187, line: 853, column: 5)
!2330 = !DILocation(line: 854, column: 7, scope: !2329)
!2331 = !DILocation(line: 855, column: 15, scope: !2329)
!2332 = !DILocation(line: 856, column: 5, scope: !2329)
!2333 = !DILocation(line: 857, column: 10, scope: !2292)
!2334 = !DILocation(line: 858, column: 1, scope: !2292)
!2335 = distinct !DISubprogram(name: "quotearg_n", scope: !187, file: !187, line: 922, type: !2336, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !145, variables: !2338)
!2336 = !DISubroutineType(types: !2337)
!2337 = !{!26, !24, !34}
!2338 = !{!2339, !2340}
!2339 = !DILocalVariable(name: "n", arg: 1, scope: !2335, file: !187, line: 922, type: !24)
!2340 = !DILocalVariable(name: "arg", arg: 2, scope: !2335, file: !187, line: 922, type: !34)
!2341 = !DILocation(line: 922, column: 17, scope: !2335)
!2342 = !DILocation(line: 922, column: 32, scope: !2335)
!2343 = !DILocation(line: 924, column: 10, scope: !2335)
!2344 = !DILocation(line: 924, column: 3, scope: !2335)
!2345 = distinct !DISubprogram(name: "quotearg_n_options", scope: !187, file: !187, line: 869, type: !2346, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !145, variables: !2348)
!2346 = !DISubroutineType(types: !2347)
!2347 = !{!26, !24, !34, !65, !1046}
!2348 = !{!2349, !2350, !2351, !2352, !2353, !2354, !2355, !2358, !2360, !2361, !2362}
!2349 = !DILocalVariable(name: "n", arg: 1, scope: !2345, file: !187, line: 869, type: !24)
!2350 = !DILocalVariable(name: "arg", arg: 2, scope: !2345, file: !187, line: 869, type: !34)
!2351 = !DILocalVariable(name: "argsize", arg: 3, scope: !2345, file: !187, line: 869, type: !65)
!2352 = !DILocalVariable(name: "options", arg: 4, scope: !2345, file: !187, line: 870, type: !1046)
!2353 = !DILocalVariable(name: "e", scope: !2345, file: !187, line: 872, type: !24)
!2354 = !DILocalVariable(name: "sv", scope: !2345, file: !187, line: 874, type: !213)
!2355 = !DILocalVariable(name: "preallocated", scope: !2356, file: !187, line: 881, type: !37)
!2356 = distinct !DILexicalBlock(scope: !2357, file: !187, line: 880, column: 5)
!2357 = distinct !DILexicalBlock(scope: !2345, file: !187, line: 879, column: 7)
!2358 = !DILocalVariable(name: "size", scope: !2359, file: !187, line: 894, type: !65)
!2359 = distinct !DILexicalBlock(scope: !2345, file: !187, line: 893, column: 3)
!2360 = !DILocalVariable(name: "val", scope: !2359, file: !187, line: 895, type: !26)
!2361 = !DILocalVariable(name: "flags", scope: !2359, file: !187, line: 897, type: !24)
!2362 = !DILocalVariable(name: "qsize", scope: !2359, file: !187, line: 898, type: !65)
!2363 = !DILocation(line: 869, column: 25, scope: !2345)
!2364 = !DILocation(line: 869, column: 40, scope: !2345)
!2365 = !DILocation(line: 869, column: 52, scope: !2345)
!2366 = !DILocation(line: 870, column: 51, scope: !2345)
!2367 = !DILocation(line: 872, column: 11, scope: !2345)
!2368 = !DILocation(line: 872, column: 7, scope: !2345)
!2369 = !DILocation(line: 874, column: 24, scope: !2345)
!2370 = !DILocation(line: 874, column: 19, scope: !2345)
!2371 = !DILocation(line: 876, column: 9, scope: !2372)
!2372 = distinct !DILexicalBlock(scope: !2345, file: !187, line: 876, column: 7)
!2373 = !DILocation(line: 876, column: 7, scope: !2345)
!2374 = !DILocation(line: 877, column: 5, scope: !2372)
!2375 = !DILocation(line: 879, column: 7, scope: !2357)
!2376 = !DILocation(line: 879, column: 14, scope: !2357)
!2377 = !DILocation(line: 879, column: 7, scope: !2345)
!2378 = !DILocation(line: 881, column: 31, scope: !2356)
!2379 = !DILocation(line: 883, column: 67, scope: !2380)
!2380 = distinct !DILexicalBlock(scope: !2356, file: !187, line: 883, column: 11)
!2381 = !DILocation(line: 883, column: 11, scope: !2356)
!2382 = !DILocation(line: 884, column: 9, scope: !2380)
!2383 = !DILocation(line: 886, column: 32, scope: !2384)
!2384 = !DILexicalBlockFile(scope: !2356, file: !187, discriminator: 3)
!2385 = !DILocation(line: 886, column: 61, scope: !2384)
!2386 = !DILocation(line: 886, column: 58, scope: !2384)
!2387 = !DILocation(line: 886, column: 66, scope: !2384)
!2388 = !DILocation(line: 886, column: 22, scope: !2384)
!2389 = !DILocation(line: 886, column: 15, scope: !2384)
!2390 = !DILocation(line: 887, column: 11, scope: !2356)
!2391 = !DILocation(line: 888, column: 15, scope: !2392)
!2392 = distinct !DILexicalBlock(scope: !2356, file: !187, line: 887, column: 11)
!2393 = !{i64 0, i64 8, !776, i64 8, i64 8, !648}
!2394 = !DILocation(line: 888, column: 9, scope: !2392)
!2395 = !DILocation(line: 889, column: 20, scope: !2356)
!2396 = !DILocation(line: 889, column: 18, scope: !2356)
!2397 = !DILocation(line: 889, column: 7, scope: !2356)
!2398 = !DILocation(line: 889, column: 38, scope: !2356)
!2399 = !DILocation(line: 889, column: 31, scope: !2356)
!2400 = !DILocation(line: 889, column: 48, scope: !2356)
!2401 = !DILocation(line: 890, column: 14, scope: !2356)
!2402 = !DILocation(line: 891, column: 5, scope: !2356)
!2403 = !DILocation(line: 894, column: 19, scope: !2359)
!2404 = !DILocation(line: 894, column: 25, scope: !2359)
!2405 = !DILocation(line: 894, column: 12, scope: !2359)
!2406 = !DILocation(line: 895, column: 23, scope: !2359)
!2407 = !DILocation(line: 895, column: 11, scope: !2359)
!2408 = !DILocation(line: 897, column: 26, scope: !2359)
!2409 = !DILocation(line: 897, column: 32, scope: !2359)
!2410 = !DILocation(line: 897, column: 9, scope: !2359)
!2411 = !DILocation(line: 899, column: 55, scope: !2359)
!2412 = !DILocation(line: 900, column: 46, scope: !2359)
!2413 = !DILocation(line: 901, column: 55, scope: !2359)
!2414 = !DILocation(line: 902, column: 55, scope: !2359)
!2415 = !DILocation(line: 898, column: 20, scope: !2359)
!2416 = !DILocation(line: 898, column: 12, scope: !2359)
!2417 = !DILocation(line: 904, column: 14, scope: !2418)
!2418 = distinct !DILexicalBlock(scope: !2359, file: !187, line: 904, column: 9)
!2419 = !DILocation(line: 904, column: 9, scope: !2359)
!2420 = !DILocation(line: 906, column: 35, scope: !2421)
!2421 = distinct !DILexicalBlock(scope: !2418, file: !187, line: 905, column: 7)
!2422 = !DILocation(line: 906, column: 20, scope: !2421)
!2423 = !DILocation(line: 907, column: 17, scope: !2424)
!2424 = distinct !DILexicalBlock(scope: !2421, file: !187, line: 907, column: 13)
!2425 = !DILocation(line: 907, column: 13, scope: !2421)
!2426 = !DILocation(line: 908, column: 11, scope: !2424)
!2427 = !DILocation(line: 220, column: 20, scope: !2245, inlinedAt: !2428)
!2428 = distinct !DILocation(line: 909, column: 27, scope: !2421)
!2429 = !DILocation(line: 222, column: 10, scope: !2245, inlinedAt: !2428)
!2430 = !DILocation(line: 909, column: 19, scope: !2421)
!2431 = !DILocation(line: 910, column: 69, scope: !2421)
!2432 = !DILocation(line: 912, column: 44, scope: !2421)
!2433 = !DILocation(line: 913, column: 44, scope: !2421)
!2434 = !DILocation(line: 910, column: 9, scope: !2421)
!2435 = !DILocation(line: 914, column: 7, scope: !2421)
!2436 = !DILocation(line: 916, column: 11, scope: !2359)
!2437 = !DILocation(line: 917, column: 5, scope: !2359)
!2438 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !187, file: !187, line: 928, type: !2439, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !145, variables: !2441)
!2439 = !DISubroutineType(types: !2440)
!2440 = !{!26, !24, !34, !65}
!2441 = !{!2442, !2443, !2444}
!2442 = !DILocalVariable(name: "n", arg: 1, scope: !2438, file: !187, line: 928, type: !24)
!2443 = !DILocalVariable(name: "arg", arg: 2, scope: !2438, file: !187, line: 928, type: !34)
!2444 = !DILocalVariable(name: "argsize", arg: 3, scope: !2438, file: !187, line: 928, type: !65)
!2445 = !DILocation(line: 928, column: 21, scope: !2438)
!2446 = !DILocation(line: 928, column: 36, scope: !2438)
!2447 = !DILocation(line: 928, column: 48, scope: !2438)
!2448 = !DILocation(line: 930, column: 10, scope: !2438)
!2449 = !DILocation(line: 930, column: 3, scope: !2438)
!2450 = distinct !DISubprogram(name: "quotearg", scope: !187, file: !187, line: 934, type: !2451, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !145, variables: !2453)
!2451 = !DISubroutineType(types: !2452)
!2452 = !{!26, !34}
!2453 = !{!2454}
!2454 = !DILocalVariable(name: "arg", arg: 1, scope: !2450, file: !187, line: 934, type: !34)
!2455 = !DILocation(line: 934, column: 23, scope: !2450)
!2456 = !DILocation(line: 922, column: 17, scope: !2335, inlinedAt: !2457)
!2457 = distinct !DILocation(line: 936, column: 10, scope: !2450)
!2458 = !DILocation(line: 922, column: 32, scope: !2335, inlinedAt: !2457)
!2459 = !DILocation(line: 924, column: 10, scope: !2335, inlinedAt: !2457)
!2460 = !DILocation(line: 936, column: 3, scope: !2450)
!2461 = distinct !DISubprogram(name: "quotearg_mem", scope: !187, file: !187, line: 940, type: !2462, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !145, variables: !2464)
!2462 = !DISubroutineType(types: !2463)
!2463 = !{!26, !34, !65}
!2464 = !{!2465, !2466}
!2465 = !DILocalVariable(name: "arg", arg: 1, scope: !2461, file: !187, line: 940, type: !34)
!2466 = !DILocalVariable(name: "argsize", arg: 2, scope: !2461, file: !187, line: 940, type: !65)
!2467 = !DILocation(line: 940, column: 27, scope: !2461)
!2468 = !DILocation(line: 940, column: 39, scope: !2461)
!2469 = !DILocation(line: 928, column: 21, scope: !2438, inlinedAt: !2470)
!2470 = distinct !DILocation(line: 942, column: 10, scope: !2461)
!2471 = !DILocation(line: 928, column: 36, scope: !2438, inlinedAt: !2470)
!2472 = !DILocation(line: 928, column: 48, scope: !2438, inlinedAt: !2470)
!2473 = !DILocation(line: 930, column: 10, scope: !2438, inlinedAt: !2470)
!2474 = !DILocation(line: 942, column: 3, scope: !2461)
!2475 = distinct !DISubprogram(name: "quotearg_n_style", scope: !187, file: !187, line: 946, type: !2476, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !145, variables: !2478)
!2476 = !DISubroutineType(types: !2477)
!2477 = !{!26, !24, !148, !34}
!2478 = !{!2479, !2480, !2481, !2482}
!2479 = !DILocalVariable(name: "n", arg: 1, scope: !2475, file: !187, line: 946, type: !24)
!2480 = !DILocalVariable(name: "s", arg: 2, scope: !2475, file: !187, line: 946, type: !148)
!2481 = !DILocalVariable(name: "arg", arg: 3, scope: !2475, file: !187, line: 946, type: !34)
!2482 = !DILocalVariable(name: "o", scope: !2475, file: !187, line: 948, type: !1047)
!2483 = !DILocalVariable(name: "o", scope: !2484, file: !187, line: 187, type: !194)
!2484 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !187, file: !187, line: 185, type: !2485, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !145, variables: !2487)
!2485 = !DISubroutineType(types: !2486)
!2486 = !{!194, !148}
!2487 = !{!2488, !2483}
!2488 = !DILocalVariable(name: "style", arg: 1, scope: !2484, file: !187, line: 185, type: !148)
!2489 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!2490 = !DILocation(line: 187, column: 26, scope: !2484, inlinedAt: !2491)
!2491 = distinct !DILocation(line: 948, column: 36, scope: !2475)
!2492 = !DILocation(line: 946, column: 23, scope: !2475)
!2493 = !DILocation(line: 946, column: 45, scope: !2475)
!2494 = !DILocation(line: 946, column: 60, scope: !2475)
!2495 = !DILocation(line: 948, column: 3, scope: !2475)
!2496 = !DILocation(line: 948, column: 32, scope: !2475)
!2497 = !DILocation(line: 185, column: 48, scope: !2484, inlinedAt: !2491)
!2498 = !DILocation(line: 187, column: 3, scope: !2484, inlinedAt: !2491)
!2499 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!2500 = !DILocation(line: 188, column: 13, scope: !2501, inlinedAt: !2491)
!2501 = distinct !DILexicalBlock(scope: !2484, file: !187, line: 188, column: 7)
!2502 = !DILocation(line: 188, column: 7, scope: !2484, inlinedAt: !2491)
!2503 = !DILocation(line: 189, column: 5, scope: !2501, inlinedAt: !2491)
!2504 = !{!2505}
!2505 = distinct !{!2505, !2506, !"quoting_options_from_style: argument 0"}
!2506 = distinct !{!2506, !"quoting_options_from_style"}
!2507 = !DILocation(line: 191, column: 10, scope: !2484, inlinedAt: !2491)
!2508 = !DILocation(line: 192, column: 1, scope: !2484, inlinedAt: !2491)
!2509 = !DILocation(line: 949, column: 10, scope: !2475)
!2510 = !DILocation(line: 950, column: 1, scope: !2475)
!2511 = !DILocation(line: 949, column: 3, scope: !2475)
!2512 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !187, file: !187, line: 953, type: !2513, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !145, variables: !2515)
!2513 = !DISubroutineType(types: !2514)
!2514 = !{!26, !24, !148, !34, !65}
!2515 = !{!2516, !2517, !2518, !2519, !2520}
!2516 = !DILocalVariable(name: "n", arg: 1, scope: !2512, file: !187, line: 953, type: !24)
!2517 = !DILocalVariable(name: "s", arg: 2, scope: !2512, file: !187, line: 953, type: !148)
!2518 = !DILocalVariable(name: "arg", arg: 3, scope: !2512, file: !187, line: 954, type: !34)
!2519 = !DILocalVariable(name: "argsize", arg: 4, scope: !2512, file: !187, line: 954, type: !65)
!2520 = !DILocalVariable(name: "o", scope: !2512, file: !187, line: 956, type: !1047)
!2521 = !DILocation(line: 187, column: 26, scope: !2484, inlinedAt: !2522)
!2522 = distinct !DILocation(line: 956, column: 36, scope: !2512)
!2523 = !DILocation(line: 953, column: 27, scope: !2512)
!2524 = !DILocation(line: 953, column: 49, scope: !2512)
!2525 = !DILocation(line: 954, column: 35, scope: !2512)
!2526 = !DILocation(line: 954, column: 47, scope: !2512)
!2527 = !DILocation(line: 956, column: 3, scope: !2512)
!2528 = !DILocation(line: 956, column: 32, scope: !2512)
!2529 = !DILocation(line: 185, column: 48, scope: !2484, inlinedAt: !2522)
!2530 = !DILocation(line: 187, column: 3, scope: !2484, inlinedAt: !2522)
!2531 = !DILocation(line: 188, column: 13, scope: !2501, inlinedAt: !2522)
!2532 = !DILocation(line: 188, column: 7, scope: !2484, inlinedAt: !2522)
!2533 = !DILocation(line: 189, column: 5, scope: !2501, inlinedAt: !2522)
!2534 = !{!2535}
!2535 = distinct !{!2535, !2536, !"quoting_options_from_style: argument 0"}
!2536 = distinct !{!2536, !"quoting_options_from_style"}
!2537 = !DILocation(line: 191, column: 10, scope: !2484, inlinedAt: !2522)
!2538 = !DILocation(line: 192, column: 1, scope: !2484, inlinedAt: !2522)
!2539 = !DILocation(line: 957, column: 10, scope: !2512)
!2540 = !DILocation(line: 958, column: 1, scope: !2512)
!2541 = !DILocation(line: 957, column: 3, scope: !2512)
!2542 = distinct !DISubprogram(name: "quotearg_style", scope: !187, file: !187, line: 961, type: !2543, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !145, variables: !2545)
!2543 = !DISubroutineType(types: !2544)
!2544 = !{!26, !148, !34}
!2545 = !{!2546, !2547}
!2546 = !DILocalVariable(name: "s", arg: 1, scope: !2542, file: !187, line: 961, type: !148)
!2547 = !DILocalVariable(name: "arg", arg: 2, scope: !2542, file: !187, line: 961, type: !34)
!2548 = !DILocation(line: 187, column: 26, scope: !2484, inlinedAt: !2549)
!2549 = distinct !DILocation(line: 948, column: 36, scope: !2475, inlinedAt: !2550)
!2550 = distinct !DILocation(line: 963, column: 10, scope: !2542)
!2551 = !DILocation(line: 961, column: 36, scope: !2542)
!2552 = !DILocation(line: 961, column: 51, scope: !2542)
!2553 = !DILocation(line: 946, column: 23, scope: !2475, inlinedAt: !2550)
!2554 = !DILocation(line: 946, column: 45, scope: !2475, inlinedAt: !2550)
!2555 = !DILocation(line: 946, column: 60, scope: !2475, inlinedAt: !2550)
!2556 = !DILocation(line: 948, column: 3, scope: !2475, inlinedAt: !2550)
!2557 = !DILocation(line: 948, column: 32, scope: !2475, inlinedAt: !2550)
!2558 = !DILocation(line: 185, column: 48, scope: !2484, inlinedAt: !2549)
!2559 = !DILocation(line: 187, column: 3, scope: !2484, inlinedAt: !2549)
!2560 = !DILocation(line: 188, column: 13, scope: !2501, inlinedAt: !2549)
!2561 = !DILocation(line: 188, column: 7, scope: !2484, inlinedAt: !2549)
!2562 = !DILocation(line: 189, column: 5, scope: !2501, inlinedAt: !2549)
!2563 = !{!2564}
!2564 = distinct !{!2564, !2565, !"quoting_options_from_style: argument 0"}
!2565 = distinct !{!2565, !"quoting_options_from_style"}
!2566 = !DILocation(line: 191, column: 10, scope: !2484, inlinedAt: !2549)
!2567 = !DILocation(line: 192, column: 1, scope: !2484, inlinedAt: !2549)
!2568 = !DILocation(line: 949, column: 10, scope: !2475, inlinedAt: !2550)
!2569 = !DILocation(line: 950, column: 1, scope: !2475, inlinedAt: !2550)
!2570 = !DILocation(line: 963, column: 3, scope: !2542)
!2571 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !187, file: !187, line: 967, type: !2572, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !145, variables: !2574)
!2572 = !DISubroutineType(types: !2573)
!2573 = !{!26, !148, !34, !65}
!2574 = !{!2575, !2576, !2577}
!2575 = !DILocalVariable(name: "s", arg: 1, scope: !2571, file: !187, line: 967, type: !148)
!2576 = !DILocalVariable(name: "arg", arg: 2, scope: !2571, file: !187, line: 967, type: !34)
!2577 = !DILocalVariable(name: "argsize", arg: 3, scope: !2571, file: !187, line: 967, type: !65)
!2578 = !DILocation(line: 187, column: 26, scope: !2484, inlinedAt: !2579)
!2579 = distinct !DILocation(line: 956, column: 36, scope: !2512, inlinedAt: !2580)
!2580 = distinct !DILocation(line: 969, column: 10, scope: !2571)
!2581 = !DILocation(line: 967, column: 40, scope: !2571)
!2582 = !DILocation(line: 967, column: 55, scope: !2571)
!2583 = !DILocation(line: 967, column: 67, scope: !2571)
!2584 = !DILocation(line: 953, column: 27, scope: !2512, inlinedAt: !2580)
!2585 = !DILocation(line: 953, column: 49, scope: !2512, inlinedAt: !2580)
!2586 = !DILocation(line: 954, column: 35, scope: !2512, inlinedAt: !2580)
!2587 = !DILocation(line: 954, column: 47, scope: !2512, inlinedAt: !2580)
!2588 = !DILocation(line: 956, column: 3, scope: !2512, inlinedAt: !2580)
!2589 = !DILocation(line: 956, column: 32, scope: !2512, inlinedAt: !2580)
!2590 = !DILocation(line: 185, column: 48, scope: !2484, inlinedAt: !2579)
!2591 = !DILocation(line: 187, column: 3, scope: !2484, inlinedAt: !2579)
!2592 = !DILocation(line: 188, column: 13, scope: !2501, inlinedAt: !2579)
!2593 = !DILocation(line: 188, column: 7, scope: !2484, inlinedAt: !2579)
!2594 = !DILocation(line: 189, column: 5, scope: !2501, inlinedAt: !2579)
!2595 = !{!2596}
!2596 = distinct !{!2596, !2597, !"quoting_options_from_style: argument 0"}
!2597 = distinct !{!2597, !"quoting_options_from_style"}
!2598 = !DILocation(line: 191, column: 10, scope: !2484, inlinedAt: !2579)
!2599 = !DILocation(line: 192, column: 1, scope: !2484, inlinedAt: !2579)
!2600 = !DILocation(line: 957, column: 10, scope: !2512, inlinedAt: !2580)
!2601 = !DILocation(line: 958, column: 1, scope: !2512, inlinedAt: !2580)
!2602 = !DILocation(line: 969, column: 3, scope: !2571)
!2603 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !187, file: !187, line: 973, type: !2604, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !145, variables: !2606)
!2604 = !DISubroutineType(types: !2605)
!2605 = !{!26, !34, !65, !27}
!2606 = !{!2607, !2608, !2609, !2610}
!2607 = !DILocalVariable(name: "arg", arg: 1, scope: !2603, file: !187, line: 973, type: !34)
!2608 = !DILocalVariable(name: "argsize", arg: 2, scope: !2603, file: !187, line: 973, type: !65)
!2609 = !DILocalVariable(name: "ch", arg: 3, scope: !2603, file: !187, line: 973, type: !27)
!2610 = !DILocalVariable(name: "options", scope: !2603, file: !187, line: 975, type: !194)
!2611 = !DILocation(line: 973, column: 32, scope: !2603)
!2612 = !DILocation(line: 973, column: 44, scope: !2603)
!2613 = !DILocation(line: 973, column: 58, scope: !2603)
!2614 = !DILocation(line: 975, column: 3, scope: !2603)
!2615 = !DILocation(line: 976, column: 13, scope: !2603)
!2616 = !{i64 0, i64 4, !727, i64 4, i64 4, !716, i64 8, i64 32, !727, i64 40, i64 8, !648, i64 48, i64 8, !648}
!2617 = !DILocation(line: 975, column: 26, scope: !2603)
!2618 = !DILocation(line: 144, column: 43, scope: !1070, inlinedAt: !2619)
!2619 = distinct !DILocation(line: 977, column: 3, scope: !2603)
!2620 = !DILocation(line: 144, column: 51, scope: !1070, inlinedAt: !2619)
!2621 = !DILocation(line: 144, column: 58, scope: !1070, inlinedAt: !2619)
!2622 = !DILocation(line: 146, column: 17, scope: !1070, inlinedAt: !2619)
!2623 = !DILocation(line: 148, column: 62, scope: !1088, inlinedAt: !2619)
!2624 = !DILocation(line: 148, column: 57, scope: !1088, inlinedAt: !2619)
!2625 = !DILocation(line: 147, column: 17, scope: !1070, inlinedAt: !2619)
!2626 = !DILocation(line: 149, column: 18, scope: !1070, inlinedAt: !2619)
!2627 = !DILocation(line: 149, column: 15, scope: !1070, inlinedAt: !2619)
!2628 = !DILocation(line: 149, column: 7, scope: !1070, inlinedAt: !2619)
!2629 = !DILocation(line: 150, column: 12, scope: !1070, inlinedAt: !2619)
!2630 = !DILocation(line: 150, column: 15, scope: !1070, inlinedAt: !2619)
!2631 = !DILocation(line: 150, column: 25, scope: !1070, inlinedAt: !2619)
!2632 = !DILocation(line: 150, column: 7, scope: !1070, inlinedAt: !2619)
!2633 = !DILocation(line: 151, column: 18, scope: !1070, inlinedAt: !2619)
!2634 = !DILocation(line: 151, column: 23, scope: !1070, inlinedAt: !2619)
!2635 = !DILocation(line: 151, column: 6, scope: !1070, inlinedAt: !2619)
!2636 = !DILocation(line: 978, column: 10, scope: !2603)
!2637 = !DILocation(line: 979, column: 1, scope: !2603)
!2638 = !DILocation(line: 978, column: 3, scope: !2603)
!2639 = distinct !DISubprogram(name: "quotearg_char", scope: !187, file: !187, line: 982, type: !2640, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !145, variables: !2642)
!2640 = !DISubroutineType(types: !2641)
!2641 = !{!26, !34, !27}
!2642 = !{!2643, !2644}
!2643 = !DILocalVariable(name: "arg", arg: 1, scope: !2639, file: !187, line: 982, type: !34)
!2644 = !DILocalVariable(name: "ch", arg: 2, scope: !2639, file: !187, line: 982, type: !27)
!2645 = !DILocation(line: 982, column: 28, scope: !2639)
!2646 = !DILocation(line: 982, column: 38, scope: !2639)
!2647 = !DILocation(line: 973, column: 32, scope: !2603, inlinedAt: !2648)
!2648 = distinct !DILocation(line: 984, column: 10, scope: !2639)
!2649 = !DILocation(line: 973, column: 44, scope: !2603, inlinedAt: !2648)
!2650 = !DILocation(line: 973, column: 58, scope: !2603, inlinedAt: !2648)
!2651 = !DILocation(line: 975, column: 3, scope: !2603, inlinedAt: !2648)
!2652 = !DILocation(line: 976, column: 13, scope: !2603, inlinedAt: !2648)
!2653 = !DILocation(line: 975, column: 26, scope: !2603, inlinedAt: !2648)
!2654 = !DILocation(line: 144, column: 43, scope: !1070, inlinedAt: !2655)
!2655 = distinct !DILocation(line: 977, column: 3, scope: !2603, inlinedAt: !2648)
!2656 = !DILocation(line: 144, column: 51, scope: !1070, inlinedAt: !2655)
!2657 = !DILocation(line: 144, column: 58, scope: !1070, inlinedAt: !2655)
!2658 = !DILocation(line: 146, column: 17, scope: !1070, inlinedAt: !2655)
!2659 = !DILocation(line: 148, column: 62, scope: !1088, inlinedAt: !2655)
!2660 = !DILocation(line: 148, column: 57, scope: !1088, inlinedAt: !2655)
!2661 = !DILocation(line: 147, column: 17, scope: !1070, inlinedAt: !2655)
!2662 = !DILocation(line: 149, column: 18, scope: !1070, inlinedAt: !2655)
!2663 = !DILocation(line: 149, column: 15, scope: !1070, inlinedAt: !2655)
!2664 = !DILocation(line: 149, column: 7, scope: !1070, inlinedAt: !2655)
!2665 = !DILocation(line: 150, column: 12, scope: !1070, inlinedAt: !2655)
!2666 = !DILocation(line: 150, column: 15, scope: !1070, inlinedAt: !2655)
!2667 = !DILocation(line: 150, column: 25, scope: !1070, inlinedAt: !2655)
!2668 = !DILocation(line: 150, column: 7, scope: !1070, inlinedAt: !2655)
!2669 = !DILocation(line: 151, column: 18, scope: !1070, inlinedAt: !2655)
!2670 = !DILocation(line: 151, column: 23, scope: !1070, inlinedAt: !2655)
!2671 = !DILocation(line: 151, column: 6, scope: !1070, inlinedAt: !2655)
!2672 = !DILocation(line: 978, column: 10, scope: !2603, inlinedAt: !2648)
!2673 = !DILocation(line: 979, column: 1, scope: !2603, inlinedAt: !2648)
!2674 = !DILocation(line: 984, column: 3, scope: !2639)
!2675 = distinct !DISubprogram(name: "quotearg_colon", scope: !187, file: !187, line: 988, type: !2451, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !145, variables: !2676)
!2676 = !{!2677}
!2677 = !DILocalVariable(name: "arg", arg: 1, scope: !2675, file: !187, line: 988, type: !34)
!2678 = !DILocation(line: 988, column: 29, scope: !2675)
!2679 = !DILocation(line: 982, column: 28, scope: !2639, inlinedAt: !2680)
!2680 = distinct !DILocation(line: 990, column: 10, scope: !2675)
!2681 = !DILocation(line: 982, column: 38, scope: !2639, inlinedAt: !2680)
!2682 = !DILocation(line: 973, column: 32, scope: !2603, inlinedAt: !2683)
!2683 = distinct !DILocation(line: 984, column: 10, scope: !2639, inlinedAt: !2680)
!2684 = !DILocation(line: 973, column: 44, scope: !2603, inlinedAt: !2683)
!2685 = !DILocation(line: 973, column: 58, scope: !2603, inlinedAt: !2683)
!2686 = !DILocation(line: 975, column: 3, scope: !2603, inlinedAt: !2683)
!2687 = !DILocation(line: 976, column: 13, scope: !2603, inlinedAt: !2683)
!2688 = !DILocation(line: 975, column: 26, scope: !2603, inlinedAt: !2683)
!2689 = !DILocation(line: 144, column: 43, scope: !1070, inlinedAt: !2690)
!2690 = distinct !DILocation(line: 977, column: 3, scope: !2603, inlinedAt: !2683)
!2691 = !DILocation(line: 144, column: 51, scope: !1070, inlinedAt: !2690)
!2692 = !DILocation(line: 144, column: 58, scope: !1070, inlinedAt: !2690)
!2693 = !DILocation(line: 146, column: 17, scope: !1070, inlinedAt: !2690)
!2694 = !DILocation(line: 148, column: 57, scope: !1088, inlinedAt: !2690)
!2695 = !DILocation(line: 147, column: 17, scope: !1070, inlinedAt: !2690)
!2696 = !DILocation(line: 149, column: 7, scope: !1070, inlinedAt: !2690)
!2697 = !DILocation(line: 150, column: 12, scope: !1070, inlinedAt: !2690)
!2698 = !DILocation(line: 151, column: 6, scope: !1070, inlinedAt: !2690)
!2699 = !DILocation(line: 978, column: 10, scope: !2603, inlinedAt: !2683)
!2700 = !DILocation(line: 979, column: 1, scope: !2603, inlinedAt: !2683)
!2701 = !DILocation(line: 990, column: 3, scope: !2675)
!2702 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !187, file: !187, line: 994, type: !2462, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !145, variables: !2703)
!2703 = !{!2704, !2705}
!2704 = !DILocalVariable(name: "arg", arg: 1, scope: !2702, file: !187, line: 994, type: !34)
!2705 = !DILocalVariable(name: "argsize", arg: 2, scope: !2702, file: !187, line: 994, type: !65)
!2706 = !DILocation(line: 994, column: 33, scope: !2702)
!2707 = !DILocation(line: 994, column: 45, scope: !2702)
!2708 = !DILocation(line: 973, column: 32, scope: !2603, inlinedAt: !2709)
!2709 = distinct !DILocation(line: 996, column: 10, scope: !2702)
!2710 = !DILocation(line: 973, column: 44, scope: !2603, inlinedAt: !2709)
!2711 = !DILocation(line: 973, column: 58, scope: !2603, inlinedAt: !2709)
!2712 = !DILocation(line: 975, column: 3, scope: !2603, inlinedAt: !2709)
!2713 = !DILocation(line: 976, column: 13, scope: !2603, inlinedAt: !2709)
!2714 = !DILocation(line: 975, column: 26, scope: !2603, inlinedAt: !2709)
!2715 = !DILocation(line: 144, column: 43, scope: !1070, inlinedAt: !2716)
!2716 = distinct !DILocation(line: 977, column: 3, scope: !2603, inlinedAt: !2709)
!2717 = !DILocation(line: 144, column: 51, scope: !1070, inlinedAt: !2716)
!2718 = !DILocation(line: 144, column: 58, scope: !1070, inlinedAt: !2716)
!2719 = !DILocation(line: 146, column: 17, scope: !1070, inlinedAt: !2716)
!2720 = !DILocation(line: 148, column: 57, scope: !1088, inlinedAt: !2716)
!2721 = !DILocation(line: 147, column: 17, scope: !1070, inlinedAt: !2716)
!2722 = !DILocation(line: 149, column: 7, scope: !1070, inlinedAt: !2716)
!2723 = !DILocation(line: 150, column: 12, scope: !1070, inlinedAt: !2716)
!2724 = !DILocation(line: 151, column: 6, scope: !1070, inlinedAt: !2716)
!2725 = !DILocation(line: 978, column: 10, scope: !2603, inlinedAt: !2709)
!2726 = !DILocation(line: 979, column: 1, scope: !2603, inlinedAt: !2709)
!2727 = !DILocation(line: 996, column: 3, scope: !2702)
!2728 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !187, file: !187, line: 1000, type: !2476, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !145, variables: !2729)
!2729 = !{!2730, !2731, !2732, !2733}
!2730 = !DILocalVariable(name: "n", arg: 1, scope: !2728, file: !187, line: 1000, type: !24)
!2731 = !DILocalVariable(name: "s", arg: 2, scope: !2728, file: !187, line: 1000, type: !148)
!2732 = !DILocalVariable(name: "arg", arg: 3, scope: !2728, file: !187, line: 1000, type: !34)
!2733 = !DILocalVariable(name: "options", scope: !2728, file: !187, line: 1002, type: !194)
!2734 = !DILocation(line: 187, column: 26, scope: !2484, inlinedAt: !2735)
!2735 = distinct !DILocation(line: 1003, column: 13, scope: !2728)
!2736 = !DILocation(line: 1000, column: 29, scope: !2728)
!2737 = !DILocation(line: 1000, column: 51, scope: !2728)
!2738 = !DILocation(line: 1000, column: 66, scope: !2728)
!2739 = !DILocation(line: 1002, column: 3, scope: !2728)
!2740 = !DILocation(line: 185, column: 48, scope: !2484, inlinedAt: !2735)
!2741 = !DILocation(line: 187, column: 3, scope: !2484, inlinedAt: !2735)
!2742 = !DILocation(line: 188, column: 13, scope: !2501, inlinedAt: !2735)
!2743 = !DILocation(line: 188, column: 7, scope: !2484, inlinedAt: !2735)
!2744 = !DILocation(line: 189, column: 5, scope: !2501, inlinedAt: !2735)
!2745 = !{!2746}
!2746 = distinct !{!2746, !2747, !"quoting_options_from_style: argument 0"}
!2747 = distinct !{!2747, !"quoting_options_from_style"}
!2748 = !DILocation(line: 191, column: 10, scope: !2484, inlinedAt: !2735)
!2749 = !DILocation(line: 192, column: 1, scope: !2484, inlinedAt: !2735)
!2750 = !DILocation(line: 1003, column: 13, scope: !2728)
!2751 = !DILocation(line: 1002, column: 26, scope: !2728)
!2752 = !DILocation(line: 144, column: 43, scope: !1070, inlinedAt: !2753)
!2753 = distinct !DILocation(line: 1004, column: 3, scope: !2728)
!2754 = !DILocation(line: 144, column: 51, scope: !1070, inlinedAt: !2753)
!2755 = !DILocation(line: 144, column: 58, scope: !1070, inlinedAt: !2753)
!2756 = !DILocation(line: 146, column: 17, scope: !1070, inlinedAt: !2753)
!2757 = !DILocation(line: 148, column: 57, scope: !1088, inlinedAt: !2753)
!2758 = !DILocation(line: 147, column: 17, scope: !1070, inlinedAt: !2753)
!2759 = !DILocation(line: 149, column: 7, scope: !1070, inlinedAt: !2753)
!2760 = !DILocation(line: 150, column: 12, scope: !1070, inlinedAt: !2753)
!2761 = !DILocation(line: 151, column: 6, scope: !1070, inlinedAt: !2753)
!2762 = !DILocation(line: 1005, column: 10, scope: !2728)
!2763 = !DILocation(line: 1006, column: 1, scope: !2728)
!2764 = !DILocation(line: 1005, column: 3, scope: !2728)
!2765 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !187, file: !187, line: 1009, type: !2766, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !145, variables: !2768)
!2766 = !DISubroutineType(types: !2767)
!2767 = !{!26, !24, !34, !34, !34}
!2768 = !{!2769, !2770, !2771, !2772}
!2769 = !DILocalVariable(name: "n", arg: 1, scope: !2765, file: !187, line: 1009, type: !24)
!2770 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2765, file: !187, line: 1009, type: !34)
!2771 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2765, file: !187, line: 1010, type: !34)
!2772 = !DILocalVariable(name: "arg", arg: 4, scope: !2765, file: !187, line: 1010, type: !34)
!2773 = !DILocation(line: 1009, column: 24, scope: !2765)
!2774 = !DILocation(line: 1009, column: 39, scope: !2765)
!2775 = !DILocation(line: 1010, column: 32, scope: !2765)
!2776 = !DILocation(line: 1010, column: 57, scope: !2765)
!2777 = !DILocalVariable(name: "n", arg: 1, scope: !2778, file: !187, line: 1017, type: !24)
!2778 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !187, file: !187, line: 1017, type: !2779, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !145, variables: !2781)
!2779 = !DISubroutineType(types: !2780)
!2780 = !{!26, !24, !34, !34, !34, !65}
!2781 = !{!2777, !2782, !2783, !2784, !2785, !2786}
!2782 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2778, file: !187, line: 1017, type: !34)
!2783 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2778, file: !187, line: 1018, type: !34)
!2784 = !DILocalVariable(name: "arg", arg: 4, scope: !2778, file: !187, line: 1019, type: !34)
!2785 = !DILocalVariable(name: "argsize", arg: 5, scope: !2778, file: !187, line: 1019, type: !65)
!2786 = !DILocalVariable(name: "o", scope: !2778, file: !187, line: 1021, type: !194)
!2787 = !DILocation(line: 1017, column: 28, scope: !2778, inlinedAt: !2788)
!2788 = distinct !DILocation(line: 1012, column: 10, scope: !2765)
!2789 = !DILocation(line: 1017, column: 43, scope: !2778, inlinedAt: !2788)
!2790 = !DILocation(line: 1018, column: 36, scope: !2778, inlinedAt: !2788)
!2791 = !DILocation(line: 1019, column: 36, scope: !2778, inlinedAt: !2788)
!2792 = !DILocation(line: 1019, column: 48, scope: !2778, inlinedAt: !2788)
!2793 = !DILocation(line: 1021, column: 3, scope: !2778, inlinedAt: !2788)
!2794 = !DILocation(line: 1021, column: 30, scope: !2778, inlinedAt: !2788)
!2795 = !DILocation(line: 1021, column: 26, scope: !2778, inlinedAt: !2788)
!2796 = !DILocation(line: 171, column: 45, scope: !1120, inlinedAt: !2797)
!2797 = distinct !DILocation(line: 1022, column: 3, scope: !2778, inlinedAt: !2788)
!2798 = !DILocation(line: 172, column: 33, scope: !1120, inlinedAt: !2797)
!2799 = !DILocation(line: 172, column: 57, scope: !1120, inlinedAt: !2797)
!2800 = !DILocation(line: 176, column: 6, scope: !1120, inlinedAt: !2797)
!2801 = !DILocation(line: 176, column: 12, scope: !1120, inlinedAt: !2797)
!2802 = !DILocation(line: 177, column: 8, scope: !1136, inlinedAt: !2797)
!2803 = !DILocation(line: 177, column: 23, scope: !1138, inlinedAt: !2797)
!2804 = !DILocation(line: 177, column: 19, scope: !1136, inlinedAt: !2797)
!2805 = !DILocation(line: 178, column: 5, scope: !1136, inlinedAt: !2797)
!2806 = !DILocation(line: 179, column: 6, scope: !1120, inlinedAt: !2797)
!2807 = !DILocation(line: 179, column: 17, scope: !1120, inlinedAt: !2797)
!2808 = !DILocation(line: 180, column: 6, scope: !1120, inlinedAt: !2797)
!2809 = !DILocation(line: 180, column: 18, scope: !1120, inlinedAt: !2797)
!2810 = !DILocation(line: 1023, column: 10, scope: !2778, inlinedAt: !2788)
!2811 = !DILocation(line: 1024, column: 1, scope: !2778, inlinedAt: !2788)
!2812 = !DILocation(line: 1012, column: 3, scope: !2765)
!2813 = !DILocation(line: 1017, column: 28, scope: !2778)
!2814 = !DILocation(line: 1017, column: 43, scope: !2778)
!2815 = !DILocation(line: 1018, column: 36, scope: !2778)
!2816 = !DILocation(line: 1019, column: 36, scope: !2778)
!2817 = !DILocation(line: 1019, column: 48, scope: !2778)
!2818 = !DILocation(line: 1021, column: 3, scope: !2778)
!2819 = !DILocation(line: 1021, column: 30, scope: !2778)
!2820 = !DILocation(line: 1021, column: 26, scope: !2778)
!2821 = !DILocation(line: 171, column: 45, scope: !1120, inlinedAt: !2822)
!2822 = distinct !DILocation(line: 1022, column: 3, scope: !2778)
!2823 = !DILocation(line: 172, column: 33, scope: !1120, inlinedAt: !2822)
!2824 = !DILocation(line: 172, column: 57, scope: !1120, inlinedAt: !2822)
!2825 = !DILocation(line: 176, column: 6, scope: !1120, inlinedAt: !2822)
!2826 = !DILocation(line: 176, column: 12, scope: !1120, inlinedAt: !2822)
!2827 = !DILocation(line: 177, column: 8, scope: !1136, inlinedAt: !2822)
!2828 = !DILocation(line: 177, column: 23, scope: !1138, inlinedAt: !2822)
!2829 = !DILocation(line: 177, column: 19, scope: !1136, inlinedAt: !2822)
!2830 = !DILocation(line: 178, column: 5, scope: !1136, inlinedAt: !2822)
!2831 = !DILocation(line: 179, column: 6, scope: !1120, inlinedAt: !2822)
!2832 = !DILocation(line: 179, column: 17, scope: !1120, inlinedAt: !2822)
!2833 = !DILocation(line: 180, column: 6, scope: !1120, inlinedAt: !2822)
!2834 = !DILocation(line: 180, column: 18, scope: !1120, inlinedAt: !2822)
!2835 = !DILocation(line: 1023, column: 10, scope: !2778)
!2836 = !DILocation(line: 1024, column: 1, scope: !2778)
!2837 = !DILocation(line: 1023, column: 3, scope: !2778)
!2838 = distinct !DISubprogram(name: "quotearg_custom", scope: !187, file: !187, line: 1027, type: !2839, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !145, variables: !2841)
!2839 = !DISubroutineType(types: !2840)
!2840 = !{!26, !34, !34, !34}
!2841 = !{!2842, !2843, !2844}
!2842 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2838, file: !187, line: 1027, type: !34)
!2843 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2838, file: !187, line: 1027, type: !34)
!2844 = !DILocalVariable(name: "arg", arg: 3, scope: !2838, file: !187, line: 1028, type: !34)
!2845 = !DILocation(line: 1027, column: 30, scope: !2838)
!2846 = !DILocation(line: 1027, column: 54, scope: !2838)
!2847 = !DILocation(line: 1028, column: 30, scope: !2838)
!2848 = !DILocation(line: 1009, column: 24, scope: !2765, inlinedAt: !2849)
!2849 = distinct !DILocation(line: 1030, column: 10, scope: !2838)
!2850 = !DILocation(line: 1009, column: 39, scope: !2765, inlinedAt: !2849)
!2851 = !DILocation(line: 1010, column: 32, scope: !2765, inlinedAt: !2849)
!2852 = !DILocation(line: 1010, column: 57, scope: !2765, inlinedAt: !2849)
!2853 = !DILocation(line: 1017, column: 28, scope: !2778, inlinedAt: !2854)
!2854 = distinct !DILocation(line: 1012, column: 10, scope: !2765, inlinedAt: !2849)
!2855 = !DILocation(line: 1017, column: 43, scope: !2778, inlinedAt: !2854)
!2856 = !DILocation(line: 1018, column: 36, scope: !2778, inlinedAt: !2854)
!2857 = !DILocation(line: 1019, column: 36, scope: !2778, inlinedAt: !2854)
!2858 = !DILocation(line: 1019, column: 48, scope: !2778, inlinedAt: !2854)
!2859 = !DILocation(line: 1021, column: 3, scope: !2778, inlinedAt: !2854)
!2860 = !DILocation(line: 1021, column: 30, scope: !2778, inlinedAt: !2854)
!2861 = !DILocation(line: 1021, column: 26, scope: !2778, inlinedAt: !2854)
!2862 = !DILocation(line: 171, column: 45, scope: !1120, inlinedAt: !2863)
!2863 = distinct !DILocation(line: 1022, column: 3, scope: !2778, inlinedAt: !2854)
!2864 = !DILocation(line: 172, column: 33, scope: !1120, inlinedAt: !2863)
!2865 = !DILocation(line: 172, column: 57, scope: !1120, inlinedAt: !2863)
!2866 = !DILocation(line: 176, column: 6, scope: !1120, inlinedAt: !2863)
!2867 = !DILocation(line: 176, column: 12, scope: !1120, inlinedAt: !2863)
!2868 = !DILocation(line: 177, column: 8, scope: !1136, inlinedAt: !2863)
!2869 = !DILocation(line: 177, column: 23, scope: !1138, inlinedAt: !2863)
!2870 = !DILocation(line: 177, column: 19, scope: !1136, inlinedAt: !2863)
!2871 = !DILocation(line: 178, column: 5, scope: !1136, inlinedAt: !2863)
!2872 = !DILocation(line: 179, column: 6, scope: !1120, inlinedAt: !2863)
!2873 = !DILocation(line: 179, column: 17, scope: !1120, inlinedAt: !2863)
!2874 = !DILocation(line: 180, column: 6, scope: !1120, inlinedAt: !2863)
!2875 = !DILocation(line: 180, column: 18, scope: !1120, inlinedAt: !2863)
!2876 = !DILocation(line: 1023, column: 10, scope: !2778, inlinedAt: !2854)
!2877 = !DILocation(line: 1024, column: 1, scope: !2778, inlinedAt: !2854)
!2878 = !DILocation(line: 1030, column: 3, scope: !2838)
!2879 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !187, file: !187, line: 1034, type: !2880, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !145, variables: !2882)
!2880 = !DISubroutineType(types: !2881)
!2881 = !{!26, !34, !34, !34, !65}
!2882 = !{!2883, !2884, !2885, !2886}
!2883 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2879, file: !187, line: 1034, type: !34)
!2884 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2879, file: !187, line: 1034, type: !34)
!2885 = !DILocalVariable(name: "arg", arg: 3, scope: !2879, file: !187, line: 1035, type: !34)
!2886 = !DILocalVariable(name: "argsize", arg: 4, scope: !2879, file: !187, line: 1035, type: !65)
!2887 = !DILocation(line: 1034, column: 34, scope: !2879)
!2888 = !DILocation(line: 1034, column: 58, scope: !2879)
!2889 = !DILocation(line: 1035, column: 34, scope: !2879)
!2890 = !DILocation(line: 1035, column: 46, scope: !2879)
!2891 = !DILocation(line: 1017, column: 28, scope: !2778, inlinedAt: !2892)
!2892 = distinct !DILocation(line: 1037, column: 10, scope: !2879)
!2893 = !DILocation(line: 1017, column: 43, scope: !2778, inlinedAt: !2892)
!2894 = !DILocation(line: 1018, column: 36, scope: !2778, inlinedAt: !2892)
!2895 = !DILocation(line: 1019, column: 36, scope: !2778, inlinedAt: !2892)
!2896 = !DILocation(line: 1019, column: 48, scope: !2778, inlinedAt: !2892)
!2897 = !DILocation(line: 1021, column: 3, scope: !2778, inlinedAt: !2892)
!2898 = !DILocation(line: 1021, column: 30, scope: !2778, inlinedAt: !2892)
!2899 = !DILocation(line: 1021, column: 26, scope: !2778, inlinedAt: !2892)
!2900 = !DILocation(line: 171, column: 45, scope: !1120, inlinedAt: !2901)
!2901 = distinct !DILocation(line: 1022, column: 3, scope: !2778, inlinedAt: !2892)
!2902 = !DILocation(line: 172, column: 33, scope: !1120, inlinedAt: !2901)
!2903 = !DILocation(line: 172, column: 57, scope: !1120, inlinedAt: !2901)
!2904 = !DILocation(line: 176, column: 6, scope: !1120, inlinedAt: !2901)
!2905 = !DILocation(line: 176, column: 12, scope: !1120, inlinedAt: !2901)
!2906 = !DILocation(line: 177, column: 8, scope: !1136, inlinedAt: !2901)
!2907 = !DILocation(line: 177, column: 23, scope: !1138, inlinedAt: !2901)
!2908 = !DILocation(line: 177, column: 19, scope: !1136, inlinedAt: !2901)
!2909 = !DILocation(line: 178, column: 5, scope: !1136, inlinedAt: !2901)
!2910 = !DILocation(line: 179, column: 6, scope: !1120, inlinedAt: !2901)
!2911 = !DILocation(line: 179, column: 17, scope: !1120, inlinedAt: !2901)
!2912 = !DILocation(line: 180, column: 6, scope: !1120, inlinedAt: !2901)
!2913 = !DILocation(line: 180, column: 18, scope: !1120, inlinedAt: !2901)
!2914 = !DILocation(line: 1023, column: 10, scope: !2778, inlinedAt: !2892)
!2915 = !DILocation(line: 1024, column: 1, scope: !2778, inlinedAt: !2892)
!2916 = !DILocation(line: 1037, column: 3, scope: !2879)
!2917 = distinct !DISubprogram(name: "quote_n_mem", scope: !187, file: !187, line: 1052, type: !2918, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !145, variables: !2920)
!2918 = !DISubroutineType(types: !2919)
!2919 = !{!34, !24, !34, !65}
!2920 = !{!2921, !2922, !2923}
!2921 = !DILocalVariable(name: "n", arg: 1, scope: !2917, file: !187, line: 1052, type: !24)
!2922 = !DILocalVariable(name: "arg", arg: 2, scope: !2917, file: !187, line: 1052, type: !34)
!2923 = !DILocalVariable(name: "argsize", arg: 3, scope: !2917, file: !187, line: 1052, type: !65)
!2924 = !DILocation(line: 1052, column: 18, scope: !2917)
!2925 = !DILocation(line: 1052, column: 33, scope: !2917)
!2926 = !DILocation(line: 1052, column: 45, scope: !2917)
!2927 = !DILocation(line: 1054, column: 10, scope: !2917)
!2928 = !DILocation(line: 1054, column: 3, scope: !2917)
!2929 = distinct !DISubprogram(name: "quote_mem", scope: !187, file: !187, line: 1058, type: !2930, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !145, variables: !2932)
!2930 = !DISubroutineType(types: !2931)
!2931 = !{!34, !34, !65}
!2932 = !{!2933, !2934}
!2933 = !DILocalVariable(name: "arg", arg: 1, scope: !2929, file: !187, line: 1058, type: !34)
!2934 = !DILocalVariable(name: "argsize", arg: 2, scope: !2929, file: !187, line: 1058, type: !65)
!2935 = !DILocation(line: 1058, column: 24, scope: !2929)
!2936 = !DILocation(line: 1058, column: 36, scope: !2929)
!2937 = !DILocation(line: 1052, column: 18, scope: !2917, inlinedAt: !2938)
!2938 = distinct !DILocation(line: 1060, column: 10, scope: !2929)
!2939 = !DILocation(line: 1052, column: 33, scope: !2917, inlinedAt: !2938)
!2940 = !DILocation(line: 1052, column: 45, scope: !2917, inlinedAt: !2938)
!2941 = !DILocation(line: 1054, column: 10, scope: !2917, inlinedAt: !2938)
!2942 = !DILocation(line: 1060, column: 3, scope: !2929)
!2943 = distinct !DISubprogram(name: "quote_n", scope: !187, file: !187, line: 1064, type: !2944, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !145, variables: !2946)
!2944 = !DISubroutineType(types: !2945)
!2945 = !{!34, !24, !34}
!2946 = !{!2947, !2948}
!2947 = !DILocalVariable(name: "n", arg: 1, scope: !2943, file: !187, line: 1064, type: !24)
!2948 = !DILocalVariable(name: "arg", arg: 2, scope: !2943, file: !187, line: 1064, type: !34)
!2949 = !DILocation(line: 1064, column: 14, scope: !2943)
!2950 = !DILocation(line: 1064, column: 29, scope: !2943)
!2951 = !DILocation(line: 1052, column: 18, scope: !2917, inlinedAt: !2952)
!2952 = distinct !DILocation(line: 1066, column: 10, scope: !2943)
!2953 = !DILocation(line: 1052, column: 33, scope: !2917, inlinedAt: !2952)
!2954 = !DILocation(line: 1052, column: 45, scope: !2917, inlinedAt: !2952)
!2955 = !DILocation(line: 1054, column: 10, scope: !2917, inlinedAt: !2952)
!2956 = !DILocation(line: 1066, column: 3, scope: !2943)
!2957 = distinct !DISubprogram(name: "quote", scope: !187, file: !187, line: 1070, type: !2958, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !145, variables: !2960)
!2958 = !DISubroutineType(types: !2959)
!2959 = !{!34, !34}
!2960 = !{!2961}
!2961 = !DILocalVariable(name: "arg", arg: 1, scope: !2957, file: !187, line: 1070, type: !34)
!2962 = !DILocation(line: 1070, column: 20, scope: !2957)
!2963 = !DILocation(line: 1064, column: 14, scope: !2943, inlinedAt: !2964)
!2964 = distinct !DILocation(line: 1072, column: 10, scope: !2957)
!2965 = !DILocation(line: 1064, column: 29, scope: !2943, inlinedAt: !2964)
!2966 = !DILocation(line: 1052, column: 18, scope: !2917, inlinedAt: !2967)
!2967 = distinct !DILocation(line: 1066, column: 10, scope: !2943, inlinedAt: !2964)
!2968 = !DILocation(line: 1052, column: 33, scope: !2917, inlinedAt: !2967)
!2969 = !DILocation(line: 1052, column: 45, scope: !2917, inlinedAt: !2967)
!2970 = !DILocation(line: 1054, column: 10, scope: !2917, inlinedAt: !2967)
!2971 = !DILocation(line: 1072, column: 3, scope: !2957)
!2972 = distinct !DISubprogram(name: "version_etc_arn", scope: !587, file: !587, line: 62, type: !2973, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !583, variables: !3016)
!2973 = !DISubroutineType(types: !2974)
!2974 = !{null, !2975, !34, !34, !34, !3015, !65}
!2975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2976, size: 64)
!2976 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !858, line: 49, baseType: !2977)
!2977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !860, line: 241, size: 1728, elements: !2978)
!2978 = !{!2979, !2980, !2981, !2982, !2983, !2984, !2985, !2986, !2987, !2988, !2989, !2990, !2991, !2999, !3000, !3001, !3002, !3003, !3004, !3005, !3006, !3007, !3008, !3009, !3010, !3011, !3012, !3013, !3014}
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2977, file: !860, line: 242, baseType: !24, size: 32)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2977, file: !860, line: 247, baseType: !26, size: 64, offset: 64)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2977, file: !860, line: 248, baseType: !26, size: 64, offset: 128)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2977, file: !860, line: 249, baseType: !26, size: 64, offset: 192)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2977, file: !860, line: 250, baseType: !26, size: 64, offset: 256)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2977, file: !860, line: 251, baseType: !26, size: 64, offset: 320)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2977, file: !860, line: 252, baseType: !26, size: 64, offset: 384)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2977, file: !860, line: 253, baseType: !26, size: 64, offset: 448)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2977, file: !860, line: 254, baseType: !26, size: 64, offset: 512)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2977, file: !860, line: 256, baseType: !26, size: 64, offset: 576)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2977, file: !860, line: 257, baseType: !26, size: 64, offset: 640)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2977, file: !860, line: 258, baseType: !26, size: 64, offset: 704)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2977, file: !860, line: 260, baseType: !2992, size: 64, offset: 768)
!2992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2993, size: 64)
!2993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !860, line: 156, size: 192, elements: !2994)
!2994 = !{!2995, !2996, !2998}
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !2993, file: !860, line: 157, baseType: !2992, size: 64)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !2993, file: !860, line: 158, baseType: !2997, size: 64, offset: 64)
!2997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2977, size: 64)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !2993, file: !860, line: 162, baseType: !24, size: 32, offset: 128)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2977, file: !860, line: 262, baseType: !2997, size: 64, offset: 832)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2977, file: !860, line: 264, baseType: !24, size: 32, offset: 896)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2977, file: !860, line: 268, baseType: !24, size: 32, offset: 928)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2977, file: !860, line: 270, baseType: !886, size: 64, offset: 960)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2977, file: !860, line: 274, baseType: !183, size: 16, offset: 1024)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2977, file: !860, line: 275, baseType: !890, size: 8, offset: 1040)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2977, file: !860, line: 276, baseType: !892, size: 8, offset: 1048)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2977, file: !860, line: 280, baseType: !896, size: 64, offset: 1088)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2977, file: !860, line: 289, baseType: !899, size: 64, offset: 1152)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !2977, file: !860, line: 297, baseType: !64, size: 64, offset: 1216)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !2977, file: !860, line: 298, baseType: !64, size: 64, offset: 1280)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !2977, file: !860, line: 299, baseType: !64, size: 64, offset: 1344)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !2977, file: !860, line: 300, baseType: !64, size: 64, offset: 1408)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2977, file: !860, line: 302, baseType: !65, size: 64, offset: 1472)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2977, file: !860, line: 303, baseType: !24, size: 32, offset: 1536)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2977, file: !860, line: 305, baseType: !907, size: 160, offset: 1568)
!3015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!3016 = !{!3017, !3018, !3019, !3020, !3021, !3022}
!3017 = !DILocalVariable(name: "stream", arg: 1, scope: !2972, file: !587, line: 62, type: !2975)
!3018 = !DILocalVariable(name: "command_name", arg: 2, scope: !2972, file: !587, line: 63, type: !34)
!3019 = !DILocalVariable(name: "package", arg: 3, scope: !2972, file: !587, line: 63, type: !34)
!3020 = !DILocalVariable(name: "version", arg: 4, scope: !2972, file: !587, line: 64, type: !34)
!3021 = !DILocalVariable(name: "authors", arg: 5, scope: !2972, file: !587, line: 65, type: !3015)
!3022 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2972, file: !587, line: 65, type: !65)
!3023 = !DILocation(line: 62, column: 24, scope: !2972)
!3024 = !DILocation(line: 63, column: 30, scope: !2972)
!3025 = !DILocation(line: 63, column: 56, scope: !2972)
!3026 = !DILocation(line: 64, column: 30, scope: !2972)
!3027 = !DILocation(line: 65, column: 39, scope: !2972)
!3028 = !DILocation(line: 65, column: 55, scope: !2972)
!3029 = !DILocation(line: 67, column: 7, scope: !3030)
!3030 = distinct !DILexicalBlock(scope: !2972, file: !587, line: 67, column: 7)
!3031 = !DILocation(line: 67, column: 7, scope: !2972)
!3032 = !DILocation(line: 68, column: 5, scope: !3030)
!3033 = !DILocation(line: 70, column: 5, scope: !3030)
!3034 = !DILocation(line: 84, column: 3, scope: !2972)
!3035 = !DILocation(line: 84, column: 3, scope: !3036)
!3036 = !DILexicalBlockFile(scope: !2972, file: !587, discriminator: 1)
!3037 = !DILocation(line: 86, column: 3, scope: !2972)
!3038 = !DILocation(line: 86, column: 3, scope: !3036)
!3039 = !DILocation(line: 95, column: 3, scope: !2972)
!3040 = !DILocation(line: 99, column: 7, scope: !3041)
!3041 = distinct !DILexicalBlock(scope: !2972, file: !587, line: 96, column: 5)
!3042 = !DILocation(line: 102, column: 7, scope: !3041)
!3043 = !DILocation(line: 102, column: 7, scope: !3044)
!3044 = !DILexicalBlockFile(scope: !3041, file: !587, discriminator: 1)
!3045 = !DILocation(line: 103, column: 7, scope: !3041)
!3046 = !DILocation(line: 106, column: 7, scope: !3041)
!3047 = !DILocation(line: 106, column: 7, scope: !3044)
!3048 = !DILocation(line: 107, column: 7, scope: !3041)
!3049 = !DILocation(line: 110, column: 7, scope: !3041)
!3050 = !DILocation(line: 110, column: 7, scope: !3044)
!3051 = !DILocation(line: 112, column: 7, scope: !3041)
!3052 = !DILocation(line: 117, column: 7, scope: !3041)
!3053 = !DILocation(line: 117, column: 7, scope: !3044)
!3054 = !DILocation(line: 119, column: 7, scope: !3041)
!3055 = !DILocation(line: 124, column: 7, scope: !3041)
!3056 = !DILocation(line: 124, column: 7, scope: !3044)
!3057 = !DILocation(line: 126, column: 7, scope: !3041)
!3058 = !DILocation(line: 131, column: 7, scope: !3041)
!3059 = !DILocation(line: 131, column: 7, scope: !3044)
!3060 = !DILocation(line: 134, column: 7, scope: !3041)
!3061 = !DILocation(line: 139, column: 7, scope: !3041)
!3062 = !DILocation(line: 139, column: 7, scope: !3044)
!3063 = !DILocation(line: 142, column: 7, scope: !3041)
!3064 = !DILocation(line: 147, column: 7, scope: !3041)
!3065 = !DILocation(line: 147, column: 7, scope: !3044)
!3066 = !DILocation(line: 151, column: 7, scope: !3041)
!3067 = !DILocation(line: 156, column: 7, scope: !3041)
!3068 = !DILocation(line: 156, column: 7, scope: !3044)
!3069 = !DILocation(line: 160, column: 7, scope: !3041)
!3070 = !DILocation(line: 167, column: 7, scope: !3041)
!3071 = !DILocation(line: 167, column: 7, scope: !3044)
!3072 = !DILocation(line: 171, column: 7, scope: !3041)
!3073 = !DILocation(line: 173, column: 1, scope: !2972)
!3074 = distinct !DISubprogram(name: "version_etc_ar", scope: !587, file: !587, line: 180, type: !3075, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !583, variables: !3077)
!3075 = !DISubroutineType(types: !3076)
!3076 = !{null, !2975, !34, !34, !34, !3015}
!3077 = !{!3078, !3079, !3080, !3081, !3082, !3083}
!3078 = !DILocalVariable(name: "stream", arg: 1, scope: !3074, file: !587, line: 180, type: !2975)
!3079 = !DILocalVariable(name: "command_name", arg: 2, scope: !3074, file: !587, line: 181, type: !34)
!3080 = !DILocalVariable(name: "package", arg: 3, scope: !3074, file: !587, line: 181, type: !34)
!3081 = !DILocalVariable(name: "version", arg: 4, scope: !3074, file: !587, line: 182, type: !34)
!3082 = !DILocalVariable(name: "authors", arg: 5, scope: !3074, file: !587, line: 182, type: !3015)
!3083 = !DILocalVariable(name: "n_authors", scope: !3074, file: !587, line: 184, type: !65)
!3084 = !DILocation(line: 180, column: 23, scope: !3074)
!3085 = !DILocation(line: 181, column: 29, scope: !3074)
!3086 = !DILocation(line: 181, column: 55, scope: !3074)
!3087 = !DILocation(line: 182, column: 29, scope: !3074)
!3088 = !DILocation(line: 182, column: 59, scope: !3074)
!3089 = !DILocation(line: 184, column: 10, scope: !3074)
!3090 = !DILocation(line: 186, column: 8, scope: !3091)
!3091 = distinct !DILexicalBlock(scope: !3074, file: !587, line: 186, column: 3)
!3092 = !DILocation(line: 186, column: 23, scope: !3093)
!3093 = !DILexicalBlockFile(scope: !3094, file: !587, discriminator: 1)
!3094 = distinct !DILexicalBlock(scope: !3091, file: !587, line: 186, column: 3)
!3095 = !DILocation(line: 186, column: 3, scope: !3096)
!3096 = !DILexicalBlockFile(scope: !3091, file: !587, discriminator: 1)
!3097 = !DILocation(line: 186, column: 52, scope: !3098)
!3098 = !DILexicalBlockFile(scope: !3094, file: !587, discriminator: 3)
!3099 = distinct !{!3099, !3100, !3101}
!3100 = !DILocation(line: 186, column: 3, scope: !3091)
!3101 = !DILocation(line: 187, column: 5, scope: !3091)
!3102 = !DILocation(line: 188, column: 3, scope: !3074)
!3103 = !DILocation(line: 189, column: 1, scope: !3074)
!3104 = distinct !DISubprogram(name: "version_etc_va", scope: !587, file: !587, line: 196, type: !3105, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !583, variables: !3114)
!3105 = !DISubroutineType(types: !3106)
!3106 = !{null, !2975, !34, !34, !34, !3107}
!3107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3108, size: 64)
!3108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !584, line: 189, size: 192, elements: !3109)
!3109 = !{!3110, !3111, !3112, !3113}
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3108, file: !584, line: 189, baseType: !63, size: 32)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3108, file: !584, line: 189, baseType: !63, size: 32, offset: 32)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3108, file: !584, line: 189, baseType: !64, size: 64, offset: 64)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3108, file: !584, line: 189, baseType: !64, size: 64, offset: 128)
!3114 = !{!3115, !3116, !3117, !3118, !3119, !3120, !3121}
!3115 = !DILocalVariable(name: "stream", arg: 1, scope: !3104, file: !587, line: 196, type: !2975)
!3116 = !DILocalVariable(name: "command_name", arg: 2, scope: !3104, file: !587, line: 197, type: !34)
!3117 = !DILocalVariable(name: "package", arg: 3, scope: !3104, file: !587, line: 197, type: !34)
!3118 = !DILocalVariable(name: "version", arg: 4, scope: !3104, file: !587, line: 198, type: !34)
!3119 = !DILocalVariable(name: "authors", arg: 5, scope: !3104, file: !587, line: 198, type: !3107)
!3120 = !DILocalVariable(name: "n_authors", scope: !3104, file: !587, line: 200, type: !65)
!3121 = !DILocalVariable(name: "authtab", scope: !3104, file: !587, line: 201, type: !3122)
!3122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 640, elements: !190)
!3123 = !DILocation(line: 196, column: 23, scope: !3104)
!3124 = !DILocation(line: 197, column: 29, scope: !3104)
!3125 = !DILocation(line: 197, column: 55, scope: !3104)
!3126 = !DILocation(line: 198, column: 29, scope: !3104)
!3127 = !DILocation(line: 198, column: 46, scope: !3104)
!3128 = !DILocation(line: 201, column: 3, scope: !3104)
!3129 = !DILocation(line: 201, column: 15, scope: !3104)
!3130 = !DILocation(line: 200, column: 10, scope: !3104)
!3131 = !DILocation(line: 205, column: 35, scope: !3132)
!3132 = !DILexicalBlockFile(scope: !3133, file: !587, discriminator: 1)
!3133 = distinct !DILexicalBlock(scope: !3134, file: !587, line: 203, column: 3)
!3134 = distinct !DILexicalBlock(scope: !3104, file: !587, line: 203, column: 3)
!3135 = !DILocation(line: 205, column: 35, scope: !3136)
!3136 = !DILexicalBlockFile(scope: !3133, file: !587, discriminator: 2)
!3137 = !DILocation(line: 205, column: 35, scope: !3138)
!3138 = !DILexicalBlockFile(scope: !3133, file: !587, discriminator: 3)
!3139 = !DILocation(line: 205, column: 35, scope: !3140)
!3140 = !DILexicalBlockFile(scope: !3133, file: !587, discriminator: 4)
!3141 = !DILocation(line: 205, column: 14, scope: !3140)
!3142 = !DILocation(line: 205, column: 33, scope: !3140)
!3143 = !DILocation(line: 205, column: 67, scope: !3140)
!3144 = !DILocation(line: 203, column: 3, scope: !3145)
!3145 = !DILexicalBlockFile(scope: !3134, file: !587, discriminator: 1)
!3146 = !DILocation(line: 208, column: 3, scope: !3104)
!3147 = !DILocation(line: 210, column: 1, scope: !3104)
!3148 = distinct !DISubprogram(name: "version_etc", scope: !587, file: !587, line: 227, type: !3149, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !583, variables: !3151)
!3149 = !DISubroutineType(types: !3150)
!3150 = !{null, !2975, !34, !34, !34, null}
!3151 = !{!3152, !3153, !3154, !3155, !3156}
!3152 = !DILocalVariable(name: "stream", arg: 1, scope: !3148, file: !587, line: 227, type: !2975)
!3153 = !DILocalVariable(name: "command_name", arg: 2, scope: !3148, file: !587, line: 228, type: !34)
!3154 = !DILocalVariable(name: "package", arg: 3, scope: !3148, file: !587, line: 228, type: !34)
!3155 = !DILocalVariable(name: "version", arg: 4, scope: !3148, file: !587, line: 229, type: !34)
!3156 = !DILocalVariable(name: "authors", scope: !3148, file: !587, line: 231, type: !3157)
!3157 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !858, line: 80, baseType: !3158)
!3158 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3159, line: 50, baseType: !3160)
!3159 = !DIFile(filename: "/usr/bin/../lib/clang/4.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3160 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !584, line: 231, baseType: !3161)
!3161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3108, size: 192, elements: !893)
!3162 = !DILocation(line: 227, column: 20, scope: !3148)
!3163 = !DILocation(line: 228, column: 26, scope: !3148)
!3164 = !DILocation(line: 228, column: 52, scope: !3148)
!3165 = !DILocation(line: 229, column: 26, scope: !3148)
!3166 = !DILocation(line: 231, column: 3, scope: !3148)
!3167 = !DILocation(line: 231, column: 11, scope: !3148)
!3168 = !DILocation(line: 233, column: 3, scope: !3148)
!3169 = !DILocation(line: 234, column: 3, scope: !3148)
!3170 = !DILocation(line: 235, column: 3, scope: !3148)
!3171 = !DILocation(line: 236, column: 1, scope: !3148)
!3172 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !587, file: !587, line: 239, type: !664, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !583, variables: !119)
!3173 = !DILocation(line: 245, column: 3, scope: !3172)
!3174 = !DILocation(line: 245, column: 3, scope: !3175)
!3175 = !DILexicalBlockFile(scope: !3172, file: !587, discriminator: 1)
!3176 = !DILocation(line: 251, column: 3, scope: !3172)
!3177 = !DILocation(line: 251, column: 3, scope: !3175)
!3178 = !DILocation(line: 256, column: 3, scope: !3172)
!3179 = !DILocation(line: 256, column: 3, scope: !3175)
!3180 = !DILocation(line: 258, column: 1, scope: !3172)
!3181 = distinct !DISubprogram(name: "xnmalloc", scope: !595, file: !595, line: 105, type: !3182, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !591, variables: !3184)
!3182 = !DISubroutineType(types: !3183)
!3183 = !{!64, !65, !65}
!3184 = !{!3185, !3186}
!3185 = !DILocalVariable(name: "n", arg: 1, scope: !3181, file: !595, line: 105, type: !65)
!3186 = !DILocalVariable(name: "s", arg: 2, scope: !3181, file: !595, line: 105, type: !65)
!3187 = !DILocation(line: 105, column: 18, scope: !3181)
!3188 = !DILocation(line: 105, column: 28, scope: !3181)
!3189 = !DILocation(line: 107, column: 7, scope: !3190)
!3190 = distinct !DILexicalBlock(scope: !3181, file: !595, line: 107, column: 7)
!3191 = !DILocation(line: 107, column: 7, scope: !3181)
!3192 = !DILocation(line: 108, column: 5, scope: !3190)
!3193 = !DILocation(line: 109, column: 21, scope: !3181)
!3194 = !DILocalVariable(name: "n", arg: 1, scope: !3195, file: !3196, line: 39, type: !65)
!3195 = distinct !DISubprogram(name: "xmalloc", scope: !3196, file: !3196, line: 39, type: !3197, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !591, variables: !3199)
!3196 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3197 = !DISubroutineType(types: !3198)
!3198 = !{!64, !65}
!3199 = !{!3194, !3200}
!3200 = !DILocalVariable(name: "p", scope: !3195, file: !3196, line: 41, type: !64)
!3201 = !DILocation(line: 39, column: 17, scope: !3195, inlinedAt: !3202)
!3202 = distinct !DILocation(line: 109, column: 10, scope: !3181)
!3203 = !DILocation(line: 41, column: 13, scope: !3195, inlinedAt: !3202)
!3204 = !DILocation(line: 41, column: 9, scope: !3195, inlinedAt: !3202)
!3205 = !DILocation(line: 42, column: 8, scope: !3206, inlinedAt: !3202)
!3206 = distinct !DILexicalBlock(scope: !3195, file: !3196, line: 42, column: 7)
!3207 = !DILocation(line: 42, column: 15, scope: !3208, inlinedAt: !3202)
!3208 = !DILexicalBlockFile(scope: !3206, file: !3196, discriminator: 1)
!3209 = !DILocation(line: 42, column: 10, scope: !3206, inlinedAt: !3202)
!3210 = !DILocation(line: 43, column: 5, scope: !3206, inlinedAt: !3202)
!3211 = !DILocation(line: 109, column: 3, scope: !3181)
!3212 = !DILocation(line: 39, column: 17, scope: !3195)
!3213 = !DILocation(line: 41, column: 13, scope: !3195)
!3214 = !DILocation(line: 41, column: 9, scope: !3195)
!3215 = !DILocation(line: 42, column: 8, scope: !3206)
!3216 = !DILocation(line: 42, column: 15, scope: !3208)
!3217 = !DILocation(line: 42, column: 10, scope: !3206)
!3218 = !DILocation(line: 43, column: 5, scope: !3206)
!3219 = !DILocation(line: 44, column: 3, scope: !3195)
!3220 = distinct !DISubprogram(name: "xnrealloc", scope: !595, file: !595, line: 118, type: !3221, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !591, variables: !3223)
!3221 = !DISubroutineType(types: !3222)
!3222 = !{!64, !64, !65, !65}
!3223 = !{!3224, !3225, !3226}
!3224 = !DILocalVariable(name: "p", arg: 1, scope: !3220, file: !595, line: 118, type: !64)
!3225 = !DILocalVariable(name: "n", arg: 2, scope: !3220, file: !595, line: 118, type: !65)
!3226 = !DILocalVariable(name: "s", arg: 3, scope: !3220, file: !595, line: 118, type: !65)
!3227 = !DILocation(line: 118, column: 18, scope: !3220)
!3228 = !DILocation(line: 118, column: 28, scope: !3220)
!3229 = !DILocation(line: 118, column: 38, scope: !3220)
!3230 = !DILocation(line: 120, column: 7, scope: !3231)
!3231 = distinct !DILexicalBlock(scope: !3220, file: !595, line: 120, column: 7)
!3232 = !DILocation(line: 120, column: 7, scope: !3220)
!3233 = !DILocation(line: 121, column: 5, scope: !3231)
!3234 = !DILocation(line: 122, column: 25, scope: !3220)
!3235 = !DILocalVariable(name: "p", arg: 1, scope: !3236, file: !3196, line: 51, type: !64)
!3236 = distinct !DISubprogram(name: "xrealloc", scope: !3196, file: !3196, line: 51, type: !3237, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !591, variables: !3239)
!3237 = !DISubroutineType(types: !3238)
!3238 = !{!64, !64, !65}
!3239 = !{!3235, !3240}
!3240 = !DILocalVariable(name: "n", arg: 2, scope: !3236, file: !3196, line: 51, type: !65)
!3241 = !DILocation(line: 51, column: 17, scope: !3236, inlinedAt: !3242)
!3242 = distinct !DILocation(line: 122, column: 10, scope: !3220)
!3243 = !DILocation(line: 51, column: 27, scope: !3236, inlinedAt: !3242)
!3244 = !DILocation(line: 53, column: 8, scope: !3245, inlinedAt: !3242)
!3245 = distinct !DILexicalBlock(scope: !3236, file: !3196, line: 53, column: 7)
!3246 = !DILocation(line: 53, column: 13, scope: !3247, inlinedAt: !3242)
!3247 = !DILexicalBlockFile(scope: !3245, file: !3196, discriminator: 1)
!3248 = !DILocation(line: 53, column: 10, scope: !3245, inlinedAt: !3242)
!3249 = !DILocation(line: 57, column: 7, scope: !3250, inlinedAt: !3242)
!3250 = distinct !DILexicalBlock(scope: !3245, file: !3196, line: 54, column: 5)
!3251 = !DILocation(line: 58, column: 7, scope: !3250, inlinedAt: !3242)
!3252 = !DILocation(line: 61, column: 7, scope: !3236, inlinedAt: !3242)
!3253 = !DILocation(line: 62, column: 8, scope: !3254, inlinedAt: !3242)
!3254 = distinct !DILexicalBlock(scope: !3236, file: !3196, line: 62, column: 7)
!3255 = !DILocation(line: 62, column: 13, scope: !3256, inlinedAt: !3242)
!3256 = !DILexicalBlockFile(scope: !3254, file: !3196, discriminator: 1)
!3257 = !DILocation(line: 62, column: 10, scope: !3254, inlinedAt: !3242)
!3258 = !DILocation(line: 63, column: 5, scope: !3254, inlinedAt: !3242)
!3259 = !DILocation(line: 122, column: 3, scope: !3220)
!3260 = !DILocation(line: 51, column: 17, scope: !3236)
!3261 = !DILocation(line: 51, column: 27, scope: !3236)
!3262 = !DILocation(line: 53, column: 8, scope: !3245)
!3263 = !DILocation(line: 53, column: 13, scope: !3247)
!3264 = !DILocation(line: 53, column: 10, scope: !3245)
!3265 = !DILocation(line: 57, column: 7, scope: !3250)
!3266 = !DILocation(line: 58, column: 7, scope: !3250)
!3267 = !DILocation(line: 61, column: 7, scope: !3236)
!3268 = !DILocation(line: 62, column: 8, scope: !3254)
!3269 = !DILocation(line: 62, column: 13, scope: !3256)
!3270 = !DILocation(line: 62, column: 10, scope: !3254)
!3271 = !DILocation(line: 63, column: 5, scope: !3254)
!3272 = !DILocation(line: 65, column: 1, scope: !3236)
!3273 = !DILocation(line: 180, column: 19, scope: !596)
!3274 = !DILocation(line: 180, column: 30, scope: !596)
!3275 = !DILocation(line: 180, column: 41, scope: !596)
!3276 = !DILocation(line: 182, column: 14, scope: !596)
!3277 = !DILocation(line: 182, column: 10, scope: !596)
!3278 = !DILocation(line: 184, column: 9, scope: !3279)
!3279 = distinct !DILexicalBlock(scope: !596, file: !595, line: 184, column: 7)
!3280 = !DILocation(line: 184, column: 7, scope: !596)
!3281 = !DILocation(line: 186, column: 13, scope: !3282)
!3282 = distinct !DILexicalBlock(scope: !3283, file: !595, line: 186, column: 11)
!3283 = distinct !DILexicalBlock(scope: !3279, file: !595, line: 185, column: 5)
!3284 = !DILocation(line: 186, column: 11, scope: !3283)
!3285 = !DILocation(line: 194, column: 30, scope: !3286)
!3286 = distinct !DILexicalBlock(scope: !3282, file: !595, line: 187, column: 9)
!3287 = !DILocation(line: 195, column: 16, scope: !3286)
!3288 = !DILocation(line: 195, column: 13, scope: !3286)
!3289 = !DILocation(line: 196, column: 9, scope: !3286)
!3290 = !DILocation(line: 204, column: 69, scope: !3291)
!3291 = distinct !DILexicalBlock(scope: !3292, file: !595, line: 204, column: 11)
!3292 = distinct !DILexicalBlock(scope: !3279, file: !595, line: 199, column: 5)
!3293 = !DILocation(line: 205, column: 11, scope: !3291)
!3294 = !DILocation(line: 204, column: 11, scope: !3292)
!3295 = !DILocation(line: 206, column: 9, scope: !3291)
!3296 = !DILocation(line: 210, column: 7, scope: !596)
!3297 = !DILocation(line: 211, column: 25, scope: !596)
!3298 = !DILocation(line: 51, column: 17, scope: !3236, inlinedAt: !3299)
!3299 = distinct !DILocation(line: 211, column: 10, scope: !596)
!3300 = !DILocation(line: 51, column: 27, scope: !3236, inlinedAt: !3299)
!3301 = !DILocation(line: 53, column: 10, scope: !3245, inlinedAt: !3299)
!3302 = !DILocation(line: 207, column: 14, scope: !3292)
!3303 = !DILocation(line: 207, column: 18, scope: !3292)
!3304 = !DILocation(line: 207, column: 9, scope: !3292)
!3305 = !DILocation(line: 53, column: 8, scope: !3245, inlinedAt: !3299)
!3306 = !DILocation(line: 57, column: 7, scope: !3250, inlinedAt: !3299)
!3307 = !DILocation(line: 58, column: 7, scope: !3250, inlinedAt: !3299)
!3308 = !DILocation(line: 61, column: 7, scope: !3236, inlinedAt: !3299)
!3309 = !DILocation(line: 62, column: 8, scope: !3254, inlinedAt: !3299)
!3310 = !DILocation(line: 62, column: 13, scope: !3256, inlinedAt: !3299)
!3311 = !DILocation(line: 62, column: 10, scope: !3254, inlinedAt: !3299)
!3312 = !DILocation(line: 63, column: 5, scope: !3254, inlinedAt: !3299)
!3313 = !DILocation(line: 211, column: 3, scope: !596)
!3314 = distinct !DISubprogram(name: "xcharalloc", scope: !595, file: !595, line: 220, type: !2246, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !591, variables: !3315)
!3315 = !{!3316}
!3316 = !DILocalVariable(name: "n", arg: 1, scope: !3314, file: !595, line: 220, type: !65)
!3317 = !DILocation(line: 220, column: 20, scope: !3314)
!3318 = !DILocation(line: 39, column: 17, scope: !3195, inlinedAt: !3319)
!3319 = distinct !DILocation(line: 222, column: 10, scope: !3314)
!3320 = !DILocation(line: 41, column: 13, scope: !3195, inlinedAt: !3319)
!3321 = !DILocation(line: 41, column: 9, scope: !3195, inlinedAt: !3319)
!3322 = !DILocation(line: 42, column: 8, scope: !3206, inlinedAt: !3319)
!3323 = !DILocation(line: 42, column: 15, scope: !3208, inlinedAt: !3319)
!3324 = !DILocation(line: 42, column: 10, scope: !3206, inlinedAt: !3319)
!3325 = !DILocation(line: 43, column: 5, scope: !3206, inlinedAt: !3319)
!3326 = !DILocation(line: 222, column: 3, scope: !3314)
!3327 = distinct !DISubprogram(name: "x2realloc", scope: !3196, file: !3196, line: 74, type: !3328, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !591, variables: !3330)
!3328 = !DISubroutineType(types: !3329)
!3329 = !{!64, !64, !599}
!3330 = !{!3331, !3332}
!3331 = !DILocalVariable(name: "p", arg: 1, scope: !3327, file: !3196, line: 74, type: !64)
!3332 = !DILocalVariable(name: "pn", arg: 2, scope: !3327, file: !3196, line: 74, type: !599)
!3333 = !DILocation(line: 74, column: 18, scope: !3327)
!3334 = !DILocation(line: 74, column: 29, scope: !3327)
!3335 = !DILocation(line: 180, column: 19, scope: !596, inlinedAt: !3336)
!3336 = distinct !DILocation(line: 76, column: 10, scope: !3327)
!3337 = !DILocation(line: 180, column: 30, scope: !596, inlinedAt: !3336)
!3338 = !DILocation(line: 180, column: 41, scope: !596, inlinedAt: !3336)
!3339 = !DILocation(line: 182, column: 14, scope: !596, inlinedAt: !3336)
!3340 = !DILocation(line: 182, column: 10, scope: !596, inlinedAt: !3336)
!3341 = !DILocation(line: 184, column: 9, scope: !3279, inlinedAt: !3336)
!3342 = !DILocation(line: 184, column: 7, scope: !596, inlinedAt: !3336)
!3343 = !DILocation(line: 186, column: 13, scope: !3282, inlinedAt: !3336)
!3344 = !DILocation(line: 186, column: 11, scope: !3283, inlinedAt: !3336)
!3345 = !DILocation(line: 210, column: 7, scope: !596, inlinedAt: !3336)
!3346 = !DILocation(line: 51, column: 17, scope: !3236, inlinedAt: !3347)
!3347 = distinct !DILocation(line: 211, column: 10, scope: !596, inlinedAt: !3336)
!3348 = !DILocation(line: 51, column: 27, scope: !3236, inlinedAt: !3347)
!3349 = !DILocation(line: 53, column: 10, scope: !3245, inlinedAt: !3347)
!3350 = !DILocation(line: 205, column: 11, scope: !3291, inlinedAt: !3336)
!3351 = !DILocation(line: 204, column: 11, scope: !3292, inlinedAt: !3336)
!3352 = !DILocation(line: 206, column: 9, scope: !3291, inlinedAt: !3336)
!3353 = !DILocation(line: 207, column: 14, scope: !3292, inlinedAt: !3336)
!3354 = !DILocation(line: 207, column: 18, scope: !3292, inlinedAt: !3336)
!3355 = !DILocation(line: 207, column: 9, scope: !3292, inlinedAt: !3336)
!3356 = !DILocation(line: 53, column: 8, scope: !3245, inlinedAt: !3347)
!3357 = !DILocation(line: 57, column: 7, scope: !3250, inlinedAt: !3347)
!3358 = !DILocation(line: 58, column: 7, scope: !3250, inlinedAt: !3347)
!3359 = !DILocation(line: 61, column: 7, scope: !3236, inlinedAt: !3347)
!3360 = !DILocation(line: 62, column: 8, scope: !3254, inlinedAt: !3347)
!3361 = !DILocation(line: 62, column: 13, scope: !3256, inlinedAt: !3347)
!3362 = !DILocation(line: 62, column: 10, scope: !3254, inlinedAt: !3347)
!3363 = !DILocation(line: 63, column: 5, scope: !3254, inlinedAt: !3347)
!3364 = !DILocation(line: 76, column: 3, scope: !3327)
!3365 = distinct !DISubprogram(name: "xzalloc", scope: !3196, file: !3196, line: 84, type: !3197, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !591, variables: !3366)
!3366 = !{!3367}
!3367 = !DILocalVariable(name: "s", arg: 1, scope: !3365, file: !3196, line: 84, type: !65)
!3368 = !DILocation(line: 84, column: 17, scope: !3365)
!3369 = !DILocation(line: 39, column: 17, scope: !3195, inlinedAt: !3370)
!3370 = distinct !DILocation(line: 86, column: 18, scope: !3365)
!3371 = !DILocation(line: 41, column: 13, scope: !3195, inlinedAt: !3370)
!3372 = !DILocation(line: 41, column: 9, scope: !3195, inlinedAt: !3370)
!3373 = !DILocation(line: 42, column: 8, scope: !3206, inlinedAt: !3370)
!3374 = !DILocation(line: 42, column: 15, scope: !3208, inlinedAt: !3370)
!3375 = !DILocation(line: 42, column: 10, scope: !3206, inlinedAt: !3370)
!3376 = !DILocation(line: 43, column: 5, scope: !3206, inlinedAt: !3370)
!3377 = !DILocation(line: 86, column: 10, scope: !3365)
!3378 = !DILocation(line: 86, column: 3, scope: !3365)
!3379 = distinct !DISubprogram(name: "xcalloc", scope: !3196, file: !3196, line: 93, type: !3182, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !591, variables: !3380)
!3380 = !{!3381, !3382, !3383}
!3381 = !DILocalVariable(name: "n", arg: 1, scope: !3379, file: !3196, line: 93, type: !65)
!3382 = !DILocalVariable(name: "s", arg: 2, scope: !3379, file: !3196, line: 93, type: !65)
!3383 = !DILocalVariable(name: "p", scope: !3379, file: !3196, line: 95, type: !64)
!3384 = !DILocation(line: 93, column: 17, scope: !3379)
!3385 = !DILocation(line: 93, column: 27, scope: !3379)
!3386 = !DILocation(line: 100, column: 7, scope: !3387)
!3387 = distinct !DILexicalBlock(scope: !3379, file: !3196, line: 100, column: 7)
!3388 = !DILocation(line: 101, column: 7, scope: !3387)
!3389 = !DILocation(line: 101, column: 18, scope: !3390)
!3390 = !DILexicalBlockFile(scope: !3387, file: !3196, discriminator: 1)
!3391 = !DILocation(line: 95, column: 9, scope: !3379)
!3392 = !DILocation(line: 101, column: 16, scope: !3390)
!3393 = !DILocation(line: 100, column: 7, scope: !3394)
!3394 = !DILexicalBlockFile(scope: !3379, file: !3196, discriminator: 1)
!3395 = !DILocation(line: 102, column: 5, scope: !3387)
!3396 = !DILocation(line: 103, column: 3, scope: !3379)
!3397 = distinct !DISubprogram(name: "xmemdup", scope: !3196, file: !3196, line: 111, type: !3398, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !591, variables: !3400)
!3398 = !DISubroutineType(types: !3399)
!3399 = !{!64, !68, !65}
!3400 = !{!3401, !3402}
!3401 = !DILocalVariable(name: "p", arg: 1, scope: !3397, file: !3196, line: 111, type: !68)
!3402 = !DILocalVariable(name: "s", arg: 2, scope: !3397, file: !3196, line: 111, type: !65)
!3403 = !DILocation(line: 111, column: 22, scope: !3397)
!3404 = !DILocation(line: 111, column: 32, scope: !3397)
!3405 = !DILocation(line: 39, column: 17, scope: !3195, inlinedAt: !3406)
!3406 = distinct !DILocation(line: 113, column: 18, scope: !3397)
!3407 = !DILocation(line: 41, column: 13, scope: !3195, inlinedAt: !3406)
!3408 = !DILocation(line: 41, column: 9, scope: !3195, inlinedAt: !3406)
!3409 = !DILocation(line: 42, column: 8, scope: !3206, inlinedAt: !3406)
!3410 = !DILocation(line: 42, column: 15, scope: !3208, inlinedAt: !3406)
!3411 = !DILocation(line: 42, column: 10, scope: !3206, inlinedAt: !3406)
!3412 = !DILocation(line: 43, column: 5, scope: !3206, inlinedAt: !3406)
!3413 = !DILocation(line: 113, column: 10, scope: !3397)
!3414 = !DILocation(line: 113, column: 3, scope: !3397)
!3415 = distinct !DISubprogram(name: "xstrdup", scope: !3196, file: !3196, line: 119, type: !2451, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !591, variables: !3416)
!3416 = !{!3417}
!3417 = !DILocalVariable(name: "string", arg: 1, scope: !3415, file: !3196, line: 119, type: !34)
!3418 = !DILocation(line: 119, column: 22, scope: !3415)
!3419 = !DILocation(line: 121, column: 27, scope: !3415)
!3420 = !DILocation(line: 121, column: 43, scope: !3415)
!3421 = !DILocation(line: 111, column: 22, scope: !3397, inlinedAt: !3422)
!3422 = distinct !DILocation(line: 121, column: 10, scope: !3423)
!3423 = !DILexicalBlockFile(scope: !3415, file: !3196, discriminator: 1)
!3424 = !DILocation(line: 111, column: 32, scope: !3397, inlinedAt: !3422)
!3425 = !DILocation(line: 39, column: 17, scope: !3195, inlinedAt: !3426)
!3426 = distinct !DILocation(line: 113, column: 18, scope: !3397, inlinedAt: !3422)
!3427 = !DILocation(line: 41, column: 13, scope: !3195, inlinedAt: !3426)
!3428 = !DILocation(line: 41, column: 9, scope: !3195, inlinedAt: !3426)
!3429 = !DILocation(line: 42, column: 8, scope: !3206, inlinedAt: !3426)
!3430 = !DILocation(line: 42, column: 15, scope: !3208, inlinedAt: !3426)
!3431 = !DILocation(line: 42, column: 10, scope: !3206, inlinedAt: !3426)
!3432 = !DILocation(line: 43, column: 5, scope: !3206, inlinedAt: !3426)
!3433 = !DILocation(line: 113, column: 10, scope: !3397, inlinedAt: !3422)
!3434 = !DILocation(line: 121, column: 3, scope: !3415)
!3435 = distinct !DISubprogram(name: "xalloc_die", scope: !3436, file: !3436, line: 32, type: !664, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !608, variables: !119)
!3436 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3437 = !DILocation(line: 34, column: 10, scope: !3435)
!3438 = !DILocation(line: 34, column: 33, scope: !3435)
!3439 = !DILocation(line: 34, column: 3, scope: !3440)
!3440 = !DILexicalBlockFile(scope: !3435, file: !3436, discriminator: 1)
!3441 = !DILocation(line: 40, column: 3, scope: !3435)
!3442 = distinct !DISubprogram(name: "xstrtol", scope: !3443, file: !3443, line: 88, type: !3444, isLocal: false, isDefinition: true, scopeLine: 90, flags: DIFlagPrototyped, isOptimized: true, unit: !610, variables: !3448)
!3443 = !DIFile(filename: "lib/xstrtol.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3444 = !DISubroutineType(types: !3445)
!3445 = !{!3446, !34, !25, !24, !3447, !34}
!3446 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !13, line: 39, baseType: !12)
!3447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!3448 = !{!3449, !3450, !3451, !3452, !3453, !3454, !3455, !3456, !3457, !3458, !3461, !3462}
!3449 = !DILocalVariable(name: "s", arg: 1, scope: !3442, file: !3443, line: 88, type: !34)
!3450 = !DILocalVariable(name: "ptr", arg: 2, scope: !3442, file: !3443, line: 88, type: !25)
!3451 = !DILocalVariable(name: "strtol_base", arg: 3, scope: !3442, file: !3443, line: 88, type: !24)
!3452 = !DILocalVariable(name: "val", arg: 4, scope: !3442, file: !3443, line: 89, type: !3447)
!3453 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !3442, file: !3443, line: 89, type: !34)
!3454 = !DILocalVariable(name: "t_ptr", scope: !3442, file: !3443, line: 91, type: !26)
!3455 = !DILocalVariable(name: "p", scope: !3442, file: !3443, line: 92, type: !25)
!3456 = !DILocalVariable(name: "tmp", scope: !3442, file: !3443, line: 93, type: !51)
!3457 = !DILocalVariable(name: "err", scope: !3442, file: !3443, line: 94, type: !3446)
!3458 = !DILocalVariable(name: "base", scope: !3459, file: !3443, line: 141, type: !24)
!3459 = distinct !DILexicalBlock(scope: !3460, file: !3443, line: 140, column: 5)
!3460 = distinct !DILexicalBlock(scope: !3442, file: !3443, line: 139, column: 7)
!3461 = !DILocalVariable(name: "suffixes", scope: !3459, file: !3443, line: 142, type: !24)
!3462 = !DILocalVariable(name: "overflow", scope: !3459, file: !3443, line: 143, type: !3446)
!3463 = !DILocation(line: 88, column: 24, scope: !3442)
!3464 = !DILocation(line: 88, column: 34, scope: !3442)
!3465 = !DILocation(line: 88, column: 43, scope: !3442)
!3466 = !DILocation(line: 89, column: 24, scope: !3442)
!3467 = !DILocation(line: 89, column: 41, scope: !3442)
!3468 = !DILocation(line: 91, column: 3, scope: !3442)
!3469 = !DILocation(line: 94, column: 16, scope: !3442)
!3470 = !DILocation(line: 96, column: 3, scope: !3471)
!3471 = distinct !DILexicalBlock(scope: !3472, file: !3443, line: 96, column: 3)
!3472 = distinct !DILexicalBlock(scope: !3442, file: !3443, line: 96, column: 3)
!3473 = !DILocation(line: 96, column: 3, scope: !3474)
!3474 = !DILexicalBlockFile(scope: !3471, file: !3443, discriminator: 3)
!3475 = !DILocation(line: 98, column: 8, scope: !3442)
!3476 = !DILocation(line: 92, column: 10, scope: !3442)
!3477 = !DILocation(line: 100, column: 3, scope: !3442)
!3478 = !DILocation(line: 100, column: 9, scope: !3442)
!3479 = !DILocation(line: 112, column: 9, scope: !3442)
!3480 = !DILocation(line: 93, column: 14, scope: !3442)
!3481 = !DILocation(line: 114, column: 7, scope: !3482)
!3482 = distinct !DILexicalBlock(scope: !3442, file: !3443, line: 114, column: 7)
!3483 = !DILocation(line: 114, column: 10, scope: !3482)
!3484 = !DILocation(line: 114, column: 7, scope: !3442)
!3485 = !DILocation(line: 118, column: 11, scope: !3486)
!3486 = distinct !DILexicalBlock(scope: !3487, file: !3443, line: 118, column: 11)
!3487 = distinct !DILexicalBlock(scope: !3482, file: !3443, line: 115, column: 5)
!3488 = !DILocation(line: 118, column: 26, scope: !3486)
!3489 = !DILocation(line: 118, column: 29, scope: !3490)
!3490 = !DILexicalBlockFile(scope: !3486, file: !3443, discriminator: 1)
!3491 = !DILocation(line: 118, column: 33, scope: !3490)
!3492 = !DILocation(line: 118, column: 36, scope: !3493)
!3493 = !DILexicalBlockFile(scope: !3486, file: !3443, discriminator: 5)
!3494 = !DILocation(line: 118, column: 11, scope: !3495)
!3495 = !DILexicalBlockFile(scope: !3487, file: !3443, discriminator: 5)
!3496 = !DILocation(line: 123, column: 12, scope: !3497)
!3497 = distinct !DILexicalBlock(scope: !3482, file: !3443, line: 123, column: 12)
!3498 = !DILocation(line: 123, column: 12, scope: !3482)
!3499 = !DILocation(line: 128, column: 5, scope: !3500)
!3500 = distinct !DILexicalBlock(scope: !3497, file: !3443, line: 124, column: 5)
!3501 = !DILocation(line: 133, column: 8, scope: !3502)
!3502 = distinct !DILexicalBlock(scope: !3442, file: !3443, line: 133, column: 7)
!3503 = !DILocation(line: 133, column: 7, scope: !3442)
!3504 = !DILocation(line: 135, column: 12, scope: !3505)
!3505 = distinct !DILexicalBlock(scope: !3502, file: !3443, line: 134, column: 5)
!3506 = !DILocation(line: 136, column: 7, scope: !3505)
!3507 = !DILocation(line: 139, column: 7, scope: !3460)
!3508 = !DILocation(line: 139, column: 11, scope: !3460)
!3509 = !DILocation(line: 139, column: 7, scope: !3442)
!3510 = !DILocation(line: 141, column: 11, scope: !3459)
!3511 = !DILocation(line: 142, column: 11, scope: !3459)
!3512 = !DILocation(line: 145, column: 12, scope: !3513)
!3513 = !DILexicalBlockFile(scope: !3514, file: !3443, discriminator: 3)
!3514 = distinct !DILexicalBlock(scope: !3459, file: !3443, line: 145, column: 11)
!3515 = !DILocation(line: 145, column: 11, scope: !3516)
!3516 = !DILexicalBlockFile(scope: !3459, file: !3443, discriminator: 3)
!3517 = !DILocation(line: 147, column: 16, scope: !3518)
!3518 = distinct !DILexicalBlock(scope: !3514, file: !3443, line: 146, column: 9)
!3519 = !DILocation(line: 148, column: 22, scope: !3518)
!3520 = !DILocation(line: 148, column: 11, scope: !3518)
!3521 = !DILocation(line: 151, column: 7, scope: !3459)
!3522 = !DILocation(line: 163, column: 15, scope: !3523)
!3523 = !DILexicalBlockFile(scope: !3524, file: !3443, discriminator: 2)
!3524 = distinct !DILexicalBlock(scope: !3525, file: !3443, line: 163, column: 15)
!3525 = distinct !DILexicalBlock(scope: !3459, file: !3443, line: 152, column: 9)
!3526 = !DILocation(line: 163, column: 15, scope: !3527)
!3527 = !DILexicalBlockFile(scope: !3525, file: !3443, discriminator: 2)
!3528 = !DILocation(line: 164, column: 21, scope: !3524)
!3529 = !DILocation(line: 164, column: 13, scope: !3524)
!3530 = !DILocation(line: 167, column: 21, scope: !3531)
!3531 = distinct !DILexicalBlock(scope: !3532, file: !3443, line: 167, column: 21)
!3532 = distinct !DILexicalBlock(scope: !3524, file: !3443, line: 165, column: 15)
!3533 = !DILocation(line: 167, column: 29, scope: !3531)
!3534 = !DILocation(line: 167, column: 21, scope: !3532)
!3535 = !DILocation(line: 175, column: 17, scope: !3532)
!3536 = !DILocation(line: 179, column: 7, scope: !3459)
!3537 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !3538, file: !3443, line: 60, type: !24)
!3538 = distinct !DISubprogram(name: "bkm_scale", scope: !3443, file: !3443, line: 60, type: !3539, isLocal: true, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, unit: !610, variables: !3541)
!3539 = !DISubroutineType(types: !3540)
!3540 = !{!3446, !3447, !24}
!3541 = !{!3542, !3537}
!3542 = !DILocalVariable(name: "x", arg: 1, scope: !3538, file: !3443, line: 60, type: !3447)
!3543 = !DILocation(line: 60, column: 31, scope: !3538, inlinedAt: !3544)
!3544 = distinct !DILocation(line: 182, column: 22, scope: !3545)
!3545 = distinct !DILexicalBlock(scope: !3459, file: !3443, line: 180, column: 9)
!3546 = !DILocation(line: 62, column: 38, scope: !3547, inlinedAt: !3544)
!3547 = distinct !DILexicalBlock(scope: !3538, file: !3443, line: 62, column: 7)
!3548 = !DILocation(line: 62, column: 7, scope: !3538, inlinedAt: !3544)
!3549 = !DILocation(line: 67, column: 39, scope: !3550, inlinedAt: !3544)
!3550 = distinct !DILexicalBlock(scope: !3538, file: !3443, line: 67, column: 7)
!3551 = !DILocation(line: 72, column: 6, scope: !3538, inlinedAt: !3544)
!3552 = !DILocation(line: 67, column: 7, scope: !3538, inlinedAt: !3544)
!3553 = !DILocation(line: 60, column: 31, scope: !3538, inlinedAt: !3554)
!3554 = distinct !DILocation(line: 189, column: 22, scope: !3545)
!3555 = !DILocation(line: 62, column: 38, scope: !3547, inlinedAt: !3554)
!3556 = !DILocation(line: 62, column: 7, scope: !3538, inlinedAt: !3554)
!3557 = !DILocation(line: 67, column: 39, scope: !3550, inlinedAt: !3554)
!3558 = !DILocation(line: 72, column: 6, scope: !3538, inlinedAt: !3554)
!3559 = !DILocation(line: 67, column: 7, scope: !3538, inlinedAt: !3554)
!3560 = !DILocalVariable(name: "power", arg: 3, scope: !3561, file: !3443, line: 77, type: !24)
!3561 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !3443, file: !3443, line: 77, type: !3562, isLocal: true, isDefinition: true, scopeLine: 78, flags: DIFlagPrototyped, isOptimized: true, unit: !610, variables: !3564)
!3562 = !DISubroutineType(types: !3563)
!3563 = !{!3446, !3447, !24, !24}
!3564 = !{!3565, !3566, !3560, !3567}
!3565 = !DILocalVariable(name: "x", arg: 1, scope: !3561, file: !3443, line: 77, type: !3447)
!3566 = !DILocalVariable(name: "base", arg: 2, scope: !3561, file: !3443, line: 77, type: !24)
!3567 = !DILocalVariable(name: "err", scope: !3561, file: !3443, line: 79, type: !3446)
!3568 = !DILocation(line: 77, column: 50, scope: !3561, inlinedAt: !3569)
!3569 = distinct !DILocation(line: 197, column: 22, scope: !3545)
!3570 = !DILocation(line: 79, column: 16, scope: !3561, inlinedAt: !3569)
!3571 = !DILocation(line: 62, column: 38, scope: !3547, inlinedAt: !3572)
!3572 = distinct !DILocation(line: 81, column: 12, scope: !3561, inlinedAt: !3569)
!3573 = !DILocation(line: 62, column: 7, scope: !3538, inlinedAt: !3572)
!3574 = !DILocation(line: 67, column: 24, scope: !3550, inlinedAt: !3572)
!3575 = !DILocation(line: 67, column: 39, scope: !3550, inlinedAt: !3572)
!3576 = !DILocation(line: 72, column: 6, scope: !3538, inlinedAt: !3572)
!3577 = !DILocation(line: 67, column: 7, scope: !3538, inlinedAt: !3572)
!3578 = !DILocation(line: 77, column: 50, scope: !3561, inlinedAt: !3579)
!3579 = distinct !DILocation(line: 202, column: 22, scope: !3545)
!3580 = !DILocation(line: 79, column: 16, scope: !3561, inlinedAt: !3579)
!3581 = !DILocation(line: 62, column: 38, scope: !3547, inlinedAt: !3582)
!3582 = distinct !DILocation(line: 81, column: 12, scope: !3561, inlinedAt: !3579)
!3583 = !DILocation(line: 62, column: 7, scope: !3538, inlinedAt: !3582)
!3584 = !DILocation(line: 67, column: 24, scope: !3550, inlinedAt: !3582)
!3585 = !DILocation(line: 67, column: 39, scope: !3550, inlinedAt: !3582)
!3586 = !DILocation(line: 72, column: 6, scope: !3538, inlinedAt: !3582)
!3587 = !DILocation(line: 67, column: 7, scope: !3538, inlinedAt: !3582)
!3588 = !DILocation(line: 77, column: 50, scope: !3561, inlinedAt: !3589)
!3589 = distinct !DILocation(line: 207, column: 22, scope: !3545)
!3590 = !DILocation(line: 79, column: 16, scope: !3561, inlinedAt: !3589)
!3591 = !DILocation(line: 62, column: 38, scope: !3547, inlinedAt: !3592)
!3592 = distinct !DILocation(line: 81, column: 12, scope: !3561, inlinedAt: !3589)
!3593 = !DILocation(line: 62, column: 7, scope: !3538, inlinedAt: !3592)
!3594 = !DILocation(line: 67, column: 24, scope: !3550, inlinedAt: !3592)
!3595 = !DILocation(line: 67, column: 39, scope: !3550, inlinedAt: !3592)
!3596 = !DILocation(line: 72, column: 6, scope: !3538, inlinedAt: !3592)
!3597 = !DILocation(line: 67, column: 7, scope: !3538, inlinedAt: !3592)
!3598 = !DILocation(line: 77, column: 50, scope: !3561, inlinedAt: !3599)
!3599 = distinct !DILocation(line: 212, column: 22, scope: !3545)
!3600 = !DILocation(line: 79, column: 16, scope: !3561, inlinedAt: !3599)
!3601 = !DILocation(line: 62, column: 38, scope: !3547, inlinedAt: !3602)
!3602 = distinct !DILocation(line: 81, column: 12, scope: !3561, inlinedAt: !3599)
!3603 = !DILocation(line: 62, column: 7, scope: !3538, inlinedAt: !3602)
!3604 = !DILocation(line: 67, column: 24, scope: !3550, inlinedAt: !3602)
!3605 = !DILocation(line: 67, column: 39, scope: !3550, inlinedAt: !3602)
!3606 = !DILocation(line: 72, column: 6, scope: !3538, inlinedAt: !3602)
!3607 = !DILocation(line: 67, column: 7, scope: !3538, inlinedAt: !3602)
!3608 = !DILocation(line: 77, column: 50, scope: !3561, inlinedAt: !3609)
!3609 = distinct !DILocation(line: 216, column: 22, scope: !3545)
!3610 = !DILocation(line: 79, column: 16, scope: !3561, inlinedAt: !3609)
!3611 = !DILocation(line: 62, column: 38, scope: !3547, inlinedAt: !3612)
!3612 = distinct !DILocation(line: 81, column: 12, scope: !3561, inlinedAt: !3609)
!3613 = !DILocation(line: 62, column: 7, scope: !3538, inlinedAt: !3612)
!3614 = !DILocation(line: 67, column: 24, scope: !3550, inlinedAt: !3612)
!3615 = !DILocation(line: 67, column: 39, scope: !3550, inlinedAt: !3612)
!3616 = !DILocation(line: 72, column: 6, scope: !3538, inlinedAt: !3612)
!3617 = !DILocation(line: 67, column: 7, scope: !3538, inlinedAt: !3612)
!3618 = !DILocation(line: 77, column: 50, scope: !3561, inlinedAt: !3619)
!3619 = distinct !DILocation(line: 221, column: 22, scope: !3545)
!3620 = !DILocation(line: 79, column: 16, scope: !3561, inlinedAt: !3619)
!3621 = !DILocation(line: 62, column: 38, scope: !3547, inlinedAt: !3622)
!3622 = distinct !DILocation(line: 81, column: 12, scope: !3561, inlinedAt: !3619)
!3623 = !DILocation(line: 62, column: 7, scope: !3538, inlinedAt: !3622)
!3624 = !DILocation(line: 67, column: 24, scope: !3550, inlinedAt: !3622)
!3625 = !DILocation(line: 67, column: 39, scope: !3550, inlinedAt: !3622)
!3626 = !DILocation(line: 72, column: 6, scope: !3538, inlinedAt: !3622)
!3627 = !DILocation(line: 67, column: 7, scope: !3538, inlinedAt: !3622)
!3628 = !DILocation(line: 60, column: 31, scope: !3538, inlinedAt: !3629)
!3629 = distinct !DILocation(line: 225, column: 22, scope: !3545)
!3630 = !DILocation(line: 62, column: 38, scope: !3547, inlinedAt: !3629)
!3631 = !DILocation(line: 62, column: 7, scope: !3538, inlinedAt: !3629)
!3632 = !DILocation(line: 67, column: 39, scope: !3550, inlinedAt: !3629)
!3633 = !DILocation(line: 72, column: 6, scope: !3538, inlinedAt: !3629)
!3634 = !DILocation(line: 67, column: 7, scope: !3538, inlinedAt: !3629)
!3635 = !DILocation(line: 77, column: 50, scope: !3561, inlinedAt: !3636)
!3636 = distinct !DILocation(line: 229, column: 22, scope: !3545)
!3637 = !DILocation(line: 79, column: 16, scope: !3561, inlinedAt: !3636)
!3638 = !DILocation(line: 62, column: 38, scope: !3547, inlinedAt: !3639)
!3639 = distinct !DILocation(line: 81, column: 12, scope: !3561, inlinedAt: !3636)
!3640 = !DILocation(line: 62, column: 7, scope: !3538, inlinedAt: !3639)
!3641 = !DILocation(line: 67, column: 24, scope: !3550, inlinedAt: !3639)
!3642 = !DILocation(line: 67, column: 39, scope: !3550, inlinedAt: !3639)
!3643 = !DILocation(line: 72, column: 6, scope: !3538, inlinedAt: !3639)
!3644 = !DILocation(line: 67, column: 7, scope: !3538, inlinedAt: !3639)
!3645 = !DILocation(line: 77, column: 50, scope: !3561, inlinedAt: !3646)
!3646 = distinct !DILocation(line: 233, column: 22, scope: !3545)
!3647 = !DILocation(line: 79, column: 16, scope: !3561, inlinedAt: !3646)
!3648 = !DILocation(line: 62, column: 38, scope: !3547, inlinedAt: !3649)
!3649 = distinct !DILocation(line: 81, column: 12, scope: !3561, inlinedAt: !3646)
!3650 = !DILocation(line: 62, column: 7, scope: !3538, inlinedAt: !3649)
!3651 = !DILocation(line: 67, column: 24, scope: !3550, inlinedAt: !3649)
!3652 = !DILocation(line: 67, column: 39, scope: !3550, inlinedAt: !3649)
!3653 = !DILocation(line: 72, column: 6, scope: !3538, inlinedAt: !3649)
!3654 = !DILocation(line: 67, column: 7, scope: !3538, inlinedAt: !3649)
!3655 = !DILocation(line: 237, column: 16, scope: !3545)
!3656 = !DILocation(line: 238, column: 22, scope: !3545)
!3657 = !DILocation(line: 238, column: 11, scope: !3545)
!3658 = !DILocation(line: 143, column: 20, scope: !3459)
!3659 = !DILocation(line: 241, column: 11, scope: !3459)
!3660 = !DILocation(line: 242, column: 10, scope: !3459)
!3661 = !DILocation(line: 243, column: 11, scope: !3662)
!3662 = distinct !DILexicalBlock(scope: !3459, file: !3443, line: 243, column: 11)
!3663 = !DILocation(line: 244, column: 13, scope: !3662)
!3664 = !DILocation(line: 243, column: 11, scope: !3459)
!3665 = !DILocation(line: 247, column: 8, scope: !3442)
!3666 = !DILocation(line: 248, column: 3, scope: !3442)
!3667 = !DILocation(line: 249, column: 1, scope: !3442)
!3668 = !DILocation(line: 81, column: 9, scope: !3561, inlinedAt: !3569)
!3669 = !DILocation(line: 81, column: 9, scope: !3561, inlinedAt: !3579)
!3670 = !DILocation(line: 81, column: 9, scope: !3561, inlinedAt: !3599)
!3671 = !DILocation(line: 81, column: 9, scope: !3561, inlinedAt: !3609)
!3672 = !DILocation(line: 81, column: 9, scope: !3561, inlinedAt: !3619)
!3673 = !DILocation(line: 81, column: 9, scope: !3561, inlinedAt: !3636)
!3674 = !DILocation(line: 81, column: 9, scope: !3561, inlinedAt: !3646)
!3675 = distinct !DISubprogram(name: "rpl_calloc", scope: !3676, file: !3676, line: 42, type: !3182, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !614, variables: !3677)
!3676 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3677 = !{!3678, !3679, !3680, !3681}
!3678 = !DILocalVariable(name: "n", arg: 1, scope: !3675, file: !3676, line: 42, type: !65)
!3679 = !DILocalVariable(name: "s", arg: 2, scope: !3675, file: !3676, line: 42, type: !65)
!3680 = !DILocalVariable(name: "result", scope: !3675, file: !3676, line: 44, type: !64)
!3681 = !DILocalVariable(name: "bytes", scope: !3682, file: !3676, line: 56, type: !65)
!3682 = distinct !DILexicalBlock(scope: !3683, file: !3676, line: 53, column: 5)
!3683 = distinct !DILexicalBlock(scope: !3675, file: !3676, line: 47, column: 7)
!3684 = !DILocation(line: 42, column: 20, scope: !3675)
!3685 = !DILocation(line: 42, column: 30, scope: !3675)
!3686 = !DILocation(line: 47, column: 9, scope: !3683)
!3687 = !DILocation(line: 47, column: 19, scope: !3688)
!3688 = !DILexicalBlockFile(scope: !3683, file: !3676, discriminator: 1)
!3689 = !DILocation(line: 47, column: 14, scope: !3683)
!3690 = !DILocation(line: 56, column: 24, scope: !3682)
!3691 = !DILocation(line: 56, column: 14, scope: !3682)
!3692 = !DILocation(line: 57, column: 17, scope: !3693)
!3693 = distinct !DILexicalBlock(scope: !3682, file: !3676, line: 57, column: 11)
!3694 = !DILocation(line: 57, column: 21, scope: !3693)
!3695 = !DILocation(line: 57, column: 11, scope: !3682)
!3696 = !DILocation(line: 59, column: 11, scope: !3697)
!3697 = distinct !DILexicalBlock(scope: !3693, file: !3676, line: 58, column: 9)
!3698 = !DILocation(line: 59, column: 17, scope: !3697)
!3699 = !DILocation(line: 65, column: 12, scope: !3675)
!3700 = !DILocation(line: 44, column: 9, scope: !3675)
!3701 = !DILocation(line: 72, column: 3, scope: !3675)
!3702 = !DILocation(line: 73, column: 1, scope: !3675)
!3703 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !3704, file: !3704, line: 334, type: !3705, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !616, variables: !3719)
!3704 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3705 = !DISubroutineType(types: !3706)
!3706 = !{!65, !3707, !34, !65, !3708}
!3707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!3708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3709, size: 64)
!3709 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1220, line: 107, baseType: !3710)
!3710 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1220, line: 95, baseType: !3711)
!3711 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1220, line: 83, size: 64, elements: !3712)
!3712 = !{!3713, !3714}
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3711, file: !1220, line: 85, baseType: !24, size: 32)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3711, file: !1220, line: 94, baseType: !3715, size: 32, offset: 32)
!3715 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3711, file: !1220, line: 86, size: 32, elements: !3716)
!3716 = !{!3717, !3718}
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3715, file: !1220, line: 89, baseType: !63, size: 32)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3715, file: !1220, line: 93, baseType: !1230, size: 32)
!3719 = !{!3720, !3721, !3722, !3723, !3724, !3725, !3726}
!3720 = !DILocalVariable(name: "pwc", arg: 1, scope: !3703, file: !3704, line: 334, type: !3707)
!3721 = !DILocalVariable(name: "s", arg: 2, scope: !3703, file: !3704, line: 334, type: !34)
!3722 = !DILocalVariable(name: "n", arg: 3, scope: !3703, file: !3704, line: 334, type: !65)
!3723 = !DILocalVariable(name: "ps", arg: 4, scope: !3703, file: !3704, line: 334, type: !3708)
!3724 = !DILocalVariable(name: "ret", scope: !3703, file: !3704, line: 336, type: !65)
!3725 = !DILocalVariable(name: "wc", scope: !3703, file: !3704, line: 337, type: !1233)
!3726 = !DILocalVariable(name: "uc", scope: !3727, file: !3704, line: 398, type: !72)
!3727 = distinct !DILexicalBlock(scope: !3728, file: !3704, line: 397, column: 5)
!3728 = distinct !DILexicalBlock(scope: !3703, file: !3704, line: 396, column: 7)
!3729 = !DILocation(line: 334, column: 23, scope: !3703)
!3730 = !DILocation(line: 334, column: 40, scope: !3703)
!3731 = !DILocation(line: 334, column: 50, scope: !3703)
!3732 = !DILocation(line: 334, column: 64, scope: !3703)
!3733 = !DILocation(line: 337, column: 3, scope: !3703)
!3734 = !DILocation(line: 353, column: 9, scope: !3735)
!3735 = distinct !DILexicalBlock(scope: !3703, file: !3704, line: 353, column: 7)
!3736 = !DILocation(line: 353, column: 7, scope: !3703)
!3737 = !DILocation(line: 388, column: 9, scope: !3703)
!3738 = !DILocation(line: 336, column: 10, scope: !3703)
!3739 = !DILocation(line: 396, column: 19, scope: !3728)
!3740 = !DILocation(line: 396, column: 31, scope: !3741)
!3741 = !DILexicalBlockFile(scope: !3728, file: !3704, discriminator: 1)
!3742 = !DILocation(line: 396, column: 26, scope: !3728)
!3743 = !DILocation(line: 396, column: 41, scope: !3744)
!3744 = !DILexicalBlockFile(scope: !3728, file: !3704, discriminator: 2)
!3745 = !DILocation(line: 396, column: 7, scope: !3746)
!3746 = !DILexicalBlockFile(scope: !3703, file: !3704, discriminator: 2)
!3747 = !DILocation(line: 398, column: 26, scope: !3727)
!3748 = !DILocation(line: 398, column: 21, scope: !3727)
!3749 = !DILocation(line: 399, column: 14, scope: !3727)
!3750 = !DILocation(line: 399, column: 12, scope: !3727)
!3751 = !DILocation(line: 405, column: 1, scope: !3703)
!3752 = distinct !DISubprogram(name: "close_stream", scope: !3753, file: !3753, line: 56, type: !3754, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !619, variables: !3796)
!3753 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3754 = !DISubroutineType(types: !3755)
!3755 = !{!24, !3756}
!3756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3757, size: 64)
!3757 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !858, line: 49, baseType: !3758)
!3758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !860, line: 241, size: 1728, elements: !3759)
!3759 = !{!3760, !3761, !3762, !3763, !3764, !3765, !3766, !3767, !3768, !3769, !3770, !3771, !3772, !3780, !3781, !3782, !3783, !3784, !3785, !3786, !3787, !3788, !3789, !3790, !3791, !3792, !3793, !3794, !3795}
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3758, file: !860, line: 242, baseType: !24, size: 32)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3758, file: !860, line: 247, baseType: !26, size: 64, offset: 64)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3758, file: !860, line: 248, baseType: !26, size: 64, offset: 128)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3758, file: !860, line: 249, baseType: !26, size: 64, offset: 192)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3758, file: !860, line: 250, baseType: !26, size: 64, offset: 256)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3758, file: !860, line: 251, baseType: !26, size: 64, offset: 320)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3758, file: !860, line: 252, baseType: !26, size: 64, offset: 384)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3758, file: !860, line: 253, baseType: !26, size: 64, offset: 448)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3758, file: !860, line: 254, baseType: !26, size: 64, offset: 512)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3758, file: !860, line: 256, baseType: !26, size: 64, offset: 576)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3758, file: !860, line: 257, baseType: !26, size: 64, offset: 640)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3758, file: !860, line: 258, baseType: !26, size: 64, offset: 704)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3758, file: !860, line: 260, baseType: !3773, size: 64, offset: 768)
!3773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3774, size: 64)
!3774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !860, line: 156, size: 192, elements: !3775)
!3775 = !{!3776, !3777, !3779}
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3774, file: !860, line: 157, baseType: !3773, size: 64)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3774, file: !860, line: 158, baseType: !3778, size: 64, offset: 64)
!3778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3758, size: 64)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3774, file: !860, line: 162, baseType: !24, size: 32, offset: 128)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3758, file: !860, line: 262, baseType: !3778, size: 64, offset: 832)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3758, file: !860, line: 264, baseType: !24, size: 32, offset: 896)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3758, file: !860, line: 268, baseType: !24, size: 32, offset: 928)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3758, file: !860, line: 270, baseType: !886, size: 64, offset: 960)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3758, file: !860, line: 274, baseType: !183, size: 16, offset: 1024)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3758, file: !860, line: 275, baseType: !890, size: 8, offset: 1040)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3758, file: !860, line: 276, baseType: !892, size: 8, offset: 1048)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3758, file: !860, line: 280, baseType: !896, size: 64, offset: 1088)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3758, file: !860, line: 289, baseType: !899, size: 64, offset: 1152)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3758, file: !860, line: 297, baseType: !64, size: 64, offset: 1216)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3758, file: !860, line: 298, baseType: !64, size: 64, offset: 1280)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3758, file: !860, line: 299, baseType: !64, size: 64, offset: 1344)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3758, file: !860, line: 300, baseType: !64, size: 64, offset: 1408)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3758, file: !860, line: 302, baseType: !65, size: 64, offset: 1472)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3758, file: !860, line: 303, baseType: !24, size: 32, offset: 1536)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3758, file: !860, line: 305, baseType: !907, size: 160, offset: 1568)
!3796 = !{!3797, !3798, !3800, !3801}
!3797 = !DILocalVariable(name: "stream", arg: 1, scope: !3752, file: !3753, line: 56, type: !3756)
!3798 = !DILocalVariable(name: "some_pending", scope: !3752, file: !3753, line: 58, type: !3799)
!3799 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !37)
!3800 = !DILocalVariable(name: "prev_fail", scope: !3752, file: !3753, line: 59, type: !3799)
!3801 = !DILocalVariable(name: "fclose_fail", scope: !3752, file: !3753, line: 60, type: !3799)
!3802 = !DILocation(line: 56, column: 21, scope: !3752)
!3803 = !DILocation(line: 58, column: 30, scope: !3752)
!3804 = !DILocalVariable(name: "__stream", arg: 1, scope: !3805, file: !853, line: 132, type: !3756)
!3805 = distinct !DISubprogram(name: "ferror_unlocked", scope: !853, file: !853, line: 132, type: !3754, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !619, variables: !3806)
!3806 = !{!3804}
!3807 = !DILocation(line: 132, column: 1, scope: !3805, inlinedAt: !3808)
!3808 = distinct !DILocation(line: 59, column: 27, scope: !3752)
!3809 = !DILocation(line: 134, column: 10, scope: !3805, inlinedAt: !3808)
!3810 = !DILocation(line: 59, column: 43, scope: !3752)
!3811 = !DILocation(line: 60, column: 29, scope: !3752)
!3812 = !DILocation(line: 60, column: 45, scope: !3752)
!3813 = !DILocation(line: 70, column: 17, scope: !3814)
!3814 = distinct !DILexicalBlock(scope: !3752, file: !3753, line: 70, column: 7)
!3815 = !DILocation(line: 70, column: 33, scope: !3816)
!3816 = !DILexicalBlockFile(scope: !3814, file: !3753, discriminator: 1)
!3817 = !DILocation(line: 70, column: 53, scope: !3818)
!3818 = !DILexicalBlockFile(scope: !3814, file: !3753, discriminator: 3)
!3819 = !DILocation(line: 70, column: 7, scope: !3820)
!3820 = !DILexicalBlockFile(scope: !3752, file: !3753, discriminator: 3)
!3821 = !DILocation(line: 72, column: 11, scope: !3822)
!3822 = distinct !DILexicalBlock(scope: !3814, file: !3753, line: 71, column: 5)
!3823 = !DILocation(line: 73, column: 9, scope: !3824)
!3824 = distinct !DILexicalBlock(scope: !3822, file: !3753, line: 72, column: 11)
!3825 = !DILocation(line: 73, column: 15, scope: !3824)
!3826 = !DILocation(line: 78, column: 1, scope: !3752)
!3827 = distinct !DISubprogram(name: "hard_locale", scope: !3828, file: !3828, line: 38, type: !835, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !621, variables: !3829)
!3828 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3829 = !{!3830, !3831, !3832, !3833, !3840, !3841, !3843, !3844, !3846, !3847, !3849}
!3830 = !DILocalVariable(name: "category", arg: 1, scope: !3827, file: !3828, line: 38, type: !24)
!3831 = !DILocalVariable(name: "hard", scope: !3827, file: !3828, line: 40, type: !37)
!3832 = !DILocalVariable(name: "p", scope: !3827, file: !3828, line: 41, type: !34)
!3833 = !DILocalVariable(name: "__s1_len", scope: !3834, file: !3828, line: 47, type: !65)
!3834 = distinct !DILexicalBlock(scope: !3835, file: !3828, line: 47, column: 15)
!3835 = distinct !DILexicalBlock(scope: !3836, file: !3828, line: 47, column: 15)
!3836 = distinct !DILexicalBlock(scope: !3837, file: !3828, line: 46, column: 9)
!3837 = distinct !DILexicalBlock(scope: !3838, file: !3828, line: 45, column: 11)
!3838 = distinct !DILexicalBlock(scope: !3839, file: !3828, line: 44, column: 5)
!3839 = distinct !DILexicalBlock(scope: !3827, file: !3828, line: 43, column: 7)
!3840 = !DILocalVariable(name: "__s2_len", scope: !3834, file: !3828, line: 47, type: !65)
!3841 = !DILocalVariable(name: "__s2", scope: !3842, file: !3828, line: 47, type: !70)
!3842 = distinct !DILexicalBlock(scope: !3834, file: !3828, line: 47, column: 15)
!3843 = !DILocalVariable(name: "__result", scope: !3842, file: !3828, line: 47, type: !24)
!3844 = !DILocalVariable(name: "__s1_len", scope: !3845, file: !3828, line: 47, type: !65)
!3845 = distinct !DILexicalBlock(scope: !3835, file: !3828, line: 47, column: 39)
!3846 = !DILocalVariable(name: "__s2_len", scope: !3845, file: !3828, line: 47, type: !65)
!3847 = !DILocalVariable(name: "__s2", scope: !3848, file: !3828, line: 47, type: !70)
!3848 = distinct !DILexicalBlock(scope: !3845, file: !3828, line: 47, column: 39)
!3849 = !DILocalVariable(name: "__result", scope: !3848, file: !3828, line: 47, type: !24)
!3850 = !DILocation(line: 38, column: 18, scope: !3827)
!3851 = !DILocation(line: 40, column: 8, scope: !3827)
!3852 = !DILocation(line: 41, column: 19, scope: !3827)
!3853 = !DILocation(line: 41, column: 15, scope: !3827)
!3854 = !DILocation(line: 43, column: 7, scope: !3839)
!3855 = !DILocation(line: 43, column: 7, scope: !3827)
!3856 = !DILocation(line: 47, column: 15, scope: !3834)
!3857 = !DILocation(line: 47, column: 15, scope: !3842)
!3858 = !DILocation(line: 47, column: 15, scope: !3859)
!3859 = !DILexicalBlockFile(scope: !3842, file: !3828, discriminator: 2)
!3860 = !DILocation(line: 47, column: 15, scope: !3861)
!3861 = !DILexicalBlockFile(scope: !3862, file: !3828, discriminator: 3)
!3862 = distinct !DILexicalBlock(scope: !3842, file: !3828, line: 47, column: 15)
!3863 = !DILocation(line: 47, column: 15, scope: !3864)
!3864 = !DILexicalBlockFile(scope: !3862, file: !3828, discriminator: 2)
!3865 = !DILocation(line: 47, column: 15, scope: !3866)
!3866 = !DILexicalBlockFile(scope: !3867, file: !3828, discriminator: 4)
!3867 = distinct !DILexicalBlock(scope: !3862, file: !3828, line: 47, column: 15)
!3868 = !DILocation(line: 47, column: 15, scope: !3869)
!3869 = !DILexicalBlockFile(scope: !3834, file: !3828, discriminator: 11)
!3870 = !DILocation(line: 47, column: 36, scope: !3871)
!3871 = !DILexicalBlockFile(scope: !3835, file: !3828, discriminator: 13)
!3872 = !DILocation(line: 47, column: 39, scope: !3845)
!3873 = !DILocation(line: 47, column: 39, scope: !3874)
!3874 = !DILexicalBlockFile(scope: !3845, file: !3828, discriminator: 26)
!3875 = !DILocation(line: 47, column: 59, scope: !3876)
!3876 = !DILexicalBlockFile(scope: !3835, file: !3828, discriminator: 27)
!3877 = !DILocation(line: 47, column: 15, scope: !3878)
!3878 = !DILexicalBlockFile(scope: !3836, file: !3828, discriminator: 27)
!3879 = !DILocation(line: 48, column: 13, scope: !3835)
!3880 = !DILocation(line: 71, column: 3, scope: !3827)
!3881 = distinct !DISubprogram(name: "locale_charset", scope: !581, file: !581, line: 393, type: !3882, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !237, variables: !3884)
!3882 = !DISubroutineType(types: !3883)
!3883 = !{!34}
!3884 = !{!3885, !3886, !3887, !3892}
!3885 = !DILocalVariable(name: "codeset", scope: !3881, file: !581, line: 395, type: !34)
!3886 = !DILocalVariable(name: "aliases", scope: !3881, file: !581, line: 396, type: !34)
!3887 = !DILocalVariable(name: "__s1_len", scope: !3888, file: !581, line: 592, type: !65)
!3888 = distinct !DILexicalBlock(scope: !3889, file: !581, line: 592, column: 9)
!3889 = distinct !DILexicalBlock(scope: !3890, file: !581, line: 592, column: 9)
!3890 = distinct !DILexicalBlock(scope: !3891, file: !581, line: 589, column: 3)
!3891 = distinct !DILexicalBlock(scope: !3881, file: !581, line: 589, column: 3)
!3892 = !DILocalVariable(name: "__s2_len", scope: !3888, file: !581, line: 592, type: !65)
!3893 = !DILocalVariable(name: "buf1", scope: !3894, file: !581, line: 196, type: !3961)
!3894 = distinct !DILexicalBlock(scope: !3895, file: !581, line: 194, column: 21)
!3895 = distinct !DILexicalBlock(scope: !3896, file: !581, line: 193, column: 19)
!3896 = distinct !DILexicalBlock(scope: !3897, file: !581, line: 193, column: 19)
!3897 = distinct !DILexicalBlock(scope: !3898, file: !581, line: 188, column: 17)
!3898 = distinct !DILexicalBlock(scope: !3899, file: !581, line: 181, column: 19)
!3899 = distinct !DILexicalBlock(scope: !3900, file: !581, line: 177, column: 13)
!3900 = distinct !DILexicalBlock(scope: !3901, file: !581, line: 173, column: 15)
!3901 = distinct !DILexicalBlock(scope: !3902, file: !581, line: 161, column: 9)
!3902 = distinct !DILexicalBlock(scope: !3903, file: !581, line: 157, column: 11)
!3903 = distinct !DILexicalBlock(scope: !3904, file: !581, line: 130, column: 5)
!3904 = distinct !DILexicalBlock(scope: !3905, file: !581, line: 129, column: 7)
!3905 = distinct !DISubprogram(name: "get_charset_aliases", scope: !581, file: !581, line: 124, type: !3882, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !237, variables: !3906)
!3906 = !{!3907, !3908, !3909, !3910, !3911, !3913, !3914, !3915, !3916, !3957, !3958, !3959, !3893, !3960, !3964, !3965, !3966}
!3907 = !DILocalVariable(name: "cp", scope: !3905, file: !581, line: 126, type: !34)
!3908 = !DILocalVariable(name: "dir", scope: !3903, file: !581, line: 132, type: !34)
!3909 = !DILocalVariable(name: "base", scope: !3903, file: !581, line: 133, type: !34)
!3910 = !DILocalVariable(name: "file_name", scope: !3903, file: !581, line: 134, type: !26)
!3911 = !DILocalVariable(name: "dir_len", scope: !3912, file: !581, line: 144, type: !65)
!3912 = distinct !DILexicalBlock(scope: !3903, file: !581, line: 143, column: 7)
!3913 = !DILocalVariable(name: "base_len", scope: !3912, file: !581, line: 145, type: !65)
!3914 = !DILocalVariable(name: "add_slash", scope: !3912, file: !581, line: 146, type: !24)
!3915 = !DILocalVariable(name: "fd", scope: !3901, file: !581, line: 162, type: !24)
!3916 = !DILocalVariable(name: "fp", scope: !3899, file: !581, line: 178, type: !3917)
!3917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3918, size: 64)
!3918 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !858, line: 49, baseType: !3919)
!3919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !860, line: 241, size: 1728, elements: !3920)
!3920 = !{!3921, !3922, !3923, !3924, !3925, !3926, !3927, !3928, !3929, !3930, !3931, !3932, !3933, !3941, !3942, !3943, !3944, !3945, !3946, !3947, !3948, !3949, !3950, !3951, !3952, !3953, !3954, !3955, !3956}
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3919, file: !860, line: 242, baseType: !24, size: 32)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3919, file: !860, line: 247, baseType: !26, size: 64, offset: 64)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3919, file: !860, line: 248, baseType: !26, size: 64, offset: 128)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3919, file: !860, line: 249, baseType: !26, size: 64, offset: 192)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3919, file: !860, line: 250, baseType: !26, size: 64, offset: 256)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3919, file: !860, line: 251, baseType: !26, size: 64, offset: 320)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3919, file: !860, line: 252, baseType: !26, size: 64, offset: 384)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3919, file: !860, line: 253, baseType: !26, size: 64, offset: 448)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3919, file: !860, line: 254, baseType: !26, size: 64, offset: 512)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3919, file: !860, line: 256, baseType: !26, size: 64, offset: 576)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3919, file: !860, line: 257, baseType: !26, size: 64, offset: 640)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3919, file: !860, line: 258, baseType: !26, size: 64, offset: 704)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3919, file: !860, line: 260, baseType: !3934, size: 64, offset: 768)
!3934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3935, size: 64)
!3935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !860, line: 156, size: 192, elements: !3936)
!3936 = !{!3937, !3938, !3940}
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3935, file: !860, line: 157, baseType: !3934, size: 64)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3935, file: !860, line: 158, baseType: !3939, size: 64, offset: 64)
!3939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3919, size: 64)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3935, file: !860, line: 162, baseType: !24, size: 32, offset: 128)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3919, file: !860, line: 262, baseType: !3939, size: 64, offset: 832)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3919, file: !860, line: 264, baseType: !24, size: 32, offset: 896)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3919, file: !860, line: 268, baseType: !24, size: 32, offset: 928)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3919, file: !860, line: 270, baseType: !886, size: 64, offset: 960)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3919, file: !860, line: 274, baseType: !183, size: 16, offset: 1024)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3919, file: !860, line: 275, baseType: !890, size: 8, offset: 1040)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3919, file: !860, line: 276, baseType: !892, size: 8, offset: 1048)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3919, file: !860, line: 280, baseType: !896, size: 64, offset: 1088)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3919, file: !860, line: 289, baseType: !899, size: 64, offset: 1152)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3919, file: !860, line: 297, baseType: !64, size: 64, offset: 1216)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3919, file: !860, line: 298, baseType: !64, size: 64, offset: 1280)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3919, file: !860, line: 299, baseType: !64, size: 64, offset: 1344)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3919, file: !860, line: 300, baseType: !64, size: 64, offset: 1408)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3919, file: !860, line: 302, baseType: !65, size: 64, offset: 1472)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3919, file: !860, line: 303, baseType: !24, size: 32, offset: 1536)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3919, file: !860, line: 305, baseType: !907, size: 160, offset: 1568)
!3957 = !DILocalVariable(name: "res_ptr", scope: !3897, file: !581, line: 190, type: !26)
!3958 = !DILocalVariable(name: "res_size", scope: !3897, file: !581, line: 191, type: !65)
!3959 = !DILocalVariable(name: "c", scope: !3894, file: !581, line: 195, type: !24)
!3960 = !DILocalVariable(name: "buf2", scope: !3894, file: !581, line: 197, type: !3961)
!3961 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 408, elements: !3962)
!3962 = !{!3963}
!3963 = !DISubrange(count: 51)
!3964 = !DILocalVariable(name: "l1", scope: !3894, file: !581, line: 198, type: !65)
!3965 = !DILocalVariable(name: "l2", scope: !3894, file: !581, line: 198, type: !65)
!3966 = !DILocalVariable(name: "old_res_ptr", scope: !3894, file: !581, line: 199, type: !26)
!3967 = !DILocation(line: 196, column: 28, scope: !3894, inlinedAt: !3968)
!3968 = distinct !DILocation(line: 589, column: 18, scope: !3891)
!3969 = !DILocation(line: 197, column: 28, scope: !3894, inlinedAt: !3968)
!3970 = !DILocation(line: 403, column: 13, scope: !3881)
!3971 = !DILocation(line: 395, column: 15, scope: !3881)
!3972 = !DILocation(line: 584, column: 15, scope: !3973)
!3973 = distinct !DILexicalBlock(scope: !3881, file: !581, line: 584, column: 7)
!3974 = !DILocation(line: 584, column: 7, scope: !3881)
!3975 = !DILocation(line: 128, column: 8, scope: !3905, inlinedAt: !3968)
!3976 = !DILocation(line: 126, column: 15, scope: !3905, inlinedAt: !3968)
!3977 = !DILocation(line: 129, column: 10, scope: !3904, inlinedAt: !3968)
!3978 = !DILocation(line: 129, column: 7, scope: !3905, inlinedAt: !3968)
!3979 = !DILocation(line: 138, column: 13, scope: !3903, inlinedAt: !3968)
!3980 = !DILocation(line: 132, column: 19, scope: !3903, inlinedAt: !3968)
!3981 = !DILocation(line: 139, column: 15, scope: !3982, inlinedAt: !3968)
!3982 = distinct !DILexicalBlock(scope: !3903, file: !581, line: 139, column: 11)
!3983 = !DILocation(line: 139, column: 23, scope: !3982, inlinedAt: !3968)
!3984 = !DILocation(line: 139, column: 26, scope: !3985, inlinedAt: !3968)
!3985 = !DILexicalBlockFile(scope: !3982, file: !581, discriminator: 1)
!3986 = !DILocation(line: 139, column: 33, scope: !3985, inlinedAt: !3968)
!3987 = !DILocation(line: 139, column: 11, scope: !3988, inlinedAt: !3968)
!3988 = !DILexicalBlockFile(scope: !3903, file: !581, discriminator: 1)
!3989 = !DILocation(line: 140, column: 9, scope: !3982, inlinedAt: !3968)
!3990 = !DILocation(line: 144, column: 26, scope: !3912, inlinedAt: !3968)
!3991 = !DILocation(line: 144, column: 16, scope: !3912, inlinedAt: !3968)
!3992 = !DILocation(line: 145, column: 16, scope: !3912, inlinedAt: !3968)
!3993 = !DILocation(line: 146, column: 34, scope: !3912, inlinedAt: !3968)
!3994 = !DILocation(line: 146, column: 38, scope: !3912, inlinedAt: !3968)
!3995 = !DILocation(line: 146, column: 42, scope: !3996, inlinedAt: !3968)
!3996 = !DILexicalBlockFile(scope: !3912, file: !581, discriminator: 1)
!3997 = !DILocation(line: 146, column: 41, scope: !3996, inlinedAt: !3968)
!3998 = !DILocation(line: 147, column: 48, scope: !3912, inlinedAt: !3968)
!3999 = !DILocation(line: 147, column: 46, scope: !3912, inlinedAt: !3968)
!4000 = !DILocation(line: 147, column: 69, scope: !3912, inlinedAt: !3968)
!4001 = !DILocation(line: 147, column: 30, scope: !3912, inlinedAt: !3968)
!4002 = !DILocation(line: 134, column: 13, scope: !3903, inlinedAt: !3968)
!4003 = !DILocation(line: 148, column: 13, scope: !3912, inlinedAt: !3968)
!4004 = !DILocation(line: 150, column: 13, scope: !4005, inlinedAt: !3968)
!4005 = distinct !DILexicalBlock(scope: !4006, file: !581, line: 149, column: 11)
!4006 = distinct !DILexicalBlock(scope: !3912, file: !581, line: 148, column: 13)
!4007 = !DILocation(line: 151, column: 17, scope: !4005, inlinedAt: !3968)
!4008 = !DILocation(line: 152, column: 34, scope: !4009, inlinedAt: !3968)
!4009 = distinct !DILexicalBlock(scope: !4005, file: !581, line: 151, column: 17)
!4010 = !DILocation(line: 153, column: 41, scope: !4005, inlinedAt: !3968)
!4011 = !DILocation(line: 153, column: 13, scope: !4005, inlinedAt: !3968)
!4012 = !DILocation(line: 157, column: 11, scope: !3903, inlinedAt: !3968)
!4013 = !DILocation(line: 171, column: 16, scope: !3901, inlinedAt: !3968)
!4014 = !DILocation(line: 162, column: 15, scope: !3901, inlinedAt: !3968)
!4015 = !DILocation(line: 173, column: 18, scope: !3900, inlinedAt: !3968)
!4016 = !DILocation(line: 173, column: 15, scope: !3901, inlinedAt: !3968)
!4017 = !DILocation(line: 180, column: 20, scope: !3899, inlinedAt: !3968)
!4018 = !DILocation(line: 178, column: 21, scope: !3899, inlinedAt: !3968)
!4019 = !DILocation(line: 181, column: 22, scope: !3898, inlinedAt: !3968)
!4020 = !DILocation(line: 181, column: 19, scope: !3899, inlinedAt: !3968)
!4021 = !DILocation(line: 190, column: 25, scope: !3897, inlinedAt: !3968)
!4022 = !DILocation(line: 184, column: 19, scope: !4023, inlinedAt: !3968)
!4023 = distinct !DILexicalBlock(scope: !3898, file: !581, line: 182, column: 17)
!4024 = !DILocation(line: 186, column: 17, scope: !4023, inlinedAt: !3968)
!4025 = !DILocation(line: 191, column: 26, scope: !3897, inlinedAt: !3968)
!4026 = !DILocation(line: 196, column: 23, scope: !3894, inlinedAt: !3968)
!4027 = !DILocation(line: 197, column: 23, scope: !3894, inlinedAt: !3968)
!4028 = !DILocalVariable(name: "__fp", arg: 1, scope: !4029, file: !853, line: 63, type: !3917)
!4029 = distinct !DISubprogram(name: "getc_unlocked", scope: !853, file: !853, line: 63, type: !4030, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !237, variables: !4032)
!4030 = !DISubroutineType(types: !4031)
!4031 = !{!24, !3917}
!4032 = !{!4028}
!4033 = !DILocation(line: 63, column: 22, scope: !4029, inlinedAt: !4034)
!4034 = distinct !DILocation(line: 201, column: 27, scope: !3894, inlinedAt: !3968)
!4035 = !DILocation(line: 65, column: 10, scope: !4029, inlinedAt: !4034)
!4036 = !{!915, !649, i64 8}
!4037 = !{!915, !649, i64 16}
!4038 = !{!"branch_weights", i32 2000, i32 1}
!4039 = !DILocation(line: 65, column: 10, scope: !4040, inlinedAt: !4034)
!4040 = !DILexicalBlockFile(scope: !4029, file: !853, discriminator: 1)
!4041 = !DILocation(line: 65, column: 10, scope: !4042, inlinedAt: !4034)
!4042 = !DILexicalBlockFile(scope: !4029, file: !853, discriminator: 2)
!4043 = !DILocation(line: 65, column: 10, scope: !4044, inlinedAt: !4034)
!4044 = !DILexicalBlockFile(scope: !4029, file: !853, discriminator: 3)
!4045 = !DILocation(line: 195, column: 27, scope: !3894, inlinedAt: !3968)
!4046 = !DILocation(line: 202, column: 27, scope: !3894, inlinedAt: !3968)
!4047 = !DILocation(line: 63, column: 22, scope: !4029, inlinedAt: !4048)
!4048 = distinct !DILocation(line: 210, column: 33, scope: !4049, inlinedAt: !3968)
!4049 = distinct !DILexicalBlock(scope: !4050, file: !581, line: 207, column: 25)
!4050 = distinct !DILexicalBlock(scope: !3894, file: !581, line: 206, column: 27)
!4051 = !DILocation(line: 65, column: 10, scope: !4029, inlinedAt: !4048)
!4052 = !DILocation(line: 65, column: 10, scope: !4040, inlinedAt: !4048)
!4053 = !DILocation(line: 65, column: 10, scope: !4042, inlinedAt: !4048)
!4054 = !DILocation(line: 65, column: 10, scope: !4044, inlinedAt: !4048)
!4055 = !DILocation(line: 210, column: 29, scope: !4056, inlinedAt: !3968)
!4056 = !DILexicalBlockFile(scope: !4049, file: !581, discriminator: 1)
!4057 = distinct !{!4057, !4058, !4059}
!4058 = !DILocation(line: 193, column: 19, scope: !3896)
!4059 = !DILocation(line: 241, column: 21, scope: !3896)
!4060 = !DILocation(line: 216, column: 23, scope: !3894, inlinedAt: !3968)
!4061 = !DILocation(line: 217, column: 27, scope: !4062, inlinedAt: !3968)
!4062 = distinct !DILexicalBlock(scope: !3894, file: !581, line: 217, column: 27)
!4063 = !DILocation(line: 217, column: 64, scope: !4062, inlinedAt: !3968)
!4064 = !DILocation(line: 217, column: 27, scope: !3894, inlinedAt: !3968)
!4065 = !DILocation(line: 219, column: 28, scope: !3894, inlinedAt: !3968)
!4066 = !DILocation(line: 198, column: 30, scope: !3894, inlinedAt: !3968)
!4067 = !DILocation(line: 220, column: 28, scope: !3894, inlinedAt: !3968)
!4068 = !DILocation(line: 198, column: 34, scope: !3894, inlinedAt: !3968)
!4069 = !DILocation(line: 199, column: 29, scope: !3894, inlinedAt: !3968)
!4070 = !DILocation(line: 222, column: 36, scope: !4071, inlinedAt: !3968)
!4071 = distinct !DILexicalBlock(scope: !3894, file: !581, line: 222, column: 27)
!4072 = !DILocation(line: 222, column: 27, scope: !3894, inlinedAt: !3968)
!4073 = !DILocation(line: 225, column: 63, scope: !4074, inlinedAt: !3968)
!4074 = distinct !DILexicalBlock(scope: !4071, file: !581, line: 223, column: 25)
!4075 = !DILocation(line: 225, column: 46, scope: !4074, inlinedAt: !3968)
!4076 = !DILocation(line: 226, column: 25, scope: !4074, inlinedAt: !3968)
!4077 = !DILocation(line: 229, column: 36, scope: !4078, inlinedAt: !3968)
!4078 = distinct !DILexicalBlock(scope: !4071, file: !581, line: 228, column: 25)
!4079 = !DILocation(line: 230, column: 73, scope: !4078, inlinedAt: !3968)
!4080 = !DILocation(line: 230, column: 46, scope: !4078, inlinedAt: !3968)
!4081 = !DILocation(line: 232, column: 35, scope: !4082, inlinedAt: !3968)
!4082 = distinct !DILexicalBlock(scope: !3894, file: !581, line: 232, column: 27)
!4083 = !DILocation(line: 232, column: 27, scope: !3894, inlinedAt: !3968)
!4084 = !DILocation(line: 236, column: 27, scope: !4085, inlinedAt: !3968)
!4085 = distinct !DILexicalBlock(scope: !4082, file: !581, line: 233, column: 25)
!4086 = !DILocation(line: 237, column: 27, scope: !4085, inlinedAt: !3968)
!4087 = !DILocation(line: 239, column: 39, scope: !3894, inlinedAt: !3968)
!4088 = !DILocation(line: 239, column: 50, scope: !3894, inlinedAt: !3968)
!4089 = !DILocation(line: 239, column: 61, scope: !3894, inlinedAt: !3968)
!4090 = !DILocalVariable(name: "__dest", arg: 1, scope: !4091, file: !4092, line: 107, type: !4095)
!4091 = distinct !DISubprogram(name: "strcpy", scope: !4092, file: !4092, line: 107, type: !4093, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !237, variables: !4097)
!4092 = !DIFile(filename: "/usr/include/bits/string3.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4093 = !DISubroutineType(types: !4094)
!4094 = !{!26, !4095, !4096}
!4095 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !26)
!4096 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !34)
!4097 = !{!4090, !4098}
!4098 = !DILocalVariable(name: "__src", arg: 2, scope: !4091, file: !4092, line: 107, type: !4096)
!4099 = !DILocation(line: 107, column: 1, scope: !4091, inlinedAt: !4100)
!4100 = distinct !DILocation(line: 239, column: 23, scope: !3894, inlinedAt: !3968)
!4101 = !DILocation(line: 109, column: 49, scope: !4091, inlinedAt: !4100)
!4102 = !DILocation(line: 109, column: 10, scope: !4091, inlinedAt: !4100)
!4103 = !DILocation(line: 107, column: 1, scope: !4091, inlinedAt: !4104)
!4104 = distinct !DILocation(line: 240, column: 23, scope: !3894, inlinedAt: !3968)
!4105 = !DILocation(line: 109, column: 49, scope: !4091, inlinedAt: !4104)
!4106 = !DILocation(line: 109, column: 10, scope: !4091, inlinedAt: !4104)
!4107 = !DILocation(line: 241, column: 21, scope: !3895, inlinedAt: !3968)
!4108 = !DILocation(line: 242, column: 19, scope: !3897, inlinedAt: !3968)
!4109 = !DILocation(line: 243, column: 32, scope: !4110, inlinedAt: !3968)
!4110 = distinct !DILexicalBlock(scope: !3897, file: !581, line: 243, column: 23)
!4111 = !DILocation(line: 243, column: 23, scope: !3897, inlinedAt: !3968)
!4112 = !DILocation(line: 247, column: 33, scope: !4113, inlinedAt: !3968)
!4113 = distinct !DILexicalBlock(scope: !4110, file: !581, line: 246, column: 21)
!4114 = !DILocation(line: 247, column: 45, scope: !4113, inlinedAt: !3968)
!4115 = !DILocation(line: 253, column: 11, scope: !3901, inlinedAt: !3968)
!4116 = !DILocation(line: 377, column: 23, scope: !3903, inlinedAt: !3968)
!4117 = !DILocation(line: 378, column: 5, scope: !3903, inlinedAt: !3968)
!4118 = !DILocation(line: 396, column: 15, scope: !3881)
!4119 = !DILocation(line: 590, column: 8, scope: !3890)
!4120 = !DILocation(line: 590, column: 17, scope: !3890)
!4121 = !DILocation(line: 589, column: 3, scope: !4122)
!4122 = !DILexicalBlockFile(scope: !3891, file: !581, discriminator: 1)
!4123 = !DILocation(line: 592, column: 9, scope: !3888)
!4124 = !DILocation(line: 592, column: 35, scope: !3889)
!4125 = !DILocation(line: 593, column: 9, scope: !3889)
!4126 = !DILocation(line: 593, column: 24, scope: !4127)
!4127 = !DILexicalBlockFile(scope: !3889, file: !581, discriminator: 1)
!4128 = !DILocation(line: 593, column: 31, scope: !4127)
!4129 = !DILocation(line: 593, column: 34, scope: !4130)
!4130 = !DILexicalBlockFile(scope: !3889, file: !581, discriminator: 2)
!4131 = !DILocation(line: 593, column: 45, scope: !4130)
!4132 = !DILocation(line: 592, column: 9, scope: !4133)
!4133 = !DILexicalBlockFile(scope: !3890, file: !581, discriminator: 1)
!4134 = !DILocation(line: 595, column: 29, scope: !4135)
!4135 = distinct !DILexicalBlock(scope: !3889, file: !581, line: 594, column: 7)
!4136 = !DILocation(line: 595, column: 27, scope: !4135)
!4137 = !DILocation(line: 595, column: 46, scope: !4135)
!4138 = !DILocation(line: 596, column: 9, scope: !4135)
!4139 = !DILocation(line: 591, column: 19, scope: !3890)
!4140 = !DILocation(line: 591, column: 36, scope: !3890)
!4141 = !DILocation(line: 591, column: 16, scope: !3890)
!4142 = !DILocation(line: 591, column: 52, scope: !4133)
!4143 = !DILocation(line: 591, column: 69, scope: !3890)
!4144 = !DILocation(line: 591, column: 49, scope: !3890)
!4145 = distinct !{!4145, !4146, !4147}
!4146 = !DILocation(line: 589, column: 3, scope: !3891)
!4147 = !DILocation(line: 597, column: 7, scope: !3891)
!4148 = !DILocation(line: 602, column: 7, scope: !4149)
!4149 = distinct !DILexicalBlock(scope: !3881, file: !581, line: 602, column: 7)
!4150 = !DILocation(line: 602, column: 18, scope: !4149)
!4151 = !DILocation(line: 602, column: 7, scope: !3881)
!4152 = !DILocation(line: 612, column: 3, scope: !3881)
!4153 = distinct !DISubprogram(name: "rpl_fclose", scope: !4154, file: !4154, line: 56, type: !4155, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !624, variables: !4197)
!4154 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4155 = !DISubroutineType(types: !4156)
!4156 = !{!24, !4157}
!4157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4158, size: 64)
!4158 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !858, line: 49, baseType: !4159)
!4159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !860, line: 241, size: 1728, elements: !4160)
!4160 = !{!4161, !4162, !4163, !4164, !4165, !4166, !4167, !4168, !4169, !4170, !4171, !4172, !4173, !4181, !4182, !4183, !4184, !4185, !4186, !4187, !4188, !4189, !4190, !4191, !4192, !4193, !4194, !4195, !4196}
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4159, file: !860, line: 242, baseType: !24, size: 32)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4159, file: !860, line: 247, baseType: !26, size: 64, offset: 64)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4159, file: !860, line: 248, baseType: !26, size: 64, offset: 128)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4159, file: !860, line: 249, baseType: !26, size: 64, offset: 192)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4159, file: !860, line: 250, baseType: !26, size: 64, offset: 256)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4159, file: !860, line: 251, baseType: !26, size: 64, offset: 320)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4159, file: !860, line: 252, baseType: !26, size: 64, offset: 384)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4159, file: !860, line: 253, baseType: !26, size: 64, offset: 448)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4159, file: !860, line: 254, baseType: !26, size: 64, offset: 512)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4159, file: !860, line: 256, baseType: !26, size: 64, offset: 576)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4159, file: !860, line: 257, baseType: !26, size: 64, offset: 640)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4159, file: !860, line: 258, baseType: !26, size: 64, offset: 704)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4159, file: !860, line: 260, baseType: !4174, size: 64, offset: 768)
!4174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4175, size: 64)
!4175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !860, line: 156, size: 192, elements: !4176)
!4176 = !{!4177, !4178, !4180}
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4175, file: !860, line: 157, baseType: !4174, size: 64)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4175, file: !860, line: 158, baseType: !4179, size: 64, offset: 64)
!4179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4159, size: 64)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4175, file: !860, line: 162, baseType: !24, size: 32, offset: 128)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4159, file: !860, line: 262, baseType: !4179, size: 64, offset: 832)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4159, file: !860, line: 264, baseType: !24, size: 32, offset: 896)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4159, file: !860, line: 268, baseType: !24, size: 32, offset: 928)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4159, file: !860, line: 270, baseType: !886, size: 64, offset: 960)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4159, file: !860, line: 274, baseType: !183, size: 16, offset: 1024)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4159, file: !860, line: 275, baseType: !890, size: 8, offset: 1040)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4159, file: !860, line: 276, baseType: !892, size: 8, offset: 1048)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4159, file: !860, line: 280, baseType: !896, size: 64, offset: 1088)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4159, file: !860, line: 289, baseType: !899, size: 64, offset: 1152)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4159, file: !860, line: 297, baseType: !64, size: 64, offset: 1216)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4159, file: !860, line: 298, baseType: !64, size: 64, offset: 1280)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4159, file: !860, line: 299, baseType: !64, size: 64, offset: 1344)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4159, file: !860, line: 300, baseType: !64, size: 64, offset: 1408)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4159, file: !860, line: 302, baseType: !65, size: 64, offset: 1472)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4159, file: !860, line: 303, baseType: !24, size: 32, offset: 1536)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4159, file: !860, line: 305, baseType: !907, size: 160, offset: 1568)
!4197 = !{!4198, !4199, !4200, !4201}
!4198 = !DILocalVariable(name: "fp", arg: 1, scope: !4153, file: !4154, line: 56, type: !4157)
!4199 = !DILocalVariable(name: "saved_errno", scope: !4153, file: !4154, line: 58, type: !24)
!4200 = !DILocalVariable(name: "fd", scope: !4153, file: !4154, line: 59, type: !24)
!4201 = !DILocalVariable(name: "result", scope: !4153, file: !4154, line: 60, type: !24)
!4202 = !DILocation(line: 56, column: 19, scope: !4153)
!4203 = !DILocation(line: 58, column: 7, scope: !4153)
!4204 = !DILocation(line: 60, column: 7, scope: !4153)
!4205 = !DILocation(line: 63, column: 8, scope: !4153)
!4206 = !DILocation(line: 59, column: 7, scope: !4153)
!4207 = !DILocation(line: 64, column: 10, scope: !4208)
!4208 = distinct !DILexicalBlock(scope: !4153, file: !4154, line: 64, column: 7)
!4209 = !DILocation(line: 64, column: 7, scope: !4153)
!4210 = !DILocation(line: 65, column: 12, scope: !4208)
!4211 = !DILocation(line: 65, column: 5, scope: !4208)
!4212 = !DILocation(line: 70, column: 9, scope: !4213)
!4213 = distinct !DILexicalBlock(scope: !4153, file: !4154, line: 70, column: 7)
!4214 = !DILocation(line: 70, column: 23, scope: !4213)
!4215 = !DILocation(line: 70, column: 33, scope: !4216)
!4216 = !DILexicalBlockFile(scope: !4213, file: !4154, discriminator: 1)
!4217 = !DILocation(line: 70, column: 26, scope: !4218)
!4218 = !DILexicalBlockFile(scope: !4213, file: !4154, discriminator: 3)
!4219 = !DILocation(line: 70, column: 59, scope: !4216)
!4220 = !DILocation(line: 71, column: 7, scope: !4213)
!4221 = !DILocation(line: 71, column: 10, scope: !4216)
!4222 = !DILocation(line: 70, column: 7, scope: !4223)
!4223 = !DILexicalBlockFile(scope: !4153, file: !4154, discriminator: 2)
!4224 = !DILocation(line: 98, column: 12, scope: !4153)
!4225 = !DILocation(line: 103, column: 7, scope: !4153)
!4226 = !DILocation(line: 72, column: 19, scope: !4213)
!4227 = !DILocation(line: 103, column: 19, scope: !4228)
!4228 = distinct !DILexicalBlock(scope: !4153, file: !4154, line: 103, column: 7)
!4229 = !DILocation(line: 105, column: 13, scope: !4230)
!4230 = distinct !DILexicalBlock(scope: !4228, file: !4154, line: 104, column: 5)
!4231 = !DILocation(line: 107, column: 5, scope: !4230)
!4232 = !DILocation(line: 110, column: 1, scope: !4153)
!4233 = distinct !DISubprogram(name: "rpl_fflush", scope: !4234, file: !4234, line: 127, type: !4235, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !626, variables: !4277)
!4234 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4235 = !DISubroutineType(types: !4236)
!4236 = !{!24, !4237}
!4237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4238, size: 64)
!4238 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !858, line: 49, baseType: !4239)
!4239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !860, line: 241, size: 1728, elements: !4240)
!4240 = !{!4241, !4242, !4243, !4244, !4245, !4246, !4247, !4248, !4249, !4250, !4251, !4252, !4253, !4261, !4262, !4263, !4264, !4265, !4266, !4267, !4268, !4269, !4270, !4271, !4272, !4273, !4274, !4275, !4276}
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4239, file: !860, line: 242, baseType: !24, size: 32)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4239, file: !860, line: 247, baseType: !26, size: 64, offset: 64)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4239, file: !860, line: 248, baseType: !26, size: 64, offset: 128)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4239, file: !860, line: 249, baseType: !26, size: 64, offset: 192)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4239, file: !860, line: 250, baseType: !26, size: 64, offset: 256)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4239, file: !860, line: 251, baseType: !26, size: 64, offset: 320)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4239, file: !860, line: 252, baseType: !26, size: 64, offset: 384)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4239, file: !860, line: 253, baseType: !26, size: 64, offset: 448)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4239, file: !860, line: 254, baseType: !26, size: 64, offset: 512)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4239, file: !860, line: 256, baseType: !26, size: 64, offset: 576)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4239, file: !860, line: 257, baseType: !26, size: 64, offset: 640)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4239, file: !860, line: 258, baseType: !26, size: 64, offset: 704)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4239, file: !860, line: 260, baseType: !4254, size: 64, offset: 768)
!4254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4255, size: 64)
!4255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !860, line: 156, size: 192, elements: !4256)
!4256 = !{!4257, !4258, !4260}
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4255, file: !860, line: 157, baseType: !4254, size: 64)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4255, file: !860, line: 158, baseType: !4259, size: 64, offset: 64)
!4259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4239, size: 64)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4255, file: !860, line: 162, baseType: !24, size: 32, offset: 128)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4239, file: !860, line: 262, baseType: !4259, size: 64, offset: 832)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4239, file: !860, line: 264, baseType: !24, size: 32, offset: 896)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4239, file: !860, line: 268, baseType: !24, size: 32, offset: 928)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4239, file: !860, line: 270, baseType: !886, size: 64, offset: 960)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4239, file: !860, line: 274, baseType: !183, size: 16, offset: 1024)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4239, file: !860, line: 275, baseType: !890, size: 8, offset: 1040)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4239, file: !860, line: 276, baseType: !892, size: 8, offset: 1048)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4239, file: !860, line: 280, baseType: !896, size: 64, offset: 1088)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4239, file: !860, line: 289, baseType: !899, size: 64, offset: 1152)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4239, file: !860, line: 297, baseType: !64, size: 64, offset: 1216)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4239, file: !860, line: 298, baseType: !64, size: 64, offset: 1280)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4239, file: !860, line: 299, baseType: !64, size: 64, offset: 1344)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4239, file: !860, line: 300, baseType: !64, size: 64, offset: 1408)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4239, file: !860, line: 302, baseType: !65, size: 64, offset: 1472)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4239, file: !860, line: 303, baseType: !24, size: 32, offset: 1536)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4239, file: !860, line: 305, baseType: !907, size: 160, offset: 1568)
!4277 = !{!4278}
!4278 = !DILocalVariable(name: "stream", arg: 1, scope: !4233, file: !4234, line: 127, type: !4237)
!4279 = !DILocation(line: 127, column: 19, scope: !4233)
!4280 = !DILocation(line: 148, column: 14, scope: !4281)
!4281 = distinct !DILexicalBlock(scope: !4233, file: !4234, line: 148, column: 7)
!4282 = !DILocation(line: 148, column: 22, scope: !4281)
!4283 = !DILocation(line: 148, column: 27, scope: !4284)
!4284 = !DILexicalBlockFile(scope: !4281, file: !4234, discriminator: 1)
!4285 = !DILocation(line: 148, column: 7, scope: !4286)
!4286 = !DILexicalBlockFile(scope: !4233, file: !4234, discriminator: 1)
!4287 = !DILocation(line: 149, column: 12, scope: !4281)
!4288 = !DILocation(line: 149, column: 5, scope: !4281)
!4289 = !DILocalVariable(name: "fp", arg: 1, scope: !4290, file: !4234, line: 40, type: !4237)
!4290 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !4234, file: !4234, line: 40, type: !4291, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !626, variables: !4293)
!4291 = !DISubroutineType(types: !4292)
!4292 = !{null, !4237}
!4293 = !{!4289}
!4294 = !DILocation(line: 40, column: 48, scope: !4290, inlinedAt: !4295)
!4295 = distinct !DILocation(line: 153, column: 3, scope: !4233)
!4296 = !DILocation(line: 42, column: 11, scope: !4297, inlinedAt: !4295)
!4297 = distinct !DILexicalBlock(scope: !4290, file: !4234, line: 42, column: 7)
!4298 = !DILocation(line: 42, column: 18, scope: !4297, inlinedAt: !4295)
!4299 = !DILocation(line: 42, column: 7, scope: !4290, inlinedAt: !4295)
!4300 = !DILocation(line: 44, column: 5, scope: !4297, inlinedAt: !4295)
!4301 = !DILocation(line: 155, column: 10, scope: !4233)
!4302 = !DILocation(line: 155, column: 3, scope: !4233)
!4303 = !DILocation(line: 229, column: 1, scope: !4233)
!4304 = distinct !DISubprogram(name: "rpl_fseeko", scope: !4305, file: !4305, line: 28, type: !4306, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !628, variables: !4349)
!4305 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4306 = !DISubroutineType(types: !4307)
!4307 = !{!24, !4308, !4348, !24}
!4308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4309, size: 64)
!4309 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !858, line: 49, baseType: !4310)
!4310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !860, line: 241, size: 1728, elements: !4311)
!4311 = !{!4312, !4313, !4314, !4315, !4316, !4317, !4318, !4319, !4320, !4321, !4322, !4323, !4324, !4332, !4333, !4334, !4335, !4336, !4337, !4338, !4339, !4340, !4341, !4342, !4343, !4344, !4345, !4346, !4347}
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4310, file: !860, line: 242, baseType: !24, size: 32)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4310, file: !860, line: 247, baseType: !26, size: 64, offset: 64)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4310, file: !860, line: 248, baseType: !26, size: 64, offset: 128)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4310, file: !860, line: 249, baseType: !26, size: 64, offset: 192)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4310, file: !860, line: 250, baseType: !26, size: 64, offset: 256)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4310, file: !860, line: 251, baseType: !26, size: 64, offset: 320)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4310, file: !860, line: 252, baseType: !26, size: 64, offset: 384)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4310, file: !860, line: 253, baseType: !26, size: 64, offset: 448)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4310, file: !860, line: 254, baseType: !26, size: 64, offset: 512)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4310, file: !860, line: 256, baseType: !26, size: 64, offset: 576)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4310, file: !860, line: 257, baseType: !26, size: 64, offset: 640)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4310, file: !860, line: 258, baseType: !26, size: 64, offset: 704)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4310, file: !860, line: 260, baseType: !4325, size: 64, offset: 768)
!4325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4326, size: 64)
!4326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !860, line: 156, size: 192, elements: !4327)
!4327 = !{!4328, !4329, !4331}
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4326, file: !860, line: 157, baseType: !4325, size: 64)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4326, file: !860, line: 158, baseType: !4330, size: 64, offset: 64)
!4330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4310, size: 64)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4326, file: !860, line: 162, baseType: !24, size: 32, offset: 128)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4310, file: !860, line: 262, baseType: !4330, size: 64, offset: 832)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4310, file: !860, line: 264, baseType: !24, size: 32, offset: 896)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4310, file: !860, line: 268, baseType: !24, size: 32, offset: 928)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4310, file: !860, line: 270, baseType: !886, size: 64, offset: 960)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4310, file: !860, line: 274, baseType: !183, size: 16, offset: 1024)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4310, file: !860, line: 275, baseType: !890, size: 8, offset: 1040)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4310, file: !860, line: 276, baseType: !892, size: 8, offset: 1048)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4310, file: !860, line: 280, baseType: !896, size: 64, offset: 1088)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4310, file: !860, line: 289, baseType: !899, size: 64, offset: 1152)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4310, file: !860, line: 297, baseType: !64, size: 64, offset: 1216)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4310, file: !860, line: 298, baseType: !64, size: 64, offset: 1280)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4310, file: !860, line: 299, baseType: !64, size: 64, offset: 1344)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4310, file: !860, line: 300, baseType: !64, size: 64, offset: 1408)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4310, file: !860, line: 302, baseType: !65, size: 64, offset: 1472)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4310, file: !860, line: 303, baseType: !24, size: 32, offset: 1536)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4310, file: !860, line: 305, baseType: !907, size: 160, offset: 1568)
!4348 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !858, line: 91, baseType: !886)
!4349 = !{!4350, !4351, !4352, !4353}
!4350 = !DILocalVariable(name: "fp", arg: 1, scope: !4304, file: !4305, line: 28, type: !4308)
!4351 = !DILocalVariable(name: "offset", arg: 2, scope: !4304, file: !4305, line: 28, type: !4348)
!4352 = !DILocalVariable(name: "whence", arg: 3, scope: !4304, file: !4305, line: 28, type: !24)
!4353 = !DILocalVariable(name: "pos", scope: !4354, file: !4305, line: 116, type: !4348)
!4354 = distinct !DILexicalBlock(scope: !4355, file: !4305, line: 112, column: 5)
!4355 = distinct !DILexicalBlock(scope: !4304, file: !4305, line: 51, column: 7)
!4356 = !DILocation(line: 28, column: 15, scope: !4304)
!4357 = !DILocation(line: 28, column: 25, scope: !4304)
!4358 = !DILocation(line: 28, column: 37, scope: !4304)
!4359 = !DILocation(line: 51, column: 11, scope: !4355)
!4360 = !DILocation(line: 51, column: 31, scope: !4355)
!4361 = !DILocation(line: 51, column: 24, scope: !4355)
!4362 = !DILocation(line: 52, column: 7, scope: !4355)
!4363 = !DILocation(line: 52, column: 14, scope: !4364)
!4364 = !DILexicalBlockFile(scope: !4355, file: !4305, discriminator: 1)
!4365 = !{!915, !649, i64 40}
!4366 = !DILocation(line: 52, column: 35, scope: !4364)
!4367 = !{!915, !649, i64 32}
!4368 = !DILocation(line: 52, column: 28, scope: !4364)
!4369 = !DILocation(line: 53, column: 7, scope: !4355)
!4370 = !DILocation(line: 53, column: 14, scope: !4364)
!4371 = !{!915, !649, i64 72}
!4372 = !DILocation(line: 53, column: 28, scope: !4364)
!4373 = !DILocation(line: 51, column: 7, scope: !4374)
!4374 = !DILexicalBlockFile(scope: !4304, file: !4305, discriminator: 1)
!4375 = !DILocation(line: 116, column: 26, scope: !4354)
!4376 = !DILocation(line: 116, column: 19, scope: !4377)
!4377 = !DILexicalBlockFile(scope: !4354, file: !4305, discriminator: 1)
!4378 = !DILocation(line: 116, column: 13, scope: !4354)
!4379 = !DILocation(line: 117, column: 15, scope: !4380)
!4380 = distinct !DILexicalBlock(scope: !4354, file: !4305, line: 117, column: 11)
!4381 = !DILocation(line: 117, column: 11, scope: !4354)
!4382 = !DILocation(line: 127, column: 11, scope: !4354)
!4383 = !DILocation(line: 127, column: 18, scope: !4354)
!4384 = !DILocation(line: 128, column: 11, scope: !4354)
!4385 = !DILocation(line: 128, column: 19, scope: !4354)
!4386 = !{!915, !777, i64 144}
!4387 = !DILocation(line: 159, column: 7, scope: !4354)
!4388 = !DILocation(line: 161, column: 10, scope: !4304)
!4389 = !DILocation(line: 161, column: 3, scope: !4304)
!4390 = !DILocation(line: 162, column: 1, scope: !4304)
