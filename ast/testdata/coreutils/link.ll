; ModuleID = 'coreutils-8.27/src/link.bc'
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
@.str.1 = private unnamed_addr constant [40 x i8] c"Usage: %s FILE1 FILE2\0A  or:  %s OPTION\0A\00", align 1
@.str.2 = private unnamed_addr constant [76 x i8] c"Call the link function to create a link named FILE2 to an existing FILE1.\0A\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"link\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.24 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.26 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.27 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.28 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"Michael Stone\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.11 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"missing operand after %s\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"cannot create link %s to %s\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), align 8, !dbg !0
@.str.15 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !9
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !14
@.str.18 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.19 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.20 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !18
@opterr = external local_unnamed_addr global i32, align 4
@.str.30 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@long_options = internal constant [3 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1.31, i32 0, i32 0), i32 0, i32* null, i32 104 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.32, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option zeroinitializer], align 16, !dbg !26
@.str.1.31 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.2.32 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !44
@.str.37 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.38 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.39 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.41, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.42, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.43, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.44, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.45, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.46, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.47, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.48, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.49, i32 0, i32 0), i8* null], align 16, !dbg !53
@.str.40 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.41 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.42 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.43 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.44 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.45 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.46 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.47 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.48 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.49 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !98
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !105
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !118
@.str.11.50 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.51 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.52 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.53 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.54 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.55 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !125
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !132
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !120
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !134
@.str.62 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.63 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.64 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.65 = private unnamed_addr constant [203 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.66 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.67 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.68 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.69 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.70 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.71 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.72 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.73 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.74 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.75 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.78 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.79 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.80 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.81 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !140
@.str.1.92 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.93 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.102 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.105 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !149
@.str.3.106 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.107 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.108 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.109 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.110 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.111 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) #0 !dbg !585 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !589, metadata !590), !dbg !591
  %2 = icmp eq i32 %0, 0, !dbg !592
  br i1 %2, label %8, label %3, !dbg !594

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !595, !tbaa !598
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #10, !dbg !595
  %6 = load i8*, i8** @program_name, align 8, !dbg !595, !tbaa !598
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #10, !dbg !602
  br label %36, !dbg !604

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 5) #10, !dbg !606
  %10 = load i8*, i8** @program_name, align 8, !dbg !606, !tbaa !598
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10, i8* %10) #10, !dbg !608
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.2, i64 0, i64 0), i32 5) #10, !dbg !610
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !610, !tbaa !598
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #10, !dbg !611
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 5) #10, !dbg !612
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !612, !tbaa !598
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #10, !dbg !613
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 5) #10, !dbg !614
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !614, !tbaa !598
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #10, !dbg !615
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !515, metadata !590) #10, !dbg !616
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i64 0, metadata !515, metadata !590) #10, !dbg !616
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i64 0, i64 0), i32 5) #10, !dbg !618
  %22 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %21, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.24, i64 0, i64 0)) #10, !dbg !619
  %23 = tail call i8* @setlocale(i32 5, i8* null) #10, !dbg !621
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !526, metadata !590) #10, !dbg !622
  %24 = icmp eq i8* %23, null, !dbg !623
  br i1 %24, label %31, label %25, !dbg !624

; <label>:25:                                     ; preds = %8
  %26 = tail call i32 @strncmp(i8* nonnull %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0), i64 3) #13, !dbg !625
  %27 = icmp eq i32 %26, 0, !dbg !625
  br i1 %27, label %31, label %28, !dbg !627

; <label>:28:                                     ; preds = %25
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.26, i64 0, i64 0), i32 5) #10, !dbg !629
  %30 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0)) #10, !dbg !631
  br label %31, !dbg !633

; <label>:31:                                     ; preds = %8, %25, %28
  %32 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.27, i64 0, i64 0), i32 5) #10, !dbg !634
  %33 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %32, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0)) #10, !dbg !635
  %34 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.28, i64 0, i64 0), i32 5) #10, !dbg !636
  %35 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i64 0, i64 0)) #10, !dbg !637
  br label %36

; <label>:36:                                     ; preds = %31, %3
  tail call void @exit(i32 %0) #14, !dbg !638
  unreachable, !dbg !638
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
define i32 @main(i32, i8**) local_unnamed_addr #6 !dbg !639 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !644, metadata !590), !dbg !646
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !645, metadata !590), !dbg !647
  %3 = load i8*, i8** %1, align 8, !dbg !648, !tbaa !598
  tail call void @set_program_name(i8* %3) #10, !dbg !649
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)) #10, !dbg !650
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0)) #10, !dbg !651
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0)) #10, !dbg !652
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #10, !dbg !653
  %8 = load i8*, i8** @Version, align 8, !dbg !654, !tbaa !598
  tail call void (i32, i8**, i8*, i8*, i8*, void (i32)*, ...) @parse_long_options(i32 %0, i8** %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* %8, void (i32)* nonnull @usage, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i8* null) #10, !dbg !655
  %9 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), %struct.option* null, i32* null) #10, !dbg !656
  %10 = icmp eq i32 %9, -1, !dbg !658
  br i1 %10, label %12, label %11, !dbg !659

; <label>:11:                                     ; preds = %2
  tail call void @usage(i32 1) #15, !dbg !660
  unreachable, !dbg !660

; <label>:12:                                     ; preds = %2
  %13 = load i32, i32* @optind, align 4, !dbg !661, !tbaa !663
  %14 = add nsw i32 %13, 2, !dbg !665
  %15 = icmp sgt i32 %14, %0, !dbg !666
  br i1 %15, label %16, label %28, !dbg !667

; <label>:16:                                     ; preds = %12
  %17 = icmp slt i32 %13, %0, !dbg !668
  br i1 %17, label %20, label %18, !dbg !671

; <label>:18:                                     ; preds = %16
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 5) #10, !dbg !672
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %19) #10, !dbg !673
  br label %27, !dbg !675

; <label>:20:                                     ; preds = %16
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0), i32 5) #10, !dbg !676
  %22 = load i32, i32* @optind, align 4, !dbg !677, !tbaa !663
  %23 = sext i32 %22 to i64, !dbg !678
  %24 = getelementptr inbounds i8*, i8** %1, i64 %23, !dbg !678
  %25 = load i8*, i8** %24, align 8, !dbg !678, !tbaa !598
  %26 = tail call i8* @quote(i8* %25) #10, !dbg !679
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %21, i8* %26) #10, !dbg !680
  br label %27

; <label>:27:                                     ; preds = %20, %18
  tail call void @usage(i32 1) #15, !dbg !682
  unreachable, !dbg !682

; <label>:28:                                     ; preds = %12
  %29 = icmp slt i32 %14, %0, !dbg !683
  br i1 %29, label %30, label %38, !dbg !685

; <label>:30:                                     ; preds = %28
  %31 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0), i32 5) #10, !dbg !686
  %32 = load i32, i32* @optind, align 4, !dbg !688, !tbaa !663
  %33 = add nsw i32 %32, 2, !dbg !689
  %34 = sext i32 %33 to i64, !dbg !690
  %35 = getelementptr inbounds i8*, i8** %1, i64 %34, !dbg !690
  %36 = load i8*, i8** %35, align 8, !dbg !690, !tbaa !598
  %37 = tail call i8* @quote(i8* %36) #10, !dbg !691
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %31, i8* %37) #10, !dbg !693
  tail call void @usage(i32 1) #15, !dbg !695
  unreachable, !dbg !695

; <label>:38:                                     ; preds = %28
  %39 = sext i32 %13 to i64, !dbg !696
  %40 = getelementptr inbounds i8*, i8** %1, i64 %39, !dbg !696
  %41 = load i8*, i8** %40, align 8, !dbg !696, !tbaa !598
  %42 = add nsw i32 %13, 1, !dbg !698
  %43 = sext i32 %42 to i64, !dbg !699
  %44 = getelementptr inbounds i8*, i8** %1, i64 %43, !dbg !699
  %45 = load i8*, i8** %44, align 8, !dbg !699, !tbaa !598
  %46 = tail call i32 @link(i8* %41, i8* %45) #10, !dbg !700
  %47 = icmp eq i32 %46, 0, !dbg !701
  br i1 %47, label %63, label %48, !dbg !702

; <label>:48:                                     ; preds = %38
  %49 = tail call i32* @__errno_location() #1, !dbg !703
  %50 = load i32, i32* %49, align 4, !dbg !703, !tbaa !663
  %51 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i64 0, i64 0), i32 5) #10, !dbg !704
  %52 = load i32, i32* @optind, align 4, !dbg !703, !tbaa !663
  %53 = add nsw i32 %52, 1, !dbg !703
  %54 = sext i32 %53 to i64, !dbg !703
  %55 = getelementptr inbounds i8*, i8** %1, i64 %54, !dbg !703
  %56 = load i8*, i8** %55, align 8, !dbg !703, !tbaa !598
  %57 = tail call i8* @quotearg_n_style(i32 0, i32 4, i8* %56) #10, !dbg !706
  %58 = load i32, i32* @optind, align 4, !dbg !703, !tbaa !663
  %59 = sext i32 %58 to i64, !dbg !703
  %60 = getelementptr inbounds i8*, i8** %1, i64 %59, !dbg !703
  %61 = load i8*, i8** %60, align 8, !dbg !703, !tbaa !598
  %62 = tail call i8* @quotearg_n_style(i32 1, i32 4, i8* %61) #10, !dbg !708
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %50, i8* %51, i8* %57, i8* %62) #10, !dbg !710
  unreachable, !dbg !703

; <label>:63:                                     ; preds = %38
  ret i32 0, !dbg !712
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

; Function Attrs: nounwind
declare i32 @link(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !713 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !715, metadata !590), !dbg !716
  store i8* %0, i8** @file_name, align 8, !dbg !717, !tbaa !598
  ret void, !dbg !718
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !719 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !723, metadata !724), !dbg !725
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !726, !tbaa !727
  ret void, !dbg !729
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !730 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !737, !tbaa !598
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #10, !dbg !738
  %3 = icmp eq i32 %2, 0, !dbg !739
  br i1 %3, label %21, label %4, !dbg !740

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !741, !tbaa !727, !range !743
  %6 = icmp eq i8 %5, 0, !dbg !741
  %7 = tail call i32* @__errno_location() #1, !dbg !744
  br i1 %6, label %11, label %8, !dbg !746

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !747, !tbaa !663
  %10 = icmp eq i32 %9, 32, !dbg !749
  br i1 %10, label %21, label %11, !dbg !750

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0), i32 5) #10, !dbg !752
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !734, metadata !590), !dbg !753
  %13 = load i8*, i8** @file_name, align 8, !dbg !754, !tbaa !598
  %14 = icmp eq i8* %13, null, !dbg !754
  %15 = load i32, i32* %7, align 4, !tbaa !663
  br i1 %14, label %18, label %16, !dbg !755

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #10, !dbg !756
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.19, i64 0, i64 0), i8* %17, i8* %12) #10, !dbg !758
  br label %19, !dbg !760

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.20, i64 0, i64 0), i8* %12) #10, !dbg !761
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !762, !tbaa !663
  tail call void @_exit(i32 %20) #14, !dbg !763
  unreachable, !dbg !763

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !764, !tbaa !598
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #10, !dbg !766
  %24 = icmp eq i32 %23, 0, !dbg !767
  br i1 %24, label %27, label %25, !dbg !768

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !769, !tbaa !663
  tail call void @_exit(i32 %26) #14, !dbg !770
  unreachable, !dbg !770

; <label>:27:                                     ; preds = %21
  ret void, !dbg !771
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #8

; Function Attrs: nounwind sspstrong uwtable
define void @parse_long_options(i32, i8**, i8*, i8*, i8*, void (i32)* nocapture, ...) local_unnamed_addr #6 !dbg !772 {
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !777, metadata !590), !dbg !804
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !778, metadata !590), !dbg !805
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !779, metadata !590), !dbg !806
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !780, metadata !590), !dbg !807
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !781, metadata !590), !dbg !808
  tail call void @llvm.dbg.value(metadata void (i32)* %5, i64 0, metadata !782, metadata !590), !dbg !809
  %8 = load i32, i32* @opterr, align 4, !dbg !810, !tbaa !663
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !784, metadata !590), !dbg !811
  store i32 0, i32* @opterr, align 4, !dbg !812, !tbaa !663
  %9 = icmp eq i32 %0, 2, !dbg !813
  br i1 %9, label %10, label %17, !dbg !814

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 @getopt_long(i32 2, i8** %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i64 0, i64 0), %struct.option* getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #10, !dbg !815
  tail call void @llvm.dbg.value(metadata i32 %11, i64 0, metadata !783, metadata !590), !dbg !817
  switch i32 %11, label %17 [
    i32 118, label %13
    i32 104, label %12
  ], !dbg !818

; <label>:12:                                     ; preds = %10
  tail call void %5(i32 0) #10, !dbg !820
  br label %17, !dbg !821

; <label>:13:                                     ; preds = %10
  %14 = bitcast [1 x %struct.__va_list_tag]* %7 to i8*, !dbg !822
  call void @llvm.lifetime.start(i64 24, i8* nonnull %14) #10, !dbg !822
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %7, metadata !785, metadata !590), !dbg !823
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0, !dbg !824
  call void @llvm.va_start(i8* nonnull %14), !dbg !824
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !825, !tbaa !598
  call void @version_etc_va(%struct._IO_FILE* %16, i8* %2, i8* %3, i8* %4, %struct.__va_list_tag* nonnull %15) #10, !dbg !826
  call void @exit(i32 0) #14, !dbg !827
  unreachable, !dbg !827

; <label>:17:                                     ; preds = %10, %12, %6
  store i32 %8, i32* @opterr, align 4, !dbg !828, !tbaa !663
  store i32 0, i32* @optind, align 4, !dbg !829, !tbaa !663
  ret void, !dbg !830
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #9

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !831 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !833, metadata !590), !dbg !836
  %2 = icmp eq i8* %0, null, !dbg !837
  br i1 %2, label %3, label %6, !dbg !839

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !840, !tbaa !598
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.37, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #16, !dbg !842
  tail call void @abort() #14, !dbg !843
  unreachable, !dbg !843

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #13, !dbg !844
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !834, metadata !590), !dbg !845
  %8 = icmp ne i8* %7, null, !dbg !846
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !847
  %10 = select i1 %8, i8* %9, i8* %0, !dbg !849
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !835, metadata !590), !dbg !850
  %11 = ptrtoint i8* %10 to i64, !dbg !851
  %12 = ptrtoint i8* %0 to i64, !dbg !851
  %13 = sub i64 %11, %12, !dbg !851
  %14 = icmp sgt i64 %13, 6, !dbg !853
  br i1 %14, label %15, label %24, !dbg !854

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !855
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.38, i64 0, i64 0), i64 7) #13, !dbg !855
  %18 = icmp eq i32 %17, 0, !dbg !857
  br i1 %18, label %19, label %24, !dbg !858

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !833, metadata !590), !dbg !836
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.39, i64 0, i64 0), i64 3) #13, !dbg !859
  %21 = icmp eq i32 %20, 0, !dbg !862
  br i1 %21, label %22, label %24, !dbg !863

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !864
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !833, metadata !590), !dbg !836
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !866, !tbaa !598
  br label %24, !dbg !867

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !833, metadata !590), !dbg !836
  store i8* %25, i8** @program_name, align 8, !dbg !868, !tbaa !598
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !869, !tbaa !598
  ret void, !dbg !870
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #10

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !871 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !876, metadata !590), !dbg !879
  %2 = tail call i32* @__errno_location() #1, !dbg !880
  %3 = load i32, i32* %2, align 4, !dbg !880, !tbaa !663
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !877, metadata !590), !dbg !881
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !882
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !883
  %6 = select i1 %4, i8* %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), !dbg !883
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #10, !dbg !885
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !885
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !878, metadata !590), !dbg !886
  store i32 %3, i32* %2, align 4, !dbg !887, !tbaa !663
  ret %struct.quoting_options* %8, !dbg !888
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #11 !dbg !889 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !895, metadata !590), !dbg !896
  %2 = icmp ne %struct.quoting_options* %0, null, !dbg !897
  %3 = select i1 %2, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !897
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !898
  %5 = load i32, i32* %4, align 8, !dbg !898, !tbaa !900
  ret i32 %5, !dbg !902
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !903 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !907, metadata !590), !dbg !909
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !908, metadata !590), !dbg !910
  %3 = icmp ne %struct.quoting_options* %0, null, !dbg !911
  %4 = select i1 %3, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !911
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !912
  store i32 %1, i32* %5, align 8, !dbg !914, !tbaa !900
  ret void, !dbg !915
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !916 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !920, metadata !590), !dbg !928
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !921, metadata !590), !dbg !929
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !922, metadata !590), !dbg !930
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !923, metadata !590), !dbg !931
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !932
  %5 = select i1 %4, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !932
  %6 = lshr i8 %1, 5, !dbg !933
  %7 = zext i8 %6 to i64, !dbg !933
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !935
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !924, metadata !590), !dbg !936
  %9 = and i8 %1, 31, !dbg !937
  %10 = zext i8 %9 to i32, !dbg !938
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !926, metadata !590), !dbg !939
  %11 = load i32, i32* %8, align 4, !dbg !940, !tbaa !663
  %12 = lshr i32 %11, %10, !dbg !941
  %13 = and i32 %12, 1, !dbg !942
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !927, metadata !590), !dbg !943
  %14 = and i32 %2, 1, !dbg !944
  %15 = xor i32 %13, %14, !dbg !945
  %16 = shl i32 %15, %10, !dbg !946
  %17 = xor i32 %16, %11, !dbg !947
  store i32 %17, i32* %8, align 4, !dbg !947, !tbaa !663
  ret i32 %13, !dbg !948
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !949 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !953, metadata !590), !dbg !956
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !954, metadata !590), !dbg !957
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !958
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !953, metadata !590), !dbg !956
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !960
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !953, metadata !590), !dbg !956
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !961
  %6 = load i32, i32* %5, align 4, !dbg !961, !tbaa !962
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !955, metadata !590), !dbg !963
  store i32 %1, i32* %5, align 4, !dbg !964, !tbaa !962
  ret i32 %6, !dbg !965
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !966 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !970, metadata !590), !dbg !973
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !971, metadata !590), !dbg !974
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !972, metadata !590), !dbg !975
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !976
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !970, metadata !590), !dbg !973
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !978
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !970, metadata !590), !dbg !973
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !979
  store i32 10, i32* %6, align 8, !dbg !980, !tbaa !900
  %7 = icmp ne i8* %1, null, !dbg !981
  %8 = icmp ne i8* %2, null, !dbg !983
  %9 = and i1 %7, %8, !dbg !985
  br i1 %9, label %11, label %10, !dbg !985

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !986
  unreachable, !dbg !986

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !987
  store i8* %1, i8** %12, align 8, !dbg !988, !tbaa !989
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !990
  store i8* %2, i8** %13, align 8, !dbg !991, !tbaa !992
  ret void, !dbg !993
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !994 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !998, metadata !590), !dbg !1006
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !999, metadata !590), !dbg !1007
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1000, metadata !590), !dbg !1008
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1001, metadata !590), !dbg !1009
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1002, metadata !590), !dbg !1010
  %6 = icmp ne %struct.quoting_options* %4, null, !dbg !1011
  %7 = select i1 %6, %struct.quoting_options* %4, %struct.quoting_options* @default_quoting_options, !dbg !1011
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !1003, metadata !590), !dbg !1012
  %8 = tail call i32* @__errno_location() #1, !dbg !1013
  %9 = load i32, i32* %8, align 4, !dbg !1013, !tbaa !663
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1004, metadata !590), !dbg !1014
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1015
  %11 = load i32, i32* %10, align 8, !dbg !1015, !tbaa !900
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1016
  %13 = load i32, i32* %12, align 4, !dbg !1016, !tbaa !962
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1017
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1018
  %16 = load i8*, i8** %15, align 8, !dbg !1018, !tbaa !989
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1019
  %18 = load i8*, i8** %17, align 8, !dbg !1019, !tbaa !992
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !1020
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1005, metadata !590), !dbg !1021
  store i32 %9, i32* %8, align 4, !dbg !1022, !tbaa !663
  ret i64 %19, !dbg !1023
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !1024 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1030, metadata !590), !dbg !1093
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1031, metadata !590), !dbg !1094
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1032, metadata !590), !dbg !1095
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1033, metadata !590), !dbg !1096
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !1034, metadata !590), !dbg !1097
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1035, metadata !590), !dbg !1098
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !1036, metadata !590), !dbg !1099
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1037, metadata !590), !dbg !1100
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !1038, metadata !590), !dbg !1101
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1040, metadata !590), !dbg !1102
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1041, metadata !590), !dbg !1103
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1042, metadata !590), !dbg !1104
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1043, metadata !590), !dbg !1105
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1044, metadata !590), !dbg !1106
  %13 = tail call i64 @__ctype_get_mb_cur_max() #10, !dbg !1107
  %14 = icmp eq i64 %13, 1, !dbg !1108
  %15 = lshr i32 %5, 1, !dbg !1109
  %16 = trunc i32 %15 to i8, !dbg !1109
  %17 = and i8 %16, 1, !dbg !1109
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !1046, metadata !590), !dbg !1109
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1047, metadata !590), !dbg !1110
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1048, metadata !590), !dbg !1111
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1049, metadata !590), !dbg !1112
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !1113

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !1031, metadata !590), !dbg !1094
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !1049, metadata !590), !dbg !1112
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !1048, metadata !590), !dbg !1111
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !1047, metadata !590), !dbg !1110
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1046, metadata !590), !dbg !1109
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !1033, metadata !590), !dbg !1096
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !1044, metadata !590), !dbg !1106
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !1043, metadata !590), !dbg !1105
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !1042, metadata !590), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !1041, metadata !590), !dbg !1103
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1040, metadata !590), !dbg !1102
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !1038, metadata !590), !dbg !1101
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !1037, metadata !590), !dbg !1100
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !1034, metadata !590), !dbg !1097
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
  ], !dbg !1114

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1034, metadata !590), !dbg !1097
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1046, metadata !590), !dbg !1109
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1046, metadata !590), !dbg !1109
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1034, metadata !590), !dbg !1097
  br label %95, !dbg !1115

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1046, metadata !590), !dbg !1109
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1034, metadata !590), !dbg !1097
  %43 = and i8 %36, 1, !dbg !1117
  %44 = icmp eq i8 %43, 0, !dbg !1117
  br i1 %44, label %45, label %95, !dbg !1115

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1119
  br i1 %46, label %95, label %47, !dbg !1123

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1125, !tbaa !1127
  br label %95, !dbg !1125

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.50, i64 0, i64 0), i32 %28), !dbg !1128
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !1037, metadata !590), !dbg !1100
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.51, i64 0, i64 0), i32 %28), !dbg !1132
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !1038, metadata !590), !dbg !1101
  br label %51, !dbg !1133

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1038, metadata !590), !dbg !1101
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1037, metadata !590), !dbg !1100
  %54 = and i8 %36, 1, !dbg !1134
  %55 = icmp eq i8 %54, 0, !dbg !1134
  br i1 %55, label %56, label %73, !dbg !1136

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1042, metadata !590), !dbg !1104
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1040, metadata !590), !dbg !1102
  %57 = load i8, i8* %52, align 1, !dbg !1137, !tbaa !1127
  %58 = icmp eq i8 %57, 0, !dbg !1141
  br i1 %58, label %73, label %59, !dbg !1141

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !1143

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  %64 = icmp ult i64 %63, %40, !dbg !1143
  br i1 %64, label %65, label %67, !dbg !1147

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !1149
  store i8 %61, i8* %66, align 1, !dbg !1149, !tbaa !1127
  br label %67, !dbg !1149

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !1151
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1040, metadata !590), !dbg !1102
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !1153
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1042, metadata !590), !dbg !1104
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1042, metadata !590), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1040, metadata !590), !dbg !1102
  %70 = load i8, i8* %69, align 1, !dbg !1137, !tbaa !1127
  %71 = icmp eq i8 %70, 0, !dbg !1141
  br i1 %71, label %72, label %60, !dbg !1141, !llvm.loop !1155

; <label>:72:                                     ; preds = %67
  br label %73, !dbg !1102

; <label>:73:                                     ; preds = %72, %56, %51
  %74 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %72 ]
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !1040, metadata !590), !dbg !1102
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1044, metadata !590), !dbg !1106
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1042, metadata !590), !dbg !1104
  %75 = call i64 @strlen(i8* %53) #13, !dbg !1158
  call void @llvm.dbg.value(metadata i64 %75, i64 0, metadata !1043, metadata !590), !dbg !1105
  br label %95, !dbg !1159

; <label>:76:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1044, metadata !590), !dbg !1106
  br label %77, !dbg !1160

; <label>:77:                                     ; preds = %27, %76
  %78 = phi i8 [ %34, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %78, i64 0, metadata !1044, metadata !590), !dbg !1106
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1046, metadata !590), !dbg !1109
  br label %79, !dbg !1161

; <label>:79:                                     ; preds = %27, %77
  %80 = phi i8 [ %34, %27 ], [ %78, %77 ]
  %81 = phi i8 [ %36, %27 ], [ 1, %77 ]
  call void @llvm.dbg.value(metadata i8 %81, i64 0, metadata !1046, metadata !590), !dbg !1109
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !1044, metadata !590), !dbg !1106
  %82 = and i8 %81, 1, !dbg !1162
  %83 = icmp eq i8 %82, 0, !dbg !1162
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1044, metadata !590), !dbg !1106
  %84 = select i1 %83, i8 1, i8 %80, !dbg !1164
  br label %85, !dbg !1164

; <label>:85:                                     ; preds = %79, %27
  %86 = phi i8 [ %34, %27 ], [ %84, %79 ]
  %87 = phi i8 [ %36, %27 ], [ %81, %79 ]
  call void @llvm.dbg.value(metadata i8 %87, i64 0, metadata !1046, metadata !590), !dbg !1109
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !1044, metadata !590), !dbg !1106
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !1034, metadata !590), !dbg !1097
  %88 = and i8 %87, 1, !dbg !1165
  %89 = icmp eq i8 %88, 0, !dbg !1165
  br i1 %89, label %90, label %95, !dbg !1167

; <label>:90:                                     ; preds = %85
  %91 = icmp eq i64 %40, 0, !dbg !1168
  br i1 %91, label %95, label %92, !dbg !1172

; <label>:92:                                     ; preds = %90
  store i8 39, i8* %0, align 1, !dbg !1174, !tbaa !1127
  br label %95, !dbg !1174

; <label>:93:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1046, metadata !590), !dbg !1109
  br label %95, !dbg !1176

; <label>:94:                                     ; preds = %27
  call void @abort() #14, !dbg !1177
  unreachable, !dbg !1177

; <label>:95:                                     ; preds = %41, %85, %90, %92, %27, %42, %45, %47, %93, %73
  %96 = phi i32 [ 0, %93 ], [ %28, %73 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %92 ], [ 2, %90 ], [ 2, %85 ], [ 5, %41 ]
  %97 = phi i8* [ %29, %93 ], [ %52, %73 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %92 ], [ %29, %90 ], [ %29, %85 ], [ %29, %41 ]
  %98 = phi i8* [ %30, %93 ], [ %53, %73 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %92 ], [ %30, %90 ], [ %30, %85 ], [ %30, %41 ]
  %99 = phi i64 [ 0, %93 ], [ %74, %73 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %92 ], [ 1, %90 ], [ 0, %85 ], [ 0, %41 ]
  %100 = phi i8* [ %32, %93 ], [ %53, %73 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.52, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.52, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.52, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.51, i64 0, i64 0), %92 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.51, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.51, i64 0, i64 0), %85 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.52, i64 0, i64 0), %41 ]
  %101 = phi i64 [ %33, %93 ], [ %75, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %92 ], [ 1, %90 ], [ 1, %85 ], [ 1, %41 ]
  %102 = phi i8 [ %34, %93 ], [ 1, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %86, %92 ], [ %86, %90 ], [ %86, %85 ], [ 1, %41 ]
  %103 = phi i8 [ 0, %93 ], [ %36, %73 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %87, %92 ], [ %87, %90 ], [ %87, %85 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %103, i64 0, metadata !1046, metadata !590), !dbg !1109
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !1044, metadata !590), !dbg !1106
  call void @llvm.dbg.value(metadata i64 %101, i64 0, metadata !1043, metadata !590), !dbg !1105
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !1042, metadata !590), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %99, i64 0, metadata !1040, metadata !590), !dbg !1102
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !1038, metadata !590), !dbg !1101
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !1037, metadata !590), !dbg !1100
  call void @llvm.dbg.value(metadata i32 %96, i64 0, metadata !1034, metadata !590), !dbg !1097
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1039, metadata !590), !dbg !1178
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
  br label %123, !dbg !1179

; <label>:123:                                    ; preds = %587, %95
  %124 = phi i64 [ 0, %95 ], [ %596, %587 ]
  %125 = phi i64 [ %99, %95 ], [ %589, %587 ]
  %126 = phi i64 [ %31, %95 ], [ %590, %587 ]
  %127 = phi i64 [ %35, %95 ], [ %591, %587 ]
  %128 = phi i8 [ %37, %95 ], [ %592, %587 ]
  %129 = phi i8 [ %38, %95 ], [ %593, %587 ]
  %130 = phi i8 [ %39, %95 ], [ %594, %587 ]
  %131 = phi i64 [ %40, %95 ], [ %595, %587 ]
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !1031, metadata !590), !dbg !1094
  call void @llvm.dbg.value(metadata i8 %130, i64 0, metadata !1049, metadata !590), !dbg !1112
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !1048, metadata !590), !dbg !1111
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !1047, metadata !590), !dbg !1110
  call void @llvm.dbg.value(metadata i64 %127, i64 0, metadata !1033, metadata !590), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !1041, metadata !590), !dbg !1103
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1040, metadata !590), !dbg !1102
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1039, metadata !590), !dbg !1178
  %132 = icmp eq i64 %127, -1, !dbg !1180
  br i1 %132, label %135, label %133, !dbg !1182

; <label>:133:                                    ; preds = %123
  %134 = icmp eq i64 %124, %127, !dbg !1183
  br i1 %134, label %597, label %139, !dbg !1185

; <label>:135:                                    ; preds = %123
  %136 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !1187
  %137 = load i8, i8* %136, align 1, !dbg !1187, !tbaa !1127
  %138 = icmp eq i8 %137, 0, !dbg !1189
  br i1 %138, label %597, label %139, !dbg !1185

; <label>:139:                                    ; preds = %133, %135
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1055, metadata !590), !dbg !1190
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1056, metadata !590), !dbg !1191
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1057, metadata !590), !dbg !1192
  br i1 %109, label %140, label %155, !dbg !1193

; <label>:140:                                    ; preds = %139
  %141 = add i64 %124, %101, !dbg !1195
  %142 = and i1 %110, %132, !dbg !1197
  br i1 %142, label %143, label %145, !dbg !1197

; <label>:143:                                    ; preds = %140
  %144 = call i64 @strlen(i8* %2) #13, !dbg !1198
  call void @llvm.dbg.value(metadata i64 %144, i64 0, metadata !1033, metadata !590), !dbg !1096
  br label %145, !dbg !1199

; <label>:145:                                    ; preds = %140, %143
  %146 = phi i64 [ %144, %143 ], [ %127, %140 ]
  call void @llvm.dbg.value(metadata i64 %146, i64 0, metadata !1033, metadata !590), !dbg !1096
  %147 = icmp ugt i64 %141, %146, !dbg !1201
  br i1 %147, label %155, label %148, !dbg !1203

; <label>:148:                                    ; preds = %145
  %149 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !1204
  %150 = call i32 @memcmp(i8* %149, i8* %100, i64 %101) #13, !dbg !1205
  %151 = icmp ne i32 %150, 0, !dbg !1206
  %152 = or i1 %151, %112, !dbg !1206
  %153 = xor i1 %151, true, !dbg !1206
  %154 = zext i1 %153 to i8, !dbg !1206
  br i1 %152, label %155, label %644, !dbg !1206

; <label>:155:                                    ; preds = %148, %145, %139
  %156 = phi i64 [ %146, %148 ], [ %146, %145 ], [ %127, %139 ]
  %157 = phi i8 [ %154, %148 ], [ 0, %145 ], [ 0, %139 ]
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !1055, metadata !590), !dbg !1190
  call void @llvm.dbg.value(metadata i64 %156, i64 0, metadata !1033, metadata !590), !dbg !1096
  %158 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !1208
  %159 = load i8, i8* %158, align 1, !dbg !1208, !tbaa !1127
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !1050, metadata !590), !dbg !1209
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
  ], !dbg !1210

; <label>:160:                                    ; preds = %155
  br i1 %105, label %161, label %209, !dbg !1211

; <label>:161:                                    ; preds = %160
  br i1 %112, label %162, label %644, !dbg !1212

; <label>:162:                                    ; preds = %161
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1056, metadata !590), !dbg !1191
  %163 = and i8 %128, 1, !dbg !1217
  %164 = icmp eq i8 %163, 0, !dbg !1217
  %165 = and i1 %114, %164, !dbg !1220
  br i1 %165, label %166, label %182, !dbg !1220

; <label>:166:                                    ; preds = %162
  %167 = icmp ult i64 %125, %131, !dbg !1222
  br i1 %167, label %168, label %170, !dbg !1227

; <label>:168:                                    ; preds = %166
  %169 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !1229
  store i8 39, i8* %169, align 1, !dbg !1229, !tbaa !1127
  br label %170, !dbg !1229

; <label>:170:                                    ; preds = %168, %166
  %171 = add i64 %125, 1, !dbg !1231
  call void @llvm.dbg.value(metadata i64 %171, i64 0, metadata !1040, metadata !590), !dbg !1102
  %172 = icmp ult i64 %171, %131, !dbg !1233
  br i1 %172, label %173, label %175, !dbg !1237

; <label>:173:                                    ; preds = %170
  %174 = getelementptr inbounds i8, i8* %0, i64 %171, !dbg !1239
  store i8 36, i8* %174, align 1, !dbg !1239, !tbaa !1127
  br label %175, !dbg !1239

; <label>:175:                                    ; preds = %173, %170
  %176 = add i64 %125, 2, !dbg !1241
  call void @llvm.dbg.value(metadata i64 %176, i64 0, metadata !1040, metadata !590), !dbg !1102
  %177 = icmp ult i64 %176, %131, !dbg !1243
  br i1 %177, label %178, label %180, !dbg !1247

; <label>:178:                                    ; preds = %175
  %179 = getelementptr inbounds i8, i8* %0, i64 %176, !dbg !1249
  store i8 39, i8* %179, align 1, !dbg !1249, !tbaa !1127
  br label %180, !dbg !1249

; <label>:180:                                    ; preds = %178, %175
  %181 = add i64 %125, 3, !dbg !1251
  call void @llvm.dbg.value(metadata i64 %181, i64 0, metadata !1040, metadata !590), !dbg !1102
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1047, metadata !590), !dbg !1110
  br label %182, !dbg !1253

; <label>:182:                                    ; preds = %162, %180
  %183 = phi i64 [ %181, %180 ], [ %125, %162 ]
  %184 = phi i8 [ 1, %180 ], [ %128, %162 ]
  call void @llvm.dbg.value(metadata i8 %184, i64 0, metadata !1047, metadata !590), !dbg !1110
  call void @llvm.dbg.value(metadata i64 %183, i64 0, metadata !1040, metadata !590), !dbg !1102
  %185 = icmp ult i64 %183, %131, !dbg !1255
  br i1 %185, label %186, label %188, !dbg !1259

; <label>:186:                                    ; preds = %182
  %187 = getelementptr inbounds i8, i8* %0, i64 %183, !dbg !1261
  store i8 92, i8* %187, align 1, !dbg !1261, !tbaa !1127
  br label %188, !dbg !1261

; <label>:188:                                    ; preds = %186, %182
  %189 = add i64 %183, 1, !dbg !1263
  call void @llvm.dbg.value(metadata i64 %189, i64 0, metadata !1040, metadata !590), !dbg !1102
  br i1 %106, label %190, label %476, !dbg !1265

; <label>:190:                                    ; preds = %188
  %191 = add i64 %124, 1, !dbg !1267
  %192 = icmp ult i64 %191, %156, !dbg !1269
  br i1 %192, label %193, label %476, !dbg !1270

; <label>:193:                                    ; preds = %190
  %194 = getelementptr inbounds i8, i8* %2, i64 %191, !dbg !1271
  %195 = load i8, i8* %194, align 1, !dbg !1271, !tbaa !1127
  %196 = add i8 %195, -48, !dbg !1273
  %197 = icmp ult i8 %196, 10, !dbg !1273
  br i1 %197, label %198, label %476, !dbg !1273

; <label>:198:                                    ; preds = %193
  %199 = icmp ult i64 %189, %131, !dbg !1274
  br i1 %199, label %200, label %202, !dbg !1279

; <label>:200:                                    ; preds = %198
  %201 = getelementptr inbounds i8, i8* %0, i64 %189, !dbg !1281
  store i8 48, i8* %201, align 1, !dbg !1281, !tbaa !1127
  br label %202, !dbg !1281

; <label>:202:                                    ; preds = %200, %198
  %203 = add i64 %183, 2, !dbg !1283
  call void @llvm.dbg.value(metadata i64 %203, i64 0, metadata !1040, metadata !590), !dbg !1102
  %204 = icmp ult i64 %203, %131, !dbg !1285
  br i1 %204, label %205, label %207, !dbg !1289

; <label>:205:                                    ; preds = %202
  %206 = getelementptr inbounds i8, i8* %0, i64 %203, !dbg !1291
  store i8 48, i8* %206, align 1, !dbg !1291, !tbaa !1127
  br label %207, !dbg !1291

; <label>:207:                                    ; preds = %205, %202
  %208 = add i64 %183, 3, !dbg !1293
  call void @llvm.dbg.value(metadata i64 %208, i64 0, metadata !1040, metadata !590), !dbg !1102
  br label %476, !dbg !1295

; <label>:209:                                    ; preds = %160
  br i1 %23, label %476, label %587, !dbg !1296

; <label>:210:                                    ; preds = %155
  switch i32 %96, label %476 [
    i32 2, label %211
    i32 5, label %212
  ], !dbg !1297

; <label>:211:                                    ; preds = %210
  br i1 %112, label %476, label %644, !dbg !1298

; <label>:212:                                    ; preds = %210
  br i1 %25, label %476, label %213, !dbg !1300

; <label>:213:                                    ; preds = %212
  %214 = add i64 %124, 2, !dbg !1302
  %215 = icmp ult i64 %214, %156, !dbg !1304
  br i1 %215, label %216, label %476, !dbg !1305

; <label>:216:                                    ; preds = %213
  %217 = add i64 %124, 1, !dbg !1306
  %218 = getelementptr inbounds i8, i8* %2, i64 %217, !dbg !1308
  %219 = load i8, i8* %218, align 1, !dbg !1308, !tbaa !1127
  %220 = icmp eq i8 %219, 63, !dbg !1309
  br i1 %220, label %221, label %476, !dbg !1310

; <label>:221:                                    ; preds = %216
  %222 = getelementptr inbounds i8, i8* %2, i64 %214, !dbg !1312
  %223 = load i8, i8* %222, align 1, !dbg !1312, !tbaa !1127
  %224 = sext i8 %223 to i32, !dbg !1312
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
  ], !dbg !1313

; <label>:225:                                    ; preds = %221, %221, %221, %221, %221, %221, %221, %221, %221
  br i1 %112, label %226, label %644, !dbg !1314

; <label>:226:                                    ; preds = %225
  call void @llvm.dbg.value(metadata i8 %223, i64 0, metadata !1050, metadata !590), !dbg !1209
  call void @llvm.dbg.value(metadata i64 %214, i64 0, metadata !1039, metadata !590), !dbg !1178
  %227 = icmp ult i64 %125, %131, !dbg !1316
  br i1 %227, label %228, label %230, !dbg !1320

; <label>:228:                                    ; preds = %226
  %229 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !1322
  store i8 63, i8* %229, align 1, !dbg !1322, !tbaa !1127
  br label %230, !dbg !1322

; <label>:230:                                    ; preds = %228, %226
  %231 = add i64 %125, 1, !dbg !1324
  call void @llvm.dbg.value(metadata i64 %231, i64 0, metadata !1040, metadata !590), !dbg !1102
  %232 = icmp ult i64 %231, %131, !dbg !1326
  br i1 %232, label %233, label %235, !dbg !1330

; <label>:233:                                    ; preds = %230
  %234 = getelementptr inbounds i8, i8* %0, i64 %231, !dbg !1332
  store i8 34, i8* %234, align 1, !dbg !1332, !tbaa !1127
  br label %235, !dbg !1332

; <label>:235:                                    ; preds = %233, %230
  %236 = add i64 %125, 2, !dbg !1334
  call void @llvm.dbg.value(metadata i64 %236, i64 0, metadata !1040, metadata !590), !dbg !1102
  %237 = icmp ult i64 %236, %131, !dbg !1336
  br i1 %237, label %238, label %240, !dbg !1340

; <label>:238:                                    ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236, !dbg !1342
  store i8 34, i8* %239, align 1, !dbg !1342, !tbaa !1127
  br label %240, !dbg !1342

; <label>:240:                                    ; preds = %238, %235
  %241 = add i64 %125, 3, !dbg !1344
  call void @llvm.dbg.value(metadata i64 %241, i64 0, metadata !1040, metadata !590), !dbg !1102
  %242 = icmp ult i64 %241, %131, !dbg !1346
  br i1 %242, label %243, label %245, !dbg !1350

; <label>:243:                                    ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241, !dbg !1352
  store i8 63, i8* %244, align 1, !dbg !1352, !tbaa !1127
  br label %245, !dbg !1352

; <label>:245:                                    ; preds = %243, %240
  %246 = add i64 %125, 4, !dbg !1354
  call void @llvm.dbg.value(metadata i64 %246, i64 0, metadata !1040, metadata !590), !dbg !1102
  br label %476, !dbg !1356

; <label>:247:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !1054, metadata !590), !dbg !1357
  br label %257, !dbg !1358

; <label>:248:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !1054, metadata !590), !dbg !1357
  br label %257, !dbg !1359

; <label>:249:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !1054, metadata !590), !dbg !1357
  br label %255, !dbg !1360

; <label>:250:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !1054, metadata !590), !dbg !1357
  br label %255, !dbg !1361

; <label>:251:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !1054, metadata !590), !dbg !1357
  br label %257, !dbg !1362

; <label>:252:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !1054, metadata !590), !dbg !1357
  br i1 %114, label %253, label %254, !dbg !1363

; <label>:253:                                    ; preds = %252
  br i1 %112, label %542, label %644, !dbg !1364

; <label>:254:                                    ; preds = %252
  br i1 %122, label %542, label %255, !dbg !1367

; <label>:255:                                    ; preds = %254, %155, %250, %249
  %256 = phi i8 [ 92, %254 ], [ 116, %250 ], [ 114, %249 ], [ 110, %155 ]
  call void @llvm.dbg.value(metadata i8 %256, i64 0, metadata !1054, metadata !590), !dbg !1357
  br i1 %118, label %257, label %644, !dbg !1369

; <label>:257:                                    ; preds = %255, %155, %251, %248, %247
  %258 = phi i8 [ %256, %255 ], [ 118, %251 ], [ 102, %248 ], [ 98, %247 ], [ 97, %155 ]
  call void @llvm.dbg.value(metadata i8 %258, i64 0, metadata !1054, metadata !590), !dbg !1357
  br i1 %105, label %503, label %476, !dbg !1371

; <label>:259:                                    ; preds = %155, %155
  %260 = icmp eq i64 %156, -1, !dbg !1372
  br i1 %260, label %261, label %266, !dbg !1374

; <label>:261:                                    ; preds = %259
  %262 = load i8, i8* %26, align 1, !dbg !1375, !tbaa !1127
  %263 = icmp ne i8 %262, 0, !dbg !1377
  %264 = icmp ne i64 %124, 0, !dbg !1378
  %265 = or i1 %264, %263, !dbg !1380
  br i1 %265, label %476, label %272, !dbg !1380

; <label>:266:                                    ; preds = %259
  %267 = icmp ne i64 %156, 1, !dbg !1381
  %268 = icmp ne i64 %124, 0, !dbg !1378
  %269 = or i1 %268, %267, !dbg !1383
  br i1 %269, label %476, label %272, !dbg !1383

; <label>:270:                                    ; preds = %155, %155
  %271 = icmp eq i64 %124, 0, !dbg !1378
  br i1 %271, label %272, label %476, !dbg !1385

; <label>:272:                                    ; preds = %270, %266, %261, %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1057, metadata !590), !dbg !1192
  br label %273, !dbg !1386

; <label>:273:                                    ; preds = %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %272
  %274 = phi i8 [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 1, %272 ]
  call void @llvm.dbg.value(metadata i8 %274, i64 0, metadata !1057, metadata !590), !dbg !1192
  br i1 %118, label %476, label %644, !dbg !1387

; <label>:275:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1048, metadata !590), !dbg !1111
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1057, metadata !590), !dbg !1192
  br i1 %114, label %276, label %476, !dbg !1389

; <label>:276:                                    ; preds = %275
  br i1 %112, label %277, label %644, !dbg !1390

; <label>:277:                                    ; preds = %276
  %278 = icmp eq i64 %131, 0, !dbg !1393
  %279 = icmp ne i64 %126, 0, !dbg !1395
  %280 = or i1 %279, %278, !dbg !1397
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !1041, metadata !590), !dbg !1103
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1031, metadata !590), !dbg !1094
  %281 = select i1 %280, i64 %126, i64 %131, !dbg !1397
  %282 = select i1 %280, i64 %131, i64 0, !dbg !1397
  call void @llvm.dbg.value(metadata i64 %282, i64 0, metadata !1031, metadata !590), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !1041, metadata !590), !dbg !1103
  %283 = icmp ult i64 %125, %282, !dbg !1398
  br i1 %283, label %284, label %286, !dbg !1402

; <label>:284:                                    ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !1404
  store i8 39, i8* %285, align 1, !dbg !1404, !tbaa !1127
  br label %286, !dbg !1404

; <label>:286:                                    ; preds = %284, %277
  %287 = add i64 %125, 1, !dbg !1406
  call void @llvm.dbg.value(metadata i64 %287, i64 0, metadata !1040, metadata !590), !dbg !1102
  %288 = icmp ult i64 %287, %282, !dbg !1408
  br i1 %288, label %289, label %291, !dbg !1412

; <label>:289:                                    ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287, !dbg !1414
  store i8 92, i8* %290, align 1, !dbg !1414, !tbaa !1127
  br label %291, !dbg !1414

; <label>:291:                                    ; preds = %289, %286
  %292 = add i64 %125, 2, !dbg !1416
  call void @llvm.dbg.value(metadata i64 %292, i64 0, metadata !1040, metadata !590), !dbg !1102
  %293 = icmp ult i64 %292, %282, !dbg !1418
  br i1 %293, label %294, label %296, !dbg !1422

; <label>:294:                                    ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292, !dbg !1424
  store i8 39, i8* %295, align 1, !dbg !1424, !tbaa !1127
  br label %296, !dbg !1424

; <label>:296:                                    ; preds = %294, %291
  %297 = add i64 %125, 3, !dbg !1426
  call void @llvm.dbg.value(metadata i64 %297, i64 0, metadata !1040, metadata !590), !dbg !1102
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1047, metadata !590), !dbg !1110
  br label %476, !dbg !1428

; <label>:298:                                    ; preds = %155
  br i1 %14, label %299, label %308, !dbg !1429

; <label>:299:                                    ; preds = %298
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1058, metadata !590), !dbg !1430
  %300 = tail call i16** @__ctype_b_loc() #1, !dbg !1431
  %301 = load i16*, i16** %300, align 8, !dbg !1431, !tbaa !598
  %302 = zext i8 %159 to i64, !dbg !1431
  %303 = getelementptr inbounds i16, i16* %301, i64 %302, !dbg !1431
  %304 = load i16, i16* %303, align 2, !dbg !1431, !tbaa !1433
  %305 = lshr i16 %304, 14, !dbg !1435
  %306 = trunc i16 %305 to i8, !dbg !1435
  %307 = and i8 %306, 1, !dbg !1435
  call void @llvm.dbg.value(metadata i8 %307, i64 0, metadata !1061, metadata !590), !dbg !1436
  br label %368, !dbg !1437

; <label>:308:                                    ; preds = %298
  call void @llvm.lifetime.start(i64 8, i8* nonnull %18) #10, !dbg !1438
  store i64 0, i64* %10, align 8, !dbg !1439
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1058, metadata !590), !dbg !1430
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1061, metadata !590), !dbg !1436
  %309 = icmp eq i64 %156, -1, !dbg !1440
  br i1 %309, label %310, label %312, !dbg !1442, !llvm.loop !1443

; <label>:310:                                    ; preds = %308
  %311 = call i64 @strlen(i8* nonnull %2) #13, !dbg !1446
  call void @llvm.dbg.value(metadata i64 %311, i64 0, metadata !1033, metadata !590), !dbg !1096
  br label %312, !dbg !1447, !llvm.loop !1443

; <label>:312:                                    ; preds = %310, %308
  %313 = phi i64 [ %156, %308 ], [ %311, %310 ]
  br label %314, !dbg !1436

; <label>:314:                                    ; preds = %312, %355
  %315 = phi i64 [ %360, %355 ], [ 0, %312 ]
  %316 = phi i8 [ %359, %355 ], [ 1, %312 ]
  call void @llvm.dbg.value(metadata i8 %316, i64 0, metadata !1061, metadata !590), !dbg !1436
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !1058, metadata !590), !dbg !1430
  call void @llvm.dbg.value(metadata i64 %313, i64 0, metadata !1033, metadata !590), !dbg !1096
  call void @llvm.lifetime.start(i64 4, i8* nonnull %19) #10, !dbg !1448
  %317 = add i64 %315, %124, !dbg !1449
  %318 = getelementptr inbounds i8, i8* %2, i64 %317, !dbg !1450
  %319 = sub i64 %313, %317, !dbg !1451
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1062, metadata !1452), !dbg !1453
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !1079, metadata !1452), !dbg !1454
  %320 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %318, i64 %319, %struct.__mbstate_t* nonnull %11) #10, !dbg !1455
  call void @llvm.dbg.value(metadata i64 %320, i64 0, metadata !1082, metadata !590), !dbg !1456
  switch i64 %320, label %334 [
    i64 0, label %350
    i64 -1, label %347
    i64 -2, label %321
  ], !dbg !1457

; <label>:321:                                    ; preds = %314
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !1058, metadata !590), !dbg !1430
  %322 = icmp ugt i64 %313, %317, !dbg !1458
  br i1 %322, label %323, label %351, !dbg !1461

; <label>:323:                                    ; preds = %321
  br label %324, !dbg !1462

; <label>:324:                                    ; preds = %323, %330
  %325 = phi i64 [ %332, %330 ], [ %317, %323 ]
  %326 = phi i64 [ %331, %330 ], [ %315, %323 ]
  %327 = getelementptr inbounds i8, i8* %2, i64 %325, !dbg !1462
  %328 = load i8, i8* %327, align 1, !dbg !1462, !tbaa !1127
  %329 = icmp eq i8 %328, 0, !dbg !1464
  br i1 %329, label %348, label %330, !dbg !1465

; <label>:330:                                    ; preds = %324
  %331 = add i64 %326, 1, !dbg !1467
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !1058, metadata !590), !dbg !1430
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !1058, metadata !590), !dbg !1430
  %332 = add i64 %331, %124, !dbg !1468
  %333 = icmp ult i64 %332, %313, !dbg !1458
  br i1 %333, label %324, label %348, !dbg !1461, !llvm.loop !1469

; <label>:334:                                    ; preds = %314
  %335 = icmp ugt i64 %320, 1, !dbg !1471
  %336 = and i1 %116, %335, !dbg !1475
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1083, metadata !590), !dbg !1476
  br i1 %336, label %337, label %355, !dbg !1475

; <label>:337:                                    ; preds = %334
  br label %338, !dbg !1477

; <label>:338:                                    ; preds = %337, %344
  %339 = phi i64 [ %345, %344 ], [ 1, %337 ]
  %340 = add i64 %339, %317, !dbg !1477
  %341 = getelementptr inbounds i8, i8* %2, i64 %340, !dbg !1478
  %342 = load i8, i8* %341, align 1, !dbg !1478, !tbaa !1127
  %343 = sext i8 %342 to i32, !dbg !1478
  switch i32 %343, label %344 [
    i32 91, label %367
    i32 92, label %367
    i32 94, label %367
    i32 96, label %367
    i32 124, label %367
  ], !dbg !1479

; <label>:344:                                    ; preds = %338
  %345 = add nuw i64 %339, 1, !dbg !1480
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !1083, metadata !590), !dbg !1476
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !1083, metadata !590), !dbg !1476
  %346 = icmp ult i64 %345, %320, !dbg !1471
  br i1 %346, label %338, label %354, !dbg !1482, !llvm.loop !1484

; <label>:347:                                    ; preds = %314
  br label %351, !dbg !1436

; <label>:348:                                    ; preds = %324, %330
  %349 = phi i64 [ %331, %330 ], [ %326, %324 ]
  br label %351, !dbg !1436

; <label>:350:                                    ; preds = %314
  br label %351, !dbg !1436

; <label>:351:                                    ; preds = %350, %348, %347, %321
  %352 = phi i64 [ %315, %321 ], [ %315, %347 ], [ %349, %348 ], [ %315, %350 ]
  %353 = phi i8 [ 0, %321 ], [ 0, %347 ], [ 0, %348 ], [ %316, %350 ]
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1061, metadata !590), !dbg !1436
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1058, metadata !590), !dbg !1430
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10, !dbg !1487
  br label %364

; <label>:354:                                    ; preds = %344
  br label %355, !dbg !1488

; <label>:355:                                    ; preds = %354, %334
  %356 = load i32, i32* %12, align 4, !dbg !1488, !tbaa !663
  call void @llvm.dbg.value(metadata i32 %356, i64 0, metadata !1079, metadata !590), !dbg !1454
  %357 = call i32 @iswprint(i32 %356) #10, !dbg !1490
  %358 = icmp eq i32 %357, 0, !dbg !1490
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1061, metadata !590), !dbg !1436
  %359 = select i1 %358, i8 0, i8 %316, !dbg !1491
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1061, metadata !590), !dbg !1436
  %360 = add i64 %320, %315, !dbg !1492
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1058, metadata !590), !dbg !1430
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1061, metadata !590), !dbg !1436
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1058, metadata !590), !dbg !1430
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10, !dbg !1487
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1062, metadata !1452), !dbg !1453
  %361 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #13, !dbg !1493
  %362 = icmp eq i32 %361, 0, !dbg !1494
  br i1 %362, label %314, label %363, !dbg !1495, !llvm.loop !1443

; <label>:363:                                    ; preds = %355
  br label %364, !dbg !1497

; <label>:364:                                    ; preds = %363, %351
  %365 = phi i8 [ %353, %351 ], [ %359, %363 ]
  %366 = phi i64 [ %352, %351 ], [ %360, %363 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #10, !dbg !1497
  br label %368

; <label>:367:                                    ; preds = %338, %338, %338, %338, %338
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1061, metadata !590), !dbg !1436
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1058, metadata !590), !dbg !1430
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10, !dbg !1487
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #10, !dbg !1497
  br label %649

; <label>:368:                                    ; preds = %364, %299
  %369 = phi i64 [ %156, %299 ], [ %313, %364 ]
  %370 = phi i64 [ 1, %299 ], [ %366, %364 ]
  %371 = phi i8 [ %307, %299 ], [ %365, %364 ]
  call void @llvm.dbg.value(metadata i8 %371, i64 0, metadata !1061, metadata !590), !dbg !1436
  call void @llvm.dbg.value(metadata i64 %370, i64 0, metadata !1058, metadata !590), !dbg !1430
  call void @llvm.dbg.value(metadata i64 %369, i64 0, metadata !1033, metadata !590), !dbg !1096
  %372 = and i8 %371, 1, !dbg !1498
  %373 = icmp ne i8 %372, 0, !dbg !1498
  call void @llvm.dbg.value(metadata i8 %372, i64 0, metadata !1057, metadata !590), !dbg !1192
  %374 = icmp ult i64 %370, 2, !dbg !1499
  %375 = or i1 %373, %113, !dbg !1500
  %376 = and i1 %374, %375, !dbg !1502
  br i1 %376, label %476, label %377, !dbg !1502

; <label>:377:                                    ; preds = %368
  %378 = add i64 %370, %124, !dbg !1503
  call void @llvm.dbg.value(metadata i64 %378, i64 0, metadata !1090, metadata !590), !dbg !1504
  br label %379, !dbg !1505

; <label>:379:                                    ; preds = %472, %377
  %380 = phi i64 [ %124, %377 ], [ %447, %472 ]
  %381 = phi i64 [ %125, %377 ], [ %473, %472 ]
  %382 = phi i8 [ %128, %377 ], [ %468, %472 ]
  %383 = phi i8 [ %159, %377 ], [ %475, %472 ]
  %384 = phi i8 [ %157, %377 ], [ %445, %472 ]
  %385 = phi i8 [ 0, %377 ], [ %446, %472 ]
  call void @llvm.dbg.value(metadata i8 %385, i64 0, metadata !1056, metadata !590), !dbg !1191
  call void @llvm.dbg.value(metadata i8 %384, i64 0, metadata !1055, metadata !590), !dbg !1190
  call void @llvm.dbg.value(metadata i8 %383, i64 0, metadata !1050, metadata !590), !dbg !1209
  call void @llvm.dbg.value(metadata i8 %382, i64 0, metadata !1047, metadata !590), !dbg !1110
  call void @llvm.dbg.value(metadata i64 %381, i64 0, metadata !1040, metadata !590), !dbg !1102
  call void @llvm.dbg.value(metadata i64 %380, i64 0, metadata !1039, metadata !590), !dbg !1178
  br i1 %375, label %432, label %386, !dbg !1506

; <label>:386:                                    ; preds = %379
  br i1 %112, label %387, label %643, !dbg !1511

; <label>:387:                                    ; preds = %386
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1056, metadata !590), !dbg !1191
  %388 = and i8 %382, 1, !dbg !1515
  %389 = icmp eq i8 %388, 0, !dbg !1515
  %390 = and i1 %114, %389, !dbg !1518
  br i1 %390, label %391, label %407, !dbg !1518

; <label>:391:                                    ; preds = %387
  %392 = icmp ult i64 %381, %131, !dbg !1520
  br i1 %392, label %393, label %395, !dbg !1525

; <label>:393:                                    ; preds = %391
  %394 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !1527
  store i8 39, i8* %394, align 1, !dbg !1527, !tbaa !1127
  br label %395, !dbg !1527

; <label>:395:                                    ; preds = %393, %391
  %396 = add i64 %381, 1, !dbg !1529
  call void @llvm.dbg.value(metadata i64 %396, i64 0, metadata !1040, metadata !590), !dbg !1102
  %397 = icmp ult i64 %396, %131, !dbg !1531
  br i1 %397, label %398, label %400, !dbg !1535

; <label>:398:                                    ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !1537
  store i8 36, i8* %399, align 1, !dbg !1537, !tbaa !1127
  br label %400, !dbg !1537

; <label>:400:                                    ; preds = %398, %395
  %401 = add i64 %381, 2, !dbg !1539
  call void @llvm.dbg.value(metadata i64 %401, i64 0, metadata !1040, metadata !590), !dbg !1102
  %402 = icmp ult i64 %401, %131, !dbg !1541
  br i1 %402, label %403, label %405, !dbg !1545

; <label>:403:                                    ; preds = %400
  %404 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !1547
  store i8 39, i8* %404, align 1, !dbg !1547, !tbaa !1127
  br label %405, !dbg !1547

; <label>:405:                                    ; preds = %403, %400
  %406 = add i64 %381, 3, !dbg !1549
  call void @llvm.dbg.value(metadata i64 %406, i64 0, metadata !1040, metadata !590), !dbg !1102
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1047, metadata !590), !dbg !1110
  br label %407, !dbg !1551

; <label>:407:                                    ; preds = %387, %405
  %408 = phi i64 [ %406, %405 ], [ %381, %387 ]
  %409 = phi i8 [ 1, %405 ], [ %382, %387 ]
  call void @llvm.dbg.value(metadata i8 %409, i64 0, metadata !1047, metadata !590), !dbg !1110
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !1040, metadata !590), !dbg !1102
  %410 = icmp ult i64 %408, %131, !dbg !1553
  br i1 %410, label %411, label %413, !dbg !1557

; <label>:411:                                    ; preds = %407
  %412 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !1559
  store i8 92, i8* %412, align 1, !dbg !1559, !tbaa !1127
  br label %413, !dbg !1559

; <label>:413:                                    ; preds = %411, %407
  %414 = add i64 %408, 1, !dbg !1561
  call void @llvm.dbg.value(metadata i64 %414, i64 0, metadata !1040, metadata !590), !dbg !1102
  %415 = icmp ult i64 %414, %131, !dbg !1563
  br i1 %415, label %416, label %420, !dbg !1567

; <label>:416:                                    ; preds = %413
  %417 = lshr i8 %383, 6, !dbg !1569
  %418 = or i8 %417, 48, !dbg !1569
  %419 = getelementptr inbounds i8, i8* %0, i64 %414, !dbg !1569
  store i8 %418, i8* %419, align 1, !dbg !1569, !tbaa !1127
  br label %420, !dbg !1569

; <label>:420:                                    ; preds = %416, %413
  %421 = add i64 %408, 2, !dbg !1571
  call void @llvm.dbg.value(metadata i64 %421, i64 0, metadata !1040, metadata !590), !dbg !1102
  %422 = icmp ult i64 %421, %131, !dbg !1573
  br i1 %422, label %423, label %428, !dbg !1577

; <label>:423:                                    ; preds = %420
  %424 = lshr i8 %383, 3, !dbg !1579
  %425 = and i8 %424, 7, !dbg !1579
  %426 = or i8 %425, 48, !dbg !1579
  %427 = getelementptr inbounds i8, i8* %0, i64 %421, !dbg !1579
  store i8 %426, i8* %427, align 1, !dbg !1579, !tbaa !1127
  br label %428, !dbg !1579

; <label>:428:                                    ; preds = %423, %420
  %429 = add i64 %408, 3, !dbg !1581
  call void @llvm.dbg.value(metadata i64 %429, i64 0, metadata !1040, metadata !590), !dbg !1102
  %430 = and i8 %383, 7, !dbg !1583
  %431 = or i8 %430, 48, !dbg !1584
  call void @llvm.dbg.value(metadata i8 %431, i64 0, metadata !1050, metadata !590), !dbg !1209
  br label %441, !dbg !1585

; <label>:432:                                    ; preds = %379
  %433 = and i8 %384, 1, !dbg !1586
  %434 = icmp eq i8 %433, 0, !dbg !1586
  br i1 %434, label %441, label %435, !dbg !1588

; <label>:435:                                    ; preds = %432
  %436 = icmp ult i64 %381, %131, !dbg !1589
  br i1 %436, label %437, label %439, !dbg !1594

; <label>:437:                                    ; preds = %435
  %438 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !1596
  store i8 92, i8* %438, align 1, !dbg !1596, !tbaa !1127
  br label %439, !dbg !1596

; <label>:439:                                    ; preds = %437, %435
  %440 = add i64 %381, 1, !dbg !1598
  call void @llvm.dbg.value(metadata i64 %440, i64 0, metadata !1040, metadata !590), !dbg !1102
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1055, metadata !590), !dbg !1190
  br label %441, !dbg !1600

; <label>:441:                                    ; preds = %432, %439, %428
  %442 = phi i64 [ %440, %439 ], [ %381, %432 ], [ %429, %428 ]
  %443 = phi i8 [ %382, %439 ], [ %382, %432 ], [ %409, %428 ]
  %444 = phi i8 [ %383, %439 ], [ %383, %432 ], [ %431, %428 ]
  %445 = phi i8 [ 0, %439 ], [ %384, %432 ], [ %384, %428 ]
  %446 = phi i8 [ %385, %439 ], [ %385, %432 ], [ 1, %428 ]
  call void @llvm.dbg.value(metadata i8 %446, i64 0, metadata !1056, metadata !590), !dbg !1191
  call void @llvm.dbg.value(metadata i8 %445, i64 0, metadata !1055, metadata !590), !dbg !1190
  call void @llvm.dbg.value(metadata i8 %444, i64 0, metadata !1050, metadata !590), !dbg !1209
  call void @llvm.dbg.value(metadata i8 %443, i64 0, metadata !1047, metadata !590), !dbg !1110
  call void @llvm.dbg.value(metadata i64 %442, i64 0, metadata !1040, metadata !590), !dbg !1102
  %447 = add i64 %380, 1, !dbg !1601
  %448 = icmp ugt i64 %378, %447, !dbg !1603
  br i1 %448, label %449, label %541, !dbg !1604

; <label>:449:                                    ; preds = %441
  %450 = and i8 %443, 1, !dbg !1605
  %451 = icmp ne i8 %450, 0, !dbg !1605
  %452 = and i8 %446, 1, !dbg !1609
  %453 = icmp eq i8 %452, 0, !dbg !1609
  %454 = and i1 %451, %453, !dbg !1605
  br i1 %454, label %455, label %466, !dbg !1605

; <label>:455:                                    ; preds = %449
  %456 = icmp ult i64 %442, %131, !dbg !1611
  br i1 %456, label %457, label %459, !dbg !1616

; <label>:457:                                    ; preds = %455
  %458 = getelementptr inbounds i8, i8* %0, i64 %442, !dbg !1618
  store i8 39, i8* %458, align 1, !dbg !1618, !tbaa !1127
  br label %459, !dbg !1618

; <label>:459:                                    ; preds = %457, %455
  %460 = add i64 %442, 1, !dbg !1620
  call void @llvm.dbg.value(metadata i64 %460, i64 0, metadata !1040, metadata !590), !dbg !1102
  %461 = icmp ult i64 %460, %131, !dbg !1622
  br i1 %461, label %462, label %464, !dbg !1626

; <label>:462:                                    ; preds = %459
  %463 = getelementptr inbounds i8, i8* %0, i64 %460, !dbg !1628
  store i8 39, i8* %463, align 1, !dbg !1628, !tbaa !1127
  br label %464, !dbg !1628

; <label>:464:                                    ; preds = %462, %459
  %465 = add i64 %442, 2, !dbg !1630
  call void @llvm.dbg.value(metadata i64 %465, i64 0, metadata !1040, metadata !590), !dbg !1102
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1047, metadata !590), !dbg !1110
  br label %466, !dbg !1632

; <label>:466:                                    ; preds = %449, %464
  %467 = phi i64 [ %465, %464 ], [ %442, %449 ]
  %468 = phi i8 [ 0, %464 ], [ %443, %449 ]
  call void @llvm.dbg.value(metadata i8 %468, i64 0, metadata !1047, metadata !590), !dbg !1110
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !1040, metadata !590), !dbg !1102
  %469 = icmp ult i64 %467, %131, !dbg !1634
  br i1 %469, label %470, label %472, !dbg !1638

; <label>:470:                                    ; preds = %466
  %471 = getelementptr inbounds i8, i8* %0, i64 %467, !dbg !1640
  store i8 %444, i8* %471, align 1, !dbg !1640, !tbaa !1127
  br label %472, !dbg !1640

; <label>:472:                                    ; preds = %470, %466
  %473 = add i64 %467, 1, !dbg !1642
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !1040, metadata !590), !dbg !1102
  call void @llvm.dbg.value(metadata i64 %447, i64 0, metadata !1039, metadata !590), !dbg !1178
  %474 = getelementptr inbounds i8, i8* %2, i64 %447, !dbg !1644
  %475 = load i8, i8* %474, align 1, !dbg !1644, !tbaa !1127
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !1050, metadata !590), !dbg !1209
  br label %379, !dbg !1645, !llvm.loop !1647

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
  call void @llvm.dbg.value(metadata i64 %486, i64 0, metadata !1031, metadata !590), !dbg !1094
  call void @llvm.dbg.value(metadata i8 %485, i64 0, metadata !1057, metadata !590), !dbg !1192
  call void @llvm.dbg.value(metadata i8 %484, i64 0, metadata !1056, metadata !590), !dbg !1191
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !1055, metadata !590), !dbg !1190
  call void @llvm.dbg.value(metadata i8 %483, i64 0, metadata !1050, metadata !590), !dbg !1209
  call void @llvm.dbg.value(metadata i8 %482, i64 0, metadata !1048, metadata !590), !dbg !1111
  call void @llvm.dbg.value(metadata i8 %481, i64 0, metadata !1047, metadata !590), !dbg !1110
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !1033, metadata !590), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %479, i64 0, metadata !1041, metadata !590), !dbg !1103
  call void @llvm.dbg.value(metadata i64 %478, i64 0, metadata !1040, metadata !590), !dbg !1102
  call void @llvm.dbg.value(metadata i64 %477, i64 0, metadata !1039, metadata !590), !dbg !1178
  br i1 %107, label %488, label %487, !dbg !1650

; <label>:487:                                    ; preds = %476
  br i1 %117, label %489, label %501, !dbg !1652

; <label>:488:                                    ; preds = %476
  br i1 %20, label %501, label %489, !dbg !1653

; <label>:489:                                    ; preds = %488, %487
  %490 = lshr i8 %483, 5, !dbg !1654
  %491 = zext i8 %490 to i64, !dbg !1654
  %492 = getelementptr inbounds i32, i32* %6, i64 %491, !dbg !1656
  %493 = load i32, i32* %492, align 4, !dbg !1656, !tbaa !663
  %494 = and i8 %483, 31, !dbg !1657
  %495 = zext i8 %494 to i32, !dbg !1658
  %496 = shl i32 1, %495, !dbg !1659
  %497 = and i32 %493, %496, !dbg !1659
  %498 = icmp eq i32 %497, 0, !dbg !1659
  %499 = icmp eq i8 %157, 0, !dbg !1660
  %500 = and i1 %499, %498, !dbg !1661
  br i1 %500, label %542, label %503, !dbg !1661

; <label>:501:                                    ; preds = %488, %487
  %502 = icmp eq i8 %157, 0, !dbg !1660
  br i1 %502, label %542, label %503, !dbg !1662

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
  call void @llvm.dbg.value(metadata i64 %512, i64 0, metadata !1031, metadata !590), !dbg !1094
  call void @llvm.dbg.value(metadata i8 %511, i64 0, metadata !1057, metadata !590), !dbg !1192
  call void @llvm.dbg.value(metadata i8 %510, i64 0, metadata !1050, metadata !590), !dbg !1209
  call void @llvm.dbg.value(metadata i8 %509, i64 0, metadata !1048, metadata !590), !dbg !1111
  call void @llvm.dbg.value(metadata i8 %508, i64 0, metadata !1047, metadata !590), !dbg !1110
  call void @llvm.dbg.value(metadata i64 %507, i64 0, metadata !1033, metadata !590), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !1041, metadata !590), !dbg !1103
  call void @llvm.dbg.value(metadata i64 %505, i64 0, metadata !1040, metadata !590), !dbg !1102
  call void @llvm.dbg.value(metadata i64 %504, i64 0, metadata !1039, metadata !590), !dbg !1178
  br i1 %112, label %513, label %644, !dbg !1664

; <label>:513:                                    ; preds = %503
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1056, metadata !590), !dbg !1191
  %514 = and i8 %508, 1, !dbg !1667
  %515 = icmp eq i8 %514, 0, !dbg !1667
  %516 = and i1 %114, %515, !dbg !1670
  br i1 %516, label %517, label %533, !dbg !1670

; <label>:517:                                    ; preds = %513
  %518 = icmp ult i64 %505, %512, !dbg !1672
  br i1 %518, label %519, label %521, !dbg !1677

; <label>:519:                                    ; preds = %517
  %520 = getelementptr inbounds i8, i8* %0, i64 %505, !dbg !1679
  store i8 39, i8* %520, align 1, !dbg !1679, !tbaa !1127
  br label %521, !dbg !1679

; <label>:521:                                    ; preds = %519, %517
  %522 = add i64 %505, 1, !dbg !1681
  call void @llvm.dbg.value(metadata i64 %522, i64 0, metadata !1040, metadata !590), !dbg !1102
  %523 = icmp ult i64 %522, %512, !dbg !1683
  br i1 %523, label %524, label %526, !dbg !1687

; <label>:524:                                    ; preds = %521
  %525 = getelementptr inbounds i8, i8* %0, i64 %522, !dbg !1689
  store i8 36, i8* %525, align 1, !dbg !1689, !tbaa !1127
  br label %526, !dbg !1689

; <label>:526:                                    ; preds = %524, %521
  %527 = add i64 %505, 2, !dbg !1691
  call void @llvm.dbg.value(metadata i64 %527, i64 0, metadata !1040, metadata !590), !dbg !1102
  %528 = icmp ult i64 %527, %512, !dbg !1693
  br i1 %528, label %529, label %531, !dbg !1697

; <label>:529:                                    ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527, !dbg !1699
  store i8 39, i8* %530, align 1, !dbg !1699, !tbaa !1127
  br label %531, !dbg !1699

; <label>:531:                                    ; preds = %529, %526
  %532 = add i64 %505, 3, !dbg !1701
  call void @llvm.dbg.value(metadata i64 %532, i64 0, metadata !1040, metadata !590), !dbg !1102
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1047, metadata !590), !dbg !1110
  br label %533, !dbg !1703

; <label>:533:                                    ; preds = %513, %531
  %534 = phi i64 [ %532, %531 ], [ %505, %513 ]
  %535 = phi i8 [ 1, %531 ], [ %508, %513 ]
  call void @llvm.dbg.value(metadata i8 %535, i64 0, metadata !1047, metadata !590), !dbg !1110
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !1040, metadata !590), !dbg !1102
  %536 = icmp ult i64 %534, %512, !dbg !1705
  br i1 %536, label %537, label %539, !dbg !1709

; <label>:537:                                    ; preds = %533
  %538 = getelementptr inbounds i8, i8* %0, i64 %534, !dbg !1711
  store i8 92, i8* %538, align 1, !dbg !1711, !tbaa !1127
  br label %539, !dbg !1711

; <label>:539:                                    ; preds = %533, %537
  %540 = add i64 %534, 1, !dbg !1713
  call void @llvm.dbg.value(metadata i64 %540, i64 0, metadata !1040, metadata !590), !dbg !1102
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !1031, metadata !590), !dbg !1094
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !1057, metadata !590), !dbg !1192
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !1056, metadata !590), !dbg !1191
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !1050, metadata !590), !dbg !1209
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !1048, metadata !590), !dbg !1111
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !1047, metadata !590), !dbg !1110
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !1033, metadata !590), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1041, metadata !590), !dbg !1103
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !1040, metadata !590), !dbg !1102
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !1039, metadata !590), !dbg !1178
  br label %569, !dbg !1715

; <label>:541:                                    ; preds = %441
  br label %542, !dbg !1094

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
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !1031, metadata !590), !dbg !1094
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !1057, metadata !590), !dbg !1192
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !1056, metadata !590), !dbg !1191
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !1050, metadata !590), !dbg !1209
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !1048, metadata !590), !dbg !1111
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !1047, metadata !590), !dbg !1110
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !1033, metadata !590), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1041, metadata !590), !dbg !1103
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !1040, metadata !590), !dbg !1102
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !1039, metadata !590), !dbg !1178
  %553 = and i8 %547, 1, !dbg !1715
  %554 = icmp ne i8 %553, 0, !dbg !1715
  %555 = and i8 %550, 1, !dbg !1719
  %556 = icmp eq i8 %555, 0, !dbg !1719
  %557 = and i1 %554, %556, !dbg !1715
  br i1 %557, label %558, label %569, !dbg !1715

; <label>:558:                                    ; preds = %542
  %559 = icmp ult i64 %544, %552, !dbg !1721
  br i1 %559, label %560, label %562, !dbg !1726

; <label>:560:                                    ; preds = %558
  %561 = getelementptr inbounds i8, i8* %0, i64 %544, !dbg !1728
  store i8 39, i8* %561, align 1, !dbg !1728, !tbaa !1127
  br label %562, !dbg !1728

; <label>:562:                                    ; preds = %560, %558
  %563 = add i64 %544, 1, !dbg !1730
  call void @llvm.dbg.value(metadata i64 %563, i64 0, metadata !1040, metadata !590), !dbg !1102
  %564 = icmp ult i64 %563, %552, !dbg !1732
  br i1 %564, label %565, label %567, !dbg !1736

; <label>:565:                                    ; preds = %562
  %566 = getelementptr inbounds i8, i8* %0, i64 %563, !dbg !1738
  store i8 39, i8* %566, align 1, !dbg !1738, !tbaa !1127
  br label %567, !dbg !1738

; <label>:567:                                    ; preds = %565, %562
  %568 = add i64 %544, 2, !dbg !1740
  call void @llvm.dbg.value(metadata i64 %568, i64 0, metadata !1040, metadata !590), !dbg !1102
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1047, metadata !590), !dbg !1110
  br label %569, !dbg !1742

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
  call void @llvm.dbg.value(metadata i8 %578, i64 0, metadata !1047, metadata !590), !dbg !1110
  call void @llvm.dbg.value(metadata i64 %577, i64 0, metadata !1040, metadata !590), !dbg !1102
  %579 = icmp ult i64 %577, %570, !dbg !1744
  br i1 %579, label %580, label %582, !dbg !1748

; <label>:580:                                    ; preds = %569
  %581 = getelementptr inbounds i8, i8* %0, i64 %577, !dbg !1750
  store i8 %572, i8* %581, align 1, !dbg !1750, !tbaa !1127
  br label %582, !dbg !1750

; <label>:582:                                    ; preds = %580, %569
  %583 = add i64 %577, 1, !dbg !1752
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !1040, metadata !590), !dbg !1102
  %584 = and i8 %571, 1, !dbg !1754
  %585 = icmp eq i8 %584, 0, !dbg !1754
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1049, metadata !590), !dbg !1112
  %586 = select i1 %585, i8 0, i8 %130, !dbg !1756
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !1049, metadata !590), !dbg !1112
  br label %587, !dbg !1757

; <label>:587:                                    ; preds = %582, %209
  %588 = phi i64 [ %124, %209 ], [ %576, %582 ]
  %589 = phi i64 [ %125, %209 ], [ %583, %582 ]
  %590 = phi i64 [ %126, %209 ], [ %575, %582 ]
  %591 = phi i64 [ %156, %209 ], [ %574, %582 ]
  %592 = phi i8 [ %128, %209 ], [ %578, %582 ]
  %593 = phi i8 [ %129, %209 ], [ %573, %582 ]
  %594 = phi i8 [ %130, %209 ], [ %586, %582 ]
  %595 = phi i64 [ %131, %209 ], [ %570, %582 ]
  %596 = add i64 %588, 1, !dbg !1758
  call void @llvm.dbg.value(metadata i64 %596, i64 0, metadata !1039, metadata !590), !dbg !1178
  br label %123, !dbg !1760, !llvm.loop !1761

; <label>:597:                                    ; preds = %133, %135
  %598 = phi i64 [ %124, %133 ], [ -1, %135 ]
  %599 = icmp eq i64 %125, 0, !dbg !1764
  %600 = and i1 %114, %599, !dbg !1766
  %601 = xor i1 %600, true, !dbg !1766
  %602 = or i1 %112, %601, !dbg !1766
  br i1 %602, label %603, label %648, !dbg !1766

; <label>:603:                                    ; preds = %597
  %604 = and i1 %114, %112, !dbg !1767
  %605 = xor i1 %604, true, !dbg !1767
  %606 = and i8 %129, 1, !dbg !1769
  %607 = icmp eq i8 %606, 0, !dbg !1769
  %608 = or i1 %607, %605, !dbg !1767
  br i1 %608, label %618, label %609, !dbg !1767

; <label>:609:                                    ; preds = %603
  %610 = and i8 %130, 1, !dbg !1771
  %611 = icmp eq i8 %610, 0, !dbg !1771
  br i1 %611, label %614, label %612, !dbg !1774

; <label>:612:                                    ; preds = %609
  %613 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %126, i8* %2, i64 %598, i32 5, i32 %5, i32* %6, i8* %97, i8* %98), !dbg !1775
  br label %659, !dbg !1776

; <label>:614:                                    ; preds = %609
  %615 = icmp eq i64 %131, 0, !dbg !1777
  %616 = icmp ne i64 %126, 0, !dbg !1779
  %617 = and i1 %616, %615, !dbg !1781
  br i1 %617, label %27, label %618, !dbg !1781

; <label>:618:                                    ; preds = %603, %614
  %619 = icmp ne i8* %100, null, !dbg !1782
  %620 = and i1 %619, %112, !dbg !1784
  br i1 %620, label %621, label %638, !dbg !1784

; <label>:621:                                    ; preds = %618
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !1042, metadata !590), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1040, metadata !590), !dbg !1102
  %622 = load i8, i8* %100, align 1, !dbg !1785, !tbaa !1127
  %623 = icmp eq i8 %622, 0, !dbg !1789
  br i1 %623, label %638, label %624, !dbg !1789

; <label>:624:                                    ; preds = %621
  br label %625, !dbg !1791

; <label>:625:                                    ; preds = %624, %632
  %626 = phi i8 [ %635, %632 ], [ %622, %624 ]
  %627 = phi i8* [ %634, %632 ], [ %100, %624 ]
  %628 = phi i64 [ %633, %632 ], [ %125, %624 ]
  %629 = icmp ult i64 %628, %131, !dbg !1791
  br i1 %629, label %630, label %632, !dbg !1795

; <label>:630:                                    ; preds = %625
  %631 = getelementptr inbounds i8, i8* %0, i64 %628, !dbg !1797
  store i8 %626, i8* %631, align 1, !dbg !1797, !tbaa !1127
  br label %632, !dbg !1797

; <label>:632:                                    ; preds = %630, %625
  %633 = add i64 %628, 1, !dbg !1799
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !1040, metadata !590), !dbg !1102
  %634 = getelementptr inbounds i8, i8* %627, i64 1, !dbg !1801
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !1042, metadata !590), !dbg !1104
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !1042, metadata !590), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !1040, metadata !590), !dbg !1102
  %635 = load i8, i8* %634, align 1, !dbg !1785, !tbaa !1127
  %636 = icmp eq i8 %635, 0, !dbg !1789
  br i1 %636, label %637, label %625, !dbg !1789, !llvm.loop !1803

; <label>:637:                                    ; preds = %632
  br label %638, !dbg !1102

; <label>:638:                                    ; preds = %637, %621, %618
  %639 = phi i64 [ %125, %618 ], [ %125, %621 ], [ %633, %637 ]
  call void @llvm.dbg.value(metadata i64 %639, i64 0, metadata !1040, metadata !590), !dbg !1102
  %640 = icmp ult i64 %639, %131, !dbg !1806
  br i1 %640, label %641, label %659, !dbg !1808

; <label>:641:                                    ; preds = %638
  %642 = getelementptr inbounds i8, i8* %0, i64 %639, !dbg !1809
  store i8 0, i8* %642, align 1, !dbg !1810, !tbaa !1127
  br label %659, !dbg !1809

; <label>:643:                                    ; preds = %386
  br label %649, !dbg !1094

; <label>:644:                                    ; preds = %148, %161, %211, %225, %253, %255, %273, %276, %503
  %645 = phi i32 [ %96, %148 ], [ %96, %161 ], [ 2, %211 ], [ 5, %225 ], [ 2, %253 ], [ 2, %255 ], [ 2, %273 ], [ 2, %276 ], [ %96, %503 ]
  %646 = phi i64 [ %146, %148 ], [ %156, %161 ], [ %156, %211 ], [ %156, %225 ], [ %156, %253 ], [ %156, %255 ], [ %156, %273 ], [ %156, %276 ], [ %507, %503 ]
  %647 = phi i64 [ %131, %148 ], [ %131, %161 ], [ %131, %211 ], [ %131, %225 ], [ %131, %253 ], [ %131, %255 ], [ %131, %273 ], [ %131, %276 ], [ %512, %503 ]
  br label %649, !dbg !1094

; <label>:648:                                    ; preds = %597
  br label %649, !dbg !1094

; <label>:649:                                    ; preds = %648, %644, %643, %367
  %650 = phi i32 [ 2, %367 ], [ %96, %643 ], [ %645, %644 ], [ %96, %648 ]
  %651 = phi i64 [ %313, %367 ], [ %369, %643 ], [ %646, %644 ], [ %598, %648 ]
  %652 = phi i64 [ %131, %367 ], [ %131, %643 ], [ %647, %644 ], [ %131, %648 ]
  call void @llvm.dbg.value(metadata i64 %652, i64 0, metadata !1031, metadata !590), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %651, i64 0, metadata !1033, metadata !590), !dbg !1096
  %653 = icmp ne i32 %650, 2, !dbg !1811
  %654 = icmp eq i8 %104, 0, !dbg !1813
  %655 = or i1 %653, %654, !dbg !1815
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !1034, metadata !590), !dbg !1097
  %656 = select i1 %655, i32 %650, i32 4, !dbg !1815
  call void @llvm.dbg.value(metadata i32 %656, i64 0, metadata !1034, metadata !590), !dbg !1097
  %657 = and i32 %5, -3, !dbg !1816
  %658 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %652, i8* %2, i64 %651, i32 %656, i32 %657, i32* null, i8* %97, i8* %98), !dbg !1817
  br label %659, !dbg !1818

; <label>:659:                                    ; preds = %638, %641, %649, %612
  %660 = phi i64 [ %658, %649 ], [ %613, %612 ], [ %639, %641 ], [ %639, %638 ]
  ret i64 %660, !dbg !1819
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !1820 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1824, metadata !590), !dbg !1828
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1825, metadata !590), !dbg !1829
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #10, !dbg !1830
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !1826, metadata !590), !dbg !1831
  %4 = icmp eq i8* %3, %0, !dbg !1832
  br i1 %4, label %5, label %75, !dbg !1834

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #10, !dbg !1835
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !1827, metadata !590), !dbg !1836
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1837, metadata !590), !dbg !1853
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1851, metadata !590), !dbg !1856
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1852, metadata !590), !dbg !1857
  %7 = load i8, i8* %6, align 1, !tbaa !1127
  %8 = sext i8 %7 to i32
  %9 = and i32 %8, -33, !dbg !1858
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !1858

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1861, metadata !590), !dbg !1875
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1873, metadata !590), !dbg !1879
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1874, metadata !590), !dbg !1880
  %11 = getelementptr inbounds i8, i8* %6, i64 1
  %12 = load i8, i8* %11, align 1, !tbaa !1127
  %13 = sext i8 %12 to i32
  %14 = and i32 %13, -33, !dbg !1881
  %15 = icmp eq i32 %14, 84, !dbg !1881
  br i1 %15, label %16, label %72, !dbg !1881

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1884, metadata !590), !dbg !1897
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1895, metadata !590), !dbg !1901
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1896, metadata !590), !dbg !1902
  %17 = getelementptr inbounds i8, i8* %6, i64 2
  %18 = load i8, i8* %17, align 1, !tbaa !1127
  %19 = sext i8 %18 to i32
  %20 = and i32 %19, -33, !dbg !1903
  %21 = icmp eq i32 %20, 70, !dbg !1903
  br i1 %21, label %22, label %72, !dbg !1903

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1906, metadata !590), !dbg !1918
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1916, metadata !590), !dbg !1922
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1917, metadata !590), !dbg !1923
  %23 = getelementptr inbounds i8, i8* %6, i64 3
  %24 = load i8, i8* %23, align 1, !tbaa !1127
  %25 = icmp eq i8 %24, 45, !dbg !1924
  br i1 %25, label %26, label %72, !dbg !1927

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1929, metadata !590), !dbg !1940
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1938, metadata !590), !dbg !1944
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1939, metadata !590), !dbg !1945
  %27 = getelementptr inbounds i8, i8* %6, i64 4
  %28 = load i8, i8* %27, align 1, !tbaa !1127
  %29 = icmp eq i8 %28, 56, !dbg !1946
  br i1 %29, label %30, label %72, !dbg !1949

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1951, metadata !590), !dbg !1961
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1959, metadata !590), !dbg !1965
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1960, metadata !590), !dbg !1966
  %31 = getelementptr inbounds i8, i8* %6, i64 5
  %32 = load i8, i8* %31, align 1, !tbaa !1127
  %33 = icmp eq i8 %32, 0, !dbg !1967
  br i1 %33, label %34, label %72, !dbg !1970

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !1972, !tbaa !1127
  %36 = icmp eq i8 %35, 96, !dbg !1973
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.53, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.54, i64 0, i64 0), !dbg !1972
  br label %75, !dbg !1974

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1861, metadata !590), !dbg !1975
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1873, metadata !590), !dbg !1979
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1874, metadata !590), !dbg !1980
  %39 = getelementptr inbounds i8, i8* %6, i64 1
  %40 = load i8, i8* %39, align 1, !tbaa !1127
  %41 = sext i8 %40 to i32
  %42 = and i32 %41, -33, !dbg !1981
  %43 = icmp eq i32 %42, 66, !dbg !1981
  br i1 %43, label %44, label %72, !dbg !1981

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1884, metadata !590), !dbg !1982
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1895, metadata !590), !dbg !1984
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1896, metadata !590), !dbg !1985
  %45 = getelementptr inbounds i8, i8* %6, i64 2
  %46 = load i8, i8* %45, align 1, !tbaa !1127
  %47 = icmp eq i8 %46, 49, !dbg !1986
  br i1 %47, label %48, label %72, !dbg !1988

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1906, metadata !590), !dbg !1990
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1916, metadata !590), !dbg !1992
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1917, metadata !590), !dbg !1993
  %49 = getelementptr inbounds i8, i8* %6, i64 3
  %50 = load i8, i8* %49, align 1, !tbaa !1127
  %51 = icmp eq i8 %50, 56, !dbg !1994
  br i1 %51, label %52, label %72, !dbg !1995

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1929, metadata !590), !dbg !1996
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1938, metadata !590), !dbg !1998
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1939, metadata !590), !dbg !1999
  %53 = getelementptr inbounds i8, i8* %6, i64 4
  %54 = load i8, i8* %53, align 1, !tbaa !1127
  %55 = icmp eq i8 %54, 48, !dbg !2000
  br i1 %55, label %56, label %72, !dbg !2001

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1951, metadata !590), !dbg !2002
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1959, metadata !590), !dbg !2004
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1960, metadata !590), !dbg !2005
  %57 = getelementptr inbounds i8, i8* %6, i64 5
  %58 = load i8, i8* %57, align 1, !tbaa !1127
  %59 = icmp eq i8 %58, 51, !dbg !2006
  br i1 %59, label %60, label %72, !dbg !2007

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2008, metadata !590), !dbg !2017
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2015, metadata !590), !dbg !2021
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2016, metadata !590), !dbg !2022
  %61 = getelementptr inbounds i8, i8* %6, i64 6
  %62 = load i8, i8* %61, align 1, !tbaa !1127
  %63 = icmp eq i8 %62, 48, !dbg !2023
  br i1 %63, label %64, label %72, !dbg !2026

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2028, metadata !590), !dbg !2036
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2034, metadata !590), !dbg !2040
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2035, metadata !590), !dbg !2041
  %65 = getelementptr inbounds i8, i8* %6, i64 7
  %66 = load i8, i8* %65, align 1, !tbaa !1127
  %67 = icmp eq i8 %66, 0, !dbg !2042
  br i1 %67, label %68, label %72, !dbg !2045

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !2046, !tbaa !1127
  %70 = icmp eq i8 %69, 96, !dbg !2047
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.55, i64 0, i64 0), !dbg !2046
  br label %75, !dbg !2048

; <label>:72:                                     ; preds = %5, %30, %26, %22, %16, %10, %64, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !2049
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.52, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.51, i64 0, i64 0), !dbg !2050
  br label %75, !dbg !2051

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !2052
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #4

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
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2053 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2057, metadata !590), !dbg !2060
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2058, metadata !590), !dbg !2061
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2059, metadata !590), !dbg !2062
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2063, metadata !590) #10, !dbg !2076
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2068, metadata !590) #10, !dbg !2078
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !2069, metadata !590) #10, !dbg !2079
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2070, metadata !590) #10, !dbg !2080
  %4 = icmp ne %struct.quoting_options* %2, null, !dbg !2081
  %5 = select i1 %4, %struct.quoting_options* %2, %struct.quoting_options* @default_quoting_options, !dbg !2081
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2071, metadata !590) #10, !dbg !2082
  %6 = tail call i32* @__errno_location() #1, !dbg !2083
  %7 = load i32, i32* %6, align 4, !dbg !2083, !tbaa !663
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !2072, metadata !590) #10, !dbg !2084
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2085
  %9 = load i32, i32* %8, align 4, !dbg !2085, !tbaa !962
  %10 = or i32 %9, 1, !dbg !2086
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2073, metadata !590) #10, !dbg !2087
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2088
  %12 = load i32, i32* %11, align 8, !dbg !2088, !tbaa !900
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2089
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2090
  %15 = load i8*, i8** %14, align 8, !dbg !2090, !tbaa !989
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2091
  %17 = load i8*, i8** %16, align 8, !dbg !2091, !tbaa !992
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #10, !dbg !2092
  %19 = add i64 %18, 1, !dbg !2093
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2074, metadata !590) #10, !dbg !2094
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2095, metadata !590) #10, !dbg !2100
  %20 = tail call noalias i8* @xmalloc(i64 %19) #10, !dbg !2102
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !2075, metadata !590) #10, !dbg !2103
  %21 = load i32, i32* %11, align 8, !dbg !2104, !tbaa !900
  %22 = load i8*, i8** %14, align 8, !dbg !2105, !tbaa !989
  %23 = load i8*, i8** %16, align 8, !dbg !2106, !tbaa !992
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #10, !dbg !2107
  store i32 %7, i32* %6, align 4, !dbg !2108, !tbaa !663
  ret i8* %20, !dbg !2109
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2064 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2063, metadata !590), !dbg !2110
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2068, metadata !590), !dbg !2111
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !2069, metadata !590), !dbg !2112
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2070, metadata !590), !dbg !2113
  %5 = icmp ne %struct.quoting_options* %3, null, !dbg !2114
  %6 = select i1 %5, %struct.quoting_options* %3, %struct.quoting_options* @default_quoting_options, !dbg !2114
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2071, metadata !590), !dbg !2115
  %7 = tail call i32* @__errno_location() #1, !dbg !2116
  %8 = load i32, i32* %7, align 4, !dbg !2116, !tbaa !663
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !2072, metadata !590), !dbg !2117
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2118
  %10 = load i32, i32* %9, align 4, !dbg !2118, !tbaa !962
  %11 = icmp ne i64* %2, null, !dbg !2119
  %12 = xor i1 %11, true, !dbg !2119
  %13 = zext i1 %12 to i32, !dbg !2119
  %14 = or i32 %10, %13, !dbg !2120
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !2073, metadata !590), !dbg !2121
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2122
  %16 = load i32, i32* %15, align 8, !dbg !2122, !tbaa !900
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2123
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2124
  %19 = load i8*, i8** %18, align 8, !dbg !2124, !tbaa !989
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2125
  %21 = load i8*, i8** %20, align 8, !dbg !2125, !tbaa !992
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !2126
  %23 = add i64 %22, 1, !dbg !2127
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2074, metadata !590), !dbg !2128
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2095, metadata !590) #10, !dbg !2129
  %24 = tail call noalias i8* @xmalloc(i64 %23) #10, !dbg !2131
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !2075, metadata !590), !dbg !2132
  %25 = load i32, i32* %15, align 8, !dbg !2133, !tbaa !900
  %26 = load i8*, i8** %18, align 8, !dbg !2134, !tbaa !989
  %27 = load i8*, i8** %20, align 8, !dbg !2135, !tbaa !992
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !2136
  store i32 %8, i32* %7, align 4, !dbg !2137, !tbaa !663
  br i1 %11, label %29, label %30, !dbg !2138

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2139, !tbaa !2141
  br label %30, !dbg !2143

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !2144
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !2145 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2149, !tbaa !598
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !2147, metadata !590), !dbg !2150
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2148, metadata !590), !dbg !2151
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2148, metadata !590), !dbg !2151
  %2 = load i32, i32* @nslots, align 4, !dbg !2152, !tbaa !663
  %3 = icmp sgt i32 %2, 1, !dbg !2156
  br i1 %3, label %4, label %14, !dbg !2157

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !2159

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !2159
  %8 = load i8*, i8** %7, align 8, !dbg !2159, !tbaa !2160
  tail call void @free(i8* %8) #10, !dbg !2162
  %9 = add nuw i64 %6, 1, !dbg !2163
  %10 = load i32, i32* @nslots, align 4, !dbg !2152, !tbaa !663
  %11 = sext i32 %10 to i64, !dbg !2156
  %12 = icmp slt i64 %9, %11, !dbg !2156
  br i1 %12, label %5, label %13, !dbg !2157, !llvm.loop !2165

; <label>:13:                                     ; preds = %5
  br label %14, !dbg !2168

; <label>:14:                                     ; preds = %13, %0
  %15 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2168
  %16 = load i8*, i8** %15, align 8, !dbg !2168, !tbaa !2160
  %17 = icmp eq i8* %16, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2170
  br i1 %17, label %19, label %18, !dbg !2171

; <label>:18:                                     ; preds = %14
  tail call void @free(i8* %16) #10, !dbg !2172
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2174, !tbaa !2175
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2176, !tbaa !2160
  br label %19, !dbg !2177

; <label>:19:                                     ; preds = %14, %18
  %20 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2178
  br i1 %20, label %23, label %21, !dbg !2180

; <label>:21:                                     ; preds = %19
  %22 = bitcast %struct.slotvec* %1 to i8*, !dbg !2181
  tail call void @free(i8* %22) #10, !dbg !2183
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2184, !tbaa !598
  br label %23, !dbg !2185

; <label>:23:                                     ; preds = %19, %21
  store i32 1, i32* @nslots, align 4, !dbg !2186, !tbaa !663
  ret void, !dbg !2187
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !2188 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2192, metadata !590), !dbg !2194
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2193, metadata !590), !dbg !2195
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2196
  ret i8* %3, !dbg !2197
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !2198 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2202, metadata !590), !dbg !2216
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2203, metadata !590), !dbg !2217
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2204, metadata !590), !dbg !2218
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2205, metadata !590), !dbg !2219
  %5 = tail call i32* @__errno_location() #1, !dbg !2220
  %6 = load i32, i32* %5, align 4, !dbg !2220, !tbaa !663
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !2206, metadata !590), !dbg !2221
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2222, !tbaa !598
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !2207, metadata !590), !dbg !2223
  %8 = icmp slt i32 %0, 0, !dbg !2224
  br i1 %8, label %9, label %10, !dbg !2226

; <label>:9:                                      ; preds = %4
  tail call void @abort() #14, !dbg !2227
  unreachable, !dbg !2227

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2228, !tbaa !663
  %12 = icmp sgt i32 %11, %0, !dbg !2229
  br i1 %12, label %34, label %13, !dbg !2230

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2231
  %15 = icmp ugt i32 %0, 2147483646, !dbg !2232
  br i1 %15, label %16, label %17, !dbg !2234

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !2235
  unreachable, !dbg !2235

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !2236
  %19 = select i1 %14, i8* null, i8* %18, !dbg !2236
  %20 = add nsw i32 %0, 1, !dbg !2238
  %21 = sext i32 %20 to i64, !dbg !2239
  %22 = shl nsw i64 %21, 4, !dbg !2240
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #10, !dbg !2241
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2241
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !2207, metadata !590), !dbg !2223
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2242, !tbaa !598
  br i1 %14, label %25, label %26, !dbg !2243

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !2244, !tbaa.struct !2246
  br label %26, !dbg !2247

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2248, !tbaa !663
  %28 = sext i32 %27 to i64, !dbg !2249
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2249
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2250
  %31 = sub nsw i32 %20, %27, !dbg !2251
  %32 = sext i32 %31 to i64, !dbg !2252
  %33 = shl nsw i64 %32, 4, !dbg !2253
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !2250
  store i32 %20, i32* @nslots, align 4, !dbg !2254, !tbaa !663
  br label %34, !dbg !2255

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !2207, metadata !590), !dbg !2223
  %36 = sext i32 %0 to i64, !dbg !2256
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2257
  %38 = load i64, i64* %37, align 8, !dbg !2257, !tbaa !2175
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !2211, metadata !590), !dbg !2258
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2259
  %40 = load i8*, i8** %39, align 8, !dbg !2259, !tbaa !2160
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !2213, metadata !590), !dbg !2260
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2261
  %42 = load i32, i32* %41, align 4, !dbg !2261, !tbaa !962
  %43 = or i32 %42, 1, !dbg !2262
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !2214, metadata !590), !dbg !2263
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2264
  %45 = load i32, i32* %44, align 8, !dbg !2264, !tbaa !900
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2265
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2266
  %48 = load i8*, i8** %47, align 8, !dbg !2266, !tbaa !989
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2267
  %50 = load i8*, i8** %49, align 8, !dbg !2267, !tbaa !992
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !2268
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !2215, metadata !590), !dbg !2269
  %52 = icmp ugt i64 %38, %51, !dbg !2270
  br i1 %52, label %63, label %53, !dbg !2272

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !2273
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2211, metadata !590), !dbg !2258
  store i64 %54, i64* %37, align 8, !dbg !2275, !tbaa !2175
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2276
  br i1 %55, label %57, label %56, !dbg !2278

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #10, !dbg !2279
  br label %57, !dbg !2279

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2095, metadata !590) #10, !dbg !2280
  %58 = tail call noalias i8* @xmalloc(i64 %54) #10, !dbg !2282
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !2213, metadata !590), !dbg !2260
  store i8* %58, i8** %39, align 8, !dbg !2283, !tbaa !2160
  %59 = load i32, i32* %44, align 8, !dbg !2284, !tbaa !900
  %60 = load i8*, i8** %47, align 8, !dbg !2285, !tbaa !989
  %61 = load i8*, i8** %49, align 8, !dbg !2286, !tbaa !992
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !2287
  br label %63, !dbg !2288

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !2213, metadata !590), !dbg !2260
  store i32 %6, i32* %5, align 4, !dbg !2289, !tbaa !663
  ret i8* %64, !dbg !2290
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #9

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #9

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2291 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2295, metadata !590), !dbg !2298
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2296, metadata !590), !dbg !2299
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2297, metadata !590), !dbg !2300
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2301
  ret i8* %4, !dbg !2302
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !2303 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2307, metadata !590), !dbg !2308
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2192, metadata !590) #10, !dbg !2309
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2193, metadata !590) #10, !dbg !2311
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2312
  ret i8* %2, !dbg !2313
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !2314 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2318, metadata !590), !dbg !2320
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2319, metadata !590), !dbg !2321
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2295, metadata !590) #10, !dbg !2322
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2296, metadata !590) #10, !dbg !2324
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2297, metadata !590) #10, !dbg !2325
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2326
  ret i8* %3, !dbg !2327
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !2328 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2336, metadata !2342), !dbg !2343
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2332, metadata !590), !dbg !2345
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2333, metadata !590), !dbg !2346
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2334, metadata !590), !dbg !2347
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2348
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !2348
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2335, metadata !1452), !dbg !2349
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2341, metadata !590) #10, !dbg !2350
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2351
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !2351
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2336, metadata !590) #10, !dbg !2343
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2336, metadata !2352) #10, !dbg !2343
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2343
  %8 = icmp eq i32 %1, 10, !dbg !2353
  br i1 %8, label %9, label %10, !dbg !2355

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14, !dbg !2356, !noalias !2357
  unreachable, !dbg !2356

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2336, metadata !2352) #10, !dbg !2343
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2360
  store i32 %1, i32* %11, align 8, !dbg !2360, !alias.scope !2357
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2360
  %13 = bitcast i32* %12 to i8*, !dbg !2360
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !2360
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !2361
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2335, metadata !1452), !dbg !2349
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2362
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !2363
  ret i8* %14, !dbg !2364
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !2365 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2336, metadata !2342), !dbg !2374
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2369, metadata !590), !dbg !2376
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2370, metadata !590), !dbg !2377
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2371, metadata !590), !dbg !2378
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2372, metadata !590), !dbg !2379
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2380
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10, !dbg !2380
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2373, metadata !1452), !dbg !2381
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2341, metadata !590) #10, !dbg !2382
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2383
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !2383
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2336, metadata !590) #10, !dbg !2374
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2336, metadata !2352) #10, !dbg !2374
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2374
  %9 = icmp eq i32 %1, 10, !dbg !2384
  br i1 %9, label %10, label %11, !dbg !2385

; <label>:10:                                     ; preds = %4
  tail call void @abort() #14, !dbg !2386, !noalias !2387
  unreachable, !dbg !2386

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2336, metadata !2352) #10, !dbg !2374
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2390
  store i32 %1, i32* %12, align 8, !dbg !2390, !alias.scope !2387
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2390
  %14 = bitcast i32* %13 to i8*, !dbg !2390
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #10, !dbg !2390
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !2391
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2373, metadata !1452), !dbg !2381
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !2392
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10, !dbg !2393
  ret i8* %15, !dbg !2394
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !2395 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !2336, metadata !2342), !dbg !2401
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2399, metadata !590), !dbg !2404
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2400, metadata !590), !dbg !2405
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2332, metadata !590) #10, !dbg !2406
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2333, metadata !590) #10, !dbg !2407
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2334, metadata !590) #10, !dbg !2408
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2409
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10, !dbg !2409
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2335, metadata !1452) #10, !dbg !2410
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2341, metadata !590) #10, !dbg !2411
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !2412
  call void @llvm.lifetime.start(i64 52, i8* nonnull %6), !dbg !2412
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2336, metadata !590) #10, !dbg !2401
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2336, metadata !2352) #10, !dbg !2401
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !2401
  %7 = icmp eq i32 %0, 10, !dbg !2413
  br i1 %7, label %8, label %9, !dbg !2414

; <label>:8:                                      ; preds = %2
  tail call void @abort() #14, !dbg !2415, !noalias !2416
  unreachable, !dbg !2415

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2336, metadata !2352) #10, !dbg !2401
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2419
  store i32 %0, i32* %10, align 8, !dbg !2419, !alias.scope !2416
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2419
  %12 = bitcast i32* %11 to i8*, !dbg !2419
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #10, !dbg !2419
  call void @llvm.lifetime.end(i64 52, i8* nonnull %6), !dbg !2420
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2335, metadata !1452) #10, !dbg !2410
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !2421
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10, !dbg !2422
  ret i8* %13, !dbg !2423
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2424 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2336, metadata !2342), !dbg !2431
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2428, metadata !590), !dbg !2434
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2429, metadata !590), !dbg !2435
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2430, metadata !590), !dbg !2436
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2369, metadata !590) #10, !dbg !2437
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2370, metadata !590) #10, !dbg !2438
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2371, metadata !590) #10, !dbg !2439
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2372, metadata !590) #10, !dbg !2440
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2441
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !2441
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2373, metadata !1452) #10, !dbg !2442
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2341, metadata !590) #10, !dbg !2443
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2444
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !2444
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2336, metadata !590) #10, !dbg !2431
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2336, metadata !2352) #10, !dbg !2431
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2431
  %8 = icmp eq i32 %0, 10, !dbg !2445
  br i1 %8, label %9, label %10, !dbg !2446

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14, !dbg !2447, !noalias !2448
  unreachable, !dbg !2447

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2336, metadata !2352) #10, !dbg !2431
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2451
  store i32 %0, i32* %11, align 8, !dbg !2451, !alias.scope !2448
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2451
  %13 = bitcast i32* %12 to i8*, !dbg !2451
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !2451
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !2452
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2373, metadata !1452) #10, !dbg !2442
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #10, !dbg !2453
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !2454
  ret i8* %14, !dbg !2455
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !2456 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2460, metadata !590), !dbg !2464
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2461, metadata !590), !dbg !2465
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2462, metadata !590), !dbg !2466
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2467
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10, !dbg !2467
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2468, !tbaa.struct !2469
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2463, metadata !1452), !dbg !2470
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !920, metadata !590), !dbg !2471
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !921, metadata !590), !dbg !2473
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !922, metadata !590), !dbg !2474
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !923, metadata !590), !dbg !2475
  %6 = lshr i8 %2, 5, !dbg !2476
  %7 = zext i8 %6 to i64, !dbg !2476
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2477
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !924, metadata !590), !dbg !2478
  %9 = and i8 %2, 31, !dbg !2479
  %10 = zext i8 %9 to i32, !dbg !2480
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !926, metadata !590), !dbg !2481
  %11 = load i32, i32* %8, align 4, !dbg !2482, !tbaa !663
  %12 = lshr i32 %11, %10, !dbg !2483
  %13 = and i32 %12, 1, !dbg !2484
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !927, metadata !590), !dbg !2485
  %14 = xor i32 %13, 1, !dbg !2486
  %15 = shl i32 %14, %10, !dbg !2487
  %16 = xor i32 %15, %11, !dbg !2488
  store i32 %16, i32* %8, align 4, !dbg !2488, !tbaa !663
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2463, metadata !1452), !dbg !2470
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2489
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10, !dbg !2490
  ret i8* %17, !dbg !2491
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !2492 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2496, metadata !590), !dbg !2498
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2497, metadata !590), !dbg !2499
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2460, metadata !590) #10, !dbg !2500
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2461, metadata !590) #10, !dbg !2502
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2462, metadata !590) #10, !dbg !2503
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2504
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #10, !dbg !2504
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2505, !tbaa.struct !2469
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2463, metadata !1452) #10, !dbg !2506
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !920, metadata !590) #10, !dbg !2507
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !921, metadata !590) #10, !dbg !2509
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !922, metadata !590) #10, !dbg !2510
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !923, metadata !590) #10, !dbg !2511
  %5 = lshr i8 %1, 5, !dbg !2512
  %6 = zext i8 %5 to i64, !dbg !2512
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2513
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !924, metadata !590) #10, !dbg !2514
  %8 = and i8 %1, 31, !dbg !2515
  %9 = zext i8 %8 to i32, !dbg !2516
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !926, metadata !590) #10, !dbg !2517
  %10 = load i32, i32* %7, align 4, !dbg !2518, !tbaa !663
  %11 = lshr i32 %10, %9, !dbg !2519
  %12 = and i32 %11, 1, !dbg !2520
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !927, metadata !590) #10, !dbg !2521
  %13 = xor i32 %12, 1, !dbg !2522
  %14 = shl i32 %13, %9, !dbg !2523
  %15 = xor i32 %14, %10, !dbg !2524
  store i32 %15, i32* %7, align 4, !dbg !2524, !tbaa !663
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2463, metadata !1452) #10, !dbg !2506
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #10, !dbg !2525
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #10, !dbg !2526
  ret i8* %16, !dbg !2527
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !2528 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2530, metadata !590), !dbg !2531
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2496, metadata !590) #10, !dbg !2532
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2497, metadata !590) #10, !dbg !2534
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2460, metadata !590) #10, !dbg !2535
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2461, metadata !590) #10, !dbg !2537
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2462, metadata !590) #10, !dbg !2538
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2539
  call void @llvm.lifetime.start(i64 56, i8* nonnull %3) #10, !dbg !2539
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2540, !tbaa.struct !2469
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2463, metadata !1452) #10, !dbg !2541
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !920, metadata !590) #10, !dbg !2542
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !921, metadata !590) #10, !dbg !2544
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !922, metadata !590) #10, !dbg !2545
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !923, metadata !590) #10, !dbg !2546
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2547
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !924, metadata !590) #10, !dbg !2548
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !926, metadata !590) #10, !dbg !2549
  %5 = load i32, i32* %4, align 4, !dbg !2550, !tbaa !663
  %6 = or i32 %5, 67108864, !dbg !2551
  store i32 %6, i32* %4, align 4, !dbg !2551, !tbaa !663
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2463, metadata !1452) #10, !dbg !2541
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #10, !dbg !2552
  call void @llvm.lifetime.end(i64 56, i8* nonnull %3) #10, !dbg !2553
  ret i8* %7, !dbg !2554
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !2555 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2557, metadata !590), !dbg !2559
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2558, metadata !590), !dbg !2560
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2460, metadata !590) #10, !dbg !2561
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2461, metadata !590) #10, !dbg !2563
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2462, metadata !590) #10, !dbg !2564
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2565
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #10, !dbg !2565
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2566, !tbaa.struct !2469
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2463, metadata !1452) #10, !dbg !2567
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !920, metadata !590) #10, !dbg !2568
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !921, metadata !590) #10, !dbg !2570
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !922, metadata !590) #10, !dbg !2571
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !923, metadata !590) #10, !dbg !2572
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2573
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !924, metadata !590) #10, !dbg !2574
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !926, metadata !590) #10, !dbg !2575
  %6 = load i32, i32* %5, align 4, !dbg !2576, !tbaa !663
  %7 = or i32 %6, 67108864, !dbg !2577
  store i32 %7, i32* %5, align 4, !dbg !2577, !tbaa !663
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2463, metadata !1452) #10, !dbg !2567
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #10, !dbg !2578
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #10, !dbg !2579
  ret i8* %8, !dbg !2580
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !2581 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2336, metadata !2342), !dbg !2587
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2583, metadata !590), !dbg !2589
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2584, metadata !590), !dbg !2590
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2585, metadata !590), !dbg !2591
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2592
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10, !dbg !2592
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2341, metadata !590) #10, !dbg !2593
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2594
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !2594
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2336, metadata !590) #10, !dbg !2587
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2336, metadata !2352) #10, !dbg !2587
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2587
  %9 = icmp eq i32 %1, 10, !dbg !2595
  br i1 %9, label %10, label %11, !dbg !2596

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !2597, !noalias !2598
  unreachable, !dbg !2597

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2336, metadata !2352) #10, !dbg !2587
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !2601
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !2601
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !2602
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2603
  store i32 %1, i32* %13, align 8, !dbg !2603
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2603
  %15 = bitcast i32* %14 to i8*, !dbg !2603
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !2603
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2586, metadata !1452), !dbg !2604
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !920, metadata !590), !dbg !2605
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !921, metadata !590), !dbg !2607
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !922, metadata !590), !dbg !2608
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !923, metadata !590), !dbg !2609
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !2610
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !924, metadata !590), !dbg !2611
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !926, metadata !590), !dbg !2612
  %17 = load i32, i32* %16, align 4, !dbg !2613, !tbaa !663
  %18 = or i32 %17, 67108864, !dbg !2614
  store i32 %18, i32* %16, align 4, !dbg !2614, !tbaa !663
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2586, metadata !1452), !dbg !2604
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2615
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10, !dbg !2616
  ret i8* %19, !dbg !2617
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !2618 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2622, metadata !590), !dbg !2626
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2623, metadata !590), !dbg !2627
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2624, metadata !590), !dbg !2628
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2625, metadata !590), !dbg !2629
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2630, metadata !590) #10, !dbg !2640
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2635, metadata !590) #10, !dbg !2642
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2636, metadata !590) #10, !dbg !2643
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2637, metadata !590) #10, !dbg !2644
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2638, metadata !590) #10, !dbg !2645
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2646
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !2646
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2647, !tbaa.struct !2469
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2639, metadata !1452) #10, !dbg !2648
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !970, metadata !590) #10, !dbg !2649
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !971, metadata !590) #10, !dbg !2651
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !972, metadata !590) #10, !dbg !2652
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !970, metadata !590) #10, !dbg !2649
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !970, metadata !590) #10, !dbg !2649
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2653
  store i32 10, i32* %7, align 8, !dbg !2654, !tbaa !900
  %8 = icmp ne i8* %1, null, !dbg !2655
  %9 = icmp ne i8* %2, null, !dbg !2656
  %10 = and i1 %8, %9, !dbg !2657
  br i1 %10, label %12, label %11, !dbg !2657

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14, !dbg !2658
  unreachable, !dbg !2658

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2659
  store i8* %1, i8** %13, align 8, !dbg !2660, !tbaa !989
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2661
  store i8* %2, i8** %14, align 8, !dbg !2662, !tbaa !992
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2639, metadata !1452) #10, !dbg !2648
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #10, !dbg !2663
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !2664
  ret i8* %15, !dbg !2665
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !2631 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2630, metadata !590), !dbg !2666
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2635, metadata !590), !dbg !2667
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2636, metadata !590), !dbg !2668
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2637, metadata !590), !dbg !2669
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !2638, metadata !590), !dbg !2670
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2671
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10, !dbg !2671
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2672, !tbaa.struct !2469
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2639, metadata !1452), !dbg !2673
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !970, metadata !590) #10, !dbg !2674
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !971, metadata !590) #10, !dbg !2676
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !972, metadata !590) #10, !dbg !2677
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !970, metadata !590) #10, !dbg !2674
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !970, metadata !590) #10, !dbg !2674
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2678
  store i32 10, i32* %8, align 8, !dbg !2679, !tbaa !900
  %9 = icmp ne i8* %1, null, !dbg !2680
  %10 = icmp ne i8* %2, null, !dbg !2681
  %11 = and i1 %9, %10, !dbg !2682
  br i1 %11, label %13, label %12, !dbg !2682

; <label>:12:                                     ; preds = %5
  tail call void @abort() #14, !dbg !2683
  unreachable, !dbg !2683

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2684
  store i8* %1, i8** %14, align 8, !dbg !2685, !tbaa !989
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2686
  store i8* %2, i8** %15, align 8, !dbg !2687, !tbaa !992
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2639, metadata !1452), !dbg !2673
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2688
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10, !dbg !2689
  ret i8* %16, !dbg !2690
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !2691 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2695, metadata !590), !dbg !2698
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2696, metadata !590), !dbg !2699
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2697, metadata !590), !dbg !2700
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2622, metadata !590) #10, !dbg !2701
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2623, metadata !590) #10, !dbg !2703
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2624, metadata !590) #10, !dbg !2704
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2625, metadata !590) #10, !dbg !2705
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2630, metadata !590) #10, !dbg !2706
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2635, metadata !590) #10, !dbg !2708
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2636, metadata !590) #10, !dbg !2709
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2637, metadata !590) #10, !dbg !2710
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2638, metadata !590) #10, !dbg !2711
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2712
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10, !dbg !2712
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2713, !tbaa.struct !2469
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2639, metadata !1452) #10, !dbg !2714
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !970, metadata !590) #10, !dbg !2715
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !971, metadata !590) #10, !dbg !2717
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !972, metadata !590) #10, !dbg !2718
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !970, metadata !590) #10, !dbg !2715
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !970, metadata !590) #10, !dbg !2715
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2719
  store i32 10, i32* %6, align 8, !dbg !2720, !tbaa !900
  %7 = icmp ne i8* %0, null, !dbg !2721
  %8 = icmp ne i8* %1, null, !dbg !2722
  %9 = and i1 %7, %8, !dbg !2723
  br i1 %9, label %11, label %10, !dbg !2723

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !2724
  unreachable, !dbg !2724

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2725
  store i8* %0, i8** %12, align 8, !dbg !2726, !tbaa !989
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2727
  store i8* %1, i8** %13, align 8, !dbg !2728, !tbaa !992
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2639, metadata !1452) #10, !dbg !2714
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !2729
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10, !dbg !2730
  ret i8* %14, !dbg !2731
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !2732 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2736, metadata !590), !dbg !2740
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2737, metadata !590), !dbg !2741
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2738, metadata !590), !dbg !2742
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2739, metadata !590), !dbg !2743
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2630, metadata !590) #10, !dbg !2744
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2635, metadata !590) #10, !dbg !2746
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2636, metadata !590) #10, !dbg !2747
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2637, metadata !590) #10, !dbg !2748
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2638, metadata !590) #10, !dbg !2749
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2750
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !2750
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2751, !tbaa.struct !2469
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2639, metadata !1452) #10, !dbg !2752
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !970, metadata !590) #10, !dbg !2753
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !971, metadata !590) #10, !dbg !2755
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !972, metadata !590) #10, !dbg !2756
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !970, metadata !590) #10, !dbg !2753
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !970, metadata !590) #10, !dbg !2753
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2757
  store i32 10, i32* %7, align 8, !dbg !2758, !tbaa !900
  %8 = icmp ne i8* %0, null, !dbg !2759
  %9 = icmp ne i8* %1, null, !dbg !2760
  %10 = and i1 %8, %9, !dbg !2761
  br i1 %10, label %12, label %11, !dbg !2761

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14, !dbg !2762
  unreachable, !dbg !2762

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2763
  store i8* %0, i8** %13, align 8, !dbg !2764, !tbaa !989
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2765
  store i8* %1, i8** %14, align 8, !dbg !2766, !tbaa !992
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2639, metadata !1452) #10, !dbg !2752
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #10, !dbg !2767
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !2768
  ret i8* %15, !dbg !2769
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2770 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2774, metadata !590), !dbg !2777
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2775, metadata !590), !dbg !2778
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2776, metadata !590), !dbg !2779
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2780
  ret i8* %4, !dbg !2781
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !2782 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2786, metadata !590), !dbg !2788
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2787, metadata !590), !dbg !2789
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2774, metadata !590) #10, !dbg !2790
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2775, metadata !590) #10, !dbg !2792
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2776, metadata !590) #10, !dbg !2793
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2794
  ret i8* %3, !dbg !2795
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !2796 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2800, metadata !590), !dbg !2802
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2801, metadata !590), !dbg !2803
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2774, metadata !590) #10, !dbg !2804
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2775, metadata !590) #10, !dbg !2806
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2776, metadata !590) #10, !dbg !2807
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2808
  ret i8* %3, !dbg !2809
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !2810 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2814, metadata !590), !dbg !2815
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2800, metadata !590) #10, !dbg !2816
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2801, metadata !590) #10, !dbg !2818
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2774, metadata !590) #10, !dbg !2819
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2775, metadata !590) #10, !dbg !2821
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2776, metadata !590) #10, !dbg !2822
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2823
  ret i8* %2, !dbg !2824
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !2825 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2882, metadata !590), !dbg !2888
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2883, metadata !590), !dbg !2889
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2884, metadata !590), !dbg !2890
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2885, metadata !590), !dbg !2891
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !2886, metadata !590), !dbg !2892
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !2887, metadata !590), !dbg !2893
  %7 = icmp eq i8* %1, null, !dbg !2894
  br i1 %7, label %10, label %8, !dbg !2896

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.62, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #10, !dbg !2897
  br label %12, !dbg !2897

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.63, i64 0, i64 0), i8* %2, i8* %3) #10, !dbg !2898
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.64, i64 0, i64 0), i32 5) #10, !dbg !2899
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #10, !dbg !2900
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.65, i64 0, i64 0), i32 5) #10, !dbg !2902
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #10, !dbg !2903
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
  ], !dbg !2904

; <label>:17:                                     ; preds = %12
  tail call void @abort() #14, !dbg !2905
  unreachable, !dbg !2905

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.66, i64 0, i64 0), i32 5) #10, !dbg !2907
  %20 = load i8*, i8** %4, align 8, !dbg !2907, !tbaa !598
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #10, !dbg !2908
  br label %146, !dbg !2910

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.67, i64 0, i64 0), i32 5) #10, !dbg !2911
  %24 = load i8*, i8** %4, align 8, !dbg !2911, !tbaa !598
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2911
  %26 = load i8*, i8** %25, align 8, !dbg !2911, !tbaa !598
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #10, !dbg !2912
  br label %146, !dbg !2913

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.68, i64 0, i64 0), i32 5) #10, !dbg !2914
  %30 = load i8*, i8** %4, align 8, !dbg !2914, !tbaa !598
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2914
  %32 = load i8*, i8** %31, align 8, !dbg !2914, !tbaa !598
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2914
  %34 = load i8*, i8** %33, align 8, !dbg !2914, !tbaa !598
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #10, !dbg !2915
  br label %146, !dbg !2916

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.69, i64 0, i64 0), i32 5) #10, !dbg !2917
  %38 = load i8*, i8** %4, align 8, !dbg !2917, !tbaa !598
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2917
  %40 = load i8*, i8** %39, align 8, !dbg !2917, !tbaa !598
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2917
  %42 = load i8*, i8** %41, align 8, !dbg !2917, !tbaa !598
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2917
  %44 = load i8*, i8** %43, align 8, !dbg !2917, !tbaa !598
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #10, !dbg !2918
  br label %146, !dbg !2919

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.70, i64 0, i64 0), i32 5) #10, !dbg !2920
  %48 = load i8*, i8** %4, align 8, !dbg !2920, !tbaa !598
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2920
  %50 = load i8*, i8** %49, align 8, !dbg !2920, !tbaa !598
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2920
  %52 = load i8*, i8** %51, align 8, !dbg !2920, !tbaa !598
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2920
  %54 = load i8*, i8** %53, align 8, !dbg !2920, !tbaa !598
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2920
  %56 = load i8*, i8** %55, align 8, !dbg !2920, !tbaa !598
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #10, !dbg !2921
  br label %146, !dbg !2922

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.71, i64 0, i64 0), i32 5) #10, !dbg !2923
  %60 = load i8*, i8** %4, align 8, !dbg !2923, !tbaa !598
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2923
  %62 = load i8*, i8** %61, align 8, !dbg !2923, !tbaa !598
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2923
  %64 = load i8*, i8** %63, align 8, !dbg !2923, !tbaa !598
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2923
  %66 = load i8*, i8** %65, align 8, !dbg !2923, !tbaa !598
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2923
  %68 = load i8*, i8** %67, align 8, !dbg !2923, !tbaa !598
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2923
  %70 = load i8*, i8** %69, align 8, !dbg !2923, !tbaa !598
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #10, !dbg !2924
  br label %146, !dbg !2925

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.72, i64 0, i64 0), i32 5) #10, !dbg !2926
  %74 = load i8*, i8** %4, align 8, !dbg !2926, !tbaa !598
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2926
  %76 = load i8*, i8** %75, align 8, !dbg !2926, !tbaa !598
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2926
  %78 = load i8*, i8** %77, align 8, !dbg !2926, !tbaa !598
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2926
  %80 = load i8*, i8** %79, align 8, !dbg !2926, !tbaa !598
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2926
  %82 = load i8*, i8** %81, align 8, !dbg !2926, !tbaa !598
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2926
  %84 = load i8*, i8** %83, align 8, !dbg !2926, !tbaa !598
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2926
  %86 = load i8*, i8** %85, align 8, !dbg !2926, !tbaa !598
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #10, !dbg !2927
  br label %146, !dbg !2928

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.73, i64 0, i64 0), i32 5) #10, !dbg !2929
  %90 = load i8*, i8** %4, align 8, !dbg !2929, !tbaa !598
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2929
  %92 = load i8*, i8** %91, align 8, !dbg !2929, !tbaa !598
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2929
  %94 = load i8*, i8** %93, align 8, !dbg !2929, !tbaa !598
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2929
  %96 = load i8*, i8** %95, align 8, !dbg !2929, !tbaa !598
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2929
  %98 = load i8*, i8** %97, align 8, !dbg !2929, !tbaa !598
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2929
  %100 = load i8*, i8** %99, align 8, !dbg !2929, !tbaa !598
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2929
  %102 = load i8*, i8** %101, align 8, !dbg !2929, !tbaa !598
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2929
  %104 = load i8*, i8** %103, align 8, !dbg !2929, !tbaa !598
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #10, !dbg !2930
  br label %146, !dbg !2931

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.74, i64 0, i64 0), i32 5) #10, !dbg !2932
  %108 = load i8*, i8** %4, align 8, !dbg !2932, !tbaa !598
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2932
  %110 = load i8*, i8** %109, align 8, !dbg !2932, !tbaa !598
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2932
  %112 = load i8*, i8** %111, align 8, !dbg !2932, !tbaa !598
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2932
  %114 = load i8*, i8** %113, align 8, !dbg !2932, !tbaa !598
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2932
  %116 = load i8*, i8** %115, align 8, !dbg !2932, !tbaa !598
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2932
  %118 = load i8*, i8** %117, align 8, !dbg !2932, !tbaa !598
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2932
  %120 = load i8*, i8** %119, align 8, !dbg !2932, !tbaa !598
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2932
  %122 = load i8*, i8** %121, align 8, !dbg !2932, !tbaa !598
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2932
  %124 = load i8*, i8** %123, align 8, !dbg !2932, !tbaa !598
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #10, !dbg !2933
  br label %146, !dbg !2934

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.75, i64 0, i64 0), i32 5) #10, !dbg !2935
  %128 = load i8*, i8** %4, align 8, !dbg !2935, !tbaa !598
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2935
  %130 = load i8*, i8** %129, align 8, !dbg !2935, !tbaa !598
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2935
  %132 = load i8*, i8** %131, align 8, !dbg !2935, !tbaa !598
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2935
  %134 = load i8*, i8** %133, align 8, !dbg !2935, !tbaa !598
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2935
  %136 = load i8*, i8** %135, align 8, !dbg !2935, !tbaa !598
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2935
  %138 = load i8*, i8** %137, align 8, !dbg !2935, !tbaa !598
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2935
  %140 = load i8*, i8** %139, align 8, !dbg !2935, !tbaa !598
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2935
  %142 = load i8*, i8** %141, align 8, !dbg !2935, !tbaa !598
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2935
  %144 = load i8*, i8** %143, align 8, !dbg !2935, !tbaa !598
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #10, !dbg !2936
  br label %146, !dbg !2937

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !2938
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !2939 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2943, metadata !590), !dbg !2949
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2944, metadata !590), !dbg !2950
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2945, metadata !590), !dbg !2951
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2946, metadata !590), !dbg !2952
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !2947, metadata !590), !dbg !2953
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2948, metadata !590), !dbg !2954
  br label %6, !dbg !2955

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !2948, metadata !590), !dbg !2954
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2957
  %9 = load i8*, i8** %8, align 8, !dbg !2957, !tbaa !598
  %10 = icmp eq i8* %9, null, !dbg !2960
  %11 = add i64 %7, 1, !dbg !2962
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !2948, metadata !590), !dbg !2954
  br i1 %10, label %12, label %6, !dbg !2960, !llvm.loop !2964

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !2967
  ret void, !dbg !2968
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !2969 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2980, metadata !590), !dbg !2988
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2981, metadata !590), !dbg !2989
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2982, metadata !590), !dbg !2990
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2983, metadata !590), !dbg !2991
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !2984, metadata !590), !dbg !2992
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !2993
  call void @llvm.lifetime.start(i64 80, i8* nonnull %7) #10, !dbg !2993
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2986, metadata !590), !dbg !2994
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2985, metadata !590), !dbg !2995
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2985, metadata !590), !dbg !2995
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %11 = load i32, i32* %8, align 8, !dbg !2996
  %12 = icmp ult i32 %11, 41, !dbg !2996
  br i1 %12, label %13, label %18, !dbg !2996

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !3000
  %15 = sext i32 %11 to i64, !dbg !3000
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3000
  %17 = add i32 %11, 8, !dbg !3000
  store i32 %17, i32* %8, align 8, !dbg !3000
  br label %21, !dbg !3000

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !3002
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3002
  store i8* %20, i8** %10, align 8, !dbg !3002
  br label %21, !dbg !3002

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ], !dbg !2996
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3004
  %25 = load i8*, i8** %24, align 8, !dbg !3004
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3006
  store i8* %25, i8** %26, align 16, !dbg !3007, !tbaa !598
  %27 = icmp eq i8* %25, null, !dbg !3008
  br i1 %27, label %30, label %28, !dbg !3009

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2985, metadata !590), !dbg !2995
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2985, metadata !590), !dbg !2995
  %29 = icmp ult i32 %22, 41, !dbg !2996
  br i1 %29, label %35, label %32, !dbg !2996

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3011
  call void @llvm.lifetime.end(i64 80, i8* nonnull %7) #10, !dbg !3012
  ret void, !dbg !3012

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !3002
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3002
  store i8* %34, i8** %10, align 8, !dbg !3002
  br label %40, !dbg !3002

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !3000
  %37 = sext i32 %22 to i64, !dbg !3000
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3000
  %39 = add i32 %22, 8, !dbg !3000
  store i32 %39, i32* %8, align 8, !dbg !3000
  br label %40, !dbg !3000

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ], !dbg !2996
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3004
  %44 = load i8*, i8** %43, align 8, !dbg !3004
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3006
  store i8* %44, i8** %45, align 8, !dbg !3007, !tbaa !598
  %46 = icmp eq i8* %44, null, !dbg !3008
  br i1 %46, label %30, label %47, !dbg !3009

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2985, metadata !590), !dbg !2995
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2985, metadata !590), !dbg !2995
  %48 = icmp ult i32 %41, 41, !dbg !2996
  br i1 %48, label %52, label %49, !dbg !2996

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !3002
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3002
  store i8* %51, i8** %10, align 8, !dbg !3002
  br label %57, !dbg !3002

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !3000
  %54 = sext i32 %41 to i64, !dbg !3000
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3000
  %56 = add i32 %41, 8, !dbg !3000
  store i32 %56, i32* %8, align 8, !dbg !3000
  br label %57, !dbg !3000

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ], !dbg !2996
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3004
  %61 = load i8*, i8** %60, align 8, !dbg !3004
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3006
  store i8* %61, i8** %62, align 16, !dbg !3007, !tbaa !598
  %63 = icmp eq i8* %61, null, !dbg !3008
  br i1 %63, label %30, label %64, !dbg !3009

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2985, metadata !590), !dbg !2995
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2985, metadata !590), !dbg !2995
  %65 = icmp ult i32 %58, 41, !dbg !2996
  br i1 %65, label %69, label %66, !dbg !2996

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !3002
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3002
  store i8* %68, i8** %10, align 8, !dbg !3002
  br label %74, !dbg !3002

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !3000
  %71 = sext i32 %58 to i64, !dbg !3000
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3000
  %73 = add i32 %58, 8, !dbg !3000
  store i32 %73, i32* %8, align 8, !dbg !3000
  br label %74, !dbg !3000

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ], !dbg !2996
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3004
  %78 = load i8*, i8** %77, align 8, !dbg !3004
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3006
  store i8* %78, i8** %79, align 8, !dbg !3007, !tbaa !598
  %80 = icmp eq i8* %78, null, !dbg !3008
  br i1 %80, label %30, label %81, !dbg !3009

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2985, metadata !590), !dbg !2995
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2985, metadata !590), !dbg !2995
  %82 = icmp ult i32 %75, 41, !dbg !2996
  br i1 %82, label %86, label %83, !dbg !2996

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !3002
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3002
  store i8* %85, i8** %10, align 8, !dbg !3002
  br label %91, !dbg !3002

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !3000
  %88 = sext i32 %75 to i64, !dbg !3000
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3000
  %90 = add i32 %75, 8, !dbg !3000
  store i32 %90, i32* %8, align 8, !dbg !3000
  br label %91, !dbg !3000

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ], !dbg !2996
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3004
  %95 = load i8*, i8** %94, align 8, !dbg !3004
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3006
  store i8* %95, i8** %96, align 16, !dbg !3007, !tbaa !598
  %97 = icmp eq i8* %95, null, !dbg !3008
  br i1 %97, label %30, label %98, !dbg !3009

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2985, metadata !590), !dbg !2995
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2985, metadata !590), !dbg !2995
  %99 = icmp ult i32 %92, 41, !dbg !2996
  br i1 %99, label %103, label %100, !dbg !2996

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !3002
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3002
  store i8* %102, i8** %10, align 8, !dbg !3002
  br label %108, !dbg !3002

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !3000
  %105 = sext i32 %92 to i64, !dbg !3000
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3000
  %107 = add i32 %92, 8, !dbg !3000
  store i32 %107, i32* %8, align 8, !dbg !3000
  br label %108, !dbg !3000

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3004
  %111 = load i8*, i8** %110, align 8, !dbg !3004
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3006
  store i8* %111, i8** %112, align 8, !dbg !3007, !tbaa !598
  %113 = icmp eq i8* %111, null, !dbg !3008
  br i1 %113, label %30, label %114, !dbg !3009

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2985, metadata !590), !dbg !2995
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2985, metadata !590), !dbg !2995
  %115 = load i8*, i8** %10, align 8, !dbg !3002
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3002
  store i8* %116, i8** %10, align 8, !dbg !3002
  %117 = bitcast i8* %115 to i8**, !dbg !3004
  %118 = load i8*, i8** %117, align 8, !dbg !3004
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3006
  store i8* %118, i8** %119, align 16, !dbg !3007, !tbaa !598
  %120 = icmp eq i8* %118, null, !dbg !3008
  br i1 %120, label %30, label %121, !dbg !3009

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2985, metadata !590), !dbg !2995
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2985, metadata !590), !dbg !2995
  %122 = load i8*, i8** %10, align 8, !dbg !3002
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3002
  store i8* %123, i8** %10, align 8, !dbg !3002
  %124 = bitcast i8* %122 to i8**, !dbg !3004
  %125 = load i8*, i8** %124, align 8, !dbg !3004
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3006
  store i8* %125, i8** %126, align 8, !dbg !3007, !tbaa !598
  %127 = icmp eq i8* %125, null, !dbg !3008
  br i1 %127, label %30, label %128, !dbg !3009

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2985, metadata !590), !dbg !2995
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2985, metadata !590), !dbg !2995
  %129 = load i8*, i8** %10, align 8, !dbg !3002
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3002
  store i8* %130, i8** %10, align 8, !dbg !3002
  %131 = bitcast i8* %129 to i8**, !dbg !3004
  %132 = load i8*, i8** %131, align 8, !dbg !3004
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3006
  store i8* %132, i8** %133, align 16, !dbg !3007, !tbaa !598
  %134 = icmp eq i8* %132, null, !dbg !3008
  br i1 %134, label %30, label %135, !dbg !3009

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2985, metadata !590), !dbg !2995
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2985, metadata !590), !dbg !2995
  %136 = load i8*, i8** %10, align 8, !dbg !3002
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3002
  store i8* %137, i8** %10, align 8, !dbg !3002
  %138 = bitcast i8* %136 to i8**, !dbg !3004
  %139 = load i8*, i8** %138, align 8, !dbg !3004
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3006
  store i8* %139, i8** %140, align 8, !dbg !3007, !tbaa !598
  %141 = icmp eq i8* %139, null, !dbg !3008
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2985, metadata !590), !dbg !2995
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2985, metadata !590), !dbg !2995
  %142 = select i1 %141, i64 9, i64 10, !dbg !3009
  br label %30, !dbg !3009
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !3013 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3017, metadata !590), !dbg !3026
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3018, metadata !590), !dbg !3027
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3019, metadata !590), !dbg !3028
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3020, metadata !590), !dbg !3029
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3030
  call void @llvm.lifetime.start(i64 24, i8* nonnull %6) #10, !dbg !3030
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3021, metadata !590), !dbg !3031
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3032
  call void @llvm.va_start(i8* nonnull %6), !dbg !3032
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3033
  call void @llvm.va_end(i8* nonnull %6), !dbg !3034
  call void @llvm.lifetime.end(i64 24, i8* nonnull %6) #10, !dbg !3035
  ret void, !dbg !3035
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !3036 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.78, i64 0, i64 0), i32 5) #10, !dbg !3037
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.79, i64 0, i64 0)) #10, !dbg !3038
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0), i32 5) #10, !dbg !3040
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.80, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.81, i64 0, i64 0)) #10, !dbg !3041
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19, i64 0, i64 0), i32 5) #10, !dbg !3042
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3042, !tbaa !598
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #10, !dbg !3043
  ret void, !dbg !3044
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #12 !dbg !3045 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3049, metadata !590), !dbg !3051
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3050, metadata !590), !dbg !3052
  %3 = udiv i64 9223372036854775807, %1, !dbg !3053
  %4 = icmp ult i64 %3, %0, !dbg !3053
  br i1 %4, label %5, label %6, !dbg !3055

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !3056
  unreachable, !dbg !3056

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3057
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3058, metadata !590) #10, !dbg !3065
  %8 = tail call noalias i8* @malloc(i64 %7) #10, !dbg !3067
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3064, metadata !590) #10, !dbg !3068
  %9 = icmp eq i8* %8, null, !dbg !3069
  %10 = icmp ne i64 %7, 0, !dbg !3071
  %11 = and i1 %10, %9, !dbg !3073
  br i1 %11, label %12, label %13, !dbg !3073

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #14, !dbg !3074
  unreachable, !dbg !3074

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !3075
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !3059 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3058, metadata !590), !dbg !3076
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3077
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3064, metadata !590), !dbg !3078
  %3 = icmp eq i8* %2, null, !dbg !3079
  %4 = icmp ne i64 %0, 0, !dbg !3080
  %5 = and i1 %4, %3, !dbg !3081
  br i1 %5, label %6, label %7, !dbg !3081

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3082
  unreachable, !dbg !3082

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3083
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #12 !dbg !3084 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3088, metadata !590), !dbg !3091
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3089, metadata !590), !dbg !3092
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3090, metadata !590), !dbg !3093
  %4 = udiv i64 9223372036854775807, %2, !dbg !3094
  %5 = icmp ult i64 %4, %1, !dbg !3094
  br i1 %5, label %6, label %7, !dbg !3096

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #14, !dbg !3097
  unreachable, !dbg !3097

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3098
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3099, metadata !590) #10, !dbg !3105
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !3104, metadata !590) #10, !dbg !3107
  %9 = icmp eq i64 %8, 0, !dbg !3108
  %10 = icmp ne i8* %0, null, !dbg !3110
  %11 = and i1 %10, %9, !dbg !3112
  br i1 %11, label %12, label %13, !dbg !3112

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #10, !dbg !3113
  br label %19, !dbg !3115

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #10, !dbg !3116
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !3099, metadata !590) #10, !dbg !3105
  %15 = icmp eq i8* %14, null, !dbg !3117
  %16 = icmp ne i64 %8, 0, !dbg !3119
  %17 = and i1 %16, %15, !dbg !3121
  br i1 %17, label %18, label %19, !dbg !3121

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !3122
  unreachable, !dbg !3122

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !3123
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !3100 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3099, metadata !590), !dbg !3124
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3104, metadata !590), !dbg !3125
  %3 = icmp eq i64 %1, 0, !dbg !3126
  %4 = icmp ne i8* %0, null, !dbg !3127
  %5 = and i1 %4, %3, !dbg !3128
  br i1 %5, label %6, label %7, !dbg !3128

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #10, !dbg !3129
  br label %13, !dbg !3130

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #10, !dbg !3131
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3099, metadata !590), !dbg !3124
  %9 = icmp eq i8* %8, null, !dbg !3132
  %10 = icmp ne i64 %1, 0, !dbg !3133
  %11 = and i1 %10, %9, !dbg !3134
  br i1 %11, label %12, label %13, !dbg !3134

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #14, !dbg !3135
  unreachable, !dbg !3135

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !3136
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #12 !dbg !550 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !555, metadata !590), !dbg !3137
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !556, metadata !590), !dbg !3138
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !557, metadata !590), !dbg !3139
  %4 = load i64, i64* %1, align 8, !dbg !3140, !tbaa !2141
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !558, metadata !590), !dbg !3141
  %5 = icmp eq i8* %0, null, !dbg !3142
  br i1 %5, label %6, label %13, !dbg !3144

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3145
  br i1 %7, label %8, label %17, !dbg !3148

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3149
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !558, metadata !590), !dbg !3141
  %10 = icmp ugt i64 %2, 128, !dbg !3151
  %11 = zext i1 %10 to i64, !dbg !3151
  %12 = add nuw nsw i64 %9, %11, !dbg !3152
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !558, metadata !590), !dbg !3141
  br label %17, !dbg !3153

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !3154
  %15 = icmp ugt i64 %14, %4, !dbg !3157
  br i1 %15, label %20, label %16, !dbg !3158

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !3159
  unreachable, !dbg !3159

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !558, metadata !590), !dbg !3141
  store i64 %18, i64* %1, align 8, !dbg !3160, !tbaa !2141
  %19 = mul i64 %18, %2, !dbg !3161
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3099, metadata !590) #10, !dbg !3162
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3104, metadata !590) #10, !dbg !3164
  br label %27, !dbg !3165

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !3166
  %22 = add i64 %4, 1, !dbg !3167
  %23 = add i64 %22, %21, !dbg !3168
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !558, metadata !590), !dbg !3141
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !558, metadata !590), !dbg !3141
  store i64 %23, i64* %1, align 8, !dbg !3160, !tbaa !2141
  %24 = mul i64 %23, %2, !dbg !3161
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3099, metadata !590) #10, !dbg !3162
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3104, metadata !590) #10, !dbg !3164
  %25 = icmp eq i64 %24, 0, !dbg !3169
  br i1 %25, label %26, label %27, !dbg !3165

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #10, !dbg !3170
  br label %34, !dbg !3171

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #10, !dbg !3172
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3099, metadata !590) #10, !dbg !3162
  %30 = icmp eq i8* %29, null, !dbg !3173
  %31 = icmp ne i64 %28, 0, !dbg !3174
  %32 = and i1 %31, %30, !dbg !3175
  br i1 %32, label %33, label %34, !dbg !3175

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #14, !dbg !3176
  unreachable, !dbg !3176

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !3177
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #12 !dbg !3178 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3180, metadata !590), !dbg !3181
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3058, metadata !590) #10, !dbg !3182
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3184
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3064, metadata !590) #10, !dbg !3185
  %3 = icmp eq i8* %2, null, !dbg !3186
  %4 = icmp ne i64 %0, 0, !dbg !3187
  %5 = and i1 %4, %3, !dbg !3188
  br i1 %5, label %6, label %7, !dbg !3188

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3189
  unreachable, !dbg !3189

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3190
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !3191 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3195, metadata !590), !dbg !3197
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !3196, metadata !590), !dbg !3198
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !555, metadata !590) #10, !dbg !3199
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !556, metadata !590) #10, !dbg !3201
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !557, metadata !590) #10, !dbg !3202
  %3 = load i64, i64* %1, align 8, !dbg !3203, !tbaa !2141
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !558, metadata !590) #10, !dbg !3204
  %4 = icmp eq i8* %0, null, !dbg !3205
  br i1 %4, label %5, label %8, !dbg !3206

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3207
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !558, metadata !590) #10, !dbg !3204
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !558, metadata !590) #10, !dbg !3204
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3208
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !558, metadata !590) #10, !dbg !3204
  store i64 %7, i64* %1, align 8, !dbg !3209, !tbaa !2141
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3099, metadata !590) #10, !dbg !3210
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3104, metadata !590) #10, !dbg !3212
  br label %17, !dbg !3213

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !3214
  br i1 %9, label %11, label %10, !dbg !3215

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #14, !dbg !3216
  unreachable, !dbg !3216

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !3217
  %13 = add i64 %3, 1, !dbg !3218
  %14 = add i64 %13, %12, !dbg !3219
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !558, metadata !590) #10, !dbg !3204
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !558, metadata !590) #10, !dbg !3204
  store i64 %14, i64* %1, align 8, !dbg !3209, !tbaa !2141
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3099, metadata !590) #10, !dbg !3210
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3104, metadata !590) #10, !dbg !3212
  %15 = icmp eq i64 %14, 0, !dbg !3220
  br i1 %15, label %16, label %17, !dbg !3213

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #10, !dbg !3221
  br label %24, !dbg !3222

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #10, !dbg !3223
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !3099, metadata !590) #10, !dbg !3210
  %20 = icmp eq i8* %19, null, !dbg !3224
  %21 = icmp ne i64 %18, 0, !dbg !3225
  %22 = and i1 %21, %20, !dbg !3226
  br i1 %22, label %23, label %24, !dbg !3226

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #14, !dbg !3227
  unreachable, !dbg !3227

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !3228
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !3229 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3231, metadata !590), !dbg !3232
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3058, metadata !590) #10, !dbg !3233
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3235
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3064, metadata !590) #10, !dbg !3236
  %3 = icmp eq i8* %2, null, !dbg !3237
  %4 = icmp ne i64 %0, 0, !dbg !3238
  %5 = and i1 %4, %3, !dbg !3239
  br i1 %5, label %6, label %7, !dbg !3239

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3240
  unreachable, !dbg !3240

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !3241
  ret i8* %2, !dbg !3242
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !3243 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3245, metadata !590), !dbg !3248
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3246, metadata !590), !dbg !3249
  %3 = udiv i64 9223372036854775807, %1, !dbg !3250
  %4 = icmp ult i64 %3, %0, !dbg !3250
  br i1 %4, label %8, label %5, !dbg !3252

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #10, !dbg !3253
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3247, metadata !590), !dbg !3255
  %7 = icmp eq i8* %6, null, !dbg !3256
  br i1 %7, label %8, label %9, !dbg !3257

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #14, !dbg !3259
  unreachable, !dbg !3259

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !3260
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !3261 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3265, metadata !590), !dbg !3267
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3266, metadata !590), !dbg !3268
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3058, metadata !590) #10, !dbg !3269
  %3 = tail call noalias i8* @malloc(i64 %1) #10, !dbg !3271
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3064, metadata !590) #10, !dbg !3272
  %4 = icmp eq i8* %3, null, !dbg !3273
  %5 = icmp ne i64 %1, 0, !dbg !3274
  %6 = and i1 %5, %4, !dbg !3275
  br i1 %6, label %7, label %8, !dbg !3275

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !3276
  unreachable, !dbg !3276

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !3277
  ret i8* %3, !dbg !3278
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !3279 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3281, metadata !590), !dbg !3282
  %2 = tail call i64 @strlen(i8* %0) #13, !dbg !3283
  %3 = add i64 %2, 1, !dbg !3284
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3265, metadata !590) #10, !dbg !3285
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3266, metadata !590) #10, !dbg !3288
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3058, metadata !590) #10, !dbg !3289
  %4 = tail call noalias i8* @malloc(i64 %3) #10, !dbg !3291
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !3064, metadata !590) #10, !dbg !3292
  %5 = icmp eq i8* %4, null, !dbg !3293
  %6 = icmp ne i64 %3, 0, !dbg !3294
  %7 = and i1 %6, %5, !dbg !3295
  br i1 %7, label %8, label %9, !dbg !3295

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3296
  unreachable, !dbg !3296

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #10, !dbg !3297
  ret i8* %4, !dbg !3298
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !3299 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3301, !tbaa !663
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.92, i64 0, i64 0), i32 5) #10, !dbg !3302
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.93, i64 0, i64 0), i8* %2) #10, !dbg !3303
  tail call void @abort() #14, !dbg !3305
  unreachable, !dbg !3305
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !3306 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3309, metadata !590), !dbg !3315
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3310, metadata !590), !dbg !3316
  %3 = icmp eq i64 %0, 0, !dbg !3317
  %4 = icmp eq i64 %1, 0, !dbg !3318
  %5 = or i1 %3, %4, !dbg !3320
  br i1 %5, label %12, label %6, !dbg !3320

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3321
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3312, metadata !590), !dbg !3322
  %8 = udiv i64 %7, %1, !dbg !3323
  %9 = icmp eq i64 %8, %0, !dbg !3325
  br i1 %9, label %12, label %10, !dbg !3326

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #1, !dbg !3327
  store i32 12, i32* %11, align 4, !dbg !3329, !tbaa !663
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3309, metadata !590), !dbg !3315
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !3310, metadata !590), !dbg !3316
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #10, !dbg !3330
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !3311, metadata !590), !dbg !3331
  br label %16, !dbg !3332

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !3333
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !3334 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !3351, metadata !590), !dbg !3360
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3352, metadata !590), !dbg !3361
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3353, metadata !590), !dbg !3362
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !3354, metadata !590), !dbg !3363
  %6 = bitcast i32* %5 to i8*, !dbg !3364
  call void @llvm.lifetime.start(i64 4, i8* nonnull %6) #10, !dbg !3364
  %7 = icmp eq i32* %0, null, !dbg !3365
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !3351, metadata !590), !dbg !3360
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3367
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !3351, metadata !590), !dbg !3360
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #10, !dbg !3368
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !3355, metadata !590), !dbg !3369
  %10 = icmp ugt i64 %9, -3, !dbg !3370
  %11 = icmp ne i64 %2, 0, !dbg !3371
  %12 = and i1 %11, %10, !dbg !3373
  br i1 %12, label %13, label %18, !dbg !3373

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #10, !dbg !3374
  br i1 %14, label %18, label %15, !dbg !3376

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3378, !tbaa !1127
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !3357, metadata !590), !dbg !3379
  %17 = zext i8 %16 to i32, !dbg !3380
  store i32 %17, i32* %8, align 4, !dbg !3381, !tbaa !663
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end(i64 4, i8* nonnull %6) #10, !dbg !3382
  ret i64 %19, !dbg !3382
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !3383 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3428, metadata !590), !dbg !3433
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #10, !dbg !3434
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3435, metadata !590), !dbg !3439
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3441
  %4 = load i32, i32* %3, align 8, !dbg !3441, !tbaa !3442
  %5 = and i32 %4, 32, !dbg !3441
  %6 = icmp eq i32 %5, 0, !dbg !3444
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #10, !dbg !3445
  %8 = icmp ne i32 %7, 0, !dbg !3446
  br i1 %6, label %9, label %19, !dbg !3447

; <label>:9:                                      ; preds = %1
  %10 = xor i1 %8, true, !dbg !3449
  %11 = icmp ne i64 %2, 0, !dbg !3449
  %12 = or i1 %11, %10, !dbg !3449
  %13 = sext i1 %8 to i32, !dbg !3449
  br i1 %12, label %22, label %14, !dbg !3449

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #1, !dbg !3451
  %16 = load i32, i32* %15, align 4, !dbg !3451, !tbaa !663
  %17 = icmp ne i32 %16, 9, !dbg !3453
  %18 = sext i1 %17 to i32, !dbg !3453
  br label %22, !dbg !3453

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !3455

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #1, !dbg !3457
  store i32 0, i32* %21, align 4, !dbg !3459, !tbaa !663
  br label %22, !dbg !3457

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !3460
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !3461 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3466, metadata !590), !dbg !3486
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3467, metadata !590), !dbg !3487
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #10, !dbg !3488
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3468, metadata !590), !dbg !3489
  %3 = icmp eq i8* %2, null, !dbg !3490
  br i1 %3, label %15, label %4, !dbg !3491

; <label>:4:                                      ; preds = %1
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3476, metadata !590), !dbg !3492
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3477, metadata !590), !dbg !3493
  %5 = load i8, i8* %2, align 1, !dbg !3494, !tbaa !1127
  %6 = icmp eq i8 %5, 67, !dbg !3496
  br i1 %6, label %7, label %11, !dbg !3499

; <label>:7:                                      ; preds = %4
  %8 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !3501
  %9 = load i8, i8* %8, align 1, !dbg !3501, !tbaa !1127
  %10 = icmp eq i8 %9, 0, !dbg !3504
  br i1 %10, label %14, label %11, !dbg !3506

; <label>:11:                                     ; preds = %4, %7
  tail call void @llvm.dbg.value(metadata i64 5, i64 0, metadata !3482, metadata !590), !dbg !3508
  %12 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.102, i64 0, i64 0)) #10, !dbg !3509
  %13 = icmp eq i32 %12, 0, !dbg !3511
  br i1 %13, label %14, label %15, !dbg !3513

; <label>:14:                                     ; preds = %11, %7
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3467, metadata !590), !dbg !3487
  br label %15, !dbg !3515

; <label>:15:                                     ; preds = %1, %11, %14
  %16 = phi i1 [ false, %14 ], [ true, %11 ], [ true, %1 ]
  ret i1 %16, !dbg !3516
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !3517 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !3529, metadata !590), !dbg !3603
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !3596, metadata !590), !dbg !3605
  %3 = tail call i8* @nl_langinfo(i32 14) #10, !dbg !3606
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3521, metadata !590), !dbg !3607
  %4 = icmp eq i8* %3, null, !dbg !3608
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.105, i64 0, i64 0), i8* %3, !dbg !3610
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !3521, metadata !590), !dbg !3607
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !3611, !tbaa !598
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3543, metadata !590) #10, !dbg !3612
  %7 = icmp eq i8* %6, null, !dbg !3613
  br i1 %7, label %8, label %127, !dbg !3614

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.106, i64 0, i64 0)) #10, !dbg !3615
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !3544, metadata !590) #10, !dbg !3616
  %10 = icmp eq i8* %9, null, !dbg !3617
  br i1 %10, label %14, label %11, !dbg !3619

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !3620, !tbaa !1127
  %13 = icmp eq i8 %12, 0, !dbg !3622
  br i1 %13, label %14, label %15, !dbg !3623

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !3625

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.107, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !3544, metadata !590) #10, !dbg !3616
  %17 = tail call i64 @strlen(i8* nonnull %16) #13, !dbg !3626
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !3547, metadata !590) #10, !dbg !3627
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !3549, metadata !590) #10, !dbg !3628
  %18 = icmp eq i64 %17, 0, !dbg !3629
  br i1 %18, label %24, label %19, !dbg !3630

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !3631
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !3631
  %22 = load i8, i8* %21, align 1, !dbg !3631, !tbaa !1127
  %23 = icmp ne i8 %22, 47, !dbg !3633
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !3634
  %27 = add i64 %17, 14, !dbg !3635
  %28 = add i64 %27, %26, !dbg !3636
  %29 = tail call noalias i8* @malloc(i64 %28) #10, !dbg !3637
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3546, metadata !590) #10, !dbg !3638
  %30 = icmp eq i8* %29, null, !dbg !3639
  br i1 %30, label %125, label %31, !dbg !3639

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #10, !dbg !3640
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !3643

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !3644, !tbaa !1127
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !3646
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.108, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !3647
  br label %37, !dbg !3648

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !3646
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.108, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !3647
  br label %37, !dbg !3648

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #10, !dbg !3649
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !3551, metadata !590) #10, !dbg !3650
  %39 = icmp slt i32 %38, 0, !dbg !3651
  br i1 %39, label %123, label %40, !dbg !3652

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.109, i64 0, i64 0)) #10, !dbg !3653
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3552, metadata !590) #10, !dbg !3654
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !3655
  br i1 %42, label %48, label %43, !dbg !3656

; <label>:43:                                     ; preds = %40
  %44 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %45 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %46 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %47 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !3657

; <label>:48:                                     ; preds = %40
  %49 = tail call i32 @close(i32 %38) #10, !dbg !3658
  br label %123, !dbg !3660

; <label>:50:                                     ; preds = %111, %43
  %51 = phi i64 [ %112, %111 ], [ 0, %43 ]
  %52 = phi i8* [ %113, %111 ], [ null, %43 ]
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3593, metadata !590) #10, !dbg !3657
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !3594, metadata !590) #10, !dbg !3661
  call void @llvm.lifetime.start(i64 51, i8* nonnull %44) #10, !dbg !3662
  call void @llvm.lifetime.start(i64 51, i8* nonnull %45) #10, !dbg !3663
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3664, metadata !590) #10, !dbg !3669
  %53 = load i8*, i8** %46, align 8, !dbg !3671, !tbaa !3672
  %54 = load i8*, i8** %47, align 8, !dbg !3671, !tbaa !3673
  %55 = icmp ult i8* %53, %54, !dbg !3671
  br i1 %55, label %58, label %56, !dbg !3671, !prof !3674

; <label>:56:                                     ; preds = %50
  %57 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !3675
  br label %62, !dbg !3675

; <label>:58:                                     ; preds = %50
  %59 = getelementptr inbounds i8, i8* %53, i64 1, !dbg !3677
  store i8* %59, i8** %46, align 8, !dbg !3677, !tbaa !3672
  %60 = load i8, i8* %53, align 1, !dbg !3677, !tbaa !1127
  %61 = zext i8 %60 to i32, !dbg !3677
  br label %62, !dbg !3677

; <label>:62:                                     ; preds = %58, %56
  %63 = phi i32 [ %57, %56 ], [ %61, %58 ], !dbg !3679
  call void @llvm.dbg.value(metadata i32 %63, i64 0, metadata !3595, metadata !590) #10, !dbg !3681
  switch i32 %63, label %77 [
    i32 -1, label %115
    i32 32, label %111
    i32 10, label %111
    i32 9, label %111
    i32 35, label %64
  ], !dbg !3682

; <label>:64:                                     ; preds = %62
  br label %65, !dbg !3683

; <label>:65:                                     ; preds = %64, %75
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3664, metadata !590) #10, !dbg !3683
  %66 = load i8*, i8** %46, align 8, !dbg !3687, !tbaa !3672
  %67 = load i8*, i8** %47, align 8, !dbg !3687, !tbaa !3673
  %68 = icmp ult i8* %66, %67, !dbg !3687
  br i1 %68, label %71, label %69, !dbg !3687, !prof !3674

; <label>:69:                                     ; preds = %65
  %70 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !3688
  br label %75, !dbg !3688

; <label>:71:                                     ; preds = %65
  %72 = getelementptr inbounds i8, i8* %66, i64 1, !dbg !3689
  store i8* %72, i8** %46, align 8, !dbg !3689, !tbaa !3672
  %73 = load i8, i8* %66, align 1, !dbg !3689, !tbaa !1127
  %74 = zext i8 %73 to i32, !dbg !3689
  br label %75, !dbg !3689

; <label>:75:                                     ; preds = %71, %69
  %76 = phi i32 [ %70, %69 ], [ %74, %71 ], !dbg !3690
  call void @llvm.dbg.value(metadata i32 %76, i64 0, metadata !3595, metadata !590) #10, !dbg !3681
  switch i32 %76, label %65 [
    i32 -1, label %114
    i32 10, label %110
  ], !dbg !3691, !llvm.loop !3693

; <label>:77:                                     ; preds = %62
  %78 = call i32 @ungetc(i32 %63, %struct._IO_FILE* nonnull %41) #10, !dbg !3696
  %79 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.110, i64 0, i64 0), i8* nonnull %44, i8* nonnull %45) #10, !dbg !3697
  %80 = icmp slt i32 %79, 2, !dbg !3699
  br i1 %80, label %115, label %81, !dbg !3700

; <label>:81:                                     ; preds = %77
  %82 = call i64 @strlen(i8* nonnull %44) #13, !dbg !3701
  call void @llvm.dbg.value(metadata i64 %82, i64 0, metadata !3600, metadata !590) #10, !dbg !3702
  %83 = call i64 @strlen(i8* nonnull %45) #13, !dbg !3703
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !3601, metadata !590) #10, !dbg !3704
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3602, metadata !590) #10, !dbg !3705
  %84 = icmp eq i64 %51, 0, !dbg !3706
  %85 = add i64 %82, 1
  %86 = add i64 %85, %83
  %87 = add i64 %86, 1
  br i1 %84, label %88, label %91, !dbg !3708

; <label>:88:                                     ; preds = %81
  call void @llvm.dbg.value(metadata i64 %87, i64 0, metadata !3594, metadata !590) #10, !dbg !3661
  %89 = add i64 %86, 2, !dbg !3709
  %90 = call noalias i8* @malloc(i64 %89) #10, !dbg !3711
  call void @llvm.dbg.value(metadata i8* %90, i64 0, metadata !3593, metadata !590) #10, !dbg !3657
  br label %95, !dbg !3712

; <label>:91:                                     ; preds = %81
  %92 = add i64 %87, %51, !dbg !3713
  call void @llvm.dbg.value(metadata i64 %92, i64 0, metadata !3594, metadata !590) #10, !dbg !3661
  %93 = add i64 %92, 1, !dbg !3715
  %94 = call i8* @realloc(i8* %52, i64 %93) #10, !dbg !3716
  call void @llvm.dbg.value(metadata i8* %94, i64 0, metadata !3593, metadata !590) #10, !dbg !3657
  br label %95

; <label>:95:                                     ; preds = %91, %88
  %96 = phi i64 [ %87, %88 ], [ %92, %91 ]
  %97 = phi i8* [ %90, %88 ], [ %94, %91 ]
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !3593, metadata !590) #10, !dbg !3657
  call void @llvm.dbg.value(metadata i64 %96, i64 0, metadata !3594, metadata !590) #10, !dbg !3661
  %98 = icmp eq i8* %97, null, !dbg !3717
  br i1 %98, label %99, label %100, !dbg !3719

; <label>:99:                                     ; preds = %95
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3594, metadata !590) #10, !dbg !3661
  call void @free(i8* %52) #10, !dbg !3720
  br label %116, !dbg !3722

; <label>:100:                                    ; preds = %95
  %101 = getelementptr inbounds i8, i8* %97, i64 %96, !dbg !3723
  %102 = xor i64 %83, -1, !dbg !3724
  %103 = getelementptr inbounds i8, i8* %101, i64 %102, !dbg !3724
  %104 = xor i64 %82, -1, !dbg !3725
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !3725
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !3726, metadata !590) #10, !dbg !3735
  call void @llvm.dbg.value(metadata i8* %44, i64 0, metadata !3734, metadata !590) #10, !dbg !3735
  %106 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false) #10, !dbg !3737
  %107 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %44, i64 %106) #10, !dbg !3738
  call void @llvm.dbg.value(metadata i8* %103, i64 0, metadata !3726, metadata !590) #10, !dbg !3739
  call void @llvm.dbg.value(metadata i8* %45, i64 0, metadata !3734, metadata !590) #10, !dbg !3739
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %103, i1 false) #10, !dbg !3741
  %109 = call i8* @__strcpy_chk(i8* nonnull %103, i8* nonnull %45, i64 %108) #10, !dbg !3742
  br label %111, !dbg !3743

; <label>:110:                                    ; preds = %75
  br label %111, !dbg !3657

; <label>:111:                                    ; preds = %110, %100, %62, %62, %62
  %112 = phi i64 [ %96, %100 ], [ %51, %62 ], [ %51, %62 ], [ %51, %62 ], [ %51, %110 ]
  %113 = phi i8* [ %97, %100 ], [ %52, %62 ], [ %52, %62 ], [ %52, %62 ], [ %52, %110 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !3593, metadata !590) #10, !dbg !3657
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !3594, metadata !590) #10, !dbg !3661
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #10, !dbg !3743
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #10, !dbg !3743
  br label %50

; <label>:114:                                    ; preds = %75
  br label %116, !dbg !3657

; <label>:115:                                    ; preds = %62, %77
  br label %116, !dbg !3657

; <label>:116:                                    ; preds = %115, %114, %99
  %117 = phi i64 [ 0, %99 ], [ %51, %114 ], [ %51, %115 ]
  %118 = phi i8* [ null, %99 ], [ %52, %114 ], [ %52, %115 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !3593, metadata !590) #10, !dbg !3657
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !3594, metadata !590) #10, !dbg !3661
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #10, !dbg !3743
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #10, !dbg !3743
  %119 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #10, !dbg !3744
  %120 = icmp eq i64 %117, 0, !dbg !3745
  br i1 %120, label %123, label %121, !dbg !3747

; <label>:121:                                    ; preds = %116
  %122 = getelementptr inbounds i8, i8* %118, i64 %117, !dbg !3748
  store i8 0, i8* %122, align 1, !dbg !3750, !tbaa !1127
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !3543, metadata !590) #10, !dbg !3612
  br label %123

; <label>:123:                                    ; preds = %121, %116, %48, %37
  %124 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.105, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.105, i64 0, i64 0), %48 ], [ %118, %121 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.105, i64 0, i64 0), %116 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !3543, metadata !590) #10, !dbg !3612
  call void @free(i8* %29) #10, !dbg !3751
  br label %125

; <label>:125:                                    ; preds = %123, %24
  %126 = phi i8* [ %124, %123 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.105, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %126, i64 0, metadata !3543, metadata !590) #10, !dbg !3612
  store volatile i8* %126, i8** @charset_aliases, align 8, !dbg !3752, !tbaa !598
  br label %127, !dbg !3753

; <label>:127:                                    ; preds = %0, %125
  %128 = phi i8* [ %6, %0 ], [ %126, %125 ]
  call void @llvm.dbg.value(metadata i8* %128, i64 0, metadata !3522, metadata !590), !dbg !3754
  %129 = load i8, i8* %128, align 1, !dbg !3755, !tbaa !1127
  %130 = icmp eq i8 %129, 0, !dbg !3756
  br i1 %130, label %157, label %131, !dbg !3757

; <label>:131:                                    ; preds = %127
  br label %132, !dbg !3759

; <label>:132:                                    ; preds = %131, %147
  %133 = phi i8 [ %154, %147 ], [ %129, %131 ]
  %134 = phi i8* [ %153, %147 ], [ %128, %131 ]
  %135 = call i32 @strcmp(i8* %5, i8* %134) #10, !dbg !3759
  %136 = icmp eq i32 %135, 0, !dbg !3760
  br i1 %136, label %143, label %137, !dbg !3761

; <label>:137:                                    ; preds = %132
  %138 = icmp eq i8 %133, 42, !dbg !3762
  br i1 %138, label %139, label %147, !dbg !3764

; <label>:139:                                    ; preds = %137
  %140 = getelementptr inbounds i8, i8* %134, i64 1, !dbg !3765
  %141 = load i8, i8* %140, align 1, !dbg !3765, !tbaa !1127
  %142 = icmp eq i8 %141, 0, !dbg !3767
  br i1 %142, label %143, label %147, !dbg !3768

; <label>:143:                                    ; preds = %139, %132
  %144 = call i64 @strlen(i8* %134) #13, !dbg !3770
  %145 = getelementptr inbounds i8, i8* %134, i64 %144, !dbg !3772
  %146 = getelementptr inbounds i8, i8* %145, i64 1, !dbg !3773
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !3521, metadata !590), !dbg !3607
  br label %157, !dbg !3774

; <label>:147:                                    ; preds = %137, %139
  %148 = call i64 @strlen(i8* %134) #13, !dbg !3775
  %149 = add i64 %148, 1, !dbg !3776
  %150 = getelementptr inbounds i8, i8* %134, i64 %149, !dbg !3777
  call void @llvm.dbg.value(metadata i8* %150, i64 0, metadata !3522, metadata !590), !dbg !3754
  %151 = call i64 @strlen(i8* %150) #13, !dbg !3778
  %152 = add i64 %151, 1, !dbg !3779
  %153 = getelementptr inbounds i8, i8* %150, i64 %152, !dbg !3780
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !3522, metadata !590), !dbg !3754
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !3522, metadata !590), !dbg !3754
  %154 = load i8, i8* %153, align 1, !dbg !3755, !tbaa !1127
  %155 = icmp eq i8 %154, 0, !dbg !3756
  br i1 %155, label %156, label %132, !dbg !3757, !llvm.loop !3781

; <label>:156:                                    ; preds = %147
  br label %157, !dbg !3607

; <label>:157:                                    ; preds = %156, %127, %143
  %158 = phi i8* [ %146, %143 ], [ %5, %127 ], [ %5, %156 ]
  call void @llvm.dbg.value(metadata i8* %158, i64 0, metadata !3521, metadata !590), !dbg !3607
  %159 = load i8, i8* %158, align 1, !dbg !3784, !tbaa !1127
  %160 = icmp eq i8 %159, 0, !dbg !3786
  %161 = select i1 %160, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.111, i64 0, i64 0), i8* %158, !dbg !3787
  call void @llvm.dbg.value(metadata i8* %161, i64 0, metadata !3521, metadata !590), !dbg !3607
  ret i8* %161, !dbg !3788
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
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !3789 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3834, metadata !590), !dbg !3838
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3835, metadata !590), !dbg !3839
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3837, metadata !590), !dbg !3840
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3841
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3836, metadata !590), !dbg !3842
  %3 = icmp slt i32 %2, 0, !dbg !3843
  br i1 %3, label %4, label %6, !dbg !3845

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3846
  br label %24, !dbg !3847

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !3848
  %8 = icmp eq i32 %7, 0, !dbg !3848
  br i1 %8, label %13, label %9, !dbg !3850

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3851
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #10, !dbg !3853
  %12 = icmp eq i64 %11, -1, !dbg !3855
  br i1 %12, label %16, label %13, !dbg !3856

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #10, !dbg !3857
  %15 = icmp eq i32 %14, 0, !dbg !3857
  br i1 %15, label %16, label %18, !dbg !3858

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3835, metadata !590), !dbg !3839
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3860
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !3837, metadata !590), !dbg !3840
  br label %24, !dbg !3861

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #1, !dbg !3862
  %20 = load i32, i32* %19, align 4, !dbg !3862, !tbaa !663
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3835, metadata !590), !dbg !3839
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3835, metadata !590), !dbg !3839
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3860
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !3837, metadata !590), !dbg !3840
  %22 = icmp eq i32 %20, 0, !dbg !3863
  br i1 %22, label %24, label %23, !dbg !3861

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3865, !tbaa !663
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !3837, metadata !590), !dbg !3840
  br label %24, !dbg !3867

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !3868
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
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !3869 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3914, metadata !590), !dbg !3915
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3916
  br i1 %2, label %6, label %3, !dbg !3918

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !3919
  %5 = icmp eq i32 %4, 0, !dbg !3919
  br i1 %5, label %6, label %8, !dbg !3921

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3923
  br label %17, !dbg !3924

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3925, metadata !590) #10, !dbg !3930
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3932
  %10 = load i32, i32* %9, align 8, !dbg !3932, !tbaa !3442
  %11 = and i32 %10, 256, !dbg !3934
  %12 = icmp eq i32 %11, 0, !dbg !3934
  br i1 %12, label %15, label %13, !dbg !3935

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #10, !dbg !3936
  br label %15, !dbg !3936

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3937
  br label %17, !dbg !3938

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !3939
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !3940 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3986, metadata !590), !dbg !3992
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3987, metadata !590), !dbg !3993
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3988, metadata !590), !dbg !3994
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3995
  %5 = load i8*, i8** %4, align 8, !dbg !3995, !tbaa !3673
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3996
  %7 = load i8*, i8** %6, align 8, !dbg !3996, !tbaa !3672
  %8 = icmp eq i8* %5, %7, !dbg !3997
  br i1 %8, label %9, label %28, !dbg !3998

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3999
  %11 = load i8*, i8** %10, align 8, !dbg !3999, !tbaa !4001
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4002
  %13 = load i8*, i8** %12, align 8, !dbg !4002, !tbaa !4003
  %14 = icmp eq i8* %11, %13, !dbg !4004
  br i1 %14, label %15, label %28, !dbg !4005

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4006
  %17 = load i8*, i8** %16, align 8, !dbg !4006, !tbaa !4007
  %18 = icmp eq i8* %17, null, !dbg !4008
  br i1 %18, label %19, label %28, !dbg !4009

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !4011
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #10, !dbg !4012
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !3989, metadata !590), !dbg !4014
  %22 = icmp eq i64 %21, -1, !dbg !4015
  br i1 %22, label %30, label %23, !dbg !4017

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4018
  %25 = load i32, i32* %24, align 8, !dbg !4019, !tbaa !3442
  %26 = and i32 %25, -17, !dbg !4019
  store i32 %26, i32* %24, align 8, !dbg !4019, !tbaa !3442
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4020
  store i64 %21, i64* %27, align 8, !dbg !4021, !tbaa !4022
  br label %30, !dbg !4023

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4024
  br label %30, !dbg !4025

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !4026
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

!llvm.dbg.cu = !{!498, !2, !11, !20, !28, !46, !55, !537, !142, !545, !562, !564, !566, !569, !571, !151, !574, !576, !578}
!llvm.ident = !{!580, !580, !580, !580, !580, !580, !580, !580, !580, !580, !580, !580, !580, !580, !580, !580, !580, !580, !580}
!llvm.module.flags = !{!581, !582, !583, !584}

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
!150 = distinct !DIGlobalVariable(name: "charset_aliases", scope: !151, file: !496, line: 120, type: !497, isLocal: true, isDefinition: true)
!151 = distinct !DICompileUnit(language: DW_LANG_C99, file: !152, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !153, retainedTypes: !492, globals: !495)
!152 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!153 = !{!154}
!154 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !155, line: 41, size: 32, elements: !156)
!155 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!156 = !{!157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491}
!157 = !DIEnumerator(name: "ABDAY_1", value: 131072)
!158 = !DIEnumerator(name: "ABDAY_2", value: 131073)
!159 = !DIEnumerator(name: "ABDAY_3", value: 131074)
!160 = !DIEnumerator(name: "ABDAY_4", value: 131075)
!161 = !DIEnumerator(name: "ABDAY_5", value: 131076)
!162 = !DIEnumerator(name: "ABDAY_6", value: 131077)
!163 = !DIEnumerator(name: "ABDAY_7", value: 131078)
!164 = !DIEnumerator(name: "DAY_1", value: 131079)
!165 = !DIEnumerator(name: "DAY_2", value: 131080)
!166 = !DIEnumerator(name: "DAY_3", value: 131081)
!167 = !DIEnumerator(name: "DAY_4", value: 131082)
!168 = !DIEnumerator(name: "DAY_5", value: 131083)
!169 = !DIEnumerator(name: "DAY_6", value: 131084)
!170 = !DIEnumerator(name: "DAY_7", value: 131085)
!171 = !DIEnumerator(name: "ABMON_1", value: 131086)
!172 = !DIEnumerator(name: "ABMON_2", value: 131087)
!173 = !DIEnumerator(name: "ABMON_3", value: 131088)
!174 = !DIEnumerator(name: "ABMON_4", value: 131089)
!175 = !DIEnumerator(name: "ABMON_5", value: 131090)
!176 = !DIEnumerator(name: "ABMON_6", value: 131091)
!177 = !DIEnumerator(name: "ABMON_7", value: 131092)
!178 = !DIEnumerator(name: "ABMON_8", value: 131093)
!179 = !DIEnumerator(name: "ABMON_9", value: 131094)
!180 = !DIEnumerator(name: "ABMON_10", value: 131095)
!181 = !DIEnumerator(name: "ABMON_11", value: 131096)
!182 = !DIEnumerator(name: "ABMON_12", value: 131097)
!183 = !DIEnumerator(name: "MON_1", value: 131098)
!184 = !DIEnumerator(name: "MON_2", value: 131099)
!185 = !DIEnumerator(name: "MON_3", value: 131100)
!186 = !DIEnumerator(name: "MON_4", value: 131101)
!187 = !DIEnumerator(name: "MON_5", value: 131102)
!188 = !DIEnumerator(name: "MON_6", value: 131103)
!189 = !DIEnumerator(name: "MON_7", value: 131104)
!190 = !DIEnumerator(name: "MON_8", value: 131105)
!191 = !DIEnumerator(name: "MON_9", value: 131106)
!192 = !DIEnumerator(name: "MON_10", value: 131107)
!193 = !DIEnumerator(name: "MON_11", value: 131108)
!194 = !DIEnumerator(name: "MON_12", value: 131109)
!195 = !DIEnumerator(name: "AM_STR", value: 131110)
!196 = !DIEnumerator(name: "PM_STR", value: 131111)
!197 = !DIEnumerator(name: "D_T_FMT", value: 131112)
!198 = !DIEnumerator(name: "D_FMT", value: 131113)
!199 = !DIEnumerator(name: "T_FMT", value: 131114)
!200 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115)
!201 = !DIEnumerator(name: "ERA", value: 131116)
!202 = !DIEnumerator(name: "__ERA_YEAR", value: 131117)
!203 = !DIEnumerator(name: "ERA_D_FMT", value: 131118)
!204 = !DIEnumerator(name: "ALT_DIGITS", value: 131119)
!205 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120)
!206 = !DIEnumerator(name: "ERA_T_FMT", value: 131121)
!207 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122)
!208 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123)
!209 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124)
!210 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125)
!211 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126)
!212 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127)
!213 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128)
!214 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129)
!215 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130)
!216 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131)
!217 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132)
!218 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133)
!219 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134)
!220 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135)
!221 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136)
!222 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137)
!223 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138)
!224 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139)
!225 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140)
!226 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141)
!227 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142)
!228 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143)
!229 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144)
!230 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145)
!231 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146)
!232 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147)
!233 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148)
!234 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149)
!235 = !DIEnumerator(name: "_NL_WMON_1", value: 131150)
!236 = !DIEnumerator(name: "_NL_WMON_2", value: 131151)
!237 = !DIEnumerator(name: "_NL_WMON_3", value: 131152)
!238 = !DIEnumerator(name: "_NL_WMON_4", value: 131153)
!239 = !DIEnumerator(name: "_NL_WMON_5", value: 131154)
!240 = !DIEnumerator(name: "_NL_WMON_6", value: 131155)
!241 = !DIEnumerator(name: "_NL_WMON_7", value: 131156)
!242 = !DIEnumerator(name: "_NL_WMON_8", value: 131157)
!243 = !DIEnumerator(name: "_NL_WMON_9", value: 131158)
!244 = !DIEnumerator(name: "_NL_WMON_10", value: 131159)
!245 = !DIEnumerator(name: "_NL_WMON_11", value: 131160)
!246 = !DIEnumerator(name: "_NL_WMON_12", value: 131161)
!247 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162)
!248 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163)
!249 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164)
!250 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165)
!251 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166)
!252 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167)
!253 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168)
!254 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169)
!255 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170)
!256 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171)
!257 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172)
!258 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173)
!259 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174)
!260 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175)
!261 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176)
!262 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177)
!263 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178)
!264 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179)
!265 = !DIEnumerator(name: "_DATE_FMT", value: 131180)
!266 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181)
!267 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182)
!268 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131183)
!269 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608)
!270 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609)
!271 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610)
!272 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611)
!273 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612)
!274 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613)
!275 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614)
!276 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615)
!277 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616)
!278 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617)
!279 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618)
!280 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619)
!281 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620)
!282 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621)
!283 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622)
!284 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623)
!285 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624)
!286 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625)
!287 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626)
!288 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627)
!289 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0)
!290 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1)
!291 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2)
!292 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3)
!293 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4)
!294 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5)
!295 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6)
!296 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7)
!297 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8)
!298 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9)
!299 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10)
!300 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11)
!301 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12)
!302 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13)
!303 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14)
!304 = !DIEnumerator(name: "CODESET", value: 14)
!305 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15)
!306 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16)
!307 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17)
!308 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18)
!309 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19)
!310 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20)
!311 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21)
!312 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22)
!313 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23)
!314 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24)
!315 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25)
!316 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26)
!317 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27)
!318 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28)
!319 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29)
!320 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30)
!321 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31)
!322 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32)
!323 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33)
!324 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34)
!325 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35)
!326 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36)
!327 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37)
!328 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38)
!329 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39)
!330 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40)
!331 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41)
!332 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42)
!333 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43)
!334 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44)
!335 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45)
!336 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46)
!337 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47)
!338 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48)
!339 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49)
!340 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50)
!341 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51)
!342 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52)
!343 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53)
!344 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54)
!345 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55)
!346 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56)
!347 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57)
!348 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58)
!349 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59)
!350 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60)
!351 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61)
!352 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62)
!353 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63)
!354 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64)
!355 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65)
!356 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66)
!357 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67)
!358 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68)
!359 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69)
!360 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70)
!361 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71)
!362 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72)
!363 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73)
!364 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74)
!365 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75)
!366 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76)
!367 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77)
!368 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78)
!369 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79)
!370 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80)
!371 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81)
!372 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82)
!373 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83)
!374 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84)
!375 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85)
!376 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86)
!377 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144)
!378 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145)
!379 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146)
!380 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147)
!381 = !DIEnumerator(name: "__MON_GROUPING", value: 262148)
!382 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149)
!383 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150)
!384 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151)
!385 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152)
!386 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153)
!387 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154)
!388 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155)
!389 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156)
!390 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157)
!391 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158)
!392 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159)
!393 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160)
!394 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161)
!395 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162)
!396 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163)
!397 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164)
!398 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165)
!399 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166)
!400 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167)
!401 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168)
!402 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169)
!403 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170)
!404 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171)
!405 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172)
!406 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173)
!407 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174)
!408 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175)
!409 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176)
!410 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177)
!411 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178)
!412 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179)
!413 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180)
!414 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181)
!415 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182)
!416 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183)
!417 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184)
!418 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185)
!419 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186)
!420 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187)
!421 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188)
!422 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189)
!423 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190)
!424 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536)
!425 = !DIEnumerator(name: "RADIXCHAR", value: 65536)
!426 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537)
!427 = !DIEnumerator(name: "THOUSEP", value: 65537)
!428 = !DIEnumerator(name: "__GROUPING", value: 65538)
!429 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539)
!430 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540)
!431 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541)
!432 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542)
!433 = !DIEnumerator(name: "__YESEXPR", value: 327680)
!434 = !DIEnumerator(name: "__NOEXPR", value: 327681)
!435 = !DIEnumerator(name: "__YESSTR", value: 327682)
!436 = !DIEnumerator(name: "__NOSTR", value: 327683)
!437 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684)
!438 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685)
!439 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752)
!440 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753)
!441 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754)
!442 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755)
!443 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288)
!444 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289)
!445 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290)
!446 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291)
!447 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292)
!448 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293)
!449 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294)
!450 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295)
!451 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824)
!452 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825)
!453 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826)
!454 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827)
!455 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828)
!456 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829)
!457 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830)
!458 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831)
!459 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832)
!460 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833)
!461 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834)
!462 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835)
!463 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836)
!464 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837)
!465 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360)
!466 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361)
!467 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362)
!468 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363)
!469 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364)
!470 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365)
!471 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896)
!472 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897)
!473 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898)
!474 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432)
!475 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433)
!476 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434)
!477 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435)
!478 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436)
!479 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437)
!480 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438)
!481 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439)
!482 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440)
!483 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441)
!484 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442)
!485 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443)
!486 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444)
!487 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445)
!488 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446)
!489 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447)
!490 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448)
!491 = !DIEnumerator(name: "_NL_NUM", value: 786449)
!492 = !{!49, !50, !493}
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!495 = !{!149}
!496 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!497 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !6)
!498 = distinct !DICompileUnit(language: DW_LANG_C99, file: !499, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !500, retainedTypes: !501, globals: !506)
!499 = !DIFile(filename: "src/link.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!500 = !{!58}
!501 = !{!6, !49, !94, !502, !504}
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !494)
!506 = !{!507}
!507 = !DIGlobalVariableExpression(var: !508)
!508 = distinct !DIGlobalVariable(name: "infomap", scope: !509, file: !510, line: 632, type: !534, isLocal: true, isDefinition: true)
!509 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !510, file: !510, line: 630, type: !511, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !498, variables: !513)
!510 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!511 = !DISubroutineType(types: !512)
!512 = !{null, !6}
!513 = !{!514, !515, !516, !523, !525, !526, !527, !530, !531, !533}
!514 = !DILocalVariable(name: "program", arg: 1, scope: !509, file: !510, line: 630, type: !6)
!515 = !DILocalVariable(name: "node", scope: !509, file: !510, line: 642, type: !6)
!516 = !DILocalVariable(name: "map_prog", scope: !509, file: !510, line: 643, type: !517)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !519)
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !509, file: !510, line: 632, size: 128, elements: !520)
!520 = !{!521, !522}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !519, file: !510, line: 632, baseType: !6, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !519, file: !510, line: 632, baseType: !6, size: 64, offset: 64)
!523 = !DILocalVariable(name: "__s1_len", scope: !524, file: !510, line: 645, type: !94)
!524 = distinct !DILexicalBlock(scope: !509, file: !510, line: 645, column: 33)
!525 = !DILocalVariable(name: "__s2_len", scope: !524, file: !510, line: 645, type: !94)
!526 = !DILocalVariable(name: "lc_messages", scope: !509, file: !510, line: 655, type: !6)
!527 = !DILocalVariable(name: "__s1_len", scope: !528, file: !510, line: 656, type: !94)
!528 = distinct !DILexicalBlock(scope: !529, file: !510, line: 656, column: 22)
!529 = distinct !DILexicalBlock(scope: !509, file: !510, line: 656, column: 7)
!530 = !DILocalVariable(name: "__s2_len", scope: !528, file: !510, line: 656, type: !94)
!531 = !DILocalVariable(name: "__s2", scope: !532, file: !510, line: 656, type: !504)
!532 = distinct !DILexicalBlock(scope: !528, file: !510, line: 656, column: 22)
!533 = !DILocalVariable(name: "__result", scope: !532, file: !510, line: 656, type: !25)
!534 = !DICompositeType(tag: DW_TAG_array_type, baseType: !518, size: 896, elements: !535)
!535 = !{!536}
!536 = !DISubrange(count: 7)
!537 = distinct !DICompileUnit(language: DW_LANG_C99, file: !538, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !539, retainedTypes: !544)
!538 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!539 = !{!540}
!540 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !541, line: 41, size: 32, elements: !542)
!541 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!542 = !{!543}
!543 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!544 = !{!49}
!545 = distinct !DICompileUnit(language: DW_LANG_C99, file: !546, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !547, retainedTypes: !561)
!546 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!547 = !{!548}
!548 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !550, file: !549, line: 192, size: 32, elements: !559)
!549 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!550 = distinct !DISubprogram(name: "x2nrealloc", scope: !549, file: !549, line: 180, type: !551, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !545, variables: !554)
!551 = !DISubroutineType(types: !552)
!552 = !{!49, !49, !553, !94}
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!554 = !{!555, !556, !557, !558}
!555 = !DILocalVariable(name: "p", arg: 1, scope: !550, file: !549, line: 180, type: !49)
!556 = !DILocalVariable(name: "pn", arg: 2, scope: !550, file: !549, line: 180, type: !553)
!557 = !DILocalVariable(name: "s", arg: 3, scope: !550, file: !549, line: 180, type: !94)
!558 = !DILocalVariable(name: "n", scope: !550, file: !549, line: 182, type: !94)
!559 = !{!560}
!560 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!561 = !{!94, !50, !49}
!562 = distinct !DICompileUnit(language: DW_LANG_C99, file: !563, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!563 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!564 = distinct !DICompileUnit(language: DW_LANG_C99, file: !565, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !544)
!565 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!566 = distinct !DICompileUnit(language: DW_LANG_C99, file: !567, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !568)
!567 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!568 = !{!94}
!569 = distinct !DICompileUnit(language: DW_LANG_C99, file: !570, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!570 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!571 = distinct !DICompileUnit(language: DW_LANG_C99, file: !572, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !573)
!572 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!573 = !{!94, !502, !504, !6}
!574 = distinct !DICompileUnit(language: DW_LANG_C99, file: !575, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!575 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!576 = distinct !DICompileUnit(language: DW_LANG_C99, file: !577, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !544)
!577 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!578 = distinct !DICompileUnit(language: DW_LANG_C99, file: !579, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !544)
!579 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!580 = !{!"clang version 4.0.1 (tags/RELEASE_401/final)"}
!581 = !{i32 2, !"Dwarf Version", i32 4}
!582 = !{i32 2, !"Debug Info Version", i32 3}
!583 = !{i32 1, !"PIC Level", i32 2}
!584 = !{i32 1, !"PIE Level", i32 2}
!585 = distinct !DISubprogram(name: "usage", scope: !499, file: !499, line: 40, type: !586, isLocal: false, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !498, variables: !588)
!586 = !DISubroutineType(types: !587)
!587 = !{null, !25}
!588 = !{!589}
!589 = !DILocalVariable(name: "status", arg: 1, scope: !585, file: !499, line: 40, type: !25)
!590 = !DIExpression()
!591 = !DILocation(line: 40, column: 12, scope: !585)
!592 = !DILocation(line: 42, column: 14, scope: !593)
!593 = distinct !DILexicalBlock(scope: !585, file: !499, line: 42, column: 7)
!594 = !DILocation(line: 42, column: 7, scope: !585)
!595 = !DILocation(line: 43, column: 5, scope: !596)
!596 = !DILexicalBlockFile(scope: !597, file: !499, discriminator: 1)
!597 = distinct !DILexicalBlock(scope: !593, file: !499, line: 43, column: 5)
!598 = !{!599, !599, i64 0}
!599 = !{!"any pointer", !600, i64 0}
!600 = !{!"omnipotent char", !601, i64 0}
!601 = !{!"Simple C/C++ TBAA"}
!602 = !DILocation(line: 43, column: 5, scope: !603)
!603 = !DILexicalBlockFile(scope: !597, file: !499, discriminator: 3)
!604 = !DILocation(line: 43, column: 5, scope: !605)
!605 = !DILexicalBlockFile(scope: !597, file: !499, discriminator: 2)
!606 = !DILocation(line: 46, column: 7, scope: !607)
!607 = distinct !DILexicalBlock(scope: !593, file: !499, line: 45, column: 5)
!608 = !DILocation(line: 46, column: 7, scope: !609)
!609 = !DILexicalBlockFile(scope: !607, file: !499, discriminator: 1)
!610 = !DILocation(line: 49, column: 7, scope: !607)
!611 = !DILocation(line: 49, column: 7, scope: !609)
!612 = !DILocation(line: 52, column: 7, scope: !607)
!613 = !DILocation(line: 52, column: 7, scope: !609)
!614 = !DILocation(line: 53, column: 7, scope: !607)
!615 = !DILocation(line: 53, column: 7, scope: !609)
!616 = !DILocation(line: 642, column: 15, scope: !509, inlinedAt: !617)
!617 = distinct !DILocation(line: 54, column: 7, scope: !607)
!618 = !DILocation(line: 651, column: 3, scope: !509, inlinedAt: !617)
!619 = !DILocation(line: 651, column: 3, scope: !620, inlinedAt: !617)
!620 = !DILexicalBlockFile(scope: !509, file: !510, discriminator: 1)
!621 = !DILocation(line: 655, column: 29, scope: !509, inlinedAt: !617)
!622 = !DILocation(line: 655, column: 15, scope: !509, inlinedAt: !617)
!623 = !DILocation(line: 656, column: 7, scope: !529, inlinedAt: !617)
!624 = !DILocation(line: 656, column: 19, scope: !529, inlinedAt: !617)
!625 = !DILocation(line: 656, column: 22, scope: !626, inlinedAt: !617)
!626 = !DILexicalBlockFile(scope: !529, file: !510, discriminator: 16)
!627 = !DILocation(line: 656, column: 7, scope: !628, inlinedAt: !617)
!628 = !DILexicalBlockFile(scope: !509, file: !510, discriminator: 16)
!629 = !DILocation(line: 662, column: 7, scope: !630, inlinedAt: !617)
!630 = distinct !DILexicalBlock(scope: !529, file: !510, line: 657, column: 5)
!631 = !DILocation(line: 662, column: 7, scope: !632, inlinedAt: !617)
!632 = !DILexicalBlockFile(scope: !630, file: !510, discriminator: 1)
!633 = !DILocation(line: 664, column: 5, scope: !630, inlinedAt: !617)
!634 = !DILocation(line: 665, column: 3, scope: !509, inlinedAt: !617)
!635 = !DILocation(line: 665, column: 3, scope: !620, inlinedAt: !617)
!636 = !DILocation(line: 667, column: 3, scope: !509, inlinedAt: !617)
!637 = !DILocation(line: 667, column: 3, scope: !620, inlinedAt: !617)
!638 = !DILocation(line: 56, column: 3, scope: !585)
!639 = distinct !DISubprogram(name: "main", scope: !499, file: !499, line: 60, type: !640, isLocal: false, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, unit: !498, variables: !643)
!640 = !DISubroutineType(types: !641)
!641 = !{!25, !25, !642}
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!643 = !{!644, !645}
!644 = !DILocalVariable(name: "argc", arg: 1, scope: !639, file: !499, line: 60, type: !25)
!645 = !DILocalVariable(name: "argv", arg: 2, scope: !639, file: !499, line: 60, type: !642)
!646 = !DILocation(line: 60, column: 11, scope: !639)
!647 = !DILocation(line: 60, column: 24, scope: !639)
!648 = !DILocation(line: 63, column: 21, scope: !639)
!649 = !DILocation(line: 63, column: 3, scope: !639)
!650 = !DILocation(line: 64, column: 3, scope: !639)
!651 = !DILocation(line: 65, column: 3, scope: !639)
!652 = !DILocation(line: 66, column: 3, scope: !639)
!653 = !DILocation(line: 68, column: 3, scope: !639)
!654 = !DILocation(line: 70, column: 63, scope: !639)
!655 = !DILocation(line: 70, column: 3, scope: !639)
!656 = !DILocation(line: 72, column: 7, scope: !657)
!657 = distinct !DILexicalBlock(scope: !639, file: !499, line: 72, column: 7)
!658 = !DILocation(line: 72, column: 48, scope: !657)
!659 = !DILocation(line: 72, column: 7, scope: !639)
!660 = !DILocation(line: 73, column: 5, scope: !657)
!661 = !DILocation(line: 75, column: 14, scope: !662)
!662 = distinct !DILexicalBlock(scope: !639, file: !499, line: 75, column: 7)
!663 = !{!664, !664, i64 0}
!664 = !{!"int", !600, i64 0}
!665 = !DILocation(line: 75, column: 21, scope: !662)
!666 = !DILocation(line: 75, column: 12, scope: !662)
!667 = !DILocation(line: 75, column: 7, scope: !639)
!668 = !DILocation(line: 77, column: 16, scope: !669)
!669 = distinct !DILexicalBlock(scope: !670, file: !499, line: 77, column: 11)
!670 = distinct !DILexicalBlock(scope: !662, file: !499, line: 76, column: 5)
!671 = !DILocation(line: 77, column: 11, scope: !670)
!672 = !DILocation(line: 78, column: 22, scope: !669)
!673 = !DILocation(line: 78, column: 9, scope: !674)
!674 = !DILexicalBlockFile(scope: !669, file: !499, discriminator: 1)
!675 = !DILocation(line: 78, column: 9, scope: !669)
!676 = !DILocation(line: 80, column: 22, scope: !669)
!677 = !DILocation(line: 80, column: 65, scope: !669)
!678 = !DILocation(line: 80, column: 60, scope: !669)
!679 = !DILocation(line: 80, column: 53, scope: !674)
!680 = !DILocation(line: 80, column: 9, scope: !681)
!681 = !DILexicalBlockFile(scope: !669, file: !499, discriminator: 2)
!682 = !DILocation(line: 81, column: 7, scope: !670)
!683 = !DILocation(line: 84, column: 18, scope: !684)
!684 = distinct !DILexicalBlock(scope: !639, file: !499, line: 84, column: 7)
!685 = !DILocation(line: 84, column: 7, scope: !639)
!686 = !DILocation(line: 86, column: 20, scope: !687)
!687 = distinct !DILexicalBlock(scope: !684, file: !499, line: 85, column: 5)
!688 = !DILocation(line: 86, column: 55, scope: !687)
!689 = !DILocation(line: 86, column: 62, scope: !687)
!690 = !DILocation(line: 86, column: 50, scope: !687)
!691 = !DILocation(line: 86, column: 43, scope: !692)
!692 = !DILexicalBlockFile(scope: !687, file: !499, discriminator: 1)
!693 = !DILocation(line: 86, column: 7, scope: !694)
!694 = !DILexicalBlockFile(scope: !687, file: !499, discriminator: 2)
!695 = !DILocation(line: 87, column: 7, scope: !687)
!696 = !DILocation(line: 90, column: 13, scope: !697)
!697 = distinct !DILexicalBlock(scope: !639, file: !499, line: 90, column: 7)
!698 = !DILocation(line: 90, column: 39, scope: !697)
!699 = !DILocation(line: 90, column: 27, scope: !697)
!700 = !DILocation(line: 90, column: 7, scope: !697)
!701 = !DILocation(line: 90, column: 45, scope: !697)
!702 = !DILocation(line: 90, column: 7, scope: !639)
!703 = !DILocation(line: 91, column: 5, scope: !697)
!704 = !DILocation(line: 91, column: 5, scope: !705)
!705 = !DILexicalBlockFile(scope: !697, file: !499, discriminator: 1)
!706 = !DILocation(line: 91, column: 5, scope: !707)
!707 = !DILexicalBlockFile(scope: !697, file: !499, discriminator: 2)
!708 = !DILocation(line: 91, column: 5, scope: !709)
!709 = !DILexicalBlockFile(scope: !697, file: !499, discriminator: 3)
!710 = !DILocation(line: 91, column: 5, scope: !711)
!711 = !DILexicalBlockFile(scope: !697, file: !499, discriminator: 4)
!712 = !DILocation(line: 94, column: 3, scope: !639)
!713 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !16, file: !16, line: 41, type: !511, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !11, variables: !714)
!714 = !{!715}
!715 = !DILocalVariable(name: "file", arg: 1, scope: !713, file: !16, line: 41, type: !6)
!716 = !DILocation(line: 41, column: 41, scope: !713)
!717 = !DILocation(line: 43, column: 13, scope: !713)
!718 = !DILocation(line: 44, column: 1, scope: !713)
!719 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !16, file: !16, line: 78, type: !720, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !11, variables: !722)
!720 = !DISubroutineType(types: !721)
!721 = !{null, !17}
!722 = !{!723}
!723 = !DILocalVariable(name: "ignore", arg: 1, scope: !719, file: !16, line: 78, type: !17)
!724 = !DIExpression(DW_OP_LLVM_fragment, 0, 1)
!725 = !DILocation(line: 78, column: 37, scope: !719)
!726 = !DILocation(line: 80, column: 16, scope: !719)
!727 = !{!728, !728, i64 0}
!728 = !{!"_Bool", !600, i64 0}
!729 = !DILocation(line: 81, column: 1, scope: !719)
!730 = distinct !DISubprogram(name: "close_stdout", scope: !16, file: !16, line: 107, type: !731, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !11, variables: !733)
!731 = !DISubroutineType(types: !732)
!732 = !{null}
!733 = !{!734}
!734 = !DILocalVariable(name: "write_error", scope: !735, file: !16, line: 112, type: !6)
!735 = distinct !DILexicalBlock(scope: !736, file: !16, line: 111, column: 5)
!736 = distinct !DILexicalBlock(scope: !730, file: !16, line: 109, column: 7)
!737 = !DILocation(line: 109, column: 21, scope: !736)
!738 = !DILocation(line: 109, column: 7, scope: !736)
!739 = !DILocation(line: 109, column: 29, scope: !736)
!740 = !DILocation(line: 110, column: 7, scope: !736)
!741 = !DILocation(line: 110, column: 12, scope: !742)
!742 = !DILexicalBlockFile(scope: !736, file: !16, discriminator: 1)
!743 = !{i8 0, i8 2}
!744 = !DILocation(line: 114, column: 19, scope: !745)
!745 = distinct !DILexicalBlock(scope: !735, file: !16, line: 113, column: 11)
!746 = !DILocation(line: 110, column: 25, scope: !742)
!747 = !DILocation(line: 110, column: 28, scope: !748)
!748 = !DILexicalBlockFile(scope: !736, file: !16, discriminator: 2)
!749 = !DILocation(line: 110, column: 34, scope: !748)
!750 = !DILocation(line: 109, column: 7, scope: !751)
!751 = !DILexicalBlockFile(scope: !730, file: !16, discriminator: 1)
!752 = !DILocation(line: 112, column: 33, scope: !735)
!753 = !DILocation(line: 112, column: 19, scope: !735)
!754 = !DILocation(line: 113, column: 11, scope: !745)
!755 = !DILocation(line: 113, column: 11, scope: !735)
!756 = !DILocation(line: 114, column: 36, scope: !757)
!757 = !DILexicalBlockFile(scope: !745, file: !16, discriminator: 1)
!758 = !DILocation(line: 114, column: 9, scope: !759)
!759 = !DILexicalBlockFile(scope: !745, file: !16, discriminator: 2)
!760 = !DILocation(line: 114, column: 9, scope: !745)
!761 = !DILocation(line: 117, column: 9, scope: !757)
!762 = !DILocation(line: 119, column: 14, scope: !735)
!763 = !DILocation(line: 119, column: 7, scope: !735)
!764 = !DILocation(line: 122, column: 22, scope: !765)
!765 = distinct !DILexicalBlock(scope: !730, file: !16, line: 122, column: 8)
!766 = !DILocation(line: 122, column: 8, scope: !765)
!767 = !DILocation(line: 122, column: 30, scope: !765)
!768 = !DILocation(line: 122, column: 8, scope: !730)
!769 = !DILocation(line: 123, column: 13, scope: !765)
!770 = !DILocation(line: 123, column: 6, scope: !765)
!771 = !DILocation(line: 124, column: 1, scope: !730)
!772 = distinct !DISubprogram(name: "parse_long_options", scope: !31, file: !31, line: 44, type: !773, isLocal: false, isDefinition: true, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: true, unit: !28, variables: !776)
!773 = !DISubroutineType(types: !774)
!774 = !{null, !25, !642, !6, !6, !6, !775, null}
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!776 = !{!777, !778, !779, !780, !781, !782, !783, !784, !785}
!777 = !DILocalVariable(name: "argc", arg: 1, scope: !772, file: !31, line: 44, type: !25)
!778 = !DILocalVariable(name: "argv", arg: 2, scope: !772, file: !31, line: 45, type: !642)
!779 = !DILocalVariable(name: "command_name", arg: 3, scope: !772, file: !31, line: 46, type: !6)
!780 = !DILocalVariable(name: "package", arg: 4, scope: !772, file: !31, line: 47, type: !6)
!781 = !DILocalVariable(name: "version", arg: 5, scope: !772, file: !31, line: 48, type: !6)
!782 = !DILocalVariable(name: "usage_func", arg: 6, scope: !772, file: !31, line: 49, type: !775)
!783 = !DILocalVariable(name: "c", scope: !772, file: !31, line: 52, type: !25)
!784 = !DILocalVariable(name: "saved_opterr", scope: !772, file: !31, line: 53, type: !25)
!785 = !DILocalVariable(name: "authors", scope: !786, file: !31, line: 71, type: !790)
!786 = distinct !DILexicalBlock(scope: !787, file: !31, line: 70, column: 11)
!787 = distinct !DILexicalBlock(scope: !788, file: !31, line: 64, column: 9)
!788 = distinct !DILexicalBlock(scope: !789, file: !31, line: 62, column: 5)
!789 = distinct !DILexicalBlock(scope: !772, file: !31, line: 60, column: 7)
!790 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !791, line: 80, baseType: !792)
!791 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!792 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !793, line: 50, baseType: !794)
!793 = !DIFile(filename: "/usr/bin/../lib/clang/4.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!794 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !29, line: 71, baseType: !795)
!795 = !DICompositeType(tag: DW_TAG_array_type, baseType: !796, size: 192, elements: !802)
!796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !29, line: 71, size: 192, elements: !797)
!797 = !{!798, !799, !800, !801}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !796, file: !29, line: 71, baseType: !113, size: 32)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !796, file: !29, line: 71, baseType: !113, size: 32, offset: 32)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !796, file: !29, line: 71, baseType: !49, size: 64, offset: 64)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !796, file: !29, line: 71, baseType: !49, size: 64, offset: 128)
!802 = !{!803}
!803 = !DISubrange(count: 1)
!804 = !DILocation(line: 44, column: 25, scope: !772)
!805 = !DILocation(line: 45, column: 28, scope: !772)
!806 = !DILocation(line: 46, column: 33, scope: !772)
!807 = !DILocation(line: 47, column: 33, scope: !772)
!808 = !DILocation(line: 48, column: 33, scope: !772)
!809 = !DILocation(line: 49, column: 28, scope: !772)
!810 = !DILocation(line: 55, column: 18, scope: !772)
!811 = !DILocation(line: 53, column: 7, scope: !772)
!812 = !DILocation(line: 58, column: 10, scope: !772)
!813 = !DILocation(line: 60, column: 12, scope: !789)
!814 = !DILocation(line: 61, column: 7, scope: !789)
!815 = !DILocation(line: 61, column: 15, scope: !816)
!816 = !DILexicalBlockFile(scope: !789, file: !31, discriminator: 1)
!817 = !DILocation(line: 52, column: 7, scope: !772)
!818 = !DILocation(line: 60, column: 7, scope: !819)
!819 = !DILexicalBlockFile(scope: !772, file: !31, discriminator: 1)
!820 = !DILocation(line: 66, column: 11, scope: !787)
!821 = !DILocation(line: 67, column: 11, scope: !787)
!822 = !DILocation(line: 71, column: 13, scope: !786)
!823 = !DILocation(line: 71, column: 21, scope: !786)
!824 = !DILocation(line: 72, column: 13, scope: !786)
!825 = !DILocation(line: 73, column: 29, scope: !786)
!826 = !DILocation(line: 73, column: 13, scope: !786)
!827 = !DILocation(line: 74, column: 13, scope: !786)
!828 = !DILocation(line: 84, column: 10, scope: !772)
!829 = !DILocation(line: 88, column: 10, scope: !772)
!830 = !DILocation(line: 89, column: 1, scope: !772)
!831 = distinct !DISubprogram(name: "set_program_name", scope: !52, file: !52, line: 39, type: !511, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !46, variables: !832)
!832 = !{!833, !834, !835}
!833 = !DILocalVariable(name: "argv0", arg: 1, scope: !831, file: !52, line: 39, type: !6)
!834 = !DILocalVariable(name: "slash", scope: !831, file: !52, line: 46, type: !6)
!835 = !DILocalVariable(name: "base", scope: !831, file: !52, line: 47, type: !6)
!836 = !DILocation(line: 39, column: 31, scope: !831)
!837 = !DILocation(line: 51, column: 13, scope: !838)
!838 = distinct !DILexicalBlock(scope: !831, file: !52, line: 51, column: 7)
!839 = !DILocation(line: 51, column: 7, scope: !831)
!840 = !DILocation(line: 55, column: 14, scope: !841)
!841 = distinct !DILexicalBlock(scope: !838, file: !52, line: 52, column: 5)
!842 = !DILocation(line: 54, column: 7, scope: !841)
!843 = !DILocation(line: 56, column: 7, scope: !841)
!844 = !DILocation(line: 59, column: 11, scope: !831)
!845 = !DILocation(line: 46, column: 15, scope: !831)
!846 = !DILocation(line: 60, column: 17, scope: !831)
!847 = !DILocation(line: 60, column: 33, scope: !848)
!848 = !DILexicalBlockFile(scope: !831, file: !52, discriminator: 1)
!849 = !DILocation(line: 60, column: 11, scope: !831)
!850 = !DILocation(line: 47, column: 15, scope: !831)
!851 = !DILocation(line: 61, column: 12, scope: !852)
!852 = distinct !DILexicalBlock(scope: !831, file: !52, line: 61, column: 7)
!853 = !DILocation(line: 61, column: 20, scope: !852)
!854 = !DILocation(line: 61, column: 25, scope: !852)
!855 = !DILocation(line: 61, column: 28, scope: !856)
!856 = !DILexicalBlockFile(scope: !852, file: !52, discriminator: 1)
!857 = !DILocation(line: 61, column: 61, scope: !856)
!858 = !DILocation(line: 61, column: 7, scope: !848)
!859 = !DILocation(line: 64, column: 11, scope: !860)
!860 = distinct !DILexicalBlock(scope: !861, file: !52, line: 64, column: 11)
!861 = distinct !DILexicalBlock(scope: !852, file: !52, line: 62, column: 5)
!862 = !DILocation(line: 64, column: 36, scope: !860)
!863 = !DILocation(line: 64, column: 11, scope: !861)
!864 = !DILocation(line: 66, column: 24, scope: !865)
!865 = distinct !DILexicalBlock(scope: !860, file: !52, line: 65, column: 9)
!866 = !DILocation(line: 70, column: 41, scope: !865)
!867 = !DILocation(line: 72, column: 9, scope: !865)
!868 = !DILocation(line: 84, column: 16, scope: !831)
!869 = !DILocation(line: 90, column: 27, scope: !831)
!870 = !DILocation(line: 92, column: 1, scope: !831)
!871 = distinct !DISubprogram(name: "clone_quoting_options", scope: !100, file: !100, line: 114, type: !872, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !875)
!872 = !DISubroutineType(types: !873)
!873 = !{!874, !874}
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!875 = !{!876, !877, !878}
!876 = !DILocalVariable(name: "o", arg: 1, scope: !871, file: !100, line: 114, type: !874)
!877 = !DILocalVariable(name: "e", scope: !871, file: !100, line: 116, type: !25)
!878 = !DILocalVariable(name: "p", scope: !871, file: !100, line: 117, type: !874)
!879 = !DILocation(line: 114, column: 48, scope: !871)
!880 = !DILocation(line: 116, column: 11, scope: !871)
!881 = !DILocation(line: 116, column: 7, scope: !871)
!882 = !DILocation(line: 117, column: 40, scope: !871)
!883 = !DILocation(line: 117, column: 40, scope: !884)
!884 = !DILexicalBlockFile(scope: !871, file: !100, discriminator: 3)
!885 = !DILocation(line: 117, column: 31, scope: !884)
!886 = !DILocation(line: 117, column: 27, scope: !871)
!887 = !DILocation(line: 119, column: 9, scope: !871)
!888 = !DILocation(line: 120, column: 3, scope: !871)
!889 = distinct !DISubprogram(name: "get_quoting_style", scope: !100, file: !100, line: 125, type: !890, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !894)
!890 = !DISubroutineType(types: !891)
!891 = !{!58, !892}
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64)
!893 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !107)
!894 = !{!895}
!895 = !DILocalVariable(name: "o", arg: 1, scope: !889, file: !100, line: 125, type: !892)
!896 = !DILocation(line: 125, column: 50, scope: !889)
!897 = !DILocation(line: 127, column: 11, scope: !889)
!898 = !DILocation(line: 127, column: 46, scope: !899)
!899 = !DILexicalBlockFile(scope: !889, file: !100, discriminator: 3)
!900 = !{!901, !600, i64 0}
!901 = !{!"quoting_options", !600, i64 0, !664, i64 4, !600, i64 8, !599, i64 40, !599, i64 48}
!902 = !DILocation(line: 127, column: 3, scope: !899)
!903 = distinct !DISubprogram(name: "set_quoting_style", scope: !100, file: !100, line: 133, type: !904, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !906)
!904 = !DISubroutineType(types: !905)
!905 = !{null, !874, !58}
!906 = !{!907, !908}
!907 = !DILocalVariable(name: "o", arg: 1, scope: !903, file: !100, line: 133, type: !874)
!908 = !DILocalVariable(name: "s", arg: 2, scope: !903, file: !100, line: 133, type: !58)
!909 = !DILocation(line: 133, column: 44, scope: !903)
!910 = !DILocation(line: 133, column: 66, scope: !903)
!911 = !DILocation(line: 135, column: 4, scope: !903)
!912 = !DILocation(line: 135, column: 39, scope: !913)
!913 = !DILexicalBlockFile(scope: !903, file: !100, discriminator: 3)
!914 = !DILocation(line: 135, column: 45, scope: !913)
!915 = !DILocation(line: 136, column: 1, scope: !903)
!916 = distinct !DISubprogram(name: "set_char_quoting", scope: !100, file: !100, line: 144, type: !917, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !919)
!917 = !DISubroutineType(types: !918)
!918 = !{!25, !874, !8, !25}
!919 = !{!920, !921, !922, !923, !924, !926, !927}
!920 = !DILocalVariable(name: "o", arg: 1, scope: !916, file: !100, line: 144, type: !874)
!921 = !DILocalVariable(name: "c", arg: 2, scope: !916, file: !100, line: 144, type: !8)
!922 = !DILocalVariable(name: "i", arg: 3, scope: !916, file: !100, line: 144, type: !25)
!923 = !DILocalVariable(name: "uc", scope: !916, file: !100, line: 146, type: !494)
!924 = !DILocalVariable(name: "p", scope: !916, file: !100, line: 147, type: !925)
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!926 = !DILocalVariable(name: "shift", scope: !916, file: !100, line: 149, type: !25)
!927 = !DILocalVariable(name: "r", scope: !916, file: !100, line: 150, type: !25)
!928 = !DILocation(line: 144, column: 43, scope: !916)
!929 = !DILocation(line: 144, column: 51, scope: !916)
!930 = !DILocation(line: 144, column: 58, scope: !916)
!931 = !DILocation(line: 146, column: 17, scope: !916)
!932 = !DILocation(line: 148, column: 6, scope: !916)
!933 = !DILocation(line: 148, column: 62, scope: !934)
!934 = !DILexicalBlockFile(scope: !916, file: !100, discriminator: 3)
!935 = !DILocation(line: 148, column: 57, scope: !934)
!936 = !DILocation(line: 147, column: 17, scope: !916)
!937 = !DILocation(line: 149, column: 18, scope: !916)
!938 = !DILocation(line: 149, column: 15, scope: !916)
!939 = !DILocation(line: 149, column: 7, scope: !916)
!940 = !DILocation(line: 150, column: 12, scope: !916)
!941 = !DILocation(line: 150, column: 15, scope: !916)
!942 = !DILocation(line: 150, column: 25, scope: !916)
!943 = !DILocation(line: 150, column: 7, scope: !916)
!944 = !DILocation(line: 151, column: 13, scope: !916)
!945 = !DILocation(line: 151, column: 18, scope: !916)
!946 = !DILocation(line: 151, column: 23, scope: !916)
!947 = !DILocation(line: 151, column: 6, scope: !916)
!948 = !DILocation(line: 152, column: 3, scope: !916)
!949 = distinct !DISubprogram(name: "set_quoting_flags", scope: !100, file: !100, line: 160, type: !950, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !952)
!950 = !DISubroutineType(types: !951)
!951 = !{!25, !874, !25}
!952 = !{!953, !954, !955}
!953 = !DILocalVariable(name: "o", arg: 1, scope: !949, file: !100, line: 160, type: !874)
!954 = !DILocalVariable(name: "i", arg: 2, scope: !949, file: !100, line: 160, type: !25)
!955 = !DILocalVariable(name: "r", scope: !949, file: !100, line: 162, type: !25)
!956 = !DILocation(line: 160, column: 44, scope: !949)
!957 = !DILocation(line: 160, column: 51, scope: !949)
!958 = !DILocation(line: 163, column: 8, scope: !959)
!959 = distinct !DILexicalBlock(scope: !949, file: !100, line: 163, column: 7)
!960 = !DILocation(line: 163, column: 7, scope: !949)
!961 = !DILocation(line: 165, column: 10, scope: !949)
!962 = !{!901, !664, i64 4}
!963 = !DILocation(line: 162, column: 7, scope: !949)
!964 = !DILocation(line: 166, column: 12, scope: !949)
!965 = !DILocation(line: 167, column: 3, scope: !949)
!966 = distinct !DISubprogram(name: "set_custom_quoting", scope: !100, file: !100, line: 171, type: !967, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !969)
!967 = !DISubroutineType(types: !968)
!968 = !{null, !874, !6, !6}
!969 = !{!970, !971, !972}
!970 = !DILocalVariable(name: "o", arg: 1, scope: !966, file: !100, line: 171, type: !874)
!971 = !DILocalVariable(name: "left_quote", arg: 2, scope: !966, file: !100, line: 172, type: !6)
!972 = !DILocalVariable(name: "right_quote", arg: 3, scope: !966, file: !100, line: 172, type: !6)
!973 = !DILocation(line: 171, column: 45, scope: !966)
!974 = !DILocation(line: 172, column: 33, scope: !966)
!975 = !DILocation(line: 172, column: 57, scope: !966)
!976 = !DILocation(line: 174, column: 8, scope: !977)
!977 = distinct !DILexicalBlock(scope: !966, file: !100, line: 174, column: 7)
!978 = !DILocation(line: 174, column: 7, scope: !966)
!979 = !DILocation(line: 176, column: 6, scope: !966)
!980 = !DILocation(line: 176, column: 12, scope: !966)
!981 = !DILocation(line: 177, column: 8, scope: !982)
!982 = distinct !DILexicalBlock(scope: !966, file: !100, line: 177, column: 7)
!983 = !DILocation(line: 177, column: 23, scope: !984)
!984 = !DILexicalBlockFile(scope: !982, file: !100, discriminator: 1)
!985 = !DILocation(line: 177, column: 19, scope: !982)
!986 = !DILocation(line: 178, column: 5, scope: !982)
!987 = !DILocation(line: 179, column: 6, scope: !966)
!988 = !DILocation(line: 179, column: 17, scope: !966)
!989 = !{!901, !599, i64 40}
!990 = !DILocation(line: 180, column: 6, scope: !966)
!991 = !DILocation(line: 180, column: 18, scope: !966)
!992 = !{!901, !599, i64 48}
!993 = !DILocation(line: 181, column: 1, scope: !966)
!994 = distinct !DISubprogram(name: "quotearg_buffer", scope: !100, file: !100, line: 776, type: !995, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !997)
!995 = !DISubroutineType(types: !996)
!996 = !{!94, !50, !94, !6, !94, !892}
!997 = !{!998, !999, !1000, !1001, !1002, !1003, !1004, !1005}
!998 = !DILocalVariable(name: "buffer", arg: 1, scope: !994, file: !100, line: 776, type: !50)
!999 = !DILocalVariable(name: "buffersize", arg: 2, scope: !994, file: !100, line: 776, type: !94)
!1000 = !DILocalVariable(name: "arg", arg: 3, scope: !994, file: !100, line: 777, type: !6)
!1001 = !DILocalVariable(name: "argsize", arg: 4, scope: !994, file: !100, line: 777, type: !94)
!1002 = !DILocalVariable(name: "o", arg: 5, scope: !994, file: !100, line: 778, type: !892)
!1003 = !DILocalVariable(name: "p", scope: !994, file: !100, line: 780, type: !892)
!1004 = !DILocalVariable(name: "e", scope: !994, file: !100, line: 781, type: !25)
!1005 = !DILocalVariable(name: "r", scope: !994, file: !100, line: 782, type: !94)
!1006 = !DILocation(line: 776, column: 24, scope: !994)
!1007 = !DILocation(line: 776, column: 39, scope: !994)
!1008 = !DILocation(line: 777, column: 30, scope: !994)
!1009 = !DILocation(line: 777, column: 42, scope: !994)
!1010 = !DILocation(line: 778, column: 48, scope: !994)
!1011 = !DILocation(line: 780, column: 37, scope: !994)
!1012 = !DILocation(line: 780, column: 33, scope: !994)
!1013 = !DILocation(line: 781, column: 11, scope: !994)
!1014 = !DILocation(line: 781, column: 7, scope: !994)
!1015 = !DILocation(line: 783, column: 43, scope: !994)
!1016 = !DILocation(line: 783, column: 53, scope: !994)
!1017 = !DILocation(line: 783, column: 60, scope: !994)
!1018 = !DILocation(line: 784, column: 43, scope: !994)
!1019 = !DILocation(line: 784, column: 58, scope: !994)
!1020 = !DILocation(line: 782, column: 14, scope: !994)
!1021 = !DILocation(line: 782, column: 10, scope: !994)
!1022 = !DILocation(line: 785, column: 9, scope: !994)
!1023 = !DILocation(line: 786, column: 3, scope: !994)
!1024 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !100, file: !100, line: 248, type: !1025, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1029)
!1025 = !DISubroutineType(types: !1026)
!1026 = !{!94, !50, !94, !6, !94, !58, !25, !1027, !6, !6}
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1028, size: 64)
!1028 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !113)
!1029 = !{!1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1054, !1055, !1056, !1057, !1058, !1061, !1062, !1079, !1082, !1083, !1090}
!1030 = !DILocalVariable(name: "buffer", arg: 1, scope: !1024, file: !100, line: 248, type: !50)
!1031 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1024, file: !100, line: 248, type: !94)
!1032 = !DILocalVariable(name: "arg", arg: 3, scope: !1024, file: !100, line: 249, type: !6)
!1033 = !DILocalVariable(name: "argsize", arg: 4, scope: !1024, file: !100, line: 249, type: !94)
!1034 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1024, file: !100, line: 250, type: !58)
!1035 = !DILocalVariable(name: "flags", arg: 6, scope: !1024, file: !100, line: 250, type: !25)
!1036 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1024, file: !100, line: 251, type: !1027)
!1037 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1024, file: !100, line: 252, type: !6)
!1038 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1024, file: !100, line: 253, type: !6)
!1039 = !DILocalVariable(name: "i", scope: !1024, file: !100, line: 255, type: !94)
!1040 = !DILocalVariable(name: "len", scope: !1024, file: !100, line: 256, type: !94)
!1041 = !DILocalVariable(name: "orig_buffersize", scope: !1024, file: !100, line: 257, type: !94)
!1042 = !DILocalVariable(name: "quote_string", scope: !1024, file: !100, line: 258, type: !6)
!1043 = !DILocalVariable(name: "quote_string_len", scope: !1024, file: !100, line: 259, type: !94)
!1044 = !DILocalVariable(name: "backslash_escapes", scope: !1024, file: !100, line: 260, type: !17)
!1045 = !DILocalVariable(name: "unibyte_locale", scope: !1024, file: !100, line: 261, type: !17)
!1046 = !DILocalVariable(name: "elide_outer_quotes", scope: !1024, file: !100, line: 262, type: !17)
!1047 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1024, file: !100, line: 263, type: !17)
!1048 = !DILocalVariable(name: "encountered_single_quote", scope: !1024, file: !100, line: 264, type: !17)
!1049 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1024, file: !100, line: 265, type: !17)
!1050 = !DILocalVariable(name: "c", scope: !1051, file: !100, line: 394, type: !494)
!1051 = distinct !DILexicalBlock(scope: !1052, file: !100, line: 393, column: 5)
!1052 = distinct !DILexicalBlock(scope: !1053, file: !100, line: 392, column: 3)
!1053 = distinct !DILexicalBlock(scope: !1024, file: !100, line: 392, column: 3)
!1054 = !DILocalVariable(name: "esc", scope: !1051, file: !100, line: 395, type: !494)
!1055 = !DILocalVariable(name: "is_right_quote", scope: !1051, file: !100, line: 396, type: !17)
!1056 = !DILocalVariable(name: "escaping", scope: !1051, file: !100, line: 397, type: !17)
!1057 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1051, file: !100, line: 398, type: !17)
!1058 = !DILocalVariable(name: "m", scope: !1059, file: !100, line: 602, type: !94)
!1059 = distinct !DILexicalBlock(scope: !1060, file: !100, line: 600, column: 11)
!1060 = distinct !DILexicalBlock(scope: !1051, file: !100, line: 418, column: 9)
!1061 = !DILocalVariable(name: "printable", scope: !1059, file: !100, line: 604, type: !17)
!1062 = !DILocalVariable(name: "mbstate", scope: !1063, file: !100, line: 613, type: !1065)
!1063 = distinct !DILexicalBlock(scope: !1064, file: !100, line: 612, column: 15)
!1064 = distinct !DILexicalBlock(scope: !1059, file: !100, line: 606, column: 17)
!1065 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1066, line: 107, baseType: !1067)
!1066 = !DIFile(filename: "/usr/include/wchar.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1067 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1066, line: 95, baseType: !1068)
!1068 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1066, line: 83, size: 64, elements: !1069)
!1069 = !{!1070, !1071}
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1068, file: !1066, line: 85, baseType: !25, size: 32)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1068, file: !1066, line: 94, baseType: !1072, size: 32, offset: 32)
!1072 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1068, file: !1066, line: 86, size: 32, elements: !1073)
!1073 = !{!1074, !1075}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1072, file: !1066, line: 89, baseType: !113, size: 32)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1072, file: !1066, line: 93, baseType: !1076, size: 32)
!1076 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 32, elements: !1077)
!1077 = !{!1078}
!1078 = !DISubrange(count: 4)
!1079 = !DILocalVariable(name: "w", scope: !1080, file: !100, line: 623, type: !1081)
!1080 = distinct !DILexicalBlock(scope: !1063, file: !100, line: 622, column: 19)
!1081 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !95, line: 90, baseType: !25)
!1082 = !DILocalVariable(name: "bytes", scope: !1080, file: !100, line: 624, type: !94)
!1083 = !DILocalVariable(name: "j", scope: !1084, file: !100, line: 649, type: !94)
!1084 = distinct !DILexicalBlock(scope: !1085, file: !100, line: 648, column: 27)
!1085 = distinct !DILexicalBlock(scope: !1086, file: !100, line: 646, column: 29)
!1086 = distinct !DILexicalBlock(scope: !1087, file: !100, line: 641, column: 23)
!1087 = distinct !DILexicalBlock(scope: !1088, file: !100, line: 633, column: 30)
!1088 = distinct !DILexicalBlock(scope: !1089, file: !100, line: 628, column: 30)
!1089 = distinct !DILexicalBlock(scope: !1080, file: !100, line: 626, column: 25)
!1090 = !DILocalVariable(name: "ilim", scope: !1091, file: !100, line: 676, type: !94)
!1091 = distinct !DILexicalBlock(scope: !1092, file: !100, line: 673, column: 15)
!1092 = distinct !DILexicalBlock(scope: !1059, file: !100, line: 672, column: 17)
!1093 = !DILocation(line: 248, column: 33, scope: !1024)
!1094 = !DILocation(line: 248, column: 48, scope: !1024)
!1095 = !DILocation(line: 249, column: 39, scope: !1024)
!1096 = !DILocation(line: 249, column: 51, scope: !1024)
!1097 = !DILocation(line: 250, column: 46, scope: !1024)
!1098 = !DILocation(line: 250, column: 65, scope: !1024)
!1099 = !DILocation(line: 251, column: 47, scope: !1024)
!1100 = !DILocation(line: 252, column: 39, scope: !1024)
!1101 = !DILocation(line: 253, column: 39, scope: !1024)
!1102 = !DILocation(line: 256, column: 10, scope: !1024)
!1103 = !DILocation(line: 257, column: 10, scope: !1024)
!1104 = !DILocation(line: 258, column: 15, scope: !1024)
!1105 = !DILocation(line: 259, column: 10, scope: !1024)
!1106 = !DILocation(line: 260, column: 8, scope: !1024)
!1107 = !DILocation(line: 261, column: 25, scope: !1024)
!1108 = !DILocation(line: 261, column: 36, scope: !1024)
!1109 = !DILocation(line: 262, column: 8, scope: !1024)
!1110 = !DILocation(line: 263, column: 8, scope: !1024)
!1111 = !DILocation(line: 264, column: 8, scope: !1024)
!1112 = !DILocation(line: 265, column: 8, scope: !1024)
!1113 = !DILocation(line: 265, column: 3, scope: !1024)
!1114 = !DILocation(line: 308, column: 3, scope: !1024)
!1115 = !DILocation(line: 315, column: 11, scope: !1116)
!1116 = distinct !DILexicalBlock(scope: !1024, file: !100, line: 309, column: 5)
!1117 = !DILocation(line: 315, column: 12, scope: !1118)
!1118 = distinct !DILexicalBlock(scope: !1116, file: !100, line: 315, column: 11)
!1119 = !DILocation(line: 316, column: 9, scope: !1120)
!1120 = !DILexicalBlockFile(scope: !1121, file: !100, discriminator: 1)
!1121 = distinct !DILexicalBlock(scope: !1122, file: !100, line: 316, column: 9)
!1122 = distinct !DILexicalBlock(scope: !1118, file: !100, line: 316, column: 9)
!1123 = !DILocation(line: 316, column: 9, scope: !1124)
!1124 = !DILexicalBlockFile(scope: !1122, file: !100, discriminator: 1)
!1125 = !DILocation(line: 316, column: 9, scope: !1126)
!1126 = !DILexicalBlockFile(scope: !1121, file: !100, discriminator: 2)
!1127 = !{!600, !600, i64 0}
!1128 = !DILocation(line: 354, column: 26, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1130, file: !100, line: 332, column: 11)
!1130 = distinct !DILexicalBlock(scope: !1131, file: !100, line: 331, column: 13)
!1131 = distinct !DILexicalBlock(scope: !1116, file: !100, line: 330, column: 7)
!1132 = !DILocation(line: 355, column: 27, scope: !1129)
!1133 = !DILocation(line: 356, column: 11, scope: !1129)
!1134 = !DILocation(line: 357, column: 14, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !1131, file: !100, line: 357, column: 13)
!1136 = !DILocation(line: 357, column: 13, scope: !1131)
!1137 = !DILocation(line: 358, column: 43, scope: !1138)
!1138 = !DILexicalBlockFile(scope: !1139, file: !100, discriminator: 1)
!1139 = distinct !DILexicalBlock(scope: !1140, file: !100, line: 358, column: 11)
!1140 = distinct !DILexicalBlock(scope: !1135, file: !100, line: 358, column: 11)
!1141 = !DILocation(line: 358, column: 11, scope: !1142)
!1142 = !DILexicalBlockFile(scope: !1140, file: !100, discriminator: 1)
!1143 = !DILocation(line: 359, column: 13, scope: !1144)
!1144 = !DILexicalBlockFile(scope: !1145, file: !100, discriminator: 1)
!1145 = distinct !DILexicalBlock(scope: !1146, file: !100, line: 359, column: 13)
!1146 = distinct !DILexicalBlock(scope: !1139, file: !100, line: 359, column: 13)
!1147 = !DILocation(line: 359, column: 13, scope: !1148)
!1148 = !DILexicalBlockFile(scope: !1146, file: !100, discriminator: 1)
!1149 = !DILocation(line: 359, column: 13, scope: !1150)
!1150 = !DILexicalBlockFile(scope: !1145, file: !100, discriminator: 2)
!1151 = !DILocation(line: 359, column: 13, scope: !1152)
!1152 = !DILexicalBlockFile(scope: !1146, file: !100, discriminator: 3)
!1153 = !DILocation(line: 358, column: 70, scope: !1154)
!1154 = !DILexicalBlockFile(scope: !1139, file: !100, discriminator: 2)
!1155 = distinct !{!1155, !1156, !1157}
!1156 = !DILocation(line: 358, column: 11, scope: !1140)
!1157 = !DILocation(line: 359, column: 13, scope: !1140)
!1158 = !DILocation(line: 362, column: 28, scope: !1131)
!1159 = !DILocation(line: 364, column: 7, scope: !1116)
!1160 = !DILocation(line: 367, column: 7, scope: !1116)
!1161 = !DILocation(line: 370, column: 7, scope: !1116)
!1162 = !DILocation(line: 373, column: 12, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1116, file: !100, line: 373, column: 11)
!1164 = !DILocation(line: 373, column: 11, scope: !1116)
!1165 = !DILocation(line: 378, column: 12, scope: !1166)
!1166 = distinct !DILexicalBlock(scope: !1116, file: !100, line: 378, column: 11)
!1167 = !DILocation(line: 378, column: 11, scope: !1116)
!1168 = !DILocation(line: 379, column: 9, scope: !1169)
!1169 = !DILexicalBlockFile(scope: !1170, file: !100, discriminator: 1)
!1170 = distinct !DILexicalBlock(scope: !1171, file: !100, line: 379, column: 9)
!1171 = distinct !DILexicalBlock(scope: !1166, file: !100, line: 379, column: 9)
!1172 = !DILocation(line: 379, column: 9, scope: !1173)
!1173 = !DILexicalBlockFile(scope: !1171, file: !100, discriminator: 1)
!1174 = !DILocation(line: 379, column: 9, scope: !1175)
!1175 = !DILexicalBlockFile(scope: !1170, file: !100, discriminator: 2)
!1176 = !DILocation(line: 386, column: 7, scope: !1116)
!1177 = !DILocation(line: 389, column: 7, scope: !1116)
!1178 = !DILocation(line: 255, column: 10, scope: !1024)
!1179 = !DILocation(line: 392, column: 8, scope: !1053)
!1180 = !DILocation(line: 392, column: 27, scope: !1181)
!1181 = !DILexicalBlockFile(scope: !1052, file: !100, discriminator: 1)
!1182 = !DILocation(line: 392, column: 19, scope: !1181)
!1183 = !DILocation(line: 392, column: 60, scope: !1184)
!1184 = !DILexicalBlockFile(scope: !1052, file: !100, discriminator: 3)
!1185 = !DILocation(line: 392, column: 3, scope: !1186)
!1186 = !DILexicalBlockFile(scope: !1053, file: !100, discriminator: 4)
!1187 = !DILocation(line: 392, column: 41, scope: !1188)
!1188 = !DILexicalBlockFile(scope: !1052, file: !100, discriminator: 2)
!1189 = !DILocation(line: 392, column: 48, scope: !1188)
!1190 = !DILocation(line: 396, column: 12, scope: !1051)
!1191 = !DILocation(line: 397, column: 12, scope: !1051)
!1192 = !DILocation(line: 398, column: 12, scope: !1051)
!1193 = !DILocation(line: 401, column: 11, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !1051, file: !100, line: 400, column: 11)
!1195 = !DILocation(line: 403, column: 17, scope: !1196)
!1196 = !DILexicalBlockFile(scope: !1194, file: !100, discriminator: 1)
!1197 = !DILocation(line: 404, column: 39, scope: !1194)
!1198 = !DILocation(line: 408, column: 32, scope: !1194)
!1199 = !DILocation(line: 404, column: 19, scope: !1200)
!1200 = !DILexicalBlockFile(scope: !1194, file: !100, discriminator: 2)
!1201 = !DILocation(line: 404, column: 15, scope: !1202)
!1202 = !DILexicalBlockFile(scope: !1194, file: !100, discriminator: 4)
!1203 = !DILocation(line: 409, column: 11, scope: !1194)
!1204 = !DILocation(line: 409, column: 26, scope: !1196)
!1205 = !DILocation(line: 409, column: 14, scope: !1196)
!1206 = !DILocation(line: 400, column: 11, scope: !1207)
!1207 = !DILexicalBlockFile(scope: !1051, file: !100, discriminator: 1)
!1208 = !DILocation(line: 416, column: 11, scope: !1051)
!1209 = !DILocation(line: 394, column: 21, scope: !1051)
!1210 = !DILocation(line: 417, column: 7, scope: !1051)
!1211 = !DILocation(line: 420, column: 15, scope: !1060)
!1212 = !DILocation(line: 422, column: 15, scope: !1213)
!1213 = !DILexicalBlockFile(scope: !1214, file: !100, discriminator: 1)
!1214 = distinct !DILexicalBlock(scope: !1215, file: !100, line: 422, column: 15)
!1215 = distinct !DILexicalBlock(scope: !1216, file: !100, line: 421, column: 13)
!1216 = distinct !DILexicalBlock(scope: !1060, file: !100, line: 420, column: 15)
!1217 = !DILocation(line: 422, column: 15, scope: !1218)
!1218 = !DILexicalBlockFile(scope: !1219, file: !100, discriminator: 4)
!1219 = distinct !DILexicalBlock(scope: !1214, file: !100, line: 422, column: 15)
!1220 = !DILocation(line: 422, column: 15, scope: !1221)
!1221 = !DILexicalBlockFile(scope: !1219, file: !100, discriminator: 3)
!1222 = !DILocation(line: 422, column: 15, scope: !1223)
!1223 = !DILexicalBlockFile(scope: !1224, file: !100, discriminator: 6)
!1224 = distinct !DILexicalBlock(scope: !1225, file: !100, line: 422, column: 15)
!1225 = distinct !DILexicalBlock(scope: !1226, file: !100, line: 422, column: 15)
!1226 = distinct !DILexicalBlock(scope: !1219, file: !100, line: 422, column: 15)
!1227 = !DILocation(line: 422, column: 15, scope: !1228)
!1228 = !DILexicalBlockFile(scope: !1225, file: !100, discriminator: 6)
!1229 = !DILocation(line: 422, column: 15, scope: !1230)
!1230 = !DILexicalBlockFile(scope: !1224, file: !100, discriminator: 7)
!1231 = !DILocation(line: 422, column: 15, scope: !1232)
!1232 = !DILexicalBlockFile(scope: !1225, file: !100, discriminator: 8)
!1233 = !DILocation(line: 422, column: 15, scope: !1234)
!1234 = !DILexicalBlockFile(scope: !1235, file: !100, discriminator: 11)
!1235 = distinct !DILexicalBlock(scope: !1236, file: !100, line: 422, column: 15)
!1236 = distinct !DILexicalBlock(scope: !1226, file: !100, line: 422, column: 15)
!1237 = !DILocation(line: 422, column: 15, scope: !1238)
!1238 = !DILexicalBlockFile(scope: !1236, file: !100, discriminator: 11)
!1239 = !DILocation(line: 422, column: 15, scope: !1240)
!1240 = !DILexicalBlockFile(scope: !1235, file: !100, discriminator: 12)
!1241 = !DILocation(line: 422, column: 15, scope: !1242)
!1242 = !DILexicalBlockFile(scope: !1236, file: !100, discriminator: 13)
!1243 = !DILocation(line: 422, column: 15, scope: !1244)
!1244 = !DILexicalBlockFile(scope: !1245, file: !100, discriminator: 16)
!1245 = distinct !DILexicalBlock(scope: !1246, file: !100, line: 422, column: 15)
!1246 = distinct !DILexicalBlock(scope: !1226, file: !100, line: 422, column: 15)
!1247 = !DILocation(line: 422, column: 15, scope: !1248)
!1248 = !DILexicalBlockFile(scope: !1246, file: !100, discriminator: 16)
!1249 = !DILocation(line: 422, column: 15, scope: !1250)
!1250 = !DILexicalBlockFile(scope: !1245, file: !100, discriminator: 17)
!1251 = !DILocation(line: 422, column: 15, scope: !1252)
!1252 = !DILexicalBlockFile(scope: !1246, file: !100, discriminator: 18)
!1253 = !DILocation(line: 422, column: 15, scope: !1254)
!1254 = !DILexicalBlockFile(scope: !1226, file: !100, discriminator: 20)
!1255 = !DILocation(line: 422, column: 15, scope: !1256)
!1256 = !DILexicalBlockFile(scope: !1257, file: !100, discriminator: 22)
!1257 = distinct !DILexicalBlock(scope: !1258, file: !100, line: 422, column: 15)
!1258 = distinct !DILexicalBlock(scope: !1214, file: !100, line: 422, column: 15)
!1259 = !DILocation(line: 422, column: 15, scope: !1260)
!1260 = !DILexicalBlockFile(scope: !1258, file: !100, discriminator: 22)
!1261 = !DILocation(line: 422, column: 15, scope: !1262)
!1262 = !DILexicalBlockFile(scope: !1257, file: !100, discriminator: 23)
!1263 = !DILocation(line: 422, column: 15, scope: !1264)
!1264 = !DILexicalBlockFile(scope: !1258, file: !100, discriminator: 24)
!1265 = !DILocation(line: 430, column: 19, scope: !1266)
!1266 = distinct !DILexicalBlock(scope: !1215, file: !100, line: 429, column: 19)
!1267 = !DILocation(line: 430, column: 24, scope: !1268)
!1268 = !DILexicalBlockFile(scope: !1266, file: !100, discriminator: 1)
!1269 = !DILocation(line: 430, column: 28, scope: !1268)
!1270 = !DILocation(line: 430, column: 38, scope: !1268)
!1271 = !DILocation(line: 430, column: 48, scope: !1272)
!1272 = !DILexicalBlockFile(scope: !1266, file: !100, discriminator: 2)
!1273 = !DILocation(line: 430, column: 59, scope: !1272)
!1274 = !DILocation(line: 432, column: 19, scope: !1275)
!1275 = !DILexicalBlockFile(scope: !1276, file: !100, discriminator: 1)
!1276 = distinct !DILexicalBlock(scope: !1277, file: !100, line: 432, column: 19)
!1277 = distinct !DILexicalBlock(scope: !1278, file: !100, line: 432, column: 19)
!1278 = distinct !DILexicalBlock(scope: !1266, file: !100, line: 431, column: 17)
!1279 = !DILocation(line: 432, column: 19, scope: !1280)
!1280 = !DILexicalBlockFile(scope: !1277, file: !100, discriminator: 1)
!1281 = !DILocation(line: 432, column: 19, scope: !1282)
!1282 = !DILexicalBlockFile(scope: !1276, file: !100, discriminator: 2)
!1283 = !DILocation(line: 432, column: 19, scope: !1284)
!1284 = !DILexicalBlockFile(scope: !1277, file: !100, discriminator: 3)
!1285 = !DILocation(line: 433, column: 19, scope: !1286)
!1286 = !DILexicalBlockFile(scope: !1287, file: !100, discriminator: 1)
!1287 = distinct !DILexicalBlock(scope: !1288, file: !100, line: 433, column: 19)
!1288 = distinct !DILexicalBlock(scope: !1278, file: !100, line: 433, column: 19)
!1289 = !DILocation(line: 433, column: 19, scope: !1290)
!1290 = !DILexicalBlockFile(scope: !1288, file: !100, discriminator: 1)
!1291 = !DILocation(line: 433, column: 19, scope: !1292)
!1292 = !DILexicalBlockFile(scope: !1287, file: !100, discriminator: 2)
!1293 = !DILocation(line: 433, column: 19, scope: !1294)
!1294 = !DILexicalBlockFile(scope: !1288, file: !100, discriminator: 3)
!1295 = !DILocation(line: 434, column: 17, scope: !1278)
!1296 = !DILocation(line: 441, column: 20, scope: !1216)
!1297 = !DILocation(line: 446, column: 11, scope: !1060)
!1298 = !DILocation(line: 449, column: 19, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1060, file: !100, line: 447, column: 13)
!1300 = !DILocation(line: 455, column: 19, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !1299, file: !100, line: 454, column: 19)
!1302 = !DILocation(line: 455, column: 24, scope: !1303)
!1303 = !DILexicalBlockFile(scope: !1301, file: !100, discriminator: 1)
!1304 = !DILocation(line: 455, column: 28, scope: !1303)
!1305 = !DILocation(line: 455, column: 38, scope: !1303)
!1306 = !DILocation(line: 455, column: 47, scope: !1307)
!1307 = !DILexicalBlockFile(scope: !1301, file: !100, discriminator: 2)
!1308 = !DILocation(line: 455, column: 41, scope: !1307)
!1309 = !DILocation(line: 455, column: 52, scope: !1307)
!1310 = !DILocation(line: 454, column: 19, scope: !1311)
!1311 = !DILexicalBlockFile(scope: !1299, file: !100, discriminator: 1)
!1312 = !DILocation(line: 456, column: 25, scope: !1301)
!1313 = !DILocation(line: 456, column: 17, scope: !1301)
!1314 = !DILocation(line: 463, column: 25, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1301, file: !100, line: 457, column: 19)
!1316 = !DILocation(line: 467, column: 21, scope: !1317)
!1317 = !DILexicalBlockFile(scope: !1318, file: !100, discriminator: 1)
!1318 = distinct !DILexicalBlock(scope: !1319, file: !100, line: 467, column: 21)
!1319 = distinct !DILexicalBlock(scope: !1315, file: !100, line: 467, column: 21)
!1320 = !DILocation(line: 467, column: 21, scope: !1321)
!1321 = !DILexicalBlockFile(scope: !1319, file: !100, discriminator: 1)
!1322 = !DILocation(line: 467, column: 21, scope: !1323)
!1323 = !DILexicalBlockFile(scope: !1318, file: !100, discriminator: 2)
!1324 = !DILocation(line: 467, column: 21, scope: !1325)
!1325 = !DILexicalBlockFile(scope: !1319, file: !100, discriminator: 3)
!1326 = !DILocation(line: 468, column: 21, scope: !1327)
!1327 = !DILexicalBlockFile(scope: !1328, file: !100, discriminator: 1)
!1328 = distinct !DILexicalBlock(scope: !1329, file: !100, line: 468, column: 21)
!1329 = distinct !DILexicalBlock(scope: !1315, file: !100, line: 468, column: 21)
!1330 = !DILocation(line: 468, column: 21, scope: !1331)
!1331 = !DILexicalBlockFile(scope: !1329, file: !100, discriminator: 1)
!1332 = !DILocation(line: 468, column: 21, scope: !1333)
!1333 = !DILexicalBlockFile(scope: !1328, file: !100, discriminator: 2)
!1334 = !DILocation(line: 468, column: 21, scope: !1335)
!1335 = !DILexicalBlockFile(scope: !1329, file: !100, discriminator: 3)
!1336 = !DILocation(line: 469, column: 21, scope: !1337)
!1337 = !DILexicalBlockFile(scope: !1338, file: !100, discriminator: 1)
!1338 = distinct !DILexicalBlock(scope: !1339, file: !100, line: 469, column: 21)
!1339 = distinct !DILexicalBlock(scope: !1315, file: !100, line: 469, column: 21)
!1340 = !DILocation(line: 469, column: 21, scope: !1341)
!1341 = !DILexicalBlockFile(scope: !1339, file: !100, discriminator: 1)
!1342 = !DILocation(line: 469, column: 21, scope: !1343)
!1343 = !DILexicalBlockFile(scope: !1338, file: !100, discriminator: 2)
!1344 = !DILocation(line: 469, column: 21, scope: !1345)
!1345 = !DILexicalBlockFile(scope: !1339, file: !100, discriminator: 3)
!1346 = !DILocation(line: 470, column: 21, scope: !1347)
!1347 = !DILexicalBlockFile(scope: !1348, file: !100, discriminator: 1)
!1348 = distinct !DILexicalBlock(scope: !1349, file: !100, line: 470, column: 21)
!1349 = distinct !DILexicalBlock(scope: !1315, file: !100, line: 470, column: 21)
!1350 = !DILocation(line: 470, column: 21, scope: !1351)
!1351 = !DILexicalBlockFile(scope: !1349, file: !100, discriminator: 1)
!1352 = !DILocation(line: 470, column: 21, scope: !1353)
!1353 = !DILexicalBlockFile(scope: !1348, file: !100, discriminator: 2)
!1354 = !DILocation(line: 470, column: 21, scope: !1355)
!1355 = !DILexicalBlockFile(scope: !1349, file: !100, discriminator: 3)
!1356 = !DILocation(line: 471, column: 21, scope: !1315)
!1357 = !DILocation(line: 395, column: 21, scope: !1051)
!1358 = !DILocation(line: 484, column: 31, scope: !1060)
!1359 = !DILocation(line: 485, column: 31, scope: !1060)
!1360 = !DILocation(line: 487, column: 31, scope: !1060)
!1361 = !DILocation(line: 488, column: 31, scope: !1060)
!1362 = !DILocation(line: 489, column: 31, scope: !1060)
!1363 = !DILocation(line: 492, column: 15, scope: !1060)
!1364 = !DILocation(line: 494, column: 19, scope: !1365)
!1365 = distinct !DILexicalBlock(scope: !1366, file: !100, line: 493, column: 13)
!1366 = distinct !DILexicalBlock(scope: !1060, file: !100, line: 492, column: 15)
!1367 = !DILocation(line: 501, column: 33, scope: !1368)
!1368 = distinct !DILexicalBlock(scope: !1060, file: !100, line: 501, column: 15)
!1369 = !DILocation(line: 506, column: 15, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !1060, file: !100, line: 505, column: 15)
!1371 = !DILocation(line: 510, column: 15, scope: !1060)
!1372 = !DILocation(line: 518, column: 26, scope: !1373)
!1373 = distinct !DILexicalBlock(scope: !1060, file: !100, line: 518, column: 15)
!1374 = !DILocation(line: 518, column: 15, scope: !1060)
!1375 = !DILocation(line: 518, column: 40, scope: !1376)
!1376 = !DILexicalBlockFile(scope: !1373, file: !100, discriminator: 1)
!1377 = !DILocation(line: 518, column: 47, scope: !1376)
!1378 = !DILocation(line: 522, column: 17, scope: !1379)
!1379 = distinct !DILexicalBlock(scope: !1060, file: !100, line: 522, column: 15)
!1380 = !DILocation(line: 518, column: 18, scope: !1376)
!1381 = !DILocation(line: 518, column: 65, scope: !1382)
!1382 = !DILexicalBlockFile(scope: !1373, file: !100, discriminator: 2)
!1383 = !DILocation(line: 518, column: 15, scope: !1384)
!1384 = !DILexicalBlockFile(scope: !1060, file: !100, discriminator: 2)
!1385 = !DILocation(line: 522, column: 15, scope: !1060)
!1386 = !DILocation(line: 526, column: 11, scope: !1060)
!1387 = !DILocation(line: 541, column: 15, scope: !1388)
!1388 = distinct !DILexicalBlock(scope: !1060, file: !100, line: 540, column: 15)
!1389 = !DILocation(line: 548, column: 15, scope: !1060)
!1390 = !DILocation(line: 550, column: 19, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !1392, file: !100, line: 549, column: 13)
!1392 = distinct !DILexicalBlock(scope: !1060, file: !100, line: 548, column: 15)
!1393 = !DILocation(line: 553, column: 19, scope: !1394)
!1394 = distinct !DILexicalBlock(scope: !1391, file: !100, line: 553, column: 19)
!1395 = !DILocation(line: 553, column: 35, scope: !1396)
!1396 = !DILexicalBlockFile(scope: !1394, file: !100, discriminator: 1)
!1397 = !DILocation(line: 553, column: 30, scope: !1394)
!1398 = !DILocation(line: 562, column: 15, scope: !1399)
!1399 = !DILexicalBlockFile(scope: !1400, file: !100, discriminator: 1)
!1400 = distinct !DILexicalBlock(scope: !1401, file: !100, line: 562, column: 15)
!1401 = distinct !DILexicalBlock(scope: !1391, file: !100, line: 562, column: 15)
!1402 = !DILocation(line: 562, column: 15, scope: !1403)
!1403 = !DILexicalBlockFile(scope: !1401, file: !100, discriminator: 1)
!1404 = !DILocation(line: 562, column: 15, scope: !1405)
!1405 = !DILexicalBlockFile(scope: !1400, file: !100, discriminator: 2)
!1406 = !DILocation(line: 562, column: 15, scope: !1407)
!1407 = !DILexicalBlockFile(scope: !1401, file: !100, discriminator: 3)
!1408 = !DILocation(line: 563, column: 15, scope: !1409)
!1409 = !DILexicalBlockFile(scope: !1410, file: !100, discriminator: 1)
!1410 = distinct !DILexicalBlock(scope: !1411, file: !100, line: 563, column: 15)
!1411 = distinct !DILexicalBlock(scope: !1391, file: !100, line: 563, column: 15)
!1412 = !DILocation(line: 563, column: 15, scope: !1413)
!1413 = !DILexicalBlockFile(scope: !1411, file: !100, discriminator: 1)
!1414 = !DILocation(line: 563, column: 15, scope: !1415)
!1415 = !DILexicalBlockFile(scope: !1410, file: !100, discriminator: 2)
!1416 = !DILocation(line: 563, column: 15, scope: !1417)
!1417 = !DILexicalBlockFile(scope: !1411, file: !100, discriminator: 3)
!1418 = !DILocation(line: 564, column: 15, scope: !1419)
!1419 = !DILexicalBlockFile(scope: !1420, file: !100, discriminator: 1)
!1420 = distinct !DILexicalBlock(scope: !1421, file: !100, line: 564, column: 15)
!1421 = distinct !DILexicalBlock(scope: !1391, file: !100, line: 564, column: 15)
!1422 = !DILocation(line: 564, column: 15, scope: !1423)
!1423 = !DILexicalBlockFile(scope: !1421, file: !100, discriminator: 1)
!1424 = !DILocation(line: 564, column: 15, scope: !1425)
!1425 = !DILexicalBlockFile(scope: !1420, file: !100, discriminator: 2)
!1426 = !DILocation(line: 564, column: 15, scope: !1427)
!1427 = !DILexicalBlockFile(scope: !1421, file: !100, discriminator: 3)
!1428 = !DILocation(line: 566, column: 13, scope: !1391)
!1429 = !DILocation(line: 606, column: 17, scope: !1059)
!1430 = !DILocation(line: 602, column: 20, scope: !1059)
!1431 = !DILocation(line: 609, column: 29, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !1064, file: !100, line: 607, column: 15)
!1433 = !{!1434, !1434, i64 0}
!1434 = !{!"short", !600, i64 0}
!1435 = !DILocation(line: 609, column: 27, scope: !1432)
!1436 = !DILocation(line: 604, column: 18, scope: !1059)
!1437 = !DILocation(line: 610, column: 15, scope: !1432)
!1438 = !DILocation(line: 613, column: 17, scope: !1063)
!1439 = !DILocation(line: 614, column: 17, scope: !1063)
!1440 = !DILocation(line: 618, column: 29, scope: !1441)
!1441 = distinct !DILexicalBlock(scope: !1063, file: !100, line: 618, column: 21)
!1442 = !DILocation(line: 618, column: 21, scope: !1063)
!1443 = distinct !{!1443, !1444, !1445}
!1444 = !DILocation(line: 621, column: 17, scope: !1063)
!1445 = !DILocation(line: 667, column: 44, scope: !1063)
!1446 = !DILocation(line: 619, column: 29, scope: !1441)
!1447 = !DILocation(line: 619, column: 19, scope: !1441)
!1448 = !DILocation(line: 623, column: 21, scope: !1080)
!1449 = !DILocation(line: 624, column: 56, scope: !1080)
!1450 = !DILocation(line: 624, column: 50, scope: !1080)
!1451 = !DILocation(line: 625, column: 53, scope: !1080)
!1452 = !DIExpression(DW_OP_deref)
!1453 = !DILocation(line: 613, column: 27, scope: !1063)
!1454 = !DILocation(line: 623, column: 29, scope: !1080)
!1455 = !DILocation(line: 624, column: 36, scope: !1080)
!1456 = !DILocation(line: 624, column: 28, scope: !1080)
!1457 = !DILocation(line: 626, column: 25, scope: !1080)
!1458 = !DILocation(line: 636, column: 38, scope: !1459)
!1459 = !DILexicalBlockFile(scope: !1460, file: !100, discriminator: 1)
!1460 = distinct !DILexicalBlock(scope: !1087, file: !100, line: 634, column: 23)
!1461 = !DILocation(line: 636, column: 48, scope: !1459)
!1462 = !DILocation(line: 636, column: 51, scope: !1463)
!1463 = !DILexicalBlockFile(scope: !1460, file: !100, discriminator: 2)
!1464 = !DILocation(line: 636, column: 48, scope: !1463)
!1465 = !DILocation(line: 636, column: 25, scope: !1466)
!1466 = !DILexicalBlockFile(scope: !1460, file: !100, discriminator: 3)
!1467 = !DILocation(line: 637, column: 28, scope: !1460)
!1468 = !DILocation(line: 636, column: 34, scope: !1459)
!1469 = distinct !{!1469, !1470, !1467}
!1470 = !DILocation(line: 636, column: 25, scope: !1460)
!1471 = !DILocation(line: 650, column: 43, scope: !1472)
!1472 = !DILexicalBlockFile(scope: !1473, file: !100, discriminator: 1)
!1473 = distinct !DILexicalBlock(scope: !1474, file: !100, line: 650, column: 29)
!1474 = distinct !DILexicalBlock(scope: !1084, file: !100, line: 650, column: 29)
!1475 = !DILocation(line: 647, column: 29, scope: !1085)
!1476 = !DILocation(line: 649, column: 36, scope: !1084)
!1477 = !DILocation(line: 651, column: 49, scope: !1473)
!1478 = !DILocation(line: 651, column: 39, scope: !1473)
!1479 = !DILocation(line: 651, column: 31, scope: !1473)
!1480 = !DILocation(line: 650, column: 53, scope: !1481)
!1481 = !DILexicalBlockFile(scope: !1473, file: !100, discriminator: 2)
!1482 = !DILocation(line: 650, column: 29, scope: !1483)
!1483 = !DILexicalBlockFile(scope: !1474, file: !100, discriminator: 1)
!1484 = distinct !{!1484, !1485, !1486}
!1485 = !DILocation(line: 650, column: 29, scope: !1474)
!1486 = !DILocation(line: 659, column: 33, scope: !1474)
!1487 = !DILocation(line: 666, column: 19, scope: !1063)
!1488 = !DILocation(line: 662, column: 41, scope: !1489)
!1489 = distinct !DILexicalBlock(scope: !1086, file: !100, line: 662, column: 29)
!1490 = !DILocation(line: 662, column: 31, scope: !1489)
!1491 = !DILocation(line: 662, column: 29, scope: !1086)
!1492 = !DILocation(line: 664, column: 27, scope: !1086)
!1493 = !DILocation(line: 667, column: 26, scope: !1063)
!1494 = !DILocation(line: 667, column: 24, scope: !1063)
!1495 = !DILocation(line: 666, column: 19, scope: !1496)
!1496 = !DILexicalBlockFile(scope: !1080, file: !100, discriminator: 3)
!1497 = !DILocation(line: 668, column: 15, scope: !1064)
!1498 = !DILocation(line: 670, column: 40, scope: !1059)
!1499 = !DILocation(line: 672, column: 19, scope: !1092)
!1500 = !DILocation(line: 672, column: 45, scope: !1501)
!1501 = !DILexicalBlockFile(scope: !1092, file: !100, discriminator: 1)
!1502 = !DILocation(line: 672, column: 23, scope: !1092)
!1503 = !DILocation(line: 676, column: 33, scope: !1091)
!1504 = !DILocation(line: 676, column: 24, scope: !1091)
!1505 = !DILocation(line: 678, column: 17, scope: !1091)
!1506 = !DILocation(line: 680, column: 43, scope: !1507)
!1507 = distinct !DILexicalBlock(scope: !1508, file: !100, line: 680, column: 25)
!1508 = distinct !DILexicalBlock(scope: !1509, file: !100, line: 679, column: 19)
!1509 = distinct !DILexicalBlock(scope: !1510, file: !100, line: 678, column: 17)
!1510 = distinct !DILexicalBlock(scope: !1091, file: !100, line: 678, column: 17)
!1511 = !DILocation(line: 682, column: 25, scope: !1512)
!1512 = !DILexicalBlockFile(scope: !1513, file: !100, discriminator: 1)
!1513 = distinct !DILexicalBlock(scope: !1514, file: !100, line: 682, column: 25)
!1514 = distinct !DILexicalBlock(scope: !1507, file: !100, line: 681, column: 23)
!1515 = !DILocation(line: 682, column: 25, scope: !1516)
!1516 = !DILexicalBlockFile(scope: !1517, file: !100, discriminator: 4)
!1517 = distinct !DILexicalBlock(scope: !1513, file: !100, line: 682, column: 25)
!1518 = !DILocation(line: 682, column: 25, scope: !1519)
!1519 = !DILexicalBlockFile(scope: !1517, file: !100, discriminator: 3)
!1520 = !DILocation(line: 682, column: 25, scope: !1521)
!1521 = !DILexicalBlockFile(scope: !1522, file: !100, discriminator: 6)
!1522 = distinct !DILexicalBlock(scope: !1523, file: !100, line: 682, column: 25)
!1523 = distinct !DILexicalBlock(scope: !1524, file: !100, line: 682, column: 25)
!1524 = distinct !DILexicalBlock(scope: !1517, file: !100, line: 682, column: 25)
!1525 = !DILocation(line: 682, column: 25, scope: !1526)
!1526 = !DILexicalBlockFile(scope: !1523, file: !100, discriminator: 6)
!1527 = !DILocation(line: 682, column: 25, scope: !1528)
!1528 = !DILexicalBlockFile(scope: !1522, file: !100, discriminator: 7)
!1529 = !DILocation(line: 682, column: 25, scope: !1530)
!1530 = !DILexicalBlockFile(scope: !1523, file: !100, discriminator: 8)
!1531 = !DILocation(line: 682, column: 25, scope: !1532)
!1532 = !DILexicalBlockFile(scope: !1533, file: !100, discriminator: 11)
!1533 = distinct !DILexicalBlock(scope: !1534, file: !100, line: 682, column: 25)
!1534 = distinct !DILexicalBlock(scope: !1524, file: !100, line: 682, column: 25)
!1535 = !DILocation(line: 682, column: 25, scope: !1536)
!1536 = !DILexicalBlockFile(scope: !1534, file: !100, discriminator: 11)
!1537 = !DILocation(line: 682, column: 25, scope: !1538)
!1538 = !DILexicalBlockFile(scope: !1533, file: !100, discriminator: 12)
!1539 = !DILocation(line: 682, column: 25, scope: !1540)
!1540 = !DILexicalBlockFile(scope: !1534, file: !100, discriminator: 13)
!1541 = !DILocation(line: 682, column: 25, scope: !1542)
!1542 = !DILexicalBlockFile(scope: !1543, file: !100, discriminator: 16)
!1543 = distinct !DILexicalBlock(scope: !1544, file: !100, line: 682, column: 25)
!1544 = distinct !DILexicalBlock(scope: !1524, file: !100, line: 682, column: 25)
!1545 = !DILocation(line: 682, column: 25, scope: !1546)
!1546 = !DILexicalBlockFile(scope: !1544, file: !100, discriminator: 16)
!1547 = !DILocation(line: 682, column: 25, scope: !1548)
!1548 = !DILexicalBlockFile(scope: !1543, file: !100, discriminator: 17)
!1549 = !DILocation(line: 682, column: 25, scope: !1550)
!1550 = !DILexicalBlockFile(scope: !1544, file: !100, discriminator: 18)
!1551 = !DILocation(line: 682, column: 25, scope: !1552)
!1552 = !DILexicalBlockFile(scope: !1524, file: !100, discriminator: 20)
!1553 = !DILocation(line: 682, column: 25, scope: !1554)
!1554 = !DILexicalBlockFile(scope: !1555, file: !100, discriminator: 22)
!1555 = distinct !DILexicalBlock(scope: !1556, file: !100, line: 682, column: 25)
!1556 = distinct !DILexicalBlock(scope: !1513, file: !100, line: 682, column: 25)
!1557 = !DILocation(line: 682, column: 25, scope: !1558)
!1558 = !DILexicalBlockFile(scope: !1556, file: !100, discriminator: 22)
!1559 = !DILocation(line: 682, column: 25, scope: !1560)
!1560 = !DILexicalBlockFile(scope: !1555, file: !100, discriminator: 23)
!1561 = !DILocation(line: 682, column: 25, scope: !1562)
!1562 = !DILexicalBlockFile(scope: !1556, file: !100, discriminator: 24)
!1563 = !DILocation(line: 683, column: 25, scope: !1564)
!1564 = !DILexicalBlockFile(scope: !1565, file: !100, discriminator: 1)
!1565 = distinct !DILexicalBlock(scope: !1566, file: !100, line: 683, column: 25)
!1566 = distinct !DILexicalBlock(scope: !1514, file: !100, line: 683, column: 25)
!1567 = !DILocation(line: 683, column: 25, scope: !1568)
!1568 = !DILexicalBlockFile(scope: !1566, file: !100, discriminator: 1)
!1569 = !DILocation(line: 683, column: 25, scope: !1570)
!1570 = !DILexicalBlockFile(scope: !1565, file: !100, discriminator: 2)
!1571 = !DILocation(line: 683, column: 25, scope: !1572)
!1572 = !DILexicalBlockFile(scope: !1566, file: !100, discriminator: 3)
!1573 = !DILocation(line: 684, column: 25, scope: !1574)
!1574 = !DILexicalBlockFile(scope: !1575, file: !100, discriminator: 1)
!1575 = distinct !DILexicalBlock(scope: !1576, file: !100, line: 684, column: 25)
!1576 = distinct !DILexicalBlock(scope: !1514, file: !100, line: 684, column: 25)
!1577 = !DILocation(line: 684, column: 25, scope: !1578)
!1578 = !DILexicalBlockFile(scope: !1576, file: !100, discriminator: 1)
!1579 = !DILocation(line: 684, column: 25, scope: !1580)
!1580 = !DILexicalBlockFile(scope: !1575, file: !100, discriminator: 2)
!1581 = !DILocation(line: 684, column: 25, scope: !1582)
!1582 = !DILexicalBlockFile(scope: !1576, file: !100, discriminator: 3)
!1583 = !DILocation(line: 685, column: 38, scope: !1514)
!1584 = !DILocation(line: 685, column: 33, scope: !1514)
!1585 = !DILocation(line: 686, column: 23, scope: !1514)
!1586 = !DILocation(line: 687, column: 30, scope: !1587)
!1587 = distinct !DILexicalBlock(scope: !1507, file: !100, line: 687, column: 30)
!1588 = !DILocation(line: 687, column: 30, scope: !1507)
!1589 = !DILocation(line: 689, column: 25, scope: !1590)
!1590 = !DILexicalBlockFile(scope: !1591, file: !100, discriminator: 1)
!1591 = distinct !DILexicalBlock(scope: !1592, file: !100, line: 689, column: 25)
!1592 = distinct !DILexicalBlock(scope: !1593, file: !100, line: 689, column: 25)
!1593 = distinct !DILexicalBlock(scope: !1587, file: !100, line: 688, column: 23)
!1594 = !DILocation(line: 689, column: 25, scope: !1595)
!1595 = !DILexicalBlockFile(scope: !1592, file: !100, discriminator: 1)
!1596 = !DILocation(line: 689, column: 25, scope: !1597)
!1597 = !DILexicalBlockFile(scope: !1591, file: !100, discriminator: 2)
!1598 = !DILocation(line: 689, column: 25, scope: !1599)
!1599 = !DILexicalBlockFile(scope: !1592, file: !100, discriminator: 3)
!1600 = !DILocation(line: 691, column: 23, scope: !1593)
!1601 = !DILocation(line: 692, column: 35, scope: !1602)
!1602 = distinct !DILexicalBlock(scope: !1508, file: !100, line: 692, column: 25)
!1603 = !DILocation(line: 692, column: 30, scope: !1602)
!1604 = !DILocation(line: 692, column: 25, scope: !1508)
!1605 = !DILocation(line: 694, column: 21, scope: !1606)
!1606 = !DILexicalBlockFile(scope: !1607, file: !100, discriminator: 1)
!1607 = distinct !DILexicalBlock(scope: !1608, file: !100, line: 694, column: 21)
!1608 = distinct !DILexicalBlock(scope: !1508, file: !100, line: 694, column: 21)
!1609 = !DILocation(line: 694, column: 21, scope: !1610)
!1610 = !DILexicalBlockFile(scope: !1607, file: !100, discriminator: 2)
!1611 = !DILocation(line: 694, column: 21, scope: !1612)
!1612 = !DILexicalBlockFile(scope: !1613, file: !100, discriminator: 4)
!1613 = distinct !DILexicalBlock(scope: !1614, file: !100, line: 694, column: 21)
!1614 = distinct !DILexicalBlock(scope: !1615, file: !100, line: 694, column: 21)
!1615 = distinct !DILexicalBlock(scope: !1607, file: !100, line: 694, column: 21)
!1616 = !DILocation(line: 694, column: 21, scope: !1617)
!1617 = !DILexicalBlockFile(scope: !1614, file: !100, discriminator: 4)
!1618 = !DILocation(line: 694, column: 21, scope: !1619)
!1619 = !DILexicalBlockFile(scope: !1613, file: !100, discriminator: 5)
!1620 = !DILocation(line: 694, column: 21, scope: !1621)
!1621 = !DILexicalBlockFile(scope: !1614, file: !100, discriminator: 6)
!1622 = !DILocation(line: 694, column: 21, scope: !1623)
!1623 = !DILexicalBlockFile(scope: !1624, file: !100, discriminator: 9)
!1624 = distinct !DILexicalBlock(scope: !1625, file: !100, line: 694, column: 21)
!1625 = distinct !DILexicalBlock(scope: !1615, file: !100, line: 694, column: 21)
!1626 = !DILocation(line: 694, column: 21, scope: !1627)
!1627 = !DILexicalBlockFile(scope: !1625, file: !100, discriminator: 9)
!1628 = !DILocation(line: 694, column: 21, scope: !1629)
!1629 = !DILexicalBlockFile(scope: !1624, file: !100, discriminator: 10)
!1630 = !DILocation(line: 694, column: 21, scope: !1631)
!1631 = !DILexicalBlockFile(scope: !1625, file: !100, discriminator: 11)
!1632 = !DILocation(line: 694, column: 21, scope: !1633)
!1633 = !DILexicalBlockFile(scope: !1615, file: !100, discriminator: 13)
!1634 = !DILocation(line: 695, column: 21, scope: !1635)
!1635 = !DILexicalBlockFile(scope: !1636, file: !100, discriminator: 1)
!1636 = distinct !DILexicalBlock(scope: !1637, file: !100, line: 695, column: 21)
!1637 = distinct !DILexicalBlock(scope: !1508, file: !100, line: 695, column: 21)
!1638 = !DILocation(line: 695, column: 21, scope: !1639)
!1639 = !DILexicalBlockFile(scope: !1637, file: !100, discriminator: 1)
!1640 = !DILocation(line: 695, column: 21, scope: !1641)
!1641 = !DILexicalBlockFile(scope: !1636, file: !100, discriminator: 2)
!1642 = !DILocation(line: 695, column: 21, scope: !1643)
!1643 = !DILexicalBlockFile(scope: !1637, file: !100, discriminator: 3)
!1644 = !DILocation(line: 696, column: 25, scope: !1508)
!1645 = !DILocation(line: 678, column: 17, scope: !1646)
!1646 = !DILexicalBlockFile(scope: !1509, file: !100, discriminator: 1)
!1647 = distinct !{!1647, !1648, !1649}
!1648 = !DILocation(line: 678, column: 17, scope: !1510)
!1649 = !DILocation(line: 697, column: 19, scope: !1510)
!1650 = !DILocation(line: 704, column: 34, scope: !1651)
!1651 = distinct !DILexicalBlock(scope: !1051, file: !100, line: 704, column: 11)
!1652 = !DILocation(line: 706, column: 14, scope: !1651)
!1653 = !DILocation(line: 707, column: 14, scope: !1651)
!1654 = !DILocation(line: 707, column: 35, scope: !1655)
!1655 = !DILexicalBlockFile(scope: !1651, file: !100, discriminator: 1)
!1656 = !DILocation(line: 707, column: 17, scope: !1655)
!1657 = !DILocation(line: 707, column: 53, scope: !1655)
!1658 = !DILocation(line: 707, column: 47, scope: !1655)
!1659 = !DILocation(line: 707, column: 65, scope: !1655)
!1660 = !DILocation(line: 708, column: 15, scope: !1655)
!1661 = !DILocation(line: 708, column: 11, scope: !1651)
!1662 = !DILocation(line: 704, column: 11, scope: !1663)
!1663 = !DILexicalBlockFile(scope: !1051, file: !100, discriminator: 2)
!1664 = !DILocation(line: 712, column: 7, scope: !1665)
!1665 = !DILexicalBlockFile(scope: !1666, file: !100, discriminator: 1)
!1666 = distinct !DILexicalBlock(scope: !1051, file: !100, line: 712, column: 7)
!1667 = !DILocation(line: 712, column: 7, scope: !1668)
!1668 = !DILexicalBlockFile(scope: !1669, file: !100, discriminator: 4)
!1669 = distinct !DILexicalBlock(scope: !1666, file: !100, line: 712, column: 7)
!1670 = !DILocation(line: 712, column: 7, scope: !1671)
!1671 = !DILexicalBlockFile(scope: !1669, file: !100, discriminator: 3)
!1672 = !DILocation(line: 712, column: 7, scope: !1673)
!1673 = !DILexicalBlockFile(scope: !1674, file: !100, discriminator: 6)
!1674 = distinct !DILexicalBlock(scope: !1675, file: !100, line: 712, column: 7)
!1675 = distinct !DILexicalBlock(scope: !1676, file: !100, line: 712, column: 7)
!1676 = distinct !DILexicalBlock(scope: !1669, file: !100, line: 712, column: 7)
!1677 = !DILocation(line: 712, column: 7, scope: !1678)
!1678 = !DILexicalBlockFile(scope: !1675, file: !100, discriminator: 6)
!1679 = !DILocation(line: 712, column: 7, scope: !1680)
!1680 = !DILexicalBlockFile(scope: !1674, file: !100, discriminator: 7)
!1681 = !DILocation(line: 712, column: 7, scope: !1682)
!1682 = !DILexicalBlockFile(scope: !1675, file: !100, discriminator: 8)
!1683 = !DILocation(line: 712, column: 7, scope: !1684)
!1684 = !DILexicalBlockFile(scope: !1685, file: !100, discriminator: 11)
!1685 = distinct !DILexicalBlock(scope: !1686, file: !100, line: 712, column: 7)
!1686 = distinct !DILexicalBlock(scope: !1676, file: !100, line: 712, column: 7)
!1687 = !DILocation(line: 712, column: 7, scope: !1688)
!1688 = !DILexicalBlockFile(scope: !1686, file: !100, discriminator: 11)
!1689 = !DILocation(line: 712, column: 7, scope: !1690)
!1690 = !DILexicalBlockFile(scope: !1685, file: !100, discriminator: 12)
!1691 = !DILocation(line: 712, column: 7, scope: !1692)
!1692 = !DILexicalBlockFile(scope: !1686, file: !100, discriminator: 13)
!1693 = !DILocation(line: 712, column: 7, scope: !1694)
!1694 = !DILexicalBlockFile(scope: !1695, file: !100, discriminator: 16)
!1695 = distinct !DILexicalBlock(scope: !1696, file: !100, line: 712, column: 7)
!1696 = distinct !DILexicalBlock(scope: !1676, file: !100, line: 712, column: 7)
!1697 = !DILocation(line: 712, column: 7, scope: !1698)
!1698 = !DILexicalBlockFile(scope: !1696, file: !100, discriminator: 16)
!1699 = !DILocation(line: 712, column: 7, scope: !1700)
!1700 = !DILexicalBlockFile(scope: !1695, file: !100, discriminator: 17)
!1701 = !DILocation(line: 712, column: 7, scope: !1702)
!1702 = !DILexicalBlockFile(scope: !1696, file: !100, discriminator: 18)
!1703 = !DILocation(line: 712, column: 7, scope: !1704)
!1704 = !DILexicalBlockFile(scope: !1676, file: !100, discriminator: 20)
!1705 = !DILocation(line: 712, column: 7, scope: !1706)
!1706 = !DILexicalBlockFile(scope: !1707, file: !100, discriminator: 22)
!1707 = distinct !DILexicalBlock(scope: !1708, file: !100, line: 712, column: 7)
!1708 = distinct !DILexicalBlock(scope: !1666, file: !100, line: 712, column: 7)
!1709 = !DILocation(line: 712, column: 7, scope: !1710)
!1710 = !DILexicalBlockFile(scope: !1708, file: !100, discriminator: 22)
!1711 = !DILocation(line: 712, column: 7, scope: !1712)
!1712 = !DILexicalBlockFile(scope: !1707, file: !100, discriminator: 23)
!1713 = !DILocation(line: 712, column: 7, scope: !1714)
!1714 = !DILexicalBlockFile(scope: !1708, file: !100, discriminator: 24)
!1715 = !DILocation(line: 715, column: 7, scope: !1716)
!1716 = !DILexicalBlockFile(scope: !1717, file: !100, discriminator: 1)
!1717 = distinct !DILexicalBlock(scope: !1718, file: !100, line: 715, column: 7)
!1718 = distinct !DILexicalBlock(scope: !1051, file: !100, line: 715, column: 7)
!1719 = !DILocation(line: 715, column: 7, scope: !1720)
!1720 = !DILexicalBlockFile(scope: !1717, file: !100, discriminator: 2)
!1721 = !DILocation(line: 715, column: 7, scope: !1722)
!1722 = !DILexicalBlockFile(scope: !1723, file: !100, discriminator: 4)
!1723 = distinct !DILexicalBlock(scope: !1724, file: !100, line: 715, column: 7)
!1724 = distinct !DILexicalBlock(scope: !1725, file: !100, line: 715, column: 7)
!1725 = distinct !DILexicalBlock(scope: !1717, file: !100, line: 715, column: 7)
!1726 = !DILocation(line: 715, column: 7, scope: !1727)
!1727 = !DILexicalBlockFile(scope: !1724, file: !100, discriminator: 4)
!1728 = !DILocation(line: 715, column: 7, scope: !1729)
!1729 = !DILexicalBlockFile(scope: !1723, file: !100, discriminator: 5)
!1730 = !DILocation(line: 715, column: 7, scope: !1731)
!1731 = !DILexicalBlockFile(scope: !1724, file: !100, discriminator: 6)
!1732 = !DILocation(line: 715, column: 7, scope: !1733)
!1733 = !DILexicalBlockFile(scope: !1734, file: !100, discriminator: 9)
!1734 = distinct !DILexicalBlock(scope: !1735, file: !100, line: 715, column: 7)
!1735 = distinct !DILexicalBlock(scope: !1725, file: !100, line: 715, column: 7)
!1736 = !DILocation(line: 715, column: 7, scope: !1737)
!1737 = !DILexicalBlockFile(scope: !1735, file: !100, discriminator: 9)
!1738 = !DILocation(line: 715, column: 7, scope: !1739)
!1739 = !DILexicalBlockFile(scope: !1734, file: !100, discriminator: 10)
!1740 = !DILocation(line: 715, column: 7, scope: !1741)
!1741 = !DILexicalBlockFile(scope: !1735, file: !100, discriminator: 11)
!1742 = !DILocation(line: 715, column: 7, scope: !1743)
!1743 = !DILexicalBlockFile(scope: !1725, file: !100, discriminator: 13)
!1744 = !DILocation(line: 716, column: 7, scope: !1745)
!1745 = !DILexicalBlockFile(scope: !1746, file: !100, discriminator: 1)
!1746 = distinct !DILexicalBlock(scope: !1747, file: !100, line: 716, column: 7)
!1747 = distinct !DILexicalBlock(scope: !1051, file: !100, line: 716, column: 7)
!1748 = !DILocation(line: 716, column: 7, scope: !1749)
!1749 = !DILexicalBlockFile(scope: !1747, file: !100, discriminator: 1)
!1750 = !DILocation(line: 716, column: 7, scope: !1751)
!1751 = !DILexicalBlockFile(scope: !1746, file: !100, discriminator: 2)
!1752 = !DILocation(line: 716, column: 7, scope: !1753)
!1753 = !DILexicalBlockFile(scope: !1747, file: !100, discriminator: 3)
!1754 = !DILocation(line: 718, column: 13, scope: !1755)
!1755 = distinct !DILexicalBlock(scope: !1051, file: !100, line: 718, column: 11)
!1756 = !DILocation(line: 718, column: 11, scope: !1051)
!1757 = !DILocation(line: 720, column: 5, scope: !1052)
!1758 = !DILocation(line: 392, column: 75, scope: !1759)
!1759 = !DILexicalBlockFile(scope: !1052, file: !100, discriminator: 5)
!1760 = !DILocation(line: 392, column: 3, scope: !1759)
!1761 = distinct !{!1761, !1762, !1763}
!1762 = !DILocation(line: 392, column: 3, scope: !1053)
!1763 = !DILocation(line: 720, column: 5, scope: !1053)
!1764 = !DILocation(line: 722, column: 11, scope: !1765)
!1765 = distinct !DILexicalBlock(scope: !1024, file: !100, line: 722, column: 7)
!1766 = !DILocation(line: 722, column: 16, scope: !1765)
!1767 = !DILocation(line: 730, column: 51, scope: !1768)
!1768 = distinct !DILexicalBlock(scope: !1024, file: !100, line: 730, column: 7)
!1769 = !DILocation(line: 731, column: 10, scope: !1770)
!1770 = !DILexicalBlockFile(scope: !1768, file: !100, discriminator: 1)
!1771 = !DILocation(line: 733, column: 11, scope: !1772)
!1772 = distinct !DILexicalBlock(scope: !1773, file: !100, line: 733, column: 11)
!1773 = distinct !DILexicalBlock(scope: !1768, file: !100, line: 732, column: 5)
!1774 = !DILocation(line: 733, column: 11, scope: !1773)
!1775 = !DILocation(line: 734, column: 16, scope: !1772)
!1776 = !DILocation(line: 734, column: 9, scope: !1772)
!1777 = !DILocation(line: 738, column: 18, scope: !1778)
!1778 = distinct !DILexicalBlock(scope: !1772, file: !100, line: 738, column: 16)
!1779 = !DILocation(line: 738, column: 32, scope: !1780)
!1780 = !DILexicalBlockFile(scope: !1778, file: !100, discriminator: 1)
!1781 = !DILocation(line: 738, column: 29, scope: !1778)
!1782 = !DILocation(line: 747, column: 7, scope: !1783)
!1783 = distinct !DILexicalBlock(scope: !1024, file: !100, line: 747, column: 7)
!1784 = !DILocation(line: 747, column: 20, scope: !1783)
!1785 = !DILocation(line: 748, column: 12, scope: !1786)
!1786 = !DILexicalBlockFile(scope: !1787, file: !100, discriminator: 1)
!1787 = distinct !DILexicalBlock(scope: !1788, file: !100, line: 748, column: 5)
!1788 = distinct !DILexicalBlock(scope: !1783, file: !100, line: 748, column: 5)
!1789 = !DILocation(line: 748, column: 5, scope: !1790)
!1790 = !DILexicalBlockFile(scope: !1788, file: !100, discriminator: 1)
!1791 = !DILocation(line: 749, column: 7, scope: !1792)
!1792 = !DILexicalBlockFile(scope: !1793, file: !100, discriminator: 1)
!1793 = distinct !DILexicalBlock(scope: !1794, file: !100, line: 749, column: 7)
!1794 = distinct !DILexicalBlock(scope: !1787, file: !100, line: 749, column: 7)
!1795 = !DILocation(line: 749, column: 7, scope: !1796)
!1796 = !DILexicalBlockFile(scope: !1794, file: !100, discriminator: 1)
!1797 = !DILocation(line: 749, column: 7, scope: !1798)
!1798 = !DILexicalBlockFile(scope: !1793, file: !100, discriminator: 2)
!1799 = !DILocation(line: 749, column: 7, scope: !1800)
!1800 = !DILexicalBlockFile(scope: !1794, file: !100, discriminator: 3)
!1801 = !DILocation(line: 748, column: 39, scope: !1802)
!1802 = !DILexicalBlockFile(scope: !1787, file: !100, discriminator: 2)
!1803 = distinct !{!1803, !1804, !1805}
!1804 = !DILocation(line: 748, column: 5, scope: !1788)
!1805 = !DILocation(line: 749, column: 7, scope: !1788)
!1806 = !DILocation(line: 751, column: 11, scope: !1807)
!1807 = distinct !DILexicalBlock(scope: !1024, file: !100, line: 751, column: 7)
!1808 = !DILocation(line: 751, column: 7, scope: !1024)
!1809 = !DILocation(line: 752, column: 5, scope: !1807)
!1810 = !DILocation(line: 752, column: 17, scope: !1807)
!1811 = !DILocation(line: 758, column: 21, scope: !1812)
!1812 = distinct !DILexicalBlock(scope: !1024, file: !100, line: 758, column: 7)
!1813 = !DILocation(line: 758, column: 54, scope: !1814)
!1814 = !DILexicalBlockFile(scope: !1812, file: !100, discriminator: 1)
!1815 = !DILocation(line: 758, column: 51, scope: !1812)
!1816 = !DILocation(line: 762, column: 42, scope: !1024)
!1817 = !DILocation(line: 760, column: 10, scope: !1024)
!1818 = !DILocation(line: 760, column: 3, scope: !1024)
!1819 = !DILocation(line: 764, column: 1, scope: !1024)
!1820 = distinct !DISubprogram(name: "gettext_quote", scope: !100, file: !100, line: 199, type: !1821, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1823)
!1821 = !DISubroutineType(types: !1822)
!1822 = !{!6, !6, !58}
!1823 = !{!1824, !1825, !1826, !1827}
!1824 = !DILocalVariable(name: "msgid", arg: 1, scope: !1820, file: !100, line: 199, type: !6)
!1825 = !DILocalVariable(name: "s", arg: 2, scope: !1820, file: !100, line: 199, type: !58)
!1826 = !DILocalVariable(name: "translation", scope: !1820, file: !100, line: 201, type: !6)
!1827 = !DILocalVariable(name: "locale_code", scope: !1820, file: !100, line: 202, type: !6)
!1828 = !DILocation(line: 199, column: 28, scope: !1820)
!1829 = !DILocation(line: 199, column: 54, scope: !1820)
!1830 = !DILocation(line: 201, column: 29, scope: !1820)
!1831 = !DILocation(line: 201, column: 15, scope: !1820)
!1832 = !DILocation(line: 204, column: 19, scope: !1833)
!1833 = distinct !DILexicalBlock(scope: !1820, file: !100, line: 204, column: 7)
!1834 = !DILocation(line: 204, column: 7, scope: !1820)
!1835 = !DILocation(line: 225, column: 17, scope: !1820)
!1836 = !DILocation(line: 202, column: 15, scope: !1820)
!1837 = !DILocalVariable(name: "s2", arg: 2, scope: !1838, file: !1839, line: 160, type: !6)
!1838 = distinct !DISubprogram(name: "strcaseeq0", scope: !1839, file: !1839, line: 160, type: !1840, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1842)
!1839 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1840 = !DISubroutineType(types: !1841)
!1841 = !{!25, !6, !6, !8, !8, !8, !8, !8, !8, !8, !8, !8}
!1842 = !{!1843, !1837, !1844, !1845, !1846, !1847, !1848, !1849, !1850, !1851, !1852}
!1843 = !DILocalVariable(name: "s1", arg: 1, scope: !1838, file: !1839, line: 160, type: !6)
!1844 = !DILocalVariable(name: "s20", arg: 3, scope: !1838, file: !1839, line: 160, type: !8)
!1845 = !DILocalVariable(name: "s21", arg: 4, scope: !1838, file: !1839, line: 160, type: !8)
!1846 = !DILocalVariable(name: "s22", arg: 5, scope: !1838, file: !1839, line: 160, type: !8)
!1847 = !DILocalVariable(name: "s23", arg: 6, scope: !1838, file: !1839, line: 160, type: !8)
!1848 = !DILocalVariable(name: "s24", arg: 7, scope: !1838, file: !1839, line: 160, type: !8)
!1849 = !DILocalVariable(name: "s25", arg: 8, scope: !1838, file: !1839, line: 160, type: !8)
!1850 = !DILocalVariable(name: "s26", arg: 9, scope: !1838, file: !1839, line: 160, type: !8)
!1851 = !DILocalVariable(name: "s27", arg: 10, scope: !1838, file: !1839, line: 160, type: !8)
!1852 = !DILocalVariable(name: "s28", arg: 11, scope: !1838, file: !1839, line: 160, type: !8)
!1853 = !DILocation(line: 160, column: 41, scope: !1838, inlinedAt: !1854)
!1854 = distinct !DILocation(line: 226, column: 7, scope: !1855)
!1855 = distinct !DILexicalBlock(scope: !1820, file: !100, line: 226, column: 7)
!1856 = !DILocation(line: 160, column: 120, scope: !1838, inlinedAt: !1854)
!1857 = !DILocation(line: 160, column: 130, scope: !1838, inlinedAt: !1854)
!1858 = !DILocation(line: 162, column: 7, scope: !1859, inlinedAt: !1854)
!1859 = !DILexicalBlockFile(scope: !1860, file: !1839, discriminator: 1)
!1860 = distinct !DILexicalBlock(scope: !1838, file: !1839, line: 162, column: 7)
!1861 = !DILocalVariable(name: "s2", arg: 2, scope: !1862, file: !1839, line: 146, type: !6)
!1862 = distinct !DISubprogram(name: "strcaseeq1", scope: !1839, file: !1839, line: 146, type: !1863, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1865)
!1863 = !DISubroutineType(types: !1864)
!1864 = !{!25, !6, !6, !8, !8, !8, !8, !8, !8, !8, !8}
!1865 = !{!1866, !1861, !1867, !1868, !1869, !1870, !1871, !1872, !1873, !1874}
!1866 = !DILocalVariable(name: "s1", arg: 1, scope: !1862, file: !1839, line: 146, type: !6)
!1867 = !DILocalVariable(name: "s21", arg: 3, scope: !1862, file: !1839, line: 146, type: !8)
!1868 = !DILocalVariable(name: "s22", arg: 4, scope: !1862, file: !1839, line: 146, type: !8)
!1869 = !DILocalVariable(name: "s23", arg: 5, scope: !1862, file: !1839, line: 146, type: !8)
!1870 = !DILocalVariable(name: "s24", arg: 6, scope: !1862, file: !1839, line: 146, type: !8)
!1871 = !DILocalVariable(name: "s25", arg: 7, scope: !1862, file: !1839, line: 146, type: !8)
!1872 = !DILocalVariable(name: "s26", arg: 8, scope: !1862, file: !1839, line: 146, type: !8)
!1873 = !DILocalVariable(name: "s27", arg: 9, scope: !1862, file: !1839, line: 146, type: !8)
!1874 = !DILocalVariable(name: "s28", arg: 10, scope: !1862, file: !1839, line: 146, type: !8)
!1875 = !DILocation(line: 146, column: 41, scope: !1862, inlinedAt: !1876)
!1876 = distinct !DILocation(line: 167, column: 16, scope: !1877, inlinedAt: !1854)
!1877 = distinct !DILexicalBlock(scope: !1878, file: !1839, line: 164, column: 11)
!1878 = distinct !DILexicalBlock(scope: !1860, file: !1839, line: 163, column: 5)
!1879 = !DILocation(line: 146, column: 110, scope: !1862, inlinedAt: !1876)
!1880 = !DILocation(line: 146, column: 120, scope: !1862, inlinedAt: !1876)
!1881 = !DILocation(line: 148, column: 7, scope: !1882, inlinedAt: !1876)
!1882 = !DILexicalBlockFile(scope: !1883, file: !1839, discriminator: 1)
!1883 = distinct !DILexicalBlock(scope: !1862, file: !1839, line: 148, column: 7)
!1884 = !DILocalVariable(name: "s2", arg: 2, scope: !1885, file: !1839, line: 132, type: !6)
!1885 = distinct !DISubprogram(name: "strcaseeq2", scope: !1839, file: !1839, line: 132, type: !1886, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1888)
!1886 = !DISubroutineType(types: !1887)
!1887 = !{!25, !6, !6, !8, !8, !8, !8, !8, !8, !8}
!1888 = !{!1889, !1884, !1890, !1891, !1892, !1893, !1894, !1895, !1896}
!1889 = !DILocalVariable(name: "s1", arg: 1, scope: !1885, file: !1839, line: 132, type: !6)
!1890 = !DILocalVariable(name: "s22", arg: 3, scope: !1885, file: !1839, line: 132, type: !8)
!1891 = !DILocalVariable(name: "s23", arg: 4, scope: !1885, file: !1839, line: 132, type: !8)
!1892 = !DILocalVariable(name: "s24", arg: 5, scope: !1885, file: !1839, line: 132, type: !8)
!1893 = !DILocalVariable(name: "s25", arg: 6, scope: !1885, file: !1839, line: 132, type: !8)
!1894 = !DILocalVariable(name: "s26", arg: 7, scope: !1885, file: !1839, line: 132, type: !8)
!1895 = !DILocalVariable(name: "s27", arg: 8, scope: !1885, file: !1839, line: 132, type: !8)
!1896 = !DILocalVariable(name: "s28", arg: 9, scope: !1885, file: !1839, line: 132, type: !8)
!1897 = !DILocation(line: 132, column: 41, scope: !1885, inlinedAt: !1898)
!1898 = distinct !DILocation(line: 153, column: 16, scope: !1899, inlinedAt: !1876)
!1899 = distinct !DILexicalBlock(scope: !1900, file: !1839, line: 150, column: 11)
!1900 = distinct !DILexicalBlock(scope: !1883, file: !1839, line: 149, column: 5)
!1901 = !DILocation(line: 132, column: 100, scope: !1885, inlinedAt: !1898)
!1902 = !DILocation(line: 132, column: 110, scope: !1885, inlinedAt: !1898)
!1903 = !DILocation(line: 134, column: 7, scope: !1904, inlinedAt: !1898)
!1904 = !DILexicalBlockFile(scope: !1905, file: !1839, discriminator: 1)
!1905 = distinct !DILexicalBlock(scope: !1885, file: !1839, line: 134, column: 7)
!1906 = !DILocalVariable(name: "s2", arg: 2, scope: !1907, file: !1839, line: 118, type: !6)
!1907 = distinct !DISubprogram(name: "strcaseeq3", scope: !1839, file: !1839, line: 118, type: !1908, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1910)
!1908 = !DISubroutineType(types: !1909)
!1909 = !{!25, !6, !6, !8, !8, !8, !8, !8, !8}
!1910 = !{!1911, !1906, !1912, !1913, !1914, !1915, !1916, !1917}
!1911 = !DILocalVariable(name: "s1", arg: 1, scope: !1907, file: !1839, line: 118, type: !6)
!1912 = !DILocalVariable(name: "s23", arg: 3, scope: !1907, file: !1839, line: 118, type: !8)
!1913 = !DILocalVariable(name: "s24", arg: 4, scope: !1907, file: !1839, line: 118, type: !8)
!1914 = !DILocalVariable(name: "s25", arg: 5, scope: !1907, file: !1839, line: 118, type: !8)
!1915 = !DILocalVariable(name: "s26", arg: 6, scope: !1907, file: !1839, line: 118, type: !8)
!1916 = !DILocalVariable(name: "s27", arg: 7, scope: !1907, file: !1839, line: 118, type: !8)
!1917 = !DILocalVariable(name: "s28", arg: 8, scope: !1907, file: !1839, line: 118, type: !8)
!1918 = !DILocation(line: 118, column: 41, scope: !1907, inlinedAt: !1919)
!1919 = distinct !DILocation(line: 139, column: 16, scope: !1920, inlinedAt: !1898)
!1920 = distinct !DILexicalBlock(scope: !1921, file: !1839, line: 136, column: 11)
!1921 = distinct !DILexicalBlock(scope: !1905, file: !1839, line: 135, column: 5)
!1922 = !DILocation(line: 118, column: 90, scope: !1907, inlinedAt: !1919)
!1923 = !DILocation(line: 118, column: 100, scope: !1907, inlinedAt: !1919)
!1924 = !DILocation(line: 120, column: 7, scope: !1925, inlinedAt: !1919)
!1925 = !DILexicalBlockFile(scope: !1926, file: !1839, discriminator: 2)
!1926 = distinct !DILexicalBlock(scope: !1907, file: !1839, line: 120, column: 7)
!1927 = !DILocation(line: 120, column: 7, scope: !1928, inlinedAt: !1919)
!1928 = !DILexicalBlockFile(scope: !1907, file: !1839, discriminator: 2)
!1929 = !DILocalVariable(name: "s2", arg: 2, scope: !1930, file: !1839, line: 104, type: !6)
!1930 = distinct !DISubprogram(name: "strcaseeq4", scope: !1839, file: !1839, line: 104, type: !1931, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1933)
!1931 = !DISubroutineType(types: !1932)
!1932 = !{!25, !6, !6, !8, !8, !8, !8, !8}
!1933 = !{!1934, !1929, !1935, !1936, !1937, !1938, !1939}
!1934 = !DILocalVariable(name: "s1", arg: 1, scope: !1930, file: !1839, line: 104, type: !6)
!1935 = !DILocalVariable(name: "s24", arg: 3, scope: !1930, file: !1839, line: 104, type: !8)
!1936 = !DILocalVariable(name: "s25", arg: 4, scope: !1930, file: !1839, line: 104, type: !8)
!1937 = !DILocalVariable(name: "s26", arg: 5, scope: !1930, file: !1839, line: 104, type: !8)
!1938 = !DILocalVariable(name: "s27", arg: 6, scope: !1930, file: !1839, line: 104, type: !8)
!1939 = !DILocalVariable(name: "s28", arg: 7, scope: !1930, file: !1839, line: 104, type: !8)
!1940 = !DILocation(line: 104, column: 41, scope: !1930, inlinedAt: !1941)
!1941 = distinct !DILocation(line: 125, column: 16, scope: !1942, inlinedAt: !1919)
!1942 = distinct !DILexicalBlock(scope: !1943, file: !1839, line: 122, column: 11)
!1943 = distinct !DILexicalBlock(scope: !1926, file: !1839, line: 121, column: 5)
!1944 = !DILocation(line: 104, column: 80, scope: !1930, inlinedAt: !1941)
!1945 = !DILocation(line: 104, column: 90, scope: !1930, inlinedAt: !1941)
!1946 = !DILocation(line: 106, column: 7, scope: !1947, inlinedAt: !1941)
!1947 = !DILexicalBlockFile(scope: !1948, file: !1839, discriminator: 2)
!1948 = distinct !DILexicalBlock(scope: !1930, file: !1839, line: 106, column: 7)
!1949 = !DILocation(line: 106, column: 7, scope: !1950, inlinedAt: !1941)
!1950 = !DILexicalBlockFile(scope: !1930, file: !1839, discriminator: 2)
!1951 = !DILocalVariable(name: "s2", arg: 2, scope: !1952, file: !1839, line: 90, type: !6)
!1952 = distinct !DISubprogram(name: "strcaseeq5", scope: !1839, file: !1839, line: 90, type: !1953, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1955)
!1953 = !DISubroutineType(types: !1954)
!1954 = !{!25, !6, !6, !8, !8, !8, !8}
!1955 = !{!1956, !1951, !1957, !1958, !1959, !1960}
!1956 = !DILocalVariable(name: "s1", arg: 1, scope: !1952, file: !1839, line: 90, type: !6)
!1957 = !DILocalVariable(name: "s25", arg: 3, scope: !1952, file: !1839, line: 90, type: !8)
!1958 = !DILocalVariable(name: "s26", arg: 4, scope: !1952, file: !1839, line: 90, type: !8)
!1959 = !DILocalVariable(name: "s27", arg: 5, scope: !1952, file: !1839, line: 90, type: !8)
!1960 = !DILocalVariable(name: "s28", arg: 6, scope: !1952, file: !1839, line: 90, type: !8)
!1961 = !DILocation(line: 90, column: 41, scope: !1952, inlinedAt: !1962)
!1962 = distinct !DILocation(line: 111, column: 16, scope: !1963, inlinedAt: !1941)
!1963 = distinct !DILexicalBlock(scope: !1964, file: !1839, line: 108, column: 11)
!1964 = distinct !DILexicalBlock(scope: !1948, file: !1839, line: 107, column: 5)
!1965 = !DILocation(line: 90, column: 70, scope: !1952, inlinedAt: !1962)
!1966 = !DILocation(line: 90, column: 80, scope: !1952, inlinedAt: !1962)
!1967 = !DILocation(line: 92, column: 7, scope: !1968, inlinedAt: !1962)
!1968 = !DILexicalBlockFile(scope: !1969, file: !1839, discriminator: 2)
!1969 = distinct !DILexicalBlock(scope: !1952, file: !1839, line: 92, column: 7)
!1970 = !DILocation(line: 92, column: 7, scope: !1971, inlinedAt: !1962)
!1971 = !DILexicalBlockFile(scope: !1952, file: !1839, discriminator: 2)
!1972 = !DILocation(line: 227, column: 12, scope: !1855)
!1973 = !DILocation(line: 227, column: 21, scope: !1855)
!1974 = !DILocation(line: 227, column: 5, scope: !1855)
!1975 = !DILocation(line: 146, column: 41, scope: !1862, inlinedAt: !1976)
!1976 = distinct !DILocation(line: 167, column: 16, scope: !1877, inlinedAt: !1977)
!1977 = distinct !DILocation(line: 228, column: 7, scope: !1978)
!1978 = distinct !DILexicalBlock(scope: !1820, file: !100, line: 228, column: 7)
!1979 = !DILocation(line: 146, column: 110, scope: !1862, inlinedAt: !1976)
!1980 = !DILocation(line: 146, column: 120, scope: !1862, inlinedAt: !1976)
!1981 = !DILocation(line: 148, column: 7, scope: !1882, inlinedAt: !1976)
!1982 = !DILocation(line: 132, column: 41, scope: !1885, inlinedAt: !1983)
!1983 = distinct !DILocation(line: 153, column: 16, scope: !1899, inlinedAt: !1976)
!1984 = !DILocation(line: 132, column: 100, scope: !1885, inlinedAt: !1983)
!1985 = !DILocation(line: 132, column: 110, scope: !1885, inlinedAt: !1983)
!1986 = !DILocation(line: 134, column: 7, scope: !1987, inlinedAt: !1983)
!1987 = !DILexicalBlockFile(scope: !1905, file: !1839, discriminator: 2)
!1988 = !DILocation(line: 134, column: 7, scope: !1989, inlinedAt: !1983)
!1989 = !DILexicalBlockFile(scope: !1885, file: !1839, discriminator: 2)
!1990 = !DILocation(line: 118, column: 41, scope: !1907, inlinedAt: !1991)
!1991 = distinct !DILocation(line: 139, column: 16, scope: !1920, inlinedAt: !1983)
!1992 = !DILocation(line: 118, column: 90, scope: !1907, inlinedAt: !1991)
!1993 = !DILocation(line: 118, column: 100, scope: !1907, inlinedAt: !1991)
!1994 = !DILocation(line: 120, column: 7, scope: !1925, inlinedAt: !1991)
!1995 = !DILocation(line: 120, column: 7, scope: !1928, inlinedAt: !1991)
!1996 = !DILocation(line: 104, column: 41, scope: !1930, inlinedAt: !1997)
!1997 = distinct !DILocation(line: 125, column: 16, scope: !1942, inlinedAt: !1991)
!1998 = !DILocation(line: 104, column: 80, scope: !1930, inlinedAt: !1997)
!1999 = !DILocation(line: 104, column: 90, scope: !1930, inlinedAt: !1997)
!2000 = !DILocation(line: 106, column: 7, scope: !1947, inlinedAt: !1997)
!2001 = !DILocation(line: 106, column: 7, scope: !1950, inlinedAt: !1997)
!2002 = !DILocation(line: 90, column: 41, scope: !1952, inlinedAt: !2003)
!2003 = distinct !DILocation(line: 111, column: 16, scope: !1963, inlinedAt: !1997)
!2004 = !DILocation(line: 90, column: 70, scope: !1952, inlinedAt: !2003)
!2005 = !DILocation(line: 90, column: 80, scope: !1952, inlinedAt: !2003)
!2006 = !DILocation(line: 92, column: 7, scope: !1968, inlinedAt: !2003)
!2007 = !DILocation(line: 92, column: 7, scope: !1971, inlinedAt: !2003)
!2008 = !DILocalVariable(name: "s2", arg: 2, scope: !2009, file: !1839, line: 76, type: !6)
!2009 = distinct !DISubprogram(name: "strcaseeq6", scope: !1839, file: !1839, line: 76, type: !2010, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2012)
!2010 = !DISubroutineType(types: !2011)
!2011 = !{!25, !6, !6, !8, !8, !8}
!2012 = !{!2013, !2008, !2014, !2015, !2016}
!2013 = !DILocalVariable(name: "s1", arg: 1, scope: !2009, file: !1839, line: 76, type: !6)
!2014 = !DILocalVariable(name: "s26", arg: 3, scope: !2009, file: !1839, line: 76, type: !8)
!2015 = !DILocalVariable(name: "s27", arg: 4, scope: !2009, file: !1839, line: 76, type: !8)
!2016 = !DILocalVariable(name: "s28", arg: 5, scope: !2009, file: !1839, line: 76, type: !8)
!2017 = !DILocation(line: 76, column: 41, scope: !2009, inlinedAt: !2018)
!2018 = distinct !DILocation(line: 97, column: 16, scope: !2019, inlinedAt: !2003)
!2019 = distinct !DILexicalBlock(scope: !2020, file: !1839, line: 94, column: 11)
!2020 = distinct !DILexicalBlock(scope: !1969, file: !1839, line: 93, column: 5)
!2021 = !DILocation(line: 76, column: 60, scope: !2009, inlinedAt: !2018)
!2022 = !DILocation(line: 76, column: 70, scope: !2009, inlinedAt: !2018)
!2023 = !DILocation(line: 78, column: 7, scope: !2024, inlinedAt: !2018)
!2024 = !DILexicalBlockFile(scope: !2025, file: !1839, discriminator: 2)
!2025 = distinct !DILexicalBlock(scope: !2009, file: !1839, line: 78, column: 7)
!2026 = !DILocation(line: 78, column: 7, scope: !2027, inlinedAt: !2018)
!2027 = !DILexicalBlockFile(scope: !2009, file: !1839, discriminator: 2)
!2028 = !DILocalVariable(name: "s2", arg: 2, scope: !2029, file: !1839, line: 62, type: !6)
!2029 = distinct !DISubprogram(name: "strcaseeq7", scope: !1839, file: !1839, line: 62, type: !2030, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2032)
!2030 = !DISubroutineType(types: !2031)
!2031 = !{!25, !6, !6, !8, !8}
!2032 = !{!2033, !2028, !2034, !2035}
!2033 = !DILocalVariable(name: "s1", arg: 1, scope: !2029, file: !1839, line: 62, type: !6)
!2034 = !DILocalVariable(name: "s27", arg: 3, scope: !2029, file: !1839, line: 62, type: !8)
!2035 = !DILocalVariable(name: "s28", arg: 4, scope: !2029, file: !1839, line: 62, type: !8)
!2036 = !DILocation(line: 62, column: 41, scope: !2029, inlinedAt: !2037)
!2037 = distinct !DILocation(line: 83, column: 16, scope: !2038, inlinedAt: !2018)
!2038 = distinct !DILexicalBlock(scope: !2039, file: !1839, line: 80, column: 11)
!2039 = distinct !DILexicalBlock(scope: !2025, file: !1839, line: 79, column: 5)
!2040 = !DILocation(line: 62, column: 50, scope: !2029, inlinedAt: !2037)
!2041 = !DILocation(line: 62, column: 60, scope: !2029, inlinedAt: !2037)
!2042 = !DILocation(line: 64, column: 7, scope: !2043, inlinedAt: !2037)
!2043 = !DILexicalBlockFile(scope: !2044, file: !1839, discriminator: 2)
!2044 = distinct !DILexicalBlock(scope: !2029, file: !1839, line: 64, column: 7)
!2045 = !DILocation(line: 228, column: 7, scope: !1820)
!2046 = !DILocation(line: 229, column: 12, scope: !1978)
!2047 = !DILocation(line: 229, column: 21, scope: !1978)
!2048 = !DILocation(line: 229, column: 5, scope: !1978)
!2049 = !DILocation(line: 231, column: 13, scope: !1820)
!2050 = !DILocation(line: 231, column: 11, scope: !1820)
!2051 = !DILocation(line: 231, column: 3, scope: !1820)
!2052 = !DILocation(line: 232, column: 1, scope: !1820)
!2053 = distinct !DISubprogram(name: "quotearg_alloc", scope: !100, file: !100, line: 791, type: !2054, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2056)
!2054 = !DISubroutineType(types: !2055)
!2055 = !{!50, !6, !94, !892}
!2056 = !{!2057, !2058, !2059}
!2057 = !DILocalVariable(name: "arg", arg: 1, scope: !2053, file: !100, line: 791, type: !6)
!2058 = !DILocalVariable(name: "argsize", arg: 2, scope: !2053, file: !100, line: 791, type: !94)
!2059 = !DILocalVariable(name: "o", arg: 3, scope: !2053, file: !100, line: 792, type: !892)
!2060 = !DILocation(line: 791, column: 29, scope: !2053)
!2061 = !DILocation(line: 791, column: 41, scope: !2053)
!2062 = !DILocation(line: 792, column: 47, scope: !2053)
!2063 = !DILocalVariable(name: "arg", arg: 1, scope: !2064, file: !100, line: 804, type: !6)
!2064 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !100, file: !100, line: 804, type: !2065, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2067)
!2065 = !DISubroutineType(types: !2066)
!2066 = !{!50, !6, !94, !553, !892}
!2067 = !{!2063, !2068, !2069, !2070, !2071, !2072, !2073, !2074, !2075}
!2068 = !DILocalVariable(name: "argsize", arg: 2, scope: !2064, file: !100, line: 804, type: !94)
!2069 = !DILocalVariable(name: "size", arg: 3, scope: !2064, file: !100, line: 804, type: !553)
!2070 = !DILocalVariable(name: "o", arg: 4, scope: !2064, file: !100, line: 805, type: !892)
!2071 = !DILocalVariable(name: "p", scope: !2064, file: !100, line: 807, type: !892)
!2072 = !DILocalVariable(name: "e", scope: !2064, file: !100, line: 808, type: !25)
!2073 = !DILocalVariable(name: "flags", scope: !2064, file: !100, line: 810, type: !25)
!2074 = !DILocalVariable(name: "bufsize", scope: !2064, file: !100, line: 811, type: !94)
!2075 = !DILocalVariable(name: "buf", scope: !2064, file: !100, line: 815, type: !50)
!2076 = !DILocation(line: 804, column: 33, scope: !2064, inlinedAt: !2077)
!2077 = distinct !DILocation(line: 794, column: 10, scope: !2053)
!2078 = !DILocation(line: 804, column: 45, scope: !2064, inlinedAt: !2077)
!2079 = !DILocation(line: 804, column: 62, scope: !2064, inlinedAt: !2077)
!2080 = !DILocation(line: 805, column: 51, scope: !2064, inlinedAt: !2077)
!2081 = !DILocation(line: 807, column: 37, scope: !2064, inlinedAt: !2077)
!2082 = !DILocation(line: 807, column: 33, scope: !2064, inlinedAt: !2077)
!2083 = !DILocation(line: 808, column: 11, scope: !2064, inlinedAt: !2077)
!2084 = !DILocation(line: 808, column: 7, scope: !2064, inlinedAt: !2077)
!2085 = !DILocation(line: 810, column: 18, scope: !2064, inlinedAt: !2077)
!2086 = !DILocation(line: 810, column: 24, scope: !2064, inlinedAt: !2077)
!2087 = !DILocation(line: 810, column: 7, scope: !2064, inlinedAt: !2077)
!2088 = !DILocation(line: 811, column: 69, scope: !2064, inlinedAt: !2077)
!2089 = !DILocation(line: 812, column: 53, scope: !2064, inlinedAt: !2077)
!2090 = !DILocation(line: 813, column: 49, scope: !2064, inlinedAt: !2077)
!2091 = !DILocation(line: 814, column: 49, scope: !2064, inlinedAt: !2077)
!2092 = !DILocation(line: 811, column: 20, scope: !2064, inlinedAt: !2077)
!2093 = !DILocation(line: 814, column: 62, scope: !2064, inlinedAt: !2077)
!2094 = !DILocation(line: 811, column: 10, scope: !2064, inlinedAt: !2077)
!2095 = !DILocalVariable(name: "n", arg: 1, scope: !2096, file: !549, line: 220, type: !94)
!2096 = distinct !DISubprogram(name: "xcharalloc", scope: !549, file: !549, line: 220, type: !2097, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2099)
!2097 = !DISubroutineType(types: !2098)
!2098 = !{!50, !94}
!2099 = !{!2095}
!2100 = !DILocation(line: 220, column: 20, scope: !2096, inlinedAt: !2101)
!2101 = distinct !DILocation(line: 815, column: 15, scope: !2064, inlinedAt: !2077)
!2102 = !DILocation(line: 222, column: 10, scope: !2096, inlinedAt: !2101)
!2103 = !DILocation(line: 815, column: 9, scope: !2064, inlinedAt: !2077)
!2104 = !DILocation(line: 816, column: 60, scope: !2064, inlinedAt: !2077)
!2105 = !DILocation(line: 818, column: 32, scope: !2064, inlinedAt: !2077)
!2106 = !DILocation(line: 818, column: 47, scope: !2064, inlinedAt: !2077)
!2107 = !DILocation(line: 816, column: 3, scope: !2064, inlinedAt: !2077)
!2108 = !DILocation(line: 819, column: 9, scope: !2064, inlinedAt: !2077)
!2109 = !DILocation(line: 794, column: 3, scope: !2053)
!2110 = !DILocation(line: 804, column: 33, scope: !2064)
!2111 = !DILocation(line: 804, column: 45, scope: !2064)
!2112 = !DILocation(line: 804, column: 62, scope: !2064)
!2113 = !DILocation(line: 805, column: 51, scope: !2064)
!2114 = !DILocation(line: 807, column: 37, scope: !2064)
!2115 = !DILocation(line: 807, column: 33, scope: !2064)
!2116 = !DILocation(line: 808, column: 11, scope: !2064)
!2117 = !DILocation(line: 808, column: 7, scope: !2064)
!2118 = !DILocation(line: 810, column: 18, scope: !2064)
!2119 = !DILocation(line: 810, column: 27, scope: !2064)
!2120 = !DILocation(line: 810, column: 24, scope: !2064)
!2121 = !DILocation(line: 810, column: 7, scope: !2064)
!2122 = !DILocation(line: 811, column: 69, scope: !2064)
!2123 = !DILocation(line: 812, column: 53, scope: !2064)
!2124 = !DILocation(line: 813, column: 49, scope: !2064)
!2125 = !DILocation(line: 814, column: 49, scope: !2064)
!2126 = !DILocation(line: 811, column: 20, scope: !2064)
!2127 = !DILocation(line: 814, column: 62, scope: !2064)
!2128 = !DILocation(line: 811, column: 10, scope: !2064)
!2129 = !DILocation(line: 220, column: 20, scope: !2096, inlinedAt: !2130)
!2130 = distinct !DILocation(line: 815, column: 15, scope: !2064)
!2131 = !DILocation(line: 222, column: 10, scope: !2096, inlinedAt: !2130)
!2132 = !DILocation(line: 815, column: 9, scope: !2064)
!2133 = !DILocation(line: 816, column: 60, scope: !2064)
!2134 = !DILocation(line: 818, column: 32, scope: !2064)
!2135 = !DILocation(line: 818, column: 47, scope: !2064)
!2136 = !DILocation(line: 816, column: 3, scope: !2064)
!2137 = !DILocation(line: 819, column: 9, scope: !2064)
!2138 = !DILocation(line: 820, column: 7, scope: !2064)
!2139 = !DILocation(line: 821, column: 11, scope: !2140)
!2140 = distinct !DILexicalBlock(scope: !2064, file: !100, line: 820, column: 7)
!2141 = !{!2142, !2142, i64 0}
!2142 = !{!"long", !600, i64 0}
!2143 = !DILocation(line: 821, column: 5, scope: !2140)
!2144 = !DILocation(line: 822, column: 3, scope: !2064)
!2145 = distinct !DISubprogram(name: "quotearg_free", scope: !100, file: !100, line: 840, type: !731, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2146)
!2146 = !{!2147, !2148}
!2147 = !DILocalVariable(name: "sv", scope: !2145, file: !100, line: 842, type: !127)
!2148 = !DILocalVariable(name: "i", scope: !2145, file: !100, line: 843, type: !25)
!2149 = !DILocation(line: 842, column: 24, scope: !2145)
!2150 = !DILocation(line: 842, column: 19, scope: !2145)
!2151 = !DILocation(line: 843, column: 7, scope: !2145)
!2152 = !DILocation(line: 844, column: 19, scope: !2153)
!2153 = !DILexicalBlockFile(scope: !2154, file: !100, discriminator: 1)
!2154 = distinct !DILexicalBlock(scope: !2155, file: !100, line: 844, column: 3)
!2155 = distinct !DILexicalBlock(scope: !2145, file: !100, line: 844, column: 3)
!2156 = !DILocation(line: 844, column: 17, scope: !2153)
!2157 = !DILocation(line: 844, column: 3, scope: !2158)
!2158 = !DILexicalBlockFile(scope: !2155, file: !100, discriminator: 1)
!2159 = !DILocation(line: 845, column: 17, scope: !2154)
!2160 = !{!2161, !599, i64 8}
!2161 = !{!"slotvec", !2142, i64 0, !599, i64 8}
!2162 = !DILocation(line: 845, column: 5, scope: !2154)
!2163 = !DILocation(line: 844, column: 28, scope: !2164)
!2164 = !DILexicalBlockFile(scope: !2154, file: !100, discriminator: 2)
!2165 = distinct !{!2165, !2166, !2167}
!2166 = !DILocation(line: 844, column: 3, scope: !2155)
!2167 = !DILocation(line: 845, column: 20, scope: !2155)
!2168 = !DILocation(line: 846, column: 13, scope: !2169)
!2169 = distinct !DILexicalBlock(scope: !2145, file: !100, line: 846, column: 7)
!2170 = !DILocation(line: 846, column: 17, scope: !2169)
!2171 = !DILocation(line: 846, column: 7, scope: !2145)
!2172 = !DILocation(line: 848, column: 7, scope: !2173)
!2173 = distinct !DILexicalBlock(scope: !2169, file: !100, line: 847, column: 5)
!2174 = !DILocation(line: 849, column: 21, scope: !2173)
!2175 = !{!2161, !2142, i64 0}
!2176 = !DILocation(line: 850, column: 20, scope: !2173)
!2177 = !DILocation(line: 851, column: 5, scope: !2173)
!2178 = !DILocation(line: 852, column: 10, scope: !2179)
!2179 = distinct !DILexicalBlock(scope: !2145, file: !100, line: 852, column: 7)
!2180 = !DILocation(line: 852, column: 7, scope: !2145)
!2181 = !DILocation(line: 854, column: 13, scope: !2182)
!2182 = distinct !DILexicalBlock(scope: !2179, file: !100, line: 853, column: 5)
!2183 = !DILocation(line: 854, column: 7, scope: !2182)
!2184 = !DILocation(line: 855, column: 15, scope: !2182)
!2185 = !DILocation(line: 856, column: 5, scope: !2182)
!2186 = !DILocation(line: 857, column: 10, scope: !2145)
!2187 = !DILocation(line: 858, column: 1, scope: !2145)
!2188 = distinct !DISubprogram(name: "quotearg_n", scope: !100, file: !100, line: 922, type: !2189, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2191)
!2189 = !DISubroutineType(types: !2190)
!2190 = !{!50, !25, !6}
!2191 = !{!2192, !2193}
!2192 = !DILocalVariable(name: "n", arg: 1, scope: !2188, file: !100, line: 922, type: !25)
!2193 = !DILocalVariable(name: "arg", arg: 2, scope: !2188, file: !100, line: 922, type: !6)
!2194 = !DILocation(line: 922, column: 17, scope: !2188)
!2195 = !DILocation(line: 922, column: 32, scope: !2188)
!2196 = !DILocation(line: 924, column: 10, scope: !2188)
!2197 = !DILocation(line: 924, column: 3, scope: !2188)
!2198 = distinct !DISubprogram(name: "quotearg_n_options", scope: !100, file: !100, line: 869, type: !2199, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2201)
!2199 = !DISubroutineType(types: !2200)
!2200 = !{!50, !25, !6, !94, !892}
!2201 = !{!2202, !2203, !2204, !2205, !2206, !2207, !2208, !2211, !2213, !2214, !2215}
!2202 = !DILocalVariable(name: "n", arg: 1, scope: !2198, file: !100, line: 869, type: !25)
!2203 = !DILocalVariable(name: "arg", arg: 2, scope: !2198, file: !100, line: 869, type: !6)
!2204 = !DILocalVariable(name: "argsize", arg: 3, scope: !2198, file: !100, line: 869, type: !94)
!2205 = !DILocalVariable(name: "options", arg: 4, scope: !2198, file: !100, line: 870, type: !892)
!2206 = !DILocalVariable(name: "e", scope: !2198, file: !100, line: 872, type: !25)
!2207 = !DILocalVariable(name: "sv", scope: !2198, file: !100, line: 874, type: !127)
!2208 = !DILocalVariable(name: "preallocated", scope: !2209, file: !100, line: 881, type: !17)
!2209 = distinct !DILexicalBlock(scope: !2210, file: !100, line: 880, column: 5)
!2210 = distinct !DILexicalBlock(scope: !2198, file: !100, line: 879, column: 7)
!2211 = !DILocalVariable(name: "size", scope: !2212, file: !100, line: 894, type: !94)
!2212 = distinct !DILexicalBlock(scope: !2198, file: !100, line: 893, column: 3)
!2213 = !DILocalVariable(name: "val", scope: !2212, file: !100, line: 895, type: !50)
!2214 = !DILocalVariable(name: "flags", scope: !2212, file: !100, line: 897, type: !25)
!2215 = !DILocalVariable(name: "qsize", scope: !2212, file: !100, line: 898, type: !94)
!2216 = !DILocation(line: 869, column: 25, scope: !2198)
!2217 = !DILocation(line: 869, column: 40, scope: !2198)
!2218 = !DILocation(line: 869, column: 52, scope: !2198)
!2219 = !DILocation(line: 870, column: 51, scope: !2198)
!2220 = !DILocation(line: 872, column: 11, scope: !2198)
!2221 = !DILocation(line: 872, column: 7, scope: !2198)
!2222 = !DILocation(line: 874, column: 24, scope: !2198)
!2223 = !DILocation(line: 874, column: 19, scope: !2198)
!2224 = !DILocation(line: 876, column: 9, scope: !2225)
!2225 = distinct !DILexicalBlock(scope: !2198, file: !100, line: 876, column: 7)
!2226 = !DILocation(line: 876, column: 7, scope: !2198)
!2227 = !DILocation(line: 877, column: 5, scope: !2225)
!2228 = !DILocation(line: 879, column: 7, scope: !2210)
!2229 = !DILocation(line: 879, column: 14, scope: !2210)
!2230 = !DILocation(line: 879, column: 7, scope: !2198)
!2231 = !DILocation(line: 881, column: 31, scope: !2209)
!2232 = !DILocation(line: 883, column: 67, scope: !2233)
!2233 = distinct !DILexicalBlock(scope: !2209, file: !100, line: 883, column: 11)
!2234 = !DILocation(line: 883, column: 11, scope: !2209)
!2235 = !DILocation(line: 884, column: 9, scope: !2233)
!2236 = !DILocation(line: 886, column: 32, scope: !2237)
!2237 = !DILexicalBlockFile(scope: !2209, file: !100, discriminator: 3)
!2238 = !DILocation(line: 886, column: 61, scope: !2237)
!2239 = !DILocation(line: 886, column: 58, scope: !2237)
!2240 = !DILocation(line: 886, column: 66, scope: !2237)
!2241 = !DILocation(line: 886, column: 22, scope: !2237)
!2242 = !DILocation(line: 886, column: 15, scope: !2237)
!2243 = !DILocation(line: 887, column: 11, scope: !2209)
!2244 = !DILocation(line: 888, column: 15, scope: !2245)
!2245 = distinct !DILexicalBlock(scope: !2209, file: !100, line: 887, column: 11)
!2246 = !{i64 0, i64 8, !2141, i64 8, i64 8, !598}
!2247 = !DILocation(line: 888, column: 9, scope: !2245)
!2248 = !DILocation(line: 889, column: 20, scope: !2209)
!2249 = !DILocation(line: 889, column: 18, scope: !2209)
!2250 = !DILocation(line: 889, column: 7, scope: !2209)
!2251 = !DILocation(line: 889, column: 38, scope: !2209)
!2252 = !DILocation(line: 889, column: 31, scope: !2209)
!2253 = !DILocation(line: 889, column: 48, scope: !2209)
!2254 = !DILocation(line: 890, column: 14, scope: !2209)
!2255 = !DILocation(line: 891, column: 5, scope: !2209)
!2256 = !DILocation(line: 894, column: 19, scope: !2212)
!2257 = !DILocation(line: 894, column: 25, scope: !2212)
!2258 = !DILocation(line: 894, column: 12, scope: !2212)
!2259 = !DILocation(line: 895, column: 23, scope: !2212)
!2260 = !DILocation(line: 895, column: 11, scope: !2212)
!2261 = !DILocation(line: 897, column: 26, scope: !2212)
!2262 = !DILocation(line: 897, column: 32, scope: !2212)
!2263 = !DILocation(line: 897, column: 9, scope: !2212)
!2264 = !DILocation(line: 899, column: 55, scope: !2212)
!2265 = !DILocation(line: 900, column: 46, scope: !2212)
!2266 = !DILocation(line: 901, column: 55, scope: !2212)
!2267 = !DILocation(line: 902, column: 55, scope: !2212)
!2268 = !DILocation(line: 898, column: 20, scope: !2212)
!2269 = !DILocation(line: 898, column: 12, scope: !2212)
!2270 = !DILocation(line: 904, column: 14, scope: !2271)
!2271 = distinct !DILexicalBlock(scope: !2212, file: !100, line: 904, column: 9)
!2272 = !DILocation(line: 904, column: 9, scope: !2212)
!2273 = !DILocation(line: 906, column: 35, scope: !2274)
!2274 = distinct !DILexicalBlock(scope: !2271, file: !100, line: 905, column: 7)
!2275 = !DILocation(line: 906, column: 20, scope: !2274)
!2276 = !DILocation(line: 907, column: 17, scope: !2277)
!2277 = distinct !DILexicalBlock(scope: !2274, file: !100, line: 907, column: 13)
!2278 = !DILocation(line: 907, column: 13, scope: !2274)
!2279 = !DILocation(line: 908, column: 11, scope: !2277)
!2280 = !DILocation(line: 220, column: 20, scope: !2096, inlinedAt: !2281)
!2281 = distinct !DILocation(line: 909, column: 27, scope: !2274)
!2282 = !DILocation(line: 222, column: 10, scope: !2096, inlinedAt: !2281)
!2283 = !DILocation(line: 909, column: 19, scope: !2274)
!2284 = !DILocation(line: 910, column: 69, scope: !2274)
!2285 = !DILocation(line: 912, column: 44, scope: !2274)
!2286 = !DILocation(line: 913, column: 44, scope: !2274)
!2287 = !DILocation(line: 910, column: 9, scope: !2274)
!2288 = !DILocation(line: 914, column: 7, scope: !2274)
!2289 = !DILocation(line: 916, column: 11, scope: !2212)
!2290 = !DILocation(line: 917, column: 5, scope: !2212)
!2291 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !100, file: !100, line: 928, type: !2292, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2294)
!2292 = !DISubroutineType(types: !2293)
!2293 = !{!50, !25, !6, !94}
!2294 = !{!2295, !2296, !2297}
!2295 = !DILocalVariable(name: "n", arg: 1, scope: !2291, file: !100, line: 928, type: !25)
!2296 = !DILocalVariable(name: "arg", arg: 2, scope: !2291, file: !100, line: 928, type: !6)
!2297 = !DILocalVariable(name: "argsize", arg: 3, scope: !2291, file: !100, line: 928, type: !94)
!2298 = !DILocation(line: 928, column: 21, scope: !2291)
!2299 = !DILocation(line: 928, column: 36, scope: !2291)
!2300 = !DILocation(line: 928, column: 48, scope: !2291)
!2301 = !DILocation(line: 930, column: 10, scope: !2291)
!2302 = !DILocation(line: 930, column: 3, scope: !2291)
!2303 = distinct !DISubprogram(name: "quotearg", scope: !100, file: !100, line: 934, type: !2304, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2306)
!2304 = !DISubroutineType(types: !2305)
!2305 = !{!50, !6}
!2306 = !{!2307}
!2307 = !DILocalVariable(name: "arg", arg: 1, scope: !2303, file: !100, line: 934, type: !6)
!2308 = !DILocation(line: 934, column: 23, scope: !2303)
!2309 = !DILocation(line: 922, column: 17, scope: !2188, inlinedAt: !2310)
!2310 = distinct !DILocation(line: 936, column: 10, scope: !2303)
!2311 = !DILocation(line: 922, column: 32, scope: !2188, inlinedAt: !2310)
!2312 = !DILocation(line: 924, column: 10, scope: !2188, inlinedAt: !2310)
!2313 = !DILocation(line: 936, column: 3, scope: !2303)
!2314 = distinct !DISubprogram(name: "quotearg_mem", scope: !100, file: !100, line: 940, type: !2315, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2317)
!2315 = !DISubroutineType(types: !2316)
!2316 = !{!50, !6, !94}
!2317 = !{!2318, !2319}
!2318 = !DILocalVariable(name: "arg", arg: 1, scope: !2314, file: !100, line: 940, type: !6)
!2319 = !DILocalVariable(name: "argsize", arg: 2, scope: !2314, file: !100, line: 940, type: !94)
!2320 = !DILocation(line: 940, column: 27, scope: !2314)
!2321 = !DILocation(line: 940, column: 39, scope: !2314)
!2322 = !DILocation(line: 928, column: 21, scope: !2291, inlinedAt: !2323)
!2323 = distinct !DILocation(line: 942, column: 10, scope: !2314)
!2324 = !DILocation(line: 928, column: 36, scope: !2291, inlinedAt: !2323)
!2325 = !DILocation(line: 928, column: 48, scope: !2291, inlinedAt: !2323)
!2326 = !DILocation(line: 930, column: 10, scope: !2291, inlinedAt: !2323)
!2327 = !DILocation(line: 942, column: 3, scope: !2314)
!2328 = distinct !DISubprogram(name: "quotearg_n_style", scope: !100, file: !100, line: 946, type: !2329, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2331)
!2329 = !DISubroutineType(types: !2330)
!2330 = !{!50, !25, !58, !6}
!2331 = !{!2332, !2333, !2334, !2335}
!2332 = !DILocalVariable(name: "n", arg: 1, scope: !2328, file: !100, line: 946, type: !25)
!2333 = !DILocalVariable(name: "s", arg: 2, scope: !2328, file: !100, line: 946, type: !58)
!2334 = !DILocalVariable(name: "arg", arg: 3, scope: !2328, file: !100, line: 946, type: !6)
!2335 = !DILocalVariable(name: "o", scope: !2328, file: !100, line: 948, type: !893)
!2336 = !DILocalVariable(name: "o", scope: !2337, file: !100, line: 187, type: !107)
!2337 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !100, file: !100, line: 185, type: !2338, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2340)
!2338 = !DISubroutineType(types: !2339)
!2339 = !{!107, !58}
!2340 = !{!2341, !2336}
!2341 = !DILocalVariable(name: "style", arg: 1, scope: !2337, file: !100, line: 185, type: !58)
!2342 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!2343 = !DILocation(line: 187, column: 26, scope: !2337, inlinedAt: !2344)
!2344 = distinct !DILocation(line: 948, column: 36, scope: !2328)
!2345 = !DILocation(line: 946, column: 23, scope: !2328)
!2346 = !DILocation(line: 946, column: 45, scope: !2328)
!2347 = !DILocation(line: 946, column: 60, scope: !2328)
!2348 = !DILocation(line: 948, column: 3, scope: !2328)
!2349 = !DILocation(line: 948, column: 32, scope: !2328)
!2350 = !DILocation(line: 185, column: 48, scope: !2337, inlinedAt: !2344)
!2351 = !DILocation(line: 187, column: 3, scope: !2337, inlinedAt: !2344)
!2352 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!2353 = !DILocation(line: 188, column: 13, scope: !2354, inlinedAt: !2344)
!2354 = distinct !DILexicalBlock(scope: !2337, file: !100, line: 188, column: 7)
!2355 = !DILocation(line: 188, column: 7, scope: !2337, inlinedAt: !2344)
!2356 = !DILocation(line: 189, column: 5, scope: !2354, inlinedAt: !2344)
!2357 = !{!2358}
!2358 = distinct !{!2358, !2359, !"quoting_options_from_style: argument 0"}
!2359 = distinct !{!2359, !"quoting_options_from_style"}
!2360 = !DILocation(line: 191, column: 10, scope: !2337, inlinedAt: !2344)
!2361 = !DILocation(line: 192, column: 1, scope: !2337, inlinedAt: !2344)
!2362 = !DILocation(line: 949, column: 10, scope: !2328)
!2363 = !DILocation(line: 950, column: 1, scope: !2328)
!2364 = !DILocation(line: 949, column: 3, scope: !2328)
!2365 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !100, file: !100, line: 953, type: !2366, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2368)
!2366 = !DISubroutineType(types: !2367)
!2367 = !{!50, !25, !58, !6, !94}
!2368 = !{!2369, !2370, !2371, !2372, !2373}
!2369 = !DILocalVariable(name: "n", arg: 1, scope: !2365, file: !100, line: 953, type: !25)
!2370 = !DILocalVariable(name: "s", arg: 2, scope: !2365, file: !100, line: 953, type: !58)
!2371 = !DILocalVariable(name: "arg", arg: 3, scope: !2365, file: !100, line: 954, type: !6)
!2372 = !DILocalVariable(name: "argsize", arg: 4, scope: !2365, file: !100, line: 954, type: !94)
!2373 = !DILocalVariable(name: "o", scope: !2365, file: !100, line: 956, type: !893)
!2374 = !DILocation(line: 187, column: 26, scope: !2337, inlinedAt: !2375)
!2375 = distinct !DILocation(line: 956, column: 36, scope: !2365)
!2376 = !DILocation(line: 953, column: 27, scope: !2365)
!2377 = !DILocation(line: 953, column: 49, scope: !2365)
!2378 = !DILocation(line: 954, column: 35, scope: !2365)
!2379 = !DILocation(line: 954, column: 47, scope: !2365)
!2380 = !DILocation(line: 956, column: 3, scope: !2365)
!2381 = !DILocation(line: 956, column: 32, scope: !2365)
!2382 = !DILocation(line: 185, column: 48, scope: !2337, inlinedAt: !2375)
!2383 = !DILocation(line: 187, column: 3, scope: !2337, inlinedAt: !2375)
!2384 = !DILocation(line: 188, column: 13, scope: !2354, inlinedAt: !2375)
!2385 = !DILocation(line: 188, column: 7, scope: !2337, inlinedAt: !2375)
!2386 = !DILocation(line: 189, column: 5, scope: !2354, inlinedAt: !2375)
!2387 = !{!2388}
!2388 = distinct !{!2388, !2389, !"quoting_options_from_style: argument 0"}
!2389 = distinct !{!2389, !"quoting_options_from_style"}
!2390 = !DILocation(line: 191, column: 10, scope: !2337, inlinedAt: !2375)
!2391 = !DILocation(line: 192, column: 1, scope: !2337, inlinedAt: !2375)
!2392 = !DILocation(line: 957, column: 10, scope: !2365)
!2393 = !DILocation(line: 958, column: 1, scope: !2365)
!2394 = !DILocation(line: 957, column: 3, scope: !2365)
!2395 = distinct !DISubprogram(name: "quotearg_style", scope: !100, file: !100, line: 961, type: !2396, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2398)
!2396 = !DISubroutineType(types: !2397)
!2397 = !{!50, !58, !6}
!2398 = !{!2399, !2400}
!2399 = !DILocalVariable(name: "s", arg: 1, scope: !2395, file: !100, line: 961, type: !58)
!2400 = !DILocalVariable(name: "arg", arg: 2, scope: !2395, file: !100, line: 961, type: !6)
!2401 = !DILocation(line: 187, column: 26, scope: !2337, inlinedAt: !2402)
!2402 = distinct !DILocation(line: 948, column: 36, scope: !2328, inlinedAt: !2403)
!2403 = distinct !DILocation(line: 963, column: 10, scope: !2395)
!2404 = !DILocation(line: 961, column: 36, scope: !2395)
!2405 = !DILocation(line: 961, column: 51, scope: !2395)
!2406 = !DILocation(line: 946, column: 23, scope: !2328, inlinedAt: !2403)
!2407 = !DILocation(line: 946, column: 45, scope: !2328, inlinedAt: !2403)
!2408 = !DILocation(line: 946, column: 60, scope: !2328, inlinedAt: !2403)
!2409 = !DILocation(line: 948, column: 3, scope: !2328, inlinedAt: !2403)
!2410 = !DILocation(line: 948, column: 32, scope: !2328, inlinedAt: !2403)
!2411 = !DILocation(line: 185, column: 48, scope: !2337, inlinedAt: !2402)
!2412 = !DILocation(line: 187, column: 3, scope: !2337, inlinedAt: !2402)
!2413 = !DILocation(line: 188, column: 13, scope: !2354, inlinedAt: !2402)
!2414 = !DILocation(line: 188, column: 7, scope: !2337, inlinedAt: !2402)
!2415 = !DILocation(line: 189, column: 5, scope: !2354, inlinedAt: !2402)
!2416 = !{!2417}
!2417 = distinct !{!2417, !2418, !"quoting_options_from_style: argument 0"}
!2418 = distinct !{!2418, !"quoting_options_from_style"}
!2419 = !DILocation(line: 191, column: 10, scope: !2337, inlinedAt: !2402)
!2420 = !DILocation(line: 192, column: 1, scope: !2337, inlinedAt: !2402)
!2421 = !DILocation(line: 949, column: 10, scope: !2328, inlinedAt: !2403)
!2422 = !DILocation(line: 950, column: 1, scope: !2328, inlinedAt: !2403)
!2423 = !DILocation(line: 963, column: 3, scope: !2395)
!2424 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !100, file: !100, line: 967, type: !2425, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2427)
!2425 = !DISubroutineType(types: !2426)
!2426 = !{!50, !58, !6, !94}
!2427 = !{!2428, !2429, !2430}
!2428 = !DILocalVariable(name: "s", arg: 1, scope: !2424, file: !100, line: 967, type: !58)
!2429 = !DILocalVariable(name: "arg", arg: 2, scope: !2424, file: !100, line: 967, type: !6)
!2430 = !DILocalVariable(name: "argsize", arg: 3, scope: !2424, file: !100, line: 967, type: !94)
!2431 = !DILocation(line: 187, column: 26, scope: !2337, inlinedAt: !2432)
!2432 = distinct !DILocation(line: 956, column: 36, scope: !2365, inlinedAt: !2433)
!2433 = distinct !DILocation(line: 969, column: 10, scope: !2424)
!2434 = !DILocation(line: 967, column: 40, scope: !2424)
!2435 = !DILocation(line: 967, column: 55, scope: !2424)
!2436 = !DILocation(line: 967, column: 67, scope: !2424)
!2437 = !DILocation(line: 953, column: 27, scope: !2365, inlinedAt: !2433)
!2438 = !DILocation(line: 953, column: 49, scope: !2365, inlinedAt: !2433)
!2439 = !DILocation(line: 954, column: 35, scope: !2365, inlinedAt: !2433)
!2440 = !DILocation(line: 954, column: 47, scope: !2365, inlinedAt: !2433)
!2441 = !DILocation(line: 956, column: 3, scope: !2365, inlinedAt: !2433)
!2442 = !DILocation(line: 956, column: 32, scope: !2365, inlinedAt: !2433)
!2443 = !DILocation(line: 185, column: 48, scope: !2337, inlinedAt: !2432)
!2444 = !DILocation(line: 187, column: 3, scope: !2337, inlinedAt: !2432)
!2445 = !DILocation(line: 188, column: 13, scope: !2354, inlinedAt: !2432)
!2446 = !DILocation(line: 188, column: 7, scope: !2337, inlinedAt: !2432)
!2447 = !DILocation(line: 189, column: 5, scope: !2354, inlinedAt: !2432)
!2448 = !{!2449}
!2449 = distinct !{!2449, !2450, !"quoting_options_from_style: argument 0"}
!2450 = distinct !{!2450, !"quoting_options_from_style"}
!2451 = !DILocation(line: 191, column: 10, scope: !2337, inlinedAt: !2432)
!2452 = !DILocation(line: 192, column: 1, scope: !2337, inlinedAt: !2432)
!2453 = !DILocation(line: 957, column: 10, scope: !2365, inlinedAt: !2433)
!2454 = !DILocation(line: 958, column: 1, scope: !2365, inlinedAt: !2433)
!2455 = !DILocation(line: 969, column: 3, scope: !2424)
!2456 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !100, file: !100, line: 973, type: !2457, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2459)
!2457 = !DISubroutineType(types: !2458)
!2458 = !{!50, !6, !94, !8}
!2459 = !{!2460, !2461, !2462, !2463}
!2460 = !DILocalVariable(name: "arg", arg: 1, scope: !2456, file: !100, line: 973, type: !6)
!2461 = !DILocalVariable(name: "argsize", arg: 2, scope: !2456, file: !100, line: 973, type: !94)
!2462 = !DILocalVariable(name: "ch", arg: 3, scope: !2456, file: !100, line: 973, type: !8)
!2463 = !DILocalVariable(name: "options", scope: !2456, file: !100, line: 975, type: !107)
!2464 = !DILocation(line: 973, column: 32, scope: !2456)
!2465 = !DILocation(line: 973, column: 44, scope: !2456)
!2466 = !DILocation(line: 973, column: 58, scope: !2456)
!2467 = !DILocation(line: 975, column: 3, scope: !2456)
!2468 = !DILocation(line: 976, column: 13, scope: !2456)
!2469 = !{i64 0, i64 4, !1127, i64 4, i64 4, !663, i64 8, i64 32, !1127, i64 40, i64 8, !598, i64 48, i64 8, !598}
!2470 = !DILocation(line: 975, column: 26, scope: !2456)
!2471 = !DILocation(line: 144, column: 43, scope: !916, inlinedAt: !2472)
!2472 = distinct !DILocation(line: 977, column: 3, scope: !2456)
!2473 = !DILocation(line: 144, column: 51, scope: !916, inlinedAt: !2472)
!2474 = !DILocation(line: 144, column: 58, scope: !916, inlinedAt: !2472)
!2475 = !DILocation(line: 146, column: 17, scope: !916, inlinedAt: !2472)
!2476 = !DILocation(line: 148, column: 62, scope: !934, inlinedAt: !2472)
!2477 = !DILocation(line: 148, column: 57, scope: !934, inlinedAt: !2472)
!2478 = !DILocation(line: 147, column: 17, scope: !916, inlinedAt: !2472)
!2479 = !DILocation(line: 149, column: 18, scope: !916, inlinedAt: !2472)
!2480 = !DILocation(line: 149, column: 15, scope: !916, inlinedAt: !2472)
!2481 = !DILocation(line: 149, column: 7, scope: !916, inlinedAt: !2472)
!2482 = !DILocation(line: 150, column: 12, scope: !916, inlinedAt: !2472)
!2483 = !DILocation(line: 150, column: 15, scope: !916, inlinedAt: !2472)
!2484 = !DILocation(line: 150, column: 25, scope: !916, inlinedAt: !2472)
!2485 = !DILocation(line: 150, column: 7, scope: !916, inlinedAt: !2472)
!2486 = !DILocation(line: 151, column: 18, scope: !916, inlinedAt: !2472)
!2487 = !DILocation(line: 151, column: 23, scope: !916, inlinedAt: !2472)
!2488 = !DILocation(line: 151, column: 6, scope: !916, inlinedAt: !2472)
!2489 = !DILocation(line: 978, column: 10, scope: !2456)
!2490 = !DILocation(line: 979, column: 1, scope: !2456)
!2491 = !DILocation(line: 978, column: 3, scope: !2456)
!2492 = distinct !DISubprogram(name: "quotearg_char", scope: !100, file: !100, line: 982, type: !2493, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2495)
!2493 = !DISubroutineType(types: !2494)
!2494 = !{!50, !6, !8}
!2495 = !{!2496, !2497}
!2496 = !DILocalVariable(name: "arg", arg: 1, scope: !2492, file: !100, line: 982, type: !6)
!2497 = !DILocalVariable(name: "ch", arg: 2, scope: !2492, file: !100, line: 982, type: !8)
!2498 = !DILocation(line: 982, column: 28, scope: !2492)
!2499 = !DILocation(line: 982, column: 38, scope: !2492)
!2500 = !DILocation(line: 973, column: 32, scope: !2456, inlinedAt: !2501)
!2501 = distinct !DILocation(line: 984, column: 10, scope: !2492)
!2502 = !DILocation(line: 973, column: 44, scope: !2456, inlinedAt: !2501)
!2503 = !DILocation(line: 973, column: 58, scope: !2456, inlinedAt: !2501)
!2504 = !DILocation(line: 975, column: 3, scope: !2456, inlinedAt: !2501)
!2505 = !DILocation(line: 976, column: 13, scope: !2456, inlinedAt: !2501)
!2506 = !DILocation(line: 975, column: 26, scope: !2456, inlinedAt: !2501)
!2507 = !DILocation(line: 144, column: 43, scope: !916, inlinedAt: !2508)
!2508 = distinct !DILocation(line: 977, column: 3, scope: !2456, inlinedAt: !2501)
!2509 = !DILocation(line: 144, column: 51, scope: !916, inlinedAt: !2508)
!2510 = !DILocation(line: 144, column: 58, scope: !916, inlinedAt: !2508)
!2511 = !DILocation(line: 146, column: 17, scope: !916, inlinedAt: !2508)
!2512 = !DILocation(line: 148, column: 62, scope: !934, inlinedAt: !2508)
!2513 = !DILocation(line: 148, column: 57, scope: !934, inlinedAt: !2508)
!2514 = !DILocation(line: 147, column: 17, scope: !916, inlinedAt: !2508)
!2515 = !DILocation(line: 149, column: 18, scope: !916, inlinedAt: !2508)
!2516 = !DILocation(line: 149, column: 15, scope: !916, inlinedAt: !2508)
!2517 = !DILocation(line: 149, column: 7, scope: !916, inlinedAt: !2508)
!2518 = !DILocation(line: 150, column: 12, scope: !916, inlinedAt: !2508)
!2519 = !DILocation(line: 150, column: 15, scope: !916, inlinedAt: !2508)
!2520 = !DILocation(line: 150, column: 25, scope: !916, inlinedAt: !2508)
!2521 = !DILocation(line: 150, column: 7, scope: !916, inlinedAt: !2508)
!2522 = !DILocation(line: 151, column: 18, scope: !916, inlinedAt: !2508)
!2523 = !DILocation(line: 151, column: 23, scope: !916, inlinedAt: !2508)
!2524 = !DILocation(line: 151, column: 6, scope: !916, inlinedAt: !2508)
!2525 = !DILocation(line: 978, column: 10, scope: !2456, inlinedAt: !2501)
!2526 = !DILocation(line: 979, column: 1, scope: !2456, inlinedAt: !2501)
!2527 = !DILocation(line: 984, column: 3, scope: !2492)
!2528 = distinct !DISubprogram(name: "quotearg_colon", scope: !100, file: !100, line: 988, type: !2304, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2529)
!2529 = !{!2530}
!2530 = !DILocalVariable(name: "arg", arg: 1, scope: !2528, file: !100, line: 988, type: !6)
!2531 = !DILocation(line: 988, column: 29, scope: !2528)
!2532 = !DILocation(line: 982, column: 28, scope: !2492, inlinedAt: !2533)
!2533 = distinct !DILocation(line: 990, column: 10, scope: !2528)
!2534 = !DILocation(line: 982, column: 38, scope: !2492, inlinedAt: !2533)
!2535 = !DILocation(line: 973, column: 32, scope: !2456, inlinedAt: !2536)
!2536 = distinct !DILocation(line: 984, column: 10, scope: !2492, inlinedAt: !2533)
!2537 = !DILocation(line: 973, column: 44, scope: !2456, inlinedAt: !2536)
!2538 = !DILocation(line: 973, column: 58, scope: !2456, inlinedAt: !2536)
!2539 = !DILocation(line: 975, column: 3, scope: !2456, inlinedAt: !2536)
!2540 = !DILocation(line: 976, column: 13, scope: !2456, inlinedAt: !2536)
!2541 = !DILocation(line: 975, column: 26, scope: !2456, inlinedAt: !2536)
!2542 = !DILocation(line: 144, column: 43, scope: !916, inlinedAt: !2543)
!2543 = distinct !DILocation(line: 977, column: 3, scope: !2456, inlinedAt: !2536)
!2544 = !DILocation(line: 144, column: 51, scope: !916, inlinedAt: !2543)
!2545 = !DILocation(line: 144, column: 58, scope: !916, inlinedAt: !2543)
!2546 = !DILocation(line: 146, column: 17, scope: !916, inlinedAt: !2543)
!2547 = !DILocation(line: 148, column: 57, scope: !934, inlinedAt: !2543)
!2548 = !DILocation(line: 147, column: 17, scope: !916, inlinedAt: !2543)
!2549 = !DILocation(line: 149, column: 7, scope: !916, inlinedAt: !2543)
!2550 = !DILocation(line: 150, column: 12, scope: !916, inlinedAt: !2543)
!2551 = !DILocation(line: 151, column: 6, scope: !916, inlinedAt: !2543)
!2552 = !DILocation(line: 978, column: 10, scope: !2456, inlinedAt: !2536)
!2553 = !DILocation(line: 979, column: 1, scope: !2456, inlinedAt: !2536)
!2554 = !DILocation(line: 990, column: 3, scope: !2528)
!2555 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !100, file: !100, line: 994, type: !2315, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2556)
!2556 = !{!2557, !2558}
!2557 = !DILocalVariable(name: "arg", arg: 1, scope: !2555, file: !100, line: 994, type: !6)
!2558 = !DILocalVariable(name: "argsize", arg: 2, scope: !2555, file: !100, line: 994, type: !94)
!2559 = !DILocation(line: 994, column: 33, scope: !2555)
!2560 = !DILocation(line: 994, column: 45, scope: !2555)
!2561 = !DILocation(line: 973, column: 32, scope: !2456, inlinedAt: !2562)
!2562 = distinct !DILocation(line: 996, column: 10, scope: !2555)
!2563 = !DILocation(line: 973, column: 44, scope: !2456, inlinedAt: !2562)
!2564 = !DILocation(line: 973, column: 58, scope: !2456, inlinedAt: !2562)
!2565 = !DILocation(line: 975, column: 3, scope: !2456, inlinedAt: !2562)
!2566 = !DILocation(line: 976, column: 13, scope: !2456, inlinedAt: !2562)
!2567 = !DILocation(line: 975, column: 26, scope: !2456, inlinedAt: !2562)
!2568 = !DILocation(line: 144, column: 43, scope: !916, inlinedAt: !2569)
!2569 = distinct !DILocation(line: 977, column: 3, scope: !2456, inlinedAt: !2562)
!2570 = !DILocation(line: 144, column: 51, scope: !916, inlinedAt: !2569)
!2571 = !DILocation(line: 144, column: 58, scope: !916, inlinedAt: !2569)
!2572 = !DILocation(line: 146, column: 17, scope: !916, inlinedAt: !2569)
!2573 = !DILocation(line: 148, column: 57, scope: !934, inlinedAt: !2569)
!2574 = !DILocation(line: 147, column: 17, scope: !916, inlinedAt: !2569)
!2575 = !DILocation(line: 149, column: 7, scope: !916, inlinedAt: !2569)
!2576 = !DILocation(line: 150, column: 12, scope: !916, inlinedAt: !2569)
!2577 = !DILocation(line: 151, column: 6, scope: !916, inlinedAt: !2569)
!2578 = !DILocation(line: 978, column: 10, scope: !2456, inlinedAt: !2562)
!2579 = !DILocation(line: 979, column: 1, scope: !2456, inlinedAt: !2562)
!2580 = !DILocation(line: 996, column: 3, scope: !2555)
!2581 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !100, file: !100, line: 1000, type: !2329, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2582)
!2582 = !{!2583, !2584, !2585, !2586}
!2583 = !DILocalVariable(name: "n", arg: 1, scope: !2581, file: !100, line: 1000, type: !25)
!2584 = !DILocalVariable(name: "s", arg: 2, scope: !2581, file: !100, line: 1000, type: !58)
!2585 = !DILocalVariable(name: "arg", arg: 3, scope: !2581, file: !100, line: 1000, type: !6)
!2586 = !DILocalVariable(name: "options", scope: !2581, file: !100, line: 1002, type: !107)
!2587 = !DILocation(line: 187, column: 26, scope: !2337, inlinedAt: !2588)
!2588 = distinct !DILocation(line: 1003, column: 13, scope: !2581)
!2589 = !DILocation(line: 1000, column: 29, scope: !2581)
!2590 = !DILocation(line: 1000, column: 51, scope: !2581)
!2591 = !DILocation(line: 1000, column: 66, scope: !2581)
!2592 = !DILocation(line: 1002, column: 3, scope: !2581)
!2593 = !DILocation(line: 185, column: 48, scope: !2337, inlinedAt: !2588)
!2594 = !DILocation(line: 187, column: 3, scope: !2337, inlinedAt: !2588)
!2595 = !DILocation(line: 188, column: 13, scope: !2354, inlinedAt: !2588)
!2596 = !DILocation(line: 188, column: 7, scope: !2337, inlinedAt: !2588)
!2597 = !DILocation(line: 189, column: 5, scope: !2354, inlinedAt: !2588)
!2598 = !{!2599}
!2599 = distinct !{!2599, !2600, !"quoting_options_from_style: argument 0"}
!2600 = distinct !{!2600, !"quoting_options_from_style"}
!2601 = !DILocation(line: 191, column: 10, scope: !2337, inlinedAt: !2588)
!2602 = !DILocation(line: 192, column: 1, scope: !2337, inlinedAt: !2588)
!2603 = !DILocation(line: 1003, column: 13, scope: !2581)
!2604 = !DILocation(line: 1002, column: 26, scope: !2581)
!2605 = !DILocation(line: 144, column: 43, scope: !916, inlinedAt: !2606)
!2606 = distinct !DILocation(line: 1004, column: 3, scope: !2581)
!2607 = !DILocation(line: 144, column: 51, scope: !916, inlinedAt: !2606)
!2608 = !DILocation(line: 144, column: 58, scope: !916, inlinedAt: !2606)
!2609 = !DILocation(line: 146, column: 17, scope: !916, inlinedAt: !2606)
!2610 = !DILocation(line: 148, column: 57, scope: !934, inlinedAt: !2606)
!2611 = !DILocation(line: 147, column: 17, scope: !916, inlinedAt: !2606)
!2612 = !DILocation(line: 149, column: 7, scope: !916, inlinedAt: !2606)
!2613 = !DILocation(line: 150, column: 12, scope: !916, inlinedAt: !2606)
!2614 = !DILocation(line: 151, column: 6, scope: !916, inlinedAt: !2606)
!2615 = !DILocation(line: 1005, column: 10, scope: !2581)
!2616 = !DILocation(line: 1006, column: 1, scope: !2581)
!2617 = !DILocation(line: 1005, column: 3, scope: !2581)
!2618 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !100, file: !100, line: 1009, type: !2619, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2621)
!2619 = !DISubroutineType(types: !2620)
!2620 = !{!50, !25, !6, !6, !6}
!2621 = !{!2622, !2623, !2624, !2625}
!2622 = !DILocalVariable(name: "n", arg: 1, scope: !2618, file: !100, line: 1009, type: !25)
!2623 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2618, file: !100, line: 1009, type: !6)
!2624 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2618, file: !100, line: 1010, type: !6)
!2625 = !DILocalVariable(name: "arg", arg: 4, scope: !2618, file: !100, line: 1010, type: !6)
!2626 = !DILocation(line: 1009, column: 24, scope: !2618)
!2627 = !DILocation(line: 1009, column: 39, scope: !2618)
!2628 = !DILocation(line: 1010, column: 32, scope: !2618)
!2629 = !DILocation(line: 1010, column: 57, scope: !2618)
!2630 = !DILocalVariable(name: "n", arg: 1, scope: !2631, file: !100, line: 1017, type: !25)
!2631 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !100, file: !100, line: 1017, type: !2632, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2634)
!2632 = !DISubroutineType(types: !2633)
!2633 = !{!50, !25, !6, !6, !6, !94}
!2634 = !{!2630, !2635, !2636, !2637, !2638, !2639}
!2635 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2631, file: !100, line: 1017, type: !6)
!2636 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2631, file: !100, line: 1018, type: !6)
!2637 = !DILocalVariable(name: "arg", arg: 4, scope: !2631, file: !100, line: 1019, type: !6)
!2638 = !DILocalVariable(name: "argsize", arg: 5, scope: !2631, file: !100, line: 1019, type: !94)
!2639 = !DILocalVariable(name: "o", scope: !2631, file: !100, line: 1021, type: !107)
!2640 = !DILocation(line: 1017, column: 28, scope: !2631, inlinedAt: !2641)
!2641 = distinct !DILocation(line: 1012, column: 10, scope: !2618)
!2642 = !DILocation(line: 1017, column: 43, scope: !2631, inlinedAt: !2641)
!2643 = !DILocation(line: 1018, column: 36, scope: !2631, inlinedAt: !2641)
!2644 = !DILocation(line: 1019, column: 36, scope: !2631, inlinedAt: !2641)
!2645 = !DILocation(line: 1019, column: 48, scope: !2631, inlinedAt: !2641)
!2646 = !DILocation(line: 1021, column: 3, scope: !2631, inlinedAt: !2641)
!2647 = !DILocation(line: 1021, column: 30, scope: !2631, inlinedAt: !2641)
!2648 = !DILocation(line: 1021, column: 26, scope: !2631, inlinedAt: !2641)
!2649 = !DILocation(line: 171, column: 45, scope: !966, inlinedAt: !2650)
!2650 = distinct !DILocation(line: 1022, column: 3, scope: !2631, inlinedAt: !2641)
!2651 = !DILocation(line: 172, column: 33, scope: !966, inlinedAt: !2650)
!2652 = !DILocation(line: 172, column: 57, scope: !966, inlinedAt: !2650)
!2653 = !DILocation(line: 176, column: 6, scope: !966, inlinedAt: !2650)
!2654 = !DILocation(line: 176, column: 12, scope: !966, inlinedAt: !2650)
!2655 = !DILocation(line: 177, column: 8, scope: !982, inlinedAt: !2650)
!2656 = !DILocation(line: 177, column: 23, scope: !984, inlinedAt: !2650)
!2657 = !DILocation(line: 177, column: 19, scope: !982, inlinedAt: !2650)
!2658 = !DILocation(line: 178, column: 5, scope: !982, inlinedAt: !2650)
!2659 = !DILocation(line: 179, column: 6, scope: !966, inlinedAt: !2650)
!2660 = !DILocation(line: 179, column: 17, scope: !966, inlinedAt: !2650)
!2661 = !DILocation(line: 180, column: 6, scope: !966, inlinedAt: !2650)
!2662 = !DILocation(line: 180, column: 18, scope: !966, inlinedAt: !2650)
!2663 = !DILocation(line: 1023, column: 10, scope: !2631, inlinedAt: !2641)
!2664 = !DILocation(line: 1024, column: 1, scope: !2631, inlinedAt: !2641)
!2665 = !DILocation(line: 1012, column: 3, scope: !2618)
!2666 = !DILocation(line: 1017, column: 28, scope: !2631)
!2667 = !DILocation(line: 1017, column: 43, scope: !2631)
!2668 = !DILocation(line: 1018, column: 36, scope: !2631)
!2669 = !DILocation(line: 1019, column: 36, scope: !2631)
!2670 = !DILocation(line: 1019, column: 48, scope: !2631)
!2671 = !DILocation(line: 1021, column: 3, scope: !2631)
!2672 = !DILocation(line: 1021, column: 30, scope: !2631)
!2673 = !DILocation(line: 1021, column: 26, scope: !2631)
!2674 = !DILocation(line: 171, column: 45, scope: !966, inlinedAt: !2675)
!2675 = distinct !DILocation(line: 1022, column: 3, scope: !2631)
!2676 = !DILocation(line: 172, column: 33, scope: !966, inlinedAt: !2675)
!2677 = !DILocation(line: 172, column: 57, scope: !966, inlinedAt: !2675)
!2678 = !DILocation(line: 176, column: 6, scope: !966, inlinedAt: !2675)
!2679 = !DILocation(line: 176, column: 12, scope: !966, inlinedAt: !2675)
!2680 = !DILocation(line: 177, column: 8, scope: !982, inlinedAt: !2675)
!2681 = !DILocation(line: 177, column: 23, scope: !984, inlinedAt: !2675)
!2682 = !DILocation(line: 177, column: 19, scope: !982, inlinedAt: !2675)
!2683 = !DILocation(line: 178, column: 5, scope: !982, inlinedAt: !2675)
!2684 = !DILocation(line: 179, column: 6, scope: !966, inlinedAt: !2675)
!2685 = !DILocation(line: 179, column: 17, scope: !966, inlinedAt: !2675)
!2686 = !DILocation(line: 180, column: 6, scope: !966, inlinedAt: !2675)
!2687 = !DILocation(line: 180, column: 18, scope: !966, inlinedAt: !2675)
!2688 = !DILocation(line: 1023, column: 10, scope: !2631)
!2689 = !DILocation(line: 1024, column: 1, scope: !2631)
!2690 = !DILocation(line: 1023, column: 3, scope: !2631)
!2691 = distinct !DISubprogram(name: "quotearg_custom", scope: !100, file: !100, line: 1027, type: !2692, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2694)
!2692 = !DISubroutineType(types: !2693)
!2693 = !{!50, !6, !6, !6}
!2694 = !{!2695, !2696, !2697}
!2695 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2691, file: !100, line: 1027, type: !6)
!2696 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2691, file: !100, line: 1027, type: !6)
!2697 = !DILocalVariable(name: "arg", arg: 3, scope: !2691, file: !100, line: 1028, type: !6)
!2698 = !DILocation(line: 1027, column: 30, scope: !2691)
!2699 = !DILocation(line: 1027, column: 54, scope: !2691)
!2700 = !DILocation(line: 1028, column: 30, scope: !2691)
!2701 = !DILocation(line: 1009, column: 24, scope: !2618, inlinedAt: !2702)
!2702 = distinct !DILocation(line: 1030, column: 10, scope: !2691)
!2703 = !DILocation(line: 1009, column: 39, scope: !2618, inlinedAt: !2702)
!2704 = !DILocation(line: 1010, column: 32, scope: !2618, inlinedAt: !2702)
!2705 = !DILocation(line: 1010, column: 57, scope: !2618, inlinedAt: !2702)
!2706 = !DILocation(line: 1017, column: 28, scope: !2631, inlinedAt: !2707)
!2707 = distinct !DILocation(line: 1012, column: 10, scope: !2618, inlinedAt: !2702)
!2708 = !DILocation(line: 1017, column: 43, scope: !2631, inlinedAt: !2707)
!2709 = !DILocation(line: 1018, column: 36, scope: !2631, inlinedAt: !2707)
!2710 = !DILocation(line: 1019, column: 36, scope: !2631, inlinedAt: !2707)
!2711 = !DILocation(line: 1019, column: 48, scope: !2631, inlinedAt: !2707)
!2712 = !DILocation(line: 1021, column: 3, scope: !2631, inlinedAt: !2707)
!2713 = !DILocation(line: 1021, column: 30, scope: !2631, inlinedAt: !2707)
!2714 = !DILocation(line: 1021, column: 26, scope: !2631, inlinedAt: !2707)
!2715 = !DILocation(line: 171, column: 45, scope: !966, inlinedAt: !2716)
!2716 = distinct !DILocation(line: 1022, column: 3, scope: !2631, inlinedAt: !2707)
!2717 = !DILocation(line: 172, column: 33, scope: !966, inlinedAt: !2716)
!2718 = !DILocation(line: 172, column: 57, scope: !966, inlinedAt: !2716)
!2719 = !DILocation(line: 176, column: 6, scope: !966, inlinedAt: !2716)
!2720 = !DILocation(line: 176, column: 12, scope: !966, inlinedAt: !2716)
!2721 = !DILocation(line: 177, column: 8, scope: !982, inlinedAt: !2716)
!2722 = !DILocation(line: 177, column: 23, scope: !984, inlinedAt: !2716)
!2723 = !DILocation(line: 177, column: 19, scope: !982, inlinedAt: !2716)
!2724 = !DILocation(line: 178, column: 5, scope: !982, inlinedAt: !2716)
!2725 = !DILocation(line: 179, column: 6, scope: !966, inlinedAt: !2716)
!2726 = !DILocation(line: 179, column: 17, scope: !966, inlinedAt: !2716)
!2727 = !DILocation(line: 180, column: 6, scope: !966, inlinedAt: !2716)
!2728 = !DILocation(line: 180, column: 18, scope: !966, inlinedAt: !2716)
!2729 = !DILocation(line: 1023, column: 10, scope: !2631, inlinedAt: !2707)
!2730 = !DILocation(line: 1024, column: 1, scope: !2631, inlinedAt: !2707)
!2731 = !DILocation(line: 1030, column: 3, scope: !2691)
!2732 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !100, file: !100, line: 1034, type: !2733, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2735)
!2733 = !DISubroutineType(types: !2734)
!2734 = !{!50, !6, !6, !6, !94}
!2735 = !{!2736, !2737, !2738, !2739}
!2736 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2732, file: !100, line: 1034, type: !6)
!2737 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2732, file: !100, line: 1034, type: !6)
!2738 = !DILocalVariable(name: "arg", arg: 3, scope: !2732, file: !100, line: 1035, type: !6)
!2739 = !DILocalVariable(name: "argsize", arg: 4, scope: !2732, file: !100, line: 1035, type: !94)
!2740 = !DILocation(line: 1034, column: 34, scope: !2732)
!2741 = !DILocation(line: 1034, column: 58, scope: !2732)
!2742 = !DILocation(line: 1035, column: 34, scope: !2732)
!2743 = !DILocation(line: 1035, column: 46, scope: !2732)
!2744 = !DILocation(line: 1017, column: 28, scope: !2631, inlinedAt: !2745)
!2745 = distinct !DILocation(line: 1037, column: 10, scope: !2732)
!2746 = !DILocation(line: 1017, column: 43, scope: !2631, inlinedAt: !2745)
!2747 = !DILocation(line: 1018, column: 36, scope: !2631, inlinedAt: !2745)
!2748 = !DILocation(line: 1019, column: 36, scope: !2631, inlinedAt: !2745)
!2749 = !DILocation(line: 1019, column: 48, scope: !2631, inlinedAt: !2745)
!2750 = !DILocation(line: 1021, column: 3, scope: !2631, inlinedAt: !2745)
!2751 = !DILocation(line: 1021, column: 30, scope: !2631, inlinedAt: !2745)
!2752 = !DILocation(line: 1021, column: 26, scope: !2631, inlinedAt: !2745)
!2753 = !DILocation(line: 171, column: 45, scope: !966, inlinedAt: !2754)
!2754 = distinct !DILocation(line: 1022, column: 3, scope: !2631, inlinedAt: !2745)
!2755 = !DILocation(line: 172, column: 33, scope: !966, inlinedAt: !2754)
!2756 = !DILocation(line: 172, column: 57, scope: !966, inlinedAt: !2754)
!2757 = !DILocation(line: 176, column: 6, scope: !966, inlinedAt: !2754)
!2758 = !DILocation(line: 176, column: 12, scope: !966, inlinedAt: !2754)
!2759 = !DILocation(line: 177, column: 8, scope: !982, inlinedAt: !2754)
!2760 = !DILocation(line: 177, column: 23, scope: !984, inlinedAt: !2754)
!2761 = !DILocation(line: 177, column: 19, scope: !982, inlinedAt: !2754)
!2762 = !DILocation(line: 178, column: 5, scope: !982, inlinedAt: !2754)
!2763 = !DILocation(line: 179, column: 6, scope: !966, inlinedAt: !2754)
!2764 = !DILocation(line: 179, column: 17, scope: !966, inlinedAt: !2754)
!2765 = !DILocation(line: 180, column: 6, scope: !966, inlinedAt: !2754)
!2766 = !DILocation(line: 180, column: 18, scope: !966, inlinedAt: !2754)
!2767 = !DILocation(line: 1023, column: 10, scope: !2631, inlinedAt: !2745)
!2768 = !DILocation(line: 1024, column: 1, scope: !2631, inlinedAt: !2745)
!2769 = !DILocation(line: 1037, column: 3, scope: !2732)
!2770 = distinct !DISubprogram(name: "quote_n_mem", scope: !100, file: !100, line: 1052, type: !2771, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2773)
!2771 = !DISubroutineType(types: !2772)
!2772 = !{!6, !25, !6, !94}
!2773 = !{!2774, !2775, !2776}
!2774 = !DILocalVariable(name: "n", arg: 1, scope: !2770, file: !100, line: 1052, type: !25)
!2775 = !DILocalVariable(name: "arg", arg: 2, scope: !2770, file: !100, line: 1052, type: !6)
!2776 = !DILocalVariable(name: "argsize", arg: 3, scope: !2770, file: !100, line: 1052, type: !94)
!2777 = !DILocation(line: 1052, column: 18, scope: !2770)
!2778 = !DILocation(line: 1052, column: 33, scope: !2770)
!2779 = !DILocation(line: 1052, column: 45, scope: !2770)
!2780 = !DILocation(line: 1054, column: 10, scope: !2770)
!2781 = !DILocation(line: 1054, column: 3, scope: !2770)
!2782 = distinct !DISubprogram(name: "quote_mem", scope: !100, file: !100, line: 1058, type: !2783, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2785)
!2783 = !DISubroutineType(types: !2784)
!2784 = !{!6, !6, !94}
!2785 = !{!2786, !2787}
!2786 = !DILocalVariable(name: "arg", arg: 1, scope: !2782, file: !100, line: 1058, type: !6)
!2787 = !DILocalVariable(name: "argsize", arg: 2, scope: !2782, file: !100, line: 1058, type: !94)
!2788 = !DILocation(line: 1058, column: 24, scope: !2782)
!2789 = !DILocation(line: 1058, column: 36, scope: !2782)
!2790 = !DILocation(line: 1052, column: 18, scope: !2770, inlinedAt: !2791)
!2791 = distinct !DILocation(line: 1060, column: 10, scope: !2782)
!2792 = !DILocation(line: 1052, column: 33, scope: !2770, inlinedAt: !2791)
!2793 = !DILocation(line: 1052, column: 45, scope: !2770, inlinedAt: !2791)
!2794 = !DILocation(line: 1054, column: 10, scope: !2770, inlinedAt: !2791)
!2795 = !DILocation(line: 1060, column: 3, scope: !2782)
!2796 = distinct !DISubprogram(name: "quote_n", scope: !100, file: !100, line: 1064, type: !2797, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2799)
!2797 = !DISubroutineType(types: !2798)
!2798 = !{!6, !25, !6}
!2799 = !{!2800, !2801}
!2800 = !DILocalVariable(name: "n", arg: 1, scope: !2796, file: !100, line: 1064, type: !25)
!2801 = !DILocalVariable(name: "arg", arg: 2, scope: !2796, file: !100, line: 1064, type: !6)
!2802 = !DILocation(line: 1064, column: 14, scope: !2796)
!2803 = !DILocation(line: 1064, column: 29, scope: !2796)
!2804 = !DILocation(line: 1052, column: 18, scope: !2770, inlinedAt: !2805)
!2805 = distinct !DILocation(line: 1066, column: 10, scope: !2796)
!2806 = !DILocation(line: 1052, column: 33, scope: !2770, inlinedAt: !2805)
!2807 = !DILocation(line: 1052, column: 45, scope: !2770, inlinedAt: !2805)
!2808 = !DILocation(line: 1054, column: 10, scope: !2770, inlinedAt: !2805)
!2809 = !DILocation(line: 1066, column: 3, scope: !2796)
!2810 = distinct !DISubprogram(name: "quote", scope: !100, file: !100, line: 1070, type: !2811, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2813)
!2811 = !DISubroutineType(types: !2812)
!2812 = !{!6, !6}
!2813 = !{!2814}
!2814 = !DILocalVariable(name: "arg", arg: 1, scope: !2810, file: !100, line: 1070, type: !6)
!2815 = !DILocation(line: 1070, column: 20, scope: !2810)
!2816 = !DILocation(line: 1064, column: 14, scope: !2796, inlinedAt: !2817)
!2817 = distinct !DILocation(line: 1072, column: 10, scope: !2810)
!2818 = !DILocation(line: 1064, column: 29, scope: !2796, inlinedAt: !2817)
!2819 = !DILocation(line: 1052, column: 18, scope: !2770, inlinedAt: !2820)
!2820 = distinct !DILocation(line: 1066, column: 10, scope: !2796, inlinedAt: !2817)
!2821 = !DILocation(line: 1052, column: 33, scope: !2770, inlinedAt: !2820)
!2822 = !DILocation(line: 1052, column: 45, scope: !2770, inlinedAt: !2820)
!2823 = !DILocation(line: 1054, column: 10, scope: !2770, inlinedAt: !2820)
!2824 = !DILocation(line: 1072, column: 3, scope: !2810)
!2825 = distinct !DISubprogram(name: "version_etc_arn", scope: !541, file: !541, line: 62, type: !2826, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !537, variables: !2881)
!2826 = !DISubroutineType(types: !2827)
!2827 = !{null, !2828, !6, !6, !6, !2880, !94}
!2828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2829, size: 64)
!2829 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !791, line: 49, baseType: !2830)
!2830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2831, line: 241, size: 1728, elements: !2832)
!2831 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2832 = !{!2833, !2834, !2835, !2836, !2837, !2838, !2839, !2840, !2841, !2842, !2843, !2844, !2845, !2853, !2854, !2855, !2856, !2860, !2861, !2863, !2865, !2868, !2870, !2871, !2872, !2873, !2874, !2875, !2876}
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2830, file: !2831, line: 242, baseType: !25, size: 32)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2830, file: !2831, line: 247, baseType: !50, size: 64, offset: 64)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2830, file: !2831, line: 248, baseType: !50, size: 64, offset: 128)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2830, file: !2831, line: 249, baseType: !50, size: 64, offset: 192)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2830, file: !2831, line: 250, baseType: !50, size: 64, offset: 256)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2830, file: !2831, line: 251, baseType: !50, size: 64, offset: 320)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2830, file: !2831, line: 252, baseType: !50, size: 64, offset: 384)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2830, file: !2831, line: 253, baseType: !50, size: 64, offset: 448)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2830, file: !2831, line: 254, baseType: !50, size: 64, offset: 512)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2830, file: !2831, line: 256, baseType: !50, size: 64, offset: 576)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2830, file: !2831, line: 257, baseType: !50, size: 64, offset: 640)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2830, file: !2831, line: 258, baseType: !50, size: 64, offset: 704)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2830, file: !2831, line: 260, baseType: !2846, size: 64, offset: 768)
!2846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2847, size: 64)
!2847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2831, line: 156, size: 192, elements: !2848)
!2848 = !{!2849, !2850, !2852}
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !2847, file: !2831, line: 157, baseType: !2846, size: 64)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !2847, file: !2831, line: 158, baseType: !2851, size: 64, offset: 64)
!2851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2830, size: 64)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !2847, file: !2831, line: 162, baseType: !25, size: 32, offset: 128)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2830, file: !2831, line: 262, baseType: !2851, size: 64, offset: 832)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2830, file: !2831, line: 264, baseType: !25, size: 32, offset: 896)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2830, file: !2831, line: 268, baseType: !25, size: 32, offset: 928)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2830, file: !2831, line: 270, baseType: !2857, size: 64, offset: 960)
!2857 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !2858, line: 140, baseType: !2859)
!2858 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2859 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2830, file: !2831, line: 274, baseType: !93, size: 16, offset: 1024)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2830, file: !2831, line: 275, baseType: !2862, size: 8, offset: 1040)
!2862 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2830, file: !2831, line: 276, baseType: !2864, size: 8, offset: 1048)
!2864 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 8, elements: !802)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2830, file: !2831, line: 280, baseType: !2866, size: 64, offset: 1088)
!2866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2867, size: 64)
!2867 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2831, line: 150, baseType: null)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2830, file: !2831, line: 289, baseType: !2869, size: 64, offset: 1152)
!2869 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !2858, line: 141, baseType: !2859)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !2830, file: !2831, line: 297, baseType: !49, size: 64, offset: 1216)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !2830, file: !2831, line: 298, baseType: !49, size: 64, offset: 1280)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !2830, file: !2831, line: 299, baseType: !49, size: 64, offset: 1344)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !2830, file: !2831, line: 300, baseType: !49, size: 64, offset: 1408)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2830, file: !2831, line: 302, baseType: !94, size: 64, offset: 1472)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2830, file: !2831, line: 303, baseType: !25, size: 32, offset: 1536)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2830, file: !2831, line: 305, baseType: !2877, size: 160, offset: 1568)
!2877 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 160, elements: !2878)
!2878 = !{!2879}
!2879 = !DISubrange(count: 20)
!2880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!2881 = !{!2882, !2883, !2884, !2885, !2886, !2887}
!2882 = !DILocalVariable(name: "stream", arg: 1, scope: !2825, file: !541, line: 62, type: !2828)
!2883 = !DILocalVariable(name: "command_name", arg: 2, scope: !2825, file: !541, line: 63, type: !6)
!2884 = !DILocalVariable(name: "package", arg: 3, scope: !2825, file: !541, line: 63, type: !6)
!2885 = !DILocalVariable(name: "version", arg: 4, scope: !2825, file: !541, line: 64, type: !6)
!2886 = !DILocalVariable(name: "authors", arg: 5, scope: !2825, file: !541, line: 65, type: !2880)
!2887 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2825, file: !541, line: 65, type: !94)
!2888 = !DILocation(line: 62, column: 24, scope: !2825)
!2889 = !DILocation(line: 63, column: 30, scope: !2825)
!2890 = !DILocation(line: 63, column: 56, scope: !2825)
!2891 = !DILocation(line: 64, column: 30, scope: !2825)
!2892 = !DILocation(line: 65, column: 39, scope: !2825)
!2893 = !DILocation(line: 65, column: 55, scope: !2825)
!2894 = !DILocation(line: 67, column: 7, scope: !2895)
!2895 = distinct !DILexicalBlock(scope: !2825, file: !541, line: 67, column: 7)
!2896 = !DILocation(line: 67, column: 7, scope: !2825)
!2897 = !DILocation(line: 68, column: 5, scope: !2895)
!2898 = !DILocation(line: 70, column: 5, scope: !2895)
!2899 = !DILocation(line: 84, column: 3, scope: !2825)
!2900 = !DILocation(line: 84, column: 3, scope: !2901)
!2901 = !DILexicalBlockFile(scope: !2825, file: !541, discriminator: 1)
!2902 = !DILocation(line: 86, column: 3, scope: !2825)
!2903 = !DILocation(line: 86, column: 3, scope: !2901)
!2904 = !DILocation(line: 95, column: 3, scope: !2825)
!2905 = !DILocation(line: 99, column: 7, scope: !2906)
!2906 = distinct !DILexicalBlock(scope: !2825, file: !541, line: 96, column: 5)
!2907 = !DILocation(line: 102, column: 7, scope: !2906)
!2908 = !DILocation(line: 102, column: 7, scope: !2909)
!2909 = !DILexicalBlockFile(scope: !2906, file: !541, discriminator: 1)
!2910 = !DILocation(line: 103, column: 7, scope: !2906)
!2911 = !DILocation(line: 106, column: 7, scope: !2906)
!2912 = !DILocation(line: 106, column: 7, scope: !2909)
!2913 = !DILocation(line: 107, column: 7, scope: !2906)
!2914 = !DILocation(line: 110, column: 7, scope: !2906)
!2915 = !DILocation(line: 110, column: 7, scope: !2909)
!2916 = !DILocation(line: 112, column: 7, scope: !2906)
!2917 = !DILocation(line: 117, column: 7, scope: !2906)
!2918 = !DILocation(line: 117, column: 7, scope: !2909)
!2919 = !DILocation(line: 119, column: 7, scope: !2906)
!2920 = !DILocation(line: 124, column: 7, scope: !2906)
!2921 = !DILocation(line: 124, column: 7, scope: !2909)
!2922 = !DILocation(line: 126, column: 7, scope: !2906)
!2923 = !DILocation(line: 131, column: 7, scope: !2906)
!2924 = !DILocation(line: 131, column: 7, scope: !2909)
!2925 = !DILocation(line: 134, column: 7, scope: !2906)
!2926 = !DILocation(line: 139, column: 7, scope: !2906)
!2927 = !DILocation(line: 139, column: 7, scope: !2909)
!2928 = !DILocation(line: 142, column: 7, scope: !2906)
!2929 = !DILocation(line: 147, column: 7, scope: !2906)
!2930 = !DILocation(line: 147, column: 7, scope: !2909)
!2931 = !DILocation(line: 151, column: 7, scope: !2906)
!2932 = !DILocation(line: 156, column: 7, scope: !2906)
!2933 = !DILocation(line: 156, column: 7, scope: !2909)
!2934 = !DILocation(line: 160, column: 7, scope: !2906)
!2935 = !DILocation(line: 167, column: 7, scope: !2906)
!2936 = !DILocation(line: 167, column: 7, scope: !2909)
!2937 = !DILocation(line: 171, column: 7, scope: !2906)
!2938 = !DILocation(line: 173, column: 1, scope: !2825)
!2939 = distinct !DISubprogram(name: "version_etc_ar", scope: !541, file: !541, line: 180, type: !2940, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !537, variables: !2942)
!2940 = !DISubroutineType(types: !2941)
!2941 = !{null, !2828, !6, !6, !6, !2880}
!2942 = !{!2943, !2944, !2945, !2946, !2947, !2948}
!2943 = !DILocalVariable(name: "stream", arg: 1, scope: !2939, file: !541, line: 180, type: !2828)
!2944 = !DILocalVariable(name: "command_name", arg: 2, scope: !2939, file: !541, line: 181, type: !6)
!2945 = !DILocalVariable(name: "package", arg: 3, scope: !2939, file: !541, line: 181, type: !6)
!2946 = !DILocalVariable(name: "version", arg: 4, scope: !2939, file: !541, line: 182, type: !6)
!2947 = !DILocalVariable(name: "authors", arg: 5, scope: !2939, file: !541, line: 182, type: !2880)
!2948 = !DILocalVariable(name: "n_authors", scope: !2939, file: !541, line: 184, type: !94)
!2949 = !DILocation(line: 180, column: 23, scope: !2939)
!2950 = !DILocation(line: 181, column: 29, scope: !2939)
!2951 = !DILocation(line: 181, column: 55, scope: !2939)
!2952 = !DILocation(line: 182, column: 29, scope: !2939)
!2953 = !DILocation(line: 182, column: 59, scope: !2939)
!2954 = !DILocation(line: 184, column: 10, scope: !2939)
!2955 = !DILocation(line: 186, column: 8, scope: !2956)
!2956 = distinct !DILexicalBlock(scope: !2939, file: !541, line: 186, column: 3)
!2957 = !DILocation(line: 186, column: 23, scope: !2958)
!2958 = !DILexicalBlockFile(scope: !2959, file: !541, discriminator: 1)
!2959 = distinct !DILexicalBlock(scope: !2956, file: !541, line: 186, column: 3)
!2960 = !DILocation(line: 186, column: 3, scope: !2961)
!2961 = !DILexicalBlockFile(scope: !2956, file: !541, discriminator: 1)
!2962 = !DILocation(line: 186, column: 52, scope: !2963)
!2963 = !DILexicalBlockFile(scope: !2959, file: !541, discriminator: 3)
!2964 = distinct !{!2964, !2965, !2966}
!2965 = !DILocation(line: 186, column: 3, scope: !2956)
!2966 = !DILocation(line: 187, column: 5, scope: !2956)
!2967 = !DILocation(line: 188, column: 3, scope: !2939)
!2968 = !DILocation(line: 189, column: 1, scope: !2939)
!2969 = distinct !DISubprogram(name: "version_etc_va", scope: !541, file: !541, line: 196, type: !2970, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !537, variables: !2979)
!2970 = !DISubroutineType(types: !2971)
!2971 = !{null, !2828, !6, !6, !6, !2972}
!2972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2973, size: 64)
!2973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !538, line: 189, size: 192, elements: !2974)
!2974 = !{!2975, !2976, !2977, !2978}
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2973, file: !538, line: 189, baseType: !113, size: 32)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2973, file: !538, line: 189, baseType: !113, size: 32, offset: 32)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2973, file: !538, line: 189, baseType: !49, size: 64, offset: 64)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2973, file: !538, line: 189, baseType: !49, size: 64, offset: 128)
!2979 = !{!2980, !2981, !2982, !2983, !2984, !2985, !2986}
!2980 = !DILocalVariable(name: "stream", arg: 1, scope: !2969, file: !541, line: 196, type: !2828)
!2981 = !DILocalVariable(name: "command_name", arg: 2, scope: !2969, file: !541, line: 197, type: !6)
!2982 = !DILocalVariable(name: "package", arg: 3, scope: !2969, file: !541, line: 197, type: !6)
!2983 = !DILocalVariable(name: "version", arg: 4, scope: !2969, file: !541, line: 198, type: !6)
!2984 = !DILocalVariable(name: "authors", arg: 5, scope: !2969, file: !541, line: 198, type: !2972)
!2985 = !DILocalVariable(name: "n_authors", scope: !2969, file: !541, line: 200, type: !94)
!2986 = !DILocalVariable(name: "authtab", scope: !2969, file: !541, line: 201, type: !2987)
!2987 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 640, elements: !103)
!2988 = !DILocation(line: 196, column: 23, scope: !2969)
!2989 = !DILocation(line: 197, column: 29, scope: !2969)
!2990 = !DILocation(line: 197, column: 55, scope: !2969)
!2991 = !DILocation(line: 198, column: 29, scope: !2969)
!2992 = !DILocation(line: 198, column: 46, scope: !2969)
!2993 = !DILocation(line: 201, column: 3, scope: !2969)
!2994 = !DILocation(line: 201, column: 15, scope: !2969)
!2995 = !DILocation(line: 200, column: 10, scope: !2969)
!2996 = !DILocation(line: 205, column: 35, scope: !2997)
!2997 = !DILexicalBlockFile(scope: !2998, file: !541, discriminator: 1)
!2998 = distinct !DILexicalBlock(scope: !2999, file: !541, line: 203, column: 3)
!2999 = distinct !DILexicalBlock(scope: !2969, file: !541, line: 203, column: 3)
!3000 = !DILocation(line: 205, column: 35, scope: !3001)
!3001 = !DILexicalBlockFile(scope: !2998, file: !541, discriminator: 2)
!3002 = !DILocation(line: 205, column: 35, scope: !3003)
!3003 = !DILexicalBlockFile(scope: !2998, file: !541, discriminator: 3)
!3004 = !DILocation(line: 205, column: 35, scope: !3005)
!3005 = !DILexicalBlockFile(scope: !2998, file: !541, discriminator: 4)
!3006 = !DILocation(line: 205, column: 14, scope: !3005)
!3007 = !DILocation(line: 205, column: 33, scope: !3005)
!3008 = !DILocation(line: 205, column: 67, scope: !3005)
!3009 = !DILocation(line: 203, column: 3, scope: !3010)
!3010 = !DILexicalBlockFile(scope: !2999, file: !541, discriminator: 1)
!3011 = !DILocation(line: 208, column: 3, scope: !2969)
!3012 = !DILocation(line: 210, column: 1, scope: !2969)
!3013 = distinct !DISubprogram(name: "version_etc", scope: !541, file: !541, line: 227, type: !3014, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !537, variables: !3016)
!3014 = !DISubroutineType(types: !3015)
!3015 = !{null, !2828, !6, !6, !6, null}
!3016 = !{!3017, !3018, !3019, !3020, !3021}
!3017 = !DILocalVariable(name: "stream", arg: 1, scope: !3013, file: !541, line: 227, type: !2828)
!3018 = !DILocalVariable(name: "command_name", arg: 2, scope: !3013, file: !541, line: 228, type: !6)
!3019 = !DILocalVariable(name: "package", arg: 3, scope: !3013, file: !541, line: 228, type: !6)
!3020 = !DILocalVariable(name: "version", arg: 4, scope: !3013, file: !541, line: 229, type: !6)
!3021 = !DILocalVariable(name: "authors", scope: !3013, file: !541, line: 231, type: !3022)
!3022 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !791, line: 80, baseType: !3023)
!3023 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !793, line: 50, baseType: !3024)
!3024 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !538, line: 231, baseType: !3025)
!3025 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2973, size: 192, elements: !802)
!3026 = !DILocation(line: 227, column: 20, scope: !3013)
!3027 = !DILocation(line: 228, column: 26, scope: !3013)
!3028 = !DILocation(line: 228, column: 52, scope: !3013)
!3029 = !DILocation(line: 229, column: 26, scope: !3013)
!3030 = !DILocation(line: 231, column: 3, scope: !3013)
!3031 = !DILocation(line: 231, column: 11, scope: !3013)
!3032 = !DILocation(line: 233, column: 3, scope: !3013)
!3033 = !DILocation(line: 234, column: 3, scope: !3013)
!3034 = !DILocation(line: 235, column: 3, scope: !3013)
!3035 = !DILocation(line: 236, column: 1, scope: !3013)
!3036 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !541, file: !541, line: 239, type: !731, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !537, variables: !4)
!3037 = !DILocation(line: 245, column: 3, scope: !3036)
!3038 = !DILocation(line: 245, column: 3, scope: !3039)
!3039 = !DILexicalBlockFile(scope: !3036, file: !541, discriminator: 1)
!3040 = !DILocation(line: 251, column: 3, scope: !3036)
!3041 = !DILocation(line: 251, column: 3, scope: !3039)
!3042 = !DILocation(line: 256, column: 3, scope: !3036)
!3043 = !DILocation(line: 256, column: 3, scope: !3039)
!3044 = !DILocation(line: 258, column: 1, scope: !3036)
!3045 = distinct !DISubprogram(name: "xnmalloc", scope: !549, file: !549, line: 105, type: !3046, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !545, variables: !3048)
!3046 = !DISubroutineType(types: !3047)
!3047 = !{!49, !94, !94}
!3048 = !{!3049, !3050}
!3049 = !DILocalVariable(name: "n", arg: 1, scope: !3045, file: !549, line: 105, type: !94)
!3050 = !DILocalVariable(name: "s", arg: 2, scope: !3045, file: !549, line: 105, type: !94)
!3051 = !DILocation(line: 105, column: 18, scope: !3045)
!3052 = !DILocation(line: 105, column: 28, scope: !3045)
!3053 = !DILocation(line: 107, column: 7, scope: !3054)
!3054 = distinct !DILexicalBlock(scope: !3045, file: !549, line: 107, column: 7)
!3055 = !DILocation(line: 107, column: 7, scope: !3045)
!3056 = !DILocation(line: 108, column: 5, scope: !3054)
!3057 = !DILocation(line: 109, column: 21, scope: !3045)
!3058 = !DILocalVariable(name: "n", arg: 1, scope: !3059, file: !3060, line: 39, type: !94)
!3059 = distinct !DISubprogram(name: "xmalloc", scope: !3060, file: !3060, line: 39, type: !3061, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !545, variables: !3063)
!3060 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3061 = !DISubroutineType(types: !3062)
!3062 = !{!49, !94}
!3063 = !{!3058, !3064}
!3064 = !DILocalVariable(name: "p", scope: !3059, file: !3060, line: 41, type: !49)
!3065 = !DILocation(line: 39, column: 17, scope: !3059, inlinedAt: !3066)
!3066 = distinct !DILocation(line: 109, column: 10, scope: !3045)
!3067 = !DILocation(line: 41, column: 13, scope: !3059, inlinedAt: !3066)
!3068 = !DILocation(line: 41, column: 9, scope: !3059, inlinedAt: !3066)
!3069 = !DILocation(line: 42, column: 8, scope: !3070, inlinedAt: !3066)
!3070 = distinct !DILexicalBlock(scope: !3059, file: !3060, line: 42, column: 7)
!3071 = !DILocation(line: 42, column: 15, scope: !3072, inlinedAt: !3066)
!3072 = !DILexicalBlockFile(scope: !3070, file: !3060, discriminator: 1)
!3073 = !DILocation(line: 42, column: 10, scope: !3070, inlinedAt: !3066)
!3074 = !DILocation(line: 43, column: 5, scope: !3070, inlinedAt: !3066)
!3075 = !DILocation(line: 109, column: 3, scope: !3045)
!3076 = !DILocation(line: 39, column: 17, scope: !3059)
!3077 = !DILocation(line: 41, column: 13, scope: !3059)
!3078 = !DILocation(line: 41, column: 9, scope: !3059)
!3079 = !DILocation(line: 42, column: 8, scope: !3070)
!3080 = !DILocation(line: 42, column: 15, scope: !3072)
!3081 = !DILocation(line: 42, column: 10, scope: !3070)
!3082 = !DILocation(line: 43, column: 5, scope: !3070)
!3083 = !DILocation(line: 44, column: 3, scope: !3059)
!3084 = distinct !DISubprogram(name: "xnrealloc", scope: !549, file: !549, line: 118, type: !3085, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !545, variables: !3087)
!3085 = !DISubroutineType(types: !3086)
!3086 = !{!49, !49, !94, !94}
!3087 = !{!3088, !3089, !3090}
!3088 = !DILocalVariable(name: "p", arg: 1, scope: !3084, file: !549, line: 118, type: !49)
!3089 = !DILocalVariable(name: "n", arg: 2, scope: !3084, file: !549, line: 118, type: !94)
!3090 = !DILocalVariable(name: "s", arg: 3, scope: !3084, file: !549, line: 118, type: !94)
!3091 = !DILocation(line: 118, column: 18, scope: !3084)
!3092 = !DILocation(line: 118, column: 28, scope: !3084)
!3093 = !DILocation(line: 118, column: 38, scope: !3084)
!3094 = !DILocation(line: 120, column: 7, scope: !3095)
!3095 = distinct !DILexicalBlock(scope: !3084, file: !549, line: 120, column: 7)
!3096 = !DILocation(line: 120, column: 7, scope: !3084)
!3097 = !DILocation(line: 121, column: 5, scope: !3095)
!3098 = !DILocation(line: 122, column: 25, scope: !3084)
!3099 = !DILocalVariable(name: "p", arg: 1, scope: !3100, file: !3060, line: 51, type: !49)
!3100 = distinct !DISubprogram(name: "xrealloc", scope: !3060, file: !3060, line: 51, type: !3101, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !545, variables: !3103)
!3101 = !DISubroutineType(types: !3102)
!3102 = !{!49, !49, !94}
!3103 = !{!3099, !3104}
!3104 = !DILocalVariable(name: "n", arg: 2, scope: !3100, file: !3060, line: 51, type: !94)
!3105 = !DILocation(line: 51, column: 17, scope: !3100, inlinedAt: !3106)
!3106 = distinct !DILocation(line: 122, column: 10, scope: !3084)
!3107 = !DILocation(line: 51, column: 27, scope: !3100, inlinedAt: !3106)
!3108 = !DILocation(line: 53, column: 8, scope: !3109, inlinedAt: !3106)
!3109 = distinct !DILexicalBlock(scope: !3100, file: !3060, line: 53, column: 7)
!3110 = !DILocation(line: 53, column: 13, scope: !3111, inlinedAt: !3106)
!3111 = !DILexicalBlockFile(scope: !3109, file: !3060, discriminator: 1)
!3112 = !DILocation(line: 53, column: 10, scope: !3109, inlinedAt: !3106)
!3113 = !DILocation(line: 57, column: 7, scope: !3114, inlinedAt: !3106)
!3114 = distinct !DILexicalBlock(scope: !3109, file: !3060, line: 54, column: 5)
!3115 = !DILocation(line: 58, column: 7, scope: !3114, inlinedAt: !3106)
!3116 = !DILocation(line: 61, column: 7, scope: !3100, inlinedAt: !3106)
!3117 = !DILocation(line: 62, column: 8, scope: !3118, inlinedAt: !3106)
!3118 = distinct !DILexicalBlock(scope: !3100, file: !3060, line: 62, column: 7)
!3119 = !DILocation(line: 62, column: 13, scope: !3120, inlinedAt: !3106)
!3120 = !DILexicalBlockFile(scope: !3118, file: !3060, discriminator: 1)
!3121 = !DILocation(line: 62, column: 10, scope: !3118, inlinedAt: !3106)
!3122 = !DILocation(line: 63, column: 5, scope: !3118, inlinedAt: !3106)
!3123 = !DILocation(line: 122, column: 3, scope: !3084)
!3124 = !DILocation(line: 51, column: 17, scope: !3100)
!3125 = !DILocation(line: 51, column: 27, scope: !3100)
!3126 = !DILocation(line: 53, column: 8, scope: !3109)
!3127 = !DILocation(line: 53, column: 13, scope: !3111)
!3128 = !DILocation(line: 53, column: 10, scope: !3109)
!3129 = !DILocation(line: 57, column: 7, scope: !3114)
!3130 = !DILocation(line: 58, column: 7, scope: !3114)
!3131 = !DILocation(line: 61, column: 7, scope: !3100)
!3132 = !DILocation(line: 62, column: 8, scope: !3118)
!3133 = !DILocation(line: 62, column: 13, scope: !3120)
!3134 = !DILocation(line: 62, column: 10, scope: !3118)
!3135 = !DILocation(line: 63, column: 5, scope: !3118)
!3136 = !DILocation(line: 65, column: 1, scope: !3100)
!3137 = !DILocation(line: 180, column: 19, scope: !550)
!3138 = !DILocation(line: 180, column: 30, scope: !550)
!3139 = !DILocation(line: 180, column: 41, scope: !550)
!3140 = !DILocation(line: 182, column: 14, scope: !550)
!3141 = !DILocation(line: 182, column: 10, scope: !550)
!3142 = !DILocation(line: 184, column: 9, scope: !3143)
!3143 = distinct !DILexicalBlock(scope: !550, file: !549, line: 184, column: 7)
!3144 = !DILocation(line: 184, column: 7, scope: !550)
!3145 = !DILocation(line: 186, column: 13, scope: !3146)
!3146 = distinct !DILexicalBlock(scope: !3147, file: !549, line: 186, column: 11)
!3147 = distinct !DILexicalBlock(scope: !3143, file: !549, line: 185, column: 5)
!3148 = !DILocation(line: 186, column: 11, scope: !3147)
!3149 = !DILocation(line: 194, column: 30, scope: !3150)
!3150 = distinct !DILexicalBlock(scope: !3146, file: !549, line: 187, column: 9)
!3151 = !DILocation(line: 195, column: 16, scope: !3150)
!3152 = !DILocation(line: 195, column: 13, scope: !3150)
!3153 = !DILocation(line: 196, column: 9, scope: !3150)
!3154 = !DILocation(line: 204, column: 69, scope: !3155)
!3155 = distinct !DILexicalBlock(scope: !3156, file: !549, line: 204, column: 11)
!3156 = distinct !DILexicalBlock(scope: !3143, file: !549, line: 199, column: 5)
!3157 = !DILocation(line: 205, column: 11, scope: !3155)
!3158 = !DILocation(line: 204, column: 11, scope: !3156)
!3159 = !DILocation(line: 206, column: 9, scope: !3155)
!3160 = !DILocation(line: 210, column: 7, scope: !550)
!3161 = !DILocation(line: 211, column: 25, scope: !550)
!3162 = !DILocation(line: 51, column: 17, scope: !3100, inlinedAt: !3163)
!3163 = distinct !DILocation(line: 211, column: 10, scope: !550)
!3164 = !DILocation(line: 51, column: 27, scope: !3100, inlinedAt: !3163)
!3165 = !DILocation(line: 53, column: 10, scope: !3109, inlinedAt: !3163)
!3166 = !DILocation(line: 207, column: 14, scope: !3156)
!3167 = !DILocation(line: 207, column: 18, scope: !3156)
!3168 = !DILocation(line: 207, column: 9, scope: !3156)
!3169 = !DILocation(line: 53, column: 8, scope: !3109, inlinedAt: !3163)
!3170 = !DILocation(line: 57, column: 7, scope: !3114, inlinedAt: !3163)
!3171 = !DILocation(line: 58, column: 7, scope: !3114, inlinedAt: !3163)
!3172 = !DILocation(line: 61, column: 7, scope: !3100, inlinedAt: !3163)
!3173 = !DILocation(line: 62, column: 8, scope: !3118, inlinedAt: !3163)
!3174 = !DILocation(line: 62, column: 13, scope: !3120, inlinedAt: !3163)
!3175 = !DILocation(line: 62, column: 10, scope: !3118, inlinedAt: !3163)
!3176 = !DILocation(line: 63, column: 5, scope: !3118, inlinedAt: !3163)
!3177 = !DILocation(line: 211, column: 3, scope: !550)
!3178 = distinct !DISubprogram(name: "xcharalloc", scope: !549, file: !549, line: 220, type: !2097, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !545, variables: !3179)
!3179 = !{!3180}
!3180 = !DILocalVariable(name: "n", arg: 1, scope: !3178, file: !549, line: 220, type: !94)
!3181 = !DILocation(line: 220, column: 20, scope: !3178)
!3182 = !DILocation(line: 39, column: 17, scope: !3059, inlinedAt: !3183)
!3183 = distinct !DILocation(line: 222, column: 10, scope: !3178)
!3184 = !DILocation(line: 41, column: 13, scope: !3059, inlinedAt: !3183)
!3185 = !DILocation(line: 41, column: 9, scope: !3059, inlinedAt: !3183)
!3186 = !DILocation(line: 42, column: 8, scope: !3070, inlinedAt: !3183)
!3187 = !DILocation(line: 42, column: 15, scope: !3072, inlinedAt: !3183)
!3188 = !DILocation(line: 42, column: 10, scope: !3070, inlinedAt: !3183)
!3189 = !DILocation(line: 43, column: 5, scope: !3070, inlinedAt: !3183)
!3190 = !DILocation(line: 222, column: 3, scope: !3178)
!3191 = distinct !DISubprogram(name: "x2realloc", scope: !3060, file: !3060, line: 74, type: !3192, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !545, variables: !3194)
!3192 = !DISubroutineType(types: !3193)
!3193 = !{!49, !49, !553}
!3194 = !{!3195, !3196}
!3195 = !DILocalVariable(name: "p", arg: 1, scope: !3191, file: !3060, line: 74, type: !49)
!3196 = !DILocalVariable(name: "pn", arg: 2, scope: !3191, file: !3060, line: 74, type: !553)
!3197 = !DILocation(line: 74, column: 18, scope: !3191)
!3198 = !DILocation(line: 74, column: 29, scope: !3191)
!3199 = !DILocation(line: 180, column: 19, scope: !550, inlinedAt: !3200)
!3200 = distinct !DILocation(line: 76, column: 10, scope: !3191)
!3201 = !DILocation(line: 180, column: 30, scope: !550, inlinedAt: !3200)
!3202 = !DILocation(line: 180, column: 41, scope: !550, inlinedAt: !3200)
!3203 = !DILocation(line: 182, column: 14, scope: !550, inlinedAt: !3200)
!3204 = !DILocation(line: 182, column: 10, scope: !550, inlinedAt: !3200)
!3205 = !DILocation(line: 184, column: 9, scope: !3143, inlinedAt: !3200)
!3206 = !DILocation(line: 184, column: 7, scope: !550, inlinedAt: !3200)
!3207 = !DILocation(line: 186, column: 13, scope: !3146, inlinedAt: !3200)
!3208 = !DILocation(line: 186, column: 11, scope: !3147, inlinedAt: !3200)
!3209 = !DILocation(line: 210, column: 7, scope: !550, inlinedAt: !3200)
!3210 = !DILocation(line: 51, column: 17, scope: !3100, inlinedAt: !3211)
!3211 = distinct !DILocation(line: 211, column: 10, scope: !550, inlinedAt: !3200)
!3212 = !DILocation(line: 51, column: 27, scope: !3100, inlinedAt: !3211)
!3213 = !DILocation(line: 53, column: 10, scope: !3109, inlinedAt: !3211)
!3214 = !DILocation(line: 205, column: 11, scope: !3155, inlinedAt: !3200)
!3215 = !DILocation(line: 204, column: 11, scope: !3156, inlinedAt: !3200)
!3216 = !DILocation(line: 206, column: 9, scope: !3155, inlinedAt: !3200)
!3217 = !DILocation(line: 207, column: 14, scope: !3156, inlinedAt: !3200)
!3218 = !DILocation(line: 207, column: 18, scope: !3156, inlinedAt: !3200)
!3219 = !DILocation(line: 207, column: 9, scope: !3156, inlinedAt: !3200)
!3220 = !DILocation(line: 53, column: 8, scope: !3109, inlinedAt: !3211)
!3221 = !DILocation(line: 57, column: 7, scope: !3114, inlinedAt: !3211)
!3222 = !DILocation(line: 58, column: 7, scope: !3114, inlinedAt: !3211)
!3223 = !DILocation(line: 61, column: 7, scope: !3100, inlinedAt: !3211)
!3224 = !DILocation(line: 62, column: 8, scope: !3118, inlinedAt: !3211)
!3225 = !DILocation(line: 62, column: 13, scope: !3120, inlinedAt: !3211)
!3226 = !DILocation(line: 62, column: 10, scope: !3118, inlinedAt: !3211)
!3227 = !DILocation(line: 63, column: 5, scope: !3118, inlinedAt: !3211)
!3228 = !DILocation(line: 76, column: 3, scope: !3191)
!3229 = distinct !DISubprogram(name: "xzalloc", scope: !3060, file: !3060, line: 84, type: !3061, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !545, variables: !3230)
!3230 = !{!3231}
!3231 = !DILocalVariable(name: "s", arg: 1, scope: !3229, file: !3060, line: 84, type: !94)
!3232 = !DILocation(line: 84, column: 17, scope: !3229)
!3233 = !DILocation(line: 39, column: 17, scope: !3059, inlinedAt: !3234)
!3234 = distinct !DILocation(line: 86, column: 18, scope: !3229)
!3235 = !DILocation(line: 41, column: 13, scope: !3059, inlinedAt: !3234)
!3236 = !DILocation(line: 41, column: 9, scope: !3059, inlinedAt: !3234)
!3237 = !DILocation(line: 42, column: 8, scope: !3070, inlinedAt: !3234)
!3238 = !DILocation(line: 42, column: 15, scope: !3072, inlinedAt: !3234)
!3239 = !DILocation(line: 42, column: 10, scope: !3070, inlinedAt: !3234)
!3240 = !DILocation(line: 43, column: 5, scope: !3070, inlinedAt: !3234)
!3241 = !DILocation(line: 86, column: 10, scope: !3229)
!3242 = !DILocation(line: 86, column: 3, scope: !3229)
!3243 = distinct !DISubprogram(name: "xcalloc", scope: !3060, file: !3060, line: 93, type: !3046, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !545, variables: !3244)
!3244 = !{!3245, !3246, !3247}
!3245 = !DILocalVariable(name: "n", arg: 1, scope: !3243, file: !3060, line: 93, type: !94)
!3246 = !DILocalVariable(name: "s", arg: 2, scope: !3243, file: !3060, line: 93, type: !94)
!3247 = !DILocalVariable(name: "p", scope: !3243, file: !3060, line: 95, type: !49)
!3248 = !DILocation(line: 93, column: 17, scope: !3243)
!3249 = !DILocation(line: 93, column: 27, scope: !3243)
!3250 = !DILocation(line: 100, column: 7, scope: !3251)
!3251 = distinct !DILexicalBlock(scope: !3243, file: !3060, line: 100, column: 7)
!3252 = !DILocation(line: 101, column: 7, scope: !3251)
!3253 = !DILocation(line: 101, column: 18, scope: !3254)
!3254 = !DILexicalBlockFile(scope: !3251, file: !3060, discriminator: 1)
!3255 = !DILocation(line: 95, column: 9, scope: !3243)
!3256 = !DILocation(line: 101, column: 16, scope: !3254)
!3257 = !DILocation(line: 100, column: 7, scope: !3258)
!3258 = !DILexicalBlockFile(scope: !3243, file: !3060, discriminator: 1)
!3259 = !DILocation(line: 102, column: 5, scope: !3251)
!3260 = !DILocation(line: 103, column: 3, scope: !3243)
!3261 = distinct !DISubprogram(name: "xmemdup", scope: !3060, file: !3060, line: 111, type: !3262, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !545, variables: !3264)
!3262 = !DISubroutineType(types: !3263)
!3263 = !{!49, !502, !94}
!3264 = !{!3265, !3266}
!3265 = !DILocalVariable(name: "p", arg: 1, scope: !3261, file: !3060, line: 111, type: !502)
!3266 = !DILocalVariable(name: "s", arg: 2, scope: !3261, file: !3060, line: 111, type: !94)
!3267 = !DILocation(line: 111, column: 22, scope: !3261)
!3268 = !DILocation(line: 111, column: 32, scope: !3261)
!3269 = !DILocation(line: 39, column: 17, scope: !3059, inlinedAt: !3270)
!3270 = distinct !DILocation(line: 113, column: 18, scope: !3261)
!3271 = !DILocation(line: 41, column: 13, scope: !3059, inlinedAt: !3270)
!3272 = !DILocation(line: 41, column: 9, scope: !3059, inlinedAt: !3270)
!3273 = !DILocation(line: 42, column: 8, scope: !3070, inlinedAt: !3270)
!3274 = !DILocation(line: 42, column: 15, scope: !3072, inlinedAt: !3270)
!3275 = !DILocation(line: 42, column: 10, scope: !3070, inlinedAt: !3270)
!3276 = !DILocation(line: 43, column: 5, scope: !3070, inlinedAt: !3270)
!3277 = !DILocation(line: 113, column: 10, scope: !3261)
!3278 = !DILocation(line: 113, column: 3, scope: !3261)
!3279 = distinct !DISubprogram(name: "xstrdup", scope: !3060, file: !3060, line: 119, type: !2304, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !545, variables: !3280)
!3280 = !{!3281}
!3281 = !DILocalVariable(name: "string", arg: 1, scope: !3279, file: !3060, line: 119, type: !6)
!3282 = !DILocation(line: 119, column: 22, scope: !3279)
!3283 = !DILocation(line: 121, column: 27, scope: !3279)
!3284 = !DILocation(line: 121, column: 43, scope: !3279)
!3285 = !DILocation(line: 111, column: 22, scope: !3261, inlinedAt: !3286)
!3286 = distinct !DILocation(line: 121, column: 10, scope: !3287)
!3287 = !DILexicalBlockFile(scope: !3279, file: !3060, discriminator: 1)
!3288 = !DILocation(line: 111, column: 32, scope: !3261, inlinedAt: !3286)
!3289 = !DILocation(line: 39, column: 17, scope: !3059, inlinedAt: !3290)
!3290 = distinct !DILocation(line: 113, column: 18, scope: !3261, inlinedAt: !3286)
!3291 = !DILocation(line: 41, column: 13, scope: !3059, inlinedAt: !3290)
!3292 = !DILocation(line: 41, column: 9, scope: !3059, inlinedAt: !3290)
!3293 = !DILocation(line: 42, column: 8, scope: !3070, inlinedAt: !3290)
!3294 = !DILocation(line: 42, column: 15, scope: !3072, inlinedAt: !3290)
!3295 = !DILocation(line: 42, column: 10, scope: !3070, inlinedAt: !3290)
!3296 = !DILocation(line: 43, column: 5, scope: !3070, inlinedAt: !3290)
!3297 = !DILocation(line: 113, column: 10, scope: !3261, inlinedAt: !3286)
!3298 = !DILocation(line: 121, column: 3, scope: !3279)
!3299 = distinct !DISubprogram(name: "xalloc_die", scope: !3300, file: !3300, line: 32, type: !731, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !562, variables: !4)
!3300 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3301 = !DILocation(line: 34, column: 10, scope: !3299)
!3302 = !DILocation(line: 34, column: 33, scope: !3299)
!3303 = !DILocation(line: 34, column: 3, scope: !3304)
!3304 = !DILexicalBlockFile(scope: !3299, file: !3300, discriminator: 1)
!3305 = !DILocation(line: 40, column: 3, scope: !3299)
!3306 = distinct !DISubprogram(name: "rpl_calloc", scope: !3307, file: !3307, line: 42, type: !3046, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !564, variables: !3308)
!3307 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3308 = !{!3309, !3310, !3311, !3312}
!3309 = !DILocalVariable(name: "n", arg: 1, scope: !3306, file: !3307, line: 42, type: !94)
!3310 = !DILocalVariable(name: "s", arg: 2, scope: !3306, file: !3307, line: 42, type: !94)
!3311 = !DILocalVariable(name: "result", scope: !3306, file: !3307, line: 44, type: !49)
!3312 = !DILocalVariable(name: "bytes", scope: !3313, file: !3307, line: 56, type: !94)
!3313 = distinct !DILexicalBlock(scope: !3314, file: !3307, line: 53, column: 5)
!3314 = distinct !DILexicalBlock(scope: !3306, file: !3307, line: 47, column: 7)
!3315 = !DILocation(line: 42, column: 20, scope: !3306)
!3316 = !DILocation(line: 42, column: 30, scope: !3306)
!3317 = !DILocation(line: 47, column: 9, scope: !3314)
!3318 = !DILocation(line: 47, column: 19, scope: !3319)
!3319 = !DILexicalBlockFile(scope: !3314, file: !3307, discriminator: 1)
!3320 = !DILocation(line: 47, column: 14, scope: !3314)
!3321 = !DILocation(line: 56, column: 24, scope: !3313)
!3322 = !DILocation(line: 56, column: 14, scope: !3313)
!3323 = !DILocation(line: 57, column: 17, scope: !3324)
!3324 = distinct !DILexicalBlock(scope: !3313, file: !3307, line: 57, column: 11)
!3325 = !DILocation(line: 57, column: 21, scope: !3324)
!3326 = !DILocation(line: 57, column: 11, scope: !3313)
!3327 = !DILocation(line: 59, column: 11, scope: !3328)
!3328 = distinct !DILexicalBlock(scope: !3324, file: !3307, line: 58, column: 9)
!3329 = !DILocation(line: 59, column: 17, scope: !3328)
!3330 = !DILocation(line: 65, column: 12, scope: !3306)
!3331 = !DILocation(line: 44, column: 9, scope: !3306)
!3332 = !DILocation(line: 72, column: 3, scope: !3306)
!3333 = !DILocation(line: 73, column: 1, scope: !3306)
!3334 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !3335, file: !3335, line: 334, type: !3336, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !566, variables: !3350)
!3335 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3336 = !DISubroutineType(types: !3337)
!3337 = !{!94, !3338, !6, !94, !3339}
!3338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!3339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3340, size: 64)
!3340 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1066, line: 107, baseType: !3341)
!3341 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1066, line: 95, baseType: !3342)
!3342 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1066, line: 83, size: 64, elements: !3343)
!3343 = !{!3344, !3345}
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3342, file: !1066, line: 85, baseType: !25, size: 32)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3342, file: !1066, line: 94, baseType: !3346, size: 32, offset: 32)
!3346 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3342, file: !1066, line: 86, size: 32, elements: !3347)
!3347 = !{!3348, !3349}
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3346, file: !1066, line: 89, baseType: !113, size: 32)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3346, file: !1066, line: 93, baseType: !1076, size: 32)
!3350 = !{!3351, !3352, !3353, !3354, !3355, !3356, !3357}
!3351 = !DILocalVariable(name: "pwc", arg: 1, scope: !3334, file: !3335, line: 334, type: !3338)
!3352 = !DILocalVariable(name: "s", arg: 2, scope: !3334, file: !3335, line: 334, type: !6)
!3353 = !DILocalVariable(name: "n", arg: 3, scope: !3334, file: !3335, line: 334, type: !94)
!3354 = !DILocalVariable(name: "ps", arg: 4, scope: !3334, file: !3335, line: 334, type: !3339)
!3355 = !DILocalVariable(name: "ret", scope: !3334, file: !3335, line: 336, type: !94)
!3356 = !DILocalVariable(name: "wc", scope: !3334, file: !3335, line: 337, type: !1081)
!3357 = !DILocalVariable(name: "uc", scope: !3358, file: !3335, line: 398, type: !494)
!3358 = distinct !DILexicalBlock(scope: !3359, file: !3335, line: 397, column: 5)
!3359 = distinct !DILexicalBlock(scope: !3334, file: !3335, line: 396, column: 7)
!3360 = !DILocation(line: 334, column: 23, scope: !3334)
!3361 = !DILocation(line: 334, column: 40, scope: !3334)
!3362 = !DILocation(line: 334, column: 50, scope: !3334)
!3363 = !DILocation(line: 334, column: 64, scope: !3334)
!3364 = !DILocation(line: 337, column: 3, scope: !3334)
!3365 = !DILocation(line: 353, column: 9, scope: !3366)
!3366 = distinct !DILexicalBlock(scope: !3334, file: !3335, line: 353, column: 7)
!3367 = !DILocation(line: 353, column: 7, scope: !3334)
!3368 = !DILocation(line: 388, column: 9, scope: !3334)
!3369 = !DILocation(line: 336, column: 10, scope: !3334)
!3370 = !DILocation(line: 396, column: 19, scope: !3359)
!3371 = !DILocation(line: 396, column: 31, scope: !3372)
!3372 = !DILexicalBlockFile(scope: !3359, file: !3335, discriminator: 1)
!3373 = !DILocation(line: 396, column: 26, scope: !3359)
!3374 = !DILocation(line: 396, column: 41, scope: !3375)
!3375 = !DILexicalBlockFile(scope: !3359, file: !3335, discriminator: 2)
!3376 = !DILocation(line: 396, column: 7, scope: !3377)
!3377 = !DILexicalBlockFile(scope: !3334, file: !3335, discriminator: 2)
!3378 = !DILocation(line: 398, column: 26, scope: !3358)
!3379 = !DILocation(line: 398, column: 21, scope: !3358)
!3380 = !DILocation(line: 399, column: 14, scope: !3358)
!3381 = !DILocation(line: 399, column: 12, scope: !3358)
!3382 = !DILocation(line: 405, column: 1, scope: !3334)
!3383 = distinct !DISubprogram(name: "close_stream", scope: !3384, file: !3384, line: 56, type: !3385, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !569, variables: !3427)
!3384 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3385 = !DISubroutineType(types: !3386)
!3386 = !{!25, !3387}
!3387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3388, size: 64)
!3388 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !791, line: 49, baseType: !3389)
!3389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2831, line: 241, size: 1728, elements: !3390)
!3390 = !{!3391, !3392, !3393, !3394, !3395, !3396, !3397, !3398, !3399, !3400, !3401, !3402, !3403, !3411, !3412, !3413, !3414, !3415, !3416, !3417, !3418, !3419, !3420, !3421, !3422, !3423, !3424, !3425, !3426}
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3389, file: !2831, line: 242, baseType: !25, size: 32)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3389, file: !2831, line: 247, baseType: !50, size: 64, offset: 64)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3389, file: !2831, line: 248, baseType: !50, size: 64, offset: 128)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3389, file: !2831, line: 249, baseType: !50, size: 64, offset: 192)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3389, file: !2831, line: 250, baseType: !50, size: 64, offset: 256)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3389, file: !2831, line: 251, baseType: !50, size: 64, offset: 320)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3389, file: !2831, line: 252, baseType: !50, size: 64, offset: 384)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3389, file: !2831, line: 253, baseType: !50, size: 64, offset: 448)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3389, file: !2831, line: 254, baseType: !50, size: 64, offset: 512)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3389, file: !2831, line: 256, baseType: !50, size: 64, offset: 576)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3389, file: !2831, line: 257, baseType: !50, size: 64, offset: 640)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3389, file: !2831, line: 258, baseType: !50, size: 64, offset: 704)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3389, file: !2831, line: 260, baseType: !3404, size: 64, offset: 768)
!3404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3405, size: 64)
!3405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2831, line: 156, size: 192, elements: !3406)
!3406 = !{!3407, !3408, !3410}
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3405, file: !2831, line: 157, baseType: !3404, size: 64)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3405, file: !2831, line: 158, baseType: !3409, size: 64, offset: 64)
!3409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3389, size: 64)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3405, file: !2831, line: 162, baseType: !25, size: 32, offset: 128)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3389, file: !2831, line: 262, baseType: !3409, size: 64, offset: 832)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3389, file: !2831, line: 264, baseType: !25, size: 32, offset: 896)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3389, file: !2831, line: 268, baseType: !25, size: 32, offset: 928)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3389, file: !2831, line: 270, baseType: !2857, size: 64, offset: 960)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3389, file: !2831, line: 274, baseType: !93, size: 16, offset: 1024)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3389, file: !2831, line: 275, baseType: !2862, size: 8, offset: 1040)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3389, file: !2831, line: 276, baseType: !2864, size: 8, offset: 1048)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3389, file: !2831, line: 280, baseType: !2866, size: 64, offset: 1088)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3389, file: !2831, line: 289, baseType: !2869, size: 64, offset: 1152)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3389, file: !2831, line: 297, baseType: !49, size: 64, offset: 1216)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3389, file: !2831, line: 298, baseType: !49, size: 64, offset: 1280)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3389, file: !2831, line: 299, baseType: !49, size: 64, offset: 1344)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3389, file: !2831, line: 300, baseType: !49, size: 64, offset: 1408)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3389, file: !2831, line: 302, baseType: !94, size: 64, offset: 1472)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3389, file: !2831, line: 303, baseType: !25, size: 32, offset: 1536)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3389, file: !2831, line: 305, baseType: !2877, size: 160, offset: 1568)
!3427 = !{!3428, !3429, !3431, !3432}
!3428 = !DILocalVariable(name: "stream", arg: 1, scope: !3383, file: !3384, line: 56, type: !3387)
!3429 = !DILocalVariable(name: "some_pending", scope: !3383, file: !3384, line: 58, type: !3430)
!3430 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!3431 = !DILocalVariable(name: "prev_fail", scope: !3383, file: !3384, line: 59, type: !3430)
!3432 = !DILocalVariable(name: "fclose_fail", scope: !3383, file: !3384, line: 60, type: !3430)
!3433 = !DILocation(line: 56, column: 21, scope: !3383)
!3434 = !DILocation(line: 58, column: 30, scope: !3383)
!3435 = !DILocalVariable(name: "__stream", arg: 1, scope: !3436, file: !3437, line: 132, type: !3387)
!3436 = distinct !DISubprogram(name: "ferror_unlocked", scope: !3437, file: !3437, line: 132, type: !3385, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !569, variables: !3438)
!3437 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3438 = !{!3435}
!3439 = !DILocation(line: 132, column: 1, scope: !3436, inlinedAt: !3440)
!3440 = distinct !DILocation(line: 59, column: 27, scope: !3383)
!3441 = !DILocation(line: 134, column: 10, scope: !3436, inlinedAt: !3440)
!3442 = !{!3443, !664, i64 0}
!3443 = !{!"_IO_FILE", !664, i64 0, !599, i64 8, !599, i64 16, !599, i64 24, !599, i64 32, !599, i64 40, !599, i64 48, !599, i64 56, !599, i64 64, !599, i64 72, !599, i64 80, !599, i64 88, !599, i64 96, !599, i64 104, !664, i64 112, !664, i64 116, !2142, i64 120, !1434, i64 128, !600, i64 130, !600, i64 131, !599, i64 136, !2142, i64 144, !599, i64 152, !599, i64 160, !599, i64 168, !599, i64 176, !2142, i64 184, !664, i64 192, !600, i64 196}
!3444 = !DILocation(line: 59, column: 43, scope: !3383)
!3445 = !DILocation(line: 60, column: 29, scope: !3383)
!3446 = !DILocation(line: 60, column: 45, scope: !3383)
!3447 = !DILocation(line: 70, column: 17, scope: !3448)
!3448 = distinct !DILexicalBlock(scope: !3383, file: !3384, line: 70, column: 7)
!3449 = !DILocation(line: 70, column: 33, scope: !3450)
!3450 = !DILexicalBlockFile(scope: !3448, file: !3384, discriminator: 1)
!3451 = !DILocation(line: 70, column: 53, scope: !3452)
!3452 = !DILexicalBlockFile(scope: !3448, file: !3384, discriminator: 3)
!3453 = !DILocation(line: 70, column: 7, scope: !3454)
!3454 = !DILexicalBlockFile(scope: !3383, file: !3384, discriminator: 3)
!3455 = !DILocation(line: 72, column: 11, scope: !3456)
!3456 = distinct !DILexicalBlock(scope: !3448, file: !3384, line: 71, column: 5)
!3457 = !DILocation(line: 73, column: 9, scope: !3458)
!3458 = distinct !DILexicalBlock(scope: !3456, file: !3384, line: 72, column: 11)
!3459 = !DILocation(line: 73, column: 15, scope: !3458)
!3460 = !DILocation(line: 78, column: 1, scope: !3383)
!3461 = distinct !DISubprogram(name: "hard_locale", scope: !3462, file: !3462, line: 38, type: !3463, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !571, variables: !3465)
!3462 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3463 = !DISubroutineType(types: !3464)
!3464 = !{!17, !25}
!3465 = !{!3466, !3467, !3468, !3469, !3476, !3477, !3479, !3480, !3482, !3483, !3485}
!3466 = !DILocalVariable(name: "category", arg: 1, scope: !3461, file: !3462, line: 38, type: !25)
!3467 = !DILocalVariable(name: "hard", scope: !3461, file: !3462, line: 40, type: !17)
!3468 = !DILocalVariable(name: "p", scope: !3461, file: !3462, line: 41, type: !6)
!3469 = !DILocalVariable(name: "__s1_len", scope: !3470, file: !3462, line: 47, type: !94)
!3470 = distinct !DILexicalBlock(scope: !3471, file: !3462, line: 47, column: 15)
!3471 = distinct !DILexicalBlock(scope: !3472, file: !3462, line: 47, column: 15)
!3472 = distinct !DILexicalBlock(scope: !3473, file: !3462, line: 46, column: 9)
!3473 = distinct !DILexicalBlock(scope: !3474, file: !3462, line: 45, column: 11)
!3474 = distinct !DILexicalBlock(scope: !3475, file: !3462, line: 44, column: 5)
!3475 = distinct !DILexicalBlock(scope: !3461, file: !3462, line: 43, column: 7)
!3476 = !DILocalVariable(name: "__s2_len", scope: !3470, file: !3462, line: 47, type: !94)
!3477 = !DILocalVariable(name: "__s2", scope: !3478, file: !3462, line: 47, type: !504)
!3478 = distinct !DILexicalBlock(scope: !3470, file: !3462, line: 47, column: 15)
!3479 = !DILocalVariable(name: "__result", scope: !3478, file: !3462, line: 47, type: !25)
!3480 = !DILocalVariable(name: "__s1_len", scope: !3481, file: !3462, line: 47, type: !94)
!3481 = distinct !DILexicalBlock(scope: !3471, file: !3462, line: 47, column: 39)
!3482 = !DILocalVariable(name: "__s2_len", scope: !3481, file: !3462, line: 47, type: !94)
!3483 = !DILocalVariable(name: "__s2", scope: !3484, file: !3462, line: 47, type: !504)
!3484 = distinct !DILexicalBlock(scope: !3481, file: !3462, line: 47, column: 39)
!3485 = !DILocalVariable(name: "__result", scope: !3484, file: !3462, line: 47, type: !25)
!3486 = !DILocation(line: 38, column: 18, scope: !3461)
!3487 = !DILocation(line: 40, column: 8, scope: !3461)
!3488 = !DILocation(line: 41, column: 19, scope: !3461)
!3489 = !DILocation(line: 41, column: 15, scope: !3461)
!3490 = !DILocation(line: 43, column: 7, scope: !3475)
!3491 = !DILocation(line: 43, column: 7, scope: !3461)
!3492 = !DILocation(line: 47, column: 15, scope: !3470)
!3493 = !DILocation(line: 47, column: 15, scope: !3478)
!3494 = !DILocation(line: 47, column: 15, scope: !3495)
!3495 = !DILexicalBlockFile(scope: !3478, file: !3462, discriminator: 2)
!3496 = !DILocation(line: 47, column: 15, scope: !3497)
!3497 = !DILexicalBlockFile(scope: !3498, file: !3462, discriminator: 3)
!3498 = distinct !DILexicalBlock(scope: !3478, file: !3462, line: 47, column: 15)
!3499 = !DILocation(line: 47, column: 15, scope: !3500)
!3500 = !DILexicalBlockFile(scope: !3498, file: !3462, discriminator: 2)
!3501 = !DILocation(line: 47, column: 15, scope: !3502)
!3502 = !DILexicalBlockFile(scope: !3503, file: !3462, discriminator: 4)
!3503 = distinct !DILexicalBlock(scope: !3498, file: !3462, line: 47, column: 15)
!3504 = !DILocation(line: 47, column: 15, scope: !3505)
!3505 = !DILexicalBlockFile(scope: !3470, file: !3462, discriminator: 11)
!3506 = !DILocation(line: 47, column: 36, scope: !3507)
!3507 = !DILexicalBlockFile(scope: !3471, file: !3462, discriminator: 13)
!3508 = !DILocation(line: 47, column: 39, scope: !3481)
!3509 = !DILocation(line: 47, column: 39, scope: !3510)
!3510 = !DILexicalBlockFile(scope: !3481, file: !3462, discriminator: 26)
!3511 = !DILocation(line: 47, column: 59, scope: !3512)
!3512 = !DILexicalBlockFile(scope: !3471, file: !3462, discriminator: 27)
!3513 = !DILocation(line: 47, column: 15, scope: !3514)
!3514 = !DILexicalBlockFile(scope: !3472, file: !3462, discriminator: 27)
!3515 = !DILocation(line: 48, column: 13, scope: !3471)
!3516 = !DILocation(line: 71, column: 3, scope: !3461)
!3517 = distinct !DISubprogram(name: "locale_charset", scope: !496, file: !496, line: 393, type: !3518, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !151, variables: !3520)
!3518 = !DISubroutineType(types: !3519)
!3519 = !{!6}
!3520 = !{!3521, !3522, !3523, !3528}
!3521 = !DILocalVariable(name: "codeset", scope: !3517, file: !496, line: 395, type: !6)
!3522 = !DILocalVariable(name: "aliases", scope: !3517, file: !496, line: 396, type: !6)
!3523 = !DILocalVariable(name: "__s1_len", scope: !3524, file: !496, line: 592, type: !94)
!3524 = distinct !DILexicalBlock(scope: !3525, file: !496, line: 592, column: 9)
!3525 = distinct !DILexicalBlock(scope: !3526, file: !496, line: 592, column: 9)
!3526 = distinct !DILexicalBlock(scope: !3527, file: !496, line: 589, column: 3)
!3527 = distinct !DILexicalBlock(scope: !3517, file: !496, line: 589, column: 3)
!3528 = !DILocalVariable(name: "__s2_len", scope: !3524, file: !496, line: 592, type: !94)
!3529 = !DILocalVariable(name: "buf1", scope: !3530, file: !496, line: 196, type: !3597)
!3530 = distinct !DILexicalBlock(scope: !3531, file: !496, line: 194, column: 21)
!3531 = distinct !DILexicalBlock(scope: !3532, file: !496, line: 193, column: 19)
!3532 = distinct !DILexicalBlock(scope: !3533, file: !496, line: 193, column: 19)
!3533 = distinct !DILexicalBlock(scope: !3534, file: !496, line: 188, column: 17)
!3534 = distinct !DILexicalBlock(scope: !3535, file: !496, line: 181, column: 19)
!3535 = distinct !DILexicalBlock(scope: !3536, file: !496, line: 177, column: 13)
!3536 = distinct !DILexicalBlock(scope: !3537, file: !496, line: 173, column: 15)
!3537 = distinct !DILexicalBlock(scope: !3538, file: !496, line: 161, column: 9)
!3538 = distinct !DILexicalBlock(scope: !3539, file: !496, line: 157, column: 11)
!3539 = distinct !DILexicalBlock(scope: !3540, file: !496, line: 130, column: 5)
!3540 = distinct !DILexicalBlock(scope: !3541, file: !496, line: 129, column: 7)
!3541 = distinct !DISubprogram(name: "get_charset_aliases", scope: !496, file: !496, line: 124, type: !3518, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !151, variables: !3542)
!3542 = !{!3543, !3544, !3545, !3546, !3547, !3549, !3550, !3551, !3552, !3593, !3594, !3595, !3529, !3596, !3600, !3601, !3602}
!3543 = !DILocalVariable(name: "cp", scope: !3541, file: !496, line: 126, type: !6)
!3544 = !DILocalVariable(name: "dir", scope: !3539, file: !496, line: 132, type: !6)
!3545 = !DILocalVariable(name: "base", scope: !3539, file: !496, line: 133, type: !6)
!3546 = !DILocalVariable(name: "file_name", scope: !3539, file: !496, line: 134, type: !50)
!3547 = !DILocalVariable(name: "dir_len", scope: !3548, file: !496, line: 144, type: !94)
!3548 = distinct !DILexicalBlock(scope: !3539, file: !496, line: 143, column: 7)
!3549 = !DILocalVariable(name: "base_len", scope: !3548, file: !496, line: 145, type: !94)
!3550 = !DILocalVariable(name: "add_slash", scope: !3548, file: !496, line: 146, type: !25)
!3551 = !DILocalVariable(name: "fd", scope: !3537, file: !496, line: 162, type: !25)
!3552 = !DILocalVariable(name: "fp", scope: !3535, file: !496, line: 178, type: !3553)
!3553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3554, size: 64)
!3554 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !791, line: 49, baseType: !3555)
!3555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2831, line: 241, size: 1728, elements: !3556)
!3556 = !{!3557, !3558, !3559, !3560, !3561, !3562, !3563, !3564, !3565, !3566, !3567, !3568, !3569, !3577, !3578, !3579, !3580, !3581, !3582, !3583, !3584, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3592}
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3555, file: !2831, line: 242, baseType: !25, size: 32)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3555, file: !2831, line: 247, baseType: !50, size: 64, offset: 64)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3555, file: !2831, line: 248, baseType: !50, size: 64, offset: 128)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3555, file: !2831, line: 249, baseType: !50, size: 64, offset: 192)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3555, file: !2831, line: 250, baseType: !50, size: 64, offset: 256)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3555, file: !2831, line: 251, baseType: !50, size: 64, offset: 320)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3555, file: !2831, line: 252, baseType: !50, size: 64, offset: 384)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3555, file: !2831, line: 253, baseType: !50, size: 64, offset: 448)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3555, file: !2831, line: 254, baseType: !50, size: 64, offset: 512)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3555, file: !2831, line: 256, baseType: !50, size: 64, offset: 576)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3555, file: !2831, line: 257, baseType: !50, size: 64, offset: 640)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3555, file: !2831, line: 258, baseType: !50, size: 64, offset: 704)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3555, file: !2831, line: 260, baseType: !3570, size: 64, offset: 768)
!3570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3571, size: 64)
!3571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2831, line: 156, size: 192, elements: !3572)
!3572 = !{!3573, !3574, !3576}
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3571, file: !2831, line: 157, baseType: !3570, size: 64)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3571, file: !2831, line: 158, baseType: !3575, size: 64, offset: 64)
!3575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3555, size: 64)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3571, file: !2831, line: 162, baseType: !25, size: 32, offset: 128)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3555, file: !2831, line: 262, baseType: !3575, size: 64, offset: 832)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3555, file: !2831, line: 264, baseType: !25, size: 32, offset: 896)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3555, file: !2831, line: 268, baseType: !25, size: 32, offset: 928)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3555, file: !2831, line: 270, baseType: !2857, size: 64, offset: 960)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3555, file: !2831, line: 274, baseType: !93, size: 16, offset: 1024)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3555, file: !2831, line: 275, baseType: !2862, size: 8, offset: 1040)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3555, file: !2831, line: 276, baseType: !2864, size: 8, offset: 1048)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3555, file: !2831, line: 280, baseType: !2866, size: 64, offset: 1088)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3555, file: !2831, line: 289, baseType: !2869, size: 64, offset: 1152)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3555, file: !2831, line: 297, baseType: !49, size: 64, offset: 1216)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3555, file: !2831, line: 298, baseType: !49, size: 64, offset: 1280)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3555, file: !2831, line: 299, baseType: !49, size: 64, offset: 1344)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3555, file: !2831, line: 300, baseType: !49, size: 64, offset: 1408)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3555, file: !2831, line: 302, baseType: !94, size: 64, offset: 1472)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3555, file: !2831, line: 303, baseType: !25, size: 32, offset: 1536)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3555, file: !2831, line: 305, baseType: !2877, size: 160, offset: 1568)
!3593 = !DILocalVariable(name: "res_ptr", scope: !3533, file: !496, line: 190, type: !50)
!3594 = !DILocalVariable(name: "res_size", scope: !3533, file: !496, line: 191, type: !94)
!3595 = !DILocalVariable(name: "c", scope: !3530, file: !496, line: 195, type: !25)
!3596 = !DILocalVariable(name: "buf2", scope: !3530, file: !496, line: 197, type: !3597)
!3597 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 408, elements: !3598)
!3598 = !{!3599}
!3599 = !DISubrange(count: 51)
!3600 = !DILocalVariable(name: "l1", scope: !3530, file: !496, line: 198, type: !94)
!3601 = !DILocalVariable(name: "l2", scope: !3530, file: !496, line: 198, type: !94)
!3602 = !DILocalVariable(name: "old_res_ptr", scope: !3530, file: !496, line: 199, type: !50)
!3603 = !DILocation(line: 196, column: 28, scope: !3530, inlinedAt: !3604)
!3604 = distinct !DILocation(line: 589, column: 18, scope: !3527)
!3605 = !DILocation(line: 197, column: 28, scope: !3530, inlinedAt: !3604)
!3606 = !DILocation(line: 403, column: 13, scope: !3517)
!3607 = !DILocation(line: 395, column: 15, scope: !3517)
!3608 = !DILocation(line: 584, column: 15, scope: !3609)
!3609 = distinct !DILexicalBlock(scope: !3517, file: !496, line: 584, column: 7)
!3610 = !DILocation(line: 584, column: 7, scope: !3517)
!3611 = !DILocation(line: 128, column: 8, scope: !3541, inlinedAt: !3604)
!3612 = !DILocation(line: 126, column: 15, scope: !3541, inlinedAt: !3604)
!3613 = !DILocation(line: 129, column: 10, scope: !3540, inlinedAt: !3604)
!3614 = !DILocation(line: 129, column: 7, scope: !3541, inlinedAt: !3604)
!3615 = !DILocation(line: 138, column: 13, scope: !3539, inlinedAt: !3604)
!3616 = !DILocation(line: 132, column: 19, scope: !3539, inlinedAt: !3604)
!3617 = !DILocation(line: 139, column: 15, scope: !3618, inlinedAt: !3604)
!3618 = distinct !DILexicalBlock(scope: !3539, file: !496, line: 139, column: 11)
!3619 = !DILocation(line: 139, column: 23, scope: !3618, inlinedAt: !3604)
!3620 = !DILocation(line: 139, column: 26, scope: !3621, inlinedAt: !3604)
!3621 = !DILexicalBlockFile(scope: !3618, file: !496, discriminator: 1)
!3622 = !DILocation(line: 139, column: 33, scope: !3621, inlinedAt: !3604)
!3623 = !DILocation(line: 139, column: 11, scope: !3624, inlinedAt: !3604)
!3624 = !DILexicalBlockFile(scope: !3539, file: !496, discriminator: 1)
!3625 = !DILocation(line: 140, column: 9, scope: !3618, inlinedAt: !3604)
!3626 = !DILocation(line: 144, column: 26, scope: !3548, inlinedAt: !3604)
!3627 = !DILocation(line: 144, column: 16, scope: !3548, inlinedAt: !3604)
!3628 = !DILocation(line: 145, column: 16, scope: !3548, inlinedAt: !3604)
!3629 = !DILocation(line: 146, column: 34, scope: !3548, inlinedAt: !3604)
!3630 = !DILocation(line: 146, column: 38, scope: !3548, inlinedAt: !3604)
!3631 = !DILocation(line: 146, column: 42, scope: !3632, inlinedAt: !3604)
!3632 = !DILexicalBlockFile(scope: !3548, file: !496, discriminator: 1)
!3633 = !DILocation(line: 146, column: 41, scope: !3632, inlinedAt: !3604)
!3634 = !DILocation(line: 147, column: 48, scope: !3548, inlinedAt: !3604)
!3635 = !DILocation(line: 147, column: 46, scope: !3548, inlinedAt: !3604)
!3636 = !DILocation(line: 147, column: 69, scope: !3548, inlinedAt: !3604)
!3637 = !DILocation(line: 147, column: 30, scope: !3548, inlinedAt: !3604)
!3638 = !DILocation(line: 134, column: 13, scope: !3539, inlinedAt: !3604)
!3639 = !DILocation(line: 148, column: 13, scope: !3548, inlinedAt: !3604)
!3640 = !DILocation(line: 150, column: 13, scope: !3641, inlinedAt: !3604)
!3641 = distinct !DILexicalBlock(scope: !3642, file: !496, line: 149, column: 11)
!3642 = distinct !DILexicalBlock(scope: !3548, file: !496, line: 148, column: 13)
!3643 = !DILocation(line: 151, column: 17, scope: !3641, inlinedAt: !3604)
!3644 = !DILocation(line: 152, column: 34, scope: !3645, inlinedAt: !3604)
!3645 = distinct !DILexicalBlock(scope: !3641, file: !496, line: 151, column: 17)
!3646 = !DILocation(line: 153, column: 41, scope: !3641, inlinedAt: !3604)
!3647 = !DILocation(line: 153, column: 13, scope: !3641, inlinedAt: !3604)
!3648 = !DILocation(line: 157, column: 11, scope: !3539, inlinedAt: !3604)
!3649 = !DILocation(line: 171, column: 16, scope: !3537, inlinedAt: !3604)
!3650 = !DILocation(line: 162, column: 15, scope: !3537, inlinedAt: !3604)
!3651 = !DILocation(line: 173, column: 18, scope: !3536, inlinedAt: !3604)
!3652 = !DILocation(line: 173, column: 15, scope: !3537, inlinedAt: !3604)
!3653 = !DILocation(line: 180, column: 20, scope: !3535, inlinedAt: !3604)
!3654 = !DILocation(line: 178, column: 21, scope: !3535, inlinedAt: !3604)
!3655 = !DILocation(line: 181, column: 22, scope: !3534, inlinedAt: !3604)
!3656 = !DILocation(line: 181, column: 19, scope: !3535, inlinedAt: !3604)
!3657 = !DILocation(line: 190, column: 25, scope: !3533, inlinedAt: !3604)
!3658 = !DILocation(line: 184, column: 19, scope: !3659, inlinedAt: !3604)
!3659 = distinct !DILexicalBlock(scope: !3534, file: !496, line: 182, column: 17)
!3660 = !DILocation(line: 186, column: 17, scope: !3659, inlinedAt: !3604)
!3661 = !DILocation(line: 191, column: 26, scope: !3533, inlinedAt: !3604)
!3662 = !DILocation(line: 196, column: 23, scope: !3530, inlinedAt: !3604)
!3663 = !DILocation(line: 197, column: 23, scope: !3530, inlinedAt: !3604)
!3664 = !DILocalVariable(name: "__fp", arg: 1, scope: !3665, file: !3437, line: 63, type: !3553)
!3665 = distinct !DISubprogram(name: "getc_unlocked", scope: !3437, file: !3437, line: 63, type: !3666, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !151, variables: !3668)
!3666 = !DISubroutineType(types: !3667)
!3667 = !{!25, !3553}
!3668 = !{!3664}
!3669 = !DILocation(line: 63, column: 22, scope: !3665, inlinedAt: !3670)
!3670 = distinct !DILocation(line: 201, column: 27, scope: !3530, inlinedAt: !3604)
!3671 = !DILocation(line: 65, column: 10, scope: !3665, inlinedAt: !3670)
!3672 = !{!3443, !599, i64 8}
!3673 = !{!3443, !599, i64 16}
!3674 = !{!"branch_weights", i32 2000, i32 1}
!3675 = !DILocation(line: 65, column: 10, scope: !3676, inlinedAt: !3670)
!3676 = !DILexicalBlockFile(scope: !3665, file: !3437, discriminator: 1)
!3677 = !DILocation(line: 65, column: 10, scope: !3678, inlinedAt: !3670)
!3678 = !DILexicalBlockFile(scope: !3665, file: !3437, discriminator: 2)
!3679 = !DILocation(line: 65, column: 10, scope: !3680, inlinedAt: !3670)
!3680 = !DILexicalBlockFile(scope: !3665, file: !3437, discriminator: 3)
!3681 = !DILocation(line: 195, column: 27, scope: !3530, inlinedAt: !3604)
!3682 = !DILocation(line: 202, column: 27, scope: !3530, inlinedAt: !3604)
!3683 = !DILocation(line: 63, column: 22, scope: !3665, inlinedAt: !3684)
!3684 = distinct !DILocation(line: 210, column: 33, scope: !3685, inlinedAt: !3604)
!3685 = distinct !DILexicalBlock(scope: !3686, file: !496, line: 207, column: 25)
!3686 = distinct !DILexicalBlock(scope: !3530, file: !496, line: 206, column: 27)
!3687 = !DILocation(line: 65, column: 10, scope: !3665, inlinedAt: !3684)
!3688 = !DILocation(line: 65, column: 10, scope: !3676, inlinedAt: !3684)
!3689 = !DILocation(line: 65, column: 10, scope: !3678, inlinedAt: !3684)
!3690 = !DILocation(line: 65, column: 10, scope: !3680, inlinedAt: !3684)
!3691 = !DILocation(line: 210, column: 29, scope: !3692, inlinedAt: !3604)
!3692 = !DILexicalBlockFile(scope: !3685, file: !496, discriminator: 1)
!3693 = distinct !{!3693, !3694, !3695}
!3694 = !DILocation(line: 193, column: 19, scope: !3532)
!3695 = !DILocation(line: 241, column: 21, scope: !3532)
!3696 = !DILocation(line: 216, column: 23, scope: !3530, inlinedAt: !3604)
!3697 = !DILocation(line: 217, column: 27, scope: !3698, inlinedAt: !3604)
!3698 = distinct !DILexicalBlock(scope: !3530, file: !496, line: 217, column: 27)
!3699 = !DILocation(line: 217, column: 64, scope: !3698, inlinedAt: !3604)
!3700 = !DILocation(line: 217, column: 27, scope: !3530, inlinedAt: !3604)
!3701 = !DILocation(line: 219, column: 28, scope: !3530, inlinedAt: !3604)
!3702 = !DILocation(line: 198, column: 30, scope: !3530, inlinedAt: !3604)
!3703 = !DILocation(line: 220, column: 28, scope: !3530, inlinedAt: !3604)
!3704 = !DILocation(line: 198, column: 34, scope: !3530, inlinedAt: !3604)
!3705 = !DILocation(line: 199, column: 29, scope: !3530, inlinedAt: !3604)
!3706 = !DILocation(line: 222, column: 36, scope: !3707, inlinedAt: !3604)
!3707 = distinct !DILexicalBlock(scope: !3530, file: !496, line: 222, column: 27)
!3708 = !DILocation(line: 222, column: 27, scope: !3530, inlinedAt: !3604)
!3709 = !DILocation(line: 225, column: 63, scope: !3710, inlinedAt: !3604)
!3710 = distinct !DILexicalBlock(scope: !3707, file: !496, line: 223, column: 25)
!3711 = !DILocation(line: 225, column: 46, scope: !3710, inlinedAt: !3604)
!3712 = !DILocation(line: 226, column: 25, scope: !3710, inlinedAt: !3604)
!3713 = !DILocation(line: 229, column: 36, scope: !3714, inlinedAt: !3604)
!3714 = distinct !DILexicalBlock(scope: !3707, file: !496, line: 228, column: 25)
!3715 = !DILocation(line: 230, column: 73, scope: !3714, inlinedAt: !3604)
!3716 = !DILocation(line: 230, column: 46, scope: !3714, inlinedAt: !3604)
!3717 = !DILocation(line: 232, column: 35, scope: !3718, inlinedAt: !3604)
!3718 = distinct !DILexicalBlock(scope: !3530, file: !496, line: 232, column: 27)
!3719 = !DILocation(line: 232, column: 27, scope: !3530, inlinedAt: !3604)
!3720 = !DILocation(line: 236, column: 27, scope: !3721, inlinedAt: !3604)
!3721 = distinct !DILexicalBlock(scope: !3718, file: !496, line: 233, column: 25)
!3722 = !DILocation(line: 237, column: 27, scope: !3721, inlinedAt: !3604)
!3723 = !DILocation(line: 239, column: 39, scope: !3530, inlinedAt: !3604)
!3724 = !DILocation(line: 239, column: 50, scope: !3530, inlinedAt: !3604)
!3725 = !DILocation(line: 239, column: 61, scope: !3530, inlinedAt: !3604)
!3726 = !DILocalVariable(name: "__dest", arg: 1, scope: !3727, file: !3728, line: 107, type: !3731)
!3727 = distinct !DISubprogram(name: "strcpy", scope: !3728, file: !3728, line: 107, type: !3729, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !151, variables: !3733)
!3728 = !DIFile(filename: "/usr/include/bits/string3.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3729 = !DISubroutineType(types: !3730)
!3730 = !{!50, !3731, !3732}
!3731 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !50)
!3732 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !6)
!3733 = !{!3726, !3734}
!3734 = !DILocalVariable(name: "__src", arg: 2, scope: !3727, file: !3728, line: 107, type: !3732)
!3735 = !DILocation(line: 107, column: 1, scope: !3727, inlinedAt: !3736)
!3736 = distinct !DILocation(line: 239, column: 23, scope: !3530, inlinedAt: !3604)
!3737 = !DILocation(line: 109, column: 49, scope: !3727, inlinedAt: !3736)
!3738 = !DILocation(line: 109, column: 10, scope: !3727, inlinedAt: !3736)
!3739 = !DILocation(line: 107, column: 1, scope: !3727, inlinedAt: !3740)
!3740 = distinct !DILocation(line: 240, column: 23, scope: !3530, inlinedAt: !3604)
!3741 = !DILocation(line: 109, column: 49, scope: !3727, inlinedAt: !3740)
!3742 = !DILocation(line: 109, column: 10, scope: !3727, inlinedAt: !3740)
!3743 = !DILocation(line: 241, column: 21, scope: !3531, inlinedAt: !3604)
!3744 = !DILocation(line: 242, column: 19, scope: !3533, inlinedAt: !3604)
!3745 = !DILocation(line: 243, column: 32, scope: !3746, inlinedAt: !3604)
!3746 = distinct !DILexicalBlock(scope: !3533, file: !496, line: 243, column: 23)
!3747 = !DILocation(line: 243, column: 23, scope: !3533, inlinedAt: !3604)
!3748 = !DILocation(line: 247, column: 33, scope: !3749, inlinedAt: !3604)
!3749 = distinct !DILexicalBlock(scope: !3746, file: !496, line: 246, column: 21)
!3750 = !DILocation(line: 247, column: 45, scope: !3749, inlinedAt: !3604)
!3751 = !DILocation(line: 253, column: 11, scope: !3537, inlinedAt: !3604)
!3752 = !DILocation(line: 377, column: 23, scope: !3539, inlinedAt: !3604)
!3753 = !DILocation(line: 378, column: 5, scope: !3539, inlinedAt: !3604)
!3754 = !DILocation(line: 396, column: 15, scope: !3517)
!3755 = !DILocation(line: 590, column: 8, scope: !3526)
!3756 = !DILocation(line: 590, column: 17, scope: !3526)
!3757 = !DILocation(line: 589, column: 3, scope: !3758)
!3758 = !DILexicalBlockFile(scope: !3527, file: !496, discriminator: 1)
!3759 = !DILocation(line: 592, column: 9, scope: !3524)
!3760 = !DILocation(line: 592, column: 35, scope: !3525)
!3761 = !DILocation(line: 593, column: 9, scope: !3525)
!3762 = !DILocation(line: 593, column: 24, scope: !3763)
!3763 = !DILexicalBlockFile(scope: !3525, file: !496, discriminator: 1)
!3764 = !DILocation(line: 593, column: 31, scope: !3763)
!3765 = !DILocation(line: 593, column: 34, scope: !3766)
!3766 = !DILexicalBlockFile(scope: !3525, file: !496, discriminator: 2)
!3767 = !DILocation(line: 593, column: 45, scope: !3766)
!3768 = !DILocation(line: 592, column: 9, scope: !3769)
!3769 = !DILexicalBlockFile(scope: !3526, file: !496, discriminator: 1)
!3770 = !DILocation(line: 595, column: 29, scope: !3771)
!3771 = distinct !DILexicalBlock(scope: !3525, file: !496, line: 594, column: 7)
!3772 = !DILocation(line: 595, column: 27, scope: !3771)
!3773 = !DILocation(line: 595, column: 46, scope: !3771)
!3774 = !DILocation(line: 596, column: 9, scope: !3771)
!3775 = !DILocation(line: 591, column: 19, scope: !3526)
!3776 = !DILocation(line: 591, column: 36, scope: !3526)
!3777 = !DILocation(line: 591, column: 16, scope: !3526)
!3778 = !DILocation(line: 591, column: 52, scope: !3769)
!3779 = !DILocation(line: 591, column: 69, scope: !3526)
!3780 = !DILocation(line: 591, column: 49, scope: !3526)
!3781 = distinct !{!3781, !3782, !3783}
!3782 = !DILocation(line: 589, column: 3, scope: !3527)
!3783 = !DILocation(line: 597, column: 7, scope: !3527)
!3784 = !DILocation(line: 602, column: 7, scope: !3785)
!3785 = distinct !DILexicalBlock(scope: !3517, file: !496, line: 602, column: 7)
!3786 = !DILocation(line: 602, column: 18, scope: !3785)
!3787 = !DILocation(line: 602, column: 7, scope: !3517)
!3788 = !DILocation(line: 612, column: 3, scope: !3517)
!3789 = distinct !DISubprogram(name: "rpl_fclose", scope: !3790, file: !3790, line: 56, type: !3791, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !574, variables: !3833)
!3790 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3791 = !DISubroutineType(types: !3792)
!3792 = !{!25, !3793}
!3793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3794, size: 64)
!3794 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !791, line: 49, baseType: !3795)
!3795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2831, line: 241, size: 1728, elements: !3796)
!3796 = !{!3797, !3798, !3799, !3800, !3801, !3802, !3803, !3804, !3805, !3806, !3807, !3808, !3809, !3817, !3818, !3819, !3820, !3821, !3822, !3823, !3824, !3825, !3826, !3827, !3828, !3829, !3830, !3831, !3832}
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3795, file: !2831, line: 242, baseType: !25, size: 32)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3795, file: !2831, line: 247, baseType: !50, size: 64, offset: 64)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3795, file: !2831, line: 248, baseType: !50, size: 64, offset: 128)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3795, file: !2831, line: 249, baseType: !50, size: 64, offset: 192)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3795, file: !2831, line: 250, baseType: !50, size: 64, offset: 256)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3795, file: !2831, line: 251, baseType: !50, size: 64, offset: 320)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3795, file: !2831, line: 252, baseType: !50, size: 64, offset: 384)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3795, file: !2831, line: 253, baseType: !50, size: 64, offset: 448)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3795, file: !2831, line: 254, baseType: !50, size: 64, offset: 512)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3795, file: !2831, line: 256, baseType: !50, size: 64, offset: 576)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3795, file: !2831, line: 257, baseType: !50, size: 64, offset: 640)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3795, file: !2831, line: 258, baseType: !50, size: 64, offset: 704)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3795, file: !2831, line: 260, baseType: !3810, size: 64, offset: 768)
!3810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3811, size: 64)
!3811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2831, line: 156, size: 192, elements: !3812)
!3812 = !{!3813, !3814, !3816}
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3811, file: !2831, line: 157, baseType: !3810, size: 64)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3811, file: !2831, line: 158, baseType: !3815, size: 64, offset: 64)
!3815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3795, size: 64)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3811, file: !2831, line: 162, baseType: !25, size: 32, offset: 128)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3795, file: !2831, line: 262, baseType: !3815, size: 64, offset: 832)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3795, file: !2831, line: 264, baseType: !25, size: 32, offset: 896)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3795, file: !2831, line: 268, baseType: !25, size: 32, offset: 928)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3795, file: !2831, line: 270, baseType: !2857, size: 64, offset: 960)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3795, file: !2831, line: 274, baseType: !93, size: 16, offset: 1024)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3795, file: !2831, line: 275, baseType: !2862, size: 8, offset: 1040)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3795, file: !2831, line: 276, baseType: !2864, size: 8, offset: 1048)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3795, file: !2831, line: 280, baseType: !2866, size: 64, offset: 1088)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3795, file: !2831, line: 289, baseType: !2869, size: 64, offset: 1152)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3795, file: !2831, line: 297, baseType: !49, size: 64, offset: 1216)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3795, file: !2831, line: 298, baseType: !49, size: 64, offset: 1280)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3795, file: !2831, line: 299, baseType: !49, size: 64, offset: 1344)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3795, file: !2831, line: 300, baseType: !49, size: 64, offset: 1408)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3795, file: !2831, line: 302, baseType: !94, size: 64, offset: 1472)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3795, file: !2831, line: 303, baseType: !25, size: 32, offset: 1536)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3795, file: !2831, line: 305, baseType: !2877, size: 160, offset: 1568)
!3833 = !{!3834, !3835, !3836, !3837}
!3834 = !DILocalVariable(name: "fp", arg: 1, scope: !3789, file: !3790, line: 56, type: !3793)
!3835 = !DILocalVariable(name: "saved_errno", scope: !3789, file: !3790, line: 58, type: !25)
!3836 = !DILocalVariable(name: "fd", scope: !3789, file: !3790, line: 59, type: !25)
!3837 = !DILocalVariable(name: "result", scope: !3789, file: !3790, line: 60, type: !25)
!3838 = !DILocation(line: 56, column: 19, scope: !3789)
!3839 = !DILocation(line: 58, column: 7, scope: !3789)
!3840 = !DILocation(line: 60, column: 7, scope: !3789)
!3841 = !DILocation(line: 63, column: 8, scope: !3789)
!3842 = !DILocation(line: 59, column: 7, scope: !3789)
!3843 = !DILocation(line: 64, column: 10, scope: !3844)
!3844 = distinct !DILexicalBlock(scope: !3789, file: !3790, line: 64, column: 7)
!3845 = !DILocation(line: 64, column: 7, scope: !3789)
!3846 = !DILocation(line: 65, column: 12, scope: !3844)
!3847 = !DILocation(line: 65, column: 5, scope: !3844)
!3848 = !DILocation(line: 70, column: 9, scope: !3849)
!3849 = distinct !DILexicalBlock(scope: !3789, file: !3790, line: 70, column: 7)
!3850 = !DILocation(line: 70, column: 23, scope: !3849)
!3851 = !DILocation(line: 70, column: 33, scope: !3852)
!3852 = !DILexicalBlockFile(scope: !3849, file: !3790, discriminator: 1)
!3853 = !DILocation(line: 70, column: 26, scope: !3854)
!3854 = !DILexicalBlockFile(scope: !3849, file: !3790, discriminator: 3)
!3855 = !DILocation(line: 70, column: 59, scope: !3852)
!3856 = !DILocation(line: 71, column: 7, scope: !3849)
!3857 = !DILocation(line: 71, column: 10, scope: !3852)
!3858 = !DILocation(line: 70, column: 7, scope: !3859)
!3859 = !DILexicalBlockFile(scope: !3789, file: !3790, discriminator: 2)
!3860 = !DILocation(line: 98, column: 12, scope: !3789)
!3861 = !DILocation(line: 103, column: 7, scope: !3789)
!3862 = !DILocation(line: 72, column: 19, scope: !3849)
!3863 = !DILocation(line: 103, column: 19, scope: !3864)
!3864 = distinct !DILexicalBlock(scope: !3789, file: !3790, line: 103, column: 7)
!3865 = !DILocation(line: 105, column: 13, scope: !3866)
!3866 = distinct !DILexicalBlock(scope: !3864, file: !3790, line: 104, column: 5)
!3867 = !DILocation(line: 107, column: 5, scope: !3866)
!3868 = !DILocation(line: 110, column: 1, scope: !3789)
!3869 = distinct !DISubprogram(name: "rpl_fflush", scope: !3870, file: !3870, line: 127, type: !3871, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !576, variables: !3913)
!3870 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3871 = !DISubroutineType(types: !3872)
!3872 = !{!25, !3873}
!3873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3874, size: 64)
!3874 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !791, line: 49, baseType: !3875)
!3875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2831, line: 241, size: 1728, elements: !3876)
!3876 = !{!3877, !3878, !3879, !3880, !3881, !3882, !3883, !3884, !3885, !3886, !3887, !3888, !3889, !3897, !3898, !3899, !3900, !3901, !3902, !3903, !3904, !3905, !3906, !3907, !3908, !3909, !3910, !3911, !3912}
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3875, file: !2831, line: 242, baseType: !25, size: 32)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3875, file: !2831, line: 247, baseType: !50, size: 64, offset: 64)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3875, file: !2831, line: 248, baseType: !50, size: 64, offset: 128)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3875, file: !2831, line: 249, baseType: !50, size: 64, offset: 192)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3875, file: !2831, line: 250, baseType: !50, size: 64, offset: 256)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3875, file: !2831, line: 251, baseType: !50, size: 64, offset: 320)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3875, file: !2831, line: 252, baseType: !50, size: 64, offset: 384)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3875, file: !2831, line: 253, baseType: !50, size: 64, offset: 448)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3875, file: !2831, line: 254, baseType: !50, size: 64, offset: 512)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3875, file: !2831, line: 256, baseType: !50, size: 64, offset: 576)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3875, file: !2831, line: 257, baseType: !50, size: 64, offset: 640)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3875, file: !2831, line: 258, baseType: !50, size: 64, offset: 704)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3875, file: !2831, line: 260, baseType: !3890, size: 64, offset: 768)
!3890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3891, size: 64)
!3891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2831, line: 156, size: 192, elements: !3892)
!3892 = !{!3893, !3894, !3896}
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3891, file: !2831, line: 157, baseType: !3890, size: 64)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3891, file: !2831, line: 158, baseType: !3895, size: 64, offset: 64)
!3895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3875, size: 64)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3891, file: !2831, line: 162, baseType: !25, size: 32, offset: 128)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3875, file: !2831, line: 262, baseType: !3895, size: 64, offset: 832)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3875, file: !2831, line: 264, baseType: !25, size: 32, offset: 896)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3875, file: !2831, line: 268, baseType: !25, size: 32, offset: 928)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3875, file: !2831, line: 270, baseType: !2857, size: 64, offset: 960)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3875, file: !2831, line: 274, baseType: !93, size: 16, offset: 1024)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3875, file: !2831, line: 275, baseType: !2862, size: 8, offset: 1040)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3875, file: !2831, line: 276, baseType: !2864, size: 8, offset: 1048)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3875, file: !2831, line: 280, baseType: !2866, size: 64, offset: 1088)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3875, file: !2831, line: 289, baseType: !2869, size: 64, offset: 1152)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3875, file: !2831, line: 297, baseType: !49, size: 64, offset: 1216)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3875, file: !2831, line: 298, baseType: !49, size: 64, offset: 1280)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3875, file: !2831, line: 299, baseType: !49, size: 64, offset: 1344)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3875, file: !2831, line: 300, baseType: !49, size: 64, offset: 1408)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3875, file: !2831, line: 302, baseType: !94, size: 64, offset: 1472)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3875, file: !2831, line: 303, baseType: !25, size: 32, offset: 1536)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3875, file: !2831, line: 305, baseType: !2877, size: 160, offset: 1568)
!3913 = !{!3914}
!3914 = !DILocalVariable(name: "stream", arg: 1, scope: !3869, file: !3870, line: 127, type: !3873)
!3915 = !DILocation(line: 127, column: 19, scope: !3869)
!3916 = !DILocation(line: 148, column: 14, scope: !3917)
!3917 = distinct !DILexicalBlock(scope: !3869, file: !3870, line: 148, column: 7)
!3918 = !DILocation(line: 148, column: 22, scope: !3917)
!3919 = !DILocation(line: 148, column: 27, scope: !3920)
!3920 = !DILexicalBlockFile(scope: !3917, file: !3870, discriminator: 1)
!3921 = !DILocation(line: 148, column: 7, scope: !3922)
!3922 = !DILexicalBlockFile(scope: !3869, file: !3870, discriminator: 1)
!3923 = !DILocation(line: 149, column: 12, scope: !3917)
!3924 = !DILocation(line: 149, column: 5, scope: !3917)
!3925 = !DILocalVariable(name: "fp", arg: 1, scope: !3926, file: !3870, line: 40, type: !3873)
!3926 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !3870, file: !3870, line: 40, type: !3927, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !576, variables: !3929)
!3927 = !DISubroutineType(types: !3928)
!3928 = !{null, !3873}
!3929 = !{!3925}
!3930 = !DILocation(line: 40, column: 48, scope: !3926, inlinedAt: !3931)
!3931 = distinct !DILocation(line: 153, column: 3, scope: !3869)
!3932 = !DILocation(line: 42, column: 11, scope: !3933, inlinedAt: !3931)
!3933 = distinct !DILexicalBlock(scope: !3926, file: !3870, line: 42, column: 7)
!3934 = !DILocation(line: 42, column: 18, scope: !3933, inlinedAt: !3931)
!3935 = !DILocation(line: 42, column: 7, scope: !3926, inlinedAt: !3931)
!3936 = !DILocation(line: 44, column: 5, scope: !3933, inlinedAt: !3931)
!3937 = !DILocation(line: 155, column: 10, scope: !3869)
!3938 = !DILocation(line: 155, column: 3, scope: !3869)
!3939 = !DILocation(line: 229, column: 1, scope: !3869)
!3940 = distinct !DISubprogram(name: "rpl_fseeko", scope: !3941, file: !3941, line: 28, type: !3942, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !578, variables: !3985)
!3941 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3942 = !DISubroutineType(types: !3943)
!3943 = !{!25, !3944, !3984, !25}
!3944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3945, size: 64)
!3945 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !791, line: 49, baseType: !3946)
!3946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2831, line: 241, size: 1728, elements: !3947)
!3947 = !{!3948, !3949, !3950, !3951, !3952, !3953, !3954, !3955, !3956, !3957, !3958, !3959, !3960, !3968, !3969, !3970, !3971, !3972, !3973, !3974, !3975, !3976, !3977, !3978, !3979, !3980, !3981, !3982, !3983}
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3946, file: !2831, line: 242, baseType: !25, size: 32)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3946, file: !2831, line: 247, baseType: !50, size: 64, offset: 64)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3946, file: !2831, line: 248, baseType: !50, size: 64, offset: 128)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3946, file: !2831, line: 249, baseType: !50, size: 64, offset: 192)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3946, file: !2831, line: 250, baseType: !50, size: 64, offset: 256)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3946, file: !2831, line: 251, baseType: !50, size: 64, offset: 320)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3946, file: !2831, line: 252, baseType: !50, size: 64, offset: 384)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3946, file: !2831, line: 253, baseType: !50, size: 64, offset: 448)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3946, file: !2831, line: 254, baseType: !50, size: 64, offset: 512)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3946, file: !2831, line: 256, baseType: !50, size: 64, offset: 576)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3946, file: !2831, line: 257, baseType: !50, size: 64, offset: 640)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3946, file: !2831, line: 258, baseType: !50, size: 64, offset: 704)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3946, file: !2831, line: 260, baseType: !3961, size: 64, offset: 768)
!3961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3962, size: 64)
!3962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2831, line: 156, size: 192, elements: !3963)
!3963 = !{!3964, !3965, !3967}
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3962, file: !2831, line: 157, baseType: !3961, size: 64)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3962, file: !2831, line: 158, baseType: !3966, size: 64, offset: 64)
!3966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3946, size: 64)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3962, file: !2831, line: 162, baseType: !25, size: 32, offset: 128)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3946, file: !2831, line: 262, baseType: !3966, size: 64, offset: 832)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3946, file: !2831, line: 264, baseType: !25, size: 32, offset: 896)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3946, file: !2831, line: 268, baseType: !25, size: 32, offset: 928)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3946, file: !2831, line: 270, baseType: !2857, size: 64, offset: 960)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3946, file: !2831, line: 274, baseType: !93, size: 16, offset: 1024)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3946, file: !2831, line: 275, baseType: !2862, size: 8, offset: 1040)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3946, file: !2831, line: 276, baseType: !2864, size: 8, offset: 1048)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3946, file: !2831, line: 280, baseType: !2866, size: 64, offset: 1088)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3946, file: !2831, line: 289, baseType: !2869, size: 64, offset: 1152)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3946, file: !2831, line: 297, baseType: !49, size: 64, offset: 1216)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3946, file: !2831, line: 298, baseType: !49, size: 64, offset: 1280)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3946, file: !2831, line: 299, baseType: !49, size: 64, offset: 1344)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3946, file: !2831, line: 300, baseType: !49, size: 64, offset: 1408)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3946, file: !2831, line: 302, baseType: !94, size: 64, offset: 1472)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3946, file: !2831, line: 303, baseType: !25, size: 32, offset: 1536)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3946, file: !2831, line: 305, baseType: !2877, size: 160, offset: 1568)
!3984 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !791, line: 91, baseType: !2857)
!3985 = !{!3986, !3987, !3988, !3989}
!3986 = !DILocalVariable(name: "fp", arg: 1, scope: !3940, file: !3941, line: 28, type: !3944)
!3987 = !DILocalVariable(name: "offset", arg: 2, scope: !3940, file: !3941, line: 28, type: !3984)
!3988 = !DILocalVariable(name: "whence", arg: 3, scope: !3940, file: !3941, line: 28, type: !25)
!3989 = !DILocalVariable(name: "pos", scope: !3990, file: !3941, line: 116, type: !3984)
!3990 = distinct !DILexicalBlock(scope: !3991, file: !3941, line: 112, column: 5)
!3991 = distinct !DILexicalBlock(scope: !3940, file: !3941, line: 51, column: 7)
!3992 = !DILocation(line: 28, column: 15, scope: !3940)
!3993 = !DILocation(line: 28, column: 25, scope: !3940)
!3994 = !DILocation(line: 28, column: 37, scope: !3940)
!3995 = !DILocation(line: 51, column: 11, scope: !3991)
!3996 = !DILocation(line: 51, column: 31, scope: !3991)
!3997 = !DILocation(line: 51, column: 24, scope: !3991)
!3998 = !DILocation(line: 52, column: 7, scope: !3991)
!3999 = !DILocation(line: 52, column: 14, scope: !4000)
!4000 = !DILexicalBlockFile(scope: !3991, file: !3941, discriminator: 1)
!4001 = !{!3443, !599, i64 40}
!4002 = !DILocation(line: 52, column: 35, scope: !4000)
!4003 = !{!3443, !599, i64 32}
!4004 = !DILocation(line: 52, column: 28, scope: !4000)
!4005 = !DILocation(line: 53, column: 7, scope: !3991)
!4006 = !DILocation(line: 53, column: 14, scope: !4000)
!4007 = !{!3443, !599, i64 72}
!4008 = !DILocation(line: 53, column: 28, scope: !4000)
!4009 = !DILocation(line: 51, column: 7, scope: !4010)
!4010 = !DILexicalBlockFile(scope: !3940, file: !3941, discriminator: 1)
!4011 = !DILocation(line: 116, column: 26, scope: !3990)
!4012 = !DILocation(line: 116, column: 19, scope: !4013)
!4013 = !DILexicalBlockFile(scope: !3990, file: !3941, discriminator: 1)
!4014 = !DILocation(line: 116, column: 13, scope: !3990)
!4015 = !DILocation(line: 117, column: 15, scope: !4016)
!4016 = distinct !DILexicalBlock(scope: !3990, file: !3941, line: 117, column: 11)
!4017 = !DILocation(line: 117, column: 11, scope: !3990)
!4018 = !DILocation(line: 127, column: 11, scope: !3990)
!4019 = !DILocation(line: 127, column: 18, scope: !3990)
!4020 = !DILocation(line: 128, column: 11, scope: !3990)
!4021 = !DILocation(line: 128, column: 19, scope: !3990)
!4022 = !{!3443, !2142, i64 144}
!4023 = !DILocation(line: 159, column: 7, scope: !3990)
!4024 = !DILocation(line: 161, column: 10, scope: !3940)
!4025 = !DILocation(line: 161, column: 3, scope: !3940)
!4026 = !DILocation(line: 162, column: 1, scope: !3940)
