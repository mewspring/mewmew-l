; ModuleID = 'coreutils-8.27/src/unlink.bc'
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
@.str.1 = private unnamed_addr constant [33 x i8] c"Usage: %s FILE\0A  or:  %s OPTION\0A\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"Call the unlink function to remove the specified FILE.\0A\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"unlink\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.23 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.25 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.26 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.27 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"Michael Stone\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.11 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"cannot unlink %s\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), align 8, !dbg !0
@.str.14 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !9
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !14
@.str.17 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.18 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.19 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !18
@opterr = external local_unnamed_addr global i32, align 4
@.str.29 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@long_options = internal constant [3 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1.30, i32 0, i32 0), i32 0, i32* null, i32 104 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.31, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option zeroinitializer], align 16, !dbg !26
@.str.1.30 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.2.31 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !44
@.str.36 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.37 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.38 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.40, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.41, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.42, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.43, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.44, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.45, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.46, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.47, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.48, i32 0, i32 0), i8* null], align 16, !dbg !53
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
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !98
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !105
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !118
@.str.11.49 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.50 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.51 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.52 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.53 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !125
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !132
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !120
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !134
@.str.60 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.61 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.62 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.63 = private unnamed_addr constant [203 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.64 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.65 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.66 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.67 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.68 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.69 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.70 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.71 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.72 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.73 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.76 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.77 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.78 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.79 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !140
@.str.1.90 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.91 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.100 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.103 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !149
@.str.3.104 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.105 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.106 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.107 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.108 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.109 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

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
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 5) #10, !dbg !606
  %10 = load i8*, i8** @program_name, align 8, !dbg !606, !tbaa !598
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10, i8* %10) #10, !dbg !608
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i32 5) #10, !dbg !610
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !610, !tbaa !598
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #10, !dbg !611
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 5) #10, !dbg !612
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !612, !tbaa !598
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #10, !dbg !613
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 5) #10, !dbg !614
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !614, !tbaa !598
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #10, !dbg !615
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !515, metadata !590) #10, !dbg !616
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i64 0, metadata !515, metadata !590) #10, !dbg !616
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 5) #10, !dbg !618
  %22 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %21, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.23, i64 0, i64 0)) #10, !dbg !619
  %23 = tail call i8* @setlocale(i32 5, i8* null) #10, !dbg !621
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !526, metadata !590) #10, !dbg !622
  %24 = icmp eq i8* %23, null, !dbg !623
  br i1 %24, label %31, label %25, !dbg !624

; <label>:25:                                     ; preds = %8
  %26 = tail call i32 @strncmp(i8* nonnull %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0), i64 3) #13, !dbg !625
  %27 = icmp eq i32 %26, 0, !dbg !625
  br i1 %27, label %31, label %28, !dbg !627

; <label>:28:                                     ; preds = %25
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.25, i64 0, i64 0), i32 5) #10, !dbg !629
  %30 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0)) #10, !dbg !631
  br label %31, !dbg !633

; <label>:31:                                     ; preds = %8, %25, %28
  %32 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.26, i64 0, i64 0), i32 5) #10, !dbg !634
  %33 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %32, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0)) #10, !dbg !635
  %34 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.27, i64 0, i64 0), i32 5) #10, !dbg !636
  %35 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i64 0, i64 0)) #10, !dbg !637
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
  tail call void (i32, i8**, i8*, i8*, i8*, void (i32)*, ...) @parse_long_options(i32 %0, i8** %1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* %8, void (i32)* nonnull @usage, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i8* null) #10, !dbg !655
  %9 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), %struct.option* null, i32* null) #10, !dbg !656
  %10 = icmp eq i32 %9, -1, !dbg !658
  br i1 %10, label %12, label %11, !dbg !659

; <label>:11:                                     ; preds = %2
  tail call void @usage(i32 1) #15, !dbg !660
  unreachable, !dbg !660

; <label>:12:                                     ; preds = %2
  %13 = load i32, i32* @optind, align 4, !dbg !661, !tbaa !663
  %14 = icmp slt i32 %13, %0, !dbg !665
  br i1 %14, label %17, label %15, !dbg !666

; <label>:15:                                     ; preds = %12
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 5) #10, !dbg !667
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %16) #10, !dbg !669
  tail call void @usage(i32 1) #15, !dbg !671
  unreachable, !dbg !671

; <label>:17:                                     ; preds = %12
  %18 = add nsw i32 %13, 1, !dbg !672
  %19 = icmp slt i32 %18, %0, !dbg !673
  br i1 %19, label %20, label %28, !dbg !675

; <label>:20:                                     ; preds = %17
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0), i32 5) #10, !dbg !676
  %22 = load i32, i32* @optind, align 4, !dbg !678, !tbaa !663
  %23 = add nsw i32 %22, 1, !dbg !679
  %24 = sext i32 %23 to i64, !dbg !680
  %25 = getelementptr inbounds i8*, i8** %1, i64 %24, !dbg !680
  %26 = load i8*, i8** %25, align 8, !dbg !680, !tbaa !598
  %27 = tail call i8* @quote(i8* %26) #10, !dbg !681
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %21, i8* %27) #10, !dbg !683
  tail call void @usage(i32 1) #15, !dbg !685
  unreachable, !dbg !685

; <label>:28:                                     ; preds = %17
  %29 = sext i32 %13 to i64, !dbg !686
  %30 = getelementptr inbounds i8*, i8** %1, i64 %29, !dbg !686
  %31 = load i8*, i8** %30, align 8, !dbg !686, !tbaa !598
  %32 = tail call i32 @unlink(i8* %31) #10, !dbg !688
  %33 = icmp eq i32 %32, 0, !dbg !689
  br i1 %33, label %43, label %34, !dbg !690

; <label>:34:                                     ; preds = %28
  %35 = tail call i32* @__errno_location() #1, !dbg !691
  %36 = load i32, i32* %35, align 4, !dbg !691, !tbaa !663
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0), i32 5) #10, !dbg !692
  %38 = load i32, i32* @optind, align 4, !dbg !691, !tbaa !663
  %39 = sext i32 %38 to i64, !dbg !691
  %40 = getelementptr inbounds i8*, i8** %1, i64 %39, !dbg !691
  %41 = load i8*, i8** %40, align 8, !dbg !691, !tbaa !598
  %42 = tail call i8* @quotearg_style(i32 4, i8* %41) #10, !dbg !694
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %36, i8* %37, i8* %42) #10, !dbg !696
  unreachable, !dbg !691

; <label>:43:                                     ; preds = %28
  ret i32 0, !dbg !698
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
declare i32 @unlink(i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !699 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !701, metadata !590), !dbg !702
  store i8* %0, i8** @file_name, align 8, !dbg !703, !tbaa !598
  ret void, !dbg !704
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !705 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !709, metadata !710), !dbg !711
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !712, !tbaa !713
  ret void, !dbg !715
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !716 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !723, !tbaa !598
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #10, !dbg !724
  %3 = icmp eq i32 %2, 0, !dbg !725
  br i1 %3, label %21, label %4, !dbg !726

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !727, !tbaa !713, !range !729
  %6 = icmp eq i8 %5, 0, !dbg !727
  %7 = tail call i32* @__errno_location() #1, !dbg !730
  br i1 %6, label %11, label %8, !dbg !732

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !733, !tbaa !663
  %10 = icmp eq i32 %9, 32, !dbg !735
  br i1 %10, label %21, label %11, !dbg !736

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0), i32 5) #10, !dbg !738
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !720, metadata !590), !dbg !739
  %13 = load i8*, i8** @file_name, align 8, !dbg !740, !tbaa !598
  %14 = icmp eq i8* %13, null, !dbg !740
  %15 = load i32, i32* %7, align 4, !tbaa !663
  br i1 %14, label %18, label %16, !dbg !741

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #10, !dbg !742
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.18, i64 0, i64 0), i8* %17, i8* %12) #10, !dbg !744
  br label %19, !dbg !746

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.19, i64 0, i64 0), i8* %12) #10, !dbg !747
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !748, !tbaa !663
  tail call void @_exit(i32 %20) #14, !dbg !749
  unreachable, !dbg !749

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !750, !tbaa !598
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #10, !dbg !752
  %24 = icmp eq i32 %23, 0, !dbg !753
  br i1 %24, label %27, label %25, !dbg !754

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !755, !tbaa !663
  tail call void @_exit(i32 %26) #14, !dbg !756
  unreachable, !dbg !756

; <label>:27:                                     ; preds = %21
  ret void, !dbg !757
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #8

; Function Attrs: nounwind sspstrong uwtable
define void @parse_long_options(i32, i8**, i8*, i8*, i8*, void (i32)* nocapture, ...) local_unnamed_addr #6 !dbg !758 {
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !763, metadata !590), !dbg !790
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !764, metadata !590), !dbg !791
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !765, metadata !590), !dbg !792
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !766, metadata !590), !dbg !793
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !767, metadata !590), !dbg !794
  tail call void @llvm.dbg.value(metadata void (i32)* %5, i64 0, metadata !768, metadata !590), !dbg !795
  %8 = load i32, i32* @opterr, align 4, !dbg !796, !tbaa !663
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !770, metadata !590), !dbg !797
  store i32 0, i32* @opterr, align 4, !dbg !798, !tbaa !663
  %9 = icmp eq i32 %0, 2, !dbg !799
  br i1 %9, label %10, label %17, !dbg !800

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 @getopt_long(i32 2, i8** %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i64 0, i64 0), %struct.option* getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #10, !dbg !801
  tail call void @llvm.dbg.value(metadata i32 %11, i64 0, metadata !769, metadata !590), !dbg !803
  switch i32 %11, label %17 [
    i32 118, label %13
    i32 104, label %12
  ], !dbg !804

; <label>:12:                                     ; preds = %10
  tail call void %5(i32 0) #10, !dbg !806
  br label %17, !dbg !807

; <label>:13:                                     ; preds = %10
  %14 = bitcast [1 x %struct.__va_list_tag]* %7 to i8*, !dbg !808
  call void @llvm.lifetime.start(i64 24, i8* nonnull %14) #10, !dbg !808
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %7, metadata !771, metadata !590), !dbg !809
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0, !dbg !810
  call void @llvm.va_start(i8* nonnull %14), !dbg !810
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !811, !tbaa !598
  call void @version_etc_va(%struct._IO_FILE* %16, i8* %2, i8* %3, i8* %4, %struct.__va_list_tag* nonnull %15) #10, !dbg !812
  call void @exit(i32 0) #14, !dbg !813
  unreachable, !dbg !813

; <label>:17:                                     ; preds = %10, %12, %6
  store i32 %8, i32* @opterr, align 4, !dbg !814, !tbaa !663
  store i32 0, i32* @optind, align 4, !dbg !815, !tbaa !663
  ret void, !dbg !816
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #9

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !817 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !819, metadata !590), !dbg !822
  %2 = icmp eq i8* %0, null, !dbg !823
  br i1 %2, label %3, label %6, !dbg !825

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !826, !tbaa !598
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.36, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #16, !dbg !828
  tail call void @abort() #14, !dbg !829
  unreachable, !dbg !829

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #13, !dbg !830
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !820, metadata !590), !dbg !831
  %8 = icmp ne i8* %7, null, !dbg !832
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !833
  %10 = select i1 %8, i8* %9, i8* %0, !dbg !835
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !821, metadata !590), !dbg !836
  %11 = ptrtoint i8* %10 to i64, !dbg !837
  %12 = ptrtoint i8* %0 to i64, !dbg !837
  %13 = sub i64 %11, %12, !dbg !837
  %14 = icmp sgt i64 %13, 6, !dbg !839
  br i1 %14, label %15, label %24, !dbg !840

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !841
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.37, i64 0, i64 0), i64 7) #13, !dbg !841
  %18 = icmp eq i32 %17, 0, !dbg !843
  br i1 %18, label %19, label %24, !dbg !844

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !819, metadata !590), !dbg !822
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.38, i64 0, i64 0), i64 3) #13, !dbg !845
  %21 = icmp eq i32 %20, 0, !dbg !848
  br i1 %21, label %22, label %24, !dbg !849

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !850
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !819, metadata !590), !dbg !822
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !852, !tbaa !598
  br label %24, !dbg !853

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !819, metadata !590), !dbg !822
  store i8* %25, i8** @program_name, align 8, !dbg !854, !tbaa !598
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !855, !tbaa !598
  ret void, !dbg !856
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #10

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !857 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !862, metadata !590), !dbg !865
  %2 = tail call i32* @__errno_location() #1, !dbg !866
  %3 = load i32, i32* %2, align 4, !dbg !866, !tbaa !663
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !863, metadata !590), !dbg !867
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !868
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !869
  %6 = select i1 %4, i8* %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), !dbg !869
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #10, !dbg !871
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !871
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !864, metadata !590), !dbg !872
  store i32 %3, i32* %2, align 4, !dbg !873, !tbaa !663
  ret %struct.quoting_options* %8, !dbg !874
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #11 !dbg !875 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !881, metadata !590), !dbg !882
  %2 = icmp ne %struct.quoting_options* %0, null, !dbg !883
  %3 = select i1 %2, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !883
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !884
  %5 = load i32, i32* %4, align 8, !dbg !884, !tbaa !886
  ret i32 %5, !dbg !888
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !889 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !893, metadata !590), !dbg !895
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !894, metadata !590), !dbg !896
  %3 = icmp ne %struct.quoting_options* %0, null, !dbg !897
  %4 = select i1 %3, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !897
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !898
  store i32 %1, i32* %5, align 8, !dbg !900, !tbaa !886
  ret void, !dbg !901
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !902 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !906, metadata !590), !dbg !914
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !907, metadata !590), !dbg !915
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !908, metadata !590), !dbg !916
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !909, metadata !590), !dbg !917
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !918
  %5 = select i1 %4, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !918
  %6 = lshr i8 %1, 5, !dbg !919
  %7 = zext i8 %6 to i64, !dbg !919
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !921
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !910, metadata !590), !dbg !922
  %9 = and i8 %1, 31, !dbg !923
  %10 = zext i8 %9 to i32, !dbg !924
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !912, metadata !590), !dbg !925
  %11 = load i32, i32* %8, align 4, !dbg !926, !tbaa !663
  %12 = lshr i32 %11, %10, !dbg !927
  %13 = and i32 %12, 1, !dbg !928
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !913, metadata !590), !dbg !929
  %14 = and i32 %2, 1, !dbg !930
  %15 = xor i32 %13, %14, !dbg !931
  %16 = shl i32 %15, %10, !dbg !932
  %17 = xor i32 %16, %11, !dbg !933
  store i32 %17, i32* %8, align 4, !dbg !933, !tbaa !663
  ret i32 %13, !dbg !934
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !935 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !939, metadata !590), !dbg !942
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !940, metadata !590), !dbg !943
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !944
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !939, metadata !590), !dbg !942
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !946
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !939, metadata !590), !dbg !942
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !947
  %6 = load i32, i32* %5, align 4, !dbg !947, !tbaa !948
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !941, metadata !590), !dbg !949
  store i32 %1, i32* %5, align 4, !dbg !950, !tbaa !948
  ret i32 %6, !dbg !951
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !952 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !956, metadata !590), !dbg !959
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !957, metadata !590), !dbg !960
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !958, metadata !590), !dbg !961
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !962
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !956, metadata !590), !dbg !959
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !964
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !956, metadata !590), !dbg !959
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !965
  store i32 10, i32* %6, align 8, !dbg !966, !tbaa !886
  %7 = icmp ne i8* %1, null, !dbg !967
  %8 = icmp ne i8* %2, null, !dbg !969
  %9 = and i1 %7, %8, !dbg !971
  br i1 %9, label %11, label %10, !dbg !971

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !972
  unreachable, !dbg !972

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !973
  store i8* %1, i8** %12, align 8, !dbg !974, !tbaa !975
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !976
  store i8* %2, i8** %13, align 8, !dbg !977, !tbaa !978
  ret void, !dbg !979
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !980 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !984, metadata !590), !dbg !992
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !985, metadata !590), !dbg !993
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !986, metadata !590), !dbg !994
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !987, metadata !590), !dbg !995
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !988, metadata !590), !dbg !996
  %6 = icmp ne %struct.quoting_options* %4, null, !dbg !997
  %7 = select i1 %6, %struct.quoting_options* %4, %struct.quoting_options* @default_quoting_options, !dbg !997
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !989, metadata !590), !dbg !998
  %8 = tail call i32* @__errno_location() #1, !dbg !999
  %9 = load i32, i32* %8, align 4, !dbg !999, !tbaa !663
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !990, metadata !590), !dbg !1000
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1001
  %11 = load i32, i32* %10, align 8, !dbg !1001, !tbaa !886
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1002
  %13 = load i32, i32* %12, align 4, !dbg !1002, !tbaa !948
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1003
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1004
  %16 = load i8*, i8** %15, align 8, !dbg !1004, !tbaa !975
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1005
  %18 = load i8*, i8** %17, align 8, !dbg !1005, !tbaa !978
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !1006
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !991, metadata !590), !dbg !1007
  store i32 %9, i32* %8, align 4, !dbg !1008, !tbaa !663
  ret i64 %19, !dbg !1009
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !1010 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1016, metadata !590), !dbg !1079
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1017, metadata !590), !dbg !1080
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1018, metadata !590), !dbg !1081
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1019, metadata !590), !dbg !1082
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !1020, metadata !590), !dbg !1083
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1021, metadata !590), !dbg !1084
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !1022, metadata !590), !dbg !1085
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1023, metadata !590), !dbg !1086
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !1024, metadata !590), !dbg !1087
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1026, metadata !590), !dbg !1088
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1027, metadata !590), !dbg !1089
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1028, metadata !590), !dbg !1090
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1029, metadata !590), !dbg !1091
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1030, metadata !590), !dbg !1092
  %13 = tail call i64 @__ctype_get_mb_cur_max() #10, !dbg !1093
  %14 = icmp eq i64 %13, 1, !dbg !1094
  %15 = lshr i32 %5, 1, !dbg !1095
  %16 = trunc i32 %15 to i8, !dbg !1095
  %17 = and i8 %16, 1, !dbg !1095
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !1032, metadata !590), !dbg !1095
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1033, metadata !590), !dbg !1096
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1034, metadata !590), !dbg !1097
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1035, metadata !590), !dbg !1098
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !1099

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !1017, metadata !590), !dbg !1080
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !1035, metadata !590), !dbg !1098
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !1034, metadata !590), !dbg !1097
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !1033, metadata !590), !dbg !1096
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1032, metadata !590), !dbg !1095
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !1019, metadata !590), !dbg !1082
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !1030, metadata !590), !dbg !1092
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !1029, metadata !590), !dbg !1091
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !1028, metadata !590), !dbg !1090
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !1027, metadata !590), !dbg !1089
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1026, metadata !590), !dbg !1088
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !1024, metadata !590), !dbg !1087
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !1023, metadata !590), !dbg !1086
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !1020, metadata !590), !dbg !1083
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
  ], !dbg !1100

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1020, metadata !590), !dbg !1083
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1032, metadata !590), !dbg !1095
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1032, metadata !590), !dbg !1095
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1020, metadata !590), !dbg !1083
  br label %95, !dbg !1101

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1032, metadata !590), !dbg !1095
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1020, metadata !590), !dbg !1083
  %43 = and i8 %36, 1, !dbg !1103
  %44 = icmp eq i8 %43, 0, !dbg !1103
  br i1 %44, label %45, label %95, !dbg !1101

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1105
  br i1 %46, label %95, label %47, !dbg !1109

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1111, !tbaa !1113
  br label %95, !dbg !1111

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.49, i64 0, i64 0), i32 %28), !dbg !1114
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !1023, metadata !590), !dbg !1086
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.50, i64 0, i64 0), i32 %28), !dbg !1118
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !1024, metadata !590), !dbg !1087
  br label %51, !dbg !1119

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1024, metadata !590), !dbg !1087
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1023, metadata !590), !dbg !1086
  %54 = and i8 %36, 1, !dbg !1120
  %55 = icmp eq i8 %54, 0, !dbg !1120
  br i1 %55, label %56, label %73, !dbg !1122

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1028, metadata !590), !dbg !1090
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1026, metadata !590), !dbg !1088
  %57 = load i8, i8* %52, align 1, !dbg !1123, !tbaa !1113
  %58 = icmp eq i8 %57, 0, !dbg !1127
  br i1 %58, label %73, label %59, !dbg !1127

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !1129

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  %64 = icmp ult i64 %63, %40, !dbg !1129
  br i1 %64, label %65, label %67, !dbg !1133

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !1135
  store i8 %61, i8* %66, align 1, !dbg !1135, !tbaa !1113
  br label %67, !dbg !1135

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !1137
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1026, metadata !590), !dbg !1088
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !1139
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1028, metadata !590), !dbg !1090
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1028, metadata !590), !dbg !1090
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1026, metadata !590), !dbg !1088
  %70 = load i8, i8* %69, align 1, !dbg !1123, !tbaa !1113
  %71 = icmp eq i8 %70, 0, !dbg !1127
  br i1 %71, label %72, label %60, !dbg !1127, !llvm.loop !1141

; <label>:72:                                     ; preds = %67
  br label %73, !dbg !1088

; <label>:73:                                     ; preds = %72, %56, %51
  %74 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %72 ]
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !1026, metadata !590), !dbg !1088
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1030, metadata !590), !dbg !1092
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1028, metadata !590), !dbg !1090
  %75 = call i64 @strlen(i8* %53) #13, !dbg !1144
  call void @llvm.dbg.value(metadata i64 %75, i64 0, metadata !1029, metadata !590), !dbg !1091
  br label %95, !dbg !1145

; <label>:76:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1030, metadata !590), !dbg !1092
  br label %77, !dbg !1146

; <label>:77:                                     ; preds = %27, %76
  %78 = phi i8 [ %34, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %78, i64 0, metadata !1030, metadata !590), !dbg !1092
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1032, metadata !590), !dbg !1095
  br label %79, !dbg !1147

; <label>:79:                                     ; preds = %27, %77
  %80 = phi i8 [ %34, %27 ], [ %78, %77 ]
  %81 = phi i8 [ %36, %27 ], [ 1, %77 ]
  call void @llvm.dbg.value(metadata i8 %81, i64 0, metadata !1032, metadata !590), !dbg !1095
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !1030, metadata !590), !dbg !1092
  %82 = and i8 %81, 1, !dbg !1148
  %83 = icmp eq i8 %82, 0, !dbg !1148
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1030, metadata !590), !dbg !1092
  %84 = select i1 %83, i8 1, i8 %80, !dbg !1150
  br label %85, !dbg !1150

; <label>:85:                                     ; preds = %79, %27
  %86 = phi i8 [ %34, %27 ], [ %84, %79 ]
  %87 = phi i8 [ %36, %27 ], [ %81, %79 ]
  call void @llvm.dbg.value(metadata i8 %87, i64 0, metadata !1032, metadata !590), !dbg !1095
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !1030, metadata !590), !dbg !1092
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !1020, metadata !590), !dbg !1083
  %88 = and i8 %87, 1, !dbg !1151
  %89 = icmp eq i8 %88, 0, !dbg !1151
  br i1 %89, label %90, label %95, !dbg !1153

; <label>:90:                                     ; preds = %85
  %91 = icmp eq i64 %40, 0, !dbg !1154
  br i1 %91, label %95, label %92, !dbg !1158

; <label>:92:                                     ; preds = %90
  store i8 39, i8* %0, align 1, !dbg !1160, !tbaa !1113
  br label %95, !dbg !1160

; <label>:93:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1032, metadata !590), !dbg !1095
  br label %95, !dbg !1162

; <label>:94:                                     ; preds = %27
  call void @abort() #14, !dbg !1163
  unreachable, !dbg !1163

; <label>:95:                                     ; preds = %41, %85, %90, %92, %27, %42, %45, %47, %93, %73
  %96 = phi i32 [ 0, %93 ], [ %28, %73 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %92 ], [ 2, %90 ], [ 2, %85 ], [ 5, %41 ]
  %97 = phi i8* [ %29, %93 ], [ %52, %73 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %92 ], [ %29, %90 ], [ %29, %85 ], [ %29, %41 ]
  %98 = phi i8* [ %30, %93 ], [ %53, %73 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %92 ], [ %30, %90 ], [ %30, %85 ], [ %30, %41 ]
  %99 = phi i64 [ 0, %93 ], [ %74, %73 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %92 ], [ 1, %90 ], [ 0, %85 ], [ 0, %41 ]
  %100 = phi i8* [ %32, %93 ], [ %53, %73 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.51, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.51, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.51, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.50, i64 0, i64 0), %92 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.50, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.50, i64 0, i64 0), %85 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.51, i64 0, i64 0), %41 ]
  %101 = phi i64 [ %33, %93 ], [ %75, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %92 ], [ 1, %90 ], [ 1, %85 ], [ 1, %41 ]
  %102 = phi i8 [ %34, %93 ], [ 1, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %86, %92 ], [ %86, %90 ], [ %86, %85 ], [ 1, %41 ]
  %103 = phi i8 [ 0, %93 ], [ %36, %73 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %87, %92 ], [ %87, %90 ], [ %87, %85 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %103, i64 0, metadata !1032, metadata !590), !dbg !1095
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !1030, metadata !590), !dbg !1092
  call void @llvm.dbg.value(metadata i64 %101, i64 0, metadata !1029, metadata !590), !dbg !1091
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !1028, metadata !590), !dbg !1090
  call void @llvm.dbg.value(metadata i64 %99, i64 0, metadata !1026, metadata !590), !dbg !1088
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !1024, metadata !590), !dbg !1087
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !1023, metadata !590), !dbg !1086
  call void @llvm.dbg.value(metadata i32 %96, i64 0, metadata !1020, metadata !590), !dbg !1083
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1025, metadata !590), !dbg !1164
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
  br label %123, !dbg !1165

; <label>:123:                                    ; preds = %587, %95
  %124 = phi i64 [ 0, %95 ], [ %596, %587 ]
  %125 = phi i64 [ %99, %95 ], [ %589, %587 ]
  %126 = phi i64 [ %31, %95 ], [ %590, %587 ]
  %127 = phi i64 [ %35, %95 ], [ %591, %587 ]
  %128 = phi i8 [ %37, %95 ], [ %592, %587 ]
  %129 = phi i8 [ %38, %95 ], [ %593, %587 ]
  %130 = phi i8 [ %39, %95 ], [ %594, %587 ]
  %131 = phi i64 [ %40, %95 ], [ %595, %587 ]
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !1017, metadata !590), !dbg !1080
  call void @llvm.dbg.value(metadata i8 %130, i64 0, metadata !1035, metadata !590), !dbg !1098
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !1034, metadata !590), !dbg !1097
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !1033, metadata !590), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %127, i64 0, metadata !1019, metadata !590), !dbg !1082
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !1027, metadata !590), !dbg !1089
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1026, metadata !590), !dbg !1088
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1025, metadata !590), !dbg !1164
  %132 = icmp eq i64 %127, -1, !dbg !1166
  br i1 %132, label %135, label %133, !dbg !1168

; <label>:133:                                    ; preds = %123
  %134 = icmp eq i64 %124, %127, !dbg !1169
  br i1 %134, label %597, label %139, !dbg !1171

; <label>:135:                                    ; preds = %123
  %136 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !1173
  %137 = load i8, i8* %136, align 1, !dbg !1173, !tbaa !1113
  %138 = icmp eq i8 %137, 0, !dbg !1175
  br i1 %138, label %597, label %139, !dbg !1171

; <label>:139:                                    ; preds = %133, %135
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1041, metadata !590), !dbg !1176
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1042, metadata !590), !dbg !1177
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1043, metadata !590), !dbg !1178
  br i1 %109, label %140, label %155, !dbg !1179

; <label>:140:                                    ; preds = %139
  %141 = add i64 %124, %101, !dbg !1181
  %142 = and i1 %110, %132, !dbg !1183
  br i1 %142, label %143, label %145, !dbg !1183

; <label>:143:                                    ; preds = %140
  %144 = call i64 @strlen(i8* %2) #13, !dbg !1184
  call void @llvm.dbg.value(metadata i64 %144, i64 0, metadata !1019, metadata !590), !dbg !1082
  br label %145, !dbg !1185

; <label>:145:                                    ; preds = %140, %143
  %146 = phi i64 [ %144, %143 ], [ %127, %140 ]
  call void @llvm.dbg.value(metadata i64 %146, i64 0, metadata !1019, metadata !590), !dbg !1082
  %147 = icmp ugt i64 %141, %146, !dbg !1187
  br i1 %147, label %155, label %148, !dbg !1189

; <label>:148:                                    ; preds = %145
  %149 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !1190
  %150 = call i32 @memcmp(i8* %149, i8* %100, i64 %101) #13, !dbg !1191
  %151 = icmp ne i32 %150, 0, !dbg !1192
  %152 = or i1 %151, %112, !dbg !1192
  %153 = xor i1 %151, true, !dbg !1192
  %154 = zext i1 %153 to i8, !dbg !1192
  br i1 %152, label %155, label %644, !dbg !1192

; <label>:155:                                    ; preds = %148, %145, %139
  %156 = phi i64 [ %146, %148 ], [ %146, %145 ], [ %127, %139 ]
  %157 = phi i8 [ %154, %148 ], [ 0, %145 ], [ 0, %139 ]
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !1041, metadata !590), !dbg !1176
  call void @llvm.dbg.value(metadata i64 %156, i64 0, metadata !1019, metadata !590), !dbg !1082
  %158 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !1194
  %159 = load i8, i8* %158, align 1, !dbg !1194, !tbaa !1113
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !1036, metadata !590), !dbg !1195
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
  ], !dbg !1196

; <label>:160:                                    ; preds = %155
  br i1 %105, label %161, label %209, !dbg !1197

; <label>:161:                                    ; preds = %160
  br i1 %112, label %162, label %644, !dbg !1198

; <label>:162:                                    ; preds = %161
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1042, metadata !590), !dbg !1177
  %163 = and i8 %128, 1, !dbg !1203
  %164 = icmp eq i8 %163, 0, !dbg !1203
  %165 = and i1 %114, %164, !dbg !1206
  br i1 %165, label %166, label %182, !dbg !1206

; <label>:166:                                    ; preds = %162
  %167 = icmp ult i64 %125, %131, !dbg !1208
  br i1 %167, label %168, label %170, !dbg !1213

; <label>:168:                                    ; preds = %166
  %169 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !1215
  store i8 39, i8* %169, align 1, !dbg !1215, !tbaa !1113
  br label %170, !dbg !1215

; <label>:170:                                    ; preds = %168, %166
  %171 = add i64 %125, 1, !dbg !1217
  call void @llvm.dbg.value(metadata i64 %171, i64 0, metadata !1026, metadata !590), !dbg !1088
  %172 = icmp ult i64 %171, %131, !dbg !1219
  br i1 %172, label %173, label %175, !dbg !1223

; <label>:173:                                    ; preds = %170
  %174 = getelementptr inbounds i8, i8* %0, i64 %171, !dbg !1225
  store i8 36, i8* %174, align 1, !dbg !1225, !tbaa !1113
  br label %175, !dbg !1225

; <label>:175:                                    ; preds = %173, %170
  %176 = add i64 %125, 2, !dbg !1227
  call void @llvm.dbg.value(metadata i64 %176, i64 0, metadata !1026, metadata !590), !dbg !1088
  %177 = icmp ult i64 %176, %131, !dbg !1229
  br i1 %177, label %178, label %180, !dbg !1233

; <label>:178:                                    ; preds = %175
  %179 = getelementptr inbounds i8, i8* %0, i64 %176, !dbg !1235
  store i8 39, i8* %179, align 1, !dbg !1235, !tbaa !1113
  br label %180, !dbg !1235

; <label>:180:                                    ; preds = %178, %175
  %181 = add i64 %125, 3, !dbg !1237
  call void @llvm.dbg.value(metadata i64 %181, i64 0, metadata !1026, metadata !590), !dbg !1088
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1033, metadata !590), !dbg !1096
  br label %182, !dbg !1239

; <label>:182:                                    ; preds = %162, %180
  %183 = phi i64 [ %181, %180 ], [ %125, %162 ]
  %184 = phi i8 [ 1, %180 ], [ %128, %162 ]
  call void @llvm.dbg.value(metadata i8 %184, i64 0, metadata !1033, metadata !590), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %183, i64 0, metadata !1026, metadata !590), !dbg !1088
  %185 = icmp ult i64 %183, %131, !dbg !1241
  br i1 %185, label %186, label %188, !dbg !1245

; <label>:186:                                    ; preds = %182
  %187 = getelementptr inbounds i8, i8* %0, i64 %183, !dbg !1247
  store i8 92, i8* %187, align 1, !dbg !1247, !tbaa !1113
  br label %188, !dbg !1247

; <label>:188:                                    ; preds = %186, %182
  %189 = add i64 %183, 1, !dbg !1249
  call void @llvm.dbg.value(metadata i64 %189, i64 0, metadata !1026, metadata !590), !dbg !1088
  br i1 %106, label %190, label %476, !dbg !1251

; <label>:190:                                    ; preds = %188
  %191 = add i64 %124, 1, !dbg !1253
  %192 = icmp ult i64 %191, %156, !dbg !1255
  br i1 %192, label %193, label %476, !dbg !1256

; <label>:193:                                    ; preds = %190
  %194 = getelementptr inbounds i8, i8* %2, i64 %191, !dbg !1257
  %195 = load i8, i8* %194, align 1, !dbg !1257, !tbaa !1113
  %196 = add i8 %195, -48, !dbg !1259
  %197 = icmp ult i8 %196, 10, !dbg !1259
  br i1 %197, label %198, label %476, !dbg !1259

; <label>:198:                                    ; preds = %193
  %199 = icmp ult i64 %189, %131, !dbg !1260
  br i1 %199, label %200, label %202, !dbg !1265

; <label>:200:                                    ; preds = %198
  %201 = getelementptr inbounds i8, i8* %0, i64 %189, !dbg !1267
  store i8 48, i8* %201, align 1, !dbg !1267, !tbaa !1113
  br label %202, !dbg !1267

; <label>:202:                                    ; preds = %200, %198
  %203 = add i64 %183, 2, !dbg !1269
  call void @llvm.dbg.value(metadata i64 %203, i64 0, metadata !1026, metadata !590), !dbg !1088
  %204 = icmp ult i64 %203, %131, !dbg !1271
  br i1 %204, label %205, label %207, !dbg !1275

; <label>:205:                                    ; preds = %202
  %206 = getelementptr inbounds i8, i8* %0, i64 %203, !dbg !1277
  store i8 48, i8* %206, align 1, !dbg !1277, !tbaa !1113
  br label %207, !dbg !1277

; <label>:207:                                    ; preds = %205, %202
  %208 = add i64 %183, 3, !dbg !1279
  call void @llvm.dbg.value(metadata i64 %208, i64 0, metadata !1026, metadata !590), !dbg !1088
  br label %476, !dbg !1281

; <label>:209:                                    ; preds = %160
  br i1 %23, label %476, label %587, !dbg !1282

; <label>:210:                                    ; preds = %155
  switch i32 %96, label %476 [
    i32 2, label %211
    i32 5, label %212
  ], !dbg !1283

; <label>:211:                                    ; preds = %210
  br i1 %112, label %476, label %644, !dbg !1284

; <label>:212:                                    ; preds = %210
  br i1 %25, label %476, label %213, !dbg !1286

; <label>:213:                                    ; preds = %212
  %214 = add i64 %124, 2, !dbg !1288
  %215 = icmp ult i64 %214, %156, !dbg !1290
  br i1 %215, label %216, label %476, !dbg !1291

; <label>:216:                                    ; preds = %213
  %217 = add i64 %124, 1, !dbg !1292
  %218 = getelementptr inbounds i8, i8* %2, i64 %217, !dbg !1294
  %219 = load i8, i8* %218, align 1, !dbg !1294, !tbaa !1113
  %220 = icmp eq i8 %219, 63, !dbg !1295
  br i1 %220, label %221, label %476, !dbg !1296

; <label>:221:                                    ; preds = %216
  %222 = getelementptr inbounds i8, i8* %2, i64 %214, !dbg !1298
  %223 = load i8, i8* %222, align 1, !dbg !1298, !tbaa !1113
  %224 = sext i8 %223 to i32, !dbg !1298
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
  ], !dbg !1299

; <label>:225:                                    ; preds = %221, %221, %221, %221, %221, %221, %221, %221, %221
  br i1 %112, label %226, label %644, !dbg !1300

; <label>:226:                                    ; preds = %225
  call void @llvm.dbg.value(metadata i8 %223, i64 0, metadata !1036, metadata !590), !dbg !1195
  call void @llvm.dbg.value(metadata i64 %214, i64 0, metadata !1025, metadata !590), !dbg !1164
  %227 = icmp ult i64 %125, %131, !dbg !1302
  br i1 %227, label %228, label %230, !dbg !1306

; <label>:228:                                    ; preds = %226
  %229 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !1308
  store i8 63, i8* %229, align 1, !dbg !1308, !tbaa !1113
  br label %230, !dbg !1308

; <label>:230:                                    ; preds = %228, %226
  %231 = add i64 %125, 1, !dbg !1310
  call void @llvm.dbg.value(metadata i64 %231, i64 0, metadata !1026, metadata !590), !dbg !1088
  %232 = icmp ult i64 %231, %131, !dbg !1312
  br i1 %232, label %233, label %235, !dbg !1316

; <label>:233:                                    ; preds = %230
  %234 = getelementptr inbounds i8, i8* %0, i64 %231, !dbg !1318
  store i8 34, i8* %234, align 1, !dbg !1318, !tbaa !1113
  br label %235, !dbg !1318

; <label>:235:                                    ; preds = %233, %230
  %236 = add i64 %125, 2, !dbg !1320
  call void @llvm.dbg.value(metadata i64 %236, i64 0, metadata !1026, metadata !590), !dbg !1088
  %237 = icmp ult i64 %236, %131, !dbg !1322
  br i1 %237, label %238, label %240, !dbg !1326

; <label>:238:                                    ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236, !dbg !1328
  store i8 34, i8* %239, align 1, !dbg !1328, !tbaa !1113
  br label %240, !dbg !1328

; <label>:240:                                    ; preds = %238, %235
  %241 = add i64 %125, 3, !dbg !1330
  call void @llvm.dbg.value(metadata i64 %241, i64 0, metadata !1026, metadata !590), !dbg !1088
  %242 = icmp ult i64 %241, %131, !dbg !1332
  br i1 %242, label %243, label %245, !dbg !1336

; <label>:243:                                    ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241, !dbg !1338
  store i8 63, i8* %244, align 1, !dbg !1338, !tbaa !1113
  br label %245, !dbg !1338

; <label>:245:                                    ; preds = %243, %240
  %246 = add i64 %125, 4, !dbg !1340
  call void @llvm.dbg.value(metadata i64 %246, i64 0, metadata !1026, metadata !590), !dbg !1088
  br label %476, !dbg !1342

; <label>:247:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !1040, metadata !590), !dbg !1343
  br label %257, !dbg !1344

; <label>:248:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !1040, metadata !590), !dbg !1343
  br label %257, !dbg !1345

; <label>:249:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !1040, metadata !590), !dbg !1343
  br label %255, !dbg !1346

; <label>:250:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !1040, metadata !590), !dbg !1343
  br label %255, !dbg !1347

; <label>:251:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !1040, metadata !590), !dbg !1343
  br label %257, !dbg !1348

; <label>:252:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !1040, metadata !590), !dbg !1343
  br i1 %114, label %253, label %254, !dbg !1349

; <label>:253:                                    ; preds = %252
  br i1 %112, label %542, label %644, !dbg !1350

; <label>:254:                                    ; preds = %252
  br i1 %122, label %542, label %255, !dbg !1353

; <label>:255:                                    ; preds = %254, %155, %250, %249
  %256 = phi i8 [ 92, %254 ], [ 116, %250 ], [ 114, %249 ], [ 110, %155 ]
  call void @llvm.dbg.value(metadata i8 %256, i64 0, metadata !1040, metadata !590), !dbg !1343
  br i1 %118, label %257, label %644, !dbg !1355

; <label>:257:                                    ; preds = %255, %155, %251, %248, %247
  %258 = phi i8 [ %256, %255 ], [ 118, %251 ], [ 102, %248 ], [ 98, %247 ], [ 97, %155 ]
  call void @llvm.dbg.value(metadata i8 %258, i64 0, metadata !1040, metadata !590), !dbg !1343
  br i1 %105, label %503, label %476, !dbg !1357

; <label>:259:                                    ; preds = %155, %155
  %260 = icmp eq i64 %156, -1, !dbg !1358
  br i1 %260, label %261, label %266, !dbg !1360

; <label>:261:                                    ; preds = %259
  %262 = load i8, i8* %26, align 1, !dbg !1361, !tbaa !1113
  %263 = icmp ne i8 %262, 0, !dbg !1363
  %264 = icmp ne i64 %124, 0, !dbg !1364
  %265 = or i1 %264, %263, !dbg !1366
  br i1 %265, label %476, label %272, !dbg !1366

; <label>:266:                                    ; preds = %259
  %267 = icmp ne i64 %156, 1, !dbg !1367
  %268 = icmp ne i64 %124, 0, !dbg !1364
  %269 = or i1 %268, %267, !dbg !1369
  br i1 %269, label %476, label %272, !dbg !1369

; <label>:270:                                    ; preds = %155, %155
  %271 = icmp eq i64 %124, 0, !dbg !1364
  br i1 %271, label %272, label %476, !dbg !1371

; <label>:272:                                    ; preds = %270, %266, %261, %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1043, metadata !590), !dbg !1178
  br label %273, !dbg !1372

; <label>:273:                                    ; preds = %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %272
  %274 = phi i8 [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 1, %272 ]
  call void @llvm.dbg.value(metadata i8 %274, i64 0, metadata !1043, metadata !590), !dbg !1178
  br i1 %118, label %476, label %644, !dbg !1373

; <label>:275:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1034, metadata !590), !dbg !1097
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1043, metadata !590), !dbg !1178
  br i1 %114, label %276, label %476, !dbg !1375

; <label>:276:                                    ; preds = %275
  br i1 %112, label %277, label %644, !dbg !1376

; <label>:277:                                    ; preds = %276
  %278 = icmp eq i64 %131, 0, !dbg !1379
  %279 = icmp ne i64 %126, 0, !dbg !1381
  %280 = or i1 %279, %278, !dbg !1383
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !1027, metadata !590), !dbg !1089
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1017, metadata !590), !dbg !1080
  %281 = select i1 %280, i64 %126, i64 %131, !dbg !1383
  %282 = select i1 %280, i64 %131, i64 0, !dbg !1383
  call void @llvm.dbg.value(metadata i64 %282, i64 0, metadata !1017, metadata !590), !dbg !1080
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !1027, metadata !590), !dbg !1089
  %283 = icmp ult i64 %125, %282, !dbg !1384
  br i1 %283, label %284, label %286, !dbg !1388

; <label>:284:                                    ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !1390
  store i8 39, i8* %285, align 1, !dbg !1390, !tbaa !1113
  br label %286, !dbg !1390

; <label>:286:                                    ; preds = %284, %277
  %287 = add i64 %125, 1, !dbg !1392
  call void @llvm.dbg.value(metadata i64 %287, i64 0, metadata !1026, metadata !590), !dbg !1088
  %288 = icmp ult i64 %287, %282, !dbg !1394
  br i1 %288, label %289, label %291, !dbg !1398

; <label>:289:                                    ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287, !dbg !1400
  store i8 92, i8* %290, align 1, !dbg !1400, !tbaa !1113
  br label %291, !dbg !1400

; <label>:291:                                    ; preds = %289, %286
  %292 = add i64 %125, 2, !dbg !1402
  call void @llvm.dbg.value(metadata i64 %292, i64 0, metadata !1026, metadata !590), !dbg !1088
  %293 = icmp ult i64 %292, %282, !dbg !1404
  br i1 %293, label %294, label %296, !dbg !1408

; <label>:294:                                    ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292, !dbg !1410
  store i8 39, i8* %295, align 1, !dbg !1410, !tbaa !1113
  br label %296, !dbg !1410

; <label>:296:                                    ; preds = %294, %291
  %297 = add i64 %125, 3, !dbg !1412
  call void @llvm.dbg.value(metadata i64 %297, i64 0, metadata !1026, metadata !590), !dbg !1088
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1033, metadata !590), !dbg !1096
  br label %476, !dbg !1414

; <label>:298:                                    ; preds = %155
  br i1 %14, label %299, label %308, !dbg !1415

; <label>:299:                                    ; preds = %298
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1044, metadata !590), !dbg !1416
  %300 = tail call i16** @__ctype_b_loc() #1, !dbg !1417
  %301 = load i16*, i16** %300, align 8, !dbg !1417, !tbaa !598
  %302 = zext i8 %159 to i64, !dbg !1417
  %303 = getelementptr inbounds i16, i16* %301, i64 %302, !dbg !1417
  %304 = load i16, i16* %303, align 2, !dbg !1417, !tbaa !1419
  %305 = lshr i16 %304, 14, !dbg !1421
  %306 = trunc i16 %305 to i8, !dbg !1421
  %307 = and i8 %306, 1, !dbg !1421
  call void @llvm.dbg.value(metadata i8 %307, i64 0, metadata !1047, metadata !590), !dbg !1422
  br label %368, !dbg !1423

; <label>:308:                                    ; preds = %298
  call void @llvm.lifetime.start(i64 8, i8* nonnull %18) #10, !dbg !1424
  store i64 0, i64* %10, align 8, !dbg !1425
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1044, metadata !590), !dbg !1416
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1047, metadata !590), !dbg !1422
  %309 = icmp eq i64 %156, -1, !dbg !1426
  br i1 %309, label %310, label %312, !dbg !1428, !llvm.loop !1429

; <label>:310:                                    ; preds = %308
  %311 = call i64 @strlen(i8* nonnull %2) #13, !dbg !1432
  call void @llvm.dbg.value(metadata i64 %311, i64 0, metadata !1019, metadata !590), !dbg !1082
  br label %312, !dbg !1433, !llvm.loop !1429

; <label>:312:                                    ; preds = %310, %308
  %313 = phi i64 [ %156, %308 ], [ %311, %310 ]
  br label %314, !dbg !1422

; <label>:314:                                    ; preds = %312, %355
  %315 = phi i64 [ %360, %355 ], [ 0, %312 ]
  %316 = phi i8 [ %359, %355 ], [ 1, %312 ]
  call void @llvm.dbg.value(metadata i8 %316, i64 0, metadata !1047, metadata !590), !dbg !1422
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !1044, metadata !590), !dbg !1416
  call void @llvm.dbg.value(metadata i64 %313, i64 0, metadata !1019, metadata !590), !dbg !1082
  call void @llvm.lifetime.start(i64 4, i8* nonnull %19) #10, !dbg !1434
  %317 = add i64 %315, %124, !dbg !1435
  %318 = getelementptr inbounds i8, i8* %2, i64 %317, !dbg !1436
  %319 = sub i64 %313, %317, !dbg !1437
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1048, metadata !1438), !dbg !1439
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !1065, metadata !1438), !dbg !1440
  %320 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %318, i64 %319, %struct.__mbstate_t* nonnull %11) #10, !dbg !1441
  call void @llvm.dbg.value(metadata i64 %320, i64 0, metadata !1068, metadata !590), !dbg !1442
  switch i64 %320, label %334 [
    i64 0, label %350
    i64 -1, label %347
    i64 -2, label %321
  ], !dbg !1443

; <label>:321:                                    ; preds = %314
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !1044, metadata !590), !dbg !1416
  %322 = icmp ugt i64 %313, %317, !dbg !1444
  br i1 %322, label %323, label %351, !dbg !1447

; <label>:323:                                    ; preds = %321
  br label %324, !dbg !1448

; <label>:324:                                    ; preds = %323, %330
  %325 = phi i64 [ %332, %330 ], [ %317, %323 ]
  %326 = phi i64 [ %331, %330 ], [ %315, %323 ]
  %327 = getelementptr inbounds i8, i8* %2, i64 %325, !dbg !1448
  %328 = load i8, i8* %327, align 1, !dbg !1448, !tbaa !1113
  %329 = icmp eq i8 %328, 0, !dbg !1450
  br i1 %329, label %348, label %330, !dbg !1451

; <label>:330:                                    ; preds = %324
  %331 = add i64 %326, 1, !dbg !1453
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !1044, metadata !590), !dbg !1416
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !1044, metadata !590), !dbg !1416
  %332 = add i64 %331, %124, !dbg !1454
  %333 = icmp ult i64 %332, %313, !dbg !1444
  br i1 %333, label %324, label %348, !dbg !1447, !llvm.loop !1455

; <label>:334:                                    ; preds = %314
  %335 = icmp ugt i64 %320, 1, !dbg !1457
  %336 = and i1 %116, %335, !dbg !1461
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1069, metadata !590), !dbg !1462
  br i1 %336, label %337, label %355, !dbg !1461

; <label>:337:                                    ; preds = %334
  br label %338, !dbg !1463

; <label>:338:                                    ; preds = %337, %344
  %339 = phi i64 [ %345, %344 ], [ 1, %337 ]
  %340 = add i64 %339, %317, !dbg !1463
  %341 = getelementptr inbounds i8, i8* %2, i64 %340, !dbg !1464
  %342 = load i8, i8* %341, align 1, !dbg !1464, !tbaa !1113
  %343 = sext i8 %342 to i32, !dbg !1464
  switch i32 %343, label %344 [
    i32 91, label %367
    i32 92, label %367
    i32 94, label %367
    i32 96, label %367
    i32 124, label %367
  ], !dbg !1465

; <label>:344:                                    ; preds = %338
  %345 = add nuw i64 %339, 1, !dbg !1466
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !1069, metadata !590), !dbg !1462
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !1069, metadata !590), !dbg !1462
  %346 = icmp ult i64 %345, %320, !dbg !1457
  br i1 %346, label %338, label %354, !dbg !1468, !llvm.loop !1470

; <label>:347:                                    ; preds = %314
  br label %351, !dbg !1422

; <label>:348:                                    ; preds = %324, %330
  %349 = phi i64 [ %331, %330 ], [ %326, %324 ]
  br label %351, !dbg !1422

; <label>:350:                                    ; preds = %314
  br label %351, !dbg !1422

; <label>:351:                                    ; preds = %350, %348, %347, %321
  %352 = phi i64 [ %315, %321 ], [ %315, %347 ], [ %349, %348 ], [ %315, %350 ]
  %353 = phi i8 [ 0, %321 ], [ 0, %347 ], [ 0, %348 ], [ %316, %350 ]
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1047, metadata !590), !dbg !1422
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1044, metadata !590), !dbg !1416
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10, !dbg !1473
  br label %364

; <label>:354:                                    ; preds = %344
  br label %355, !dbg !1474

; <label>:355:                                    ; preds = %354, %334
  %356 = load i32, i32* %12, align 4, !dbg !1474, !tbaa !663
  call void @llvm.dbg.value(metadata i32 %356, i64 0, metadata !1065, metadata !590), !dbg !1440
  %357 = call i32 @iswprint(i32 %356) #10, !dbg !1476
  %358 = icmp eq i32 %357, 0, !dbg !1476
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1047, metadata !590), !dbg !1422
  %359 = select i1 %358, i8 0, i8 %316, !dbg !1477
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1047, metadata !590), !dbg !1422
  %360 = add i64 %320, %315, !dbg !1478
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1044, metadata !590), !dbg !1416
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1047, metadata !590), !dbg !1422
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1044, metadata !590), !dbg !1416
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10, !dbg !1473
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1048, metadata !1438), !dbg !1439
  %361 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #13, !dbg !1479
  %362 = icmp eq i32 %361, 0, !dbg !1480
  br i1 %362, label %314, label %363, !dbg !1481, !llvm.loop !1429

; <label>:363:                                    ; preds = %355
  br label %364, !dbg !1483

; <label>:364:                                    ; preds = %363, %351
  %365 = phi i8 [ %353, %351 ], [ %359, %363 ]
  %366 = phi i64 [ %352, %351 ], [ %360, %363 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #10, !dbg !1483
  br label %368

; <label>:367:                                    ; preds = %338, %338, %338, %338, %338
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1047, metadata !590), !dbg !1422
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1044, metadata !590), !dbg !1416
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10, !dbg !1473
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #10, !dbg !1483
  br label %649

; <label>:368:                                    ; preds = %364, %299
  %369 = phi i64 [ %156, %299 ], [ %313, %364 ]
  %370 = phi i64 [ 1, %299 ], [ %366, %364 ]
  %371 = phi i8 [ %307, %299 ], [ %365, %364 ]
  call void @llvm.dbg.value(metadata i8 %371, i64 0, metadata !1047, metadata !590), !dbg !1422
  call void @llvm.dbg.value(metadata i64 %370, i64 0, metadata !1044, metadata !590), !dbg !1416
  call void @llvm.dbg.value(metadata i64 %369, i64 0, metadata !1019, metadata !590), !dbg !1082
  %372 = and i8 %371, 1, !dbg !1484
  %373 = icmp ne i8 %372, 0, !dbg !1484
  call void @llvm.dbg.value(metadata i8 %372, i64 0, metadata !1043, metadata !590), !dbg !1178
  %374 = icmp ult i64 %370, 2, !dbg !1485
  %375 = or i1 %373, %113, !dbg !1486
  %376 = and i1 %374, %375, !dbg !1488
  br i1 %376, label %476, label %377, !dbg !1488

; <label>:377:                                    ; preds = %368
  %378 = add i64 %370, %124, !dbg !1489
  call void @llvm.dbg.value(metadata i64 %378, i64 0, metadata !1076, metadata !590), !dbg !1490
  br label %379, !dbg !1491

; <label>:379:                                    ; preds = %472, %377
  %380 = phi i64 [ %124, %377 ], [ %447, %472 ]
  %381 = phi i64 [ %125, %377 ], [ %473, %472 ]
  %382 = phi i8 [ %128, %377 ], [ %468, %472 ]
  %383 = phi i8 [ %159, %377 ], [ %475, %472 ]
  %384 = phi i8 [ %157, %377 ], [ %445, %472 ]
  %385 = phi i8 [ 0, %377 ], [ %446, %472 ]
  call void @llvm.dbg.value(metadata i8 %385, i64 0, metadata !1042, metadata !590), !dbg !1177
  call void @llvm.dbg.value(metadata i8 %384, i64 0, metadata !1041, metadata !590), !dbg !1176
  call void @llvm.dbg.value(metadata i8 %383, i64 0, metadata !1036, metadata !590), !dbg !1195
  call void @llvm.dbg.value(metadata i8 %382, i64 0, metadata !1033, metadata !590), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %381, i64 0, metadata !1026, metadata !590), !dbg !1088
  call void @llvm.dbg.value(metadata i64 %380, i64 0, metadata !1025, metadata !590), !dbg !1164
  br i1 %375, label %432, label %386, !dbg !1492

; <label>:386:                                    ; preds = %379
  br i1 %112, label %387, label %643, !dbg !1497

; <label>:387:                                    ; preds = %386
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1042, metadata !590), !dbg !1177
  %388 = and i8 %382, 1, !dbg !1501
  %389 = icmp eq i8 %388, 0, !dbg !1501
  %390 = and i1 %114, %389, !dbg !1504
  br i1 %390, label %391, label %407, !dbg !1504

; <label>:391:                                    ; preds = %387
  %392 = icmp ult i64 %381, %131, !dbg !1506
  br i1 %392, label %393, label %395, !dbg !1511

; <label>:393:                                    ; preds = %391
  %394 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !1513
  store i8 39, i8* %394, align 1, !dbg !1513, !tbaa !1113
  br label %395, !dbg !1513

; <label>:395:                                    ; preds = %393, %391
  %396 = add i64 %381, 1, !dbg !1515
  call void @llvm.dbg.value(metadata i64 %396, i64 0, metadata !1026, metadata !590), !dbg !1088
  %397 = icmp ult i64 %396, %131, !dbg !1517
  br i1 %397, label %398, label %400, !dbg !1521

; <label>:398:                                    ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !1523
  store i8 36, i8* %399, align 1, !dbg !1523, !tbaa !1113
  br label %400, !dbg !1523

; <label>:400:                                    ; preds = %398, %395
  %401 = add i64 %381, 2, !dbg !1525
  call void @llvm.dbg.value(metadata i64 %401, i64 0, metadata !1026, metadata !590), !dbg !1088
  %402 = icmp ult i64 %401, %131, !dbg !1527
  br i1 %402, label %403, label %405, !dbg !1531

; <label>:403:                                    ; preds = %400
  %404 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !1533
  store i8 39, i8* %404, align 1, !dbg !1533, !tbaa !1113
  br label %405, !dbg !1533

; <label>:405:                                    ; preds = %403, %400
  %406 = add i64 %381, 3, !dbg !1535
  call void @llvm.dbg.value(metadata i64 %406, i64 0, metadata !1026, metadata !590), !dbg !1088
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1033, metadata !590), !dbg !1096
  br label %407, !dbg !1537

; <label>:407:                                    ; preds = %387, %405
  %408 = phi i64 [ %406, %405 ], [ %381, %387 ]
  %409 = phi i8 [ 1, %405 ], [ %382, %387 ]
  call void @llvm.dbg.value(metadata i8 %409, i64 0, metadata !1033, metadata !590), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !1026, metadata !590), !dbg !1088
  %410 = icmp ult i64 %408, %131, !dbg !1539
  br i1 %410, label %411, label %413, !dbg !1543

; <label>:411:                                    ; preds = %407
  %412 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !1545
  store i8 92, i8* %412, align 1, !dbg !1545, !tbaa !1113
  br label %413, !dbg !1545

; <label>:413:                                    ; preds = %411, %407
  %414 = add i64 %408, 1, !dbg !1547
  call void @llvm.dbg.value(metadata i64 %414, i64 0, metadata !1026, metadata !590), !dbg !1088
  %415 = icmp ult i64 %414, %131, !dbg !1549
  br i1 %415, label %416, label %420, !dbg !1553

; <label>:416:                                    ; preds = %413
  %417 = lshr i8 %383, 6, !dbg !1555
  %418 = or i8 %417, 48, !dbg !1555
  %419 = getelementptr inbounds i8, i8* %0, i64 %414, !dbg !1555
  store i8 %418, i8* %419, align 1, !dbg !1555, !tbaa !1113
  br label %420, !dbg !1555

; <label>:420:                                    ; preds = %416, %413
  %421 = add i64 %408, 2, !dbg !1557
  call void @llvm.dbg.value(metadata i64 %421, i64 0, metadata !1026, metadata !590), !dbg !1088
  %422 = icmp ult i64 %421, %131, !dbg !1559
  br i1 %422, label %423, label %428, !dbg !1563

; <label>:423:                                    ; preds = %420
  %424 = lshr i8 %383, 3, !dbg !1565
  %425 = and i8 %424, 7, !dbg !1565
  %426 = or i8 %425, 48, !dbg !1565
  %427 = getelementptr inbounds i8, i8* %0, i64 %421, !dbg !1565
  store i8 %426, i8* %427, align 1, !dbg !1565, !tbaa !1113
  br label %428, !dbg !1565

; <label>:428:                                    ; preds = %423, %420
  %429 = add i64 %408, 3, !dbg !1567
  call void @llvm.dbg.value(metadata i64 %429, i64 0, metadata !1026, metadata !590), !dbg !1088
  %430 = and i8 %383, 7, !dbg !1569
  %431 = or i8 %430, 48, !dbg !1570
  call void @llvm.dbg.value(metadata i8 %431, i64 0, metadata !1036, metadata !590), !dbg !1195
  br label %441, !dbg !1571

; <label>:432:                                    ; preds = %379
  %433 = and i8 %384, 1, !dbg !1572
  %434 = icmp eq i8 %433, 0, !dbg !1572
  br i1 %434, label %441, label %435, !dbg !1574

; <label>:435:                                    ; preds = %432
  %436 = icmp ult i64 %381, %131, !dbg !1575
  br i1 %436, label %437, label %439, !dbg !1580

; <label>:437:                                    ; preds = %435
  %438 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !1582
  store i8 92, i8* %438, align 1, !dbg !1582, !tbaa !1113
  br label %439, !dbg !1582

; <label>:439:                                    ; preds = %437, %435
  %440 = add i64 %381, 1, !dbg !1584
  call void @llvm.dbg.value(metadata i64 %440, i64 0, metadata !1026, metadata !590), !dbg !1088
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1041, metadata !590), !dbg !1176
  br label %441, !dbg !1586

; <label>:441:                                    ; preds = %432, %439, %428
  %442 = phi i64 [ %440, %439 ], [ %381, %432 ], [ %429, %428 ]
  %443 = phi i8 [ %382, %439 ], [ %382, %432 ], [ %409, %428 ]
  %444 = phi i8 [ %383, %439 ], [ %383, %432 ], [ %431, %428 ]
  %445 = phi i8 [ 0, %439 ], [ %384, %432 ], [ %384, %428 ]
  %446 = phi i8 [ %385, %439 ], [ %385, %432 ], [ 1, %428 ]
  call void @llvm.dbg.value(metadata i8 %446, i64 0, metadata !1042, metadata !590), !dbg !1177
  call void @llvm.dbg.value(metadata i8 %445, i64 0, metadata !1041, metadata !590), !dbg !1176
  call void @llvm.dbg.value(metadata i8 %444, i64 0, metadata !1036, metadata !590), !dbg !1195
  call void @llvm.dbg.value(metadata i8 %443, i64 0, metadata !1033, metadata !590), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %442, i64 0, metadata !1026, metadata !590), !dbg !1088
  %447 = add i64 %380, 1, !dbg !1587
  %448 = icmp ugt i64 %378, %447, !dbg !1589
  br i1 %448, label %449, label %541, !dbg !1590

; <label>:449:                                    ; preds = %441
  %450 = and i8 %443, 1, !dbg !1591
  %451 = icmp ne i8 %450, 0, !dbg !1591
  %452 = and i8 %446, 1, !dbg !1595
  %453 = icmp eq i8 %452, 0, !dbg !1595
  %454 = and i1 %451, %453, !dbg !1591
  br i1 %454, label %455, label %466, !dbg !1591

; <label>:455:                                    ; preds = %449
  %456 = icmp ult i64 %442, %131, !dbg !1597
  br i1 %456, label %457, label %459, !dbg !1602

; <label>:457:                                    ; preds = %455
  %458 = getelementptr inbounds i8, i8* %0, i64 %442, !dbg !1604
  store i8 39, i8* %458, align 1, !dbg !1604, !tbaa !1113
  br label %459, !dbg !1604

; <label>:459:                                    ; preds = %457, %455
  %460 = add i64 %442, 1, !dbg !1606
  call void @llvm.dbg.value(metadata i64 %460, i64 0, metadata !1026, metadata !590), !dbg !1088
  %461 = icmp ult i64 %460, %131, !dbg !1608
  br i1 %461, label %462, label %464, !dbg !1612

; <label>:462:                                    ; preds = %459
  %463 = getelementptr inbounds i8, i8* %0, i64 %460, !dbg !1614
  store i8 39, i8* %463, align 1, !dbg !1614, !tbaa !1113
  br label %464, !dbg !1614

; <label>:464:                                    ; preds = %462, %459
  %465 = add i64 %442, 2, !dbg !1616
  call void @llvm.dbg.value(metadata i64 %465, i64 0, metadata !1026, metadata !590), !dbg !1088
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1033, metadata !590), !dbg !1096
  br label %466, !dbg !1618

; <label>:466:                                    ; preds = %449, %464
  %467 = phi i64 [ %465, %464 ], [ %442, %449 ]
  %468 = phi i8 [ 0, %464 ], [ %443, %449 ]
  call void @llvm.dbg.value(metadata i8 %468, i64 0, metadata !1033, metadata !590), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !1026, metadata !590), !dbg !1088
  %469 = icmp ult i64 %467, %131, !dbg !1620
  br i1 %469, label %470, label %472, !dbg !1624

; <label>:470:                                    ; preds = %466
  %471 = getelementptr inbounds i8, i8* %0, i64 %467, !dbg !1626
  store i8 %444, i8* %471, align 1, !dbg !1626, !tbaa !1113
  br label %472, !dbg !1626

; <label>:472:                                    ; preds = %470, %466
  %473 = add i64 %467, 1, !dbg !1628
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !1026, metadata !590), !dbg !1088
  call void @llvm.dbg.value(metadata i64 %447, i64 0, metadata !1025, metadata !590), !dbg !1164
  %474 = getelementptr inbounds i8, i8* %2, i64 %447, !dbg !1630
  %475 = load i8, i8* %474, align 1, !dbg !1630, !tbaa !1113
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !1036, metadata !590), !dbg !1195
  br label %379, !dbg !1631, !llvm.loop !1633

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
  call void @llvm.dbg.value(metadata i64 %486, i64 0, metadata !1017, metadata !590), !dbg !1080
  call void @llvm.dbg.value(metadata i8 %485, i64 0, metadata !1043, metadata !590), !dbg !1178
  call void @llvm.dbg.value(metadata i8 %484, i64 0, metadata !1042, metadata !590), !dbg !1177
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !1041, metadata !590), !dbg !1176
  call void @llvm.dbg.value(metadata i8 %483, i64 0, metadata !1036, metadata !590), !dbg !1195
  call void @llvm.dbg.value(metadata i8 %482, i64 0, metadata !1034, metadata !590), !dbg !1097
  call void @llvm.dbg.value(metadata i8 %481, i64 0, metadata !1033, metadata !590), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !1019, metadata !590), !dbg !1082
  call void @llvm.dbg.value(metadata i64 %479, i64 0, metadata !1027, metadata !590), !dbg !1089
  call void @llvm.dbg.value(metadata i64 %478, i64 0, metadata !1026, metadata !590), !dbg !1088
  call void @llvm.dbg.value(metadata i64 %477, i64 0, metadata !1025, metadata !590), !dbg !1164
  br i1 %107, label %488, label %487, !dbg !1636

; <label>:487:                                    ; preds = %476
  br i1 %117, label %489, label %501, !dbg !1638

; <label>:488:                                    ; preds = %476
  br i1 %20, label %501, label %489, !dbg !1639

; <label>:489:                                    ; preds = %488, %487
  %490 = lshr i8 %483, 5, !dbg !1640
  %491 = zext i8 %490 to i64, !dbg !1640
  %492 = getelementptr inbounds i32, i32* %6, i64 %491, !dbg !1642
  %493 = load i32, i32* %492, align 4, !dbg !1642, !tbaa !663
  %494 = and i8 %483, 31, !dbg !1643
  %495 = zext i8 %494 to i32, !dbg !1644
  %496 = shl i32 1, %495, !dbg !1645
  %497 = and i32 %493, %496, !dbg !1645
  %498 = icmp eq i32 %497, 0, !dbg !1645
  %499 = icmp eq i8 %157, 0, !dbg !1646
  %500 = and i1 %499, %498, !dbg !1647
  br i1 %500, label %542, label %503, !dbg !1647

; <label>:501:                                    ; preds = %488, %487
  %502 = icmp eq i8 %157, 0, !dbg !1646
  br i1 %502, label %542, label %503, !dbg !1648

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
  call void @llvm.dbg.value(metadata i64 %512, i64 0, metadata !1017, metadata !590), !dbg !1080
  call void @llvm.dbg.value(metadata i8 %511, i64 0, metadata !1043, metadata !590), !dbg !1178
  call void @llvm.dbg.value(metadata i8 %510, i64 0, metadata !1036, metadata !590), !dbg !1195
  call void @llvm.dbg.value(metadata i8 %509, i64 0, metadata !1034, metadata !590), !dbg !1097
  call void @llvm.dbg.value(metadata i8 %508, i64 0, metadata !1033, metadata !590), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %507, i64 0, metadata !1019, metadata !590), !dbg !1082
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !1027, metadata !590), !dbg !1089
  call void @llvm.dbg.value(metadata i64 %505, i64 0, metadata !1026, metadata !590), !dbg !1088
  call void @llvm.dbg.value(metadata i64 %504, i64 0, metadata !1025, metadata !590), !dbg !1164
  br i1 %112, label %513, label %644, !dbg !1650

; <label>:513:                                    ; preds = %503
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1042, metadata !590), !dbg !1177
  %514 = and i8 %508, 1, !dbg !1653
  %515 = icmp eq i8 %514, 0, !dbg !1653
  %516 = and i1 %114, %515, !dbg !1656
  br i1 %516, label %517, label %533, !dbg !1656

; <label>:517:                                    ; preds = %513
  %518 = icmp ult i64 %505, %512, !dbg !1658
  br i1 %518, label %519, label %521, !dbg !1663

; <label>:519:                                    ; preds = %517
  %520 = getelementptr inbounds i8, i8* %0, i64 %505, !dbg !1665
  store i8 39, i8* %520, align 1, !dbg !1665, !tbaa !1113
  br label %521, !dbg !1665

; <label>:521:                                    ; preds = %519, %517
  %522 = add i64 %505, 1, !dbg !1667
  call void @llvm.dbg.value(metadata i64 %522, i64 0, metadata !1026, metadata !590), !dbg !1088
  %523 = icmp ult i64 %522, %512, !dbg !1669
  br i1 %523, label %524, label %526, !dbg !1673

; <label>:524:                                    ; preds = %521
  %525 = getelementptr inbounds i8, i8* %0, i64 %522, !dbg !1675
  store i8 36, i8* %525, align 1, !dbg !1675, !tbaa !1113
  br label %526, !dbg !1675

; <label>:526:                                    ; preds = %524, %521
  %527 = add i64 %505, 2, !dbg !1677
  call void @llvm.dbg.value(metadata i64 %527, i64 0, metadata !1026, metadata !590), !dbg !1088
  %528 = icmp ult i64 %527, %512, !dbg !1679
  br i1 %528, label %529, label %531, !dbg !1683

; <label>:529:                                    ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527, !dbg !1685
  store i8 39, i8* %530, align 1, !dbg !1685, !tbaa !1113
  br label %531, !dbg !1685

; <label>:531:                                    ; preds = %529, %526
  %532 = add i64 %505, 3, !dbg !1687
  call void @llvm.dbg.value(metadata i64 %532, i64 0, metadata !1026, metadata !590), !dbg !1088
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1033, metadata !590), !dbg !1096
  br label %533, !dbg !1689

; <label>:533:                                    ; preds = %513, %531
  %534 = phi i64 [ %532, %531 ], [ %505, %513 ]
  %535 = phi i8 [ 1, %531 ], [ %508, %513 ]
  call void @llvm.dbg.value(metadata i8 %535, i64 0, metadata !1033, metadata !590), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !1026, metadata !590), !dbg !1088
  %536 = icmp ult i64 %534, %512, !dbg !1691
  br i1 %536, label %537, label %539, !dbg !1695

; <label>:537:                                    ; preds = %533
  %538 = getelementptr inbounds i8, i8* %0, i64 %534, !dbg !1697
  store i8 92, i8* %538, align 1, !dbg !1697, !tbaa !1113
  br label %539, !dbg !1697

; <label>:539:                                    ; preds = %533, %537
  %540 = add i64 %534, 1, !dbg !1699
  call void @llvm.dbg.value(metadata i64 %540, i64 0, metadata !1026, metadata !590), !dbg !1088
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !1017, metadata !590), !dbg !1080
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !1043, metadata !590), !dbg !1178
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !1042, metadata !590), !dbg !1177
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !1036, metadata !590), !dbg !1195
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !1034, metadata !590), !dbg !1097
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !1033, metadata !590), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !1019, metadata !590), !dbg !1082
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1027, metadata !590), !dbg !1089
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !1026, metadata !590), !dbg !1088
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !1025, metadata !590), !dbg !1164
  br label %569, !dbg !1701

; <label>:541:                                    ; preds = %441
  br label %542, !dbg !1080

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
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !1017, metadata !590), !dbg !1080
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !1043, metadata !590), !dbg !1178
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !1042, metadata !590), !dbg !1177
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !1036, metadata !590), !dbg !1195
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !1034, metadata !590), !dbg !1097
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !1033, metadata !590), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !1019, metadata !590), !dbg !1082
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1027, metadata !590), !dbg !1089
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !1026, metadata !590), !dbg !1088
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !1025, metadata !590), !dbg !1164
  %553 = and i8 %547, 1, !dbg !1701
  %554 = icmp ne i8 %553, 0, !dbg !1701
  %555 = and i8 %550, 1, !dbg !1705
  %556 = icmp eq i8 %555, 0, !dbg !1705
  %557 = and i1 %554, %556, !dbg !1701
  br i1 %557, label %558, label %569, !dbg !1701

; <label>:558:                                    ; preds = %542
  %559 = icmp ult i64 %544, %552, !dbg !1707
  br i1 %559, label %560, label %562, !dbg !1712

; <label>:560:                                    ; preds = %558
  %561 = getelementptr inbounds i8, i8* %0, i64 %544, !dbg !1714
  store i8 39, i8* %561, align 1, !dbg !1714, !tbaa !1113
  br label %562, !dbg !1714

; <label>:562:                                    ; preds = %560, %558
  %563 = add i64 %544, 1, !dbg !1716
  call void @llvm.dbg.value(metadata i64 %563, i64 0, metadata !1026, metadata !590), !dbg !1088
  %564 = icmp ult i64 %563, %552, !dbg !1718
  br i1 %564, label %565, label %567, !dbg !1722

; <label>:565:                                    ; preds = %562
  %566 = getelementptr inbounds i8, i8* %0, i64 %563, !dbg !1724
  store i8 39, i8* %566, align 1, !dbg !1724, !tbaa !1113
  br label %567, !dbg !1724

; <label>:567:                                    ; preds = %565, %562
  %568 = add i64 %544, 2, !dbg !1726
  call void @llvm.dbg.value(metadata i64 %568, i64 0, metadata !1026, metadata !590), !dbg !1088
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1033, metadata !590), !dbg !1096
  br label %569, !dbg !1728

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
  call void @llvm.dbg.value(metadata i8 %578, i64 0, metadata !1033, metadata !590), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %577, i64 0, metadata !1026, metadata !590), !dbg !1088
  %579 = icmp ult i64 %577, %570, !dbg !1730
  br i1 %579, label %580, label %582, !dbg !1734

; <label>:580:                                    ; preds = %569
  %581 = getelementptr inbounds i8, i8* %0, i64 %577, !dbg !1736
  store i8 %572, i8* %581, align 1, !dbg !1736, !tbaa !1113
  br label %582, !dbg !1736

; <label>:582:                                    ; preds = %580, %569
  %583 = add i64 %577, 1, !dbg !1738
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !1026, metadata !590), !dbg !1088
  %584 = and i8 %571, 1, !dbg !1740
  %585 = icmp eq i8 %584, 0, !dbg !1740
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1035, metadata !590), !dbg !1098
  %586 = select i1 %585, i8 0, i8 %130, !dbg !1742
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !1035, metadata !590), !dbg !1098
  br label %587, !dbg !1743

; <label>:587:                                    ; preds = %582, %209
  %588 = phi i64 [ %124, %209 ], [ %576, %582 ]
  %589 = phi i64 [ %125, %209 ], [ %583, %582 ]
  %590 = phi i64 [ %126, %209 ], [ %575, %582 ]
  %591 = phi i64 [ %156, %209 ], [ %574, %582 ]
  %592 = phi i8 [ %128, %209 ], [ %578, %582 ]
  %593 = phi i8 [ %129, %209 ], [ %573, %582 ]
  %594 = phi i8 [ %130, %209 ], [ %586, %582 ]
  %595 = phi i64 [ %131, %209 ], [ %570, %582 ]
  %596 = add i64 %588, 1, !dbg !1744
  call void @llvm.dbg.value(metadata i64 %596, i64 0, metadata !1025, metadata !590), !dbg !1164
  br label %123, !dbg !1746, !llvm.loop !1747

; <label>:597:                                    ; preds = %133, %135
  %598 = phi i64 [ %124, %133 ], [ -1, %135 ]
  %599 = icmp eq i64 %125, 0, !dbg !1750
  %600 = and i1 %114, %599, !dbg !1752
  %601 = xor i1 %600, true, !dbg !1752
  %602 = or i1 %112, %601, !dbg !1752
  br i1 %602, label %603, label %648, !dbg !1752

; <label>:603:                                    ; preds = %597
  %604 = and i1 %114, %112, !dbg !1753
  %605 = xor i1 %604, true, !dbg !1753
  %606 = and i8 %129, 1, !dbg !1755
  %607 = icmp eq i8 %606, 0, !dbg !1755
  %608 = or i1 %607, %605, !dbg !1753
  br i1 %608, label %618, label %609, !dbg !1753

; <label>:609:                                    ; preds = %603
  %610 = and i8 %130, 1, !dbg !1757
  %611 = icmp eq i8 %610, 0, !dbg !1757
  br i1 %611, label %614, label %612, !dbg !1760

; <label>:612:                                    ; preds = %609
  %613 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %126, i8* %2, i64 %598, i32 5, i32 %5, i32* %6, i8* %97, i8* %98), !dbg !1761
  br label %659, !dbg !1762

; <label>:614:                                    ; preds = %609
  %615 = icmp eq i64 %131, 0, !dbg !1763
  %616 = icmp ne i64 %126, 0, !dbg !1765
  %617 = and i1 %616, %615, !dbg !1767
  br i1 %617, label %27, label %618, !dbg !1767

; <label>:618:                                    ; preds = %603, %614
  %619 = icmp ne i8* %100, null, !dbg !1768
  %620 = and i1 %619, %112, !dbg !1770
  br i1 %620, label %621, label %638, !dbg !1770

; <label>:621:                                    ; preds = %618
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !1028, metadata !590), !dbg !1090
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1026, metadata !590), !dbg !1088
  %622 = load i8, i8* %100, align 1, !dbg !1771, !tbaa !1113
  %623 = icmp eq i8 %622, 0, !dbg !1775
  br i1 %623, label %638, label %624, !dbg !1775

; <label>:624:                                    ; preds = %621
  br label %625, !dbg !1777

; <label>:625:                                    ; preds = %624, %632
  %626 = phi i8 [ %635, %632 ], [ %622, %624 ]
  %627 = phi i8* [ %634, %632 ], [ %100, %624 ]
  %628 = phi i64 [ %633, %632 ], [ %125, %624 ]
  %629 = icmp ult i64 %628, %131, !dbg !1777
  br i1 %629, label %630, label %632, !dbg !1781

; <label>:630:                                    ; preds = %625
  %631 = getelementptr inbounds i8, i8* %0, i64 %628, !dbg !1783
  store i8 %626, i8* %631, align 1, !dbg !1783, !tbaa !1113
  br label %632, !dbg !1783

; <label>:632:                                    ; preds = %630, %625
  %633 = add i64 %628, 1, !dbg !1785
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !1026, metadata !590), !dbg !1088
  %634 = getelementptr inbounds i8, i8* %627, i64 1, !dbg !1787
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !1028, metadata !590), !dbg !1090
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !1028, metadata !590), !dbg !1090
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !1026, metadata !590), !dbg !1088
  %635 = load i8, i8* %634, align 1, !dbg !1771, !tbaa !1113
  %636 = icmp eq i8 %635, 0, !dbg !1775
  br i1 %636, label %637, label %625, !dbg !1775, !llvm.loop !1789

; <label>:637:                                    ; preds = %632
  br label %638, !dbg !1088

; <label>:638:                                    ; preds = %637, %621, %618
  %639 = phi i64 [ %125, %618 ], [ %125, %621 ], [ %633, %637 ]
  call void @llvm.dbg.value(metadata i64 %639, i64 0, metadata !1026, metadata !590), !dbg !1088
  %640 = icmp ult i64 %639, %131, !dbg !1792
  br i1 %640, label %641, label %659, !dbg !1794

; <label>:641:                                    ; preds = %638
  %642 = getelementptr inbounds i8, i8* %0, i64 %639, !dbg !1795
  store i8 0, i8* %642, align 1, !dbg !1796, !tbaa !1113
  br label %659, !dbg !1795

; <label>:643:                                    ; preds = %386
  br label %649, !dbg !1080

; <label>:644:                                    ; preds = %148, %161, %211, %225, %253, %255, %273, %276, %503
  %645 = phi i32 [ %96, %148 ], [ %96, %161 ], [ 2, %211 ], [ 5, %225 ], [ 2, %253 ], [ 2, %255 ], [ 2, %273 ], [ 2, %276 ], [ %96, %503 ]
  %646 = phi i64 [ %146, %148 ], [ %156, %161 ], [ %156, %211 ], [ %156, %225 ], [ %156, %253 ], [ %156, %255 ], [ %156, %273 ], [ %156, %276 ], [ %507, %503 ]
  %647 = phi i64 [ %131, %148 ], [ %131, %161 ], [ %131, %211 ], [ %131, %225 ], [ %131, %253 ], [ %131, %255 ], [ %131, %273 ], [ %131, %276 ], [ %512, %503 ]
  br label %649, !dbg !1080

; <label>:648:                                    ; preds = %597
  br label %649, !dbg !1080

; <label>:649:                                    ; preds = %648, %644, %643, %367
  %650 = phi i32 [ 2, %367 ], [ %96, %643 ], [ %645, %644 ], [ %96, %648 ]
  %651 = phi i64 [ %313, %367 ], [ %369, %643 ], [ %646, %644 ], [ %598, %648 ]
  %652 = phi i64 [ %131, %367 ], [ %131, %643 ], [ %647, %644 ], [ %131, %648 ]
  call void @llvm.dbg.value(metadata i64 %652, i64 0, metadata !1017, metadata !590), !dbg !1080
  call void @llvm.dbg.value(metadata i64 %651, i64 0, metadata !1019, metadata !590), !dbg !1082
  %653 = icmp ne i32 %650, 2, !dbg !1797
  %654 = icmp eq i8 %104, 0, !dbg !1799
  %655 = or i1 %653, %654, !dbg !1801
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !1020, metadata !590), !dbg !1083
  %656 = select i1 %655, i32 %650, i32 4, !dbg !1801
  call void @llvm.dbg.value(metadata i32 %656, i64 0, metadata !1020, metadata !590), !dbg !1083
  %657 = and i32 %5, -3, !dbg !1802
  %658 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %652, i8* %2, i64 %651, i32 %656, i32 %657, i32* null, i8* %97, i8* %98), !dbg !1803
  br label %659, !dbg !1804

; <label>:659:                                    ; preds = %638, %641, %649, %612
  %660 = phi i64 [ %658, %649 ], [ %613, %612 ], [ %639, %641 ], [ %639, %638 ]
  ret i64 %660, !dbg !1805
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !1806 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1810, metadata !590), !dbg !1814
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1811, metadata !590), !dbg !1815
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #10, !dbg !1816
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !1812, metadata !590), !dbg !1817
  %4 = icmp eq i8* %3, %0, !dbg !1818
  br i1 %4, label %5, label %75, !dbg !1820

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #10, !dbg !1821
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !1813, metadata !590), !dbg !1822
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1823, metadata !590), !dbg !1839
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1837, metadata !590), !dbg !1842
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1838, metadata !590), !dbg !1843
  %7 = load i8, i8* %6, align 1, !tbaa !1113
  %8 = sext i8 %7 to i32
  %9 = and i32 %8, -33, !dbg !1844
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !1844

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1847, metadata !590), !dbg !1861
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1859, metadata !590), !dbg !1865
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1860, metadata !590), !dbg !1866
  %11 = getelementptr inbounds i8, i8* %6, i64 1
  %12 = load i8, i8* %11, align 1, !tbaa !1113
  %13 = sext i8 %12 to i32
  %14 = and i32 %13, -33, !dbg !1867
  %15 = icmp eq i32 %14, 84, !dbg !1867
  br i1 %15, label %16, label %72, !dbg !1867

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1870, metadata !590), !dbg !1883
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1881, metadata !590), !dbg !1887
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1882, metadata !590), !dbg !1888
  %17 = getelementptr inbounds i8, i8* %6, i64 2
  %18 = load i8, i8* %17, align 1, !tbaa !1113
  %19 = sext i8 %18 to i32
  %20 = and i32 %19, -33, !dbg !1889
  %21 = icmp eq i32 %20, 70, !dbg !1889
  br i1 %21, label %22, label %72, !dbg !1889

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1892, metadata !590), !dbg !1904
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1902, metadata !590), !dbg !1908
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1903, metadata !590), !dbg !1909
  %23 = getelementptr inbounds i8, i8* %6, i64 3
  %24 = load i8, i8* %23, align 1, !tbaa !1113
  %25 = icmp eq i8 %24, 45, !dbg !1910
  br i1 %25, label %26, label %72, !dbg !1913

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1915, metadata !590), !dbg !1926
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1924, metadata !590), !dbg !1930
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1925, metadata !590), !dbg !1931
  %27 = getelementptr inbounds i8, i8* %6, i64 4
  %28 = load i8, i8* %27, align 1, !tbaa !1113
  %29 = icmp eq i8 %28, 56, !dbg !1932
  br i1 %29, label %30, label %72, !dbg !1935

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1937, metadata !590), !dbg !1947
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1945, metadata !590), !dbg !1951
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1946, metadata !590), !dbg !1952
  %31 = getelementptr inbounds i8, i8* %6, i64 5
  %32 = load i8, i8* %31, align 1, !tbaa !1113
  %33 = icmp eq i8 %32, 0, !dbg !1953
  br i1 %33, label %34, label %72, !dbg !1956

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !1958, !tbaa !1113
  %36 = icmp eq i8 %35, 96, !dbg !1959
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.52, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), !dbg !1958
  br label %75, !dbg !1960

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1847, metadata !590), !dbg !1961
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1859, metadata !590), !dbg !1965
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1860, metadata !590), !dbg !1966
  %39 = getelementptr inbounds i8, i8* %6, i64 1
  %40 = load i8, i8* %39, align 1, !tbaa !1113
  %41 = sext i8 %40 to i32
  %42 = and i32 %41, -33, !dbg !1967
  %43 = icmp eq i32 %42, 66, !dbg !1967
  br i1 %43, label %44, label %72, !dbg !1967

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1870, metadata !590), !dbg !1968
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1881, metadata !590), !dbg !1970
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1882, metadata !590), !dbg !1971
  %45 = getelementptr inbounds i8, i8* %6, i64 2
  %46 = load i8, i8* %45, align 1, !tbaa !1113
  %47 = icmp eq i8 %46, 49, !dbg !1972
  br i1 %47, label %48, label %72, !dbg !1974

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1892, metadata !590), !dbg !1976
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1902, metadata !590), !dbg !1978
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1903, metadata !590), !dbg !1979
  %49 = getelementptr inbounds i8, i8* %6, i64 3
  %50 = load i8, i8* %49, align 1, !tbaa !1113
  %51 = icmp eq i8 %50, 56, !dbg !1980
  br i1 %51, label %52, label %72, !dbg !1981

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1915, metadata !590), !dbg !1982
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1924, metadata !590), !dbg !1984
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1925, metadata !590), !dbg !1985
  %53 = getelementptr inbounds i8, i8* %6, i64 4
  %54 = load i8, i8* %53, align 1, !tbaa !1113
  %55 = icmp eq i8 %54, 48, !dbg !1986
  br i1 %55, label %56, label %72, !dbg !1987

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1937, metadata !590), !dbg !1988
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1945, metadata !590), !dbg !1990
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1946, metadata !590), !dbg !1991
  %57 = getelementptr inbounds i8, i8* %6, i64 5
  %58 = load i8, i8* %57, align 1, !tbaa !1113
  %59 = icmp eq i8 %58, 51, !dbg !1992
  br i1 %59, label %60, label %72, !dbg !1993

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1994, metadata !590), !dbg !2003
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2001, metadata !590), !dbg !2007
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2002, metadata !590), !dbg !2008
  %61 = getelementptr inbounds i8, i8* %6, i64 6
  %62 = load i8, i8* %61, align 1, !tbaa !1113
  %63 = icmp eq i8 %62, 48, !dbg !2009
  br i1 %63, label %64, label %72, !dbg !2012

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2014, metadata !590), !dbg !2022
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2020, metadata !590), !dbg !2026
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2021, metadata !590), !dbg !2027
  %65 = getelementptr inbounds i8, i8* %6, i64 7
  %66 = load i8, i8* %65, align 1, !tbaa !1113
  %67 = icmp eq i8 %66, 0, !dbg !2028
  br i1 %67, label %68, label %72, !dbg !2031

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !2032, !tbaa !1113
  %70 = icmp eq i8 %69, 96, !dbg !2033
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.53, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), !dbg !2032
  br label %75, !dbg !2034

; <label>:72:                                     ; preds = %5, %30, %26, %22, %16, %10, %64, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !2035
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.51, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.50, i64 0, i64 0), !dbg !2036
  br label %75, !dbg !2037

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !2038
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
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2039 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2043, metadata !590), !dbg !2046
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2044, metadata !590), !dbg !2047
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2045, metadata !590), !dbg !2048
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2049, metadata !590) #10, !dbg !2062
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2054, metadata !590) #10, !dbg !2064
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !2055, metadata !590) #10, !dbg !2065
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2056, metadata !590) #10, !dbg !2066
  %4 = icmp ne %struct.quoting_options* %2, null, !dbg !2067
  %5 = select i1 %4, %struct.quoting_options* %2, %struct.quoting_options* @default_quoting_options, !dbg !2067
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2057, metadata !590) #10, !dbg !2068
  %6 = tail call i32* @__errno_location() #1, !dbg !2069
  %7 = load i32, i32* %6, align 4, !dbg !2069, !tbaa !663
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !2058, metadata !590) #10, !dbg !2070
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2071
  %9 = load i32, i32* %8, align 4, !dbg !2071, !tbaa !948
  %10 = or i32 %9, 1, !dbg !2072
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2059, metadata !590) #10, !dbg !2073
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2074
  %12 = load i32, i32* %11, align 8, !dbg !2074, !tbaa !886
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2075
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2076
  %15 = load i8*, i8** %14, align 8, !dbg !2076, !tbaa !975
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2077
  %17 = load i8*, i8** %16, align 8, !dbg !2077, !tbaa !978
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #10, !dbg !2078
  %19 = add i64 %18, 1, !dbg !2079
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2060, metadata !590) #10, !dbg !2080
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2081, metadata !590) #10, !dbg !2086
  %20 = tail call noalias i8* @xmalloc(i64 %19) #10, !dbg !2088
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !2061, metadata !590) #10, !dbg !2089
  %21 = load i32, i32* %11, align 8, !dbg !2090, !tbaa !886
  %22 = load i8*, i8** %14, align 8, !dbg !2091, !tbaa !975
  %23 = load i8*, i8** %16, align 8, !dbg !2092, !tbaa !978
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #10, !dbg !2093
  store i32 %7, i32* %6, align 4, !dbg !2094, !tbaa !663
  ret i8* %20, !dbg !2095
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2050 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2049, metadata !590), !dbg !2096
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2054, metadata !590), !dbg !2097
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !2055, metadata !590), !dbg !2098
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2056, metadata !590), !dbg !2099
  %5 = icmp ne %struct.quoting_options* %3, null, !dbg !2100
  %6 = select i1 %5, %struct.quoting_options* %3, %struct.quoting_options* @default_quoting_options, !dbg !2100
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2057, metadata !590), !dbg !2101
  %7 = tail call i32* @__errno_location() #1, !dbg !2102
  %8 = load i32, i32* %7, align 4, !dbg !2102, !tbaa !663
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !2058, metadata !590), !dbg !2103
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2104
  %10 = load i32, i32* %9, align 4, !dbg !2104, !tbaa !948
  %11 = icmp ne i64* %2, null, !dbg !2105
  %12 = xor i1 %11, true, !dbg !2105
  %13 = zext i1 %12 to i32, !dbg !2105
  %14 = or i32 %10, %13, !dbg !2106
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !2059, metadata !590), !dbg !2107
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2108
  %16 = load i32, i32* %15, align 8, !dbg !2108, !tbaa !886
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2109
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2110
  %19 = load i8*, i8** %18, align 8, !dbg !2110, !tbaa !975
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2111
  %21 = load i8*, i8** %20, align 8, !dbg !2111, !tbaa !978
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !2112
  %23 = add i64 %22, 1, !dbg !2113
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2060, metadata !590), !dbg !2114
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2081, metadata !590) #10, !dbg !2115
  %24 = tail call noalias i8* @xmalloc(i64 %23) #10, !dbg !2117
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !2061, metadata !590), !dbg !2118
  %25 = load i32, i32* %15, align 8, !dbg !2119, !tbaa !886
  %26 = load i8*, i8** %18, align 8, !dbg !2120, !tbaa !975
  %27 = load i8*, i8** %20, align 8, !dbg !2121, !tbaa !978
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !2122
  store i32 %8, i32* %7, align 4, !dbg !2123, !tbaa !663
  br i1 %11, label %29, label %30, !dbg !2124

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2125, !tbaa !2127
  br label %30, !dbg !2129

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !2130
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !2131 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2135, !tbaa !598
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !2133, metadata !590), !dbg !2136
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2134, metadata !590), !dbg !2137
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2134, metadata !590), !dbg !2137
  %2 = load i32, i32* @nslots, align 4, !dbg !2138, !tbaa !663
  %3 = icmp sgt i32 %2, 1, !dbg !2142
  br i1 %3, label %4, label %14, !dbg !2143

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !2145

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !2145
  %8 = load i8*, i8** %7, align 8, !dbg !2145, !tbaa !2146
  tail call void @free(i8* %8) #10, !dbg !2148
  %9 = add nuw i64 %6, 1, !dbg !2149
  %10 = load i32, i32* @nslots, align 4, !dbg !2138, !tbaa !663
  %11 = sext i32 %10 to i64, !dbg !2142
  %12 = icmp slt i64 %9, %11, !dbg !2142
  br i1 %12, label %5, label %13, !dbg !2143, !llvm.loop !2151

; <label>:13:                                     ; preds = %5
  br label %14, !dbg !2154

; <label>:14:                                     ; preds = %13, %0
  %15 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2154
  %16 = load i8*, i8** %15, align 8, !dbg !2154, !tbaa !2146
  %17 = icmp eq i8* %16, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2156
  br i1 %17, label %19, label %18, !dbg !2157

; <label>:18:                                     ; preds = %14
  tail call void @free(i8* %16) #10, !dbg !2158
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2160, !tbaa !2161
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2162, !tbaa !2146
  br label %19, !dbg !2163

; <label>:19:                                     ; preds = %14, %18
  %20 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2164
  br i1 %20, label %23, label %21, !dbg !2166

; <label>:21:                                     ; preds = %19
  %22 = bitcast %struct.slotvec* %1 to i8*, !dbg !2167
  tail call void @free(i8* %22) #10, !dbg !2169
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2170, !tbaa !598
  br label %23, !dbg !2171

; <label>:23:                                     ; preds = %19, %21
  store i32 1, i32* @nslots, align 4, !dbg !2172, !tbaa !663
  ret void, !dbg !2173
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !2174 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2178, metadata !590), !dbg !2180
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2179, metadata !590), !dbg !2181
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2182
  ret i8* %3, !dbg !2183
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !2184 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2188, metadata !590), !dbg !2202
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2189, metadata !590), !dbg !2203
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2190, metadata !590), !dbg !2204
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2191, metadata !590), !dbg !2205
  %5 = tail call i32* @__errno_location() #1, !dbg !2206
  %6 = load i32, i32* %5, align 4, !dbg !2206, !tbaa !663
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !2192, metadata !590), !dbg !2207
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2208, !tbaa !598
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !2193, metadata !590), !dbg !2209
  %8 = icmp slt i32 %0, 0, !dbg !2210
  br i1 %8, label %9, label %10, !dbg !2212

; <label>:9:                                      ; preds = %4
  tail call void @abort() #14, !dbg !2213
  unreachable, !dbg !2213

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2214, !tbaa !663
  %12 = icmp sgt i32 %11, %0, !dbg !2215
  br i1 %12, label %34, label %13, !dbg !2216

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2217
  %15 = icmp ugt i32 %0, 2147483646, !dbg !2218
  br i1 %15, label %16, label %17, !dbg !2220

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !2221
  unreachable, !dbg !2221

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !2222
  %19 = select i1 %14, i8* null, i8* %18, !dbg !2222
  %20 = add nsw i32 %0, 1, !dbg !2224
  %21 = sext i32 %20 to i64, !dbg !2225
  %22 = shl nsw i64 %21, 4, !dbg !2226
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #10, !dbg !2227
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2227
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !2193, metadata !590), !dbg !2209
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2228, !tbaa !598
  br i1 %14, label %25, label %26, !dbg !2229

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !2230, !tbaa.struct !2232
  br label %26, !dbg !2233

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2234, !tbaa !663
  %28 = sext i32 %27 to i64, !dbg !2235
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2235
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2236
  %31 = sub nsw i32 %20, %27, !dbg !2237
  %32 = sext i32 %31 to i64, !dbg !2238
  %33 = shl nsw i64 %32, 4, !dbg !2239
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !2236
  store i32 %20, i32* @nslots, align 4, !dbg !2240, !tbaa !663
  br label %34, !dbg !2241

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !2193, metadata !590), !dbg !2209
  %36 = sext i32 %0 to i64, !dbg !2242
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2243
  %38 = load i64, i64* %37, align 8, !dbg !2243, !tbaa !2161
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !2197, metadata !590), !dbg !2244
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2245
  %40 = load i8*, i8** %39, align 8, !dbg !2245, !tbaa !2146
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !2199, metadata !590), !dbg !2246
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2247
  %42 = load i32, i32* %41, align 4, !dbg !2247, !tbaa !948
  %43 = or i32 %42, 1, !dbg !2248
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !2200, metadata !590), !dbg !2249
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2250
  %45 = load i32, i32* %44, align 8, !dbg !2250, !tbaa !886
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2251
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2252
  %48 = load i8*, i8** %47, align 8, !dbg !2252, !tbaa !975
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2253
  %50 = load i8*, i8** %49, align 8, !dbg !2253, !tbaa !978
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !2254
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !2201, metadata !590), !dbg !2255
  %52 = icmp ugt i64 %38, %51, !dbg !2256
  br i1 %52, label %63, label %53, !dbg !2258

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !2259
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2197, metadata !590), !dbg !2244
  store i64 %54, i64* %37, align 8, !dbg !2261, !tbaa !2161
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2262
  br i1 %55, label %57, label %56, !dbg !2264

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #10, !dbg !2265
  br label %57, !dbg !2265

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2081, metadata !590) #10, !dbg !2266
  %58 = tail call noalias i8* @xmalloc(i64 %54) #10, !dbg !2268
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !2199, metadata !590), !dbg !2246
  store i8* %58, i8** %39, align 8, !dbg !2269, !tbaa !2146
  %59 = load i32, i32* %44, align 8, !dbg !2270, !tbaa !886
  %60 = load i8*, i8** %47, align 8, !dbg !2271, !tbaa !975
  %61 = load i8*, i8** %49, align 8, !dbg !2272, !tbaa !978
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !2273
  br label %63, !dbg !2274

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !2199, metadata !590), !dbg !2246
  store i32 %6, i32* %5, align 4, !dbg !2275, !tbaa !663
  ret i8* %64, !dbg !2276
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #9

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #9

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2277 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2281, metadata !590), !dbg !2284
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2282, metadata !590), !dbg !2285
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2283, metadata !590), !dbg !2286
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2287
  ret i8* %4, !dbg !2288
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !2289 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2293, metadata !590), !dbg !2294
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2178, metadata !590) #10, !dbg !2295
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2179, metadata !590) #10, !dbg !2297
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2298
  ret i8* %2, !dbg !2299
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !2300 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2304, metadata !590), !dbg !2306
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2305, metadata !590), !dbg !2307
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2281, metadata !590) #10, !dbg !2308
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2282, metadata !590) #10, !dbg !2310
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2283, metadata !590) #10, !dbg !2311
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2312
  ret i8* %3, !dbg !2313
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !2314 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2322, metadata !2328), !dbg !2329
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2318, metadata !590), !dbg !2331
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2319, metadata !590), !dbg !2332
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2320, metadata !590), !dbg !2333
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2334
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !2334
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2321, metadata !1438), !dbg !2335
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2327, metadata !590) #10, !dbg !2336
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2337
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !2337
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2322, metadata !590) #10, !dbg !2329
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2322, metadata !2338) #10, !dbg !2329
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2329
  %8 = icmp eq i32 %1, 10, !dbg !2339
  br i1 %8, label %9, label %10, !dbg !2341

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14, !dbg !2342, !noalias !2343
  unreachable, !dbg !2342

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2322, metadata !2338) #10, !dbg !2329
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2346
  store i32 %1, i32* %11, align 8, !dbg !2346, !alias.scope !2343
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2346
  %13 = bitcast i32* %12 to i8*, !dbg !2346
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !2346
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !2347
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2321, metadata !1438), !dbg !2335
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2348
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !2349
  ret i8* %14, !dbg !2350
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !2351 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2322, metadata !2328), !dbg !2360
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2355, metadata !590), !dbg !2362
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2356, metadata !590), !dbg !2363
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2357, metadata !590), !dbg !2364
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2358, metadata !590), !dbg !2365
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2366
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10, !dbg !2366
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2359, metadata !1438), !dbg !2367
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2327, metadata !590) #10, !dbg !2368
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2369
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !2369
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2322, metadata !590) #10, !dbg !2360
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2322, metadata !2338) #10, !dbg !2360
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2360
  %9 = icmp eq i32 %1, 10, !dbg !2370
  br i1 %9, label %10, label %11, !dbg !2371

; <label>:10:                                     ; preds = %4
  tail call void @abort() #14, !dbg !2372, !noalias !2373
  unreachable, !dbg !2372

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2322, metadata !2338) #10, !dbg !2360
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2376
  store i32 %1, i32* %12, align 8, !dbg !2376, !alias.scope !2373
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2376
  %14 = bitcast i32* %13 to i8*, !dbg !2376
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #10, !dbg !2376
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !2377
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2359, metadata !1438), !dbg !2367
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !2378
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10, !dbg !2379
  ret i8* %15, !dbg !2380
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !2381 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !2322, metadata !2328), !dbg !2387
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2385, metadata !590), !dbg !2390
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2386, metadata !590), !dbg !2391
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2318, metadata !590) #10, !dbg !2392
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2319, metadata !590) #10, !dbg !2393
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2320, metadata !590) #10, !dbg !2394
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2395
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10, !dbg !2395
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2321, metadata !1438) #10, !dbg !2396
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2327, metadata !590) #10, !dbg !2397
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !2398
  call void @llvm.lifetime.start(i64 52, i8* nonnull %6), !dbg !2398
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2322, metadata !590) #10, !dbg !2387
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2322, metadata !2338) #10, !dbg !2387
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !2387
  %7 = icmp eq i32 %0, 10, !dbg !2399
  br i1 %7, label %8, label %9, !dbg !2400

; <label>:8:                                      ; preds = %2
  tail call void @abort() #14, !dbg !2401, !noalias !2402
  unreachable, !dbg !2401

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2322, metadata !2338) #10, !dbg !2387
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2405
  store i32 %0, i32* %10, align 8, !dbg !2405, !alias.scope !2402
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2405
  %12 = bitcast i32* %11 to i8*, !dbg !2405
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #10, !dbg !2405
  call void @llvm.lifetime.end(i64 52, i8* nonnull %6), !dbg !2406
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2321, metadata !1438) #10, !dbg !2396
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !2407
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10, !dbg !2408
  ret i8* %13, !dbg !2409
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2410 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2322, metadata !2328), !dbg !2417
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2414, metadata !590), !dbg !2420
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2415, metadata !590), !dbg !2421
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2416, metadata !590), !dbg !2422
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2355, metadata !590) #10, !dbg !2423
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2356, metadata !590) #10, !dbg !2424
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2357, metadata !590) #10, !dbg !2425
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2358, metadata !590) #10, !dbg !2426
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2427
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !2427
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2359, metadata !1438) #10, !dbg !2428
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2327, metadata !590) #10, !dbg !2429
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2430
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !2430
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2322, metadata !590) #10, !dbg !2417
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2322, metadata !2338) #10, !dbg !2417
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2417
  %8 = icmp eq i32 %0, 10, !dbg !2431
  br i1 %8, label %9, label %10, !dbg !2432

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14, !dbg !2433, !noalias !2434
  unreachable, !dbg !2433

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2322, metadata !2338) #10, !dbg !2417
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2437
  store i32 %0, i32* %11, align 8, !dbg !2437, !alias.scope !2434
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2437
  %13 = bitcast i32* %12 to i8*, !dbg !2437
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !2437
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !2438
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2359, metadata !1438) #10, !dbg !2428
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #10, !dbg !2439
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !2440
  ret i8* %14, !dbg !2441
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !2442 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2446, metadata !590), !dbg !2450
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2447, metadata !590), !dbg !2451
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2448, metadata !590), !dbg !2452
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2453
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10, !dbg !2453
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2454, !tbaa.struct !2455
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2449, metadata !1438), !dbg !2456
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !906, metadata !590), !dbg !2457
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !907, metadata !590), !dbg !2459
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !908, metadata !590), !dbg !2460
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !909, metadata !590), !dbg !2461
  %6 = lshr i8 %2, 5, !dbg !2462
  %7 = zext i8 %6 to i64, !dbg !2462
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2463
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !910, metadata !590), !dbg !2464
  %9 = and i8 %2, 31, !dbg !2465
  %10 = zext i8 %9 to i32, !dbg !2466
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !912, metadata !590), !dbg !2467
  %11 = load i32, i32* %8, align 4, !dbg !2468, !tbaa !663
  %12 = lshr i32 %11, %10, !dbg !2469
  %13 = and i32 %12, 1, !dbg !2470
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !913, metadata !590), !dbg !2471
  %14 = xor i32 %13, 1, !dbg !2472
  %15 = shl i32 %14, %10, !dbg !2473
  %16 = xor i32 %15, %11, !dbg !2474
  store i32 %16, i32* %8, align 4, !dbg !2474, !tbaa !663
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2449, metadata !1438), !dbg !2456
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2475
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10, !dbg !2476
  ret i8* %17, !dbg !2477
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !2478 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2482, metadata !590), !dbg !2484
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2483, metadata !590), !dbg !2485
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2446, metadata !590) #10, !dbg !2486
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2447, metadata !590) #10, !dbg !2488
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2448, metadata !590) #10, !dbg !2489
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2490
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #10, !dbg !2490
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2491, !tbaa.struct !2455
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2449, metadata !1438) #10, !dbg !2492
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !906, metadata !590) #10, !dbg !2493
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !907, metadata !590) #10, !dbg !2495
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !908, metadata !590) #10, !dbg !2496
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !909, metadata !590) #10, !dbg !2497
  %5 = lshr i8 %1, 5, !dbg !2498
  %6 = zext i8 %5 to i64, !dbg !2498
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2499
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !910, metadata !590) #10, !dbg !2500
  %8 = and i8 %1, 31, !dbg !2501
  %9 = zext i8 %8 to i32, !dbg !2502
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !912, metadata !590) #10, !dbg !2503
  %10 = load i32, i32* %7, align 4, !dbg !2504, !tbaa !663
  %11 = lshr i32 %10, %9, !dbg !2505
  %12 = and i32 %11, 1, !dbg !2506
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !913, metadata !590) #10, !dbg !2507
  %13 = xor i32 %12, 1, !dbg !2508
  %14 = shl i32 %13, %9, !dbg !2509
  %15 = xor i32 %14, %10, !dbg !2510
  store i32 %15, i32* %7, align 4, !dbg !2510, !tbaa !663
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2449, metadata !1438) #10, !dbg !2492
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #10, !dbg !2511
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #10, !dbg !2512
  ret i8* %16, !dbg !2513
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !2514 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2516, metadata !590), !dbg !2517
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2482, metadata !590) #10, !dbg !2518
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2483, metadata !590) #10, !dbg !2520
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2446, metadata !590) #10, !dbg !2521
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2447, metadata !590) #10, !dbg !2523
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2448, metadata !590) #10, !dbg !2524
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2525
  call void @llvm.lifetime.start(i64 56, i8* nonnull %3) #10, !dbg !2525
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2526, !tbaa.struct !2455
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2449, metadata !1438) #10, !dbg !2527
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !906, metadata !590) #10, !dbg !2528
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !907, metadata !590) #10, !dbg !2530
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !908, metadata !590) #10, !dbg !2531
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !909, metadata !590) #10, !dbg !2532
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2533
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !910, metadata !590) #10, !dbg !2534
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !912, metadata !590) #10, !dbg !2535
  %5 = load i32, i32* %4, align 4, !dbg !2536, !tbaa !663
  %6 = or i32 %5, 67108864, !dbg !2537
  store i32 %6, i32* %4, align 4, !dbg !2537, !tbaa !663
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2449, metadata !1438) #10, !dbg !2527
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #10, !dbg !2538
  call void @llvm.lifetime.end(i64 56, i8* nonnull %3) #10, !dbg !2539
  ret i8* %7, !dbg !2540
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !2541 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2543, metadata !590), !dbg !2545
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2544, metadata !590), !dbg !2546
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2446, metadata !590) #10, !dbg !2547
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2447, metadata !590) #10, !dbg !2549
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2448, metadata !590) #10, !dbg !2550
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2551
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #10, !dbg !2551
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2552, !tbaa.struct !2455
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2449, metadata !1438) #10, !dbg !2553
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !906, metadata !590) #10, !dbg !2554
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !907, metadata !590) #10, !dbg !2556
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !908, metadata !590) #10, !dbg !2557
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !909, metadata !590) #10, !dbg !2558
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2559
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !910, metadata !590) #10, !dbg !2560
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !912, metadata !590) #10, !dbg !2561
  %6 = load i32, i32* %5, align 4, !dbg !2562, !tbaa !663
  %7 = or i32 %6, 67108864, !dbg !2563
  store i32 %7, i32* %5, align 4, !dbg !2563, !tbaa !663
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2449, metadata !1438) #10, !dbg !2553
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #10, !dbg !2564
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #10, !dbg !2565
  ret i8* %8, !dbg !2566
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !2567 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2322, metadata !2328), !dbg !2573
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2569, metadata !590), !dbg !2575
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2570, metadata !590), !dbg !2576
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2571, metadata !590), !dbg !2577
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2578
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10, !dbg !2578
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2327, metadata !590) #10, !dbg !2579
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2580
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !2580
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2322, metadata !590) #10, !dbg !2573
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2322, metadata !2338) #10, !dbg !2573
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2573
  %9 = icmp eq i32 %1, 10, !dbg !2581
  br i1 %9, label %10, label %11, !dbg !2582

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !2583, !noalias !2584
  unreachable, !dbg !2583

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2322, metadata !2338) #10, !dbg !2573
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !2587
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !2587
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !2588
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2589
  store i32 %1, i32* %13, align 8, !dbg !2589
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2589
  %15 = bitcast i32* %14 to i8*, !dbg !2589
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !2589
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2572, metadata !1438), !dbg !2590
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !906, metadata !590), !dbg !2591
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !907, metadata !590), !dbg !2593
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !908, metadata !590), !dbg !2594
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !909, metadata !590), !dbg !2595
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !2596
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !910, metadata !590), !dbg !2597
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !912, metadata !590), !dbg !2598
  %17 = load i32, i32* %16, align 4, !dbg !2599, !tbaa !663
  %18 = or i32 %17, 67108864, !dbg !2600
  store i32 %18, i32* %16, align 4, !dbg !2600, !tbaa !663
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2572, metadata !1438), !dbg !2590
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2601
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10, !dbg !2602
  ret i8* %19, !dbg !2603
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !2604 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2608, metadata !590), !dbg !2612
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2609, metadata !590), !dbg !2613
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2610, metadata !590), !dbg !2614
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2611, metadata !590), !dbg !2615
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2616, metadata !590) #10, !dbg !2626
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2621, metadata !590) #10, !dbg !2628
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2622, metadata !590) #10, !dbg !2629
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2623, metadata !590) #10, !dbg !2630
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2624, metadata !590) #10, !dbg !2631
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2632
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !2632
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2633, !tbaa.struct !2455
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2625, metadata !1438) #10, !dbg !2634
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !956, metadata !590) #10, !dbg !2635
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !957, metadata !590) #10, !dbg !2637
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !958, metadata !590) #10, !dbg !2638
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !956, metadata !590) #10, !dbg !2635
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !956, metadata !590) #10, !dbg !2635
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2639
  store i32 10, i32* %7, align 8, !dbg !2640, !tbaa !886
  %8 = icmp ne i8* %1, null, !dbg !2641
  %9 = icmp ne i8* %2, null, !dbg !2642
  %10 = and i1 %8, %9, !dbg !2643
  br i1 %10, label %12, label %11, !dbg !2643

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14, !dbg !2644
  unreachable, !dbg !2644

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2645
  store i8* %1, i8** %13, align 8, !dbg !2646, !tbaa !975
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2647
  store i8* %2, i8** %14, align 8, !dbg !2648, !tbaa !978
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2625, metadata !1438) #10, !dbg !2634
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #10, !dbg !2649
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !2650
  ret i8* %15, !dbg !2651
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !2617 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2616, metadata !590), !dbg !2652
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2621, metadata !590), !dbg !2653
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2622, metadata !590), !dbg !2654
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2623, metadata !590), !dbg !2655
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !2624, metadata !590), !dbg !2656
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2657
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10, !dbg !2657
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2658, !tbaa.struct !2455
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2625, metadata !1438), !dbg !2659
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !956, metadata !590) #10, !dbg !2660
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !957, metadata !590) #10, !dbg !2662
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !958, metadata !590) #10, !dbg !2663
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !956, metadata !590) #10, !dbg !2660
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !956, metadata !590) #10, !dbg !2660
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2664
  store i32 10, i32* %8, align 8, !dbg !2665, !tbaa !886
  %9 = icmp ne i8* %1, null, !dbg !2666
  %10 = icmp ne i8* %2, null, !dbg !2667
  %11 = and i1 %9, %10, !dbg !2668
  br i1 %11, label %13, label %12, !dbg !2668

; <label>:12:                                     ; preds = %5
  tail call void @abort() #14, !dbg !2669
  unreachable, !dbg !2669

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2670
  store i8* %1, i8** %14, align 8, !dbg !2671, !tbaa !975
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2672
  store i8* %2, i8** %15, align 8, !dbg !2673, !tbaa !978
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2625, metadata !1438), !dbg !2659
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2674
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10, !dbg !2675
  ret i8* %16, !dbg !2676
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !2677 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2681, metadata !590), !dbg !2684
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2682, metadata !590), !dbg !2685
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2683, metadata !590), !dbg !2686
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2608, metadata !590) #10, !dbg !2687
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2609, metadata !590) #10, !dbg !2689
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2610, metadata !590) #10, !dbg !2690
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2611, metadata !590) #10, !dbg !2691
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2616, metadata !590) #10, !dbg !2692
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2621, metadata !590) #10, !dbg !2694
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2622, metadata !590) #10, !dbg !2695
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2623, metadata !590) #10, !dbg !2696
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2624, metadata !590) #10, !dbg !2697
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2698
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10, !dbg !2698
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2699, !tbaa.struct !2455
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2625, metadata !1438) #10, !dbg !2700
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !956, metadata !590) #10, !dbg !2701
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !957, metadata !590) #10, !dbg !2703
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !958, metadata !590) #10, !dbg !2704
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !956, metadata !590) #10, !dbg !2701
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !956, metadata !590) #10, !dbg !2701
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2705
  store i32 10, i32* %6, align 8, !dbg !2706, !tbaa !886
  %7 = icmp ne i8* %0, null, !dbg !2707
  %8 = icmp ne i8* %1, null, !dbg !2708
  %9 = and i1 %7, %8, !dbg !2709
  br i1 %9, label %11, label %10, !dbg !2709

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !2710
  unreachable, !dbg !2710

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2711
  store i8* %0, i8** %12, align 8, !dbg !2712, !tbaa !975
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2713
  store i8* %1, i8** %13, align 8, !dbg !2714, !tbaa !978
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2625, metadata !1438) #10, !dbg !2700
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !2715
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10, !dbg !2716
  ret i8* %14, !dbg !2717
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !2718 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2722, metadata !590), !dbg !2726
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2723, metadata !590), !dbg !2727
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2724, metadata !590), !dbg !2728
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2725, metadata !590), !dbg !2729
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2616, metadata !590) #10, !dbg !2730
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2621, metadata !590) #10, !dbg !2732
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2622, metadata !590) #10, !dbg !2733
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2623, metadata !590) #10, !dbg !2734
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2624, metadata !590) #10, !dbg !2735
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2736
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !2736
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2737, !tbaa.struct !2455
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2625, metadata !1438) #10, !dbg !2738
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !956, metadata !590) #10, !dbg !2739
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !957, metadata !590) #10, !dbg !2741
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !958, metadata !590) #10, !dbg !2742
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !956, metadata !590) #10, !dbg !2739
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !956, metadata !590) #10, !dbg !2739
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2743
  store i32 10, i32* %7, align 8, !dbg !2744, !tbaa !886
  %8 = icmp ne i8* %0, null, !dbg !2745
  %9 = icmp ne i8* %1, null, !dbg !2746
  %10 = and i1 %8, %9, !dbg !2747
  br i1 %10, label %12, label %11, !dbg !2747

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14, !dbg !2748
  unreachable, !dbg !2748

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2749
  store i8* %0, i8** %13, align 8, !dbg !2750, !tbaa !975
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2751
  store i8* %1, i8** %14, align 8, !dbg !2752, !tbaa !978
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2625, metadata !1438) #10, !dbg !2738
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #10, !dbg !2753
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !2754
  ret i8* %15, !dbg !2755
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2756 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2760, metadata !590), !dbg !2763
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2761, metadata !590), !dbg !2764
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2762, metadata !590), !dbg !2765
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2766
  ret i8* %4, !dbg !2767
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !2768 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2772, metadata !590), !dbg !2774
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2773, metadata !590), !dbg !2775
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2760, metadata !590) #10, !dbg !2776
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2761, metadata !590) #10, !dbg !2778
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2762, metadata !590) #10, !dbg !2779
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2780
  ret i8* %3, !dbg !2781
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !2782 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2786, metadata !590), !dbg !2788
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2787, metadata !590), !dbg !2789
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2760, metadata !590) #10, !dbg !2790
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2761, metadata !590) #10, !dbg !2792
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2762, metadata !590) #10, !dbg !2793
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2794
  ret i8* %3, !dbg !2795
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !2796 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2800, metadata !590), !dbg !2801
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2786, metadata !590) #10, !dbg !2802
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2787, metadata !590) #10, !dbg !2804
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2760, metadata !590) #10, !dbg !2805
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2761, metadata !590) #10, !dbg !2807
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2762, metadata !590) #10, !dbg !2808
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2809
  ret i8* %2, !dbg !2810
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !2811 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2868, metadata !590), !dbg !2874
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2869, metadata !590), !dbg !2875
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2870, metadata !590), !dbg !2876
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2871, metadata !590), !dbg !2877
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !2872, metadata !590), !dbg !2878
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !2873, metadata !590), !dbg !2879
  %7 = icmp eq i8* %1, null, !dbg !2880
  br i1 %7, label %10, label %8, !dbg !2882

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.60, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #10, !dbg !2883
  br label %12, !dbg !2883

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.61, i64 0, i64 0), i8* %2, i8* %3) #10, !dbg !2884
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.62, i64 0, i64 0), i32 5) #10, !dbg !2885
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #10, !dbg !2886
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.63, i64 0, i64 0), i32 5) #10, !dbg !2888
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #10, !dbg !2889
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
  ], !dbg !2890

; <label>:17:                                     ; preds = %12
  tail call void @abort() #14, !dbg !2891
  unreachable, !dbg !2891

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.64, i64 0, i64 0), i32 5) #10, !dbg !2893
  %20 = load i8*, i8** %4, align 8, !dbg !2893, !tbaa !598
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #10, !dbg !2894
  br label %146, !dbg !2896

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.65, i64 0, i64 0), i32 5) #10, !dbg !2897
  %24 = load i8*, i8** %4, align 8, !dbg !2897, !tbaa !598
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2897
  %26 = load i8*, i8** %25, align 8, !dbg !2897, !tbaa !598
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #10, !dbg !2898
  br label %146, !dbg !2899

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.66, i64 0, i64 0), i32 5) #10, !dbg !2900
  %30 = load i8*, i8** %4, align 8, !dbg !2900, !tbaa !598
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2900
  %32 = load i8*, i8** %31, align 8, !dbg !2900, !tbaa !598
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2900
  %34 = load i8*, i8** %33, align 8, !dbg !2900, !tbaa !598
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #10, !dbg !2901
  br label %146, !dbg !2902

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.67, i64 0, i64 0), i32 5) #10, !dbg !2903
  %38 = load i8*, i8** %4, align 8, !dbg !2903, !tbaa !598
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2903
  %40 = load i8*, i8** %39, align 8, !dbg !2903, !tbaa !598
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2903
  %42 = load i8*, i8** %41, align 8, !dbg !2903, !tbaa !598
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2903
  %44 = load i8*, i8** %43, align 8, !dbg !2903, !tbaa !598
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #10, !dbg !2904
  br label %146, !dbg !2905

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.68, i64 0, i64 0), i32 5) #10, !dbg !2906
  %48 = load i8*, i8** %4, align 8, !dbg !2906, !tbaa !598
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2906
  %50 = load i8*, i8** %49, align 8, !dbg !2906, !tbaa !598
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2906
  %52 = load i8*, i8** %51, align 8, !dbg !2906, !tbaa !598
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2906
  %54 = load i8*, i8** %53, align 8, !dbg !2906, !tbaa !598
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2906
  %56 = load i8*, i8** %55, align 8, !dbg !2906, !tbaa !598
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #10, !dbg !2907
  br label %146, !dbg !2908

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.69, i64 0, i64 0), i32 5) #10, !dbg !2909
  %60 = load i8*, i8** %4, align 8, !dbg !2909, !tbaa !598
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2909
  %62 = load i8*, i8** %61, align 8, !dbg !2909, !tbaa !598
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2909
  %64 = load i8*, i8** %63, align 8, !dbg !2909, !tbaa !598
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2909
  %66 = load i8*, i8** %65, align 8, !dbg !2909, !tbaa !598
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2909
  %68 = load i8*, i8** %67, align 8, !dbg !2909, !tbaa !598
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2909
  %70 = load i8*, i8** %69, align 8, !dbg !2909, !tbaa !598
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #10, !dbg !2910
  br label %146, !dbg !2911

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.70, i64 0, i64 0), i32 5) #10, !dbg !2912
  %74 = load i8*, i8** %4, align 8, !dbg !2912, !tbaa !598
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2912
  %76 = load i8*, i8** %75, align 8, !dbg !2912, !tbaa !598
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2912
  %78 = load i8*, i8** %77, align 8, !dbg !2912, !tbaa !598
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2912
  %80 = load i8*, i8** %79, align 8, !dbg !2912, !tbaa !598
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2912
  %82 = load i8*, i8** %81, align 8, !dbg !2912, !tbaa !598
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2912
  %84 = load i8*, i8** %83, align 8, !dbg !2912, !tbaa !598
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2912
  %86 = load i8*, i8** %85, align 8, !dbg !2912, !tbaa !598
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #10, !dbg !2913
  br label %146, !dbg !2914

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.71, i64 0, i64 0), i32 5) #10, !dbg !2915
  %90 = load i8*, i8** %4, align 8, !dbg !2915, !tbaa !598
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2915
  %92 = load i8*, i8** %91, align 8, !dbg !2915, !tbaa !598
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2915
  %94 = load i8*, i8** %93, align 8, !dbg !2915, !tbaa !598
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2915
  %96 = load i8*, i8** %95, align 8, !dbg !2915, !tbaa !598
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2915
  %98 = load i8*, i8** %97, align 8, !dbg !2915, !tbaa !598
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2915
  %100 = load i8*, i8** %99, align 8, !dbg !2915, !tbaa !598
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2915
  %102 = load i8*, i8** %101, align 8, !dbg !2915, !tbaa !598
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2915
  %104 = load i8*, i8** %103, align 8, !dbg !2915, !tbaa !598
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #10, !dbg !2916
  br label %146, !dbg !2917

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.72, i64 0, i64 0), i32 5) #10, !dbg !2918
  %108 = load i8*, i8** %4, align 8, !dbg !2918, !tbaa !598
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2918
  %110 = load i8*, i8** %109, align 8, !dbg !2918, !tbaa !598
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2918
  %112 = load i8*, i8** %111, align 8, !dbg !2918, !tbaa !598
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2918
  %114 = load i8*, i8** %113, align 8, !dbg !2918, !tbaa !598
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2918
  %116 = load i8*, i8** %115, align 8, !dbg !2918, !tbaa !598
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2918
  %118 = load i8*, i8** %117, align 8, !dbg !2918, !tbaa !598
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2918
  %120 = load i8*, i8** %119, align 8, !dbg !2918, !tbaa !598
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2918
  %122 = load i8*, i8** %121, align 8, !dbg !2918, !tbaa !598
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2918
  %124 = load i8*, i8** %123, align 8, !dbg !2918, !tbaa !598
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #10, !dbg !2919
  br label %146, !dbg !2920

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.73, i64 0, i64 0), i32 5) #10, !dbg !2921
  %128 = load i8*, i8** %4, align 8, !dbg !2921, !tbaa !598
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2921
  %130 = load i8*, i8** %129, align 8, !dbg !2921, !tbaa !598
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2921
  %132 = load i8*, i8** %131, align 8, !dbg !2921, !tbaa !598
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2921
  %134 = load i8*, i8** %133, align 8, !dbg !2921, !tbaa !598
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2921
  %136 = load i8*, i8** %135, align 8, !dbg !2921, !tbaa !598
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2921
  %138 = load i8*, i8** %137, align 8, !dbg !2921, !tbaa !598
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2921
  %140 = load i8*, i8** %139, align 8, !dbg !2921, !tbaa !598
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2921
  %142 = load i8*, i8** %141, align 8, !dbg !2921, !tbaa !598
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2921
  %144 = load i8*, i8** %143, align 8, !dbg !2921, !tbaa !598
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #10, !dbg !2922
  br label %146, !dbg !2923

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !2924
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !2925 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2929, metadata !590), !dbg !2935
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2930, metadata !590), !dbg !2936
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2931, metadata !590), !dbg !2937
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2932, metadata !590), !dbg !2938
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !2933, metadata !590), !dbg !2939
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2934, metadata !590), !dbg !2940
  br label %6, !dbg !2941

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !2934, metadata !590), !dbg !2940
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2943
  %9 = load i8*, i8** %8, align 8, !dbg !2943, !tbaa !598
  %10 = icmp eq i8* %9, null, !dbg !2946
  %11 = add i64 %7, 1, !dbg !2948
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !2934, metadata !590), !dbg !2940
  br i1 %10, label %12, label %6, !dbg !2946, !llvm.loop !2950

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !2953
  ret void, !dbg !2954
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !2955 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2966, metadata !590), !dbg !2974
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2967, metadata !590), !dbg !2975
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2968, metadata !590), !dbg !2976
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2969, metadata !590), !dbg !2977
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !2970, metadata !590), !dbg !2978
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !2979
  call void @llvm.lifetime.start(i64 80, i8* nonnull %7) #10, !dbg !2979
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2972, metadata !590), !dbg !2980
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2971, metadata !590), !dbg !2981
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2971, metadata !590), !dbg !2981
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %11 = load i32, i32* %8, align 8, !dbg !2982
  %12 = icmp ult i32 %11, 41, !dbg !2982
  br i1 %12, label %13, label %18, !dbg !2982

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !2986
  %15 = sext i32 %11 to i64, !dbg !2986
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !2986
  %17 = add i32 %11, 8, !dbg !2986
  store i32 %17, i32* %8, align 8, !dbg !2986
  br label %21, !dbg !2986

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !2988
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !2988
  store i8* %20, i8** %10, align 8, !dbg !2988
  br label %21, !dbg !2988

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ], !dbg !2982
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !2990
  %25 = load i8*, i8** %24, align 8, !dbg !2990
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !2992
  store i8* %25, i8** %26, align 16, !dbg !2993, !tbaa !598
  %27 = icmp eq i8* %25, null, !dbg !2994
  br i1 %27, label %30, label %28, !dbg !2995

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2971, metadata !590), !dbg !2981
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2971, metadata !590), !dbg !2981
  %29 = icmp ult i32 %22, 41, !dbg !2982
  br i1 %29, label %35, label %32, !dbg !2982

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !2997
  call void @llvm.lifetime.end(i64 80, i8* nonnull %7) #10, !dbg !2998
  ret void, !dbg !2998

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !2988
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !2988
  store i8* %34, i8** %10, align 8, !dbg !2988
  br label %40, !dbg !2988

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !2986
  %37 = sext i32 %22 to i64, !dbg !2986
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !2986
  %39 = add i32 %22, 8, !dbg !2986
  store i32 %39, i32* %8, align 8, !dbg !2986
  br label %40, !dbg !2986

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ], !dbg !2982
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !2990
  %44 = load i8*, i8** %43, align 8, !dbg !2990
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !2992
  store i8* %44, i8** %45, align 8, !dbg !2993, !tbaa !598
  %46 = icmp eq i8* %44, null, !dbg !2994
  br i1 %46, label %30, label %47, !dbg !2995

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2971, metadata !590), !dbg !2981
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2971, metadata !590), !dbg !2981
  %48 = icmp ult i32 %41, 41, !dbg !2982
  br i1 %48, label %52, label %49, !dbg !2982

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !2988
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !2988
  store i8* %51, i8** %10, align 8, !dbg !2988
  br label %57, !dbg !2988

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !2986
  %54 = sext i32 %41 to i64, !dbg !2986
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !2986
  %56 = add i32 %41, 8, !dbg !2986
  store i32 %56, i32* %8, align 8, !dbg !2986
  br label %57, !dbg !2986

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ], !dbg !2982
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !2990
  %61 = load i8*, i8** %60, align 8, !dbg !2990
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !2992
  store i8* %61, i8** %62, align 16, !dbg !2993, !tbaa !598
  %63 = icmp eq i8* %61, null, !dbg !2994
  br i1 %63, label %30, label %64, !dbg !2995

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2971, metadata !590), !dbg !2981
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2971, metadata !590), !dbg !2981
  %65 = icmp ult i32 %58, 41, !dbg !2982
  br i1 %65, label %69, label %66, !dbg !2982

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !2988
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !2988
  store i8* %68, i8** %10, align 8, !dbg !2988
  br label %74, !dbg !2988

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !2986
  %71 = sext i32 %58 to i64, !dbg !2986
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !2986
  %73 = add i32 %58, 8, !dbg !2986
  store i32 %73, i32* %8, align 8, !dbg !2986
  br label %74, !dbg !2986

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ], !dbg !2982
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !2990
  %78 = load i8*, i8** %77, align 8, !dbg !2990
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !2992
  store i8* %78, i8** %79, align 8, !dbg !2993, !tbaa !598
  %80 = icmp eq i8* %78, null, !dbg !2994
  br i1 %80, label %30, label %81, !dbg !2995

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2971, metadata !590), !dbg !2981
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2971, metadata !590), !dbg !2981
  %82 = icmp ult i32 %75, 41, !dbg !2982
  br i1 %82, label %86, label %83, !dbg !2982

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !2988
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !2988
  store i8* %85, i8** %10, align 8, !dbg !2988
  br label %91, !dbg !2988

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !2986
  %88 = sext i32 %75 to i64, !dbg !2986
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !2986
  %90 = add i32 %75, 8, !dbg !2986
  store i32 %90, i32* %8, align 8, !dbg !2986
  br label %91, !dbg !2986

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ], !dbg !2982
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !2990
  %95 = load i8*, i8** %94, align 8, !dbg !2990
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !2992
  store i8* %95, i8** %96, align 16, !dbg !2993, !tbaa !598
  %97 = icmp eq i8* %95, null, !dbg !2994
  br i1 %97, label %30, label %98, !dbg !2995

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2971, metadata !590), !dbg !2981
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2971, metadata !590), !dbg !2981
  %99 = icmp ult i32 %92, 41, !dbg !2982
  br i1 %99, label %103, label %100, !dbg !2982

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !2988
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !2988
  store i8* %102, i8** %10, align 8, !dbg !2988
  br label %108, !dbg !2988

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !2986
  %105 = sext i32 %92 to i64, !dbg !2986
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !2986
  %107 = add i32 %92, 8, !dbg !2986
  store i32 %107, i32* %8, align 8, !dbg !2986
  br label %108, !dbg !2986

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !2990
  %111 = load i8*, i8** %110, align 8, !dbg !2990
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !2992
  store i8* %111, i8** %112, align 8, !dbg !2993, !tbaa !598
  %113 = icmp eq i8* %111, null, !dbg !2994
  br i1 %113, label %30, label %114, !dbg !2995

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2971, metadata !590), !dbg !2981
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2971, metadata !590), !dbg !2981
  %115 = load i8*, i8** %10, align 8, !dbg !2988
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !2988
  store i8* %116, i8** %10, align 8, !dbg !2988
  %117 = bitcast i8* %115 to i8**, !dbg !2990
  %118 = load i8*, i8** %117, align 8, !dbg !2990
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !2992
  store i8* %118, i8** %119, align 16, !dbg !2993, !tbaa !598
  %120 = icmp eq i8* %118, null, !dbg !2994
  br i1 %120, label %30, label %121, !dbg !2995

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2971, metadata !590), !dbg !2981
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2971, metadata !590), !dbg !2981
  %122 = load i8*, i8** %10, align 8, !dbg !2988
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !2988
  store i8* %123, i8** %10, align 8, !dbg !2988
  %124 = bitcast i8* %122 to i8**, !dbg !2990
  %125 = load i8*, i8** %124, align 8, !dbg !2990
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !2992
  store i8* %125, i8** %126, align 8, !dbg !2993, !tbaa !598
  %127 = icmp eq i8* %125, null, !dbg !2994
  br i1 %127, label %30, label %128, !dbg !2995

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2971, metadata !590), !dbg !2981
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2971, metadata !590), !dbg !2981
  %129 = load i8*, i8** %10, align 8, !dbg !2988
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !2988
  store i8* %130, i8** %10, align 8, !dbg !2988
  %131 = bitcast i8* %129 to i8**, !dbg !2990
  %132 = load i8*, i8** %131, align 8, !dbg !2990
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !2992
  store i8* %132, i8** %133, align 16, !dbg !2993, !tbaa !598
  %134 = icmp eq i8* %132, null, !dbg !2994
  br i1 %134, label %30, label %135, !dbg !2995

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2971, metadata !590), !dbg !2981
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2971, metadata !590), !dbg !2981
  %136 = load i8*, i8** %10, align 8, !dbg !2988
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !2988
  store i8* %137, i8** %10, align 8, !dbg !2988
  %138 = bitcast i8* %136 to i8**, !dbg !2990
  %139 = load i8*, i8** %138, align 8, !dbg !2990
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !2992
  store i8* %139, i8** %140, align 8, !dbg !2993, !tbaa !598
  %141 = icmp eq i8* %139, null, !dbg !2994
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2971, metadata !590), !dbg !2981
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2971, metadata !590), !dbg !2981
  %142 = select i1 %141, i64 9, i64 10, !dbg !2995
  br label %30, !dbg !2995
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !2999 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3003, metadata !590), !dbg !3012
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3004, metadata !590), !dbg !3013
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3005, metadata !590), !dbg !3014
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3006, metadata !590), !dbg !3015
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3016
  call void @llvm.lifetime.start(i64 24, i8* nonnull %6) #10, !dbg !3016
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3007, metadata !590), !dbg !3017
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3018
  call void @llvm.va_start(i8* nonnull %6), !dbg !3018
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3019
  call void @llvm.va_end(i8* nonnull %6), !dbg !3020
  call void @llvm.lifetime.end(i64 24, i8* nonnull %6) #10, !dbg !3021
  ret void, !dbg !3021
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !3022 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.76, i64 0, i64 0), i32 5) #10, !dbg !3023
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.77, i64 0, i64 0)) #10, !dbg !3024
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0), i32 5) #10, !dbg !3026
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.78, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.79, i64 0, i64 0)) #10, !dbg !3027
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19, i64 0, i64 0), i32 5) #10, !dbg !3028
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3028, !tbaa !598
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #10, !dbg !3029
  ret void, !dbg !3030
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #12 !dbg !3031 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3035, metadata !590), !dbg !3037
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3036, metadata !590), !dbg !3038
  %3 = udiv i64 9223372036854775807, %1, !dbg !3039
  %4 = icmp ult i64 %3, %0, !dbg !3039
  br i1 %4, label %5, label %6, !dbg !3041

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !3042
  unreachable, !dbg !3042

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3043
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3044, metadata !590) #10, !dbg !3051
  %8 = tail call noalias i8* @malloc(i64 %7) #10, !dbg !3053
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3050, metadata !590) #10, !dbg !3054
  %9 = icmp eq i8* %8, null, !dbg !3055
  %10 = icmp ne i64 %7, 0, !dbg !3057
  %11 = and i1 %10, %9, !dbg !3059
  br i1 %11, label %12, label %13, !dbg !3059

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #14, !dbg !3060
  unreachable, !dbg !3060

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !3061
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !3045 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3044, metadata !590), !dbg !3062
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3063
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3050, metadata !590), !dbg !3064
  %3 = icmp eq i8* %2, null, !dbg !3065
  %4 = icmp ne i64 %0, 0, !dbg !3066
  %5 = and i1 %4, %3, !dbg !3067
  br i1 %5, label %6, label %7, !dbg !3067

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3068
  unreachable, !dbg !3068

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3069
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #12 !dbg !3070 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3074, metadata !590), !dbg !3077
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3075, metadata !590), !dbg !3078
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3076, metadata !590), !dbg !3079
  %4 = udiv i64 9223372036854775807, %2, !dbg !3080
  %5 = icmp ult i64 %4, %1, !dbg !3080
  br i1 %5, label %6, label %7, !dbg !3082

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #14, !dbg !3083
  unreachable, !dbg !3083

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3084
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3085, metadata !590) #10, !dbg !3091
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !3090, metadata !590) #10, !dbg !3093
  %9 = icmp eq i64 %8, 0, !dbg !3094
  %10 = icmp ne i8* %0, null, !dbg !3096
  %11 = and i1 %10, %9, !dbg !3098
  br i1 %11, label %12, label %13, !dbg !3098

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #10, !dbg !3099
  br label %19, !dbg !3101

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #10, !dbg !3102
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !3085, metadata !590) #10, !dbg !3091
  %15 = icmp eq i8* %14, null, !dbg !3103
  %16 = icmp ne i64 %8, 0, !dbg !3105
  %17 = and i1 %16, %15, !dbg !3107
  br i1 %17, label %18, label %19, !dbg !3107

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !3108
  unreachable, !dbg !3108

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !3109
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !3086 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3085, metadata !590), !dbg !3110
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3090, metadata !590), !dbg !3111
  %3 = icmp eq i64 %1, 0, !dbg !3112
  %4 = icmp ne i8* %0, null, !dbg !3113
  %5 = and i1 %4, %3, !dbg !3114
  br i1 %5, label %6, label %7, !dbg !3114

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #10, !dbg !3115
  br label %13, !dbg !3116

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #10, !dbg !3117
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3085, metadata !590), !dbg !3110
  %9 = icmp eq i8* %8, null, !dbg !3118
  %10 = icmp ne i64 %1, 0, !dbg !3119
  %11 = and i1 %10, %9, !dbg !3120
  br i1 %11, label %12, label %13, !dbg !3120

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #14, !dbg !3121
  unreachable, !dbg !3121

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !3122
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #12 !dbg !550 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !555, metadata !590), !dbg !3123
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !556, metadata !590), !dbg !3124
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !557, metadata !590), !dbg !3125
  %4 = load i64, i64* %1, align 8, !dbg !3126, !tbaa !2127
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !558, metadata !590), !dbg !3127
  %5 = icmp eq i8* %0, null, !dbg !3128
  br i1 %5, label %6, label %13, !dbg !3130

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3131
  br i1 %7, label %8, label %17, !dbg !3134

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3135
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !558, metadata !590), !dbg !3127
  %10 = icmp ugt i64 %2, 128, !dbg !3137
  %11 = zext i1 %10 to i64, !dbg !3137
  %12 = add nuw nsw i64 %9, %11, !dbg !3138
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !558, metadata !590), !dbg !3127
  br label %17, !dbg !3139

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !3140
  %15 = icmp ugt i64 %14, %4, !dbg !3143
  br i1 %15, label %20, label %16, !dbg !3144

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !3145
  unreachable, !dbg !3145

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !558, metadata !590), !dbg !3127
  store i64 %18, i64* %1, align 8, !dbg !3146, !tbaa !2127
  %19 = mul i64 %18, %2, !dbg !3147
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3085, metadata !590) #10, !dbg !3148
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3090, metadata !590) #10, !dbg !3150
  br label %27, !dbg !3151

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !3152
  %22 = add i64 %4, 1, !dbg !3153
  %23 = add i64 %22, %21, !dbg !3154
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !558, metadata !590), !dbg !3127
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !558, metadata !590), !dbg !3127
  store i64 %23, i64* %1, align 8, !dbg !3146, !tbaa !2127
  %24 = mul i64 %23, %2, !dbg !3147
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3085, metadata !590) #10, !dbg !3148
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3090, metadata !590) #10, !dbg !3150
  %25 = icmp eq i64 %24, 0, !dbg !3155
  br i1 %25, label %26, label %27, !dbg !3151

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #10, !dbg !3156
  br label %34, !dbg !3157

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #10, !dbg !3158
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3085, metadata !590) #10, !dbg !3148
  %30 = icmp eq i8* %29, null, !dbg !3159
  %31 = icmp ne i64 %28, 0, !dbg !3160
  %32 = and i1 %31, %30, !dbg !3161
  br i1 %32, label %33, label %34, !dbg !3161

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #14, !dbg !3162
  unreachable, !dbg !3162

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !3163
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #12 !dbg !3164 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3166, metadata !590), !dbg !3167
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3044, metadata !590) #10, !dbg !3168
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3170
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3050, metadata !590) #10, !dbg !3171
  %3 = icmp eq i8* %2, null, !dbg !3172
  %4 = icmp ne i64 %0, 0, !dbg !3173
  %5 = and i1 %4, %3, !dbg !3174
  br i1 %5, label %6, label %7, !dbg !3174

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3175
  unreachable, !dbg !3175

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3176
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !3177 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3181, metadata !590), !dbg !3183
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !3182, metadata !590), !dbg !3184
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !555, metadata !590) #10, !dbg !3185
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !556, metadata !590) #10, !dbg !3187
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !557, metadata !590) #10, !dbg !3188
  %3 = load i64, i64* %1, align 8, !dbg !3189, !tbaa !2127
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !558, metadata !590) #10, !dbg !3190
  %4 = icmp eq i8* %0, null, !dbg !3191
  br i1 %4, label %5, label %8, !dbg !3192

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3193
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !558, metadata !590) #10, !dbg !3190
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !558, metadata !590) #10, !dbg !3190
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3194
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !558, metadata !590) #10, !dbg !3190
  store i64 %7, i64* %1, align 8, !dbg !3195, !tbaa !2127
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3085, metadata !590) #10, !dbg !3196
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3090, metadata !590) #10, !dbg !3198
  br label %17, !dbg !3199

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !3200
  br i1 %9, label %11, label %10, !dbg !3201

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #14, !dbg !3202
  unreachable, !dbg !3202

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !3203
  %13 = add i64 %3, 1, !dbg !3204
  %14 = add i64 %13, %12, !dbg !3205
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !558, metadata !590) #10, !dbg !3190
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !558, metadata !590) #10, !dbg !3190
  store i64 %14, i64* %1, align 8, !dbg !3195, !tbaa !2127
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3085, metadata !590) #10, !dbg !3196
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3090, metadata !590) #10, !dbg !3198
  %15 = icmp eq i64 %14, 0, !dbg !3206
  br i1 %15, label %16, label %17, !dbg !3199

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #10, !dbg !3207
  br label %24, !dbg !3208

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #10, !dbg !3209
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !3085, metadata !590) #10, !dbg !3196
  %20 = icmp eq i8* %19, null, !dbg !3210
  %21 = icmp ne i64 %18, 0, !dbg !3211
  %22 = and i1 %21, %20, !dbg !3212
  br i1 %22, label %23, label %24, !dbg !3212

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #14, !dbg !3213
  unreachable, !dbg !3213

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !3214
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !3215 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3217, metadata !590), !dbg !3218
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3044, metadata !590) #10, !dbg !3219
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3221
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3050, metadata !590) #10, !dbg !3222
  %3 = icmp eq i8* %2, null, !dbg !3223
  %4 = icmp ne i64 %0, 0, !dbg !3224
  %5 = and i1 %4, %3, !dbg !3225
  br i1 %5, label %6, label %7, !dbg !3225

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3226
  unreachable, !dbg !3226

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !3227
  ret i8* %2, !dbg !3228
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !3229 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3231, metadata !590), !dbg !3234
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3232, metadata !590), !dbg !3235
  %3 = udiv i64 9223372036854775807, %1, !dbg !3236
  %4 = icmp ult i64 %3, %0, !dbg !3236
  br i1 %4, label %8, label %5, !dbg !3238

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #10, !dbg !3239
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3233, metadata !590), !dbg !3241
  %7 = icmp eq i8* %6, null, !dbg !3242
  br i1 %7, label %8, label %9, !dbg !3243

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #14, !dbg !3245
  unreachable, !dbg !3245

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !3246
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !3247 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3251, metadata !590), !dbg !3253
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3252, metadata !590), !dbg !3254
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3044, metadata !590) #10, !dbg !3255
  %3 = tail call noalias i8* @malloc(i64 %1) #10, !dbg !3257
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3050, metadata !590) #10, !dbg !3258
  %4 = icmp eq i8* %3, null, !dbg !3259
  %5 = icmp ne i64 %1, 0, !dbg !3260
  %6 = and i1 %5, %4, !dbg !3261
  br i1 %6, label %7, label %8, !dbg !3261

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !3262
  unreachable, !dbg !3262

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !3263
  ret i8* %3, !dbg !3264
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !3265 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3267, metadata !590), !dbg !3268
  %2 = tail call i64 @strlen(i8* %0) #13, !dbg !3269
  %3 = add i64 %2, 1, !dbg !3270
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3251, metadata !590) #10, !dbg !3271
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3252, metadata !590) #10, !dbg !3274
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3044, metadata !590) #10, !dbg !3275
  %4 = tail call noalias i8* @malloc(i64 %3) #10, !dbg !3277
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !3050, metadata !590) #10, !dbg !3278
  %5 = icmp eq i8* %4, null, !dbg !3279
  %6 = icmp ne i64 %3, 0, !dbg !3280
  %7 = and i1 %6, %5, !dbg !3281
  br i1 %7, label %8, label %9, !dbg !3281

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3282
  unreachable, !dbg !3282

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #10, !dbg !3283
  ret i8* %4, !dbg !3284
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !3285 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3287, !tbaa !663
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.90, i64 0, i64 0), i32 5) #10, !dbg !3288
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.91, i64 0, i64 0), i8* %2) #10, !dbg !3289
  tail call void @abort() #14, !dbg !3291
  unreachable, !dbg !3291
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !3292 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3295, metadata !590), !dbg !3301
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3296, metadata !590), !dbg !3302
  %3 = icmp eq i64 %0, 0, !dbg !3303
  %4 = icmp eq i64 %1, 0, !dbg !3304
  %5 = or i1 %3, %4, !dbg !3306
  br i1 %5, label %12, label %6, !dbg !3306

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3307
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3298, metadata !590), !dbg !3308
  %8 = udiv i64 %7, %1, !dbg !3309
  %9 = icmp eq i64 %8, %0, !dbg !3311
  br i1 %9, label %12, label %10, !dbg !3312

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #1, !dbg !3313
  store i32 12, i32* %11, align 4, !dbg !3315, !tbaa !663
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3295, metadata !590), !dbg !3301
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !3296, metadata !590), !dbg !3302
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #10, !dbg !3316
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !3297, metadata !590), !dbg !3317
  br label %16, !dbg !3318

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !3319
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !3320 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !3337, metadata !590), !dbg !3346
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3338, metadata !590), !dbg !3347
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3339, metadata !590), !dbg !3348
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !3340, metadata !590), !dbg !3349
  %6 = bitcast i32* %5 to i8*, !dbg !3350
  call void @llvm.lifetime.start(i64 4, i8* nonnull %6) #10, !dbg !3350
  %7 = icmp eq i32* %0, null, !dbg !3351
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !3337, metadata !590), !dbg !3346
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3353
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !3337, metadata !590), !dbg !3346
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #10, !dbg !3354
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !3341, metadata !590), !dbg !3355
  %10 = icmp ugt i64 %9, -3, !dbg !3356
  %11 = icmp ne i64 %2, 0, !dbg !3357
  %12 = and i1 %11, %10, !dbg !3359
  br i1 %12, label %13, label %18, !dbg !3359

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #10, !dbg !3360
  br i1 %14, label %18, label %15, !dbg !3362

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3364, !tbaa !1113
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !3343, metadata !590), !dbg !3365
  %17 = zext i8 %16 to i32, !dbg !3366
  store i32 %17, i32* %8, align 4, !dbg !3367, !tbaa !663
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end(i64 4, i8* nonnull %6) #10, !dbg !3368
  ret i64 %19, !dbg !3368
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !3369 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3414, metadata !590), !dbg !3419
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #10, !dbg !3420
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3421, metadata !590), !dbg !3425
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3427
  %4 = load i32, i32* %3, align 8, !dbg !3427, !tbaa !3428
  %5 = and i32 %4, 32, !dbg !3427
  %6 = icmp eq i32 %5, 0, !dbg !3430
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #10, !dbg !3431
  %8 = icmp ne i32 %7, 0, !dbg !3432
  br i1 %6, label %9, label %19, !dbg !3433

; <label>:9:                                      ; preds = %1
  %10 = xor i1 %8, true, !dbg !3435
  %11 = icmp ne i64 %2, 0, !dbg !3435
  %12 = or i1 %11, %10, !dbg !3435
  %13 = sext i1 %8 to i32, !dbg !3435
  br i1 %12, label %22, label %14, !dbg !3435

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #1, !dbg !3437
  %16 = load i32, i32* %15, align 4, !dbg !3437, !tbaa !663
  %17 = icmp ne i32 %16, 9, !dbg !3439
  %18 = sext i1 %17 to i32, !dbg !3439
  br label %22, !dbg !3439

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !3441

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #1, !dbg !3443
  store i32 0, i32* %21, align 4, !dbg !3445, !tbaa !663
  br label %22, !dbg !3443

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !3446
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !3447 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3452, metadata !590), !dbg !3472
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3453, metadata !590), !dbg !3473
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #10, !dbg !3474
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3454, metadata !590), !dbg !3475
  %3 = icmp eq i8* %2, null, !dbg !3476
  br i1 %3, label %15, label %4, !dbg !3477

; <label>:4:                                      ; preds = %1
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3462, metadata !590), !dbg !3478
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3463, metadata !590), !dbg !3479
  %5 = load i8, i8* %2, align 1, !dbg !3480, !tbaa !1113
  %6 = icmp eq i8 %5, 67, !dbg !3482
  br i1 %6, label %7, label %11, !dbg !3485

; <label>:7:                                      ; preds = %4
  %8 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !3487
  %9 = load i8, i8* %8, align 1, !dbg !3487, !tbaa !1113
  %10 = icmp eq i8 %9, 0, !dbg !3490
  br i1 %10, label %14, label %11, !dbg !3492

; <label>:11:                                     ; preds = %4, %7
  tail call void @llvm.dbg.value(metadata i64 5, i64 0, metadata !3468, metadata !590), !dbg !3494
  %12 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.100, i64 0, i64 0)) #10, !dbg !3495
  %13 = icmp eq i32 %12, 0, !dbg !3497
  br i1 %13, label %14, label %15, !dbg !3499

; <label>:14:                                     ; preds = %11, %7
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3453, metadata !590), !dbg !3473
  br label %15, !dbg !3501

; <label>:15:                                     ; preds = %1, %11, %14
  %16 = phi i1 [ false, %14 ], [ true, %11 ], [ true, %1 ]
  ret i1 %16, !dbg !3502
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !3503 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !3515, metadata !590), !dbg !3589
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !3582, metadata !590), !dbg !3591
  %3 = tail call i8* @nl_langinfo(i32 14) #10, !dbg !3592
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3507, metadata !590), !dbg !3593
  %4 = icmp eq i8* %3, null, !dbg !3594
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.103, i64 0, i64 0), i8* %3, !dbg !3596
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !3507, metadata !590), !dbg !3593
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !3597, !tbaa !598
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3529, metadata !590) #10, !dbg !3598
  %7 = icmp eq i8* %6, null, !dbg !3599
  br i1 %7, label %8, label %127, !dbg !3600

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.104, i64 0, i64 0)) #10, !dbg !3601
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !3530, metadata !590) #10, !dbg !3602
  %10 = icmp eq i8* %9, null, !dbg !3603
  br i1 %10, label %14, label %11, !dbg !3605

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !3606, !tbaa !1113
  %13 = icmp eq i8 %12, 0, !dbg !3608
  br i1 %13, label %14, label %15, !dbg !3609

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !3611

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.105, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !3530, metadata !590) #10, !dbg !3602
  %17 = tail call i64 @strlen(i8* nonnull %16) #13, !dbg !3612
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !3533, metadata !590) #10, !dbg !3613
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !3535, metadata !590) #10, !dbg !3614
  %18 = icmp eq i64 %17, 0, !dbg !3615
  br i1 %18, label %24, label %19, !dbg !3616

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !3617
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !3617
  %22 = load i8, i8* %21, align 1, !dbg !3617, !tbaa !1113
  %23 = icmp ne i8 %22, 47, !dbg !3619
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !3620
  %27 = add i64 %17, 14, !dbg !3621
  %28 = add i64 %27, %26, !dbg !3622
  %29 = tail call noalias i8* @malloc(i64 %28) #10, !dbg !3623
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3532, metadata !590) #10, !dbg !3624
  %30 = icmp eq i8* %29, null, !dbg !3625
  br i1 %30, label %125, label %31, !dbg !3625

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #10, !dbg !3626
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !3629

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !3630, !tbaa !1113
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !3632
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.106, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !3633
  br label %37, !dbg !3634

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !3632
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.106, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !3633
  br label %37, !dbg !3634

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #10, !dbg !3635
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !3537, metadata !590) #10, !dbg !3636
  %39 = icmp slt i32 %38, 0, !dbg !3637
  br i1 %39, label %123, label %40, !dbg !3638

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.107, i64 0, i64 0)) #10, !dbg !3639
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3538, metadata !590) #10, !dbg !3640
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !3641
  br i1 %42, label %48, label %43, !dbg !3642

; <label>:43:                                     ; preds = %40
  %44 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %45 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %46 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %47 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !3643

; <label>:48:                                     ; preds = %40
  %49 = tail call i32 @close(i32 %38) #10, !dbg !3644
  br label %123, !dbg !3646

; <label>:50:                                     ; preds = %111, %43
  %51 = phi i64 [ %112, %111 ], [ 0, %43 ]
  %52 = phi i8* [ %113, %111 ], [ null, %43 ]
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3579, metadata !590) #10, !dbg !3643
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !3580, metadata !590) #10, !dbg !3647
  call void @llvm.lifetime.start(i64 51, i8* nonnull %44) #10, !dbg !3648
  call void @llvm.lifetime.start(i64 51, i8* nonnull %45) #10, !dbg !3649
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3650, metadata !590) #10, !dbg !3655
  %53 = load i8*, i8** %46, align 8, !dbg !3657, !tbaa !3658
  %54 = load i8*, i8** %47, align 8, !dbg !3657, !tbaa !3659
  %55 = icmp ult i8* %53, %54, !dbg !3657
  br i1 %55, label %58, label %56, !dbg !3657, !prof !3660

; <label>:56:                                     ; preds = %50
  %57 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !3661
  br label %62, !dbg !3661

; <label>:58:                                     ; preds = %50
  %59 = getelementptr inbounds i8, i8* %53, i64 1, !dbg !3663
  store i8* %59, i8** %46, align 8, !dbg !3663, !tbaa !3658
  %60 = load i8, i8* %53, align 1, !dbg !3663, !tbaa !1113
  %61 = zext i8 %60 to i32, !dbg !3663
  br label %62, !dbg !3663

; <label>:62:                                     ; preds = %58, %56
  %63 = phi i32 [ %57, %56 ], [ %61, %58 ], !dbg !3665
  call void @llvm.dbg.value(metadata i32 %63, i64 0, metadata !3581, metadata !590) #10, !dbg !3667
  switch i32 %63, label %77 [
    i32 -1, label %115
    i32 32, label %111
    i32 10, label %111
    i32 9, label %111
    i32 35, label %64
  ], !dbg !3668

; <label>:64:                                     ; preds = %62
  br label %65, !dbg !3669

; <label>:65:                                     ; preds = %64, %75
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3650, metadata !590) #10, !dbg !3669
  %66 = load i8*, i8** %46, align 8, !dbg !3673, !tbaa !3658
  %67 = load i8*, i8** %47, align 8, !dbg !3673, !tbaa !3659
  %68 = icmp ult i8* %66, %67, !dbg !3673
  br i1 %68, label %71, label %69, !dbg !3673, !prof !3660

; <label>:69:                                     ; preds = %65
  %70 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !3674
  br label %75, !dbg !3674

; <label>:71:                                     ; preds = %65
  %72 = getelementptr inbounds i8, i8* %66, i64 1, !dbg !3675
  store i8* %72, i8** %46, align 8, !dbg !3675, !tbaa !3658
  %73 = load i8, i8* %66, align 1, !dbg !3675, !tbaa !1113
  %74 = zext i8 %73 to i32, !dbg !3675
  br label %75, !dbg !3675

; <label>:75:                                     ; preds = %71, %69
  %76 = phi i32 [ %70, %69 ], [ %74, %71 ], !dbg !3676
  call void @llvm.dbg.value(metadata i32 %76, i64 0, metadata !3581, metadata !590) #10, !dbg !3667
  switch i32 %76, label %65 [
    i32 -1, label %114
    i32 10, label %110
  ], !dbg !3677, !llvm.loop !3679

; <label>:77:                                     ; preds = %62
  %78 = call i32 @ungetc(i32 %63, %struct._IO_FILE* nonnull %41) #10, !dbg !3682
  %79 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.108, i64 0, i64 0), i8* nonnull %44, i8* nonnull %45) #10, !dbg !3683
  %80 = icmp slt i32 %79, 2, !dbg !3685
  br i1 %80, label %115, label %81, !dbg !3686

; <label>:81:                                     ; preds = %77
  %82 = call i64 @strlen(i8* nonnull %44) #13, !dbg !3687
  call void @llvm.dbg.value(metadata i64 %82, i64 0, metadata !3586, metadata !590) #10, !dbg !3688
  %83 = call i64 @strlen(i8* nonnull %45) #13, !dbg !3689
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !3587, metadata !590) #10, !dbg !3690
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3588, metadata !590) #10, !dbg !3691
  %84 = icmp eq i64 %51, 0, !dbg !3692
  %85 = add i64 %82, 1
  %86 = add i64 %85, %83
  %87 = add i64 %86, 1
  br i1 %84, label %88, label %91, !dbg !3694

; <label>:88:                                     ; preds = %81
  call void @llvm.dbg.value(metadata i64 %87, i64 0, metadata !3580, metadata !590) #10, !dbg !3647
  %89 = add i64 %86, 2, !dbg !3695
  %90 = call noalias i8* @malloc(i64 %89) #10, !dbg !3697
  call void @llvm.dbg.value(metadata i8* %90, i64 0, metadata !3579, metadata !590) #10, !dbg !3643
  br label %95, !dbg !3698

; <label>:91:                                     ; preds = %81
  %92 = add i64 %87, %51, !dbg !3699
  call void @llvm.dbg.value(metadata i64 %92, i64 0, metadata !3580, metadata !590) #10, !dbg !3647
  %93 = add i64 %92, 1, !dbg !3701
  %94 = call i8* @realloc(i8* %52, i64 %93) #10, !dbg !3702
  call void @llvm.dbg.value(metadata i8* %94, i64 0, metadata !3579, metadata !590) #10, !dbg !3643
  br label %95

; <label>:95:                                     ; preds = %91, %88
  %96 = phi i64 [ %87, %88 ], [ %92, %91 ]
  %97 = phi i8* [ %90, %88 ], [ %94, %91 ]
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !3579, metadata !590) #10, !dbg !3643
  call void @llvm.dbg.value(metadata i64 %96, i64 0, metadata !3580, metadata !590) #10, !dbg !3647
  %98 = icmp eq i8* %97, null, !dbg !3703
  br i1 %98, label %99, label %100, !dbg !3705

; <label>:99:                                     ; preds = %95
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3580, metadata !590) #10, !dbg !3647
  call void @free(i8* %52) #10, !dbg !3706
  br label %116, !dbg !3708

; <label>:100:                                    ; preds = %95
  %101 = getelementptr inbounds i8, i8* %97, i64 %96, !dbg !3709
  %102 = xor i64 %83, -1, !dbg !3710
  %103 = getelementptr inbounds i8, i8* %101, i64 %102, !dbg !3710
  %104 = xor i64 %82, -1, !dbg !3711
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !3711
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !3712, metadata !590) #10, !dbg !3721
  call void @llvm.dbg.value(metadata i8* %44, i64 0, metadata !3720, metadata !590) #10, !dbg !3721
  %106 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false) #10, !dbg !3723
  %107 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %44, i64 %106) #10, !dbg !3724
  call void @llvm.dbg.value(metadata i8* %103, i64 0, metadata !3712, metadata !590) #10, !dbg !3725
  call void @llvm.dbg.value(metadata i8* %45, i64 0, metadata !3720, metadata !590) #10, !dbg !3725
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %103, i1 false) #10, !dbg !3727
  %109 = call i8* @__strcpy_chk(i8* nonnull %103, i8* nonnull %45, i64 %108) #10, !dbg !3728
  br label %111, !dbg !3729

; <label>:110:                                    ; preds = %75
  br label %111, !dbg !3643

; <label>:111:                                    ; preds = %110, %100, %62, %62, %62
  %112 = phi i64 [ %96, %100 ], [ %51, %62 ], [ %51, %62 ], [ %51, %62 ], [ %51, %110 ]
  %113 = phi i8* [ %97, %100 ], [ %52, %62 ], [ %52, %62 ], [ %52, %62 ], [ %52, %110 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !3579, metadata !590) #10, !dbg !3643
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !3580, metadata !590) #10, !dbg !3647
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #10, !dbg !3729
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #10, !dbg !3729
  br label %50

; <label>:114:                                    ; preds = %75
  br label %116, !dbg !3643

; <label>:115:                                    ; preds = %62, %77
  br label %116, !dbg !3643

; <label>:116:                                    ; preds = %115, %114, %99
  %117 = phi i64 [ 0, %99 ], [ %51, %114 ], [ %51, %115 ]
  %118 = phi i8* [ null, %99 ], [ %52, %114 ], [ %52, %115 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !3579, metadata !590) #10, !dbg !3643
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !3580, metadata !590) #10, !dbg !3647
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #10, !dbg !3729
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #10, !dbg !3729
  %119 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #10, !dbg !3730
  %120 = icmp eq i64 %117, 0, !dbg !3731
  br i1 %120, label %123, label %121, !dbg !3733

; <label>:121:                                    ; preds = %116
  %122 = getelementptr inbounds i8, i8* %118, i64 %117, !dbg !3734
  store i8 0, i8* %122, align 1, !dbg !3736, !tbaa !1113
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !3529, metadata !590) #10, !dbg !3598
  br label %123

; <label>:123:                                    ; preds = %121, %116, %48, %37
  %124 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.103, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.103, i64 0, i64 0), %48 ], [ %118, %121 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.103, i64 0, i64 0), %116 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !3529, metadata !590) #10, !dbg !3598
  call void @free(i8* %29) #10, !dbg !3737
  br label %125

; <label>:125:                                    ; preds = %123, %24
  %126 = phi i8* [ %124, %123 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.103, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %126, i64 0, metadata !3529, metadata !590) #10, !dbg !3598
  store volatile i8* %126, i8** @charset_aliases, align 8, !dbg !3738, !tbaa !598
  br label %127, !dbg !3739

; <label>:127:                                    ; preds = %0, %125
  %128 = phi i8* [ %6, %0 ], [ %126, %125 ]
  call void @llvm.dbg.value(metadata i8* %128, i64 0, metadata !3508, metadata !590), !dbg !3740
  %129 = load i8, i8* %128, align 1, !dbg !3741, !tbaa !1113
  %130 = icmp eq i8 %129, 0, !dbg !3742
  br i1 %130, label %157, label %131, !dbg !3743

; <label>:131:                                    ; preds = %127
  br label %132, !dbg !3745

; <label>:132:                                    ; preds = %131, %147
  %133 = phi i8 [ %154, %147 ], [ %129, %131 ]
  %134 = phi i8* [ %153, %147 ], [ %128, %131 ]
  %135 = call i32 @strcmp(i8* %5, i8* %134) #10, !dbg !3745
  %136 = icmp eq i32 %135, 0, !dbg !3746
  br i1 %136, label %143, label %137, !dbg !3747

; <label>:137:                                    ; preds = %132
  %138 = icmp eq i8 %133, 42, !dbg !3748
  br i1 %138, label %139, label %147, !dbg !3750

; <label>:139:                                    ; preds = %137
  %140 = getelementptr inbounds i8, i8* %134, i64 1, !dbg !3751
  %141 = load i8, i8* %140, align 1, !dbg !3751, !tbaa !1113
  %142 = icmp eq i8 %141, 0, !dbg !3753
  br i1 %142, label %143, label %147, !dbg !3754

; <label>:143:                                    ; preds = %139, %132
  %144 = call i64 @strlen(i8* %134) #13, !dbg !3756
  %145 = getelementptr inbounds i8, i8* %134, i64 %144, !dbg !3758
  %146 = getelementptr inbounds i8, i8* %145, i64 1, !dbg !3759
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !3507, metadata !590), !dbg !3593
  br label %157, !dbg !3760

; <label>:147:                                    ; preds = %137, %139
  %148 = call i64 @strlen(i8* %134) #13, !dbg !3761
  %149 = add i64 %148, 1, !dbg !3762
  %150 = getelementptr inbounds i8, i8* %134, i64 %149, !dbg !3763
  call void @llvm.dbg.value(metadata i8* %150, i64 0, metadata !3508, metadata !590), !dbg !3740
  %151 = call i64 @strlen(i8* %150) #13, !dbg !3764
  %152 = add i64 %151, 1, !dbg !3765
  %153 = getelementptr inbounds i8, i8* %150, i64 %152, !dbg !3766
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !3508, metadata !590), !dbg !3740
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !3508, metadata !590), !dbg !3740
  %154 = load i8, i8* %153, align 1, !dbg !3741, !tbaa !1113
  %155 = icmp eq i8 %154, 0, !dbg !3742
  br i1 %155, label %156, label %132, !dbg !3743, !llvm.loop !3767

; <label>:156:                                    ; preds = %147
  br label %157, !dbg !3593

; <label>:157:                                    ; preds = %156, %127, %143
  %158 = phi i8* [ %146, %143 ], [ %5, %127 ], [ %5, %156 ]
  call void @llvm.dbg.value(metadata i8* %158, i64 0, metadata !3507, metadata !590), !dbg !3593
  %159 = load i8, i8* %158, align 1, !dbg !3770, !tbaa !1113
  %160 = icmp eq i8 %159, 0, !dbg !3772
  %161 = select i1 %160, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.109, i64 0, i64 0), i8* %158, !dbg !3773
  call void @llvm.dbg.value(metadata i8* %161, i64 0, metadata !3507, metadata !590), !dbg !3593
  ret i8* %161, !dbg !3774
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
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !3775 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3820, metadata !590), !dbg !3824
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3821, metadata !590), !dbg !3825
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3823, metadata !590), !dbg !3826
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3827
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3822, metadata !590), !dbg !3828
  %3 = icmp slt i32 %2, 0, !dbg !3829
  br i1 %3, label %4, label %6, !dbg !3831

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3832
  br label %24, !dbg !3833

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !3834
  %8 = icmp eq i32 %7, 0, !dbg !3834
  br i1 %8, label %13, label %9, !dbg !3836

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3837
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #10, !dbg !3839
  %12 = icmp eq i64 %11, -1, !dbg !3841
  br i1 %12, label %16, label %13, !dbg !3842

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #10, !dbg !3843
  %15 = icmp eq i32 %14, 0, !dbg !3843
  br i1 %15, label %16, label %18, !dbg !3844

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3821, metadata !590), !dbg !3825
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3846
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !3823, metadata !590), !dbg !3826
  br label %24, !dbg !3847

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #1, !dbg !3848
  %20 = load i32, i32* %19, align 4, !dbg !3848, !tbaa !663
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3821, metadata !590), !dbg !3825
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3821, metadata !590), !dbg !3825
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3846
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !3823, metadata !590), !dbg !3826
  %22 = icmp eq i32 %20, 0, !dbg !3849
  br i1 %22, label %24, label %23, !dbg !3847

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3851, !tbaa !663
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !3823, metadata !590), !dbg !3826
  br label %24, !dbg !3853

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !3854
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
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !3855 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3900, metadata !590), !dbg !3901
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3902
  br i1 %2, label %6, label %3, !dbg !3904

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !3905
  %5 = icmp eq i32 %4, 0, !dbg !3905
  br i1 %5, label %6, label %8, !dbg !3907

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3909
  br label %17, !dbg !3910

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3911, metadata !590) #10, !dbg !3916
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3918
  %10 = load i32, i32* %9, align 8, !dbg !3918, !tbaa !3428
  %11 = and i32 %10, 256, !dbg !3920
  %12 = icmp eq i32 %11, 0, !dbg !3920
  br i1 %12, label %15, label %13, !dbg !3921

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #10, !dbg !3922
  br label %15, !dbg !3922

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3923
  br label %17, !dbg !3924

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !3925
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !3926 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3972, metadata !590), !dbg !3978
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3973, metadata !590), !dbg !3979
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3974, metadata !590), !dbg !3980
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3981
  %5 = load i8*, i8** %4, align 8, !dbg !3981, !tbaa !3659
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3982
  %7 = load i8*, i8** %6, align 8, !dbg !3982, !tbaa !3658
  %8 = icmp eq i8* %5, %7, !dbg !3983
  br i1 %8, label %9, label %28, !dbg !3984

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3985
  %11 = load i8*, i8** %10, align 8, !dbg !3985, !tbaa !3987
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3988
  %13 = load i8*, i8** %12, align 8, !dbg !3988, !tbaa !3989
  %14 = icmp eq i8* %11, %13, !dbg !3990
  br i1 %14, label %15, label %28, !dbg !3991

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3992
  %17 = load i8*, i8** %16, align 8, !dbg !3992, !tbaa !3993
  %18 = icmp eq i8* %17, null, !dbg !3994
  br i1 %18, label %19, label %28, !dbg !3995

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3997
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #10, !dbg !3998
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !3975, metadata !590), !dbg !4000
  %22 = icmp eq i64 %21, -1, !dbg !4001
  br i1 %22, label %30, label %23, !dbg !4003

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4004
  %25 = load i32, i32* %24, align 8, !dbg !4005, !tbaa !3428
  %26 = and i32 %25, -17, !dbg !4005
  store i32 %26, i32* %24, align 8, !dbg !4005, !tbaa !3428
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4006
  store i64 %21, i64* %27, align 8, !dbg !4007, !tbaa !4008
  br label %30, !dbg !4009

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4010
  br label %30, !dbg !4011

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !4012
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
!499 = !DIFile(filename: "src/unlink.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
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
!612 = !DILocation(line: 51, column: 7, scope: !607)
!613 = !DILocation(line: 51, column: 7, scope: !609)
!614 = !DILocation(line: 52, column: 7, scope: !607)
!615 = !DILocation(line: 52, column: 7, scope: !609)
!616 = !DILocation(line: 642, column: 15, scope: !509, inlinedAt: !617)
!617 = distinct !DILocation(line: 53, column: 7, scope: !607)
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
!638 = !DILocation(line: 55, column: 3, scope: !585)
!639 = distinct !DISubprogram(name: "main", scope: !499, file: !499, line: 59, type: !640, isLocal: false, isDefinition: true, scopeLine: 60, flags: DIFlagPrototyped, isOptimized: true, unit: !498, variables: !643)
!640 = !DISubroutineType(types: !641)
!641 = !{!25, !25, !642}
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!643 = !{!644, !645}
!644 = !DILocalVariable(name: "argc", arg: 1, scope: !639, file: !499, line: 59, type: !25)
!645 = !DILocalVariable(name: "argv", arg: 2, scope: !639, file: !499, line: 59, type: !642)
!646 = !DILocation(line: 59, column: 11, scope: !639)
!647 = !DILocation(line: 59, column: 24, scope: !639)
!648 = !DILocation(line: 62, column: 21, scope: !639)
!649 = !DILocation(line: 62, column: 3, scope: !639)
!650 = !DILocation(line: 63, column: 3, scope: !639)
!651 = !DILocation(line: 64, column: 3, scope: !639)
!652 = !DILocation(line: 65, column: 3, scope: !639)
!653 = !DILocation(line: 67, column: 3, scope: !639)
!654 = !DILocation(line: 69, column: 63, scope: !639)
!655 = !DILocation(line: 69, column: 3, scope: !639)
!656 = !DILocation(line: 71, column: 7, scope: !657)
!657 = distinct !DILexicalBlock(scope: !639, file: !499, line: 71, column: 7)
!658 = !DILocation(line: 71, column: 48, scope: !657)
!659 = !DILocation(line: 71, column: 7, scope: !639)
!660 = !DILocation(line: 72, column: 5, scope: !657)
!661 = !DILocation(line: 74, column: 14, scope: !662)
!662 = distinct !DILexicalBlock(scope: !639, file: !499, line: 74, column: 7)
!663 = !{!664, !664, i64 0}
!664 = !{!"int", !600, i64 0}
!665 = !DILocation(line: 74, column: 12, scope: !662)
!666 = !DILocation(line: 74, column: 7, scope: !639)
!667 = !DILocation(line: 76, column: 20, scope: !668)
!668 = distinct !DILexicalBlock(scope: !662, file: !499, line: 75, column: 5)
!669 = !DILocation(line: 76, column: 7, scope: !670)
!670 = !DILexicalBlockFile(scope: !668, file: !499, discriminator: 1)
!671 = !DILocation(line: 77, column: 7, scope: !668)
!672 = !DILocation(line: 74, column: 21, scope: !662)
!673 = !DILocation(line: 80, column: 18, scope: !674)
!674 = distinct !DILexicalBlock(scope: !639, file: !499, line: 80, column: 7)
!675 = !DILocation(line: 80, column: 7, scope: !639)
!676 = !DILocation(line: 82, column: 20, scope: !677)
!677 = distinct !DILexicalBlock(scope: !674, file: !499, line: 81, column: 5)
!678 = !DILocation(line: 82, column: 55, scope: !677)
!679 = !DILocation(line: 82, column: 62, scope: !677)
!680 = !DILocation(line: 82, column: 50, scope: !677)
!681 = !DILocation(line: 82, column: 43, scope: !682)
!682 = !DILexicalBlockFile(scope: !677, file: !499, discriminator: 1)
!683 = !DILocation(line: 82, column: 7, scope: !684)
!684 = !DILexicalBlockFile(scope: !677, file: !499, discriminator: 2)
!685 = !DILocation(line: 83, column: 7, scope: !677)
!686 = !DILocation(line: 86, column: 15, scope: !687)
!687 = distinct !DILexicalBlock(scope: !639, file: !499, line: 86, column: 7)
!688 = !DILocation(line: 86, column: 7, scope: !687)
!689 = !DILocation(line: 86, column: 29, scope: !687)
!690 = !DILocation(line: 86, column: 7, scope: !639)
!691 = !DILocation(line: 87, column: 5, scope: !687)
!692 = !DILocation(line: 87, column: 5, scope: !693)
!693 = !DILexicalBlockFile(scope: !687, file: !499, discriminator: 1)
!694 = !DILocation(line: 87, column: 5, scope: !695)
!695 = !DILexicalBlockFile(scope: !687, file: !499, discriminator: 2)
!696 = !DILocation(line: 87, column: 5, scope: !697)
!697 = !DILexicalBlockFile(scope: !687, file: !499, discriminator: 3)
!698 = !DILocation(line: 89, column: 3, scope: !639)
!699 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !16, file: !16, line: 41, type: !511, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !11, variables: !700)
!700 = !{!701}
!701 = !DILocalVariable(name: "file", arg: 1, scope: !699, file: !16, line: 41, type: !6)
!702 = !DILocation(line: 41, column: 41, scope: !699)
!703 = !DILocation(line: 43, column: 13, scope: !699)
!704 = !DILocation(line: 44, column: 1, scope: !699)
!705 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !16, file: !16, line: 78, type: !706, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !11, variables: !708)
!706 = !DISubroutineType(types: !707)
!707 = !{null, !17}
!708 = !{!709}
!709 = !DILocalVariable(name: "ignore", arg: 1, scope: !705, file: !16, line: 78, type: !17)
!710 = !DIExpression(DW_OP_LLVM_fragment, 0, 1)
!711 = !DILocation(line: 78, column: 37, scope: !705)
!712 = !DILocation(line: 80, column: 16, scope: !705)
!713 = !{!714, !714, i64 0}
!714 = !{!"_Bool", !600, i64 0}
!715 = !DILocation(line: 81, column: 1, scope: !705)
!716 = distinct !DISubprogram(name: "close_stdout", scope: !16, file: !16, line: 107, type: !717, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !11, variables: !719)
!717 = !DISubroutineType(types: !718)
!718 = !{null}
!719 = !{!720}
!720 = !DILocalVariable(name: "write_error", scope: !721, file: !16, line: 112, type: !6)
!721 = distinct !DILexicalBlock(scope: !722, file: !16, line: 111, column: 5)
!722 = distinct !DILexicalBlock(scope: !716, file: !16, line: 109, column: 7)
!723 = !DILocation(line: 109, column: 21, scope: !722)
!724 = !DILocation(line: 109, column: 7, scope: !722)
!725 = !DILocation(line: 109, column: 29, scope: !722)
!726 = !DILocation(line: 110, column: 7, scope: !722)
!727 = !DILocation(line: 110, column: 12, scope: !728)
!728 = !DILexicalBlockFile(scope: !722, file: !16, discriminator: 1)
!729 = !{i8 0, i8 2}
!730 = !DILocation(line: 114, column: 19, scope: !731)
!731 = distinct !DILexicalBlock(scope: !721, file: !16, line: 113, column: 11)
!732 = !DILocation(line: 110, column: 25, scope: !728)
!733 = !DILocation(line: 110, column: 28, scope: !734)
!734 = !DILexicalBlockFile(scope: !722, file: !16, discriminator: 2)
!735 = !DILocation(line: 110, column: 34, scope: !734)
!736 = !DILocation(line: 109, column: 7, scope: !737)
!737 = !DILexicalBlockFile(scope: !716, file: !16, discriminator: 1)
!738 = !DILocation(line: 112, column: 33, scope: !721)
!739 = !DILocation(line: 112, column: 19, scope: !721)
!740 = !DILocation(line: 113, column: 11, scope: !731)
!741 = !DILocation(line: 113, column: 11, scope: !721)
!742 = !DILocation(line: 114, column: 36, scope: !743)
!743 = !DILexicalBlockFile(scope: !731, file: !16, discriminator: 1)
!744 = !DILocation(line: 114, column: 9, scope: !745)
!745 = !DILexicalBlockFile(scope: !731, file: !16, discriminator: 2)
!746 = !DILocation(line: 114, column: 9, scope: !731)
!747 = !DILocation(line: 117, column: 9, scope: !743)
!748 = !DILocation(line: 119, column: 14, scope: !721)
!749 = !DILocation(line: 119, column: 7, scope: !721)
!750 = !DILocation(line: 122, column: 22, scope: !751)
!751 = distinct !DILexicalBlock(scope: !716, file: !16, line: 122, column: 8)
!752 = !DILocation(line: 122, column: 8, scope: !751)
!753 = !DILocation(line: 122, column: 30, scope: !751)
!754 = !DILocation(line: 122, column: 8, scope: !716)
!755 = !DILocation(line: 123, column: 13, scope: !751)
!756 = !DILocation(line: 123, column: 6, scope: !751)
!757 = !DILocation(line: 124, column: 1, scope: !716)
!758 = distinct !DISubprogram(name: "parse_long_options", scope: !31, file: !31, line: 44, type: !759, isLocal: false, isDefinition: true, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: true, unit: !28, variables: !762)
!759 = !DISubroutineType(types: !760)
!760 = !{null, !25, !642, !6, !6, !6, !761, null}
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!762 = !{!763, !764, !765, !766, !767, !768, !769, !770, !771}
!763 = !DILocalVariable(name: "argc", arg: 1, scope: !758, file: !31, line: 44, type: !25)
!764 = !DILocalVariable(name: "argv", arg: 2, scope: !758, file: !31, line: 45, type: !642)
!765 = !DILocalVariable(name: "command_name", arg: 3, scope: !758, file: !31, line: 46, type: !6)
!766 = !DILocalVariable(name: "package", arg: 4, scope: !758, file: !31, line: 47, type: !6)
!767 = !DILocalVariable(name: "version", arg: 5, scope: !758, file: !31, line: 48, type: !6)
!768 = !DILocalVariable(name: "usage_func", arg: 6, scope: !758, file: !31, line: 49, type: !761)
!769 = !DILocalVariable(name: "c", scope: !758, file: !31, line: 52, type: !25)
!770 = !DILocalVariable(name: "saved_opterr", scope: !758, file: !31, line: 53, type: !25)
!771 = !DILocalVariable(name: "authors", scope: !772, file: !31, line: 71, type: !776)
!772 = distinct !DILexicalBlock(scope: !773, file: !31, line: 70, column: 11)
!773 = distinct !DILexicalBlock(scope: !774, file: !31, line: 64, column: 9)
!774 = distinct !DILexicalBlock(scope: !775, file: !31, line: 62, column: 5)
!775 = distinct !DILexicalBlock(scope: !758, file: !31, line: 60, column: 7)
!776 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !777, line: 80, baseType: !778)
!777 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!778 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !779, line: 50, baseType: !780)
!779 = !DIFile(filename: "/usr/bin/../lib/clang/4.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!780 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !29, line: 71, baseType: !781)
!781 = !DICompositeType(tag: DW_TAG_array_type, baseType: !782, size: 192, elements: !788)
!782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !29, line: 71, size: 192, elements: !783)
!783 = !{!784, !785, !786, !787}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !782, file: !29, line: 71, baseType: !113, size: 32)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !782, file: !29, line: 71, baseType: !113, size: 32, offset: 32)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !782, file: !29, line: 71, baseType: !49, size: 64, offset: 64)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !782, file: !29, line: 71, baseType: !49, size: 64, offset: 128)
!788 = !{!789}
!789 = !DISubrange(count: 1)
!790 = !DILocation(line: 44, column: 25, scope: !758)
!791 = !DILocation(line: 45, column: 28, scope: !758)
!792 = !DILocation(line: 46, column: 33, scope: !758)
!793 = !DILocation(line: 47, column: 33, scope: !758)
!794 = !DILocation(line: 48, column: 33, scope: !758)
!795 = !DILocation(line: 49, column: 28, scope: !758)
!796 = !DILocation(line: 55, column: 18, scope: !758)
!797 = !DILocation(line: 53, column: 7, scope: !758)
!798 = !DILocation(line: 58, column: 10, scope: !758)
!799 = !DILocation(line: 60, column: 12, scope: !775)
!800 = !DILocation(line: 61, column: 7, scope: !775)
!801 = !DILocation(line: 61, column: 15, scope: !802)
!802 = !DILexicalBlockFile(scope: !775, file: !31, discriminator: 1)
!803 = !DILocation(line: 52, column: 7, scope: !758)
!804 = !DILocation(line: 60, column: 7, scope: !805)
!805 = !DILexicalBlockFile(scope: !758, file: !31, discriminator: 1)
!806 = !DILocation(line: 66, column: 11, scope: !773)
!807 = !DILocation(line: 67, column: 11, scope: !773)
!808 = !DILocation(line: 71, column: 13, scope: !772)
!809 = !DILocation(line: 71, column: 21, scope: !772)
!810 = !DILocation(line: 72, column: 13, scope: !772)
!811 = !DILocation(line: 73, column: 29, scope: !772)
!812 = !DILocation(line: 73, column: 13, scope: !772)
!813 = !DILocation(line: 74, column: 13, scope: !772)
!814 = !DILocation(line: 84, column: 10, scope: !758)
!815 = !DILocation(line: 88, column: 10, scope: !758)
!816 = !DILocation(line: 89, column: 1, scope: !758)
!817 = distinct !DISubprogram(name: "set_program_name", scope: !52, file: !52, line: 39, type: !511, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !46, variables: !818)
!818 = !{!819, !820, !821}
!819 = !DILocalVariable(name: "argv0", arg: 1, scope: !817, file: !52, line: 39, type: !6)
!820 = !DILocalVariable(name: "slash", scope: !817, file: !52, line: 46, type: !6)
!821 = !DILocalVariable(name: "base", scope: !817, file: !52, line: 47, type: !6)
!822 = !DILocation(line: 39, column: 31, scope: !817)
!823 = !DILocation(line: 51, column: 13, scope: !824)
!824 = distinct !DILexicalBlock(scope: !817, file: !52, line: 51, column: 7)
!825 = !DILocation(line: 51, column: 7, scope: !817)
!826 = !DILocation(line: 55, column: 14, scope: !827)
!827 = distinct !DILexicalBlock(scope: !824, file: !52, line: 52, column: 5)
!828 = !DILocation(line: 54, column: 7, scope: !827)
!829 = !DILocation(line: 56, column: 7, scope: !827)
!830 = !DILocation(line: 59, column: 11, scope: !817)
!831 = !DILocation(line: 46, column: 15, scope: !817)
!832 = !DILocation(line: 60, column: 17, scope: !817)
!833 = !DILocation(line: 60, column: 33, scope: !834)
!834 = !DILexicalBlockFile(scope: !817, file: !52, discriminator: 1)
!835 = !DILocation(line: 60, column: 11, scope: !817)
!836 = !DILocation(line: 47, column: 15, scope: !817)
!837 = !DILocation(line: 61, column: 12, scope: !838)
!838 = distinct !DILexicalBlock(scope: !817, file: !52, line: 61, column: 7)
!839 = !DILocation(line: 61, column: 20, scope: !838)
!840 = !DILocation(line: 61, column: 25, scope: !838)
!841 = !DILocation(line: 61, column: 28, scope: !842)
!842 = !DILexicalBlockFile(scope: !838, file: !52, discriminator: 1)
!843 = !DILocation(line: 61, column: 61, scope: !842)
!844 = !DILocation(line: 61, column: 7, scope: !834)
!845 = !DILocation(line: 64, column: 11, scope: !846)
!846 = distinct !DILexicalBlock(scope: !847, file: !52, line: 64, column: 11)
!847 = distinct !DILexicalBlock(scope: !838, file: !52, line: 62, column: 5)
!848 = !DILocation(line: 64, column: 36, scope: !846)
!849 = !DILocation(line: 64, column: 11, scope: !847)
!850 = !DILocation(line: 66, column: 24, scope: !851)
!851 = distinct !DILexicalBlock(scope: !846, file: !52, line: 65, column: 9)
!852 = !DILocation(line: 70, column: 41, scope: !851)
!853 = !DILocation(line: 72, column: 9, scope: !851)
!854 = !DILocation(line: 84, column: 16, scope: !817)
!855 = !DILocation(line: 90, column: 27, scope: !817)
!856 = !DILocation(line: 92, column: 1, scope: !817)
!857 = distinct !DISubprogram(name: "clone_quoting_options", scope: !100, file: !100, line: 114, type: !858, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !861)
!858 = !DISubroutineType(types: !859)
!859 = !{!860, !860}
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!861 = !{!862, !863, !864}
!862 = !DILocalVariable(name: "o", arg: 1, scope: !857, file: !100, line: 114, type: !860)
!863 = !DILocalVariable(name: "e", scope: !857, file: !100, line: 116, type: !25)
!864 = !DILocalVariable(name: "p", scope: !857, file: !100, line: 117, type: !860)
!865 = !DILocation(line: 114, column: 48, scope: !857)
!866 = !DILocation(line: 116, column: 11, scope: !857)
!867 = !DILocation(line: 116, column: 7, scope: !857)
!868 = !DILocation(line: 117, column: 40, scope: !857)
!869 = !DILocation(line: 117, column: 40, scope: !870)
!870 = !DILexicalBlockFile(scope: !857, file: !100, discriminator: 3)
!871 = !DILocation(line: 117, column: 31, scope: !870)
!872 = !DILocation(line: 117, column: 27, scope: !857)
!873 = !DILocation(line: 119, column: 9, scope: !857)
!874 = !DILocation(line: 120, column: 3, scope: !857)
!875 = distinct !DISubprogram(name: "get_quoting_style", scope: !100, file: !100, line: 125, type: !876, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !880)
!876 = !DISubroutineType(types: !877)
!877 = !{!58, !878}
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!879 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !107)
!880 = !{!881}
!881 = !DILocalVariable(name: "o", arg: 1, scope: !875, file: !100, line: 125, type: !878)
!882 = !DILocation(line: 125, column: 50, scope: !875)
!883 = !DILocation(line: 127, column: 11, scope: !875)
!884 = !DILocation(line: 127, column: 46, scope: !885)
!885 = !DILexicalBlockFile(scope: !875, file: !100, discriminator: 3)
!886 = !{!887, !600, i64 0}
!887 = !{!"quoting_options", !600, i64 0, !664, i64 4, !600, i64 8, !599, i64 40, !599, i64 48}
!888 = !DILocation(line: 127, column: 3, scope: !885)
!889 = distinct !DISubprogram(name: "set_quoting_style", scope: !100, file: !100, line: 133, type: !890, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !892)
!890 = !DISubroutineType(types: !891)
!891 = !{null, !860, !58}
!892 = !{!893, !894}
!893 = !DILocalVariable(name: "o", arg: 1, scope: !889, file: !100, line: 133, type: !860)
!894 = !DILocalVariable(name: "s", arg: 2, scope: !889, file: !100, line: 133, type: !58)
!895 = !DILocation(line: 133, column: 44, scope: !889)
!896 = !DILocation(line: 133, column: 66, scope: !889)
!897 = !DILocation(line: 135, column: 4, scope: !889)
!898 = !DILocation(line: 135, column: 39, scope: !899)
!899 = !DILexicalBlockFile(scope: !889, file: !100, discriminator: 3)
!900 = !DILocation(line: 135, column: 45, scope: !899)
!901 = !DILocation(line: 136, column: 1, scope: !889)
!902 = distinct !DISubprogram(name: "set_char_quoting", scope: !100, file: !100, line: 144, type: !903, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !905)
!903 = !DISubroutineType(types: !904)
!904 = !{!25, !860, !8, !25}
!905 = !{!906, !907, !908, !909, !910, !912, !913}
!906 = !DILocalVariable(name: "o", arg: 1, scope: !902, file: !100, line: 144, type: !860)
!907 = !DILocalVariable(name: "c", arg: 2, scope: !902, file: !100, line: 144, type: !8)
!908 = !DILocalVariable(name: "i", arg: 3, scope: !902, file: !100, line: 144, type: !25)
!909 = !DILocalVariable(name: "uc", scope: !902, file: !100, line: 146, type: !494)
!910 = !DILocalVariable(name: "p", scope: !902, file: !100, line: 147, type: !911)
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!912 = !DILocalVariable(name: "shift", scope: !902, file: !100, line: 149, type: !25)
!913 = !DILocalVariable(name: "r", scope: !902, file: !100, line: 150, type: !25)
!914 = !DILocation(line: 144, column: 43, scope: !902)
!915 = !DILocation(line: 144, column: 51, scope: !902)
!916 = !DILocation(line: 144, column: 58, scope: !902)
!917 = !DILocation(line: 146, column: 17, scope: !902)
!918 = !DILocation(line: 148, column: 6, scope: !902)
!919 = !DILocation(line: 148, column: 62, scope: !920)
!920 = !DILexicalBlockFile(scope: !902, file: !100, discriminator: 3)
!921 = !DILocation(line: 148, column: 57, scope: !920)
!922 = !DILocation(line: 147, column: 17, scope: !902)
!923 = !DILocation(line: 149, column: 18, scope: !902)
!924 = !DILocation(line: 149, column: 15, scope: !902)
!925 = !DILocation(line: 149, column: 7, scope: !902)
!926 = !DILocation(line: 150, column: 12, scope: !902)
!927 = !DILocation(line: 150, column: 15, scope: !902)
!928 = !DILocation(line: 150, column: 25, scope: !902)
!929 = !DILocation(line: 150, column: 7, scope: !902)
!930 = !DILocation(line: 151, column: 13, scope: !902)
!931 = !DILocation(line: 151, column: 18, scope: !902)
!932 = !DILocation(line: 151, column: 23, scope: !902)
!933 = !DILocation(line: 151, column: 6, scope: !902)
!934 = !DILocation(line: 152, column: 3, scope: !902)
!935 = distinct !DISubprogram(name: "set_quoting_flags", scope: !100, file: !100, line: 160, type: !936, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !938)
!936 = !DISubroutineType(types: !937)
!937 = !{!25, !860, !25}
!938 = !{!939, !940, !941}
!939 = !DILocalVariable(name: "o", arg: 1, scope: !935, file: !100, line: 160, type: !860)
!940 = !DILocalVariable(name: "i", arg: 2, scope: !935, file: !100, line: 160, type: !25)
!941 = !DILocalVariable(name: "r", scope: !935, file: !100, line: 162, type: !25)
!942 = !DILocation(line: 160, column: 44, scope: !935)
!943 = !DILocation(line: 160, column: 51, scope: !935)
!944 = !DILocation(line: 163, column: 8, scope: !945)
!945 = distinct !DILexicalBlock(scope: !935, file: !100, line: 163, column: 7)
!946 = !DILocation(line: 163, column: 7, scope: !935)
!947 = !DILocation(line: 165, column: 10, scope: !935)
!948 = !{!887, !664, i64 4}
!949 = !DILocation(line: 162, column: 7, scope: !935)
!950 = !DILocation(line: 166, column: 12, scope: !935)
!951 = !DILocation(line: 167, column: 3, scope: !935)
!952 = distinct !DISubprogram(name: "set_custom_quoting", scope: !100, file: !100, line: 171, type: !953, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !955)
!953 = !DISubroutineType(types: !954)
!954 = !{null, !860, !6, !6}
!955 = !{!956, !957, !958}
!956 = !DILocalVariable(name: "o", arg: 1, scope: !952, file: !100, line: 171, type: !860)
!957 = !DILocalVariable(name: "left_quote", arg: 2, scope: !952, file: !100, line: 172, type: !6)
!958 = !DILocalVariable(name: "right_quote", arg: 3, scope: !952, file: !100, line: 172, type: !6)
!959 = !DILocation(line: 171, column: 45, scope: !952)
!960 = !DILocation(line: 172, column: 33, scope: !952)
!961 = !DILocation(line: 172, column: 57, scope: !952)
!962 = !DILocation(line: 174, column: 8, scope: !963)
!963 = distinct !DILexicalBlock(scope: !952, file: !100, line: 174, column: 7)
!964 = !DILocation(line: 174, column: 7, scope: !952)
!965 = !DILocation(line: 176, column: 6, scope: !952)
!966 = !DILocation(line: 176, column: 12, scope: !952)
!967 = !DILocation(line: 177, column: 8, scope: !968)
!968 = distinct !DILexicalBlock(scope: !952, file: !100, line: 177, column: 7)
!969 = !DILocation(line: 177, column: 23, scope: !970)
!970 = !DILexicalBlockFile(scope: !968, file: !100, discriminator: 1)
!971 = !DILocation(line: 177, column: 19, scope: !968)
!972 = !DILocation(line: 178, column: 5, scope: !968)
!973 = !DILocation(line: 179, column: 6, scope: !952)
!974 = !DILocation(line: 179, column: 17, scope: !952)
!975 = !{!887, !599, i64 40}
!976 = !DILocation(line: 180, column: 6, scope: !952)
!977 = !DILocation(line: 180, column: 18, scope: !952)
!978 = !{!887, !599, i64 48}
!979 = !DILocation(line: 181, column: 1, scope: !952)
!980 = distinct !DISubprogram(name: "quotearg_buffer", scope: !100, file: !100, line: 776, type: !981, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !983)
!981 = !DISubroutineType(types: !982)
!982 = !{!94, !50, !94, !6, !94, !878}
!983 = !{!984, !985, !986, !987, !988, !989, !990, !991}
!984 = !DILocalVariable(name: "buffer", arg: 1, scope: !980, file: !100, line: 776, type: !50)
!985 = !DILocalVariable(name: "buffersize", arg: 2, scope: !980, file: !100, line: 776, type: !94)
!986 = !DILocalVariable(name: "arg", arg: 3, scope: !980, file: !100, line: 777, type: !6)
!987 = !DILocalVariable(name: "argsize", arg: 4, scope: !980, file: !100, line: 777, type: !94)
!988 = !DILocalVariable(name: "o", arg: 5, scope: !980, file: !100, line: 778, type: !878)
!989 = !DILocalVariable(name: "p", scope: !980, file: !100, line: 780, type: !878)
!990 = !DILocalVariable(name: "e", scope: !980, file: !100, line: 781, type: !25)
!991 = !DILocalVariable(name: "r", scope: !980, file: !100, line: 782, type: !94)
!992 = !DILocation(line: 776, column: 24, scope: !980)
!993 = !DILocation(line: 776, column: 39, scope: !980)
!994 = !DILocation(line: 777, column: 30, scope: !980)
!995 = !DILocation(line: 777, column: 42, scope: !980)
!996 = !DILocation(line: 778, column: 48, scope: !980)
!997 = !DILocation(line: 780, column: 37, scope: !980)
!998 = !DILocation(line: 780, column: 33, scope: !980)
!999 = !DILocation(line: 781, column: 11, scope: !980)
!1000 = !DILocation(line: 781, column: 7, scope: !980)
!1001 = !DILocation(line: 783, column: 43, scope: !980)
!1002 = !DILocation(line: 783, column: 53, scope: !980)
!1003 = !DILocation(line: 783, column: 60, scope: !980)
!1004 = !DILocation(line: 784, column: 43, scope: !980)
!1005 = !DILocation(line: 784, column: 58, scope: !980)
!1006 = !DILocation(line: 782, column: 14, scope: !980)
!1007 = !DILocation(line: 782, column: 10, scope: !980)
!1008 = !DILocation(line: 785, column: 9, scope: !980)
!1009 = !DILocation(line: 786, column: 3, scope: !980)
!1010 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !100, file: !100, line: 248, type: !1011, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1015)
!1011 = !DISubroutineType(types: !1012)
!1012 = !{!94, !50, !94, !6, !94, !58, !25, !1013, !6, !6}
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64)
!1014 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !113)
!1015 = !{!1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1040, !1041, !1042, !1043, !1044, !1047, !1048, !1065, !1068, !1069, !1076}
!1016 = !DILocalVariable(name: "buffer", arg: 1, scope: !1010, file: !100, line: 248, type: !50)
!1017 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1010, file: !100, line: 248, type: !94)
!1018 = !DILocalVariable(name: "arg", arg: 3, scope: !1010, file: !100, line: 249, type: !6)
!1019 = !DILocalVariable(name: "argsize", arg: 4, scope: !1010, file: !100, line: 249, type: !94)
!1020 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1010, file: !100, line: 250, type: !58)
!1021 = !DILocalVariable(name: "flags", arg: 6, scope: !1010, file: !100, line: 250, type: !25)
!1022 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1010, file: !100, line: 251, type: !1013)
!1023 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1010, file: !100, line: 252, type: !6)
!1024 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1010, file: !100, line: 253, type: !6)
!1025 = !DILocalVariable(name: "i", scope: !1010, file: !100, line: 255, type: !94)
!1026 = !DILocalVariable(name: "len", scope: !1010, file: !100, line: 256, type: !94)
!1027 = !DILocalVariable(name: "orig_buffersize", scope: !1010, file: !100, line: 257, type: !94)
!1028 = !DILocalVariable(name: "quote_string", scope: !1010, file: !100, line: 258, type: !6)
!1029 = !DILocalVariable(name: "quote_string_len", scope: !1010, file: !100, line: 259, type: !94)
!1030 = !DILocalVariable(name: "backslash_escapes", scope: !1010, file: !100, line: 260, type: !17)
!1031 = !DILocalVariable(name: "unibyte_locale", scope: !1010, file: !100, line: 261, type: !17)
!1032 = !DILocalVariable(name: "elide_outer_quotes", scope: !1010, file: !100, line: 262, type: !17)
!1033 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1010, file: !100, line: 263, type: !17)
!1034 = !DILocalVariable(name: "encountered_single_quote", scope: !1010, file: !100, line: 264, type: !17)
!1035 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1010, file: !100, line: 265, type: !17)
!1036 = !DILocalVariable(name: "c", scope: !1037, file: !100, line: 394, type: !494)
!1037 = distinct !DILexicalBlock(scope: !1038, file: !100, line: 393, column: 5)
!1038 = distinct !DILexicalBlock(scope: !1039, file: !100, line: 392, column: 3)
!1039 = distinct !DILexicalBlock(scope: !1010, file: !100, line: 392, column: 3)
!1040 = !DILocalVariable(name: "esc", scope: !1037, file: !100, line: 395, type: !494)
!1041 = !DILocalVariable(name: "is_right_quote", scope: !1037, file: !100, line: 396, type: !17)
!1042 = !DILocalVariable(name: "escaping", scope: !1037, file: !100, line: 397, type: !17)
!1043 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1037, file: !100, line: 398, type: !17)
!1044 = !DILocalVariable(name: "m", scope: !1045, file: !100, line: 602, type: !94)
!1045 = distinct !DILexicalBlock(scope: !1046, file: !100, line: 600, column: 11)
!1046 = distinct !DILexicalBlock(scope: !1037, file: !100, line: 418, column: 9)
!1047 = !DILocalVariable(name: "printable", scope: !1045, file: !100, line: 604, type: !17)
!1048 = !DILocalVariable(name: "mbstate", scope: !1049, file: !100, line: 613, type: !1051)
!1049 = distinct !DILexicalBlock(scope: !1050, file: !100, line: 612, column: 15)
!1050 = distinct !DILexicalBlock(scope: !1045, file: !100, line: 606, column: 17)
!1051 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1052, line: 107, baseType: !1053)
!1052 = !DIFile(filename: "/usr/include/wchar.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1053 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1052, line: 95, baseType: !1054)
!1054 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1052, line: 83, size: 64, elements: !1055)
!1055 = !{!1056, !1057}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1054, file: !1052, line: 85, baseType: !25, size: 32)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1054, file: !1052, line: 94, baseType: !1058, size: 32, offset: 32)
!1058 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1054, file: !1052, line: 86, size: 32, elements: !1059)
!1059 = !{!1060, !1061}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1058, file: !1052, line: 89, baseType: !113, size: 32)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1058, file: !1052, line: 93, baseType: !1062, size: 32)
!1062 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 32, elements: !1063)
!1063 = !{!1064}
!1064 = !DISubrange(count: 4)
!1065 = !DILocalVariable(name: "w", scope: !1066, file: !100, line: 623, type: !1067)
!1066 = distinct !DILexicalBlock(scope: !1049, file: !100, line: 622, column: 19)
!1067 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !95, line: 90, baseType: !25)
!1068 = !DILocalVariable(name: "bytes", scope: !1066, file: !100, line: 624, type: !94)
!1069 = !DILocalVariable(name: "j", scope: !1070, file: !100, line: 649, type: !94)
!1070 = distinct !DILexicalBlock(scope: !1071, file: !100, line: 648, column: 27)
!1071 = distinct !DILexicalBlock(scope: !1072, file: !100, line: 646, column: 29)
!1072 = distinct !DILexicalBlock(scope: !1073, file: !100, line: 641, column: 23)
!1073 = distinct !DILexicalBlock(scope: !1074, file: !100, line: 633, column: 30)
!1074 = distinct !DILexicalBlock(scope: !1075, file: !100, line: 628, column: 30)
!1075 = distinct !DILexicalBlock(scope: !1066, file: !100, line: 626, column: 25)
!1076 = !DILocalVariable(name: "ilim", scope: !1077, file: !100, line: 676, type: !94)
!1077 = distinct !DILexicalBlock(scope: !1078, file: !100, line: 673, column: 15)
!1078 = distinct !DILexicalBlock(scope: !1045, file: !100, line: 672, column: 17)
!1079 = !DILocation(line: 248, column: 33, scope: !1010)
!1080 = !DILocation(line: 248, column: 48, scope: !1010)
!1081 = !DILocation(line: 249, column: 39, scope: !1010)
!1082 = !DILocation(line: 249, column: 51, scope: !1010)
!1083 = !DILocation(line: 250, column: 46, scope: !1010)
!1084 = !DILocation(line: 250, column: 65, scope: !1010)
!1085 = !DILocation(line: 251, column: 47, scope: !1010)
!1086 = !DILocation(line: 252, column: 39, scope: !1010)
!1087 = !DILocation(line: 253, column: 39, scope: !1010)
!1088 = !DILocation(line: 256, column: 10, scope: !1010)
!1089 = !DILocation(line: 257, column: 10, scope: !1010)
!1090 = !DILocation(line: 258, column: 15, scope: !1010)
!1091 = !DILocation(line: 259, column: 10, scope: !1010)
!1092 = !DILocation(line: 260, column: 8, scope: !1010)
!1093 = !DILocation(line: 261, column: 25, scope: !1010)
!1094 = !DILocation(line: 261, column: 36, scope: !1010)
!1095 = !DILocation(line: 262, column: 8, scope: !1010)
!1096 = !DILocation(line: 263, column: 8, scope: !1010)
!1097 = !DILocation(line: 264, column: 8, scope: !1010)
!1098 = !DILocation(line: 265, column: 8, scope: !1010)
!1099 = !DILocation(line: 265, column: 3, scope: !1010)
!1100 = !DILocation(line: 308, column: 3, scope: !1010)
!1101 = !DILocation(line: 315, column: 11, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !1010, file: !100, line: 309, column: 5)
!1103 = !DILocation(line: 315, column: 12, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !1102, file: !100, line: 315, column: 11)
!1105 = !DILocation(line: 316, column: 9, scope: !1106)
!1106 = !DILexicalBlockFile(scope: !1107, file: !100, discriminator: 1)
!1107 = distinct !DILexicalBlock(scope: !1108, file: !100, line: 316, column: 9)
!1108 = distinct !DILexicalBlock(scope: !1104, file: !100, line: 316, column: 9)
!1109 = !DILocation(line: 316, column: 9, scope: !1110)
!1110 = !DILexicalBlockFile(scope: !1108, file: !100, discriminator: 1)
!1111 = !DILocation(line: 316, column: 9, scope: !1112)
!1112 = !DILexicalBlockFile(scope: !1107, file: !100, discriminator: 2)
!1113 = !{!600, !600, i64 0}
!1114 = !DILocation(line: 354, column: 26, scope: !1115)
!1115 = distinct !DILexicalBlock(scope: !1116, file: !100, line: 332, column: 11)
!1116 = distinct !DILexicalBlock(scope: !1117, file: !100, line: 331, column: 13)
!1117 = distinct !DILexicalBlock(scope: !1102, file: !100, line: 330, column: 7)
!1118 = !DILocation(line: 355, column: 27, scope: !1115)
!1119 = !DILocation(line: 356, column: 11, scope: !1115)
!1120 = !DILocation(line: 357, column: 14, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !1117, file: !100, line: 357, column: 13)
!1122 = !DILocation(line: 357, column: 13, scope: !1117)
!1123 = !DILocation(line: 358, column: 43, scope: !1124)
!1124 = !DILexicalBlockFile(scope: !1125, file: !100, discriminator: 1)
!1125 = distinct !DILexicalBlock(scope: !1126, file: !100, line: 358, column: 11)
!1126 = distinct !DILexicalBlock(scope: !1121, file: !100, line: 358, column: 11)
!1127 = !DILocation(line: 358, column: 11, scope: !1128)
!1128 = !DILexicalBlockFile(scope: !1126, file: !100, discriminator: 1)
!1129 = !DILocation(line: 359, column: 13, scope: !1130)
!1130 = !DILexicalBlockFile(scope: !1131, file: !100, discriminator: 1)
!1131 = distinct !DILexicalBlock(scope: !1132, file: !100, line: 359, column: 13)
!1132 = distinct !DILexicalBlock(scope: !1125, file: !100, line: 359, column: 13)
!1133 = !DILocation(line: 359, column: 13, scope: !1134)
!1134 = !DILexicalBlockFile(scope: !1132, file: !100, discriminator: 1)
!1135 = !DILocation(line: 359, column: 13, scope: !1136)
!1136 = !DILexicalBlockFile(scope: !1131, file: !100, discriminator: 2)
!1137 = !DILocation(line: 359, column: 13, scope: !1138)
!1138 = !DILexicalBlockFile(scope: !1132, file: !100, discriminator: 3)
!1139 = !DILocation(line: 358, column: 70, scope: !1140)
!1140 = !DILexicalBlockFile(scope: !1125, file: !100, discriminator: 2)
!1141 = distinct !{!1141, !1142, !1143}
!1142 = !DILocation(line: 358, column: 11, scope: !1126)
!1143 = !DILocation(line: 359, column: 13, scope: !1126)
!1144 = !DILocation(line: 362, column: 28, scope: !1117)
!1145 = !DILocation(line: 364, column: 7, scope: !1102)
!1146 = !DILocation(line: 367, column: 7, scope: !1102)
!1147 = !DILocation(line: 370, column: 7, scope: !1102)
!1148 = !DILocation(line: 373, column: 12, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1102, file: !100, line: 373, column: 11)
!1150 = !DILocation(line: 373, column: 11, scope: !1102)
!1151 = !DILocation(line: 378, column: 12, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1102, file: !100, line: 378, column: 11)
!1153 = !DILocation(line: 378, column: 11, scope: !1102)
!1154 = !DILocation(line: 379, column: 9, scope: !1155)
!1155 = !DILexicalBlockFile(scope: !1156, file: !100, discriminator: 1)
!1156 = distinct !DILexicalBlock(scope: !1157, file: !100, line: 379, column: 9)
!1157 = distinct !DILexicalBlock(scope: !1152, file: !100, line: 379, column: 9)
!1158 = !DILocation(line: 379, column: 9, scope: !1159)
!1159 = !DILexicalBlockFile(scope: !1157, file: !100, discriminator: 1)
!1160 = !DILocation(line: 379, column: 9, scope: !1161)
!1161 = !DILexicalBlockFile(scope: !1156, file: !100, discriminator: 2)
!1162 = !DILocation(line: 386, column: 7, scope: !1102)
!1163 = !DILocation(line: 389, column: 7, scope: !1102)
!1164 = !DILocation(line: 255, column: 10, scope: !1010)
!1165 = !DILocation(line: 392, column: 8, scope: !1039)
!1166 = !DILocation(line: 392, column: 27, scope: !1167)
!1167 = !DILexicalBlockFile(scope: !1038, file: !100, discriminator: 1)
!1168 = !DILocation(line: 392, column: 19, scope: !1167)
!1169 = !DILocation(line: 392, column: 60, scope: !1170)
!1170 = !DILexicalBlockFile(scope: !1038, file: !100, discriminator: 3)
!1171 = !DILocation(line: 392, column: 3, scope: !1172)
!1172 = !DILexicalBlockFile(scope: !1039, file: !100, discriminator: 4)
!1173 = !DILocation(line: 392, column: 41, scope: !1174)
!1174 = !DILexicalBlockFile(scope: !1038, file: !100, discriminator: 2)
!1175 = !DILocation(line: 392, column: 48, scope: !1174)
!1176 = !DILocation(line: 396, column: 12, scope: !1037)
!1177 = !DILocation(line: 397, column: 12, scope: !1037)
!1178 = !DILocation(line: 398, column: 12, scope: !1037)
!1179 = !DILocation(line: 401, column: 11, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1037, file: !100, line: 400, column: 11)
!1181 = !DILocation(line: 403, column: 17, scope: !1182)
!1182 = !DILexicalBlockFile(scope: !1180, file: !100, discriminator: 1)
!1183 = !DILocation(line: 404, column: 39, scope: !1180)
!1184 = !DILocation(line: 408, column: 32, scope: !1180)
!1185 = !DILocation(line: 404, column: 19, scope: !1186)
!1186 = !DILexicalBlockFile(scope: !1180, file: !100, discriminator: 2)
!1187 = !DILocation(line: 404, column: 15, scope: !1188)
!1188 = !DILexicalBlockFile(scope: !1180, file: !100, discriminator: 4)
!1189 = !DILocation(line: 409, column: 11, scope: !1180)
!1190 = !DILocation(line: 409, column: 26, scope: !1182)
!1191 = !DILocation(line: 409, column: 14, scope: !1182)
!1192 = !DILocation(line: 400, column: 11, scope: !1193)
!1193 = !DILexicalBlockFile(scope: !1037, file: !100, discriminator: 1)
!1194 = !DILocation(line: 416, column: 11, scope: !1037)
!1195 = !DILocation(line: 394, column: 21, scope: !1037)
!1196 = !DILocation(line: 417, column: 7, scope: !1037)
!1197 = !DILocation(line: 420, column: 15, scope: !1046)
!1198 = !DILocation(line: 422, column: 15, scope: !1199)
!1199 = !DILexicalBlockFile(scope: !1200, file: !100, discriminator: 1)
!1200 = distinct !DILexicalBlock(scope: !1201, file: !100, line: 422, column: 15)
!1201 = distinct !DILexicalBlock(scope: !1202, file: !100, line: 421, column: 13)
!1202 = distinct !DILexicalBlock(scope: !1046, file: !100, line: 420, column: 15)
!1203 = !DILocation(line: 422, column: 15, scope: !1204)
!1204 = !DILexicalBlockFile(scope: !1205, file: !100, discriminator: 4)
!1205 = distinct !DILexicalBlock(scope: !1200, file: !100, line: 422, column: 15)
!1206 = !DILocation(line: 422, column: 15, scope: !1207)
!1207 = !DILexicalBlockFile(scope: !1205, file: !100, discriminator: 3)
!1208 = !DILocation(line: 422, column: 15, scope: !1209)
!1209 = !DILexicalBlockFile(scope: !1210, file: !100, discriminator: 6)
!1210 = distinct !DILexicalBlock(scope: !1211, file: !100, line: 422, column: 15)
!1211 = distinct !DILexicalBlock(scope: !1212, file: !100, line: 422, column: 15)
!1212 = distinct !DILexicalBlock(scope: !1205, file: !100, line: 422, column: 15)
!1213 = !DILocation(line: 422, column: 15, scope: !1214)
!1214 = !DILexicalBlockFile(scope: !1211, file: !100, discriminator: 6)
!1215 = !DILocation(line: 422, column: 15, scope: !1216)
!1216 = !DILexicalBlockFile(scope: !1210, file: !100, discriminator: 7)
!1217 = !DILocation(line: 422, column: 15, scope: !1218)
!1218 = !DILexicalBlockFile(scope: !1211, file: !100, discriminator: 8)
!1219 = !DILocation(line: 422, column: 15, scope: !1220)
!1220 = !DILexicalBlockFile(scope: !1221, file: !100, discriminator: 11)
!1221 = distinct !DILexicalBlock(scope: !1222, file: !100, line: 422, column: 15)
!1222 = distinct !DILexicalBlock(scope: !1212, file: !100, line: 422, column: 15)
!1223 = !DILocation(line: 422, column: 15, scope: !1224)
!1224 = !DILexicalBlockFile(scope: !1222, file: !100, discriminator: 11)
!1225 = !DILocation(line: 422, column: 15, scope: !1226)
!1226 = !DILexicalBlockFile(scope: !1221, file: !100, discriminator: 12)
!1227 = !DILocation(line: 422, column: 15, scope: !1228)
!1228 = !DILexicalBlockFile(scope: !1222, file: !100, discriminator: 13)
!1229 = !DILocation(line: 422, column: 15, scope: !1230)
!1230 = !DILexicalBlockFile(scope: !1231, file: !100, discriminator: 16)
!1231 = distinct !DILexicalBlock(scope: !1232, file: !100, line: 422, column: 15)
!1232 = distinct !DILexicalBlock(scope: !1212, file: !100, line: 422, column: 15)
!1233 = !DILocation(line: 422, column: 15, scope: !1234)
!1234 = !DILexicalBlockFile(scope: !1232, file: !100, discriminator: 16)
!1235 = !DILocation(line: 422, column: 15, scope: !1236)
!1236 = !DILexicalBlockFile(scope: !1231, file: !100, discriminator: 17)
!1237 = !DILocation(line: 422, column: 15, scope: !1238)
!1238 = !DILexicalBlockFile(scope: !1232, file: !100, discriminator: 18)
!1239 = !DILocation(line: 422, column: 15, scope: !1240)
!1240 = !DILexicalBlockFile(scope: !1212, file: !100, discriminator: 20)
!1241 = !DILocation(line: 422, column: 15, scope: !1242)
!1242 = !DILexicalBlockFile(scope: !1243, file: !100, discriminator: 22)
!1243 = distinct !DILexicalBlock(scope: !1244, file: !100, line: 422, column: 15)
!1244 = distinct !DILexicalBlock(scope: !1200, file: !100, line: 422, column: 15)
!1245 = !DILocation(line: 422, column: 15, scope: !1246)
!1246 = !DILexicalBlockFile(scope: !1244, file: !100, discriminator: 22)
!1247 = !DILocation(line: 422, column: 15, scope: !1248)
!1248 = !DILexicalBlockFile(scope: !1243, file: !100, discriminator: 23)
!1249 = !DILocation(line: 422, column: 15, scope: !1250)
!1250 = !DILexicalBlockFile(scope: !1244, file: !100, discriminator: 24)
!1251 = !DILocation(line: 430, column: 19, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !1201, file: !100, line: 429, column: 19)
!1253 = !DILocation(line: 430, column: 24, scope: !1254)
!1254 = !DILexicalBlockFile(scope: !1252, file: !100, discriminator: 1)
!1255 = !DILocation(line: 430, column: 28, scope: !1254)
!1256 = !DILocation(line: 430, column: 38, scope: !1254)
!1257 = !DILocation(line: 430, column: 48, scope: !1258)
!1258 = !DILexicalBlockFile(scope: !1252, file: !100, discriminator: 2)
!1259 = !DILocation(line: 430, column: 59, scope: !1258)
!1260 = !DILocation(line: 432, column: 19, scope: !1261)
!1261 = !DILexicalBlockFile(scope: !1262, file: !100, discriminator: 1)
!1262 = distinct !DILexicalBlock(scope: !1263, file: !100, line: 432, column: 19)
!1263 = distinct !DILexicalBlock(scope: !1264, file: !100, line: 432, column: 19)
!1264 = distinct !DILexicalBlock(scope: !1252, file: !100, line: 431, column: 17)
!1265 = !DILocation(line: 432, column: 19, scope: !1266)
!1266 = !DILexicalBlockFile(scope: !1263, file: !100, discriminator: 1)
!1267 = !DILocation(line: 432, column: 19, scope: !1268)
!1268 = !DILexicalBlockFile(scope: !1262, file: !100, discriminator: 2)
!1269 = !DILocation(line: 432, column: 19, scope: !1270)
!1270 = !DILexicalBlockFile(scope: !1263, file: !100, discriminator: 3)
!1271 = !DILocation(line: 433, column: 19, scope: !1272)
!1272 = !DILexicalBlockFile(scope: !1273, file: !100, discriminator: 1)
!1273 = distinct !DILexicalBlock(scope: !1274, file: !100, line: 433, column: 19)
!1274 = distinct !DILexicalBlock(scope: !1264, file: !100, line: 433, column: 19)
!1275 = !DILocation(line: 433, column: 19, scope: !1276)
!1276 = !DILexicalBlockFile(scope: !1274, file: !100, discriminator: 1)
!1277 = !DILocation(line: 433, column: 19, scope: !1278)
!1278 = !DILexicalBlockFile(scope: !1273, file: !100, discriminator: 2)
!1279 = !DILocation(line: 433, column: 19, scope: !1280)
!1280 = !DILexicalBlockFile(scope: !1274, file: !100, discriminator: 3)
!1281 = !DILocation(line: 434, column: 17, scope: !1264)
!1282 = !DILocation(line: 441, column: 20, scope: !1202)
!1283 = !DILocation(line: 446, column: 11, scope: !1046)
!1284 = !DILocation(line: 449, column: 19, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !1046, file: !100, line: 447, column: 13)
!1286 = !DILocation(line: 455, column: 19, scope: !1287)
!1287 = distinct !DILexicalBlock(scope: !1285, file: !100, line: 454, column: 19)
!1288 = !DILocation(line: 455, column: 24, scope: !1289)
!1289 = !DILexicalBlockFile(scope: !1287, file: !100, discriminator: 1)
!1290 = !DILocation(line: 455, column: 28, scope: !1289)
!1291 = !DILocation(line: 455, column: 38, scope: !1289)
!1292 = !DILocation(line: 455, column: 47, scope: !1293)
!1293 = !DILexicalBlockFile(scope: !1287, file: !100, discriminator: 2)
!1294 = !DILocation(line: 455, column: 41, scope: !1293)
!1295 = !DILocation(line: 455, column: 52, scope: !1293)
!1296 = !DILocation(line: 454, column: 19, scope: !1297)
!1297 = !DILexicalBlockFile(scope: !1285, file: !100, discriminator: 1)
!1298 = !DILocation(line: 456, column: 25, scope: !1287)
!1299 = !DILocation(line: 456, column: 17, scope: !1287)
!1300 = !DILocation(line: 463, column: 25, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !1287, file: !100, line: 457, column: 19)
!1302 = !DILocation(line: 467, column: 21, scope: !1303)
!1303 = !DILexicalBlockFile(scope: !1304, file: !100, discriminator: 1)
!1304 = distinct !DILexicalBlock(scope: !1305, file: !100, line: 467, column: 21)
!1305 = distinct !DILexicalBlock(scope: !1301, file: !100, line: 467, column: 21)
!1306 = !DILocation(line: 467, column: 21, scope: !1307)
!1307 = !DILexicalBlockFile(scope: !1305, file: !100, discriminator: 1)
!1308 = !DILocation(line: 467, column: 21, scope: !1309)
!1309 = !DILexicalBlockFile(scope: !1304, file: !100, discriminator: 2)
!1310 = !DILocation(line: 467, column: 21, scope: !1311)
!1311 = !DILexicalBlockFile(scope: !1305, file: !100, discriminator: 3)
!1312 = !DILocation(line: 468, column: 21, scope: !1313)
!1313 = !DILexicalBlockFile(scope: !1314, file: !100, discriminator: 1)
!1314 = distinct !DILexicalBlock(scope: !1315, file: !100, line: 468, column: 21)
!1315 = distinct !DILexicalBlock(scope: !1301, file: !100, line: 468, column: 21)
!1316 = !DILocation(line: 468, column: 21, scope: !1317)
!1317 = !DILexicalBlockFile(scope: !1315, file: !100, discriminator: 1)
!1318 = !DILocation(line: 468, column: 21, scope: !1319)
!1319 = !DILexicalBlockFile(scope: !1314, file: !100, discriminator: 2)
!1320 = !DILocation(line: 468, column: 21, scope: !1321)
!1321 = !DILexicalBlockFile(scope: !1315, file: !100, discriminator: 3)
!1322 = !DILocation(line: 469, column: 21, scope: !1323)
!1323 = !DILexicalBlockFile(scope: !1324, file: !100, discriminator: 1)
!1324 = distinct !DILexicalBlock(scope: !1325, file: !100, line: 469, column: 21)
!1325 = distinct !DILexicalBlock(scope: !1301, file: !100, line: 469, column: 21)
!1326 = !DILocation(line: 469, column: 21, scope: !1327)
!1327 = !DILexicalBlockFile(scope: !1325, file: !100, discriminator: 1)
!1328 = !DILocation(line: 469, column: 21, scope: !1329)
!1329 = !DILexicalBlockFile(scope: !1324, file: !100, discriminator: 2)
!1330 = !DILocation(line: 469, column: 21, scope: !1331)
!1331 = !DILexicalBlockFile(scope: !1325, file: !100, discriminator: 3)
!1332 = !DILocation(line: 470, column: 21, scope: !1333)
!1333 = !DILexicalBlockFile(scope: !1334, file: !100, discriminator: 1)
!1334 = distinct !DILexicalBlock(scope: !1335, file: !100, line: 470, column: 21)
!1335 = distinct !DILexicalBlock(scope: !1301, file: !100, line: 470, column: 21)
!1336 = !DILocation(line: 470, column: 21, scope: !1337)
!1337 = !DILexicalBlockFile(scope: !1335, file: !100, discriminator: 1)
!1338 = !DILocation(line: 470, column: 21, scope: !1339)
!1339 = !DILexicalBlockFile(scope: !1334, file: !100, discriminator: 2)
!1340 = !DILocation(line: 470, column: 21, scope: !1341)
!1341 = !DILexicalBlockFile(scope: !1335, file: !100, discriminator: 3)
!1342 = !DILocation(line: 471, column: 21, scope: !1301)
!1343 = !DILocation(line: 395, column: 21, scope: !1037)
!1344 = !DILocation(line: 484, column: 31, scope: !1046)
!1345 = !DILocation(line: 485, column: 31, scope: !1046)
!1346 = !DILocation(line: 487, column: 31, scope: !1046)
!1347 = !DILocation(line: 488, column: 31, scope: !1046)
!1348 = !DILocation(line: 489, column: 31, scope: !1046)
!1349 = !DILocation(line: 492, column: 15, scope: !1046)
!1350 = !DILocation(line: 494, column: 19, scope: !1351)
!1351 = distinct !DILexicalBlock(scope: !1352, file: !100, line: 493, column: 13)
!1352 = distinct !DILexicalBlock(scope: !1046, file: !100, line: 492, column: 15)
!1353 = !DILocation(line: 501, column: 33, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !1046, file: !100, line: 501, column: 15)
!1355 = !DILocation(line: 506, column: 15, scope: !1356)
!1356 = distinct !DILexicalBlock(scope: !1046, file: !100, line: 505, column: 15)
!1357 = !DILocation(line: 510, column: 15, scope: !1046)
!1358 = !DILocation(line: 518, column: 26, scope: !1359)
!1359 = distinct !DILexicalBlock(scope: !1046, file: !100, line: 518, column: 15)
!1360 = !DILocation(line: 518, column: 15, scope: !1046)
!1361 = !DILocation(line: 518, column: 40, scope: !1362)
!1362 = !DILexicalBlockFile(scope: !1359, file: !100, discriminator: 1)
!1363 = !DILocation(line: 518, column: 47, scope: !1362)
!1364 = !DILocation(line: 522, column: 17, scope: !1365)
!1365 = distinct !DILexicalBlock(scope: !1046, file: !100, line: 522, column: 15)
!1366 = !DILocation(line: 518, column: 18, scope: !1362)
!1367 = !DILocation(line: 518, column: 65, scope: !1368)
!1368 = !DILexicalBlockFile(scope: !1359, file: !100, discriminator: 2)
!1369 = !DILocation(line: 518, column: 15, scope: !1370)
!1370 = !DILexicalBlockFile(scope: !1046, file: !100, discriminator: 2)
!1371 = !DILocation(line: 522, column: 15, scope: !1046)
!1372 = !DILocation(line: 526, column: 11, scope: !1046)
!1373 = !DILocation(line: 541, column: 15, scope: !1374)
!1374 = distinct !DILexicalBlock(scope: !1046, file: !100, line: 540, column: 15)
!1375 = !DILocation(line: 548, column: 15, scope: !1046)
!1376 = !DILocation(line: 550, column: 19, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !1378, file: !100, line: 549, column: 13)
!1378 = distinct !DILexicalBlock(scope: !1046, file: !100, line: 548, column: 15)
!1379 = !DILocation(line: 553, column: 19, scope: !1380)
!1380 = distinct !DILexicalBlock(scope: !1377, file: !100, line: 553, column: 19)
!1381 = !DILocation(line: 553, column: 35, scope: !1382)
!1382 = !DILexicalBlockFile(scope: !1380, file: !100, discriminator: 1)
!1383 = !DILocation(line: 553, column: 30, scope: !1380)
!1384 = !DILocation(line: 562, column: 15, scope: !1385)
!1385 = !DILexicalBlockFile(scope: !1386, file: !100, discriminator: 1)
!1386 = distinct !DILexicalBlock(scope: !1387, file: !100, line: 562, column: 15)
!1387 = distinct !DILexicalBlock(scope: !1377, file: !100, line: 562, column: 15)
!1388 = !DILocation(line: 562, column: 15, scope: !1389)
!1389 = !DILexicalBlockFile(scope: !1387, file: !100, discriminator: 1)
!1390 = !DILocation(line: 562, column: 15, scope: !1391)
!1391 = !DILexicalBlockFile(scope: !1386, file: !100, discriminator: 2)
!1392 = !DILocation(line: 562, column: 15, scope: !1393)
!1393 = !DILexicalBlockFile(scope: !1387, file: !100, discriminator: 3)
!1394 = !DILocation(line: 563, column: 15, scope: !1395)
!1395 = !DILexicalBlockFile(scope: !1396, file: !100, discriminator: 1)
!1396 = distinct !DILexicalBlock(scope: !1397, file: !100, line: 563, column: 15)
!1397 = distinct !DILexicalBlock(scope: !1377, file: !100, line: 563, column: 15)
!1398 = !DILocation(line: 563, column: 15, scope: !1399)
!1399 = !DILexicalBlockFile(scope: !1397, file: !100, discriminator: 1)
!1400 = !DILocation(line: 563, column: 15, scope: !1401)
!1401 = !DILexicalBlockFile(scope: !1396, file: !100, discriminator: 2)
!1402 = !DILocation(line: 563, column: 15, scope: !1403)
!1403 = !DILexicalBlockFile(scope: !1397, file: !100, discriminator: 3)
!1404 = !DILocation(line: 564, column: 15, scope: !1405)
!1405 = !DILexicalBlockFile(scope: !1406, file: !100, discriminator: 1)
!1406 = distinct !DILexicalBlock(scope: !1407, file: !100, line: 564, column: 15)
!1407 = distinct !DILexicalBlock(scope: !1377, file: !100, line: 564, column: 15)
!1408 = !DILocation(line: 564, column: 15, scope: !1409)
!1409 = !DILexicalBlockFile(scope: !1407, file: !100, discriminator: 1)
!1410 = !DILocation(line: 564, column: 15, scope: !1411)
!1411 = !DILexicalBlockFile(scope: !1406, file: !100, discriminator: 2)
!1412 = !DILocation(line: 564, column: 15, scope: !1413)
!1413 = !DILexicalBlockFile(scope: !1407, file: !100, discriminator: 3)
!1414 = !DILocation(line: 566, column: 13, scope: !1377)
!1415 = !DILocation(line: 606, column: 17, scope: !1045)
!1416 = !DILocation(line: 602, column: 20, scope: !1045)
!1417 = !DILocation(line: 609, column: 29, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1050, file: !100, line: 607, column: 15)
!1419 = !{!1420, !1420, i64 0}
!1420 = !{!"short", !600, i64 0}
!1421 = !DILocation(line: 609, column: 27, scope: !1418)
!1422 = !DILocation(line: 604, column: 18, scope: !1045)
!1423 = !DILocation(line: 610, column: 15, scope: !1418)
!1424 = !DILocation(line: 613, column: 17, scope: !1049)
!1425 = !DILocation(line: 614, column: 17, scope: !1049)
!1426 = !DILocation(line: 618, column: 29, scope: !1427)
!1427 = distinct !DILexicalBlock(scope: !1049, file: !100, line: 618, column: 21)
!1428 = !DILocation(line: 618, column: 21, scope: !1049)
!1429 = distinct !{!1429, !1430, !1431}
!1430 = !DILocation(line: 621, column: 17, scope: !1049)
!1431 = !DILocation(line: 667, column: 44, scope: !1049)
!1432 = !DILocation(line: 619, column: 29, scope: !1427)
!1433 = !DILocation(line: 619, column: 19, scope: !1427)
!1434 = !DILocation(line: 623, column: 21, scope: !1066)
!1435 = !DILocation(line: 624, column: 56, scope: !1066)
!1436 = !DILocation(line: 624, column: 50, scope: !1066)
!1437 = !DILocation(line: 625, column: 53, scope: !1066)
!1438 = !DIExpression(DW_OP_deref)
!1439 = !DILocation(line: 613, column: 27, scope: !1049)
!1440 = !DILocation(line: 623, column: 29, scope: !1066)
!1441 = !DILocation(line: 624, column: 36, scope: !1066)
!1442 = !DILocation(line: 624, column: 28, scope: !1066)
!1443 = !DILocation(line: 626, column: 25, scope: !1066)
!1444 = !DILocation(line: 636, column: 38, scope: !1445)
!1445 = !DILexicalBlockFile(scope: !1446, file: !100, discriminator: 1)
!1446 = distinct !DILexicalBlock(scope: !1073, file: !100, line: 634, column: 23)
!1447 = !DILocation(line: 636, column: 48, scope: !1445)
!1448 = !DILocation(line: 636, column: 51, scope: !1449)
!1449 = !DILexicalBlockFile(scope: !1446, file: !100, discriminator: 2)
!1450 = !DILocation(line: 636, column: 48, scope: !1449)
!1451 = !DILocation(line: 636, column: 25, scope: !1452)
!1452 = !DILexicalBlockFile(scope: !1446, file: !100, discriminator: 3)
!1453 = !DILocation(line: 637, column: 28, scope: !1446)
!1454 = !DILocation(line: 636, column: 34, scope: !1445)
!1455 = distinct !{!1455, !1456, !1453}
!1456 = !DILocation(line: 636, column: 25, scope: !1446)
!1457 = !DILocation(line: 650, column: 43, scope: !1458)
!1458 = !DILexicalBlockFile(scope: !1459, file: !100, discriminator: 1)
!1459 = distinct !DILexicalBlock(scope: !1460, file: !100, line: 650, column: 29)
!1460 = distinct !DILexicalBlock(scope: !1070, file: !100, line: 650, column: 29)
!1461 = !DILocation(line: 647, column: 29, scope: !1071)
!1462 = !DILocation(line: 649, column: 36, scope: !1070)
!1463 = !DILocation(line: 651, column: 49, scope: !1459)
!1464 = !DILocation(line: 651, column: 39, scope: !1459)
!1465 = !DILocation(line: 651, column: 31, scope: !1459)
!1466 = !DILocation(line: 650, column: 53, scope: !1467)
!1467 = !DILexicalBlockFile(scope: !1459, file: !100, discriminator: 2)
!1468 = !DILocation(line: 650, column: 29, scope: !1469)
!1469 = !DILexicalBlockFile(scope: !1460, file: !100, discriminator: 1)
!1470 = distinct !{!1470, !1471, !1472}
!1471 = !DILocation(line: 650, column: 29, scope: !1460)
!1472 = !DILocation(line: 659, column: 33, scope: !1460)
!1473 = !DILocation(line: 666, column: 19, scope: !1049)
!1474 = !DILocation(line: 662, column: 41, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !1072, file: !100, line: 662, column: 29)
!1476 = !DILocation(line: 662, column: 31, scope: !1475)
!1477 = !DILocation(line: 662, column: 29, scope: !1072)
!1478 = !DILocation(line: 664, column: 27, scope: !1072)
!1479 = !DILocation(line: 667, column: 26, scope: !1049)
!1480 = !DILocation(line: 667, column: 24, scope: !1049)
!1481 = !DILocation(line: 666, column: 19, scope: !1482)
!1482 = !DILexicalBlockFile(scope: !1066, file: !100, discriminator: 3)
!1483 = !DILocation(line: 668, column: 15, scope: !1050)
!1484 = !DILocation(line: 670, column: 40, scope: !1045)
!1485 = !DILocation(line: 672, column: 19, scope: !1078)
!1486 = !DILocation(line: 672, column: 45, scope: !1487)
!1487 = !DILexicalBlockFile(scope: !1078, file: !100, discriminator: 1)
!1488 = !DILocation(line: 672, column: 23, scope: !1078)
!1489 = !DILocation(line: 676, column: 33, scope: !1077)
!1490 = !DILocation(line: 676, column: 24, scope: !1077)
!1491 = !DILocation(line: 678, column: 17, scope: !1077)
!1492 = !DILocation(line: 680, column: 43, scope: !1493)
!1493 = distinct !DILexicalBlock(scope: !1494, file: !100, line: 680, column: 25)
!1494 = distinct !DILexicalBlock(scope: !1495, file: !100, line: 679, column: 19)
!1495 = distinct !DILexicalBlock(scope: !1496, file: !100, line: 678, column: 17)
!1496 = distinct !DILexicalBlock(scope: !1077, file: !100, line: 678, column: 17)
!1497 = !DILocation(line: 682, column: 25, scope: !1498)
!1498 = !DILexicalBlockFile(scope: !1499, file: !100, discriminator: 1)
!1499 = distinct !DILexicalBlock(scope: !1500, file: !100, line: 682, column: 25)
!1500 = distinct !DILexicalBlock(scope: !1493, file: !100, line: 681, column: 23)
!1501 = !DILocation(line: 682, column: 25, scope: !1502)
!1502 = !DILexicalBlockFile(scope: !1503, file: !100, discriminator: 4)
!1503 = distinct !DILexicalBlock(scope: !1499, file: !100, line: 682, column: 25)
!1504 = !DILocation(line: 682, column: 25, scope: !1505)
!1505 = !DILexicalBlockFile(scope: !1503, file: !100, discriminator: 3)
!1506 = !DILocation(line: 682, column: 25, scope: !1507)
!1507 = !DILexicalBlockFile(scope: !1508, file: !100, discriminator: 6)
!1508 = distinct !DILexicalBlock(scope: !1509, file: !100, line: 682, column: 25)
!1509 = distinct !DILexicalBlock(scope: !1510, file: !100, line: 682, column: 25)
!1510 = distinct !DILexicalBlock(scope: !1503, file: !100, line: 682, column: 25)
!1511 = !DILocation(line: 682, column: 25, scope: !1512)
!1512 = !DILexicalBlockFile(scope: !1509, file: !100, discriminator: 6)
!1513 = !DILocation(line: 682, column: 25, scope: !1514)
!1514 = !DILexicalBlockFile(scope: !1508, file: !100, discriminator: 7)
!1515 = !DILocation(line: 682, column: 25, scope: !1516)
!1516 = !DILexicalBlockFile(scope: !1509, file: !100, discriminator: 8)
!1517 = !DILocation(line: 682, column: 25, scope: !1518)
!1518 = !DILexicalBlockFile(scope: !1519, file: !100, discriminator: 11)
!1519 = distinct !DILexicalBlock(scope: !1520, file: !100, line: 682, column: 25)
!1520 = distinct !DILexicalBlock(scope: !1510, file: !100, line: 682, column: 25)
!1521 = !DILocation(line: 682, column: 25, scope: !1522)
!1522 = !DILexicalBlockFile(scope: !1520, file: !100, discriminator: 11)
!1523 = !DILocation(line: 682, column: 25, scope: !1524)
!1524 = !DILexicalBlockFile(scope: !1519, file: !100, discriminator: 12)
!1525 = !DILocation(line: 682, column: 25, scope: !1526)
!1526 = !DILexicalBlockFile(scope: !1520, file: !100, discriminator: 13)
!1527 = !DILocation(line: 682, column: 25, scope: !1528)
!1528 = !DILexicalBlockFile(scope: !1529, file: !100, discriminator: 16)
!1529 = distinct !DILexicalBlock(scope: !1530, file: !100, line: 682, column: 25)
!1530 = distinct !DILexicalBlock(scope: !1510, file: !100, line: 682, column: 25)
!1531 = !DILocation(line: 682, column: 25, scope: !1532)
!1532 = !DILexicalBlockFile(scope: !1530, file: !100, discriminator: 16)
!1533 = !DILocation(line: 682, column: 25, scope: !1534)
!1534 = !DILexicalBlockFile(scope: !1529, file: !100, discriminator: 17)
!1535 = !DILocation(line: 682, column: 25, scope: !1536)
!1536 = !DILexicalBlockFile(scope: !1530, file: !100, discriminator: 18)
!1537 = !DILocation(line: 682, column: 25, scope: !1538)
!1538 = !DILexicalBlockFile(scope: !1510, file: !100, discriminator: 20)
!1539 = !DILocation(line: 682, column: 25, scope: !1540)
!1540 = !DILexicalBlockFile(scope: !1541, file: !100, discriminator: 22)
!1541 = distinct !DILexicalBlock(scope: !1542, file: !100, line: 682, column: 25)
!1542 = distinct !DILexicalBlock(scope: !1499, file: !100, line: 682, column: 25)
!1543 = !DILocation(line: 682, column: 25, scope: !1544)
!1544 = !DILexicalBlockFile(scope: !1542, file: !100, discriminator: 22)
!1545 = !DILocation(line: 682, column: 25, scope: !1546)
!1546 = !DILexicalBlockFile(scope: !1541, file: !100, discriminator: 23)
!1547 = !DILocation(line: 682, column: 25, scope: !1548)
!1548 = !DILexicalBlockFile(scope: !1542, file: !100, discriminator: 24)
!1549 = !DILocation(line: 683, column: 25, scope: !1550)
!1550 = !DILexicalBlockFile(scope: !1551, file: !100, discriminator: 1)
!1551 = distinct !DILexicalBlock(scope: !1552, file: !100, line: 683, column: 25)
!1552 = distinct !DILexicalBlock(scope: !1500, file: !100, line: 683, column: 25)
!1553 = !DILocation(line: 683, column: 25, scope: !1554)
!1554 = !DILexicalBlockFile(scope: !1552, file: !100, discriminator: 1)
!1555 = !DILocation(line: 683, column: 25, scope: !1556)
!1556 = !DILexicalBlockFile(scope: !1551, file: !100, discriminator: 2)
!1557 = !DILocation(line: 683, column: 25, scope: !1558)
!1558 = !DILexicalBlockFile(scope: !1552, file: !100, discriminator: 3)
!1559 = !DILocation(line: 684, column: 25, scope: !1560)
!1560 = !DILexicalBlockFile(scope: !1561, file: !100, discriminator: 1)
!1561 = distinct !DILexicalBlock(scope: !1562, file: !100, line: 684, column: 25)
!1562 = distinct !DILexicalBlock(scope: !1500, file: !100, line: 684, column: 25)
!1563 = !DILocation(line: 684, column: 25, scope: !1564)
!1564 = !DILexicalBlockFile(scope: !1562, file: !100, discriminator: 1)
!1565 = !DILocation(line: 684, column: 25, scope: !1566)
!1566 = !DILexicalBlockFile(scope: !1561, file: !100, discriminator: 2)
!1567 = !DILocation(line: 684, column: 25, scope: !1568)
!1568 = !DILexicalBlockFile(scope: !1562, file: !100, discriminator: 3)
!1569 = !DILocation(line: 685, column: 38, scope: !1500)
!1570 = !DILocation(line: 685, column: 33, scope: !1500)
!1571 = !DILocation(line: 686, column: 23, scope: !1500)
!1572 = !DILocation(line: 687, column: 30, scope: !1573)
!1573 = distinct !DILexicalBlock(scope: !1493, file: !100, line: 687, column: 30)
!1574 = !DILocation(line: 687, column: 30, scope: !1493)
!1575 = !DILocation(line: 689, column: 25, scope: !1576)
!1576 = !DILexicalBlockFile(scope: !1577, file: !100, discriminator: 1)
!1577 = distinct !DILexicalBlock(scope: !1578, file: !100, line: 689, column: 25)
!1578 = distinct !DILexicalBlock(scope: !1579, file: !100, line: 689, column: 25)
!1579 = distinct !DILexicalBlock(scope: !1573, file: !100, line: 688, column: 23)
!1580 = !DILocation(line: 689, column: 25, scope: !1581)
!1581 = !DILexicalBlockFile(scope: !1578, file: !100, discriminator: 1)
!1582 = !DILocation(line: 689, column: 25, scope: !1583)
!1583 = !DILexicalBlockFile(scope: !1577, file: !100, discriminator: 2)
!1584 = !DILocation(line: 689, column: 25, scope: !1585)
!1585 = !DILexicalBlockFile(scope: !1578, file: !100, discriminator: 3)
!1586 = !DILocation(line: 691, column: 23, scope: !1579)
!1587 = !DILocation(line: 692, column: 35, scope: !1588)
!1588 = distinct !DILexicalBlock(scope: !1494, file: !100, line: 692, column: 25)
!1589 = !DILocation(line: 692, column: 30, scope: !1588)
!1590 = !DILocation(line: 692, column: 25, scope: !1494)
!1591 = !DILocation(line: 694, column: 21, scope: !1592)
!1592 = !DILexicalBlockFile(scope: !1593, file: !100, discriminator: 1)
!1593 = distinct !DILexicalBlock(scope: !1594, file: !100, line: 694, column: 21)
!1594 = distinct !DILexicalBlock(scope: !1494, file: !100, line: 694, column: 21)
!1595 = !DILocation(line: 694, column: 21, scope: !1596)
!1596 = !DILexicalBlockFile(scope: !1593, file: !100, discriminator: 2)
!1597 = !DILocation(line: 694, column: 21, scope: !1598)
!1598 = !DILexicalBlockFile(scope: !1599, file: !100, discriminator: 4)
!1599 = distinct !DILexicalBlock(scope: !1600, file: !100, line: 694, column: 21)
!1600 = distinct !DILexicalBlock(scope: !1601, file: !100, line: 694, column: 21)
!1601 = distinct !DILexicalBlock(scope: !1593, file: !100, line: 694, column: 21)
!1602 = !DILocation(line: 694, column: 21, scope: !1603)
!1603 = !DILexicalBlockFile(scope: !1600, file: !100, discriminator: 4)
!1604 = !DILocation(line: 694, column: 21, scope: !1605)
!1605 = !DILexicalBlockFile(scope: !1599, file: !100, discriminator: 5)
!1606 = !DILocation(line: 694, column: 21, scope: !1607)
!1607 = !DILexicalBlockFile(scope: !1600, file: !100, discriminator: 6)
!1608 = !DILocation(line: 694, column: 21, scope: !1609)
!1609 = !DILexicalBlockFile(scope: !1610, file: !100, discriminator: 9)
!1610 = distinct !DILexicalBlock(scope: !1611, file: !100, line: 694, column: 21)
!1611 = distinct !DILexicalBlock(scope: !1601, file: !100, line: 694, column: 21)
!1612 = !DILocation(line: 694, column: 21, scope: !1613)
!1613 = !DILexicalBlockFile(scope: !1611, file: !100, discriminator: 9)
!1614 = !DILocation(line: 694, column: 21, scope: !1615)
!1615 = !DILexicalBlockFile(scope: !1610, file: !100, discriminator: 10)
!1616 = !DILocation(line: 694, column: 21, scope: !1617)
!1617 = !DILexicalBlockFile(scope: !1611, file: !100, discriminator: 11)
!1618 = !DILocation(line: 694, column: 21, scope: !1619)
!1619 = !DILexicalBlockFile(scope: !1601, file: !100, discriminator: 13)
!1620 = !DILocation(line: 695, column: 21, scope: !1621)
!1621 = !DILexicalBlockFile(scope: !1622, file: !100, discriminator: 1)
!1622 = distinct !DILexicalBlock(scope: !1623, file: !100, line: 695, column: 21)
!1623 = distinct !DILexicalBlock(scope: !1494, file: !100, line: 695, column: 21)
!1624 = !DILocation(line: 695, column: 21, scope: !1625)
!1625 = !DILexicalBlockFile(scope: !1623, file: !100, discriminator: 1)
!1626 = !DILocation(line: 695, column: 21, scope: !1627)
!1627 = !DILexicalBlockFile(scope: !1622, file: !100, discriminator: 2)
!1628 = !DILocation(line: 695, column: 21, scope: !1629)
!1629 = !DILexicalBlockFile(scope: !1623, file: !100, discriminator: 3)
!1630 = !DILocation(line: 696, column: 25, scope: !1494)
!1631 = !DILocation(line: 678, column: 17, scope: !1632)
!1632 = !DILexicalBlockFile(scope: !1495, file: !100, discriminator: 1)
!1633 = distinct !{!1633, !1634, !1635}
!1634 = !DILocation(line: 678, column: 17, scope: !1496)
!1635 = !DILocation(line: 697, column: 19, scope: !1496)
!1636 = !DILocation(line: 704, column: 34, scope: !1637)
!1637 = distinct !DILexicalBlock(scope: !1037, file: !100, line: 704, column: 11)
!1638 = !DILocation(line: 706, column: 14, scope: !1637)
!1639 = !DILocation(line: 707, column: 14, scope: !1637)
!1640 = !DILocation(line: 707, column: 35, scope: !1641)
!1641 = !DILexicalBlockFile(scope: !1637, file: !100, discriminator: 1)
!1642 = !DILocation(line: 707, column: 17, scope: !1641)
!1643 = !DILocation(line: 707, column: 53, scope: !1641)
!1644 = !DILocation(line: 707, column: 47, scope: !1641)
!1645 = !DILocation(line: 707, column: 65, scope: !1641)
!1646 = !DILocation(line: 708, column: 15, scope: !1641)
!1647 = !DILocation(line: 708, column: 11, scope: !1637)
!1648 = !DILocation(line: 704, column: 11, scope: !1649)
!1649 = !DILexicalBlockFile(scope: !1037, file: !100, discriminator: 2)
!1650 = !DILocation(line: 712, column: 7, scope: !1651)
!1651 = !DILexicalBlockFile(scope: !1652, file: !100, discriminator: 1)
!1652 = distinct !DILexicalBlock(scope: !1037, file: !100, line: 712, column: 7)
!1653 = !DILocation(line: 712, column: 7, scope: !1654)
!1654 = !DILexicalBlockFile(scope: !1655, file: !100, discriminator: 4)
!1655 = distinct !DILexicalBlock(scope: !1652, file: !100, line: 712, column: 7)
!1656 = !DILocation(line: 712, column: 7, scope: !1657)
!1657 = !DILexicalBlockFile(scope: !1655, file: !100, discriminator: 3)
!1658 = !DILocation(line: 712, column: 7, scope: !1659)
!1659 = !DILexicalBlockFile(scope: !1660, file: !100, discriminator: 6)
!1660 = distinct !DILexicalBlock(scope: !1661, file: !100, line: 712, column: 7)
!1661 = distinct !DILexicalBlock(scope: !1662, file: !100, line: 712, column: 7)
!1662 = distinct !DILexicalBlock(scope: !1655, file: !100, line: 712, column: 7)
!1663 = !DILocation(line: 712, column: 7, scope: !1664)
!1664 = !DILexicalBlockFile(scope: !1661, file: !100, discriminator: 6)
!1665 = !DILocation(line: 712, column: 7, scope: !1666)
!1666 = !DILexicalBlockFile(scope: !1660, file: !100, discriminator: 7)
!1667 = !DILocation(line: 712, column: 7, scope: !1668)
!1668 = !DILexicalBlockFile(scope: !1661, file: !100, discriminator: 8)
!1669 = !DILocation(line: 712, column: 7, scope: !1670)
!1670 = !DILexicalBlockFile(scope: !1671, file: !100, discriminator: 11)
!1671 = distinct !DILexicalBlock(scope: !1672, file: !100, line: 712, column: 7)
!1672 = distinct !DILexicalBlock(scope: !1662, file: !100, line: 712, column: 7)
!1673 = !DILocation(line: 712, column: 7, scope: !1674)
!1674 = !DILexicalBlockFile(scope: !1672, file: !100, discriminator: 11)
!1675 = !DILocation(line: 712, column: 7, scope: !1676)
!1676 = !DILexicalBlockFile(scope: !1671, file: !100, discriminator: 12)
!1677 = !DILocation(line: 712, column: 7, scope: !1678)
!1678 = !DILexicalBlockFile(scope: !1672, file: !100, discriminator: 13)
!1679 = !DILocation(line: 712, column: 7, scope: !1680)
!1680 = !DILexicalBlockFile(scope: !1681, file: !100, discriminator: 16)
!1681 = distinct !DILexicalBlock(scope: !1682, file: !100, line: 712, column: 7)
!1682 = distinct !DILexicalBlock(scope: !1662, file: !100, line: 712, column: 7)
!1683 = !DILocation(line: 712, column: 7, scope: !1684)
!1684 = !DILexicalBlockFile(scope: !1682, file: !100, discriminator: 16)
!1685 = !DILocation(line: 712, column: 7, scope: !1686)
!1686 = !DILexicalBlockFile(scope: !1681, file: !100, discriminator: 17)
!1687 = !DILocation(line: 712, column: 7, scope: !1688)
!1688 = !DILexicalBlockFile(scope: !1682, file: !100, discriminator: 18)
!1689 = !DILocation(line: 712, column: 7, scope: !1690)
!1690 = !DILexicalBlockFile(scope: !1662, file: !100, discriminator: 20)
!1691 = !DILocation(line: 712, column: 7, scope: !1692)
!1692 = !DILexicalBlockFile(scope: !1693, file: !100, discriminator: 22)
!1693 = distinct !DILexicalBlock(scope: !1694, file: !100, line: 712, column: 7)
!1694 = distinct !DILexicalBlock(scope: !1652, file: !100, line: 712, column: 7)
!1695 = !DILocation(line: 712, column: 7, scope: !1696)
!1696 = !DILexicalBlockFile(scope: !1694, file: !100, discriminator: 22)
!1697 = !DILocation(line: 712, column: 7, scope: !1698)
!1698 = !DILexicalBlockFile(scope: !1693, file: !100, discriminator: 23)
!1699 = !DILocation(line: 712, column: 7, scope: !1700)
!1700 = !DILexicalBlockFile(scope: !1694, file: !100, discriminator: 24)
!1701 = !DILocation(line: 715, column: 7, scope: !1702)
!1702 = !DILexicalBlockFile(scope: !1703, file: !100, discriminator: 1)
!1703 = distinct !DILexicalBlock(scope: !1704, file: !100, line: 715, column: 7)
!1704 = distinct !DILexicalBlock(scope: !1037, file: !100, line: 715, column: 7)
!1705 = !DILocation(line: 715, column: 7, scope: !1706)
!1706 = !DILexicalBlockFile(scope: !1703, file: !100, discriminator: 2)
!1707 = !DILocation(line: 715, column: 7, scope: !1708)
!1708 = !DILexicalBlockFile(scope: !1709, file: !100, discriminator: 4)
!1709 = distinct !DILexicalBlock(scope: !1710, file: !100, line: 715, column: 7)
!1710 = distinct !DILexicalBlock(scope: !1711, file: !100, line: 715, column: 7)
!1711 = distinct !DILexicalBlock(scope: !1703, file: !100, line: 715, column: 7)
!1712 = !DILocation(line: 715, column: 7, scope: !1713)
!1713 = !DILexicalBlockFile(scope: !1710, file: !100, discriminator: 4)
!1714 = !DILocation(line: 715, column: 7, scope: !1715)
!1715 = !DILexicalBlockFile(scope: !1709, file: !100, discriminator: 5)
!1716 = !DILocation(line: 715, column: 7, scope: !1717)
!1717 = !DILexicalBlockFile(scope: !1710, file: !100, discriminator: 6)
!1718 = !DILocation(line: 715, column: 7, scope: !1719)
!1719 = !DILexicalBlockFile(scope: !1720, file: !100, discriminator: 9)
!1720 = distinct !DILexicalBlock(scope: !1721, file: !100, line: 715, column: 7)
!1721 = distinct !DILexicalBlock(scope: !1711, file: !100, line: 715, column: 7)
!1722 = !DILocation(line: 715, column: 7, scope: !1723)
!1723 = !DILexicalBlockFile(scope: !1721, file: !100, discriminator: 9)
!1724 = !DILocation(line: 715, column: 7, scope: !1725)
!1725 = !DILexicalBlockFile(scope: !1720, file: !100, discriminator: 10)
!1726 = !DILocation(line: 715, column: 7, scope: !1727)
!1727 = !DILexicalBlockFile(scope: !1721, file: !100, discriminator: 11)
!1728 = !DILocation(line: 715, column: 7, scope: !1729)
!1729 = !DILexicalBlockFile(scope: !1711, file: !100, discriminator: 13)
!1730 = !DILocation(line: 716, column: 7, scope: !1731)
!1731 = !DILexicalBlockFile(scope: !1732, file: !100, discriminator: 1)
!1732 = distinct !DILexicalBlock(scope: !1733, file: !100, line: 716, column: 7)
!1733 = distinct !DILexicalBlock(scope: !1037, file: !100, line: 716, column: 7)
!1734 = !DILocation(line: 716, column: 7, scope: !1735)
!1735 = !DILexicalBlockFile(scope: !1733, file: !100, discriminator: 1)
!1736 = !DILocation(line: 716, column: 7, scope: !1737)
!1737 = !DILexicalBlockFile(scope: !1732, file: !100, discriminator: 2)
!1738 = !DILocation(line: 716, column: 7, scope: !1739)
!1739 = !DILexicalBlockFile(scope: !1733, file: !100, discriminator: 3)
!1740 = !DILocation(line: 718, column: 13, scope: !1741)
!1741 = distinct !DILexicalBlock(scope: !1037, file: !100, line: 718, column: 11)
!1742 = !DILocation(line: 718, column: 11, scope: !1037)
!1743 = !DILocation(line: 720, column: 5, scope: !1038)
!1744 = !DILocation(line: 392, column: 75, scope: !1745)
!1745 = !DILexicalBlockFile(scope: !1038, file: !100, discriminator: 5)
!1746 = !DILocation(line: 392, column: 3, scope: !1745)
!1747 = distinct !{!1747, !1748, !1749}
!1748 = !DILocation(line: 392, column: 3, scope: !1039)
!1749 = !DILocation(line: 720, column: 5, scope: !1039)
!1750 = !DILocation(line: 722, column: 11, scope: !1751)
!1751 = distinct !DILexicalBlock(scope: !1010, file: !100, line: 722, column: 7)
!1752 = !DILocation(line: 722, column: 16, scope: !1751)
!1753 = !DILocation(line: 730, column: 51, scope: !1754)
!1754 = distinct !DILexicalBlock(scope: !1010, file: !100, line: 730, column: 7)
!1755 = !DILocation(line: 731, column: 10, scope: !1756)
!1756 = !DILexicalBlockFile(scope: !1754, file: !100, discriminator: 1)
!1757 = !DILocation(line: 733, column: 11, scope: !1758)
!1758 = distinct !DILexicalBlock(scope: !1759, file: !100, line: 733, column: 11)
!1759 = distinct !DILexicalBlock(scope: !1754, file: !100, line: 732, column: 5)
!1760 = !DILocation(line: 733, column: 11, scope: !1759)
!1761 = !DILocation(line: 734, column: 16, scope: !1758)
!1762 = !DILocation(line: 734, column: 9, scope: !1758)
!1763 = !DILocation(line: 738, column: 18, scope: !1764)
!1764 = distinct !DILexicalBlock(scope: !1758, file: !100, line: 738, column: 16)
!1765 = !DILocation(line: 738, column: 32, scope: !1766)
!1766 = !DILexicalBlockFile(scope: !1764, file: !100, discriminator: 1)
!1767 = !DILocation(line: 738, column: 29, scope: !1764)
!1768 = !DILocation(line: 747, column: 7, scope: !1769)
!1769 = distinct !DILexicalBlock(scope: !1010, file: !100, line: 747, column: 7)
!1770 = !DILocation(line: 747, column: 20, scope: !1769)
!1771 = !DILocation(line: 748, column: 12, scope: !1772)
!1772 = !DILexicalBlockFile(scope: !1773, file: !100, discriminator: 1)
!1773 = distinct !DILexicalBlock(scope: !1774, file: !100, line: 748, column: 5)
!1774 = distinct !DILexicalBlock(scope: !1769, file: !100, line: 748, column: 5)
!1775 = !DILocation(line: 748, column: 5, scope: !1776)
!1776 = !DILexicalBlockFile(scope: !1774, file: !100, discriminator: 1)
!1777 = !DILocation(line: 749, column: 7, scope: !1778)
!1778 = !DILexicalBlockFile(scope: !1779, file: !100, discriminator: 1)
!1779 = distinct !DILexicalBlock(scope: !1780, file: !100, line: 749, column: 7)
!1780 = distinct !DILexicalBlock(scope: !1773, file: !100, line: 749, column: 7)
!1781 = !DILocation(line: 749, column: 7, scope: !1782)
!1782 = !DILexicalBlockFile(scope: !1780, file: !100, discriminator: 1)
!1783 = !DILocation(line: 749, column: 7, scope: !1784)
!1784 = !DILexicalBlockFile(scope: !1779, file: !100, discriminator: 2)
!1785 = !DILocation(line: 749, column: 7, scope: !1786)
!1786 = !DILexicalBlockFile(scope: !1780, file: !100, discriminator: 3)
!1787 = !DILocation(line: 748, column: 39, scope: !1788)
!1788 = !DILexicalBlockFile(scope: !1773, file: !100, discriminator: 2)
!1789 = distinct !{!1789, !1790, !1791}
!1790 = !DILocation(line: 748, column: 5, scope: !1774)
!1791 = !DILocation(line: 749, column: 7, scope: !1774)
!1792 = !DILocation(line: 751, column: 11, scope: !1793)
!1793 = distinct !DILexicalBlock(scope: !1010, file: !100, line: 751, column: 7)
!1794 = !DILocation(line: 751, column: 7, scope: !1010)
!1795 = !DILocation(line: 752, column: 5, scope: !1793)
!1796 = !DILocation(line: 752, column: 17, scope: !1793)
!1797 = !DILocation(line: 758, column: 21, scope: !1798)
!1798 = distinct !DILexicalBlock(scope: !1010, file: !100, line: 758, column: 7)
!1799 = !DILocation(line: 758, column: 54, scope: !1800)
!1800 = !DILexicalBlockFile(scope: !1798, file: !100, discriminator: 1)
!1801 = !DILocation(line: 758, column: 51, scope: !1798)
!1802 = !DILocation(line: 762, column: 42, scope: !1010)
!1803 = !DILocation(line: 760, column: 10, scope: !1010)
!1804 = !DILocation(line: 760, column: 3, scope: !1010)
!1805 = !DILocation(line: 764, column: 1, scope: !1010)
!1806 = distinct !DISubprogram(name: "gettext_quote", scope: !100, file: !100, line: 199, type: !1807, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1809)
!1807 = !DISubroutineType(types: !1808)
!1808 = !{!6, !6, !58}
!1809 = !{!1810, !1811, !1812, !1813}
!1810 = !DILocalVariable(name: "msgid", arg: 1, scope: !1806, file: !100, line: 199, type: !6)
!1811 = !DILocalVariable(name: "s", arg: 2, scope: !1806, file: !100, line: 199, type: !58)
!1812 = !DILocalVariable(name: "translation", scope: !1806, file: !100, line: 201, type: !6)
!1813 = !DILocalVariable(name: "locale_code", scope: !1806, file: !100, line: 202, type: !6)
!1814 = !DILocation(line: 199, column: 28, scope: !1806)
!1815 = !DILocation(line: 199, column: 54, scope: !1806)
!1816 = !DILocation(line: 201, column: 29, scope: !1806)
!1817 = !DILocation(line: 201, column: 15, scope: !1806)
!1818 = !DILocation(line: 204, column: 19, scope: !1819)
!1819 = distinct !DILexicalBlock(scope: !1806, file: !100, line: 204, column: 7)
!1820 = !DILocation(line: 204, column: 7, scope: !1806)
!1821 = !DILocation(line: 225, column: 17, scope: !1806)
!1822 = !DILocation(line: 202, column: 15, scope: !1806)
!1823 = !DILocalVariable(name: "s2", arg: 2, scope: !1824, file: !1825, line: 160, type: !6)
!1824 = distinct !DISubprogram(name: "strcaseeq0", scope: !1825, file: !1825, line: 160, type: !1826, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1828)
!1825 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1826 = !DISubroutineType(types: !1827)
!1827 = !{!25, !6, !6, !8, !8, !8, !8, !8, !8, !8, !8, !8}
!1828 = !{!1829, !1823, !1830, !1831, !1832, !1833, !1834, !1835, !1836, !1837, !1838}
!1829 = !DILocalVariable(name: "s1", arg: 1, scope: !1824, file: !1825, line: 160, type: !6)
!1830 = !DILocalVariable(name: "s20", arg: 3, scope: !1824, file: !1825, line: 160, type: !8)
!1831 = !DILocalVariable(name: "s21", arg: 4, scope: !1824, file: !1825, line: 160, type: !8)
!1832 = !DILocalVariable(name: "s22", arg: 5, scope: !1824, file: !1825, line: 160, type: !8)
!1833 = !DILocalVariable(name: "s23", arg: 6, scope: !1824, file: !1825, line: 160, type: !8)
!1834 = !DILocalVariable(name: "s24", arg: 7, scope: !1824, file: !1825, line: 160, type: !8)
!1835 = !DILocalVariable(name: "s25", arg: 8, scope: !1824, file: !1825, line: 160, type: !8)
!1836 = !DILocalVariable(name: "s26", arg: 9, scope: !1824, file: !1825, line: 160, type: !8)
!1837 = !DILocalVariable(name: "s27", arg: 10, scope: !1824, file: !1825, line: 160, type: !8)
!1838 = !DILocalVariable(name: "s28", arg: 11, scope: !1824, file: !1825, line: 160, type: !8)
!1839 = !DILocation(line: 160, column: 41, scope: !1824, inlinedAt: !1840)
!1840 = distinct !DILocation(line: 226, column: 7, scope: !1841)
!1841 = distinct !DILexicalBlock(scope: !1806, file: !100, line: 226, column: 7)
!1842 = !DILocation(line: 160, column: 120, scope: !1824, inlinedAt: !1840)
!1843 = !DILocation(line: 160, column: 130, scope: !1824, inlinedAt: !1840)
!1844 = !DILocation(line: 162, column: 7, scope: !1845, inlinedAt: !1840)
!1845 = !DILexicalBlockFile(scope: !1846, file: !1825, discriminator: 1)
!1846 = distinct !DILexicalBlock(scope: !1824, file: !1825, line: 162, column: 7)
!1847 = !DILocalVariable(name: "s2", arg: 2, scope: !1848, file: !1825, line: 146, type: !6)
!1848 = distinct !DISubprogram(name: "strcaseeq1", scope: !1825, file: !1825, line: 146, type: !1849, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1851)
!1849 = !DISubroutineType(types: !1850)
!1850 = !{!25, !6, !6, !8, !8, !8, !8, !8, !8, !8, !8}
!1851 = !{!1852, !1847, !1853, !1854, !1855, !1856, !1857, !1858, !1859, !1860}
!1852 = !DILocalVariable(name: "s1", arg: 1, scope: !1848, file: !1825, line: 146, type: !6)
!1853 = !DILocalVariable(name: "s21", arg: 3, scope: !1848, file: !1825, line: 146, type: !8)
!1854 = !DILocalVariable(name: "s22", arg: 4, scope: !1848, file: !1825, line: 146, type: !8)
!1855 = !DILocalVariable(name: "s23", arg: 5, scope: !1848, file: !1825, line: 146, type: !8)
!1856 = !DILocalVariable(name: "s24", arg: 6, scope: !1848, file: !1825, line: 146, type: !8)
!1857 = !DILocalVariable(name: "s25", arg: 7, scope: !1848, file: !1825, line: 146, type: !8)
!1858 = !DILocalVariable(name: "s26", arg: 8, scope: !1848, file: !1825, line: 146, type: !8)
!1859 = !DILocalVariable(name: "s27", arg: 9, scope: !1848, file: !1825, line: 146, type: !8)
!1860 = !DILocalVariable(name: "s28", arg: 10, scope: !1848, file: !1825, line: 146, type: !8)
!1861 = !DILocation(line: 146, column: 41, scope: !1848, inlinedAt: !1862)
!1862 = distinct !DILocation(line: 167, column: 16, scope: !1863, inlinedAt: !1840)
!1863 = distinct !DILexicalBlock(scope: !1864, file: !1825, line: 164, column: 11)
!1864 = distinct !DILexicalBlock(scope: !1846, file: !1825, line: 163, column: 5)
!1865 = !DILocation(line: 146, column: 110, scope: !1848, inlinedAt: !1862)
!1866 = !DILocation(line: 146, column: 120, scope: !1848, inlinedAt: !1862)
!1867 = !DILocation(line: 148, column: 7, scope: !1868, inlinedAt: !1862)
!1868 = !DILexicalBlockFile(scope: !1869, file: !1825, discriminator: 1)
!1869 = distinct !DILexicalBlock(scope: !1848, file: !1825, line: 148, column: 7)
!1870 = !DILocalVariable(name: "s2", arg: 2, scope: !1871, file: !1825, line: 132, type: !6)
!1871 = distinct !DISubprogram(name: "strcaseeq2", scope: !1825, file: !1825, line: 132, type: !1872, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1874)
!1872 = !DISubroutineType(types: !1873)
!1873 = !{!25, !6, !6, !8, !8, !8, !8, !8, !8, !8}
!1874 = !{!1875, !1870, !1876, !1877, !1878, !1879, !1880, !1881, !1882}
!1875 = !DILocalVariable(name: "s1", arg: 1, scope: !1871, file: !1825, line: 132, type: !6)
!1876 = !DILocalVariable(name: "s22", arg: 3, scope: !1871, file: !1825, line: 132, type: !8)
!1877 = !DILocalVariable(name: "s23", arg: 4, scope: !1871, file: !1825, line: 132, type: !8)
!1878 = !DILocalVariable(name: "s24", arg: 5, scope: !1871, file: !1825, line: 132, type: !8)
!1879 = !DILocalVariable(name: "s25", arg: 6, scope: !1871, file: !1825, line: 132, type: !8)
!1880 = !DILocalVariable(name: "s26", arg: 7, scope: !1871, file: !1825, line: 132, type: !8)
!1881 = !DILocalVariable(name: "s27", arg: 8, scope: !1871, file: !1825, line: 132, type: !8)
!1882 = !DILocalVariable(name: "s28", arg: 9, scope: !1871, file: !1825, line: 132, type: !8)
!1883 = !DILocation(line: 132, column: 41, scope: !1871, inlinedAt: !1884)
!1884 = distinct !DILocation(line: 153, column: 16, scope: !1885, inlinedAt: !1862)
!1885 = distinct !DILexicalBlock(scope: !1886, file: !1825, line: 150, column: 11)
!1886 = distinct !DILexicalBlock(scope: !1869, file: !1825, line: 149, column: 5)
!1887 = !DILocation(line: 132, column: 100, scope: !1871, inlinedAt: !1884)
!1888 = !DILocation(line: 132, column: 110, scope: !1871, inlinedAt: !1884)
!1889 = !DILocation(line: 134, column: 7, scope: !1890, inlinedAt: !1884)
!1890 = !DILexicalBlockFile(scope: !1891, file: !1825, discriminator: 1)
!1891 = distinct !DILexicalBlock(scope: !1871, file: !1825, line: 134, column: 7)
!1892 = !DILocalVariable(name: "s2", arg: 2, scope: !1893, file: !1825, line: 118, type: !6)
!1893 = distinct !DISubprogram(name: "strcaseeq3", scope: !1825, file: !1825, line: 118, type: !1894, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1896)
!1894 = !DISubroutineType(types: !1895)
!1895 = !{!25, !6, !6, !8, !8, !8, !8, !8, !8}
!1896 = !{!1897, !1892, !1898, !1899, !1900, !1901, !1902, !1903}
!1897 = !DILocalVariable(name: "s1", arg: 1, scope: !1893, file: !1825, line: 118, type: !6)
!1898 = !DILocalVariable(name: "s23", arg: 3, scope: !1893, file: !1825, line: 118, type: !8)
!1899 = !DILocalVariable(name: "s24", arg: 4, scope: !1893, file: !1825, line: 118, type: !8)
!1900 = !DILocalVariable(name: "s25", arg: 5, scope: !1893, file: !1825, line: 118, type: !8)
!1901 = !DILocalVariable(name: "s26", arg: 6, scope: !1893, file: !1825, line: 118, type: !8)
!1902 = !DILocalVariable(name: "s27", arg: 7, scope: !1893, file: !1825, line: 118, type: !8)
!1903 = !DILocalVariable(name: "s28", arg: 8, scope: !1893, file: !1825, line: 118, type: !8)
!1904 = !DILocation(line: 118, column: 41, scope: !1893, inlinedAt: !1905)
!1905 = distinct !DILocation(line: 139, column: 16, scope: !1906, inlinedAt: !1884)
!1906 = distinct !DILexicalBlock(scope: !1907, file: !1825, line: 136, column: 11)
!1907 = distinct !DILexicalBlock(scope: !1891, file: !1825, line: 135, column: 5)
!1908 = !DILocation(line: 118, column: 90, scope: !1893, inlinedAt: !1905)
!1909 = !DILocation(line: 118, column: 100, scope: !1893, inlinedAt: !1905)
!1910 = !DILocation(line: 120, column: 7, scope: !1911, inlinedAt: !1905)
!1911 = !DILexicalBlockFile(scope: !1912, file: !1825, discriminator: 2)
!1912 = distinct !DILexicalBlock(scope: !1893, file: !1825, line: 120, column: 7)
!1913 = !DILocation(line: 120, column: 7, scope: !1914, inlinedAt: !1905)
!1914 = !DILexicalBlockFile(scope: !1893, file: !1825, discriminator: 2)
!1915 = !DILocalVariable(name: "s2", arg: 2, scope: !1916, file: !1825, line: 104, type: !6)
!1916 = distinct !DISubprogram(name: "strcaseeq4", scope: !1825, file: !1825, line: 104, type: !1917, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1919)
!1917 = !DISubroutineType(types: !1918)
!1918 = !{!25, !6, !6, !8, !8, !8, !8, !8}
!1919 = !{!1920, !1915, !1921, !1922, !1923, !1924, !1925}
!1920 = !DILocalVariable(name: "s1", arg: 1, scope: !1916, file: !1825, line: 104, type: !6)
!1921 = !DILocalVariable(name: "s24", arg: 3, scope: !1916, file: !1825, line: 104, type: !8)
!1922 = !DILocalVariable(name: "s25", arg: 4, scope: !1916, file: !1825, line: 104, type: !8)
!1923 = !DILocalVariable(name: "s26", arg: 5, scope: !1916, file: !1825, line: 104, type: !8)
!1924 = !DILocalVariable(name: "s27", arg: 6, scope: !1916, file: !1825, line: 104, type: !8)
!1925 = !DILocalVariable(name: "s28", arg: 7, scope: !1916, file: !1825, line: 104, type: !8)
!1926 = !DILocation(line: 104, column: 41, scope: !1916, inlinedAt: !1927)
!1927 = distinct !DILocation(line: 125, column: 16, scope: !1928, inlinedAt: !1905)
!1928 = distinct !DILexicalBlock(scope: !1929, file: !1825, line: 122, column: 11)
!1929 = distinct !DILexicalBlock(scope: !1912, file: !1825, line: 121, column: 5)
!1930 = !DILocation(line: 104, column: 80, scope: !1916, inlinedAt: !1927)
!1931 = !DILocation(line: 104, column: 90, scope: !1916, inlinedAt: !1927)
!1932 = !DILocation(line: 106, column: 7, scope: !1933, inlinedAt: !1927)
!1933 = !DILexicalBlockFile(scope: !1934, file: !1825, discriminator: 2)
!1934 = distinct !DILexicalBlock(scope: !1916, file: !1825, line: 106, column: 7)
!1935 = !DILocation(line: 106, column: 7, scope: !1936, inlinedAt: !1927)
!1936 = !DILexicalBlockFile(scope: !1916, file: !1825, discriminator: 2)
!1937 = !DILocalVariable(name: "s2", arg: 2, scope: !1938, file: !1825, line: 90, type: !6)
!1938 = distinct !DISubprogram(name: "strcaseeq5", scope: !1825, file: !1825, line: 90, type: !1939, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1941)
!1939 = !DISubroutineType(types: !1940)
!1940 = !{!25, !6, !6, !8, !8, !8, !8}
!1941 = !{!1942, !1937, !1943, !1944, !1945, !1946}
!1942 = !DILocalVariable(name: "s1", arg: 1, scope: !1938, file: !1825, line: 90, type: !6)
!1943 = !DILocalVariable(name: "s25", arg: 3, scope: !1938, file: !1825, line: 90, type: !8)
!1944 = !DILocalVariable(name: "s26", arg: 4, scope: !1938, file: !1825, line: 90, type: !8)
!1945 = !DILocalVariable(name: "s27", arg: 5, scope: !1938, file: !1825, line: 90, type: !8)
!1946 = !DILocalVariable(name: "s28", arg: 6, scope: !1938, file: !1825, line: 90, type: !8)
!1947 = !DILocation(line: 90, column: 41, scope: !1938, inlinedAt: !1948)
!1948 = distinct !DILocation(line: 111, column: 16, scope: !1949, inlinedAt: !1927)
!1949 = distinct !DILexicalBlock(scope: !1950, file: !1825, line: 108, column: 11)
!1950 = distinct !DILexicalBlock(scope: !1934, file: !1825, line: 107, column: 5)
!1951 = !DILocation(line: 90, column: 70, scope: !1938, inlinedAt: !1948)
!1952 = !DILocation(line: 90, column: 80, scope: !1938, inlinedAt: !1948)
!1953 = !DILocation(line: 92, column: 7, scope: !1954, inlinedAt: !1948)
!1954 = !DILexicalBlockFile(scope: !1955, file: !1825, discriminator: 2)
!1955 = distinct !DILexicalBlock(scope: !1938, file: !1825, line: 92, column: 7)
!1956 = !DILocation(line: 92, column: 7, scope: !1957, inlinedAt: !1948)
!1957 = !DILexicalBlockFile(scope: !1938, file: !1825, discriminator: 2)
!1958 = !DILocation(line: 227, column: 12, scope: !1841)
!1959 = !DILocation(line: 227, column: 21, scope: !1841)
!1960 = !DILocation(line: 227, column: 5, scope: !1841)
!1961 = !DILocation(line: 146, column: 41, scope: !1848, inlinedAt: !1962)
!1962 = distinct !DILocation(line: 167, column: 16, scope: !1863, inlinedAt: !1963)
!1963 = distinct !DILocation(line: 228, column: 7, scope: !1964)
!1964 = distinct !DILexicalBlock(scope: !1806, file: !100, line: 228, column: 7)
!1965 = !DILocation(line: 146, column: 110, scope: !1848, inlinedAt: !1962)
!1966 = !DILocation(line: 146, column: 120, scope: !1848, inlinedAt: !1962)
!1967 = !DILocation(line: 148, column: 7, scope: !1868, inlinedAt: !1962)
!1968 = !DILocation(line: 132, column: 41, scope: !1871, inlinedAt: !1969)
!1969 = distinct !DILocation(line: 153, column: 16, scope: !1885, inlinedAt: !1962)
!1970 = !DILocation(line: 132, column: 100, scope: !1871, inlinedAt: !1969)
!1971 = !DILocation(line: 132, column: 110, scope: !1871, inlinedAt: !1969)
!1972 = !DILocation(line: 134, column: 7, scope: !1973, inlinedAt: !1969)
!1973 = !DILexicalBlockFile(scope: !1891, file: !1825, discriminator: 2)
!1974 = !DILocation(line: 134, column: 7, scope: !1975, inlinedAt: !1969)
!1975 = !DILexicalBlockFile(scope: !1871, file: !1825, discriminator: 2)
!1976 = !DILocation(line: 118, column: 41, scope: !1893, inlinedAt: !1977)
!1977 = distinct !DILocation(line: 139, column: 16, scope: !1906, inlinedAt: !1969)
!1978 = !DILocation(line: 118, column: 90, scope: !1893, inlinedAt: !1977)
!1979 = !DILocation(line: 118, column: 100, scope: !1893, inlinedAt: !1977)
!1980 = !DILocation(line: 120, column: 7, scope: !1911, inlinedAt: !1977)
!1981 = !DILocation(line: 120, column: 7, scope: !1914, inlinedAt: !1977)
!1982 = !DILocation(line: 104, column: 41, scope: !1916, inlinedAt: !1983)
!1983 = distinct !DILocation(line: 125, column: 16, scope: !1928, inlinedAt: !1977)
!1984 = !DILocation(line: 104, column: 80, scope: !1916, inlinedAt: !1983)
!1985 = !DILocation(line: 104, column: 90, scope: !1916, inlinedAt: !1983)
!1986 = !DILocation(line: 106, column: 7, scope: !1933, inlinedAt: !1983)
!1987 = !DILocation(line: 106, column: 7, scope: !1936, inlinedAt: !1983)
!1988 = !DILocation(line: 90, column: 41, scope: !1938, inlinedAt: !1989)
!1989 = distinct !DILocation(line: 111, column: 16, scope: !1949, inlinedAt: !1983)
!1990 = !DILocation(line: 90, column: 70, scope: !1938, inlinedAt: !1989)
!1991 = !DILocation(line: 90, column: 80, scope: !1938, inlinedAt: !1989)
!1992 = !DILocation(line: 92, column: 7, scope: !1954, inlinedAt: !1989)
!1993 = !DILocation(line: 92, column: 7, scope: !1957, inlinedAt: !1989)
!1994 = !DILocalVariable(name: "s2", arg: 2, scope: !1995, file: !1825, line: 76, type: !6)
!1995 = distinct !DISubprogram(name: "strcaseeq6", scope: !1825, file: !1825, line: 76, type: !1996, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1998)
!1996 = !DISubroutineType(types: !1997)
!1997 = !{!25, !6, !6, !8, !8, !8}
!1998 = !{!1999, !1994, !2000, !2001, !2002}
!1999 = !DILocalVariable(name: "s1", arg: 1, scope: !1995, file: !1825, line: 76, type: !6)
!2000 = !DILocalVariable(name: "s26", arg: 3, scope: !1995, file: !1825, line: 76, type: !8)
!2001 = !DILocalVariable(name: "s27", arg: 4, scope: !1995, file: !1825, line: 76, type: !8)
!2002 = !DILocalVariable(name: "s28", arg: 5, scope: !1995, file: !1825, line: 76, type: !8)
!2003 = !DILocation(line: 76, column: 41, scope: !1995, inlinedAt: !2004)
!2004 = distinct !DILocation(line: 97, column: 16, scope: !2005, inlinedAt: !1989)
!2005 = distinct !DILexicalBlock(scope: !2006, file: !1825, line: 94, column: 11)
!2006 = distinct !DILexicalBlock(scope: !1955, file: !1825, line: 93, column: 5)
!2007 = !DILocation(line: 76, column: 60, scope: !1995, inlinedAt: !2004)
!2008 = !DILocation(line: 76, column: 70, scope: !1995, inlinedAt: !2004)
!2009 = !DILocation(line: 78, column: 7, scope: !2010, inlinedAt: !2004)
!2010 = !DILexicalBlockFile(scope: !2011, file: !1825, discriminator: 2)
!2011 = distinct !DILexicalBlock(scope: !1995, file: !1825, line: 78, column: 7)
!2012 = !DILocation(line: 78, column: 7, scope: !2013, inlinedAt: !2004)
!2013 = !DILexicalBlockFile(scope: !1995, file: !1825, discriminator: 2)
!2014 = !DILocalVariable(name: "s2", arg: 2, scope: !2015, file: !1825, line: 62, type: !6)
!2015 = distinct !DISubprogram(name: "strcaseeq7", scope: !1825, file: !1825, line: 62, type: !2016, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2018)
!2016 = !DISubroutineType(types: !2017)
!2017 = !{!25, !6, !6, !8, !8}
!2018 = !{!2019, !2014, !2020, !2021}
!2019 = !DILocalVariable(name: "s1", arg: 1, scope: !2015, file: !1825, line: 62, type: !6)
!2020 = !DILocalVariable(name: "s27", arg: 3, scope: !2015, file: !1825, line: 62, type: !8)
!2021 = !DILocalVariable(name: "s28", arg: 4, scope: !2015, file: !1825, line: 62, type: !8)
!2022 = !DILocation(line: 62, column: 41, scope: !2015, inlinedAt: !2023)
!2023 = distinct !DILocation(line: 83, column: 16, scope: !2024, inlinedAt: !2004)
!2024 = distinct !DILexicalBlock(scope: !2025, file: !1825, line: 80, column: 11)
!2025 = distinct !DILexicalBlock(scope: !2011, file: !1825, line: 79, column: 5)
!2026 = !DILocation(line: 62, column: 50, scope: !2015, inlinedAt: !2023)
!2027 = !DILocation(line: 62, column: 60, scope: !2015, inlinedAt: !2023)
!2028 = !DILocation(line: 64, column: 7, scope: !2029, inlinedAt: !2023)
!2029 = !DILexicalBlockFile(scope: !2030, file: !1825, discriminator: 2)
!2030 = distinct !DILexicalBlock(scope: !2015, file: !1825, line: 64, column: 7)
!2031 = !DILocation(line: 228, column: 7, scope: !1806)
!2032 = !DILocation(line: 229, column: 12, scope: !1964)
!2033 = !DILocation(line: 229, column: 21, scope: !1964)
!2034 = !DILocation(line: 229, column: 5, scope: !1964)
!2035 = !DILocation(line: 231, column: 13, scope: !1806)
!2036 = !DILocation(line: 231, column: 11, scope: !1806)
!2037 = !DILocation(line: 231, column: 3, scope: !1806)
!2038 = !DILocation(line: 232, column: 1, scope: !1806)
!2039 = distinct !DISubprogram(name: "quotearg_alloc", scope: !100, file: !100, line: 791, type: !2040, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2042)
!2040 = !DISubroutineType(types: !2041)
!2041 = !{!50, !6, !94, !878}
!2042 = !{!2043, !2044, !2045}
!2043 = !DILocalVariable(name: "arg", arg: 1, scope: !2039, file: !100, line: 791, type: !6)
!2044 = !DILocalVariable(name: "argsize", arg: 2, scope: !2039, file: !100, line: 791, type: !94)
!2045 = !DILocalVariable(name: "o", arg: 3, scope: !2039, file: !100, line: 792, type: !878)
!2046 = !DILocation(line: 791, column: 29, scope: !2039)
!2047 = !DILocation(line: 791, column: 41, scope: !2039)
!2048 = !DILocation(line: 792, column: 47, scope: !2039)
!2049 = !DILocalVariable(name: "arg", arg: 1, scope: !2050, file: !100, line: 804, type: !6)
!2050 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !100, file: !100, line: 804, type: !2051, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2053)
!2051 = !DISubroutineType(types: !2052)
!2052 = !{!50, !6, !94, !553, !878}
!2053 = !{!2049, !2054, !2055, !2056, !2057, !2058, !2059, !2060, !2061}
!2054 = !DILocalVariable(name: "argsize", arg: 2, scope: !2050, file: !100, line: 804, type: !94)
!2055 = !DILocalVariable(name: "size", arg: 3, scope: !2050, file: !100, line: 804, type: !553)
!2056 = !DILocalVariable(name: "o", arg: 4, scope: !2050, file: !100, line: 805, type: !878)
!2057 = !DILocalVariable(name: "p", scope: !2050, file: !100, line: 807, type: !878)
!2058 = !DILocalVariable(name: "e", scope: !2050, file: !100, line: 808, type: !25)
!2059 = !DILocalVariable(name: "flags", scope: !2050, file: !100, line: 810, type: !25)
!2060 = !DILocalVariable(name: "bufsize", scope: !2050, file: !100, line: 811, type: !94)
!2061 = !DILocalVariable(name: "buf", scope: !2050, file: !100, line: 815, type: !50)
!2062 = !DILocation(line: 804, column: 33, scope: !2050, inlinedAt: !2063)
!2063 = distinct !DILocation(line: 794, column: 10, scope: !2039)
!2064 = !DILocation(line: 804, column: 45, scope: !2050, inlinedAt: !2063)
!2065 = !DILocation(line: 804, column: 62, scope: !2050, inlinedAt: !2063)
!2066 = !DILocation(line: 805, column: 51, scope: !2050, inlinedAt: !2063)
!2067 = !DILocation(line: 807, column: 37, scope: !2050, inlinedAt: !2063)
!2068 = !DILocation(line: 807, column: 33, scope: !2050, inlinedAt: !2063)
!2069 = !DILocation(line: 808, column: 11, scope: !2050, inlinedAt: !2063)
!2070 = !DILocation(line: 808, column: 7, scope: !2050, inlinedAt: !2063)
!2071 = !DILocation(line: 810, column: 18, scope: !2050, inlinedAt: !2063)
!2072 = !DILocation(line: 810, column: 24, scope: !2050, inlinedAt: !2063)
!2073 = !DILocation(line: 810, column: 7, scope: !2050, inlinedAt: !2063)
!2074 = !DILocation(line: 811, column: 69, scope: !2050, inlinedAt: !2063)
!2075 = !DILocation(line: 812, column: 53, scope: !2050, inlinedAt: !2063)
!2076 = !DILocation(line: 813, column: 49, scope: !2050, inlinedAt: !2063)
!2077 = !DILocation(line: 814, column: 49, scope: !2050, inlinedAt: !2063)
!2078 = !DILocation(line: 811, column: 20, scope: !2050, inlinedAt: !2063)
!2079 = !DILocation(line: 814, column: 62, scope: !2050, inlinedAt: !2063)
!2080 = !DILocation(line: 811, column: 10, scope: !2050, inlinedAt: !2063)
!2081 = !DILocalVariable(name: "n", arg: 1, scope: !2082, file: !549, line: 220, type: !94)
!2082 = distinct !DISubprogram(name: "xcharalloc", scope: !549, file: !549, line: 220, type: !2083, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2085)
!2083 = !DISubroutineType(types: !2084)
!2084 = !{!50, !94}
!2085 = !{!2081}
!2086 = !DILocation(line: 220, column: 20, scope: !2082, inlinedAt: !2087)
!2087 = distinct !DILocation(line: 815, column: 15, scope: !2050, inlinedAt: !2063)
!2088 = !DILocation(line: 222, column: 10, scope: !2082, inlinedAt: !2087)
!2089 = !DILocation(line: 815, column: 9, scope: !2050, inlinedAt: !2063)
!2090 = !DILocation(line: 816, column: 60, scope: !2050, inlinedAt: !2063)
!2091 = !DILocation(line: 818, column: 32, scope: !2050, inlinedAt: !2063)
!2092 = !DILocation(line: 818, column: 47, scope: !2050, inlinedAt: !2063)
!2093 = !DILocation(line: 816, column: 3, scope: !2050, inlinedAt: !2063)
!2094 = !DILocation(line: 819, column: 9, scope: !2050, inlinedAt: !2063)
!2095 = !DILocation(line: 794, column: 3, scope: !2039)
!2096 = !DILocation(line: 804, column: 33, scope: !2050)
!2097 = !DILocation(line: 804, column: 45, scope: !2050)
!2098 = !DILocation(line: 804, column: 62, scope: !2050)
!2099 = !DILocation(line: 805, column: 51, scope: !2050)
!2100 = !DILocation(line: 807, column: 37, scope: !2050)
!2101 = !DILocation(line: 807, column: 33, scope: !2050)
!2102 = !DILocation(line: 808, column: 11, scope: !2050)
!2103 = !DILocation(line: 808, column: 7, scope: !2050)
!2104 = !DILocation(line: 810, column: 18, scope: !2050)
!2105 = !DILocation(line: 810, column: 27, scope: !2050)
!2106 = !DILocation(line: 810, column: 24, scope: !2050)
!2107 = !DILocation(line: 810, column: 7, scope: !2050)
!2108 = !DILocation(line: 811, column: 69, scope: !2050)
!2109 = !DILocation(line: 812, column: 53, scope: !2050)
!2110 = !DILocation(line: 813, column: 49, scope: !2050)
!2111 = !DILocation(line: 814, column: 49, scope: !2050)
!2112 = !DILocation(line: 811, column: 20, scope: !2050)
!2113 = !DILocation(line: 814, column: 62, scope: !2050)
!2114 = !DILocation(line: 811, column: 10, scope: !2050)
!2115 = !DILocation(line: 220, column: 20, scope: !2082, inlinedAt: !2116)
!2116 = distinct !DILocation(line: 815, column: 15, scope: !2050)
!2117 = !DILocation(line: 222, column: 10, scope: !2082, inlinedAt: !2116)
!2118 = !DILocation(line: 815, column: 9, scope: !2050)
!2119 = !DILocation(line: 816, column: 60, scope: !2050)
!2120 = !DILocation(line: 818, column: 32, scope: !2050)
!2121 = !DILocation(line: 818, column: 47, scope: !2050)
!2122 = !DILocation(line: 816, column: 3, scope: !2050)
!2123 = !DILocation(line: 819, column: 9, scope: !2050)
!2124 = !DILocation(line: 820, column: 7, scope: !2050)
!2125 = !DILocation(line: 821, column: 11, scope: !2126)
!2126 = distinct !DILexicalBlock(scope: !2050, file: !100, line: 820, column: 7)
!2127 = !{!2128, !2128, i64 0}
!2128 = !{!"long", !600, i64 0}
!2129 = !DILocation(line: 821, column: 5, scope: !2126)
!2130 = !DILocation(line: 822, column: 3, scope: !2050)
!2131 = distinct !DISubprogram(name: "quotearg_free", scope: !100, file: !100, line: 840, type: !717, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2132)
!2132 = !{!2133, !2134}
!2133 = !DILocalVariable(name: "sv", scope: !2131, file: !100, line: 842, type: !127)
!2134 = !DILocalVariable(name: "i", scope: !2131, file: !100, line: 843, type: !25)
!2135 = !DILocation(line: 842, column: 24, scope: !2131)
!2136 = !DILocation(line: 842, column: 19, scope: !2131)
!2137 = !DILocation(line: 843, column: 7, scope: !2131)
!2138 = !DILocation(line: 844, column: 19, scope: !2139)
!2139 = !DILexicalBlockFile(scope: !2140, file: !100, discriminator: 1)
!2140 = distinct !DILexicalBlock(scope: !2141, file: !100, line: 844, column: 3)
!2141 = distinct !DILexicalBlock(scope: !2131, file: !100, line: 844, column: 3)
!2142 = !DILocation(line: 844, column: 17, scope: !2139)
!2143 = !DILocation(line: 844, column: 3, scope: !2144)
!2144 = !DILexicalBlockFile(scope: !2141, file: !100, discriminator: 1)
!2145 = !DILocation(line: 845, column: 17, scope: !2140)
!2146 = !{!2147, !599, i64 8}
!2147 = !{!"slotvec", !2128, i64 0, !599, i64 8}
!2148 = !DILocation(line: 845, column: 5, scope: !2140)
!2149 = !DILocation(line: 844, column: 28, scope: !2150)
!2150 = !DILexicalBlockFile(scope: !2140, file: !100, discriminator: 2)
!2151 = distinct !{!2151, !2152, !2153}
!2152 = !DILocation(line: 844, column: 3, scope: !2141)
!2153 = !DILocation(line: 845, column: 20, scope: !2141)
!2154 = !DILocation(line: 846, column: 13, scope: !2155)
!2155 = distinct !DILexicalBlock(scope: !2131, file: !100, line: 846, column: 7)
!2156 = !DILocation(line: 846, column: 17, scope: !2155)
!2157 = !DILocation(line: 846, column: 7, scope: !2131)
!2158 = !DILocation(line: 848, column: 7, scope: !2159)
!2159 = distinct !DILexicalBlock(scope: !2155, file: !100, line: 847, column: 5)
!2160 = !DILocation(line: 849, column: 21, scope: !2159)
!2161 = !{!2147, !2128, i64 0}
!2162 = !DILocation(line: 850, column: 20, scope: !2159)
!2163 = !DILocation(line: 851, column: 5, scope: !2159)
!2164 = !DILocation(line: 852, column: 10, scope: !2165)
!2165 = distinct !DILexicalBlock(scope: !2131, file: !100, line: 852, column: 7)
!2166 = !DILocation(line: 852, column: 7, scope: !2131)
!2167 = !DILocation(line: 854, column: 13, scope: !2168)
!2168 = distinct !DILexicalBlock(scope: !2165, file: !100, line: 853, column: 5)
!2169 = !DILocation(line: 854, column: 7, scope: !2168)
!2170 = !DILocation(line: 855, column: 15, scope: !2168)
!2171 = !DILocation(line: 856, column: 5, scope: !2168)
!2172 = !DILocation(line: 857, column: 10, scope: !2131)
!2173 = !DILocation(line: 858, column: 1, scope: !2131)
!2174 = distinct !DISubprogram(name: "quotearg_n", scope: !100, file: !100, line: 922, type: !2175, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2177)
!2175 = !DISubroutineType(types: !2176)
!2176 = !{!50, !25, !6}
!2177 = !{!2178, !2179}
!2178 = !DILocalVariable(name: "n", arg: 1, scope: !2174, file: !100, line: 922, type: !25)
!2179 = !DILocalVariable(name: "arg", arg: 2, scope: !2174, file: !100, line: 922, type: !6)
!2180 = !DILocation(line: 922, column: 17, scope: !2174)
!2181 = !DILocation(line: 922, column: 32, scope: !2174)
!2182 = !DILocation(line: 924, column: 10, scope: !2174)
!2183 = !DILocation(line: 924, column: 3, scope: !2174)
!2184 = distinct !DISubprogram(name: "quotearg_n_options", scope: !100, file: !100, line: 869, type: !2185, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2187)
!2185 = !DISubroutineType(types: !2186)
!2186 = !{!50, !25, !6, !94, !878}
!2187 = !{!2188, !2189, !2190, !2191, !2192, !2193, !2194, !2197, !2199, !2200, !2201}
!2188 = !DILocalVariable(name: "n", arg: 1, scope: !2184, file: !100, line: 869, type: !25)
!2189 = !DILocalVariable(name: "arg", arg: 2, scope: !2184, file: !100, line: 869, type: !6)
!2190 = !DILocalVariable(name: "argsize", arg: 3, scope: !2184, file: !100, line: 869, type: !94)
!2191 = !DILocalVariable(name: "options", arg: 4, scope: !2184, file: !100, line: 870, type: !878)
!2192 = !DILocalVariable(name: "e", scope: !2184, file: !100, line: 872, type: !25)
!2193 = !DILocalVariable(name: "sv", scope: !2184, file: !100, line: 874, type: !127)
!2194 = !DILocalVariable(name: "preallocated", scope: !2195, file: !100, line: 881, type: !17)
!2195 = distinct !DILexicalBlock(scope: !2196, file: !100, line: 880, column: 5)
!2196 = distinct !DILexicalBlock(scope: !2184, file: !100, line: 879, column: 7)
!2197 = !DILocalVariable(name: "size", scope: !2198, file: !100, line: 894, type: !94)
!2198 = distinct !DILexicalBlock(scope: !2184, file: !100, line: 893, column: 3)
!2199 = !DILocalVariable(name: "val", scope: !2198, file: !100, line: 895, type: !50)
!2200 = !DILocalVariable(name: "flags", scope: !2198, file: !100, line: 897, type: !25)
!2201 = !DILocalVariable(name: "qsize", scope: !2198, file: !100, line: 898, type: !94)
!2202 = !DILocation(line: 869, column: 25, scope: !2184)
!2203 = !DILocation(line: 869, column: 40, scope: !2184)
!2204 = !DILocation(line: 869, column: 52, scope: !2184)
!2205 = !DILocation(line: 870, column: 51, scope: !2184)
!2206 = !DILocation(line: 872, column: 11, scope: !2184)
!2207 = !DILocation(line: 872, column: 7, scope: !2184)
!2208 = !DILocation(line: 874, column: 24, scope: !2184)
!2209 = !DILocation(line: 874, column: 19, scope: !2184)
!2210 = !DILocation(line: 876, column: 9, scope: !2211)
!2211 = distinct !DILexicalBlock(scope: !2184, file: !100, line: 876, column: 7)
!2212 = !DILocation(line: 876, column: 7, scope: !2184)
!2213 = !DILocation(line: 877, column: 5, scope: !2211)
!2214 = !DILocation(line: 879, column: 7, scope: !2196)
!2215 = !DILocation(line: 879, column: 14, scope: !2196)
!2216 = !DILocation(line: 879, column: 7, scope: !2184)
!2217 = !DILocation(line: 881, column: 31, scope: !2195)
!2218 = !DILocation(line: 883, column: 67, scope: !2219)
!2219 = distinct !DILexicalBlock(scope: !2195, file: !100, line: 883, column: 11)
!2220 = !DILocation(line: 883, column: 11, scope: !2195)
!2221 = !DILocation(line: 884, column: 9, scope: !2219)
!2222 = !DILocation(line: 886, column: 32, scope: !2223)
!2223 = !DILexicalBlockFile(scope: !2195, file: !100, discriminator: 3)
!2224 = !DILocation(line: 886, column: 61, scope: !2223)
!2225 = !DILocation(line: 886, column: 58, scope: !2223)
!2226 = !DILocation(line: 886, column: 66, scope: !2223)
!2227 = !DILocation(line: 886, column: 22, scope: !2223)
!2228 = !DILocation(line: 886, column: 15, scope: !2223)
!2229 = !DILocation(line: 887, column: 11, scope: !2195)
!2230 = !DILocation(line: 888, column: 15, scope: !2231)
!2231 = distinct !DILexicalBlock(scope: !2195, file: !100, line: 887, column: 11)
!2232 = !{i64 0, i64 8, !2127, i64 8, i64 8, !598}
!2233 = !DILocation(line: 888, column: 9, scope: !2231)
!2234 = !DILocation(line: 889, column: 20, scope: !2195)
!2235 = !DILocation(line: 889, column: 18, scope: !2195)
!2236 = !DILocation(line: 889, column: 7, scope: !2195)
!2237 = !DILocation(line: 889, column: 38, scope: !2195)
!2238 = !DILocation(line: 889, column: 31, scope: !2195)
!2239 = !DILocation(line: 889, column: 48, scope: !2195)
!2240 = !DILocation(line: 890, column: 14, scope: !2195)
!2241 = !DILocation(line: 891, column: 5, scope: !2195)
!2242 = !DILocation(line: 894, column: 19, scope: !2198)
!2243 = !DILocation(line: 894, column: 25, scope: !2198)
!2244 = !DILocation(line: 894, column: 12, scope: !2198)
!2245 = !DILocation(line: 895, column: 23, scope: !2198)
!2246 = !DILocation(line: 895, column: 11, scope: !2198)
!2247 = !DILocation(line: 897, column: 26, scope: !2198)
!2248 = !DILocation(line: 897, column: 32, scope: !2198)
!2249 = !DILocation(line: 897, column: 9, scope: !2198)
!2250 = !DILocation(line: 899, column: 55, scope: !2198)
!2251 = !DILocation(line: 900, column: 46, scope: !2198)
!2252 = !DILocation(line: 901, column: 55, scope: !2198)
!2253 = !DILocation(line: 902, column: 55, scope: !2198)
!2254 = !DILocation(line: 898, column: 20, scope: !2198)
!2255 = !DILocation(line: 898, column: 12, scope: !2198)
!2256 = !DILocation(line: 904, column: 14, scope: !2257)
!2257 = distinct !DILexicalBlock(scope: !2198, file: !100, line: 904, column: 9)
!2258 = !DILocation(line: 904, column: 9, scope: !2198)
!2259 = !DILocation(line: 906, column: 35, scope: !2260)
!2260 = distinct !DILexicalBlock(scope: !2257, file: !100, line: 905, column: 7)
!2261 = !DILocation(line: 906, column: 20, scope: !2260)
!2262 = !DILocation(line: 907, column: 17, scope: !2263)
!2263 = distinct !DILexicalBlock(scope: !2260, file: !100, line: 907, column: 13)
!2264 = !DILocation(line: 907, column: 13, scope: !2260)
!2265 = !DILocation(line: 908, column: 11, scope: !2263)
!2266 = !DILocation(line: 220, column: 20, scope: !2082, inlinedAt: !2267)
!2267 = distinct !DILocation(line: 909, column: 27, scope: !2260)
!2268 = !DILocation(line: 222, column: 10, scope: !2082, inlinedAt: !2267)
!2269 = !DILocation(line: 909, column: 19, scope: !2260)
!2270 = !DILocation(line: 910, column: 69, scope: !2260)
!2271 = !DILocation(line: 912, column: 44, scope: !2260)
!2272 = !DILocation(line: 913, column: 44, scope: !2260)
!2273 = !DILocation(line: 910, column: 9, scope: !2260)
!2274 = !DILocation(line: 914, column: 7, scope: !2260)
!2275 = !DILocation(line: 916, column: 11, scope: !2198)
!2276 = !DILocation(line: 917, column: 5, scope: !2198)
!2277 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !100, file: !100, line: 928, type: !2278, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2280)
!2278 = !DISubroutineType(types: !2279)
!2279 = !{!50, !25, !6, !94}
!2280 = !{!2281, !2282, !2283}
!2281 = !DILocalVariable(name: "n", arg: 1, scope: !2277, file: !100, line: 928, type: !25)
!2282 = !DILocalVariable(name: "arg", arg: 2, scope: !2277, file: !100, line: 928, type: !6)
!2283 = !DILocalVariable(name: "argsize", arg: 3, scope: !2277, file: !100, line: 928, type: !94)
!2284 = !DILocation(line: 928, column: 21, scope: !2277)
!2285 = !DILocation(line: 928, column: 36, scope: !2277)
!2286 = !DILocation(line: 928, column: 48, scope: !2277)
!2287 = !DILocation(line: 930, column: 10, scope: !2277)
!2288 = !DILocation(line: 930, column: 3, scope: !2277)
!2289 = distinct !DISubprogram(name: "quotearg", scope: !100, file: !100, line: 934, type: !2290, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2292)
!2290 = !DISubroutineType(types: !2291)
!2291 = !{!50, !6}
!2292 = !{!2293}
!2293 = !DILocalVariable(name: "arg", arg: 1, scope: !2289, file: !100, line: 934, type: !6)
!2294 = !DILocation(line: 934, column: 23, scope: !2289)
!2295 = !DILocation(line: 922, column: 17, scope: !2174, inlinedAt: !2296)
!2296 = distinct !DILocation(line: 936, column: 10, scope: !2289)
!2297 = !DILocation(line: 922, column: 32, scope: !2174, inlinedAt: !2296)
!2298 = !DILocation(line: 924, column: 10, scope: !2174, inlinedAt: !2296)
!2299 = !DILocation(line: 936, column: 3, scope: !2289)
!2300 = distinct !DISubprogram(name: "quotearg_mem", scope: !100, file: !100, line: 940, type: !2301, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2303)
!2301 = !DISubroutineType(types: !2302)
!2302 = !{!50, !6, !94}
!2303 = !{!2304, !2305}
!2304 = !DILocalVariable(name: "arg", arg: 1, scope: !2300, file: !100, line: 940, type: !6)
!2305 = !DILocalVariable(name: "argsize", arg: 2, scope: !2300, file: !100, line: 940, type: !94)
!2306 = !DILocation(line: 940, column: 27, scope: !2300)
!2307 = !DILocation(line: 940, column: 39, scope: !2300)
!2308 = !DILocation(line: 928, column: 21, scope: !2277, inlinedAt: !2309)
!2309 = distinct !DILocation(line: 942, column: 10, scope: !2300)
!2310 = !DILocation(line: 928, column: 36, scope: !2277, inlinedAt: !2309)
!2311 = !DILocation(line: 928, column: 48, scope: !2277, inlinedAt: !2309)
!2312 = !DILocation(line: 930, column: 10, scope: !2277, inlinedAt: !2309)
!2313 = !DILocation(line: 942, column: 3, scope: !2300)
!2314 = distinct !DISubprogram(name: "quotearg_n_style", scope: !100, file: !100, line: 946, type: !2315, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2317)
!2315 = !DISubroutineType(types: !2316)
!2316 = !{!50, !25, !58, !6}
!2317 = !{!2318, !2319, !2320, !2321}
!2318 = !DILocalVariable(name: "n", arg: 1, scope: !2314, file: !100, line: 946, type: !25)
!2319 = !DILocalVariable(name: "s", arg: 2, scope: !2314, file: !100, line: 946, type: !58)
!2320 = !DILocalVariable(name: "arg", arg: 3, scope: !2314, file: !100, line: 946, type: !6)
!2321 = !DILocalVariable(name: "o", scope: !2314, file: !100, line: 948, type: !879)
!2322 = !DILocalVariable(name: "o", scope: !2323, file: !100, line: 187, type: !107)
!2323 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !100, file: !100, line: 185, type: !2324, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2326)
!2324 = !DISubroutineType(types: !2325)
!2325 = !{!107, !58}
!2326 = !{!2327, !2322}
!2327 = !DILocalVariable(name: "style", arg: 1, scope: !2323, file: !100, line: 185, type: !58)
!2328 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!2329 = !DILocation(line: 187, column: 26, scope: !2323, inlinedAt: !2330)
!2330 = distinct !DILocation(line: 948, column: 36, scope: !2314)
!2331 = !DILocation(line: 946, column: 23, scope: !2314)
!2332 = !DILocation(line: 946, column: 45, scope: !2314)
!2333 = !DILocation(line: 946, column: 60, scope: !2314)
!2334 = !DILocation(line: 948, column: 3, scope: !2314)
!2335 = !DILocation(line: 948, column: 32, scope: !2314)
!2336 = !DILocation(line: 185, column: 48, scope: !2323, inlinedAt: !2330)
!2337 = !DILocation(line: 187, column: 3, scope: !2323, inlinedAt: !2330)
!2338 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!2339 = !DILocation(line: 188, column: 13, scope: !2340, inlinedAt: !2330)
!2340 = distinct !DILexicalBlock(scope: !2323, file: !100, line: 188, column: 7)
!2341 = !DILocation(line: 188, column: 7, scope: !2323, inlinedAt: !2330)
!2342 = !DILocation(line: 189, column: 5, scope: !2340, inlinedAt: !2330)
!2343 = !{!2344}
!2344 = distinct !{!2344, !2345, !"quoting_options_from_style: argument 0"}
!2345 = distinct !{!2345, !"quoting_options_from_style"}
!2346 = !DILocation(line: 191, column: 10, scope: !2323, inlinedAt: !2330)
!2347 = !DILocation(line: 192, column: 1, scope: !2323, inlinedAt: !2330)
!2348 = !DILocation(line: 949, column: 10, scope: !2314)
!2349 = !DILocation(line: 950, column: 1, scope: !2314)
!2350 = !DILocation(line: 949, column: 3, scope: !2314)
!2351 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !100, file: !100, line: 953, type: !2352, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2354)
!2352 = !DISubroutineType(types: !2353)
!2353 = !{!50, !25, !58, !6, !94}
!2354 = !{!2355, !2356, !2357, !2358, !2359}
!2355 = !DILocalVariable(name: "n", arg: 1, scope: !2351, file: !100, line: 953, type: !25)
!2356 = !DILocalVariable(name: "s", arg: 2, scope: !2351, file: !100, line: 953, type: !58)
!2357 = !DILocalVariable(name: "arg", arg: 3, scope: !2351, file: !100, line: 954, type: !6)
!2358 = !DILocalVariable(name: "argsize", arg: 4, scope: !2351, file: !100, line: 954, type: !94)
!2359 = !DILocalVariable(name: "o", scope: !2351, file: !100, line: 956, type: !879)
!2360 = !DILocation(line: 187, column: 26, scope: !2323, inlinedAt: !2361)
!2361 = distinct !DILocation(line: 956, column: 36, scope: !2351)
!2362 = !DILocation(line: 953, column: 27, scope: !2351)
!2363 = !DILocation(line: 953, column: 49, scope: !2351)
!2364 = !DILocation(line: 954, column: 35, scope: !2351)
!2365 = !DILocation(line: 954, column: 47, scope: !2351)
!2366 = !DILocation(line: 956, column: 3, scope: !2351)
!2367 = !DILocation(line: 956, column: 32, scope: !2351)
!2368 = !DILocation(line: 185, column: 48, scope: !2323, inlinedAt: !2361)
!2369 = !DILocation(line: 187, column: 3, scope: !2323, inlinedAt: !2361)
!2370 = !DILocation(line: 188, column: 13, scope: !2340, inlinedAt: !2361)
!2371 = !DILocation(line: 188, column: 7, scope: !2323, inlinedAt: !2361)
!2372 = !DILocation(line: 189, column: 5, scope: !2340, inlinedAt: !2361)
!2373 = !{!2374}
!2374 = distinct !{!2374, !2375, !"quoting_options_from_style: argument 0"}
!2375 = distinct !{!2375, !"quoting_options_from_style"}
!2376 = !DILocation(line: 191, column: 10, scope: !2323, inlinedAt: !2361)
!2377 = !DILocation(line: 192, column: 1, scope: !2323, inlinedAt: !2361)
!2378 = !DILocation(line: 957, column: 10, scope: !2351)
!2379 = !DILocation(line: 958, column: 1, scope: !2351)
!2380 = !DILocation(line: 957, column: 3, scope: !2351)
!2381 = distinct !DISubprogram(name: "quotearg_style", scope: !100, file: !100, line: 961, type: !2382, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2384)
!2382 = !DISubroutineType(types: !2383)
!2383 = !{!50, !58, !6}
!2384 = !{!2385, !2386}
!2385 = !DILocalVariable(name: "s", arg: 1, scope: !2381, file: !100, line: 961, type: !58)
!2386 = !DILocalVariable(name: "arg", arg: 2, scope: !2381, file: !100, line: 961, type: !6)
!2387 = !DILocation(line: 187, column: 26, scope: !2323, inlinedAt: !2388)
!2388 = distinct !DILocation(line: 948, column: 36, scope: !2314, inlinedAt: !2389)
!2389 = distinct !DILocation(line: 963, column: 10, scope: !2381)
!2390 = !DILocation(line: 961, column: 36, scope: !2381)
!2391 = !DILocation(line: 961, column: 51, scope: !2381)
!2392 = !DILocation(line: 946, column: 23, scope: !2314, inlinedAt: !2389)
!2393 = !DILocation(line: 946, column: 45, scope: !2314, inlinedAt: !2389)
!2394 = !DILocation(line: 946, column: 60, scope: !2314, inlinedAt: !2389)
!2395 = !DILocation(line: 948, column: 3, scope: !2314, inlinedAt: !2389)
!2396 = !DILocation(line: 948, column: 32, scope: !2314, inlinedAt: !2389)
!2397 = !DILocation(line: 185, column: 48, scope: !2323, inlinedAt: !2388)
!2398 = !DILocation(line: 187, column: 3, scope: !2323, inlinedAt: !2388)
!2399 = !DILocation(line: 188, column: 13, scope: !2340, inlinedAt: !2388)
!2400 = !DILocation(line: 188, column: 7, scope: !2323, inlinedAt: !2388)
!2401 = !DILocation(line: 189, column: 5, scope: !2340, inlinedAt: !2388)
!2402 = !{!2403}
!2403 = distinct !{!2403, !2404, !"quoting_options_from_style: argument 0"}
!2404 = distinct !{!2404, !"quoting_options_from_style"}
!2405 = !DILocation(line: 191, column: 10, scope: !2323, inlinedAt: !2388)
!2406 = !DILocation(line: 192, column: 1, scope: !2323, inlinedAt: !2388)
!2407 = !DILocation(line: 949, column: 10, scope: !2314, inlinedAt: !2389)
!2408 = !DILocation(line: 950, column: 1, scope: !2314, inlinedAt: !2389)
!2409 = !DILocation(line: 963, column: 3, scope: !2381)
!2410 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !100, file: !100, line: 967, type: !2411, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2413)
!2411 = !DISubroutineType(types: !2412)
!2412 = !{!50, !58, !6, !94}
!2413 = !{!2414, !2415, !2416}
!2414 = !DILocalVariable(name: "s", arg: 1, scope: !2410, file: !100, line: 967, type: !58)
!2415 = !DILocalVariable(name: "arg", arg: 2, scope: !2410, file: !100, line: 967, type: !6)
!2416 = !DILocalVariable(name: "argsize", arg: 3, scope: !2410, file: !100, line: 967, type: !94)
!2417 = !DILocation(line: 187, column: 26, scope: !2323, inlinedAt: !2418)
!2418 = distinct !DILocation(line: 956, column: 36, scope: !2351, inlinedAt: !2419)
!2419 = distinct !DILocation(line: 969, column: 10, scope: !2410)
!2420 = !DILocation(line: 967, column: 40, scope: !2410)
!2421 = !DILocation(line: 967, column: 55, scope: !2410)
!2422 = !DILocation(line: 967, column: 67, scope: !2410)
!2423 = !DILocation(line: 953, column: 27, scope: !2351, inlinedAt: !2419)
!2424 = !DILocation(line: 953, column: 49, scope: !2351, inlinedAt: !2419)
!2425 = !DILocation(line: 954, column: 35, scope: !2351, inlinedAt: !2419)
!2426 = !DILocation(line: 954, column: 47, scope: !2351, inlinedAt: !2419)
!2427 = !DILocation(line: 956, column: 3, scope: !2351, inlinedAt: !2419)
!2428 = !DILocation(line: 956, column: 32, scope: !2351, inlinedAt: !2419)
!2429 = !DILocation(line: 185, column: 48, scope: !2323, inlinedAt: !2418)
!2430 = !DILocation(line: 187, column: 3, scope: !2323, inlinedAt: !2418)
!2431 = !DILocation(line: 188, column: 13, scope: !2340, inlinedAt: !2418)
!2432 = !DILocation(line: 188, column: 7, scope: !2323, inlinedAt: !2418)
!2433 = !DILocation(line: 189, column: 5, scope: !2340, inlinedAt: !2418)
!2434 = !{!2435}
!2435 = distinct !{!2435, !2436, !"quoting_options_from_style: argument 0"}
!2436 = distinct !{!2436, !"quoting_options_from_style"}
!2437 = !DILocation(line: 191, column: 10, scope: !2323, inlinedAt: !2418)
!2438 = !DILocation(line: 192, column: 1, scope: !2323, inlinedAt: !2418)
!2439 = !DILocation(line: 957, column: 10, scope: !2351, inlinedAt: !2419)
!2440 = !DILocation(line: 958, column: 1, scope: !2351, inlinedAt: !2419)
!2441 = !DILocation(line: 969, column: 3, scope: !2410)
!2442 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !100, file: !100, line: 973, type: !2443, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2445)
!2443 = !DISubroutineType(types: !2444)
!2444 = !{!50, !6, !94, !8}
!2445 = !{!2446, !2447, !2448, !2449}
!2446 = !DILocalVariable(name: "arg", arg: 1, scope: !2442, file: !100, line: 973, type: !6)
!2447 = !DILocalVariable(name: "argsize", arg: 2, scope: !2442, file: !100, line: 973, type: !94)
!2448 = !DILocalVariable(name: "ch", arg: 3, scope: !2442, file: !100, line: 973, type: !8)
!2449 = !DILocalVariable(name: "options", scope: !2442, file: !100, line: 975, type: !107)
!2450 = !DILocation(line: 973, column: 32, scope: !2442)
!2451 = !DILocation(line: 973, column: 44, scope: !2442)
!2452 = !DILocation(line: 973, column: 58, scope: !2442)
!2453 = !DILocation(line: 975, column: 3, scope: !2442)
!2454 = !DILocation(line: 976, column: 13, scope: !2442)
!2455 = !{i64 0, i64 4, !1113, i64 4, i64 4, !663, i64 8, i64 32, !1113, i64 40, i64 8, !598, i64 48, i64 8, !598}
!2456 = !DILocation(line: 975, column: 26, scope: !2442)
!2457 = !DILocation(line: 144, column: 43, scope: !902, inlinedAt: !2458)
!2458 = distinct !DILocation(line: 977, column: 3, scope: !2442)
!2459 = !DILocation(line: 144, column: 51, scope: !902, inlinedAt: !2458)
!2460 = !DILocation(line: 144, column: 58, scope: !902, inlinedAt: !2458)
!2461 = !DILocation(line: 146, column: 17, scope: !902, inlinedAt: !2458)
!2462 = !DILocation(line: 148, column: 62, scope: !920, inlinedAt: !2458)
!2463 = !DILocation(line: 148, column: 57, scope: !920, inlinedAt: !2458)
!2464 = !DILocation(line: 147, column: 17, scope: !902, inlinedAt: !2458)
!2465 = !DILocation(line: 149, column: 18, scope: !902, inlinedAt: !2458)
!2466 = !DILocation(line: 149, column: 15, scope: !902, inlinedAt: !2458)
!2467 = !DILocation(line: 149, column: 7, scope: !902, inlinedAt: !2458)
!2468 = !DILocation(line: 150, column: 12, scope: !902, inlinedAt: !2458)
!2469 = !DILocation(line: 150, column: 15, scope: !902, inlinedAt: !2458)
!2470 = !DILocation(line: 150, column: 25, scope: !902, inlinedAt: !2458)
!2471 = !DILocation(line: 150, column: 7, scope: !902, inlinedAt: !2458)
!2472 = !DILocation(line: 151, column: 18, scope: !902, inlinedAt: !2458)
!2473 = !DILocation(line: 151, column: 23, scope: !902, inlinedAt: !2458)
!2474 = !DILocation(line: 151, column: 6, scope: !902, inlinedAt: !2458)
!2475 = !DILocation(line: 978, column: 10, scope: !2442)
!2476 = !DILocation(line: 979, column: 1, scope: !2442)
!2477 = !DILocation(line: 978, column: 3, scope: !2442)
!2478 = distinct !DISubprogram(name: "quotearg_char", scope: !100, file: !100, line: 982, type: !2479, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2481)
!2479 = !DISubroutineType(types: !2480)
!2480 = !{!50, !6, !8}
!2481 = !{!2482, !2483}
!2482 = !DILocalVariable(name: "arg", arg: 1, scope: !2478, file: !100, line: 982, type: !6)
!2483 = !DILocalVariable(name: "ch", arg: 2, scope: !2478, file: !100, line: 982, type: !8)
!2484 = !DILocation(line: 982, column: 28, scope: !2478)
!2485 = !DILocation(line: 982, column: 38, scope: !2478)
!2486 = !DILocation(line: 973, column: 32, scope: !2442, inlinedAt: !2487)
!2487 = distinct !DILocation(line: 984, column: 10, scope: !2478)
!2488 = !DILocation(line: 973, column: 44, scope: !2442, inlinedAt: !2487)
!2489 = !DILocation(line: 973, column: 58, scope: !2442, inlinedAt: !2487)
!2490 = !DILocation(line: 975, column: 3, scope: !2442, inlinedAt: !2487)
!2491 = !DILocation(line: 976, column: 13, scope: !2442, inlinedAt: !2487)
!2492 = !DILocation(line: 975, column: 26, scope: !2442, inlinedAt: !2487)
!2493 = !DILocation(line: 144, column: 43, scope: !902, inlinedAt: !2494)
!2494 = distinct !DILocation(line: 977, column: 3, scope: !2442, inlinedAt: !2487)
!2495 = !DILocation(line: 144, column: 51, scope: !902, inlinedAt: !2494)
!2496 = !DILocation(line: 144, column: 58, scope: !902, inlinedAt: !2494)
!2497 = !DILocation(line: 146, column: 17, scope: !902, inlinedAt: !2494)
!2498 = !DILocation(line: 148, column: 62, scope: !920, inlinedAt: !2494)
!2499 = !DILocation(line: 148, column: 57, scope: !920, inlinedAt: !2494)
!2500 = !DILocation(line: 147, column: 17, scope: !902, inlinedAt: !2494)
!2501 = !DILocation(line: 149, column: 18, scope: !902, inlinedAt: !2494)
!2502 = !DILocation(line: 149, column: 15, scope: !902, inlinedAt: !2494)
!2503 = !DILocation(line: 149, column: 7, scope: !902, inlinedAt: !2494)
!2504 = !DILocation(line: 150, column: 12, scope: !902, inlinedAt: !2494)
!2505 = !DILocation(line: 150, column: 15, scope: !902, inlinedAt: !2494)
!2506 = !DILocation(line: 150, column: 25, scope: !902, inlinedAt: !2494)
!2507 = !DILocation(line: 150, column: 7, scope: !902, inlinedAt: !2494)
!2508 = !DILocation(line: 151, column: 18, scope: !902, inlinedAt: !2494)
!2509 = !DILocation(line: 151, column: 23, scope: !902, inlinedAt: !2494)
!2510 = !DILocation(line: 151, column: 6, scope: !902, inlinedAt: !2494)
!2511 = !DILocation(line: 978, column: 10, scope: !2442, inlinedAt: !2487)
!2512 = !DILocation(line: 979, column: 1, scope: !2442, inlinedAt: !2487)
!2513 = !DILocation(line: 984, column: 3, scope: !2478)
!2514 = distinct !DISubprogram(name: "quotearg_colon", scope: !100, file: !100, line: 988, type: !2290, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2515)
!2515 = !{!2516}
!2516 = !DILocalVariable(name: "arg", arg: 1, scope: !2514, file: !100, line: 988, type: !6)
!2517 = !DILocation(line: 988, column: 29, scope: !2514)
!2518 = !DILocation(line: 982, column: 28, scope: !2478, inlinedAt: !2519)
!2519 = distinct !DILocation(line: 990, column: 10, scope: !2514)
!2520 = !DILocation(line: 982, column: 38, scope: !2478, inlinedAt: !2519)
!2521 = !DILocation(line: 973, column: 32, scope: !2442, inlinedAt: !2522)
!2522 = distinct !DILocation(line: 984, column: 10, scope: !2478, inlinedAt: !2519)
!2523 = !DILocation(line: 973, column: 44, scope: !2442, inlinedAt: !2522)
!2524 = !DILocation(line: 973, column: 58, scope: !2442, inlinedAt: !2522)
!2525 = !DILocation(line: 975, column: 3, scope: !2442, inlinedAt: !2522)
!2526 = !DILocation(line: 976, column: 13, scope: !2442, inlinedAt: !2522)
!2527 = !DILocation(line: 975, column: 26, scope: !2442, inlinedAt: !2522)
!2528 = !DILocation(line: 144, column: 43, scope: !902, inlinedAt: !2529)
!2529 = distinct !DILocation(line: 977, column: 3, scope: !2442, inlinedAt: !2522)
!2530 = !DILocation(line: 144, column: 51, scope: !902, inlinedAt: !2529)
!2531 = !DILocation(line: 144, column: 58, scope: !902, inlinedAt: !2529)
!2532 = !DILocation(line: 146, column: 17, scope: !902, inlinedAt: !2529)
!2533 = !DILocation(line: 148, column: 57, scope: !920, inlinedAt: !2529)
!2534 = !DILocation(line: 147, column: 17, scope: !902, inlinedAt: !2529)
!2535 = !DILocation(line: 149, column: 7, scope: !902, inlinedAt: !2529)
!2536 = !DILocation(line: 150, column: 12, scope: !902, inlinedAt: !2529)
!2537 = !DILocation(line: 151, column: 6, scope: !902, inlinedAt: !2529)
!2538 = !DILocation(line: 978, column: 10, scope: !2442, inlinedAt: !2522)
!2539 = !DILocation(line: 979, column: 1, scope: !2442, inlinedAt: !2522)
!2540 = !DILocation(line: 990, column: 3, scope: !2514)
!2541 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !100, file: !100, line: 994, type: !2301, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2542)
!2542 = !{!2543, !2544}
!2543 = !DILocalVariable(name: "arg", arg: 1, scope: !2541, file: !100, line: 994, type: !6)
!2544 = !DILocalVariable(name: "argsize", arg: 2, scope: !2541, file: !100, line: 994, type: !94)
!2545 = !DILocation(line: 994, column: 33, scope: !2541)
!2546 = !DILocation(line: 994, column: 45, scope: !2541)
!2547 = !DILocation(line: 973, column: 32, scope: !2442, inlinedAt: !2548)
!2548 = distinct !DILocation(line: 996, column: 10, scope: !2541)
!2549 = !DILocation(line: 973, column: 44, scope: !2442, inlinedAt: !2548)
!2550 = !DILocation(line: 973, column: 58, scope: !2442, inlinedAt: !2548)
!2551 = !DILocation(line: 975, column: 3, scope: !2442, inlinedAt: !2548)
!2552 = !DILocation(line: 976, column: 13, scope: !2442, inlinedAt: !2548)
!2553 = !DILocation(line: 975, column: 26, scope: !2442, inlinedAt: !2548)
!2554 = !DILocation(line: 144, column: 43, scope: !902, inlinedAt: !2555)
!2555 = distinct !DILocation(line: 977, column: 3, scope: !2442, inlinedAt: !2548)
!2556 = !DILocation(line: 144, column: 51, scope: !902, inlinedAt: !2555)
!2557 = !DILocation(line: 144, column: 58, scope: !902, inlinedAt: !2555)
!2558 = !DILocation(line: 146, column: 17, scope: !902, inlinedAt: !2555)
!2559 = !DILocation(line: 148, column: 57, scope: !920, inlinedAt: !2555)
!2560 = !DILocation(line: 147, column: 17, scope: !902, inlinedAt: !2555)
!2561 = !DILocation(line: 149, column: 7, scope: !902, inlinedAt: !2555)
!2562 = !DILocation(line: 150, column: 12, scope: !902, inlinedAt: !2555)
!2563 = !DILocation(line: 151, column: 6, scope: !902, inlinedAt: !2555)
!2564 = !DILocation(line: 978, column: 10, scope: !2442, inlinedAt: !2548)
!2565 = !DILocation(line: 979, column: 1, scope: !2442, inlinedAt: !2548)
!2566 = !DILocation(line: 996, column: 3, scope: !2541)
!2567 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !100, file: !100, line: 1000, type: !2315, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2568)
!2568 = !{!2569, !2570, !2571, !2572}
!2569 = !DILocalVariable(name: "n", arg: 1, scope: !2567, file: !100, line: 1000, type: !25)
!2570 = !DILocalVariable(name: "s", arg: 2, scope: !2567, file: !100, line: 1000, type: !58)
!2571 = !DILocalVariable(name: "arg", arg: 3, scope: !2567, file: !100, line: 1000, type: !6)
!2572 = !DILocalVariable(name: "options", scope: !2567, file: !100, line: 1002, type: !107)
!2573 = !DILocation(line: 187, column: 26, scope: !2323, inlinedAt: !2574)
!2574 = distinct !DILocation(line: 1003, column: 13, scope: !2567)
!2575 = !DILocation(line: 1000, column: 29, scope: !2567)
!2576 = !DILocation(line: 1000, column: 51, scope: !2567)
!2577 = !DILocation(line: 1000, column: 66, scope: !2567)
!2578 = !DILocation(line: 1002, column: 3, scope: !2567)
!2579 = !DILocation(line: 185, column: 48, scope: !2323, inlinedAt: !2574)
!2580 = !DILocation(line: 187, column: 3, scope: !2323, inlinedAt: !2574)
!2581 = !DILocation(line: 188, column: 13, scope: !2340, inlinedAt: !2574)
!2582 = !DILocation(line: 188, column: 7, scope: !2323, inlinedAt: !2574)
!2583 = !DILocation(line: 189, column: 5, scope: !2340, inlinedAt: !2574)
!2584 = !{!2585}
!2585 = distinct !{!2585, !2586, !"quoting_options_from_style: argument 0"}
!2586 = distinct !{!2586, !"quoting_options_from_style"}
!2587 = !DILocation(line: 191, column: 10, scope: !2323, inlinedAt: !2574)
!2588 = !DILocation(line: 192, column: 1, scope: !2323, inlinedAt: !2574)
!2589 = !DILocation(line: 1003, column: 13, scope: !2567)
!2590 = !DILocation(line: 1002, column: 26, scope: !2567)
!2591 = !DILocation(line: 144, column: 43, scope: !902, inlinedAt: !2592)
!2592 = distinct !DILocation(line: 1004, column: 3, scope: !2567)
!2593 = !DILocation(line: 144, column: 51, scope: !902, inlinedAt: !2592)
!2594 = !DILocation(line: 144, column: 58, scope: !902, inlinedAt: !2592)
!2595 = !DILocation(line: 146, column: 17, scope: !902, inlinedAt: !2592)
!2596 = !DILocation(line: 148, column: 57, scope: !920, inlinedAt: !2592)
!2597 = !DILocation(line: 147, column: 17, scope: !902, inlinedAt: !2592)
!2598 = !DILocation(line: 149, column: 7, scope: !902, inlinedAt: !2592)
!2599 = !DILocation(line: 150, column: 12, scope: !902, inlinedAt: !2592)
!2600 = !DILocation(line: 151, column: 6, scope: !902, inlinedAt: !2592)
!2601 = !DILocation(line: 1005, column: 10, scope: !2567)
!2602 = !DILocation(line: 1006, column: 1, scope: !2567)
!2603 = !DILocation(line: 1005, column: 3, scope: !2567)
!2604 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !100, file: !100, line: 1009, type: !2605, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2607)
!2605 = !DISubroutineType(types: !2606)
!2606 = !{!50, !25, !6, !6, !6}
!2607 = !{!2608, !2609, !2610, !2611}
!2608 = !DILocalVariable(name: "n", arg: 1, scope: !2604, file: !100, line: 1009, type: !25)
!2609 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2604, file: !100, line: 1009, type: !6)
!2610 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2604, file: !100, line: 1010, type: !6)
!2611 = !DILocalVariable(name: "arg", arg: 4, scope: !2604, file: !100, line: 1010, type: !6)
!2612 = !DILocation(line: 1009, column: 24, scope: !2604)
!2613 = !DILocation(line: 1009, column: 39, scope: !2604)
!2614 = !DILocation(line: 1010, column: 32, scope: !2604)
!2615 = !DILocation(line: 1010, column: 57, scope: !2604)
!2616 = !DILocalVariable(name: "n", arg: 1, scope: !2617, file: !100, line: 1017, type: !25)
!2617 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !100, file: !100, line: 1017, type: !2618, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2620)
!2618 = !DISubroutineType(types: !2619)
!2619 = !{!50, !25, !6, !6, !6, !94}
!2620 = !{!2616, !2621, !2622, !2623, !2624, !2625}
!2621 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2617, file: !100, line: 1017, type: !6)
!2622 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2617, file: !100, line: 1018, type: !6)
!2623 = !DILocalVariable(name: "arg", arg: 4, scope: !2617, file: !100, line: 1019, type: !6)
!2624 = !DILocalVariable(name: "argsize", arg: 5, scope: !2617, file: !100, line: 1019, type: !94)
!2625 = !DILocalVariable(name: "o", scope: !2617, file: !100, line: 1021, type: !107)
!2626 = !DILocation(line: 1017, column: 28, scope: !2617, inlinedAt: !2627)
!2627 = distinct !DILocation(line: 1012, column: 10, scope: !2604)
!2628 = !DILocation(line: 1017, column: 43, scope: !2617, inlinedAt: !2627)
!2629 = !DILocation(line: 1018, column: 36, scope: !2617, inlinedAt: !2627)
!2630 = !DILocation(line: 1019, column: 36, scope: !2617, inlinedAt: !2627)
!2631 = !DILocation(line: 1019, column: 48, scope: !2617, inlinedAt: !2627)
!2632 = !DILocation(line: 1021, column: 3, scope: !2617, inlinedAt: !2627)
!2633 = !DILocation(line: 1021, column: 30, scope: !2617, inlinedAt: !2627)
!2634 = !DILocation(line: 1021, column: 26, scope: !2617, inlinedAt: !2627)
!2635 = !DILocation(line: 171, column: 45, scope: !952, inlinedAt: !2636)
!2636 = distinct !DILocation(line: 1022, column: 3, scope: !2617, inlinedAt: !2627)
!2637 = !DILocation(line: 172, column: 33, scope: !952, inlinedAt: !2636)
!2638 = !DILocation(line: 172, column: 57, scope: !952, inlinedAt: !2636)
!2639 = !DILocation(line: 176, column: 6, scope: !952, inlinedAt: !2636)
!2640 = !DILocation(line: 176, column: 12, scope: !952, inlinedAt: !2636)
!2641 = !DILocation(line: 177, column: 8, scope: !968, inlinedAt: !2636)
!2642 = !DILocation(line: 177, column: 23, scope: !970, inlinedAt: !2636)
!2643 = !DILocation(line: 177, column: 19, scope: !968, inlinedAt: !2636)
!2644 = !DILocation(line: 178, column: 5, scope: !968, inlinedAt: !2636)
!2645 = !DILocation(line: 179, column: 6, scope: !952, inlinedAt: !2636)
!2646 = !DILocation(line: 179, column: 17, scope: !952, inlinedAt: !2636)
!2647 = !DILocation(line: 180, column: 6, scope: !952, inlinedAt: !2636)
!2648 = !DILocation(line: 180, column: 18, scope: !952, inlinedAt: !2636)
!2649 = !DILocation(line: 1023, column: 10, scope: !2617, inlinedAt: !2627)
!2650 = !DILocation(line: 1024, column: 1, scope: !2617, inlinedAt: !2627)
!2651 = !DILocation(line: 1012, column: 3, scope: !2604)
!2652 = !DILocation(line: 1017, column: 28, scope: !2617)
!2653 = !DILocation(line: 1017, column: 43, scope: !2617)
!2654 = !DILocation(line: 1018, column: 36, scope: !2617)
!2655 = !DILocation(line: 1019, column: 36, scope: !2617)
!2656 = !DILocation(line: 1019, column: 48, scope: !2617)
!2657 = !DILocation(line: 1021, column: 3, scope: !2617)
!2658 = !DILocation(line: 1021, column: 30, scope: !2617)
!2659 = !DILocation(line: 1021, column: 26, scope: !2617)
!2660 = !DILocation(line: 171, column: 45, scope: !952, inlinedAt: !2661)
!2661 = distinct !DILocation(line: 1022, column: 3, scope: !2617)
!2662 = !DILocation(line: 172, column: 33, scope: !952, inlinedAt: !2661)
!2663 = !DILocation(line: 172, column: 57, scope: !952, inlinedAt: !2661)
!2664 = !DILocation(line: 176, column: 6, scope: !952, inlinedAt: !2661)
!2665 = !DILocation(line: 176, column: 12, scope: !952, inlinedAt: !2661)
!2666 = !DILocation(line: 177, column: 8, scope: !968, inlinedAt: !2661)
!2667 = !DILocation(line: 177, column: 23, scope: !970, inlinedAt: !2661)
!2668 = !DILocation(line: 177, column: 19, scope: !968, inlinedAt: !2661)
!2669 = !DILocation(line: 178, column: 5, scope: !968, inlinedAt: !2661)
!2670 = !DILocation(line: 179, column: 6, scope: !952, inlinedAt: !2661)
!2671 = !DILocation(line: 179, column: 17, scope: !952, inlinedAt: !2661)
!2672 = !DILocation(line: 180, column: 6, scope: !952, inlinedAt: !2661)
!2673 = !DILocation(line: 180, column: 18, scope: !952, inlinedAt: !2661)
!2674 = !DILocation(line: 1023, column: 10, scope: !2617)
!2675 = !DILocation(line: 1024, column: 1, scope: !2617)
!2676 = !DILocation(line: 1023, column: 3, scope: !2617)
!2677 = distinct !DISubprogram(name: "quotearg_custom", scope: !100, file: !100, line: 1027, type: !2678, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2680)
!2678 = !DISubroutineType(types: !2679)
!2679 = !{!50, !6, !6, !6}
!2680 = !{!2681, !2682, !2683}
!2681 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2677, file: !100, line: 1027, type: !6)
!2682 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2677, file: !100, line: 1027, type: !6)
!2683 = !DILocalVariable(name: "arg", arg: 3, scope: !2677, file: !100, line: 1028, type: !6)
!2684 = !DILocation(line: 1027, column: 30, scope: !2677)
!2685 = !DILocation(line: 1027, column: 54, scope: !2677)
!2686 = !DILocation(line: 1028, column: 30, scope: !2677)
!2687 = !DILocation(line: 1009, column: 24, scope: !2604, inlinedAt: !2688)
!2688 = distinct !DILocation(line: 1030, column: 10, scope: !2677)
!2689 = !DILocation(line: 1009, column: 39, scope: !2604, inlinedAt: !2688)
!2690 = !DILocation(line: 1010, column: 32, scope: !2604, inlinedAt: !2688)
!2691 = !DILocation(line: 1010, column: 57, scope: !2604, inlinedAt: !2688)
!2692 = !DILocation(line: 1017, column: 28, scope: !2617, inlinedAt: !2693)
!2693 = distinct !DILocation(line: 1012, column: 10, scope: !2604, inlinedAt: !2688)
!2694 = !DILocation(line: 1017, column: 43, scope: !2617, inlinedAt: !2693)
!2695 = !DILocation(line: 1018, column: 36, scope: !2617, inlinedAt: !2693)
!2696 = !DILocation(line: 1019, column: 36, scope: !2617, inlinedAt: !2693)
!2697 = !DILocation(line: 1019, column: 48, scope: !2617, inlinedAt: !2693)
!2698 = !DILocation(line: 1021, column: 3, scope: !2617, inlinedAt: !2693)
!2699 = !DILocation(line: 1021, column: 30, scope: !2617, inlinedAt: !2693)
!2700 = !DILocation(line: 1021, column: 26, scope: !2617, inlinedAt: !2693)
!2701 = !DILocation(line: 171, column: 45, scope: !952, inlinedAt: !2702)
!2702 = distinct !DILocation(line: 1022, column: 3, scope: !2617, inlinedAt: !2693)
!2703 = !DILocation(line: 172, column: 33, scope: !952, inlinedAt: !2702)
!2704 = !DILocation(line: 172, column: 57, scope: !952, inlinedAt: !2702)
!2705 = !DILocation(line: 176, column: 6, scope: !952, inlinedAt: !2702)
!2706 = !DILocation(line: 176, column: 12, scope: !952, inlinedAt: !2702)
!2707 = !DILocation(line: 177, column: 8, scope: !968, inlinedAt: !2702)
!2708 = !DILocation(line: 177, column: 23, scope: !970, inlinedAt: !2702)
!2709 = !DILocation(line: 177, column: 19, scope: !968, inlinedAt: !2702)
!2710 = !DILocation(line: 178, column: 5, scope: !968, inlinedAt: !2702)
!2711 = !DILocation(line: 179, column: 6, scope: !952, inlinedAt: !2702)
!2712 = !DILocation(line: 179, column: 17, scope: !952, inlinedAt: !2702)
!2713 = !DILocation(line: 180, column: 6, scope: !952, inlinedAt: !2702)
!2714 = !DILocation(line: 180, column: 18, scope: !952, inlinedAt: !2702)
!2715 = !DILocation(line: 1023, column: 10, scope: !2617, inlinedAt: !2693)
!2716 = !DILocation(line: 1024, column: 1, scope: !2617, inlinedAt: !2693)
!2717 = !DILocation(line: 1030, column: 3, scope: !2677)
!2718 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !100, file: !100, line: 1034, type: !2719, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2721)
!2719 = !DISubroutineType(types: !2720)
!2720 = !{!50, !6, !6, !6, !94}
!2721 = !{!2722, !2723, !2724, !2725}
!2722 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2718, file: !100, line: 1034, type: !6)
!2723 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2718, file: !100, line: 1034, type: !6)
!2724 = !DILocalVariable(name: "arg", arg: 3, scope: !2718, file: !100, line: 1035, type: !6)
!2725 = !DILocalVariable(name: "argsize", arg: 4, scope: !2718, file: !100, line: 1035, type: !94)
!2726 = !DILocation(line: 1034, column: 34, scope: !2718)
!2727 = !DILocation(line: 1034, column: 58, scope: !2718)
!2728 = !DILocation(line: 1035, column: 34, scope: !2718)
!2729 = !DILocation(line: 1035, column: 46, scope: !2718)
!2730 = !DILocation(line: 1017, column: 28, scope: !2617, inlinedAt: !2731)
!2731 = distinct !DILocation(line: 1037, column: 10, scope: !2718)
!2732 = !DILocation(line: 1017, column: 43, scope: !2617, inlinedAt: !2731)
!2733 = !DILocation(line: 1018, column: 36, scope: !2617, inlinedAt: !2731)
!2734 = !DILocation(line: 1019, column: 36, scope: !2617, inlinedAt: !2731)
!2735 = !DILocation(line: 1019, column: 48, scope: !2617, inlinedAt: !2731)
!2736 = !DILocation(line: 1021, column: 3, scope: !2617, inlinedAt: !2731)
!2737 = !DILocation(line: 1021, column: 30, scope: !2617, inlinedAt: !2731)
!2738 = !DILocation(line: 1021, column: 26, scope: !2617, inlinedAt: !2731)
!2739 = !DILocation(line: 171, column: 45, scope: !952, inlinedAt: !2740)
!2740 = distinct !DILocation(line: 1022, column: 3, scope: !2617, inlinedAt: !2731)
!2741 = !DILocation(line: 172, column: 33, scope: !952, inlinedAt: !2740)
!2742 = !DILocation(line: 172, column: 57, scope: !952, inlinedAt: !2740)
!2743 = !DILocation(line: 176, column: 6, scope: !952, inlinedAt: !2740)
!2744 = !DILocation(line: 176, column: 12, scope: !952, inlinedAt: !2740)
!2745 = !DILocation(line: 177, column: 8, scope: !968, inlinedAt: !2740)
!2746 = !DILocation(line: 177, column: 23, scope: !970, inlinedAt: !2740)
!2747 = !DILocation(line: 177, column: 19, scope: !968, inlinedAt: !2740)
!2748 = !DILocation(line: 178, column: 5, scope: !968, inlinedAt: !2740)
!2749 = !DILocation(line: 179, column: 6, scope: !952, inlinedAt: !2740)
!2750 = !DILocation(line: 179, column: 17, scope: !952, inlinedAt: !2740)
!2751 = !DILocation(line: 180, column: 6, scope: !952, inlinedAt: !2740)
!2752 = !DILocation(line: 180, column: 18, scope: !952, inlinedAt: !2740)
!2753 = !DILocation(line: 1023, column: 10, scope: !2617, inlinedAt: !2731)
!2754 = !DILocation(line: 1024, column: 1, scope: !2617, inlinedAt: !2731)
!2755 = !DILocation(line: 1037, column: 3, scope: !2718)
!2756 = distinct !DISubprogram(name: "quote_n_mem", scope: !100, file: !100, line: 1052, type: !2757, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2759)
!2757 = !DISubroutineType(types: !2758)
!2758 = !{!6, !25, !6, !94}
!2759 = !{!2760, !2761, !2762}
!2760 = !DILocalVariable(name: "n", arg: 1, scope: !2756, file: !100, line: 1052, type: !25)
!2761 = !DILocalVariable(name: "arg", arg: 2, scope: !2756, file: !100, line: 1052, type: !6)
!2762 = !DILocalVariable(name: "argsize", arg: 3, scope: !2756, file: !100, line: 1052, type: !94)
!2763 = !DILocation(line: 1052, column: 18, scope: !2756)
!2764 = !DILocation(line: 1052, column: 33, scope: !2756)
!2765 = !DILocation(line: 1052, column: 45, scope: !2756)
!2766 = !DILocation(line: 1054, column: 10, scope: !2756)
!2767 = !DILocation(line: 1054, column: 3, scope: !2756)
!2768 = distinct !DISubprogram(name: "quote_mem", scope: !100, file: !100, line: 1058, type: !2769, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2771)
!2769 = !DISubroutineType(types: !2770)
!2770 = !{!6, !6, !94}
!2771 = !{!2772, !2773}
!2772 = !DILocalVariable(name: "arg", arg: 1, scope: !2768, file: !100, line: 1058, type: !6)
!2773 = !DILocalVariable(name: "argsize", arg: 2, scope: !2768, file: !100, line: 1058, type: !94)
!2774 = !DILocation(line: 1058, column: 24, scope: !2768)
!2775 = !DILocation(line: 1058, column: 36, scope: !2768)
!2776 = !DILocation(line: 1052, column: 18, scope: !2756, inlinedAt: !2777)
!2777 = distinct !DILocation(line: 1060, column: 10, scope: !2768)
!2778 = !DILocation(line: 1052, column: 33, scope: !2756, inlinedAt: !2777)
!2779 = !DILocation(line: 1052, column: 45, scope: !2756, inlinedAt: !2777)
!2780 = !DILocation(line: 1054, column: 10, scope: !2756, inlinedAt: !2777)
!2781 = !DILocation(line: 1060, column: 3, scope: !2768)
!2782 = distinct !DISubprogram(name: "quote_n", scope: !100, file: !100, line: 1064, type: !2783, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2785)
!2783 = !DISubroutineType(types: !2784)
!2784 = !{!6, !25, !6}
!2785 = !{!2786, !2787}
!2786 = !DILocalVariable(name: "n", arg: 1, scope: !2782, file: !100, line: 1064, type: !25)
!2787 = !DILocalVariable(name: "arg", arg: 2, scope: !2782, file: !100, line: 1064, type: !6)
!2788 = !DILocation(line: 1064, column: 14, scope: !2782)
!2789 = !DILocation(line: 1064, column: 29, scope: !2782)
!2790 = !DILocation(line: 1052, column: 18, scope: !2756, inlinedAt: !2791)
!2791 = distinct !DILocation(line: 1066, column: 10, scope: !2782)
!2792 = !DILocation(line: 1052, column: 33, scope: !2756, inlinedAt: !2791)
!2793 = !DILocation(line: 1052, column: 45, scope: !2756, inlinedAt: !2791)
!2794 = !DILocation(line: 1054, column: 10, scope: !2756, inlinedAt: !2791)
!2795 = !DILocation(line: 1066, column: 3, scope: !2782)
!2796 = distinct !DISubprogram(name: "quote", scope: !100, file: !100, line: 1070, type: !2797, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2799)
!2797 = !DISubroutineType(types: !2798)
!2798 = !{!6, !6}
!2799 = !{!2800}
!2800 = !DILocalVariable(name: "arg", arg: 1, scope: !2796, file: !100, line: 1070, type: !6)
!2801 = !DILocation(line: 1070, column: 20, scope: !2796)
!2802 = !DILocation(line: 1064, column: 14, scope: !2782, inlinedAt: !2803)
!2803 = distinct !DILocation(line: 1072, column: 10, scope: !2796)
!2804 = !DILocation(line: 1064, column: 29, scope: !2782, inlinedAt: !2803)
!2805 = !DILocation(line: 1052, column: 18, scope: !2756, inlinedAt: !2806)
!2806 = distinct !DILocation(line: 1066, column: 10, scope: !2782, inlinedAt: !2803)
!2807 = !DILocation(line: 1052, column: 33, scope: !2756, inlinedAt: !2806)
!2808 = !DILocation(line: 1052, column: 45, scope: !2756, inlinedAt: !2806)
!2809 = !DILocation(line: 1054, column: 10, scope: !2756, inlinedAt: !2806)
!2810 = !DILocation(line: 1072, column: 3, scope: !2796)
!2811 = distinct !DISubprogram(name: "version_etc_arn", scope: !541, file: !541, line: 62, type: !2812, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !537, variables: !2867)
!2812 = !DISubroutineType(types: !2813)
!2813 = !{null, !2814, !6, !6, !6, !2866, !94}
!2814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2815, size: 64)
!2815 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !777, line: 49, baseType: !2816)
!2816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2817, line: 241, size: 1728, elements: !2818)
!2817 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2818 = !{!2819, !2820, !2821, !2822, !2823, !2824, !2825, !2826, !2827, !2828, !2829, !2830, !2831, !2839, !2840, !2841, !2842, !2846, !2847, !2849, !2851, !2854, !2856, !2857, !2858, !2859, !2860, !2861, !2862}
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2816, file: !2817, line: 242, baseType: !25, size: 32)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2816, file: !2817, line: 247, baseType: !50, size: 64, offset: 64)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2816, file: !2817, line: 248, baseType: !50, size: 64, offset: 128)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2816, file: !2817, line: 249, baseType: !50, size: 64, offset: 192)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2816, file: !2817, line: 250, baseType: !50, size: 64, offset: 256)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2816, file: !2817, line: 251, baseType: !50, size: 64, offset: 320)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2816, file: !2817, line: 252, baseType: !50, size: 64, offset: 384)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2816, file: !2817, line: 253, baseType: !50, size: 64, offset: 448)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2816, file: !2817, line: 254, baseType: !50, size: 64, offset: 512)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2816, file: !2817, line: 256, baseType: !50, size: 64, offset: 576)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2816, file: !2817, line: 257, baseType: !50, size: 64, offset: 640)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2816, file: !2817, line: 258, baseType: !50, size: 64, offset: 704)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2816, file: !2817, line: 260, baseType: !2832, size: 64, offset: 768)
!2832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2833, size: 64)
!2833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2817, line: 156, size: 192, elements: !2834)
!2834 = !{!2835, !2836, !2838}
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !2833, file: !2817, line: 157, baseType: !2832, size: 64)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !2833, file: !2817, line: 158, baseType: !2837, size: 64, offset: 64)
!2837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2816, size: 64)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !2833, file: !2817, line: 162, baseType: !25, size: 32, offset: 128)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2816, file: !2817, line: 262, baseType: !2837, size: 64, offset: 832)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2816, file: !2817, line: 264, baseType: !25, size: 32, offset: 896)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2816, file: !2817, line: 268, baseType: !25, size: 32, offset: 928)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2816, file: !2817, line: 270, baseType: !2843, size: 64, offset: 960)
!2843 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !2844, line: 140, baseType: !2845)
!2844 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2845 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2816, file: !2817, line: 274, baseType: !93, size: 16, offset: 1024)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2816, file: !2817, line: 275, baseType: !2848, size: 8, offset: 1040)
!2848 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2816, file: !2817, line: 276, baseType: !2850, size: 8, offset: 1048)
!2850 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 8, elements: !788)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2816, file: !2817, line: 280, baseType: !2852, size: 64, offset: 1088)
!2852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2853, size: 64)
!2853 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2817, line: 150, baseType: null)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2816, file: !2817, line: 289, baseType: !2855, size: 64, offset: 1152)
!2855 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !2844, line: 141, baseType: !2845)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !2816, file: !2817, line: 297, baseType: !49, size: 64, offset: 1216)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !2816, file: !2817, line: 298, baseType: !49, size: 64, offset: 1280)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !2816, file: !2817, line: 299, baseType: !49, size: 64, offset: 1344)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !2816, file: !2817, line: 300, baseType: !49, size: 64, offset: 1408)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2816, file: !2817, line: 302, baseType: !94, size: 64, offset: 1472)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2816, file: !2817, line: 303, baseType: !25, size: 32, offset: 1536)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2816, file: !2817, line: 305, baseType: !2863, size: 160, offset: 1568)
!2863 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 160, elements: !2864)
!2864 = !{!2865}
!2865 = !DISubrange(count: 20)
!2866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!2867 = !{!2868, !2869, !2870, !2871, !2872, !2873}
!2868 = !DILocalVariable(name: "stream", arg: 1, scope: !2811, file: !541, line: 62, type: !2814)
!2869 = !DILocalVariable(name: "command_name", arg: 2, scope: !2811, file: !541, line: 63, type: !6)
!2870 = !DILocalVariable(name: "package", arg: 3, scope: !2811, file: !541, line: 63, type: !6)
!2871 = !DILocalVariable(name: "version", arg: 4, scope: !2811, file: !541, line: 64, type: !6)
!2872 = !DILocalVariable(name: "authors", arg: 5, scope: !2811, file: !541, line: 65, type: !2866)
!2873 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2811, file: !541, line: 65, type: !94)
!2874 = !DILocation(line: 62, column: 24, scope: !2811)
!2875 = !DILocation(line: 63, column: 30, scope: !2811)
!2876 = !DILocation(line: 63, column: 56, scope: !2811)
!2877 = !DILocation(line: 64, column: 30, scope: !2811)
!2878 = !DILocation(line: 65, column: 39, scope: !2811)
!2879 = !DILocation(line: 65, column: 55, scope: !2811)
!2880 = !DILocation(line: 67, column: 7, scope: !2881)
!2881 = distinct !DILexicalBlock(scope: !2811, file: !541, line: 67, column: 7)
!2882 = !DILocation(line: 67, column: 7, scope: !2811)
!2883 = !DILocation(line: 68, column: 5, scope: !2881)
!2884 = !DILocation(line: 70, column: 5, scope: !2881)
!2885 = !DILocation(line: 84, column: 3, scope: !2811)
!2886 = !DILocation(line: 84, column: 3, scope: !2887)
!2887 = !DILexicalBlockFile(scope: !2811, file: !541, discriminator: 1)
!2888 = !DILocation(line: 86, column: 3, scope: !2811)
!2889 = !DILocation(line: 86, column: 3, scope: !2887)
!2890 = !DILocation(line: 95, column: 3, scope: !2811)
!2891 = !DILocation(line: 99, column: 7, scope: !2892)
!2892 = distinct !DILexicalBlock(scope: !2811, file: !541, line: 96, column: 5)
!2893 = !DILocation(line: 102, column: 7, scope: !2892)
!2894 = !DILocation(line: 102, column: 7, scope: !2895)
!2895 = !DILexicalBlockFile(scope: !2892, file: !541, discriminator: 1)
!2896 = !DILocation(line: 103, column: 7, scope: !2892)
!2897 = !DILocation(line: 106, column: 7, scope: !2892)
!2898 = !DILocation(line: 106, column: 7, scope: !2895)
!2899 = !DILocation(line: 107, column: 7, scope: !2892)
!2900 = !DILocation(line: 110, column: 7, scope: !2892)
!2901 = !DILocation(line: 110, column: 7, scope: !2895)
!2902 = !DILocation(line: 112, column: 7, scope: !2892)
!2903 = !DILocation(line: 117, column: 7, scope: !2892)
!2904 = !DILocation(line: 117, column: 7, scope: !2895)
!2905 = !DILocation(line: 119, column: 7, scope: !2892)
!2906 = !DILocation(line: 124, column: 7, scope: !2892)
!2907 = !DILocation(line: 124, column: 7, scope: !2895)
!2908 = !DILocation(line: 126, column: 7, scope: !2892)
!2909 = !DILocation(line: 131, column: 7, scope: !2892)
!2910 = !DILocation(line: 131, column: 7, scope: !2895)
!2911 = !DILocation(line: 134, column: 7, scope: !2892)
!2912 = !DILocation(line: 139, column: 7, scope: !2892)
!2913 = !DILocation(line: 139, column: 7, scope: !2895)
!2914 = !DILocation(line: 142, column: 7, scope: !2892)
!2915 = !DILocation(line: 147, column: 7, scope: !2892)
!2916 = !DILocation(line: 147, column: 7, scope: !2895)
!2917 = !DILocation(line: 151, column: 7, scope: !2892)
!2918 = !DILocation(line: 156, column: 7, scope: !2892)
!2919 = !DILocation(line: 156, column: 7, scope: !2895)
!2920 = !DILocation(line: 160, column: 7, scope: !2892)
!2921 = !DILocation(line: 167, column: 7, scope: !2892)
!2922 = !DILocation(line: 167, column: 7, scope: !2895)
!2923 = !DILocation(line: 171, column: 7, scope: !2892)
!2924 = !DILocation(line: 173, column: 1, scope: !2811)
!2925 = distinct !DISubprogram(name: "version_etc_ar", scope: !541, file: !541, line: 180, type: !2926, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !537, variables: !2928)
!2926 = !DISubroutineType(types: !2927)
!2927 = !{null, !2814, !6, !6, !6, !2866}
!2928 = !{!2929, !2930, !2931, !2932, !2933, !2934}
!2929 = !DILocalVariable(name: "stream", arg: 1, scope: !2925, file: !541, line: 180, type: !2814)
!2930 = !DILocalVariable(name: "command_name", arg: 2, scope: !2925, file: !541, line: 181, type: !6)
!2931 = !DILocalVariable(name: "package", arg: 3, scope: !2925, file: !541, line: 181, type: !6)
!2932 = !DILocalVariable(name: "version", arg: 4, scope: !2925, file: !541, line: 182, type: !6)
!2933 = !DILocalVariable(name: "authors", arg: 5, scope: !2925, file: !541, line: 182, type: !2866)
!2934 = !DILocalVariable(name: "n_authors", scope: !2925, file: !541, line: 184, type: !94)
!2935 = !DILocation(line: 180, column: 23, scope: !2925)
!2936 = !DILocation(line: 181, column: 29, scope: !2925)
!2937 = !DILocation(line: 181, column: 55, scope: !2925)
!2938 = !DILocation(line: 182, column: 29, scope: !2925)
!2939 = !DILocation(line: 182, column: 59, scope: !2925)
!2940 = !DILocation(line: 184, column: 10, scope: !2925)
!2941 = !DILocation(line: 186, column: 8, scope: !2942)
!2942 = distinct !DILexicalBlock(scope: !2925, file: !541, line: 186, column: 3)
!2943 = !DILocation(line: 186, column: 23, scope: !2944)
!2944 = !DILexicalBlockFile(scope: !2945, file: !541, discriminator: 1)
!2945 = distinct !DILexicalBlock(scope: !2942, file: !541, line: 186, column: 3)
!2946 = !DILocation(line: 186, column: 3, scope: !2947)
!2947 = !DILexicalBlockFile(scope: !2942, file: !541, discriminator: 1)
!2948 = !DILocation(line: 186, column: 52, scope: !2949)
!2949 = !DILexicalBlockFile(scope: !2945, file: !541, discriminator: 3)
!2950 = distinct !{!2950, !2951, !2952}
!2951 = !DILocation(line: 186, column: 3, scope: !2942)
!2952 = !DILocation(line: 187, column: 5, scope: !2942)
!2953 = !DILocation(line: 188, column: 3, scope: !2925)
!2954 = !DILocation(line: 189, column: 1, scope: !2925)
!2955 = distinct !DISubprogram(name: "version_etc_va", scope: !541, file: !541, line: 196, type: !2956, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !537, variables: !2965)
!2956 = !DISubroutineType(types: !2957)
!2957 = !{null, !2814, !6, !6, !6, !2958}
!2958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2959, size: 64)
!2959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !538, line: 189, size: 192, elements: !2960)
!2960 = !{!2961, !2962, !2963, !2964}
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2959, file: !538, line: 189, baseType: !113, size: 32)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2959, file: !538, line: 189, baseType: !113, size: 32, offset: 32)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2959, file: !538, line: 189, baseType: !49, size: 64, offset: 64)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2959, file: !538, line: 189, baseType: !49, size: 64, offset: 128)
!2965 = !{!2966, !2967, !2968, !2969, !2970, !2971, !2972}
!2966 = !DILocalVariable(name: "stream", arg: 1, scope: !2955, file: !541, line: 196, type: !2814)
!2967 = !DILocalVariable(name: "command_name", arg: 2, scope: !2955, file: !541, line: 197, type: !6)
!2968 = !DILocalVariable(name: "package", arg: 3, scope: !2955, file: !541, line: 197, type: !6)
!2969 = !DILocalVariable(name: "version", arg: 4, scope: !2955, file: !541, line: 198, type: !6)
!2970 = !DILocalVariable(name: "authors", arg: 5, scope: !2955, file: !541, line: 198, type: !2958)
!2971 = !DILocalVariable(name: "n_authors", scope: !2955, file: !541, line: 200, type: !94)
!2972 = !DILocalVariable(name: "authtab", scope: !2955, file: !541, line: 201, type: !2973)
!2973 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 640, elements: !103)
!2974 = !DILocation(line: 196, column: 23, scope: !2955)
!2975 = !DILocation(line: 197, column: 29, scope: !2955)
!2976 = !DILocation(line: 197, column: 55, scope: !2955)
!2977 = !DILocation(line: 198, column: 29, scope: !2955)
!2978 = !DILocation(line: 198, column: 46, scope: !2955)
!2979 = !DILocation(line: 201, column: 3, scope: !2955)
!2980 = !DILocation(line: 201, column: 15, scope: !2955)
!2981 = !DILocation(line: 200, column: 10, scope: !2955)
!2982 = !DILocation(line: 205, column: 35, scope: !2983)
!2983 = !DILexicalBlockFile(scope: !2984, file: !541, discriminator: 1)
!2984 = distinct !DILexicalBlock(scope: !2985, file: !541, line: 203, column: 3)
!2985 = distinct !DILexicalBlock(scope: !2955, file: !541, line: 203, column: 3)
!2986 = !DILocation(line: 205, column: 35, scope: !2987)
!2987 = !DILexicalBlockFile(scope: !2984, file: !541, discriminator: 2)
!2988 = !DILocation(line: 205, column: 35, scope: !2989)
!2989 = !DILexicalBlockFile(scope: !2984, file: !541, discriminator: 3)
!2990 = !DILocation(line: 205, column: 35, scope: !2991)
!2991 = !DILexicalBlockFile(scope: !2984, file: !541, discriminator: 4)
!2992 = !DILocation(line: 205, column: 14, scope: !2991)
!2993 = !DILocation(line: 205, column: 33, scope: !2991)
!2994 = !DILocation(line: 205, column: 67, scope: !2991)
!2995 = !DILocation(line: 203, column: 3, scope: !2996)
!2996 = !DILexicalBlockFile(scope: !2985, file: !541, discriminator: 1)
!2997 = !DILocation(line: 208, column: 3, scope: !2955)
!2998 = !DILocation(line: 210, column: 1, scope: !2955)
!2999 = distinct !DISubprogram(name: "version_etc", scope: !541, file: !541, line: 227, type: !3000, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !537, variables: !3002)
!3000 = !DISubroutineType(types: !3001)
!3001 = !{null, !2814, !6, !6, !6, null}
!3002 = !{!3003, !3004, !3005, !3006, !3007}
!3003 = !DILocalVariable(name: "stream", arg: 1, scope: !2999, file: !541, line: 227, type: !2814)
!3004 = !DILocalVariable(name: "command_name", arg: 2, scope: !2999, file: !541, line: 228, type: !6)
!3005 = !DILocalVariable(name: "package", arg: 3, scope: !2999, file: !541, line: 228, type: !6)
!3006 = !DILocalVariable(name: "version", arg: 4, scope: !2999, file: !541, line: 229, type: !6)
!3007 = !DILocalVariable(name: "authors", scope: !2999, file: !541, line: 231, type: !3008)
!3008 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !777, line: 80, baseType: !3009)
!3009 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !779, line: 50, baseType: !3010)
!3010 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !538, line: 231, baseType: !3011)
!3011 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2959, size: 192, elements: !788)
!3012 = !DILocation(line: 227, column: 20, scope: !2999)
!3013 = !DILocation(line: 228, column: 26, scope: !2999)
!3014 = !DILocation(line: 228, column: 52, scope: !2999)
!3015 = !DILocation(line: 229, column: 26, scope: !2999)
!3016 = !DILocation(line: 231, column: 3, scope: !2999)
!3017 = !DILocation(line: 231, column: 11, scope: !2999)
!3018 = !DILocation(line: 233, column: 3, scope: !2999)
!3019 = !DILocation(line: 234, column: 3, scope: !2999)
!3020 = !DILocation(line: 235, column: 3, scope: !2999)
!3021 = !DILocation(line: 236, column: 1, scope: !2999)
!3022 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !541, file: !541, line: 239, type: !717, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !537, variables: !4)
!3023 = !DILocation(line: 245, column: 3, scope: !3022)
!3024 = !DILocation(line: 245, column: 3, scope: !3025)
!3025 = !DILexicalBlockFile(scope: !3022, file: !541, discriminator: 1)
!3026 = !DILocation(line: 251, column: 3, scope: !3022)
!3027 = !DILocation(line: 251, column: 3, scope: !3025)
!3028 = !DILocation(line: 256, column: 3, scope: !3022)
!3029 = !DILocation(line: 256, column: 3, scope: !3025)
!3030 = !DILocation(line: 258, column: 1, scope: !3022)
!3031 = distinct !DISubprogram(name: "xnmalloc", scope: !549, file: !549, line: 105, type: !3032, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !545, variables: !3034)
!3032 = !DISubroutineType(types: !3033)
!3033 = !{!49, !94, !94}
!3034 = !{!3035, !3036}
!3035 = !DILocalVariable(name: "n", arg: 1, scope: !3031, file: !549, line: 105, type: !94)
!3036 = !DILocalVariable(name: "s", arg: 2, scope: !3031, file: !549, line: 105, type: !94)
!3037 = !DILocation(line: 105, column: 18, scope: !3031)
!3038 = !DILocation(line: 105, column: 28, scope: !3031)
!3039 = !DILocation(line: 107, column: 7, scope: !3040)
!3040 = distinct !DILexicalBlock(scope: !3031, file: !549, line: 107, column: 7)
!3041 = !DILocation(line: 107, column: 7, scope: !3031)
!3042 = !DILocation(line: 108, column: 5, scope: !3040)
!3043 = !DILocation(line: 109, column: 21, scope: !3031)
!3044 = !DILocalVariable(name: "n", arg: 1, scope: !3045, file: !3046, line: 39, type: !94)
!3045 = distinct !DISubprogram(name: "xmalloc", scope: !3046, file: !3046, line: 39, type: !3047, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !545, variables: !3049)
!3046 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3047 = !DISubroutineType(types: !3048)
!3048 = !{!49, !94}
!3049 = !{!3044, !3050}
!3050 = !DILocalVariable(name: "p", scope: !3045, file: !3046, line: 41, type: !49)
!3051 = !DILocation(line: 39, column: 17, scope: !3045, inlinedAt: !3052)
!3052 = distinct !DILocation(line: 109, column: 10, scope: !3031)
!3053 = !DILocation(line: 41, column: 13, scope: !3045, inlinedAt: !3052)
!3054 = !DILocation(line: 41, column: 9, scope: !3045, inlinedAt: !3052)
!3055 = !DILocation(line: 42, column: 8, scope: !3056, inlinedAt: !3052)
!3056 = distinct !DILexicalBlock(scope: !3045, file: !3046, line: 42, column: 7)
!3057 = !DILocation(line: 42, column: 15, scope: !3058, inlinedAt: !3052)
!3058 = !DILexicalBlockFile(scope: !3056, file: !3046, discriminator: 1)
!3059 = !DILocation(line: 42, column: 10, scope: !3056, inlinedAt: !3052)
!3060 = !DILocation(line: 43, column: 5, scope: !3056, inlinedAt: !3052)
!3061 = !DILocation(line: 109, column: 3, scope: !3031)
!3062 = !DILocation(line: 39, column: 17, scope: !3045)
!3063 = !DILocation(line: 41, column: 13, scope: !3045)
!3064 = !DILocation(line: 41, column: 9, scope: !3045)
!3065 = !DILocation(line: 42, column: 8, scope: !3056)
!3066 = !DILocation(line: 42, column: 15, scope: !3058)
!3067 = !DILocation(line: 42, column: 10, scope: !3056)
!3068 = !DILocation(line: 43, column: 5, scope: !3056)
!3069 = !DILocation(line: 44, column: 3, scope: !3045)
!3070 = distinct !DISubprogram(name: "xnrealloc", scope: !549, file: !549, line: 118, type: !3071, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !545, variables: !3073)
!3071 = !DISubroutineType(types: !3072)
!3072 = !{!49, !49, !94, !94}
!3073 = !{!3074, !3075, !3076}
!3074 = !DILocalVariable(name: "p", arg: 1, scope: !3070, file: !549, line: 118, type: !49)
!3075 = !DILocalVariable(name: "n", arg: 2, scope: !3070, file: !549, line: 118, type: !94)
!3076 = !DILocalVariable(name: "s", arg: 3, scope: !3070, file: !549, line: 118, type: !94)
!3077 = !DILocation(line: 118, column: 18, scope: !3070)
!3078 = !DILocation(line: 118, column: 28, scope: !3070)
!3079 = !DILocation(line: 118, column: 38, scope: !3070)
!3080 = !DILocation(line: 120, column: 7, scope: !3081)
!3081 = distinct !DILexicalBlock(scope: !3070, file: !549, line: 120, column: 7)
!3082 = !DILocation(line: 120, column: 7, scope: !3070)
!3083 = !DILocation(line: 121, column: 5, scope: !3081)
!3084 = !DILocation(line: 122, column: 25, scope: !3070)
!3085 = !DILocalVariable(name: "p", arg: 1, scope: !3086, file: !3046, line: 51, type: !49)
!3086 = distinct !DISubprogram(name: "xrealloc", scope: !3046, file: !3046, line: 51, type: !3087, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !545, variables: !3089)
!3087 = !DISubroutineType(types: !3088)
!3088 = !{!49, !49, !94}
!3089 = !{!3085, !3090}
!3090 = !DILocalVariable(name: "n", arg: 2, scope: !3086, file: !3046, line: 51, type: !94)
!3091 = !DILocation(line: 51, column: 17, scope: !3086, inlinedAt: !3092)
!3092 = distinct !DILocation(line: 122, column: 10, scope: !3070)
!3093 = !DILocation(line: 51, column: 27, scope: !3086, inlinedAt: !3092)
!3094 = !DILocation(line: 53, column: 8, scope: !3095, inlinedAt: !3092)
!3095 = distinct !DILexicalBlock(scope: !3086, file: !3046, line: 53, column: 7)
!3096 = !DILocation(line: 53, column: 13, scope: !3097, inlinedAt: !3092)
!3097 = !DILexicalBlockFile(scope: !3095, file: !3046, discriminator: 1)
!3098 = !DILocation(line: 53, column: 10, scope: !3095, inlinedAt: !3092)
!3099 = !DILocation(line: 57, column: 7, scope: !3100, inlinedAt: !3092)
!3100 = distinct !DILexicalBlock(scope: !3095, file: !3046, line: 54, column: 5)
!3101 = !DILocation(line: 58, column: 7, scope: !3100, inlinedAt: !3092)
!3102 = !DILocation(line: 61, column: 7, scope: !3086, inlinedAt: !3092)
!3103 = !DILocation(line: 62, column: 8, scope: !3104, inlinedAt: !3092)
!3104 = distinct !DILexicalBlock(scope: !3086, file: !3046, line: 62, column: 7)
!3105 = !DILocation(line: 62, column: 13, scope: !3106, inlinedAt: !3092)
!3106 = !DILexicalBlockFile(scope: !3104, file: !3046, discriminator: 1)
!3107 = !DILocation(line: 62, column: 10, scope: !3104, inlinedAt: !3092)
!3108 = !DILocation(line: 63, column: 5, scope: !3104, inlinedAt: !3092)
!3109 = !DILocation(line: 122, column: 3, scope: !3070)
!3110 = !DILocation(line: 51, column: 17, scope: !3086)
!3111 = !DILocation(line: 51, column: 27, scope: !3086)
!3112 = !DILocation(line: 53, column: 8, scope: !3095)
!3113 = !DILocation(line: 53, column: 13, scope: !3097)
!3114 = !DILocation(line: 53, column: 10, scope: !3095)
!3115 = !DILocation(line: 57, column: 7, scope: !3100)
!3116 = !DILocation(line: 58, column: 7, scope: !3100)
!3117 = !DILocation(line: 61, column: 7, scope: !3086)
!3118 = !DILocation(line: 62, column: 8, scope: !3104)
!3119 = !DILocation(line: 62, column: 13, scope: !3106)
!3120 = !DILocation(line: 62, column: 10, scope: !3104)
!3121 = !DILocation(line: 63, column: 5, scope: !3104)
!3122 = !DILocation(line: 65, column: 1, scope: !3086)
!3123 = !DILocation(line: 180, column: 19, scope: !550)
!3124 = !DILocation(line: 180, column: 30, scope: !550)
!3125 = !DILocation(line: 180, column: 41, scope: !550)
!3126 = !DILocation(line: 182, column: 14, scope: !550)
!3127 = !DILocation(line: 182, column: 10, scope: !550)
!3128 = !DILocation(line: 184, column: 9, scope: !3129)
!3129 = distinct !DILexicalBlock(scope: !550, file: !549, line: 184, column: 7)
!3130 = !DILocation(line: 184, column: 7, scope: !550)
!3131 = !DILocation(line: 186, column: 13, scope: !3132)
!3132 = distinct !DILexicalBlock(scope: !3133, file: !549, line: 186, column: 11)
!3133 = distinct !DILexicalBlock(scope: !3129, file: !549, line: 185, column: 5)
!3134 = !DILocation(line: 186, column: 11, scope: !3133)
!3135 = !DILocation(line: 194, column: 30, scope: !3136)
!3136 = distinct !DILexicalBlock(scope: !3132, file: !549, line: 187, column: 9)
!3137 = !DILocation(line: 195, column: 16, scope: !3136)
!3138 = !DILocation(line: 195, column: 13, scope: !3136)
!3139 = !DILocation(line: 196, column: 9, scope: !3136)
!3140 = !DILocation(line: 204, column: 69, scope: !3141)
!3141 = distinct !DILexicalBlock(scope: !3142, file: !549, line: 204, column: 11)
!3142 = distinct !DILexicalBlock(scope: !3129, file: !549, line: 199, column: 5)
!3143 = !DILocation(line: 205, column: 11, scope: !3141)
!3144 = !DILocation(line: 204, column: 11, scope: !3142)
!3145 = !DILocation(line: 206, column: 9, scope: !3141)
!3146 = !DILocation(line: 210, column: 7, scope: !550)
!3147 = !DILocation(line: 211, column: 25, scope: !550)
!3148 = !DILocation(line: 51, column: 17, scope: !3086, inlinedAt: !3149)
!3149 = distinct !DILocation(line: 211, column: 10, scope: !550)
!3150 = !DILocation(line: 51, column: 27, scope: !3086, inlinedAt: !3149)
!3151 = !DILocation(line: 53, column: 10, scope: !3095, inlinedAt: !3149)
!3152 = !DILocation(line: 207, column: 14, scope: !3142)
!3153 = !DILocation(line: 207, column: 18, scope: !3142)
!3154 = !DILocation(line: 207, column: 9, scope: !3142)
!3155 = !DILocation(line: 53, column: 8, scope: !3095, inlinedAt: !3149)
!3156 = !DILocation(line: 57, column: 7, scope: !3100, inlinedAt: !3149)
!3157 = !DILocation(line: 58, column: 7, scope: !3100, inlinedAt: !3149)
!3158 = !DILocation(line: 61, column: 7, scope: !3086, inlinedAt: !3149)
!3159 = !DILocation(line: 62, column: 8, scope: !3104, inlinedAt: !3149)
!3160 = !DILocation(line: 62, column: 13, scope: !3106, inlinedAt: !3149)
!3161 = !DILocation(line: 62, column: 10, scope: !3104, inlinedAt: !3149)
!3162 = !DILocation(line: 63, column: 5, scope: !3104, inlinedAt: !3149)
!3163 = !DILocation(line: 211, column: 3, scope: !550)
!3164 = distinct !DISubprogram(name: "xcharalloc", scope: !549, file: !549, line: 220, type: !2083, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !545, variables: !3165)
!3165 = !{!3166}
!3166 = !DILocalVariable(name: "n", arg: 1, scope: !3164, file: !549, line: 220, type: !94)
!3167 = !DILocation(line: 220, column: 20, scope: !3164)
!3168 = !DILocation(line: 39, column: 17, scope: !3045, inlinedAt: !3169)
!3169 = distinct !DILocation(line: 222, column: 10, scope: !3164)
!3170 = !DILocation(line: 41, column: 13, scope: !3045, inlinedAt: !3169)
!3171 = !DILocation(line: 41, column: 9, scope: !3045, inlinedAt: !3169)
!3172 = !DILocation(line: 42, column: 8, scope: !3056, inlinedAt: !3169)
!3173 = !DILocation(line: 42, column: 15, scope: !3058, inlinedAt: !3169)
!3174 = !DILocation(line: 42, column: 10, scope: !3056, inlinedAt: !3169)
!3175 = !DILocation(line: 43, column: 5, scope: !3056, inlinedAt: !3169)
!3176 = !DILocation(line: 222, column: 3, scope: !3164)
!3177 = distinct !DISubprogram(name: "x2realloc", scope: !3046, file: !3046, line: 74, type: !3178, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !545, variables: !3180)
!3178 = !DISubroutineType(types: !3179)
!3179 = !{!49, !49, !553}
!3180 = !{!3181, !3182}
!3181 = !DILocalVariable(name: "p", arg: 1, scope: !3177, file: !3046, line: 74, type: !49)
!3182 = !DILocalVariable(name: "pn", arg: 2, scope: !3177, file: !3046, line: 74, type: !553)
!3183 = !DILocation(line: 74, column: 18, scope: !3177)
!3184 = !DILocation(line: 74, column: 29, scope: !3177)
!3185 = !DILocation(line: 180, column: 19, scope: !550, inlinedAt: !3186)
!3186 = distinct !DILocation(line: 76, column: 10, scope: !3177)
!3187 = !DILocation(line: 180, column: 30, scope: !550, inlinedAt: !3186)
!3188 = !DILocation(line: 180, column: 41, scope: !550, inlinedAt: !3186)
!3189 = !DILocation(line: 182, column: 14, scope: !550, inlinedAt: !3186)
!3190 = !DILocation(line: 182, column: 10, scope: !550, inlinedAt: !3186)
!3191 = !DILocation(line: 184, column: 9, scope: !3129, inlinedAt: !3186)
!3192 = !DILocation(line: 184, column: 7, scope: !550, inlinedAt: !3186)
!3193 = !DILocation(line: 186, column: 13, scope: !3132, inlinedAt: !3186)
!3194 = !DILocation(line: 186, column: 11, scope: !3133, inlinedAt: !3186)
!3195 = !DILocation(line: 210, column: 7, scope: !550, inlinedAt: !3186)
!3196 = !DILocation(line: 51, column: 17, scope: !3086, inlinedAt: !3197)
!3197 = distinct !DILocation(line: 211, column: 10, scope: !550, inlinedAt: !3186)
!3198 = !DILocation(line: 51, column: 27, scope: !3086, inlinedAt: !3197)
!3199 = !DILocation(line: 53, column: 10, scope: !3095, inlinedAt: !3197)
!3200 = !DILocation(line: 205, column: 11, scope: !3141, inlinedAt: !3186)
!3201 = !DILocation(line: 204, column: 11, scope: !3142, inlinedAt: !3186)
!3202 = !DILocation(line: 206, column: 9, scope: !3141, inlinedAt: !3186)
!3203 = !DILocation(line: 207, column: 14, scope: !3142, inlinedAt: !3186)
!3204 = !DILocation(line: 207, column: 18, scope: !3142, inlinedAt: !3186)
!3205 = !DILocation(line: 207, column: 9, scope: !3142, inlinedAt: !3186)
!3206 = !DILocation(line: 53, column: 8, scope: !3095, inlinedAt: !3197)
!3207 = !DILocation(line: 57, column: 7, scope: !3100, inlinedAt: !3197)
!3208 = !DILocation(line: 58, column: 7, scope: !3100, inlinedAt: !3197)
!3209 = !DILocation(line: 61, column: 7, scope: !3086, inlinedAt: !3197)
!3210 = !DILocation(line: 62, column: 8, scope: !3104, inlinedAt: !3197)
!3211 = !DILocation(line: 62, column: 13, scope: !3106, inlinedAt: !3197)
!3212 = !DILocation(line: 62, column: 10, scope: !3104, inlinedAt: !3197)
!3213 = !DILocation(line: 63, column: 5, scope: !3104, inlinedAt: !3197)
!3214 = !DILocation(line: 76, column: 3, scope: !3177)
!3215 = distinct !DISubprogram(name: "xzalloc", scope: !3046, file: !3046, line: 84, type: !3047, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !545, variables: !3216)
!3216 = !{!3217}
!3217 = !DILocalVariable(name: "s", arg: 1, scope: !3215, file: !3046, line: 84, type: !94)
!3218 = !DILocation(line: 84, column: 17, scope: !3215)
!3219 = !DILocation(line: 39, column: 17, scope: !3045, inlinedAt: !3220)
!3220 = distinct !DILocation(line: 86, column: 18, scope: !3215)
!3221 = !DILocation(line: 41, column: 13, scope: !3045, inlinedAt: !3220)
!3222 = !DILocation(line: 41, column: 9, scope: !3045, inlinedAt: !3220)
!3223 = !DILocation(line: 42, column: 8, scope: !3056, inlinedAt: !3220)
!3224 = !DILocation(line: 42, column: 15, scope: !3058, inlinedAt: !3220)
!3225 = !DILocation(line: 42, column: 10, scope: !3056, inlinedAt: !3220)
!3226 = !DILocation(line: 43, column: 5, scope: !3056, inlinedAt: !3220)
!3227 = !DILocation(line: 86, column: 10, scope: !3215)
!3228 = !DILocation(line: 86, column: 3, scope: !3215)
!3229 = distinct !DISubprogram(name: "xcalloc", scope: !3046, file: !3046, line: 93, type: !3032, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !545, variables: !3230)
!3230 = !{!3231, !3232, !3233}
!3231 = !DILocalVariable(name: "n", arg: 1, scope: !3229, file: !3046, line: 93, type: !94)
!3232 = !DILocalVariable(name: "s", arg: 2, scope: !3229, file: !3046, line: 93, type: !94)
!3233 = !DILocalVariable(name: "p", scope: !3229, file: !3046, line: 95, type: !49)
!3234 = !DILocation(line: 93, column: 17, scope: !3229)
!3235 = !DILocation(line: 93, column: 27, scope: !3229)
!3236 = !DILocation(line: 100, column: 7, scope: !3237)
!3237 = distinct !DILexicalBlock(scope: !3229, file: !3046, line: 100, column: 7)
!3238 = !DILocation(line: 101, column: 7, scope: !3237)
!3239 = !DILocation(line: 101, column: 18, scope: !3240)
!3240 = !DILexicalBlockFile(scope: !3237, file: !3046, discriminator: 1)
!3241 = !DILocation(line: 95, column: 9, scope: !3229)
!3242 = !DILocation(line: 101, column: 16, scope: !3240)
!3243 = !DILocation(line: 100, column: 7, scope: !3244)
!3244 = !DILexicalBlockFile(scope: !3229, file: !3046, discriminator: 1)
!3245 = !DILocation(line: 102, column: 5, scope: !3237)
!3246 = !DILocation(line: 103, column: 3, scope: !3229)
!3247 = distinct !DISubprogram(name: "xmemdup", scope: !3046, file: !3046, line: 111, type: !3248, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !545, variables: !3250)
!3248 = !DISubroutineType(types: !3249)
!3249 = !{!49, !502, !94}
!3250 = !{!3251, !3252}
!3251 = !DILocalVariable(name: "p", arg: 1, scope: !3247, file: !3046, line: 111, type: !502)
!3252 = !DILocalVariable(name: "s", arg: 2, scope: !3247, file: !3046, line: 111, type: !94)
!3253 = !DILocation(line: 111, column: 22, scope: !3247)
!3254 = !DILocation(line: 111, column: 32, scope: !3247)
!3255 = !DILocation(line: 39, column: 17, scope: !3045, inlinedAt: !3256)
!3256 = distinct !DILocation(line: 113, column: 18, scope: !3247)
!3257 = !DILocation(line: 41, column: 13, scope: !3045, inlinedAt: !3256)
!3258 = !DILocation(line: 41, column: 9, scope: !3045, inlinedAt: !3256)
!3259 = !DILocation(line: 42, column: 8, scope: !3056, inlinedAt: !3256)
!3260 = !DILocation(line: 42, column: 15, scope: !3058, inlinedAt: !3256)
!3261 = !DILocation(line: 42, column: 10, scope: !3056, inlinedAt: !3256)
!3262 = !DILocation(line: 43, column: 5, scope: !3056, inlinedAt: !3256)
!3263 = !DILocation(line: 113, column: 10, scope: !3247)
!3264 = !DILocation(line: 113, column: 3, scope: !3247)
!3265 = distinct !DISubprogram(name: "xstrdup", scope: !3046, file: !3046, line: 119, type: !2290, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !545, variables: !3266)
!3266 = !{!3267}
!3267 = !DILocalVariable(name: "string", arg: 1, scope: !3265, file: !3046, line: 119, type: !6)
!3268 = !DILocation(line: 119, column: 22, scope: !3265)
!3269 = !DILocation(line: 121, column: 27, scope: !3265)
!3270 = !DILocation(line: 121, column: 43, scope: !3265)
!3271 = !DILocation(line: 111, column: 22, scope: !3247, inlinedAt: !3272)
!3272 = distinct !DILocation(line: 121, column: 10, scope: !3273)
!3273 = !DILexicalBlockFile(scope: !3265, file: !3046, discriminator: 1)
!3274 = !DILocation(line: 111, column: 32, scope: !3247, inlinedAt: !3272)
!3275 = !DILocation(line: 39, column: 17, scope: !3045, inlinedAt: !3276)
!3276 = distinct !DILocation(line: 113, column: 18, scope: !3247, inlinedAt: !3272)
!3277 = !DILocation(line: 41, column: 13, scope: !3045, inlinedAt: !3276)
!3278 = !DILocation(line: 41, column: 9, scope: !3045, inlinedAt: !3276)
!3279 = !DILocation(line: 42, column: 8, scope: !3056, inlinedAt: !3276)
!3280 = !DILocation(line: 42, column: 15, scope: !3058, inlinedAt: !3276)
!3281 = !DILocation(line: 42, column: 10, scope: !3056, inlinedAt: !3276)
!3282 = !DILocation(line: 43, column: 5, scope: !3056, inlinedAt: !3276)
!3283 = !DILocation(line: 113, column: 10, scope: !3247, inlinedAt: !3272)
!3284 = !DILocation(line: 121, column: 3, scope: !3265)
!3285 = distinct !DISubprogram(name: "xalloc_die", scope: !3286, file: !3286, line: 32, type: !717, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !562, variables: !4)
!3286 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3287 = !DILocation(line: 34, column: 10, scope: !3285)
!3288 = !DILocation(line: 34, column: 33, scope: !3285)
!3289 = !DILocation(line: 34, column: 3, scope: !3290)
!3290 = !DILexicalBlockFile(scope: !3285, file: !3286, discriminator: 1)
!3291 = !DILocation(line: 40, column: 3, scope: !3285)
!3292 = distinct !DISubprogram(name: "rpl_calloc", scope: !3293, file: !3293, line: 42, type: !3032, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !564, variables: !3294)
!3293 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3294 = !{!3295, !3296, !3297, !3298}
!3295 = !DILocalVariable(name: "n", arg: 1, scope: !3292, file: !3293, line: 42, type: !94)
!3296 = !DILocalVariable(name: "s", arg: 2, scope: !3292, file: !3293, line: 42, type: !94)
!3297 = !DILocalVariable(name: "result", scope: !3292, file: !3293, line: 44, type: !49)
!3298 = !DILocalVariable(name: "bytes", scope: !3299, file: !3293, line: 56, type: !94)
!3299 = distinct !DILexicalBlock(scope: !3300, file: !3293, line: 53, column: 5)
!3300 = distinct !DILexicalBlock(scope: !3292, file: !3293, line: 47, column: 7)
!3301 = !DILocation(line: 42, column: 20, scope: !3292)
!3302 = !DILocation(line: 42, column: 30, scope: !3292)
!3303 = !DILocation(line: 47, column: 9, scope: !3300)
!3304 = !DILocation(line: 47, column: 19, scope: !3305)
!3305 = !DILexicalBlockFile(scope: !3300, file: !3293, discriminator: 1)
!3306 = !DILocation(line: 47, column: 14, scope: !3300)
!3307 = !DILocation(line: 56, column: 24, scope: !3299)
!3308 = !DILocation(line: 56, column: 14, scope: !3299)
!3309 = !DILocation(line: 57, column: 17, scope: !3310)
!3310 = distinct !DILexicalBlock(scope: !3299, file: !3293, line: 57, column: 11)
!3311 = !DILocation(line: 57, column: 21, scope: !3310)
!3312 = !DILocation(line: 57, column: 11, scope: !3299)
!3313 = !DILocation(line: 59, column: 11, scope: !3314)
!3314 = distinct !DILexicalBlock(scope: !3310, file: !3293, line: 58, column: 9)
!3315 = !DILocation(line: 59, column: 17, scope: !3314)
!3316 = !DILocation(line: 65, column: 12, scope: !3292)
!3317 = !DILocation(line: 44, column: 9, scope: !3292)
!3318 = !DILocation(line: 72, column: 3, scope: !3292)
!3319 = !DILocation(line: 73, column: 1, scope: !3292)
!3320 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !3321, file: !3321, line: 334, type: !3322, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !566, variables: !3336)
!3321 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3322 = !DISubroutineType(types: !3323)
!3323 = !{!94, !3324, !6, !94, !3325}
!3324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!3325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3326, size: 64)
!3326 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1052, line: 107, baseType: !3327)
!3327 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1052, line: 95, baseType: !3328)
!3328 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1052, line: 83, size: 64, elements: !3329)
!3329 = !{!3330, !3331}
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3328, file: !1052, line: 85, baseType: !25, size: 32)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3328, file: !1052, line: 94, baseType: !3332, size: 32, offset: 32)
!3332 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3328, file: !1052, line: 86, size: 32, elements: !3333)
!3333 = !{!3334, !3335}
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3332, file: !1052, line: 89, baseType: !113, size: 32)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3332, file: !1052, line: 93, baseType: !1062, size: 32)
!3336 = !{!3337, !3338, !3339, !3340, !3341, !3342, !3343}
!3337 = !DILocalVariable(name: "pwc", arg: 1, scope: !3320, file: !3321, line: 334, type: !3324)
!3338 = !DILocalVariable(name: "s", arg: 2, scope: !3320, file: !3321, line: 334, type: !6)
!3339 = !DILocalVariable(name: "n", arg: 3, scope: !3320, file: !3321, line: 334, type: !94)
!3340 = !DILocalVariable(name: "ps", arg: 4, scope: !3320, file: !3321, line: 334, type: !3325)
!3341 = !DILocalVariable(name: "ret", scope: !3320, file: !3321, line: 336, type: !94)
!3342 = !DILocalVariable(name: "wc", scope: !3320, file: !3321, line: 337, type: !1067)
!3343 = !DILocalVariable(name: "uc", scope: !3344, file: !3321, line: 398, type: !494)
!3344 = distinct !DILexicalBlock(scope: !3345, file: !3321, line: 397, column: 5)
!3345 = distinct !DILexicalBlock(scope: !3320, file: !3321, line: 396, column: 7)
!3346 = !DILocation(line: 334, column: 23, scope: !3320)
!3347 = !DILocation(line: 334, column: 40, scope: !3320)
!3348 = !DILocation(line: 334, column: 50, scope: !3320)
!3349 = !DILocation(line: 334, column: 64, scope: !3320)
!3350 = !DILocation(line: 337, column: 3, scope: !3320)
!3351 = !DILocation(line: 353, column: 9, scope: !3352)
!3352 = distinct !DILexicalBlock(scope: !3320, file: !3321, line: 353, column: 7)
!3353 = !DILocation(line: 353, column: 7, scope: !3320)
!3354 = !DILocation(line: 388, column: 9, scope: !3320)
!3355 = !DILocation(line: 336, column: 10, scope: !3320)
!3356 = !DILocation(line: 396, column: 19, scope: !3345)
!3357 = !DILocation(line: 396, column: 31, scope: !3358)
!3358 = !DILexicalBlockFile(scope: !3345, file: !3321, discriminator: 1)
!3359 = !DILocation(line: 396, column: 26, scope: !3345)
!3360 = !DILocation(line: 396, column: 41, scope: !3361)
!3361 = !DILexicalBlockFile(scope: !3345, file: !3321, discriminator: 2)
!3362 = !DILocation(line: 396, column: 7, scope: !3363)
!3363 = !DILexicalBlockFile(scope: !3320, file: !3321, discriminator: 2)
!3364 = !DILocation(line: 398, column: 26, scope: !3344)
!3365 = !DILocation(line: 398, column: 21, scope: !3344)
!3366 = !DILocation(line: 399, column: 14, scope: !3344)
!3367 = !DILocation(line: 399, column: 12, scope: !3344)
!3368 = !DILocation(line: 405, column: 1, scope: !3320)
!3369 = distinct !DISubprogram(name: "close_stream", scope: !3370, file: !3370, line: 56, type: !3371, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !569, variables: !3413)
!3370 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3371 = !DISubroutineType(types: !3372)
!3372 = !{!25, !3373}
!3373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3374, size: 64)
!3374 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !777, line: 49, baseType: !3375)
!3375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2817, line: 241, size: 1728, elements: !3376)
!3376 = !{!3377, !3378, !3379, !3380, !3381, !3382, !3383, !3384, !3385, !3386, !3387, !3388, !3389, !3397, !3398, !3399, !3400, !3401, !3402, !3403, !3404, !3405, !3406, !3407, !3408, !3409, !3410, !3411, !3412}
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3375, file: !2817, line: 242, baseType: !25, size: 32)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3375, file: !2817, line: 247, baseType: !50, size: 64, offset: 64)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3375, file: !2817, line: 248, baseType: !50, size: 64, offset: 128)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3375, file: !2817, line: 249, baseType: !50, size: 64, offset: 192)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3375, file: !2817, line: 250, baseType: !50, size: 64, offset: 256)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3375, file: !2817, line: 251, baseType: !50, size: 64, offset: 320)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3375, file: !2817, line: 252, baseType: !50, size: 64, offset: 384)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3375, file: !2817, line: 253, baseType: !50, size: 64, offset: 448)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3375, file: !2817, line: 254, baseType: !50, size: 64, offset: 512)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3375, file: !2817, line: 256, baseType: !50, size: 64, offset: 576)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3375, file: !2817, line: 257, baseType: !50, size: 64, offset: 640)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3375, file: !2817, line: 258, baseType: !50, size: 64, offset: 704)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3375, file: !2817, line: 260, baseType: !3390, size: 64, offset: 768)
!3390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3391, size: 64)
!3391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2817, line: 156, size: 192, elements: !3392)
!3392 = !{!3393, !3394, !3396}
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3391, file: !2817, line: 157, baseType: !3390, size: 64)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3391, file: !2817, line: 158, baseType: !3395, size: 64, offset: 64)
!3395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3375, size: 64)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3391, file: !2817, line: 162, baseType: !25, size: 32, offset: 128)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3375, file: !2817, line: 262, baseType: !3395, size: 64, offset: 832)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3375, file: !2817, line: 264, baseType: !25, size: 32, offset: 896)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3375, file: !2817, line: 268, baseType: !25, size: 32, offset: 928)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3375, file: !2817, line: 270, baseType: !2843, size: 64, offset: 960)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3375, file: !2817, line: 274, baseType: !93, size: 16, offset: 1024)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3375, file: !2817, line: 275, baseType: !2848, size: 8, offset: 1040)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3375, file: !2817, line: 276, baseType: !2850, size: 8, offset: 1048)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3375, file: !2817, line: 280, baseType: !2852, size: 64, offset: 1088)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3375, file: !2817, line: 289, baseType: !2855, size: 64, offset: 1152)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3375, file: !2817, line: 297, baseType: !49, size: 64, offset: 1216)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3375, file: !2817, line: 298, baseType: !49, size: 64, offset: 1280)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3375, file: !2817, line: 299, baseType: !49, size: 64, offset: 1344)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3375, file: !2817, line: 300, baseType: !49, size: 64, offset: 1408)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3375, file: !2817, line: 302, baseType: !94, size: 64, offset: 1472)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3375, file: !2817, line: 303, baseType: !25, size: 32, offset: 1536)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3375, file: !2817, line: 305, baseType: !2863, size: 160, offset: 1568)
!3413 = !{!3414, !3415, !3417, !3418}
!3414 = !DILocalVariable(name: "stream", arg: 1, scope: !3369, file: !3370, line: 56, type: !3373)
!3415 = !DILocalVariable(name: "some_pending", scope: !3369, file: !3370, line: 58, type: !3416)
!3416 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!3417 = !DILocalVariable(name: "prev_fail", scope: !3369, file: !3370, line: 59, type: !3416)
!3418 = !DILocalVariable(name: "fclose_fail", scope: !3369, file: !3370, line: 60, type: !3416)
!3419 = !DILocation(line: 56, column: 21, scope: !3369)
!3420 = !DILocation(line: 58, column: 30, scope: !3369)
!3421 = !DILocalVariable(name: "__stream", arg: 1, scope: !3422, file: !3423, line: 132, type: !3373)
!3422 = distinct !DISubprogram(name: "ferror_unlocked", scope: !3423, file: !3423, line: 132, type: !3371, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !569, variables: !3424)
!3423 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3424 = !{!3421}
!3425 = !DILocation(line: 132, column: 1, scope: !3422, inlinedAt: !3426)
!3426 = distinct !DILocation(line: 59, column: 27, scope: !3369)
!3427 = !DILocation(line: 134, column: 10, scope: !3422, inlinedAt: !3426)
!3428 = !{!3429, !664, i64 0}
!3429 = !{!"_IO_FILE", !664, i64 0, !599, i64 8, !599, i64 16, !599, i64 24, !599, i64 32, !599, i64 40, !599, i64 48, !599, i64 56, !599, i64 64, !599, i64 72, !599, i64 80, !599, i64 88, !599, i64 96, !599, i64 104, !664, i64 112, !664, i64 116, !2128, i64 120, !1420, i64 128, !600, i64 130, !600, i64 131, !599, i64 136, !2128, i64 144, !599, i64 152, !599, i64 160, !599, i64 168, !599, i64 176, !2128, i64 184, !664, i64 192, !600, i64 196}
!3430 = !DILocation(line: 59, column: 43, scope: !3369)
!3431 = !DILocation(line: 60, column: 29, scope: !3369)
!3432 = !DILocation(line: 60, column: 45, scope: !3369)
!3433 = !DILocation(line: 70, column: 17, scope: !3434)
!3434 = distinct !DILexicalBlock(scope: !3369, file: !3370, line: 70, column: 7)
!3435 = !DILocation(line: 70, column: 33, scope: !3436)
!3436 = !DILexicalBlockFile(scope: !3434, file: !3370, discriminator: 1)
!3437 = !DILocation(line: 70, column: 53, scope: !3438)
!3438 = !DILexicalBlockFile(scope: !3434, file: !3370, discriminator: 3)
!3439 = !DILocation(line: 70, column: 7, scope: !3440)
!3440 = !DILexicalBlockFile(scope: !3369, file: !3370, discriminator: 3)
!3441 = !DILocation(line: 72, column: 11, scope: !3442)
!3442 = distinct !DILexicalBlock(scope: !3434, file: !3370, line: 71, column: 5)
!3443 = !DILocation(line: 73, column: 9, scope: !3444)
!3444 = distinct !DILexicalBlock(scope: !3442, file: !3370, line: 72, column: 11)
!3445 = !DILocation(line: 73, column: 15, scope: !3444)
!3446 = !DILocation(line: 78, column: 1, scope: !3369)
!3447 = distinct !DISubprogram(name: "hard_locale", scope: !3448, file: !3448, line: 38, type: !3449, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !571, variables: !3451)
!3448 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3449 = !DISubroutineType(types: !3450)
!3450 = !{!17, !25}
!3451 = !{!3452, !3453, !3454, !3455, !3462, !3463, !3465, !3466, !3468, !3469, !3471}
!3452 = !DILocalVariable(name: "category", arg: 1, scope: !3447, file: !3448, line: 38, type: !25)
!3453 = !DILocalVariable(name: "hard", scope: !3447, file: !3448, line: 40, type: !17)
!3454 = !DILocalVariable(name: "p", scope: !3447, file: !3448, line: 41, type: !6)
!3455 = !DILocalVariable(name: "__s1_len", scope: !3456, file: !3448, line: 47, type: !94)
!3456 = distinct !DILexicalBlock(scope: !3457, file: !3448, line: 47, column: 15)
!3457 = distinct !DILexicalBlock(scope: !3458, file: !3448, line: 47, column: 15)
!3458 = distinct !DILexicalBlock(scope: !3459, file: !3448, line: 46, column: 9)
!3459 = distinct !DILexicalBlock(scope: !3460, file: !3448, line: 45, column: 11)
!3460 = distinct !DILexicalBlock(scope: !3461, file: !3448, line: 44, column: 5)
!3461 = distinct !DILexicalBlock(scope: !3447, file: !3448, line: 43, column: 7)
!3462 = !DILocalVariable(name: "__s2_len", scope: !3456, file: !3448, line: 47, type: !94)
!3463 = !DILocalVariable(name: "__s2", scope: !3464, file: !3448, line: 47, type: !504)
!3464 = distinct !DILexicalBlock(scope: !3456, file: !3448, line: 47, column: 15)
!3465 = !DILocalVariable(name: "__result", scope: !3464, file: !3448, line: 47, type: !25)
!3466 = !DILocalVariable(name: "__s1_len", scope: !3467, file: !3448, line: 47, type: !94)
!3467 = distinct !DILexicalBlock(scope: !3457, file: !3448, line: 47, column: 39)
!3468 = !DILocalVariable(name: "__s2_len", scope: !3467, file: !3448, line: 47, type: !94)
!3469 = !DILocalVariable(name: "__s2", scope: !3470, file: !3448, line: 47, type: !504)
!3470 = distinct !DILexicalBlock(scope: !3467, file: !3448, line: 47, column: 39)
!3471 = !DILocalVariable(name: "__result", scope: !3470, file: !3448, line: 47, type: !25)
!3472 = !DILocation(line: 38, column: 18, scope: !3447)
!3473 = !DILocation(line: 40, column: 8, scope: !3447)
!3474 = !DILocation(line: 41, column: 19, scope: !3447)
!3475 = !DILocation(line: 41, column: 15, scope: !3447)
!3476 = !DILocation(line: 43, column: 7, scope: !3461)
!3477 = !DILocation(line: 43, column: 7, scope: !3447)
!3478 = !DILocation(line: 47, column: 15, scope: !3456)
!3479 = !DILocation(line: 47, column: 15, scope: !3464)
!3480 = !DILocation(line: 47, column: 15, scope: !3481)
!3481 = !DILexicalBlockFile(scope: !3464, file: !3448, discriminator: 2)
!3482 = !DILocation(line: 47, column: 15, scope: !3483)
!3483 = !DILexicalBlockFile(scope: !3484, file: !3448, discriminator: 3)
!3484 = distinct !DILexicalBlock(scope: !3464, file: !3448, line: 47, column: 15)
!3485 = !DILocation(line: 47, column: 15, scope: !3486)
!3486 = !DILexicalBlockFile(scope: !3484, file: !3448, discriminator: 2)
!3487 = !DILocation(line: 47, column: 15, scope: !3488)
!3488 = !DILexicalBlockFile(scope: !3489, file: !3448, discriminator: 4)
!3489 = distinct !DILexicalBlock(scope: !3484, file: !3448, line: 47, column: 15)
!3490 = !DILocation(line: 47, column: 15, scope: !3491)
!3491 = !DILexicalBlockFile(scope: !3456, file: !3448, discriminator: 11)
!3492 = !DILocation(line: 47, column: 36, scope: !3493)
!3493 = !DILexicalBlockFile(scope: !3457, file: !3448, discriminator: 13)
!3494 = !DILocation(line: 47, column: 39, scope: !3467)
!3495 = !DILocation(line: 47, column: 39, scope: !3496)
!3496 = !DILexicalBlockFile(scope: !3467, file: !3448, discriminator: 26)
!3497 = !DILocation(line: 47, column: 59, scope: !3498)
!3498 = !DILexicalBlockFile(scope: !3457, file: !3448, discriminator: 27)
!3499 = !DILocation(line: 47, column: 15, scope: !3500)
!3500 = !DILexicalBlockFile(scope: !3458, file: !3448, discriminator: 27)
!3501 = !DILocation(line: 48, column: 13, scope: !3457)
!3502 = !DILocation(line: 71, column: 3, scope: !3447)
!3503 = distinct !DISubprogram(name: "locale_charset", scope: !496, file: !496, line: 393, type: !3504, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !151, variables: !3506)
!3504 = !DISubroutineType(types: !3505)
!3505 = !{!6}
!3506 = !{!3507, !3508, !3509, !3514}
!3507 = !DILocalVariable(name: "codeset", scope: !3503, file: !496, line: 395, type: !6)
!3508 = !DILocalVariable(name: "aliases", scope: !3503, file: !496, line: 396, type: !6)
!3509 = !DILocalVariable(name: "__s1_len", scope: !3510, file: !496, line: 592, type: !94)
!3510 = distinct !DILexicalBlock(scope: !3511, file: !496, line: 592, column: 9)
!3511 = distinct !DILexicalBlock(scope: !3512, file: !496, line: 592, column: 9)
!3512 = distinct !DILexicalBlock(scope: !3513, file: !496, line: 589, column: 3)
!3513 = distinct !DILexicalBlock(scope: !3503, file: !496, line: 589, column: 3)
!3514 = !DILocalVariable(name: "__s2_len", scope: !3510, file: !496, line: 592, type: !94)
!3515 = !DILocalVariable(name: "buf1", scope: !3516, file: !496, line: 196, type: !3583)
!3516 = distinct !DILexicalBlock(scope: !3517, file: !496, line: 194, column: 21)
!3517 = distinct !DILexicalBlock(scope: !3518, file: !496, line: 193, column: 19)
!3518 = distinct !DILexicalBlock(scope: !3519, file: !496, line: 193, column: 19)
!3519 = distinct !DILexicalBlock(scope: !3520, file: !496, line: 188, column: 17)
!3520 = distinct !DILexicalBlock(scope: !3521, file: !496, line: 181, column: 19)
!3521 = distinct !DILexicalBlock(scope: !3522, file: !496, line: 177, column: 13)
!3522 = distinct !DILexicalBlock(scope: !3523, file: !496, line: 173, column: 15)
!3523 = distinct !DILexicalBlock(scope: !3524, file: !496, line: 161, column: 9)
!3524 = distinct !DILexicalBlock(scope: !3525, file: !496, line: 157, column: 11)
!3525 = distinct !DILexicalBlock(scope: !3526, file: !496, line: 130, column: 5)
!3526 = distinct !DILexicalBlock(scope: !3527, file: !496, line: 129, column: 7)
!3527 = distinct !DISubprogram(name: "get_charset_aliases", scope: !496, file: !496, line: 124, type: !3504, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !151, variables: !3528)
!3528 = !{!3529, !3530, !3531, !3532, !3533, !3535, !3536, !3537, !3538, !3579, !3580, !3581, !3515, !3582, !3586, !3587, !3588}
!3529 = !DILocalVariable(name: "cp", scope: !3527, file: !496, line: 126, type: !6)
!3530 = !DILocalVariable(name: "dir", scope: !3525, file: !496, line: 132, type: !6)
!3531 = !DILocalVariable(name: "base", scope: !3525, file: !496, line: 133, type: !6)
!3532 = !DILocalVariable(name: "file_name", scope: !3525, file: !496, line: 134, type: !50)
!3533 = !DILocalVariable(name: "dir_len", scope: !3534, file: !496, line: 144, type: !94)
!3534 = distinct !DILexicalBlock(scope: !3525, file: !496, line: 143, column: 7)
!3535 = !DILocalVariable(name: "base_len", scope: !3534, file: !496, line: 145, type: !94)
!3536 = !DILocalVariable(name: "add_slash", scope: !3534, file: !496, line: 146, type: !25)
!3537 = !DILocalVariable(name: "fd", scope: !3523, file: !496, line: 162, type: !25)
!3538 = !DILocalVariable(name: "fp", scope: !3521, file: !496, line: 178, type: !3539)
!3539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3540, size: 64)
!3540 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !777, line: 49, baseType: !3541)
!3541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2817, line: 241, size: 1728, elements: !3542)
!3542 = !{!3543, !3544, !3545, !3546, !3547, !3548, !3549, !3550, !3551, !3552, !3553, !3554, !3555, !3563, !3564, !3565, !3566, !3567, !3568, !3569, !3570, !3571, !3572, !3573, !3574, !3575, !3576, !3577, !3578}
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3541, file: !2817, line: 242, baseType: !25, size: 32)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3541, file: !2817, line: 247, baseType: !50, size: 64, offset: 64)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3541, file: !2817, line: 248, baseType: !50, size: 64, offset: 128)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3541, file: !2817, line: 249, baseType: !50, size: 64, offset: 192)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3541, file: !2817, line: 250, baseType: !50, size: 64, offset: 256)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3541, file: !2817, line: 251, baseType: !50, size: 64, offset: 320)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3541, file: !2817, line: 252, baseType: !50, size: 64, offset: 384)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3541, file: !2817, line: 253, baseType: !50, size: 64, offset: 448)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3541, file: !2817, line: 254, baseType: !50, size: 64, offset: 512)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3541, file: !2817, line: 256, baseType: !50, size: 64, offset: 576)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3541, file: !2817, line: 257, baseType: !50, size: 64, offset: 640)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3541, file: !2817, line: 258, baseType: !50, size: 64, offset: 704)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3541, file: !2817, line: 260, baseType: !3556, size: 64, offset: 768)
!3556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3557, size: 64)
!3557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2817, line: 156, size: 192, elements: !3558)
!3558 = !{!3559, !3560, !3562}
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3557, file: !2817, line: 157, baseType: !3556, size: 64)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3557, file: !2817, line: 158, baseType: !3561, size: 64, offset: 64)
!3561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3541, size: 64)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3557, file: !2817, line: 162, baseType: !25, size: 32, offset: 128)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3541, file: !2817, line: 262, baseType: !3561, size: 64, offset: 832)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3541, file: !2817, line: 264, baseType: !25, size: 32, offset: 896)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3541, file: !2817, line: 268, baseType: !25, size: 32, offset: 928)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3541, file: !2817, line: 270, baseType: !2843, size: 64, offset: 960)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3541, file: !2817, line: 274, baseType: !93, size: 16, offset: 1024)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3541, file: !2817, line: 275, baseType: !2848, size: 8, offset: 1040)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3541, file: !2817, line: 276, baseType: !2850, size: 8, offset: 1048)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3541, file: !2817, line: 280, baseType: !2852, size: 64, offset: 1088)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3541, file: !2817, line: 289, baseType: !2855, size: 64, offset: 1152)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3541, file: !2817, line: 297, baseType: !49, size: 64, offset: 1216)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3541, file: !2817, line: 298, baseType: !49, size: 64, offset: 1280)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3541, file: !2817, line: 299, baseType: !49, size: 64, offset: 1344)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3541, file: !2817, line: 300, baseType: !49, size: 64, offset: 1408)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3541, file: !2817, line: 302, baseType: !94, size: 64, offset: 1472)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3541, file: !2817, line: 303, baseType: !25, size: 32, offset: 1536)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3541, file: !2817, line: 305, baseType: !2863, size: 160, offset: 1568)
!3579 = !DILocalVariable(name: "res_ptr", scope: !3519, file: !496, line: 190, type: !50)
!3580 = !DILocalVariable(name: "res_size", scope: !3519, file: !496, line: 191, type: !94)
!3581 = !DILocalVariable(name: "c", scope: !3516, file: !496, line: 195, type: !25)
!3582 = !DILocalVariable(name: "buf2", scope: !3516, file: !496, line: 197, type: !3583)
!3583 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 408, elements: !3584)
!3584 = !{!3585}
!3585 = !DISubrange(count: 51)
!3586 = !DILocalVariable(name: "l1", scope: !3516, file: !496, line: 198, type: !94)
!3587 = !DILocalVariable(name: "l2", scope: !3516, file: !496, line: 198, type: !94)
!3588 = !DILocalVariable(name: "old_res_ptr", scope: !3516, file: !496, line: 199, type: !50)
!3589 = !DILocation(line: 196, column: 28, scope: !3516, inlinedAt: !3590)
!3590 = distinct !DILocation(line: 589, column: 18, scope: !3513)
!3591 = !DILocation(line: 197, column: 28, scope: !3516, inlinedAt: !3590)
!3592 = !DILocation(line: 403, column: 13, scope: !3503)
!3593 = !DILocation(line: 395, column: 15, scope: !3503)
!3594 = !DILocation(line: 584, column: 15, scope: !3595)
!3595 = distinct !DILexicalBlock(scope: !3503, file: !496, line: 584, column: 7)
!3596 = !DILocation(line: 584, column: 7, scope: !3503)
!3597 = !DILocation(line: 128, column: 8, scope: !3527, inlinedAt: !3590)
!3598 = !DILocation(line: 126, column: 15, scope: !3527, inlinedAt: !3590)
!3599 = !DILocation(line: 129, column: 10, scope: !3526, inlinedAt: !3590)
!3600 = !DILocation(line: 129, column: 7, scope: !3527, inlinedAt: !3590)
!3601 = !DILocation(line: 138, column: 13, scope: !3525, inlinedAt: !3590)
!3602 = !DILocation(line: 132, column: 19, scope: !3525, inlinedAt: !3590)
!3603 = !DILocation(line: 139, column: 15, scope: !3604, inlinedAt: !3590)
!3604 = distinct !DILexicalBlock(scope: !3525, file: !496, line: 139, column: 11)
!3605 = !DILocation(line: 139, column: 23, scope: !3604, inlinedAt: !3590)
!3606 = !DILocation(line: 139, column: 26, scope: !3607, inlinedAt: !3590)
!3607 = !DILexicalBlockFile(scope: !3604, file: !496, discriminator: 1)
!3608 = !DILocation(line: 139, column: 33, scope: !3607, inlinedAt: !3590)
!3609 = !DILocation(line: 139, column: 11, scope: !3610, inlinedAt: !3590)
!3610 = !DILexicalBlockFile(scope: !3525, file: !496, discriminator: 1)
!3611 = !DILocation(line: 140, column: 9, scope: !3604, inlinedAt: !3590)
!3612 = !DILocation(line: 144, column: 26, scope: !3534, inlinedAt: !3590)
!3613 = !DILocation(line: 144, column: 16, scope: !3534, inlinedAt: !3590)
!3614 = !DILocation(line: 145, column: 16, scope: !3534, inlinedAt: !3590)
!3615 = !DILocation(line: 146, column: 34, scope: !3534, inlinedAt: !3590)
!3616 = !DILocation(line: 146, column: 38, scope: !3534, inlinedAt: !3590)
!3617 = !DILocation(line: 146, column: 42, scope: !3618, inlinedAt: !3590)
!3618 = !DILexicalBlockFile(scope: !3534, file: !496, discriminator: 1)
!3619 = !DILocation(line: 146, column: 41, scope: !3618, inlinedAt: !3590)
!3620 = !DILocation(line: 147, column: 48, scope: !3534, inlinedAt: !3590)
!3621 = !DILocation(line: 147, column: 46, scope: !3534, inlinedAt: !3590)
!3622 = !DILocation(line: 147, column: 69, scope: !3534, inlinedAt: !3590)
!3623 = !DILocation(line: 147, column: 30, scope: !3534, inlinedAt: !3590)
!3624 = !DILocation(line: 134, column: 13, scope: !3525, inlinedAt: !3590)
!3625 = !DILocation(line: 148, column: 13, scope: !3534, inlinedAt: !3590)
!3626 = !DILocation(line: 150, column: 13, scope: !3627, inlinedAt: !3590)
!3627 = distinct !DILexicalBlock(scope: !3628, file: !496, line: 149, column: 11)
!3628 = distinct !DILexicalBlock(scope: !3534, file: !496, line: 148, column: 13)
!3629 = !DILocation(line: 151, column: 17, scope: !3627, inlinedAt: !3590)
!3630 = !DILocation(line: 152, column: 34, scope: !3631, inlinedAt: !3590)
!3631 = distinct !DILexicalBlock(scope: !3627, file: !496, line: 151, column: 17)
!3632 = !DILocation(line: 153, column: 41, scope: !3627, inlinedAt: !3590)
!3633 = !DILocation(line: 153, column: 13, scope: !3627, inlinedAt: !3590)
!3634 = !DILocation(line: 157, column: 11, scope: !3525, inlinedAt: !3590)
!3635 = !DILocation(line: 171, column: 16, scope: !3523, inlinedAt: !3590)
!3636 = !DILocation(line: 162, column: 15, scope: !3523, inlinedAt: !3590)
!3637 = !DILocation(line: 173, column: 18, scope: !3522, inlinedAt: !3590)
!3638 = !DILocation(line: 173, column: 15, scope: !3523, inlinedAt: !3590)
!3639 = !DILocation(line: 180, column: 20, scope: !3521, inlinedAt: !3590)
!3640 = !DILocation(line: 178, column: 21, scope: !3521, inlinedAt: !3590)
!3641 = !DILocation(line: 181, column: 22, scope: !3520, inlinedAt: !3590)
!3642 = !DILocation(line: 181, column: 19, scope: !3521, inlinedAt: !3590)
!3643 = !DILocation(line: 190, column: 25, scope: !3519, inlinedAt: !3590)
!3644 = !DILocation(line: 184, column: 19, scope: !3645, inlinedAt: !3590)
!3645 = distinct !DILexicalBlock(scope: !3520, file: !496, line: 182, column: 17)
!3646 = !DILocation(line: 186, column: 17, scope: !3645, inlinedAt: !3590)
!3647 = !DILocation(line: 191, column: 26, scope: !3519, inlinedAt: !3590)
!3648 = !DILocation(line: 196, column: 23, scope: !3516, inlinedAt: !3590)
!3649 = !DILocation(line: 197, column: 23, scope: !3516, inlinedAt: !3590)
!3650 = !DILocalVariable(name: "__fp", arg: 1, scope: !3651, file: !3423, line: 63, type: !3539)
!3651 = distinct !DISubprogram(name: "getc_unlocked", scope: !3423, file: !3423, line: 63, type: !3652, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !151, variables: !3654)
!3652 = !DISubroutineType(types: !3653)
!3653 = !{!25, !3539}
!3654 = !{!3650}
!3655 = !DILocation(line: 63, column: 22, scope: !3651, inlinedAt: !3656)
!3656 = distinct !DILocation(line: 201, column: 27, scope: !3516, inlinedAt: !3590)
!3657 = !DILocation(line: 65, column: 10, scope: !3651, inlinedAt: !3656)
!3658 = !{!3429, !599, i64 8}
!3659 = !{!3429, !599, i64 16}
!3660 = !{!"branch_weights", i32 2000, i32 1}
!3661 = !DILocation(line: 65, column: 10, scope: !3662, inlinedAt: !3656)
!3662 = !DILexicalBlockFile(scope: !3651, file: !3423, discriminator: 1)
!3663 = !DILocation(line: 65, column: 10, scope: !3664, inlinedAt: !3656)
!3664 = !DILexicalBlockFile(scope: !3651, file: !3423, discriminator: 2)
!3665 = !DILocation(line: 65, column: 10, scope: !3666, inlinedAt: !3656)
!3666 = !DILexicalBlockFile(scope: !3651, file: !3423, discriminator: 3)
!3667 = !DILocation(line: 195, column: 27, scope: !3516, inlinedAt: !3590)
!3668 = !DILocation(line: 202, column: 27, scope: !3516, inlinedAt: !3590)
!3669 = !DILocation(line: 63, column: 22, scope: !3651, inlinedAt: !3670)
!3670 = distinct !DILocation(line: 210, column: 33, scope: !3671, inlinedAt: !3590)
!3671 = distinct !DILexicalBlock(scope: !3672, file: !496, line: 207, column: 25)
!3672 = distinct !DILexicalBlock(scope: !3516, file: !496, line: 206, column: 27)
!3673 = !DILocation(line: 65, column: 10, scope: !3651, inlinedAt: !3670)
!3674 = !DILocation(line: 65, column: 10, scope: !3662, inlinedAt: !3670)
!3675 = !DILocation(line: 65, column: 10, scope: !3664, inlinedAt: !3670)
!3676 = !DILocation(line: 65, column: 10, scope: !3666, inlinedAt: !3670)
!3677 = !DILocation(line: 210, column: 29, scope: !3678, inlinedAt: !3590)
!3678 = !DILexicalBlockFile(scope: !3671, file: !496, discriminator: 1)
!3679 = distinct !{!3679, !3680, !3681}
!3680 = !DILocation(line: 193, column: 19, scope: !3518)
!3681 = !DILocation(line: 241, column: 21, scope: !3518)
!3682 = !DILocation(line: 216, column: 23, scope: !3516, inlinedAt: !3590)
!3683 = !DILocation(line: 217, column: 27, scope: !3684, inlinedAt: !3590)
!3684 = distinct !DILexicalBlock(scope: !3516, file: !496, line: 217, column: 27)
!3685 = !DILocation(line: 217, column: 64, scope: !3684, inlinedAt: !3590)
!3686 = !DILocation(line: 217, column: 27, scope: !3516, inlinedAt: !3590)
!3687 = !DILocation(line: 219, column: 28, scope: !3516, inlinedAt: !3590)
!3688 = !DILocation(line: 198, column: 30, scope: !3516, inlinedAt: !3590)
!3689 = !DILocation(line: 220, column: 28, scope: !3516, inlinedAt: !3590)
!3690 = !DILocation(line: 198, column: 34, scope: !3516, inlinedAt: !3590)
!3691 = !DILocation(line: 199, column: 29, scope: !3516, inlinedAt: !3590)
!3692 = !DILocation(line: 222, column: 36, scope: !3693, inlinedAt: !3590)
!3693 = distinct !DILexicalBlock(scope: !3516, file: !496, line: 222, column: 27)
!3694 = !DILocation(line: 222, column: 27, scope: !3516, inlinedAt: !3590)
!3695 = !DILocation(line: 225, column: 63, scope: !3696, inlinedAt: !3590)
!3696 = distinct !DILexicalBlock(scope: !3693, file: !496, line: 223, column: 25)
!3697 = !DILocation(line: 225, column: 46, scope: !3696, inlinedAt: !3590)
!3698 = !DILocation(line: 226, column: 25, scope: !3696, inlinedAt: !3590)
!3699 = !DILocation(line: 229, column: 36, scope: !3700, inlinedAt: !3590)
!3700 = distinct !DILexicalBlock(scope: !3693, file: !496, line: 228, column: 25)
!3701 = !DILocation(line: 230, column: 73, scope: !3700, inlinedAt: !3590)
!3702 = !DILocation(line: 230, column: 46, scope: !3700, inlinedAt: !3590)
!3703 = !DILocation(line: 232, column: 35, scope: !3704, inlinedAt: !3590)
!3704 = distinct !DILexicalBlock(scope: !3516, file: !496, line: 232, column: 27)
!3705 = !DILocation(line: 232, column: 27, scope: !3516, inlinedAt: !3590)
!3706 = !DILocation(line: 236, column: 27, scope: !3707, inlinedAt: !3590)
!3707 = distinct !DILexicalBlock(scope: !3704, file: !496, line: 233, column: 25)
!3708 = !DILocation(line: 237, column: 27, scope: !3707, inlinedAt: !3590)
!3709 = !DILocation(line: 239, column: 39, scope: !3516, inlinedAt: !3590)
!3710 = !DILocation(line: 239, column: 50, scope: !3516, inlinedAt: !3590)
!3711 = !DILocation(line: 239, column: 61, scope: !3516, inlinedAt: !3590)
!3712 = !DILocalVariable(name: "__dest", arg: 1, scope: !3713, file: !3714, line: 107, type: !3717)
!3713 = distinct !DISubprogram(name: "strcpy", scope: !3714, file: !3714, line: 107, type: !3715, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !151, variables: !3719)
!3714 = !DIFile(filename: "/usr/include/bits/string3.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3715 = !DISubroutineType(types: !3716)
!3716 = !{!50, !3717, !3718}
!3717 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !50)
!3718 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !6)
!3719 = !{!3712, !3720}
!3720 = !DILocalVariable(name: "__src", arg: 2, scope: !3713, file: !3714, line: 107, type: !3718)
!3721 = !DILocation(line: 107, column: 1, scope: !3713, inlinedAt: !3722)
!3722 = distinct !DILocation(line: 239, column: 23, scope: !3516, inlinedAt: !3590)
!3723 = !DILocation(line: 109, column: 49, scope: !3713, inlinedAt: !3722)
!3724 = !DILocation(line: 109, column: 10, scope: !3713, inlinedAt: !3722)
!3725 = !DILocation(line: 107, column: 1, scope: !3713, inlinedAt: !3726)
!3726 = distinct !DILocation(line: 240, column: 23, scope: !3516, inlinedAt: !3590)
!3727 = !DILocation(line: 109, column: 49, scope: !3713, inlinedAt: !3726)
!3728 = !DILocation(line: 109, column: 10, scope: !3713, inlinedAt: !3726)
!3729 = !DILocation(line: 241, column: 21, scope: !3517, inlinedAt: !3590)
!3730 = !DILocation(line: 242, column: 19, scope: !3519, inlinedAt: !3590)
!3731 = !DILocation(line: 243, column: 32, scope: !3732, inlinedAt: !3590)
!3732 = distinct !DILexicalBlock(scope: !3519, file: !496, line: 243, column: 23)
!3733 = !DILocation(line: 243, column: 23, scope: !3519, inlinedAt: !3590)
!3734 = !DILocation(line: 247, column: 33, scope: !3735, inlinedAt: !3590)
!3735 = distinct !DILexicalBlock(scope: !3732, file: !496, line: 246, column: 21)
!3736 = !DILocation(line: 247, column: 45, scope: !3735, inlinedAt: !3590)
!3737 = !DILocation(line: 253, column: 11, scope: !3523, inlinedAt: !3590)
!3738 = !DILocation(line: 377, column: 23, scope: !3525, inlinedAt: !3590)
!3739 = !DILocation(line: 378, column: 5, scope: !3525, inlinedAt: !3590)
!3740 = !DILocation(line: 396, column: 15, scope: !3503)
!3741 = !DILocation(line: 590, column: 8, scope: !3512)
!3742 = !DILocation(line: 590, column: 17, scope: !3512)
!3743 = !DILocation(line: 589, column: 3, scope: !3744)
!3744 = !DILexicalBlockFile(scope: !3513, file: !496, discriminator: 1)
!3745 = !DILocation(line: 592, column: 9, scope: !3510)
!3746 = !DILocation(line: 592, column: 35, scope: !3511)
!3747 = !DILocation(line: 593, column: 9, scope: !3511)
!3748 = !DILocation(line: 593, column: 24, scope: !3749)
!3749 = !DILexicalBlockFile(scope: !3511, file: !496, discriminator: 1)
!3750 = !DILocation(line: 593, column: 31, scope: !3749)
!3751 = !DILocation(line: 593, column: 34, scope: !3752)
!3752 = !DILexicalBlockFile(scope: !3511, file: !496, discriminator: 2)
!3753 = !DILocation(line: 593, column: 45, scope: !3752)
!3754 = !DILocation(line: 592, column: 9, scope: !3755)
!3755 = !DILexicalBlockFile(scope: !3512, file: !496, discriminator: 1)
!3756 = !DILocation(line: 595, column: 29, scope: !3757)
!3757 = distinct !DILexicalBlock(scope: !3511, file: !496, line: 594, column: 7)
!3758 = !DILocation(line: 595, column: 27, scope: !3757)
!3759 = !DILocation(line: 595, column: 46, scope: !3757)
!3760 = !DILocation(line: 596, column: 9, scope: !3757)
!3761 = !DILocation(line: 591, column: 19, scope: !3512)
!3762 = !DILocation(line: 591, column: 36, scope: !3512)
!3763 = !DILocation(line: 591, column: 16, scope: !3512)
!3764 = !DILocation(line: 591, column: 52, scope: !3755)
!3765 = !DILocation(line: 591, column: 69, scope: !3512)
!3766 = !DILocation(line: 591, column: 49, scope: !3512)
!3767 = distinct !{!3767, !3768, !3769}
!3768 = !DILocation(line: 589, column: 3, scope: !3513)
!3769 = !DILocation(line: 597, column: 7, scope: !3513)
!3770 = !DILocation(line: 602, column: 7, scope: !3771)
!3771 = distinct !DILexicalBlock(scope: !3503, file: !496, line: 602, column: 7)
!3772 = !DILocation(line: 602, column: 18, scope: !3771)
!3773 = !DILocation(line: 602, column: 7, scope: !3503)
!3774 = !DILocation(line: 612, column: 3, scope: !3503)
!3775 = distinct !DISubprogram(name: "rpl_fclose", scope: !3776, file: !3776, line: 56, type: !3777, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !574, variables: !3819)
!3776 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3777 = !DISubroutineType(types: !3778)
!3778 = !{!25, !3779}
!3779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3780, size: 64)
!3780 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !777, line: 49, baseType: !3781)
!3781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2817, line: 241, size: 1728, elements: !3782)
!3782 = !{!3783, !3784, !3785, !3786, !3787, !3788, !3789, !3790, !3791, !3792, !3793, !3794, !3795, !3803, !3804, !3805, !3806, !3807, !3808, !3809, !3810, !3811, !3812, !3813, !3814, !3815, !3816, !3817, !3818}
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3781, file: !2817, line: 242, baseType: !25, size: 32)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3781, file: !2817, line: 247, baseType: !50, size: 64, offset: 64)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3781, file: !2817, line: 248, baseType: !50, size: 64, offset: 128)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3781, file: !2817, line: 249, baseType: !50, size: 64, offset: 192)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3781, file: !2817, line: 250, baseType: !50, size: 64, offset: 256)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3781, file: !2817, line: 251, baseType: !50, size: 64, offset: 320)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3781, file: !2817, line: 252, baseType: !50, size: 64, offset: 384)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3781, file: !2817, line: 253, baseType: !50, size: 64, offset: 448)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3781, file: !2817, line: 254, baseType: !50, size: 64, offset: 512)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3781, file: !2817, line: 256, baseType: !50, size: 64, offset: 576)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3781, file: !2817, line: 257, baseType: !50, size: 64, offset: 640)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3781, file: !2817, line: 258, baseType: !50, size: 64, offset: 704)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3781, file: !2817, line: 260, baseType: !3796, size: 64, offset: 768)
!3796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3797, size: 64)
!3797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2817, line: 156, size: 192, elements: !3798)
!3798 = !{!3799, !3800, !3802}
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3797, file: !2817, line: 157, baseType: !3796, size: 64)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3797, file: !2817, line: 158, baseType: !3801, size: 64, offset: 64)
!3801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3781, size: 64)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3797, file: !2817, line: 162, baseType: !25, size: 32, offset: 128)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3781, file: !2817, line: 262, baseType: !3801, size: 64, offset: 832)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3781, file: !2817, line: 264, baseType: !25, size: 32, offset: 896)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3781, file: !2817, line: 268, baseType: !25, size: 32, offset: 928)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3781, file: !2817, line: 270, baseType: !2843, size: 64, offset: 960)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3781, file: !2817, line: 274, baseType: !93, size: 16, offset: 1024)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3781, file: !2817, line: 275, baseType: !2848, size: 8, offset: 1040)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3781, file: !2817, line: 276, baseType: !2850, size: 8, offset: 1048)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3781, file: !2817, line: 280, baseType: !2852, size: 64, offset: 1088)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3781, file: !2817, line: 289, baseType: !2855, size: 64, offset: 1152)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3781, file: !2817, line: 297, baseType: !49, size: 64, offset: 1216)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3781, file: !2817, line: 298, baseType: !49, size: 64, offset: 1280)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3781, file: !2817, line: 299, baseType: !49, size: 64, offset: 1344)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3781, file: !2817, line: 300, baseType: !49, size: 64, offset: 1408)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3781, file: !2817, line: 302, baseType: !94, size: 64, offset: 1472)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3781, file: !2817, line: 303, baseType: !25, size: 32, offset: 1536)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3781, file: !2817, line: 305, baseType: !2863, size: 160, offset: 1568)
!3819 = !{!3820, !3821, !3822, !3823}
!3820 = !DILocalVariable(name: "fp", arg: 1, scope: !3775, file: !3776, line: 56, type: !3779)
!3821 = !DILocalVariable(name: "saved_errno", scope: !3775, file: !3776, line: 58, type: !25)
!3822 = !DILocalVariable(name: "fd", scope: !3775, file: !3776, line: 59, type: !25)
!3823 = !DILocalVariable(name: "result", scope: !3775, file: !3776, line: 60, type: !25)
!3824 = !DILocation(line: 56, column: 19, scope: !3775)
!3825 = !DILocation(line: 58, column: 7, scope: !3775)
!3826 = !DILocation(line: 60, column: 7, scope: !3775)
!3827 = !DILocation(line: 63, column: 8, scope: !3775)
!3828 = !DILocation(line: 59, column: 7, scope: !3775)
!3829 = !DILocation(line: 64, column: 10, scope: !3830)
!3830 = distinct !DILexicalBlock(scope: !3775, file: !3776, line: 64, column: 7)
!3831 = !DILocation(line: 64, column: 7, scope: !3775)
!3832 = !DILocation(line: 65, column: 12, scope: !3830)
!3833 = !DILocation(line: 65, column: 5, scope: !3830)
!3834 = !DILocation(line: 70, column: 9, scope: !3835)
!3835 = distinct !DILexicalBlock(scope: !3775, file: !3776, line: 70, column: 7)
!3836 = !DILocation(line: 70, column: 23, scope: !3835)
!3837 = !DILocation(line: 70, column: 33, scope: !3838)
!3838 = !DILexicalBlockFile(scope: !3835, file: !3776, discriminator: 1)
!3839 = !DILocation(line: 70, column: 26, scope: !3840)
!3840 = !DILexicalBlockFile(scope: !3835, file: !3776, discriminator: 3)
!3841 = !DILocation(line: 70, column: 59, scope: !3838)
!3842 = !DILocation(line: 71, column: 7, scope: !3835)
!3843 = !DILocation(line: 71, column: 10, scope: !3838)
!3844 = !DILocation(line: 70, column: 7, scope: !3845)
!3845 = !DILexicalBlockFile(scope: !3775, file: !3776, discriminator: 2)
!3846 = !DILocation(line: 98, column: 12, scope: !3775)
!3847 = !DILocation(line: 103, column: 7, scope: !3775)
!3848 = !DILocation(line: 72, column: 19, scope: !3835)
!3849 = !DILocation(line: 103, column: 19, scope: !3850)
!3850 = distinct !DILexicalBlock(scope: !3775, file: !3776, line: 103, column: 7)
!3851 = !DILocation(line: 105, column: 13, scope: !3852)
!3852 = distinct !DILexicalBlock(scope: !3850, file: !3776, line: 104, column: 5)
!3853 = !DILocation(line: 107, column: 5, scope: !3852)
!3854 = !DILocation(line: 110, column: 1, scope: !3775)
!3855 = distinct !DISubprogram(name: "rpl_fflush", scope: !3856, file: !3856, line: 127, type: !3857, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !576, variables: !3899)
!3856 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3857 = !DISubroutineType(types: !3858)
!3858 = !{!25, !3859}
!3859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3860, size: 64)
!3860 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !777, line: 49, baseType: !3861)
!3861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2817, line: 241, size: 1728, elements: !3862)
!3862 = !{!3863, !3864, !3865, !3866, !3867, !3868, !3869, !3870, !3871, !3872, !3873, !3874, !3875, !3883, !3884, !3885, !3886, !3887, !3888, !3889, !3890, !3891, !3892, !3893, !3894, !3895, !3896, !3897, !3898}
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3861, file: !2817, line: 242, baseType: !25, size: 32)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3861, file: !2817, line: 247, baseType: !50, size: 64, offset: 64)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3861, file: !2817, line: 248, baseType: !50, size: 64, offset: 128)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3861, file: !2817, line: 249, baseType: !50, size: 64, offset: 192)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3861, file: !2817, line: 250, baseType: !50, size: 64, offset: 256)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3861, file: !2817, line: 251, baseType: !50, size: 64, offset: 320)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3861, file: !2817, line: 252, baseType: !50, size: 64, offset: 384)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3861, file: !2817, line: 253, baseType: !50, size: 64, offset: 448)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3861, file: !2817, line: 254, baseType: !50, size: 64, offset: 512)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3861, file: !2817, line: 256, baseType: !50, size: 64, offset: 576)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3861, file: !2817, line: 257, baseType: !50, size: 64, offset: 640)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3861, file: !2817, line: 258, baseType: !50, size: 64, offset: 704)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3861, file: !2817, line: 260, baseType: !3876, size: 64, offset: 768)
!3876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3877, size: 64)
!3877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2817, line: 156, size: 192, elements: !3878)
!3878 = !{!3879, !3880, !3882}
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3877, file: !2817, line: 157, baseType: !3876, size: 64)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3877, file: !2817, line: 158, baseType: !3881, size: 64, offset: 64)
!3881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3861, size: 64)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3877, file: !2817, line: 162, baseType: !25, size: 32, offset: 128)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3861, file: !2817, line: 262, baseType: !3881, size: 64, offset: 832)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3861, file: !2817, line: 264, baseType: !25, size: 32, offset: 896)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3861, file: !2817, line: 268, baseType: !25, size: 32, offset: 928)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3861, file: !2817, line: 270, baseType: !2843, size: 64, offset: 960)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3861, file: !2817, line: 274, baseType: !93, size: 16, offset: 1024)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3861, file: !2817, line: 275, baseType: !2848, size: 8, offset: 1040)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3861, file: !2817, line: 276, baseType: !2850, size: 8, offset: 1048)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3861, file: !2817, line: 280, baseType: !2852, size: 64, offset: 1088)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3861, file: !2817, line: 289, baseType: !2855, size: 64, offset: 1152)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3861, file: !2817, line: 297, baseType: !49, size: 64, offset: 1216)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3861, file: !2817, line: 298, baseType: !49, size: 64, offset: 1280)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3861, file: !2817, line: 299, baseType: !49, size: 64, offset: 1344)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3861, file: !2817, line: 300, baseType: !49, size: 64, offset: 1408)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3861, file: !2817, line: 302, baseType: !94, size: 64, offset: 1472)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3861, file: !2817, line: 303, baseType: !25, size: 32, offset: 1536)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3861, file: !2817, line: 305, baseType: !2863, size: 160, offset: 1568)
!3899 = !{!3900}
!3900 = !DILocalVariable(name: "stream", arg: 1, scope: !3855, file: !3856, line: 127, type: !3859)
!3901 = !DILocation(line: 127, column: 19, scope: !3855)
!3902 = !DILocation(line: 148, column: 14, scope: !3903)
!3903 = distinct !DILexicalBlock(scope: !3855, file: !3856, line: 148, column: 7)
!3904 = !DILocation(line: 148, column: 22, scope: !3903)
!3905 = !DILocation(line: 148, column: 27, scope: !3906)
!3906 = !DILexicalBlockFile(scope: !3903, file: !3856, discriminator: 1)
!3907 = !DILocation(line: 148, column: 7, scope: !3908)
!3908 = !DILexicalBlockFile(scope: !3855, file: !3856, discriminator: 1)
!3909 = !DILocation(line: 149, column: 12, scope: !3903)
!3910 = !DILocation(line: 149, column: 5, scope: !3903)
!3911 = !DILocalVariable(name: "fp", arg: 1, scope: !3912, file: !3856, line: 40, type: !3859)
!3912 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !3856, file: !3856, line: 40, type: !3913, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !576, variables: !3915)
!3913 = !DISubroutineType(types: !3914)
!3914 = !{null, !3859}
!3915 = !{!3911}
!3916 = !DILocation(line: 40, column: 48, scope: !3912, inlinedAt: !3917)
!3917 = distinct !DILocation(line: 153, column: 3, scope: !3855)
!3918 = !DILocation(line: 42, column: 11, scope: !3919, inlinedAt: !3917)
!3919 = distinct !DILexicalBlock(scope: !3912, file: !3856, line: 42, column: 7)
!3920 = !DILocation(line: 42, column: 18, scope: !3919, inlinedAt: !3917)
!3921 = !DILocation(line: 42, column: 7, scope: !3912, inlinedAt: !3917)
!3922 = !DILocation(line: 44, column: 5, scope: !3919, inlinedAt: !3917)
!3923 = !DILocation(line: 155, column: 10, scope: !3855)
!3924 = !DILocation(line: 155, column: 3, scope: !3855)
!3925 = !DILocation(line: 229, column: 1, scope: !3855)
!3926 = distinct !DISubprogram(name: "rpl_fseeko", scope: !3927, file: !3927, line: 28, type: !3928, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !578, variables: !3971)
!3927 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3928 = !DISubroutineType(types: !3929)
!3929 = !{!25, !3930, !3970, !25}
!3930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3931, size: 64)
!3931 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !777, line: 49, baseType: !3932)
!3932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2817, line: 241, size: 1728, elements: !3933)
!3933 = !{!3934, !3935, !3936, !3937, !3938, !3939, !3940, !3941, !3942, !3943, !3944, !3945, !3946, !3954, !3955, !3956, !3957, !3958, !3959, !3960, !3961, !3962, !3963, !3964, !3965, !3966, !3967, !3968, !3969}
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3932, file: !2817, line: 242, baseType: !25, size: 32)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3932, file: !2817, line: 247, baseType: !50, size: 64, offset: 64)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3932, file: !2817, line: 248, baseType: !50, size: 64, offset: 128)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3932, file: !2817, line: 249, baseType: !50, size: 64, offset: 192)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3932, file: !2817, line: 250, baseType: !50, size: 64, offset: 256)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3932, file: !2817, line: 251, baseType: !50, size: 64, offset: 320)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3932, file: !2817, line: 252, baseType: !50, size: 64, offset: 384)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3932, file: !2817, line: 253, baseType: !50, size: 64, offset: 448)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3932, file: !2817, line: 254, baseType: !50, size: 64, offset: 512)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3932, file: !2817, line: 256, baseType: !50, size: 64, offset: 576)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3932, file: !2817, line: 257, baseType: !50, size: 64, offset: 640)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3932, file: !2817, line: 258, baseType: !50, size: 64, offset: 704)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3932, file: !2817, line: 260, baseType: !3947, size: 64, offset: 768)
!3947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3948, size: 64)
!3948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2817, line: 156, size: 192, elements: !3949)
!3949 = !{!3950, !3951, !3953}
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3948, file: !2817, line: 157, baseType: !3947, size: 64)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3948, file: !2817, line: 158, baseType: !3952, size: 64, offset: 64)
!3952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3932, size: 64)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3948, file: !2817, line: 162, baseType: !25, size: 32, offset: 128)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3932, file: !2817, line: 262, baseType: !3952, size: 64, offset: 832)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3932, file: !2817, line: 264, baseType: !25, size: 32, offset: 896)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3932, file: !2817, line: 268, baseType: !25, size: 32, offset: 928)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3932, file: !2817, line: 270, baseType: !2843, size: 64, offset: 960)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3932, file: !2817, line: 274, baseType: !93, size: 16, offset: 1024)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3932, file: !2817, line: 275, baseType: !2848, size: 8, offset: 1040)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3932, file: !2817, line: 276, baseType: !2850, size: 8, offset: 1048)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3932, file: !2817, line: 280, baseType: !2852, size: 64, offset: 1088)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3932, file: !2817, line: 289, baseType: !2855, size: 64, offset: 1152)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3932, file: !2817, line: 297, baseType: !49, size: 64, offset: 1216)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3932, file: !2817, line: 298, baseType: !49, size: 64, offset: 1280)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3932, file: !2817, line: 299, baseType: !49, size: 64, offset: 1344)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3932, file: !2817, line: 300, baseType: !49, size: 64, offset: 1408)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3932, file: !2817, line: 302, baseType: !94, size: 64, offset: 1472)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3932, file: !2817, line: 303, baseType: !25, size: 32, offset: 1536)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3932, file: !2817, line: 305, baseType: !2863, size: 160, offset: 1568)
!3970 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !777, line: 91, baseType: !2843)
!3971 = !{!3972, !3973, !3974, !3975}
!3972 = !DILocalVariable(name: "fp", arg: 1, scope: !3926, file: !3927, line: 28, type: !3930)
!3973 = !DILocalVariable(name: "offset", arg: 2, scope: !3926, file: !3927, line: 28, type: !3970)
!3974 = !DILocalVariable(name: "whence", arg: 3, scope: !3926, file: !3927, line: 28, type: !25)
!3975 = !DILocalVariable(name: "pos", scope: !3976, file: !3927, line: 116, type: !3970)
!3976 = distinct !DILexicalBlock(scope: !3977, file: !3927, line: 112, column: 5)
!3977 = distinct !DILexicalBlock(scope: !3926, file: !3927, line: 51, column: 7)
!3978 = !DILocation(line: 28, column: 15, scope: !3926)
!3979 = !DILocation(line: 28, column: 25, scope: !3926)
!3980 = !DILocation(line: 28, column: 37, scope: !3926)
!3981 = !DILocation(line: 51, column: 11, scope: !3977)
!3982 = !DILocation(line: 51, column: 31, scope: !3977)
!3983 = !DILocation(line: 51, column: 24, scope: !3977)
!3984 = !DILocation(line: 52, column: 7, scope: !3977)
!3985 = !DILocation(line: 52, column: 14, scope: !3986)
!3986 = !DILexicalBlockFile(scope: !3977, file: !3927, discriminator: 1)
!3987 = !{!3429, !599, i64 40}
!3988 = !DILocation(line: 52, column: 35, scope: !3986)
!3989 = !{!3429, !599, i64 32}
!3990 = !DILocation(line: 52, column: 28, scope: !3986)
!3991 = !DILocation(line: 53, column: 7, scope: !3977)
!3992 = !DILocation(line: 53, column: 14, scope: !3986)
!3993 = !{!3429, !599, i64 72}
!3994 = !DILocation(line: 53, column: 28, scope: !3986)
!3995 = !DILocation(line: 51, column: 7, scope: !3996)
!3996 = !DILexicalBlockFile(scope: !3926, file: !3927, discriminator: 1)
!3997 = !DILocation(line: 116, column: 26, scope: !3976)
!3998 = !DILocation(line: 116, column: 19, scope: !3999)
!3999 = !DILexicalBlockFile(scope: !3976, file: !3927, discriminator: 1)
!4000 = !DILocation(line: 116, column: 13, scope: !3976)
!4001 = !DILocation(line: 117, column: 15, scope: !4002)
!4002 = distinct !DILexicalBlock(scope: !3976, file: !3927, line: 117, column: 11)
!4003 = !DILocation(line: 117, column: 11, scope: !3976)
!4004 = !DILocation(line: 127, column: 11, scope: !3976)
!4005 = !DILocation(line: 127, column: 18, scope: !3976)
!4006 = !DILocation(line: 128, column: 11, scope: !3976)
!4007 = !DILocation(line: 128, column: 19, scope: !3976)
!4008 = !{!3429, !2128, i64 144}
!4009 = !DILocation(line: 159, column: 7, scope: !3976)
!4010 = !DILocation(line: 161, column: 10, scope: !3926)
!4011 = !DILocation(line: 161, column: 3, scope: !3926)
!4012 = !DILocation(line: 162, column: 1, scope: !3926)
