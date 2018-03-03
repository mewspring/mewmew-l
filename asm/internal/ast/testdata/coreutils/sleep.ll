; ModuleID = 'coreutils-8.27/src/sleep.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.__locale_struct = type { [13 x %struct.__locale_data*], i16*, i32*, i32*, [13 x i8*] }
%struct.__locale_data = type opaque
%struct.option = type { i8*, i32, i32*, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.timespec = type { i64, i64 }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [383 x i8] c"Usage: %s NUMBER[SUFFIX]...\0A  or:  %s OPTION\0APause for NUMBER seconds.  SUFFIX may be 's' for seconds (the default),\0A'm' for minutes, 'h' for hours or 'd' for days.  Unlike most implementations\0Athat require NUMBER be an integer, here NUMBER may be an arbitrary floating\0Apoint number.  Given two or more arguments, pause for the amount of time\0Aspecified by the sum of their values.\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"sleep\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.23 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.25 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.26 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.27 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"Jim Meyering\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"Paul Eggert\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.12 = private unnamed_addr constant [25 x i8] c"invalid time interval %s\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"cannot read realtime clock\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), align 8, !dbg !0
@.str.14 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@c_locale_cache = internal global %struct.__locale_struct* null, align 8, !dbg !9
@.str.17 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !41
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !46
@.str.20 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.21 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.22 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !50
@opterr = external local_unnamed_addr global i32, align 4
@.str.29 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@long_options = internal constant [3 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1.30, i32 0, i32 0), i32 0, i32* null, i32 104 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.31, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option zeroinitializer], align 16, !dbg !57
@.str.1.30 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.2.31 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !75
@.str.36 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.37 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.38 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.40, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.41, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.42, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.43, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.44, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.45, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.46, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.47, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.48, i32 0, i32 0), i8* null], align 16, !dbg !83
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
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !127
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !134
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !147
@.str.11.49 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.50 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.51 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.52 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.53 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !154
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !161
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !149
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !163
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
@.str.16 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.76 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.77 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !169
@.str.1.88 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.89 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.106 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.109 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !178
@.str.3.110 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.111 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.112 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.113 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.114 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.115 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) #0 !dbg !637 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !641, metadata !642), !dbg !643
  %2 = icmp eq i32 %0, 0, !dbg !644
  br i1 %2, label %8, label %3, !dbg !646

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !647, !tbaa !650
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #10, !dbg !647
  %6 = load i8*, i8** @program_name, align 8, !dbg !647, !tbaa !650
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #10, !dbg !654
  br label %33, !dbg !656

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([383 x i8], [383 x i8]* @.str.1, i64 0, i64 0), i32 5) #10, !dbg !658
  %10 = load i8*, i8** @program_name, align 8, !dbg !658, !tbaa !650
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10, i8* %10) #10, !dbg !660
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 5) #10, !dbg !662
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !662, !tbaa !650
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #10, !dbg !663
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i32 5) #10, !dbg !664
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !664, !tbaa !650
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #10, !dbg !665
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !543, metadata !642) #10, !dbg !666
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i64 0, metadata !543, metadata !642) #10, !dbg !666
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 5) #10, !dbg !668
  %19 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %18, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.23, i64 0, i64 0)) #10, !dbg !669
  %20 = tail call i8* @setlocale(i32 5, i8* null) #10, !dbg !671
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !554, metadata !642) #10, !dbg !672
  %21 = icmp eq i8* %20, null, !dbg !673
  br i1 %21, label %28, label %22, !dbg !674

; <label>:22:                                     ; preds = %8
  %23 = tail call i32 @strncmp(i8* nonnull %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0), i64 3) #14, !dbg !675
  %24 = icmp eq i32 %23, 0, !dbg !675
  br i1 %24, label %28, label %25, !dbg !677

; <label>:25:                                     ; preds = %22
  %26 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.25, i64 0, i64 0), i32 5) #10, !dbg !679
  %27 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0)) #10, !dbg !681
  br label %28, !dbg !683

; <label>:28:                                     ; preds = %8, %22, %25
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.26, i64 0, i64 0), i32 5) #10, !dbg !684
  %30 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %29, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0)) #10, !dbg !685
  %31 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.27, i64 0, i64 0), i32 5) #10, !dbg !686
  %32 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i64 0, i64 0)) #10, !dbg !687
  br label %33

; <label>:33:                                     ; preds = %28, %3
  tail call void @exit(i32 %0) #15, !dbg !688
  unreachable, !dbg !688
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
define i32 @main(i32, i8**) local_unnamed_addr #6 !dbg !689 {
  %3 = alloca double, align 8
  %4 = alloca i8*, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !694, metadata !642), !dbg !705
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !695, metadata !642), !dbg !706
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, i64 0, metadata !697, metadata !642), !dbg !707
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !699, metadata !642), !dbg !708
  %5 = load i8*, i8** %1, align 8, !dbg !709, !tbaa !650
  tail call void @set_program_name(i8* %5) #10, !dbg !710
  %6 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)) #10, !dbg !711
  %7 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0)) #10, !dbg !712
  %8 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0)) #10, !dbg !713
  %9 = tail call i32 @atexit(void ()* nonnull @close_stdout) #10, !dbg !714
  %10 = load i8*, i8** @Version, align 8, !dbg !715, !tbaa !650
  tail call void (i32, i8**, i8*, i8*, i8*, void (i32)*, ...) @parse_long_options(i32 %0, i8** %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i8* %10, void (i32)* nonnull @usage, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i8* null) #10, !dbg !716
  %11 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), %struct.option* null, i32* null) #10, !dbg !717
  %12 = icmp eq i32 %11, -1, !dbg !719
  br i1 %12, label %14, label %13, !dbg !720

; <label>:13:                                     ; preds = %2
  tail call void @usage(i32 1) #16, !dbg !721
  unreachable, !dbg !721

; <label>:14:                                     ; preds = %2
  %15 = icmp eq i32 %0, 1, !dbg !722
  br i1 %15, label %16, label %18, !dbg !724

; <label>:16:                                     ; preds = %14
  %17 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 5) #10, !dbg !725
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %17) #10, !dbg !727
  tail call void @usage(i32 1) #16, !dbg !729
  unreachable, !dbg !729

; <label>:18:                                     ; preds = %14
  %19 = load i32, i32* @optind, align 4, !dbg !730, !tbaa !731
  tail call void @llvm.dbg.value(metadata i32 %19, i64 0, metadata !696, metadata !642), !dbg !733
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !699, metadata !642), !dbg !708
  call void @llvm.dbg.value(metadata double 0.000000e+00, i64 0, metadata !697, metadata !642), !dbg !707
  call void @llvm.dbg.value(metadata i32 %19, i64 0, metadata !696, metadata !642), !dbg !733
  %20 = icmp slt i32 %19, %0, !dbg !734
  br i1 %20, label %21, label %75, !dbg !736

; <label>:21:                                     ; preds = %18
  %22 = bitcast double* %3 to i8*
  %23 = bitcast i8** %4 to i8*
  %24 = sext i32 %19 to i64, !dbg !736
  br label %25, !dbg !736

; <label>:25:                                     ; preds = %64, %21
  %26 = phi i64 [ %24, %21 ], [ %68, %64 ]
  %27 = phi i8 [ 1, %21 ], [ %66, %64 ]
  %28 = phi double [ 0.000000e+00, %21 ], [ %67, %64 ]
  call void @llvm.lifetime.start(i64 8, i8* nonnull %22) #10, !dbg !738
  call void @llvm.lifetime.start(i64 8, i8* nonnull %23) #10, !dbg !739
  %29 = getelementptr inbounds i8*, i8** %1, i64 %26, !dbg !740
  %30 = load i8*, i8** %29, align 8, !dbg !740, !tbaa !650
  call void @llvm.dbg.value(metadata double* %3, i64 0, metadata !700, metadata !742), !dbg !743
  call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !704, metadata !742), !dbg !744
  %31 = call zeroext i1 @xstrtod(i8* %30, i8** nonnull %4, double* nonnull %3, double (i8*, i8**)* nonnull @c_strtod) #10, !dbg !745
  br i1 %31, label %39, label %32, !dbg !746

; <label>:32:                                     ; preds = %25
  %33 = tail call i32* @__errno_location() #1, !dbg !747
  %34 = load i32, i32* %33, align 4, !dbg !747, !tbaa !731
  %35 = icmp eq i32 %34, 34, !dbg !749
  %36 = load double, double* %3, align 8, !dbg !750
  call void @llvm.dbg.value(metadata double %36, i64 0, metadata !700, metadata !642), !dbg !743
  %37 = fcmp oge double %36, 0.000000e+00, !dbg !751
  %38 = and i1 %35, %37, !dbg !752
  br i1 %38, label %42, label %59, !dbg !752

; <label>:39:                                     ; preds = %25
  %40 = load double, double* %3, align 8, !dbg !750, !tbaa !753
  call void @llvm.dbg.value(metadata double %40, i64 0, metadata !700, metadata !642), !dbg !743
  %41 = fcmp ult double %40, 0.000000e+00, !dbg !751
  br i1 %41, label %59, label %42, !dbg !755

; <label>:42:                                     ; preds = %39, %32
  %43 = phi double [ %40, %39 ], [ %36, %32 ], !dbg !756
  %44 = load i8*, i8** %4, align 8, !dbg !766, !tbaa !650
  call void @llvm.dbg.value(metadata i8* %44, i64 0, metadata !704, metadata !642), !dbg !744
  %45 = load i8, i8* %44, align 1, !dbg !767, !tbaa !768
  %46 = icmp eq i8 %45, 0, !dbg !767
  br i1 %46, label %51, label %47, !dbg !769

; <label>:47:                                     ; preds = %42
  %48 = getelementptr inbounds i8, i8* %44, i64 1, !dbg !770
  %49 = load i8, i8* %48, align 1, !dbg !772, !tbaa !768
  %50 = icmp eq i8 %49, 0, !dbg !772
  br i1 %50, label %51, label %59, !dbg !773

; <label>:51:                                     ; preds = %47, %42
  call void @llvm.dbg.value(metadata i8* %44, i64 0, metadata !704, metadata !642), !dbg !744
  call void @llvm.dbg.value(metadata double* %3, i64 0, metadata !700, metadata !742), !dbg !743
  tail call void @llvm.dbg.value(metadata double* %3, i64 0, metadata !762, metadata !642), !dbg !774
  tail call void @llvm.dbg.value(metadata i8 %45, i64 0, metadata !763, metadata !642), !dbg !775
  %52 = sext i8 %45 to i32, !dbg !776
  switch i32 %52, label %59 [
    i32 0, label %56
    i32 115, label %56
    i32 109, label %53
    i32 104, label %54
    i32 100, label %55
  ], !dbg !777

; <label>:53:                                     ; preds = %51
  tail call void @llvm.dbg.value(metadata i32 60, i64 0, metadata !764, metadata !642), !dbg !778
  br label %56, !dbg !779

; <label>:54:                                     ; preds = %51
  tail call void @llvm.dbg.value(metadata i32 3600, i64 0, metadata !764, metadata !642), !dbg !778
  br label %56, !dbg !781

; <label>:55:                                     ; preds = %51
  tail call void @llvm.dbg.value(metadata i32 86400, i64 0, metadata !764, metadata !642), !dbg !778
  br label %56, !dbg !782

; <label>:56:                                     ; preds = %51, %51, %53, %54, %55
  %57 = phi double [ 8.640000e+04, %55 ], [ 3.600000e+03, %54 ], [ 6.000000e+01, %53 ], [ 1.000000e+00, %51 ], [ 1.000000e+00, %51 ]
  %58 = fmul double %57, %43, !dbg !756
  store double %58, double* %3, align 8, !dbg !756, !tbaa !753
  br label %64, !dbg !783

; <label>:59:                                     ; preds = %51, %39, %47, %32
  %60 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0), i32 5) #10, !dbg !785
  %61 = load i8*, i8** %29, align 8, !dbg !787, !tbaa !650
  %62 = call i8* @quote(i8* %61) #10, !dbg !788
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %60, i8* %62) #10, !dbg !790
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !699, metadata !642), !dbg !708
  %63 = load double, double* %3, align 8, !tbaa !753
  br label %64, !dbg !792

; <label>:64:                                     ; preds = %56, %59
  %65 = phi double [ %63, %59 ], [ %58, %56 ], !dbg !793
  %66 = phi i8 [ 0, %59 ], [ %27, %56 ]
  call void @llvm.dbg.value(metadata i8 %66, i64 0, metadata !699, metadata !642), !dbg !708
  call void @llvm.dbg.value(metadata double %65, i64 0, metadata !700, metadata !642), !dbg !743
  %67 = fadd double %28, %65, !dbg !794
  call void @llvm.dbg.value(metadata double %67, i64 0, metadata !697, metadata !642), !dbg !707
  call void @llvm.lifetime.end(i64 8, i8* nonnull %23) #10, !dbg !795
  call void @llvm.lifetime.end(i64 8, i8* nonnull %22) #10, !dbg !795
  %68 = add nsw i64 %26, 1, !dbg !796
  call void @llvm.dbg.value(metadata i8 %66, i64 0, metadata !699, metadata !642), !dbg !708
  call void @llvm.dbg.value(metadata double %67, i64 0, metadata !697, metadata !642), !dbg !707
  %69 = trunc i64 %68 to i32, !dbg !734
  %70 = icmp eq i32 %69, %0, !dbg !734
  br i1 %70, label %71, label %25, !dbg !736, !llvm.loop !798

; <label>:71:                                     ; preds = %64
  %72 = and i8 %66, 1, !dbg !801
  %73 = icmp eq i8 %72, 0, !dbg !801
  br i1 %73, label %74, label %75, !dbg !803

; <label>:74:                                     ; preds = %71
  call void @usage(i32 1) #16, !dbg !804
  unreachable, !dbg !804

; <label>:75:                                     ; preds = %18, %71
  %76 = phi double [ %67, %71 ], [ 0.000000e+00, %18 ]
  %77 = call i32 @xnanosleep(double %76) #10, !dbg !805
  %78 = icmp eq i32 %77, 0, !dbg !805
  br i1 %78, label %83, label %79, !dbg !807

; <label>:79:                                     ; preds = %75
  %80 = tail call i32* @__errno_location() #1, !dbg !808
  %81 = load i32, i32* %80, align 4, !dbg !808, !tbaa !731
  %82 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0), i32 5) #10, !dbg !809
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %81, i8* %82) #10, !dbg !811
  unreachable, !dbg !808

; <label>:83:                                     ; preds = %75
  ret i32 0, !dbg !813
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

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #7

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #8

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #7

; Function Attrs: nounwind sspstrong uwtable
define double @c_strtod(i8*, i8**) #6 !dbg !814 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !818, metadata !642), !dbg !822
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !819, metadata !642), !dbg !823
  %3 = load volatile %struct.__locale_struct*, %struct.__locale_struct** @c_locale_cache, align 8, !dbg !824, !tbaa !650
  %4 = icmp eq %struct.__locale_struct* %3, null, !dbg !824
  br i1 %4, label %5, label %7, !dbg !830

; <label>:5:                                      ; preds = %2
  %6 = tail call %struct.__locale_struct* @newlocale(i32 8127, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), %struct.__locale_struct* null) #10, !dbg !831
  store volatile %struct.__locale_struct* %6, %struct.__locale_struct** @c_locale_cache, align 8, !dbg !832, !tbaa !650
  br label %7, !dbg !833

; <label>:7:                                      ; preds = %2, %5
  %8 = load volatile %struct.__locale_struct*, %struct.__locale_struct** @c_locale_cache, align 8, !dbg !834, !tbaa !650
  tail call void @llvm.dbg.value(metadata %struct.__locale_struct* %8, i64 0, metadata !821, metadata !642), !dbg !835
  %9 = icmp eq %struct.__locale_struct* %8, null, !dbg !836
  br i1 %9, label %10, label %13, !dbg !838

; <label>:10:                                     ; preds = %7
  %11 = icmp eq i8** %1, null, !dbg !839
  br i1 %11, label %15, label %12, !dbg !842

; <label>:12:                                     ; preds = %10
  store i8* %0, i8** %1, align 8, !dbg !843, !tbaa !650
  br label %15, !dbg !844

; <label>:13:                                     ; preds = %7
  %14 = tail call double @strtod_l(i8* %0, i8** %1, %struct.__locale_struct* nonnull %8) #10, !dbg !845
  tail call void @llvm.dbg.value(metadata double %14, i64 0, metadata !820, metadata !642), !dbg !846
  br label %15, !dbg !847

; <label>:15:                                     ; preds = %12, %10, %13
  %16 = phi double [ %14, %13 ], [ 0.000000e+00, %10 ], [ 0.000000e+00, %12 ]
  ret double %16, !dbg !848
}

; Function Attrs: nounwind
declare %struct.__locale_struct* @newlocale(i32, i8*, %struct.__locale_struct*) local_unnamed_addr #2

; Function Attrs: nounwind
declare double @strtod_l(i8*, i8**, %struct.__locale_struct*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !849 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !851, metadata !642), !dbg !852
  store i8* %0, i8** @file_name, align 8, !dbg !853, !tbaa !650
  ret void, !dbg !854
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !855 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !859, metadata !860), !dbg !861
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !862, !tbaa !863
  ret void, !dbg !865
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !866 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !873, !tbaa !650
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #10, !dbg !874
  %3 = icmp eq i32 %2, 0, !dbg !875
  br i1 %3, label %21, label %4, !dbg !876

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !877, !tbaa !863, !range !879
  %6 = icmp eq i8 %5, 0, !dbg !877
  %7 = tail call i32* @__errno_location() #1, !dbg !880
  br i1 %6, label %11, label %8, !dbg !882

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !883, !tbaa !731
  %10 = icmp eq i32 %9, 32, !dbg !885
  br i1 %10, label %21, label %11, !dbg !886

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0), i32 5) #10, !dbg !888
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !870, metadata !642), !dbg !889
  %13 = load i8*, i8** @file_name, align 8, !dbg !890, !tbaa !650
  %14 = icmp eq i8* %13, null, !dbg !890
  %15 = load i32, i32* %7, align 4, !tbaa !731
  br i1 %14, label %18, label %16, !dbg !891

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #10, !dbg !892
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.21, i64 0, i64 0), i8* %17, i8* %12) #10, !dbg !894
  br label %19, !dbg !896

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.22, i64 0, i64 0), i8* %12) #10, !dbg !897
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !898, !tbaa !731
  tail call void @_exit(i32 %20) #15, !dbg !899
  unreachable, !dbg !899

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !900, !tbaa !650
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #10, !dbg !902
  %24 = icmp eq i32 %23, 0, !dbg !903
  br i1 %24, label %27, label %25, !dbg !904

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !905, !tbaa !731
  tail call void @_exit(i32 %26) #15, !dbg !906
  unreachable, !dbg !906

; <label>:27:                                     ; preds = %21
  ret void, !dbg !907
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define void @parse_long_options(i32, i8**, i8*, i8*, i8*, void (i32)* nocapture, ...) local_unnamed_addr #6 !dbg !908 {
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !913, metadata !642), !dbg !940
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !914, metadata !642), !dbg !941
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !915, metadata !642), !dbg !942
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !916, metadata !642), !dbg !943
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !917, metadata !642), !dbg !944
  tail call void @llvm.dbg.value(metadata void (i32)* %5, i64 0, metadata !918, metadata !642), !dbg !945
  %8 = load i32, i32* @opterr, align 4, !dbg !946, !tbaa !731
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !920, metadata !642), !dbg !947
  store i32 0, i32* @opterr, align 4, !dbg !948, !tbaa !731
  %9 = icmp eq i32 %0, 2, !dbg !949
  br i1 %9, label %10, label %17, !dbg !950

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 @getopt_long(i32 2, i8** %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i64 0, i64 0), %struct.option* getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #10, !dbg !951
  tail call void @llvm.dbg.value(metadata i32 %11, i64 0, metadata !919, metadata !642), !dbg !953
  switch i32 %11, label %17 [
    i32 118, label %13
    i32 104, label %12
  ], !dbg !954

; <label>:12:                                     ; preds = %10
  tail call void %5(i32 0) #10, !dbg !956
  br label %17, !dbg !957

; <label>:13:                                     ; preds = %10
  %14 = bitcast [1 x %struct.__va_list_tag]* %7 to i8*, !dbg !958
  call void @llvm.lifetime.start(i64 24, i8* nonnull %14) #10, !dbg !958
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %7, metadata !921, metadata !642), !dbg !959
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0, !dbg !960
  call void @llvm.va_start(i8* nonnull %14), !dbg !960
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !961, !tbaa !650
  call void @version_etc_va(%struct._IO_FILE* %16, i8* %2, i8* %3, i8* %4, %struct.__va_list_tag* nonnull %15) #10, !dbg !962
  call void @exit(i32 0) #15, !dbg !963
  unreachable, !dbg !963

; <label>:17:                                     ; preds = %10, %12, %6
  store i32 %8, i32* @opterr, align 4, !dbg !964, !tbaa !731
  store i32 0, i32* @optind, align 4, !dbg !965, !tbaa !731
  ret void, !dbg !966
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !967 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !969, metadata !642), !dbg !972
  %2 = icmp eq i8* %0, null, !dbg !973
  br i1 %2, label %3, label %6, !dbg !975

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !976, !tbaa !650
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.36, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #17, !dbg !978
  tail call void @abort() #15, !dbg !979
  unreachable, !dbg !979

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #14, !dbg !980
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !970, metadata !642), !dbg !981
  %8 = icmp ne i8* %7, null, !dbg !982
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !983
  %10 = select i1 %8, i8* %9, i8* %0, !dbg !985
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !971, metadata !642), !dbg !986
  %11 = ptrtoint i8* %10 to i64, !dbg !987
  %12 = ptrtoint i8* %0 to i64, !dbg !987
  %13 = sub i64 %11, %12, !dbg !987
  %14 = icmp sgt i64 %13, 6, !dbg !989
  br i1 %14, label %15, label %24, !dbg !990

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !991
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.37, i64 0, i64 0), i64 7) #14, !dbg !991
  %18 = icmp eq i32 %17, 0, !dbg !993
  br i1 %18, label %19, label %24, !dbg !994

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !969, metadata !642), !dbg !972
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.38, i64 0, i64 0), i64 3) #14, !dbg !995
  %21 = icmp eq i32 %20, 0, !dbg !998
  br i1 %21, label %22, label %24, !dbg !999

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1000
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !969, metadata !642), !dbg !972
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1002, !tbaa !650
  br label %24, !dbg !1003

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !969, metadata !642), !dbg !972
  store i8* %25, i8** @program_name, align 8, !dbg !1004, !tbaa !650
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1005, !tbaa !650
  ret void, !dbg !1006
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #10

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !1007 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1012, metadata !642), !dbg !1015
  %2 = tail call i32* @__errno_location() #1, !dbg !1016
  %3 = load i32, i32* %2, align 4, !dbg !1016, !tbaa !731
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !1013, metadata !642), !dbg !1017
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !1018
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !1019
  %6 = select i1 %4, i8* %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), !dbg !1019
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #10, !dbg !1021
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1021
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !1014, metadata !642), !dbg !1022
  store i32 %3, i32* %2, align 4, !dbg !1023, !tbaa !731
  ret %struct.quoting_options* %8, !dbg !1024
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #11 !dbg !1025 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1031, metadata !642), !dbg !1032
  %2 = icmp ne %struct.quoting_options* %0, null, !dbg !1033
  %3 = select i1 %2, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !1033
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1034
  %5 = load i32, i32* %4, align 8, !dbg !1034, !tbaa !1036
  ret i32 %5, !dbg !1038
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1039 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1043, metadata !642), !dbg !1045
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1044, metadata !642), !dbg !1046
  %3 = icmp ne %struct.quoting_options* %0, null, !dbg !1047
  %4 = select i1 %3, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !1047
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1048
  store i32 %1, i32* %5, align 8, !dbg !1050, !tbaa !1036
  ret void, !dbg !1051
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !1052 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1056, metadata !642), !dbg !1064
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1057, metadata !642), !dbg !1065
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !1058, metadata !642), !dbg !1066
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1059, metadata !642), !dbg !1067
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !1068
  %5 = select i1 %4, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !1068
  %6 = lshr i8 %1, 5, !dbg !1069
  %7 = zext i8 %6 to i64, !dbg !1069
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1071
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1060, metadata !642), !dbg !1072
  %9 = and i8 %1, 31, !dbg !1073
  %10 = zext i8 %9 to i32, !dbg !1074
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1062, metadata !642), !dbg !1075
  %11 = load i32, i32* %8, align 4, !dbg !1076, !tbaa !731
  %12 = lshr i32 %11, %10, !dbg !1077
  %13 = and i32 %12, 1, !dbg !1078
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1063, metadata !642), !dbg !1079
  %14 = and i32 %2, 1, !dbg !1080
  %15 = xor i32 %13, %14, !dbg !1081
  %16 = shl i32 %15, %10, !dbg !1082
  %17 = xor i32 %16, %11, !dbg !1083
  store i32 %17, i32* %8, align 4, !dbg !1083, !tbaa !731
  ret i32 %13, !dbg !1084
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1085 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1089, metadata !642), !dbg !1092
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1090, metadata !642), !dbg !1093
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1094
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1089, metadata !642), !dbg !1092
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1096
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1089, metadata !642), !dbg !1092
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1097
  %6 = load i32, i32* %5, align 4, !dbg !1097, !tbaa !1098
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1091, metadata !642), !dbg !1099
  store i32 %1, i32* %5, align 4, !dbg !1100, !tbaa !1098
  ret i32 %6, !dbg !1101
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !1102 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1106, metadata !642), !dbg !1109
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1107, metadata !642), !dbg !1110
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1108, metadata !642), !dbg !1111
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1112
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1106, metadata !642), !dbg !1109
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1114
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1106, metadata !642), !dbg !1109
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1115
  store i32 10, i32* %6, align 8, !dbg !1116, !tbaa !1036
  %7 = icmp ne i8* %1, null, !dbg !1117
  %8 = icmp ne i8* %2, null, !dbg !1119
  %9 = and i1 %7, %8, !dbg !1121
  br i1 %9, label %11, label %10, !dbg !1121

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !1122
  unreachable, !dbg !1122

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1123
  store i8* %1, i8** %12, align 8, !dbg !1124, !tbaa !1125
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1126
  store i8* %2, i8** %13, align 8, !dbg !1127, !tbaa !1128
  ret void, !dbg !1129
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !1130 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1134, metadata !642), !dbg !1142
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1135, metadata !642), !dbg !1143
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1136, metadata !642), !dbg !1144
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1137, metadata !642), !dbg !1145
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1138, metadata !642), !dbg !1146
  %6 = icmp ne %struct.quoting_options* %4, null, !dbg !1147
  %7 = select i1 %6, %struct.quoting_options* %4, %struct.quoting_options* @default_quoting_options, !dbg !1147
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !1139, metadata !642), !dbg !1148
  %8 = tail call i32* @__errno_location() #1, !dbg !1149
  %9 = load i32, i32* %8, align 4, !dbg !1149, !tbaa !731
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1140, metadata !642), !dbg !1150
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1151
  %11 = load i32, i32* %10, align 8, !dbg !1151, !tbaa !1036
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1152
  %13 = load i32, i32* %12, align 4, !dbg !1152, !tbaa !1098
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1153
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1154
  %16 = load i8*, i8** %15, align 8, !dbg !1154, !tbaa !1125
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1155
  %18 = load i8*, i8** %17, align 8, !dbg !1155, !tbaa !1128
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !1156
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1141, metadata !642), !dbg !1157
  store i32 %9, i32* %8, align 4, !dbg !1158, !tbaa !731
  ret i64 %19, !dbg !1159
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !1160 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1166, metadata !642), !dbg !1229
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1167, metadata !642), !dbg !1230
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1168, metadata !642), !dbg !1231
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1169, metadata !642), !dbg !1232
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !1170, metadata !642), !dbg !1233
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1171, metadata !642), !dbg !1234
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !1172, metadata !642), !dbg !1235
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1173, metadata !642), !dbg !1236
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !1174, metadata !642), !dbg !1237
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1176, metadata !642), !dbg !1238
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1177, metadata !642), !dbg !1239
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1178, metadata !642), !dbg !1240
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1179, metadata !642), !dbg !1241
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1180, metadata !642), !dbg !1242
  %13 = tail call i64 @__ctype_get_mb_cur_max() #10, !dbg !1243
  %14 = icmp eq i64 %13, 1, !dbg !1244
  %15 = lshr i32 %5, 1, !dbg !1245
  %16 = trunc i32 %15 to i8, !dbg !1245
  %17 = and i8 %16, 1, !dbg !1245
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !1182, metadata !642), !dbg !1245
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1183, metadata !642), !dbg !1246
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1184, metadata !642), !dbg !1247
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1185, metadata !642), !dbg !1248
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !1249

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !1167, metadata !642), !dbg !1230
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !1185, metadata !642), !dbg !1248
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !1184, metadata !642), !dbg !1247
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !1183, metadata !642), !dbg !1246
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1182, metadata !642), !dbg !1245
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !1169, metadata !642), !dbg !1232
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !1180, metadata !642), !dbg !1242
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !1179, metadata !642), !dbg !1241
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !1178, metadata !642), !dbg !1240
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !1177, metadata !642), !dbg !1239
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1176, metadata !642), !dbg !1238
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !1174, metadata !642), !dbg !1237
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !1173, metadata !642), !dbg !1236
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !1170, metadata !642), !dbg !1233
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
  ], !dbg !1250

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1170, metadata !642), !dbg !1233
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1182, metadata !642), !dbg !1245
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1182, metadata !642), !dbg !1245
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1170, metadata !642), !dbg !1233
  br label %95, !dbg !1251

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1182, metadata !642), !dbg !1245
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1170, metadata !642), !dbg !1233
  %43 = and i8 %36, 1, !dbg !1253
  %44 = icmp eq i8 %43, 0, !dbg !1253
  br i1 %44, label %45, label %95, !dbg !1251

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1255
  br i1 %46, label %95, label %47, !dbg !1259

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1261, !tbaa !768
  br label %95, !dbg !1261

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.49, i64 0, i64 0), i32 %28), !dbg !1263
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !1173, metadata !642), !dbg !1236
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.50, i64 0, i64 0), i32 %28), !dbg !1267
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !1174, metadata !642), !dbg !1237
  br label %51, !dbg !1268

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1174, metadata !642), !dbg !1237
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1173, metadata !642), !dbg !1236
  %54 = and i8 %36, 1, !dbg !1269
  %55 = icmp eq i8 %54, 0, !dbg !1269
  br i1 %55, label %56, label %73, !dbg !1271

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1178, metadata !642), !dbg !1240
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1176, metadata !642), !dbg !1238
  %57 = load i8, i8* %52, align 1, !dbg !1272, !tbaa !768
  %58 = icmp eq i8 %57, 0, !dbg !1276
  br i1 %58, label %73, label %59, !dbg !1276

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !1278

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  %64 = icmp ult i64 %63, %40, !dbg !1278
  br i1 %64, label %65, label %67, !dbg !1282

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !1284
  store i8 %61, i8* %66, align 1, !dbg !1284, !tbaa !768
  br label %67, !dbg !1284

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !1286
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1176, metadata !642), !dbg !1238
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !1288
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1178, metadata !642), !dbg !1240
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1178, metadata !642), !dbg !1240
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1176, metadata !642), !dbg !1238
  %70 = load i8, i8* %69, align 1, !dbg !1272, !tbaa !768
  %71 = icmp eq i8 %70, 0, !dbg !1276
  br i1 %71, label %72, label %60, !dbg !1276, !llvm.loop !1290

; <label>:72:                                     ; preds = %67
  br label %73, !dbg !1238

; <label>:73:                                     ; preds = %72, %56, %51
  %74 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %72 ]
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !1176, metadata !642), !dbg !1238
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1180, metadata !642), !dbg !1242
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1178, metadata !642), !dbg !1240
  %75 = call i64 @strlen(i8* %53) #14, !dbg !1293
  call void @llvm.dbg.value(metadata i64 %75, i64 0, metadata !1179, metadata !642), !dbg !1241
  br label %95, !dbg !1294

; <label>:76:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1180, metadata !642), !dbg !1242
  br label %77, !dbg !1295

; <label>:77:                                     ; preds = %27, %76
  %78 = phi i8 [ %34, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %78, i64 0, metadata !1180, metadata !642), !dbg !1242
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1182, metadata !642), !dbg !1245
  br label %79, !dbg !1296

; <label>:79:                                     ; preds = %27, %77
  %80 = phi i8 [ %34, %27 ], [ %78, %77 ]
  %81 = phi i8 [ %36, %27 ], [ 1, %77 ]
  call void @llvm.dbg.value(metadata i8 %81, i64 0, metadata !1182, metadata !642), !dbg !1245
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !1180, metadata !642), !dbg !1242
  %82 = and i8 %81, 1, !dbg !1297
  %83 = icmp eq i8 %82, 0, !dbg !1297
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1180, metadata !642), !dbg !1242
  %84 = select i1 %83, i8 1, i8 %80, !dbg !1299
  br label %85, !dbg !1299

; <label>:85:                                     ; preds = %79, %27
  %86 = phi i8 [ %34, %27 ], [ %84, %79 ]
  %87 = phi i8 [ %36, %27 ], [ %81, %79 ]
  call void @llvm.dbg.value(metadata i8 %87, i64 0, metadata !1182, metadata !642), !dbg !1245
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !1180, metadata !642), !dbg !1242
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !1170, metadata !642), !dbg !1233
  %88 = and i8 %87, 1, !dbg !1300
  %89 = icmp eq i8 %88, 0, !dbg !1300
  br i1 %89, label %90, label %95, !dbg !1302

; <label>:90:                                     ; preds = %85
  %91 = icmp eq i64 %40, 0, !dbg !1303
  br i1 %91, label %95, label %92, !dbg !1307

; <label>:92:                                     ; preds = %90
  store i8 39, i8* %0, align 1, !dbg !1309, !tbaa !768
  br label %95, !dbg !1309

; <label>:93:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1182, metadata !642), !dbg !1245
  br label %95, !dbg !1311

; <label>:94:                                     ; preds = %27
  call void @abort() #15, !dbg !1312
  unreachable, !dbg !1312

; <label>:95:                                     ; preds = %41, %85, %90, %92, %27, %42, %45, %47, %93, %73
  %96 = phi i32 [ 0, %93 ], [ %28, %73 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %92 ], [ 2, %90 ], [ 2, %85 ], [ 5, %41 ]
  %97 = phi i8* [ %29, %93 ], [ %52, %73 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %92 ], [ %29, %90 ], [ %29, %85 ], [ %29, %41 ]
  %98 = phi i8* [ %30, %93 ], [ %53, %73 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %92 ], [ %30, %90 ], [ %30, %85 ], [ %30, %41 ]
  %99 = phi i64 [ 0, %93 ], [ %74, %73 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %92 ], [ 1, %90 ], [ 0, %85 ], [ 0, %41 ]
  %100 = phi i8* [ %32, %93 ], [ %53, %73 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.51, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.51, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.51, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.50, i64 0, i64 0), %92 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.50, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.50, i64 0, i64 0), %85 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.51, i64 0, i64 0), %41 ]
  %101 = phi i64 [ %33, %93 ], [ %75, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %92 ], [ 1, %90 ], [ 1, %85 ], [ 1, %41 ]
  %102 = phi i8 [ %34, %93 ], [ 1, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %86, %92 ], [ %86, %90 ], [ %86, %85 ], [ 1, %41 ]
  %103 = phi i8 [ 0, %93 ], [ %36, %73 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %87, %92 ], [ %87, %90 ], [ %87, %85 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %103, i64 0, metadata !1182, metadata !642), !dbg !1245
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !1180, metadata !642), !dbg !1242
  call void @llvm.dbg.value(metadata i64 %101, i64 0, metadata !1179, metadata !642), !dbg !1241
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !1178, metadata !642), !dbg !1240
  call void @llvm.dbg.value(metadata i64 %99, i64 0, metadata !1176, metadata !642), !dbg !1238
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !1174, metadata !642), !dbg !1237
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !1173, metadata !642), !dbg !1236
  call void @llvm.dbg.value(metadata i32 %96, i64 0, metadata !1170, metadata !642), !dbg !1233
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1175, metadata !642), !dbg !1313
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
  br label %123, !dbg !1314

; <label>:123:                                    ; preds = %587, %95
  %124 = phi i64 [ 0, %95 ], [ %596, %587 ]
  %125 = phi i64 [ %99, %95 ], [ %589, %587 ]
  %126 = phi i64 [ %31, %95 ], [ %590, %587 ]
  %127 = phi i64 [ %35, %95 ], [ %591, %587 ]
  %128 = phi i8 [ %37, %95 ], [ %592, %587 ]
  %129 = phi i8 [ %38, %95 ], [ %593, %587 ]
  %130 = phi i8 [ %39, %95 ], [ %594, %587 ]
  %131 = phi i64 [ %40, %95 ], [ %595, %587 ]
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !1167, metadata !642), !dbg !1230
  call void @llvm.dbg.value(metadata i8 %130, i64 0, metadata !1185, metadata !642), !dbg !1248
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !1184, metadata !642), !dbg !1247
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !1183, metadata !642), !dbg !1246
  call void @llvm.dbg.value(metadata i64 %127, i64 0, metadata !1169, metadata !642), !dbg !1232
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !1177, metadata !642), !dbg !1239
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1176, metadata !642), !dbg !1238
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1175, metadata !642), !dbg !1313
  %132 = icmp eq i64 %127, -1, !dbg !1315
  br i1 %132, label %135, label %133, !dbg !1317

; <label>:133:                                    ; preds = %123
  %134 = icmp eq i64 %124, %127, !dbg !1318
  br i1 %134, label %597, label %139, !dbg !1320

; <label>:135:                                    ; preds = %123
  %136 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !1322
  %137 = load i8, i8* %136, align 1, !dbg !1322, !tbaa !768
  %138 = icmp eq i8 %137, 0, !dbg !1324
  br i1 %138, label %597, label %139, !dbg !1320

; <label>:139:                                    ; preds = %133, %135
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1191, metadata !642), !dbg !1325
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1192, metadata !642), !dbg !1326
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1193, metadata !642), !dbg !1327
  br i1 %109, label %140, label %155, !dbg !1328

; <label>:140:                                    ; preds = %139
  %141 = add i64 %124, %101, !dbg !1330
  %142 = and i1 %110, %132, !dbg !1332
  br i1 %142, label %143, label %145, !dbg !1332

; <label>:143:                                    ; preds = %140
  %144 = call i64 @strlen(i8* %2) #14, !dbg !1333
  call void @llvm.dbg.value(metadata i64 %144, i64 0, metadata !1169, metadata !642), !dbg !1232
  br label %145, !dbg !1334

; <label>:145:                                    ; preds = %140, %143
  %146 = phi i64 [ %144, %143 ], [ %127, %140 ]
  call void @llvm.dbg.value(metadata i64 %146, i64 0, metadata !1169, metadata !642), !dbg !1232
  %147 = icmp ugt i64 %141, %146, !dbg !1336
  br i1 %147, label %155, label %148, !dbg !1338

; <label>:148:                                    ; preds = %145
  %149 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !1339
  %150 = call i32 @memcmp(i8* %149, i8* %100, i64 %101) #14, !dbg !1340
  %151 = icmp ne i32 %150, 0, !dbg !1341
  %152 = or i1 %151, %112, !dbg !1341
  %153 = xor i1 %151, true, !dbg !1341
  %154 = zext i1 %153 to i8, !dbg !1341
  br i1 %152, label %155, label %644, !dbg !1341

; <label>:155:                                    ; preds = %148, %145, %139
  %156 = phi i64 [ %146, %148 ], [ %146, %145 ], [ %127, %139 ]
  %157 = phi i8 [ %154, %148 ], [ 0, %145 ], [ 0, %139 ]
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !1191, metadata !642), !dbg !1325
  call void @llvm.dbg.value(metadata i64 %156, i64 0, metadata !1169, metadata !642), !dbg !1232
  %158 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !1343
  %159 = load i8, i8* %158, align 1, !dbg !1343, !tbaa !768
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !1186, metadata !642), !dbg !1344
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
  ], !dbg !1345

; <label>:160:                                    ; preds = %155
  br i1 %105, label %161, label %209, !dbg !1346

; <label>:161:                                    ; preds = %160
  br i1 %112, label %162, label %644, !dbg !1347

; <label>:162:                                    ; preds = %161
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1192, metadata !642), !dbg !1326
  %163 = and i8 %128, 1, !dbg !1352
  %164 = icmp eq i8 %163, 0, !dbg !1352
  %165 = and i1 %114, %164, !dbg !1355
  br i1 %165, label %166, label %182, !dbg !1355

; <label>:166:                                    ; preds = %162
  %167 = icmp ult i64 %125, %131, !dbg !1357
  br i1 %167, label %168, label %170, !dbg !1362

; <label>:168:                                    ; preds = %166
  %169 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !1364
  store i8 39, i8* %169, align 1, !dbg !1364, !tbaa !768
  br label %170, !dbg !1364

; <label>:170:                                    ; preds = %168, %166
  %171 = add i64 %125, 1, !dbg !1366
  call void @llvm.dbg.value(metadata i64 %171, i64 0, metadata !1176, metadata !642), !dbg !1238
  %172 = icmp ult i64 %171, %131, !dbg !1368
  br i1 %172, label %173, label %175, !dbg !1372

; <label>:173:                                    ; preds = %170
  %174 = getelementptr inbounds i8, i8* %0, i64 %171, !dbg !1374
  store i8 36, i8* %174, align 1, !dbg !1374, !tbaa !768
  br label %175, !dbg !1374

; <label>:175:                                    ; preds = %173, %170
  %176 = add i64 %125, 2, !dbg !1376
  call void @llvm.dbg.value(metadata i64 %176, i64 0, metadata !1176, metadata !642), !dbg !1238
  %177 = icmp ult i64 %176, %131, !dbg !1378
  br i1 %177, label %178, label %180, !dbg !1382

; <label>:178:                                    ; preds = %175
  %179 = getelementptr inbounds i8, i8* %0, i64 %176, !dbg !1384
  store i8 39, i8* %179, align 1, !dbg !1384, !tbaa !768
  br label %180, !dbg !1384

; <label>:180:                                    ; preds = %178, %175
  %181 = add i64 %125, 3, !dbg !1386
  call void @llvm.dbg.value(metadata i64 %181, i64 0, metadata !1176, metadata !642), !dbg !1238
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1183, metadata !642), !dbg !1246
  br label %182, !dbg !1388

; <label>:182:                                    ; preds = %162, %180
  %183 = phi i64 [ %181, %180 ], [ %125, %162 ]
  %184 = phi i8 [ 1, %180 ], [ %128, %162 ]
  call void @llvm.dbg.value(metadata i8 %184, i64 0, metadata !1183, metadata !642), !dbg !1246
  call void @llvm.dbg.value(metadata i64 %183, i64 0, metadata !1176, metadata !642), !dbg !1238
  %185 = icmp ult i64 %183, %131, !dbg !1390
  br i1 %185, label %186, label %188, !dbg !1394

; <label>:186:                                    ; preds = %182
  %187 = getelementptr inbounds i8, i8* %0, i64 %183, !dbg !1396
  store i8 92, i8* %187, align 1, !dbg !1396, !tbaa !768
  br label %188, !dbg !1396

; <label>:188:                                    ; preds = %186, %182
  %189 = add i64 %183, 1, !dbg !1398
  call void @llvm.dbg.value(metadata i64 %189, i64 0, metadata !1176, metadata !642), !dbg !1238
  br i1 %106, label %190, label %476, !dbg !1400

; <label>:190:                                    ; preds = %188
  %191 = add i64 %124, 1, !dbg !1402
  %192 = icmp ult i64 %191, %156, !dbg !1404
  br i1 %192, label %193, label %476, !dbg !1405

; <label>:193:                                    ; preds = %190
  %194 = getelementptr inbounds i8, i8* %2, i64 %191, !dbg !1406
  %195 = load i8, i8* %194, align 1, !dbg !1406, !tbaa !768
  %196 = add i8 %195, -48, !dbg !1408
  %197 = icmp ult i8 %196, 10, !dbg !1408
  br i1 %197, label %198, label %476, !dbg !1408

; <label>:198:                                    ; preds = %193
  %199 = icmp ult i64 %189, %131, !dbg !1409
  br i1 %199, label %200, label %202, !dbg !1414

; <label>:200:                                    ; preds = %198
  %201 = getelementptr inbounds i8, i8* %0, i64 %189, !dbg !1416
  store i8 48, i8* %201, align 1, !dbg !1416, !tbaa !768
  br label %202, !dbg !1416

; <label>:202:                                    ; preds = %200, %198
  %203 = add i64 %183, 2, !dbg !1418
  call void @llvm.dbg.value(metadata i64 %203, i64 0, metadata !1176, metadata !642), !dbg !1238
  %204 = icmp ult i64 %203, %131, !dbg !1420
  br i1 %204, label %205, label %207, !dbg !1424

; <label>:205:                                    ; preds = %202
  %206 = getelementptr inbounds i8, i8* %0, i64 %203, !dbg !1426
  store i8 48, i8* %206, align 1, !dbg !1426, !tbaa !768
  br label %207, !dbg !1426

; <label>:207:                                    ; preds = %205, %202
  %208 = add i64 %183, 3, !dbg !1428
  call void @llvm.dbg.value(metadata i64 %208, i64 0, metadata !1176, metadata !642), !dbg !1238
  br label %476, !dbg !1430

; <label>:209:                                    ; preds = %160
  br i1 %23, label %476, label %587, !dbg !1431

; <label>:210:                                    ; preds = %155
  switch i32 %96, label %476 [
    i32 2, label %211
    i32 5, label %212
  ], !dbg !1432

; <label>:211:                                    ; preds = %210
  br i1 %112, label %476, label %644, !dbg !1433

; <label>:212:                                    ; preds = %210
  br i1 %25, label %476, label %213, !dbg !1435

; <label>:213:                                    ; preds = %212
  %214 = add i64 %124, 2, !dbg !1437
  %215 = icmp ult i64 %214, %156, !dbg !1439
  br i1 %215, label %216, label %476, !dbg !1440

; <label>:216:                                    ; preds = %213
  %217 = add i64 %124, 1, !dbg !1441
  %218 = getelementptr inbounds i8, i8* %2, i64 %217, !dbg !1443
  %219 = load i8, i8* %218, align 1, !dbg !1443, !tbaa !768
  %220 = icmp eq i8 %219, 63, !dbg !1444
  br i1 %220, label %221, label %476, !dbg !1445

; <label>:221:                                    ; preds = %216
  %222 = getelementptr inbounds i8, i8* %2, i64 %214, !dbg !1447
  %223 = load i8, i8* %222, align 1, !dbg !1447, !tbaa !768
  %224 = sext i8 %223 to i32, !dbg !1447
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
  ], !dbg !1448

; <label>:225:                                    ; preds = %221, %221, %221, %221, %221, %221, %221, %221, %221
  br i1 %112, label %226, label %644, !dbg !1449

; <label>:226:                                    ; preds = %225
  call void @llvm.dbg.value(metadata i8 %223, i64 0, metadata !1186, metadata !642), !dbg !1344
  call void @llvm.dbg.value(metadata i64 %214, i64 0, metadata !1175, metadata !642), !dbg !1313
  %227 = icmp ult i64 %125, %131, !dbg !1451
  br i1 %227, label %228, label %230, !dbg !1455

; <label>:228:                                    ; preds = %226
  %229 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !1457
  store i8 63, i8* %229, align 1, !dbg !1457, !tbaa !768
  br label %230, !dbg !1457

; <label>:230:                                    ; preds = %228, %226
  %231 = add i64 %125, 1, !dbg !1459
  call void @llvm.dbg.value(metadata i64 %231, i64 0, metadata !1176, metadata !642), !dbg !1238
  %232 = icmp ult i64 %231, %131, !dbg !1461
  br i1 %232, label %233, label %235, !dbg !1465

; <label>:233:                                    ; preds = %230
  %234 = getelementptr inbounds i8, i8* %0, i64 %231, !dbg !1467
  store i8 34, i8* %234, align 1, !dbg !1467, !tbaa !768
  br label %235, !dbg !1467

; <label>:235:                                    ; preds = %233, %230
  %236 = add i64 %125, 2, !dbg !1469
  call void @llvm.dbg.value(metadata i64 %236, i64 0, metadata !1176, metadata !642), !dbg !1238
  %237 = icmp ult i64 %236, %131, !dbg !1471
  br i1 %237, label %238, label %240, !dbg !1475

; <label>:238:                                    ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236, !dbg !1477
  store i8 34, i8* %239, align 1, !dbg !1477, !tbaa !768
  br label %240, !dbg !1477

; <label>:240:                                    ; preds = %238, %235
  %241 = add i64 %125, 3, !dbg !1479
  call void @llvm.dbg.value(metadata i64 %241, i64 0, metadata !1176, metadata !642), !dbg !1238
  %242 = icmp ult i64 %241, %131, !dbg !1481
  br i1 %242, label %243, label %245, !dbg !1485

; <label>:243:                                    ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241, !dbg !1487
  store i8 63, i8* %244, align 1, !dbg !1487, !tbaa !768
  br label %245, !dbg !1487

; <label>:245:                                    ; preds = %243, %240
  %246 = add i64 %125, 4, !dbg !1489
  call void @llvm.dbg.value(metadata i64 %246, i64 0, metadata !1176, metadata !642), !dbg !1238
  br label %476, !dbg !1491

; <label>:247:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !1190, metadata !642), !dbg !1492
  br label %257, !dbg !1493

; <label>:248:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !1190, metadata !642), !dbg !1492
  br label %257, !dbg !1494

; <label>:249:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !1190, metadata !642), !dbg !1492
  br label %255, !dbg !1495

; <label>:250:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !1190, metadata !642), !dbg !1492
  br label %255, !dbg !1496

; <label>:251:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !1190, metadata !642), !dbg !1492
  br label %257, !dbg !1497

; <label>:252:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !1190, metadata !642), !dbg !1492
  br i1 %114, label %253, label %254, !dbg !1498

; <label>:253:                                    ; preds = %252
  br i1 %112, label %542, label %644, !dbg !1499

; <label>:254:                                    ; preds = %252
  br i1 %122, label %542, label %255, !dbg !1502

; <label>:255:                                    ; preds = %254, %155, %250, %249
  %256 = phi i8 [ 92, %254 ], [ 116, %250 ], [ 114, %249 ], [ 110, %155 ]
  call void @llvm.dbg.value(metadata i8 %256, i64 0, metadata !1190, metadata !642), !dbg !1492
  br i1 %118, label %257, label %644, !dbg !1504

; <label>:257:                                    ; preds = %255, %155, %251, %248, %247
  %258 = phi i8 [ %256, %255 ], [ 118, %251 ], [ 102, %248 ], [ 98, %247 ], [ 97, %155 ]
  call void @llvm.dbg.value(metadata i8 %258, i64 0, metadata !1190, metadata !642), !dbg !1492
  br i1 %105, label %503, label %476, !dbg !1506

; <label>:259:                                    ; preds = %155, %155
  %260 = icmp eq i64 %156, -1, !dbg !1507
  br i1 %260, label %261, label %266, !dbg !1509

; <label>:261:                                    ; preds = %259
  %262 = load i8, i8* %26, align 1, !dbg !1510, !tbaa !768
  %263 = icmp ne i8 %262, 0, !dbg !1512
  %264 = icmp ne i64 %124, 0, !dbg !1513
  %265 = or i1 %264, %263, !dbg !1515
  br i1 %265, label %476, label %272, !dbg !1515

; <label>:266:                                    ; preds = %259
  %267 = icmp ne i64 %156, 1, !dbg !1516
  %268 = icmp ne i64 %124, 0, !dbg !1513
  %269 = or i1 %268, %267, !dbg !1518
  br i1 %269, label %476, label %272, !dbg !1518

; <label>:270:                                    ; preds = %155, %155
  %271 = icmp eq i64 %124, 0, !dbg !1513
  br i1 %271, label %272, label %476, !dbg !1520

; <label>:272:                                    ; preds = %270, %266, %261, %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1193, metadata !642), !dbg !1327
  br label %273, !dbg !1521

; <label>:273:                                    ; preds = %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %272
  %274 = phi i8 [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 1, %272 ]
  call void @llvm.dbg.value(metadata i8 %274, i64 0, metadata !1193, metadata !642), !dbg !1327
  br i1 %118, label %476, label %644, !dbg !1522

; <label>:275:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1184, metadata !642), !dbg !1247
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1193, metadata !642), !dbg !1327
  br i1 %114, label %276, label %476, !dbg !1524

; <label>:276:                                    ; preds = %275
  br i1 %112, label %277, label %644, !dbg !1525

; <label>:277:                                    ; preds = %276
  %278 = icmp eq i64 %131, 0, !dbg !1528
  %279 = icmp ne i64 %126, 0, !dbg !1530
  %280 = or i1 %279, %278, !dbg !1532
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !1177, metadata !642), !dbg !1239
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1167, metadata !642), !dbg !1230
  %281 = select i1 %280, i64 %126, i64 %131, !dbg !1532
  %282 = select i1 %280, i64 %131, i64 0, !dbg !1532
  call void @llvm.dbg.value(metadata i64 %282, i64 0, metadata !1167, metadata !642), !dbg !1230
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !1177, metadata !642), !dbg !1239
  %283 = icmp ult i64 %125, %282, !dbg !1533
  br i1 %283, label %284, label %286, !dbg !1537

; <label>:284:                                    ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !1539
  store i8 39, i8* %285, align 1, !dbg !1539, !tbaa !768
  br label %286, !dbg !1539

; <label>:286:                                    ; preds = %284, %277
  %287 = add i64 %125, 1, !dbg !1541
  call void @llvm.dbg.value(metadata i64 %287, i64 0, metadata !1176, metadata !642), !dbg !1238
  %288 = icmp ult i64 %287, %282, !dbg !1543
  br i1 %288, label %289, label %291, !dbg !1547

; <label>:289:                                    ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287, !dbg !1549
  store i8 92, i8* %290, align 1, !dbg !1549, !tbaa !768
  br label %291, !dbg !1549

; <label>:291:                                    ; preds = %289, %286
  %292 = add i64 %125, 2, !dbg !1551
  call void @llvm.dbg.value(metadata i64 %292, i64 0, metadata !1176, metadata !642), !dbg !1238
  %293 = icmp ult i64 %292, %282, !dbg !1553
  br i1 %293, label %294, label %296, !dbg !1557

; <label>:294:                                    ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292, !dbg !1559
  store i8 39, i8* %295, align 1, !dbg !1559, !tbaa !768
  br label %296, !dbg !1559

; <label>:296:                                    ; preds = %294, %291
  %297 = add i64 %125, 3, !dbg !1561
  call void @llvm.dbg.value(metadata i64 %297, i64 0, metadata !1176, metadata !642), !dbg !1238
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1183, metadata !642), !dbg !1246
  br label %476, !dbg !1563

; <label>:298:                                    ; preds = %155
  br i1 %14, label %299, label %308, !dbg !1564

; <label>:299:                                    ; preds = %298
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1194, metadata !642), !dbg !1565
  %300 = tail call i16** @__ctype_b_loc() #1, !dbg !1566
  %301 = load i16*, i16** %300, align 8, !dbg !1566, !tbaa !650
  %302 = zext i8 %159 to i64, !dbg !1566
  %303 = getelementptr inbounds i16, i16* %301, i64 %302, !dbg !1566
  %304 = load i16, i16* %303, align 2, !dbg !1566, !tbaa !1568
  %305 = lshr i16 %304, 14, !dbg !1570
  %306 = trunc i16 %305 to i8, !dbg !1570
  %307 = and i8 %306, 1, !dbg !1570
  call void @llvm.dbg.value(metadata i8 %307, i64 0, metadata !1197, metadata !642), !dbg !1571
  br label %368, !dbg !1572

; <label>:308:                                    ; preds = %298
  call void @llvm.lifetime.start(i64 8, i8* nonnull %18) #10, !dbg !1573
  store i64 0, i64* %10, align 8, !dbg !1574
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1194, metadata !642), !dbg !1565
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1197, metadata !642), !dbg !1571
  %309 = icmp eq i64 %156, -1, !dbg !1575
  br i1 %309, label %310, label %312, !dbg !1577, !llvm.loop !1578

; <label>:310:                                    ; preds = %308
  %311 = call i64 @strlen(i8* nonnull %2) #14, !dbg !1581
  call void @llvm.dbg.value(metadata i64 %311, i64 0, metadata !1169, metadata !642), !dbg !1232
  br label %312, !dbg !1582, !llvm.loop !1578

; <label>:312:                                    ; preds = %310, %308
  %313 = phi i64 [ %156, %308 ], [ %311, %310 ]
  br label %314, !dbg !1571

; <label>:314:                                    ; preds = %312, %355
  %315 = phi i64 [ %360, %355 ], [ 0, %312 ]
  %316 = phi i8 [ %359, %355 ], [ 1, %312 ]
  call void @llvm.dbg.value(metadata i8 %316, i64 0, metadata !1197, metadata !642), !dbg !1571
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !1194, metadata !642), !dbg !1565
  call void @llvm.dbg.value(metadata i64 %313, i64 0, metadata !1169, metadata !642), !dbg !1232
  call void @llvm.lifetime.start(i64 4, i8* nonnull %19) #10, !dbg !1583
  %317 = add i64 %315, %124, !dbg !1584
  %318 = getelementptr inbounds i8, i8* %2, i64 %317, !dbg !1585
  %319 = sub i64 %313, %317, !dbg !1586
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1198, metadata !742), !dbg !1587
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !1215, metadata !742), !dbg !1588
  %320 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %318, i64 %319, %struct.__mbstate_t* nonnull %11) #10, !dbg !1589
  call void @llvm.dbg.value(metadata i64 %320, i64 0, metadata !1218, metadata !642), !dbg !1590
  switch i64 %320, label %334 [
    i64 0, label %350
    i64 -1, label %347
    i64 -2, label %321
  ], !dbg !1591

; <label>:321:                                    ; preds = %314
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !1194, metadata !642), !dbg !1565
  %322 = icmp ugt i64 %313, %317, !dbg !1592
  br i1 %322, label %323, label %351, !dbg !1595

; <label>:323:                                    ; preds = %321
  br label %324, !dbg !1596

; <label>:324:                                    ; preds = %323, %330
  %325 = phi i64 [ %332, %330 ], [ %317, %323 ]
  %326 = phi i64 [ %331, %330 ], [ %315, %323 ]
  %327 = getelementptr inbounds i8, i8* %2, i64 %325, !dbg !1596
  %328 = load i8, i8* %327, align 1, !dbg !1596, !tbaa !768
  %329 = icmp eq i8 %328, 0, !dbg !1598
  br i1 %329, label %348, label %330, !dbg !1599

; <label>:330:                                    ; preds = %324
  %331 = add i64 %326, 1, !dbg !1601
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !1194, metadata !642), !dbg !1565
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !1194, metadata !642), !dbg !1565
  %332 = add i64 %331, %124, !dbg !1602
  %333 = icmp ult i64 %332, %313, !dbg !1592
  br i1 %333, label %324, label %348, !dbg !1595, !llvm.loop !1603

; <label>:334:                                    ; preds = %314
  %335 = icmp ugt i64 %320, 1, !dbg !1605
  %336 = and i1 %116, %335, !dbg !1609
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1219, metadata !642), !dbg !1610
  br i1 %336, label %337, label %355, !dbg !1609

; <label>:337:                                    ; preds = %334
  br label %338, !dbg !1611

; <label>:338:                                    ; preds = %337, %344
  %339 = phi i64 [ %345, %344 ], [ 1, %337 ]
  %340 = add i64 %339, %317, !dbg !1611
  %341 = getelementptr inbounds i8, i8* %2, i64 %340, !dbg !1612
  %342 = load i8, i8* %341, align 1, !dbg !1612, !tbaa !768
  %343 = sext i8 %342 to i32, !dbg !1612
  switch i32 %343, label %344 [
    i32 91, label %367
    i32 92, label %367
    i32 94, label %367
    i32 96, label %367
    i32 124, label %367
  ], !dbg !1613

; <label>:344:                                    ; preds = %338
  %345 = add nuw i64 %339, 1, !dbg !1614
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !1219, metadata !642), !dbg !1610
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !1219, metadata !642), !dbg !1610
  %346 = icmp ult i64 %345, %320, !dbg !1605
  br i1 %346, label %338, label %354, !dbg !1616, !llvm.loop !1618

; <label>:347:                                    ; preds = %314
  br label %351, !dbg !1571

; <label>:348:                                    ; preds = %324, %330
  %349 = phi i64 [ %331, %330 ], [ %326, %324 ]
  br label %351, !dbg !1571

; <label>:350:                                    ; preds = %314
  br label %351, !dbg !1571

; <label>:351:                                    ; preds = %350, %348, %347, %321
  %352 = phi i64 [ %315, %321 ], [ %315, %347 ], [ %349, %348 ], [ %315, %350 ]
  %353 = phi i8 [ 0, %321 ], [ 0, %347 ], [ 0, %348 ], [ %316, %350 ]
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1197, metadata !642), !dbg !1571
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1194, metadata !642), !dbg !1565
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10, !dbg !1621
  br label %364

; <label>:354:                                    ; preds = %344
  br label %355, !dbg !1622

; <label>:355:                                    ; preds = %354, %334
  %356 = load i32, i32* %12, align 4, !dbg !1622, !tbaa !731
  call void @llvm.dbg.value(metadata i32 %356, i64 0, metadata !1215, metadata !642), !dbg !1588
  %357 = call i32 @iswprint(i32 %356) #10, !dbg !1624
  %358 = icmp eq i32 %357, 0, !dbg !1624
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1197, metadata !642), !dbg !1571
  %359 = select i1 %358, i8 0, i8 %316, !dbg !1625
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1197, metadata !642), !dbg !1571
  %360 = add i64 %320, %315, !dbg !1626
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1194, metadata !642), !dbg !1565
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1197, metadata !642), !dbg !1571
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1194, metadata !642), !dbg !1565
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10, !dbg !1621
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1198, metadata !742), !dbg !1587
  %361 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #14, !dbg !1627
  %362 = icmp eq i32 %361, 0, !dbg !1628
  br i1 %362, label %314, label %363, !dbg !1629, !llvm.loop !1578

; <label>:363:                                    ; preds = %355
  br label %364, !dbg !1631

; <label>:364:                                    ; preds = %363, %351
  %365 = phi i8 [ %353, %351 ], [ %359, %363 ]
  %366 = phi i64 [ %352, %351 ], [ %360, %363 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #10, !dbg !1631
  br label %368

; <label>:367:                                    ; preds = %338, %338, %338, %338, %338
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1197, metadata !642), !dbg !1571
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1194, metadata !642), !dbg !1565
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10, !dbg !1621
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #10, !dbg !1631
  br label %649

; <label>:368:                                    ; preds = %364, %299
  %369 = phi i64 [ %156, %299 ], [ %313, %364 ]
  %370 = phi i64 [ 1, %299 ], [ %366, %364 ]
  %371 = phi i8 [ %307, %299 ], [ %365, %364 ]
  call void @llvm.dbg.value(metadata i8 %371, i64 0, metadata !1197, metadata !642), !dbg !1571
  call void @llvm.dbg.value(metadata i64 %370, i64 0, metadata !1194, metadata !642), !dbg !1565
  call void @llvm.dbg.value(metadata i64 %369, i64 0, metadata !1169, metadata !642), !dbg !1232
  %372 = and i8 %371, 1, !dbg !1632
  %373 = icmp ne i8 %372, 0, !dbg !1632
  call void @llvm.dbg.value(metadata i8 %372, i64 0, metadata !1193, metadata !642), !dbg !1327
  %374 = icmp ult i64 %370, 2, !dbg !1633
  %375 = or i1 %373, %113, !dbg !1634
  %376 = and i1 %374, %375, !dbg !1636
  br i1 %376, label %476, label %377, !dbg !1636

; <label>:377:                                    ; preds = %368
  %378 = add i64 %370, %124, !dbg !1637
  call void @llvm.dbg.value(metadata i64 %378, i64 0, metadata !1226, metadata !642), !dbg !1638
  br label %379, !dbg !1639

; <label>:379:                                    ; preds = %472, %377
  %380 = phi i64 [ %124, %377 ], [ %447, %472 ]
  %381 = phi i64 [ %125, %377 ], [ %473, %472 ]
  %382 = phi i8 [ %128, %377 ], [ %468, %472 ]
  %383 = phi i8 [ %159, %377 ], [ %475, %472 ]
  %384 = phi i8 [ %157, %377 ], [ %445, %472 ]
  %385 = phi i8 [ 0, %377 ], [ %446, %472 ]
  call void @llvm.dbg.value(metadata i8 %385, i64 0, metadata !1192, metadata !642), !dbg !1326
  call void @llvm.dbg.value(metadata i8 %384, i64 0, metadata !1191, metadata !642), !dbg !1325
  call void @llvm.dbg.value(metadata i8 %383, i64 0, metadata !1186, metadata !642), !dbg !1344
  call void @llvm.dbg.value(metadata i8 %382, i64 0, metadata !1183, metadata !642), !dbg !1246
  call void @llvm.dbg.value(metadata i64 %381, i64 0, metadata !1176, metadata !642), !dbg !1238
  call void @llvm.dbg.value(metadata i64 %380, i64 0, metadata !1175, metadata !642), !dbg !1313
  br i1 %375, label %432, label %386, !dbg !1640

; <label>:386:                                    ; preds = %379
  br i1 %112, label %387, label %643, !dbg !1645

; <label>:387:                                    ; preds = %386
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1192, metadata !642), !dbg !1326
  %388 = and i8 %382, 1, !dbg !1649
  %389 = icmp eq i8 %388, 0, !dbg !1649
  %390 = and i1 %114, %389, !dbg !1652
  br i1 %390, label %391, label %407, !dbg !1652

; <label>:391:                                    ; preds = %387
  %392 = icmp ult i64 %381, %131, !dbg !1654
  br i1 %392, label %393, label %395, !dbg !1659

; <label>:393:                                    ; preds = %391
  %394 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !1661
  store i8 39, i8* %394, align 1, !dbg !1661, !tbaa !768
  br label %395, !dbg !1661

; <label>:395:                                    ; preds = %393, %391
  %396 = add i64 %381, 1, !dbg !1663
  call void @llvm.dbg.value(metadata i64 %396, i64 0, metadata !1176, metadata !642), !dbg !1238
  %397 = icmp ult i64 %396, %131, !dbg !1665
  br i1 %397, label %398, label %400, !dbg !1669

; <label>:398:                                    ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !1671
  store i8 36, i8* %399, align 1, !dbg !1671, !tbaa !768
  br label %400, !dbg !1671

; <label>:400:                                    ; preds = %398, %395
  %401 = add i64 %381, 2, !dbg !1673
  call void @llvm.dbg.value(metadata i64 %401, i64 0, metadata !1176, metadata !642), !dbg !1238
  %402 = icmp ult i64 %401, %131, !dbg !1675
  br i1 %402, label %403, label %405, !dbg !1679

; <label>:403:                                    ; preds = %400
  %404 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !1681
  store i8 39, i8* %404, align 1, !dbg !1681, !tbaa !768
  br label %405, !dbg !1681

; <label>:405:                                    ; preds = %403, %400
  %406 = add i64 %381, 3, !dbg !1683
  call void @llvm.dbg.value(metadata i64 %406, i64 0, metadata !1176, metadata !642), !dbg !1238
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1183, metadata !642), !dbg !1246
  br label %407, !dbg !1685

; <label>:407:                                    ; preds = %387, %405
  %408 = phi i64 [ %406, %405 ], [ %381, %387 ]
  %409 = phi i8 [ 1, %405 ], [ %382, %387 ]
  call void @llvm.dbg.value(metadata i8 %409, i64 0, metadata !1183, metadata !642), !dbg !1246
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !1176, metadata !642), !dbg !1238
  %410 = icmp ult i64 %408, %131, !dbg !1687
  br i1 %410, label %411, label %413, !dbg !1691

; <label>:411:                                    ; preds = %407
  %412 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !1693
  store i8 92, i8* %412, align 1, !dbg !1693, !tbaa !768
  br label %413, !dbg !1693

; <label>:413:                                    ; preds = %411, %407
  %414 = add i64 %408, 1, !dbg !1695
  call void @llvm.dbg.value(metadata i64 %414, i64 0, metadata !1176, metadata !642), !dbg !1238
  %415 = icmp ult i64 %414, %131, !dbg !1697
  br i1 %415, label %416, label %420, !dbg !1701

; <label>:416:                                    ; preds = %413
  %417 = lshr i8 %383, 6, !dbg !1703
  %418 = or i8 %417, 48, !dbg !1703
  %419 = getelementptr inbounds i8, i8* %0, i64 %414, !dbg !1703
  store i8 %418, i8* %419, align 1, !dbg !1703, !tbaa !768
  br label %420, !dbg !1703

; <label>:420:                                    ; preds = %416, %413
  %421 = add i64 %408, 2, !dbg !1705
  call void @llvm.dbg.value(metadata i64 %421, i64 0, metadata !1176, metadata !642), !dbg !1238
  %422 = icmp ult i64 %421, %131, !dbg !1707
  br i1 %422, label %423, label %428, !dbg !1711

; <label>:423:                                    ; preds = %420
  %424 = lshr i8 %383, 3, !dbg !1713
  %425 = and i8 %424, 7, !dbg !1713
  %426 = or i8 %425, 48, !dbg !1713
  %427 = getelementptr inbounds i8, i8* %0, i64 %421, !dbg !1713
  store i8 %426, i8* %427, align 1, !dbg !1713, !tbaa !768
  br label %428, !dbg !1713

; <label>:428:                                    ; preds = %423, %420
  %429 = add i64 %408, 3, !dbg !1715
  call void @llvm.dbg.value(metadata i64 %429, i64 0, metadata !1176, metadata !642), !dbg !1238
  %430 = and i8 %383, 7, !dbg !1717
  %431 = or i8 %430, 48, !dbg !1718
  call void @llvm.dbg.value(metadata i8 %431, i64 0, metadata !1186, metadata !642), !dbg !1344
  br label %441, !dbg !1719

; <label>:432:                                    ; preds = %379
  %433 = and i8 %384, 1, !dbg !1720
  %434 = icmp eq i8 %433, 0, !dbg !1720
  br i1 %434, label %441, label %435, !dbg !1722

; <label>:435:                                    ; preds = %432
  %436 = icmp ult i64 %381, %131, !dbg !1723
  br i1 %436, label %437, label %439, !dbg !1728

; <label>:437:                                    ; preds = %435
  %438 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !1730
  store i8 92, i8* %438, align 1, !dbg !1730, !tbaa !768
  br label %439, !dbg !1730

; <label>:439:                                    ; preds = %437, %435
  %440 = add i64 %381, 1, !dbg !1732
  call void @llvm.dbg.value(metadata i64 %440, i64 0, metadata !1176, metadata !642), !dbg !1238
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1191, metadata !642), !dbg !1325
  br label %441, !dbg !1734

; <label>:441:                                    ; preds = %432, %439, %428
  %442 = phi i64 [ %440, %439 ], [ %381, %432 ], [ %429, %428 ]
  %443 = phi i8 [ %382, %439 ], [ %382, %432 ], [ %409, %428 ]
  %444 = phi i8 [ %383, %439 ], [ %383, %432 ], [ %431, %428 ]
  %445 = phi i8 [ 0, %439 ], [ %384, %432 ], [ %384, %428 ]
  %446 = phi i8 [ %385, %439 ], [ %385, %432 ], [ 1, %428 ]
  call void @llvm.dbg.value(metadata i8 %446, i64 0, metadata !1192, metadata !642), !dbg !1326
  call void @llvm.dbg.value(metadata i8 %445, i64 0, metadata !1191, metadata !642), !dbg !1325
  call void @llvm.dbg.value(metadata i8 %444, i64 0, metadata !1186, metadata !642), !dbg !1344
  call void @llvm.dbg.value(metadata i8 %443, i64 0, metadata !1183, metadata !642), !dbg !1246
  call void @llvm.dbg.value(metadata i64 %442, i64 0, metadata !1176, metadata !642), !dbg !1238
  %447 = add i64 %380, 1, !dbg !1735
  %448 = icmp ugt i64 %378, %447, !dbg !1737
  br i1 %448, label %449, label %541, !dbg !1738

; <label>:449:                                    ; preds = %441
  %450 = and i8 %443, 1, !dbg !1739
  %451 = icmp ne i8 %450, 0, !dbg !1739
  %452 = and i8 %446, 1, !dbg !1743
  %453 = icmp eq i8 %452, 0, !dbg !1743
  %454 = and i1 %451, %453, !dbg !1739
  br i1 %454, label %455, label %466, !dbg !1739

; <label>:455:                                    ; preds = %449
  %456 = icmp ult i64 %442, %131, !dbg !1745
  br i1 %456, label %457, label %459, !dbg !1750

; <label>:457:                                    ; preds = %455
  %458 = getelementptr inbounds i8, i8* %0, i64 %442, !dbg !1752
  store i8 39, i8* %458, align 1, !dbg !1752, !tbaa !768
  br label %459, !dbg !1752

; <label>:459:                                    ; preds = %457, %455
  %460 = add i64 %442, 1, !dbg !1754
  call void @llvm.dbg.value(metadata i64 %460, i64 0, metadata !1176, metadata !642), !dbg !1238
  %461 = icmp ult i64 %460, %131, !dbg !1756
  br i1 %461, label %462, label %464, !dbg !1760

; <label>:462:                                    ; preds = %459
  %463 = getelementptr inbounds i8, i8* %0, i64 %460, !dbg !1762
  store i8 39, i8* %463, align 1, !dbg !1762, !tbaa !768
  br label %464, !dbg !1762

; <label>:464:                                    ; preds = %462, %459
  %465 = add i64 %442, 2, !dbg !1764
  call void @llvm.dbg.value(metadata i64 %465, i64 0, metadata !1176, metadata !642), !dbg !1238
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1183, metadata !642), !dbg !1246
  br label %466, !dbg !1766

; <label>:466:                                    ; preds = %449, %464
  %467 = phi i64 [ %465, %464 ], [ %442, %449 ]
  %468 = phi i8 [ 0, %464 ], [ %443, %449 ]
  call void @llvm.dbg.value(metadata i8 %468, i64 0, metadata !1183, metadata !642), !dbg !1246
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !1176, metadata !642), !dbg !1238
  %469 = icmp ult i64 %467, %131, !dbg !1768
  br i1 %469, label %470, label %472, !dbg !1772

; <label>:470:                                    ; preds = %466
  %471 = getelementptr inbounds i8, i8* %0, i64 %467, !dbg !1774
  store i8 %444, i8* %471, align 1, !dbg !1774, !tbaa !768
  br label %472, !dbg !1774

; <label>:472:                                    ; preds = %470, %466
  %473 = add i64 %467, 1, !dbg !1776
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !1176, metadata !642), !dbg !1238
  call void @llvm.dbg.value(metadata i64 %447, i64 0, metadata !1175, metadata !642), !dbg !1313
  %474 = getelementptr inbounds i8, i8* %2, i64 %447, !dbg !1778
  %475 = load i8, i8* %474, align 1, !dbg !1778, !tbaa !768
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !1186, metadata !642), !dbg !1344
  br label %379, !dbg !1779, !llvm.loop !1781

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
  call void @llvm.dbg.value(metadata i64 %486, i64 0, metadata !1167, metadata !642), !dbg !1230
  call void @llvm.dbg.value(metadata i8 %485, i64 0, metadata !1193, metadata !642), !dbg !1327
  call void @llvm.dbg.value(metadata i8 %484, i64 0, metadata !1192, metadata !642), !dbg !1326
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !1191, metadata !642), !dbg !1325
  call void @llvm.dbg.value(metadata i8 %483, i64 0, metadata !1186, metadata !642), !dbg !1344
  call void @llvm.dbg.value(metadata i8 %482, i64 0, metadata !1184, metadata !642), !dbg !1247
  call void @llvm.dbg.value(metadata i8 %481, i64 0, metadata !1183, metadata !642), !dbg !1246
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !1169, metadata !642), !dbg !1232
  call void @llvm.dbg.value(metadata i64 %479, i64 0, metadata !1177, metadata !642), !dbg !1239
  call void @llvm.dbg.value(metadata i64 %478, i64 0, metadata !1176, metadata !642), !dbg !1238
  call void @llvm.dbg.value(metadata i64 %477, i64 0, metadata !1175, metadata !642), !dbg !1313
  br i1 %107, label %488, label %487, !dbg !1784

; <label>:487:                                    ; preds = %476
  br i1 %117, label %489, label %501, !dbg !1786

; <label>:488:                                    ; preds = %476
  br i1 %20, label %501, label %489, !dbg !1787

; <label>:489:                                    ; preds = %488, %487
  %490 = lshr i8 %483, 5, !dbg !1788
  %491 = zext i8 %490 to i64, !dbg !1788
  %492 = getelementptr inbounds i32, i32* %6, i64 %491, !dbg !1790
  %493 = load i32, i32* %492, align 4, !dbg !1790, !tbaa !731
  %494 = and i8 %483, 31, !dbg !1791
  %495 = zext i8 %494 to i32, !dbg !1792
  %496 = shl i32 1, %495, !dbg !1793
  %497 = and i32 %493, %496, !dbg !1793
  %498 = icmp eq i32 %497, 0, !dbg !1793
  %499 = icmp eq i8 %157, 0, !dbg !1794
  %500 = and i1 %499, %498, !dbg !1795
  br i1 %500, label %542, label %503, !dbg !1795

; <label>:501:                                    ; preds = %488, %487
  %502 = icmp eq i8 %157, 0, !dbg !1794
  br i1 %502, label %542, label %503, !dbg !1796

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
  call void @llvm.dbg.value(metadata i64 %512, i64 0, metadata !1167, metadata !642), !dbg !1230
  call void @llvm.dbg.value(metadata i8 %511, i64 0, metadata !1193, metadata !642), !dbg !1327
  call void @llvm.dbg.value(metadata i8 %510, i64 0, metadata !1186, metadata !642), !dbg !1344
  call void @llvm.dbg.value(metadata i8 %509, i64 0, metadata !1184, metadata !642), !dbg !1247
  call void @llvm.dbg.value(metadata i8 %508, i64 0, metadata !1183, metadata !642), !dbg !1246
  call void @llvm.dbg.value(metadata i64 %507, i64 0, metadata !1169, metadata !642), !dbg !1232
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !1177, metadata !642), !dbg !1239
  call void @llvm.dbg.value(metadata i64 %505, i64 0, metadata !1176, metadata !642), !dbg !1238
  call void @llvm.dbg.value(metadata i64 %504, i64 0, metadata !1175, metadata !642), !dbg !1313
  br i1 %112, label %513, label %644, !dbg !1798

; <label>:513:                                    ; preds = %503
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1192, metadata !642), !dbg !1326
  %514 = and i8 %508, 1, !dbg !1801
  %515 = icmp eq i8 %514, 0, !dbg !1801
  %516 = and i1 %114, %515, !dbg !1804
  br i1 %516, label %517, label %533, !dbg !1804

; <label>:517:                                    ; preds = %513
  %518 = icmp ult i64 %505, %512, !dbg !1806
  br i1 %518, label %519, label %521, !dbg !1811

; <label>:519:                                    ; preds = %517
  %520 = getelementptr inbounds i8, i8* %0, i64 %505, !dbg !1813
  store i8 39, i8* %520, align 1, !dbg !1813, !tbaa !768
  br label %521, !dbg !1813

; <label>:521:                                    ; preds = %519, %517
  %522 = add i64 %505, 1, !dbg !1815
  call void @llvm.dbg.value(metadata i64 %522, i64 0, metadata !1176, metadata !642), !dbg !1238
  %523 = icmp ult i64 %522, %512, !dbg !1817
  br i1 %523, label %524, label %526, !dbg !1821

; <label>:524:                                    ; preds = %521
  %525 = getelementptr inbounds i8, i8* %0, i64 %522, !dbg !1823
  store i8 36, i8* %525, align 1, !dbg !1823, !tbaa !768
  br label %526, !dbg !1823

; <label>:526:                                    ; preds = %524, %521
  %527 = add i64 %505, 2, !dbg !1825
  call void @llvm.dbg.value(metadata i64 %527, i64 0, metadata !1176, metadata !642), !dbg !1238
  %528 = icmp ult i64 %527, %512, !dbg !1827
  br i1 %528, label %529, label %531, !dbg !1831

; <label>:529:                                    ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527, !dbg !1833
  store i8 39, i8* %530, align 1, !dbg !1833, !tbaa !768
  br label %531, !dbg !1833

; <label>:531:                                    ; preds = %529, %526
  %532 = add i64 %505, 3, !dbg !1835
  call void @llvm.dbg.value(metadata i64 %532, i64 0, metadata !1176, metadata !642), !dbg !1238
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1183, metadata !642), !dbg !1246
  br label %533, !dbg !1837

; <label>:533:                                    ; preds = %513, %531
  %534 = phi i64 [ %532, %531 ], [ %505, %513 ]
  %535 = phi i8 [ 1, %531 ], [ %508, %513 ]
  call void @llvm.dbg.value(metadata i8 %535, i64 0, metadata !1183, metadata !642), !dbg !1246
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !1176, metadata !642), !dbg !1238
  %536 = icmp ult i64 %534, %512, !dbg !1839
  br i1 %536, label %537, label %539, !dbg !1843

; <label>:537:                                    ; preds = %533
  %538 = getelementptr inbounds i8, i8* %0, i64 %534, !dbg !1845
  store i8 92, i8* %538, align 1, !dbg !1845, !tbaa !768
  br label %539, !dbg !1845

; <label>:539:                                    ; preds = %533, %537
  %540 = add i64 %534, 1, !dbg !1847
  call void @llvm.dbg.value(metadata i64 %540, i64 0, metadata !1176, metadata !642), !dbg !1238
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !1167, metadata !642), !dbg !1230
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !1193, metadata !642), !dbg !1327
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !1192, metadata !642), !dbg !1326
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !1186, metadata !642), !dbg !1344
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !1184, metadata !642), !dbg !1247
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !1183, metadata !642), !dbg !1246
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !1169, metadata !642), !dbg !1232
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1177, metadata !642), !dbg !1239
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !1176, metadata !642), !dbg !1238
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !1175, metadata !642), !dbg !1313
  br label %569, !dbg !1849

; <label>:541:                                    ; preds = %441
  br label %542, !dbg !1230

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
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !1167, metadata !642), !dbg !1230
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !1193, metadata !642), !dbg !1327
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !1192, metadata !642), !dbg !1326
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !1186, metadata !642), !dbg !1344
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !1184, metadata !642), !dbg !1247
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !1183, metadata !642), !dbg !1246
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !1169, metadata !642), !dbg !1232
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1177, metadata !642), !dbg !1239
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !1176, metadata !642), !dbg !1238
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !1175, metadata !642), !dbg !1313
  %553 = and i8 %547, 1, !dbg !1849
  %554 = icmp ne i8 %553, 0, !dbg !1849
  %555 = and i8 %550, 1, !dbg !1853
  %556 = icmp eq i8 %555, 0, !dbg !1853
  %557 = and i1 %554, %556, !dbg !1849
  br i1 %557, label %558, label %569, !dbg !1849

; <label>:558:                                    ; preds = %542
  %559 = icmp ult i64 %544, %552, !dbg !1855
  br i1 %559, label %560, label %562, !dbg !1860

; <label>:560:                                    ; preds = %558
  %561 = getelementptr inbounds i8, i8* %0, i64 %544, !dbg !1862
  store i8 39, i8* %561, align 1, !dbg !1862, !tbaa !768
  br label %562, !dbg !1862

; <label>:562:                                    ; preds = %560, %558
  %563 = add i64 %544, 1, !dbg !1864
  call void @llvm.dbg.value(metadata i64 %563, i64 0, metadata !1176, metadata !642), !dbg !1238
  %564 = icmp ult i64 %563, %552, !dbg !1866
  br i1 %564, label %565, label %567, !dbg !1870

; <label>:565:                                    ; preds = %562
  %566 = getelementptr inbounds i8, i8* %0, i64 %563, !dbg !1872
  store i8 39, i8* %566, align 1, !dbg !1872, !tbaa !768
  br label %567, !dbg !1872

; <label>:567:                                    ; preds = %565, %562
  %568 = add i64 %544, 2, !dbg !1874
  call void @llvm.dbg.value(metadata i64 %568, i64 0, metadata !1176, metadata !642), !dbg !1238
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1183, metadata !642), !dbg !1246
  br label %569, !dbg !1876

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
  call void @llvm.dbg.value(metadata i8 %578, i64 0, metadata !1183, metadata !642), !dbg !1246
  call void @llvm.dbg.value(metadata i64 %577, i64 0, metadata !1176, metadata !642), !dbg !1238
  %579 = icmp ult i64 %577, %570, !dbg !1878
  br i1 %579, label %580, label %582, !dbg !1882

; <label>:580:                                    ; preds = %569
  %581 = getelementptr inbounds i8, i8* %0, i64 %577, !dbg !1884
  store i8 %572, i8* %581, align 1, !dbg !1884, !tbaa !768
  br label %582, !dbg !1884

; <label>:582:                                    ; preds = %580, %569
  %583 = add i64 %577, 1, !dbg !1886
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !1176, metadata !642), !dbg !1238
  %584 = and i8 %571, 1, !dbg !1888
  %585 = icmp eq i8 %584, 0, !dbg !1888
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1185, metadata !642), !dbg !1248
  %586 = select i1 %585, i8 0, i8 %130, !dbg !1890
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !1185, metadata !642), !dbg !1248
  br label %587, !dbg !1891

; <label>:587:                                    ; preds = %582, %209
  %588 = phi i64 [ %124, %209 ], [ %576, %582 ]
  %589 = phi i64 [ %125, %209 ], [ %583, %582 ]
  %590 = phi i64 [ %126, %209 ], [ %575, %582 ]
  %591 = phi i64 [ %156, %209 ], [ %574, %582 ]
  %592 = phi i8 [ %128, %209 ], [ %578, %582 ]
  %593 = phi i8 [ %129, %209 ], [ %573, %582 ]
  %594 = phi i8 [ %130, %209 ], [ %586, %582 ]
  %595 = phi i64 [ %131, %209 ], [ %570, %582 ]
  %596 = add i64 %588, 1, !dbg !1892
  call void @llvm.dbg.value(metadata i64 %596, i64 0, metadata !1175, metadata !642), !dbg !1313
  br label %123, !dbg !1894, !llvm.loop !1895

; <label>:597:                                    ; preds = %133, %135
  %598 = phi i64 [ %124, %133 ], [ -1, %135 ]
  %599 = icmp eq i64 %125, 0, !dbg !1898
  %600 = and i1 %114, %599, !dbg !1900
  %601 = xor i1 %600, true, !dbg !1900
  %602 = or i1 %112, %601, !dbg !1900
  br i1 %602, label %603, label %648, !dbg !1900

; <label>:603:                                    ; preds = %597
  %604 = and i1 %114, %112, !dbg !1901
  %605 = xor i1 %604, true, !dbg !1901
  %606 = and i8 %129, 1, !dbg !1903
  %607 = icmp eq i8 %606, 0, !dbg !1903
  %608 = or i1 %607, %605, !dbg !1901
  br i1 %608, label %618, label %609, !dbg !1901

; <label>:609:                                    ; preds = %603
  %610 = and i8 %130, 1, !dbg !1905
  %611 = icmp eq i8 %610, 0, !dbg !1905
  br i1 %611, label %614, label %612, !dbg !1908

; <label>:612:                                    ; preds = %609
  %613 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %126, i8* %2, i64 %598, i32 5, i32 %5, i32* %6, i8* %97, i8* %98), !dbg !1909
  br label %659, !dbg !1910

; <label>:614:                                    ; preds = %609
  %615 = icmp eq i64 %131, 0, !dbg !1911
  %616 = icmp ne i64 %126, 0, !dbg !1913
  %617 = and i1 %616, %615, !dbg !1915
  br i1 %617, label %27, label %618, !dbg !1915

; <label>:618:                                    ; preds = %603, %614
  %619 = icmp ne i8* %100, null, !dbg !1916
  %620 = and i1 %619, %112, !dbg !1918
  br i1 %620, label %621, label %638, !dbg !1918

; <label>:621:                                    ; preds = %618
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !1178, metadata !642), !dbg !1240
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1176, metadata !642), !dbg !1238
  %622 = load i8, i8* %100, align 1, !dbg !1919, !tbaa !768
  %623 = icmp eq i8 %622, 0, !dbg !1923
  br i1 %623, label %638, label %624, !dbg !1923

; <label>:624:                                    ; preds = %621
  br label %625, !dbg !1925

; <label>:625:                                    ; preds = %624, %632
  %626 = phi i8 [ %635, %632 ], [ %622, %624 ]
  %627 = phi i8* [ %634, %632 ], [ %100, %624 ]
  %628 = phi i64 [ %633, %632 ], [ %125, %624 ]
  %629 = icmp ult i64 %628, %131, !dbg !1925
  br i1 %629, label %630, label %632, !dbg !1929

; <label>:630:                                    ; preds = %625
  %631 = getelementptr inbounds i8, i8* %0, i64 %628, !dbg !1931
  store i8 %626, i8* %631, align 1, !dbg !1931, !tbaa !768
  br label %632, !dbg !1931

; <label>:632:                                    ; preds = %630, %625
  %633 = add i64 %628, 1, !dbg !1933
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !1176, metadata !642), !dbg !1238
  %634 = getelementptr inbounds i8, i8* %627, i64 1, !dbg !1935
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !1178, metadata !642), !dbg !1240
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !1178, metadata !642), !dbg !1240
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !1176, metadata !642), !dbg !1238
  %635 = load i8, i8* %634, align 1, !dbg !1919, !tbaa !768
  %636 = icmp eq i8 %635, 0, !dbg !1923
  br i1 %636, label %637, label %625, !dbg !1923, !llvm.loop !1937

; <label>:637:                                    ; preds = %632
  br label %638, !dbg !1238

; <label>:638:                                    ; preds = %637, %621, %618
  %639 = phi i64 [ %125, %618 ], [ %125, %621 ], [ %633, %637 ]
  call void @llvm.dbg.value(metadata i64 %639, i64 0, metadata !1176, metadata !642), !dbg !1238
  %640 = icmp ult i64 %639, %131, !dbg !1940
  br i1 %640, label %641, label %659, !dbg !1942

; <label>:641:                                    ; preds = %638
  %642 = getelementptr inbounds i8, i8* %0, i64 %639, !dbg !1943
  store i8 0, i8* %642, align 1, !dbg !1944, !tbaa !768
  br label %659, !dbg !1943

; <label>:643:                                    ; preds = %386
  br label %649, !dbg !1230

; <label>:644:                                    ; preds = %148, %161, %211, %225, %253, %255, %273, %276, %503
  %645 = phi i32 [ %96, %148 ], [ %96, %161 ], [ 2, %211 ], [ 5, %225 ], [ 2, %253 ], [ 2, %255 ], [ 2, %273 ], [ 2, %276 ], [ %96, %503 ]
  %646 = phi i64 [ %146, %148 ], [ %156, %161 ], [ %156, %211 ], [ %156, %225 ], [ %156, %253 ], [ %156, %255 ], [ %156, %273 ], [ %156, %276 ], [ %507, %503 ]
  %647 = phi i64 [ %131, %148 ], [ %131, %161 ], [ %131, %211 ], [ %131, %225 ], [ %131, %253 ], [ %131, %255 ], [ %131, %273 ], [ %131, %276 ], [ %512, %503 ]
  br label %649, !dbg !1230

; <label>:648:                                    ; preds = %597
  br label %649, !dbg !1230

; <label>:649:                                    ; preds = %648, %644, %643, %367
  %650 = phi i32 [ 2, %367 ], [ %96, %643 ], [ %645, %644 ], [ %96, %648 ]
  %651 = phi i64 [ %313, %367 ], [ %369, %643 ], [ %646, %644 ], [ %598, %648 ]
  %652 = phi i64 [ %131, %367 ], [ %131, %643 ], [ %647, %644 ], [ %131, %648 ]
  call void @llvm.dbg.value(metadata i64 %652, i64 0, metadata !1167, metadata !642), !dbg !1230
  call void @llvm.dbg.value(metadata i64 %651, i64 0, metadata !1169, metadata !642), !dbg !1232
  %653 = icmp ne i32 %650, 2, !dbg !1945
  %654 = icmp eq i8 %104, 0, !dbg !1947
  %655 = or i1 %653, %654, !dbg !1949
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !1170, metadata !642), !dbg !1233
  %656 = select i1 %655, i32 %650, i32 4, !dbg !1949
  call void @llvm.dbg.value(metadata i32 %656, i64 0, metadata !1170, metadata !642), !dbg !1233
  %657 = and i32 %5, -3, !dbg !1950
  %658 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %652, i8* %2, i64 %651, i32 %656, i32 %657, i32* null, i8* %97, i8* %98), !dbg !1951
  br label %659, !dbg !1952

; <label>:659:                                    ; preds = %638, %641, %649, %612
  %660 = phi i64 [ %658, %649 ], [ %613, %612 ], [ %639, %641 ], [ %639, %638 ]
  ret i64 %660, !dbg !1953
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !1954 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1958, metadata !642), !dbg !1962
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1959, metadata !642), !dbg !1963
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #10, !dbg !1964
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !1960, metadata !642), !dbg !1965
  %4 = icmp eq i8* %3, %0, !dbg !1966
  br i1 %4, label %5, label %75, !dbg !1968

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #10, !dbg !1969
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !1961, metadata !642), !dbg !1970
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1971, metadata !642), !dbg !1987
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1985, metadata !642), !dbg !1990
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1986, metadata !642), !dbg !1991
  %7 = load i8, i8* %6, align 1, !tbaa !768
  %8 = sext i8 %7 to i32
  %9 = and i32 %8, -33, !dbg !1992
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !1992

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1995, metadata !642), !dbg !2009
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2007, metadata !642), !dbg !2013
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2008, metadata !642), !dbg !2014
  %11 = getelementptr inbounds i8, i8* %6, i64 1
  %12 = load i8, i8* %11, align 1, !tbaa !768
  %13 = sext i8 %12 to i32
  %14 = and i32 %13, -33, !dbg !2015
  %15 = icmp eq i32 %14, 84, !dbg !2015
  br i1 %15, label %16, label %72, !dbg !2015

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2018, metadata !642), !dbg !2031
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2029, metadata !642), !dbg !2035
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2030, metadata !642), !dbg !2036
  %17 = getelementptr inbounds i8, i8* %6, i64 2
  %18 = load i8, i8* %17, align 1, !tbaa !768
  %19 = sext i8 %18 to i32
  %20 = and i32 %19, -33, !dbg !2037
  %21 = icmp eq i32 %20, 70, !dbg !2037
  br i1 %21, label %22, label %72, !dbg !2037

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2040, metadata !642), !dbg !2052
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2050, metadata !642), !dbg !2056
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2051, metadata !642), !dbg !2057
  %23 = getelementptr inbounds i8, i8* %6, i64 3
  %24 = load i8, i8* %23, align 1, !tbaa !768
  %25 = icmp eq i8 %24, 45, !dbg !2058
  br i1 %25, label %26, label %72, !dbg !2061

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2063, metadata !642), !dbg !2074
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2072, metadata !642), !dbg !2078
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2073, metadata !642), !dbg !2079
  %27 = getelementptr inbounds i8, i8* %6, i64 4
  %28 = load i8, i8* %27, align 1, !tbaa !768
  %29 = icmp eq i8 %28, 56, !dbg !2080
  br i1 %29, label %30, label %72, !dbg !2083

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2085, metadata !642), !dbg !2095
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2093, metadata !642), !dbg !2099
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2094, metadata !642), !dbg !2100
  %31 = getelementptr inbounds i8, i8* %6, i64 5
  %32 = load i8, i8* %31, align 1, !tbaa !768
  %33 = icmp eq i8 %32, 0, !dbg !2101
  br i1 %33, label %34, label %72, !dbg !2104

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !2106, !tbaa !768
  %36 = icmp eq i8 %35, 96, !dbg !2107
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.52, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), !dbg !2106
  br label %75, !dbg !2108

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1995, metadata !642), !dbg !2109
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2007, metadata !642), !dbg !2113
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2008, metadata !642), !dbg !2114
  %39 = getelementptr inbounds i8, i8* %6, i64 1
  %40 = load i8, i8* %39, align 1, !tbaa !768
  %41 = sext i8 %40 to i32
  %42 = and i32 %41, -33, !dbg !2115
  %43 = icmp eq i32 %42, 66, !dbg !2115
  br i1 %43, label %44, label %72, !dbg !2115

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2018, metadata !642), !dbg !2116
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2029, metadata !642), !dbg !2118
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2030, metadata !642), !dbg !2119
  %45 = getelementptr inbounds i8, i8* %6, i64 2
  %46 = load i8, i8* %45, align 1, !tbaa !768
  %47 = icmp eq i8 %46, 49, !dbg !2120
  br i1 %47, label %48, label %72, !dbg !2122

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2040, metadata !642), !dbg !2124
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2050, metadata !642), !dbg !2126
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2051, metadata !642), !dbg !2127
  %49 = getelementptr inbounds i8, i8* %6, i64 3
  %50 = load i8, i8* %49, align 1, !tbaa !768
  %51 = icmp eq i8 %50, 56, !dbg !2128
  br i1 %51, label %52, label %72, !dbg !2129

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2063, metadata !642), !dbg !2130
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2072, metadata !642), !dbg !2132
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2073, metadata !642), !dbg !2133
  %53 = getelementptr inbounds i8, i8* %6, i64 4
  %54 = load i8, i8* %53, align 1, !tbaa !768
  %55 = icmp eq i8 %54, 48, !dbg !2134
  br i1 %55, label %56, label %72, !dbg !2135

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2085, metadata !642), !dbg !2136
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2093, metadata !642), !dbg !2138
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2094, metadata !642), !dbg !2139
  %57 = getelementptr inbounds i8, i8* %6, i64 5
  %58 = load i8, i8* %57, align 1, !tbaa !768
  %59 = icmp eq i8 %58, 51, !dbg !2140
  br i1 %59, label %60, label %72, !dbg !2141

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2142, metadata !642), !dbg !2151
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2149, metadata !642), !dbg !2155
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2150, metadata !642), !dbg !2156
  %61 = getelementptr inbounds i8, i8* %6, i64 6
  %62 = load i8, i8* %61, align 1, !tbaa !768
  %63 = icmp eq i8 %62, 48, !dbg !2157
  br i1 %63, label %64, label %72, !dbg !2160

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2162, metadata !642), !dbg !2170
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2168, metadata !642), !dbg !2174
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2169, metadata !642), !dbg !2175
  %65 = getelementptr inbounds i8, i8* %6, i64 7
  %66 = load i8, i8* %65, align 1, !tbaa !768
  %67 = icmp eq i8 %66, 0, !dbg !2176
  br i1 %67, label %68, label %72, !dbg !2179

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !2180, !tbaa !768
  %70 = icmp eq i8 %69, 96, !dbg !2181
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.53, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), !dbg !2180
  br label %75, !dbg !2182

; <label>:72:                                     ; preds = %5, %30, %26, %22, %16, %10, %64, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !2183
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.51, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.50, i64 0, i64 0), !dbg !2184
  br label %75, !dbg !2185

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !2186
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
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2187 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2191, metadata !642), !dbg !2194
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2192, metadata !642), !dbg !2195
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2193, metadata !642), !dbg !2196
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2197, metadata !642) #10, !dbg !2210
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2202, metadata !642) #10, !dbg !2212
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !2203, metadata !642) #10, !dbg !2213
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2204, metadata !642) #10, !dbg !2214
  %4 = icmp ne %struct.quoting_options* %2, null, !dbg !2215
  %5 = select i1 %4, %struct.quoting_options* %2, %struct.quoting_options* @default_quoting_options, !dbg !2215
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2205, metadata !642) #10, !dbg !2216
  %6 = tail call i32* @__errno_location() #1, !dbg !2217
  %7 = load i32, i32* %6, align 4, !dbg !2217, !tbaa !731
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !2206, metadata !642) #10, !dbg !2218
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2219
  %9 = load i32, i32* %8, align 4, !dbg !2219, !tbaa !1098
  %10 = or i32 %9, 1, !dbg !2220
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2207, metadata !642) #10, !dbg !2221
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2222
  %12 = load i32, i32* %11, align 8, !dbg !2222, !tbaa !1036
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2223
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2224
  %15 = load i8*, i8** %14, align 8, !dbg !2224, !tbaa !1125
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2225
  %17 = load i8*, i8** %16, align 8, !dbg !2225, !tbaa !1128
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #10, !dbg !2226
  %19 = add i64 %18, 1, !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2208, metadata !642) #10, !dbg !2228
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2229, metadata !642) #10, !dbg !2234
  %20 = tail call noalias i8* @xmalloc(i64 %19) #10, !dbg !2236
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !2209, metadata !642) #10, !dbg !2237
  %21 = load i32, i32* %11, align 8, !dbg !2238, !tbaa !1036
  %22 = load i8*, i8** %14, align 8, !dbg !2239, !tbaa !1125
  %23 = load i8*, i8** %16, align 8, !dbg !2240, !tbaa !1128
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #10, !dbg !2241
  store i32 %7, i32* %6, align 4, !dbg !2242, !tbaa !731
  ret i8* %20, !dbg !2243
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2198 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2197, metadata !642), !dbg !2244
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2202, metadata !642), !dbg !2245
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !2203, metadata !642), !dbg !2246
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2204, metadata !642), !dbg !2247
  %5 = icmp ne %struct.quoting_options* %3, null, !dbg !2248
  %6 = select i1 %5, %struct.quoting_options* %3, %struct.quoting_options* @default_quoting_options, !dbg !2248
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2205, metadata !642), !dbg !2249
  %7 = tail call i32* @__errno_location() #1, !dbg !2250
  %8 = load i32, i32* %7, align 4, !dbg !2250, !tbaa !731
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !2206, metadata !642), !dbg !2251
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2252
  %10 = load i32, i32* %9, align 4, !dbg !2252, !tbaa !1098
  %11 = icmp ne i64* %2, null, !dbg !2253
  %12 = xor i1 %11, true, !dbg !2253
  %13 = zext i1 %12 to i32, !dbg !2253
  %14 = or i32 %10, %13, !dbg !2254
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !2207, metadata !642), !dbg !2255
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2256
  %16 = load i32, i32* %15, align 8, !dbg !2256, !tbaa !1036
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2257
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2258
  %19 = load i8*, i8** %18, align 8, !dbg !2258, !tbaa !1125
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2259
  %21 = load i8*, i8** %20, align 8, !dbg !2259, !tbaa !1128
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !2260
  %23 = add i64 %22, 1, !dbg !2261
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2208, metadata !642), !dbg !2262
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2229, metadata !642) #10, !dbg !2263
  %24 = tail call noalias i8* @xmalloc(i64 %23) #10, !dbg !2265
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !2209, metadata !642), !dbg !2266
  %25 = load i32, i32* %15, align 8, !dbg !2267, !tbaa !1036
  %26 = load i8*, i8** %18, align 8, !dbg !2268, !tbaa !1125
  %27 = load i8*, i8** %20, align 8, !dbg !2269, !tbaa !1128
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !2270
  store i32 %8, i32* %7, align 4, !dbg !2271, !tbaa !731
  br i1 %11, label %29, label %30, !dbg !2272

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2273, !tbaa !2275
  br label %30, !dbg !2277

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !2278
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !2279 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2283, !tbaa !650
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !2281, metadata !642), !dbg !2284
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2282, metadata !642), !dbg !2285
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2282, metadata !642), !dbg !2285
  %2 = load i32, i32* @nslots, align 4, !dbg !2286, !tbaa !731
  %3 = icmp sgt i32 %2, 1, !dbg !2290
  br i1 %3, label %4, label %14, !dbg !2291

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !2293

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !2293
  %8 = load i8*, i8** %7, align 8, !dbg !2293, !tbaa !2294
  tail call void @free(i8* %8) #10, !dbg !2296
  %9 = add nuw i64 %6, 1, !dbg !2297
  %10 = load i32, i32* @nslots, align 4, !dbg !2286, !tbaa !731
  %11 = sext i32 %10 to i64, !dbg !2290
  %12 = icmp slt i64 %9, %11, !dbg !2290
  br i1 %12, label %5, label %13, !dbg !2291, !llvm.loop !2299

; <label>:13:                                     ; preds = %5
  br label %14, !dbg !2302

; <label>:14:                                     ; preds = %13, %0
  %15 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2302
  %16 = load i8*, i8** %15, align 8, !dbg !2302, !tbaa !2294
  %17 = icmp eq i8* %16, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2304
  br i1 %17, label %19, label %18, !dbg !2305

; <label>:18:                                     ; preds = %14
  tail call void @free(i8* %16) #10, !dbg !2306
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2308, !tbaa !2309
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2310, !tbaa !2294
  br label %19, !dbg !2311

; <label>:19:                                     ; preds = %14, %18
  %20 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2312
  br i1 %20, label %23, label %21, !dbg !2314

; <label>:21:                                     ; preds = %19
  %22 = bitcast %struct.slotvec* %1 to i8*, !dbg !2315
  tail call void @free(i8* %22) #10, !dbg !2317
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2318, !tbaa !650
  br label %23, !dbg !2319

; <label>:23:                                     ; preds = %19, %21
  store i32 1, i32* @nslots, align 4, !dbg !2320, !tbaa !731
  ret void, !dbg !2321
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !2322 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2326, metadata !642), !dbg !2328
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2327, metadata !642), !dbg !2329
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2330
  ret i8* %3, !dbg !2331
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !2332 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2336, metadata !642), !dbg !2350
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2337, metadata !642), !dbg !2351
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2338, metadata !642), !dbg !2352
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2339, metadata !642), !dbg !2353
  %5 = tail call i32* @__errno_location() #1, !dbg !2354
  %6 = load i32, i32* %5, align 4, !dbg !2354, !tbaa !731
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !2340, metadata !642), !dbg !2355
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2356, !tbaa !650
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !2341, metadata !642), !dbg !2357
  %8 = icmp slt i32 %0, 0, !dbg !2358
  br i1 %8, label %9, label %10, !dbg !2360

; <label>:9:                                      ; preds = %4
  tail call void @abort() #15, !dbg !2361
  unreachable, !dbg !2361

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2362, !tbaa !731
  %12 = icmp sgt i32 %11, %0, !dbg !2363
  br i1 %12, label %34, label %13, !dbg !2364

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2365
  %15 = icmp ugt i32 %0, 2147483646, !dbg !2366
  br i1 %15, label %16, label %17, !dbg !2368

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2369
  unreachable, !dbg !2369

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !2370
  %19 = select i1 %14, i8* null, i8* %18, !dbg !2370
  %20 = add nsw i32 %0, 1, !dbg !2372
  %21 = sext i32 %20 to i64, !dbg !2373
  %22 = shl nsw i64 %21, 4, !dbg !2374
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #10, !dbg !2375
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2375
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !2341, metadata !642), !dbg !2357
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2376, !tbaa !650
  br i1 %14, label %25, label %26, !dbg !2377

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !2378, !tbaa.struct !2380
  br label %26, !dbg !2381

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2382, !tbaa !731
  %28 = sext i32 %27 to i64, !dbg !2383
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2383
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2384
  %31 = sub nsw i32 %20, %27, !dbg !2385
  %32 = sext i32 %31 to i64, !dbg !2386
  %33 = shl nsw i64 %32, 4, !dbg !2387
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !2384
  store i32 %20, i32* @nslots, align 4, !dbg !2388, !tbaa !731
  br label %34, !dbg !2389

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !2341, metadata !642), !dbg !2357
  %36 = sext i32 %0 to i64, !dbg !2390
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2391
  %38 = load i64, i64* %37, align 8, !dbg !2391, !tbaa !2309
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !2345, metadata !642), !dbg !2392
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2393
  %40 = load i8*, i8** %39, align 8, !dbg !2393, !tbaa !2294
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !2347, metadata !642), !dbg !2394
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2395
  %42 = load i32, i32* %41, align 4, !dbg !2395, !tbaa !1098
  %43 = or i32 %42, 1, !dbg !2396
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !2348, metadata !642), !dbg !2397
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2398
  %45 = load i32, i32* %44, align 8, !dbg !2398, !tbaa !1036
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2399
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2400
  %48 = load i8*, i8** %47, align 8, !dbg !2400, !tbaa !1125
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2401
  %50 = load i8*, i8** %49, align 8, !dbg !2401, !tbaa !1128
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !2402
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !2349, metadata !642), !dbg !2403
  %52 = icmp ugt i64 %38, %51, !dbg !2404
  br i1 %52, label %63, label %53, !dbg !2406

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !2407
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2345, metadata !642), !dbg !2392
  store i64 %54, i64* %37, align 8, !dbg !2409, !tbaa !2309
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2410
  br i1 %55, label %57, label %56, !dbg !2412

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #10, !dbg !2413
  br label %57, !dbg !2413

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2229, metadata !642) #10, !dbg !2414
  %58 = tail call noalias i8* @xmalloc(i64 %54) #10, !dbg !2416
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !2347, metadata !642), !dbg !2394
  store i8* %58, i8** %39, align 8, !dbg !2417, !tbaa !2294
  %59 = load i32, i32* %44, align 8, !dbg !2418, !tbaa !1036
  %60 = load i8*, i8** %47, align 8, !dbg !2419, !tbaa !1125
  %61 = load i8*, i8** %49, align 8, !dbg !2420, !tbaa !1128
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !2421
  br label %63, !dbg !2422

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !2347, metadata !642), !dbg !2394
  store i32 %6, i32* %5, align 4, !dbg !2423, !tbaa !731
  ret i8* %64, !dbg !2424
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #7

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2425 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2429, metadata !642), !dbg !2432
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2430, metadata !642), !dbg !2433
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2431, metadata !642), !dbg !2434
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2435
  ret i8* %4, !dbg !2436
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !2437 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2441, metadata !642), !dbg !2442
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2326, metadata !642) #10, !dbg !2443
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2327, metadata !642) #10, !dbg !2445
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2446
  ret i8* %2, !dbg !2447
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !2448 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2452, metadata !642), !dbg !2454
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2453, metadata !642), !dbg !2455
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2429, metadata !642) #10, !dbg !2456
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2430, metadata !642) #10, !dbg !2458
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2431, metadata !642) #10, !dbg !2459
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2460
  ret i8* %3, !dbg !2461
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !2462 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2470, metadata !2476), !dbg !2477
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2466, metadata !642), !dbg !2479
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2467, metadata !642), !dbg !2480
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2468, metadata !642), !dbg !2481
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2482
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !2482
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2469, metadata !742), !dbg !2483
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2475, metadata !642) #10, !dbg !2484
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2485
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !2485
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2470, metadata !642) #10, !dbg !2477
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2470, metadata !2486) #10, !dbg !2477
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2477
  %8 = icmp eq i32 %1, 10, !dbg !2487
  br i1 %8, label %9, label %10, !dbg !2489

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2490, !noalias !2491
  unreachable, !dbg !2490

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2470, metadata !2486) #10, !dbg !2477
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2494
  store i32 %1, i32* %11, align 8, !dbg !2494, !alias.scope !2491
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2494
  %13 = bitcast i32* %12 to i8*, !dbg !2494
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !2494
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !2495
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2469, metadata !742), !dbg !2483
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2496
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !2497
  ret i8* %14, !dbg !2498
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !2499 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2470, metadata !2476), !dbg !2508
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2503, metadata !642), !dbg !2510
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2504, metadata !642), !dbg !2511
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2505, metadata !642), !dbg !2512
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2506, metadata !642), !dbg !2513
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2514
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10, !dbg !2514
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2507, metadata !742), !dbg !2515
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2475, metadata !642) #10, !dbg !2516
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2517
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !2517
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2470, metadata !642) #10, !dbg !2508
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2470, metadata !2486) #10, !dbg !2508
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2508
  %9 = icmp eq i32 %1, 10, !dbg !2518
  br i1 %9, label %10, label %11, !dbg !2519

; <label>:10:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2520, !noalias !2521
  unreachable, !dbg !2520

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2470, metadata !2486) #10, !dbg !2508
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2524
  store i32 %1, i32* %12, align 8, !dbg !2524, !alias.scope !2521
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2524
  %14 = bitcast i32* %13 to i8*, !dbg !2524
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #10, !dbg !2524
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !2525
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2507, metadata !742), !dbg !2515
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !2526
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10, !dbg !2527
  ret i8* %15, !dbg !2528
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !2529 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !2470, metadata !2476), !dbg !2535
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2533, metadata !642), !dbg !2538
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2534, metadata !642), !dbg !2539
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2466, metadata !642) #10, !dbg !2540
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2467, metadata !642) #10, !dbg !2541
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2468, metadata !642) #10, !dbg !2542
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2543
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10, !dbg !2543
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2469, metadata !742) #10, !dbg !2544
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2475, metadata !642) #10, !dbg !2545
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !2546
  call void @llvm.lifetime.start(i64 52, i8* nonnull %6), !dbg !2546
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2470, metadata !642) #10, !dbg !2535
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2470, metadata !2486) #10, !dbg !2535
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !2535
  %7 = icmp eq i32 %0, 10, !dbg !2547
  br i1 %7, label %8, label %9, !dbg !2548

; <label>:8:                                      ; preds = %2
  tail call void @abort() #15, !dbg !2549, !noalias !2550
  unreachable, !dbg !2549

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2470, metadata !2486) #10, !dbg !2535
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2553
  store i32 %0, i32* %10, align 8, !dbg !2553, !alias.scope !2550
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2553
  %12 = bitcast i32* %11 to i8*, !dbg !2553
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #10, !dbg !2553
  call void @llvm.lifetime.end(i64 52, i8* nonnull %6), !dbg !2554
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2469, metadata !742) #10, !dbg !2544
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !2555
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10, !dbg !2556
  ret i8* %13, !dbg !2557
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2558 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2470, metadata !2476), !dbg !2565
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2562, metadata !642), !dbg !2568
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2563, metadata !642), !dbg !2569
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2564, metadata !642), !dbg !2570
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2503, metadata !642) #10, !dbg !2571
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2504, metadata !642) #10, !dbg !2572
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2505, metadata !642) #10, !dbg !2573
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2506, metadata !642) #10, !dbg !2574
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2575
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !2575
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2507, metadata !742) #10, !dbg !2576
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2475, metadata !642) #10, !dbg !2577
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2578
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !2578
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2470, metadata !642) #10, !dbg !2565
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2470, metadata !2486) #10, !dbg !2565
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2565
  %8 = icmp eq i32 %0, 10, !dbg !2579
  br i1 %8, label %9, label %10, !dbg !2580

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2581, !noalias !2582
  unreachable, !dbg !2581

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2470, metadata !2486) #10, !dbg !2565
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2585
  store i32 %0, i32* %11, align 8, !dbg !2585, !alias.scope !2582
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2585
  %13 = bitcast i32* %12 to i8*, !dbg !2585
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !2585
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !2586
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2507, metadata !742) #10, !dbg !2576
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #10, !dbg !2587
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !2588
  ret i8* %14, !dbg !2589
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !2590 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2594, metadata !642), !dbg !2598
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2595, metadata !642), !dbg !2599
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2596, metadata !642), !dbg !2600
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2601
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10, !dbg !2601
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2602, !tbaa.struct !2603
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2597, metadata !742), !dbg !2604
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1056, metadata !642), !dbg !2605
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1057, metadata !642), !dbg !2607
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1058, metadata !642), !dbg !2608
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1059, metadata !642), !dbg !2609
  %6 = lshr i8 %2, 5, !dbg !2610
  %7 = zext i8 %6 to i64, !dbg !2610
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2611
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1060, metadata !642), !dbg !2612
  %9 = and i8 %2, 31, !dbg !2613
  %10 = zext i8 %9 to i32, !dbg !2614
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1062, metadata !642), !dbg !2615
  %11 = load i32, i32* %8, align 4, !dbg !2616, !tbaa !731
  %12 = lshr i32 %11, %10, !dbg !2617
  %13 = and i32 %12, 1, !dbg !2618
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1063, metadata !642), !dbg !2619
  %14 = xor i32 %13, 1, !dbg !2620
  %15 = shl i32 %14, %10, !dbg !2621
  %16 = xor i32 %15, %11, !dbg !2622
  store i32 %16, i32* %8, align 4, !dbg !2622, !tbaa !731
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2597, metadata !742), !dbg !2604
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2623
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10, !dbg !2624
  ret i8* %17, !dbg !2625
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !2626 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2630, metadata !642), !dbg !2632
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2631, metadata !642), !dbg !2633
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2594, metadata !642) #10, !dbg !2634
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2595, metadata !642) #10, !dbg !2636
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2596, metadata !642) #10, !dbg !2637
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2638
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #10, !dbg !2638
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2639, !tbaa.struct !2603
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2597, metadata !742) #10, !dbg !2640
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1056, metadata !642) #10, !dbg !2641
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1057, metadata !642) #10, !dbg !2643
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1058, metadata !642) #10, !dbg !2644
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1059, metadata !642) #10, !dbg !2645
  %5 = lshr i8 %1, 5, !dbg !2646
  %6 = zext i8 %5 to i64, !dbg !2646
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2647
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !1060, metadata !642) #10, !dbg !2648
  %8 = and i8 %1, 31, !dbg !2649
  %9 = zext i8 %8 to i32, !dbg !2650
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1062, metadata !642) #10, !dbg !2651
  %10 = load i32, i32* %7, align 4, !dbg !2652, !tbaa !731
  %11 = lshr i32 %10, %9, !dbg !2653
  %12 = and i32 %11, 1, !dbg !2654
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !1063, metadata !642) #10, !dbg !2655
  %13 = xor i32 %12, 1, !dbg !2656
  %14 = shl i32 %13, %9, !dbg !2657
  %15 = xor i32 %14, %10, !dbg !2658
  store i32 %15, i32* %7, align 4, !dbg !2658, !tbaa !731
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2597, metadata !742) #10, !dbg !2640
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #10, !dbg !2659
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #10, !dbg !2660
  ret i8* %16, !dbg !2661
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !2662 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2664, metadata !642), !dbg !2665
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2630, metadata !642) #10, !dbg !2666
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2631, metadata !642) #10, !dbg !2668
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2594, metadata !642) #10, !dbg !2669
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2595, metadata !642) #10, !dbg !2671
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2596, metadata !642) #10, !dbg !2672
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2673
  call void @llvm.lifetime.start(i64 56, i8* nonnull %3) #10, !dbg !2673
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2674, !tbaa.struct !2603
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2597, metadata !742) #10, !dbg !2675
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1056, metadata !642) #10, !dbg !2676
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1057, metadata !642) #10, !dbg !2678
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1058, metadata !642) #10, !dbg !2679
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1059, metadata !642) #10, !dbg !2680
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2681
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !1060, metadata !642) #10, !dbg !2682
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1062, metadata !642) #10, !dbg !2683
  %5 = load i32, i32* %4, align 4, !dbg !2684, !tbaa !731
  %6 = or i32 %5, 67108864, !dbg !2685
  store i32 %6, i32* %4, align 4, !dbg !2685, !tbaa !731
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2597, metadata !742) #10, !dbg !2675
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #10, !dbg !2686
  call void @llvm.lifetime.end(i64 56, i8* nonnull %3) #10, !dbg !2687
  ret i8* %7, !dbg !2688
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !2689 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2691, metadata !642), !dbg !2693
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2692, metadata !642), !dbg !2694
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2594, metadata !642) #10, !dbg !2695
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2595, metadata !642) #10, !dbg !2697
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2596, metadata !642) #10, !dbg !2698
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2699
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #10, !dbg !2699
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2700, !tbaa.struct !2603
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2597, metadata !742) #10, !dbg !2701
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1056, metadata !642) #10, !dbg !2702
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1057, metadata !642) #10, !dbg !2704
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1058, metadata !642) #10, !dbg !2705
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1059, metadata !642) #10, !dbg !2706
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2707
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !1060, metadata !642) #10, !dbg !2708
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1062, metadata !642) #10, !dbg !2709
  %6 = load i32, i32* %5, align 4, !dbg !2710, !tbaa !731
  %7 = or i32 %6, 67108864, !dbg !2711
  store i32 %7, i32* %5, align 4, !dbg !2711, !tbaa !731
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2597, metadata !742) #10, !dbg !2701
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #10, !dbg !2712
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #10, !dbg !2713
  ret i8* %8, !dbg !2714
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !2715 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2470, metadata !2476), !dbg !2721
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2717, metadata !642), !dbg !2723
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2718, metadata !642), !dbg !2724
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2719, metadata !642), !dbg !2725
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2726
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10, !dbg !2726
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2475, metadata !642) #10, !dbg !2727
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2728
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !2728
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2470, metadata !642) #10, !dbg !2721
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2470, metadata !2486) #10, !dbg !2721
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2721
  %9 = icmp eq i32 %1, 10, !dbg !2729
  br i1 %9, label %10, label %11, !dbg !2730

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2731, !noalias !2732
  unreachable, !dbg !2731

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2470, metadata !2486) #10, !dbg !2721
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !2735
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !2735
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !2736
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2737
  store i32 %1, i32* %13, align 8, !dbg !2737
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2737
  %15 = bitcast i32* %14 to i8*, !dbg !2737
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !2737
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2720, metadata !742), !dbg !2738
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1056, metadata !642), !dbg !2739
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1057, metadata !642), !dbg !2741
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1058, metadata !642), !dbg !2742
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1059, metadata !642), !dbg !2743
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !2744
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !1060, metadata !642), !dbg !2745
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1062, metadata !642), !dbg !2746
  %17 = load i32, i32* %16, align 4, !dbg !2747, !tbaa !731
  %18 = or i32 %17, 67108864, !dbg !2748
  store i32 %18, i32* %16, align 4, !dbg !2748, !tbaa !731
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2720, metadata !742), !dbg !2738
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2749
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10, !dbg !2750
  ret i8* %19, !dbg !2751
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !2752 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2756, metadata !642), !dbg !2760
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2757, metadata !642), !dbg !2761
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2758, metadata !642), !dbg !2762
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2759, metadata !642), !dbg !2763
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2764, metadata !642) #10, !dbg !2774
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2769, metadata !642) #10, !dbg !2776
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2770, metadata !642) #10, !dbg !2777
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2771, metadata !642) #10, !dbg !2778
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2772, metadata !642) #10, !dbg !2779
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2780
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !2780
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2781, !tbaa.struct !2603
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2773, metadata !742) #10, !dbg !2782
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1106, metadata !642) #10, !dbg !2783
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1107, metadata !642) #10, !dbg !2785
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1108, metadata !642) #10, !dbg !2786
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1106, metadata !642) #10, !dbg !2783
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1106, metadata !642) #10, !dbg !2783
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2787
  store i32 10, i32* %7, align 8, !dbg !2788, !tbaa !1036
  %8 = icmp ne i8* %1, null, !dbg !2789
  %9 = icmp ne i8* %2, null, !dbg !2790
  %10 = and i1 %8, %9, !dbg !2791
  br i1 %10, label %12, label %11, !dbg !2791

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2792
  unreachable, !dbg !2792

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2793
  store i8* %1, i8** %13, align 8, !dbg !2794, !tbaa !1125
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2795
  store i8* %2, i8** %14, align 8, !dbg !2796, !tbaa !1128
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2773, metadata !742) #10, !dbg !2782
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #10, !dbg !2797
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !2798
  ret i8* %15, !dbg !2799
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !2765 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2764, metadata !642), !dbg !2800
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2769, metadata !642), !dbg !2801
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2770, metadata !642), !dbg !2802
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2771, metadata !642), !dbg !2803
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !2772, metadata !642), !dbg !2804
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2805
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10, !dbg !2805
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2806, !tbaa.struct !2603
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2773, metadata !742), !dbg !2807
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1106, metadata !642) #10, !dbg !2808
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1107, metadata !642) #10, !dbg !2810
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1108, metadata !642) #10, !dbg !2811
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1106, metadata !642) #10, !dbg !2808
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1106, metadata !642) #10, !dbg !2808
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2812
  store i32 10, i32* %8, align 8, !dbg !2813, !tbaa !1036
  %9 = icmp ne i8* %1, null, !dbg !2814
  %10 = icmp ne i8* %2, null, !dbg !2815
  %11 = and i1 %9, %10, !dbg !2816
  br i1 %11, label %13, label %12, !dbg !2816

; <label>:12:                                     ; preds = %5
  tail call void @abort() #15, !dbg !2817
  unreachable, !dbg !2817

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2818
  store i8* %1, i8** %14, align 8, !dbg !2819, !tbaa !1125
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2820
  store i8* %2, i8** %15, align 8, !dbg !2821, !tbaa !1128
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2773, metadata !742), !dbg !2807
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2822
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10, !dbg !2823
  ret i8* %16, !dbg !2824
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !2825 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2829, metadata !642), !dbg !2832
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2830, metadata !642), !dbg !2833
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2831, metadata !642), !dbg !2834
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2756, metadata !642) #10, !dbg !2835
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2757, metadata !642) #10, !dbg !2837
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2758, metadata !642) #10, !dbg !2838
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2759, metadata !642) #10, !dbg !2839
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2764, metadata !642) #10, !dbg !2840
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2769, metadata !642) #10, !dbg !2842
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2770, metadata !642) #10, !dbg !2843
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2771, metadata !642) #10, !dbg !2844
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2772, metadata !642) #10, !dbg !2845
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2846
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10, !dbg !2846
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2847, !tbaa.struct !2603
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2773, metadata !742) #10, !dbg !2848
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1106, metadata !642) #10, !dbg !2849
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1107, metadata !642) #10, !dbg !2851
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1108, metadata !642) #10, !dbg !2852
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1106, metadata !642) #10, !dbg !2849
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1106, metadata !642) #10, !dbg !2849
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2853
  store i32 10, i32* %6, align 8, !dbg !2854, !tbaa !1036
  %7 = icmp ne i8* %0, null, !dbg !2855
  %8 = icmp ne i8* %1, null, !dbg !2856
  %9 = and i1 %7, %8, !dbg !2857
  br i1 %9, label %11, label %10, !dbg !2857

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2858
  unreachable, !dbg !2858

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2859
  store i8* %0, i8** %12, align 8, !dbg !2860, !tbaa !1125
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2861
  store i8* %1, i8** %13, align 8, !dbg !2862, !tbaa !1128
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2773, metadata !742) #10, !dbg !2848
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !2863
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10, !dbg !2864
  ret i8* %14, !dbg !2865
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !2866 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2870, metadata !642), !dbg !2874
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2871, metadata !642), !dbg !2875
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2872, metadata !642), !dbg !2876
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2873, metadata !642), !dbg !2877
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2764, metadata !642) #10, !dbg !2878
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2769, metadata !642) #10, !dbg !2880
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2770, metadata !642) #10, !dbg !2881
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2771, metadata !642) #10, !dbg !2882
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2772, metadata !642) #10, !dbg !2883
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2884
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !2884
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2885, !tbaa.struct !2603
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2773, metadata !742) #10, !dbg !2886
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1106, metadata !642) #10, !dbg !2887
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1107, metadata !642) #10, !dbg !2889
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1108, metadata !642) #10, !dbg !2890
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1106, metadata !642) #10, !dbg !2887
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1106, metadata !642) #10, !dbg !2887
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2891
  store i32 10, i32* %7, align 8, !dbg !2892, !tbaa !1036
  %8 = icmp ne i8* %0, null, !dbg !2893
  %9 = icmp ne i8* %1, null, !dbg !2894
  %10 = and i1 %8, %9, !dbg !2895
  br i1 %10, label %12, label %11, !dbg !2895

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2896
  unreachable, !dbg !2896

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2897
  store i8* %0, i8** %13, align 8, !dbg !2898, !tbaa !1125
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2899
  store i8* %1, i8** %14, align 8, !dbg !2900, !tbaa !1128
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2773, metadata !742) #10, !dbg !2886
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #10, !dbg !2901
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !2902
  ret i8* %15, !dbg !2903
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2904 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2908, metadata !642), !dbg !2911
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2909, metadata !642), !dbg !2912
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2910, metadata !642), !dbg !2913
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2914
  ret i8* %4, !dbg !2915
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !2916 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2920, metadata !642), !dbg !2922
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2921, metadata !642), !dbg !2923
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2908, metadata !642) #10, !dbg !2924
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2909, metadata !642) #10, !dbg !2926
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2910, metadata !642) #10, !dbg !2927
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2928
  ret i8* %3, !dbg !2929
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !2930 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2934, metadata !642), !dbg !2936
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2935, metadata !642), !dbg !2937
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2908, metadata !642) #10, !dbg !2938
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2909, metadata !642) #10, !dbg !2940
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2910, metadata !642) #10, !dbg !2941
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2942
  ret i8* %3, !dbg !2943
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !2944 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2948, metadata !642), !dbg !2949
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2934, metadata !642) #10, !dbg !2950
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2935, metadata !642) #10, !dbg !2952
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2908, metadata !642) #10, !dbg !2953
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2909, metadata !642) #10, !dbg !2955
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2910, metadata !642) #10, !dbg !2956
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2957
  ret i8* %2, !dbg !2958
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !2959 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3014, metadata !642), !dbg !3020
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3015, metadata !642), !dbg !3021
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3016, metadata !642), !dbg !3022
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3017, metadata !642), !dbg !3023
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3018, metadata !642), !dbg !3024
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !3019, metadata !642), !dbg !3025
  %7 = icmp eq i8* %1, null, !dbg !3026
  br i1 %7, label %10, label %8, !dbg !3028

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.58, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #10, !dbg !3029
  br label %12, !dbg !3029

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.59, i64 0, i64 0), i8* %2, i8* %3) #10, !dbg !3030
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.60, i64 0, i64 0), i32 5) #10, !dbg !3031
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #10, !dbg !3032
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.61, i64 0, i64 0), i32 5) #10, !dbg !3034
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #10, !dbg !3035
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
  ], !dbg !3036

; <label>:17:                                     ; preds = %12
  tail call void @abort() #15, !dbg !3037
  unreachable, !dbg !3037

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.62, i64 0, i64 0), i32 5) #10, !dbg !3039
  %20 = load i8*, i8** %4, align 8, !dbg !3039, !tbaa !650
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #10, !dbg !3040
  br label %146, !dbg !3042

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.63, i64 0, i64 0), i32 5) #10, !dbg !3043
  %24 = load i8*, i8** %4, align 8, !dbg !3043, !tbaa !650
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3043
  %26 = load i8*, i8** %25, align 8, !dbg !3043, !tbaa !650
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #10, !dbg !3044
  br label %146, !dbg !3045

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.64, i64 0, i64 0), i32 5) #10, !dbg !3046
  %30 = load i8*, i8** %4, align 8, !dbg !3046, !tbaa !650
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3046
  %32 = load i8*, i8** %31, align 8, !dbg !3046, !tbaa !650
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3046
  %34 = load i8*, i8** %33, align 8, !dbg !3046, !tbaa !650
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #10, !dbg !3047
  br label %146, !dbg !3048

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.65, i64 0, i64 0), i32 5) #10, !dbg !3049
  %38 = load i8*, i8** %4, align 8, !dbg !3049, !tbaa !650
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3049
  %40 = load i8*, i8** %39, align 8, !dbg !3049, !tbaa !650
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3049
  %42 = load i8*, i8** %41, align 8, !dbg !3049, !tbaa !650
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3049
  %44 = load i8*, i8** %43, align 8, !dbg !3049, !tbaa !650
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #10, !dbg !3050
  br label %146, !dbg !3051

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.66, i64 0, i64 0), i32 5) #10, !dbg !3052
  %48 = load i8*, i8** %4, align 8, !dbg !3052, !tbaa !650
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3052
  %50 = load i8*, i8** %49, align 8, !dbg !3052, !tbaa !650
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3052
  %52 = load i8*, i8** %51, align 8, !dbg !3052, !tbaa !650
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3052
  %54 = load i8*, i8** %53, align 8, !dbg !3052, !tbaa !650
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3052
  %56 = load i8*, i8** %55, align 8, !dbg !3052, !tbaa !650
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #10, !dbg !3053
  br label %146, !dbg !3054

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.67, i64 0, i64 0), i32 5) #10, !dbg !3055
  %60 = load i8*, i8** %4, align 8, !dbg !3055, !tbaa !650
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3055
  %62 = load i8*, i8** %61, align 8, !dbg !3055, !tbaa !650
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3055
  %64 = load i8*, i8** %63, align 8, !dbg !3055, !tbaa !650
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3055
  %66 = load i8*, i8** %65, align 8, !dbg !3055, !tbaa !650
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3055
  %68 = load i8*, i8** %67, align 8, !dbg !3055, !tbaa !650
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3055
  %70 = load i8*, i8** %69, align 8, !dbg !3055, !tbaa !650
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #10, !dbg !3056
  br label %146, !dbg !3057

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.68, i64 0, i64 0), i32 5) #10, !dbg !3058
  %74 = load i8*, i8** %4, align 8, !dbg !3058, !tbaa !650
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3058
  %76 = load i8*, i8** %75, align 8, !dbg !3058, !tbaa !650
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3058
  %78 = load i8*, i8** %77, align 8, !dbg !3058, !tbaa !650
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3058
  %80 = load i8*, i8** %79, align 8, !dbg !3058, !tbaa !650
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3058
  %82 = load i8*, i8** %81, align 8, !dbg !3058, !tbaa !650
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3058
  %84 = load i8*, i8** %83, align 8, !dbg !3058, !tbaa !650
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3058
  %86 = load i8*, i8** %85, align 8, !dbg !3058, !tbaa !650
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #10, !dbg !3059
  br label %146, !dbg !3060

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.69, i64 0, i64 0), i32 5) #10, !dbg !3061
  %90 = load i8*, i8** %4, align 8, !dbg !3061, !tbaa !650
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3061
  %92 = load i8*, i8** %91, align 8, !dbg !3061, !tbaa !650
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3061
  %94 = load i8*, i8** %93, align 8, !dbg !3061, !tbaa !650
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3061
  %96 = load i8*, i8** %95, align 8, !dbg !3061, !tbaa !650
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3061
  %98 = load i8*, i8** %97, align 8, !dbg !3061, !tbaa !650
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3061
  %100 = load i8*, i8** %99, align 8, !dbg !3061, !tbaa !650
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3061
  %102 = load i8*, i8** %101, align 8, !dbg !3061, !tbaa !650
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3061
  %104 = load i8*, i8** %103, align 8, !dbg !3061, !tbaa !650
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #10, !dbg !3062
  br label %146, !dbg !3063

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.70, i64 0, i64 0), i32 5) #10, !dbg !3064
  %108 = load i8*, i8** %4, align 8, !dbg !3064, !tbaa !650
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3064
  %110 = load i8*, i8** %109, align 8, !dbg !3064, !tbaa !650
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3064
  %112 = load i8*, i8** %111, align 8, !dbg !3064, !tbaa !650
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3064
  %114 = load i8*, i8** %113, align 8, !dbg !3064, !tbaa !650
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3064
  %116 = load i8*, i8** %115, align 8, !dbg !3064, !tbaa !650
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3064
  %118 = load i8*, i8** %117, align 8, !dbg !3064, !tbaa !650
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3064
  %120 = load i8*, i8** %119, align 8, !dbg !3064, !tbaa !650
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3064
  %122 = load i8*, i8** %121, align 8, !dbg !3064, !tbaa !650
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3064
  %124 = load i8*, i8** %123, align 8, !dbg !3064, !tbaa !650
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #10, !dbg !3065
  br label %146, !dbg !3066

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.71, i64 0, i64 0), i32 5) #10, !dbg !3067
  %128 = load i8*, i8** %4, align 8, !dbg !3067, !tbaa !650
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3067
  %130 = load i8*, i8** %129, align 8, !dbg !3067, !tbaa !650
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3067
  %132 = load i8*, i8** %131, align 8, !dbg !3067, !tbaa !650
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3067
  %134 = load i8*, i8** %133, align 8, !dbg !3067, !tbaa !650
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3067
  %136 = load i8*, i8** %135, align 8, !dbg !3067, !tbaa !650
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3067
  %138 = load i8*, i8** %137, align 8, !dbg !3067, !tbaa !650
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3067
  %140 = load i8*, i8** %139, align 8, !dbg !3067, !tbaa !650
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3067
  %142 = load i8*, i8** %141, align 8, !dbg !3067, !tbaa !650
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3067
  %144 = load i8*, i8** %143, align 8, !dbg !3067, !tbaa !650
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #10, !dbg !3068
  br label %146, !dbg !3069

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !3070
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !3071 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3075, metadata !642), !dbg !3081
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3076, metadata !642), !dbg !3082
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3077, metadata !642), !dbg !3083
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3078, metadata !642), !dbg !3084
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3079, metadata !642), !dbg !3085
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3080, metadata !642), !dbg !3086
  br label %6, !dbg !3087

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3080, metadata !642), !dbg !3086
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3089
  %9 = load i8*, i8** %8, align 8, !dbg !3089, !tbaa !650
  %10 = icmp eq i8* %9, null, !dbg !3092
  %11 = add i64 %7, 1, !dbg !3094
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !3080, metadata !642), !dbg !3086
  br i1 %10, label %12, label %6, !dbg !3092, !llvm.loop !3096

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3099
  ret void, !dbg !3100
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !3101 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3112, metadata !642), !dbg !3120
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3113, metadata !642), !dbg !3121
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3114, metadata !642), !dbg !3122
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3115, metadata !642), !dbg !3123
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !3116, metadata !642), !dbg !3124
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3125
  call void @llvm.lifetime.start(i64 80, i8* nonnull %7) #10, !dbg !3125
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3118, metadata !642), !dbg !3126
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3117, metadata !642), !dbg !3127
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3117, metadata !642), !dbg !3127
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %11 = load i32, i32* %8, align 8, !dbg !3128
  %12 = icmp ult i32 %11, 41, !dbg !3128
  br i1 %12, label %13, label %18, !dbg !3128

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !3132
  %15 = sext i32 %11 to i64, !dbg !3132
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3132
  %17 = add i32 %11, 8, !dbg !3132
  store i32 %17, i32* %8, align 8, !dbg !3132
  br label %21, !dbg !3132

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !3134
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3134
  store i8* %20, i8** %10, align 8, !dbg !3134
  br label %21, !dbg !3134

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ], !dbg !3128
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3136
  %25 = load i8*, i8** %24, align 8, !dbg !3136
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3138
  store i8* %25, i8** %26, align 16, !dbg !3139, !tbaa !650
  %27 = icmp eq i8* %25, null, !dbg !3140
  br i1 %27, label %30, label %28, !dbg !3141

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3117, metadata !642), !dbg !3127
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3117, metadata !642), !dbg !3127
  %29 = icmp ult i32 %22, 41, !dbg !3128
  br i1 %29, label %35, label %32, !dbg !3128

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3143
  call void @llvm.lifetime.end(i64 80, i8* nonnull %7) #10, !dbg !3144
  ret void, !dbg !3144

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !3134
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3134
  store i8* %34, i8** %10, align 8, !dbg !3134
  br label %40, !dbg !3134

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !3132
  %37 = sext i32 %22 to i64, !dbg !3132
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3132
  %39 = add i32 %22, 8, !dbg !3132
  store i32 %39, i32* %8, align 8, !dbg !3132
  br label %40, !dbg !3132

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ], !dbg !3128
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3136
  %44 = load i8*, i8** %43, align 8, !dbg !3136
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3138
  store i8* %44, i8** %45, align 8, !dbg !3139, !tbaa !650
  %46 = icmp eq i8* %44, null, !dbg !3140
  br i1 %46, label %30, label %47, !dbg !3141

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3117, metadata !642), !dbg !3127
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3117, metadata !642), !dbg !3127
  %48 = icmp ult i32 %41, 41, !dbg !3128
  br i1 %48, label %52, label %49, !dbg !3128

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !3134
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3134
  store i8* %51, i8** %10, align 8, !dbg !3134
  br label %57, !dbg !3134

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !3132
  %54 = sext i32 %41 to i64, !dbg !3132
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3132
  %56 = add i32 %41, 8, !dbg !3132
  store i32 %56, i32* %8, align 8, !dbg !3132
  br label %57, !dbg !3132

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ], !dbg !3128
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3136
  %61 = load i8*, i8** %60, align 8, !dbg !3136
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3138
  store i8* %61, i8** %62, align 16, !dbg !3139, !tbaa !650
  %63 = icmp eq i8* %61, null, !dbg !3140
  br i1 %63, label %30, label %64, !dbg !3141

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3117, metadata !642), !dbg !3127
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3117, metadata !642), !dbg !3127
  %65 = icmp ult i32 %58, 41, !dbg !3128
  br i1 %65, label %69, label %66, !dbg !3128

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !3134
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3134
  store i8* %68, i8** %10, align 8, !dbg !3134
  br label %74, !dbg !3134

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !3132
  %71 = sext i32 %58 to i64, !dbg !3132
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3132
  %73 = add i32 %58, 8, !dbg !3132
  store i32 %73, i32* %8, align 8, !dbg !3132
  br label %74, !dbg !3132

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ], !dbg !3128
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3136
  %78 = load i8*, i8** %77, align 8, !dbg !3136
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3138
  store i8* %78, i8** %79, align 8, !dbg !3139, !tbaa !650
  %80 = icmp eq i8* %78, null, !dbg !3140
  br i1 %80, label %30, label %81, !dbg !3141

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3117, metadata !642), !dbg !3127
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3117, metadata !642), !dbg !3127
  %82 = icmp ult i32 %75, 41, !dbg !3128
  br i1 %82, label %86, label %83, !dbg !3128

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !3134
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3134
  store i8* %85, i8** %10, align 8, !dbg !3134
  br label %91, !dbg !3134

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !3132
  %88 = sext i32 %75 to i64, !dbg !3132
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3132
  %90 = add i32 %75, 8, !dbg !3132
  store i32 %90, i32* %8, align 8, !dbg !3132
  br label %91, !dbg !3132

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ], !dbg !3128
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3136
  %95 = load i8*, i8** %94, align 8, !dbg !3136
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3138
  store i8* %95, i8** %96, align 16, !dbg !3139, !tbaa !650
  %97 = icmp eq i8* %95, null, !dbg !3140
  br i1 %97, label %30, label %98, !dbg !3141

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3117, metadata !642), !dbg !3127
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3117, metadata !642), !dbg !3127
  %99 = icmp ult i32 %92, 41, !dbg !3128
  br i1 %99, label %103, label %100, !dbg !3128

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !3134
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3134
  store i8* %102, i8** %10, align 8, !dbg !3134
  br label %108, !dbg !3134

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !3132
  %105 = sext i32 %92 to i64, !dbg !3132
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3132
  %107 = add i32 %92, 8, !dbg !3132
  store i32 %107, i32* %8, align 8, !dbg !3132
  br label %108, !dbg !3132

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3136
  %111 = load i8*, i8** %110, align 8, !dbg !3136
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3138
  store i8* %111, i8** %112, align 8, !dbg !3139, !tbaa !650
  %113 = icmp eq i8* %111, null, !dbg !3140
  br i1 %113, label %30, label %114, !dbg !3141

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3117, metadata !642), !dbg !3127
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3117, metadata !642), !dbg !3127
  %115 = load i8*, i8** %10, align 8, !dbg !3134
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3134
  store i8* %116, i8** %10, align 8, !dbg !3134
  %117 = bitcast i8* %115 to i8**, !dbg !3136
  %118 = load i8*, i8** %117, align 8, !dbg !3136
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3138
  store i8* %118, i8** %119, align 16, !dbg !3139, !tbaa !650
  %120 = icmp eq i8* %118, null, !dbg !3140
  br i1 %120, label %30, label %121, !dbg !3141

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3117, metadata !642), !dbg !3127
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3117, metadata !642), !dbg !3127
  %122 = load i8*, i8** %10, align 8, !dbg !3134
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3134
  store i8* %123, i8** %10, align 8, !dbg !3134
  %124 = bitcast i8* %122 to i8**, !dbg !3136
  %125 = load i8*, i8** %124, align 8, !dbg !3136
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3138
  store i8* %125, i8** %126, align 8, !dbg !3139, !tbaa !650
  %127 = icmp eq i8* %125, null, !dbg !3140
  br i1 %127, label %30, label %128, !dbg !3141

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3117, metadata !642), !dbg !3127
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3117, metadata !642), !dbg !3127
  %129 = load i8*, i8** %10, align 8, !dbg !3134
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3134
  store i8* %130, i8** %10, align 8, !dbg !3134
  %131 = bitcast i8* %129 to i8**, !dbg !3136
  %132 = load i8*, i8** %131, align 8, !dbg !3136
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3138
  store i8* %132, i8** %133, align 16, !dbg !3139, !tbaa !650
  %134 = icmp eq i8* %132, null, !dbg !3140
  br i1 %134, label %30, label %135, !dbg !3141

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3117, metadata !642), !dbg !3127
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3117, metadata !642), !dbg !3127
  %136 = load i8*, i8** %10, align 8, !dbg !3134
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3134
  store i8* %137, i8** %10, align 8, !dbg !3134
  %138 = bitcast i8* %136 to i8**, !dbg !3136
  %139 = load i8*, i8** %138, align 8, !dbg !3136
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3138
  store i8* %139, i8** %140, align 8, !dbg !3139, !tbaa !650
  %141 = icmp eq i8* %139, null, !dbg !3140
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3117, metadata !642), !dbg !3127
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3117, metadata !642), !dbg !3127
  %142 = select i1 %141, i64 9, i64 10, !dbg !3141
  br label %30, !dbg !3141
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !3145 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3149, metadata !642), !dbg !3158
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3150, metadata !642), !dbg !3159
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3151, metadata !642), !dbg !3160
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3152, metadata !642), !dbg !3161
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3162
  call void @llvm.lifetime.start(i64 24, i8* nonnull %6) #10, !dbg !3162
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3153, metadata !642), !dbg !3163
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3164
  call void @llvm.va_start(i8* nonnull %6), !dbg !3164
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3165
  call void @llvm.va_end(i8* nonnull %6), !dbg !3166
  call void @llvm.lifetime.end(i64 24, i8* nonnull %6) #10, !dbg !3167
  ret void, !dbg !3167
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !3168 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.74, i64 0, i64 0), i32 5) #10, !dbg !3169
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.75, i64 0, i64 0)) #10, !dbg !3170
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0), i32 5) #10, !dbg !3172
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.76, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.77, i64 0, i64 0)) #10, !dbg !3173
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19, i64 0, i64 0), i32 5) #10, !dbg !3174
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3174, !tbaa !650
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #10, !dbg !3175
  ret void, !dbg !3176
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #12 !dbg !3177 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3181, metadata !642), !dbg !3183
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3182, metadata !642), !dbg !3184
  %3 = udiv i64 9223372036854775807, %1, !dbg !3185
  %4 = icmp ult i64 %3, %0, !dbg !3185
  br i1 %4, label %5, label %6, !dbg !3187

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3188
  unreachable, !dbg !3188

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3189
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3190, metadata !642) #10, !dbg !3197
  %8 = tail call noalias i8* @malloc(i64 %7) #10, !dbg !3199
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3196, metadata !642) #10, !dbg !3200
  %9 = icmp eq i8* %8, null, !dbg !3201
  %10 = icmp ne i64 %7, 0, !dbg !3203
  %11 = and i1 %10, %9, !dbg !3205
  br i1 %11, label %12, label %13, !dbg !3205

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !3206
  unreachable, !dbg !3206

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !3207
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !3191 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3190, metadata !642), !dbg !3208
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3209
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3196, metadata !642), !dbg !3210
  %3 = icmp eq i8* %2, null, !dbg !3211
  %4 = icmp ne i64 %0, 0, !dbg !3212
  %5 = and i1 %4, %3, !dbg !3213
  br i1 %5, label %6, label %7, !dbg !3213

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3214
  unreachable, !dbg !3214

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3215
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #12 !dbg !3216 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3220, metadata !642), !dbg !3223
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3221, metadata !642), !dbg !3224
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3222, metadata !642), !dbg !3225
  %4 = udiv i64 9223372036854775807, %2, !dbg !3226
  %5 = icmp ult i64 %4, %1, !dbg !3226
  br i1 %5, label %6, label %7, !dbg !3228

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !3229
  unreachable, !dbg !3229

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3230
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3231, metadata !642) #10, !dbg !3237
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !3236, metadata !642) #10, !dbg !3239
  %9 = icmp eq i64 %8, 0, !dbg !3240
  %10 = icmp ne i8* %0, null, !dbg !3242
  %11 = and i1 %10, %9, !dbg !3244
  br i1 %11, label %12, label %13, !dbg !3244

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #10, !dbg !3245
  br label %19, !dbg !3247

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #10, !dbg !3248
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !3231, metadata !642) #10, !dbg !3237
  %15 = icmp eq i8* %14, null, !dbg !3249
  %16 = icmp ne i64 %8, 0, !dbg !3251
  %17 = and i1 %16, %15, !dbg !3253
  br i1 %17, label %18, label %19, !dbg !3253

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3254
  unreachable, !dbg !3254

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !3255
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !3232 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3231, metadata !642), !dbg !3256
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3236, metadata !642), !dbg !3257
  %3 = icmp eq i64 %1, 0, !dbg !3258
  %4 = icmp ne i8* %0, null, !dbg !3259
  %5 = and i1 %4, %3, !dbg !3260
  br i1 %5, label %6, label %7, !dbg !3260

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #10, !dbg !3261
  br label %13, !dbg !3262

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #10, !dbg !3263
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3231, metadata !642), !dbg !3256
  %9 = icmp eq i8* %8, null, !dbg !3264
  %10 = icmp ne i64 %1, 0, !dbg !3265
  %11 = and i1 %10, %9, !dbg !3266
  br i1 %11, label %12, label %13, !dbg !3266

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !3267
  unreachable, !dbg !3267

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !3268
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #12 !dbg !578 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !583, metadata !642), !dbg !3269
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !584, metadata !642), !dbg !3270
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !585, metadata !642), !dbg !3271
  %4 = load i64, i64* %1, align 8, !dbg !3272, !tbaa !2275
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !586, metadata !642), !dbg !3273
  %5 = icmp eq i8* %0, null, !dbg !3274
  br i1 %5, label %6, label %13, !dbg !3276

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3277
  br i1 %7, label %8, label %17, !dbg !3280

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3281
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !586, metadata !642), !dbg !3273
  %10 = icmp ugt i64 %2, 128, !dbg !3283
  %11 = zext i1 %10 to i64, !dbg !3283
  %12 = add nuw nsw i64 %9, %11, !dbg !3284
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !586, metadata !642), !dbg !3273
  br label %17, !dbg !3285

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !3286
  %15 = icmp ugt i64 %14, %4, !dbg !3289
  br i1 %15, label %20, label %16, !dbg !3290

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3291
  unreachable, !dbg !3291

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !586, metadata !642), !dbg !3273
  store i64 %18, i64* %1, align 8, !dbg !3292, !tbaa !2275
  %19 = mul i64 %18, %2, !dbg !3293
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3231, metadata !642) #10, !dbg !3294
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3236, metadata !642) #10, !dbg !3296
  br label %27, !dbg !3297

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !3298
  %22 = add i64 %4, 1, !dbg !3299
  %23 = add i64 %22, %21, !dbg !3300
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !586, metadata !642), !dbg !3273
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !586, metadata !642), !dbg !3273
  store i64 %23, i64* %1, align 8, !dbg !3292, !tbaa !2275
  %24 = mul i64 %23, %2, !dbg !3293
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3231, metadata !642) #10, !dbg !3294
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3236, metadata !642) #10, !dbg !3296
  %25 = icmp eq i64 %24, 0, !dbg !3301
  br i1 %25, label %26, label %27, !dbg !3297

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #10, !dbg !3302
  br label %34, !dbg !3303

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #10, !dbg !3304
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3231, metadata !642) #10, !dbg !3294
  %30 = icmp eq i8* %29, null, !dbg !3305
  %31 = icmp ne i64 %28, 0, !dbg !3306
  %32 = and i1 %31, %30, !dbg !3307
  br i1 %32, label %33, label %34, !dbg !3307

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #15, !dbg !3308
  unreachable, !dbg !3308

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !3309
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #12 !dbg !3310 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3312, metadata !642), !dbg !3313
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3190, metadata !642) #10, !dbg !3314
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3316
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3196, metadata !642) #10, !dbg !3317
  %3 = icmp eq i8* %2, null, !dbg !3318
  %4 = icmp ne i64 %0, 0, !dbg !3319
  %5 = and i1 %4, %3, !dbg !3320
  br i1 %5, label %6, label %7, !dbg !3320

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3321
  unreachable, !dbg !3321

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3322
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !3323 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3327, metadata !642), !dbg !3329
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !3328, metadata !642), !dbg !3330
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !583, metadata !642) #10, !dbg !3331
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !584, metadata !642) #10, !dbg !3333
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !585, metadata !642) #10, !dbg !3334
  %3 = load i64, i64* %1, align 8, !dbg !3335, !tbaa !2275
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !586, metadata !642) #10, !dbg !3336
  %4 = icmp eq i8* %0, null, !dbg !3337
  br i1 %4, label %5, label %8, !dbg !3338

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3339
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !586, metadata !642) #10, !dbg !3336
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !586, metadata !642) #10, !dbg !3336
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3340
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !586, metadata !642) #10, !dbg !3336
  store i64 %7, i64* %1, align 8, !dbg !3341, !tbaa !2275
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3231, metadata !642) #10, !dbg !3342
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3236, metadata !642) #10, !dbg !3344
  br label %17, !dbg !3345

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !3346
  br i1 %9, label %11, label %10, !dbg !3347

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #15, !dbg !3348
  unreachable, !dbg !3348

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !3349
  %13 = add i64 %3, 1, !dbg !3350
  %14 = add i64 %13, %12, !dbg !3351
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !586, metadata !642) #10, !dbg !3336
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !586, metadata !642) #10, !dbg !3336
  store i64 %14, i64* %1, align 8, !dbg !3341, !tbaa !2275
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3231, metadata !642) #10, !dbg !3342
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3236, metadata !642) #10, !dbg !3344
  %15 = icmp eq i64 %14, 0, !dbg !3352
  br i1 %15, label %16, label %17, !dbg !3345

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #10, !dbg !3353
  br label %24, !dbg !3354

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #10, !dbg !3355
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !3231, metadata !642) #10, !dbg !3342
  %20 = icmp eq i8* %19, null, !dbg !3356
  %21 = icmp ne i64 %18, 0, !dbg !3357
  %22 = and i1 %21, %20, !dbg !3358
  br i1 %22, label %23, label %24, !dbg !3358

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #15, !dbg !3359
  unreachable, !dbg !3359

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !3360
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !3361 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3363, metadata !642), !dbg !3364
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3190, metadata !642) #10, !dbg !3365
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3367
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3196, metadata !642) #10, !dbg !3368
  %3 = icmp eq i8* %2, null, !dbg !3369
  %4 = icmp ne i64 %0, 0, !dbg !3370
  %5 = and i1 %4, %3, !dbg !3371
  br i1 %5, label %6, label %7, !dbg !3371

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3372
  unreachable, !dbg !3372

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !3373
  ret i8* %2, !dbg !3374
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !3375 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3377, metadata !642), !dbg !3380
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3378, metadata !642), !dbg !3381
  %3 = udiv i64 9223372036854775807, %1, !dbg !3382
  %4 = icmp ult i64 %3, %0, !dbg !3382
  br i1 %4, label %8, label %5, !dbg !3384

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #10, !dbg !3385
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3379, metadata !642), !dbg !3387
  %7 = icmp eq i8* %6, null, !dbg !3388
  br i1 %7, label %8, label %9, !dbg !3389

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15, !dbg !3391
  unreachable, !dbg !3391

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !3392
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !3393 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3397, metadata !642), !dbg !3399
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3398, metadata !642), !dbg !3400
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3190, metadata !642) #10, !dbg !3401
  %3 = tail call noalias i8* @malloc(i64 %1) #10, !dbg !3403
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3196, metadata !642) #10, !dbg !3404
  %4 = icmp eq i8* %3, null, !dbg !3405
  %5 = icmp ne i64 %1, 0, !dbg !3406
  %6 = and i1 %5, %4, !dbg !3407
  br i1 %6, label %7, label %8, !dbg !3407

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3408
  unreachable, !dbg !3408

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !3409
  ret i8* %3, !dbg !3410
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !3411 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3413, metadata !642), !dbg !3414
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !3415
  %3 = add i64 %2, 1, !dbg !3416
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3397, metadata !642) #10, !dbg !3417
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3398, metadata !642) #10, !dbg !3420
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3190, metadata !642) #10, !dbg !3421
  %4 = tail call noalias i8* @malloc(i64 %3) #10, !dbg !3423
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !3196, metadata !642) #10, !dbg !3424
  %5 = icmp eq i8* %4, null, !dbg !3425
  %6 = icmp ne i64 %3, 0, !dbg !3426
  %7 = and i1 %6, %5, !dbg !3427
  br i1 %7, label %8, label %9, !dbg !3427

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3428
  unreachable, !dbg !3428

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #10, !dbg !3429
  ret i8* %4, !dbg !3430
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !3431 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3433, !tbaa !731
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.88, i64 0, i64 0), i32 5) #10, !dbg !3434
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.89, i64 0, i64 0), i8* %2) #10, !dbg !3435
  tail call void @abort() #15, !dbg !3437
  unreachable, !dbg !3437
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @xnanosleep(double) local_unnamed_addr #6 !dbg !3438 {
  %2 = alloca %struct.timespec, align 8
  tail call void @llvm.dbg.value(metadata double %0, i64 0, metadata !3443, metadata !642), !dbg !3451
  %3 = bitcast %struct.timespec* %2 to i8*, !dbg !3452
  call void @llvm.lifetime.start(i64 16, i8* nonnull %3) #10, !dbg !3452
  %4 = tail call { i64, i64 } @dtotimespec(double %0) #1, !dbg !3453
  %5 = getelementptr inbounds %struct.timespec, %struct.timespec* %2, i64 0, i32 0, !dbg !3453
  %6 = extractvalue { i64, i64 } %4, 0, !dbg !3453
  store i64 %6, i64* %5, align 8, !dbg !3453
  %7 = getelementptr inbounds %struct.timespec, %struct.timespec* %2, i64 0, i32 1, !dbg !3453
  %8 = extractvalue { i64, i64 } %4, 1, !dbg !3453
  store i64 %8, i64* %7, align 8, !dbg !3453
  %9 = tail call i32* @__errno_location() #1, !dbg !3454
  store i32 0, i32* %9, align 4, !dbg !3458, !tbaa !731
  call void @llvm.dbg.value(metadata %struct.timespec* %2, i64 0, metadata !3444, metadata !742), !dbg !3459
  %10 = call i32 @rpl_nanosleep(%struct.timespec* nonnull %2, %struct.timespec* null) #10, !dbg !3460
  %11 = icmp eq i32 %10, 0, !dbg !3462
  br i1 %11, label %20, label %12, !dbg !3463

; <label>:12:                                     ; preds = %1
  br label %13, !dbg !3464

; <label>:13:                                     ; preds = %12, %15
  %14 = load i32, i32* %9, align 4, !dbg !3464, !tbaa !731
  switch i32 %14, label %18 [
    i32 4, label %15
    i32 0, label %15
  ], !dbg !3466

; <label>:15:                                     ; preds = %13, %13
  store i32 0, i32* %9, align 4, !dbg !3458, !tbaa !731
  call void @llvm.dbg.value(metadata %struct.timespec* %2, i64 0, metadata !3444, metadata !742), !dbg !3459
  %16 = call i32 @rpl_nanosleep(%struct.timespec* nonnull %2, %struct.timespec* null) #10, !dbg !3460
  %17 = icmp eq i32 %16, 0, !dbg !3462
  br i1 %17, label %18, label %13, !dbg !3463

; <label>:18:                                     ; preds = %15, %13
  %19 = phi i32 [ 0, %15 ], [ -1, %13 ]
  br label %20, !dbg !3467

; <label>:20:                                     ; preds = %18, %1
  %21 = phi i32 [ 0, %1 ], [ %19, %18 ]
  call void @llvm.lifetime.end(i64 16, i8* nonnull %3) #10, !dbg !3467
  ret i32 %21, !dbg !3467
}

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @xstrtod(i8*, i8**, double* nocapture, double (i8*, i8**)* nocapture) local_unnamed_addr #6 !dbg !3468 {
  %5 = alloca i8*, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3475, metadata !642), !dbg !3482
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !3476, metadata !642), !dbg !3483
  tail call void @llvm.dbg.value(metadata double* %2, i64 0, metadata !3477, metadata !642), !dbg !3484
  tail call void @llvm.dbg.value(metadata double (i8*, i8**)* %3, i64 0, metadata !3478, metadata !642), !dbg !3485
  %6 = bitcast i8** %5 to i8*, !dbg !3486
  call void @llvm.lifetime.start(i64 8, i8* nonnull %6) #10, !dbg !3486
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3481, metadata !642), !dbg !3487
  %7 = tail call i32* @__errno_location() #1, !dbg !3488
  store i32 0, i32* %7, align 4, !dbg !3489, !tbaa !731
  tail call void @llvm.dbg.value(metadata i8** %5, i64 0, metadata !3480, metadata !742), !dbg !3490
  %8 = call double %3(i8* %0, i8** nonnull %5) #10, !dbg !3491
  call void @llvm.dbg.value(metadata double %8, i64 0, metadata !3479, metadata !642), !dbg !3492
  %9 = load i8*, i8** %5, align 8, !dbg !3493, !tbaa !650
  call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !3480, metadata !642), !dbg !3490
  %10 = icmp eq i8* %9, %0, !dbg !3495
  %11 = ptrtoint i8* %9 to i64, !dbg !3496
  br i1 %10, label %22, label %12, !dbg !3496

; <label>:12:                                     ; preds = %4
  %13 = icmp eq i8** %1, null, !dbg !3497
  br i1 %13, label %14, label %17, !dbg !3499

; <label>:14:                                     ; preds = %12
  %15 = load i8, i8* %9, align 1, !dbg !3500, !tbaa !768
  %16 = icmp eq i8 %15, 0, !dbg !3502
  br i1 %16, label %17, label %27, !dbg !3503

; <label>:17:                                     ; preds = %14, %12
  %18 = fcmp une double %8, 0.000000e+00, !dbg !3505
  br i1 %18, label %19, label %22, !dbg !3508

; <label>:19:                                     ; preds = %17
  %20 = load i32, i32* %7, align 4, !dbg !3509, !tbaa !731
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3481, metadata !642), !dbg !3487
  %21 = icmp ne i32 %20, 34, !dbg !3511
  br label %22, !dbg !3511

; <label>:22:                                     ; preds = %19, %4, %17
  %23 = phi i1 [ true, %17 ], [ false, %4 ], [ %21, %19 ]
  %24 = icmp eq i8** %1, null, !dbg !3513
  br i1 %24, label %27, label %25, !dbg !3515

; <label>:25:                                     ; preds = %22
  %26 = bitcast i8** %1 to i64*, !dbg !3516
  store i64 %11, i64* %26, align 8, !dbg !3516, !tbaa !650
  br label %27, !dbg !3517

; <label>:27:                                     ; preds = %14, %22, %25
  %28 = phi i1 [ %23, %22 ], [ %23, %25 ], [ false, %14 ]
  store double %8, double* %2, align 8, !dbg !3518, !tbaa !753
  call void @llvm.lifetime.end(i64 8, i8* nonnull %6) #10, !dbg !3519
  ret i1 %28, !dbg !3520
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !3521 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3524, metadata !642), !dbg !3530
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3525, metadata !642), !dbg !3531
  %3 = icmp eq i64 %0, 0, !dbg !3532
  %4 = icmp eq i64 %1, 0, !dbg !3533
  %5 = or i1 %3, %4, !dbg !3535
  br i1 %5, label %12, label %6, !dbg !3535

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3536
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3527, metadata !642), !dbg !3537
  %8 = udiv i64 %7, %1, !dbg !3538
  %9 = icmp eq i64 %8, %0, !dbg !3540
  br i1 %9, label %12, label %10, !dbg !3541

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #1, !dbg !3542
  store i32 12, i32* %11, align 4, !dbg !3544, !tbaa !731
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3524, metadata !642), !dbg !3530
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !3525, metadata !642), !dbg !3531
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #10, !dbg !3545
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !3526, metadata !642), !dbg !3546
  br label %16, !dbg !3547

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !3548
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !3549 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !3566, metadata !642), !dbg !3575
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3567, metadata !642), !dbg !3576
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3568, metadata !642), !dbg !3577
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !3569, metadata !642), !dbg !3578
  %6 = bitcast i32* %5 to i8*, !dbg !3579
  call void @llvm.lifetime.start(i64 4, i8* nonnull %6) #10, !dbg !3579
  %7 = icmp eq i32* %0, null, !dbg !3580
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !3566, metadata !642), !dbg !3575
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3582
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !3566, metadata !642), !dbg !3575
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #10, !dbg !3583
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !3570, metadata !642), !dbg !3584
  %10 = icmp ugt i64 %9, -3, !dbg !3585
  %11 = icmp ne i64 %2, 0, !dbg !3586
  %12 = and i1 %11, %10, !dbg !3588
  br i1 %12, label %13, label %18, !dbg !3588

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #10, !dbg !3589
  br i1 %14, label %18, label %15, !dbg !3591

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3593, !tbaa !768
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !3572, metadata !642), !dbg !3594
  %17 = zext i8 %16 to i32, !dbg !3595
  store i32 %17, i32* %8, align 4, !dbg !3596, !tbaa !731
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end(i64 4, i8* nonnull %6) #10, !dbg !3597
  ret i64 %19, !dbg !3597
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_nanosleep(%struct.timespec* nocapture nonnull readonly, %struct.timespec*) local_unnamed_addr #6 !dbg !3598 {
  %3 = alloca %struct.timespec, align 8
  tail call void @llvm.dbg.value(metadata %struct.timespec* %0, i64 0, metadata !3609, metadata !642), !dbg !3618
  tail call void @llvm.dbg.value(metadata %struct.timespec* %1, i64 0, metadata !3610, metadata !642), !dbg !3619
  %4 = getelementptr inbounds %struct.timespec, %struct.timespec* %0, i64 0, i32 1, !dbg !3620
  %5 = load i64, i64* %4, align 8, !dbg !3620, !tbaa !3622
  %6 = icmp ugt i64 %5, 999999999, !dbg !3624
  br i1 %6, label %7, label %9, !dbg !3624

; <label>:7:                                      ; preds = %2
  %8 = tail call i32* @__errno_location() #1, !dbg !3625
  store i32 22, i32* %8, align 4, !dbg !3627, !tbaa !731
  br label %33, !dbg !3628

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i64 2073600, i64 0, metadata !3611, metadata !642), !dbg !3629
  %10 = getelementptr inbounds %struct.timespec, %struct.timespec* %0, i64 0, i32 0, !dbg !3630
  %11 = load i64, i64* %10, align 8, !dbg !3630, !tbaa !3631
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !3614, metadata !642), !dbg !3632
  %12 = bitcast %struct.timespec* %3 to i8*, !dbg !3633
  call void @llvm.lifetime.start(i64 16, i8* nonnull %12) #10, !dbg !3633
  %13 = getelementptr inbounds %struct.timespec, %struct.timespec* %3, i64 0, i32 1, !dbg !3634
  %14 = getelementptr inbounds %struct.timespec, %struct.timespec* %3, i64 0, i32 0
  br label %15, !dbg !3635

; <label>:15:                                     ; preds = %19, %9
  %16 = phi i64 [ %5, %9 ], [ 0, %19 ]
  %17 = phi i64 [ %11, %9 ], [ %21, %19 ]
  store i64 %16, i64* %13, align 8, !tbaa !3622
  call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !3614, metadata !642), !dbg !3632
  %18 = icmp sgt i64 %17, 2073600, !dbg !3636
  br i1 %18, label %19, label %29, !dbg !3638

; <label>:19:                                     ; preds = %15
  store i64 2073600, i64* %14, align 8, !dbg !3639, !tbaa !3631
  call void @llvm.dbg.value(metadata %struct.timespec* %3, i64 0, metadata !3615, metadata !742), !dbg !3640
  %20 = call i32 @nanosleep(%struct.timespec* nonnull %3, %struct.timespec* %1) #10, !dbg !3641
  call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3616, metadata !642), !dbg !3642
  %21 = add nsw i64 %17, -2073600, !dbg !3643
  call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !3614, metadata !642), !dbg !3632
  %22 = icmp eq i32 %20, 0, !dbg !3644
  br i1 %22, label %15, label %23, !dbg !3646

; <label>:23:                                     ; preds = %19
  %24 = icmp eq %struct.timespec* %1, null, !dbg !3647
  br i1 %24, label %31, label %25, !dbg !3650

; <label>:25:                                     ; preds = %23
  %26 = getelementptr inbounds %struct.timespec, %struct.timespec* %1, i64 0, i32 0, !dbg !3651
  %27 = load i64, i64* %26, align 8, !dbg !3652, !tbaa !3631
  %28 = add nsw i64 %27, %21, !dbg !3652
  store i64 %28, i64* %26, align 8, !dbg !3652, !tbaa !3631
  br label %31, !dbg !3653

; <label>:29:                                     ; preds = %15
  store i64 %17, i64* %14, align 8, !dbg !3654, !tbaa !3631
  call void @llvm.dbg.value(metadata %struct.timespec* %3, i64 0, metadata !3615, metadata !742), !dbg !3640
  %30 = call i32 @nanosleep(%struct.timespec* nonnull %3, %struct.timespec* %1) #10, !dbg !3655
  br label %31, !dbg !3656

; <label>:31:                                     ; preds = %25, %23, %29
  %32 = phi i32 [ %30, %29 ], [ %20, %23 ], [ %20, %25 ]
  call void @llvm.lifetime.end(i64 16, i8* nonnull %12) #10, !dbg !3657
  br label %33

; <label>:33:                                     ; preds = %31, %7
  %34 = phi i32 [ -1, %7 ], [ %32, %31 ]
  ret i32 %34, !dbg !3658
}

declare i32 @nanosleep(%struct.timespec*, %struct.timespec*) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !3659 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3704, metadata !642), !dbg !3709
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #10, !dbg !3710
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3711, metadata !642), !dbg !3715
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3717
  %4 = load i32, i32* %3, align 8, !dbg !3717, !tbaa !3718
  %5 = and i32 %4, 32, !dbg !3717
  %6 = icmp eq i32 %5, 0, !dbg !3720
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #10, !dbg !3721
  %8 = icmp ne i32 %7, 0, !dbg !3722
  br i1 %6, label %9, label %19, !dbg !3723

; <label>:9:                                      ; preds = %1
  %10 = xor i1 %8, true, !dbg !3725
  %11 = icmp ne i64 %2, 0, !dbg !3725
  %12 = or i1 %11, %10, !dbg !3725
  %13 = sext i1 %8 to i32, !dbg !3725
  br i1 %12, label %22, label %14, !dbg !3725

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #1, !dbg !3727
  %16 = load i32, i32* %15, align 4, !dbg !3727, !tbaa !731
  %17 = icmp ne i32 %16, 9, !dbg !3729
  %18 = sext i1 %17 to i32, !dbg !3729
  br label %22, !dbg !3729

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !3731

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #1, !dbg !3733
  store i32 0, i32* %21, align 4, !dbg !3735, !tbaa !731
  br label %22, !dbg !3733

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !3736
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind readnone sspstrong uwtable
define { i64, i64 } @dtotimespec(double) local_unnamed_addr #13 !dbg !3737 {
  tail call void @llvm.dbg.value(metadata double %0, i64 0, metadata !3746, metadata !642), !dbg !3753
  %2 = fcmp ogt double %0, 0xC3E0000000000000, !dbg !3754
  br i1 %2, label %3, label %25, !dbg !3755

; <label>:3:                                      ; preds = %1
  %4 = fcmp olt double %0, 0x43E0000000000000, !dbg !3756
  br i1 %4, label %5, label %25, !dbg !3757

; <label>:5:                                      ; preds = %3
  %6 = fptosi double %0 to i64, !dbg !3758
  tail call void @llvm.dbg.value(metadata i64 %6, i64 0, metadata !3747, metadata !642), !dbg !3759
  %7 = sitofp i64 %6 to double, !dbg !3760
  %8 = fsub double %0, %7, !dbg !3761
  %9 = fmul double %8, 1.000000e+09, !dbg !3762
  tail call void @llvm.dbg.value(metadata double %9, i64 0, metadata !3751, metadata !642), !dbg !3763
  %10 = fptosi double %9 to i64, !dbg !3764
  tail call void @llvm.dbg.value(metadata i64 %10, i64 0, metadata !3752, metadata !642), !dbg !3765
  %11 = sitofp i64 %10 to double, !dbg !3766
  %12 = fcmp olt double %11, %9, !dbg !3767
  %13 = zext i1 %12 to i64, !dbg !3766
  %14 = add nsw i64 %13, %10, !dbg !3768
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3752, metadata !642), !dbg !3765
  %15 = sdiv i64 %14, 1000000000, !dbg !3769
  %16 = add nsw i64 %15, %6, !dbg !3770
  tail call void @llvm.dbg.value(metadata i64 %16, i64 0, metadata !3747, metadata !642), !dbg !3759
  %17 = srem i64 %14, 1000000000, !dbg !3771
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !3752, metadata !642), !dbg !3765
  %18 = icmp slt i64 %17, 0, !dbg !3772
  %19 = add nsw i64 %17, 1000000000, !dbg !3774
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !3752, metadata !642), !dbg !3765
  %20 = ashr i64 %17, 63, !dbg !3776
  %21 = add nsw i64 %16, %20, !dbg !3776
  %22 = select i1 %18, i64 %19, i64 %17, !dbg !3776
  tail call void @llvm.dbg.value(metadata i64 %22, i64 0, metadata !3752, metadata !642), !dbg !3765
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !3747, metadata !642), !dbg !3759
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !3777, metadata !642), !dbg !3784
  tail call void @llvm.dbg.value(metadata i64 %22, i64 0, metadata !3782, metadata !642), !dbg !3786
  tail call void @llvm.dbg.declare(metadata %struct.timespec* undef, metadata !3783, metadata !642), !dbg !3787
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !3783, metadata !3788), !dbg !3787
  tail call void @llvm.dbg.value(metadata i64 %22, i64 0, metadata !3783, metadata !3789), !dbg !3787
  %23 = insertvalue { i64, i64 } undef, i64 %21, 0, !dbg !3790
  %24 = insertvalue { i64, i64 } %23, i64 %22, 1, !dbg !3790
  br label %25

; <label>:25:                                     ; preds = %3, %1, %5
  %26 = phi { i64, i64 } [ %24, %5 ], [ { i64 -9223372036854775808, i64 0 }, %1 ], [ { i64 9223372036854775807, i64 999999999 }, %3 ]
  ret { i64, i64 } %26, !dbg !3791
}

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !3792 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3797, metadata !642), !dbg !3817
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3798, metadata !642), !dbg !3818
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #10, !dbg !3819
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3799, metadata !642), !dbg !3820
  %3 = icmp eq i8* %2, null, !dbg !3821
  br i1 %3, label %15, label %4, !dbg !3822

; <label>:4:                                      ; preds = %1
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3807, metadata !642), !dbg !3823
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3808, metadata !642), !dbg !3824
  %5 = load i8, i8* %2, align 1, !dbg !3825, !tbaa !768
  %6 = icmp eq i8 %5, 67, !dbg !3827
  br i1 %6, label %7, label %11, !dbg !3830

; <label>:7:                                      ; preds = %4
  %8 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !3832
  %9 = load i8, i8* %8, align 1, !dbg !3832, !tbaa !768
  %10 = icmp eq i8 %9, 0, !dbg !3835
  br i1 %10, label %14, label %11, !dbg !3837

; <label>:11:                                     ; preds = %4, %7
  tail call void @llvm.dbg.value(metadata i64 5, i64 0, metadata !3813, metadata !642), !dbg !3839
  %12 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.106, i64 0, i64 0)) #10, !dbg !3840
  %13 = icmp eq i32 %12, 0, !dbg !3842
  br i1 %13, label %14, label %15, !dbg !3844

; <label>:14:                                     ; preds = %11, %7
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3798, metadata !642), !dbg !3818
  br label %15, !dbg !3846

; <label>:15:                                     ; preds = %1, %11, %14
  %16 = phi i1 [ false, %14 ], [ true, %11 ], [ true, %1 ]
  ret i1 %16, !dbg !3847
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !3848 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !3860, metadata !642), !dbg !3934
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !3927, metadata !642), !dbg !3936
  %3 = tail call i8* @nl_langinfo(i32 14) #10, !dbg !3937
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3852, metadata !642), !dbg !3938
  %4 = icmp eq i8* %3, null, !dbg !3939
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.109, i64 0, i64 0), i8* %3, !dbg !3941
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !3852, metadata !642), !dbg !3938
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !3942, !tbaa !650
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3874, metadata !642) #10, !dbg !3943
  %7 = icmp eq i8* %6, null, !dbg !3944
  br i1 %7, label %8, label %127, !dbg !3945

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.110, i64 0, i64 0)) #10, !dbg !3946
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !3875, metadata !642) #10, !dbg !3947
  %10 = icmp eq i8* %9, null, !dbg !3948
  br i1 %10, label %14, label %11, !dbg !3950

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !3951, !tbaa !768
  %13 = icmp eq i8 %12, 0, !dbg !3953
  br i1 %13, label %14, label %15, !dbg !3954

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !3956

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.111, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !3875, metadata !642) #10, !dbg !3947
  %17 = tail call i64 @strlen(i8* nonnull %16) #14, !dbg !3957
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !3878, metadata !642) #10, !dbg !3958
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !3880, metadata !642) #10, !dbg !3959
  %18 = icmp eq i64 %17, 0, !dbg !3960
  br i1 %18, label %24, label %19, !dbg !3961

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !3962
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !3962
  %22 = load i8, i8* %21, align 1, !dbg !3962, !tbaa !768
  %23 = icmp ne i8 %22, 47, !dbg !3964
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !3965
  %27 = add i64 %17, 14, !dbg !3966
  %28 = add i64 %27, %26, !dbg !3967
  %29 = tail call noalias i8* @malloc(i64 %28) #10, !dbg !3968
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3877, metadata !642) #10, !dbg !3969
  %30 = icmp eq i8* %29, null, !dbg !3970
  br i1 %30, label %125, label %31, !dbg !3970

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #10, !dbg !3971
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !3974

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !3975, !tbaa !768
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !3977
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.112, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !3978
  br label %37, !dbg !3979

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !3977
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.112, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !3978
  br label %37, !dbg !3979

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #10, !dbg !3980
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !3882, metadata !642) #10, !dbg !3981
  %39 = icmp slt i32 %38, 0, !dbg !3982
  br i1 %39, label %123, label %40, !dbg !3983

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.113, i64 0, i64 0)) #10, !dbg !3984
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3883, metadata !642) #10, !dbg !3985
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !3986
  br i1 %42, label %48, label %43, !dbg !3987

; <label>:43:                                     ; preds = %40
  %44 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %45 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %46 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %47 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !3988

; <label>:48:                                     ; preds = %40
  %49 = tail call i32 @close(i32 %38) #10, !dbg !3989
  br label %123, !dbg !3991

; <label>:50:                                     ; preds = %111, %43
  %51 = phi i64 [ %112, %111 ], [ 0, %43 ]
  %52 = phi i8* [ %113, %111 ], [ null, %43 ]
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3924, metadata !642) #10, !dbg !3988
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !3925, metadata !642) #10, !dbg !3992
  call void @llvm.lifetime.start(i64 51, i8* nonnull %44) #10, !dbg !3993
  call void @llvm.lifetime.start(i64 51, i8* nonnull %45) #10, !dbg !3994
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3995, metadata !642) #10, !dbg !4000
  %53 = load i8*, i8** %46, align 8, !dbg !4002, !tbaa !4003
  %54 = load i8*, i8** %47, align 8, !dbg !4002, !tbaa !4004
  %55 = icmp ult i8* %53, %54, !dbg !4002
  br i1 %55, label %58, label %56, !dbg !4002, !prof !4005

; <label>:56:                                     ; preds = %50
  %57 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !4006
  br label %62, !dbg !4006

; <label>:58:                                     ; preds = %50
  %59 = getelementptr inbounds i8, i8* %53, i64 1, !dbg !4008
  store i8* %59, i8** %46, align 8, !dbg !4008, !tbaa !4003
  %60 = load i8, i8* %53, align 1, !dbg !4008, !tbaa !768
  %61 = zext i8 %60 to i32, !dbg !4008
  br label %62, !dbg !4008

; <label>:62:                                     ; preds = %58, %56
  %63 = phi i32 [ %57, %56 ], [ %61, %58 ], !dbg !4010
  call void @llvm.dbg.value(metadata i32 %63, i64 0, metadata !3926, metadata !642) #10, !dbg !4012
  switch i32 %63, label %77 [
    i32 -1, label %115
    i32 32, label %111
    i32 10, label %111
    i32 9, label %111
    i32 35, label %64
  ], !dbg !4013

; <label>:64:                                     ; preds = %62
  br label %65, !dbg !4014

; <label>:65:                                     ; preds = %64, %75
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3995, metadata !642) #10, !dbg !4014
  %66 = load i8*, i8** %46, align 8, !dbg !4018, !tbaa !4003
  %67 = load i8*, i8** %47, align 8, !dbg !4018, !tbaa !4004
  %68 = icmp ult i8* %66, %67, !dbg !4018
  br i1 %68, label %71, label %69, !dbg !4018, !prof !4005

; <label>:69:                                     ; preds = %65
  %70 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !4019
  br label %75, !dbg !4019

; <label>:71:                                     ; preds = %65
  %72 = getelementptr inbounds i8, i8* %66, i64 1, !dbg !4020
  store i8* %72, i8** %46, align 8, !dbg !4020, !tbaa !4003
  %73 = load i8, i8* %66, align 1, !dbg !4020, !tbaa !768
  %74 = zext i8 %73 to i32, !dbg !4020
  br label %75, !dbg !4020

; <label>:75:                                     ; preds = %71, %69
  %76 = phi i32 [ %70, %69 ], [ %74, %71 ], !dbg !4021
  call void @llvm.dbg.value(metadata i32 %76, i64 0, metadata !3926, metadata !642) #10, !dbg !4012
  switch i32 %76, label %65 [
    i32 -1, label %114
    i32 10, label %110
  ], !dbg !4022, !llvm.loop !4024

; <label>:77:                                     ; preds = %62
  %78 = call i32 @ungetc(i32 %63, %struct._IO_FILE* nonnull %41) #10, !dbg !4027
  %79 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.114, i64 0, i64 0), i8* nonnull %44, i8* nonnull %45) #10, !dbg !4028
  %80 = icmp slt i32 %79, 2, !dbg !4030
  br i1 %80, label %115, label %81, !dbg !4031

; <label>:81:                                     ; preds = %77
  %82 = call i64 @strlen(i8* nonnull %44) #14, !dbg !4032
  call void @llvm.dbg.value(metadata i64 %82, i64 0, metadata !3931, metadata !642) #10, !dbg !4033
  %83 = call i64 @strlen(i8* nonnull %45) #14, !dbg !4034
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !3932, metadata !642) #10, !dbg !4035
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3933, metadata !642) #10, !dbg !4036
  %84 = icmp eq i64 %51, 0, !dbg !4037
  %85 = add i64 %82, 1
  %86 = add i64 %85, %83
  %87 = add i64 %86, 1
  br i1 %84, label %88, label %91, !dbg !4039

; <label>:88:                                     ; preds = %81
  call void @llvm.dbg.value(metadata i64 %87, i64 0, metadata !3925, metadata !642) #10, !dbg !3992
  %89 = add i64 %86, 2, !dbg !4040
  %90 = call noalias i8* @malloc(i64 %89) #10, !dbg !4042
  call void @llvm.dbg.value(metadata i8* %90, i64 0, metadata !3924, metadata !642) #10, !dbg !3988
  br label %95, !dbg !4043

; <label>:91:                                     ; preds = %81
  %92 = add i64 %87, %51, !dbg !4044
  call void @llvm.dbg.value(metadata i64 %92, i64 0, metadata !3925, metadata !642) #10, !dbg !3992
  %93 = add i64 %92, 1, !dbg !4046
  %94 = call i8* @realloc(i8* %52, i64 %93) #10, !dbg !4047
  call void @llvm.dbg.value(metadata i8* %94, i64 0, metadata !3924, metadata !642) #10, !dbg !3988
  br label %95

; <label>:95:                                     ; preds = %91, %88
  %96 = phi i64 [ %87, %88 ], [ %92, %91 ]
  %97 = phi i8* [ %90, %88 ], [ %94, %91 ]
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !3924, metadata !642) #10, !dbg !3988
  call void @llvm.dbg.value(metadata i64 %96, i64 0, metadata !3925, metadata !642) #10, !dbg !3992
  %98 = icmp eq i8* %97, null, !dbg !4048
  br i1 %98, label %99, label %100, !dbg !4050

; <label>:99:                                     ; preds = %95
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3925, metadata !642) #10, !dbg !3992
  call void @free(i8* %52) #10, !dbg !4051
  br label %116, !dbg !4053

; <label>:100:                                    ; preds = %95
  %101 = getelementptr inbounds i8, i8* %97, i64 %96, !dbg !4054
  %102 = xor i64 %83, -1, !dbg !4055
  %103 = getelementptr inbounds i8, i8* %101, i64 %102, !dbg !4055
  %104 = xor i64 %82, -1, !dbg !4056
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !4056
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !4057, metadata !642) #10, !dbg !4066
  call void @llvm.dbg.value(metadata i8* %44, i64 0, metadata !4065, metadata !642) #10, !dbg !4066
  %106 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false) #10, !dbg !4068
  %107 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %44, i64 %106) #10, !dbg !4069
  call void @llvm.dbg.value(metadata i8* %103, i64 0, metadata !4057, metadata !642) #10, !dbg !4070
  call void @llvm.dbg.value(metadata i8* %45, i64 0, metadata !4065, metadata !642) #10, !dbg !4070
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %103, i1 false) #10, !dbg !4072
  %109 = call i8* @__strcpy_chk(i8* nonnull %103, i8* nonnull %45, i64 %108) #10, !dbg !4073
  br label %111, !dbg !4074

; <label>:110:                                    ; preds = %75
  br label %111, !dbg !3988

; <label>:111:                                    ; preds = %110, %100, %62, %62, %62
  %112 = phi i64 [ %96, %100 ], [ %51, %62 ], [ %51, %62 ], [ %51, %62 ], [ %51, %110 ]
  %113 = phi i8* [ %97, %100 ], [ %52, %62 ], [ %52, %62 ], [ %52, %62 ], [ %52, %110 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !3924, metadata !642) #10, !dbg !3988
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !3925, metadata !642) #10, !dbg !3992
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #10, !dbg !4074
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #10, !dbg !4074
  br label %50

; <label>:114:                                    ; preds = %75
  br label %116, !dbg !3988

; <label>:115:                                    ; preds = %62, %77
  br label %116, !dbg !3988

; <label>:116:                                    ; preds = %115, %114, %99
  %117 = phi i64 [ 0, %99 ], [ %51, %114 ], [ %51, %115 ]
  %118 = phi i8* [ null, %99 ], [ %52, %114 ], [ %52, %115 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !3924, metadata !642) #10, !dbg !3988
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !3925, metadata !642) #10, !dbg !3992
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #10, !dbg !4074
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #10, !dbg !4074
  %119 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #10, !dbg !4075
  %120 = icmp eq i64 %117, 0, !dbg !4076
  br i1 %120, label %123, label %121, !dbg !4078

; <label>:121:                                    ; preds = %116
  %122 = getelementptr inbounds i8, i8* %118, i64 %117, !dbg !4079
  store i8 0, i8* %122, align 1, !dbg !4081, !tbaa !768
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !3874, metadata !642) #10, !dbg !3943
  br label %123

; <label>:123:                                    ; preds = %121, %116, %48, %37
  %124 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.109, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.109, i64 0, i64 0), %48 ], [ %118, %121 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.109, i64 0, i64 0), %116 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !3874, metadata !642) #10, !dbg !3943
  call void @free(i8* %29) #10, !dbg !4082
  br label %125

; <label>:125:                                    ; preds = %123, %24
  %126 = phi i8* [ %124, %123 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.109, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %126, i64 0, metadata !3874, metadata !642) #10, !dbg !3943
  store volatile i8* %126, i8** @charset_aliases, align 8, !dbg !4083, !tbaa !650
  br label %127, !dbg !4084

; <label>:127:                                    ; preds = %0, %125
  %128 = phi i8* [ %6, %0 ], [ %126, %125 ]
  call void @llvm.dbg.value(metadata i8* %128, i64 0, metadata !3853, metadata !642), !dbg !4085
  %129 = load i8, i8* %128, align 1, !dbg !4086, !tbaa !768
  %130 = icmp eq i8 %129, 0, !dbg !4087
  br i1 %130, label %157, label %131, !dbg !4088

; <label>:131:                                    ; preds = %127
  br label %132, !dbg !4090

; <label>:132:                                    ; preds = %131, %147
  %133 = phi i8 [ %154, %147 ], [ %129, %131 ]
  %134 = phi i8* [ %153, %147 ], [ %128, %131 ]
  %135 = call i32 @strcmp(i8* %5, i8* %134) #10, !dbg !4090
  %136 = icmp eq i32 %135, 0, !dbg !4091
  br i1 %136, label %143, label %137, !dbg !4092

; <label>:137:                                    ; preds = %132
  %138 = icmp eq i8 %133, 42, !dbg !4093
  br i1 %138, label %139, label %147, !dbg !4095

; <label>:139:                                    ; preds = %137
  %140 = getelementptr inbounds i8, i8* %134, i64 1, !dbg !4096
  %141 = load i8, i8* %140, align 1, !dbg !4096, !tbaa !768
  %142 = icmp eq i8 %141, 0, !dbg !4098
  br i1 %142, label %143, label %147, !dbg !4099

; <label>:143:                                    ; preds = %139, %132
  %144 = call i64 @strlen(i8* %134) #14, !dbg !4101
  %145 = getelementptr inbounds i8, i8* %134, i64 %144, !dbg !4103
  %146 = getelementptr inbounds i8, i8* %145, i64 1, !dbg !4104
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !3852, metadata !642), !dbg !3938
  br label %157, !dbg !4105

; <label>:147:                                    ; preds = %137, %139
  %148 = call i64 @strlen(i8* %134) #14, !dbg !4106
  %149 = add i64 %148, 1, !dbg !4107
  %150 = getelementptr inbounds i8, i8* %134, i64 %149, !dbg !4108
  call void @llvm.dbg.value(metadata i8* %150, i64 0, metadata !3853, metadata !642), !dbg !4085
  %151 = call i64 @strlen(i8* %150) #14, !dbg !4109
  %152 = add i64 %151, 1, !dbg !4110
  %153 = getelementptr inbounds i8, i8* %150, i64 %152, !dbg !4111
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !3853, metadata !642), !dbg !4085
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !3853, metadata !642), !dbg !4085
  %154 = load i8, i8* %153, align 1, !dbg !4086, !tbaa !768
  %155 = icmp eq i8 %154, 0, !dbg !4087
  br i1 %155, label %156, label %132, !dbg !4088, !llvm.loop !4112

; <label>:156:                                    ; preds = %147
  br label %157, !dbg !3938

; <label>:157:                                    ; preds = %156, %127, %143
  %158 = phi i8* [ %146, %143 ], [ %5, %127 ], [ %5, %156 ]
  call void @llvm.dbg.value(metadata i8* %158, i64 0, metadata !3852, metadata !642), !dbg !3938
  %159 = load i8, i8* %158, align 1, !dbg !4115, !tbaa !768
  %160 = icmp eq i8 %159, 0, !dbg !4117
  %161 = select i1 %160, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.115, i64 0, i64 0), i8* %158, !dbg !4118
  call void @llvm.dbg.value(metadata i8* %161, i64 0, metadata !3852, metadata !642), !dbg !3938
  ret i8* %161, !dbg !4119
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
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !4120 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4165, metadata !642), !dbg !4169
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4166, metadata !642), !dbg !4170
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4168, metadata !642), !dbg !4171
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !4172
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4167, metadata !642), !dbg !4173
  %3 = icmp slt i32 %2, 0, !dbg !4174
  br i1 %3, label %4, label %6, !dbg !4176

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4177
  br label %24, !dbg !4178

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !4179
  %8 = icmp eq i32 %7, 0, !dbg !4179
  br i1 %8, label %13, label %9, !dbg !4181

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !4182
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #10, !dbg !4184
  %12 = icmp eq i64 %11, -1, !dbg !4186
  br i1 %12, label %16, label %13, !dbg !4187

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #10, !dbg !4188
  %15 = icmp eq i32 %14, 0, !dbg !4188
  br i1 %15, label %16, label %18, !dbg !4189

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4166, metadata !642), !dbg !4170
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4191
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4168, metadata !642), !dbg !4171
  br label %24, !dbg !4192

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #1, !dbg !4193
  %20 = load i32, i32* %19, align 4, !dbg !4193, !tbaa !731
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4166, metadata !642), !dbg !4170
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4166, metadata !642), !dbg !4170
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4191
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4168, metadata !642), !dbg !4171
  %22 = icmp eq i32 %20, 0, !dbg !4194
  br i1 %22, label %24, label %23, !dbg !4192

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4196, !tbaa !731
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !4168, metadata !642), !dbg !4171
  br label %24, !dbg !4198

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !4199
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
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !4200 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4245, metadata !642), !dbg !4246
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4247
  br i1 %2, label %6, label %3, !dbg !4249

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !4250
  %5 = icmp eq i32 %4, 0, !dbg !4250
  br i1 %5, label %6, label %8, !dbg !4252

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4254
  br label %17, !dbg !4255

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4256, metadata !642) #10, !dbg !4261
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4263
  %10 = load i32, i32* %9, align 8, !dbg !4263, !tbaa !3718
  %11 = and i32 %10, 256, !dbg !4265
  %12 = icmp eq i32 %11, 0, !dbg !4265
  br i1 %12, label %15, label %13, !dbg !4266

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #10, !dbg !4267
  br label %15, !dbg !4267

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4268
  br label %17, !dbg !4269

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !4270
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !4271 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4317, metadata !642), !dbg !4323
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4318, metadata !642), !dbg !4324
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4319, metadata !642), !dbg !4325
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4326
  %5 = load i8*, i8** %4, align 8, !dbg !4326, !tbaa !4004
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4327
  %7 = load i8*, i8** %6, align 8, !dbg !4327, !tbaa !4003
  %8 = icmp eq i8* %5, %7, !dbg !4328
  br i1 %8, label %9, label %28, !dbg !4329

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4330
  %11 = load i8*, i8** %10, align 8, !dbg !4330, !tbaa !4332
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4333
  %13 = load i8*, i8** %12, align 8, !dbg !4333, !tbaa !4334
  %14 = icmp eq i8* %11, %13, !dbg !4335
  br i1 %14, label %15, label %28, !dbg !4336

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4337
  %17 = load i8*, i8** %16, align 8, !dbg !4337, !tbaa !4338
  %18 = icmp eq i8* %17, null, !dbg !4339
  br i1 %18, label %19, label %28, !dbg !4340

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !4342
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #10, !dbg !4343
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !4320, metadata !642), !dbg !4345
  %22 = icmp eq i64 %21, -1, !dbg !4346
  br i1 %22, label %30, label %23, !dbg !4348

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4349
  %25 = load i32, i32* %24, align 8, !dbg !4350, !tbaa !3718
  %26 = and i32 %25, -17, !dbg !4350
  store i32 %26, i32* %24, align 8, !dbg !4350, !tbaa !3718
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4351
  store i64 %21, i64* %27, align 8, !dbg !4352, !tbaa !4353
  br label %30, !dbg !4354

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4355
  br label %30, !dbg !4356

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !4357
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
attributes #13 = { nounwind readnone sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nounwind readonly }
attributes #15 = { noreturn nounwind }
attributes #16 = { noreturn }
attributes #17 = { cold }

!llvm.dbg.cu = !{!527, !2, !11, !43, !52, !59, !77, !85, !565, !171, !573, !590, !592, !594, !596, !598, !601, !608, !610, !623, !180, !626, !628, !630}
!llvm.ident = !{!632, !632, !632, !632, !632, !632, !632, !632, !632, !632, !632, !632, !632, !632, !632, !632, !632, !632, !632, !632, !632, !632, !632, !632}
!llvm.module.flags = !{!633, !634, !635, !636}

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
!10 = distinct !DIGlobalVariable(name: "c_locale_cache", scope: !11, file: !39, line: 51, type: !40, isLocal: true, isDefinition: true)
!11 = distinct !DICompileUnit(language: DW_LANG_C99, file: !12, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !13, globals: !38)
!12 = !DIFile(filename: "./lib/c-strtod.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!13 = !{!14, !15}
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "locale_t", file: !16, line: 42, baseType: !17)
!16 = !DIFile(filename: "/usr/include/xlocale.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "__locale_t", file: !16, line: 39, baseType: !18)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_struct", file: !16, line: 27, size: 1856, elements: !20)
!20 = !{!21, !27, !31, !35, !36}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "__locales", scope: !19, file: !16, line: 30, baseType: !22, size: 832)
!22 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 832, elements: !25)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_data", file: !16, line: 30, flags: DIFlagFwdDecl)
!25 = !{!26}
!26 = !DISubrange(count: 13)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "__ctype_b", scope: !19, file: !16, line: 33, baseType: !28, size: 64, offset: 832)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!30 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "__ctype_tolower", scope: !19, file: !16, line: 34, baseType: !32, size: 64, offset: 896)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!34 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "__ctype_toupper", scope: !19, file: !16, line: 35, baseType: !32, size: 64, offset: 960)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "__names", scope: !19, file: !16, line: 38, baseType: !37, size: 832, offset: 1024)
!37 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 832, elements: !25)
!38 = !{!9}
!39 = !DIFile(filename: "lib/c-strtod.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!40 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !15)
!41 = !DIGlobalVariableExpression(var: !42)
!42 = distinct !DIGlobalVariable(name: "file_name", scope: !43, file: !48, line: 36, type: !6, isLocal: true, isDefinition: true)
!43 = distinct !DICompileUnit(language: DW_LANG_C99, file: !44, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !45)
!44 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!45 = !{!41, !46}
!46 = !DIGlobalVariableExpression(var: !47)
!47 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !43, file: !48, line: 46, type: !49, isLocal: true, isDefinition: true)
!48 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!49 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!50 = !DIGlobalVariableExpression(var: !51)
!51 = distinct !DIGlobalVariable(name: "exit_failure", scope: !52, file: !55, line: 24, type: !56, isLocal: false, isDefinition: true)
!52 = distinct !DICompileUnit(language: DW_LANG_C99, file: !53, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !54)
!53 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!54 = !{!50}
!55 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!56 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !34)
!57 = !DIGlobalVariableExpression(var: !58)
!58 = distinct !DIGlobalVariable(name: "long_options", scope: !59, file: !62, line: 33, type: !63, isLocal: true, isDefinition: true)
!59 = distinct !DICompileUnit(language: DW_LANG_C99, file: !60, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !61)
!60 = !DIFile(filename: "./lib/long-options.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!61 = !{!57}
!62 = !DIFile(filename: "lib/long-options.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!63 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 768, elements: !73)
!64 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !65)
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !66, line: 104, size: 256, elements: !67)
!66 = !DIFile(filename: "/usr/include/getopt.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!67 = !{!68, !69, !70, !72}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !65, file: !66, line: 106, baseType: !6, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !65, file: !66, line: 109, baseType: !34, size: 32, offset: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !65, file: !66, line: 110, baseType: !71, size: 64, offset: 128)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !65, file: !66, line: 111, baseType: !34, size: 32, offset: 192)
!73 = !{!74}
!74 = !DISubrange(count: 3)
!75 = !DIGlobalVariableExpression(var: !76)
!76 = distinct !DIGlobalVariable(name: "program_name", scope: !77, file: !82, line: 33, type: !6, isLocal: false, isDefinition: true)
!77 = distinct !DICompileUnit(language: DW_LANG_C99, file: !78, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !79, globals: !81)
!78 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!79 = !{!80, !14}
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!81 = !{!75}
!82 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!83 = !DIGlobalVariableExpression(var: !84)
!84 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !85, file: !129, line: 77, type: !165, isLocal: false, isDefinition: true)
!85 = distinct !DICompileUnit(language: DW_LANG_C99, file: !86, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !87, retainedTypes: !122, globals: !126)
!86 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!87 = !{!88, !102, !107}
!88 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !89, line: 32, size: 32, elements: !90)
!89 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!90 = !{!91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101}
!91 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!92 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!93 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!94 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!95 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!96 = !DIEnumerator(name: "c_quoting_style", value: 5)
!97 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!98 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!99 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!100 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!101 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!102 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !89, line: 242, size: 32, elements: !103)
!103 = !{!104, !105, !106}
!104 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!105 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!106 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!107 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !108, line: 46, size: 32, elements: !109)
!108 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!109 = !{!110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121}
!110 = !DIEnumerator(name: "_ISupper", value: 256)
!111 = !DIEnumerator(name: "_ISlower", value: 512)
!112 = !DIEnumerator(name: "_ISalpha", value: 1024)
!113 = !DIEnumerator(name: "_ISdigit", value: 2048)
!114 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!115 = !DIEnumerator(name: "_ISspace", value: 8192)
!116 = !DIEnumerator(name: "_ISprint", value: 16384)
!117 = !DIEnumerator(name: "_ISgraph", value: 32768)
!118 = !DIEnumerator(name: "_ISblank", value: 1)
!119 = !DIEnumerator(name: "_IScntrl", value: 2)
!120 = !DIEnumerator(name: "_ISpunct", value: 4)
!121 = !DIEnumerator(name: "_ISalnum", value: 8)
!122 = !{!34, !30, !123, !14}
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !124, line: 62, baseType: !125)
!124 = !DIFile(filename: "/usr/bin/../lib/clang/4.0.1/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!125 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!126 = !{!83, !127, !134, !147, !149, !154, !161, !163}
!127 = !DIGlobalVariableExpression(var: !128)
!128 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !85, file: !129, line: 93, type: !130, isLocal: false, isDefinition: true)
!129 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!130 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 320, elements: !132)
!131 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !88)
!132 = !{!133}
!133 = !DISubrange(count: 10)
!134 = !DIGlobalVariableExpression(var: !135)
!135 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !85, file: !129, line: 1043, type: !136, isLocal: false, isDefinition: true)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !129, line: 57, size: 448, elements: !137)
!137 = !{!138, !139, !140, !145, !146}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !136, file: !129, line: 60, baseType: !88, size: 32)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !136, file: !129, line: 63, baseType: !34, size: 32, offset: 32)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !136, file: !129, line: 67, baseType: !141, size: 256, offset: 64)
!141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 256, elements: !143)
!142 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!143 = !{!144}
!144 = !DISubrange(count: 8)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !136, file: !129, line: 70, baseType: !6, size: 64, offset: 320)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !136, file: !129, line: 73, baseType: !6, size: 64, offset: 384)
!147 = !DIGlobalVariableExpression(var: !148)
!148 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !85, file: !129, line: 108, type: !136, isLocal: true, isDefinition: true)
!149 = !DIGlobalVariableExpression(var: !150)
!150 = distinct !DIGlobalVariable(name: "slot0", scope: !85, file: !129, line: 834, type: !151, isLocal: true, isDefinition: true)
!151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2048, elements: !152)
!152 = !{!153}
!153 = !DISubrange(count: 256)
!154 = !DIGlobalVariableExpression(var: !155)
!155 = distinct !DIGlobalVariable(name: "slotvec", scope: !85, file: !129, line: 837, type: !156, isLocal: true, isDefinition: true)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !129, line: 826, size: 128, elements: !158)
!158 = !{!159, !160}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !157, file: !129, line: 828, baseType: !123, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !157, file: !129, line: 829, baseType: !14, size: 64, offset: 64)
!161 = !DIGlobalVariableExpression(var: !162)
!162 = distinct !DIGlobalVariable(name: "nslots", scope: !85, file: !129, line: 835, type: !34, isLocal: true, isDefinition: true)
!163 = !DIGlobalVariableExpression(var: !164)
!164 = distinct !DIGlobalVariable(name: "slotvec0", scope: !85, file: !129, line: 836, type: !157, isLocal: true, isDefinition: true)
!165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !166, size: 704, elements: !167)
!166 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!167 = !{!168}
!168 = !DISubrange(count: 11)
!169 = !DIGlobalVariableExpression(var: !170)
!170 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !171, file: !174, line: 26, type: !175, isLocal: false, isDefinition: true)
!171 = distinct !DICompileUnit(language: DW_LANG_C99, file: !172, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !173)
!172 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!173 = !{!169}
!174 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 376, elements: !176)
!176 = !{!177}
!177 = !DISubrange(count: 47)
!178 = !DIGlobalVariableExpression(var: !179)
!179 = distinct !DIGlobalVariable(name: "charset_aliases", scope: !180, file: !525, line: 120, type: !526, isLocal: true, isDefinition: true)
!180 = distinct !DICompileUnit(language: DW_LANG_C99, file: !181, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !182, retainedTypes: !521, globals: !524)
!181 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!182 = !{!183}
!183 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !184, line: 41, size: 32, elements: !185)
!184 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!185 = !{!186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520}
!186 = !DIEnumerator(name: "ABDAY_1", value: 131072)
!187 = !DIEnumerator(name: "ABDAY_2", value: 131073)
!188 = !DIEnumerator(name: "ABDAY_3", value: 131074)
!189 = !DIEnumerator(name: "ABDAY_4", value: 131075)
!190 = !DIEnumerator(name: "ABDAY_5", value: 131076)
!191 = !DIEnumerator(name: "ABDAY_6", value: 131077)
!192 = !DIEnumerator(name: "ABDAY_7", value: 131078)
!193 = !DIEnumerator(name: "DAY_1", value: 131079)
!194 = !DIEnumerator(name: "DAY_2", value: 131080)
!195 = !DIEnumerator(name: "DAY_3", value: 131081)
!196 = !DIEnumerator(name: "DAY_4", value: 131082)
!197 = !DIEnumerator(name: "DAY_5", value: 131083)
!198 = !DIEnumerator(name: "DAY_6", value: 131084)
!199 = !DIEnumerator(name: "DAY_7", value: 131085)
!200 = !DIEnumerator(name: "ABMON_1", value: 131086)
!201 = !DIEnumerator(name: "ABMON_2", value: 131087)
!202 = !DIEnumerator(name: "ABMON_3", value: 131088)
!203 = !DIEnumerator(name: "ABMON_4", value: 131089)
!204 = !DIEnumerator(name: "ABMON_5", value: 131090)
!205 = !DIEnumerator(name: "ABMON_6", value: 131091)
!206 = !DIEnumerator(name: "ABMON_7", value: 131092)
!207 = !DIEnumerator(name: "ABMON_8", value: 131093)
!208 = !DIEnumerator(name: "ABMON_9", value: 131094)
!209 = !DIEnumerator(name: "ABMON_10", value: 131095)
!210 = !DIEnumerator(name: "ABMON_11", value: 131096)
!211 = !DIEnumerator(name: "ABMON_12", value: 131097)
!212 = !DIEnumerator(name: "MON_1", value: 131098)
!213 = !DIEnumerator(name: "MON_2", value: 131099)
!214 = !DIEnumerator(name: "MON_3", value: 131100)
!215 = !DIEnumerator(name: "MON_4", value: 131101)
!216 = !DIEnumerator(name: "MON_5", value: 131102)
!217 = !DIEnumerator(name: "MON_6", value: 131103)
!218 = !DIEnumerator(name: "MON_7", value: 131104)
!219 = !DIEnumerator(name: "MON_8", value: 131105)
!220 = !DIEnumerator(name: "MON_9", value: 131106)
!221 = !DIEnumerator(name: "MON_10", value: 131107)
!222 = !DIEnumerator(name: "MON_11", value: 131108)
!223 = !DIEnumerator(name: "MON_12", value: 131109)
!224 = !DIEnumerator(name: "AM_STR", value: 131110)
!225 = !DIEnumerator(name: "PM_STR", value: 131111)
!226 = !DIEnumerator(name: "D_T_FMT", value: 131112)
!227 = !DIEnumerator(name: "D_FMT", value: 131113)
!228 = !DIEnumerator(name: "T_FMT", value: 131114)
!229 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115)
!230 = !DIEnumerator(name: "ERA", value: 131116)
!231 = !DIEnumerator(name: "__ERA_YEAR", value: 131117)
!232 = !DIEnumerator(name: "ERA_D_FMT", value: 131118)
!233 = !DIEnumerator(name: "ALT_DIGITS", value: 131119)
!234 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120)
!235 = !DIEnumerator(name: "ERA_T_FMT", value: 131121)
!236 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122)
!237 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123)
!238 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124)
!239 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125)
!240 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126)
!241 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127)
!242 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128)
!243 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129)
!244 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130)
!245 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131)
!246 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132)
!247 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133)
!248 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134)
!249 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135)
!250 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136)
!251 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137)
!252 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138)
!253 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139)
!254 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140)
!255 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141)
!256 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142)
!257 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143)
!258 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144)
!259 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145)
!260 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146)
!261 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147)
!262 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148)
!263 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149)
!264 = !DIEnumerator(name: "_NL_WMON_1", value: 131150)
!265 = !DIEnumerator(name: "_NL_WMON_2", value: 131151)
!266 = !DIEnumerator(name: "_NL_WMON_3", value: 131152)
!267 = !DIEnumerator(name: "_NL_WMON_4", value: 131153)
!268 = !DIEnumerator(name: "_NL_WMON_5", value: 131154)
!269 = !DIEnumerator(name: "_NL_WMON_6", value: 131155)
!270 = !DIEnumerator(name: "_NL_WMON_7", value: 131156)
!271 = !DIEnumerator(name: "_NL_WMON_8", value: 131157)
!272 = !DIEnumerator(name: "_NL_WMON_9", value: 131158)
!273 = !DIEnumerator(name: "_NL_WMON_10", value: 131159)
!274 = !DIEnumerator(name: "_NL_WMON_11", value: 131160)
!275 = !DIEnumerator(name: "_NL_WMON_12", value: 131161)
!276 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162)
!277 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163)
!278 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164)
!279 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165)
!280 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166)
!281 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167)
!282 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168)
!283 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169)
!284 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170)
!285 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171)
!286 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172)
!287 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173)
!288 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174)
!289 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175)
!290 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176)
!291 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177)
!292 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178)
!293 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179)
!294 = !DIEnumerator(name: "_DATE_FMT", value: 131180)
!295 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181)
!296 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182)
!297 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131183)
!298 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608)
!299 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609)
!300 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610)
!301 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611)
!302 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612)
!303 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613)
!304 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614)
!305 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615)
!306 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616)
!307 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617)
!308 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618)
!309 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619)
!310 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620)
!311 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621)
!312 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622)
!313 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623)
!314 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624)
!315 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625)
!316 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626)
!317 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627)
!318 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0)
!319 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1)
!320 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2)
!321 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3)
!322 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4)
!323 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5)
!324 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6)
!325 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7)
!326 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8)
!327 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9)
!328 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10)
!329 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11)
!330 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12)
!331 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13)
!332 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14)
!333 = !DIEnumerator(name: "CODESET", value: 14)
!334 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15)
!335 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16)
!336 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17)
!337 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18)
!338 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19)
!339 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20)
!340 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21)
!341 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22)
!342 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23)
!343 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24)
!344 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25)
!345 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26)
!346 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27)
!347 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28)
!348 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29)
!349 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30)
!350 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31)
!351 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32)
!352 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33)
!353 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34)
!354 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35)
!355 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36)
!356 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37)
!357 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38)
!358 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39)
!359 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40)
!360 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41)
!361 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42)
!362 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43)
!363 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44)
!364 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45)
!365 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46)
!366 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47)
!367 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48)
!368 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49)
!369 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50)
!370 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51)
!371 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52)
!372 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53)
!373 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54)
!374 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55)
!375 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56)
!376 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57)
!377 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58)
!378 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59)
!379 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60)
!380 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61)
!381 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62)
!382 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63)
!383 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64)
!384 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65)
!385 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66)
!386 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67)
!387 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68)
!388 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69)
!389 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70)
!390 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71)
!391 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72)
!392 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73)
!393 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74)
!394 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75)
!395 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76)
!396 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77)
!397 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78)
!398 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79)
!399 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80)
!400 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81)
!401 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82)
!402 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83)
!403 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84)
!404 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85)
!405 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86)
!406 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144)
!407 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145)
!408 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146)
!409 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147)
!410 = !DIEnumerator(name: "__MON_GROUPING", value: 262148)
!411 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149)
!412 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150)
!413 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151)
!414 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152)
!415 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153)
!416 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154)
!417 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155)
!418 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156)
!419 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157)
!420 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158)
!421 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159)
!422 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160)
!423 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161)
!424 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162)
!425 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163)
!426 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164)
!427 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165)
!428 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166)
!429 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167)
!430 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168)
!431 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169)
!432 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170)
!433 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171)
!434 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172)
!435 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173)
!436 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174)
!437 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175)
!438 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176)
!439 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177)
!440 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178)
!441 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179)
!442 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180)
!443 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181)
!444 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182)
!445 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183)
!446 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184)
!447 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185)
!448 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186)
!449 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187)
!450 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188)
!451 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189)
!452 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190)
!453 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536)
!454 = !DIEnumerator(name: "RADIXCHAR", value: 65536)
!455 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537)
!456 = !DIEnumerator(name: "THOUSEP", value: 65537)
!457 = !DIEnumerator(name: "__GROUPING", value: 65538)
!458 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539)
!459 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540)
!460 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541)
!461 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542)
!462 = !DIEnumerator(name: "__YESEXPR", value: 327680)
!463 = !DIEnumerator(name: "__NOEXPR", value: 327681)
!464 = !DIEnumerator(name: "__YESSTR", value: 327682)
!465 = !DIEnumerator(name: "__NOSTR", value: 327683)
!466 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684)
!467 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685)
!468 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752)
!469 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753)
!470 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754)
!471 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755)
!472 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288)
!473 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289)
!474 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290)
!475 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291)
!476 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292)
!477 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293)
!478 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294)
!479 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295)
!480 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824)
!481 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825)
!482 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826)
!483 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827)
!484 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828)
!485 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829)
!486 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830)
!487 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831)
!488 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832)
!489 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833)
!490 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834)
!491 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835)
!492 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836)
!493 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837)
!494 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360)
!495 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361)
!496 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362)
!497 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363)
!498 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364)
!499 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365)
!500 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896)
!501 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897)
!502 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898)
!503 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432)
!504 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433)
!505 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434)
!506 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435)
!507 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436)
!508 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437)
!509 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438)
!510 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439)
!511 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440)
!512 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441)
!513 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442)
!514 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443)
!515 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444)
!516 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445)
!517 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446)
!518 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447)
!519 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448)
!520 = !DIEnumerator(name: "_NL_NUM", value: 786449)
!521 = !{!80, !14, !522}
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!524 = !{!178}
!525 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!526 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !6)
!527 = distinct !DICompileUnit(language: DW_LANG_C99, file: !528, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !529, globals: !534)
!528 = !DIFile(filename: "src/sleep.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!529 = !{!6, !80, !123, !530, !532}
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !523)
!534 = !{!535}
!535 = !DIGlobalVariableExpression(var: !536)
!536 = distinct !DIGlobalVariable(name: "infomap", scope: !537, file: !538, line: 632, type: !562, isLocal: true, isDefinition: true)
!537 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !538, file: !538, line: 630, type: !539, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !527, variables: !541)
!538 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!539 = !DISubroutineType(types: !540)
!540 = !{null, !6}
!541 = !{!542, !543, !544, !551, !553, !554, !555, !558, !559, !561}
!542 = !DILocalVariable(name: "program", arg: 1, scope: !537, file: !538, line: 630, type: !6)
!543 = !DILocalVariable(name: "node", scope: !537, file: !538, line: 642, type: !6)
!544 = !DILocalVariable(name: "map_prog", scope: !537, file: !538, line: 643, type: !545)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !547)
!547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !537, file: !538, line: 632, size: 128, elements: !548)
!548 = !{!549, !550}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !547, file: !538, line: 632, baseType: !6, size: 64)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !547, file: !538, line: 632, baseType: !6, size: 64, offset: 64)
!551 = !DILocalVariable(name: "__s1_len", scope: !552, file: !538, line: 645, type: !123)
!552 = distinct !DILexicalBlock(scope: !537, file: !538, line: 645, column: 33)
!553 = !DILocalVariable(name: "__s2_len", scope: !552, file: !538, line: 645, type: !123)
!554 = !DILocalVariable(name: "lc_messages", scope: !537, file: !538, line: 655, type: !6)
!555 = !DILocalVariable(name: "__s1_len", scope: !556, file: !538, line: 656, type: !123)
!556 = distinct !DILexicalBlock(scope: !557, file: !538, line: 656, column: 22)
!557 = distinct !DILexicalBlock(scope: !537, file: !538, line: 656, column: 7)
!558 = !DILocalVariable(name: "__s2_len", scope: !556, file: !538, line: 656, type: !123)
!559 = !DILocalVariable(name: "__s2", scope: !560, file: !538, line: 656, type: !532)
!560 = distinct !DILexicalBlock(scope: !556, file: !538, line: 656, column: 22)
!561 = !DILocalVariable(name: "__result", scope: !560, file: !538, line: 656, type: !34)
!562 = !DICompositeType(tag: DW_TAG_array_type, baseType: !546, size: 896, elements: !563)
!563 = !{!564}
!564 = !DISubrange(count: 7)
!565 = distinct !DICompileUnit(language: DW_LANG_C99, file: !566, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !567, retainedTypes: !572)
!566 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!567 = !{!568}
!568 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !569, line: 41, size: 32, elements: !570)
!569 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!570 = !{!571}
!571 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!572 = !{!80}
!573 = distinct !DICompileUnit(language: DW_LANG_C99, file: !574, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !575, retainedTypes: !589)
!574 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!575 = !{!576}
!576 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !578, file: !577, line: 192, size: 32, elements: !587)
!577 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!578 = distinct !DISubprogram(name: "x2nrealloc", scope: !577, file: !577, line: 180, type: !579, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !573, variables: !582)
!579 = !DISubroutineType(types: !580)
!580 = !{!80, !80, !581, !123}
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!582 = !{!583, !584, !585, !586}
!583 = !DILocalVariable(name: "p", arg: 1, scope: !578, file: !577, line: 180, type: !80)
!584 = !DILocalVariable(name: "pn", arg: 2, scope: !578, file: !577, line: 180, type: !581)
!585 = !DILocalVariable(name: "s", arg: 3, scope: !578, file: !577, line: 180, type: !123)
!586 = !DILocalVariable(name: "n", scope: !578, file: !577, line: 182, type: !123)
!587 = !{!588}
!588 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!589 = !{!123, !14, !80}
!590 = distinct !DICompileUnit(language: DW_LANG_C99, file: !591, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!591 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!592 = distinct !DICompileUnit(language: DW_LANG_C99, file: !593, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!593 = !DIFile(filename: "./lib/xnanosleep.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!594 = distinct !DICompileUnit(language: DW_LANG_C99, file: !595, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !572)
!595 = !DIFile(filename: "./lib/xstrtod.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!596 = distinct !DICompileUnit(language: DW_LANG_C99, file: !597, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !572)
!597 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!598 = distinct !DICompileUnit(language: DW_LANG_C99, file: !599, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !600)
!599 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!600 = !{!123}
!601 = distinct !DICompileUnit(language: DW_LANG_C99, file: !602, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !603)
!602 = !DIFile(filename: "./lib/nanosleep.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!603 = !{!604}
!604 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !605, line: 41, size: 32, elements: !606)
!605 = !DIFile(filename: "lib/nanosleep.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!606 = !{!607}
!607 = !DIEnumerator(name: "BILLION", value: 1000000000)
!608 = distinct !DICompileUnit(language: DW_LANG_C99, file: !609, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!609 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!610 = distinct !DICompileUnit(language: DW_LANG_C99, file: !611, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !612, retainedTypes: !617)
!611 = !DIFile(filename: "./lib/dtotimespec.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!612 = !{!613}
!613 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !614, line: 35, size: 32, elements: !615)
!614 = !DIFile(filename: "./lib/timespec.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!615 = !{!616}
!616 = !DIEnumerator(name: "TIMESPEC_RESOLUTION", value: 1000000000)
!617 = !{!618}
!618 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !619, line: 8, baseType: !620)
!619 = !DIFile(filename: "/usr/include/bits/types/time_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!620 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !621, line: 148, baseType: !622)
!621 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!622 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!623 = distinct !DICompileUnit(language: DW_LANG_C99, file: !624, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !625)
!624 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!625 = !{!123, !530, !532, !6}
!626 = distinct !DICompileUnit(language: DW_LANG_C99, file: !627, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!627 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!628 = distinct !DICompileUnit(language: DW_LANG_C99, file: !629, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !572)
!629 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!630 = distinct !DICompileUnit(language: DW_LANG_C99, file: !631, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !572)
!631 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!632 = !{!"clang version 4.0.1 (tags/RELEASE_401/final)"}
!633 = !{i32 2, !"Dwarf Version", i32 4}
!634 = !{i32 2, !"Debug Info Version", i32 3}
!635 = !{i32 1, !"PIC Level", i32 2}
!636 = !{i32 1, !"PIE Level", i32 2}
!637 = distinct !DISubprogram(name: "usage", scope: !528, file: !528, line: 39, type: !638, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !527, variables: !640)
!638 = !DISubroutineType(types: !639)
!639 = !{null, !34}
!640 = !{!641}
!641 = !DILocalVariable(name: "status", arg: 1, scope: !637, file: !528, line: 39, type: !34)
!642 = !DIExpression()
!643 = !DILocation(line: 39, column: 12, scope: !637)
!644 = !DILocation(line: 41, column: 14, scope: !645)
!645 = distinct !DILexicalBlock(scope: !637, file: !528, line: 41, column: 7)
!646 = !DILocation(line: 41, column: 7, scope: !637)
!647 = !DILocation(line: 42, column: 5, scope: !648)
!648 = !DILexicalBlockFile(scope: !649, file: !528, discriminator: 1)
!649 = distinct !DILexicalBlock(scope: !645, file: !528, line: 42, column: 5)
!650 = !{!651, !651, i64 0}
!651 = !{!"any pointer", !652, i64 0}
!652 = !{!"omnipotent char", !653, i64 0}
!653 = !{!"Simple C/C++ TBAA"}
!654 = !DILocation(line: 42, column: 5, scope: !655)
!655 = !DILexicalBlockFile(scope: !649, file: !528, discriminator: 3)
!656 = !DILocation(line: 42, column: 5, scope: !657)
!657 = !DILexicalBlockFile(scope: !649, file: !528, discriminator: 2)
!658 = !DILocation(line: 45, column: 7, scope: !659)
!659 = distinct !DILexicalBlock(scope: !645, file: !528, line: 44, column: 5)
!660 = !DILocation(line: 45, column: 7, scope: !661)
!661 = !DILexicalBlockFile(scope: !659, file: !528, discriminator: 1)
!662 = !DILocation(line: 56, column: 7, scope: !659)
!663 = !DILocation(line: 56, column: 7, scope: !661)
!664 = !DILocation(line: 57, column: 7, scope: !659)
!665 = !DILocation(line: 57, column: 7, scope: !661)
!666 = !DILocation(line: 642, column: 15, scope: !537, inlinedAt: !667)
!667 = distinct !DILocation(line: 58, column: 7, scope: !659)
!668 = !DILocation(line: 651, column: 3, scope: !537, inlinedAt: !667)
!669 = !DILocation(line: 651, column: 3, scope: !670, inlinedAt: !667)
!670 = !DILexicalBlockFile(scope: !537, file: !538, discriminator: 1)
!671 = !DILocation(line: 655, column: 29, scope: !537, inlinedAt: !667)
!672 = !DILocation(line: 655, column: 15, scope: !537, inlinedAt: !667)
!673 = !DILocation(line: 656, column: 7, scope: !557, inlinedAt: !667)
!674 = !DILocation(line: 656, column: 19, scope: !557, inlinedAt: !667)
!675 = !DILocation(line: 656, column: 22, scope: !676, inlinedAt: !667)
!676 = !DILexicalBlockFile(scope: !557, file: !538, discriminator: 16)
!677 = !DILocation(line: 656, column: 7, scope: !678, inlinedAt: !667)
!678 = !DILexicalBlockFile(scope: !537, file: !538, discriminator: 16)
!679 = !DILocation(line: 662, column: 7, scope: !680, inlinedAt: !667)
!680 = distinct !DILexicalBlock(scope: !557, file: !538, line: 657, column: 5)
!681 = !DILocation(line: 662, column: 7, scope: !682, inlinedAt: !667)
!682 = !DILexicalBlockFile(scope: !680, file: !538, discriminator: 1)
!683 = !DILocation(line: 664, column: 5, scope: !680, inlinedAt: !667)
!684 = !DILocation(line: 665, column: 3, scope: !537, inlinedAt: !667)
!685 = !DILocation(line: 665, column: 3, scope: !670, inlinedAt: !667)
!686 = !DILocation(line: 667, column: 3, scope: !537, inlinedAt: !667)
!687 = !DILocation(line: 667, column: 3, scope: !670, inlinedAt: !667)
!688 = !DILocation(line: 60, column: 3, scope: !637)
!689 = distinct !DISubprogram(name: "main", scope: !528, file: !528, line: 99, type: !690, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !527, variables: !693)
!690 = !DISubroutineType(types: !691)
!691 = !{!34, !34, !692}
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!693 = !{!694, !695, !696, !697, !699, !700, !704}
!694 = !DILocalVariable(name: "argc", arg: 1, scope: !689, file: !528, line: 99, type: !34)
!695 = !DILocalVariable(name: "argv", arg: 2, scope: !689, file: !528, line: 99, type: !692)
!696 = !DILocalVariable(name: "i", scope: !689, file: !528, line: 101, type: !34)
!697 = !DILocalVariable(name: "seconds", scope: !689, file: !528, line: 102, type: !698)
!698 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!699 = !DILocalVariable(name: "ok", scope: !689, file: !528, line: 103, type: !49)
!700 = !DILocalVariable(name: "s", scope: !701, file: !528, line: 126, type: !698)
!701 = distinct !DILexicalBlock(scope: !702, file: !528, line: 125, column: 5)
!702 = distinct !DILexicalBlock(scope: !703, file: !528, line: 124, column: 3)
!703 = distinct !DILexicalBlock(scope: !689, file: !528, line: 124, column: 3)
!704 = !DILocalVariable(name: "p", scope: !701, file: !528, line: 127, type: !6)
!705 = !DILocation(line: 99, column: 11, scope: !689)
!706 = !DILocation(line: 99, column: 24, scope: !689)
!707 = !DILocation(line: 102, column: 10, scope: !689)
!708 = !DILocation(line: 103, column: 8, scope: !689)
!709 = !DILocation(line: 106, column: 21, scope: !689)
!710 = !DILocation(line: 106, column: 3, scope: !689)
!711 = !DILocation(line: 107, column: 3, scope: !689)
!712 = !DILocation(line: 108, column: 3, scope: !689)
!713 = !DILocation(line: 109, column: 3, scope: !689)
!714 = !DILocation(line: 111, column: 3, scope: !689)
!715 = !DILocation(line: 113, column: 63, scope: !689)
!716 = !DILocation(line: 113, column: 3, scope: !689)
!717 = !DILocation(line: 115, column: 7, scope: !718)
!718 = distinct !DILexicalBlock(scope: !689, file: !528, line: 115, column: 7)
!719 = !DILocation(line: 115, column: 48, scope: !718)
!720 = !DILocation(line: 115, column: 7, scope: !689)
!721 = !DILocation(line: 116, column: 5, scope: !718)
!722 = !DILocation(line: 118, column: 12, scope: !723)
!723 = distinct !DILexicalBlock(scope: !689, file: !528, line: 118, column: 7)
!724 = !DILocation(line: 118, column: 7, scope: !689)
!725 = !DILocation(line: 120, column: 20, scope: !726)
!726 = distinct !DILexicalBlock(scope: !723, file: !528, line: 119, column: 5)
!727 = !DILocation(line: 120, column: 7, scope: !728)
!728 = !DILexicalBlockFile(scope: !726, file: !528, discriminator: 1)
!729 = !DILocation(line: 121, column: 7, scope: !726)
!730 = !DILocation(line: 124, column: 12, scope: !703)
!731 = !{!732, !732, i64 0}
!732 = !{!"int", !652, i64 0}
!733 = !DILocation(line: 101, column: 7, scope: !689)
!734 = !DILocation(line: 124, column: 22, scope: !735)
!735 = !DILexicalBlockFile(scope: !702, file: !528, discriminator: 1)
!736 = !DILocation(line: 124, column: 3, scope: !737)
!737 = !DILexicalBlockFile(scope: !703, file: !528, discriminator: 1)
!738 = !DILocation(line: 126, column: 7, scope: !701)
!739 = !DILocation(line: 127, column: 7, scope: !701)
!740 = !DILocation(line: 128, column: 23, scope: !741)
!741 = distinct !DILexicalBlock(scope: !701, file: !528, line: 128, column: 11)
!742 = !DIExpression(DW_OP_deref)
!743 = !DILocation(line: 126, column: 14, scope: !701)
!744 = !DILocation(line: 127, column: 19, scope: !701)
!745 = !DILocation(line: 128, column: 14, scope: !741)
!746 = !DILocation(line: 128, column: 50, scope: !741)
!747 = !DILocation(line: 128, column: 53, scope: !748)
!748 = !DILexicalBlockFile(scope: !741, file: !528, discriminator: 1)
!749 = !DILocation(line: 128, column: 59, scope: !748)
!750 = !DILocation(line: 130, column: 22, scope: !748)
!751 = !DILocation(line: 130, column: 19, scope: !748)
!752 = !DILocation(line: 130, column: 11, scope: !741)
!753 = !{!754, !754, i64 0}
!754 = !{!"double", !652, i64 0}
!755 = !DILocation(line: 132, column: 11, scope: !741)
!756 = !DILocation(line: 93, column: 6, scope: !757, inlinedAt: !765)
!757 = distinct !DISubprogram(name: "apply_suffix", scope: !528, file: !528, line: 70, type: !758, isLocal: true, isDefinition: true, scopeLine: 71, flags: DIFlagPrototyped, isOptimized: true, unit: !527, variables: !761)
!758 = !DISubroutineType(types: !759)
!759 = !{!49, !760, !8}
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!761 = !{!762, !763, !764}
!762 = !DILocalVariable(name: "x", arg: 1, scope: !757, file: !528, line: 70, type: !760)
!763 = !DILocalVariable(name: "suffix_char", arg: 2, scope: !757, file: !528, line: 70, type: !8)
!764 = !DILocalVariable(name: "multiplier", scope: !757, file: !528, line: 72, type: !34)
!765 = distinct !DILocation(line: 134, column: 16, scope: !748)
!766 = !DILocation(line: 132, column: 16, scope: !748)
!767 = !DILocation(line: 132, column: 15, scope: !748)
!768 = !{!652, !652, i64 0}
!769 = !DILocation(line: 132, column: 18, scope: !748)
!770 = !DILocation(line: 132, column: 24, scope: !771)
!771 = !DILexicalBlockFile(scope: !741, file: !528, discriminator: 2)
!772 = !DILocation(line: 132, column: 21, scope: !771)
!773 = !DILocation(line: 134, column: 11, scope: !741)
!774 = !DILocation(line: 70, column: 23, scope: !757, inlinedAt: !765)
!775 = !DILocation(line: 70, column: 31, scope: !757, inlinedAt: !765)
!776 = !DILocation(line: 74, column: 11, scope: !757, inlinedAt: !765)
!777 = !DILocation(line: 74, column: 3, scope: !757, inlinedAt: !765)
!778 = !DILocation(line: 72, column: 7, scope: !757, inlinedAt: !765)
!779 = !DILocation(line: 82, column: 7, scope: !780, inlinedAt: !765)
!780 = distinct !DILexicalBlock(scope: !757, file: !528, line: 75, column: 5)
!781 = !DILocation(line: 85, column: 7, scope: !780, inlinedAt: !765)
!782 = !DILocation(line: 88, column: 7, scope: !780, inlinedAt: !765)
!783 = !DILocation(line: 128, column: 11, scope: !784)
!784 = !DILexicalBlockFile(scope: !701, file: !528, discriminator: 2)
!785 = !DILocation(line: 136, column: 24, scope: !786)
!786 = distinct !DILexicalBlock(scope: !741, file: !528, line: 135, column: 9)
!787 = !DILocation(line: 136, column: 62, scope: !786)
!788 = !DILocation(line: 136, column: 55, scope: !789)
!789 = !DILexicalBlockFile(scope: !786, file: !528, discriminator: 1)
!790 = !DILocation(line: 136, column: 11, scope: !791)
!791 = !DILexicalBlockFile(scope: !786, file: !528, discriminator: 2)
!792 = !DILocation(line: 138, column: 9, scope: !786)
!793 = !DILocation(line: 140, column: 18, scope: !701)
!794 = !DILocation(line: 140, column: 15, scope: !701)
!795 = !DILocation(line: 141, column: 5, scope: !702)
!796 = !DILocation(line: 124, column: 31, scope: !797)
!797 = !DILexicalBlockFile(scope: !702, file: !528, discriminator: 2)
!798 = distinct !{!798, !799, !800}
!799 = !DILocation(line: 124, column: 3, scope: !703)
!800 = !DILocation(line: 141, column: 5, scope: !703)
!801 = !DILocation(line: 143, column: 8, scope: !802)
!802 = distinct !DILexicalBlock(scope: !689, file: !528, line: 143, column: 7)
!803 = !DILocation(line: 143, column: 7, scope: !689)
!804 = !DILocation(line: 144, column: 5, scope: !802)
!805 = !DILocation(line: 146, column: 7, scope: !806)
!806 = distinct !DILexicalBlock(scope: !689, file: !528, line: 146, column: 7)
!807 = !DILocation(line: 146, column: 7, scope: !689)
!808 = !DILocation(line: 147, column: 5, scope: !806)
!809 = !DILocation(line: 147, column: 5, scope: !810)
!810 = !DILexicalBlockFile(scope: !806, file: !528, discriminator: 1)
!811 = !DILocation(line: 147, column: 5, scope: !812)
!812 = !DILexicalBlockFile(scope: !806, file: !528, discriminator: 2)
!813 = !DILocation(line: 149, column: 3, scope: !689)
!814 = distinct !DISubprogram(name: "c_strtod", scope: !39, file: !39, line: 66, type: !815, isLocal: false, isDefinition: true, scopeLine: 67, flags: DIFlagPrototyped, isOptimized: true, unit: !11, variables: !817)
!815 = !DISubroutineType(types: !816)
!816 = !{!698, !6, !692}
!817 = !{!818, !819, !820, !821}
!818 = !DILocalVariable(name: "nptr", arg: 1, scope: !814, file: !39, line: 66, type: !6)
!819 = !DILocalVariable(name: "endptr", arg: 2, scope: !814, file: !39, line: 66, type: !692)
!820 = !DILocalVariable(name: "r", scope: !814, file: !39, line: 68, type: !698)
!821 = !DILocalVariable(name: "locale", scope: !814, file: !39, line: 72, type: !15)
!822 = !DILocation(line: 66, column: 23, scope: !814)
!823 = !DILocation(line: 66, column: 36, scope: !814)
!824 = !DILocation(line: 58, column: 8, scope: !825, inlinedAt: !829)
!825 = distinct !DILexicalBlock(scope: !826, file: !39, line: 58, column: 7)
!826 = distinct !DISubprogram(name: "c_locale", scope: !39, file: !39, line: 56, type: !827, isLocal: true, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !11, variables: !4)
!827 = !DISubroutineType(types: !828)
!828 = !{!15}
!829 = distinct !DILocation(line: 72, column: 21, scope: !814)
!830 = !DILocation(line: 58, column: 7, scope: !826, inlinedAt: !829)
!831 = !DILocation(line: 59, column: 22, scope: !825, inlinedAt: !829)
!832 = !DILocation(line: 59, column: 20, scope: !825, inlinedAt: !829)
!833 = !DILocation(line: 59, column: 5, scope: !825, inlinedAt: !829)
!834 = !DILocation(line: 60, column: 10, scope: !826, inlinedAt: !829)
!835 = !DILocation(line: 72, column: 12, scope: !814)
!836 = !DILocation(line: 73, column: 8, scope: !837)
!837 = distinct !DILexicalBlock(scope: !814, file: !39, line: 73, column: 7)
!838 = !DILocation(line: 73, column: 7, scope: !814)
!839 = !DILocation(line: 75, column: 11, scope: !840)
!840 = distinct !DILexicalBlock(scope: !841, file: !39, line: 75, column: 11)
!841 = distinct !DILexicalBlock(scope: !837, file: !39, line: 74, column: 5)
!842 = !DILocation(line: 75, column: 11, scope: !841)
!843 = !DILocation(line: 76, column: 17, scope: !840)
!844 = !DILocation(line: 76, column: 9, scope: !840)
!845 = !DILocation(line: 80, column: 7, scope: !814)
!846 = !DILocation(line: 68, column: 10, scope: !814)
!847 = !DILocation(line: 111, column: 3, scope: !814)
!848 = !DILocation(line: 112, column: 1, scope: !814)
!849 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !48, file: !48, line: 41, type: !539, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !43, variables: !850)
!850 = !{!851}
!851 = !DILocalVariable(name: "file", arg: 1, scope: !849, file: !48, line: 41, type: !6)
!852 = !DILocation(line: 41, column: 41, scope: !849)
!853 = !DILocation(line: 43, column: 13, scope: !849)
!854 = !DILocation(line: 44, column: 1, scope: !849)
!855 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !48, file: !48, line: 78, type: !856, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !43, variables: !858)
!856 = !DISubroutineType(types: !857)
!857 = !{null, !49}
!858 = !{!859}
!859 = !DILocalVariable(name: "ignore", arg: 1, scope: !855, file: !48, line: 78, type: !49)
!860 = !DIExpression(DW_OP_LLVM_fragment, 0, 1)
!861 = !DILocation(line: 78, column: 37, scope: !855)
!862 = !DILocation(line: 80, column: 16, scope: !855)
!863 = !{!864, !864, i64 0}
!864 = !{!"_Bool", !652, i64 0}
!865 = !DILocation(line: 81, column: 1, scope: !855)
!866 = distinct !DISubprogram(name: "close_stdout", scope: !48, file: !48, line: 107, type: !867, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !43, variables: !869)
!867 = !DISubroutineType(types: !868)
!868 = !{null}
!869 = !{!870}
!870 = !DILocalVariable(name: "write_error", scope: !871, file: !48, line: 112, type: !6)
!871 = distinct !DILexicalBlock(scope: !872, file: !48, line: 111, column: 5)
!872 = distinct !DILexicalBlock(scope: !866, file: !48, line: 109, column: 7)
!873 = !DILocation(line: 109, column: 21, scope: !872)
!874 = !DILocation(line: 109, column: 7, scope: !872)
!875 = !DILocation(line: 109, column: 29, scope: !872)
!876 = !DILocation(line: 110, column: 7, scope: !872)
!877 = !DILocation(line: 110, column: 12, scope: !878)
!878 = !DILexicalBlockFile(scope: !872, file: !48, discriminator: 1)
!879 = !{i8 0, i8 2}
!880 = !DILocation(line: 114, column: 19, scope: !881)
!881 = distinct !DILexicalBlock(scope: !871, file: !48, line: 113, column: 11)
!882 = !DILocation(line: 110, column: 25, scope: !878)
!883 = !DILocation(line: 110, column: 28, scope: !884)
!884 = !DILexicalBlockFile(scope: !872, file: !48, discriminator: 2)
!885 = !DILocation(line: 110, column: 34, scope: !884)
!886 = !DILocation(line: 109, column: 7, scope: !887)
!887 = !DILexicalBlockFile(scope: !866, file: !48, discriminator: 1)
!888 = !DILocation(line: 112, column: 33, scope: !871)
!889 = !DILocation(line: 112, column: 19, scope: !871)
!890 = !DILocation(line: 113, column: 11, scope: !881)
!891 = !DILocation(line: 113, column: 11, scope: !871)
!892 = !DILocation(line: 114, column: 36, scope: !893)
!893 = !DILexicalBlockFile(scope: !881, file: !48, discriminator: 1)
!894 = !DILocation(line: 114, column: 9, scope: !895)
!895 = !DILexicalBlockFile(scope: !881, file: !48, discriminator: 2)
!896 = !DILocation(line: 114, column: 9, scope: !881)
!897 = !DILocation(line: 117, column: 9, scope: !893)
!898 = !DILocation(line: 119, column: 14, scope: !871)
!899 = !DILocation(line: 119, column: 7, scope: !871)
!900 = !DILocation(line: 122, column: 22, scope: !901)
!901 = distinct !DILexicalBlock(scope: !866, file: !48, line: 122, column: 8)
!902 = !DILocation(line: 122, column: 8, scope: !901)
!903 = !DILocation(line: 122, column: 30, scope: !901)
!904 = !DILocation(line: 122, column: 8, scope: !866)
!905 = !DILocation(line: 123, column: 13, scope: !901)
!906 = !DILocation(line: 123, column: 6, scope: !901)
!907 = !DILocation(line: 124, column: 1, scope: !866)
!908 = distinct !DISubprogram(name: "parse_long_options", scope: !62, file: !62, line: 44, type: !909, isLocal: false, isDefinition: true, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: true, unit: !59, variables: !912)
!909 = !DISubroutineType(types: !910)
!910 = !{null, !34, !692, !6, !6, !6, !911, null}
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!912 = !{!913, !914, !915, !916, !917, !918, !919, !920, !921}
!913 = !DILocalVariable(name: "argc", arg: 1, scope: !908, file: !62, line: 44, type: !34)
!914 = !DILocalVariable(name: "argv", arg: 2, scope: !908, file: !62, line: 45, type: !692)
!915 = !DILocalVariable(name: "command_name", arg: 3, scope: !908, file: !62, line: 46, type: !6)
!916 = !DILocalVariable(name: "package", arg: 4, scope: !908, file: !62, line: 47, type: !6)
!917 = !DILocalVariable(name: "version", arg: 5, scope: !908, file: !62, line: 48, type: !6)
!918 = !DILocalVariable(name: "usage_func", arg: 6, scope: !908, file: !62, line: 49, type: !911)
!919 = !DILocalVariable(name: "c", scope: !908, file: !62, line: 52, type: !34)
!920 = !DILocalVariable(name: "saved_opterr", scope: !908, file: !62, line: 53, type: !34)
!921 = !DILocalVariable(name: "authors", scope: !922, file: !62, line: 71, type: !926)
!922 = distinct !DILexicalBlock(scope: !923, file: !62, line: 70, column: 11)
!923 = distinct !DILexicalBlock(scope: !924, file: !62, line: 64, column: 9)
!924 = distinct !DILexicalBlock(scope: !925, file: !62, line: 62, column: 5)
!925 = distinct !DILexicalBlock(scope: !908, file: !62, line: 60, column: 7)
!926 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !927, line: 80, baseType: !928)
!927 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!928 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !929, line: 50, baseType: !930)
!929 = !DIFile(filename: "/usr/bin/../lib/clang/4.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!930 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !60, line: 71, baseType: !931)
!931 = !DICompositeType(tag: DW_TAG_array_type, baseType: !932, size: 192, elements: !938)
!932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !60, line: 71, size: 192, elements: !933)
!933 = !{!934, !935, !936, !937}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !932, file: !60, line: 71, baseType: !142, size: 32)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !932, file: !60, line: 71, baseType: !142, size: 32, offset: 32)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !932, file: !60, line: 71, baseType: !80, size: 64, offset: 64)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !932, file: !60, line: 71, baseType: !80, size: 64, offset: 128)
!938 = !{!939}
!939 = !DISubrange(count: 1)
!940 = !DILocation(line: 44, column: 25, scope: !908)
!941 = !DILocation(line: 45, column: 28, scope: !908)
!942 = !DILocation(line: 46, column: 33, scope: !908)
!943 = !DILocation(line: 47, column: 33, scope: !908)
!944 = !DILocation(line: 48, column: 33, scope: !908)
!945 = !DILocation(line: 49, column: 28, scope: !908)
!946 = !DILocation(line: 55, column: 18, scope: !908)
!947 = !DILocation(line: 53, column: 7, scope: !908)
!948 = !DILocation(line: 58, column: 10, scope: !908)
!949 = !DILocation(line: 60, column: 12, scope: !925)
!950 = !DILocation(line: 61, column: 7, scope: !925)
!951 = !DILocation(line: 61, column: 15, scope: !952)
!952 = !DILexicalBlockFile(scope: !925, file: !62, discriminator: 1)
!953 = !DILocation(line: 52, column: 7, scope: !908)
!954 = !DILocation(line: 60, column: 7, scope: !955)
!955 = !DILexicalBlockFile(scope: !908, file: !62, discriminator: 1)
!956 = !DILocation(line: 66, column: 11, scope: !923)
!957 = !DILocation(line: 67, column: 11, scope: !923)
!958 = !DILocation(line: 71, column: 13, scope: !922)
!959 = !DILocation(line: 71, column: 21, scope: !922)
!960 = !DILocation(line: 72, column: 13, scope: !922)
!961 = !DILocation(line: 73, column: 29, scope: !922)
!962 = !DILocation(line: 73, column: 13, scope: !922)
!963 = !DILocation(line: 74, column: 13, scope: !922)
!964 = !DILocation(line: 84, column: 10, scope: !908)
!965 = !DILocation(line: 88, column: 10, scope: !908)
!966 = !DILocation(line: 89, column: 1, scope: !908)
!967 = distinct !DISubprogram(name: "set_program_name", scope: !82, file: !82, line: 39, type: !539, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !77, variables: !968)
!968 = !{!969, !970, !971}
!969 = !DILocalVariable(name: "argv0", arg: 1, scope: !967, file: !82, line: 39, type: !6)
!970 = !DILocalVariable(name: "slash", scope: !967, file: !82, line: 46, type: !6)
!971 = !DILocalVariable(name: "base", scope: !967, file: !82, line: 47, type: !6)
!972 = !DILocation(line: 39, column: 31, scope: !967)
!973 = !DILocation(line: 51, column: 13, scope: !974)
!974 = distinct !DILexicalBlock(scope: !967, file: !82, line: 51, column: 7)
!975 = !DILocation(line: 51, column: 7, scope: !967)
!976 = !DILocation(line: 55, column: 14, scope: !977)
!977 = distinct !DILexicalBlock(scope: !974, file: !82, line: 52, column: 5)
!978 = !DILocation(line: 54, column: 7, scope: !977)
!979 = !DILocation(line: 56, column: 7, scope: !977)
!980 = !DILocation(line: 59, column: 11, scope: !967)
!981 = !DILocation(line: 46, column: 15, scope: !967)
!982 = !DILocation(line: 60, column: 17, scope: !967)
!983 = !DILocation(line: 60, column: 33, scope: !984)
!984 = !DILexicalBlockFile(scope: !967, file: !82, discriminator: 1)
!985 = !DILocation(line: 60, column: 11, scope: !967)
!986 = !DILocation(line: 47, column: 15, scope: !967)
!987 = !DILocation(line: 61, column: 12, scope: !988)
!988 = distinct !DILexicalBlock(scope: !967, file: !82, line: 61, column: 7)
!989 = !DILocation(line: 61, column: 20, scope: !988)
!990 = !DILocation(line: 61, column: 25, scope: !988)
!991 = !DILocation(line: 61, column: 28, scope: !992)
!992 = !DILexicalBlockFile(scope: !988, file: !82, discriminator: 1)
!993 = !DILocation(line: 61, column: 61, scope: !992)
!994 = !DILocation(line: 61, column: 7, scope: !984)
!995 = !DILocation(line: 64, column: 11, scope: !996)
!996 = distinct !DILexicalBlock(scope: !997, file: !82, line: 64, column: 11)
!997 = distinct !DILexicalBlock(scope: !988, file: !82, line: 62, column: 5)
!998 = !DILocation(line: 64, column: 36, scope: !996)
!999 = !DILocation(line: 64, column: 11, scope: !997)
!1000 = !DILocation(line: 66, column: 24, scope: !1001)
!1001 = distinct !DILexicalBlock(scope: !996, file: !82, line: 65, column: 9)
!1002 = !DILocation(line: 70, column: 41, scope: !1001)
!1003 = !DILocation(line: 72, column: 9, scope: !1001)
!1004 = !DILocation(line: 84, column: 16, scope: !967)
!1005 = !DILocation(line: 90, column: 27, scope: !967)
!1006 = !DILocation(line: 92, column: 1, scope: !967)
!1007 = distinct !DISubprogram(name: "clone_quoting_options", scope: !129, file: !129, line: 114, type: !1008, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !85, variables: !1011)
!1008 = !DISubroutineType(types: !1009)
!1009 = !{!1010, !1010}
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!1011 = !{!1012, !1013, !1014}
!1012 = !DILocalVariable(name: "o", arg: 1, scope: !1007, file: !129, line: 114, type: !1010)
!1013 = !DILocalVariable(name: "e", scope: !1007, file: !129, line: 116, type: !34)
!1014 = !DILocalVariable(name: "p", scope: !1007, file: !129, line: 117, type: !1010)
!1015 = !DILocation(line: 114, column: 48, scope: !1007)
!1016 = !DILocation(line: 116, column: 11, scope: !1007)
!1017 = !DILocation(line: 116, column: 7, scope: !1007)
!1018 = !DILocation(line: 117, column: 40, scope: !1007)
!1019 = !DILocation(line: 117, column: 40, scope: !1020)
!1020 = !DILexicalBlockFile(scope: !1007, file: !129, discriminator: 3)
!1021 = !DILocation(line: 117, column: 31, scope: !1020)
!1022 = !DILocation(line: 117, column: 27, scope: !1007)
!1023 = !DILocation(line: 119, column: 9, scope: !1007)
!1024 = !DILocation(line: 120, column: 3, scope: !1007)
!1025 = distinct !DISubprogram(name: "get_quoting_style", scope: !129, file: !129, line: 125, type: !1026, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !85, variables: !1030)
!1026 = !DISubroutineType(types: !1027)
!1027 = !{!88, !1028}
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1029 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !136)
!1030 = !{!1031}
!1031 = !DILocalVariable(name: "o", arg: 1, scope: !1025, file: !129, line: 125, type: !1028)
!1032 = !DILocation(line: 125, column: 50, scope: !1025)
!1033 = !DILocation(line: 127, column: 11, scope: !1025)
!1034 = !DILocation(line: 127, column: 46, scope: !1035)
!1035 = !DILexicalBlockFile(scope: !1025, file: !129, discriminator: 3)
!1036 = !{!1037, !652, i64 0}
!1037 = !{!"quoting_options", !652, i64 0, !732, i64 4, !652, i64 8, !651, i64 40, !651, i64 48}
!1038 = !DILocation(line: 127, column: 3, scope: !1035)
!1039 = distinct !DISubprogram(name: "set_quoting_style", scope: !129, file: !129, line: 133, type: !1040, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !85, variables: !1042)
!1040 = !DISubroutineType(types: !1041)
!1041 = !{null, !1010, !88}
!1042 = !{!1043, !1044}
!1043 = !DILocalVariable(name: "o", arg: 1, scope: !1039, file: !129, line: 133, type: !1010)
!1044 = !DILocalVariable(name: "s", arg: 2, scope: !1039, file: !129, line: 133, type: !88)
!1045 = !DILocation(line: 133, column: 44, scope: !1039)
!1046 = !DILocation(line: 133, column: 66, scope: !1039)
!1047 = !DILocation(line: 135, column: 4, scope: !1039)
!1048 = !DILocation(line: 135, column: 39, scope: !1049)
!1049 = !DILexicalBlockFile(scope: !1039, file: !129, discriminator: 3)
!1050 = !DILocation(line: 135, column: 45, scope: !1049)
!1051 = !DILocation(line: 136, column: 1, scope: !1039)
!1052 = distinct !DISubprogram(name: "set_char_quoting", scope: !129, file: !129, line: 144, type: !1053, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !85, variables: !1055)
!1053 = !DISubroutineType(types: !1054)
!1054 = !{!34, !1010, !8, !34}
!1055 = !{!1056, !1057, !1058, !1059, !1060, !1062, !1063}
!1056 = !DILocalVariable(name: "o", arg: 1, scope: !1052, file: !129, line: 144, type: !1010)
!1057 = !DILocalVariable(name: "c", arg: 2, scope: !1052, file: !129, line: 144, type: !8)
!1058 = !DILocalVariable(name: "i", arg: 3, scope: !1052, file: !129, line: 144, type: !34)
!1059 = !DILocalVariable(name: "uc", scope: !1052, file: !129, line: 146, type: !523)
!1060 = !DILocalVariable(name: "p", scope: !1052, file: !129, line: 147, type: !1061)
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!1062 = !DILocalVariable(name: "shift", scope: !1052, file: !129, line: 149, type: !34)
!1063 = !DILocalVariable(name: "r", scope: !1052, file: !129, line: 150, type: !34)
!1064 = !DILocation(line: 144, column: 43, scope: !1052)
!1065 = !DILocation(line: 144, column: 51, scope: !1052)
!1066 = !DILocation(line: 144, column: 58, scope: !1052)
!1067 = !DILocation(line: 146, column: 17, scope: !1052)
!1068 = !DILocation(line: 148, column: 6, scope: !1052)
!1069 = !DILocation(line: 148, column: 62, scope: !1070)
!1070 = !DILexicalBlockFile(scope: !1052, file: !129, discriminator: 3)
!1071 = !DILocation(line: 148, column: 57, scope: !1070)
!1072 = !DILocation(line: 147, column: 17, scope: !1052)
!1073 = !DILocation(line: 149, column: 18, scope: !1052)
!1074 = !DILocation(line: 149, column: 15, scope: !1052)
!1075 = !DILocation(line: 149, column: 7, scope: !1052)
!1076 = !DILocation(line: 150, column: 12, scope: !1052)
!1077 = !DILocation(line: 150, column: 15, scope: !1052)
!1078 = !DILocation(line: 150, column: 25, scope: !1052)
!1079 = !DILocation(line: 150, column: 7, scope: !1052)
!1080 = !DILocation(line: 151, column: 13, scope: !1052)
!1081 = !DILocation(line: 151, column: 18, scope: !1052)
!1082 = !DILocation(line: 151, column: 23, scope: !1052)
!1083 = !DILocation(line: 151, column: 6, scope: !1052)
!1084 = !DILocation(line: 152, column: 3, scope: !1052)
!1085 = distinct !DISubprogram(name: "set_quoting_flags", scope: !129, file: !129, line: 160, type: !1086, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !85, variables: !1088)
!1086 = !DISubroutineType(types: !1087)
!1087 = !{!34, !1010, !34}
!1088 = !{!1089, !1090, !1091}
!1089 = !DILocalVariable(name: "o", arg: 1, scope: !1085, file: !129, line: 160, type: !1010)
!1090 = !DILocalVariable(name: "i", arg: 2, scope: !1085, file: !129, line: 160, type: !34)
!1091 = !DILocalVariable(name: "r", scope: !1085, file: !129, line: 162, type: !34)
!1092 = !DILocation(line: 160, column: 44, scope: !1085)
!1093 = !DILocation(line: 160, column: 51, scope: !1085)
!1094 = !DILocation(line: 163, column: 8, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !1085, file: !129, line: 163, column: 7)
!1096 = !DILocation(line: 163, column: 7, scope: !1085)
!1097 = !DILocation(line: 165, column: 10, scope: !1085)
!1098 = !{!1037, !732, i64 4}
!1099 = !DILocation(line: 162, column: 7, scope: !1085)
!1100 = !DILocation(line: 166, column: 12, scope: !1085)
!1101 = !DILocation(line: 167, column: 3, scope: !1085)
!1102 = distinct !DISubprogram(name: "set_custom_quoting", scope: !129, file: !129, line: 171, type: !1103, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !85, variables: !1105)
!1103 = !DISubroutineType(types: !1104)
!1104 = !{null, !1010, !6, !6}
!1105 = !{!1106, !1107, !1108}
!1106 = !DILocalVariable(name: "o", arg: 1, scope: !1102, file: !129, line: 171, type: !1010)
!1107 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1102, file: !129, line: 172, type: !6)
!1108 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1102, file: !129, line: 172, type: !6)
!1109 = !DILocation(line: 171, column: 45, scope: !1102)
!1110 = !DILocation(line: 172, column: 33, scope: !1102)
!1111 = !DILocation(line: 172, column: 57, scope: !1102)
!1112 = !DILocation(line: 174, column: 8, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !1102, file: !129, line: 174, column: 7)
!1114 = !DILocation(line: 174, column: 7, scope: !1102)
!1115 = !DILocation(line: 176, column: 6, scope: !1102)
!1116 = !DILocation(line: 176, column: 12, scope: !1102)
!1117 = !DILocation(line: 177, column: 8, scope: !1118)
!1118 = distinct !DILexicalBlock(scope: !1102, file: !129, line: 177, column: 7)
!1119 = !DILocation(line: 177, column: 23, scope: !1120)
!1120 = !DILexicalBlockFile(scope: !1118, file: !129, discriminator: 1)
!1121 = !DILocation(line: 177, column: 19, scope: !1118)
!1122 = !DILocation(line: 178, column: 5, scope: !1118)
!1123 = !DILocation(line: 179, column: 6, scope: !1102)
!1124 = !DILocation(line: 179, column: 17, scope: !1102)
!1125 = !{!1037, !651, i64 40}
!1126 = !DILocation(line: 180, column: 6, scope: !1102)
!1127 = !DILocation(line: 180, column: 18, scope: !1102)
!1128 = !{!1037, !651, i64 48}
!1129 = !DILocation(line: 181, column: 1, scope: !1102)
!1130 = distinct !DISubprogram(name: "quotearg_buffer", scope: !129, file: !129, line: 776, type: !1131, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !85, variables: !1133)
!1131 = !DISubroutineType(types: !1132)
!1132 = !{!123, !14, !123, !6, !123, !1028}
!1133 = !{!1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141}
!1134 = !DILocalVariable(name: "buffer", arg: 1, scope: !1130, file: !129, line: 776, type: !14)
!1135 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1130, file: !129, line: 776, type: !123)
!1136 = !DILocalVariable(name: "arg", arg: 3, scope: !1130, file: !129, line: 777, type: !6)
!1137 = !DILocalVariable(name: "argsize", arg: 4, scope: !1130, file: !129, line: 777, type: !123)
!1138 = !DILocalVariable(name: "o", arg: 5, scope: !1130, file: !129, line: 778, type: !1028)
!1139 = !DILocalVariable(name: "p", scope: !1130, file: !129, line: 780, type: !1028)
!1140 = !DILocalVariable(name: "e", scope: !1130, file: !129, line: 781, type: !34)
!1141 = !DILocalVariable(name: "r", scope: !1130, file: !129, line: 782, type: !123)
!1142 = !DILocation(line: 776, column: 24, scope: !1130)
!1143 = !DILocation(line: 776, column: 39, scope: !1130)
!1144 = !DILocation(line: 777, column: 30, scope: !1130)
!1145 = !DILocation(line: 777, column: 42, scope: !1130)
!1146 = !DILocation(line: 778, column: 48, scope: !1130)
!1147 = !DILocation(line: 780, column: 37, scope: !1130)
!1148 = !DILocation(line: 780, column: 33, scope: !1130)
!1149 = !DILocation(line: 781, column: 11, scope: !1130)
!1150 = !DILocation(line: 781, column: 7, scope: !1130)
!1151 = !DILocation(line: 783, column: 43, scope: !1130)
!1152 = !DILocation(line: 783, column: 53, scope: !1130)
!1153 = !DILocation(line: 783, column: 60, scope: !1130)
!1154 = !DILocation(line: 784, column: 43, scope: !1130)
!1155 = !DILocation(line: 784, column: 58, scope: !1130)
!1156 = !DILocation(line: 782, column: 14, scope: !1130)
!1157 = !DILocation(line: 782, column: 10, scope: !1130)
!1158 = !DILocation(line: 785, column: 9, scope: !1130)
!1159 = !DILocation(line: 786, column: 3, scope: !1130)
!1160 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !129, file: !129, line: 248, type: !1161, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !85, variables: !1165)
!1161 = !DISubroutineType(types: !1162)
!1162 = !{!123, !14, !123, !6, !123, !88, !34, !1163, !6, !6}
!1163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1164, size: 64)
!1164 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !142)
!1165 = !{!1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1185, !1186, !1190, !1191, !1192, !1193, !1194, !1197, !1198, !1215, !1218, !1219, !1226}
!1166 = !DILocalVariable(name: "buffer", arg: 1, scope: !1160, file: !129, line: 248, type: !14)
!1167 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1160, file: !129, line: 248, type: !123)
!1168 = !DILocalVariable(name: "arg", arg: 3, scope: !1160, file: !129, line: 249, type: !6)
!1169 = !DILocalVariable(name: "argsize", arg: 4, scope: !1160, file: !129, line: 249, type: !123)
!1170 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1160, file: !129, line: 250, type: !88)
!1171 = !DILocalVariable(name: "flags", arg: 6, scope: !1160, file: !129, line: 250, type: !34)
!1172 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1160, file: !129, line: 251, type: !1163)
!1173 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1160, file: !129, line: 252, type: !6)
!1174 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1160, file: !129, line: 253, type: !6)
!1175 = !DILocalVariable(name: "i", scope: !1160, file: !129, line: 255, type: !123)
!1176 = !DILocalVariable(name: "len", scope: !1160, file: !129, line: 256, type: !123)
!1177 = !DILocalVariable(name: "orig_buffersize", scope: !1160, file: !129, line: 257, type: !123)
!1178 = !DILocalVariable(name: "quote_string", scope: !1160, file: !129, line: 258, type: !6)
!1179 = !DILocalVariable(name: "quote_string_len", scope: !1160, file: !129, line: 259, type: !123)
!1180 = !DILocalVariable(name: "backslash_escapes", scope: !1160, file: !129, line: 260, type: !49)
!1181 = !DILocalVariable(name: "unibyte_locale", scope: !1160, file: !129, line: 261, type: !49)
!1182 = !DILocalVariable(name: "elide_outer_quotes", scope: !1160, file: !129, line: 262, type: !49)
!1183 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1160, file: !129, line: 263, type: !49)
!1184 = !DILocalVariable(name: "encountered_single_quote", scope: !1160, file: !129, line: 264, type: !49)
!1185 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1160, file: !129, line: 265, type: !49)
!1186 = !DILocalVariable(name: "c", scope: !1187, file: !129, line: 394, type: !523)
!1187 = distinct !DILexicalBlock(scope: !1188, file: !129, line: 393, column: 5)
!1188 = distinct !DILexicalBlock(scope: !1189, file: !129, line: 392, column: 3)
!1189 = distinct !DILexicalBlock(scope: !1160, file: !129, line: 392, column: 3)
!1190 = !DILocalVariable(name: "esc", scope: !1187, file: !129, line: 395, type: !523)
!1191 = !DILocalVariable(name: "is_right_quote", scope: !1187, file: !129, line: 396, type: !49)
!1192 = !DILocalVariable(name: "escaping", scope: !1187, file: !129, line: 397, type: !49)
!1193 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1187, file: !129, line: 398, type: !49)
!1194 = !DILocalVariable(name: "m", scope: !1195, file: !129, line: 602, type: !123)
!1195 = distinct !DILexicalBlock(scope: !1196, file: !129, line: 600, column: 11)
!1196 = distinct !DILexicalBlock(scope: !1187, file: !129, line: 418, column: 9)
!1197 = !DILocalVariable(name: "printable", scope: !1195, file: !129, line: 604, type: !49)
!1198 = !DILocalVariable(name: "mbstate", scope: !1199, file: !129, line: 613, type: !1201)
!1199 = distinct !DILexicalBlock(scope: !1200, file: !129, line: 612, column: 15)
!1200 = distinct !DILexicalBlock(scope: !1195, file: !129, line: 606, column: 17)
!1201 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1202, line: 107, baseType: !1203)
!1202 = !DIFile(filename: "/usr/include/wchar.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1203 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1202, line: 95, baseType: !1204)
!1204 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1202, line: 83, size: 64, elements: !1205)
!1205 = !{!1206, !1207}
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1204, file: !1202, line: 85, baseType: !34, size: 32)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1204, file: !1202, line: 94, baseType: !1208, size: 32, offset: 32)
!1208 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1204, file: !1202, line: 86, size: 32, elements: !1209)
!1209 = !{!1210, !1211}
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1208, file: !1202, line: 89, baseType: !142, size: 32)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1208, file: !1202, line: 93, baseType: !1212, size: 32)
!1212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 32, elements: !1213)
!1213 = !{!1214}
!1214 = !DISubrange(count: 4)
!1215 = !DILocalVariable(name: "w", scope: !1216, file: !129, line: 623, type: !1217)
!1216 = distinct !DILexicalBlock(scope: !1199, file: !129, line: 622, column: 19)
!1217 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !124, line: 90, baseType: !34)
!1218 = !DILocalVariable(name: "bytes", scope: !1216, file: !129, line: 624, type: !123)
!1219 = !DILocalVariable(name: "j", scope: !1220, file: !129, line: 649, type: !123)
!1220 = distinct !DILexicalBlock(scope: !1221, file: !129, line: 648, column: 27)
!1221 = distinct !DILexicalBlock(scope: !1222, file: !129, line: 646, column: 29)
!1222 = distinct !DILexicalBlock(scope: !1223, file: !129, line: 641, column: 23)
!1223 = distinct !DILexicalBlock(scope: !1224, file: !129, line: 633, column: 30)
!1224 = distinct !DILexicalBlock(scope: !1225, file: !129, line: 628, column: 30)
!1225 = distinct !DILexicalBlock(scope: !1216, file: !129, line: 626, column: 25)
!1226 = !DILocalVariable(name: "ilim", scope: !1227, file: !129, line: 676, type: !123)
!1227 = distinct !DILexicalBlock(scope: !1228, file: !129, line: 673, column: 15)
!1228 = distinct !DILexicalBlock(scope: !1195, file: !129, line: 672, column: 17)
!1229 = !DILocation(line: 248, column: 33, scope: !1160)
!1230 = !DILocation(line: 248, column: 48, scope: !1160)
!1231 = !DILocation(line: 249, column: 39, scope: !1160)
!1232 = !DILocation(line: 249, column: 51, scope: !1160)
!1233 = !DILocation(line: 250, column: 46, scope: !1160)
!1234 = !DILocation(line: 250, column: 65, scope: !1160)
!1235 = !DILocation(line: 251, column: 47, scope: !1160)
!1236 = !DILocation(line: 252, column: 39, scope: !1160)
!1237 = !DILocation(line: 253, column: 39, scope: !1160)
!1238 = !DILocation(line: 256, column: 10, scope: !1160)
!1239 = !DILocation(line: 257, column: 10, scope: !1160)
!1240 = !DILocation(line: 258, column: 15, scope: !1160)
!1241 = !DILocation(line: 259, column: 10, scope: !1160)
!1242 = !DILocation(line: 260, column: 8, scope: !1160)
!1243 = !DILocation(line: 261, column: 25, scope: !1160)
!1244 = !DILocation(line: 261, column: 36, scope: !1160)
!1245 = !DILocation(line: 262, column: 8, scope: !1160)
!1246 = !DILocation(line: 263, column: 8, scope: !1160)
!1247 = !DILocation(line: 264, column: 8, scope: !1160)
!1248 = !DILocation(line: 265, column: 8, scope: !1160)
!1249 = !DILocation(line: 265, column: 3, scope: !1160)
!1250 = !DILocation(line: 308, column: 3, scope: !1160)
!1251 = !DILocation(line: 315, column: 11, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !1160, file: !129, line: 309, column: 5)
!1253 = !DILocation(line: 315, column: 12, scope: !1254)
!1254 = distinct !DILexicalBlock(scope: !1252, file: !129, line: 315, column: 11)
!1255 = !DILocation(line: 316, column: 9, scope: !1256)
!1256 = !DILexicalBlockFile(scope: !1257, file: !129, discriminator: 1)
!1257 = distinct !DILexicalBlock(scope: !1258, file: !129, line: 316, column: 9)
!1258 = distinct !DILexicalBlock(scope: !1254, file: !129, line: 316, column: 9)
!1259 = !DILocation(line: 316, column: 9, scope: !1260)
!1260 = !DILexicalBlockFile(scope: !1258, file: !129, discriminator: 1)
!1261 = !DILocation(line: 316, column: 9, scope: !1262)
!1262 = !DILexicalBlockFile(scope: !1257, file: !129, discriminator: 2)
!1263 = !DILocation(line: 354, column: 26, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !1265, file: !129, line: 332, column: 11)
!1265 = distinct !DILexicalBlock(scope: !1266, file: !129, line: 331, column: 13)
!1266 = distinct !DILexicalBlock(scope: !1252, file: !129, line: 330, column: 7)
!1267 = !DILocation(line: 355, column: 27, scope: !1264)
!1268 = !DILocation(line: 356, column: 11, scope: !1264)
!1269 = !DILocation(line: 357, column: 14, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1266, file: !129, line: 357, column: 13)
!1271 = !DILocation(line: 357, column: 13, scope: !1266)
!1272 = !DILocation(line: 358, column: 43, scope: !1273)
!1273 = !DILexicalBlockFile(scope: !1274, file: !129, discriminator: 1)
!1274 = distinct !DILexicalBlock(scope: !1275, file: !129, line: 358, column: 11)
!1275 = distinct !DILexicalBlock(scope: !1270, file: !129, line: 358, column: 11)
!1276 = !DILocation(line: 358, column: 11, scope: !1277)
!1277 = !DILexicalBlockFile(scope: !1275, file: !129, discriminator: 1)
!1278 = !DILocation(line: 359, column: 13, scope: !1279)
!1279 = !DILexicalBlockFile(scope: !1280, file: !129, discriminator: 1)
!1280 = distinct !DILexicalBlock(scope: !1281, file: !129, line: 359, column: 13)
!1281 = distinct !DILexicalBlock(scope: !1274, file: !129, line: 359, column: 13)
!1282 = !DILocation(line: 359, column: 13, scope: !1283)
!1283 = !DILexicalBlockFile(scope: !1281, file: !129, discriminator: 1)
!1284 = !DILocation(line: 359, column: 13, scope: !1285)
!1285 = !DILexicalBlockFile(scope: !1280, file: !129, discriminator: 2)
!1286 = !DILocation(line: 359, column: 13, scope: !1287)
!1287 = !DILexicalBlockFile(scope: !1281, file: !129, discriminator: 3)
!1288 = !DILocation(line: 358, column: 70, scope: !1289)
!1289 = !DILexicalBlockFile(scope: !1274, file: !129, discriminator: 2)
!1290 = distinct !{!1290, !1291, !1292}
!1291 = !DILocation(line: 358, column: 11, scope: !1275)
!1292 = !DILocation(line: 359, column: 13, scope: !1275)
!1293 = !DILocation(line: 362, column: 28, scope: !1266)
!1294 = !DILocation(line: 364, column: 7, scope: !1252)
!1295 = !DILocation(line: 367, column: 7, scope: !1252)
!1296 = !DILocation(line: 370, column: 7, scope: !1252)
!1297 = !DILocation(line: 373, column: 12, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !1252, file: !129, line: 373, column: 11)
!1299 = !DILocation(line: 373, column: 11, scope: !1252)
!1300 = !DILocation(line: 378, column: 12, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !1252, file: !129, line: 378, column: 11)
!1302 = !DILocation(line: 378, column: 11, scope: !1252)
!1303 = !DILocation(line: 379, column: 9, scope: !1304)
!1304 = !DILexicalBlockFile(scope: !1305, file: !129, discriminator: 1)
!1305 = distinct !DILexicalBlock(scope: !1306, file: !129, line: 379, column: 9)
!1306 = distinct !DILexicalBlock(scope: !1301, file: !129, line: 379, column: 9)
!1307 = !DILocation(line: 379, column: 9, scope: !1308)
!1308 = !DILexicalBlockFile(scope: !1306, file: !129, discriminator: 1)
!1309 = !DILocation(line: 379, column: 9, scope: !1310)
!1310 = !DILexicalBlockFile(scope: !1305, file: !129, discriminator: 2)
!1311 = !DILocation(line: 386, column: 7, scope: !1252)
!1312 = !DILocation(line: 389, column: 7, scope: !1252)
!1313 = !DILocation(line: 255, column: 10, scope: !1160)
!1314 = !DILocation(line: 392, column: 8, scope: !1189)
!1315 = !DILocation(line: 392, column: 27, scope: !1316)
!1316 = !DILexicalBlockFile(scope: !1188, file: !129, discriminator: 1)
!1317 = !DILocation(line: 392, column: 19, scope: !1316)
!1318 = !DILocation(line: 392, column: 60, scope: !1319)
!1319 = !DILexicalBlockFile(scope: !1188, file: !129, discriminator: 3)
!1320 = !DILocation(line: 392, column: 3, scope: !1321)
!1321 = !DILexicalBlockFile(scope: !1189, file: !129, discriminator: 4)
!1322 = !DILocation(line: 392, column: 41, scope: !1323)
!1323 = !DILexicalBlockFile(scope: !1188, file: !129, discriminator: 2)
!1324 = !DILocation(line: 392, column: 48, scope: !1323)
!1325 = !DILocation(line: 396, column: 12, scope: !1187)
!1326 = !DILocation(line: 397, column: 12, scope: !1187)
!1327 = !DILocation(line: 398, column: 12, scope: !1187)
!1328 = !DILocation(line: 401, column: 11, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !1187, file: !129, line: 400, column: 11)
!1330 = !DILocation(line: 403, column: 17, scope: !1331)
!1331 = !DILexicalBlockFile(scope: !1329, file: !129, discriminator: 1)
!1332 = !DILocation(line: 404, column: 39, scope: !1329)
!1333 = !DILocation(line: 408, column: 32, scope: !1329)
!1334 = !DILocation(line: 404, column: 19, scope: !1335)
!1335 = !DILexicalBlockFile(scope: !1329, file: !129, discriminator: 2)
!1336 = !DILocation(line: 404, column: 15, scope: !1337)
!1337 = !DILexicalBlockFile(scope: !1329, file: !129, discriminator: 4)
!1338 = !DILocation(line: 409, column: 11, scope: !1329)
!1339 = !DILocation(line: 409, column: 26, scope: !1331)
!1340 = !DILocation(line: 409, column: 14, scope: !1331)
!1341 = !DILocation(line: 400, column: 11, scope: !1342)
!1342 = !DILexicalBlockFile(scope: !1187, file: !129, discriminator: 1)
!1343 = !DILocation(line: 416, column: 11, scope: !1187)
!1344 = !DILocation(line: 394, column: 21, scope: !1187)
!1345 = !DILocation(line: 417, column: 7, scope: !1187)
!1346 = !DILocation(line: 420, column: 15, scope: !1196)
!1347 = !DILocation(line: 422, column: 15, scope: !1348)
!1348 = !DILexicalBlockFile(scope: !1349, file: !129, discriminator: 1)
!1349 = distinct !DILexicalBlock(scope: !1350, file: !129, line: 422, column: 15)
!1350 = distinct !DILexicalBlock(scope: !1351, file: !129, line: 421, column: 13)
!1351 = distinct !DILexicalBlock(scope: !1196, file: !129, line: 420, column: 15)
!1352 = !DILocation(line: 422, column: 15, scope: !1353)
!1353 = !DILexicalBlockFile(scope: !1354, file: !129, discriminator: 4)
!1354 = distinct !DILexicalBlock(scope: !1349, file: !129, line: 422, column: 15)
!1355 = !DILocation(line: 422, column: 15, scope: !1356)
!1356 = !DILexicalBlockFile(scope: !1354, file: !129, discriminator: 3)
!1357 = !DILocation(line: 422, column: 15, scope: !1358)
!1358 = !DILexicalBlockFile(scope: !1359, file: !129, discriminator: 6)
!1359 = distinct !DILexicalBlock(scope: !1360, file: !129, line: 422, column: 15)
!1360 = distinct !DILexicalBlock(scope: !1361, file: !129, line: 422, column: 15)
!1361 = distinct !DILexicalBlock(scope: !1354, file: !129, line: 422, column: 15)
!1362 = !DILocation(line: 422, column: 15, scope: !1363)
!1363 = !DILexicalBlockFile(scope: !1360, file: !129, discriminator: 6)
!1364 = !DILocation(line: 422, column: 15, scope: !1365)
!1365 = !DILexicalBlockFile(scope: !1359, file: !129, discriminator: 7)
!1366 = !DILocation(line: 422, column: 15, scope: !1367)
!1367 = !DILexicalBlockFile(scope: !1360, file: !129, discriminator: 8)
!1368 = !DILocation(line: 422, column: 15, scope: !1369)
!1369 = !DILexicalBlockFile(scope: !1370, file: !129, discriminator: 11)
!1370 = distinct !DILexicalBlock(scope: !1371, file: !129, line: 422, column: 15)
!1371 = distinct !DILexicalBlock(scope: !1361, file: !129, line: 422, column: 15)
!1372 = !DILocation(line: 422, column: 15, scope: !1373)
!1373 = !DILexicalBlockFile(scope: !1371, file: !129, discriminator: 11)
!1374 = !DILocation(line: 422, column: 15, scope: !1375)
!1375 = !DILexicalBlockFile(scope: !1370, file: !129, discriminator: 12)
!1376 = !DILocation(line: 422, column: 15, scope: !1377)
!1377 = !DILexicalBlockFile(scope: !1371, file: !129, discriminator: 13)
!1378 = !DILocation(line: 422, column: 15, scope: !1379)
!1379 = !DILexicalBlockFile(scope: !1380, file: !129, discriminator: 16)
!1380 = distinct !DILexicalBlock(scope: !1381, file: !129, line: 422, column: 15)
!1381 = distinct !DILexicalBlock(scope: !1361, file: !129, line: 422, column: 15)
!1382 = !DILocation(line: 422, column: 15, scope: !1383)
!1383 = !DILexicalBlockFile(scope: !1381, file: !129, discriminator: 16)
!1384 = !DILocation(line: 422, column: 15, scope: !1385)
!1385 = !DILexicalBlockFile(scope: !1380, file: !129, discriminator: 17)
!1386 = !DILocation(line: 422, column: 15, scope: !1387)
!1387 = !DILexicalBlockFile(scope: !1381, file: !129, discriminator: 18)
!1388 = !DILocation(line: 422, column: 15, scope: !1389)
!1389 = !DILexicalBlockFile(scope: !1361, file: !129, discriminator: 20)
!1390 = !DILocation(line: 422, column: 15, scope: !1391)
!1391 = !DILexicalBlockFile(scope: !1392, file: !129, discriminator: 22)
!1392 = distinct !DILexicalBlock(scope: !1393, file: !129, line: 422, column: 15)
!1393 = distinct !DILexicalBlock(scope: !1349, file: !129, line: 422, column: 15)
!1394 = !DILocation(line: 422, column: 15, scope: !1395)
!1395 = !DILexicalBlockFile(scope: !1393, file: !129, discriminator: 22)
!1396 = !DILocation(line: 422, column: 15, scope: !1397)
!1397 = !DILexicalBlockFile(scope: !1392, file: !129, discriminator: 23)
!1398 = !DILocation(line: 422, column: 15, scope: !1399)
!1399 = !DILexicalBlockFile(scope: !1393, file: !129, discriminator: 24)
!1400 = !DILocation(line: 430, column: 19, scope: !1401)
!1401 = distinct !DILexicalBlock(scope: !1350, file: !129, line: 429, column: 19)
!1402 = !DILocation(line: 430, column: 24, scope: !1403)
!1403 = !DILexicalBlockFile(scope: !1401, file: !129, discriminator: 1)
!1404 = !DILocation(line: 430, column: 28, scope: !1403)
!1405 = !DILocation(line: 430, column: 38, scope: !1403)
!1406 = !DILocation(line: 430, column: 48, scope: !1407)
!1407 = !DILexicalBlockFile(scope: !1401, file: !129, discriminator: 2)
!1408 = !DILocation(line: 430, column: 59, scope: !1407)
!1409 = !DILocation(line: 432, column: 19, scope: !1410)
!1410 = !DILexicalBlockFile(scope: !1411, file: !129, discriminator: 1)
!1411 = distinct !DILexicalBlock(scope: !1412, file: !129, line: 432, column: 19)
!1412 = distinct !DILexicalBlock(scope: !1413, file: !129, line: 432, column: 19)
!1413 = distinct !DILexicalBlock(scope: !1401, file: !129, line: 431, column: 17)
!1414 = !DILocation(line: 432, column: 19, scope: !1415)
!1415 = !DILexicalBlockFile(scope: !1412, file: !129, discriminator: 1)
!1416 = !DILocation(line: 432, column: 19, scope: !1417)
!1417 = !DILexicalBlockFile(scope: !1411, file: !129, discriminator: 2)
!1418 = !DILocation(line: 432, column: 19, scope: !1419)
!1419 = !DILexicalBlockFile(scope: !1412, file: !129, discriminator: 3)
!1420 = !DILocation(line: 433, column: 19, scope: !1421)
!1421 = !DILexicalBlockFile(scope: !1422, file: !129, discriminator: 1)
!1422 = distinct !DILexicalBlock(scope: !1423, file: !129, line: 433, column: 19)
!1423 = distinct !DILexicalBlock(scope: !1413, file: !129, line: 433, column: 19)
!1424 = !DILocation(line: 433, column: 19, scope: !1425)
!1425 = !DILexicalBlockFile(scope: !1423, file: !129, discriminator: 1)
!1426 = !DILocation(line: 433, column: 19, scope: !1427)
!1427 = !DILexicalBlockFile(scope: !1422, file: !129, discriminator: 2)
!1428 = !DILocation(line: 433, column: 19, scope: !1429)
!1429 = !DILexicalBlockFile(scope: !1423, file: !129, discriminator: 3)
!1430 = !DILocation(line: 434, column: 17, scope: !1413)
!1431 = !DILocation(line: 441, column: 20, scope: !1351)
!1432 = !DILocation(line: 446, column: 11, scope: !1196)
!1433 = !DILocation(line: 449, column: 19, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !1196, file: !129, line: 447, column: 13)
!1435 = !DILocation(line: 455, column: 19, scope: !1436)
!1436 = distinct !DILexicalBlock(scope: !1434, file: !129, line: 454, column: 19)
!1437 = !DILocation(line: 455, column: 24, scope: !1438)
!1438 = !DILexicalBlockFile(scope: !1436, file: !129, discriminator: 1)
!1439 = !DILocation(line: 455, column: 28, scope: !1438)
!1440 = !DILocation(line: 455, column: 38, scope: !1438)
!1441 = !DILocation(line: 455, column: 47, scope: !1442)
!1442 = !DILexicalBlockFile(scope: !1436, file: !129, discriminator: 2)
!1443 = !DILocation(line: 455, column: 41, scope: !1442)
!1444 = !DILocation(line: 455, column: 52, scope: !1442)
!1445 = !DILocation(line: 454, column: 19, scope: !1446)
!1446 = !DILexicalBlockFile(scope: !1434, file: !129, discriminator: 1)
!1447 = !DILocation(line: 456, column: 25, scope: !1436)
!1448 = !DILocation(line: 456, column: 17, scope: !1436)
!1449 = !DILocation(line: 463, column: 25, scope: !1450)
!1450 = distinct !DILexicalBlock(scope: !1436, file: !129, line: 457, column: 19)
!1451 = !DILocation(line: 467, column: 21, scope: !1452)
!1452 = !DILexicalBlockFile(scope: !1453, file: !129, discriminator: 1)
!1453 = distinct !DILexicalBlock(scope: !1454, file: !129, line: 467, column: 21)
!1454 = distinct !DILexicalBlock(scope: !1450, file: !129, line: 467, column: 21)
!1455 = !DILocation(line: 467, column: 21, scope: !1456)
!1456 = !DILexicalBlockFile(scope: !1454, file: !129, discriminator: 1)
!1457 = !DILocation(line: 467, column: 21, scope: !1458)
!1458 = !DILexicalBlockFile(scope: !1453, file: !129, discriminator: 2)
!1459 = !DILocation(line: 467, column: 21, scope: !1460)
!1460 = !DILexicalBlockFile(scope: !1454, file: !129, discriminator: 3)
!1461 = !DILocation(line: 468, column: 21, scope: !1462)
!1462 = !DILexicalBlockFile(scope: !1463, file: !129, discriminator: 1)
!1463 = distinct !DILexicalBlock(scope: !1464, file: !129, line: 468, column: 21)
!1464 = distinct !DILexicalBlock(scope: !1450, file: !129, line: 468, column: 21)
!1465 = !DILocation(line: 468, column: 21, scope: !1466)
!1466 = !DILexicalBlockFile(scope: !1464, file: !129, discriminator: 1)
!1467 = !DILocation(line: 468, column: 21, scope: !1468)
!1468 = !DILexicalBlockFile(scope: !1463, file: !129, discriminator: 2)
!1469 = !DILocation(line: 468, column: 21, scope: !1470)
!1470 = !DILexicalBlockFile(scope: !1464, file: !129, discriminator: 3)
!1471 = !DILocation(line: 469, column: 21, scope: !1472)
!1472 = !DILexicalBlockFile(scope: !1473, file: !129, discriminator: 1)
!1473 = distinct !DILexicalBlock(scope: !1474, file: !129, line: 469, column: 21)
!1474 = distinct !DILexicalBlock(scope: !1450, file: !129, line: 469, column: 21)
!1475 = !DILocation(line: 469, column: 21, scope: !1476)
!1476 = !DILexicalBlockFile(scope: !1474, file: !129, discriminator: 1)
!1477 = !DILocation(line: 469, column: 21, scope: !1478)
!1478 = !DILexicalBlockFile(scope: !1473, file: !129, discriminator: 2)
!1479 = !DILocation(line: 469, column: 21, scope: !1480)
!1480 = !DILexicalBlockFile(scope: !1474, file: !129, discriminator: 3)
!1481 = !DILocation(line: 470, column: 21, scope: !1482)
!1482 = !DILexicalBlockFile(scope: !1483, file: !129, discriminator: 1)
!1483 = distinct !DILexicalBlock(scope: !1484, file: !129, line: 470, column: 21)
!1484 = distinct !DILexicalBlock(scope: !1450, file: !129, line: 470, column: 21)
!1485 = !DILocation(line: 470, column: 21, scope: !1486)
!1486 = !DILexicalBlockFile(scope: !1484, file: !129, discriminator: 1)
!1487 = !DILocation(line: 470, column: 21, scope: !1488)
!1488 = !DILexicalBlockFile(scope: !1483, file: !129, discriminator: 2)
!1489 = !DILocation(line: 470, column: 21, scope: !1490)
!1490 = !DILexicalBlockFile(scope: !1484, file: !129, discriminator: 3)
!1491 = !DILocation(line: 471, column: 21, scope: !1450)
!1492 = !DILocation(line: 395, column: 21, scope: !1187)
!1493 = !DILocation(line: 484, column: 31, scope: !1196)
!1494 = !DILocation(line: 485, column: 31, scope: !1196)
!1495 = !DILocation(line: 487, column: 31, scope: !1196)
!1496 = !DILocation(line: 488, column: 31, scope: !1196)
!1497 = !DILocation(line: 489, column: 31, scope: !1196)
!1498 = !DILocation(line: 492, column: 15, scope: !1196)
!1499 = !DILocation(line: 494, column: 19, scope: !1500)
!1500 = distinct !DILexicalBlock(scope: !1501, file: !129, line: 493, column: 13)
!1501 = distinct !DILexicalBlock(scope: !1196, file: !129, line: 492, column: 15)
!1502 = !DILocation(line: 501, column: 33, scope: !1503)
!1503 = distinct !DILexicalBlock(scope: !1196, file: !129, line: 501, column: 15)
!1504 = !DILocation(line: 506, column: 15, scope: !1505)
!1505 = distinct !DILexicalBlock(scope: !1196, file: !129, line: 505, column: 15)
!1506 = !DILocation(line: 510, column: 15, scope: !1196)
!1507 = !DILocation(line: 518, column: 26, scope: !1508)
!1508 = distinct !DILexicalBlock(scope: !1196, file: !129, line: 518, column: 15)
!1509 = !DILocation(line: 518, column: 15, scope: !1196)
!1510 = !DILocation(line: 518, column: 40, scope: !1511)
!1511 = !DILexicalBlockFile(scope: !1508, file: !129, discriminator: 1)
!1512 = !DILocation(line: 518, column: 47, scope: !1511)
!1513 = !DILocation(line: 522, column: 17, scope: !1514)
!1514 = distinct !DILexicalBlock(scope: !1196, file: !129, line: 522, column: 15)
!1515 = !DILocation(line: 518, column: 18, scope: !1511)
!1516 = !DILocation(line: 518, column: 65, scope: !1517)
!1517 = !DILexicalBlockFile(scope: !1508, file: !129, discriminator: 2)
!1518 = !DILocation(line: 518, column: 15, scope: !1519)
!1519 = !DILexicalBlockFile(scope: !1196, file: !129, discriminator: 2)
!1520 = !DILocation(line: 522, column: 15, scope: !1196)
!1521 = !DILocation(line: 526, column: 11, scope: !1196)
!1522 = !DILocation(line: 541, column: 15, scope: !1523)
!1523 = distinct !DILexicalBlock(scope: !1196, file: !129, line: 540, column: 15)
!1524 = !DILocation(line: 548, column: 15, scope: !1196)
!1525 = !DILocation(line: 550, column: 19, scope: !1526)
!1526 = distinct !DILexicalBlock(scope: !1527, file: !129, line: 549, column: 13)
!1527 = distinct !DILexicalBlock(scope: !1196, file: !129, line: 548, column: 15)
!1528 = !DILocation(line: 553, column: 19, scope: !1529)
!1529 = distinct !DILexicalBlock(scope: !1526, file: !129, line: 553, column: 19)
!1530 = !DILocation(line: 553, column: 35, scope: !1531)
!1531 = !DILexicalBlockFile(scope: !1529, file: !129, discriminator: 1)
!1532 = !DILocation(line: 553, column: 30, scope: !1529)
!1533 = !DILocation(line: 562, column: 15, scope: !1534)
!1534 = !DILexicalBlockFile(scope: !1535, file: !129, discriminator: 1)
!1535 = distinct !DILexicalBlock(scope: !1536, file: !129, line: 562, column: 15)
!1536 = distinct !DILexicalBlock(scope: !1526, file: !129, line: 562, column: 15)
!1537 = !DILocation(line: 562, column: 15, scope: !1538)
!1538 = !DILexicalBlockFile(scope: !1536, file: !129, discriminator: 1)
!1539 = !DILocation(line: 562, column: 15, scope: !1540)
!1540 = !DILexicalBlockFile(scope: !1535, file: !129, discriminator: 2)
!1541 = !DILocation(line: 562, column: 15, scope: !1542)
!1542 = !DILexicalBlockFile(scope: !1536, file: !129, discriminator: 3)
!1543 = !DILocation(line: 563, column: 15, scope: !1544)
!1544 = !DILexicalBlockFile(scope: !1545, file: !129, discriminator: 1)
!1545 = distinct !DILexicalBlock(scope: !1546, file: !129, line: 563, column: 15)
!1546 = distinct !DILexicalBlock(scope: !1526, file: !129, line: 563, column: 15)
!1547 = !DILocation(line: 563, column: 15, scope: !1548)
!1548 = !DILexicalBlockFile(scope: !1546, file: !129, discriminator: 1)
!1549 = !DILocation(line: 563, column: 15, scope: !1550)
!1550 = !DILexicalBlockFile(scope: !1545, file: !129, discriminator: 2)
!1551 = !DILocation(line: 563, column: 15, scope: !1552)
!1552 = !DILexicalBlockFile(scope: !1546, file: !129, discriminator: 3)
!1553 = !DILocation(line: 564, column: 15, scope: !1554)
!1554 = !DILexicalBlockFile(scope: !1555, file: !129, discriminator: 1)
!1555 = distinct !DILexicalBlock(scope: !1556, file: !129, line: 564, column: 15)
!1556 = distinct !DILexicalBlock(scope: !1526, file: !129, line: 564, column: 15)
!1557 = !DILocation(line: 564, column: 15, scope: !1558)
!1558 = !DILexicalBlockFile(scope: !1556, file: !129, discriminator: 1)
!1559 = !DILocation(line: 564, column: 15, scope: !1560)
!1560 = !DILexicalBlockFile(scope: !1555, file: !129, discriminator: 2)
!1561 = !DILocation(line: 564, column: 15, scope: !1562)
!1562 = !DILexicalBlockFile(scope: !1556, file: !129, discriminator: 3)
!1563 = !DILocation(line: 566, column: 13, scope: !1526)
!1564 = !DILocation(line: 606, column: 17, scope: !1195)
!1565 = !DILocation(line: 602, column: 20, scope: !1195)
!1566 = !DILocation(line: 609, column: 29, scope: !1567)
!1567 = distinct !DILexicalBlock(scope: !1200, file: !129, line: 607, column: 15)
!1568 = !{!1569, !1569, i64 0}
!1569 = !{!"short", !652, i64 0}
!1570 = !DILocation(line: 609, column: 27, scope: !1567)
!1571 = !DILocation(line: 604, column: 18, scope: !1195)
!1572 = !DILocation(line: 610, column: 15, scope: !1567)
!1573 = !DILocation(line: 613, column: 17, scope: !1199)
!1574 = !DILocation(line: 614, column: 17, scope: !1199)
!1575 = !DILocation(line: 618, column: 29, scope: !1576)
!1576 = distinct !DILexicalBlock(scope: !1199, file: !129, line: 618, column: 21)
!1577 = !DILocation(line: 618, column: 21, scope: !1199)
!1578 = distinct !{!1578, !1579, !1580}
!1579 = !DILocation(line: 621, column: 17, scope: !1199)
!1580 = !DILocation(line: 667, column: 44, scope: !1199)
!1581 = !DILocation(line: 619, column: 29, scope: !1576)
!1582 = !DILocation(line: 619, column: 19, scope: !1576)
!1583 = !DILocation(line: 623, column: 21, scope: !1216)
!1584 = !DILocation(line: 624, column: 56, scope: !1216)
!1585 = !DILocation(line: 624, column: 50, scope: !1216)
!1586 = !DILocation(line: 625, column: 53, scope: !1216)
!1587 = !DILocation(line: 613, column: 27, scope: !1199)
!1588 = !DILocation(line: 623, column: 29, scope: !1216)
!1589 = !DILocation(line: 624, column: 36, scope: !1216)
!1590 = !DILocation(line: 624, column: 28, scope: !1216)
!1591 = !DILocation(line: 626, column: 25, scope: !1216)
!1592 = !DILocation(line: 636, column: 38, scope: !1593)
!1593 = !DILexicalBlockFile(scope: !1594, file: !129, discriminator: 1)
!1594 = distinct !DILexicalBlock(scope: !1223, file: !129, line: 634, column: 23)
!1595 = !DILocation(line: 636, column: 48, scope: !1593)
!1596 = !DILocation(line: 636, column: 51, scope: !1597)
!1597 = !DILexicalBlockFile(scope: !1594, file: !129, discriminator: 2)
!1598 = !DILocation(line: 636, column: 48, scope: !1597)
!1599 = !DILocation(line: 636, column: 25, scope: !1600)
!1600 = !DILexicalBlockFile(scope: !1594, file: !129, discriminator: 3)
!1601 = !DILocation(line: 637, column: 28, scope: !1594)
!1602 = !DILocation(line: 636, column: 34, scope: !1593)
!1603 = distinct !{!1603, !1604, !1601}
!1604 = !DILocation(line: 636, column: 25, scope: !1594)
!1605 = !DILocation(line: 650, column: 43, scope: !1606)
!1606 = !DILexicalBlockFile(scope: !1607, file: !129, discriminator: 1)
!1607 = distinct !DILexicalBlock(scope: !1608, file: !129, line: 650, column: 29)
!1608 = distinct !DILexicalBlock(scope: !1220, file: !129, line: 650, column: 29)
!1609 = !DILocation(line: 647, column: 29, scope: !1221)
!1610 = !DILocation(line: 649, column: 36, scope: !1220)
!1611 = !DILocation(line: 651, column: 49, scope: !1607)
!1612 = !DILocation(line: 651, column: 39, scope: !1607)
!1613 = !DILocation(line: 651, column: 31, scope: !1607)
!1614 = !DILocation(line: 650, column: 53, scope: !1615)
!1615 = !DILexicalBlockFile(scope: !1607, file: !129, discriminator: 2)
!1616 = !DILocation(line: 650, column: 29, scope: !1617)
!1617 = !DILexicalBlockFile(scope: !1608, file: !129, discriminator: 1)
!1618 = distinct !{!1618, !1619, !1620}
!1619 = !DILocation(line: 650, column: 29, scope: !1608)
!1620 = !DILocation(line: 659, column: 33, scope: !1608)
!1621 = !DILocation(line: 666, column: 19, scope: !1199)
!1622 = !DILocation(line: 662, column: 41, scope: !1623)
!1623 = distinct !DILexicalBlock(scope: !1222, file: !129, line: 662, column: 29)
!1624 = !DILocation(line: 662, column: 31, scope: !1623)
!1625 = !DILocation(line: 662, column: 29, scope: !1222)
!1626 = !DILocation(line: 664, column: 27, scope: !1222)
!1627 = !DILocation(line: 667, column: 26, scope: !1199)
!1628 = !DILocation(line: 667, column: 24, scope: !1199)
!1629 = !DILocation(line: 666, column: 19, scope: !1630)
!1630 = !DILexicalBlockFile(scope: !1216, file: !129, discriminator: 3)
!1631 = !DILocation(line: 668, column: 15, scope: !1200)
!1632 = !DILocation(line: 670, column: 40, scope: !1195)
!1633 = !DILocation(line: 672, column: 19, scope: !1228)
!1634 = !DILocation(line: 672, column: 45, scope: !1635)
!1635 = !DILexicalBlockFile(scope: !1228, file: !129, discriminator: 1)
!1636 = !DILocation(line: 672, column: 23, scope: !1228)
!1637 = !DILocation(line: 676, column: 33, scope: !1227)
!1638 = !DILocation(line: 676, column: 24, scope: !1227)
!1639 = !DILocation(line: 678, column: 17, scope: !1227)
!1640 = !DILocation(line: 680, column: 43, scope: !1641)
!1641 = distinct !DILexicalBlock(scope: !1642, file: !129, line: 680, column: 25)
!1642 = distinct !DILexicalBlock(scope: !1643, file: !129, line: 679, column: 19)
!1643 = distinct !DILexicalBlock(scope: !1644, file: !129, line: 678, column: 17)
!1644 = distinct !DILexicalBlock(scope: !1227, file: !129, line: 678, column: 17)
!1645 = !DILocation(line: 682, column: 25, scope: !1646)
!1646 = !DILexicalBlockFile(scope: !1647, file: !129, discriminator: 1)
!1647 = distinct !DILexicalBlock(scope: !1648, file: !129, line: 682, column: 25)
!1648 = distinct !DILexicalBlock(scope: !1641, file: !129, line: 681, column: 23)
!1649 = !DILocation(line: 682, column: 25, scope: !1650)
!1650 = !DILexicalBlockFile(scope: !1651, file: !129, discriminator: 4)
!1651 = distinct !DILexicalBlock(scope: !1647, file: !129, line: 682, column: 25)
!1652 = !DILocation(line: 682, column: 25, scope: !1653)
!1653 = !DILexicalBlockFile(scope: !1651, file: !129, discriminator: 3)
!1654 = !DILocation(line: 682, column: 25, scope: !1655)
!1655 = !DILexicalBlockFile(scope: !1656, file: !129, discriminator: 6)
!1656 = distinct !DILexicalBlock(scope: !1657, file: !129, line: 682, column: 25)
!1657 = distinct !DILexicalBlock(scope: !1658, file: !129, line: 682, column: 25)
!1658 = distinct !DILexicalBlock(scope: !1651, file: !129, line: 682, column: 25)
!1659 = !DILocation(line: 682, column: 25, scope: !1660)
!1660 = !DILexicalBlockFile(scope: !1657, file: !129, discriminator: 6)
!1661 = !DILocation(line: 682, column: 25, scope: !1662)
!1662 = !DILexicalBlockFile(scope: !1656, file: !129, discriminator: 7)
!1663 = !DILocation(line: 682, column: 25, scope: !1664)
!1664 = !DILexicalBlockFile(scope: !1657, file: !129, discriminator: 8)
!1665 = !DILocation(line: 682, column: 25, scope: !1666)
!1666 = !DILexicalBlockFile(scope: !1667, file: !129, discriminator: 11)
!1667 = distinct !DILexicalBlock(scope: !1668, file: !129, line: 682, column: 25)
!1668 = distinct !DILexicalBlock(scope: !1658, file: !129, line: 682, column: 25)
!1669 = !DILocation(line: 682, column: 25, scope: !1670)
!1670 = !DILexicalBlockFile(scope: !1668, file: !129, discriminator: 11)
!1671 = !DILocation(line: 682, column: 25, scope: !1672)
!1672 = !DILexicalBlockFile(scope: !1667, file: !129, discriminator: 12)
!1673 = !DILocation(line: 682, column: 25, scope: !1674)
!1674 = !DILexicalBlockFile(scope: !1668, file: !129, discriminator: 13)
!1675 = !DILocation(line: 682, column: 25, scope: !1676)
!1676 = !DILexicalBlockFile(scope: !1677, file: !129, discriminator: 16)
!1677 = distinct !DILexicalBlock(scope: !1678, file: !129, line: 682, column: 25)
!1678 = distinct !DILexicalBlock(scope: !1658, file: !129, line: 682, column: 25)
!1679 = !DILocation(line: 682, column: 25, scope: !1680)
!1680 = !DILexicalBlockFile(scope: !1678, file: !129, discriminator: 16)
!1681 = !DILocation(line: 682, column: 25, scope: !1682)
!1682 = !DILexicalBlockFile(scope: !1677, file: !129, discriminator: 17)
!1683 = !DILocation(line: 682, column: 25, scope: !1684)
!1684 = !DILexicalBlockFile(scope: !1678, file: !129, discriminator: 18)
!1685 = !DILocation(line: 682, column: 25, scope: !1686)
!1686 = !DILexicalBlockFile(scope: !1658, file: !129, discriminator: 20)
!1687 = !DILocation(line: 682, column: 25, scope: !1688)
!1688 = !DILexicalBlockFile(scope: !1689, file: !129, discriminator: 22)
!1689 = distinct !DILexicalBlock(scope: !1690, file: !129, line: 682, column: 25)
!1690 = distinct !DILexicalBlock(scope: !1647, file: !129, line: 682, column: 25)
!1691 = !DILocation(line: 682, column: 25, scope: !1692)
!1692 = !DILexicalBlockFile(scope: !1690, file: !129, discriminator: 22)
!1693 = !DILocation(line: 682, column: 25, scope: !1694)
!1694 = !DILexicalBlockFile(scope: !1689, file: !129, discriminator: 23)
!1695 = !DILocation(line: 682, column: 25, scope: !1696)
!1696 = !DILexicalBlockFile(scope: !1690, file: !129, discriminator: 24)
!1697 = !DILocation(line: 683, column: 25, scope: !1698)
!1698 = !DILexicalBlockFile(scope: !1699, file: !129, discriminator: 1)
!1699 = distinct !DILexicalBlock(scope: !1700, file: !129, line: 683, column: 25)
!1700 = distinct !DILexicalBlock(scope: !1648, file: !129, line: 683, column: 25)
!1701 = !DILocation(line: 683, column: 25, scope: !1702)
!1702 = !DILexicalBlockFile(scope: !1700, file: !129, discriminator: 1)
!1703 = !DILocation(line: 683, column: 25, scope: !1704)
!1704 = !DILexicalBlockFile(scope: !1699, file: !129, discriminator: 2)
!1705 = !DILocation(line: 683, column: 25, scope: !1706)
!1706 = !DILexicalBlockFile(scope: !1700, file: !129, discriminator: 3)
!1707 = !DILocation(line: 684, column: 25, scope: !1708)
!1708 = !DILexicalBlockFile(scope: !1709, file: !129, discriminator: 1)
!1709 = distinct !DILexicalBlock(scope: !1710, file: !129, line: 684, column: 25)
!1710 = distinct !DILexicalBlock(scope: !1648, file: !129, line: 684, column: 25)
!1711 = !DILocation(line: 684, column: 25, scope: !1712)
!1712 = !DILexicalBlockFile(scope: !1710, file: !129, discriminator: 1)
!1713 = !DILocation(line: 684, column: 25, scope: !1714)
!1714 = !DILexicalBlockFile(scope: !1709, file: !129, discriminator: 2)
!1715 = !DILocation(line: 684, column: 25, scope: !1716)
!1716 = !DILexicalBlockFile(scope: !1710, file: !129, discriminator: 3)
!1717 = !DILocation(line: 685, column: 38, scope: !1648)
!1718 = !DILocation(line: 685, column: 33, scope: !1648)
!1719 = !DILocation(line: 686, column: 23, scope: !1648)
!1720 = !DILocation(line: 687, column: 30, scope: !1721)
!1721 = distinct !DILexicalBlock(scope: !1641, file: !129, line: 687, column: 30)
!1722 = !DILocation(line: 687, column: 30, scope: !1641)
!1723 = !DILocation(line: 689, column: 25, scope: !1724)
!1724 = !DILexicalBlockFile(scope: !1725, file: !129, discriminator: 1)
!1725 = distinct !DILexicalBlock(scope: !1726, file: !129, line: 689, column: 25)
!1726 = distinct !DILexicalBlock(scope: !1727, file: !129, line: 689, column: 25)
!1727 = distinct !DILexicalBlock(scope: !1721, file: !129, line: 688, column: 23)
!1728 = !DILocation(line: 689, column: 25, scope: !1729)
!1729 = !DILexicalBlockFile(scope: !1726, file: !129, discriminator: 1)
!1730 = !DILocation(line: 689, column: 25, scope: !1731)
!1731 = !DILexicalBlockFile(scope: !1725, file: !129, discriminator: 2)
!1732 = !DILocation(line: 689, column: 25, scope: !1733)
!1733 = !DILexicalBlockFile(scope: !1726, file: !129, discriminator: 3)
!1734 = !DILocation(line: 691, column: 23, scope: !1727)
!1735 = !DILocation(line: 692, column: 35, scope: !1736)
!1736 = distinct !DILexicalBlock(scope: !1642, file: !129, line: 692, column: 25)
!1737 = !DILocation(line: 692, column: 30, scope: !1736)
!1738 = !DILocation(line: 692, column: 25, scope: !1642)
!1739 = !DILocation(line: 694, column: 21, scope: !1740)
!1740 = !DILexicalBlockFile(scope: !1741, file: !129, discriminator: 1)
!1741 = distinct !DILexicalBlock(scope: !1742, file: !129, line: 694, column: 21)
!1742 = distinct !DILexicalBlock(scope: !1642, file: !129, line: 694, column: 21)
!1743 = !DILocation(line: 694, column: 21, scope: !1744)
!1744 = !DILexicalBlockFile(scope: !1741, file: !129, discriminator: 2)
!1745 = !DILocation(line: 694, column: 21, scope: !1746)
!1746 = !DILexicalBlockFile(scope: !1747, file: !129, discriminator: 4)
!1747 = distinct !DILexicalBlock(scope: !1748, file: !129, line: 694, column: 21)
!1748 = distinct !DILexicalBlock(scope: !1749, file: !129, line: 694, column: 21)
!1749 = distinct !DILexicalBlock(scope: !1741, file: !129, line: 694, column: 21)
!1750 = !DILocation(line: 694, column: 21, scope: !1751)
!1751 = !DILexicalBlockFile(scope: !1748, file: !129, discriminator: 4)
!1752 = !DILocation(line: 694, column: 21, scope: !1753)
!1753 = !DILexicalBlockFile(scope: !1747, file: !129, discriminator: 5)
!1754 = !DILocation(line: 694, column: 21, scope: !1755)
!1755 = !DILexicalBlockFile(scope: !1748, file: !129, discriminator: 6)
!1756 = !DILocation(line: 694, column: 21, scope: !1757)
!1757 = !DILexicalBlockFile(scope: !1758, file: !129, discriminator: 9)
!1758 = distinct !DILexicalBlock(scope: !1759, file: !129, line: 694, column: 21)
!1759 = distinct !DILexicalBlock(scope: !1749, file: !129, line: 694, column: 21)
!1760 = !DILocation(line: 694, column: 21, scope: !1761)
!1761 = !DILexicalBlockFile(scope: !1759, file: !129, discriminator: 9)
!1762 = !DILocation(line: 694, column: 21, scope: !1763)
!1763 = !DILexicalBlockFile(scope: !1758, file: !129, discriminator: 10)
!1764 = !DILocation(line: 694, column: 21, scope: !1765)
!1765 = !DILexicalBlockFile(scope: !1759, file: !129, discriminator: 11)
!1766 = !DILocation(line: 694, column: 21, scope: !1767)
!1767 = !DILexicalBlockFile(scope: !1749, file: !129, discriminator: 13)
!1768 = !DILocation(line: 695, column: 21, scope: !1769)
!1769 = !DILexicalBlockFile(scope: !1770, file: !129, discriminator: 1)
!1770 = distinct !DILexicalBlock(scope: !1771, file: !129, line: 695, column: 21)
!1771 = distinct !DILexicalBlock(scope: !1642, file: !129, line: 695, column: 21)
!1772 = !DILocation(line: 695, column: 21, scope: !1773)
!1773 = !DILexicalBlockFile(scope: !1771, file: !129, discriminator: 1)
!1774 = !DILocation(line: 695, column: 21, scope: !1775)
!1775 = !DILexicalBlockFile(scope: !1770, file: !129, discriminator: 2)
!1776 = !DILocation(line: 695, column: 21, scope: !1777)
!1777 = !DILexicalBlockFile(scope: !1771, file: !129, discriminator: 3)
!1778 = !DILocation(line: 696, column: 25, scope: !1642)
!1779 = !DILocation(line: 678, column: 17, scope: !1780)
!1780 = !DILexicalBlockFile(scope: !1643, file: !129, discriminator: 1)
!1781 = distinct !{!1781, !1782, !1783}
!1782 = !DILocation(line: 678, column: 17, scope: !1644)
!1783 = !DILocation(line: 697, column: 19, scope: !1644)
!1784 = !DILocation(line: 704, column: 34, scope: !1785)
!1785 = distinct !DILexicalBlock(scope: !1187, file: !129, line: 704, column: 11)
!1786 = !DILocation(line: 706, column: 14, scope: !1785)
!1787 = !DILocation(line: 707, column: 14, scope: !1785)
!1788 = !DILocation(line: 707, column: 35, scope: !1789)
!1789 = !DILexicalBlockFile(scope: !1785, file: !129, discriminator: 1)
!1790 = !DILocation(line: 707, column: 17, scope: !1789)
!1791 = !DILocation(line: 707, column: 53, scope: !1789)
!1792 = !DILocation(line: 707, column: 47, scope: !1789)
!1793 = !DILocation(line: 707, column: 65, scope: !1789)
!1794 = !DILocation(line: 708, column: 15, scope: !1789)
!1795 = !DILocation(line: 708, column: 11, scope: !1785)
!1796 = !DILocation(line: 704, column: 11, scope: !1797)
!1797 = !DILexicalBlockFile(scope: !1187, file: !129, discriminator: 2)
!1798 = !DILocation(line: 712, column: 7, scope: !1799)
!1799 = !DILexicalBlockFile(scope: !1800, file: !129, discriminator: 1)
!1800 = distinct !DILexicalBlock(scope: !1187, file: !129, line: 712, column: 7)
!1801 = !DILocation(line: 712, column: 7, scope: !1802)
!1802 = !DILexicalBlockFile(scope: !1803, file: !129, discriminator: 4)
!1803 = distinct !DILexicalBlock(scope: !1800, file: !129, line: 712, column: 7)
!1804 = !DILocation(line: 712, column: 7, scope: !1805)
!1805 = !DILexicalBlockFile(scope: !1803, file: !129, discriminator: 3)
!1806 = !DILocation(line: 712, column: 7, scope: !1807)
!1807 = !DILexicalBlockFile(scope: !1808, file: !129, discriminator: 6)
!1808 = distinct !DILexicalBlock(scope: !1809, file: !129, line: 712, column: 7)
!1809 = distinct !DILexicalBlock(scope: !1810, file: !129, line: 712, column: 7)
!1810 = distinct !DILexicalBlock(scope: !1803, file: !129, line: 712, column: 7)
!1811 = !DILocation(line: 712, column: 7, scope: !1812)
!1812 = !DILexicalBlockFile(scope: !1809, file: !129, discriminator: 6)
!1813 = !DILocation(line: 712, column: 7, scope: !1814)
!1814 = !DILexicalBlockFile(scope: !1808, file: !129, discriminator: 7)
!1815 = !DILocation(line: 712, column: 7, scope: !1816)
!1816 = !DILexicalBlockFile(scope: !1809, file: !129, discriminator: 8)
!1817 = !DILocation(line: 712, column: 7, scope: !1818)
!1818 = !DILexicalBlockFile(scope: !1819, file: !129, discriminator: 11)
!1819 = distinct !DILexicalBlock(scope: !1820, file: !129, line: 712, column: 7)
!1820 = distinct !DILexicalBlock(scope: !1810, file: !129, line: 712, column: 7)
!1821 = !DILocation(line: 712, column: 7, scope: !1822)
!1822 = !DILexicalBlockFile(scope: !1820, file: !129, discriminator: 11)
!1823 = !DILocation(line: 712, column: 7, scope: !1824)
!1824 = !DILexicalBlockFile(scope: !1819, file: !129, discriminator: 12)
!1825 = !DILocation(line: 712, column: 7, scope: !1826)
!1826 = !DILexicalBlockFile(scope: !1820, file: !129, discriminator: 13)
!1827 = !DILocation(line: 712, column: 7, scope: !1828)
!1828 = !DILexicalBlockFile(scope: !1829, file: !129, discriminator: 16)
!1829 = distinct !DILexicalBlock(scope: !1830, file: !129, line: 712, column: 7)
!1830 = distinct !DILexicalBlock(scope: !1810, file: !129, line: 712, column: 7)
!1831 = !DILocation(line: 712, column: 7, scope: !1832)
!1832 = !DILexicalBlockFile(scope: !1830, file: !129, discriminator: 16)
!1833 = !DILocation(line: 712, column: 7, scope: !1834)
!1834 = !DILexicalBlockFile(scope: !1829, file: !129, discriminator: 17)
!1835 = !DILocation(line: 712, column: 7, scope: !1836)
!1836 = !DILexicalBlockFile(scope: !1830, file: !129, discriminator: 18)
!1837 = !DILocation(line: 712, column: 7, scope: !1838)
!1838 = !DILexicalBlockFile(scope: !1810, file: !129, discriminator: 20)
!1839 = !DILocation(line: 712, column: 7, scope: !1840)
!1840 = !DILexicalBlockFile(scope: !1841, file: !129, discriminator: 22)
!1841 = distinct !DILexicalBlock(scope: !1842, file: !129, line: 712, column: 7)
!1842 = distinct !DILexicalBlock(scope: !1800, file: !129, line: 712, column: 7)
!1843 = !DILocation(line: 712, column: 7, scope: !1844)
!1844 = !DILexicalBlockFile(scope: !1842, file: !129, discriminator: 22)
!1845 = !DILocation(line: 712, column: 7, scope: !1846)
!1846 = !DILexicalBlockFile(scope: !1841, file: !129, discriminator: 23)
!1847 = !DILocation(line: 712, column: 7, scope: !1848)
!1848 = !DILexicalBlockFile(scope: !1842, file: !129, discriminator: 24)
!1849 = !DILocation(line: 715, column: 7, scope: !1850)
!1850 = !DILexicalBlockFile(scope: !1851, file: !129, discriminator: 1)
!1851 = distinct !DILexicalBlock(scope: !1852, file: !129, line: 715, column: 7)
!1852 = distinct !DILexicalBlock(scope: !1187, file: !129, line: 715, column: 7)
!1853 = !DILocation(line: 715, column: 7, scope: !1854)
!1854 = !DILexicalBlockFile(scope: !1851, file: !129, discriminator: 2)
!1855 = !DILocation(line: 715, column: 7, scope: !1856)
!1856 = !DILexicalBlockFile(scope: !1857, file: !129, discriminator: 4)
!1857 = distinct !DILexicalBlock(scope: !1858, file: !129, line: 715, column: 7)
!1858 = distinct !DILexicalBlock(scope: !1859, file: !129, line: 715, column: 7)
!1859 = distinct !DILexicalBlock(scope: !1851, file: !129, line: 715, column: 7)
!1860 = !DILocation(line: 715, column: 7, scope: !1861)
!1861 = !DILexicalBlockFile(scope: !1858, file: !129, discriminator: 4)
!1862 = !DILocation(line: 715, column: 7, scope: !1863)
!1863 = !DILexicalBlockFile(scope: !1857, file: !129, discriminator: 5)
!1864 = !DILocation(line: 715, column: 7, scope: !1865)
!1865 = !DILexicalBlockFile(scope: !1858, file: !129, discriminator: 6)
!1866 = !DILocation(line: 715, column: 7, scope: !1867)
!1867 = !DILexicalBlockFile(scope: !1868, file: !129, discriminator: 9)
!1868 = distinct !DILexicalBlock(scope: !1869, file: !129, line: 715, column: 7)
!1869 = distinct !DILexicalBlock(scope: !1859, file: !129, line: 715, column: 7)
!1870 = !DILocation(line: 715, column: 7, scope: !1871)
!1871 = !DILexicalBlockFile(scope: !1869, file: !129, discriminator: 9)
!1872 = !DILocation(line: 715, column: 7, scope: !1873)
!1873 = !DILexicalBlockFile(scope: !1868, file: !129, discriminator: 10)
!1874 = !DILocation(line: 715, column: 7, scope: !1875)
!1875 = !DILexicalBlockFile(scope: !1869, file: !129, discriminator: 11)
!1876 = !DILocation(line: 715, column: 7, scope: !1877)
!1877 = !DILexicalBlockFile(scope: !1859, file: !129, discriminator: 13)
!1878 = !DILocation(line: 716, column: 7, scope: !1879)
!1879 = !DILexicalBlockFile(scope: !1880, file: !129, discriminator: 1)
!1880 = distinct !DILexicalBlock(scope: !1881, file: !129, line: 716, column: 7)
!1881 = distinct !DILexicalBlock(scope: !1187, file: !129, line: 716, column: 7)
!1882 = !DILocation(line: 716, column: 7, scope: !1883)
!1883 = !DILexicalBlockFile(scope: !1881, file: !129, discriminator: 1)
!1884 = !DILocation(line: 716, column: 7, scope: !1885)
!1885 = !DILexicalBlockFile(scope: !1880, file: !129, discriminator: 2)
!1886 = !DILocation(line: 716, column: 7, scope: !1887)
!1887 = !DILexicalBlockFile(scope: !1881, file: !129, discriminator: 3)
!1888 = !DILocation(line: 718, column: 13, scope: !1889)
!1889 = distinct !DILexicalBlock(scope: !1187, file: !129, line: 718, column: 11)
!1890 = !DILocation(line: 718, column: 11, scope: !1187)
!1891 = !DILocation(line: 720, column: 5, scope: !1188)
!1892 = !DILocation(line: 392, column: 75, scope: !1893)
!1893 = !DILexicalBlockFile(scope: !1188, file: !129, discriminator: 5)
!1894 = !DILocation(line: 392, column: 3, scope: !1893)
!1895 = distinct !{!1895, !1896, !1897}
!1896 = !DILocation(line: 392, column: 3, scope: !1189)
!1897 = !DILocation(line: 720, column: 5, scope: !1189)
!1898 = !DILocation(line: 722, column: 11, scope: !1899)
!1899 = distinct !DILexicalBlock(scope: !1160, file: !129, line: 722, column: 7)
!1900 = !DILocation(line: 722, column: 16, scope: !1899)
!1901 = !DILocation(line: 730, column: 51, scope: !1902)
!1902 = distinct !DILexicalBlock(scope: !1160, file: !129, line: 730, column: 7)
!1903 = !DILocation(line: 731, column: 10, scope: !1904)
!1904 = !DILexicalBlockFile(scope: !1902, file: !129, discriminator: 1)
!1905 = !DILocation(line: 733, column: 11, scope: !1906)
!1906 = distinct !DILexicalBlock(scope: !1907, file: !129, line: 733, column: 11)
!1907 = distinct !DILexicalBlock(scope: !1902, file: !129, line: 732, column: 5)
!1908 = !DILocation(line: 733, column: 11, scope: !1907)
!1909 = !DILocation(line: 734, column: 16, scope: !1906)
!1910 = !DILocation(line: 734, column: 9, scope: !1906)
!1911 = !DILocation(line: 738, column: 18, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !1906, file: !129, line: 738, column: 16)
!1913 = !DILocation(line: 738, column: 32, scope: !1914)
!1914 = !DILexicalBlockFile(scope: !1912, file: !129, discriminator: 1)
!1915 = !DILocation(line: 738, column: 29, scope: !1912)
!1916 = !DILocation(line: 747, column: 7, scope: !1917)
!1917 = distinct !DILexicalBlock(scope: !1160, file: !129, line: 747, column: 7)
!1918 = !DILocation(line: 747, column: 20, scope: !1917)
!1919 = !DILocation(line: 748, column: 12, scope: !1920)
!1920 = !DILexicalBlockFile(scope: !1921, file: !129, discriminator: 1)
!1921 = distinct !DILexicalBlock(scope: !1922, file: !129, line: 748, column: 5)
!1922 = distinct !DILexicalBlock(scope: !1917, file: !129, line: 748, column: 5)
!1923 = !DILocation(line: 748, column: 5, scope: !1924)
!1924 = !DILexicalBlockFile(scope: !1922, file: !129, discriminator: 1)
!1925 = !DILocation(line: 749, column: 7, scope: !1926)
!1926 = !DILexicalBlockFile(scope: !1927, file: !129, discriminator: 1)
!1927 = distinct !DILexicalBlock(scope: !1928, file: !129, line: 749, column: 7)
!1928 = distinct !DILexicalBlock(scope: !1921, file: !129, line: 749, column: 7)
!1929 = !DILocation(line: 749, column: 7, scope: !1930)
!1930 = !DILexicalBlockFile(scope: !1928, file: !129, discriminator: 1)
!1931 = !DILocation(line: 749, column: 7, scope: !1932)
!1932 = !DILexicalBlockFile(scope: !1927, file: !129, discriminator: 2)
!1933 = !DILocation(line: 749, column: 7, scope: !1934)
!1934 = !DILexicalBlockFile(scope: !1928, file: !129, discriminator: 3)
!1935 = !DILocation(line: 748, column: 39, scope: !1936)
!1936 = !DILexicalBlockFile(scope: !1921, file: !129, discriminator: 2)
!1937 = distinct !{!1937, !1938, !1939}
!1938 = !DILocation(line: 748, column: 5, scope: !1922)
!1939 = !DILocation(line: 749, column: 7, scope: !1922)
!1940 = !DILocation(line: 751, column: 11, scope: !1941)
!1941 = distinct !DILexicalBlock(scope: !1160, file: !129, line: 751, column: 7)
!1942 = !DILocation(line: 751, column: 7, scope: !1160)
!1943 = !DILocation(line: 752, column: 5, scope: !1941)
!1944 = !DILocation(line: 752, column: 17, scope: !1941)
!1945 = !DILocation(line: 758, column: 21, scope: !1946)
!1946 = distinct !DILexicalBlock(scope: !1160, file: !129, line: 758, column: 7)
!1947 = !DILocation(line: 758, column: 54, scope: !1948)
!1948 = !DILexicalBlockFile(scope: !1946, file: !129, discriminator: 1)
!1949 = !DILocation(line: 758, column: 51, scope: !1946)
!1950 = !DILocation(line: 762, column: 42, scope: !1160)
!1951 = !DILocation(line: 760, column: 10, scope: !1160)
!1952 = !DILocation(line: 760, column: 3, scope: !1160)
!1953 = !DILocation(line: 764, column: 1, scope: !1160)
!1954 = distinct !DISubprogram(name: "gettext_quote", scope: !129, file: !129, line: 199, type: !1955, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !85, variables: !1957)
!1955 = !DISubroutineType(types: !1956)
!1956 = !{!6, !6, !88}
!1957 = !{!1958, !1959, !1960, !1961}
!1958 = !DILocalVariable(name: "msgid", arg: 1, scope: !1954, file: !129, line: 199, type: !6)
!1959 = !DILocalVariable(name: "s", arg: 2, scope: !1954, file: !129, line: 199, type: !88)
!1960 = !DILocalVariable(name: "translation", scope: !1954, file: !129, line: 201, type: !6)
!1961 = !DILocalVariable(name: "locale_code", scope: !1954, file: !129, line: 202, type: !6)
!1962 = !DILocation(line: 199, column: 28, scope: !1954)
!1963 = !DILocation(line: 199, column: 54, scope: !1954)
!1964 = !DILocation(line: 201, column: 29, scope: !1954)
!1965 = !DILocation(line: 201, column: 15, scope: !1954)
!1966 = !DILocation(line: 204, column: 19, scope: !1967)
!1967 = distinct !DILexicalBlock(scope: !1954, file: !129, line: 204, column: 7)
!1968 = !DILocation(line: 204, column: 7, scope: !1954)
!1969 = !DILocation(line: 225, column: 17, scope: !1954)
!1970 = !DILocation(line: 202, column: 15, scope: !1954)
!1971 = !DILocalVariable(name: "s2", arg: 2, scope: !1972, file: !1973, line: 160, type: !6)
!1972 = distinct !DISubprogram(name: "strcaseeq0", scope: !1973, file: !1973, line: 160, type: !1974, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !85, variables: !1976)
!1973 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1974 = !DISubroutineType(types: !1975)
!1975 = !{!34, !6, !6, !8, !8, !8, !8, !8, !8, !8, !8, !8}
!1976 = !{!1977, !1971, !1978, !1979, !1980, !1981, !1982, !1983, !1984, !1985, !1986}
!1977 = !DILocalVariable(name: "s1", arg: 1, scope: !1972, file: !1973, line: 160, type: !6)
!1978 = !DILocalVariable(name: "s20", arg: 3, scope: !1972, file: !1973, line: 160, type: !8)
!1979 = !DILocalVariable(name: "s21", arg: 4, scope: !1972, file: !1973, line: 160, type: !8)
!1980 = !DILocalVariable(name: "s22", arg: 5, scope: !1972, file: !1973, line: 160, type: !8)
!1981 = !DILocalVariable(name: "s23", arg: 6, scope: !1972, file: !1973, line: 160, type: !8)
!1982 = !DILocalVariable(name: "s24", arg: 7, scope: !1972, file: !1973, line: 160, type: !8)
!1983 = !DILocalVariable(name: "s25", arg: 8, scope: !1972, file: !1973, line: 160, type: !8)
!1984 = !DILocalVariable(name: "s26", arg: 9, scope: !1972, file: !1973, line: 160, type: !8)
!1985 = !DILocalVariable(name: "s27", arg: 10, scope: !1972, file: !1973, line: 160, type: !8)
!1986 = !DILocalVariable(name: "s28", arg: 11, scope: !1972, file: !1973, line: 160, type: !8)
!1987 = !DILocation(line: 160, column: 41, scope: !1972, inlinedAt: !1988)
!1988 = distinct !DILocation(line: 226, column: 7, scope: !1989)
!1989 = distinct !DILexicalBlock(scope: !1954, file: !129, line: 226, column: 7)
!1990 = !DILocation(line: 160, column: 120, scope: !1972, inlinedAt: !1988)
!1991 = !DILocation(line: 160, column: 130, scope: !1972, inlinedAt: !1988)
!1992 = !DILocation(line: 162, column: 7, scope: !1993, inlinedAt: !1988)
!1993 = !DILexicalBlockFile(scope: !1994, file: !1973, discriminator: 1)
!1994 = distinct !DILexicalBlock(scope: !1972, file: !1973, line: 162, column: 7)
!1995 = !DILocalVariable(name: "s2", arg: 2, scope: !1996, file: !1973, line: 146, type: !6)
!1996 = distinct !DISubprogram(name: "strcaseeq1", scope: !1973, file: !1973, line: 146, type: !1997, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !85, variables: !1999)
!1997 = !DISubroutineType(types: !1998)
!1998 = !{!34, !6, !6, !8, !8, !8, !8, !8, !8, !8, !8}
!1999 = !{!2000, !1995, !2001, !2002, !2003, !2004, !2005, !2006, !2007, !2008}
!2000 = !DILocalVariable(name: "s1", arg: 1, scope: !1996, file: !1973, line: 146, type: !6)
!2001 = !DILocalVariable(name: "s21", arg: 3, scope: !1996, file: !1973, line: 146, type: !8)
!2002 = !DILocalVariable(name: "s22", arg: 4, scope: !1996, file: !1973, line: 146, type: !8)
!2003 = !DILocalVariable(name: "s23", arg: 5, scope: !1996, file: !1973, line: 146, type: !8)
!2004 = !DILocalVariable(name: "s24", arg: 6, scope: !1996, file: !1973, line: 146, type: !8)
!2005 = !DILocalVariable(name: "s25", arg: 7, scope: !1996, file: !1973, line: 146, type: !8)
!2006 = !DILocalVariable(name: "s26", arg: 8, scope: !1996, file: !1973, line: 146, type: !8)
!2007 = !DILocalVariable(name: "s27", arg: 9, scope: !1996, file: !1973, line: 146, type: !8)
!2008 = !DILocalVariable(name: "s28", arg: 10, scope: !1996, file: !1973, line: 146, type: !8)
!2009 = !DILocation(line: 146, column: 41, scope: !1996, inlinedAt: !2010)
!2010 = distinct !DILocation(line: 167, column: 16, scope: !2011, inlinedAt: !1988)
!2011 = distinct !DILexicalBlock(scope: !2012, file: !1973, line: 164, column: 11)
!2012 = distinct !DILexicalBlock(scope: !1994, file: !1973, line: 163, column: 5)
!2013 = !DILocation(line: 146, column: 110, scope: !1996, inlinedAt: !2010)
!2014 = !DILocation(line: 146, column: 120, scope: !1996, inlinedAt: !2010)
!2015 = !DILocation(line: 148, column: 7, scope: !2016, inlinedAt: !2010)
!2016 = !DILexicalBlockFile(scope: !2017, file: !1973, discriminator: 1)
!2017 = distinct !DILexicalBlock(scope: !1996, file: !1973, line: 148, column: 7)
!2018 = !DILocalVariable(name: "s2", arg: 2, scope: !2019, file: !1973, line: 132, type: !6)
!2019 = distinct !DISubprogram(name: "strcaseeq2", scope: !1973, file: !1973, line: 132, type: !2020, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !85, variables: !2022)
!2020 = !DISubroutineType(types: !2021)
!2021 = !{!34, !6, !6, !8, !8, !8, !8, !8, !8, !8}
!2022 = !{!2023, !2018, !2024, !2025, !2026, !2027, !2028, !2029, !2030}
!2023 = !DILocalVariable(name: "s1", arg: 1, scope: !2019, file: !1973, line: 132, type: !6)
!2024 = !DILocalVariable(name: "s22", arg: 3, scope: !2019, file: !1973, line: 132, type: !8)
!2025 = !DILocalVariable(name: "s23", arg: 4, scope: !2019, file: !1973, line: 132, type: !8)
!2026 = !DILocalVariable(name: "s24", arg: 5, scope: !2019, file: !1973, line: 132, type: !8)
!2027 = !DILocalVariable(name: "s25", arg: 6, scope: !2019, file: !1973, line: 132, type: !8)
!2028 = !DILocalVariable(name: "s26", arg: 7, scope: !2019, file: !1973, line: 132, type: !8)
!2029 = !DILocalVariable(name: "s27", arg: 8, scope: !2019, file: !1973, line: 132, type: !8)
!2030 = !DILocalVariable(name: "s28", arg: 9, scope: !2019, file: !1973, line: 132, type: !8)
!2031 = !DILocation(line: 132, column: 41, scope: !2019, inlinedAt: !2032)
!2032 = distinct !DILocation(line: 153, column: 16, scope: !2033, inlinedAt: !2010)
!2033 = distinct !DILexicalBlock(scope: !2034, file: !1973, line: 150, column: 11)
!2034 = distinct !DILexicalBlock(scope: !2017, file: !1973, line: 149, column: 5)
!2035 = !DILocation(line: 132, column: 100, scope: !2019, inlinedAt: !2032)
!2036 = !DILocation(line: 132, column: 110, scope: !2019, inlinedAt: !2032)
!2037 = !DILocation(line: 134, column: 7, scope: !2038, inlinedAt: !2032)
!2038 = !DILexicalBlockFile(scope: !2039, file: !1973, discriminator: 1)
!2039 = distinct !DILexicalBlock(scope: !2019, file: !1973, line: 134, column: 7)
!2040 = !DILocalVariable(name: "s2", arg: 2, scope: !2041, file: !1973, line: 118, type: !6)
!2041 = distinct !DISubprogram(name: "strcaseeq3", scope: !1973, file: !1973, line: 118, type: !2042, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !85, variables: !2044)
!2042 = !DISubroutineType(types: !2043)
!2043 = !{!34, !6, !6, !8, !8, !8, !8, !8, !8}
!2044 = !{!2045, !2040, !2046, !2047, !2048, !2049, !2050, !2051}
!2045 = !DILocalVariable(name: "s1", arg: 1, scope: !2041, file: !1973, line: 118, type: !6)
!2046 = !DILocalVariable(name: "s23", arg: 3, scope: !2041, file: !1973, line: 118, type: !8)
!2047 = !DILocalVariable(name: "s24", arg: 4, scope: !2041, file: !1973, line: 118, type: !8)
!2048 = !DILocalVariable(name: "s25", arg: 5, scope: !2041, file: !1973, line: 118, type: !8)
!2049 = !DILocalVariable(name: "s26", arg: 6, scope: !2041, file: !1973, line: 118, type: !8)
!2050 = !DILocalVariable(name: "s27", arg: 7, scope: !2041, file: !1973, line: 118, type: !8)
!2051 = !DILocalVariable(name: "s28", arg: 8, scope: !2041, file: !1973, line: 118, type: !8)
!2052 = !DILocation(line: 118, column: 41, scope: !2041, inlinedAt: !2053)
!2053 = distinct !DILocation(line: 139, column: 16, scope: !2054, inlinedAt: !2032)
!2054 = distinct !DILexicalBlock(scope: !2055, file: !1973, line: 136, column: 11)
!2055 = distinct !DILexicalBlock(scope: !2039, file: !1973, line: 135, column: 5)
!2056 = !DILocation(line: 118, column: 90, scope: !2041, inlinedAt: !2053)
!2057 = !DILocation(line: 118, column: 100, scope: !2041, inlinedAt: !2053)
!2058 = !DILocation(line: 120, column: 7, scope: !2059, inlinedAt: !2053)
!2059 = !DILexicalBlockFile(scope: !2060, file: !1973, discriminator: 2)
!2060 = distinct !DILexicalBlock(scope: !2041, file: !1973, line: 120, column: 7)
!2061 = !DILocation(line: 120, column: 7, scope: !2062, inlinedAt: !2053)
!2062 = !DILexicalBlockFile(scope: !2041, file: !1973, discriminator: 2)
!2063 = !DILocalVariable(name: "s2", arg: 2, scope: !2064, file: !1973, line: 104, type: !6)
!2064 = distinct !DISubprogram(name: "strcaseeq4", scope: !1973, file: !1973, line: 104, type: !2065, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !85, variables: !2067)
!2065 = !DISubroutineType(types: !2066)
!2066 = !{!34, !6, !6, !8, !8, !8, !8, !8}
!2067 = !{!2068, !2063, !2069, !2070, !2071, !2072, !2073}
!2068 = !DILocalVariable(name: "s1", arg: 1, scope: !2064, file: !1973, line: 104, type: !6)
!2069 = !DILocalVariable(name: "s24", arg: 3, scope: !2064, file: !1973, line: 104, type: !8)
!2070 = !DILocalVariable(name: "s25", arg: 4, scope: !2064, file: !1973, line: 104, type: !8)
!2071 = !DILocalVariable(name: "s26", arg: 5, scope: !2064, file: !1973, line: 104, type: !8)
!2072 = !DILocalVariable(name: "s27", arg: 6, scope: !2064, file: !1973, line: 104, type: !8)
!2073 = !DILocalVariable(name: "s28", arg: 7, scope: !2064, file: !1973, line: 104, type: !8)
!2074 = !DILocation(line: 104, column: 41, scope: !2064, inlinedAt: !2075)
!2075 = distinct !DILocation(line: 125, column: 16, scope: !2076, inlinedAt: !2053)
!2076 = distinct !DILexicalBlock(scope: !2077, file: !1973, line: 122, column: 11)
!2077 = distinct !DILexicalBlock(scope: !2060, file: !1973, line: 121, column: 5)
!2078 = !DILocation(line: 104, column: 80, scope: !2064, inlinedAt: !2075)
!2079 = !DILocation(line: 104, column: 90, scope: !2064, inlinedAt: !2075)
!2080 = !DILocation(line: 106, column: 7, scope: !2081, inlinedAt: !2075)
!2081 = !DILexicalBlockFile(scope: !2082, file: !1973, discriminator: 2)
!2082 = distinct !DILexicalBlock(scope: !2064, file: !1973, line: 106, column: 7)
!2083 = !DILocation(line: 106, column: 7, scope: !2084, inlinedAt: !2075)
!2084 = !DILexicalBlockFile(scope: !2064, file: !1973, discriminator: 2)
!2085 = !DILocalVariable(name: "s2", arg: 2, scope: !2086, file: !1973, line: 90, type: !6)
!2086 = distinct !DISubprogram(name: "strcaseeq5", scope: !1973, file: !1973, line: 90, type: !2087, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !85, variables: !2089)
!2087 = !DISubroutineType(types: !2088)
!2088 = !{!34, !6, !6, !8, !8, !8, !8}
!2089 = !{!2090, !2085, !2091, !2092, !2093, !2094}
!2090 = !DILocalVariable(name: "s1", arg: 1, scope: !2086, file: !1973, line: 90, type: !6)
!2091 = !DILocalVariable(name: "s25", arg: 3, scope: !2086, file: !1973, line: 90, type: !8)
!2092 = !DILocalVariable(name: "s26", arg: 4, scope: !2086, file: !1973, line: 90, type: !8)
!2093 = !DILocalVariable(name: "s27", arg: 5, scope: !2086, file: !1973, line: 90, type: !8)
!2094 = !DILocalVariable(name: "s28", arg: 6, scope: !2086, file: !1973, line: 90, type: !8)
!2095 = !DILocation(line: 90, column: 41, scope: !2086, inlinedAt: !2096)
!2096 = distinct !DILocation(line: 111, column: 16, scope: !2097, inlinedAt: !2075)
!2097 = distinct !DILexicalBlock(scope: !2098, file: !1973, line: 108, column: 11)
!2098 = distinct !DILexicalBlock(scope: !2082, file: !1973, line: 107, column: 5)
!2099 = !DILocation(line: 90, column: 70, scope: !2086, inlinedAt: !2096)
!2100 = !DILocation(line: 90, column: 80, scope: !2086, inlinedAt: !2096)
!2101 = !DILocation(line: 92, column: 7, scope: !2102, inlinedAt: !2096)
!2102 = !DILexicalBlockFile(scope: !2103, file: !1973, discriminator: 2)
!2103 = distinct !DILexicalBlock(scope: !2086, file: !1973, line: 92, column: 7)
!2104 = !DILocation(line: 92, column: 7, scope: !2105, inlinedAt: !2096)
!2105 = !DILexicalBlockFile(scope: !2086, file: !1973, discriminator: 2)
!2106 = !DILocation(line: 227, column: 12, scope: !1989)
!2107 = !DILocation(line: 227, column: 21, scope: !1989)
!2108 = !DILocation(line: 227, column: 5, scope: !1989)
!2109 = !DILocation(line: 146, column: 41, scope: !1996, inlinedAt: !2110)
!2110 = distinct !DILocation(line: 167, column: 16, scope: !2011, inlinedAt: !2111)
!2111 = distinct !DILocation(line: 228, column: 7, scope: !2112)
!2112 = distinct !DILexicalBlock(scope: !1954, file: !129, line: 228, column: 7)
!2113 = !DILocation(line: 146, column: 110, scope: !1996, inlinedAt: !2110)
!2114 = !DILocation(line: 146, column: 120, scope: !1996, inlinedAt: !2110)
!2115 = !DILocation(line: 148, column: 7, scope: !2016, inlinedAt: !2110)
!2116 = !DILocation(line: 132, column: 41, scope: !2019, inlinedAt: !2117)
!2117 = distinct !DILocation(line: 153, column: 16, scope: !2033, inlinedAt: !2110)
!2118 = !DILocation(line: 132, column: 100, scope: !2019, inlinedAt: !2117)
!2119 = !DILocation(line: 132, column: 110, scope: !2019, inlinedAt: !2117)
!2120 = !DILocation(line: 134, column: 7, scope: !2121, inlinedAt: !2117)
!2121 = !DILexicalBlockFile(scope: !2039, file: !1973, discriminator: 2)
!2122 = !DILocation(line: 134, column: 7, scope: !2123, inlinedAt: !2117)
!2123 = !DILexicalBlockFile(scope: !2019, file: !1973, discriminator: 2)
!2124 = !DILocation(line: 118, column: 41, scope: !2041, inlinedAt: !2125)
!2125 = distinct !DILocation(line: 139, column: 16, scope: !2054, inlinedAt: !2117)
!2126 = !DILocation(line: 118, column: 90, scope: !2041, inlinedAt: !2125)
!2127 = !DILocation(line: 118, column: 100, scope: !2041, inlinedAt: !2125)
!2128 = !DILocation(line: 120, column: 7, scope: !2059, inlinedAt: !2125)
!2129 = !DILocation(line: 120, column: 7, scope: !2062, inlinedAt: !2125)
!2130 = !DILocation(line: 104, column: 41, scope: !2064, inlinedAt: !2131)
!2131 = distinct !DILocation(line: 125, column: 16, scope: !2076, inlinedAt: !2125)
!2132 = !DILocation(line: 104, column: 80, scope: !2064, inlinedAt: !2131)
!2133 = !DILocation(line: 104, column: 90, scope: !2064, inlinedAt: !2131)
!2134 = !DILocation(line: 106, column: 7, scope: !2081, inlinedAt: !2131)
!2135 = !DILocation(line: 106, column: 7, scope: !2084, inlinedAt: !2131)
!2136 = !DILocation(line: 90, column: 41, scope: !2086, inlinedAt: !2137)
!2137 = distinct !DILocation(line: 111, column: 16, scope: !2097, inlinedAt: !2131)
!2138 = !DILocation(line: 90, column: 70, scope: !2086, inlinedAt: !2137)
!2139 = !DILocation(line: 90, column: 80, scope: !2086, inlinedAt: !2137)
!2140 = !DILocation(line: 92, column: 7, scope: !2102, inlinedAt: !2137)
!2141 = !DILocation(line: 92, column: 7, scope: !2105, inlinedAt: !2137)
!2142 = !DILocalVariable(name: "s2", arg: 2, scope: !2143, file: !1973, line: 76, type: !6)
!2143 = distinct !DISubprogram(name: "strcaseeq6", scope: !1973, file: !1973, line: 76, type: !2144, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !85, variables: !2146)
!2144 = !DISubroutineType(types: !2145)
!2145 = !{!34, !6, !6, !8, !8, !8}
!2146 = !{!2147, !2142, !2148, !2149, !2150}
!2147 = !DILocalVariable(name: "s1", arg: 1, scope: !2143, file: !1973, line: 76, type: !6)
!2148 = !DILocalVariable(name: "s26", arg: 3, scope: !2143, file: !1973, line: 76, type: !8)
!2149 = !DILocalVariable(name: "s27", arg: 4, scope: !2143, file: !1973, line: 76, type: !8)
!2150 = !DILocalVariable(name: "s28", arg: 5, scope: !2143, file: !1973, line: 76, type: !8)
!2151 = !DILocation(line: 76, column: 41, scope: !2143, inlinedAt: !2152)
!2152 = distinct !DILocation(line: 97, column: 16, scope: !2153, inlinedAt: !2137)
!2153 = distinct !DILexicalBlock(scope: !2154, file: !1973, line: 94, column: 11)
!2154 = distinct !DILexicalBlock(scope: !2103, file: !1973, line: 93, column: 5)
!2155 = !DILocation(line: 76, column: 60, scope: !2143, inlinedAt: !2152)
!2156 = !DILocation(line: 76, column: 70, scope: !2143, inlinedAt: !2152)
!2157 = !DILocation(line: 78, column: 7, scope: !2158, inlinedAt: !2152)
!2158 = !DILexicalBlockFile(scope: !2159, file: !1973, discriminator: 2)
!2159 = distinct !DILexicalBlock(scope: !2143, file: !1973, line: 78, column: 7)
!2160 = !DILocation(line: 78, column: 7, scope: !2161, inlinedAt: !2152)
!2161 = !DILexicalBlockFile(scope: !2143, file: !1973, discriminator: 2)
!2162 = !DILocalVariable(name: "s2", arg: 2, scope: !2163, file: !1973, line: 62, type: !6)
!2163 = distinct !DISubprogram(name: "strcaseeq7", scope: !1973, file: !1973, line: 62, type: !2164, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !85, variables: !2166)
!2164 = !DISubroutineType(types: !2165)
!2165 = !{!34, !6, !6, !8, !8}
!2166 = !{!2167, !2162, !2168, !2169}
!2167 = !DILocalVariable(name: "s1", arg: 1, scope: !2163, file: !1973, line: 62, type: !6)
!2168 = !DILocalVariable(name: "s27", arg: 3, scope: !2163, file: !1973, line: 62, type: !8)
!2169 = !DILocalVariable(name: "s28", arg: 4, scope: !2163, file: !1973, line: 62, type: !8)
!2170 = !DILocation(line: 62, column: 41, scope: !2163, inlinedAt: !2171)
!2171 = distinct !DILocation(line: 83, column: 16, scope: !2172, inlinedAt: !2152)
!2172 = distinct !DILexicalBlock(scope: !2173, file: !1973, line: 80, column: 11)
!2173 = distinct !DILexicalBlock(scope: !2159, file: !1973, line: 79, column: 5)
!2174 = !DILocation(line: 62, column: 50, scope: !2163, inlinedAt: !2171)
!2175 = !DILocation(line: 62, column: 60, scope: !2163, inlinedAt: !2171)
!2176 = !DILocation(line: 64, column: 7, scope: !2177, inlinedAt: !2171)
!2177 = !DILexicalBlockFile(scope: !2178, file: !1973, discriminator: 2)
!2178 = distinct !DILexicalBlock(scope: !2163, file: !1973, line: 64, column: 7)
!2179 = !DILocation(line: 228, column: 7, scope: !1954)
!2180 = !DILocation(line: 229, column: 12, scope: !2112)
!2181 = !DILocation(line: 229, column: 21, scope: !2112)
!2182 = !DILocation(line: 229, column: 5, scope: !2112)
!2183 = !DILocation(line: 231, column: 13, scope: !1954)
!2184 = !DILocation(line: 231, column: 11, scope: !1954)
!2185 = !DILocation(line: 231, column: 3, scope: !1954)
!2186 = !DILocation(line: 232, column: 1, scope: !1954)
!2187 = distinct !DISubprogram(name: "quotearg_alloc", scope: !129, file: !129, line: 791, type: !2188, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !85, variables: !2190)
!2188 = !DISubroutineType(types: !2189)
!2189 = !{!14, !6, !123, !1028}
!2190 = !{!2191, !2192, !2193}
!2191 = !DILocalVariable(name: "arg", arg: 1, scope: !2187, file: !129, line: 791, type: !6)
!2192 = !DILocalVariable(name: "argsize", arg: 2, scope: !2187, file: !129, line: 791, type: !123)
!2193 = !DILocalVariable(name: "o", arg: 3, scope: !2187, file: !129, line: 792, type: !1028)
!2194 = !DILocation(line: 791, column: 29, scope: !2187)
!2195 = !DILocation(line: 791, column: 41, scope: !2187)
!2196 = !DILocation(line: 792, column: 47, scope: !2187)
!2197 = !DILocalVariable(name: "arg", arg: 1, scope: !2198, file: !129, line: 804, type: !6)
!2198 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !129, file: !129, line: 804, type: !2199, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !85, variables: !2201)
!2199 = !DISubroutineType(types: !2200)
!2200 = !{!14, !6, !123, !581, !1028}
!2201 = !{!2197, !2202, !2203, !2204, !2205, !2206, !2207, !2208, !2209}
!2202 = !DILocalVariable(name: "argsize", arg: 2, scope: !2198, file: !129, line: 804, type: !123)
!2203 = !DILocalVariable(name: "size", arg: 3, scope: !2198, file: !129, line: 804, type: !581)
!2204 = !DILocalVariable(name: "o", arg: 4, scope: !2198, file: !129, line: 805, type: !1028)
!2205 = !DILocalVariable(name: "p", scope: !2198, file: !129, line: 807, type: !1028)
!2206 = !DILocalVariable(name: "e", scope: !2198, file: !129, line: 808, type: !34)
!2207 = !DILocalVariable(name: "flags", scope: !2198, file: !129, line: 810, type: !34)
!2208 = !DILocalVariable(name: "bufsize", scope: !2198, file: !129, line: 811, type: !123)
!2209 = !DILocalVariable(name: "buf", scope: !2198, file: !129, line: 815, type: !14)
!2210 = !DILocation(line: 804, column: 33, scope: !2198, inlinedAt: !2211)
!2211 = distinct !DILocation(line: 794, column: 10, scope: !2187)
!2212 = !DILocation(line: 804, column: 45, scope: !2198, inlinedAt: !2211)
!2213 = !DILocation(line: 804, column: 62, scope: !2198, inlinedAt: !2211)
!2214 = !DILocation(line: 805, column: 51, scope: !2198, inlinedAt: !2211)
!2215 = !DILocation(line: 807, column: 37, scope: !2198, inlinedAt: !2211)
!2216 = !DILocation(line: 807, column: 33, scope: !2198, inlinedAt: !2211)
!2217 = !DILocation(line: 808, column: 11, scope: !2198, inlinedAt: !2211)
!2218 = !DILocation(line: 808, column: 7, scope: !2198, inlinedAt: !2211)
!2219 = !DILocation(line: 810, column: 18, scope: !2198, inlinedAt: !2211)
!2220 = !DILocation(line: 810, column: 24, scope: !2198, inlinedAt: !2211)
!2221 = !DILocation(line: 810, column: 7, scope: !2198, inlinedAt: !2211)
!2222 = !DILocation(line: 811, column: 69, scope: !2198, inlinedAt: !2211)
!2223 = !DILocation(line: 812, column: 53, scope: !2198, inlinedAt: !2211)
!2224 = !DILocation(line: 813, column: 49, scope: !2198, inlinedAt: !2211)
!2225 = !DILocation(line: 814, column: 49, scope: !2198, inlinedAt: !2211)
!2226 = !DILocation(line: 811, column: 20, scope: !2198, inlinedAt: !2211)
!2227 = !DILocation(line: 814, column: 62, scope: !2198, inlinedAt: !2211)
!2228 = !DILocation(line: 811, column: 10, scope: !2198, inlinedAt: !2211)
!2229 = !DILocalVariable(name: "n", arg: 1, scope: !2230, file: !577, line: 220, type: !123)
!2230 = distinct !DISubprogram(name: "xcharalloc", scope: !577, file: !577, line: 220, type: !2231, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !85, variables: !2233)
!2231 = !DISubroutineType(types: !2232)
!2232 = !{!14, !123}
!2233 = !{!2229}
!2234 = !DILocation(line: 220, column: 20, scope: !2230, inlinedAt: !2235)
!2235 = distinct !DILocation(line: 815, column: 15, scope: !2198, inlinedAt: !2211)
!2236 = !DILocation(line: 222, column: 10, scope: !2230, inlinedAt: !2235)
!2237 = !DILocation(line: 815, column: 9, scope: !2198, inlinedAt: !2211)
!2238 = !DILocation(line: 816, column: 60, scope: !2198, inlinedAt: !2211)
!2239 = !DILocation(line: 818, column: 32, scope: !2198, inlinedAt: !2211)
!2240 = !DILocation(line: 818, column: 47, scope: !2198, inlinedAt: !2211)
!2241 = !DILocation(line: 816, column: 3, scope: !2198, inlinedAt: !2211)
!2242 = !DILocation(line: 819, column: 9, scope: !2198, inlinedAt: !2211)
!2243 = !DILocation(line: 794, column: 3, scope: !2187)
!2244 = !DILocation(line: 804, column: 33, scope: !2198)
!2245 = !DILocation(line: 804, column: 45, scope: !2198)
!2246 = !DILocation(line: 804, column: 62, scope: !2198)
!2247 = !DILocation(line: 805, column: 51, scope: !2198)
!2248 = !DILocation(line: 807, column: 37, scope: !2198)
!2249 = !DILocation(line: 807, column: 33, scope: !2198)
!2250 = !DILocation(line: 808, column: 11, scope: !2198)
!2251 = !DILocation(line: 808, column: 7, scope: !2198)
!2252 = !DILocation(line: 810, column: 18, scope: !2198)
!2253 = !DILocation(line: 810, column: 27, scope: !2198)
!2254 = !DILocation(line: 810, column: 24, scope: !2198)
!2255 = !DILocation(line: 810, column: 7, scope: !2198)
!2256 = !DILocation(line: 811, column: 69, scope: !2198)
!2257 = !DILocation(line: 812, column: 53, scope: !2198)
!2258 = !DILocation(line: 813, column: 49, scope: !2198)
!2259 = !DILocation(line: 814, column: 49, scope: !2198)
!2260 = !DILocation(line: 811, column: 20, scope: !2198)
!2261 = !DILocation(line: 814, column: 62, scope: !2198)
!2262 = !DILocation(line: 811, column: 10, scope: !2198)
!2263 = !DILocation(line: 220, column: 20, scope: !2230, inlinedAt: !2264)
!2264 = distinct !DILocation(line: 815, column: 15, scope: !2198)
!2265 = !DILocation(line: 222, column: 10, scope: !2230, inlinedAt: !2264)
!2266 = !DILocation(line: 815, column: 9, scope: !2198)
!2267 = !DILocation(line: 816, column: 60, scope: !2198)
!2268 = !DILocation(line: 818, column: 32, scope: !2198)
!2269 = !DILocation(line: 818, column: 47, scope: !2198)
!2270 = !DILocation(line: 816, column: 3, scope: !2198)
!2271 = !DILocation(line: 819, column: 9, scope: !2198)
!2272 = !DILocation(line: 820, column: 7, scope: !2198)
!2273 = !DILocation(line: 821, column: 11, scope: !2274)
!2274 = distinct !DILexicalBlock(scope: !2198, file: !129, line: 820, column: 7)
!2275 = !{!2276, !2276, i64 0}
!2276 = !{!"long", !652, i64 0}
!2277 = !DILocation(line: 821, column: 5, scope: !2274)
!2278 = !DILocation(line: 822, column: 3, scope: !2198)
!2279 = distinct !DISubprogram(name: "quotearg_free", scope: !129, file: !129, line: 840, type: !867, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !85, variables: !2280)
!2280 = !{!2281, !2282}
!2281 = !DILocalVariable(name: "sv", scope: !2279, file: !129, line: 842, type: !156)
!2282 = !DILocalVariable(name: "i", scope: !2279, file: !129, line: 843, type: !34)
!2283 = !DILocation(line: 842, column: 24, scope: !2279)
!2284 = !DILocation(line: 842, column: 19, scope: !2279)
!2285 = !DILocation(line: 843, column: 7, scope: !2279)
!2286 = !DILocation(line: 844, column: 19, scope: !2287)
!2287 = !DILexicalBlockFile(scope: !2288, file: !129, discriminator: 1)
!2288 = distinct !DILexicalBlock(scope: !2289, file: !129, line: 844, column: 3)
!2289 = distinct !DILexicalBlock(scope: !2279, file: !129, line: 844, column: 3)
!2290 = !DILocation(line: 844, column: 17, scope: !2287)
!2291 = !DILocation(line: 844, column: 3, scope: !2292)
!2292 = !DILexicalBlockFile(scope: !2289, file: !129, discriminator: 1)
!2293 = !DILocation(line: 845, column: 17, scope: !2288)
!2294 = !{!2295, !651, i64 8}
!2295 = !{!"slotvec", !2276, i64 0, !651, i64 8}
!2296 = !DILocation(line: 845, column: 5, scope: !2288)
!2297 = !DILocation(line: 844, column: 28, scope: !2298)
!2298 = !DILexicalBlockFile(scope: !2288, file: !129, discriminator: 2)
!2299 = distinct !{!2299, !2300, !2301}
!2300 = !DILocation(line: 844, column: 3, scope: !2289)
!2301 = !DILocation(line: 845, column: 20, scope: !2289)
!2302 = !DILocation(line: 846, column: 13, scope: !2303)
!2303 = distinct !DILexicalBlock(scope: !2279, file: !129, line: 846, column: 7)
!2304 = !DILocation(line: 846, column: 17, scope: !2303)
!2305 = !DILocation(line: 846, column: 7, scope: !2279)
!2306 = !DILocation(line: 848, column: 7, scope: !2307)
!2307 = distinct !DILexicalBlock(scope: !2303, file: !129, line: 847, column: 5)
!2308 = !DILocation(line: 849, column: 21, scope: !2307)
!2309 = !{!2295, !2276, i64 0}
!2310 = !DILocation(line: 850, column: 20, scope: !2307)
!2311 = !DILocation(line: 851, column: 5, scope: !2307)
!2312 = !DILocation(line: 852, column: 10, scope: !2313)
!2313 = distinct !DILexicalBlock(scope: !2279, file: !129, line: 852, column: 7)
!2314 = !DILocation(line: 852, column: 7, scope: !2279)
!2315 = !DILocation(line: 854, column: 13, scope: !2316)
!2316 = distinct !DILexicalBlock(scope: !2313, file: !129, line: 853, column: 5)
!2317 = !DILocation(line: 854, column: 7, scope: !2316)
!2318 = !DILocation(line: 855, column: 15, scope: !2316)
!2319 = !DILocation(line: 856, column: 5, scope: !2316)
!2320 = !DILocation(line: 857, column: 10, scope: !2279)
!2321 = !DILocation(line: 858, column: 1, scope: !2279)
!2322 = distinct !DISubprogram(name: "quotearg_n", scope: !129, file: !129, line: 922, type: !2323, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !85, variables: !2325)
!2323 = !DISubroutineType(types: !2324)
!2324 = !{!14, !34, !6}
!2325 = !{!2326, !2327}
!2326 = !DILocalVariable(name: "n", arg: 1, scope: !2322, file: !129, line: 922, type: !34)
!2327 = !DILocalVariable(name: "arg", arg: 2, scope: !2322, file: !129, line: 922, type: !6)
!2328 = !DILocation(line: 922, column: 17, scope: !2322)
!2329 = !DILocation(line: 922, column: 32, scope: !2322)
!2330 = !DILocation(line: 924, column: 10, scope: !2322)
!2331 = !DILocation(line: 924, column: 3, scope: !2322)
!2332 = distinct !DISubprogram(name: "quotearg_n_options", scope: !129, file: !129, line: 869, type: !2333, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !85, variables: !2335)
!2333 = !DISubroutineType(types: !2334)
!2334 = !{!14, !34, !6, !123, !1028}
!2335 = !{!2336, !2337, !2338, !2339, !2340, !2341, !2342, !2345, !2347, !2348, !2349}
!2336 = !DILocalVariable(name: "n", arg: 1, scope: !2332, file: !129, line: 869, type: !34)
!2337 = !DILocalVariable(name: "arg", arg: 2, scope: !2332, file: !129, line: 869, type: !6)
!2338 = !DILocalVariable(name: "argsize", arg: 3, scope: !2332, file: !129, line: 869, type: !123)
!2339 = !DILocalVariable(name: "options", arg: 4, scope: !2332, file: !129, line: 870, type: !1028)
!2340 = !DILocalVariable(name: "e", scope: !2332, file: !129, line: 872, type: !34)
!2341 = !DILocalVariable(name: "sv", scope: !2332, file: !129, line: 874, type: !156)
!2342 = !DILocalVariable(name: "preallocated", scope: !2343, file: !129, line: 881, type: !49)
!2343 = distinct !DILexicalBlock(scope: !2344, file: !129, line: 880, column: 5)
!2344 = distinct !DILexicalBlock(scope: !2332, file: !129, line: 879, column: 7)
!2345 = !DILocalVariable(name: "size", scope: !2346, file: !129, line: 894, type: !123)
!2346 = distinct !DILexicalBlock(scope: !2332, file: !129, line: 893, column: 3)
!2347 = !DILocalVariable(name: "val", scope: !2346, file: !129, line: 895, type: !14)
!2348 = !DILocalVariable(name: "flags", scope: !2346, file: !129, line: 897, type: !34)
!2349 = !DILocalVariable(name: "qsize", scope: !2346, file: !129, line: 898, type: !123)
!2350 = !DILocation(line: 869, column: 25, scope: !2332)
!2351 = !DILocation(line: 869, column: 40, scope: !2332)
!2352 = !DILocation(line: 869, column: 52, scope: !2332)
!2353 = !DILocation(line: 870, column: 51, scope: !2332)
!2354 = !DILocation(line: 872, column: 11, scope: !2332)
!2355 = !DILocation(line: 872, column: 7, scope: !2332)
!2356 = !DILocation(line: 874, column: 24, scope: !2332)
!2357 = !DILocation(line: 874, column: 19, scope: !2332)
!2358 = !DILocation(line: 876, column: 9, scope: !2359)
!2359 = distinct !DILexicalBlock(scope: !2332, file: !129, line: 876, column: 7)
!2360 = !DILocation(line: 876, column: 7, scope: !2332)
!2361 = !DILocation(line: 877, column: 5, scope: !2359)
!2362 = !DILocation(line: 879, column: 7, scope: !2344)
!2363 = !DILocation(line: 879, column: 14, scope: !2344)
!2364 = !DILocation(line: 879, column: 7, scope: !2332)
!2365 = !DILocation(line: 881, column: 31, scope: !2343)
!2366 = !DILocation(line: 883, column: 67, scope: !2367)
!2367 = distinct !DILexicalBlock(scope: !2343, file: !129, line: 883, column: 11)
!2368 = !DILocation(line: 883, column: 11, scope: !2343)
!2369 = !DILocation(line: 884, column: 9, scope: !2367)
!2370 = !DILocation(line: 886, column: 32, scope: !2371)
!2371 = !DILexicalBlockFile(scope: !2343, file: !129, discriminator: 3)
!2372 = !DILocation(line: 886, column: 61, scope: !2371)
!2373 = !DILocation(line: 886, column: 58, scope: !2371)
!2374 = !DILocation(line: 886, column: 66, scope: !2371)
!2375 = !DILocation(line: 886, column: 22, scope: !2371)
!2376 = !DILocation(line: 886, column: 15, scope: !2371)
!2377 = !DILocation(line: 887, column: 11, scope: !2343)
!2378 = !DILocation(line: 888, column: 15, scope: !2379)
!2379 = distinct !DILexicalBlock(scope: !2343, file: !129, line: 887, column: 11)
!2380 = !{i64 0, i64 8, !2275, i64 8, i64 8, !650}
!2381 = !DILocation(line: 888, column: 9, scope: !2379)
!2382 = !DILocation(line: 889, column: 20, scope: !2343)
!2383 = !DILocation(line: 889, column: 18, scope: !2343)
!2384 = !DILocation(line: 889, column: 7, scope: !2343)
!2385 = !DILocation(line: 889, column: 38, scope: !2343)
!2386 = !DILocation(line: 889, column: 31, scope: !2343)
!2387 = !DILocation(line: 889, column: 48, scope: !2343)
!2388 = !DILocation(line: 890, column: 14, scope: !2343)
!2389 = !DILocation(line: 891, column: 5, scope: !2343)
!2390 = !DILocation(line: 894, column: 19, scope: !2346)
!2391 = !DILocation(line: 894, column: 25, scope: !2346)
!2392 = !DILocation(line: 894, column: 12, scope: !2346)
!2393 = !DILocation(line: 895, column: 23, scope: !2346)
!2394 = !DILocation(line: 895, column: 11, scope: !2346)
!2395 = !DILocation(line: 897, column: 26, scope: !2346)
!2396 = !DILocation(line: 897, column: 32, scope: !2346)
!2397 = !DILocation(line: 897, column: 9, scope: !2346)
!2398 = !DILocation(line: 899, column: 55, scope: !2346)
!2399 = !DILocation(line: 900, column: 46, scope: !2346)
!2400 = !DILocation(line: 901, column: 55, scope: !2346)
!2401 = !DILocation(line: 902, column: 55, scope: !2346)
!2402 = !DILocation(line: 898, column: 20, scope: !2346)
!2403 = !DILocation(line: 898, column: 12, scope: !2346)
!2404 = !DILocation(line: 904, column: 14, scope: !2405)
!2405 = distinct !DILexicalBlock(scope: !2346, file: !129, line: 904, column: 9)
!2406 = !DILocation(line: 904, column: 9, scope: !2346)
!2407 = !DILocation(line: 906, column: 35, scope: !2408)
!2408 = distinct !DILexicalBlock(scope: !2405, file: !129, line: 905, column: 7)
!2409 = !DILocation(line: 906, column: 20, scope: !2408)
!2410 = !DILocation(line: 907, column: 17, scope: !2411)
!2411 = distinct !DILexicalBlock(scope: !2408, file: !129, line: 907, column: 13)
!2412 = !DILocation(line: 907, column: 13, scope: !2408)
!2413 = !DILocation(line: 908, column: 11, scope: !2411)
!2414 = !DILocation(line: 220, column: 20, scope: !2230, inlinedAt: !2415)
!2415 = distinct !DILocation(line: 909, column: 27, scope: !2408)
!2416 = !DILocation(line: 222, column: 10, scope: !2230, inlinedAt: !2415)
!2417 = !DILocation(line: 909, column: 19, scope: !2408)
!2418 = !DILocation(line: 910, column: 69, scope: !2408)
!2419 = !DILocation(line: 912, column: 44, scope: !2408)
!2420 = !DILocation(line: 913, column: 44, scope: !2408)
!2421 = !DILocation(line: 910, column: 9, scope: !2408)
!2422 = !DILocation(line: 914, column: 7, scope: !2408)
!2423 = !DILocation(line: 916, column: 11, scope: !2346)
!2424 = !DILocation(line: 917, column: 5, scope: !2346)
!2425 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !129, file: !129, line: 928, type: !2426, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !85, variables: !2428)
!2426 = !DISubroutineType(types: !2427)
!2427 = !{!14, !34, !6, !123}
!2428 = !{!2429, !2430, !2431}
!2429 = !DILocalVariable(name: "n", arg: 1, scope: !2425, file: !129, line: 928, type: !34)
!2430 = !DILocalVariable(name: "arg", arg: 2, scope: !2425, file: !129, line: 928, type: !6)
!2431 = !DILocalVariable(name: "argsize", arg: 3, scope: !2425, file: !129, line: 928, type: !123)
!2432 = !DILocation(line: 928, column: 21, scope: !2425)
!2433 = !DILocation(line: 928, column: 36, scope: !2425)
!2434 = !DILocation(line: 928, column: 48, scope: !2425)
!2435 = !DILocation(line: 930, column: 10, scope: !2425)
!2436 = !DILocation(line: 930, column: 3, scope: !2425)
!2437 = distinct !DISubprogram(name: "quotearg", scope: !129, file: !129, line: 934, type: !2438, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !85, variables: !2440)
!2438 = !DISubroutineType(types: !2439)
!2439 = !{!14, !6}
!2440 = !{!2441}
!2441 = !DILocalVariable(name: "arg", arg: 1, scope: !2437, file: !129, line: 934, type: !6)
!2442 = !DILocation(line: 934, column: 23, scope: !2437)
!2443 = !DILocation(line: 922, column: 17, scope: !2322, inlinedAt: !2444)
!2444 = distinct !DILocation(line: 936, column: 10, scope: !2437)
!2445 = !DILocation(line: 922, column: 32, scope: !2322, inlinedAt: !2444)
!2446 = !DILocation(line: 924, column: 10, scope: !2322, inlinedAt: !2444)
!2447 = !DILocation(line: 936, column: 3, scope: !2437)
!2448 = distinct !DISubprogram(name: "quotearg_mem", scope: !129, file: !129, line: 940, type: !2449, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !85, variables: !2451)
!2449 = !DISubroutineType(types: !2450)
!2450 = !{!14, !6, !123}
!2451 = !{!2452, !2453}
!2452 = !DILocalVariable(name: "arg", arg: 1, scope: !2448, file: !129, line: 940, type: !6)
!2453 = !DILocalVariable(name: "argsize", arg: 2, scope: !2448, file: !129, line: 940, type: !123)
!2454 = !DILocation(line: 940, column: 27, scope: !2448)
!2455 = !DILocation(line: 940, column: 39, scope: !2448)
!2456 = !DILocation(line: 928, column: 21, scope: !2425, inlinedAt: !2457)
!2457 = distinct !DILocation(line: 942, column: 10, scope: !2448)
!2458 = !DILocation(line: 928, column: 36, scope: !2425, inlinedAt: !2457)
!2459 = !DILocation(line: 928, column: 48, scope: !2425, inlinedAt: !2457)
!2460 = !DILocation(line: 930, column: 10, scope: !2425, inlinedAt: !2457)
!2461 = !DILocation(line: 942, column: 3, scope: !2448)
!2462 = distinct !DISubprogram(name: "quotearg_n_style", scope: !129, file: !129, line: 946, type: !2463, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !85, variables: !2465)
!2463 = !DISubroutineType(types: !2464)
!2464 = !{!14, !34, !88, !6}
!2465 = !{!2466, !2467, !2468, !2469}
!2466 = !DILocalVariable(name: "n", arg: 1, scope: !2462, file: !129, line: 946, type: !34)
!2467 = !DILocalVariable(name: "s", arg: 2, scope: !2462, file: !129, line: 946, type: !88)
!2468 = !DILocalVariable(name: "arg", arg: 3, scope: !2462, file: !129, line: 946, type: !6)
!2469 = !DILocalVariable(name: "o", scope: !2462, file: !129, line: 948, type: !1029)
!2470 = !DILocalVariable(name: "o", scope: !2471, file: !129, line: 187, type: !136)
!2471 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !129, file: !129, line: 185, type: !2472, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !85, variables: !2474)
!2472 = !DISubroutineType(types: !2473)
!2473 = !{!136, !88}
!2474 = !{!2475, !2470}
!2475 = !DILocalVariable(name: "style", arg: 1, scope: !2471, file: !129, line: 185, type: !88)
!2476 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!2477 = !DILocation(line: 187, column: 26, scope: !2471, inlinedAt: !2478)
!2478 = distinct !DILocation(line: 948, column: 36, scope: !2462)
!2479 = !DILocation(line: 946, column: 23, scope: !2462)
!2480 = !DILocation(line: 946, column: 45, scope: !2462)
!2481 = !DILocation(line: 946, column: 60, scope: !2462)
!2482 = !DILocation(line: 948, column: 3, scope: !2462)
!2483 = !DILocation(line: 948, column: 32, scope: !2462)
!2484 = !DILocation(line: 185, column: 48, scope: !2471, inlinedAt: !2478)
!2485 = !DILocation(line: 187, column: 3, scope: !2471, inlinedAt: !2478)
!2486 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!2487 = !DILocation(line: 188, column: 13, scope: !2488, inlinedAt: !2478)
!2488 = distinct !DILexicalBlock(scope: !2471, file: !129, line: 188, column: 7)
!2489 = !DILocation(line: 188, column: 7, scope: !2471, inlinedAt: !2478)
!2490 = !DILocation(line: 189, column: 5, scope: !2488, inlinedAt: !2478)
!2491 = !{!2492}
!2492 = distinct !{!2492, !2493, !"quoting_options_from_style: argument 0"}
!2493 = distinct !{!2493, !"quoting_options_from_style"}
!2494 = !DILocation(line: 191, column: 10, scope: !2471, inlinedAt: !2478)
!2495 = !DILocation(line: 192, column: 1, scope: !2471, inlinedAt: !2478)
!2496 = !DILocation(line: 949, column: 10, scope: !2462)
!2497 = !DILocation(line: 950, column: 1, scope: !2462)
!2498 = !DILocation(line: 949, column: 3, scope: !2462)
!2499 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !129, file: !129, line: 953, type: !2500, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !85, variables: !2502)
!2500 = !DISubroutineType(types: !2501)
!2501 = !{!14, !34, !88, !6, !123}
!2502 = !{!2503, !2504, !2505, !2506, !2507}
!2503 = !DILocalVariable(name: "n", arg: 1, scope: !2499, file: !129, line: 953, type: !34)
!2504 = !DILocalVariable(name: "s", arg: 2, scope: !2499, file: !129, line: 953, type: !88)
!2505 = !DILocalVariable(name: "arg", arg: 3, scope: !2499, file: !129, line: 954, type: !6)
!2506 = !DILocalVariable(name: "argsize", arg: 4, scope: !2499, file: !129, line: 954, type: !123)
!2507 = !DILocalVariable(name: "o", scope: !2499, file: !129, line: 956, type: !1029)
!2508 = !DILocation(line: 187, column: 26, scope: !2471, inlinedAt: !2509)
!2509 = distinct !DILocation(line: 956, column: 36, scope: !2499)
!2510 = !DILocation(line: 953, column: 27, scope: !2499)
!2511 = !DILocation(line: 953, column: 49, scope: !2499)
!2512 = !DILocation(line: 954, column: 35, scope: !2499)
!2513 = !DILocation(line: 954, column: 47, scope: !2499)
!2514 = !DILocation(line: 956, column: 3, scope: !2499)
!2515 = !DILocation(line: 956, column: 32, scope: !2499)
!2516 = !DILocation(line: 185, column: 48, scope: !2471, inlinedAt: !2509)
!2517 = !DILocation(line: 187, column: 3, scope: !2471, inlinedAt: !2509)
!2518 = !DILocation(line: 188, column: 13, scope: !2488, inlinedAt: !2509)
!2519 = !DILocation(line: 188, column: 7, scope: !2471, inlinedAt: !2509)
!2520 = !DILocation(line: 189, column: 5, scope: !2488, inlinedAt: !2509)
!2521 = !{!2522}
!2522 = distinct !{!2522, !2523, !"quoting_options_from_style: argument 0"}
!2523 = distinct !{!2523, !"quoting_options_from_style"}
!2524 = !DILocation(line: 191, column: 10, scope: !2471, inlinedAt: !2509)
!2525 = !DILocation(line: 192, column: 1, scope: !2471, inlinedAt: !2509)
!2526 = !DILocation(line: 957, column: 10, scope: !2499)
!2527 = !DILocation(line: 958, column: 1, scope: !2499)
!2528 = !DILocation(line: 957, column: 3, scope: !2499)
!2529 = distinct !DISubprogram(name: "quotearg_style", scope: !129, file: !129, line: 961, type: !2530, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !85, variables: !2532)
!2530 = !DISubroutineType(types: !2531)
!2531 = !{!14, !88, !6}
!2532 = !{!2533, !2534}
!2533 = !DILocalVariable(name: "s", arg: 1, scope: !2529, file: !129, line: 961, type: !88)
!2534 = !DILocalVariable(name: "arg", arg: 2, scope: !2529, file: !129, line: 961, type: !6)
!2535 = !DILocation(line: 187, column: 26, scope: !2471, inlinedAt: !2536)
!2536 = distinct !DILocation(line: 948, column: 36, scope: !2462, inlinedAt: !2537)
!2537 = distinct !DILocation(line: 963, column: 10, scope: !2529)
!2538 = !DILocation(line: 961, column: 36, scope: !2529)
!2539 = !DILocation(line: 961, column: 51, scope: !2529)
!2540 = !DILocation(line: 946, column: 23, scope: !2462, inlinedAt: !2537)
!2541 = !DILocation(line: 946, column: 45, scope: !2462, inlinedAt: !2537)
!2542 = !DILocation(line: 946, column: 60, scope: !2462, inlinedAt: !2537)
!2543 = !DILocation(line: 948, column: 3, scope: !2462, inlinedAt: !2537)
!2544 = !DILocation(line: 948, column: 32, scope: !2462, inlinedAt: !2537)
!2545 = !DILocation(line: 185, column: 48, scope: !2471, inlinedAt: !2536)
!2546 = !DILocation(line: 187, column: 3, scope: !2471, inlinedAt: !2536)
!2547 = !DILocation(line: 188, column: 13, scope: !2488, inlinedAt: !2536)
!2548 = !DILocation(line: 188, column: 7, scope: !2471, inlinedAt: !2536)
!2549 = !DILocation(line: 189, column: 5, scope: !2488, inlinedAt: !2536)
!2550 = !{!2551}
!2551 = distinct !{!2551, !2552, !"quoting_options_from_style: argument 0"}
!2552 = distinct !{!2552, !"quoting_options_from_style"}
!2553 = !DILocation(line: 191, column: 10, scope: !2471, inlinedAt: !2536)
!2554 = !DILocation(line: 192, column: 1, scope: !2471, inlinedAt: !2536)
!2555 = !DILocation(line: 949, column: 10, scope: !2462, inlinedAt: !2537)
!2556 = !DILocation(line: 950, column: 1, scope: !2462, inlinedAt: !2537)
!2557 = !DILocation(line: 963, column: 3, scope: !2529)
!2558 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !129, file: !129, line: 967, type: !2559, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !85, variables: !2561)
!2559 = !DISubroutineType(types: !2560)
!2560 = !{!14, !88, !6, !123}
!2561 = !{!2562, !2563, !2564}
!2562 = !DILocalVariable(name: "s", arg: 1, scope: !2558, file: !129, line: 967, type: !88)
!2563 = !DILocalVariable(name: "arg", arg: 2, scope: !2558, file: !129, line: 967, type: !6)
!2564 = !DILocalVariable(name: "argsize", arg: 3, scope: !2558, file: !129, line: 967, type: !123)
!2565 = !DILocation(line: 187, column: 26, scope: !2471, inlinedAt: !2566)
!2566 = distinct !DILocation(line: 956, column: 36, scope: !2499, inlinedAt: !2567)
!2567 = distinct !DILocation(line: 969, column: 10, scope: !2558)
!2568 = !DILocation(line: 967, column: 40, scope: !2558)
!2569 = !DILocation(line: 967, column: 55, scope: !2558)
!2570 = !DILocation(line: 967, column: 67, scope: !2558)
!2571 = !DILocation(line: 953, column: 27, scope: !2499, inlinedAt: !2567)
!2572 = !DILocation(line: 953, column: 49, scope: !2499, inlinedAt: !2567)
!2573 = !DILocation(line: 954, column: 35, scope: !2499, inlinedAt: !2567)
!2574 = !DILocation(line: 954, column: 47, scope: !2499, inlinedAt: !2567)
!2575 = !DILocation(line: 956, column: 3, scope: !2499, inlinedAt: !2567)
!2576 = !DILocation(line: 956, column: 32, scope: !2499, inlinedAt: !2567)
!2577 = !DILocation(line: 185, column: 48, scope: !2471, inlinedAt: !2566)
!2578 = !DILocation(line: 187, column: 3, scope: !2471, inlinedAt: !2566)
!2579 = !DILocation(line: 188, column: 13, scope: !2488, inlinedAt: !2566)
!2580 = !DILocation(line: 188, column: 7, scope: !2471, inlinedAt: !2566)
!2581 = !DILocation(line: 189, column: 5, scope: !2488, inlinedAt: !2566)
!2582 = !{!2583}
!2583 = distinct !{!2583, !2584, !"quoting_options_from_style: argument 0"}
!2584 = distinct !{!2584, !"quoting_options_from_style"}
!2585 = !DILocation(line: 191, column: 10, scope: !2471, inlinedAt: !2566)
!2586 = !DILocation(line: 192, column: 1, scope: !2471, inlinedAt: !2566)
!2587 = !DILocation(line: 957, column: 10, scope: !2499, inlinedAt: !2567)
!2588 = !DILocation(line: 958, column: 1, scope: !2499, inlinedAt: !2567)
!2589 = !DILocation(line: 969, column: 3, scope: !2558)
!2590 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !129, file: !129, line: 973, type: !2591, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !85, variables: !2593)
!2591 = !DISubroutineType(types: !2592)
!2592 = !{!14, !6, !123, !8}
!2593 = !{!2594, !2595, !2596, !2597}
!2594 = !DILocalVariable(name: "arg", arg: 1, scope: !2590, file: !129, line: 973, type: !6)
!2595 = !DILocalVariable(name: "argsize", arg: 2, scope: !2590, file: !129, line: 973, type: !123)
!2596 = !DILocalVariable(name: "ch", arg: 3, scope: !2590, file: !129, line: 973, type: !8)
!2597 = !DILocalVariable(name: "options", scope: !2590, file: !129, line: 975, type: !136)
!2598 = !DILocation(line: 973, column: 32, scope: !2590)
!2599 = !DILocation(line: 973, column: 44, scope: !2590)
!2600 = !DILocation(line: 973, column: 58, scope: !2590)
!2601 = !DILocation(line: 975, column: 3, scope: !2590)
!2602 = !DILocation(line: 976, column: 13, scope: !2590)
!2603 = !{i64 0, i64 4, !768, i64 4, i64 4, !731, i64 8, i64 32, !768, i64 40, i64 8, !650, i64 48, i64 8, !650}
!2604 = !DILocation(line: 975, column: 26, scope: !2590)
!2605 = !DILocation(line: 144, column: 43, scope: !1052, inlinedAt: !2606)
!2606 = distinct !DILocation(line: 977, column: 3, scope: !2590)
!2607 = !DILocation(line: 144, column: 51, scope: !1052, inlinedAt: !2606)
!2608 = !DILocation(line: 144, column: 58, scope: !1052, inlinedAt: !2606)
!2609 = !DILocation(line: 146, column: 17, scope: !1052, inlinedAt: !2606)
!2610 = !DILocation(line: 148, column: 62, scope: !1070, inlinedAt: !2606)
!2611 = !DILocation(line: 148, column: 57, scope: !1070, inlinedAt: !2606)
!2612 = !DILocation(line: 147, column: 17, scope: !1052, inlinedAt: !2606)
!2613 = !DILocation(line: 149, column: 18, scope: !1052, inlinedAt: !2606)
!2614 = !DILocation(line: 149, column: 15, scope: !1052, inlinedAt: !2606)
!2615 = !DILocation(line: 149, column: 7, scope: !1052, inlinedAt: !2606)
!2616 = !DILocation(line: 150, column: 12, scope: !1052, inlinedAt: !2606)
!2617 = !DILocation(line: 150, column: 15, scope: !1052, inlinedAt: !2606)
!2618 = !DILocation(line: 150, column: 25, scope: !1052, inlinedAt: !2606)
!2619 = !DILocation(line: 150, column: 7, scope: !1052, inlinedAt: !2606)
!2620 = !DILocation(line: 151, column: 18, scope: !1052, inlinedAt: !2606)
!2621 = !DILocation(line: 151, column: 23, scope: !1052, inlinedAt: !2606)
!2622 = !DILocation(line: 151, column: 6, scope: !1052, inlinedAt: !2606)
!2623 = !DILocation(line: 978, column: 10, scope: !2590)
!2624 = !DILocation(line: 979, column: 1, scope: !2590)
!2625 = !DILocation(line: 978, column: 3, scope: !2590)
!2626 = distinct !DISubprogram(name: "quotearg_char", scope: !129, file: !129, line: 982, type: !2627, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !85, variables: !2629)
!2627 = !DISubroutineType(types: !2628)
!2628 = !{!14, !6, !8}
!2629 = !{!2630, !2631}
!2630 = !DILocalVariable(name: "arg", arg: 1, scope: !2626, file: !129, line: 982, type: !6)
!2631 = !DILocalVariable(name: "ch", arg: 2, scope: !2626, file: !129, line: 982, type: !8)
!2632 = !DILocation(line: 982, column: 28, scope: !2626)
!2633 = !DILocation(line: 982, column: 38, scope: !2626)
!2634 = !DILocation(line: 973, column: 32, scope: !2590, inlinedAt: !2635)
!2635 = distinct !DILocation(line: 984, column: 10, scope: !2626)
!2636 = !DILocation(line: 973, column: 44, scope: !2590, inlinedAt: !2635)
!2637 = !DILocation(line: 973, column: 58, scope: !2590, inlinedAt: !2635)
!2638 = !DILocation(line: 975, column: 3, scope: !2590, inlinedAt: !2635)
!2639 = !DILocation(line: 976, column: 13, scope: !2590, inlinedAt: !2635)
!2640 = !DILocation(line: 975, column: 26, scope: !2590, inlinedAt: !2635)
!2641 = !DILocation(line: 144, column: 43, scope: !1052, inlinedAt: !2642)
!2642 = distinct !DILocation(line: 977, column: 3, scope: !2590, inlinedAt: !2635)
!2643 = !DILocation(line: 144, column: 51, scope: !1052, inlinedAt: !2642)
!2644 = !DILocation(line: 144, column: 58, scope: !1052, inlinedAt: !2642)
!2645 = !DILocation(line: 146, column: 17, scope: !1052, inlinedAt: !2642)
!2646 = !DILocation(line: 148, column: 62, scope: !1070, inlinedAt: !2642)
!2647 = !DILocation(line: 148, column: 57, scope: !1070, inlinedAt: !2642)
!2648 = !DILocation(line: 147, column: 17, scope: !1052, inlinedAt: !2642)
!2649 = !DILocation(line: 149, column: 18, scope: !1052, inlinedAt: !2642)
!2650 = !DILocation(line: 149, column: 15, scope: !1052, inlinedAt: !2642)
!2651 = !DILocation(line: 149, column: 7, scope: !1052, inlinedAt: !2642)
!2652 = !DILocation(line: 150, column: 12, scope: !1052, inlinedAt: !2642)
!2653 = !DILocation(line: 150, column: 15, scope: !1052, inlinedAt: !2642)
!2654 = !DILocation(line: 150, column: 25, scope: !1052, inlinedAt: !2642)
!2655 = !DILocation(line: 150, column: 7, scope: !1052, inlinedAt: !2642)
!2656 = !DILocation(line: 151, column: 18, scope: !1052, inlinedAt: !2642)
!2657 = !DILocation(line: 151, column: 23, scope: !1052, inlinedAt: !2642)
!2658 = !DILocation(line: 151, column: 6, scope: !1052, inlinedAt: !2642)
!2659 = !DILocation(line: 978, column: 10, scope: !2590, inlinedAt: !2635)
!2660 = !DILocation(line: 979, column: 1, scope: !2590, inlinedAt: !2635)
!2661 = !DILocation(line: 984, column: 3, scope: !2626)
!2662 = distinct !DISubprogram(name: "quotearg_colon", scope: !129, file: !129, line: 988, type: !2438, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !85, variables: !2663)
!2663 = !{!2664}
!2664 = !DILocalVariable(name: "arg", arg: 1, scope: !2662, file: !129, line: 988, type: !6)
!2665 = !DILocation(line: 988, column: 29, scope: !2662)
!2666 = !DILocation(line: 982, column: 28, scope: !2626, inlinedAt: !2667)
!2667 = distinct !DILocation(line: 990, column: 10, scope: !2662)
!2668 = !DILocation(line: 982, column: 38, scope: !2626, inlinedAt: !2667)
!2669 = !DILocation(line: 973, column: 32, scope: !2590, inlinedAt: !2670)
!2670 = distinct !DILocation(line: 984, column: 10, scope: !2626, inlinedAt: !2667)
!2671 = !DILocation(line: 973, column: 44, scope: !2590, inlinedAt: !2670)
!2672 = !DILocation(line: 973, column: 58, scope: !2590, inlinedAt: !2670)
!2673 = !DILocation(line: 975, column: 3, scope: !2590, inlinedAt: !2670)
!2674 = !DILocation(line: 976, column: 13, scope: !2590, inlinedAt: !2670)
!2675 = !DILocation(line: 975, column: 26, scope: !2590, inlinedAt: !2670)
!2676 = !DILocation(line: 144, column: 43, scope: !1052, inlinedAt: !2677)
!2677 = distinct !DILocation(line: 977, column: 3, scope: !2590, inlinedAt: !2670)
!2678 = !DILocation(line: 144, column: 51, scope: !1052, inlinedAt: !2677)
!2679 = !DILocation(line: 144, column: 58, scope: !1052, inlinedAt: !2677)
!2680 = !DILocation(line: 146, column: 17, scope: !1052, inlinedAt: !2677)
!2681 = !DILocation(line: 148, column: 57, scope: !1070, inlinedAt: !2677)
!2682 = !DILocation(line: 147, column: 17, scope: !1052, inlinedAt: !2677)
!2683 = !DILocation(line: 149, column: 7, scope: !1052, inlinedAt: !2677)
!2684 = !DILocation(line: 150, column: 12, scope: !1052, inlinedAt: !2677)
!2685 = !DILocation(line: 151, column: 6, scope: !1052, inlinedAt: !2677)
!2686 = !DILocation(line: 978, column: 10, scope: !2590, inlinedAt: !2670)
!2687 = !DILocation(line: 979, column: 1, scope: !2590, inlinedAt: !2670)
!2688 = !DILocation(line: 990, column: 3, scope: !2662)
!2689 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !129, file: !129, line: 994, type: !2449, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !85, variables: !2690)
!2690 = !{!2691, !2692}
!2691 = !DILocalVariable(name: "arg", arg: 1, scope: !2689, file: !129, line: 994, type: !6)
!2692 = !DILocalVariable(name: "argsize", arg: 2, scope: !2689, file: !129, line: 994, type: !123)
!2693 = !DILocation(line: 994, column: 33, scope: !2689)
!2694 = !DILocation(line: 994, column: 45, scope: !2689)
!2695 = !DILocation(line: 973, column: 32, scope: !2590, inlinedAt: !2696)
!2696 = distinct !DILocation(line: 996, column: 10, scope: !2689)
!2697 = !DILocation(line: 973, column: 44, scope: !2590, inlinedAt: !2696)
!2698 = !DILocation(line: 973, column: 58, scope: !2590, inlinedAt: !2696)
!2699 = !DILocation(line: 975, column: 3, scope: !2590, inlinedAt: !2696)
!2700 = !DILocation(line: 976, column: 13, scope: !2590, inlinedAt: !2696)
!2701 = !DILocation(line: 975, column: 26, scope: !2590, inlinedAt: !2696)
!2702 = !DILocation(line: 144, column: 43, scope: !1052, inlinedAt: !2703)
!2703 = distinct !DILocation(line: 977, column: 3, scope: !2590, inlinedAt: !2696)
!2704 = !DILocation(line: 144, column: 51, scope: !1052, inlinedAt: !2703)
!2705 = !DILocation(line: 144, column: 58, scope: !1052, inlinedAt: !2703)
!2706 = !DILocation(line: 146, column: 17, scope: !1052, inlinedAt: !2703)
!2707 = !DILocation(line: 148, column: 57, scope: !1070, inlinedAt: !2703)
!2708 = !DILocation(line: 147, column: 17, scope: !1052, inlinedAt: !2703)
!2709 = !DILocation(line: 149, column: 7, scope: !1052, inlinedAt: !2703)
!2710 = !DILocation(line: 150, column: 12, scope: !1052, inlinedAt: !2703)
!2711 = !DILocation(line: 151, column: 6, scope: !1052, inlinedAt: !2703)
!2712 = !DILocation(line: 978, column: 10, scope: !2590, inlinedAt: !2696)
!2713 = !DILocation(line: 979, column: 1, scope: !2590, inlinedAt: !2696)
!2714 = !DILocation(line: 996, column: 3, scope: !2689)
!2715 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !129, file: !129, line: 1000, type: !2463, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !85, variables: !2716)
!2716 = !{!2717, !2718, !2719, !2720}
!2717 = !DILocalVariable(name: "n", arg: 1, scope: !2715, file: !129, line: 1000, type: !34)
!2718 = !DILocalVariable(name: "s", arg: 2, scope: !2715, file: !129, line: 1000, type: !88)
!2719 = !DILocalVariable(name: "arg", arg: 3, scope: !2715, file: !129, line: 1000, type: !6)
!2720 = !DILocalVariable(name: "options", scope: !2715, file: !129, line: 1002, type: !136)
!2721 = !DILocation(line: 187, column: 26, scope: !2471, inlinedAt: !2722)
!2722 = distinct !DILocation(line: 1003, column: 13, scope: !2715)
!2723 = !DILocation(line: 1000, column: 29, scope: !2715)
!2724 = !DILocation(line: 1000, column: 51, scope: !2715)
!2725 = !DILocation(line: 1000, column: 66, scope: !2715)
!2726 = !DILocation(line: 1002, column: 3, scope: !2715)
!2727 = !DILocation(line: 185, column: 48, scope: !2471, inlinedAt: !2722)
!2728 = !DILocation(line: 187, column: 3, scope: !2471, inlinedAt: !2722)
!2729 = !DILocation(line: 188, column: 13, scope: !2488, inlinedAt: !2722)
!2730 = !DILocation(line: 188, column: 7, scope: !2471, inlinedAt: !2722)
!2731 = !DILocation(line: 189, column: 5, scope: !2488, inlinedAt: !2722)
!2732 = !{!2733}
!2733 = distinct !{!2733, !2734, !"quoting_options_from_style: argument 0"}
!2734 = distinct !{!2734, !"quoting_options_from_style"}
!2735 = !DILocation(line: 191, column: 10, scope: !2471, inlinedAt: !2722)
!2736 = !DILocation(line: 192, column: 1, scope: !2471, inlinedAt: !2722)
!2737 = !DILocation(line: 1003, column: 13, scope: !2715)
!2738 = !DILocation(line: 1002, column: 26, scope: !2715)
!2739 = !DILocation(line: 144, column: 43, scope: !1052, inlinedAt: !2740)
!2740 = distinct !DILocation(line: 1004, column: 3, scope: !2715)
!2741 = !DILocation(line: 144, column: 51, scope: !1052, inlinedAt: !2740)
!2742 = !DILocation(line: 144, column: 58, scope: !1052, inlinedAt: !2740)
!2743 = !DILocation(line: 146, column: 17, scope: !1052, inlinedAt: !2740)
!2744 = !DILocation(line: 148, column: 57, scope: !1070, inlinedAt: !2740)
!2745 = !DILocation(line: 147, column: 17, scope: !1052, inlinedAt: !2740)
!2746 = !DILocation(line: 149, column: 7, scope: !1052, inlinedAt: !2740)
!2747 = !DILocation(line: 150, column: 12, scope: !1052, inlinedAt: !2740)
!2748 = !DILocation(line: 151, column: 6, scope: !1052, inlinedAt: !2740)
!2749 = !DILocation(line: 1005, column: 10, scope: !2715)
!2750 = !DILocation(line: 1006, column: 1, scope: !2715)
!2751 = !DILocation(line: 1005, column: 3, scope: !2715)
!2752 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !129, file: !129, line: 1009, type: !2753, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !85, variables: !2755)
!2753 = !DISubroutineType(types: !2754)
!2754 = !{!14, !34, !6, !6, !6}
!2755 = !{!2756, !2757, !2758, !2759}
!2756 = !DILocalVariable(name: "n", arg: 1, scope: !2752, file: !129, line: 1009, type: !34)
!2757 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2752, file: !129, line: 1009, type: !6)
!2758 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2752, file: !129, line: 1010, type: !6)
!2759 = !DILocalVariable(name: "arg", arg: 4, scope: !2752, file: !129, line: 1010, type: !6)
!2760 = !DILocation(line: 1009, column: 24, scope: !2752)
!2761 = !DILocation(line: 1009, column: 39, scope: !2752)
!2762 = !DILocation(line: 1010, column: 32, scope: !2752)
!2763 = !DILocation(line: 1010, column: 57, scope: !2752)
!2764 = !DILocalVariable(name: "n", arg: 1, scope: !2765, file: !129, line: 1017, type: !34)
!2765 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !129, file: !129, line: 1017, type: !2766, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !85, variables: !2768)
!2766 = !DISubroutineType(types: !2767)
!2767 = !{!14, !34, !6, !6, !6, !123}
!2768 = !{!2764, !2769, !2770, !2771, !2772, !2773}
!2769 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2765, file: !129, line: 1017, type: !6)
!2770 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2765, file: !129, line: 1018, type: !6)
!2771 = !DILocalVariable(name: "arg", arg: 4, scope: !2765, file: !129, line: 1019, type: !6)
!2772 = !DILocalVariable(name: "argsize", arg: 5, scope: !2765, file: !129, line: 1019, type: !123)
!2773 = !DILocalVariable(name: "o", scope: !2765, file: !129, line: 1021, type: !136)
!2774 = !DILocation(line: 1017, column: 28, scope: !2765, inlinedAt: !2775)
!2775 = distinct !DILocation(line: 1012, column: 10, scope: !2752)
!2776 = !DILocation(line: 1017, column: 43, scope: !2765, inlinedAt: !2775)
!2777 = !DILocation(line: 1018, column: 36, scope: !2765, inlinedAt: !2775)
!2778 = !DILocation(line: 1019, column: 36, scope: !2765, inlinedAt: !2775)
!2779 = !DILocation(line: 1019, column: 48, scope: !2765, inlinedAt: !2775)
!2780 = !DILocation(line: 1021, column: 3, scope: !2765, inlinedAt: !2775)
!2781 = !DILocation(line: 1021, column: 30, scope: !2765, inlinedAt: !2775)
!2782 = !DILocation(line: 1021, column: 26, scope: !2765, inlinedAt: !2775)
!2783 = !DILocation(line: 171, column: 45, scope: !1102, inlinedAt: !2784)
!2784 = distinct !DILocation(line: 1022, column: 3, scope: !2765, inlinedAt: !2775)
!2785 = !DILocation(line: 172, column: 33, scope: !1102, inlinedAt: !2784)
!2786 = !DILocation(line: 172, column: 57, scope: !1102, inlinedAt: !2784)
!2787 = !DILocation(line: 176, column: 6, scope: !1102, inlinedAt: !2784)
!2788 = !DILocation(line: 176, column: 12, scope: !1102, inlinedAt: !2784)
!2789 = !DILocation(line: 177, column: 8, scope: !1118, inlinedAt: !2784)
!2790 = !DILocation(line: 177, column: 23, scope: !1120, inlinedAt: !2784)
!2791 = !DILocation(line: 177, column: 19, scope: !1118, inlinedAt: !2784)
!2792 = !DILocation(line: 178, column: 5, scope: !1118, inlinedAt: !2784)
!2793 = !DILocation(line: 179, column: 6, scope: !1102, inlinedAt: !2784)
!2794 = !DILocation(line: 179, column: 17, scope: !1102, inlinedAt: !2784)
!2795 = !DILocation(line: 180, column: 6, scope: !1102, inlinedAt: !2784)
!2796 = !DILocation(line: 180, column: 18, scope: !1102, inlinedAt: !2784)
!2797 = !DILocation(line: 1023, column: 10, scope: !2765, inlinedAt: !2775)
!2798 = !DILocation(line: 1024, column: 1, scope: !2765, inlinedAt: !2775)
!2799 = !DILocation(line: 1012, column: 3, scope: !2752)
!2800 = !DILocation(line: 1017, column: 28, scope: !2765)
!2801 = !DILocation(line: 1017, column: 43, scope: !2765)
!2802 = !DILocation(line: 1018, column: 36, scope: !2765)
!2803 = !DILocation(line: 1019, column: 36, scope: !2765)
!2804 = !DILocation(line: 1019, column: 48, scope: !2765)
!2805 = !DILocation(line: 1021, column: 3, scope: !2765)
!2806 = !DILocation(line: 1021, column: 30, scope: !2765)
!2807 = !DILocation(line: 1021, column: 26, scope: !2765)
!2808 = !DILocation(line: 171, column: 45, scope: !1102, inlinedAt: !2809)
!2809 = distinct !DILocation(line: 1022, column: 3, scope: !2765)
!2810 = !DILocation(line: 172, column: 33, scope: !1102, inlinedAt: !2809)
!2811 = !DILocation(line: 172, column: 57, scope: !1102, inlinedAt: !2809)
!2812 = !DILocation(line: 176, column: 6, scope: !1102, inlinedAt: !2809)
!2813 = !DILocation(line: 176, column: 12, scope: !1102, inlinedAt: !2809)
!2814 = !DILocation(line: 177, column: 8, scope: !1118, inlinedAt: !2809)
!2815 = !DILocation(line: 177, column: 23, scope: !1120, inlinedAt: !2809)
!2816 = !DILocation(line: 177, column: 19, scope: !1118, inlinedAt: !2809)
!2817 = !DILocation(line: 178, column: 5, scope: !1118, inlinedAt: !2809)
!2818 = !DILocation(line: 179, column: 6, scope: !1102, inlinedAt: !2809)
!2819 = !DILocation(line: 179, column: 17, scope: !1102, inlinedAt: !2809)
!2820 = !DILocation(line: 180, column: 6, scope: !1102, inlinedAt: !2809)
!2821 = !DILocation(line: 180, column: 18, scope: !1102, inlinedAt: !2809)
!2822 = !DILocation(line: 1023, column: 10, scope: !2765)
!2823 = !DILocation(line: 1024, column: 1, scope: !2765)
!2824 = !DILocation(line: 1023, column: 3, scope: !2765)
!2825 = distinct !DISubprogram(name: "quotearg_custom", scope: !129, file: !129, line: 1027, type: !2826, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !85, variables: !2828)
!2826 = !DISubroutineType(types: !2827)
!2827 = !{!14, !6, !6, !6}
!2828 = !{!2829, !2830, !2831}
!2829 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2825, file: !129, line: 1027, type: !6)
!2830 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2825, file: !129, line: 1027, type: !6)
!2831 = !DILocalVariable(name: "arg", arg: 3, scope: !2825, file: !129, line: 1028, type: !6)
!2832 = !DILocation(line: 1027, column: 30, scope: !2825)
!2833 = !DILocation(line: 1027, column: 54, scope: !2825)
!2834 = !DILocation(line: 1028, column: 30, scope: !2825)
!2835 = !DILocation(line: 1009, column: 24, scope: !2752, inlinedAt: !2836)
!2836 = distinct !DILocation(line: 1030, column: 10, scope: !2825)
!2837 = !DILocation(line: 1009, column: 39, scope: !2752, inlinedAt: !2836)
!2838 = !DILocation(line: 1010, column: 32, scope: !2752, inlinedAt: !2836)
!2839 = !DILocation(line: 1010, column: 57, scope: !2752, inlinedAt: !2836)
!2840 = !DILocation(line: 1017, column: 28, scope: !2765, inlinedAt: !2841)
!2841 = distinct !DILocation(line: 1012, column: 10, scope: !2752, inlinedAt: !2836)
!2842 = !DILocation(line: 1017, column: 43, scope: !2765, inlinedAt: !2841)
!2843 = !DILocation(line: 1018, column: 36, scope: !2765, inlinedAt: !2841)
!2844 = !DILocation(line: 1019, column: 36, scope: !2765, inlinedAt: !2841)
!2845 = !DILocation(line: 1019, column: 48, scope: !2765, inlinedAt: !2841)
!2846 = !DILocation(line: 1021, column: 3, scope: !2765, inlinedAt: !2841)
!2847 = !DILocation(line: 1021, column: 30, scope: !2765, inlinedAt: !2841)
!2848 = !DILocation(line: 1021, column: 26, scope: !2765, inlinedAt: !2841)
!2849 = !DILocation(line: 171, column: 45, scope: !1102, inlinedAt: !2850)
!2850 = distinct !DILocation(line: 1022, column: 3, scope: !2765, inlinedAt: !2841)
!2851 = !DILocation(line: 172, column: 33, scope: !1102, inlinedAt: !2850)
!2852 = !DILocation(line: 172, column: 57, scope: !1102, inlinedAt: !2850)
!2853 = !DILocation(line: 176, column: 6, scope: !1102, inlinedAt: !2850)
!2854 = !DILocation(line: 176, column: 12, scope: !1102, inlinedAt: !2850)
!2855 = !DILocation(line: 177, column: 8, scope: !1118, inlinedAt: !2850)
!2856 = !DILocation(line: 177, column: 23, scope: !1120, inlinedAt: !2850)
!2857 = !DILocation(line: 177, column: 19, scope: !1118, inlinedAt: !2850)
!2858 = !DILocation(line: 178, column: 5, scope: !1118, inlinedAt: !2850)
!2859 = !DILocation(line: 179, column: 6, scope: !1102, inlinedAt: !2850)
!2860 = !DILocation(line: 179, column: 17, scope: !1102, inlinedAt: !2850)
!2861 = !DILocation(line: 180, column: 6, scope: !1102, inlinedAt: !2850)
!2862 = !DILocation(line: 180, column: 18, scope: !1102, inlinedAt: !2850)
!2863 = !DILocation(line: 1023, column: 10, scope: !2765, inlinedAt: !2841)
!2864 = !DILocation(line: 1024, column: 1, scope: !2765, inlinedAt: !2841)
!2865 = !DILocation(line: 1030, column: 3, scope: !2825)
!2866 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !129, file: !129, line: 1034, type: !2867, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !85, variables: !2869)
!2867 = !DISubroutineType(types: !2868)
!2868 = !{!14, !6, !6, !6, !123}
!2869 = !{!2870, !2871, !2872, !2873}
!2870 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2866, file: !129, line: 1034, type: !6)
!2871 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2866, file: !129, line: 1034, type: !6)
!2872 = !DILocalVariable(name: "arg", arg: 3, scope: !2866, file: !129, line: 1035, type: !6)
!2873 = !DILocalVariable(name: "argsize", arg: 4, scope: !2866, file: !129, line: 1035, type: !123)
!2874 = !DILocation(line: 1034, column: 34, scope: !2866)
!2875 = !DILocation(line: 1034, column: 58, scope: !2866)
!2876 = !DILocation(line: 1035, column: 34, scope: !2866)
!2877 = !DILocation(line: 1035, column: 46, scope: !2866)
!2878 = !DILocation(line: 1017, column: 28, scope: !2765, inlinedAt: !2879)
!2879 = distinct !DILocation(line: 1037, column: 10, scope: !2866)
!2880 = !DILocation(line: 1017, column: 43, scope: !2765, inlinedAt: !2879)
!2881 = !DILocation(line: 1018, column: 36, scope: !2765, inlinedAt: !2879)
!2882 = !DILocation(line: 1019, column: 36, scope: !2765, inlinedAt: !2879)
!2883 = !DILocation(line: 1019, column: 48, scope: !2765, inlinedAt: !2879)
!2884 = !DILocation(line: 1021, column: 3, scope: !2765, inlinedAt: !2879)
!2885 = !DILocation(line: 1021, column: 30, scope: !2765, inlinedAt: !2879)
!2886 = !DILocation(line: 1021, column: 26, scope: !2765, inlinedAt: !2879)
!2887 = !DILocation(line: 171, column: 45, scope: !1102, inlinedAt: !2888)
!2888 = distinct !DILocation(line: 1022, column: 3, scope: !2765, inlinedAt: !2879)
!2889 = !DILocation(line: 172, column: 33, scope: !1102, inlinedAt: !2888)
!2890 = !DILocation(line: 172, column: 57, scope: !1102, inlinedAt: !2888)
!2891 = !DILocation(line: 176, column: 6, scope: !1102, inlinedAt: !2888)
!2892 = !DILocation(line: 176, column: 12, scope: !1102, inlinedAt: !2888)
!2893 = !DILocation(line: 177, column: 8, scope: !1118, inlinedAt: !2888)
!2894 = !DILocation(line: 177, column: 23, scope: !1120, inlinedAt: !2888)
!2895 = !DILocation(line: 177, column: 19, scope: !1118, inlinedAt: !2888)
!2896 = !DILocation(line: 178, column: 5, scope: !1118, inlinedAt: !2888)
!2897 = !DILocation(line: 179, column: 6, scope: !1102, inlinedAt: !2888)
!2898 = !DILocation(line: 179, column: 17, scope: !1102, inlinedAt: !2888)
!2899 = !DILocation(line: 180, column: 6, scope: !1102, inlinedAt: !2888)
!2900 = !DILocation(line: 180, column: 18, scope: !1102, inlinedAt: !2888)
!2901 = !DILocation(line: 1023, column: 10, scope: !2765, inlinedAt: !2879)
!2902 = !DILocation(line: 1024, column: 1, scope: !2765, inlinedAt: !2879)
!2903 = !DILocation(line: 1037, column: 3, scope: !2866)
!2904 = distinct !DISubprogram(name: "quote_n_mem", scope: !129, file: !129, line: 1052, type: !2905, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !85, variables: !2907)
!2905 = !DISubroutineType(types: !2906)
!2906 = !{!6, !34, !6, !123}
!2907 = !{!2908, !2909, !2910}
!2908 = !DILocalVariable(name: "n", arg: 1, scope: !2904, file: !129, line: 1052, type: !34)
!2909 = !DILocalVariable(name: "arg", arg: 2, scope: !2904, file: !129, line: 1052, type: !6)
!2910 = !DILocalVariable(name: "argsize", arg: 3, scope: !2904, file: !129, line: 1052, type: !123)
!2911 = !DILocation(line: 1052, column: 18, scope: !2904)
!2912 = !DILocation(line: 1052, column: 33, scope: !2904)
!2913 = !DILocation(line: 1052, column: 45, scope: !2904)
!2914 = !DILocation(line: 1054, column: 10, scope: !2904)
!2915 = !DILocation(line: 1054, column: 3, scope: !2904)
!2916 = distinct !DISubprogram(name: "quote_mem", scope: !129, file: !129, line: 1058, type: !2917, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !85, variables: !2919)
!2917 = !DISubroutineType(types: !2918)
!2918 = !{!6, !6, !123}
!2919 = !{!2920, !2921}
!2920 = !DILocalVariable(name: "arg", arg: 1, scope: !2916, file: !129, line: 1058, type: !6)
!2921 = !DILocalVariable(name: "argsize", arg: 2, scope: !2916, file: !129, line: 1058, type: !123)
!2922 = !DILocation(line: 1058, column: 24, scope: !2916)
!2923 = !DILocation(line: 1058, column: 36, scope: !2916)
!2924 = !DILocation(line: 1052, column: 18, scope: !2904, inlinedAt: !2925)
!2925 = distinct !DILocation(line: 1060, column: 10, scope: !2916)
!2926 = !DILocation(line: 1052, column: 33, scope: !2904, inlinedAt: !2925)
!2927 = !DILocation(line: 1052, column: 45, scope: !2904, inlinedAt: !2925)
!2928 = !DILocation(line: 1054, column: 10, scope: !2904, inlinedAt: !2925)
!2929 = !DILocation(line: 1060, column: 3, scope: !2916)
!2930 = distinct !DISubprogram(name: "quote_n", scope: !129, file: !129, line: 1064, type: !2931, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !85, variables: !2933)
!2931 = !DISubroutineType(types: !2932)
!2932 = !{!6, !34, !6}
!2933 = !{!2934, !2935}
!2934 = !DILocalVariable(name: "n", arg: 1, scope: !2930, file: !129, line: 1064, type: !34)
!2935 = !DILocalVariable(name: "arg", arg: 2, scope: !2930, file: !129, line: 1064, type: !6)
!2936 = !DILocation(line: 1064, column: 14, scope: !2930)
!2937 = !DILocation(line: 1064, column: 29, scope: !2930)
!2938 = !DILocation(line: 1052, column: 18, scope: !2904, inlinedAt: !2939)
!2939 = distinct !DILocation(line: 1066, column: 10, scope: !2930)
!2940 = !DILocation(line: 1052, column: 33, scope: !2904, inlinedAt: !2939)
!2941 = !DILocation(line: 1052, column: 45, scope: !2904, inlinedAt: !2939)
!2942 = !DILocation(line: 1054, column: 10, scope: !2904, inlinedAt: !2939)
!2943 = !DILocation(line: 1066, column: 3, scope: !2930)
!2944 = distinct !DISubprogram(name: "quote", scope: !129, file: !129, line: 1070, type: !2945, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !85, variables: !2947)
!2945 = !DISubroutineType(types: !2946)
!2946 = !{!6, !6}
!2947 = !{!2948}
!2948 = !DILocalVariable(name: "arg", arg: 1, scope: !2944, file: !129, line: 1070, type: !6)
!2949 = !DILocation(line: 1070, column: 20, scope: !2944)
!2950 = !DILocation(line: 1064, column: 14, scope: !2930, inlinedAt: !2951)
!2951 = distinct !DILocation(line: 1072, column: 10, scope: !2944)
!2952 = !DILocation(line: 1064, column: 29, scope: !2930, inlinedAt: !2951)
!2953 = !DILocation(line: 1052, column: 18, scope: !2904, inlinedAt: !2954)
!2954 = distinct !DILocation(line: 1066, column: 10, scope: !2930, inlinedAt: !2951)
!2955 = !DILocation(line: 1052, column: 33, scope: !2904, inlinedAt: !2954)
!2956 = !DILocation(line: 1052, column: 45, scope: !2904, inlinedAt: !2954)
!2957 = !DILocation(line: 1054, column: 10, scope: !2904, inlinedAt: !2954)
!2958 = !DILocation(line: 1072, column: 3, scope: !2944)
!2959 = distinct !DISubprogram(name: "version_etc_arn", scope: !569, file: !569, line: 62, type: !2960, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !565, variables: !3013)
!2960 = !DISubroutineType(types: !2961)
!2961 = !{null, !2962, !6, !6, !6, !3012, !123}
!2962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2963, size: 64)
!2963 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !927, line: 49, baseType: !2964)
!2964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2965, line: 241, size: 1728, elements: !2966)
!2965 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2966 = !{!2967, !2968, !2969, !2970, !2971, !2972, !2973, !2974, !2975, !2976, !2977, !2978, !2979, !2987, !2988, !2989, !2990, !2992, !2993, !2995, !2997, !3000, !3002, !3003, !3004, !3005, !3006, !3007, !3008}
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2964, file: !2965, line: 242, baseType: !34, size: 32)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2964, file: !2965, line: 247, baseType: !14, size: 64, offset: 64)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2964, file: !2965, line: 248, baseType: !14, size: 64, offset: 128)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2964, file: !2965, line: 249, baseType: !14, size: 64, offset: 192)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2964, file: !2965, line: 250, baseType: !14, size: 64, offset: 256)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2964, file: !2965, line: 251, baseType: !14, size: 64, offset: 320)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2964, file: !2965, line: 252, baseType: !14, size: 64, offset: 384)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2964, file: !2965, line: 253, baseType: !14, size: 64, offset: 448)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2964, file: !2965, line: 254, baseType: !14, size: 64, offset: 512)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2964, file: !2965, line: 256, baseType: !14, size: 64, offset: 576)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2964, file: !2965, line: 257, baseType: !14, size: 64, offset: 640)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2964, file: !2965, line: 258, baseType: !14, size: 64, offset: 704)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2964, file: !2965, line: 260, baseType: !2980, size: 64, offset: 768)
!2980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2981, size: 64)
!2981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2965, line: 156, size: 192, elements: !2982)
!2982 = !{!2983, !2984, !2986}
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !2981, file: !2965, line: 157, baseType: !2980, size: 64)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !2981, file: !2965, line: 158, baseType: !2985, size: 64, offset: 64)
!2985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2964, size: 64)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !2981, file: !2965, line: 162, baseType: !34, size: 32, offset: 128)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2964, file: !2965, line: 262, baseType: !2985, size: 64, offset: 832)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2964, file: !2965, line: 264, baseType: !34, size: 32, offset: 896)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2964, file: !2965, line: 268, baseType: !34, size: 32, offset: 928)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2964, file: !2965, line: 270, baseType: !2991, size: 64, offset: 960)
!2991 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !621, line: 140, baseType: !622)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2964, file: !2965, line: 274, baseType: !30, size: 16, offset: 1024)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2964, file: !2965, line: 275, baseType: !2994, size: 8, offset: 1040)
!2994 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2964, file: !2965, line: 276, baseType: !2996, size: 8, offset: 1048)
!2996 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 8, elements: !938)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2964, file: !2965, line: 280, baseType: !2998, size: 64, offset: 1088)
!2998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2999, size: 64)
!2999 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2965, line: 150, baseType: null)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2964, file: !2965, line: 289, baseType: !3001, size: 64, offset: 1152)
!3001 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !621, line: 141, baseType: !622)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !2964, file: !2965, line: 297, baseType: !80, size: 64, offset: 1216)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !2964, file: !2965, line: 298, baseType: !80, size: 64, offset: 1280)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !2964, file: !2965, line: 299, baseType: !80, size: 64, offset: 1344)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !2964, file: !2965, line: 300, baseType: !80, size: 64, offset: 1408)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2964, file: !2965, line: 302, baseType: !123, size: 64, offset: 1472)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2964, file: !2965, line: 303, baseType: !34, size: 32, offset: 1536)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2964, file: !2965, line: 305, baseType: !3009, size: 160, offset: 1568)
!3009 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 160, elements: !3010)
!3010 = !{!3011}
!3011 = !DISubrange(count: 20)
!3012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!3013 = !{!3014, !3015, !3016, !3017, !3018, !3019}
!3014 = !DILocalVariable(name: "stream", arg: 1, scope: !2959, file: !569, line: 62, type: !2962)
!3015 = !DILocalVariable(name: "command_name", arg: 2, scope: !2959, file: !569, line: 63, type: !6)
!3016 = !DILocalVariable(name: "package", arg: 3, scope: !2959, file: !569, line: 63, type: !6)
!3017 = !DILocalVariable(name: "version", arg: 4, scope: !2959, file: !569, line: 64, type: !6)
!3018 = !DILocalVariable(name: "authors", arg: 5, scope: !2959, file: !569, line: 65, type: !3012)
!3019 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2959, file: !569, line: 65, type: !123)
!3020 = !DILocation(line: 62, column: 24, scope: !2959)
!3021 = !DILocation(line: 63, column: 30, scope: !2959)
!3022 = !DILocation(line: 63, column: 56, scope: !2959)
!3023 = !DILocation(line: 64, column: 30, scope: !2959)
!3024 = !DILocation(line: 65, column: 39, scope: !2959)
!3025 = !DILocation(line: 65, column: 55, scope: !2959)
!3026 = !DILocation(line: 67, column: 7, scope: !3027)
!3027 = distinct !DILexicalBlock(scope: !2959, file: !569, line: 67, column: 7)
!3028 = !DILocation(line: 67, column: 7, scope: !2959)
!3029 = !DILocation(line: 68, column: 5, scope: !3027)
!3030 = !DILocation(line: 70, column: 5, scope: !3027)
!3031 = !DILocation(line: 84, column: 3, scope: !2959)
!3032 = !DILocation(line: 84, column: 3, scope: !3033)
!3033 = !DILexicalBlockFile(scope: !2959, file: !569, discriminator: 1)
!3034 = !DILocation(line: 86, column: 3, scope: !2959)
!3035 = !DILocation(line: 86, column: 3, scope: !3033)
!3036 = !DILocation(line: 95, column: 3, scope: !2959)
!3037 = !DILocation(line: 99, column: 7, scope: !3038)
!3038 = distinct !DILexicalBlock(scope: !2959, file: !569, line: 96, column: 5)
!3039 = !DILocation(line: 102, column: 7, scope: !3038)
!3040 = !DILocation(line: 102, column: 7, scope: !3041)
!3041 = !DILexicalBlockFile(scope: !3038, file: !569, discriminator: 1)
!3042 = !DILocation(line: 103, column: 7, scope: !3038)
!3043 = !DILocation(line: 106, column: 7, scope: !3038)
!3044 = !DILocation(line: 106, column: 7, scope: !3041)
!3045 = !DILocation(line: 107, column: 7, scope: !3038)
!3046 = !DILocation(line: 110, column: 7, scope: !3038)
!3047 = !DILocation(line: 110, column: 7, scope: !3041)
!3048 = !DILocation(line: 112, column: 7, scope: !3038)
!3049 = !DILocation(line: 117, column: 7, scope: !3038)
!3050 = !DILocation(line: 117, column: 7, scope: !3041)
!3051 = !DILocation(line: 119, column: 7, scope: !3038)
!3052 = !DILocation(line: 124, column: 7, scope: !3038)
!3053 = !DILocation(line: 124, column: 7, scope: !3041)
!3054 = !DILocation(line: 126, column: 7, scope: !3038)
!3055 = !DILocation(line: 131, column: 7, scope: !3038)
!3056 = !DILocation(line: 131, column: 7, scope: !3041)
!3057 = !DILocation(line: 134, column: 7, scope: !3038)
!3058 = !DILocation(line: 139, column: 7, scope: !3038)
!3059 = !DILocation(line: 139, column: 7, scope: !3041)
!3060 = !DILocation(line: 142, column: 7, scope: !3038)
!3061 = !DILocation(line: 147, column: 7, scope: !3038)
!3062 = !DILocation(line: 147, column: 7, scope: !3041)
!3063 = !DILocation(line: 151, column: 7, scope: !3038)
!3064 = !DILocation(line: 156, column: 7, scope: !3038)
!3065 = !DILocation(line: 156, column: 7, scope: !3041)
!3066 = !DILocation(line: 160, column: 7, scope: !3038)
!3067 = !DILocation(line: 167, column: 7, scope: !3038)
!3068 = !DILocation(line: 167, column: 7, scope: !3041)
!3069 = !DILocation(line: 171, column: 7, scope: !3038)
!3070 = !DILocation(line: 173, column: 1, scope: !2959)
!3071 = distinct !DISubprogram(name: "version_etc_ar", scope: !569, file: !569, line: 180, type: !3072, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !565, variables: !3074)
!3072 = !DISubroutineType(types: !3073)
!3073 = !{null, !2962, !6, !6, !6, !3012}
!3074 = !{!3075, !3076, !3077, !3078, !3079, !3080}
!3075 = !DILocalVariable(name: "stream", arg: 1, scope: !3071, file: !569, line: 180, type: !2962)
!3076 = !DILocalVariable(name: "command_name", arg: 2, scope: !3071, file: !569, line: 181, type: !6)
!3077 = !DILocalVariable(name: "package", arg: 3, scope: !3071, file: !569, line: 181, type: !6)
!3078 = !DILocalVariable(name: "version", arg: 4, scope: !3071, file: !569, line: 182, type: !6)
!3079 = !DILocalVariable(name: "authors", arg: 5, scope: !3071, file: !569, line: 182, type: !3012)
!3080 = !DILocalVariable(name: "n_authors", scope: !3071, file: !569, line: 184, type: !123)
!3081 = !DILocation(line: 180, column: 23, scope: !3071)
!3082 = !DILocation(line: 181, column: 29, scope: !3071)
!3083 = !DILocation(line: 181, column: 55, scope: !3071)
!3084 = !DILocation(line: 182, column: 29, scope: !3071)
!3085 = !DILocation(line: 182, column: 59, scope: !3071)
!3086 = !DILocation(line: 184, column: 10, scope: !3071)
!3087 = !DILocation(line: 186, column: 8, scope: !3088)
!3088 = distinct !DILexicalBlock(scope: !3071, file: !569, line: 186, column: 3)
!3089 = !DILocation(line: 186, column: 23, scope: !3090)
!3090 = !DILexicalBlockFile(scope: !3091, file: !569, discriminator: 1)
!3091 = distinct !DILexicalBlock(scope: !3088, file: !569, line: 186, column: 3)
!3092 = !DILocation(line: 186, column: 3, scope: !3093)
!3093 = !DILexicalBlockFile(scope: !3088, file: !569, discriminator: 1)
!3094 = !DILocation(line: 186, column: 52, scope: !3095)
!3095 = !DILexicalBlockFile(scope: !3091, file: !569, discriminator: 3)
!3096 = distinct !{!3096, !3097, !3098}
!3097 = !DILocation(line: 186, column: 3, scope: !3088)
!3098 = !DILocation(line: 187, column: 5, scope: !3088)
!3099 = !DILocation(line: 188, column: 3, scope: !3071)
!3100 = !DILocation(line: 189, column: 1, scope: !3071)
!3101 = distinct !DISubprogram(name: "version_etc_va", scope: !569, file: !569, line: 196, type: !3102, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !565, variables: !3111)
!3102 = !DISubroutineType(types: !3103)
!3103 = !{null, !2962, !6, !6, !6, !3104}
!3104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3105, size: 64)
!3105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !566, line: 189, size: 192, elements: !3106)
!3106 = !{!3107, !3108, !3109, !3110}
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3105, file: !566, line: 189, baseType: !142, size: 32)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3105, file: !566, line: 189, baseType: !142, size: 32, offset: 32)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3105, file: !566, line: 189, baseType: !80, size: 64, offset: 64)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3105, file: !566, line: 189, baseType: !80, size: 64, offset: 128)
!3111 = !{!3112, !3113, !3114, !3115, !3116, !3117, !3118}
!3112 = !DILocalVariable(name: "stream", arg: 1, scope: !3101, file: !569, line: 196, type: !2962)
!3113 = !DILocalVariable(name: "command_name", arg: 2, scope: !3101, file: !569, line: 197, type: !6)
!3114 = !DILocalVariable(name: "package", arg: 3, scope: !3101, file: !569, line: 197, type: !6)
!3115 = !DILocalVariable(name: "version", arg: 4, scope: !3101, file: !569, line: 198, type: !6)
!3116 = !DILocalVariable(name: "authors", arg: 5, scope: !3101, file: !569, line: 198, type: !3104)
!3117 = !DILocalVariable(name: "n_authors", scope: !3101, file: !569, line: 200, type: !123)
!3118 = !DILocalVariable(name: "authtab", scope: !3101, file: !569, line: 201, type: !3119)
!3119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 640, elements: !132)
!3120 = !DILocation(line: 196, column: 23, scope: !3101)
!3121 = !DILocation(line: 197, column: 29, scope: !3101)
!3122 = !DILocation(line: 197, column: 55, scope: !3101)
!3123 = !DILocation(line: 198, column: 29, scope: !3101)
!3124 = !DILocation(line: 198, column: 46, scope: !3101)
!3125 = !DILocation(line: 201, column: 3, scope: !3101)
!3126 = !DILocation(line: 201, column: 15, scope: !3101)
!3127 = !DILocation(line: 200, column: 10, scope: !3101)
!3128 = !DILocation(line: 205, column: 35, scope: !3129)
!3129 = !DILexicalBlockFile(scope: !3130, file: !569, discriminator: 1)
!3130 = distinct !DILexicalBlock(scope: !3131, file: !569, line: 203, column: 3)
!3131 = distinct !DILexicalBlock(scope: !3101, file: !569, line: 203, column: 3)
!3132 = !DILocation(line: 205, column: 35, scope: !3133)
!3133 = !DILexicalBlockFile(scope: !3130, file: !569, discriminator: 2)
!3134 = !DILocation(line: 205, column: 35, scope: !3135)
!3135 = !DILexicalBlockFile(scope: !3130, file: !569, discriminator: 3)
!3136 = !DILocation(line: 205, column: 35, scope: !3137)
!3137 = !DILexicalBlockFile(scope: !3130, file: !569, discriminator: 4)
!3138 = !DILocation(line: 205, column: 14, scope: !3137)
!3139 = !DILocation(line: 205, column: 33, scope: !3137)
!3140 = !DILocation(line: 205, column: 67, scope: !3137)
!3141 = !DILocation(line: 203, column: 3, scope: !3142)
!3142 = !DILexicalBlockFile(scope: !3131, file: !569, discriminator: 1)
!3143 = !DILocation(line: 208, column: 3, scope: !3101)
!3144 = !DILocation(line: 210, column: 1, scope: !3101)
!3145 = distinct !DISubprogram(name: "version_etc", scope: !569, file: !569, line: 227, type: !3146, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !565, variables: !3148)
!3146 = !DISubroutineType(types: !3147)
!3147 = !{null, !2962, !6, !6, !6, null}
!3148 = !{!3149, !3150, !3151, !3152, !3153}
!3149 = !DILocalVariable(name: "stream", arg: 1, scope: !3145, file: !569, line: 227, type: !2962)
!3150 = !DILocalVariable(name: "command_name", arg: 2, scope: !3145, file: !569, line: 228, type: !6)
!3151 = !DILocalVariable(name: "package", arg: 3, scope: !3145, file: !569, line: 228, type: !6)
!3152 = !DILocalVariable(name: "version", arg: 4, scope: !3145, file: !569, line: 229, type: !6)
!3153 = !DILocalVariable(name: "authors", scope: !3145, file: !569, line: 231, type: !3154)
!3154 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !927, line: 80, baseType: !3155)
!3155 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !929, line: 50, baseType: !3156)
!3156 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !566, line: 231, baseType: !3157)
!3157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3105, size: 192, elements: !938)
!3158 = !DILocation(line: 227, column: 20, scope: !3145)
!3159 = !DILocation(line: 228, column: 26, scope: !3145)
!3160 = !DILocation(line: 228, column: 52, scope: !3145)
!3161 = !DILocation(line: 229, column: 26, scope: !3145)
!3162 = !DILocation(line: 231, column: 3, scope: !3145)
!3163 = !DILocation(line: 231, column: 11, scope: !3145)
!3164 = !DILocation(line: 233, column: 3, scope: !3145)
!3165 = !DILocation(line: 234, column: 3, scope: !3145)
!3166 = !DILocation(line: 235, column: 3, scope: !3145)
!3167 = !DILocation(line: 236, column: 1, scope: !3145)
!3168 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !569, file: !569, line: 239, type: !867, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !565, variables: !4)
!3169 = !DILocation(line: 245, column: 3, scope: !3168)
!3170 = !DILocation(line: 245, column: 3, scope: !3171)
!3171 = !DILexicalBlockFile(scope: !3168, file: !569, discriminator: 1)
!3172 = !DILocation(line: 251, column: 3, scope: !3168)
!3173 = !DILocation(line: 251, column: 3, scope: !3171)
!3174 = !DILocation(line: 256, column: 3, scope: !3168)
!3175 = !DILocation(line: 256, column: 3, scope: !3171)
!3176 = !DILocation(line: 258, column: 1, scope: !3168)
!3177 = distinct !DISubprogram(name: "xnmalloc", scope: !577, file: !577, line: 105, type: !3178, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !573, variables: !3180)
!3178 = !DISubroutineType(types: !3179)
!3179 = !{!80, !123, !123}
!3180 = !{!3181, !3182}
!3181 = !DILocalVariable(name: "n", arg: 1, scope: !3177, file: !577, line: 105, type: !123)
!3182 = !DILocalVariable(name: "s", arg: 2, scope: !3177, file: !577, line: 105, type: !123)
!3183 = !DILocation(line: 105, column: 18, scope: !3177)
!3184 = !DILocation(line: 105, column: 28, scope: !3177)
!3185 = !DILocation(line: 107, column: 7, scope: !3186)
!3186 = distinct !DILexicalBlock(scope: !3177, file: !577, line: 107, column: 7)
!3187 = !DILocation(line: 107, column: 7, scope: !3177)
!3188 = !DILocation(line: 108, column: 5, scope: !3186)
!3189 = !DILocation(line: 109, column: 21, scope: !3177)
!3190 = !DILocalVariable(name: "n", arg: 1, scope: !3191, file: !3192, line: 39, type: !123)
!3191 = distinct !DISubprogram(name: "xmalloc", scope: !3192, file: !3192, line: 39, type: !3193, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !573, variables: !3195)
!3192 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3193 = !DISubroutineType(types: !3194)
!3194 = !{!80, !123}
!3195 = !{!3190, !3196}
!3196 = !DILocalVariable(name: "p", scope: !3191, file: !3192, line: 41, type: !80)
!3197 = !DILocation(line: 39, column: 17, scope: !3191, inlinedAt: !3198)
!3198 = distinct !DILocation(line: 109, column: 10, scope: !3177)
!3199 = !DILocation(line: 41, column: 13, scope: !3191, inlinedAt: !3198)
!3200 = !DILocation(line: 41, column: 9, scope: !3191, inlinedAt: !3198)
!3201 = !DILocation(line: 42, column: 8, scope: !3202, inlinedAt: !3198)
!3202 = distinct !DILexicalBlock(scope: !3191, file: !3192, line: 42, column: 7)
!3203 = !DILocation(line: 42, column: 15, scope: !3204, inlinedAt: !3198)
!3204 = !DILexicalBlockFile(scope: !3202, file: !3192, discriminator: 1)
!3205 = !DILocation(line: 42, column: 10, scope: !3202, inlinedAt: !3198)
!3206 = !DILocation(line: 43, column: 5, scope: !3202, inlinedAt: !3198)
!3207 = !DILocation(line: 109, column: 3, scope: !3177)
!3208 = !DILocation(line: 39, column: 17, scope: !3191)
!3209 = !DILocation(line: 41, column: 13, scope: !3191)
!3210 = !DILocation(line: 41, column: 9, scope: !3191)
!3211 = !DILocation(line: 42, column: 8, scope: !3202)
!3212 = !DILocation(line: 42, column: 15, scope: !3204)
!3213 = !DILocation(line: 42, column: 10, scope: !3202)
!3214 = !DILocation(line: 43, column: 5, scope: !3202)
!3215 = !DILocation(line: 44, column: 3, scope: !3191)
!3216 = distinct !DISubprogram(name: "xnrealloc", scope: !577, file: !577, line: 118, type: !3217, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !573, variables: !3219)
!3217 = !DISubroutineType(types: !3218)
!3218 = !{!80, !80, !123, !123}
!3219 = !{!3220, !3221, !3222}
!3220 = !DILocalVariable(name: "p", arg: 1, scope: !3216, file: !577, line: 118, type: !80)
!3221 = !DILocalVariable(name: "n", arg: 2, scope: !3216, file: !577, line: 118, type: !123)
!3222 = !DILocalVariable(name: "s", arg: 3, scope: !3216, file: !577, line: 118, type: !123)
!3223 = !DILocation(line: 118, column: 18, scope: !3216)
!3224 = !DILocation(line: 118, column: 28, scope: !3216)
!3225 = !DILocation(line: 118, column: 38, scope: !3216)
!3226 = !DILocation(line: 120, column: 7, scope: !3227)
!3227 = distinct !DILexicalBlock(scope: !3216, file: !577, line: 120, column: 7)
!3228 = !DILocation(line: 120, column: 7, scope: !3216)
!3229 = !DILocation(line: 121, column: 5, scope: !3227)
!3230 = !DILocation(line: 122, column: 25, scope: !3216)
!3231 = !DILocalVariable(name: "p", arg: 1, scope: !3232, file: !3192, line: 51, type: !80)
!3232 = distinct !DISubprogram(name: "xrealloc", scope: !3192, file: !3192, line: 51, type: !3233, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !573, variables: !3235)
!3233 = !DISubroutineType(types: !3234)
!3234 = !{!80, !80, !123}
!3235 = !{!3231, !3236}
!3236 = !DILocalVariable(name: "n", arg: 2, scope: !3232, file: !3192, line: 51, type: !123)
!3237 = !DILocation(line: 51, column: 17, scope: !3232, inlinedAt: !3238)
!3238 = distinct !DILocation(line: 122, column: 10, scope: !3216)
!3239 = !DILocation(line: 51, column: 27, scope: !3232, inlinedAt: !3238)
!3240 = !DILocation(line: 53, column: 8, scope: !3241, inlinedAt: !3238)
!3241 = distinct !DILexicalBlock(scope: !3232, file: !3192, line: 53, column: 7)
!3242 = !DILocation(line: 53, column: 13, scope: !3243, inlinedAt: !3238)
!3243 = !DILexicalBlockFile(scope: !3241, file: !3192, discriminator: 1)
!3244 = !DILocation(line: 53, column: 10, scope: !3241, inlinedAt: !3238)
!3245 = !DILocation(line: 57, column: 7, scope: !3246, inlinedAt: !3238)
!3246 = distinct !DILexicalBlock(scope: !3241, file: !3192, line: 54, column: 5)
!3247 = !DILocation(line: 58, column: 7, scope: !3246, inlinedAt: !3238)
!3248 = !DILocation(line: 61, column: 7, scope: !3232, inlinedAt: !3238)
!3249 = !DILocation(line: 62, column: 8, scope: !3250, inlinedAt: !3238)
!3250 = distinct !DILexicalBlock(scope: !3232, file: !3192, line: 62, column: 7)
!3251 = !DILocation(line: 62, column: 13, scope: !3252, inlinedAt: !3238)
!3252 = !DILexicalBlockFile(scope: !3250, file: !3192, discriminator: 1)
!3253 = !DILocation(line: 62, column: 10, scope: !3250, inlinedAt: !3238)
!3254 = !DILocation(line: 63, column: 5, scope: !3250, inlinedAt: !3238)
!3255 = !DILocation(line: 122, column: 3, scope: !3216)
!3256 = !DILocation(line: 51, column: 17, scope: !3232)
!3257 = !DILocation(line: 51, column: 27, scope: !3232)
!3258 = !DILocation(line: 53, column: 8, scope: !3241)
!3259 = !DILocation(line: 53, column: 13, scope: !3243)
!3260 = !DILocation(line: 53, column: 10, scope: !3241)
!3261 = !DILocation(line: 57, column: 7, scope: !3246)
!3262 = !DILocation(line: 58, column: 7, scope: !3246)
!3263 = !DILocation(line: 61, column: 7, scope: !3232)
!3264 = !DILocation(line: 62, column: 8, scope: !3250)
!3265 = !DILocation(line: 62, column: 13, scope: !3252)
!3266 = !DILocation(line: 62, column: 10, scope: !3250)
!3267 = !DILocation(line: 63, column: 5, scope: !3250)
!3268 = !DILocation(line: 65, column: 1, scope: !3232)
!3269 = !DILocation(line: 180, column: 19, scope: !578)
!3270 = !DILocation(line: 180, column: 30, scope: !578)
!3271 = !DILocation(line: 180, column: 41, scope: !578)
!3272 = !DILocation(line: 182, column: 14, scope: !578)
!3273 = !DILocation(line: 182, column: 10, scope: !578)
!3274 = !DILocation(line: 184, column: 9, scope: !3275)
!3275 = distinct !DILexicalBlock(scope: !578, file: !577, line: 184, column: 7)
!3276 = !DILocation(line: 184, column: 7, scope: !578)
!3277 = !DILocation(line: 186, column: 13, scope: !3278)
!3278 = distinct !DILexicalBlock(scope: !3279, file: !577, line: 186, column: 11)
!3279 = distinct !DILexicalBlock(scope: !3275, file: !577, line: 185, column: 5)
!3280 = !DILocation(line: 186, column: 11, scope: !3279)
!3281 = !DILocation(line: 194, column: 30, scope: !3282)
!3282 = distinct !DILexicalBlock(scope: !3278, file: !577, line: 187, column: 9)
!3283 = !DILocation(line: 195, column: 16, scope: !3282)
!3284 = !DILocation(line: 195, column: 13, scope: !3282)
!3285 = !DILocation(line: 196, column: 9, scope: !3282)
!3286 = !DILocation(line: 204, column: 69, scope: !3287)
!3287 = distinct !DILexicalBlock(scope: !3288, file: !577, line: 204, column: 11)
!3288 = distinct !DILexicalBlock(scope: !3275, file: !577, line: 199, column: 5)
!3289 = !DILocation(line: 205, column: 11, scope: !3287)
!3290 = !DILocation(line: 204, column: 11, scope: !3288)
!3291 = !DILocation(line: 206, column: 9, scope: !3287)
!3292 = !DILocation(line: 210, column: 7, scope: !578)
!3293 = !DILocation(line: 211, column: 25, scope: !578)
!3294 = !DILocation(line: 51, column: 17, scope: !3232, inlinedAt: !3295)
!3295 = distinct !DILocation(line: 211, column: 10, scope: !578)
!3296 = !DILocation(line: 51, column: 27, scope: !3232, inlinedAt: !3295)
!3297 = !DILocation(line: 53, column: 10, scope: !3241, inlinedAt: !3295)
!3298 = !DILocation(line: 207, column: 14, scope: !3288)
!3299 = !DILocation(line: 207, column: 18, scope: !3288)
!3300 = !DILocation(line: 207, column: 9, scope: !3288)
!3301 = !DILocation(line: 53, column: 8, scope: !3241, inlinedAt: !3295)
!3302 = !DILocation(line: 57, column: 7, scope: !3246, inlinedAt: !3295)
!3303 = !DILocation(line: 58, column: 7, scope: !3246, inlinedAt: !3295)
!3304 = !DILocation(line: 61, column: 7, scope: !3232, inlinedAt: !3295)
!3305 = !DILocation(line: 62, column: 8, scope: !3250, inlinedAt: !3295)
!3306 = !DILocation(line: 62, column: 13, scope: !3252, inlinedAt: !3295)
!3307 = !DILocation(line: 62, column: 10, scope: !3250, inlinedAt: !3295)
!3308 = !DILocation(line: 63, column: 5, scope: !3250, inlinedAt: !3295)
!3309 = !DILocation(line: 211, column: 3, scope: !578)
!3310 = distinct !DISubprogram(name: "xcharalloc", scope: !577, file: !577, line: 220, type: !2231, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !573, variables: !3311)
!3311 = !{!3312}
!3312 = !DILocalVariable(name: "n", arg: 1, scope: !3310, file: !577, line: 220, type: !123)
!3313 = !DILocation(line: 220, column: 20, scope: !3310)
!3314 = !DILocation(line: 39, column: 17, scope: !3191, inlinedAt: !3315)
!3315 = distinct !DILocation(line: 222, column: 10, scope: !3310)
!3316 = !DILocation(line: 41, column: 13, scope: !3191, inlinedAt: !3315)
!3317 = !DILocation(line: 41, column: 9, scope: !3191, inlinedAt: !3315)
!3318 = !DILocation(line: 42, column: 8, scope: !3202, inlinedAt: !3315)
!3319 = !DILocation(line: 42, column: 15, scope: !3204, inlinedAt: !3315)
!3320 = !DILocation(line: 42, column: 10, scope: !3202, inlinedAt: !3315)
!3321 = !DILocation(line: 43, column: 5, scope: !3202, inlinedAt: !3315)
!3322 = !DILocation(line: 222, column: 3, scope: !3310)
!3323 = distinct !DISubprogram(name: "x2realloc", scope: !3192, file: !3192, line: 74, type: !3324, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !573, variables: !3326)
!3324 = !DISubroutineType(types: !3325)
!3325 = !{!80, !80, !581}
!3326 = !{!3327, !3328}
!3327 = !DILocalVariable(name: "p", arg: 1, scope: !3323, file: !3192, line: 74, type: !80)
!3328 = !DILocalVariable(name: "pn", arg: 2, scope: !3323, file: !3192, line: 74, type: !581)
!3329 = !DILocation(line: 74, column: 18, scope: !3323)
!3330 = !DILocation(line: 74, column: 29, scope: !3323)
!3331 = !DILocation(line: 180, column: 19, scope: !578, inlinedAt: !3332)
!3332 = distinct !DILocation(line: 76, column: 10, scope: !3323)
!3333 = !DILocation(line: 180, column: 30, scope: !578, inlinedAt: !3332)
!3334 = !DILocation(line: 180, column: 41, scope: !578, inlinedAt: !3332)
!3335 = !DILocation(line: 182, column: 14, scope: !578, inlinedAt: !3332)
!3336 = !DILocation(line: 182, column: 10, scope: !578, inlinedAt: !3332)
!3337 = !DILocation(line: 184, column: 9, scope: !3275, inlinedAt: !3332)
!3338 = !DILocation(line: 184, column: 7, scope: !578, inlinedAt: !3332)
!3339 = !DILocation(line: 186, column: 13, scope: !3278, inlinedAt: !3332)
!3340 = !DILocation(line: 186, column: 11, scope: !3279, inlinedAt: !3332)
!3341 = !DILocation(line: 210, column: 7, scope: !578, inlinedAt: !3332)
!3342 = !DILocation(line: 51, column: 17, scope: !3232, inlinedAt: !3343)
!3343 = distinct !DILocation(line: 211, column: 10, scope: !578, inlinedAt: !3332)
!3344 = !DILocation(line: 51, column: 27, scope: !3232, inlinedAt: !3343)
!3345 = !DILocation(line: 53, column: 10, scope: !3241, inlinedAt: !3343)
!3346 = !DILocation(line: 205, column: 11, scope: !3287, inlinedAt: !3332)
!3347 = !DILocation(line: 204, column: 11, scope: !3288, inlinedAt: !3332)
!3348 = !DILocation(line: 206, column: 9, scope: !3287, inlinedAt: !3332)
!3349 = !DILocation(line: 207, column: 14, scope: !3288, inlinedAt: !3332)
!3350 = !DILocation(line: 207, column: 18, scope: !3288, inlinedAt: !3332)
!3351 = !DILocation(line: 207, column: 9, scope: !3288, inlinedAt: !3332)
!3352 = !DILocation(line: 53, column: 8, scope: !3241, inlinedAt: !3343)
!3353 = !DILocation(line: 57, column: 7, scope: !3246, inlinedAt: !3343)
!3354 = !DILocation(line: 58, column: 7, scope: !3246, inlinedAt: !3343)
!3355 = !DILocation(line: 61, column: 7, scope: !3232, inlinedAt: !3343)
!3356 = !DILocation(line: 62, column: 8, scope: !3250, inlinedAt: !3343)
!3357 = !DILocation(line: 62, column: 13, scope: !3252, inlinedAt: !3343)
!3358 = !DILocation(line: 62, column: 10, scope: !3250, inlinedAt: !3343)
!3359 = !DILocation(line: 63, column: 5, scope: !3250, inlinedAt: !3343)
!3360 = !DILocation(line: 76, column: 3, scope: !3323)
!3361 = distinct !DISubprogram(name: "xzalloc", scope: !3192, file: !3192, line: 84, type: !3193, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !573, variables: !3362)
!3362 = !{!3363}
!3363 = !DILocalVariable(name: "s", arg: 1, scope: !3361, file: !3192, line: 84, type: !123)
!3364 = !DILocation(line: 84, column: 17, scope: !3361)
!3365 = !DILocation(line: 39, column: 17, scope: !3191, inlinedAt: !3366)
!3366 = distinct !DILocation(line: 86, column: 18, scope: !3361)
!3367 = !DILocation(line: 41, column: 13, scope: !3191, inlinedAt: !3366)
!3368 = !DILocation(line: 41, column: 9, scope: !3191, inlinedAt: !3366)
!3369 = !DILocation(line: 42, column: 8, scope: !3202, inlinedAt: !3366)
!3370 = !DILocation(line: 42, column: 15, scope: !3204, inlinedAt: !3366)
!3371 = !DILocation(line: 42, column: 10, scope: !3202, inlinedAt: !3366)
!3372 = !DILocation(line: 43, column: 5, scope: !3202, inlinedAt: !3366)
!3373 = !DILocation(line: 86, column: 10, scope: !3361)
!3374 = !DILocation(line: 86, column: 3, scope: !3361)
!3375 = distinct !DISubprogram(name: "xcalloc", scope: !3192, file: !3192, line: 93, type: !3178, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !573, variables: !3376)
!3376 = !{!3377, !3378, !3379}
!3377 = !DILocalVariable(name: "n", arg: 1, scope: !3375, file: !3192, line: 93, type: !123)
!3378 = !DILocalVariable(name: "s", arg: 2, scope: !3375, file: !3192, line: 93, type: !123)
!3379 = !DILocalVariable(name: "p", scope: !3375, file: !3192, line: 95, type: !80)
!3380 = !DILocation(line: 93, column: 17, scope: !3375)
!3381 = !DILocation(line: 93, column: 27, scope: !3375)
!3382 = !DILocation(line: 100, column: 7, scope: !3383)
!3383 = distinct !DILexicalBlock(scope: !3375, file: !3192, line: 100, column: 7)
!3384 = !DILocation(line: 101, column: 7, scope: !3383)
!3385 = !DILocation(line: 101, column: 18, scope: !3386)
!3386 = !DILexicalBlockFile(scope: !3383, file: !3192, discriminator: 1)
!3387 = !DILocation(line: 95, column: 9, scope: !3375)
!3388 = !DILocation(line: 101, column: 16, scope: !3386)
!3389 = !DILocation(line: 100, column: 7, scope: !3390)
!3390 = !DILexicalBlockFile(scope: !3375, file: !3192, discriminator: 1)
!3391 = !DILocation(line: 102, column: 5, scope: !3383)
!3392 = !DILocation(line: 103, column: 3, scope: !3375)
!3393 = distinct !DISubprogram(name: "xmemdup", scope: !3192, file: !3192, line: 111, type: !3394, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !573, variables: !3396)
!3394 = !DISubroutineType(types: !3395)
!3395 = !{!80, !530, !123}
!3396 = !{!3397, !3398}
!3397 = !DILocalVariable(name: "p", arg: 1, scope: !3393, file: !3192, line: 111, type: !530)
!3398 = !DILocalVariable(name: "s", arg: 2, scope: !3393, file: !3192, line: 111, type: !123)
!3399 = !DILocation(line: 111, column: 22, scope: !3393)
!3400 = !DILocation(line: 111, column: 32, scope: !3393)
!3401 = !DILocation(line: 39, column: 17, scope: !3191, inlinedAt: !3402)
!3402 = distinct !DILocation(line: 113, column: 18, scope: !3393)
!3403 = !DILocation(line: 41, column: 13, scope: !3191, inlinedAt: !3402)
!3404 = !DILocation(line: 41, column: 9, scope: !3191, inlinedAt: !3402)
!3405 = !DILocation(line: 42, column: 8, scope: !3202, inlinedAt: !3402)
!3406 = !DILocation(line: 42, column: 15, scope: !3204, inlinedAt: !3402)
!3407 = !DILocation(line: 42, column: 10, scope: !3202, inlinedAt: !3402)
!3408 = !DILocation(line: 43, column: 5, scope: !3202, inlinedAt: !3402)
!3409 = !DILocation(line: 113, column: 10, scope: !3393)
!3410 = !DILocation(line: 113, column: 3, scope: !3393)
!3411 = distinct !DISubprogram(name: "xstrdup", scope: !3192, file: !3192, line: 119, type: !2438, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !573, variables: !3412)
!3412 = !{!3413}
!3413 = !DILocalVariable(name: "string", arg: 1, scope: !3411, file: !3192, line: 119, type: !6)
!3414 = !DILocation(line: 119, column: 22, scope: !3411)
!3415 = !DILocation(line: 121, column: 27, scope: !3411)
!3416 = !DILocation(line: 121, column: 43, scope: !3411)
!3417 = !DILocation(line: 111, column: 22, scope: !3393, inlinedAt: !3418)
!3418 = distinct !DILocation(line: 121, column: 10, scope: !3419)
!3419 = !DILexicalBlockFile(scope: !3411, file: !3192, discriminator: 1)
!3420 = !DILocation(line: 111, column: 32, scope: !3393, inlinedAt: !3418)
!3421 = !DILocation(line: 39, column: 17, scope: !3191, inlinedAt: !3422)
!3422 = distinct !DILocation(line: 113, column: 18, scope: !3393, inlinedAt: !3418)
!3423 = !DILocation(line: 41, column: 13, scope: !3191, inlinedAt: !3422)
!3424 = !DILocation(line: 41, column: 9, scope: !3191, inlinedAt: !3422)
!3425 = !DILocation(line: 42, column: 8, scope: !3202, inlinedAt: !3422)
!3426 = !DILocation(line: 42, column: 15, scope: !3204, inlinedAt: !3422)
!3427 = !DILocation(line: 42, column: 10, scope: !3202, inlinedAt: !3422)
!3428 = !DILocation(line: 43, column: 5, scope: !3202, inlinedAt: !3422)
!3429 = !DILocation(line: 113, column: 10, scope: !3393, inlinedAt: !3418)
!3430 = !DILocation(line: 121, column: 3, scope: !3411)
!3431 = distinct !DISubprogram(name: "xalloc_die", scope: !3432, file: !3432, line: 32, type: !867, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !590, variables: !4)
!3432 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3433 = !DILocation(line: 34, column: 10, scope: !3431)
!3434 = !DILocation(line: 34, column: 33, scope: !3431)
!3435 = !DILocation(line: 34, column: 3, scope: !3436)
!3436 = !DILexicalBlockFile(scope: !3431, file: !3432, discriminator: 1)
!3437 = !DILocation(line: 40, column: 3, scope: !3431)
!3438 = distinct !DISubprogram(name: "xnanosleep", scope: !3439, file: !3439, line: 38, type: !3440, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !592, variables: !3442)
!3439 = !DIFile(filename: "lib/xnanosleep.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3440 = !DISubroutineType(types: !3441)
!3441 = !{!34, !698}
!3442 = !{!3443, !3444}
!3443 = !DILocalVariable(name: "seconds", arg: 1, scope: !3438, file: !3439, line: 38, type: !698)
!3444 = !DILocalVariable(name: "ts_sleep", scope: !3438, file: !3439, line: 40, type: !3445)
!3445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !3446, line: 8, size: 128, elements: !3447)
!3446 = !DIFile(filename: "/usr/include/bits/types/struct_timespec.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3447 = !{!3448, !3449}
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3445, file: !3446, line: 10, baseType: !620, size: 64)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3445, file: !3446, line: 11, baseType: !3450, size: 64, offset: 64)
!3450 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !621, line: 184, baseType: !622)
!3451 = !DILocation(line: 38, column: 20, scope: !3438)
!3452 = !DILocation(line: 40, column: 3, scope: !3438)
!3453 = !DILocation(line: 40, column: 30, scope: !3438)
!3454 = !DILocation(line: 50, column: 7, scope: !3455)
!3455 = distinct !DILexicalBlock(scope: !3456, file: !3439, line: 43, column: 5)
!3456 = distinct !DILexicalBlock(scope: !3457, file: !3439, line: 42, column: 3)
!3457 = distinct !DILexicalBlock(scope: !3438, file: !3439, line: 42, column: 3)
!3458 = !DILocation(line: 50, column: 13, scope: !3455)
!3459 = !DILocation(line: 40, column: 19, scope: !3438)
!3460 = !DILocation(line: 51, column: 11, scope: !3461)
!3461 = distinct !DILexicalBlock(scope: !3455, file: !3439, line: 51, column: 11)
!3462 = !DILocation(line: 51, column: 39, scope: !3461)
!3463 = !DILocation(line: 51, column: 11, scope: !3455)
!3464 = !DILocation(line: 53, column: 11, scope: !3465)
!3465 = distinct !DILexicalBlock(scope: !3455, file: !3439, line: 53, column: 11)
!3466 = !DILocation(line: 53, column: 26, scope: !3465)
!3467 = !DILocation(line: 58, column: 1, scope: !3438)
!3468 = distinct !DISubprogram(name: "xstrtod", scope: !3469, file: !3469, line: 44, type: !3470, isLocal: false, isDefinition: true, scopeLine: 46, flags: DIFlagPrototyped, isOptimized: true, unit: !594, variables: !3474)
!3469 = !DIFile(filename: "lib/xstrtod.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3470 = !DISubroutineType(types: !3471)
!3471 = !{!49, !6, !3472, !760, !3473}
!3472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!3473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!3474 = !{!3475, !3476, !3477, !3478, !3479, !3480, !3481}
!3475 = !DILocalVariable(name: "str", arg: 1, scope: !3468, file: !3469, line: 44, type: !6)
!3476 = !DILocalVariable(name: "ptr", arg: 2, scope: !3468, file: !3469, line: 44, type: !3472)
!3477 = !DILocalVariable(name: "result", arg: 3, scope: !3468, file: !3469, line: 44, type: !760)
!3478 = !DILocalVariable(name: "convert", arg: 4, scope: !3468, file: !3469, line: 45, type: !3473)
!3479 = !DILocalVariable(name: "val", scope: !3468, file: !3469, line: 47, type: !698)
!3480 = !DILocalVariable(name: "terminator", scope: !3468, file: !3469, line: 48, type: !14)
!3481 = !DILocalVariable(name: "ok", scope: !3468, file: !3469, line: 49, type: !49)
!3482 = !DILocation(line: 44, column: 22, scope: !3468)
!3483 = !DILocation(line: 44, column: 40, scope: !3468)
!3484 = !DILocation(line: 44, column: 53, scope: !3468)
!3485 = !DILocation(line: 45, column: 19, scope: !3468)
!3486 = !DILocation(line: 48, column: 3, scope: !3468)
!3487 = !DILocation(line: 49, column: 8, scope: !3468)
!3488 = !DILocation(line: 51, column: 3, scope: !3468)
!3489 = !DILocation(line: 51, column: 9, scope: !3468)
!3490 = !DILocation(line: 48, column: 9, scope: !3468)
!3491 = !DILocation(line: 52, column: 9, scope: !3468)
!3492 = !DILocation(line: 47, column: 10, scope: !3468)
!3493 = !DILocation(line: 55, column: 7, scope: !3494)
!3494 = distinct !DILexicalBlock(scope: !3468, file: !3469, line: 55, column: 7)
!3495 = !DILocation(line: 55, column: 18, scope: !3494)
!3496 = !DILocation(line: 55, column: 25, scope: !3494)
!3497 = !DILocation(line: 55, column: 33, scope: !3498)
!3498 = !DILexicalBlockFile(scope: !3494, file: !3469, discriminator: 1)
!3499 = !DILocation(line: 55, column: 41, scope: !3498)
!3500 = !DILocation(line: 55, column: 44, scope: !3501)
!3501 = !DILexicalBlockFile(scope: !3494, file: !3469, discriminator: 2)
!3502 = !DILocation(line: 55, column: 56, scope: !3501)
!3503 = !DILocation(line: 55, column: 7, scope: !3504)
!3504 = !DILexicalBlockFile(scope: !3468, file: !3469, discriminator: 2)
!3505 = !DILocation(line: 62, column: 15, scope: !3506)
!3506 = distinct !DILexicalBlock(scope: !3507, file: !3469, line: 62, column: 11)
!3507 = distinct !DILexicalBlock(scope: !3494, file: !3469, line: 58, column: 5)
!3508 = !DILocation(line: 62, column: 20, scope: !3506)
!3509 = !DILocation(line: 62, column: 23, scope: !3510)
!3510 = !DILexicalBlockFile(scope: !3506, file: !3469, discriminator: 1)
!3511 = !DILocation(line: 62, column: 11, scope: !3512)
!3512 = !DILexicalBlockFile(scope: !3507, file: !3469, discriminator: 1)
!3513 = !DILocation(line: 66, column: 11, scope: !3514)
!3514 = distinct !DILexicalBlock(scope: !3468, file: !3469, line: 66, column: 7)
!3515 = !DILocation(line: 66, column: 7, scope: !3468)
!3516 = !DILocation(line: 67, column: 10, scope: !3514)
!3517 = !DILocation(line: 67, column: 5, scope: !3514)
!3518 = !DILocation(line: 69, column: 11, scope: !3468)
!3519 = !DILocation(line: 71, column: 1, scope: !3468)
!3520 = !DILocation(line: 70, column: 3, scope: !3468)
!3521 = distinct !DISubprogram(name: "rpl_calloc", scope: !3522, file: !3522, line: 42, type: !3178, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !596, variables: !3523)
!3522 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3523 = !{!3524, !3525, !3526, !3527}
!3524 = !DILocalVariable(name: "n", arg: 1, scope: !3521, file: !3522, line: 42, type: !123)
!3525 = !DILocalVariable(name: "s", arg: 2, scope: !3521, file: !3522, line: 42, type: !123)
!3526 = !DILocalVariable(name: "result", scope: !3521, file: !3522, line: 44, type: !80)
!3527 = !DILocalVariable(name: "bytes", scope: !3528, file: !3522, line: 56, type: !123)
!3528 = distinct !DILexicalBlock(scope: !3529, file: !3522, line: 53, column: 5)
!3529 = distinct !DILexicalBlock(scope: !3521, file: !3522, line: 47, column: 7)
!3530 = !DILocation(line: 42, column: 20, scope: !3521)
!3531 = !DILocation(line: 42, column: 30, scope: !3521)
!3532 = !DILocation(line: 47, column: 9, scope: !3529)
!3533 = !DILocation(line: 47, column: 19, scope: !3534)
!3534 = !DILexicalBlockFile(scope: !3529, file: !3522, discriminator: 1)
!3535 = !DILocation(line: 47, column: 14, scope: !3529)
!3536 = !DILocation(line: 56, column: 24, scope: !3528)
!3537 = !DILocation(line: 56, column: 14, scope: !3528)
!3538 = !DILocation(line: 57, column: 17, scope: !3539)
!3539 = distinct !DILexicalBlock(scope: !3528, file: !3522, line: 57, column: 11)
!3540 = !DILocation(line: 57, column: 21, scope: !3539)
!3541 = !DILocation(line: 57, column: 11, scope: !3528)
!3542 = !DILocation(line: 59, column: 11, scope: !3543)
!3543 = distinct !DILexicalBlock(scope: !3539, file: !3522, line: 58, column: 9)
!3544 = !DILocation(line: 59, column: 17, scope: !3543)
!3545 = !DILocation(line: 65, column: 12, scope: !3521)
!3546 = !DILocation(line: 44, column: 9, scope: !3521)
!3547 = !DILocation(line: 72, column: 3, scope: !3521)
!3548 = !DILocation(line: 73, column: 1, scope: !3521)
!3549 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !3550, file: !3550, line: 334, type: !3551, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !598, variables: !3565)
!3550 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3551 = !DISubroutineType(types: !3552)
!3552 = !{!123, !3553, !6, !123, !3554}
!3553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1217, size: 64)
!3554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3555, size: 64)
!3555 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1202, line: 107, baseType: !3556)
!3556 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1202, line: 95, baseType: !3557)
!3557 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1202, line: 83, size: 64, elements: !3558)
!3558 = !{!3559, !3560}
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3557, file: !1202, line: 85, baseType: !34, size: 32)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3557, file: !1202, line: 94, baseType: !3561, size: 32, offset: 32)
!3561 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3557, file: !1202, line: 86, size: 32, elements: !3562)
!3562 = !{!3563, !3564}
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3561, file: !1202, line: 89, baseType: !142, size: 32)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3561, file: !1202, line: 93, baseType: !1212, size: 32)
!3565 = !{!3566, !3567, !3568, !3569, !3570, !3571, !3572}
!3566 = !DILocalVariable(name: "pwc", arg: 1, scope: !3549, file: !3550, line: 334, type: !3553)
!3567 = !DILocalVariable(name: "s", arg: 2, scope: !3549, file: !3550, line: 334, type: !6)
!3568 = !DILocalVariable(name: "n", arg: 3, scope: !3549, file: !3550, line: 334, type: !123)
!3569 = !DILocalVariable(name: "ps", arg: 4, scope: !3549, file: !3550, line: 334, type: !3554)
!3570 = !DILocalVariable(name: "ret", scope: !3549, file: !3550, line: 336, type: !123)
!3571 = !DILocalVariable(name: "wc", scope: !3549, file: !3550, line: 337, type: !1217)
!3572 = !DILocalVariable(name: "uc", scope: !3573, file: !3550, line: 398, type: !523)
!3573 = distinct !DILexicalBlock(scope: !3574, file: !3550, line: 397, column: 5)
!3574 = distinct !DILexicalBlock(scope: !3549, file: !3550, line: 396, column: 7)
!3575 = !DILocation(line: 334, column: 23, scope: !3549)
!3576 = !DILocation(line: 334, column: 40, scope: !3549)
!3577 = !DILocation(line: 334, column: 50, scope: !3549)
!3578 = !DILocation(line: 334, column: 64, scope: !3549)
!3579 = !DILocation(line: 337, column: 3, scope: !3549)
!3580 = !DILocation(line: 353, column: 9, scope: !3581)
!3581 = distinct !DILexicalBlock(scope: !3549, file: !3550, line: 353, column: 7)
!3582 = !DILocation(line: 353, column: 7, scope: !3549)
!3583 = !DILocation(line: 388, column: 9, scope: !3549)
!3584 = !DILocation(line: 336, column: 10, scope: !3549)
!3585 = !DILocation(line: 396, column: 19, scope: !3574)
!3586 = !DILocation(line: 396, column: 31, scope: !3587)
!3587 = !DILexicalBlockFile(scope: !3574, file: !3550, discriminator: 1)
!3588 = !DILocation(line: 396, column: 26, scope: !3574)
!3589 = !DILocation(line: 396, column: 41, scope: !3590)
!3590 = !DILexicalBlockFile(scope: !3574, file: !3550, discriminator: 2)
!3591 = !DILocation(line: 396, column: 7, scope: !3592)
!3592 = !DILexicalBlockFile(scope: !3549, file: !3550, discriminator: 2)
!3593 = !DILocation(line: 398, column: 26, scope: !3573)
!3594 = !DILocation(line: 398, column: 21, scope: !3573)
!3595 = !DILocation(line: 399, column: 14, scope: !3573)
!3596 = !DILocation(line: 399, column: 12, scope: !3573)
!3597 = !DILocation(line: 405, column: 1, scope: !3549)
!3598 = distinct !DISubprogram(name: "rpl_nanosleep", scope: !605, file: !605, line: 46, type: !3599, isLocal: false, isDefinition: true, scopeLine: 49, flags: DIFlagPrototyped, isOptimized: true, unit: !601, variables: !3608)
!3599 = !DISubroutineType(types: !3600)
!3600 = !{!34, !3601, !3607}
!3601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3602, size: 64)
!3602 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3603)
!3603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !3446, line: 8, size: 128, elements: !3604)
!3604 = !{!3605, !3606}
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3603, file: !3446, line: 10, baseType: !620, size: 64)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3603, file: !3446, line: 11, baseType: !3450, size: 64, offset: 64)
!3607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3603, size: 64)
!3608 = !{!3609, !3610, !3611, !3614, !3615, !3616}
!3609 = !DILocalVariable(name: "requested_delay", arg: 1, scope: !3598, file: !605, line: 46, type: !3601)
!3610 = !DILocalVariable(name: "remaining_delay", arg: 2, scope: !3598, file: !605, line: 47, type: !3607)
!3611 = !DILocalVariable(name: "limit", scope: !3612, file: !605, line: 65, type: !3613)
!3612 = distinct !DILexicalBlock(scope: !3598, file: !605, line: 62, column: 3)
!3613 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !618)
!3614 = !DILocalVariable(name: "seconds", scope: !3612, file: !605, line: 66, type: !618)
!3615 = !DILocalVariable(name: "intermediate", scope: !3612, file: !605, line: 67, type: !3603)
!3616 = !DILocalVariable(name: "result", scope: !3617, file: !605, line: 72, type: !34)
!3617 = distinct !DILexicalBlock(scope: !3612, file: !605, line: 71, column: 7)
!3618 = !DILocation(line: 46, column: 35, scope: !3598)
!3619 = !DILocation(line: 47, column: 29, scope: !3598)
!3620 = !DILocation(line: 56, column: 24, scope: !3621)
!3621 = distinct !DILexicalBlock(scope: !3598, file: !605, line: 56, column: 7)
!3622 = !{!3623, !2276, i64 8}
!3623 = !{!"timespec", !2276, i64 0, !2276, i64 8}
!3624 = !DILocation(line: 56, column: 36, scope: !3621)
!3625 = !DILocation(line: 58, column: 7, scope: !3626)
!3626 = distinct !DILexicalBlock(scope: !3621, file: !605, line: 57, column: 5)
!3627 = !DILocation(line: 58, column: 13, scope: !3626)
!3628 = !DILocation(line: 59, column: 7, scope: !3626)
!3629 = !DILocation(line: 65, column: 18, scope: !3612)
!3630 = !DILocation(line: 66, column: 39, scope: !3612)
!3631 = !{!3623, !2276, i64 0}
!3632 = !DILocation(line: 66, column: 12, scope: !3612)
!3633 = !DILocation(line: 67, column: 5, scope: !3612)
!3634 = !DILocation(line: 68, column: 18, scope: !3612)
!3635 = !DILocation(line: 70, column: 5, scope: !3612)
!3636 = !DILocation(line: 70, column: 18, scope: !3637)
!3637 = !DILexicalBlockFile(scope: !3612, file: !605, discriminator: 1)
!3638 = !DILocation(line: 70, column: 5, scope: !3637)
!3639 = !DILocation(line: 73, column: 29, scope: !3617)
!3640 = !DILocation(line: 67, column: 21, scope: !3612)
!3641 = !DILocation(line: 74, column: 18, scope: !3617)
!3642 = !DILocation(line: 72, column: 13, scope: !3617)
!3643 = !DILocation(line: 75, column: 17, scope: !3617)
!3644 = !DILocation(line: 76, column: 13, scope: !3645)
!3645 = distinct !DILexicalBlock(scope: !3617, file: !605, line: 76, column: 13)
!3646 = !DILocation(line: 76, column: 13, scope: !3617)
!3647 = !DILocation(line: 78, column: 17, scope: !3648)
!3648 = distinct !DILexicalBlock(scope: !3649, file: !605, line: 78, column: 17)
!3649 = distinct !DILexicalBlock(scope: !3645, file: !605, line: 77, column: 11)
!3650 = !DILocation(line: 78, column: 17, scope: !3649)
!3651 = !DILocation(line: 79, column: 32, scope: !3648)
!3652 = !DILocation(line: 79, column: 39, scope: !3648)
!3653 = !DILocation(line: 79, column: 15, scope: !3648)
!3654 = !DILocation(line: 84, column: 25, scope: !3612)
!3655 = !DILocation(line: 85, column: 12, scope: !3612)
!3656 = !DILocation(line: 85, column: 5, scope: !3612)
!3657 = !DILocation(line: 86, column: 3, scope: !3598)
!3658 = !DILocation(line: 87, column: 1, scope: !3598)
!3659 = distinct !DISubprogram(name: "close_stream", scope: !3660, file: !3660, line: 56, type: !3661, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !608, variables: !3703)
!3660 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3661 = !DISubroutineType(types: !3662)
!3662 = !{!34, !3663}
!3663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3664, size: 64)
!3664 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !927, line: 49, baseType: !3665)
!3665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2965, line: 241, size: 1728, elements: !3666)
!3666 = !{!3667, !3668, !3669, !3670, !3671, !3672, !3673, !3674, !3675, !3676, !3677, !3678, !3679, !3687, !3688, !3689, !3690, !3691, !3692, !3693, !3694, !3695, !3696, !3697, !3698, !3699, !3700, !3701, !3702}
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3665, file: !2965, line: 242, baseType: !34, size: 32)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3665, file: !2965, line: 247, baseType: !14, size: 64, offset: 64)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3665, file: !2965, line: 248, baseType: !14, size: 64, offset: 128)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3665, file: !2965, line: 249, baseType: !14, size: 64, offset: 192)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3665, file: !2965, line: 250, baseType: !14, size: 64, offset: 256)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3665, file: !2965, line: 251, baseType: !14, size: 64, offset: 320)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3665, file: !2965, line: 252, baseType: !14, size: 64, offset: 384)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3665, file: !2965, line: 253, baseType: !14, size: 64, offset: 448)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3665, file: !2965, line: 254, baseType: !14, size: 64, offset: 512)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3665, file: !2965, line: 256, baseType: !14, size: 64, offset: 576)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3665, file: !2965, line: 257, baseType: !14, size: 64, offset: 640)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3665, file: !2965, line: 258, baseType: !14, size: 64, offset: 704)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3665, file: !2965, line: 260, baseType: !3680, size: 64, offset: 768)
!3680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3681, size: 64)
!3681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2965, line: 156, size: 192, elements: !3682)
!3682 = !{!3683, !3684, !3686}
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3681, file: !2965, line: 157, baseType: !3680, size: 64)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3681, file: !2965, line: 158, baseType: !3685, size: 64, offset: 64)
!3685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3665, size: 64)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3681, file: !2965, line: 162, baseType: !34, size: 32, offset: 128)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3665, file: !2965, line: 262, baseType: !3685, size: 64, offset: 832)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3665, file: !2965, line: 264, baseType: !34, size: 32, offset: 896)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3665, file: !2965, line: 268, baseType: !34, size: 32, offset: 928)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3665, file: !2965, line: 270, baseType: !2991, size: 64, offset: 960)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3665, file: !2965, line: 274, baseType: !30, size: 16, offset: 1024)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3665, file: !2965, line: 275, baseType: !2994, size: 8, offset: 1040)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3665, file: !2965, line: 276, baseType: !2996, size: 8, offset: 1048)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3665, file: !2965, line: 280, baseType: !2998, size: 64, offset: 1088)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3665, file: !2965, line: 289, baseType: !3001, size: 64, offset: 1152)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3665, file: !2965, line: 297, baseType: !80, size: 64, offset: 1216)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3665, file: !2965, line: 298, baseType: !80, size: 64, offset: 1280)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3665, file: !2965, line: 299, baseType: !80, size: 64, offset: 1344)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3665, file: !2965, line: 300, baseType: !80, size: 64, offset: 1408)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3665, file: !2965, line: 302, baseType: !123, size: 64, offset: 1472)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3665, file: !2965, line: 303, baseType: !34, size: 32, offset: 1536)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3665, file: !2965, line: 305, baseType: !3009, size: 160, offset: 1568)
!3703 = !{!3704, !3705, !3707, !3708}
!3704 = !DILocalVariable(name: "stream", arg: 1, scope: !3659, file: !3660, line: 56, type: !3663)
!3705 = !DILocalVariable(name: "some_pending", scope: !3659, file: !3660, line: 58, type: !3706)
!3706 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!3707 = !DILocalVariable(name: "prev_fail", scope: !3659, file: !3660, line: 59, type: !3706)
!3708 = !DILocalVariable(name: "fclose_fail", scope: !3659, file: !3660, line: 60, type: !3706)
!3709 = !DILocation(line: 56, column: 21, scope: !3659)
!3710 = !DILocation(line: 58, column: 30, scope: !3659)
!3711 = !DILocalVariable(name: "__stream", arg: 1, scope: !3712, file: !3713, line: 132, type: !3663)
!3712 = distinct !DISubprogram(name: "ferror_unlocked", scope: !3713, file: !3713, line: 132, type: !3661, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !608, variables: !3714)
!3713 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3714 = !{!3711}
!3715 = !DILocation(line: 132, column: 1, scope: !3712, inlinedAt: !3716)
!3716 = distinct !DILocation(line: 59, column: 27, scope: !3659)
!3717 = !DILocation(line: 134, column: 10, scope: !3712, inlinedAt: !3716)
!3718 = !{!3719, !732, i64 0}
!3719 = !{!"_IO_FILE", !732, i64 0, !651, i64 8, !651, i64 16, !651, i64 24, !651, i64 32, !651, i64 40, !651, i64 48, !651, i64 56, !651, i64 64, !651, i64 72, !651, i64 80, !651, i64 88, !651, i64 96, !651, i64 104, !732, i64 112, !732, i64 116, !2276, i64 120, !1569, i64 128, !652, i64 130, !652, i64 131, !651, i64 136, !2276, i64 144, !651, i64 152, !651, i64 160, !651, i64 168, !651, i64 176, !2276, i64 184, !732, i64 192, !652, i64 196}
!3720 = !DILocation(line: 59, column: 43, scope: !3659)
!3721 = !DILocation(line: 60, column: 29, scope: !3659)
!3722 = !DILocation(line: 60, column: 45, scope: !3659)
!3723 = !DILocation(line: 70, column: 17, scope: !3724)
!3724 = distinct !DILexicalBlock(scope: !3659, file: !3660, line: 70, column: 7)
!3725 = !DILocation(line: 70, column: 33, scope: !3726)
!3726 = !DILexicalBlockFile(scope: !3724, file: !3660, discriminator: 1)
!3727 = !DILocation(line: 70, column: 53, scope: !3728)
!3728 = !DILexicalBlockFile(scope: !3724, file: !3660, discriminator: 3)
!3729 = !DILocation(line: 70, column: 7, scope: !3730)
!3730 = !DILexicalBlockFile(scope: !3659, file: !3660, discriminator: 3)
!3731 = !DILocation(line: 72, column: 11, scope: !3732)
!3732 = distinct !DILexicalBlock(scope: !3724, file: !3660, line: 71, column: 5)
!3733 = !DILocation(line: 73, column: 9, scope: !3734)
!3734 = distinct !DILexicalBlock(scope: !3732, file: !3660, line: 72, column: 11)
!3735 = !DILocation(line: 73, column: 15, scope: !3734)
!3736 = !DILocation(line: 78, column: 1, scope: !3659)
!3737 = distinct !DISubprogram(name: "dtotimespec", scope: !3738, file: !3738, line: 30, type: !3739, isLocal: false, isDefinition: true, scopeLine: 31, flags: DIFlagPrototyped, isOptimized: true, unit: !610, variables: !3745)
!3738 = !DIFile(filename: "lib/dtotimespec.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3739 = !DISubroutineType(types: !3740)
!3740 = !{!3741, !698}
!3741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !3446, line: 8, size: 128, elements: !3742)
!3742 = !{!3743, !3744}
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3741, file: !3446, line: 10, baseType: !620, size: 64)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3741, file: !3446, line: 11, baseType: !3450, size: 64, offset: 64)
!3745 = !{!3746, !3747, !3751, !3752}
!3746 = !DILocalVariable(name: "sec", arg: 1, scope: !3737, file: !3738, line: 30, type: !698)
!3747 = !DILocalVariable(name: "s", scope: !3748, file: !3738, line: 38, type: !618)
!3748 = distinct !DILexicalBlock(scope: !3749, file: !3738, line: 37, column: 5)
!3749 = distinct !DILexicalBlock(scope: !3750, file: !3738, line: 34, column: 12)
!3750 = distinct !DILexicalBlock(scope: !3737, file: !3738, line: 32, column: 7)
!3751 = !DILocalVariable(name: "frac", scope: !3748, file: !3738, line: 39, type: !698)
!3752 = !DILocalVariable(name: "ns", scope: !3748, file: !3738, line: 40, type: !622)
!3753 = !DILocation(line: 30, column: 21, scope: !3737)
!3754 = !DILocation(line: 32, column: 32, scope: !3750)
!3755 = !DILocation(line: 32, column: 7, scope: !3737)
!3756 = !DILocation(line: 34, column: 19, scope: !3749)
!3757 = !DILocation(line: 34, column: 12, scope: !3750)
!3758 = !DILocation(line: 38, column: 18, scope: !3748)
!3759 = !DILocation(line: 38, column: 14, scope: !3748)
!3760 = !DILocation(line: 39, column: 50, scope: !3748)
!3761 = !DILocation(line: 39, column: 48, scope: !3748)
!3762 = !DILocation(line: 39, column: 41, scope: !3748)
!3763 = !DILocation(line: 39, column: 14, scope: !3748)
!3764 = !DILocation(line: 40, column: 17, scope: !3748)
!3765 = !DILocation(line: 40, column: 12, scope: !3748)
!3766 = !DILocation(line: 41, column: 13, scope: !3748)
!3767 = !DILocation(line: 41, column: 16, scope: !3748)
!3768 = !DILocation(line: 41, column: 10, scope: !3748)
!3769 = !DILocation(line: 42, column: 15, scope: !3748)
!3770 = !DILocation(line: 42, column: 9, scope: !3748)
!3771 = !DILocation(line: 43, column: 10, scope: !3748)
!3772 = !DILocation(line: 45, column: 14, scope: !3773)
!3773 = distinct !DILexicalBlock(scope: !3748, file: !3738, line: 45, column: 11)
!3774 = !DILocation(line: 48, column: 14, scope: !3775)
!3775 = distinct !DILexicalBlock(scope: !3773, file: !3738, line: 46, column: 9)
!3776 = !DILocation(line: 45, column: 11, scope: !3748)
!3777 = !DILocalVariable(name: "s", arg: 1, scope: !3778, file: !614, line: 41, type: !618)
!3778 = distinct !DISubprogram(name: "make_timespec", scope: !614, file: !614, line: 41, type: !3779, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !610, variables: !3781)
!3779 = !DISubroutineType(types: !3780)
!3780 = !{!3741, !618, !622}
!3781 = !{!3777, !3782, !3783}
!3782 = !DILocalVariable(name: "ns", arg: 2, scope: !3778, file: !614, line: 41, type: !622)
!3783 = !DILocalVariable(name: "r", scope: !3778, file: !614, line: 43, type: !3741)
!3784 = !DILocation(line: 41, column: 23, scope: !3778, inlinedAt: !3785)
!3785 = distinct !DILocation(line: 51, column: 14, scope: !3748)
!3786 = !DILocation(line: 41, column: 35, scope: !3778, inlinedAt: !3785)
!3787 = !DILocation(line: 43, column: 19, scope: !3778, inlinedAt: !3785)
!3788 = !DIExpression(DW_OP_LLVM_fragment, 0, 64)
!3789 = !DIExpression(DW_OP_LLVM_fragment, 64, 64)
!3790 = !DILocation(line: 47, column: 1, scope: !3778, inlinedAt: !3785)
!3791 = !DILocation(line: 53, column: 1, scope: !3737)
!3792 = distinct !DISubprogram(name: "hard_locale", scope: !3793, file: !3793, line: 38, type: !3794, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !623, variables: !3796)
!3793 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3794 = !DISubroutineType(types: !3795)
!3795 = !{!49, !34}
!3796 = !{!3797, !3798, !3799, !3800, !3807, !3808, !3810, !3811, !3813, !3814, !3816}
!3797 = !DILocalVariable(name: "category", arg: 1, scope: !3792, file: !3793, line: 38, type: !34)
!3798 = !DILocalVariable(name: "hard", scope: !3792, file: !3793, line: 40, type: !49)
!3799 = !DILocalVariable(name: "p", scope: !3792, file: !3793, line: 41, type: !6)
!3800 = !DILocalVariable(name: "__s1_len", scope: !3801, file: !3793, line: 47, type: !123)
!3801 = distinct !DILexicalBlock(scope: !3802, file: !3793, line: 47, column: 15)
!3802 = distinct !DILexicalBlock(scope: !3803, file: !3793, line: 47, column: 15)
!3803 = distinct !DILexicalBlock(scope: !3804, file: !3793, line: 46, column: 9)
!3804 = distinct !DILexicalBlock(scope: !3805, file: !3793, line: 45, column: 11)
!3805 = distinct !DILexicalBlock(scope: !3806, file: !3793, line: 44, column: 5)
!3806 = distinct !DILexicalBlock(scope: !3792, file: !3793, line: 43, column: 7)
!3807 = !DILocalVariable(name: "__s2_len", scope: !3801, file: !3793, line: 47, type: !123)
!3808 = !DILocalVariable(name: "__s2", scope: !3809, file: !3793, line: 47, type: !532)
!3809 = distinct !DILexicalBlock(scope: !3801, file: !3793, line: 47, column: 15)
!3810 = !DILocalVariable(name: "__result", scope: !3809, file: !3793, line: 47, type: !34)
!3811 = !DILocalVariable(name: "__s1_len", scope: !3812, file: !3793, line: 47, type: !123)
!3812 = distinct !DILexicalBlock(scope: !3802, file: !3793, line: 47, column: 39)
!3813 = !DILocalVariable(name: "__s2_len", scope: !3812, file: !3793, line: 47, type: !123)
!3814 = !DILocalVariable(name: "__s2", scope: !3815, file: !3793, line: 47, type: !532)
!3815 = distinct !DILexicalBlock(scope: !3812, file: !3793, line: 47, column: 39)
!3816 = !DILocalVariable(name: "__result", scope: !3815, file: !3793, line: 47, type: !34)
!3817 = !DILocation(line: 38, column: 18, scope: !3792)
!3818 = !DILocation(line: 40, column: 8, scope: !3792)
!3819 = !DILocation(line: 41, column: 19, scope: !3792)
!3820 = !DILocation(line: 41, column: 15, scope: !3792)
!3821 = !DILocation(line: 43, column: 7, scope: !3806)
!3822 = !DILocation(line: 43, column: 7, scope: !3792)
!3823 = !DILocation(line: 47, column: 15, scope: !3801)
!3824 = !DILocation(line: 47, column: 15, scope: !3809)
!3825 = !DILocation(line: 47, column: 15, scope: !3826)
!3826 = !DILexicalBlockFile(scope: !3809, file: !3793, discriminator: 2)
!3827 = !DILocation(line: 47, column: 15, scope: !3828)
!3828 = !DILexicalBlockFile(scope: !3829, file: !3793, discriminator: 3)
!3829 = distinct !DILexicalBlock(scope: !3809, file: !3793, line: 47, column: 15)
!3830 = !DILocation(line: 47, column: 15, scope: !3831)
!3831 = !DILexicalBlockFile(scope: !3829, file: !3793, discriminator: 2)
!3832 = !DILocation(line: 47, column: 15, scope: !3833)
!3833 = !DILexicalBlockFile(scope: !3834, file: !3793, discriminator: 4)
!3834 = distinct !DILexicalBlock(scope: !3829, file: !3793, line: 47, column: 15)
!3835 = !DILocation(line: 47, column: 15, scope: !3836)
!3836 = !DILexicalBlockFile(scope: !3801, file: !3793, discriminator: 11)
!3837 = !DILocation(line: 47, column: 36, scope: !3838)
!3838 = !DILexicalBlockFile(scope: !3802, file: !3793, discriminator: 13)
!3839 = !DILocation(line: 47, column: 39, scope: !3812)
!3840 = !DILocation(line: 47, column: 39, scope: !3841)
!3841 = !DILexicalBlockFile(scope: !3812, file: !3793, discriminator: 26)
!3842 = !DILocation(line: 47, column: 59, scope: !3843)
!3843 = !DILexicalBlockFile(scope: !3802, file: !3793, discriminator: 27)
!3844 = !DILocation(line: 47, column: 15, scope: !3845)
!3845 = !DILexicalBlockFile(scope: !3803, file: !3793, discriminator: 27)
!3846 = !DILocation(line: 48, column: 13, scope: !3802)
!3847 = !DILocation(line: 71, column: 3, scope: !3792)
!3848 = distinct !DISubprogram(name: "locale_charset", scope: !525, file: !525, line: 393, type: !3849, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !180, variables: !3851)
!3849 = !DISubroutineType(types: !3850)
!3850 = !{!6}
!3851 = !{!3852, !3853, !3854, !3859}
!3852 = !DILocalVariable(name: "codeset", scope: !3848, file: !525, line: 395, type: !6)
!3853 = !DILocalVariable(name: "aliases", scope: !3848, file: !525, line: 396, type: !6)
!3854 = !DILocalVariable(name: "__s1_len", scope: !3855, file: !525, line: 592, type: !123)
!3855 = distinct !DILexicalBlock(scope: !3856, file: !525, line: 592, column: 9)
!3856 = distinct !DILexicalBlock(scope: !3857, file: !525, line: 592, column: 9)
!3857 = distinct !DILexicalBlock(scope: !3858, file: !525, line: 589, column: 3)
!3858 = distinct !DILexicalBlock(scope: !3848, file: !525, line: 589, column: 3)
!3859 = !DILocalVariable(name: "__s2_len", scope: !3855, file: !525, line: 592, type: !123)
!3860 = !DILocalVariable(name: "buf1", scope: !3861, file: !525, line: 196, type: !3928)
!3861 = distinct !DILexicalBlock(scope: !3862, file: !525, line: 194, column: 21)
!3862 = distinct !DILexicalBlock(scope: !3863, file: !525, line: 193, column: 19)
!3863 = distinct !DILexicalBlock(scope: !3864, file: !525, line: 193, column: 19)
!3864 = distinct !DILexicalBlock(scope: !3865, file: !525, line: 188, column: 17)
!3865 = distinct !DILexicalBlock(scope: !3866, file: !525, line: 181, column: 19)
!3866 = distinct !DILexicalBlock(scope: !3867, file: !525, line: 177, column: 13)
!3867 = distinct !DILexicalBlock(scope: !3868, file: !525, line: 173, column: 15)
!3868 = distinct !DILexicalBlock(scope: !3869, file: !525, line: 161, column: 9)
!3869 = distinct !DILexicalBlock(scope: !3870, file: !525, line: 157, column: 11)
!3870 = distinct !DILexicalBlock(scope: !3871, file: !525, line: 130, column: 5)
!3871 = distinct !DILexicalBlock(scope: !3872, file: !525, line: 129, column: 7)
!3872 = distinct !DISubprogram(name: "get_charset_aliases", scope: !525, file: !525, line: 124, type: !3849, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !180, variables: !3873)
!3873 = !{!3874, !3875, !3876, !3877, !3878, !3880, !3881, !3882, !3883, !3924, !3925, !3926, !3860, !3927, !3931, !3932, !3933}
!3874 = !DILocalVariable(name: "cp", scope: !3872, file: !525, line: 126, type: !6)
!3875 = !DILocalVariable(name: "dir", scope: !3870, file: !525, line: 132, type: !6)
!3876 = !DILocalVariable(name: "base", scope: !3870, file: !525, line: 133, type: !6)
!3877 = !DILocalVariable(name: "file_name", scope: !3870, file: !525, line: 134, type: !14)
!3878 = !DILocalVariable(name: "dir_len", scope: !3879, file: !525, line: 144, type: !123)
!3879 = distinct !DILexicalBlock(scope: !3870, file: !525, line: 143, column: 7)
!3880 = !DILocalVariable(name: "base_len", scope: !3879, file: !525, line: 145, type: !123)
!3881 = !DILocalVariable(name: "add_slash", scope: !3879, file: !525, line: 146, type: !34)
!3882 = !DILocalVariable(name: "fd", scope: !3868, file: !525, line: 162, type: !34)
!3883 = !DILocalVariable(name: "fp", scope: !3866, file: !525, line: 178, type: !3884)
!3884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3885, size: 64)
!3885 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !927, line: 49, baseType: !3886)
!3886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2965, line: 241, size: 1728, elements: !3887)
!3887 = !{!3888, !3889, !3890, !3891, !3892, !3893, !3894, !3895, !3896, !3897, !3898, !3899, !3900, !3908, !3909, !3910, !3911, !3912, !3913, !3914, !3915, !3916, !3917, !3918, !3919, !3920, !3921, !3922, !3923}
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3886, file: !2965, line: 242, baseType: !34, size: 32)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3886, file: !2965, line: 247, baseType: !14, size: 64, offset: 64)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3886, file: !2965, line: 248, baseType: !14, size: 64, offset: 128)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3886, file: !2965, line: 249, baseType: !14, size: 64, offset: 192)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3886, file: !2965, line: 250, baseType: !14, size: 64, offset: 256)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3886, file: !2965, line: 251, baseType: !14, size: 64, offset: 320)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3886, file: !2965, line: 252, baseType: !14, size: 64, offset: 384)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3886, file: !2965, line: 253, baseType: !14, size: 64, offset: 448)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3886, file: !2965, line: 254, baseType: !14, size: 64, offset: 512)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3886, file: !2965, line: 256, baseType: !14, size: 64, offset: 576)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3886, file: !2965, line: 257, baseType: !14, size: 64, offset: 640)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3886, file: !2965, line: 258, baseType: !14, size: 64, offset: 704)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3886, file: !2965, line: 260, baseType: !3901, size: 64, offset: 768)
!3901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3902, size: 64)
!3902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2965, line: 156, size: 192, elements: !3903)
!3903 = !{!3904, !3905, !3907}
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3902, file: !2965, line: 157, baseType: !3901, size: 64)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3902, file: !2965, line: 158, baseType: !3906, size: 64, offset: 64)
!3906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3886, size: 64)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3902, file: !2965, line: 162, baseType: !34, size: 32, offset: 128)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3886, file: !2965, line: 262, baseType: !3906, size: 64, offset: 832)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3886, file: !2965, line: 264, baseType: !34, size: 32, offset: 896)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3886, file: !2965, line: 268, baseType: !34, size: 32, offset: 928)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3886, file: !2965, line: 270, baseType: !2991, size: 64, offset: 960)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3886, file: !2965, line: 274, baseType: !30, size: 16, offset: 1024)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3886, file: !2965, line: 275, baseType: !2994, size: 8, offset: 1040)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3886, file: !2965, line: 276, baseType: !2996, size: 8, offset: 1048)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3886, file: !2965, line: 280, baseType: !2998, size: 64, offset: 1088)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3886, file: !2965, line: 289, baseType: !3001, size: 64, offset: 1152)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3886, file: !2965, line: 297, baseType: !80, size: 64, offset: 1216)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3886, file: !2965, line: 298, baseType: !80, size: 64, offset: 1280)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3886, file: !2965, line: 299, baseType: !80, size: 64, offset: 1344)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3886, file: !2965, line: 300, baseType: !80, size: 64, offset: 1408)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3886, file: !2965, line: 302, baseType: !123, size: 64, offset: 1472)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3886, file: !2965, line: 303, baseType: !34, size: 32, offset: 1536)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3886, file: !2965, line: 305, baseType: !3009, size: 160, offset: 1568)
!3924 = !DILocalVariable(name: "res_ptr", scope: !3864, file: !525, line: 190, type: !14)
!3925 = !DILocalVariable(name: "res_size", scope: !3864, file: !525, line: 191, type: !123)
!3926 = !DILocalVariable(name: "c", scope: !3861, file: !525, line: 195, type: !34)
!3927 = !DILocalVariable(name: "buf2", scope: !3861, file: !525, line: 197, type: !3928)
!3928 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 408, elements: !3929)
!3929 = !{!3930}
!3930 = !DISubrange(count: 51)
!3931 = !DILocalVariable(name: "l1", scope: !3861, file: !525, line: 198, type: !123)
!3932 = !DILocalVariable(name: "l2", scope: !3861, file: !525, line: 198, type: !123)
!3933 = !DILocalVariable(name: "old_res_ptr", scope: !3861, file: !525, line: 199, type: !14)
!3934 = !DILocation(line: 196, column: 28, scope: !3861, inlinedAt: !3935)
!3935 = distinct !DILocation(line: 589, column: 18, scope: !3858)
!3936 = !DILocation(line: 197, column: 28, scope: !3861, inlinedAt: !3935)
!3937 = !DILocation(line: 403, column: 13, scope: !3848)
!3938 = !DILocation(line: 395, column: 15, scope: !3848)
!3939 = !DILocation(line: 584, column: 15, scope: !3940)
!3940 = distinct !DILexicalBlock(scope: !3848, file: !525, line: 584, column: 7)
!3941 = !DILocation(line: 584, column: 7, scope: !3848)
!3942 = !DILocation(line: 128, column: 8, scope: !3872, inlinedAt: !3935)
!3943 = !DILocation(line: 126, column: 15, scope: !3872, inlinedAt: !3935)
!3944 = !DILocation(line: 129, column: 10, scope: !3871, inlinedAt: !3935)
!3945 = !DILocation(line: 129, column: 7, scope: !3872, inlinedAt: !3935)
!3946 = !DILocation(line: 138, column: 13, scope: !3870, inlinedAt: !3935)
!3947 = !DILocation(line: 132, column: 19, scope: !3870, inlinedAt: !3935)
!3948 = !DILocation(line: 139, column: 15, scope: !3949, inlinedAt: !3935)
!3949 = distinct !DILexicalBlock(scope: !3870, file: !525, line: 139, column: 11)
!3950 = !DILocation(line: 139, column: 23, scope: !3949, inlinedAt: !3935)
!3951 = !DILocation(line: 139, column: 26, scope: !3952, inlinedAt: !3935)
!3952 = !DILexicalBlockFile(scope: !3949, file: !525, discriminator: 1)
!3953 = !DILocation(line: 139, column: 33, scope: !3952, inlinedAt: !3935)
!3954 = !DILocation(line: 139, column: 11, scope: !3955, inlinedAt: !3935)
!3955 = !DILexicalBlockFile(scope: !3870, file: !525, discriminator: 1)
!3956 = !DILocation(line: 140, column: 9, scope: !3949, inlinedAt: !3935)
!3957 = !DILocation(line: 144, column: 26, scope: !3879, inlinedAt: !3935)
!3958 = !DILocation(line: 144, column: 16, scope: !3879, inlinedAt: !3935)
!3959 = !DILocation(line: 145, column: 16, scope: !3879, inlinedAt: !3935)
!3960 = !DILocation(line: 146, column: 34, scope: !3879, inlinedAt: !3935)
!3961 = !DILocation(line: 146, column: 38, scope: !3879, inlinedAt: !3935)
!3962 = !DILocation(line: 146, column: 42, scope: !3963, inlinedAt: !3935)
!3963 = !DILexicalBlockFile(scope: !3879, file: !525, discriminator: 1)
!3964 = !DILocation(line: 146, column: 41, scope: !3963, inlinedAt: !3935)
!3965 = !DILocation(line: 147, column: 48, scope: !3879, inlinedAt: !3935)
!3966 = !DILocation(line: 147, column: 46, scope: !3879, inlinedAt: !3935)
!3967 = !DILocation(line: 147, column: 69, scope: !3879, inlinedAt: !3935)
!3968 = !DILocation(line: 147, column: 30, scope: !3879, inlinedAt: !3935)
!3969 = !DILocation(line: 134, column: 13, scope: !3870, inlinedAt: !3935)
!3970 = !DILocation(line: 148, column: 13, scope: !3879, inlinedAt: !3935)
!3971 = !DILocation(line: 150, column: 13, scope: !3972, inlinedAt: !3935)
!3972 = distinct !DILexicalBlock(scope: !3973, file: !525, line: 149, column: 11)
!3973 = distinct !DILexicalBlock(scope: !3879, file: !525, line: 148, column: 13)
!3974 = !DILocation(line: 151, column: 17, scope: !3972, inlinedAt: !3935)
!3975 = !DILocation(line: 152, column: 34, scope: !3976, inlinedAt: !3935)
!3976 = distinct !DILexicalBlock(scope: !3972, file: !525, line: 151, column: 17)
!3977 = !DILocation(line: 153, column: 41, scope: !3972, inlinedAt: !3935)
!3978 = !DILocation(line: 153, column: 13, scope: !3972, inlinedAt: !3935)
!3979 = !DILocation(line: 157, column: 11, scope: !3870, inlinedAt: !3935)
!3980 = !DILocation(line: 171, column: 16, scope: !3868, inlinedAt: !3935)
!3981 = !DILocation(line: 162, column: 15, scope: !3868, inlinedAt: !3935)
!3982 = !DILocation(line: 173, column: 18, scope: !3867, inlinedAt: !3935)
!3983 = !DILocation(line: 173, column: 15, scope: !3868, inlinedAt: !3935)
!3984 = !DILocation(line: 180, column: 20, scope: !3866, inlinedAt: !3935)
!3985 = !DILocation(line: 178, column: 21, scope: !3866, inlinedAt: !3935)
!3986 = !DILocation(line: 181, column: 22, scope: !3865, inlinedAt: !3935)
!3987 = !DILocation(line: 181, column: 19, scope: !3866, inlinedAt: !3935)
!3988 = !DILocation(line: 190, column: 25, scope: !3864, inlinedAt: !3935)
!3989 = !DILocation(line: 184, column: 19, scope: !3990, inlinedAt: !3935)
!3990 = distinct !DILexicalBlock(scope: !3865, file: !525, line: 182, column: 17)
!3991 = !DILocation(line: 186, column: 17, scope: !3990, inlinedAt: !3935)
!3992 = !DILocation(line: 191, column: 26, scope: !3864, inlinedAt: !3935)
!3993 = !DILocation(line: 196, column: 23, scope: !3861, inlinedAt: !3935)
!3994 = !DILocation(line: 197, column: 23, scope: !3861, inlinedAt: !3935)
!3995 = !DILocalVariable(name: "__fp", arg: 1, scope: !3996, file: !3713, line: 63, type: !3884)
!3996 = distinct !DISubprogram(name: "getc_unlocked", scope: !3713, file: !3713, line: 63, type: !3997, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !180, variables: !3999)
!3997 = !DISubroutineType(types: !3998)
!3998 = !{!34, !3884}
!3999 = !{!3995}
!4000 = !DILocation(line: 63, column: 22, scope: !3996, inlinedAt: !4001)
!4001 = distinct !DILocation(line: 201, column: 27, scope: !3861, inlinedAt: !3935)
!4002 = !DILocation(line: 65, column: 10, scope: !3996, inlinedAt: !4001)
!4003 = !{!3719, !651, i64 8}
!4004 = !{!3719, !651, i64 16}
!4005 = !{!"branch_weights", i32 2000, i32 1}
!4006 = !DILocation(line: 65, column: 10, scope: !4007, inlinedAt: !4001)
!4007 = !DILexicalBlockFile(scope: !3996, file: !3713, discriminator: 1)
!4008 = !DILocation(line: 65, column: 10, scope: !4009, inlinedAt: !4001)
!4009 = !DILexicalBlockFile(scope: !3996, file: !3713, discriminator: 2)
!4010 = !DILocation(line: 65, column: 10, scope: !4011, inlinedAt: !4001)
!4011 = !DILexicalBlockFile(scope: !3996, file: !3713, discriminator: 3)
!4012 = !DILocation(line: 195, column: 27, scope: !3861, inlinedAt: !3935)
!4013 = !DILocation(line: 202, column: 27, scope: !3861, inlinedAt: !3935)
!4014 = !DILocation(line: 63, column: 22, scope: !3996, inlinedAt: !4015)
!4015 = distinct !DILocation(line: 210, column: 33, scope: !4016, inlinedAt: !3935)
!4016 = distinct !DILexicalBlock(scope: !4017, file: !525, line: 207, column: 25)
!4017 = distinct !DILexicalBlock(scope: !3861, file: !525, line: 206, column: 27)
!4018 = !DILocation(line: 65, column: 10, scope: !3996, inlinedAt: !4015)
!4019 = !DILocation(line: 65, column: 10, scope: !4007, inlinedAt: !4015)
!4020 = !DILocation(line: 65, column: 10, scope: !4009, inlinedAt: !4015)
!4021 = !DILocation(line: 65, column: 10, scope: !4011, inlinedAt: !4015)
!4022 = !DILocation(line: 210, column: 29, scope: !4023, inlinedAt: !3935)
!4023 = !DILexicalBlockFile(scope: !4016, file: !525, discriminator: 1)
!4024 = distinct !{!4024, !4025, !4026}
!4025 = !DILocation(line: 193, column: 19, scope: !3863)
!4026 = !DILocation(line: 241, column: 21, scope: !3863)
!4027 = !DILocation(line: 216, column: 23, scope: !3861, inlinedAt: !3935)
!4028 = !DILocation(line: 217, column: 27, scope: !4029, inlinedAt: !3935)
!4029 = distinct !DILexicalBlock(scope: !3861, file: !525, line: 217, column: 27)
!4030 = !DILocation(line: 217, column: 64, scope: !4029, inlinedAt: !3935)
!4031 = !DILocation(line: 217, column: 27, scope: !3861, inlinedAt: !3935)
!4032 = !DILocation(line: 219, column: 28, scope: !3861, inlinedAt: !3935)
!4033 = !DILocation(line: 198, column: 30, scope: !3861, inlinedAt: !3935)
!4034 = !DILocation(line: 220, column: 28, scope: !3861, inlinedAt: !3935)
!4035 = !DILocation(line: 198, column: 34, scope: !3861, inlinedAt: !3935)
!4036 = !DILocation(line: 199, column: 29, scope: !3861, inlinedAt: !3935)
!4037 = !DILocation(line: 222, column: 36, scope: !4038, inlinedAt: !3935)
!4038 = distinct !DILexicalBlock(scope: !3861, file: !525, line: 222, column: 27)
!4039 = !DILocation(line: 222, column: 27, scope: !3861, inlinedAt: !3935)
!4040 = !DILocation(line: 225, column: 63, scope: !4041, inlinedAt: !3935)
!4041 = distinct !DILexicalBlock(scope: !4038, file: !525, line: 223, column: 25)
!4042 = !DILocation(line: 225, column: 46, scope: !4041, inlinedAt: !3935)
!4043 = !DILocation(line: 226, column: 25, scope: !4041, inlinedAt: !3935)
!4044 = !DILocation(line: 229, column: 36, scope: !4045, inlinedAt: !3935)
!4045 = distinct !DILexicalBlock(scope: !4038, file: !525, line: 228, column: 25)
!4046 = !DILocation(line: 230, column: 73, scope: !4045, inlinedAt: !3935)
!4047 = !DILocation(line: 230, column: 46, scope: !4045, inlinedAt: !3935)
!4048 = !DILocation(line: 232, column: 35, scope: !4049, inlinedAt: !3935)
!4049 = distinct !DILexicalBlock(scope: !3861, file: !525, line: 232, column: 27)
!4050 = !DILocation(line: 232, column: 27, scope: !3861, inlinedAt: !3935)
!4051 = !DILocation(line: 236, column: 27, scope: !4052, inlinedAt: !3935)
!4052 = distinct !DILexicalBlock(scope: !4049, file: !525, line: 233, column: 25)
!4053 = !DILocation(line: 237, column: 27, scope: !4052, inlinedAt: !3935)
!4054 = !DILocation(line: 239, column: 39, scope: !3861, inlinedAt: !3935)
!4055 = !DILocation(line: 239, column: 50, scope: !3861, inlinedAt: !3935)
!4056 = !DILocation(line: 239, column: 61, scope: !3861, inlinedAt: !3935)
!4057 = !DILocalVariable(name: "__dest", arg: 1, scope: !4058, file: !4059, line: 107, type: !4062)
!4058 = distinct !DISubprogram(name: "strcpy", scope: !4059, file: !4059, line: 107, type: !4060, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !180, variables: !4064)
!4059 = !DIFile(filename: "/usr/include/bits/string3.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4060 = !DISubroutineType(types: !4061)
!4061 = !{!14, !4062, !4063}
!4062 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !14)
!4063 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !6)
!4064 = !{!4057, !4065}
!4065 = !DILocalVariable(name: "__src", arg: 2, scope: !4058, file: !4059, line: 107, type: !4063)
!4066 = !DILocation(line: 107, column: 1, scope: !4058, inlinedAt: !4067)
!4067 = distinct !DILocation(line: 239, column: 23, scope: !3861, inlinedAt: !3935)
!4068 = !DILocation(line: 109, column: 49, scope: !4058, inlinedAt: !4067)
!4069 = !DILocation(line: 109, column: 10, scope: !4058, inlinedAt: !4067)
!4070 = !DILocation(line: 107, column: 1, scope: !4058, inlinedAt: !4071)
!4071 = distinct !DILocation(line: 240, column: 23, scope: !3861, inlinedAt: !3935)
!4072 = !DILocation(line: 109, column: 49, scope: !4058, inlinedAt: !4071)
!4073 = !DILocation(line: 109, column: 10, scope: !4058, inlinedAt: !4071)
!4074 = !DILocation(line: 241, column: 21, scope: !3862, inlinedAt: !3935)
!4075 = !DILocation(line: 242, column: 19, scope: !3864, inlinedAt: !3935)
!4076 = !DILocation(line: 243, column: 32, scope: !4077, inlinedAt: !3935)
!4077 = distinct !DILexicalBlock(scope: !3864, file: !525, line: 243, column: 23)
!4078 = !DILocation(line: 243, column: 23, scope: !3864, inlinedAt: !3935)
!4079 = !DILocation(line: 247, column: 33, scope: !4080, inlinedAt: !3935)
!4080 = distinct !DILexicalBlock(scope: !4077, file: !525, line: 246, column: 21)
!4081 = !DILocation(line: 247, column: 45, scope: !4080, inlinedAt: !3935)
!4082 = !DILocation(line: 253, column: 11, scope: !3868, inlinedAt: !3935)
!4083 = !DILocation(line: 377, column: 23, scope: !3870, inlinedAt: !3935)
!4084 = !DILocation(line: 378, column: 5, scope: !3870, inlinedAt: !3935)
!4085 = !DILocation(line: 396, column: 15, scope: !3848)
!4086 = !DILocation(line: 590, column: 8, scope: !3857)
!4087 = !DILocation(line: 590, column: 17, scope: !3857)
!4088 = !DILocation(line: 589, column: 3, scope: !4089)
!4089 = !DILexicalBlockFile(scope: !3858, file: !525, discriminator: 1)
!4090 = !DILocation(line: 592, column: 9, scope: !3855)
!4091 = !DILocation(line: 592, column: 35, scope: !3856)
!4092 = !DILocation(line: 593, column: 9, scope: !3856)
!4093 = !DILocation(line: 593, column: 24, scope: !4094)
!4094 = !DILexicalBlockFile(scope: !3856, file: !525, discriminator: 1)
!4095 = !DILocation(line: 593, column: 31, scope: !4094)
!4096 = !DILocation(line: 593, column: 34, scope: !4097)
!4097 = !DILexicalBlockFile(scope: !3856, file: !525, discriminator: 2)
!4098 = !DILocation(line: 593, column: 45, scope: !4097)
!4099 = !DILocation(line: 592, column: 9, scope: !4100)
!4100 = !DILexicalBlockFile(scope: !3857, file: !525, discriminator: 1)
!4101 = !DILocation(line: 595, column: 29, scope: !4102)
!4102 = distinct !DILexicalBlock(scope: !3856, file: !525, line: 594, column: 7)
!4103 = !DILocation(line: 595, column: 27, scope: !4102)
!4104 = !DILocation(line: 595, column: 46, scope: !4102)
!4105 = !DILocation(line: 596, column: 9, scope: !4102)
!4106 = !DILocation(line: 591, column: 19, scope: !3857)
!4107 = !DILocation(line: 591, column: 36, scope: !3857)
!4108 = !DILocation(line: 591, column: 16, scope: !3857)
!4109 = !DILocation(line: 591, column: 52, scope: !4100)
!4110 = !DILocation(line: 591, column: 69, scope: !3857)
!4111 = !DILocation(line: 591, column: 49, scope: !3857)
!4112 = distinct !{!4112, !4113, !4114}
!4113 = !DILocation(line: 589, column: 3, scope: !3858)
!4114 = !DILocation(line: 597, column: 7, scope: !3858)
!4115 = !DILocation(line: 602, column: 7, scope: !4116)
!4116 = distinct !DILexicalBlock(scope: !3848, file: !525, line: 602, column: 7)
!4117 = !DILocation(line: 602, column: 18, scope: !4116)
!4118 = !DILocation(line: 602, column: 7, scope: !3848)
!4119 = !DILocation(line: 612, column: 3, scope: !3848)
!4120 = distinct !DISubprogram(name: "rpl_fclose", scope: !4121, file: !4121, line: 56, type: !4122, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !626, variables: !4164)
!4121 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4122 = !DISubroutineType(types: !4123)
!4123 = !{!34, !4124}
!4124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4125, size: 64)
!4125 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !927, line: 49, baseType: !4126)
!4126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2965, line: 241, size: 1728, elements: !4127)
!4127 = !{!4128, !4129, !4130, !4131, !4132, !4133, !4134, !4135, !4136, !4137, !4138, !4139, !4140, !4148, !4149, !4150, !4151, !4152, !4153, !4154, !4155, !4156, !4157, !4158, !4159, !4160, !4161, !4162, !4163}
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4126, file: !2965, line: 242, baseType: !34, size: 32)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4126, file: !2965, line: 247, baseType: !14, size: 64, offset: 64)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4126, file: !2965, line: 248, baseType: !14, size: 64, offset: 128)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4126, file: !2965, line: 249, baseType: !14, size: 64, offset: 192)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4126, file: !2965, line: 250, baseType: !14, size: 64, offset: 256)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4126, file: !2965, line: 251, baseType: !14, size: 64, offset: 320)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4126, file: !2965, line: 252, baseType: !14, size: 64, offset: 384)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4126, file: !2965, line: 253, baseType: !14, size: 64, offset: 448)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4126, file: !2965, line: 254, baseType: !14, size: 64, offset: 512)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4126, file: !2965, line: 256, baseType: !14, size: 64, offset: 576)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4126, file: !2965, line: 257, baseType: !14, size: 64, offset: 640)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4126, file: !2965, line: 258, baseType: !14, size: 64, offset: 704)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4126, file: !2965, line: 260, baseType: !4141, size: 64, offset: 768)
!4141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4142, size: 64)
!4142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2965, line: 156, size: 192, elements: !4143)
!4143 = !{!4144, !4145, !4147}
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4142, file: !2965, line: 157, baseType: !4141, size: 64)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4142, file: !2965, line: 158, baseType: !4146, size: 64, offset: 64)
!4146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4126, size: 64)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4142, file: !2965, line: 162, baseType: !34, size: 32, offset: 128)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4126, file: !2965, line: 262, baseType: !4146, size: 64, offset: 832)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4126, file: !2965, line: 264, baseType: !34, size: 32, offset: 896)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4126, file: !2965, line: 268, baseType: !34, size: 32, offset: 928)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4126, file: !2965, line: 270, baseType: !2991, size: 64, offset: 960)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4126, file: !2965, line: 274, baseType: !30, size: 16, offset: 1024)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4126, file: !2965, line: 275, baseType: !2994, size: 8, offset: 1040)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4126, file: !2965, line: 276, baseType: !2996, size: 8, offset: 1048)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4126, file: !2965, line: 280, baseType: !2998, size: 64, offset: 1088)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4126, file: !2965, line: 289, baseType: !3001, size: 64, offset: 1152)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4126, file: !2965, line: 297, baseType: !80, size: 64, offset: 1216)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4126, file: !2965, line: 298, baseType: !80, size: 64, offset: 1280)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4126, file: !2965, line: 299, baseType: !80, size: 64, offset: 1344)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4126, file: !2965, line: 300, baseType: !80, size: 64, offset: 1408)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4126, file: !2965, line: 302, baseType: !123, size: 64, offset: 1472)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4126, file: !2965, line: 303, baseType: !34, size: 32, offset: 1536)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4126, file: !2965, line: 305, baseType: !3009, size: 160, offset: 1568)
!4164 = !{!4165, !4166, !4167, !4168}
!4165 = !DILocalVariable(name: "fp", arg: 1, scope: !4120, file: !4121, line: 56, type: !4124)
!4166 = !DILocalVariable(name: "saved_errno", scope: !4120, file: !4121, line: 58, type: !34)
!4167 = !DILocalVariable(name: "fd", scope: !4120, file: !4121, line: 59, type: !34)
!4168 = !DILocalVariable(name: "result", scope: !4120, file: !4121, line: 60, type: !34)
!4169 = !DILocation(line: 56, column: 19, scope: !4120)
!4170 = !DILocation(line: 58, column: 7, scope: !4120)
!4171 = !DILocation(line: 60, column: 7, scope: !4120)
!4172 = !DILocation(line: 63, column: 8, scope: !4120)
!4173 = !DILocation(line: 59, column: 7, scope: !4120)
!4174 = !DILocation(line: 64, column: 10, scope: !4175)
!4175 = distinct !DILexicalBlock(scope: !4120, file: !4121, line: 64, column: 7)
!4176 = !DILocation(line: 64, column: 7, scope: !4120)
!4177 = !DILocation(line: 65, column: 12, scope: !4175)
!4178 = !DILocation(line: 65, column: 5, scope: !4175)
!4179 = !DILocation(line: 70, column: 9, scope: !4180)
!4180 = distinct !DILexicalBlock(scope: !4120, file: !4121, line: 70, column: 7)
!4181 = !DILocation(line: 70, column: 23, scope: !4180)
!4182 = !DILocation(line: 70, column: 33, scope: !4183)
!4183 = !DILexicalBlockFile(scope: !4180, file: !4121, discriminator: 1)
!4184 = !DILocation(line: 70, column: 26, scope: !4185)
!4185 = !DILexicalBlockFile(scope: !4180, file: !4121, discriminator: 3)
!4186 = !DILocation(line: 70, column: 59, scope: !4183)
!4187 = !DILocation(line: 71, column: 7, scope: !4180)
!4188 = !DILocation(line: 71, column: 10, scope: !4183)
!4189 = !DILocation(line: 70, column: 7, scope: !4190)
!4190 = !DILexicalBlockFile(scope: !4120, file: !4121, discriminator: 2)
!4191 = !DILocation(line: 98, column: 12, scope: !4120)
!4192 = !DILocation(line: 103, column: 7, scope: !4120)
!4193 = !DILocation(line: 72, column: 19, scope: !4180)
!4194 = !DILocation(line: 103, column: 19, scope: !4195)
!4195 = distinct !DILexicalBlock(scope: !4120, file: !4121, line: 103, column: 7)
!4196 = !DILocation(line: 105, column: 13, scope: !4197)
!4197 = distinct !DILexicalBlock(scope: !4195, file: !4121, line: 104, column: 5)
!4198 = !DILocation(line: 107, column: 5, scope: !4197)
!4199 = !DILocation(line: 110, column: 1, scope: !4120)
!4200 = distinct !DISubprogram(name: "rpl_fflush", scope: !4201, file: !4201, line: 127, type: !4202, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !628, variables: !4244)
!4201 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4202 = !DISubroutineType(types: !4203)
!4203 = !{!34, !4204}
!4204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4205, size: 64)
!4205 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !927, line: 49, baseType: !4206)
!4206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2965, line: 241, size: 1728, elements: !4207)
!4207 = !{!4208, !4209, !4210, !4211, !4212, !4213, !4214, !4215, !4216, !4217, !4218, !4219, !4220, !4228, !4229, !4230, !4231, !4232, !4233, !4234, !4235, !4236, !4237, !4238, !4239, !4240, !4241, !4242, !4243}
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4206, file: !2965, line: 242, baseType: !34, size: 32)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4206, file: !2965, line: 247, baseType: !14, size: 64, offset: 64)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4206, file: !2965, line: 248, baseType: !14, size: 64, offset: 128)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4206, file: !2965, line: 249, baseType: !14, size: 64, offset: 192)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4206, file: !2965, line: 250, baseType: !14, size: 64, offset: 256)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4206, file: !2965, line: 251, baseType: !14, size: 64, offset: 320)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4206, file: !2965, line: 252, baseType: !14, size: 64, offset: 384)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4206, file: !2965, line: 253, baseType: !14, size: 64, offset: 448)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4206, file: !2965, line: 254, baseType: !14, size: 64, offset: 512)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4206, file: !2965, line: 256, baseType: !14, size: 64, offset: 576)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4206, file: !2965, line: 257, baseType: !14, size: 64, offset: 640)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4206, file: !2965, line: 258, baseType: !14, size: 64, offset: 704)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4206, file: !2965, line: 260, baseType: !4221, size: 64, offset: 768)
!4221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4222, size: 64)
!4222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2965, line: 156, size: 192, elements: !4223)
!4223 = !{!4224, !4225, !4227}
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4222, file: !2965, line: 157, baseType: !4221, size: 64)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4222, file: !2965, line: 158, baseType: !4226, size: 64, offset: 64)
!4226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4206, size: 64)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4222, file: !2965, line: 162, baseType: !34, size: 32, offset: 128)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4206, file: !2965, line: 262, baseType: !4226, size: 64, offset: 832)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4206, file: !2965, line: 264, baseType: !34, size: 32, offset: 896)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4206, file: !2965, line: 268, baseType: !34, size: 32, offset: 928)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4206, file: !2965, line: 270, baseType: !2991, size: 64, offset: 960)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4206, file: !2965, line: 274, baseType: !30, size: 16, offset: 1024)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4206, file: !2965, line: 275, baseType: !2994, size: 8, offset: 1040)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4206, file: !2965, line: 276, baseType: !2996, size: 8, offset: 1048)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4206, file: !2965, line: 280, baseType: !2998, size: 64, offset: 1088)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4206, file: !2965, line: 289, baseType: !3001, size: 64, offset: 1152)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4206, file: !2965, line: 297, baseType: !80, size: 64, offset: 1216)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4206, file: !2965, line: 298, baseType: !80, size: 64, offset: 1280)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4206, file: !2965, line: 299, baseType: !80, size: 64, offset: 1344)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4206, file: !2965, line: 300, baseType: !80, size: 64, offset: 1408)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4206, file: !2965, line: 302, baseType: !123, size: 64, offset: 1472)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4206, file: !2965, line: 303, baseType: !34, size: 32, offset: 1536)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4206, file: !2965, line: 305, baseType: !3009, size: 160, offset: 1568)
!4244 = !{!4245}
!4245 = !DILocalVariable(name: "stream", arg: 1, scope: !4200, file: !4201, line: 127, type: !4204)
!4246 = !DILocation(line: 127, column: 19, scope: !4200)
!4247 = !DILocation(line: 148, column: 14, scope: !4248)
!4248 = distinct !DILexicalBlock(scope: !4200, file: !4201, line: 148, column: 7)
!4249 = !DILocation(line: 148, column: 22, scope: !4248)
!4250 = !DILocation(line: 148, column: 27, scope: !4251)
!4251 = !DILexicalBlockFile(scope: !4248, file: !4201, discriminator: 1)
!4252 = !DILocation(line: 148, column: 7, scope: !4253)
!4253 = !DILexicalBlockFile(scope: !4200, file: !4201, discriminator: 1)
!4254 = !DILocation(line: 149, column: 12, scope: !4248)
!4255 = !DILocation(line: 149, column: 5, scope: !4248)
!4256 = !DILocalVariable(name: "fp", arg: 1, scope: !4257, file: !4201, line: 40, type: !4204)
!4257 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !4201, file: !4201, line: 40, type: !4258, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !628, variables: !4260)
!4258 = !DISubroutineType(types: !4259)
!4259 = !{null, !4204}
!4260 = !{!4256}
!4261 = !DILocation(line: 40, column: 48, scope: !4257, inlinedAt: !4262)
!4262 = distinct !DILocation(line: 153, column: 3, scope: !4200)
!4263 = !DILocation(line: 42, column: 11, scope: !4264, inlinedAt: !4262)
!4264 = distinct !DILexicalBlock(scope: !4257, file: !4201, line: 42, column: 7)
!4265 = !DILocation(line: 42, column: 18, scope: !4264, inlinedAt: !4262)
!4266 = !DILocation(line: 42, column: 7, scope: !4257, inlinedAt: !4262)
!4267 = !DILocation(line: 44, column: 5, scope: !4264, inlinedAt: !4262)
!4268 = !DILocation(line: 155, column: 10, scope: !4200)
!4269 = !DILocation(line: 155, column: 3, scope: !4200)
!4270 = !DILocation(line: 229, column: 1, scope: !4200)
!4271 = distinct !DISubprogram(name: "rpl_fseeko", scope: !4272, file: !4272, line: 28, type: !4273, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !630, variables: !4316)
!4272 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4273 = !DISubroutineType(types: !4274)
!4274 = !{!34, !4275, !4315, !34}
!4275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4276, size: 64)
!4276 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !927, line: 49, baseType: !4277)
!4277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2965, line: 241, size: 1728, elements: !4278)
!4278 = !{!4279, !4280, !4281, !4282, !4283, !4284, !4285, !4286, !4287, !4288, !4289, !4290, !4291, !4299, !4300, !4301, !4302, !4303, !4304, !4305, !4306, !4307, !4308, !4309, !4310, !4311, !4312, !4313, !4314}
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4277, file: !2965, line: 242, baseType: !34, size: 32)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4277, file: !2965, line: 247, baseType: !14, size: 64, offset: 64)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4277, file: !2965, line: 248, baseType: !14, size: 64, offset: 128)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4277, file: !2965, line: 249, baseType: !14, size: 64, offset: 192)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4277, file: !2965, line: 250, baseType: !14, size: 64, offset: 256)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4277, file: !2965, line: 251, baseType: !14, size: 64, offset: 320)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4277, file: !2965, line: 252, baseType: !14, size: 64, offset: 384)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4277, file: !2965, line: 253, baseType: !14, size: 64, offset: 448)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4277, file: !2965, line: 254, baseType: !14, size: 64, offset: 512)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4277, file: !2965, line: 256, baseType: !14, size: 64, offset: 576)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4277, file: !2965, line: 257, baseType: !14, size: 64, offset: 640)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4277, file: !2965, line: 258, baseType: !14, size: 64, offset: 704)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4277, file: !2965, line: 260, baseType: !4292, size: 64, offset: 768)
!4292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4293, size: 64)
!4293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2965, line: 156, size: 192, elements: !4294)
!4294 = !{!4295, !4296, !4298}
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4293, file: !2965, line: 157, baseType: !4292, size: 64)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4293, file: !2965, line: 158, baseType: !4297, size: 64, offset: 64)
!4297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4277, size: 64)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4293, file: !2965, line: 162, baseType: !34, size: 32, offset: 128)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4277, file: !2965, line: 262, baseType: !4297, size: 64, offset: 832)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4277, file: !2965, line: 264, baseType: !34, size: 32, offset: 896)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4277, file: !2965, line: 268, baseType: !34, size: 32, offset: 928)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4277, file: !2965, line: 270, baseType: !2991, size: 64, offset: 960)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4277, file: !2965, line: 274, baseType: !30, size: 16, offset: 1024)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4277, file: !2965, line: 275, baseType: !2994, size: 8, offset: 1040)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4277, file: !2965, line: 276, baseType: !2996, size: 8, offset: 1048)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4277, file: !2965, line: 280, baseType: !2998, size: 64, offset: 1088)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4277, file: !2965, line: 289, baseType: !3001, size: 64, offset: 1152)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4277, file: !2965, line: 297, baseType: !80, size: 64, offset: 1216)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4277, file: !2965, line: 298, baseType: !80, size: 64, offset: 1280)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4277, file: !2965, line: 299, baseType: !80, size: 64, offset: 1344)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4277, file: !2965, line: 300, baseType: !80, size: 64, offset: 1408)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4277, file: !2965, line: 302, baseType: !123, size: 64, offset: 1472)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4277, file: !2965, line: 303, baseType: !34, size: 32, offset: 1536)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4277, file: !2965, line: 305, baseType: !3009, size: 160, offset: 1568)
!4315 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !927, line: 91, baseType: !2991)
!4316 = !{!4317, !4318, !4319, !4320}
!4317 = !DILocalVariable(name: "fp", arg: 1, scope: !4271, file: !4272, line: 28, type: !4275)
!4318 = !DILocalVariable(name: "offset", arg: 2, scope: !4271, file: !4272, line: 28, type: !4315)
!4319 = !DILocalVariable(name: "whence", arg: 3, scope: !4271, file: !4272, line: 28, type: !34)
!4320 = !DILocalVariable(name: "pos", scope: !4321, file: !4272, line: 116, type: !4315)
!4321 = distinct !DILexicalBlock(scope: !4322, file: !4272, line: 112, column: 5)
!4322 = distinct !DILexicalBlock(scope: !4271, file: !4272, line: 51, column: 7)
!4323 = !DILocation(line: 28, column: 15, scope: !4271)
!4324 = !DILocation(line: 28, column: 25, scope: !4271)
!4325 = !DILocation(line: 28, column: 37, scope: !4271)
!4326 = !DILocation(line: 51, column: 11, scope: !4322)
!4327 = !DILocation(line: 51, column: 31, scope: !4322)
!4328 = !DILocation(line: 51, column: 24, scope: !4322)
!4329 = !DILocation(line: 52, column: 7, scope: !4322)
!4330 = !DILocation(line: 52, column: 14, scope: !4331)
!4331 = !DILexicalBlockFile(scope: !4322, file: !4272, discriminator: 1)
!4332 = !{!3719, !651, i64 40}
!4333 = !DILocation(line: 52, column: 35, scope: !4331)
!4334 = !{!3719, !651, i64 32}
!4335 = !DILocation(line: 52, column: 28, scope: !4331)
!4336 = !DILocation(line: 53, column: 7, scope: !4322)
!4337 = !DILocation(line: 53, column: 14, scope: !4331)
!4338 = !{!3719, !651, i64 72}
!4339 = !DILocation(line: 53, column: 28, scope: !4331)
!4340 = !DILocation(line: 51, column: 7, scope: !4341)
!4341 = !DILexicalBlockFile(scope: !4271, file: !4272, discriminator: 1)
!4342 = !DILocation(line: 116, column: 26, scope: !4321)
!4343 = !DILocation(line: 116, column: 19, scope: !4344)
!4344 = !DILexicalBlockFile(scope: !4321, file: !4272, discriminator: 1)
!4345 = !DILocation(line: 116, column: 13, scope: !4321)
!4346 = !DILocation(line: 117, column: 15, scope: !4347)
!4347 = distinct !DILexicalBlock(scope: !4321, file: !4272, line: 117, column: 11)
!4348 = !DILocation(line: 117, column: 11, scope: !4321)
!4349 = !DILocation(line: 127, column: 11, scope: !4321)
!4350 = !DILocation(line: 127, column: 18, scope: !4321)
!4351 = !DILocation(line: 128, column: 11, scope: !4321)
!4352 = !DILocation(line: 128, column: 19, scope: !4321)
!4353 = !{!3719, !2276, i64 144}
!4354 = !DILocation(line: 159, column: 7, scope: !4321)
!4355 = !DILocation(line: 161, column: 10, scope: !4271)
!4356 = !DILocation(line: 161, column: 3, scope: !4271)
!4357 = !DILocation(line: 162, column: 1, scope: !4271)
