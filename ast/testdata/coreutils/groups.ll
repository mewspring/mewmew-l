; ModuleID = 'coreutils-8.27/src/groups.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.passwd = type { i8*, i8*, i32, i32, i8*, i8*, i8* }
%struct.group = type { i8*, i8*, i32, i8** }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Usage: %s [OPTION]... [USERNAME]...\0A\00", align 1
@.str.2 = private unnamed_addr constant [155 x i8] c"Print group memberships for each USERNAME or, if no USERNAME is specified, for\0Athe current process (which may differ if the groups database has changed).\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"groups\00", align 1
@.str.25 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.26 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.28 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.29 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.30 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@longopts = internal constant [3 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !0
@.str.10 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"James Youngman\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.12 = private unnamed_addr constant [20 x i8] c"cannot get real UID\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"cannot get effective GID\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"cannot get real GID\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"%s: no such user\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"%s : \00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@gidtostr_ptr.buf = internal global [21 x i8] zeroinitializer, align 16, !dbg !63
@.str.2.3 = private unnamed_addr constant [34 x i8] c"cannot find name for group ID %lu\00", align 1
@.str.17 = private unnamed_addr constant [33 x i8] c"failed to get groups for user %s\00", align 1
@.str.1.18 = private unnamed_addr constant [45 x i8] c"failed to get groups for the current process\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0), align 8, !dbg !84
@.str.21 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !89
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !94
@.str.24 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.25 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.26 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !98
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !105
@.str.35 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.36 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.37 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.39, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.40, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.41, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.42, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.43, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.44, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.45, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.46, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.47, i32 0, i32 0), i8* null], align 16, !dbg !112
@.str.38 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.39 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.40 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.41 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.42 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.43 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.44 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.45 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.46 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.47 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !154
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !161
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !173
@.str.11.48 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.49 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.50 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.51 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.52 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.53 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !180
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !187
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !175
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !189
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
@.str.16.76 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.77 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.78 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !195
@.str.1.89 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.90 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.101 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.104 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !204
@.str.3.105 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.106 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.107 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.108 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.109 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.110 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) local_unnamed_addr #0 !dbg !644 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !648, metadata !649), !dbg !650
  %2 = icmp eq i32 %0, 0, !dbg !651
  br i1 %2, label %8, label %3, !dbg !653

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !654, !tbaa !657
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #10, !dbg !654
  %6 = load i8*, i8** @program_name, align 8, !dbg !654, !tbaa !657
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #10, !dbg !661
  br label %36, !dbg !663

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 5) #10, !dbg !665
  %10 = load i8*, i8** @program_name, align 8, !dbg !665, !tbaa !657
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10) #10, !dbg !667
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([155 x i8], [155 x i8]* @.str.2, i64 0, i64 0), i32 5) #10, !dbg !669
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !669, !tbaa !657
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #10, !dbg !670
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 5) #10, !dbg !671
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !671, !tbaa !657
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #10, !dbg !672
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 5) #10, !dbg !673
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !673, !tbaa !657
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #10, !dbg !674
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !28, metadata !649) #10, !dbg !675
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i64 0, metadata !28, metadata !649) #10, !dbg !675
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.25, i64 0, i64 0), i32 5) #10, !dbg !677
  %22 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %21, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.26, i64 0, i64 0)) #10, !dbg !678
  %23 = tail call i8* @setlocale(i32 5, i8* null) #10, !dbg !680
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !39, metadata !649) #10, !dbg !681
  %24 = icmp eq i8* %23, null, !dbg !682
  br i1 %24, label %31, label %25, !dbg !683

; <label>:25:                                     ; preds = %8
  %26 = tail call i32 @strncmp(i8* nonnull %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i64 0, i64 0), i64 3) #13, !dbg !684
  %27 = icmp eq i32 %26, 0, !dbg !684
  br i1 %27, label %31, label %28, !dbg !686

; <label>:28:                                     ; preds = %25
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.28, i64 0, i64 0), i32 5) #10, !dbg !688
  %30 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0)) #10, !dbg !690
  br label %31, !dbg !692

; <label>:31:                                     ; preds = %8, %25, %28
  %32 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.29, i64 0, i64 0), i32 5) #10, !dbg !693
  %33 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %32, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0)) #10, !dbg !694
  %34 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.30, i64 0, i64 0), i32 5) #10, !dbg !695
  %35 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i64 0, i64 0)) #10, !dbg !696
  br label %36

; <label>:36:                                     ; preds = %31, %3
  tail call void @exit(i32 %0) #14, !dbg !697
  unreachable, !dbg !697
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
define i32 @main(i32, i8**) local_unnamed_addr #6 !dbg !698 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !703, metadata !649), !dbg !730
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !704, metadata !649), !dbg !731
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !706, metadata !649), !dbg !732
  %3 = load i8*, i8** %1, align 8, !dbg !733, !tbaa !657
  tail call void @set_program_name(i8* %3) #10, !dbg !734
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)) #10, !dbg !735
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0)) #10, !dbg !736
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0)) #10, !dbg !737
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #10, !dbg !738
  %8 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), %struct.option* getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #10, !dbg !739
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !705, metadata !649), !dbg !741
  switch i32 %8, label %13 [
    i32 -1, label %14
    i32 -130, label %9
    i32 -131, label %10
  ], !dbg !742

; <label>:9:                                      ; preds = %2
  tail call void @usage(i32 0) #15, !dbg !743
  unreachable, !dbg !743

; <label>:10:                                     ; preds = %2
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !746, !tbaa !657
  %12 = load i8*, i8** @Version, align 8, !dbg !746, !tbaa !657
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* %12, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i8* null) #10, !dbg !746
  tail call void @exit(i32 0) #14, !dbg !747
  unreachable, !dbg !746

; <label>:13:                                     ; preds = %2
  tail call void @usage(i32 1) #15, !dbg !749
  unreachable, !dbg !749

; <label>:14:                                     ; preds = %2
  %15 = load i32, i32* @optind, align 4, !dbg !750, !tbaa !751
  %16 = icmp eq i32 %15, %0, !dbg !753
  br i1 %16, label %20, label %17, !dbg !754

; <label>:17:                                     ; preds = %14
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !706, metadata !649), !dbg !732
  %18 = icmp slt i32 %15, %0, !dbg !755
  br i1 %18, label %19, label %104, !dbg !757

; <label>:19:                                     ; preds = %17
  br label %58, !dbg !758

; <label>:20:                                     ; preds = %14
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !712, metadata !649), !dbg !759
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !715, metadata !649), !dbg !760
  %21 = tail call i32* @__errno_location() #1, !dbg !761
  store i32 0, i32* %21, align 4, !dbg !762, !tbaa !751
  %22 = tail call i32 @getuid() #10, !dbg !763
  tail call void @llvm.dbg.value(metadata i32 %22, i64 0, metadata !709, metadata !649), !dbg !764
  %23 = icmp eq i32 %22, -1, !dbg !765
  br i1 %23, label %24, label %29, !dbg !767

; <label>:24:                                     ; preds = %20
  %25 = load i32, i32* %21, align 4, !dbg !768, !tbaa !751
  %26 = icmp eq i32 %25, 0, !dbg !768
  br i1 %26, label %29, label %27, !dbg !770

; <label>:27:                                     ; preds = %24
  %28 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0), i32 5) #10, !dbg !772
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %25, i8* %28) #10, !dbg !773
  unreachable, !dbg !775

; <label>:29:                                     ; preds = %24, %20
  store i32 0, i32* %21, align 4, !dbg !776, !tbaa !751
  %30 = tail call i32 @getegid() #10, !dbg !777
  tail call void @llvm.dbg.value(metadata i32 %30, i64 0, metadata !708, metadata !649), !dbg !778
  %31 = icmp eq i32 %30, -1, !dbg !779
  br i1 %31, label %32, label %37, !dbg !781

; <label>:32:                                     ; preds = %29
  %33 = load i32, i32* %21, align 4, !dbg !782, !tbaa !751
  %34 = icmp eq i32 %33, 0, !dbg !782
  br i1 %34, label %37, label %35, !dbg !784

; <label>:35:                                     ; preds = %32
  %36 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i64 0, i64 0), i32 5) #10, !dbg !785
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %33, i8* %36) #10, !dbg !786
  unreachable, !dbg !788

; <label>:37:                                     ; preds = %32, %29
  store i32 0, i32* %21, align 4, !dbg !789, !tbaa !751
  %38 = tail call i32 @getgid() #10, !dbg !790
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !707, metadata !649), !dbg !791
  %39 = icmp eq i32 %38, -1, !dbg !792
  br i1 %39, label %40, label %45, !dbg !794

; <label>:40:                                     ; preds = %37
  %41 = load i32, i32* %21, align 4, !dbg !795, !tbaa !751
  %42 = icmp eq i32 %41, 0, !dbg !795
  br i1 %42, label %45, label %43, !dbg !797

; <label>:43:                                     ; preds = %40
  %44 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 5) #10, !dbg !798
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %41, i8* %44) #10, !dbg !799
  unreachable, !dbg !801

; <label>:45:                                     ; preds = %40, %37
  %46 = tail call zeroext i1 @print_group_list(i8* null, i32 %22, i32 %38, i32 %30, i1 zeroext true, i8 signext 32) #10, !dbg !802
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !706, metadata !649), !dbg !732
  %47 = zext i1 %46 to i8, !dbg !804
  tail call void @llvm.dbg.value(metadata i8 %47, i64 0, metadata !706, metadata !649), !dbg !732
  tail call void @llvm.dbg.value(metadata i32 10, i64 0, metadata !805, metadata !649) #10, !dbg !811
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !813, !tbaa !657
  %49 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %48, i64 0, i32 5, !dbg !813
  %50 = load i8*, i8** %49, align 8, !dbg !813, !tbaa !814
  %51 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %48, i64 0, i32 6, !dbg !813
  %52 = load i8*, i8** %51, align 8, !dbg !813, !tbaa !818
  %53 = icmp ult i8* %50, %52, !dbg !813
  br i1 %53, label %56, label %54, !dbg !813, !prof !819

; <label>:54:                                     ; preds = %45
  %55 = tail call i32 @__overflow(%struct._IO_FILE* %48, i32 10) #10, !dbg !820
  br label %104, !dbg !820

; <label>:56:                                     ; preds = %45
  %57 = getelementptr inbounds i8, i8* %50, i64 1, !dbg !822
  store i8* %57, i8** %49, align 8, !dbg !822, !tbaa !814
  store i8 10, i8* %50, align 1, !dbg !822, !tbaa !824
  br label %104, !dbg !822

; <label>:58:                                     ; preds = %19, %98
  %59 = phi i32 [ %99, %98 ], [ %15, %19 ]
  %60 = phi i8 [ %89, %98 ], [ 1, %19 ]
  %61 = sext i32 %59 to i64, !dbg !758
  %62 = getelementptr inbounds i8*, i8** %1, i64 %61, !dbg !758
  %63 = load i8*, i8** %62, align 8, !dbg !758, !tbaa !657
  %64 = tail call %struct.passwd* @getpwnam(i8* %63), !dbg !825
  tail call void @llvm.dbg.value(metadata %struct.passwd* %64, i64 0, metadata !716, metadata !649), !dbg !826
  %65 = icmp eq %struct.passwd* %64, null, !dbg !827
  br i1 %65, label %66, label %73, !dbg !829

; <label>:66:                                     ; preds = %58
  %67 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0), i32 5) #10, !dbg !830
  %68 = load i32, i32* @optind, align 4, !dbg !830, !tbaa !751
  %69 = sext i32 %68 to i64, !dbg !830
  %70 = getelementptr inbounds i8*, i8** %1, i64 %69, !dbg !830
  %71 = load i8*, i8** %70, align 8, !dbg !830, !tbaa !657
  %72 = tail call i8* @quote(i8* %71) #10, !dbg !831
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %67, i8* %72) #10, !dbg !833
  unreachable, !dbg !830

; <label>:73:                                     ; preds = %58
  %74 = getelementptr inbounds %struct.passwd, %struct.passwd* %64, i64 0, i32 2, !dbg !835
  %75 = load i32, i32* %74, align 8, !dbg !835, !tbaa !836
  tail call void @llvm.dbg.value(metadata i32 %75, i64 0, metadata !709, metadata !649), !dbg !764
  %76 = getelementptr inbounds %struct.passwd, %struct.passwd* %64, i64 0, i32 3, !dbg !838
  %77 = load i32, i32* %76, align 4, !dbg !838, !tbaa !839
  tail call void @llvm.dbg.value(metadata i32 %77, i64 0, metadata !708, metadata !649), !dbg !778
  tail call void @llvm.dbg.value(metadata i32 %77, i64 0, metadata !707, metadata !649), !dbg !791
  %78 = load i32, i32* @optind, align 4, !dbg !840, !tbaa !751
  %79 = sext i32 %78 to i64, !dbg !840
  %80 = getelementptr inbounds i8*, i8** %1, i64 %79, !dbg !840
  %81 = load i8*, i8** %80, align 8, !dbg !840, !tbaa !657
  %82 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i8* %81) #10, !dbg !840
  %83 = load i32, i32* @optind, align 4, !dbg !841, !tbaa !751
  %84 = add nsw i32 %83, 1, !dbg !841
  store i32 %84, i32* @optind, align 4, !dbg !841, !tbaa !751
  %85 = sext i32 %83 to i64, !dbg !843
  %86 = getelementptr inbounds i8*, i8** %1, i64 %85, !dbg !843
  %87 = load i8*, i8** %86, align 8, !dbg !843, !tbaa !657
  %88 = tail call zeroext i1 @print_group_list(i8* %87, i32 %75, i32 %77, i32 %77, i1 zeroext true, i8 signext 32) #10, !dbg !844
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !706, metadata !649), !dbg !732
  %89 = select i1 %88, i8 %60, i8 0, !dbg !845
  tail call void @llvm.dbg.value(metadata i8 %89, i64 0, metadata !706, metadata !649), !dbg !732
  tail call void @llvm.dbg.value(metadata i32 10, i64 0, metadata !805, metadata !649) #10, !dbg !846
  %90 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !848, !tbaa !657
  %91 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %90, i64 0, i32 5, !dbg !848
  %92 = load i8*, i8** %91, align 8, !dbg !848, !tbaa !814
  %93 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %90, i64 0, i32 6, !dbg !848
  %94 = load i8*, i8** %93, align 8, !dbg !848, !tbaa !818
  %95 = icmp ult i8* %92, %94, !dbg !848
  br i1 %95, label %101, label %96, !dbg !848, !prof !819

; <label>:96:                                     ; preds = %73
  %97 = tail call i32 @__overflow(%struct._IO_FILE* %90, i32 10) #10, !dbg !849
  br label %98, !dbg !849

; <label>:98:                                     ; preds = %96, %101
  tail call void @llvm.dbg.value(metadata i8 %89, i64 0, metadata !706, metadata !649), !dbg !732
  %99 = load i32, i32* @optind, align 4, !dbg !850, !tbaa !751
  %100 = icmp slt i32 %99, %0, !dbg !755
  br i1 %100, label %58, label %103, !dbg !757, !llvm.loop !851

; <label>:101:                                    ; preds = %73
  %102 = getelementptr inbounds i8, i8* %92, i64 1, !dbg !854
  store i8* %102, i8** %91, align 8, !dbg !854, !tbaa !814
  store i8 10, i8* %92, align 1, !dbg !854, !tbaa !824
  br label %98, !dbg !854

; <label>:103:                                    ; preds = %98
  br label %104, !dbg !732

; <label>:104:                                    ; preds = %103, %17, %56, %54
  %105 = phi i8 [ %47, %54 ], [ %47, %56 ], [ 1, %17 ], [ %89, %103 ]
  tail call void @llvm.dbg.value(metadata i8 %105, i64 0, metadata !706, metadata !649), !dbg !732
  %106 = and i8 %105, 1, !dbg !855
  %107 = xor i8 %106, 1, !dbg !855
  %108 = zext i8 %107 to i32, !dbg !855
  ret i32 %108, !dbg !856
}

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @getuid() local_unnamed_addr #2

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @getegid() local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getgid() local_unnamed_addr #2

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare %struct.passwd* @getpwnam(i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @print_group_list(i8*, i32, i32, i32, i1 zeroext, i8 signext) local_unnamed_addr #6 !dbg !857 {
  %7 = alloca i32*, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !861, metadata !649), !dbg !883
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !862, metadata !649), !dbg !884
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !863, metadata !649), !dbg !885
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !864, metadata !649), !dbg !886
  tail call void @llvm.dbg.value(metadata i1 %4, i64 0, metadata !865, metadata !887), !dbg !888
  tail call void @llvm.dbg.value(metadata i8 %5, i64 0, metadata !866, metadata !649), !dbg !889
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !867, metadata !649), !dbg !890
  tail call void @llvm.dbg.value(metadata %struct.passwd* null, i64 0, metadata !868, metadata !649), !dbg !891
  %8 = icmp ne i8* %0, null, !dbg !892
  br i1 %8, label %9, label %13, !dbg !894

; <label>:9:                                      ; preds = %6
  %10 = tail call %struct.passwd* @getpwuid(i32 %1) #10, !dbg !895
  tail call void @llvm.dbg.value(metadata %struct.passwd* %10, i64 0, metadata !868, metadata !649), !dbg !891
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !867, metadata !649), !dbg !890
  %11 = icmp ne %struct.passwd* %10, null, !dbg !897
  %12 = zext i1 %11 to i8, !dbg !897
  br label %13, !dbg !897

; <label>:13:                                     ; preds = %9, %6
  %14 = phi i8 [ 1, %6 ], [ %12, %9 ]
  %15 = phi %struct.passwd* [ null, %6 ], [ %10, %9 ]
  tail call void @llvm.dbg.value(metadata %struct.passwd* %15, i64 0, metadata !868, metadata !649), !dbg !891
  tail call void @llvm.dbg.value(metadata i8 %14, i64 0, metadata !867, metadata !649), !dbg !890
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !898, metadata !649) #10, !dbg !915
  tail call void @llvm.dbg.value(metadata i1 %4, i64 0, metadata !903, metadata !887) #10, !dbg !918
  tail call void @llvm.dbg.value(metadata %struct.group* null, i64 0, metadata !904, metadata !649) #10, !dbg !919
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !913, metadata !649) #10, !dbg !920
  br i1 %4, label %21, label %16, !dbg !921

; <label>:16:                                     ; preds = %13
  %17 = zext i32 %2 to i64, !dbg !922
  %18 = tail call i8* @umaxtostr(i64 %17, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @gidtostr_ptr.buf, i64 0, i64 0)) #10, !dbg !925
  tail call void @llvm.dbg.value(metadata i8* %27, i64 0, metadata !914, metadata !649) #10, !dbg !926
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !927, !tbaa !657
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #10, !dbg !927
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !867, metadata !649), !dbg !890
  br label %35

; <label>:21:                                     ; preds = %13
  %22 = tail call %struct.group* @getgrgid(i32 %2) #10, !dbg !928
  tail call void @llvm.dbg.value(metadata %struct.group* %22, i64 0, metadata !904, metadata !649) #10, !dbg !919
  %23 = icmp eq %struct.group* %22, null, !dbg !931
  br i1 %23, label %24, label %30, !dbg !933

; <label>:24:                                     ; preds = %21
  %25 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2.3, i64 0, i64 0), i32 5) #10, !dbg !934
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !898, metadata !649) #10, !dbg !915
  %26 = zext i32 %2 to i64, !dbg !936
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %25, i64 %26) #10, !dbg !937
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !913, metadata !649) #10, !dbg !920
  %27 = tail call i8* @umaxtostr(i64 %26, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @gidtostr_ptr.buf, i64 0, i64 0)) #10, !dbg !925
  tail call void @llvm.dbg.value(metadata i8* %27, i64 0, metadata !914, metadata !649) #10, !dbg !926
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !927, !tbaa !657
  %29 = tail call i32 @fputs_unlocked(i8* %27, %struct._IO_FILE* %28) #10, !dbg !927
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !867, metadata !649), !dbg !890
  br label %35, !dbg !939

; <label>:30:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata %struct.group* %22, i64 0, metadata !904, metadata !649) #10, !dbg !919
  %31 = getelementptr inbounds %struct.group, %struct.group* %22, i64 0, i32 0, !dbg !940
  %32 = load i8*, i8** %31, align 8, !dbg !940, !tbaa !942
  tail call void @llvm.dbg.value(metadata i8* %27, i64 0, metadata !914, metadata !649) #10, !dbg !926
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !927, !tbaa !657
  %34 = tail call i32 @fputs_unlocked(i8* %32, %struct._IO_FILE* %33) #10, !dbg !927
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !867, metadata !649), !dbg !890
  br label %35, !dbg !939

; <label>:35:                                     ; preds = %30, %16, %24
  %36 = phi i8 [ 0, %24 ], [ %14, %16 ], [ %14, %30 ]
  tail call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !867, metadata !649), !dbg !890
  %37 = icmp eq i32 %3, %2, !dbg !944
  br i1 %37, label %70, label %38, !dbg !946

; <label>:38:                                     ; preds = %35
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !947, !tbaa !657
  %40 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %39, i64 0, i32 5, !dbg !947
  %41 = load i8*, i8** %40, align 8, !dbg !947, !tbaa !814
  %42 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %39, i64 0, i32 6, !dbg !947
  %43 = load i8*, i8** %42, align 8, !dbg !947, !tbaa !818
  %44 = icmp ult i8* %41, %43, !dbg !947
  br i1 %44, label %48, label %45, !dbg !947, !prof !819

; <label>:45:                                     ; preds = %38
  %46 = zext i8 %5 to i32, !dbg !953
  %47 = tail call i32 @__overflow(%struct._IO_FILE* %39, i32 %46) #10, !dbg !954
  br label %50, !dbg !954

; <label>:48:                                     ; preds = %38
  %49 = getelementptr inbounds i8, i8* %41, i64 1, !dbg !956
  store i8* %49, i8** %40, align 8, !dbg !956, !tbaa !814
  store i8 %5, i8* %41, align 1, !dbg !956, !tbaa !824
  br label %50, !dbg !956

; <label>:50:                                     ; preds = %45, %48
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !898, metadata !649) #10, !dbg !958
  tail call void @llvm.dbg.value(metadata i1 %4, i64 0, metadata !903, metadata !887) #10, !dbg !961
  tail call void @llvm.dbg.value(metadata %struct.group* null, i64 0, metadata !904, metadata !649) #10, !dbg !962
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !913, metadata !649) #10, !dbg !963
  br i1 %4, label %56, label %51, !dbg !964

; <label>:51:                                     ; preds = %50
  %52 = zext i32 %3 to i64, !dbg !965
  %53 = tail call i8* @umaxtostr(i64 %52, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @gidtostr_ptr.buf, i64 0, i64 0)) #10, !dbg !967
  tail call void @llvm.dbg.value(metadata i8* %62, i64 0, metadata !914, metadata !649) #10, !dbg !968
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !969, !tbaa !657
  %55 = tail call i32 @fputs_unlocked(i8* %53, %struct._IO_FILE* %54) #10, !dbg !969
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !867, metadata !649), !dbg !890
  br label %70

; <label>:56:                                     ; preds = %50
  %57 = tail call %struct.group* @getgrgid(i32 %3) #10, !dbg !970
  tail call void @llvm.dbg.value(metadata %struct.group* %57, i64 0, metadata !904, metadata !649) #10, !dbg !962
  %58 = icmp eq %struct.group* %57, null, !dbg !971
  br i1 %58, label %59, label %65, !dbg !972

; <label>:59:                                     ; preds = %56
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2.3, i64 0, i64 0), i32 5) #10, !dbg !973
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !898, metadata !649) #10, !dbg !958
  %61 = zext i32 %3 to i64, !dbg !974
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %60, i64 %61) #10, !dbg !975
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !913, metadata !649) #10, !dbg !963
  %62 = tail call i8* @umaxtostr(i64 %61, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @gidtostr_ptr.buf, i64 0, i64 0)) #10, !dbg !967
  tail call void @llvm.dbg.value(metadata i8* %62, i64 0, metadata !914, metadata !649) #10, !dbg !968
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !969, !tbaa !657
  %64 = tail call i32 @fputs_unlocked(i8* %62, %struct._IO_FILE* %63) #10, !dbg !969
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !867, metadata !649), !dbg !890
  br label %70, !dbg !976

; <label>:65:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata %struct.group* %57, i64 0, metadata !904, metadata !649) #10, !dbg !962
  %66 = getelementptr inbounds %struct.group, %struct.group* %57, i64 0, i32 0, !dbg !977
  %67 = load i8*, i8** %66, align 8, !dbg !977, !tbaa !942
  tail call void @llvm.dbg.value(metadata i8* %62, i64 0, metadata !914, metadata !649) #10, !dbg !968
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !969, !tbaa !657
  %69 = tail call i32 @fputs_unlocked(i8* %67, %struct._IO_FILE* %68) #10, !dbg !969
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !867, metadata !649), !dbg !890
  br label %70, !dbg !976

; <label>:70:                                     ; preds = %65, %51, %59, %35
  %71 = phi i8 [ %36, %35 ], [ 0, %59 ], [ %36, %51 ], [ %36, %65 ]
  tail call void @llvm.dbg.value(metadata i8 %71, i64 0, metadata !867, metadata !649), !dbg !890
  %72 = bitcast i32** %7 to i8*, !dbg !978
  call void @llvm.lifetime.start(i64 8, i8* nonnull %72) #10, !dbg !978
  %73 = icmp eq %struct.passwd* %15, null, !dbg !979
  br i1 %73, label %77, label %74, !dbg !979

; <label>:74:                                     ; preds = %70
  %75 = getelementptr inbounds %struct.passwd, %struct.passwd* %15, i64 0, i32 3, !dbg !980
  %76 = load i32, i32* %75, align 4, !dbg !980, !tbaa !839
  br label %77, !dbg !982

; <label>:77:                                     ; preds = %70, %74
  %78 = phi i32 [ %76, %74 ], [ %3, %70 ], !dbg !983
  tail call void @llvm.dbg.value(metadata i32** %7, i64 0, metadata !879, metadata !985), !dbg !986
  %79 = call i32 @xgetgroups(i8* %0, i32 %78, i32** nonnull %7) #10, !dbg !987
  call void @llvm.dbg.value(metadata i32 %79, i64 0, metadata !882, metadata !649), !dbg !988
  %80 = icmp slt i32 %79, 0, !dbg !989
  br i1 %80, label %87, label %81, !dbg !991

; <label>:81:                                     ; preds = %77
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !881, metadata !649), !dbg !992
  call void @llvm.dbg.value(metadata i8 %71, i64 0, metadata !867, metadata !649), !dbg !890
  %82 = icmp eq i32 %79, 0, !dbg !993
  %83 = load i32*, i32** %7, align 8, !tbaa !657
  call void @llvm.dbg.value(metadata i32* %83, i64 0, metadata !879, metadata !649), !dbg !986
  br i1 %82, label %145, label %84, !dbg !997

; <label>:84:                                     ; preds = %81
  %85 = zext i8 %5 to i32
  %86 = sext i32 %79 to i64, !dbg !997
  br label %95, !dbg !997

; <label>:87:                                     ; preds = %77
  %88 = tail call i32* @__errno_location() #1, !dbg !999
  %89 = load i32, i32* %88, align 4, !tbaa !751
  br i1 %8, label %90, label %93, !dbg !1003

; <label>:90:                                     ; preds = %87
  %91 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.17, i64 0, i64 0), i32 5) #10, !dbg !1004
  %92 = call i8* @quote(i8* nonnull %0) #10, !dbg !1006
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %89, i8* %91, i8* %92) #10, !dbg !1007
  br label %143, !dbg !1009

; <label>:93:                                     ; preds = %87
  %94 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1.18, i64 0, i64 0), i32 5) #10, !dbg !1010
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %89, i8* %94) #10, !dbg !1013
  br label %143

; <label>:95:                                     ; preds = %84, %138
  %96 = phi i64 [ 0, %84 ], [ %140, %138 ]
  %97 = phi i32* [ %83, %84 ], [ %142, %138 ]
  %98 = phi i8 [ %71, %84 ], [ %139, %138 ]
  %99 = getelementptr inbounds i32, i32* %97, i64 %96, !dbg !1015
  %100 = load i32, i32* %99, align 4, !dbg !1015, !tbaa !751
  %101 = icmp eq i32 %100, %2, !dbg !1017
  %102 = icmp eq i32 %100, %3, !dbg !1018
  %103 = or i1 %101, %102, !dbg !1020
  br i1 %103, label %138, label %104, !dbg !1020

; <label>:104:                                    ; preds = %95
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1021, !tbaa !657
  %106 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %105, i64 0, i32 5, !dbg !1021
  %107 = load i8*, i8** %106, align 8, !dbg !1021, !tbaa !814
  %108 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %105, i64 0, i32 6, !dbg !1021
  %109 = load i8*, i8** %108, align 8, !dbg !1021, !tbaa !818
  %110 = icmp ult i8* %107, %109, !dbg !1021
  br i1 %110, label %113, label %111, !dbg !1021, !prof !819

; <label>:111:                                    ; preds = %104
  %112 = call i32 @__overflow(%struct._IO_FILE* %105, i32 %85) #10, !dbg !1024
  br label %115, !dbg !1024

; <label>:113:                                    ; preds = %104
  %114 = getelementptr inbounds i8, i8* %107, i64 1, !dbg !1025
  store i8* %114, i8** %106, align 8, !dbg !1025, !tbaa !814
  store i8 %5, i8* %107, align 1, !dbg !1025, !tbaa !824
  br label %115, !dbg !1025

; <label>:115:                                    ; preds = %111, %113
  %116 = load i32*, i32** %7, align 8, !dbg !1026, !tbaa !657
  call void @llvm.dbg.value(metadata i32* %116, i64 0, metadata !879, metadata !649), !dbg !986
  %117 = getelementptr inbounds i32, i32* %116, i64 %96, !dbg !1026
  %118 = load i32, i32* %117, align 4, !dbg !1026, !tbaa !751
  call void @llvm.dbg.value(metadata i32 %118, i64 0, metadata !898, metadata !649) #10, !dbg !1028
  call void @llvm.dbg.value(metadata i1 %4, i64 0, metadata !903, metadata !887) #10, !dbg !1030
  call void @llvm.dbg.value(metadata %struct.group* null, i64 0, metadata !904, metadata !649) #10, !dbg !1031
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !913, metadata !649) #10, !dbg !1032
  br i1 %4, label %124, label %119, !dbg !1033

; <label>:119:                                    ; preds = %115
  %120 = zext i32 %118 to i64, !dbg !1034
  %121 = call i8* @umaxtostr(i64 %120, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @gidtostr_ptr.buf, i64 0, i64 0)) #10, !dbg !1036
  call void @llvm.dbg.value(metadata i8* %130, i64 0, metadata !914, metadata !649) #10, !dbg !1037
  %122 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1038, !tbaa !657
  %123 = call i32 @fputs_unlocked(i8* %121, %struct._IO_FILE* %122) #10, !dbg !1038
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !867, metadata !649), !dbg !890
  br label %138

; <label>:124:                                    ; preds = %115
  %125 = call %struct.group* @getgrgid(i32 %118) #10, !dbg !1039
  call void @llvm.dbg.value(metadata %struct.group* %125, i64 0, metadata !904, metadata !649) #10, !dbg !1031
  %126 = icmp eq %struct.group* %125, null, !dbg !1040
  br i1 %126, label %127, label %133, !dbg !1041

; <label>:127:                                    ; preds = %124
  %128 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2.3, i64 0, i64 0), i32 5) #10, !dbg !1042
  call void @llvm.dbg.value(metadata i32 %118, i64 0, metadata !898, metadata !649) #10, !dbg !1028
  %129 = zext i32 %118 to i64, !dbg !1043
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %128, i64 %129) #10, !dbg !1044
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !913, metadata !649) #10, !dbg !1032
  %130 = call i8* @umaxtostr(i64 %129, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @gidtostr_ptr.buf, i64 0, i64 0)) #10, !dbg !1036
  call void @llvm.dbg.value(metadata i8* %130, i64 0, metadata !914, metadata !649) #10, !dbg !1037
  %131 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1038, !tbaa !657
  %132 = call i32 @fputs_unlocked(i8* %130, %struct._IO_FILE* %131) #10, !dbg !1038
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !867, metadata !649), !dbg !890
  br label %138, !dbg !1045

; <label>:133:                                    ; preds = %124
  call void @llvm.dbg.value(metadata %struct.group* %125, i64 0, metadata !904, metadata !649) #10, !dbg !1031
  %134 = getelementptr inbounds %struct.group, %struct.group* %125, i64 0, i32 0, !dbg !1046
  %135 = load i8*, i8** %134, align 8, !dbg !1046, !tbaa !942
  call void @llvm.dbg.value(metadata i8* %130, i64 0, metadata !914, metadata !649) #10, !dbg !1037
  %136 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1038, !tbaa !657
  %137 = call i32 @fputs_unlocked(i8* %135, %struct._IO_FILE* %136) #10, !dbg !1038
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !867, metadata !649), !dbg !890
  br label %138, !dbg !1045

; <label>:138:                                    ; preds = %133, %119, %127, %95
  %139 = phi i8 [ %98, %95 ], [ 0, %127 ], [ %98, %119 ], [ %98, %133 ]
  call void @llvm.dbg.value(metadata i8 %139, i64 0, metadata !867, metadata !649), !dbg !890
  %140 = add nuw nsw i64 %96, 1, !dbg !1047
  call void @llvm.dbg.value(metadata i8 %139, i64 0, metadata !867, metadata !649), !dbg !890
  %141 = icmp slt i64 %140, %86, !dbg !993
  %142 = load i32*, i32** %7, align 8, !tbaa !657
  call void @llvm.dbg.value(metadata i32* %142, i64 0, metadata !879, metadata !649), !dbg !986
  br i1 %141, label %95, label %144, !dbg !997, !llvm.loop !1049

; <label>:143:                                    ; preds = %93, %90
  call void @llvm.dbg.value(metadata i8 undef, i64 0, metadata !867, metadata !649), !dbg !890
  call void @llvm.lifetime.end(i64 8, i8* nonnull %72) #10, !dbg !1052
  br label %151

; <label>:144:                                    ; preds = %138
  br label %145, !dbg !1053

; <label>:145:                                    ; preds = %144, %81
  %146 = phi i8 [ %71, %81 ], [ %139, %144 ]
  %147 = phi i32* [ %83, %81 ], [ %142, %144 ]
  %148 = bitcast i32* %147 to i8*, !dbg !1053
  call void @free(i8* %148) #10, !dbg !1054
  call void @llvm.dbg.value(metadata i8 undef, i64 0, metadata !867, metadata !649), !dbg !890
  call void @llvm.lifetime.end(i64 8, i8* nonnull %72) #10, !dbg !1052
  %149 = and i8 %146, 1, !dbg !1055
  %150 = icmp ne i8 %149, 0, !dbg !1055
  br label %151

; <label>:151:                                    ; preds = %143, %145
  %152 = phi i1 [ %150, %145 ], [ false, %143 ]
  ret i1 %152, !dbg !1056
}

declare %struct.passwd* @getpwuid(i32) local_unnamed_addr #3

declare %struct.group* @getgrgid(i32) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #8

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #8

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @print_group(i32, i1 zeroext) local_unnamed_addr #6 !dbg !899 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !898, metadata !649), !dbg !1057
  tail call void @llvm.dbg.value(metadata i1 %1, i64 0, metadata !903, metadata !887), !dbg !1058
  tail call void @llvm.dbg.value(metadata %struct.group* null, i64 0, metadata !904, metadata !649), !dbg !1059
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !913, metadata !649), !dbg !1060
  br i1 %1, label %5, label %3, !dbg !1061

; <label>:3:                                      ; preds = %2
  %4 = zext i32 %0 to i64, !dbg !1062
  br label %14, !dbg !1061

; <label>:5:                                      ; preds = %2
  %6 = tail call %struct.group* @getgrgid(i32 %0) #10, !dbg !1064
  tail call void @llvm.dbg.value(metadata %struct.group* %6, i64 0, metadata !904, metadata !649), !dbg !1059
  %7 = icmp eq %struct.group* %6, null, !dbg !1065
  br i1 %7, label %8, label %11, !dbg !1066

; <label>:8:                                      ; preds = %5
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2.3, i64 0, i64 0), i32 5) #10, !dbg !1067
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !898, metadata !649), !dbg !1057
  %10 = zext i32 %0 to i64, !dbg !1068
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %9, i64 %10) #10, !dbg !1069
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !913, metadata !649), !dbg !1060
  br label %14, !dbg !1070

; <label>:11:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata %struct.group* %6, i64 0, metadata !904, metadata !649), !dbg !1059
  %12 = getelementptr inbounds %struct.group, %struct.group* %6, i64 0, i32 0, !dbg !1071
  %13 = load i8*, i8** %12, align 8, !dbg !1071, !tbaa !942
  br label %18, !dbg !1072

; <label>:14:                                     ; preds = %3, %8
  %15 = phi i64 [ %4, %3 ], [ %10, %8 ], !dbg !1062
  %16 = phi i1 [ true, %3 ], [ false, %8 ]
  tail call void @llvm.dbg.value(metadata %struct.group* %6, i64 0, metadata !904, metadata !649), !dbg !1059
  %17 = tail call i8* @umaxtostr(i64 %15, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @gidtostr_ptr.buf, i64 0, i64 0)) #10, !dbg !1073
  br label %18, !dbg !1074

; <label>:18:                                     ; preds = %14, %11
  %19 = phi i1 [ true, %11 ], [ %16, %14 ]
  %20 = phi i8* [ %13, %11 ], [ %17, %14 ], !dbg !1075
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !914, metadata !649), !dbg !1077
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1078, !tbaa !657
  %22 = tail call i32 @fputs_unlocked(i8* %20, %struct._IO_FILE* %21) #10, !dbg !1078
  ret i1 %19, !dbg !1079
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !1080 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1082, metadata !649), !dbg !1083
  store i8* %0, i8** @file_name, align 8, !dbg !1084, !tbaa !657
  ret void, !dbg !1085
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !1086 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !1090, metadata !887), !dbg !1091
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1092, !tbaa !1093
  ret void, !dbg !1095
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !1096 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1103, !tbaa !657
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #10, !dbg !1104
  %3 = icmp eq i32 %2, 0, !dbg !1105
  br i1 %3, label %21, label %4, !dbg !1106

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1107, !tbaa !1093, !range !1109
  %6 = icmp eq i8 %5, 0, !dbg !1107
  %7 = tail call i32* @__errno_location() #1, !dbg !1110
  br i1 %6, label %11, label %8, !dbg !1112

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !1113, !tbaa !751
  %10 = icmp eq i32 %9, 32, !dbg !1115
  br i1 %10, label %21, label %11, !dbg !1116

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i64 0, i64 0), i32 5) #10, !dbg !1118
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !1100, metadata !649), !dbg !1119
  %13 = load i8*, i8** @file_name, align 8, !dbg !1120, !tbaa !657
  %14 = icmp eq i8* %13, null, !dbg !1120
  %15 = load i32, i32* %7, align 4, !tbaa !751
  br i1 %14, label %18, label %16, !dbg !1121

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #10, !dbg !1122
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.25, i64 0, i64 0), i8* %17, i8* %12) #10, !dbg !1124
  br label %19, !dbg !1126

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.26, i64 0, i64 0), i8* %12) #10, !dbg !1127
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !1128, !tbaa !751
  tail call void @_exit(i32 %20) #14, !dbg !1129
  unreachable, !dbg !1129

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1130, !tbaa !657
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #10, !dbg !1132
  %24 = icmp eq i32 %23, 0, !dbg !1133
  br i1 %24, label %27, label %25, !dbg !1134

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !1135, !tbaa !751
  tail call void @_exit(i32 %26) #14, !dbg !1136
  unreachable, !dbg !1136

; <label>:27:                                     ; preds = %21
  ret void, !dbg !1137
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define i8* @umaxtostr(i64, i8*) local_unnamed_addr #6 !dbg !1138 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !1143, metadata !649), !dbg !1146
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1144, metadata !649), !dbg !1147
  %3 = getelementptr inbounds i8, i8* %1, i64 20, !dbg !1148
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !1145, metadata !649), !dbg !1149
  store i8 0, i8* %3, align 1, !dbg !1150, !tbaa !824
  br label %4, !dbg !1151

; <label>:4:                                      ; preds = %2, %4
  %5 = phi i64 [ %0, %2 ], [ %11, %4 ]
  %6 = phi i8* [ %3, %2 ], [ %10, %4 ]
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !1145, metadata !649), !dbg !1149
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !1143, metadata !649), !dbg !1146
  %7 = urem i64 %5, 10, !dbg !1152
  %8 = trunc i64 %7 to i8, !dbg !1155
  %9 = or i8 %8, 48, !dbg !1155
  %10 = getelementptr inbounds i8, i8* %6, i64 -1, !dbg !1156
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1145, metadata !649), !dbg !1149
  store i8 %9, i8* %10, align 1, !dbg !1157, !tbaa !824
  %11 = udiv i64 %5, 10, !dbg !1158
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !1143, metadata !649), !dbg !1146
  %12 = icmp ugt i64 %5, 9, !dbg !1159
  br i1 %12, label %4, label %13, !dbg !1160, !llvm.loop !1162

; <label>:13:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1145, metadata !649), !dbg !1149
  ret i8* %10, !dbg !1165
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !1166 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1168, metadata !649), !dbg !1171
  %2 = icmp eq i8* %0, null, !dbg !1172
  br i1 %2, label %3, label %6, !dbg !1174

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1175, !tbaa !657
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.35, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #16, !dbg !1177
  tail call void @abort() #14, !dbg !1178
  unreachable, !dbg !1178

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #13, !dbg !1179
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1169, metadata !649), !dbg !1180
  %8 = icmp ne i8* %7, null, !dbg !1181
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1182
  %10 = select i1 %8, i8* %9, i8* %0, !dbg !1184
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1170, metadata !649), !dbg !1185
  %11 = ptrtoint i8* %10 to i64, !dbg !1186
  %12 = ptrtoint i8* %0 to i64, !dbg !1186
  %13 = sub i64 %11, %12, !dbg !1186
  %14 = icmp sgt i64 %13, 6, !dbg !1188
  br i1 %14, label %15, label %24, !dbg !1189

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1190
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.36, i64 0, i64 0), i64 7) #13, !dbg !1190
  %18 = icmp eq i32 %17, 0, !dbg !1192
  br i1 %18, label %19, label %24, !dbg !1193

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1168, metadata !649), !dbg !1171
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.37, i64 0, i64 0), i64 3) #13, !dbg !1194
  %21 = icmp eq i32 %20, 0, !dbg !1197
  br i1 %21, label %22, label %24, !dbg !1198

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1199
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !1168, metadata !649), !dbg !1171
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1201, !tbaa !657
  br label %24, !dbg !1202

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !1168, metadata !649), !dbg !1171
  store i8* %25, i8** @program_name, align 8, !dbg !1203, !tbaa !657
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1204, !tbaa !657
  ret void, !dbg !1205
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #10

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !1206 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1211, metadata !649), !dbg !1214
  %2 = tail call i32* @__errno_location() #1, !dbg !1215
  %3 = load i32, i32* %2, align 4, !dbg !1215, !tbaa !751
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !1212, metadata !649), !dbg !1216
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !1217
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !1218
  %6 = select i1 %4, i8* %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), !dbg !1218
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #10, !dbg !1220
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1220
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !1213, metadata !649), !dbg !1221
  store i32 %3, i32* %2, align 4, !dbg !1222, !tbaa !751
  ret %struct.quoting_options* %8, !dbg !1223
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #11 !dbg !1224 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1230, metadata !649), !dbg !1231
  %2 = icmp ne %struct.quoting_options* %0, null, !dbg !1232
  %3 = select i1 %2, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !1232
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1233
  %5 = load i32, i32* %4, align 8, !dbg !1233, !tbaa !1235
  ret i32 %5, !dbg !1237
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1238 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1242, metadata !649), !dbg !1244
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1243, metadata !649), !dbg !1245
  %3 = icmp ne %struct.quoting_options* %0, null, !dbg !1246
  %4 = select i1 %3, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !1246
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1247
  store i32 %1, i32* %5, align 8, !dbg !1249, !tbaa !1235
  ret void, !dbg !1250
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !1251 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1255, metadata !649), !dbg !1263
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1256, metadata !649), !dbg !1264
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !1257, metadata !649), !dbg !1265
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1258, metadata !649), !dbg !1266
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !1267
  %5 = select i1 %4, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !1267
  %6 = lshr i8 %1, 5, !dbg !1268
  %7 = zext i8 %6 to i64, !dbg !1268
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1270
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1259, metadata !649), !dbg !1271
  %9 = and i8 %1, 31, !dbg !1272
  %10 = zext i8 %9 to i32, !dbg !1273
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1261, metadata !649), !dbg !1274
  %11 = load i32, i32* %8, align 4, !dbg !1275, !tbaa !751
  %12 = lshr i32 %11, %10, !dbg !1276
  %13 = and i32 %12, 1, !dbg !1277
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1262, metadata !649), !dbg !1278
  %14 = and i32 %2, 1, !dbg !1279
  %15 = xor i32 %13, %14, !dbg !1280
  %16 = shl i32 %15, %10, !dbg !1281
  %17 = xor i32 %16, %11, !dbg !1282
  store i32 %17, i32* %8, align 4, !dbg !1282, !tbaa !751
  ret i32 %13, !dbg !1283
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1284 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1288, metadata !649), !dbg !1291
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1289, metadata !649), !dbg !1292
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1293
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1288, metadata !649), !dbg !1291
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1295
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1288, metadata !649), !dbg !1291
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1296
  %6 = load i32, i32* %5, align 4, !dbg !1296, !tbaa !1297
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1290, metadata !649), !dbg !1298
  store i32 %1, i32* %5, align 4, !dbg !1299, !tbaa !1297
  ret i32 %6, !dbg !1300
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !1301 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1305, metadata !649), !dbg !1308
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1306, metadata !649), !dbg !1309
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1307, metadata !649), !dbg !1310
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1311
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1305, metadata !649), !dbg !1308
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1313
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1305, metadata !649), !dbg !1308
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1314
  store i32 10, i32* %6, align 8, !dbg !1315, !tbaa !1235
  %7 = icmp ne i8* %1, null, !dbg !1316
  %8 = icmp ne i8* %2, null, !dbg !1318
  %9 = and i1 %7, %8, !dbg !1320
  br i1 %9, label %11, label %10, !dbg !1320

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !1321
  unreachable, !dbg !1321

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1322
  store i8* %1, i8** %12, align 8, !dbg !1323, !tbaa !1324
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1325
  store i8* %2, i8** %13, align 8, !dbg !1326, !tbaa !1327
  ret void, !dbg !1328
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !1329 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1333, metadata !649), !dbg !1341
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1334, metadata !649), !dbg !1342
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1335, metadata !649), !dbg !1343
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1336, metadata !649), !dbg !1344
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1337, metadata !649), !dbg !1345
  %6 = icmp ne %struct.quoting_options* %4, null, !dbg !1346
  %7 = select i1 %6, %struct.quoting_options* %4, %struct.quoting_options* @default_quoting_options, !dbg !1346
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !1338, metadata !649), !dbg !1347
  %8 = tail call i32* @__errno_location() #1, !dbg !1348
  %9 = load i32, i32* %8, align 4, !dbg !1348, !tbaa !751
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1339, metadata !649), !dbg !1349
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1350
  %11 = load i32, i32* %10, align 8, !dbg !1350, !tbaa !1235
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1351
  %13 = load i32, i32* %12, align 4, !dbg !1351, !tbaa !1297
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1352
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1353
  %16 = load i8*, i8** %15, align 8, !dbg !1353, !tbaa !1324
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1354
  %18 = load i8*, i8** %17, align 8, !dbg !1354, !tbaa !1327
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !1355
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1340, metadata !649), !dbg !1356
  store i32 %9, i32* %8, align 4, !dbg !1357, !tbaa !751
  ret i64 %19, !dbg !1358
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !1359 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1365, metadata !649), !dbg !1428
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1366, metadata !649), !dbg !1429
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1367, metadata !649), !dbg !1430
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1368, metadata !649), !dbg !1431
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !1369, metadata !649), !dbg !1432
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1370, metadata !649), !dbg !1433
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !1371, metadata !649), !dbg !1434
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1372, metadata !649), !dbg !1435
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !1373, metadata !649), !dbg !1436
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1375, metadata !649), !dbg !1437
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1376, metadata !649), !dbg !1438
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1377, metadata !649), !dbg !1439
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1378, metadata !649), !dbg !1440
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1379, metadata !649), !dbg !1441
  %13 = tail call i64 @__ctype_get_mb_cur_max() #10, !dbg !1442
  %14 = icmp eq i64 %13, 1, !dbg !1443
  %15 = lshr i32 %5, 1, !dbg !1444
  %16 = trunc i32 %15 to i8, !dbg !1444
  %17 = and i8 %16, 1, !dbg !1444
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !1381, metadata !649), !dbg !1444
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1382, metadata !649), !dbg !1445
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1383, metadata !649), !dbg !1446
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1384, metadata !649), !dbg !1447
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !1448

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !1366, metadata !649), !dbg !1429
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !1384, metadata !649), !dbg !1447
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !1383, metadata !649), !dbg !1446
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !1382, metadata !649), !dbg !1445
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1381, metadata !649), !dbg !1444
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !1368, metadata !649), !dbg !1431
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !1379, metadata !649), !dbg !1441
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !1378, metadata !649), !dbg !1440
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !1377, metadata !649), !dbg !1439
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !1376, metadata !649), !dbg !1438
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1375, metadata !649), !dbg !1437
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !1373, metadata !649), !dbg !1436
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !1372, metadata !649), !dbg !1435
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !1369, metadata !649), !dbg !1432
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
  ], !dbg !1449

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1369, metadata !649), !dbg !1432
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1381, metadata !649), !dbg !1444
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1381, metadata !649), !dbg !1444
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1369, metadata !649), !dbg !1432
  br label %95, !dbg !1450

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1381, metadata !649), !dbg !1444
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1369, metadata !649), !dbg !1432
  %43 = and i8 %36, 1, !dbg !1452
  %44 = icmp eq i8 %43, 0, !dbg !1452
  br i1 %44, label %45, label %95, !dbg !1450

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1454
  br i1 %46, label %95, label %47, !dbg !1458

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1460, !tbaa !824
  br label %95, !dbg !1460

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.48, i64 0, i64 0), i32 %28), !dbg !1462
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !1372, metadata !649), !dbg !1435
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.49, i64 0, i64 0), i32 %28), !dbg !1466
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !1373, metadata !649), !dbg !1436
  br label %51, !dbg !1467

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1373, metadata !649), !dbg !1436
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1372, metadata !649), !dbg !1435
  %54 = and i8 %36, 1, !dbg !1468
  %55 = icmp eq i8 %54, 0, !dbg !1468
  br i1 %55, label %56, label %73, !dbg !1470

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1377, metadata !649), !dbg !1439
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1375, metadata !649), !dbg !1437
  %57 = load i8, i8* %52, align 1, !dbg !1471, !tbaa !824
  %58 = icmp eq i8 %57, 0, !dbg !1475
  br i1 %58, label %73, label %59, !dbg !1475

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !1477

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  %64 = icmp ult i64 %63, %40, !dbg !1477
  br i1 %64, label %65, label %67, !dbg !1481

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !1483
  store i8 %61, i8* %66, align 1, !dbg !1483, !tbaa !824
  br label %67, !dbg !1483

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !1485
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1375, metadata !649), !dbg !1437
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !1487
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1377, metadata !649), !dbg !1439
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1377, metadata !649), !dbg !1439
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1375, metadata !649), !dbg !1437
  %70 = load i8, i8* %69, align 1, !dbg !1471, !tbaa !824
  %71 = icmp eq i8 %70, 0, !dbg !1475
  br i1 %71, label %72, label %60, !dbg !1475, !llvm.loop !1489

; <label>:72:                                     ; preds = %67
  br label %73, !dbg !1437

; <label>:73:                                     ; preds = %72, %56, %51
  %74 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %72 ]
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !1375, metadata !649), !dbg !1437
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1379, metadata !649), !dbg !1441
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1377, metadata !649), !dbg !1439
  %75 = call i64 @strlen(i8* %53) #13, !dbg !1492
  call void @llvm.dbg.value(metadata i64 %75, i64 0, metadata !1378, metadata !649), !dbg !1440
  br label %95, !dbg !1493

; <label>:76:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1379, metadata !649), !dbg !1441
  br label %77, !dbg !1494

; <label>:77:                                     ; preds = %27, %76
  %78 = phi i8 [ %34, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %78, i64 0, metadata !1379, metadata !649), !dbg !1441
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1381, metadata !649), !dbg !1444
  br label %79, !dbg !1495

; <label>:79:                                     ; preds = %27, %77
  %80 = phi i8 [ %34, %27 ], [ %78, %77 ]
  %81 = phi i8 [ %36, %27 ], [ 1, %77 ]
  call void @llvm.dbg.value(metadata i8 %81, i64 0, metadata !1381, metadata !649), !dbg !1444
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !1379, metadata !649), !dbg !1441
  %82 = and i8 %81, 1, !dbg !1496
  %83 = icmp eq i8 %82, 0, !dbg !1496
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1379, metadata !649), !dbg !1441
  %84 = select i1 %83, i8 1, i8 %80, !dbg !1498
  br label %85, !dbg !1498

; <label>:85:                                     ; preds = %79, %27
  %86 = phi i8 [ %34, %27 ], [ %84, %79 ]
  %87 = phi i8 [ %36, %27 ], [ %81, %79 ]
  call void @llvm.dbg.value(metadata i8 %87, i64 0, metadata !1381, metadata !649), !dbg !1444
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !1379, metadata !649), !dbg !1441
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !1369, metadata !649), !dbg !1432
  %88 = and i8 %87, 1, !dbg !1499
  %89 = icmp eq i8 %88, 0, !dbg !1499
  br i1 %89, label %90, label %95, !dbg !1501

; <label>:90:                                     ; preds = %85
  %91 = icmp eq i64 %40, 0, !dbg !1502
  br i1 %91, label %95, label %92, !dbg !1506

; <label>:92:                                     ; preds = %90
  store i8 39, i8* %0, align 1, !dbg !1508, !tbaa !824
  br label %95, !dbg !1508

; <label>:93:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1381, metadata !649), !dbg !1444
  br label %95, !dbg !1510

; <label>:94:                                     ; preds = %27
  call void @abort() #14, !dbg !1511
  unreachable, !dbg !1511

; <label>:95:                                     ; preds = %41, %85, %90, %92, %27, %42, %45, %47, %93, %73
  %96 = phi i32 [ 0, %93 ], [ %28, %73 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %92 ], [ 2, %90 ], [ 2, %85 ], [ 5, %41 ]
  %97 = phi i8* [ %29, %93 ], [ %52, %73 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %92 ], [ %29, %90 ], [ %29, %85 ], [ %29, %41 ]
  %98 = phi i8* [ %30, %93 ], [ %53, %73 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %92 ], [ %30, %90 ], [ %30, %85 ], [ %30, %41 ]
  %99 = phi i64 [ 0, %93 ], [ %74, %73 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %92 ], [ 1, %90 ], [ 0, %85 ], [ 0, %41 ]
  %100 = phi i8* [ %32, %93 ], [ %53, %73 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.50, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.50, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.50, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.49, i64 0, i64 0), %92 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.49, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.49, i64 0, i64 0), %85 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.50, i64 0, i64 0), %41 ]
  %101 = phi i64 [ %33, %93 ], [ %75, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %92 ], [ 1, %90 ], [ 1, %85 ], [ 1, %41 ]
  %102 = phi i8 [ %34, %93 ], [ 1, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %86, %92 ], [ %86, %90 ], [ %86, %85 ], [ 1, %41 ]
  %103 = phi i8 [ 0, %93 ], [ %36, %73 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %87, %92 ], [ %87, %90 ], [ %87, %85 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %103, i64 0, metadata !1381, metadata !649), !dbg !1444
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !1379, metadata !649), !dbg !1441
  call void @llvm.dbg.value(metadata i64 %101, i64 0, metadata !1378, metadata !649), !dbg !1440
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !1377, metadata !649), !dbg !1439
  call void @llvm.dbg.value(metadata i64 %99, i64 0, metadata !1375, metadata !649), !dbg !1437
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !1373, metadata !649), !dbg !1436
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !1372, metadata !649), !dbg !1435
  call void @llvm.dbg.value(metadata i32 %96, i64 0, metadata !1369, metadata !649), !dbg !1432
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1374, metadata !649), !dbg !1512
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
  br label %123, !dbg !1513

; <label>:123:                                    ; preds = %587, %95
  %124 = phi i64 [ 0, %95 ], [ %596, %587 ]
  %125 = phi i64 [ %99, %95 ], [ %589, %587 ]
  %126 = phi i64 [ %31, %95 ], [ %590, %587 ]
  %127 = phi i64 [ %35, %95 ], [ %591, %587 ]
  %128 = phi i8 [ %37, %95 ], [ %592, %587 ]
  %129 = phi i8 [ %38, %95 ], [ %593, %587 ]
  %130 = phi i8 [ %39, %95 ], [ %594, %587 ]
  %131 = phi i64 [ %40, %95 ], [ %595, %587 ]
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !1366, metadata !649), !dbg !1429
  call void @llvm.dbg.value(metadata i8 %130, i64 0, metadata !1384, metadata !649), !dbg !1447
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !1383, metadata !649), !dbg !1446
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !1382, metadata !649), !dbg !1445
  call void @llvm.dbg.value(metadata i64 %127, i64 0, metadata !1368, metadata !649), !dbg !1431
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !1376, metadata !649), !dbg !1438
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1375, metadata !649), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1374, metadata !649), !dbg !1512
  %132 = icmp eq i64 %127, -1, !dbg !1514
  br i1 %132, label %135, label %133, !dbg !1516

; <label>:133:                                    ; preds = %123
  %134 = icmp eq i64 %124, %127, !dbg !1517
  br i1 %134, label %597, label %139, !dbg !1519

; <label>:135:                                    ; preds = %123
  %136 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !1521
  %137 = load i8, i8* %136, align 1, !dbg !1521, !tbaa !824
  %138 = icmp eq i8 %137, 0, !dbg !1523
  br i1 %138, label %597, label %139, !dbg !1519

; <label>:139:                                    ; preds = %133, %135
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1390, metadata !649), !dbg !1524
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1391, metadata !649), !dbg !1525
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1392, metadata !649), !dbg !1526
  br i1 %109, label %140, label %155, !dbg !1527

; <label>:140:                                    ; preds = %139
  %141 = add i64 %124, %101, !dbg !1529
  %142 = and i1 %110, %132, !dbg !1531
  br i1 %142, label %143, label %145, !dbg !1531

; <label>:143:                                    ; preds = %140
  %144 = call i64 @strlen(i8* %2) #13, !dbg !1532
  call void @llvm.dbg.value(metadata i64 %144, i64 0, metadata !1368, metadata !649), !dbg !1431
  br label %145, !dbg !1533

; <label>:145:                                    ; preds = %140, %143
  %146 = phi i64 [ %144, %143 ], [ %127, %140 ]
  call void @llvm.dbg.value(metadata i64 %146, i64 0, metadata !1368, metadata !649), !dbg !1431
  %147 = icmp ugt i64 %141, %146, !dbg !1535
  br i1 %147, label %155, label %148, !dbg !1537

; <label>:148:                                    ; preds = %145
  %149 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !1538
  %150 = call i32 @memcmp(i8* %149, i8* %100, i64 %101) #13, !dbg !1539
  %151 = icmp ne i32 %150, 0, !dbg !1540
  %152 = or i1 %151, %112, !dbg !1540
  %153 = xor i1 %151, true, !dbg !1540
  %154 = zext i1 %153 to i8, !dbg !1540
  br i1 %152, label %155, label %644, !dbg !1540

; <label>:155:                                    ; preds = %148, %145, %139
  %156 = phi i64 [ %146, %148 ], [ %146, %145 ], [ %127, %139 ]
  %157 = phi i8 [ %154, %148 ], [ 0, %145 ], [ 0, %139 ]
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !1390, metadata !649), !dbg !1524
  call void @llvm.dbg.value(metadata i64 %156, i64 0, metadata !1368, metadata !649), !dbg !1431
  %158 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !1542
  %159 = load i8, i8* %158, align 1, !dbg !1542, !tbaa !824
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !1385, metadata !649), !dbg !1543
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
  ], !dbg !1544

; <label>:160:                                    ; preds = %155
  br i1 %105, label %161, label %209, !dbg !1545

; <label>:161:                                    ; preds = %160
  br i1 %112, label %162, label %644, !dbg !1546

; <label>:162:                                    ; preds = %161
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1391, metadata !649), !dbg !1525
  %163 = and i8 %128, 1, !dbg !1551
  %164 = icmp eq i8 %163, 0, !dbg !1551
  %165 = and i1 %114, %164, !dbg !1554
  br i1 %165, label %166, label %182, !dbg !1554

; <label>:166:                                    ; preds = %162
  %167 = icmp ult i64 %125, %131, !dbg !1556
  br i1 %167, label %168, label %170, !dbg !1561

; <label>:168:                                    ; preds = %166
  %169 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !1563
  store i8 39, i8* %169, align 1, !dbg !1563, !tbaa !824
  br label %170, !dbg !1563

; <label>:170:                                    ; preds = %168, %166
  %171 = add i64 %125, 1, !dbg !1565
  call void @llvm.dbg.value(metadata i64 %171, i64 0, metadata !1375, metadata !649), !dbg !1437
  %172 = icmp ult i64 %171, %131, !dbg !1567
  br i1 %172, label %173, label %175, !dbg !1571

; <label>:173:                                    ; preds = %170
  %174 = getelementptr inbounds i8, i8* %0, i64 %171, !dbg !1573
  store i8 36, i8* %174, align 1, !dbg !1573, !tbaa !824
  br label %175, !dbg !1573

; <label>:175:                                    ; preds = %173, %170
  %176 = add i64 %125, 2, !dbg !1575
  call void @llvm.dbg.value(metadata i64 %176, i64 0, metadata !1375, metadata !649), !dbg !1437
  %177 = icmp ult i64 %176, %131, !dbg !1577
  br i1 %177, label %178, label %180, !dbg !1581

; <label>:178:                                    ; preds = %175
  %179 = getelementptr inbounds i8, i8* %0, i64 %176, !dbg !1583
  store i8 39, i8* %179, align 1, !dbg !1583, !tbaa !824
  br label %180, !dbg !1583

; <label>:180:                                    ; preds = %178, %175
  %181 = add i64 %125, 3, !dbg !1585
  call void @llvm.dbg.value(metadata i64 %181, i64 0, metadata !1375, metadata !649), !dbg !1437
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1382, metadata !649), !dbg !1445
  br label %182, !dbg !1587

; <label>:182:                                    ; preds = %162, %180
  %183 = phi i64 [ %181, %180 ], [ %125, %162 ]
  %184 = phi i8 [ 1, %180 ], [ %128, %162 ]
  call void @llvm.dbg.value(metadata i8 %184, i64 0, metadata !1382, metadata !649), !dbg !1445
  call void @llvm.dbg.value(metadata i64 %183, i64 0, metadata !1375, metadata !649), !dbg !1437
  %185 = icmp ult i64 %183, %131, !dbg !1589
  br i1 %185, label %186, label %188, !dbg !1593

; <label>:186:                                    ; preds = %182
  %187 = getelementptr inbounds i8, i8* %0, i64 %183, !dbg !1595
  store i8 92, i8* %187, align 1, !dbg !1595, !tbaa !824
  br label %188, !dbg !1595

; <label>:188:                                    ; preds = %186, %182
  %189 = add i64 %183, 1, !dbg !1597
  call void @llvm.dbg.value(metadata i64 %189, i64 0, metadata !1375, metadata !649), !dbg !1437
  br i1 %106, label %190, label %476, !dbg !1599

; <label>:190:                                    ; preds = %188
  %191 = add i64 %124, 1, !dbg !1601
  %192 = icmp ult i64 %191, %156, !dbg !1603
  br i1 %192, label %193, label %476, !dbg !1604

; <label>:193:                                    ; preds = %190
  %194 = getelementptr inbounds i8, i8* %2, i64 %191, !dbg !1605
  %195 = load i8, i8* %194, align 1, !dbg !1605, !tbaa !824
  %196 = add i8 %195, -48, !dbg !1607
  %197 = icmp ult i8 %196, 10, !dbg !1607
  br i1 %197, label %198, label %476, !dbg !1607

; <label>:198:                                    ; preds = %193
  %199 = icmp ult i64 %189, %131, !dbg !1608
  br i1 %199, label %200, label %202, !dbg !1613

; <label>:200:                                    ; preds = %198
  %201 = getelementptr inbounds i8, i8* %0, i64 %189, !dbg !1615
  store i8 48, i8* %201, align 1, !dbg !1615, !tbaa !824
  br label %202, !dbg !1615

; <label>:202:                                    ; preds = %200, %198
  %203 = add i64 %183, 2, !dbg !1617
  call void @llvm.dbg.value(metadata i64 %203, i64 0, metadata !1375, metadata !649), !dbg !1437
  %204 = icmp ult i64 %203, %131, !dbg !1619
  br i1 %204, label %205, label %207, !dbg !1623

; <label>:205:                                    ; preds = %202
  %206 = getelementptr inbounds i8, i8* %0, i64 %203, !dbg !1625
  store i8 48, i8* %206, align 1, !dbg !1625, !tbaa !824
  br label %207, !dbg !1625

; <label>:207:                                    ; preds = %205, %202
  %208 = add i64 %183, 3, !dbg !1627
  call void @llvm.dbg.value(metadata i64 %208, i64 0, metadata !1375, metadata !649), !dbg !1437
  br label %476, !dbg !1629

; <label>:209:                                    ; preds = %160
  br i1 %23, label %476, label %587, !dbg !1630

; <label>:210:                                    ; preds = %155
  switch i32 %96, label %476 [
    i32 2, label %211
    i32 5, label %212
  ], !dbg !1631

; <label>:211:                                    ; preds = %210
  br i1 %112, label %476, label %644, !dbg !1632

; <label>:212:                                    ; preds = %210
  br i1 %25, label %476, label %213, !dbg !1634

; <label>:213:                                    ; preds = %212
  %214 = add i64 %124, 2, !dbg !1636
  %215 = icmp ult i64 %214, %156, !dbg !1638
  br i1 %215, label %216, label %476, !dbg !1639

; <label>:216:                                    ; preds = %213
  %217 = add i64 %124, 1, !dbg !1640
  %218 = getelementptr inbounds i8, i8* %2, i64 %217, !dbg !1642
  %219 = load i8, i8* %218, align 1, !dbg !1642, !tbaa !824
  %220 = icmp eq i8 %219, 63, !dbg !1643
  br i1 %220, label %221, label %476, !dbg !1644

; <label>:221:                                    ; preds = %216
  %222 = getelementptr inbounds i8, i8* %2, i64 %214, !dbg !1646
  %223 = load i8, i8* %222, align 1, !dbg !1646, !tbaa !824
  %224 = sext i8 %223 to i32, !dbg !1646
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
  ], !dbg !1647

; <label>:225:                                    ; preds = %221, %221, %221, %221, %221, %221, %221, %221, %221
  br i1 %112, label %226, label %644, !dbg !1648

; <label>:226:                                    ; preds = %225
  call void @llvm.dbg.value(metadata i8 %223, i64 0, metadata !1385, metadata !649), !dbg !1543
  call void @llvm.dbg.value(metadata i64 %214, i64 0, metadata !1374, metadata !649), !dbg !1512
  %227 = icmp ult i64 %125, %131, !dbg !1650
  br i1 %227, label %228, label %230, !dbg !1654

; <label>:228:                                    ; preds = %226
  %229 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !1656
  store i8 63, i8* %229, align 1, !dbg !1656, !tbaa !824
  br label %230, !dbg !1656

; <label>:230:                                    ; preds = %228, %226
  %231 = add i64 %125, 1, !dbg !1658
  call void @llvm.dbg.value(metadata i64 %231, i64 0, metadata !1375, metadata !649), !dbg !1437
  %232 = icmp ult i64 %231, %131, !dbg !1660
  br i1 %232, label %233, label %235, !dbg !1664

; <label>:233:                                    ; preds = %230
  %234 = getelementptr inbounds i8, i8* %0, i64 %231, !dbg !1666
  store i8 34, i8* %234, align 1, !dbg !1666, !tbaa !824
  br label %235, !dbg !1666

; <label>:235:                                    ; preds = %233, %230
  %236 = add i64 %125, 2, !dbg !1668
  call void @llvm.dbg.value(metadata i64 %236, i64 0, metadata !1375, metadata !649), !dbg !1437
  %237 = icmp ult i64 %236, %131, !dbg !1670
  br i1 %237, label %238, label %240, !dbg !1674

; <label>:238:                                    ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236, !dbg !1676
  store i8 34, i8* %239, align 1, !dbg !1676, !tbaa !824
  br label %240, !dbg !1676

; <label>:240:                                    ; preds = %238, %235
  %241 = add i64 %125, 3, !dbg !1678
  call void @llvm.dbg.value(metadata i64 %241, i64 0, metadata !1375, metadata !649), !dbg !1437
  %242 = icmp ult i64 %241, %131, !dbg !1680
  br i1 %242, label %243, label %245, !dbg !1684

; <label>:243:                                    ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241, !dbg !1686
  store i8 63, i8* %244, align 1, !dbg !1686, !tbaa !824
  br label %245, !dbg !1686

; <label>:245:                                    ; preds = %243, %240
  %246 = add i64 %125, 4, !dbg !1688
  call void @llvm.dbg.value(metadata i64 %246, i64 0, metadata !1375, metadata !649), !dbg !1437
  br label %476, !dbg !1690

; <label>:247:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !1389, metadata !649), !dbg !1691
  br label %257, !dbg !1692

; <label>:248:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !1389, metadata !649), !dbg !1691
  br label %257, !dbg !1693

; <label>:249:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !1389, metadata !649), !dbg !1691
  br label %255, !dbg !1694

; <label>:250:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !1389, metadata !649), !dbg !1691
  br label %255, !dbg !1695

; <label>:251:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !1389, metadata !649), !dbg !1691
  br label %257, !dbg !1696

; <label>:252:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !1389, metadata !649), !dbg !1691
  br i1 %114, label %253, label %254, !dbg !1697

; <label>:253:                                    ; preds = %252
  br i1 %112, label %542, label %644, !dbg !1698

; <label>:254:                                    ; preds = %252
  br i1 %122, label %542, label %255, !dbg !1701

; <label>:255:                                    ; preds = %254, %155, %250, %249
  %256 = phi i8 [ 92, %254 ], [ 116, %250 ], [ 114, %249 ], [ 110, %155 ]
  call void @llvm.dbg.value(metadata i8 %256, i64 0, metadata !1389, metadata !649), !dbg !1691
  br i1 %118, label %257, label %644, !dbg !1703

; <label>:257:                                    ; preds = %255, %155, %251, %248, %247
  %258 = phi i8 [ %256, %255 ], [ 118, %251 ], [ 102, %248 ], [ 98, %247 ], [ 97, %155 ]
  call void @llvm.dbg.value(metadata i8 %258, i64 0, metadata !1389, metadata !649), !dbg !1691
  br i1 %105, label %503, label %476, !dbg !1705

; <label>:259:                                    ; preds = %155, %155
  %260 = icmp eq i64 %156, -1, !dbg !1706
  br i1 %260, label %261, label %266, !dbg !1708

; <label>:261:                                    ; preds = %259
  %262 = load i8, i8* %26, align 1, !dbg !1709, !tbaa !824
  %263 = icmp ne i8 %262, 0, !dbg !1711
  %264 = icmp ne i64 %124, 0, !dbg !1712
  %265 = or i1 %264, %263, !dbg !1714
  br i1 %265, label %476, label %272, !dbg !1714

; <label>:266:                                    ; preds = %259
  %267 = icmp ne i64 %156, 1, !dbg !1715
  %268 = icmp ne i64 %124, 0, !dbg !1712
  %269 = or i1 %268, %267, !dbg !1717
  br i1 %269, label %476, label %272, !dbg !1717

; <label>:270:                                    ; preds = %155, %155
  %271 = icmp eq i64 %124, 0, !dbg !1712
  br i1 %271, label %272, label %476, !dbg !1719

; <label>:272:                                    ; preds = %270, %266, %261, %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1392, metadata !649), !dbg !1526
  br label %273, !dbg !1720

; <label>:273:                                    ; preds = %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %272
  %274 = phi i8 [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 1, %272 ]
  call void @llvm.dbg.value(metadata i8 %274, i64 0, metadata !1392, metadata !649), !dbg !1526
  br i1 %118, label %476, label %644, !dbg !1721

; <label>:275:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1383, metadata !649), !dbg !1446
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1392, metadata !649), !dbg !1526
  br i1 %114, label %276, label %476, !dbg !1723

; <label>:276:                                    ; preds = %275
  br i1 %112, label %277, label %644, !dbg !1724

; <label>:277:                                    ; preds = %276
  %278 = icmp eq i64 %131, 0, !dbg !1727
  %279 = icmp ne i64 %126, 0, !dbg !1729
  %280 = or i1 %279, %278, !dbg !1731
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !1376, metadata !649), !dbg !1438
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1366, metadata !649), !dbg !1429
  %281 = select i1 %280, i64 %126, i64 %131, !dbg !1731
  %282 = select i1 %280, i64 %131, i64 0, !dbg !1731
  call void @llvm.dbg.value(metadata i64 %282, i64 0, metadata !1366, metadata !649), !dbg !1429
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !1376, metadata !649), !dbg !1438
  %283 = icmp ult i64 %125, %282, !dbg !1732
  br i1 %283, label %284, label %286, !dbg !1736

; <label>:284:                                    ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !1738
  store i8 39, i8* %285, align 1, !dbg !1738, !tbaa !824
  br label %286, !dbg !1738

; <label>:286:                                    ; preds = %284, %277
  %287 = add i64 %125, 1, !dbg !1740
  call void @llvm.dbg.value(metadata i64 %287, i64 0, metadata !1375, metadata !649), !dbg !1437
  %288 = icmp ult i64 %287, %282, !dbg !1742
  br i1 %288, label %289, label %291, !dbg !1746

; <label>:289:                                    ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287, !dbg !1748
  store i8 92, i8* %290, align 1, !dbg !1748, !tbaa !824
  br label %291, !dbg !1748

; <label>:291:                                    ; preds = %289, %286
  %292 = add i64 %125, 2, !dbg !1750
  call void @llvm.dbg.value(metadata i64 %292, i64 0, metadata !1375, metadata !649), !dbg !1437
  %293 = icmp ult i64 %292, %282, !dbg !1752
  br i1 %293, label %294, label %296, !dbg !1756

; <label>:294:                                    ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292, !dbg !1758
  store i8 39, i8* %295, align 1, !dbg !1758, !tbaa !824
  br label %296, !dbg !1758

; <label>:296:                                    ; preds = %294, %291
  %297 = add i64 %125, 3, !dbg !1760
  call void @llvm.dbg.value(metadata i64 %297, i64 0, metadata !1375, metadata !649), !dbg !1437
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1382, metadata !649), !dbg !1445
  br label %476, !dbg !1762

; <label>:298:                                    ; preds = %155
  br i1 %14, label %299, label %308, !dbg !1763

; <label>:299:                                    ; preds = %298
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1393, metadata !649), !dbg !1764
  %300 = tail call i16** @__ctype_b_loc() #1, !dbg !1765
  %301 = load i16*, i16** %300, align 8, !dbg !1765, !tbaa !657
  %302 = zext i8 %159 to i64, !dbg !1765
  %303 = getelementptr inbounds i16, i16* %301, i64 %302, !dbg !1765
  %304 = load i16, i16* %303, align 2, !dbg !1765, !tbaa !1767
  %305 = lshr i16 %304, 14, !dbg !1768
  %306 = trunc i16 %305 to i8, !dbg !1768
  %307 = and i8 %306, 1, !dbg !1768
  call void @llvm.dbg.value(metadata i8 %307, i64 0, metadata !1396, metadata !649), !dbg !1769
  br label %368, !dbg !1770

; <label>:308:                                    ; preds = %298
  call void @llvm.lifetime.start(i64 8, i8* nonnull %18) #10, !dbg !1771
  store i64 0, i64* %10, align 8, !dbg !1772
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1393, metadata !649), !dbg !1764
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1396, metadata !649), !dbg !1769
  %309 = icmp eq i64 %156, -1, !dbg !1773
  br i1 %309, label %310, label %312, !dbg !1775, !llvm.loop !1776

; <label>:310:                                    ; preds = %308
  %311 = call i64 @strlen(i8* nonnull %2) #13, !dbg !1779
  call void @llvm.dbg.value(metadata i64 %311, i64 0, metadata !1368, metadata !649), !dbg !1431
  br label %312, !dbg !1780, !llvm.loop !1776

; <label>:312:                                    ; preds = %310, %308
  %313 = phi i64 [ %156, %308 ], [ %311, %310 ]
  br label %314, !dbg !1769

; <label>:314:                                    ; preds = %312, %355
  %315 = phi i64 [ %360, %355 ], [ 0, %312 ]
  %316 = phi i8 [ %359, %355 ], [ 1, %312 ]
  call void @llvm.dbg.value(metadata i8 %316, i64 0, metadata !1396, metadata !649), !dbg !1769
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !1393, metadata !649), !dbg !1764
  call void @llvm.dbg.value(metadata i64 %313, i64 0, metadata !1368, metadata !649), !dbg !1431
  call void @llvm.lifetime.start(i64 4, i8* nonnull %19) #10, !dbg !1781
  %317 = add i64 %315, %124, !dbg !1782
  %318 = getelementptr inbounds i8, i8* %2, i64 %317, !dbg !1783
  %319 = sub i64 %313, %317, !dbg !1784
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1397, metadata !985), !dbg !1785
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !1414, metadata !985), !dbg !1786
  %320 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %318, i64 %319, %struct.__mbstate_t* nonnull %11) #10, !dbg !1787
  call void @llvm.dbg.value(metadata i64 %320, i64 0, metadata !1417, metadata !649), !dbg !1788
  switch i64 %320, label %334 [
    i64 0, label %350
    i64 -1, label %347
    i64 -2, label %321
  ], !dbg !1789

; <label>:321:                                    ; preds = %314
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !1393, metadata !649), !dbg !1764
  %322 = icmp ugt i64 %313, %317, !dbg !1790
  br i1 %322, label %323, label %351, !dbg !1793

; <label>:323:                                    ; preds = %321
  br label %324, !dbg !1794

; <label>:324:                                    ; preds = %323, %330
  %325 = phi i64 [ %332, %330 ], [ %317, %323 ]
  %326 = phi i64 [ %331, %330 ], [ %315, %323 ]
  %327 = getelementptr inbounds i8, i8* %2, i64 %325, !dbg !1794
  %328 = load i8, i8* %327, align 1, !dbg !1794, !tbaa !824
  %329 = icmp eq i8 %328, 0, !dbg !1796
  br i1 %329, label %348, label %330, !dbg !1797

; <label>:330:                                    ; preds = %324
  %331 = add i64 %326, 1, !dbg !1799
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !1393, metadata !649), !dbg !1764
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !1393, metadata !649), !dbg !1764
  %332 = add i64 %331, %124, !dbg !1800
  %333 = icmp ult i64 %332, %313, !dbg !1790
  br i1 %333, label %324, label %348, !dbg !1793, !llvm.loop !1801

; <label>:334:                                    ; preds = %314
  %335 = icmp ugt i64 %320, 1, !dbg !1803
  %336 = and i1 %116, %335, !dbg !1807
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1418, metadata !649), !dbg !1808
  br i1 %336, label %337, label %355, !dbg !1807

; <label>:337:                                    ; preds = %334
  br label %338, !dbg !1809

; <label>:338:                                    ; preds = %337, %344
  %339 = phi i64 [ %345, %344 ], [ 1, %337 ]
  %340 = add i64 %339, %317, !dbg !1809
  %341 = getelementptr inbounds i8, i8* %2, i64 %340, !dbg !1810
  %342 = load i8, i8* %341, align 1, !dbg !1810, !tbaa !824
  %343 = sext i8 %342 to i32, !dbg !1810
  switch i32 %343, label %344 [
    i32 91, label %367
    i32 92, label %367
    i32 94, label %367
    i32 96, label %367
    i32 124, label %367
  ], !dbg !1811

; <label>:344:                                    ; preds = %338
  %345 = add nuw i64 %339, 1, !dbg !1812
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !1418, metadata !649), !dbg !1808
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !1418, metadata !649), !dbg !1808
  %346 = icmp ult i64 %345, %320, !dbg !1803
  br i1 %346, label %338, label %354, !dbg !1814, !llvm.loop !1816

; <label>:347:                                    ; preds = %314
  br label %351, !dbg !1769

; <label>:348:                                    ; preds = %324, %330
  %349 = phi i64 [ %331, %330 ], [ %326, %324 ]
  br label %351, !dbg !1769

; <label>:350:                                    ; preds = %314
  br label %351, !dbg !1769

; <label>:351:                                    ; preds = %350, %348, %347, %321
  %352 = phi i64 [ %315, %321 ], [ %315, %347 ], [ %349, %348 ], [ %315, %350 ]
  %353 = phi i8 [ 0, %321 ], [ 0, %347 ], [ 0, %348 ], [ %316, %350 ]
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1396, metadata !649), !dbg !1769
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1393, metadata !649), !dbg !1764
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10, !dbg !1819
  br label %364

; <label>:354:                                    ; preds = %344
  br label %355, !dbg !1820

; <label>:355:                                    ; preds = %354, %334
  %356 = load i32, i32* %12, align 4, !dbg !1820, !tbaa !751
  call void @llvm.dbg.value(metadata i32 %356, i64 0, metadata !1414, metadata !649), !dbg !1786
  %357 = call i32 @iswprint(i32 %356) #10, !dbg !1822
  %358 = icmp eq i32 %357, 0, !dbg !1822
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1396, metadata !649), !dbg !1769
  %359 = select i1 %358, i8 0, i8 %316, !dbg !1823
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1396, metadata !649), !dbg !1769
  %360 = add i64 %320, %315, !dbg !1824
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1393, metadata !649), !dbg !1764
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1396, metadata !649), !dbg !1769
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1393, metadata !649), !dbg !1764
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10, !dbg !1819
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1397, metadata !985), !dbg !1785
  %361 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #13, !dbg !1825
  %362 = icmp eq i32 %361, 0, !dbg !1826
  br i1 %362, label %314, label %363, !dbg !1827, !llvm.loop !1776

; <label>:363:                                    ; preds = %355
  br label %364, !dbg !1829

; <label>:364:                                    ; preds = %363, %351
  %365 = phi i8 [ %353, %351 ], [ %359, %363 ]
  %366 = phi i64 [ %352, %351 ], [ %360, %363 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #10, !dbg !1829
  br label %368

; <label>:367:                                    ; preds = %338, %338, %338, %338, %338
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1396, metadata !649), !dbg !1769
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1393, metadata !649), !dbg !1764
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10, !dbg !1819
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #10, !dbg !1829
  br label %649

; <label>:368:                                    ; preds = %364, %299
  %369 = phi i64 [ %156, %299 ], [ %313, %364 ]
  %370 = phi i64 [ 1, %299 ], [ %366, %364 ]
  %371 = phi i8 [ %307, %299 ], [ %365, %364 ]
  call void @llvm.dbg.value(metadata i8 %371, i64 0, metadata !1396, metadata !649), !dbg !1769
  call void @llvm.dbg.value(metadata i64 %370, i64 0, metadata !1393, metadata !649), !dbg !1764
  call void @llvm.dbg.value(metadata i64 %369, i64 0, metadata !1368, metadata !649), !dbg !1431
  %372 = and i8 %371, 1, !dbg !1830
  %373 = icmp ne i8 %372, 0, !dbg !1830
  call void @llvm.dbg.value(metadata i8 %372, i64 0, metadata !1392, metadata !649), !dbg !1526
  %374 = icmp ult i64 %370, 2, !dbg !1831
  %375 = or i1 %373, %113, !dbg !1832
  %376 = and i1 %374, %375, !dbg !1834
  br i1 %376, label %476, label %377, !dbg !1834

; <label>:377:                                    ; preds = %368
  %378 = add i64 %370, %124, !dbg !1835
  call void @llvm.dbg.value(metadata i64 %378, i64 0, metadata !1425, metadata !649), !dbg !1836
  br label %379, !dbg !1837

; <label>:379:                                    ; preds = %472, %377
  %380 = phi i64 [ %124, %377 ], [ %447, %472 ]
  %381 = phi i64 [ %125, %377 ], [ %473, %472 ]
  %382 = phi i8 [ %128, %377 ], [ %468, %472 ]
  %383 = phi i8 [ %159, %377 ], [ %475, %472 ]
  %384 = phi i8 [ %157, %377 ], [ %445, %472 ]
  %385 = phi i8 [ 0, %377 ], [ %446, %472 ]
  call void @llvm.dbg.value(metadata i8 %385, i64 0, metadata !1391, metadata !649), !dbg !1525
  call void @llvm.dbg.value(metadata i8 %384, i64 0, metadata !1390, metadata !649), !dbg !1524
  call void @llvm.dbg.value(metadata i8 %383, i64 0, metadata !1385, metadata !649), !dbg !1543
  call void @llvm.dbg.value(metadata i8 %382, i64 0, metadata !1382, metadata !649), !dbg !1445
  call void @llvm.dbg.value(metadata i64 %381, i64 0, metadata !1375, metadata !649), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %380, i64 0, metadata !1374, metadata !649), !dbg !1512
  br i1 %375, label %432, label %386, !dbg !1838

; <label>:386:                                    ; preds = %379
  br i1 %112, label %387, label %643, !dbg !1843

; <label>:387:                                    ; preds = %386
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1391, metadata !649), !dbg !1525
  %388 = and i8 %382, 1, !dbg !1847
  %389 = icmp eq i8 %388, 0, !dbg !1847
  %390 = and i1 %114, %389, !dbg !1850
  br i1 %390, label %391, label %407, !dbg !1850

; <label>:391:                                    ; preds = %387
  %392 = icmp ult i64 %381, %131, !dbg !1852
  br i1 %392, label %393, label %395, !dbg !1857

; <label>:393:                                    ; preds = %391
  %394 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !1859
  store i8 39, i8* %394, align 1, !dbg !1859, !tbaa !824
  br label %395, !dbg !1859

; <label>:395:                                    ; preds = %393, %391
  %396 = add i64 %381, 1, !dbg !1861
  call void @llvm.dbg.value(metadata i64 %396, i64 0, metadata !1375, metadata !649), !dbg !1437
  %397 = icmp ult i64 %396, %131, !dbg !1863
  br i1 %397, label %398, label %400, !dbg !1867

; <label>:398:                                    ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !1869
  store i8 36, i8* %399, align 1, !dbg !1869, !tbaa !824
  br label %400, !dbg !1869

; <label>:400:                                    ; preds = %398, %395
  %401 = add i64 %381, 2, !dbg !1871
  call void @llvm.dbg.value(metadata i64 %401, i64 0, metadata !1375, metadata !649), !dbg !1437
  %402 = icmp ult i64 %401, %131, !dbg !1873
  br i1 %402, label %403, label %405, !dbg !1877

; <label>:403:                                    ; preds = %400
  %404 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !1879
  store i8 39, i8* %404, align 1, !dbg !1879, !tbaa !824
  br label %405, !dbg !1879

; <label>:405:                                    ; preds = %403, %400
  %406 = add i64 %381, 3, !dbg !1881
  call void @llvm.dbg.value(metadata i64 %406, i64 0, metadata !1375, metadata !649), !dbg !1437
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1382, metadata !649), !dbg !1445
  br label %407, !dbg !1883

; <label>:407:                                    ; preds = %387, %405
  %408 = phi i64 [ %406, %405 ], [ %381, %387 ]
  %409 = phi i8 [ 1, %405 ], [ %382, %387 ]
  call void @llvm.dbg.value(metadata i8 %409, i64 0, metadata !1382, metadata !649), !dbg !1445
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !1375, metadata !649), !dbg !1437
  %410 = icmp ult i64 %408, %131, !dbg !1885
  br i1 %410, label %411, label %413, !dbg !1889

; <label>:411:                                    ; preds = %407
  %412 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !1891
  store i8 92, i8* %412, align 1, !dbg !1891, !tbaa !824
  br label %413, !dbg !1891

; <label>:413:                                    ; preds = %411, %407
  %414 = add i64 %408, 1, !dbg !1893
  call void @llvm.dbg.value(metadata i64 %414, i64 0, metadata !1375, metadata !649), !dbg !1437
  %415 = icmp ult i64 %414, %131, !dbg !1895
  br i1 %415, label %416, label %420, !dbg !1899

; <label>:416:                                    ; preds = %413
  %417 = lshr i8 %383, 6, !dbg !1901
  %418 = or i8 %417, 48, !dbg !1901
  %419 = getelementptr inbounds i8, i8* %0, i64 %414, !dbg !1901
  store i8 %418, i8* %419, align 1, !dbg !1901, !tbaa !824
  br label %420, !dbg !1901

; <label>:420:                                    ; preds = %416, %413
  %421 = add i64 %408, 2, !dbg !1903
  call void @llvm.dbg.value(metadata i64 %421, i64 0, metadata !1375, metadata !649), !dbg !1437
  %422 = icmp ult i64 %421, %131, !dbg !1905
  br i1 %422, label %423, label %428, !dbg !1909

; <label>:423:                                    ; preds = %420
  %424 = lshr i8 %383, 3, !dbg !1911
  %425 = and i8 %424, 7, !dbg !1911
  %426 = or i8 %425, 48, !dbg !1911
  %427 = getelementptr inbounds i8, i8* %0, i64 %421, !dbg !1911
  store i8 %426, i8* %427, align 1, !dbg !1911, !tbaa !824
  br label %428, !dbg !1911

; <label>:428:                                    ; preds = %423, %420
  %429 = add i64 %408, 3, !dbg !1913
  call void @llvm.dbg.value(metadata i64 %429, i64 0, metadata !1375, metadata !649), !dbg !1437
  %430 = and i8 %383, 7, !dbg !1915
  %431 = or i8 %430, 48, !dbg !1916
  call void @llvm.dbg.value(metadata i8 %431, i64 0, metadata !1385, metadata !649), !dbg !1543
  br label %441, !dbg !1917

; <label>:432:                                    ; preds = %379
  %433 = and i8 %384, 1, !dbg !1918
  %434 = icmp eq i8 %433, 0, !dbg !1918
  br i1 %434, label %441, label %435, !dbg !1920

; <label>:435:                                    ; preds = %432
  %436 = icmp ult i64 %381, %131, !dbg !1921
  br i1 %436, label %437, label %439, !dbg !1926

; <label>:437:                                    ; preds = %435
  %438 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !1928
  store i8 92, i8* %438, align 1, !dbg !1928, !tbaa !824
  br label %439, !dbg !1928

; <label>:439:                                    ; preds = %437, %435
  %440 = add i64 %381, 1, !dbg !1930
  call void @llvm.dbg.value(metadata i64 %440, i64 0, metadata !1375, metadata !649), !dbg !1437
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1390, metadata !649), !dbg !1524
  br label %441, !dbg !1932

; <label>:441:                                    ; preds = %432, %439, %428
  %442 = phi i64 [ %440, %439 ], [ %381, %432 ], [ %429, %428 ]
  %443 = phi i8 [ %382, %439 ], [ %382, %432 ], [ %409, %428 ]
  %444 = phi i8 [ %383, %439 ], [ %383, %432 ], [ %431, %428 ]
  %445 = phi i8 [ 0, %439 ], [ %384, %432 ], [ %384, %428 ]
  %446 = phi i8 [ %385, %439 ], [ %385, %432 ], [ 1, %428 ]
  call void @llvm.dbg.value(metadata i8 %446, i64 0, metadata !1391, metadata !649), !dbg !1525
  call void @llvm.dbg.value(metadata i8 %445, i64 0, metadata !1390, metadata !649), !dbg !1524
  call void @llvm.dbg.value(metadata i8 %444, i64 0, metadata !1385, metadata !649), !dbg !1543
  call void @llvm.dbg.value(metadata i8 %443, i64 0, metadata !1382, metadata !649), !dbg !1445
  call void @llvm.dbg.value(metadata i64 %442, i64 0, metadata !1375, metadata !649), !dbg !1437
  %447 = add i64 %380, 1, !dbg !1933
  %448 = icmp ugt i64 %378, %447, !dbg !1935
  br i1 %448, label %449, label %541, !dbg !1936

; <label>:449:                                    ; preds = %441
  %450 = and i8 %443, 1, !dbg !1937
  %451 = icmp ne i8 %450, 0, !dbg !1937
  %452 = and i8 %446, 1, !dbg !1941
  %453 = icmp eq i8 %452, 0, !dbg !1941
  %454 = and i1 %451, %453, !dbg !1937
  br i1 %454, label %455, label %466, !dbg !1937

; <label>:455:                                    ; preds = %449
  %456 = icmp ult i64 %442, %131, !dbg !1943
  br i1 %456, label %457, label %459, !dbg !1948

; <label>:457:                                    ; preds = %455
  %458 = getelementptr inbounds i8, i8* %0, i64 %442, !dbg !1950
  store i8 39, i8* %458, align 1, !dbg !1950, !tbaa !824
  br label %459, !dbg !1950

; <label>:459:                                    ; preds = %457, %455
  %460 = add i64 %442, 1, !dbg !1952
  call void @llvm.dbg.value(metadata i64 %460, i64 0, metadata !1375, metadata !649), !dbg !1437
  %461 = icmp ult i64 %460, %131, !dbg !1954
  br i1 %461, label %462, label %464, !dbg !1958

; <label>:462:                                    ; preds = %459
  %463 = getelementptr inbounds i8, i8* %0, i64 %460, !dbg !1960
  store i8 39, i8* %463, align 1, !dbg !1960, !tbaa !824
  br label %464, !dbg !1960

; <label>:464:                                    ; preds = %462, %459
  %465 = add i64 %442, 2, !dbg !1962
  call void @llvm.dbg.value(metadata i64 %465, i64 0, metadata !1375, metadata !649), !dbg !1437
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1382, metadata !649), !dbg !1445
  br label %466, !dbg !1964

; <label>:466:                                    ; preds = %449, %464
  %467 = phi i64 [ %465, %464 ], [ %442, %449 ]
  %468 = phi i8 [ 0, %464 ], [ %443, %449 ]
  call void @llvm.dbg.value(metadata i8 %468, i64 0, metadata !1382, metadata !649), !dbg !1445
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !1375, metadata !649), !dbg !1437
  %469 = icmp ult i64 %467, %131, !dbg !1966
  br i1 %469, label %470, label %472, !dbg !1970

; <label>:470:                                    ; preds = %466
  %471 = getelementptr inbounds i8, i8* %0, i64 %467, !dbg !1972
  store i8 %444, i8* %471, align 1, !dbg !1972, !tbaa !824
  br label %472, !dbg !1972

; <label>:472:                                    ; preds = %470, %466
  %473 = add i64 %467, 1, !dbg !1974
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !1375, metadata !649), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %447, i64 0, metadata !1374, metadata !649), !dbg !1512
  %474 = getelementptr inbounds i8, i8* %2, i64 %447, !dbg !1976
  %475 = load i8, i8* %474, align 1, !dbg !1976, !tbaa !824
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !1385, metadata !649), !dbg !1543
  br label %379, !dbg !1977, !llvm.loop !1979

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
  call void @llvm.dbg.value(metadata i64 %486, i64 0, metadata !1366, metadata !649), !dbg !1429
  call void @llvm.dbg.value(metadata i8 %485, i64 0, metadata !1392, metadata !649), !dbg !1526
  call void @llvm.dbg.value(metadata i8 %484, i64 0, metadata !1391, metadata !649), !dbg !1525
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !1390, metadata !649), !dbg !1524
  call void @llvm.dbg.value(metadata i8 %483, i64 0, metadata !1385, metadata !649), !dbg !1543
  call void @llvm.dbg.value(metadata i8 %482, i64 0, metadata !1383, metadata !649), !dbg !1446
  call void @llvm.dbg.value(metadata i8 %481, i64 0, metadata !1382, metadata !649), !dbg !1445
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !1368, metadata !649), !dbg !1431
  call void @llvm.dbg.value(metadata i64 %479, i64 0, metadata !1376, metadata !649), !dbg !1438
  call void @llvm.dbg.value(metadata i64 %478, i64 0, metadata !1375, metadata !649), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %477, i64 0, metadata !1374, metadata !649), !dbg !1512
  br i1 %107, label %488, label %487, !dbg !1982

; <label>:487:                                    ; preds = %476
  br i1 %117, label %489, label %501, !dbg !1984

; <label>:488:                                    ; preds = %476
  br i1 %20, label %501, label %489, !dbg !1985

; <label>:489:                                    ; preds = %488, %487
  %490 = lshr i8 %483, 5, !dbg !1986
  %491 = zext i8 %490 to i64, !dbg !1986
  %492 = getelementptr inbounds i32, i32* %6, i64 %491, !dbg !1988
  %493 = load i32, i32* %492, align 4, !dbg !1988, !tbaa !751
  %494 = and i8 %483, 31, !dbg !1989
  %495 = zext i8 %494 to i32, !dbg !1990
  %496 = shl i32 1, %495, !dbg !1991
  %497 = and i32 %493, %496, !dbg !1991
  %498 = icmp eq i32 %497, 0, !dbg !1991
  %499 = icmp eq i8 %157, 0, !dbg !1992
  %500 = and i1 %499, %498, !dbg !1993
  br i1 %500, label %542, label %503, !dbg !1993

; <label>:501:                                    ; preds = %488, %487
  %502 = icmp eq i8 %157, 0, !dbg !1992
  br i1 %502, label %542, label %503, !dbg !1994

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
  call void @llvm.dbg.value(metadata i64 %512, i64 0, metadata !1366, metadata !649), !dbg !1429
  call void @llvm.dbg.value(metadata i8 %511, i64 0, metadata !1392, metadata !649), !dbg !1526
  call void @llvm.dbg.value(metadata i8 %510, i64 0, metadata !1385, metadata !649), !dbg !1543
  call void @llvm.dbg.value(metadata i8 %509, i64 0, metadata !1383, metadata !649), !dbg !1446
  call void @llvm.dbg.value(metadata i8 %508, i64 0, metadata !1382, metadata !649), !dbg !1445
  call void @llvm.dbg.value(metadata i64 %507, i64 0, metadata !1368, metadata !649), !dbg !1431
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !1376, metadata !649), !dbg !1438
  call void @llvm.dbg.value(metadata i64 %505, i64 0, metadata !1375, metadata !649), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %504, i64 0, metadata !1374, metadata !649), !dbg !1512
  br i1 %112, label %513, label %644, !dbg !1996

; <label>:513:                                    ; preds = %503
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1391, metadata !649), !dbg !1525
  %514 = and i8 %508, 1, !dbg !1999
  %515 = icmp eq i8 %514, 0, !dbg !1999
  %516 = and i1 %114, %515, !dbg !2002
  br i1 %516, label %517, label %533, !dbg !2002

; <label>:517:                                    ; preds = %513
  %518 = icmp ult i64 %505, %512, !dbg !2004
  br i1 %518, label %519, label %521, !dbg !2009

; <label>:519:                                    ; preds = %517
  %520 = getelementptr inbounds i8, i8* %0, i64 %505, !dbg !2011
  store i8 39, i8* %520, align 1, !dbg !2011, !tbaa !824
  br label %521, !dbg !2011

; <label>:521:                                    ; preds = %519, %517
  %522 = add i64 %505, 1, !dbg !2013
  call void @llvm.dbg.value(metadata i64 %522, i64 0, metadata !1375, metadata !649), !dbg !1437
  %523 = icmp ult i64 %522, %512, !dbg !2015
  br i1 %523, label %524, label %526, !dbg !2019

; <label>:524:                                    ; preds = %521
  %525 = getelementptr inbounds i8, i8* %0, i64 %522, !dbg !2021
  store i8 36, i8* %525, align 1, !dbg !2021, !tbaa !824
  br label %526, !dbg !2021

; <label>:526:                                    ; preds = %524, %521
  %527 = add i64 %505, 2, !dbg !2023
  call void @llvm.dbg.value(metadata i64 %527, i64 0, metadata !1375, metadata !649), !dbg !1437
  %528 = icmp ult i64 %527, %512, !dbg !2025
  br i1 %528, label %529, label %531, !dbg !2029

; <label>:529:                                    ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527, !dbg !2031
  store i8 39, i8* %530, align 1, !dbg !2031, !tbaa !824
  br label %531, !dbg !2031

; <label>:531:                                    ; preds = %529, %526
  %532 = add i64 %505, 3, !dbg !2033
  call void @llvm.dbg.value(metadata i64 %532, i64 0, metadata !1375, metadata !649), !dbg !1437
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1382, metadata !649), !dbg !1445
  br label %533, !dbg !2035

; <label>:533:                                    ; preds = %513, %531
  %534 = phi i64 [ %532, %531 ], [ %505, %513 ]
  %535 = phi i8 [ 1, %531 ], [ %508, %513 ]
  call void @llvm.dbg.value(metadata i8 %535, i64 0, metadata !1382, metadata !649), !dbg !1445
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !1375, metadata !649), !dbg !1437
  %536 = icmp ult i64 %534, %512, !dbg !2037
  br i1 %536, label %537, label %539, !dbg !2041

; <label>:537:                                    ; preds = %533
  %538 = getelementptr inbounds i8, i8* %0, i64 %534, !dbg !2043
  store i8 92, i8* %538, align 1, !dbg !2043, !tbaa !824
  br label %539, !dbg !2043

; <label>:539:                                    ; preds = %533, %537
  %540 = add i64 %534, 1, !dbg !2045
  call void @llvm.dbg.value(metadata i64 %540, i64 0, metadata !1375, metadata !649), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !1366, metadata !649), !dbg !1429
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !1392, metadata !649), !dbg !1526
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !1391, metadata !649), !dbg !1525
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !1385, metadata !649), !dbg !1543
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !1383, metadata !649), !dbg !1446
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !1382, metadata !649), !dbg !1445
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !1368, metadata !649), !dbg !1431
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1376, metadata !649), !dbg !1438
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !1375, metadata !649), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !1374, metadata !649), !dbg !1512
  br label %569, !dbg !2047

; <label>:541:                                    ; preds = %441
  br label %542, !dbg !1429

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
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !1366, metadata !649), !dbg !1429
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !1392, metadata !649), !dbg !1526
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !1391, metadata !649), !dbg !1525
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !1385, metadata !649), !dbg !1543
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !1383, metadata !649), !dbg !1446
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !1382, metadata !649), !dbg !1445
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !1368, metadata !649), !dbg !1431
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1376, metadata !649), !dbg !1438
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !1375, metadata !649), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !1374, metadata !649), !dbg !1512
  %553 = and i8 %547, 1, !dbg !2047
  %554 = icmp ne i8 %553, 0, !dbg !2047
  %555 = and i8 %550, 1, !dbg !2051
  %556 = icmp eq i8 %555, 0, !dbg !2051
  %557 = and i1 %554, %556, !dbg !2047
  br i1 %557, label %558, label %569, !dbg !2047

; <label>:558:                                    ; preds = %542
  %559 = icmp ult i64 %544, %552, !dbg !2053
  br i1 %559, label %560, label %562, !dbg !2058

; <label>:560:                                    ; preds = %558
  %561 = getelementptr inbounds i8, i8* %0, i64 %544, !dbg !2060
  store i8 39, i8* %561, align 1, !dbg !2060, !tbaa !824
  br label %562, !dbg !2060

; <label>:562:                                    ; preds = %560, %558
  %563 = add i64 %544, 1, !dbg !2062
  call void @llvm.dbg.value(metadata i64 %563, i64 0, metadata !1375, metadata !649), !dbg !1437
  %564 = icmp ult i64 %563, %552, !dbg !2064
  br i1 %564, label %565, label %567, !dbg !2068

; <label>:565:                                    ; preds = %562
  %566 = getelementptr inbounds i8, i8* %0, i64 %563, !dbg !2070
  store i8 39, i8* %566, align 1, !dbg !2070, !tbaa !824
  br label %567, !dbg !2070

; <label>:567:                                    ; preds = %565, %562
  %568 = add i64 %544, 2, !dbg !2072
  call void @llvm.dbg.value(metadata i64 %568, i64 0, metadata !1375, metadata !649), !dbg !1437
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1382, metadata !649), !dbg !1445
  br label %569, !dbg !2074

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
  call void @llvm.dbg.value(metadata i8 %578, i64 0, metadata !1382, metadata !649), !dbg !1445
  call void @llvm.dbg.value(metadata i64 %577, i64 0, metadata !1375, metadata !649), !dbg !1437
  %579 = icmp ult i64 %577, %570, !dbg !2076
  br i1 %579, label %580, label %582, !dbg !2080

; <label>:580:                                    ; preds = %569
  %581 = getelementptr inbounds i8, i8* %0, i64 %577, !dbg !2082
  store i8 %572, i8* %581, align 1, !dbg !2082, !tbaa !824
  br label %582, !dbg !2082

; <label>:582:                                    ; preds = %580, %569
  %583 = add i64 %577, 1, !dbg !2084
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !1375, metadata !649), !dbg !1437
  %584 = and i8 %571, 1, !dbg !2086
  %585 = icmp eq i8 %584, 0, !dbg !2086
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1384, metadata !649), !dbg !1447
  %586 = select i1 %585, i8 0, i8 %130, !dbg !2088
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !1384, metadata !649), !dbg !1447
  br label %587, !dbg !2089

; <label>:587:                                    ; preds = %582, %209
  %588 = phi i64 [ %124, %209 ], [ %576, %582 ]
  %589 = phi i64 [ %125, %209 ], [ %583, %582 ]
  %590 = phi i64 [ %126, %209 ], [ %575, %582 ]
  %591 = phi i64 [ %156, %209 ], [ %574, %582 ]
  %592 = phi i8 [ %128, %209 ], [ %578, %582 ]
  %593 = phi i8 [ %129, %209 ], [ %573, %582 ]
  %594 = phi i8 [ %130, %209 ], [ %586, %582 ]
  %595 = phi i64 [ %131, %209 ], [ %570, %582 ]
  %596 = add i64 %588, 1, !dbg !2090
  call void @llvm.dbg.value(metadata i64 %596, i64 0, metadata !1374, metadata !649), !dbg !1512
  br label %123, !dbg !2092, !llvm.loop !2093

; <label>:597:                                    ; preds = %133, %135
  %598 = phi i64 [ %124, %133 ], [ -1, %135 ]
  %599 = icmp eq i64 %125, 0, !dbg !2096
  %600 = and i1 %114, %599, !dbg !2098
  %601 = xor i1 %600, true, !dbg !2098
  %602 = or i1 %112, %601, !dbg !2098
  br i1 %602, label %603, label %648, !dbg !2098

; <label>:603:                                    ; preds = %597
  %604 = and i1 %114, %112, !dbg !2099
  %605 = xor i1 %604, true, !dbg !2099
  %606 = and i8 %129, 1, !dbg !2101
  %607 = icmp eq i8 %606, 0, !dbg !2101
  %608 = or i1 %607, %605, !dbg !2099
  br i1 %608, label %618, label %609, !dbg !2099

; <label>:609:                                    ; preds = %603
  %610 = and i8 %130, 1, !dbg !2103
  %611 = icmp eq i8 %610, 0, !dbg !2103
  br i1 %611, label %614, label %612, !dbg !2106

; <label>:612:                                    ; preds = %609
  %613 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %126, i8* %2, i64 %598, i32 5, i32 %5, i32* %6, i8* %97, i8* %98), !dbg !2107
  br label %659, !dbg !2108

; <label>:614:                                    ; preds = %609
  %615 = icmp eq i64 %131, 0, !dbg !2109
  %616 = icmp ne i64 %126, 0, !dbg !2111
  %617 = and i1 %616, %615, !dbg !2113
  br i1 %617, label %27, label %618, !dbg !2113

; <label>:618:                                    ; preds = %603, %614
  %619 = icmp ne i8* %100, null, !dbg !2114
  %620 = and i1 %619, %112, !dbg !2116
  br i1 %620, label %621, label %638, !dbg !2116

; <label>:621:                                    ; preds = %618
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !1377, metadata !649), !dbg !1439
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1375, metadata !649), !dbg !1437
  %622 = load i8, i8* %100, align 1, !dbg !2117, !tbaa !824
  %623 = icmp eq i8 %622, 0, !dbg !2121
  br i1 %623, label %638, label %624, !dbg !2121

; <label>:624:                                    ; preds = %621
  br label %625, !dbg !2123

; <label>:625:                                    ; preds = %624, %632
  %626 = phi i8 [ %635, %632 ], [ %622, %624 ]
  %627 = phi i8* [ %634, %632 ], [ %100, %624 ]
  %628 = phi i64 [ %633, %632 ], [ %125, %624 ]
  %629 = icmp ult i64 %628, %131, !dbg !2123
  br i1 %629, label %630, label %632, !dbg !2127

; <label>:630:                                    ; preds = %625
  %631 = getelementptr inbounds i8, i8* %0, i64 %628, !dbg !2129
  store i8 %626, i8* %631, align 1, !dbg !2129, !tbaa !824
  br label %632, !dbg !2129

; <label>:632:                                    ; preds = %630, %625
  %633 = add i64 %628, 1, !dbg !2131
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !1375, metadata !649), !dbg !1437
  %634 = getelementptr inbounds i8, i8* %627, i64 1, !dbg !2133
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !1377, metadata !649), !dbg !1439
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !1377, metadata !649), !dbg !1439
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !1375, metadata !649), !dbg !1437
  %635 = load i8, i8* %634, align 1, !dbg !2117, !tbaa !824
  %636 = icmp eq i8 %635, 0, !dbg !2121
  br i1 %636, label %637, label %625, !dbg !2121, !llvm.loop !2135

; <label>:637:                                    ; preds = %632
  br label %638, !dbg !1437

; <label>:638:                                    ; preds = %637, %621, %618
  %639 = phi i64 [ %125, %618 ], [ %125, %621 ], [ %633, %637 ]
  call void @llvm.dbg.value(metadata i64 %639, i64 0, metadata !1375, metadata !649), !dbg !1437
  %640 = icmp ult i64 %639, %131, !dbg !2138
  br i1 %640, label %641, label %659, !dbg !2140

; <label>:641:                                    ; preds = %638
  %642 = getelementptr inbounds i8, i8* %0, i64 %639, !dbg !2141
  store i8 0, i8* %642, align 1, !dbg !2142, !tbaa !824
  br label %659, !dbg !2141

; <label>:643:                                    ; preds = %386
  br label %649, !dbg !1429

; <label>:644:                                    ; preds = %148, %161, %211, %225, %253, %255, %273, %276, %503
  %645 = phi i32 [ %96, %148 ], [ %96, %161 ], [ 2, %211 ], [ 5, %225 ], [ 2, %253 ], [ 2, %255 ], [ 2, %273 ], [ 2, %276 ], [ %96, %503 ]
  %646 = phi i64 [ %146, %148 ], [ %156, %161 ], [ %156, %211 ], [ %156, %225 ], [ %156, %253 ], [ %156, %255 ], [ %156, %273 ], [ %156, %276 ], [ %507, %503 ]
  %647 = phi i64 [ %131, %148 ], [ %131, %161 ], [ %131, %211 ], [ %131, %225 ], [ %131, %253 ], [ %131, %255 ], [ %131, %273 ], [ %131, %276 ], [ %512, %503 ]
  br label %649, !dbg !1429

; <label>:648:                                    ; preds = %597
  br label %649, !dbg !1429

; <label>:649:                                    ; preds = %648, %644, %643, %367
  %650 = phi i32 [ 2, %367 ], [ %96, %643 ], [ %645, %644 ], [ %96, %648 ]
  %651 = phi i64 [ %313, %367 ], [ %369, %643 ], [ %646, %644 ], [ %598, %648 ]
  %652 = phi i64 [ %131, %367 ], [ %131, %643 ], [ %647, %644 ], [ %131, %648 ]
  call void @llvm.dbg.value(metadata i64 %652, i64 0, metadata !1366, metadata !649), !dbg !1429
  call void @llvm.dbg.value(metadata i64 %651, i64 0, metadata !1368, metadata !649), !dbg !1431
  %653 = icmp ne i32 %650, 2, !dbg !2143
  %654 = icmp eq i8 %104, 0, !dbg !2145
  %655 = or i1 %653, %654, !dbg !2147
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !1369, metadata !649), !dbg !1432
  %656 = select i1 %655, i32 %650, i32 4, !dbg !2147
  call void @llvm.dbg.value(metadata i32 %656, i64 0, metadata !1369, metadata !649), !dbg !1432
  %657 = and i32 %5, -3, !dbg !2148
  %658 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %652, i8* %2, i64 %651, i32 %656, i32 %657, i32* null, i8* %97, i8* %98), !dbg !2149
  br label %659, !dbg !2150

; <label>:659:                                    ; preds = %638, %641, %649, %612
  %660 = phi i64 [ %658, %649 ], [ %613, %612 ], [ %639, %641 ], [ %639, %638 ]
  ret i64 %660, !dbg !2151
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !2152 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2156, metadata !649), !dbg !2160
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2157, metadata !649), !dbg !2161
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #10, !dbg !2162
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2158, metadata !649), !dbg !2163
  %4 = icmp eq i8* %3, %0, !dbg !2164
  br i1 %4, label %5, label %75, !dbg !2166

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #10, !dbg !2167
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !2159, metadata !649), !dbg !2168
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2169, metadata !649), !dbg !2185
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2183, metadata !649), !dbg !2188
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2184, metadata !649), !dbg !2189
  %7 = load i8, i8* %6, align 1, !tbaa !824
  %8 = sext i8 %7 to i32
  %9 = and i32 %8, -33, !dbg !2190
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !2190

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2193, metadata !649), !dbg !2207
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2205, metadata !649), !dbg !2211
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2206, metadata !649), !dbg !2212
  %11 = getelementptr inbounds i8, i8* %6, i64 1
  %12 = load i8, i8* %11, align 1, !tbaa !824
  %13 = sext i8 %12 to i32
  %14 = and i32 %13, -33, !dbg !2213
  %15 = icmp eq i32 %14, 84, !dbg !2213
  br i1 %15, label %16, label %72, !dbg !2213

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2216, metadata !649), !dbg !2229
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2227, metadata !649), !dbg !2233
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2228, metadata !649), !dbg !2234
  %17 = getelementptr inbounds i8, i8* %6, i64 2
  %18 = load i8, i8* %17, align 1, !tbaa !824
  %19 = sext i8 %18 to i32
  %20 = and i32 %19, -33, !dbg !2235
  %21 = icmp eq i32 %20, 70, !dbg !2235
  br i1 %21, label %22, label %72, !dbg !2235

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2238, metadata !649), !dbg !2250
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2248, metadata !649), !dbg !2254
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2249, metadata !649), !dbg !2255
  %23 = getelementptr inbounds i8, i8* %6, i64 3
  %24 = load i8, i8* %23, align 1, !tbaa !824
  %25 = icmp eq i8 %24, 45, !dbg !2256
  br i1 %25, label %26, label %72, !dbg !2259

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2261, metadata !649), !dbg !2272
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2270, metadata !649), !dbg !2276
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2271, metadata !649), !dbg !2277
  %27 = getelementptr inbounds i8, i8* %6, i64 4
  %28 = load i8, i8* %27, align 1, !tbaa !824
  %29 = icmp eq i8 %28, 56, !dbg !2278
  br i1 %29, label %30, label %72, !dbg !2281

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2283, metadata !649), !dbg !2293
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2291, metadata !649), !dbg !2297
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2292, metadata !649), !dbg !2298
  %31 = getelementptr inbounds i8, i8* %6, i64 5
  %32 = load i8, i8* %31, align 1, !tbaa !824
  %33 = icmp eq i8 %32, 0, !dbg !2299
  br i1 %33, label %34, label %72, !dbg !2302

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !2304, !tbaa !824
  %36 = icmp eq i8 %35, 96, !dbg !2305
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.51, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.52, i64 0, i64 0), !dbg !2304
  br label %75, !dbg !2306

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2193, metadata !649), !dbg !2307
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2205, metadata !649), !dbg !2311
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2206, metadata !649), !dbg !2312
  %39 = getelementptr inbounds i8, i8* %6, i64 1
  %40 = load i8, i8* %39, align 1, !tbaa !824
  %41 = sext i8 %40 to i32
  %42 = and i32 %41, -33, !dbg !2313
  %43 = icmp eq i32 %42, 66, !dbg !2313
  br i1 %43, label %44, label %72, !dbg !2313

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2216, metadata !649), !dbg !2314
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2227, metadata !649), !dbg !2316
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2228, metadata !649), !dbg !2317
  %45 = getelementptr inbounds i8, i8* %6, i64 2
  %46 = load i8, i8* %45, align 1, !tbaa !824
  %47 = icmp eq i8 %46, 49, !dbg !2318
  br i1 %47, label %48, label %72, !dbg !2320

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2238, metadata !649), !dbg !2322
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2248, metadata !649), !dbg !2324
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2249, metadata !649), !dbg !2325
  %49 = getelementptr inbounds i8, i8* %6, i64 3
  %50 = load i8, i8* %49, align 1, !tbaa !824
  %51 = icmp eq i8 %50, 56, !dbg !2326
  br i1 %51, label %52, label %72, !dbg !2327

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2261, metadata !649), !dbg !2328
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2270, metadata !649), !dbg !2330
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2271, metadata !649), !dbg !2331
  %53 = getelementptr inbounds i8, i8* %6, i64 4
  %54 = load i8, i8* %53, align 1, !tbaa !824
  %55 = icmp eq i8 %54, 48, !dbg !2332
  br i1 %55, label %56, label %72, !dbg !2333

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2283, metadata !649), !dbg !2334
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2291, metadata !649), !dbg !2336
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2292, metadata !649), !dbg !2337
  %57 = getelementptr inbounds i8, i8* %6, i64 5
  %58 = load i8, i8* %57, align 1, !tbaa !824
  %59 = icmp eq i8 %58, 51, !dbg !2338
  br i1 %59, label %60, label %72, !dbg !2339

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2340, metadata !649), !dbg !2349
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2347, metadata !649), !dbg !2353
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2348, metadata !649), !dbg !2354
  %61 = getelementptr inbounds i8, i8* %6, i64 6
  %62 = load i8, i8* %61, align 1, !tbaa !824
  %63 = icmp eq i8 %62, 48, !dbg !2355
  br i1 %63, label %64, label %72, !dbg !2358

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2360, metadata !649), !dbg !2368
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2366, metadata !649), !dbg !2372
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2367, metadata !649), !dbg !2373
  %65 = getelementptr inbounds i8, i8* %6, i64 7
  %66 = load i8, i8* %65, align 1, !tbaa !824
  %67 = icmp eq i8 %66, 0, !dbg !2374
  br i1 %67, label %68, label %72, !dbg !2377

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !2378, !tbaa !824
  %70 = icmp eq i8 %69, 96, !dbg !2379
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.53, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), !dbg !2378
  br label %75, !dbg !2380

; <label>:72:                                     ; preds = %5, %30, %26, %22, %16, %10, %64, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !2381
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.50, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.49, i64 0, i64 0), !dbg !2382
  br label %75, !dbg !2383

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !2384
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
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2385 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2389, metadata !649), !dbg !2392
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2390, metadata !649), !dbg !2393
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2391, metadata !649), !dbg !2394
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2395, metadata !649) #10, !dbg !2408
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2400, metadata !649) #10, !dbg !2410
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !2401, metadata !649) #10, !dbg !2411
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2402, metadata !649) #10, !dbg !2412
  %4 = icmp ne %struct.quoting_options* %2, null, !dbg !2413
  %5 = select i1 %4, %struct.quoting_options* %2, %struct.quoting_options* @default_quoting_options, !dbg !2413
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2403, metadata !649) #10, !dbg !2414
  %6 = tail call i32* @__errno_location() #1, !dbg !2415
  %7 = load i32, i32* %6, align 4, !dbg !2415, !tbaa !751
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !2404, metadata !649) #10, !dbg !2416
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2417
  %9 = load i32, i32* %8, align 4, !dbg !2417, !tbaa !1297
  %10 = or i32 %9, 1, !dbg !2418
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2405, metadata !649) #10, !dbg !2419
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2420
  %12 = load i32, i32* %11, align 8, !dbg !2420, !tbaa !1235
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2421
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2422
  %15 = load i8*, i8** %14, align 8, !dbg !2422, !tbaa !1324
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2423
  %17 = load i8*, i8** %16, align 8, !dbg !2423, !tbaa !1327
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #10, !dbg !2424
  %19 = add i64 %18, 1, !dbg !2425
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2406, metadata !649) #10, !dbg !2426
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2427, metadata !649) #10, !dbg !2432
  %20 = tail call noalias i8* @xmalloc(i64 %19) #10, !dbg !2434
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !2407, metadata !649) #10, !dbg !2435
  %21 = load i32, i32* %11, align 8, !dbg !2436, !tbaa !1235
  %22 = load i8*, i8** %14, align 8, !dbg !2437, !tbaa !1324
  %23 = load i8*, i8** %16, align 8, !dbg !2438, !tbaa !1327
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #10, !dbg !2439
  store i32 %7, i32* %6, align 4, !dbg !2440, !tbaa !751
  ret i8* %20, !dbg !2441
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2396 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2395, metadata !649), !dbg !2442
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2400, metadata !649), !dbg !2443
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !2401, metadata !649), !dbg !2444
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2402, metadata !649), !dbg !2445
  %5 = icmp ne %struct.quoting_options* %3, null, !dbg !2446
  %6 = select i1 %5, %struct.quoting_options* %3, %struct.quoting_options* @default_quoting_options, !dbg !2446
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2403, metadata !649), !dbg !2447
  %7 = tail call i32* @__errno_location() #1, !dbg !2448
  %8 = load i32, i32* %7, align 4, !dbg !2448, !tbaa !751
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !2404, metadata !649), !dbg !2449
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2450
  %10 = load i32, i32* %9, align 4, !dbg !2450, !tbaa !1297
  %11 = icmp ne i64* %2, null, !dbg !2451
  %12 = xor i1 %11, true, !dbg !2451
  %13 = zext i1 %12 to i32, !dbg !2451
  %14 = or i32 %10, %13, !dbg !2452
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !2405, metadata !649), !dbg !2453
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2454
  %16 = load i32, i32* %15, align 8, !dbg !2454, !tbaa !1235
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2455
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2456
  %19 = load i8*, i8** %18, align 8, !dbg !2456, !tbaa !1324
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2457
  %21 = load i8*, i8** %20, align 8, !dbg !2457, !tbaa !1327
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !2458
  %23 = add i64 %22, 1, !dbg !2459
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2406, metadata !649), !dbg !2460
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2427, metadata !649) #10, !dbg !2461
  %24 = tail call noalias i8* @xmalloc(i64 %23) #10, !dbg !2463
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !2407, metadata !649), !dbg !2464
  %25 = load i32, i32* %15, align 8, !dbg !2465, !tbaa !1235
  %26 = load i8*, i8** %18, align 8, !dbg !2466, !tbaa !1324
  %27 = load i8*, i8** %20, align 8, !dbg !2467, !tbaa !1327
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !2468
  store i32 %8, i32* %7, align 4, !dbg !2469, !tbaa !751
  br i1 %11, label %29, label %30, !dbg !2470

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2471, !tbaa !2473
  br label %30, !dbg !2474

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !2475
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !2476 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2480, !tbaa !657
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !2478, metadata !649), !dbg !2481
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2479, metadata !649), !dbg !2482
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2479, metadata !649), !dbg !2482
  %2 = load i32, i32* @nslots, align 4, !dbg !2483, !tbaa !751
  %3 = icmp sgt i32 %2, 1, !dbg !2487
  br i1 %3, label %4, label %14, !dbg !2488

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !2490

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !2490
  %8 = load i8*, i8** %7, align 8, !dbg !2490, !tbaa !2491
  tail call void @free(i8* %8) #10, !dbg !2493
  %9 = add nuw i64 %6, 1, !dbg !2494
  %10 = load i32, i32* @nslots, align 4, !dbg !2483, !tbaa !751
  %11 = sext i32 %10 to i64, !dbg !2487
  %12 = icmp slt i64 %9, %11, !dbg !2487
  br i1 %12, label %5, label %13, !dbg !2488, !llvm.loop !2496

; <label>:13:                                     ; preds = %5
  br label %14, !dbg !2499

; <label>:14:                                     ; preds = %13, %0
  %15 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2499
  %16 = load i8*, i8** %15, align 8, !dbg !2499, !tbaa !2491
  %17 = icmp eq i8* %16, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2501
  br i1 %17, label %19, label %18, !dbg !2502

; <label>:18:                                     ; preds = %14
  tail call void @free(i8* %16) #10, !dbg !2503
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2505, !tbaa !2506
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2507, !tbaa !2491
  br label %19, !dbg !2508

; <label>:19:                                     ; preds = %14, %18
  %20 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2509
  br i1 %20, label %23, label %21, !dbg !2511

; <label>:21:                                     ; preds = %19
  %22 = bitcast %struct.slotvec* %1 to i8*, !dbg !2512
  tail call void @free(i8* %22) #10, !dbg !2514
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2515, !tbaa !657
  br label %23, !dbg !2516

; <label>:23:                                     ; preds = %19, %21
  store i32 1, i32* @nslots, align 4, !dbg !2517, !tbaa !751
  ret void, !dbg !2518
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !2519 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2523, metadata !649), !dbg !2525
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2524, metadata !649), !dbg !2526
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2527
  ret i8* %3, !dbg !2528
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !2529 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2533, metadata !649), !dbg !2547
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2534, metadata !649), !dbg !2548
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2535, metadata !649), !dbg !2549
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2536, metadata !649), !dbg !2550
  %5 = tail call i32* @__errno_location() #1, !dbg !2551
  %6 = load i32, i32* %5, align 4, !dbg !2551, !tbaa !751
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !2537, metadata !649), !dbg !2552
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2553, !tbaa !657
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !2538, metadata !649), !dbg !2554
  %8 = icmp slt i32 %0, 0, !dbg !2555
  br i1 %8, label %9, label %10, !dbg !2557

; <label>:9:                                      ; preds = %4
  tail call void @abort() #14, !dbg !2558
  unreachable, !dbg !2558

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2559, !tbaa !751
  %12 = icmp sgt i32 %11, %0, !dbg !2560
  br i1 %12, label %34, label %13, !dbg !2561

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2562
  %15 = icmp ugt i32 %0, 2147483646, !dbg !2563
  br i1 %15, label %16, label %17, !dbg !2565

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !2566
  unreachable, !dbg !2566

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !2567
  %19 = select i1 %14, i8* null, i8* %18, !dbg !2567
  %20 = add nsw i32 %0, 1, !dbg !2569
  %21 = sext i32 %20 to i64, !dbg !2570
  %22 = shl nsw i64 %21, 4, !dbg !2571
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #10, !dbg !2572
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2572
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !2538, metadata !649), !dbg !2554
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2573, !tbaa !657
  br i1 %14, label %25, label %26, !dbg !2574

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !2575, !tbaa.struct !2577
  br label %26, !dbg !2578

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2579, !tbaa !751
  %28 = sext i32 %27 to i64, !dbg !2580
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2580
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2581
  %31 = sub nsw i32 %20, %27, !dbg !2582
  %32 = sext i32 %31 to i64, !dbg !2583
  %33 = shl nsw i64 %32, 4, !dbg !2584
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !2581
  store i32 %20, i32* @nslots, align 4, !dbg !2585, !tbaa !751
  br label %34, !dbg !2586

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !2538, metadata !649), !dbg !2554
  %36 = sext i32 %0 to i64, !dbg !2587
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2588
  %38 = load i64, i64* %37, align 8, !dbg !2588, !tbaa !2506
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !2542, metadata !649), !dbg !2589
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2590
  %40 = load i8*, i8** %39, align 8, !dbg !2590, !tbaa !2491
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !2544, metadata !649), !dbg !2591
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2592
  %42 = load i32, i32* %41, align 4, !dbg !2592, !tbaa !1297
  %43 = or i32 %42, 1, !dbg !2593
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !2545, metadata !649), !dbg !2594
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2595
  %45 = load i32, i32* %44, align 8, !dbg !2595, !tbaa !1235
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2596
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2597
  %48 = load i8*, i8** %47, align 8, !dbg !2597, !tbaa !1324
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2598
  %50 = load i8*, i8** %49, align 8, !dbg !2598, !tbaa !1327
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !2599
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !2546, metadata !649), !dbg !2600
  %52 = icmp ugt i64 %38, %51, !dbg !2601
  br i1 %52, label %63, label %53, !dbg !2603

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !2604
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2542, metadata !649), !dbg !2589
  store i64 %54, i64* %37, align 8, !dbg !2606, !tbaa !2506
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2607
  br i1 %55, label %57, label %56, !dbg !2609

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #10, !dbg !2610
  br label %57, !dbg !2610

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2427, metadata !649) #10, !dbg !2611
  %58 = tail call noalias i8* @xmalloc(i64 %54) #10, !dbg !2613
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !2544, metadata !649), !dbg !2591
  store i8* %58, i8** %39, align 8, !dbg !2614, !tbaa !2491
  %59 = load i32, i32* %44, align 8, !dbg !2615, !tbaa !1235
  %60 = load i8*, i8** %47, align 8, !dbg !2616, !tbaa !1324
  %61 = load i8*, i8** %49, align 8, !dbg !2617, !tbaa !1327
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !2618
  br label %63, !dbg !2619

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !2544, metadata !649), !dbg !2591
  store i32 %6, i32* %5, align 4, !dbg !2620, !tbaa !751
  ret i8* %64, !dbg !2621
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #8

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #8

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2622 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2626, metadata !649), !dbg !2629
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2627, metadata !649), !dbg !2630
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2628, metadata !649), !dbg !2631
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2632
  ret i8* %4, !dbg !2633
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !2634 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2638, metadata !649), !dbg !2639
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2523, metadata !649) #10, !dbg !2640
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2524, metadata !649) #10, !dbg !2642
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2643
  ret i8* %2, !dbg !2644
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !2645 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2649, metadata !649), !dbg !2651
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2650, metadata !649), !dbg !2652
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2626, metadata !649) #10, !dbg !2653
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2627, metadata !649) #10, !dbg !2655
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2628, metadata !649) #10, !dbg !2656
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2657
  ret i8* %3, !dbg !2658
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !2659 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2667, metadata !2673), !dbg !2674
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2663, metadata !649), !dbg !2676
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2664, metadata !649), !dbg !2677
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2665, metadata !649), !dbg !2678
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2679
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !2679
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2666, metadata !985), !dbg !2680
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2672, metadata !649) #10, !dbg !2681
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2682
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !2682
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2667, metadata !649) #10, !dbg !2674
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2667, metadata !2683) #10, !dbg !2674
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2674
  %8 = icmp eq i32 %1, 10, !dbg !2684
  br i1 %8, label %9, label %10, !dbg !2686

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14, !dbg !2687, !noalias !2688
  unreachable, !dbg !2687

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2667, metadata !2683) #10, !dbg !2674
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2691
  store i32 %1, i32* %11, align 8, !dbg !2691, !alias.scope !2688
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2691
  %13 = bitcast i32* %12 to i8*, !dbg !2691
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !2691
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !2692
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2666, metadata !985), !dbg !2680
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2693
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !2694
  ret i8* %14, !dbg !2695
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !2696 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2667, metadata !2673), !dbg !2705
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2700, metadata !649), !dbg !2707
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2701, metadata !649), !dbg !2708
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2702, metadata !649), !dbg !2709
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2703, metadata !649), !dbg !2710
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2711
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10, !dbg !2711
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2704, metadata !985), !dbg !2712
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2672, metadata !649) #10, !dbg !2713
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2714
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !2714
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2667, metadata !649) #10, !dbg !2705
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2667, metadata !2683) #10, !dbg !2705
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2705
  %9 = icmp eq i32 %1, 10, !dbg !2715
  br i1 %9, label %10, label %11, !dbg !2716

; <label>:10:                                     ; preds = %4
  tail call void @abort() #14, !dbg !2717, !noalias !2718
  unreachable, !dbg !2717

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2667, metadata !2683) #10, !dbg !2705
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2721
  store i32 %1, i32* %12, align 8, !dbg !2721, !alias.scope !2718
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2721
  %14 = bitcast i32* %13 to i8*, !dbg !2721
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #10, !dbg !2721
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !2722
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2704, metadata !985), !dbg !2712
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !2723
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10, !dbg !2724
  ret i8* %15, !dbg !2725
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !2726 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !2667, metadata !2673), !dbg !2732
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2730, metadata !649), !dbg !2735
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2731, metadata !649), !dbg !2736
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2663, metadata !649) #10, !dbg !2737
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2664, metadata !649) #10, !dbg !2738
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2665, metadata !649) #10, !dbg !2739
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2740
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10, !dbg !2740
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2666, metadata !985) #10, !dbg !2741
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2672, metadata !649) #10, !dbg !2742
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !2743
  call void @llvm.lifetime.start(i64 52, i8* nonnull %6), !dbg !2743
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2667, metadata !649) #10, !dbg !2732
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2667, metadata !2683) #10, !dbg !2732
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !2732
  %7 = icmp eq i32 %0, 10, !dbg !2744
  br i1 %7, label %8, label %9, !dbg !2745

; <label>:8:                                      ; preds = %2
  tail call void @abort() #14, !dbg !2746, !noalias !2747
  unreachable, !dbg !2746

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2667, metadata !2683) #10, !dbg !2732
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2750
  store i32 %0, i32* %10, align 8, !dbg !2750, !alias.scope !2747
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2750
  %12 = bitcast i32* %11 to i8*, !dbg !2750
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #10, !dbg !2750
  call void @llvm.lifetime.end(i64 52, i8* nonnull %6), !dbg !2751
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2666, metadata !985) #10, !dbg !2741
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !2752
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10, !dbg !2753
  ret i8* %13, !dbg !2754
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2755 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2667, metadata !2673), !dbg !2762
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2759, metadata !649), !dbg !2765
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2760, metadata !649), !dbg !2766
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2761, metadata !649), !dbg !2767
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2700, metadata !649) #10, !dbg !2768
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2701, metadata !649) #10, !dbg !2769
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2702, metadata !649) #10, !dbg !2770
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2703, metadata !649) #10, !dbg !2771
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2772
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !2772
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2704, metadata !985) #10, !dbg !2773
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2672, metadata !649) #10, !dbg !2774
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2775
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !2775
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2667, metadata !649) #10, !dbg !2762
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2667, metadata !2683) #10, !dbg !2762
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2762
  %8 = icmp eq i32 %0, 10, !dbg !2776
  br i1 %8, label %9, label %10, !dbg !2777

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14, !dbg !2778, !noalias !2779
  unreachable, !dbg !2778

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2667, metadata !2683) #10, !dbg !2762
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2782
  store i32 %0, i32* %11, align 8, !dbg !2782, !alias.scope !2779
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2782
  %13 = bitcast i32* %12 to i8*, !dbg !2782
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !2782
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !2783
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2704, metadata !985) #10, !dbg !2773
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #10, !dbg !2784
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !2785
  ret i8* %14, !dbg !2786
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !2787 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2791, metadata !649), !dbg !2795
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2792, metadata !649), !dbg !2796
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2793, metadata !649), !dbg !2797
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2798
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10, !dbg !2798
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2799, !tbaa.struct !2800
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2794, metadata !985), !dbg !2801
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1255, metadata !649), !dbg !2802
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1256, metadata !649), !dbg !2804
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1257, metadata !649), !dbg !2805
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1258, metadata !649), !dbg !2806
  %6 = lshr i8 %2, 5, !dbg !2807
  %7 = zext i8 %6 to i64, !dbg !2807
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2808
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1259, metadata !649), !dbg !2809
  %9 = and i8 %2, 31, !dbg !2810
  %10 = zext i8 %9 to i32, !dbg !2811
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1261, metadata !649), !dbg !2812
  %11 = load i32, i32* %8, align 4, !dbg !2813, !tbaa !751
  %12 = lshr i32 %11, %10, !dbg !2814
  %13 = and i32 %12, 1, !dbg !2815
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1262, metadata !649), !dbg !2816
  %14 = xor i32 %13, 1, !dbg !2817
  %15 = shl i32 %14, %10, !dbg !2818
  %16 = xor i32 %15, %11, !dbg !2819
  store i32 %16, i32* %8, align 4, !dbg !2819, !tbaa !751
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2794, metadata !985), !dbg !2801
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2820
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10, !dbg !2821
  ret i8* %17, !dbg !2822
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !2823 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2827, metadata !649), !dbg !2829
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2828, metadata !649), !dbg !2830
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2791, metadata !649) #10, !dbg !2831
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2792, metadata !649) #10, !dbg !2833
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2793, metadata !649) #10, !dbg !2834
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2835
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #10, !dbg !2835
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2836, !tbaa.struct !2800
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2794, metadata !985) #10, !dbg !2837
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1255, metadata !649) #10, !dbg !2838
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1256, metadata !649) #10, !dbg !2840
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1257, metadata !649) #10, !dbg !2841
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1258, metadata !649) #10, !dbg !2842
  %5 = lshr i8 %1, 5, !dbg !2843
  %6 = zext i8 %5 to i64, !dbg !2843
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2844
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !1259, metadata !649) #10, !dbg !2845
  %8 = and i8 %1, 31, !dbg !2846
  %9 = zext i8 %8 to i32, !dbg !2847
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1261, metadata !649) #10, !dbg !2848
  %10 = load i32, i32* %7, align 4, !dbg !2849, !tbaa !751
  %11 = lshr i32 %10, %9, !dbg !2850
  %12 = and i32 %11, 1, !dbg !2851
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !1262, metadata !649) #10, !dbg !2852
  %13 = xor i32 %12, 1, !dbg !2853
  %14 = shl i32 %13, %9, !dbg !2854
  %15 = xor i32 %14, %10, !dbg !2855
  store i32 %15, i32* %7, align 4, !dbg !2855, !tbaa !751
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2794, metadata !985) #10, !dbg !2837
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #10, !dbg !2856
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #10, !dbg !2857
  ret i8* %16, !dbg !2858
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !2859 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2861, metadata !649), !dbg !2862
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2827, metadata !649) #10, !dbg !2863
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2828, metadata !649) #10, !dbg !2865
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2791, metadata !649) #10, !dbg !2866
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2792, metadata !649) #10, !dbg !2868
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2793, metadata !649) #10, !dbg !2869
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2870
  call void @llvm.lifetime.start(i64 56, i8* nonnull %3) #10, !dbg !2870
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2871, !tbaa.struct !2800
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2794, metadata !985) #10, !dbg !2872
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1255, metadata !649) #10, !dbg !2873
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1256, metadata !649) #10, !dbg !2875
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1257, metadata !649) #10, !dbg !2876
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1258, metadata !649) #10, !dbg !2877
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2878
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !1259, metadata !649) #10, !dbg !2879
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1261, metadata !649) #10, !dbg !2880
  %5 = load i32, i32* %4, align 4, !dbg !2881, !tbaa !751
  %6 = or i32 %5, 67108864, !dbg !2882
  store i32 %6, i32* %4, align 4, !dbg !2882, !tbaa !751
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2794, metadata !985) #10, !dbg !2872
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #10, !dbg !2883
  call void @llvm.lifetime.end(i64 56, i8* nonnull %3) #10, !dbg !2884
  ret i8* %7, !dbg !2885
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !2886 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2888, metadata !649), !dbg !2890
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2889, metadata !649), !dbg !2891
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2791, metadata !649) #10, !dbg !2892
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2792, metadata !649) #10, !dbg !2894
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2793, metadata !649) #10, !dbg !2895
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2896
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #10, !dbg !2896
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2897, !tbaa.struct !2800
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2794, metadata !985) #10, !dbg !2898
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1255, metadata !649) #10, !dbg !2899
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1256, metadata !649) #10, !dbg !2901
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1257, metadata !649) #10, !dbg !2902
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1258, metadata !649) #10, !dbg !2903
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2904
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !1259, metadata !649) #10, !dbg !2905
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1261, metadata !649) #10, !dbg !2906
  %6 = load i32, i32* %5, align 4, !dbg !2907, !tbaa !751
  %7 = or i32 %6, 67108864, !dbg !2908
  store i32 %7, i32* %5, align 4, !dbg !2908, !tbaa !751
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2794, metadata !985) #10, !dbg !2898
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #10, !dbg !2909
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #10, !dbg !2910
  ret i8* %8, !dbg !2911
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !2912 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2667, metadata !2673), !dbg !2918
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2914, metadata !649), !dbg !2920
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2915, metadata !649), !dbg !2921
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2916, metadata !649), !dbg !2922
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2923
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10, !dbg !2923
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2672, metadata !649) #10, !dbg !2924
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2925
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !2925
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2667, metadata !649) #10, !dbg !2918
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2667, metadata !2683) #10, !dbg !2918
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2918
  %9 = icmp eq i32 %1, 10, !dbg !2926
  br i1 %9, label %10, label %11, !dbg !2927

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !2928, !noalias !2929
  unreachable, !dbg !2928

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2667, metadata !2683) #10, !dbg !2918
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !2932
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !2932
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !2933
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2934
  store i32 %1, i32* %13, align 8, !dbg !2934
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2934
  %15 = bitcast i32* %14 to i8*, !dbg !2934
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !2934
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2917, metadata !985), !dbg !2935
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1255, metadata !649), !dbg !2936
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1256, metadata !649), !dbg !2938
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1257, metadata !649), !dbg !2939
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1258, metadata !649), !dbg !2940
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !2941
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !1259, metadata !649), !dbg !2942
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1261, metadata !649), !dbg !2943
  %17 = load i32, i32* %16, align 4, !dbg !2944, !tbaa !751
  %18 = or i32 %17, 67108864, !dbg !2945
  store i32 %18, i32* %16, align 4, !dbg !2945, !tbaa !751
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2917, metadata !985), !dbg !2935
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2946
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10, !dbg !2947
  ret i8* %19, !dbg !2948
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !2949 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2953, metadata !649), !dbg !2957
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2954, metadata !649), !dbg !2958
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2955, metadata !649), !dbg !2959
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2956, metadata !649), !dbg !2960
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2961, metadata !649) #10, !dbg !2971
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2966, metadata !649) #10, !dbg !2973
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2967, metadata !649) #10, !dbg !2974
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2968, metadata !649) #10, !dbg !2975
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2969, metadata !649) #10, !dbg !2976
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2977
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !2977
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2978, !tbaa.struct !2800
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2970, metadata !985) #10, !dbg !2979
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1305, metadata !649) #10, !dbg !2980
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1306, metadata !649) #10, !dbg !2982
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1307, metadata !649) #10, !dbg !2983
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1305, metadata !649) #10, !dbg !2980
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1305, metadata !649) #10, !dbg !2980
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2984
  store i32 10, i32* %7, align 8, !dbg !2985, !tbaa !1235
  %8 = icmp ne i8* %1, null, !dbg !2986
  %9 = icmp ne i8* %2, null, !dbg !2987
  %10 = and i1 %8, %9, !dbg !2988
  br i1 %10, label %12, label %11, !dbg !2988

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14, !dbg !2989
  unreachable, !dbg !2989

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2990
  store i8* %1, i8** %13, align 8, !dbg !2991, !tbaa !1324
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2992
  store i8* %2, i8** %14, align 8, !dbg !2993, !tbaa !1327
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2970, metadata !985) #10, !dbg !2979
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #10, !dbg !2994
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !2995
  ret i8* %15, !dbg !2996
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !2962 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2961, metadata !649), !dbg !2997
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2966, metadata !649), !dbg !2998
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2967, metadata !649), !dbg !2999
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2968, metadata !649), !dbg !3000
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !2969, metadata !649), !dbg !3001
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3002
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10, !dbg !3002
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !3003, !tbaa.struct !2800
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2970, metadata !985), !dbg !3004
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1305, metadata !649) #10, !dbg !3005
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1306, metadata !649) #10, !dbg !3007
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1307, metadata !649) #10, !dbg !3008
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1305, metadata !649) #10, !dbg !3005
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1305, metadata !649) #10, !dbg !3005
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3009
  store i32 10, i32* %8, align 8, !dbg !3010, !tbaa !1235
  %9 = icmp ne i8* %1, null, !dbg !3011
  %10 = icmp ne i8* %2, null, !dbg !3012
  %11 = and i1 %9, %10, !dbg !3013
  br i1 %11, label %13, label %12, !dbg !3013

; <label>:12:                                     ; preds = %5
  tail call void @abort() #14, !dbg !3014
  unreachable, !dbg !3014

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3015
  store i8* %1, i8** %14, align 8, !dbg !3016, !tbaa !1324
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3017
  store i8* %2, i8** %15, align 8, !dbg !3018, !tbaa !1327
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2970, metadata !985), !dbg !3004
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3019
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10, !dbg !3020
  ret i8* %16, !dbg !3021
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !3022 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3026, metadata !649), !dbg !3029
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3027, metadata !649), !dbg !3030
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3028, metadata !649), !dbg !3031
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2953, metadata !649) #10, !dbg !3032
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2954, metadata !649) #10, !dbg !3034
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2955, metadata !649) #10, !dbg !3035
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2956, metadata !649) #10, !dbg !3036
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2961, metadata !649) #10, !dbg !3037
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2966, metadata !649) #10, !dbg !3039
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2967, metadata !649) #10, !dbg !3040
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2968, metadata !649) #10, !dbg !3041
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2969, metadata !649) #10, !dbg !3042
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3043
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10, !dbg !3043
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3044, !tbaa.struct !2800
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2970, metadata !985) #10, !dbg !3045
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1305, metadata !649) #10, !dbg !3046
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1306, metadata !649) #10, !dbg !3048
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1307, metadata !649) #10, !dbg !3049
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1305, metadata !649) #10, !dbg !3046
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1305, metadata !649) #10, !dbg !3046
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3050
  store i32 10, i32* %6, align 8, !dbg !3051, !tbaa !1235
  %7 = icmp ne i8* %0, null, !dbg !3052
  %8 = icmp ne i8* %1, null, !dbg !3053
  %9 = and i1 %7, %8, !dbg !3054
  br i1 %9, label %11, label %10, !dbg !3054

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !3055
  unreachable, !dbg !3055

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3056
  store i8* %0, i8** %12, align 8, !dbg !3057, !tbaa !1324
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3058
  store i8* %1, i8** %13, align 8, !dbg !3059, !tbaa !1327
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2970, metadata !985) #10, !dbg !3045
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !3060
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10, !dbg !3061
  ret i8* %14, !dbg !3062
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !3063 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3067, metadata !649), !dbg !3071
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3068, metadata !649), !dbg !3072
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3069, metadata !649), !dbg !3073
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3070, metadata !649), !dbg !3074
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2961, metadata !649) #10, !dbg !3075
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2966, metadata !649) #10, !dbg !3077
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2967, metadata !649) #10, !dbg !3078
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2968, metadata !649) #10, !dbg !3079
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2969, metadata !649) #10, !dbg !3080
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3081
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !3081
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3082, !tbaa.struct !2800
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2970, metadata !985) #10, !dbg !3083
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1305, metadata !649) #10, !dbg !3084
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1306, metadata !649) #10, !dbg !3086
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1307, metadata !649) #10, !dbg !3087
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1305, metadata !649) #10, !dbg !3084
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1305, metadata !649) #10, !dbg !3084
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3088
  store i32 10, i32* %7, align 8, !dbg !3089, !tbaa !1235
  %8 = icmp ne i8* %0, null, !dbg !3090
  %9 = icmp ne i8* %1, null, !dbg !3091
  %10 = and i1 %8, %9, !dbg !3092
  br i1 %10, label %12, label %11, !dbg !3092

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14, !dbg !3093
  unreachable, !dbg !3093

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3094
  store i8* %0, i8** %13, align 8, !dbg !3095, !tbaa !1324
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3096
  store i8* %1, i8** %14, align 8, !dbg !3097, !tbaa !1327
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2970, metadata !985) #10, !dbg !3083
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #10, !dbg !3098
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !3099
  ret i8* %15, !dbg !3100
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3101 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3105, metadata !649), !dbg !3108
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3106, metadata !649), !dbg !3109
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3107, metadata !649), !dbg !3110
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3111
  ret i8* %4, !dbg !3112
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !3113 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3117, metadata !649), !dbg !3119
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3118, metadata !649), !dbg !3120
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3105, metadata !649) #10, !dbg !3121
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3106, metadata !649) #10, !dbg !3123
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3107, metadata !649) #10, !dbg !3124
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !3125
  ret i8* %3, !dbg !3126
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !3127 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3131, metadata !649), !dbg !3133
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3132, metadata !649), !dbg !3134
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3105, metadata !649) #10, !dbg !3135
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3106, metadata !649) #10, !dbg !3137
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3107, metadata !649) #10, !dbg !3138
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !3139
  ret i8* %3, !dbg !3140
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !3141 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3145, metadata !649), !dbg !3146
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3131, metadata !649) #10, !dbg !3147
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3132, metadata !649) #10, !dbg !3149
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3105, metadata !649) #10, !dbg !3150
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3106, metadata !649) #10, !dbg !3152
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3107, metadata !649) #10, !dbg !3153
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !3154
  ret i8* %2, !dbg !3155
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !3156 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3215, metadata !649), !dbg !3221
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3216, metadata !649), !dbg !3222
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3217, metadata !649), !dbg !3223
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3218, metadata !649), !dbg !3224
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3219, metadata !649), !dbg !3225
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !3220, metadata !649), !dbg !3226
  %7 = icmp eq i8* %1, null, !dbg !3227
  br i1 %7, label %10, label %8, !dbg !3229

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.58, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #10, !dbg !3230
  br label %12, !dbg !3230

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.59, i64 0, i64 0), i8* %2, i8* %3) #10, !dbg !3231
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.60, i64 0, i64 0), i32 5) #10, !dbg !3232
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #10, !dbg !3233
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.61, i64 0, i64 0), i32 5) #10, !dbg !3235
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #10, !dbg !3236
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
  ], !dbg !3237

; <label>:17:                                     ; preds = %12
  tail call void @abort() #14, !dbg !3238
  unreachable, !dbg !3238

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.62, i64 0, i64 0), i32 5) #10, !dbg !3240
  %20 = load i8*, i8** %4, align 8, !dbg !3240, !tbaa !657
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #10, !dbg !3241
  br label %146, !dbg !3243

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.63, i64 0, i64 0), i32 5) #10, !dbg !3244
  %24 = load i8*, i8** %4, align 8, !dbg !3244, !tbaa !657
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3244
  %26 = load i8*, i8** %25, align 8, !dbg !3244, !tbaa !657
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #10, !dbg !3245
  br label %146, !dbg !3246

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.64, i64 0, i64 0), i32 5) #10, !dbg !3247
  %30 = load i8*, i8** %4, align 8, !dbg !3247, !tbaa !657
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3247
  %32 = load i8*, i8** %31, align 8, !dbg !3247, !tbaa !657
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3247
  %34 = load i8*, i8** %33, align 8, !dbg !3247, !tbaa !657
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #10, !dbg !3248
  br label %146, !dbg !3249

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.65, i64 0, i64 0), i32 5) #10, !dbg !3250
  %38 = load i8*, i8** %4, align 8, !dbg !3250, !tbaa !657
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3250
  %40 = load i8*, i8** %39, align 8, !dbg !3250, !tbaa !657
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3250
  %42 = load i8*, i8** %41, align 8, !dbg !3250, !tbaa !657
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3250
  %44 = load i8*, i8** %43, align 8, !dbg !3250, !tbaa !657
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #10, !dbg !3251
  br label %146, !dbg !3252

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.66, i64 0, i64 0), i32 5) #10, !dbg !3253
  %48 = load i8*, i8** %4, align 8, !dbg !3253, !tbaa !657
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3253
  %50 = load i8*, i8** %49, align 8, !dbg !3253, !tbaa !657
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3253
  %52 = load i8*, i8** %51, align 8, !dbg !3253, !tbaa !657
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3253
  %54 = load i8*, i8** %53, align 8, !dbg !3253, !tbaa !657
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3253
  %56 = load i8*, i8** %55, align 8, !dbg !3253, !tbaa !657
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #10, !dbg !3254
  br label %146, !dbg !3255

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.67, i64 0, i64 0), i32 5) #10, !dbg !3256
  %60 = load i8*, i8** %4, align 8, !dbg !3256, !tbaa !657
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3256
  %62 = load i8*, i8** %61, align 8, !dbg !3256, !tbaa !657
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3256
  %64 = load i8*, i8** %63, align 8, !dbg !3256, !tbaa !657
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3256
  %66 = load i8*, i8** %65, align 8, !dbg !3256, !tbaa !657
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3256
  %68 = load i8*, i8** %67, align 8, !dbg !3256, !tbaa !657
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3256
  %70 = load i8*, i8** %69, align 8, !dbg !3256, !tbaa !657
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #10, !dbg !3257
  br label %146, !dbg !3258

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.68, i64 0, i64 0), i32 5) #10, !dbg !3259
  %74 = load i8*, i8** %4, align 8, !dbg !3259, !tbaa !657
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3259
  %76 = load i8*, i8** %75, align 8, !dbg !3259, !tbaa !657
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3259
  %78 = load i8*, i8** %77, align 8, !dbg !3259, !tbaa !657
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3259
  %80 = load i8*, i8** %79, align 8, !dbg !3259, !tbaa !657
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3259
  %82 = load i8*, i8** %81, align 8, !dbg !3259, !tbaa !657
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3259
  %84 = load i8*, i8** %83, align 8, !dbg !3259, !tbaa !657
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3259
  %86 = load i8*, i8** %85, align 8, !dbg !3259, !tbaa !657
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #10, !dbg !3260
  br label %146, !dbg !3261

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.69, i64 0, i64 0), i32 5) #10, !dbg !3262
  %90 = load i8*, i8** %4, align 8, !dbg !3262, !tbaa !657
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3262
  %92 = load i8*, i8** %91, align 8, !dbg !3262, !tbaa !657
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3262
  %94 = load i8*, i8** %93, align 8, !dbg !3262, !tbaa !657
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3262
  %96 = load i8*, i8** %95, align 8, !dbg !3262, !tbaa !657
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3262
  %98 = load i8*, i8** %97, align 8, !dbg !3262, !tbaa !657
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3262
  %100 = load i8*, i8** %99, align 8, !dbg !3262, !tbaa !657
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3262
  %102 = load i8*, i8** %101, align 8, !dbg !3262, !tbaa !657
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3262
  %104 = load i8*, i8** %103, align 8, !dbg !3262, !tbaa !657
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #10, !dbg !3263
  br label %146, !dbg !3264

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.70, i64 0, i64 0), i32 5) #10, !dbg !3265
  %108 = load i8*, i8** %4, align 8, !dbg !3265, !tbaa !657
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3265
  %110 = load i8*, i8** %109, align 8, !dbg !3265, !tbaa !657
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3265
  %112 = load i8*, i8** %111, align 8, !dbg !3265, !tbaa !657
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3265
  %114 = load i8*, i8** %113, align 8, !dbg !3265, !tbaa !657
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3265
  %116 = load i8*, i8** %115, align 8, !dbg !3265, !tbaa !657
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3265
  %118 = load i8*, i8** %117, align 8, !dbg !3265, !tbaa !657
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3265
  %120 = load i8*, i8** %119, align 8, !dbg !3265, !tbaa !657
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3265
  %122 = load i8*, i8** %121, align 8, !dbg !3265, !tbaa !657
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3265
  %124 = load i8*, i8** %123, align 8, !dbg !3265, !tbaa !657
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #10, !dbg !3266
  br label %146, !dbg !3267

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.71, i64 0, i64 0), i32 5) #10, !dbg !3268
  %128 = load i8*, i8** %4, align 8, !dbg !3268, !tbaa !657
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3268
  %130 = load i8*, i8** %129, align 8, !dbg !3268, !tbaa !657
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3268
  %132 = load i8*, i8** %131, align 8, !dbg !3268, !tbaa !657
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3268
  %134 = load i8*, i8** %133, align 8, !dbg !3268, !tbaa !657
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3268
  %136 = load i8*, i8** %135, align 8, !dbg !3268, !tbaa !657
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3268
  %138 = load i8*, i8** %137, align 8, !dbg !3268, !tbaa !657
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3268
  %140 = load i8*, i8** %139, align 8, !dbg !3268, !tbaa !657
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3268
  %142 = load i8*, i8** %141, align 8, !dbg !3268, !tbaa !657
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3268
  %144 = load i8*, i8** %143, align 8, !dbg !3268, !tbaa !657
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #10, !dbg !3269
  br label %146, !dbg !3270

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !3271
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !3272 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3276, metadata !649), !dbg !3282
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3277, metadata !649), !dbg !3283
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3278, metadata !649), !dbg !3284
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3279, metadata !649), !dbg !3285
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3280, metadata !649), !dbg !3286
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3281, metadata !649), !dbg !3287
  br label %6, !dbg !3288

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3281, metadata !649), !dbg !3287
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3290
  %9 = load i8*, i8** %8, align 8, !dbg !3290, !tbaa !657
  %10 = icmp eq i8* %9, null, !dbg !3293
  %11 = add i64 %7, 1, !dbg !3295
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !3281, metadata !649), !dbg !3287
  br i1 %10, label %12, label %6, !dbg !3293, !llvm.loop !3297

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3300
  ret void, !dbg !3301
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !3302 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3313, metadata !649), !dbg !3321
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3314, metadata !649), !dbg !3322
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3315, metadata !649), !dbg !3323
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3316, metadata !649), !dbg !3324
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !3317, metadata !649), !dbg !3325
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3326
  call void @llvm.lifetime.start(i64 80, i8* nonnull %7) #10, !dbg !3326
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3319, metadata !649), !dbg !3327
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3318, metadata !649), !dbg !3328
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3318, metadata !649), !dbg !3328
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %11 = load i32, i32* %8, align 8, !dbg !3329
  %12 = icmp ult i32 %11, 41, !dbg !3329
  br i1 %12, label %13, label %18, !dbg !3329

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !3333
  %15 = sext i32 %11 to i64, !dbg !3333
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3333
  %17 = add i32 %11, 8, !dbg !3333
  store i32 %17, i32* %8, align 8, !dbg !3333
  br label %21, !dbg !3333

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !3335
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3335
  store i8* %20, i8** %10, align 8, !dbg !3335
  br label %21, !dbg !3335

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ], !dbg !3329
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3337
  %25 = load i8*, i8** %24, align 8, !dbg !3337
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3339
  store i8* %25, i8** %26, align 16, !dbg !3340, !tbaa !657
  %27 = icmp eq i8* %25, null, !dbg !3341
  br i1 %27, label %30, label %28, !dbg !3342

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3318, metadata !649), !dbg !3328
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3318, metadata !649), !dbg !3328
  %29 = icmp ult i32 %22, 41, !dbg !3329
  br i1 %29, label %35, label %32, !dbg !3329

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3344
  call void @llvm.lifetime.end(i64 80, i8* nonnull %7) #10, !dbg !3345
  ret void, !dbg !3345

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !3335
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3335
  store i8* %34, i8** %10, align 8, !dbg !3335
  br label %40, !dbg !3335

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !3333
  %37 = sext i32 %22 to i64, !dbg !3333
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3333
  %39 = add i32 %22, 8, !dbg !3333
  store i32 %39, i32* %8, align 8, !dbg !3333
  br label %40, !dbg !3333

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ], !dbg !3329
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3337
  %44 = load i8*, i8** %43, align 8, !dbg !3337
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3339
  store i8* %44, i8** %45, align 8, !dbg !3340, !tbaa !657
  %46 = icmp eq i8* %44, null, !dbg !3341
  br i1 %46, label %30, label %47, !dbg !3342

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3318, metadata !649), !dbg !3328
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3318, metadata !649), !dbg !3328
  %48 = icmp ult i32 %41, 41, !dbg !3329
  br i1 %48, label %52, label %49, !dbg !3329

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !3335
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3335
  store i8* %51, i8** %10, align 8, !dbg !3335
  br label %57, !dbg !3335

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !3333
  %54 = sext i32 %41 to i64, !dbg !3333
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3333
  %56 = add i32 %41, 8, !dbg !3333
  store i32 %56, i32* %8, align 8, !dbg !3333
  br label %57, !dbg !3333

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ], !dbg !3329
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3337
  %61 = load i8*, i8** %60, align 8, !dbg !3337
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3339
  store i8* %61, i8** %62, align 16, !dbg !3340, !tbaa !657
  %63 = icmp eq i8* %61, null, !dbg !3341
  br i1 %63, label %30, label %64, !dbg !3342

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3318, metadata !649), !dbg !3328
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3318, metadata !649), !dbg !3328
  %65 = icmp ult i32 %58, 41, !dbg !3329
  br i1 %65, label %69, label %66, !dbg !3329

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !3335
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3335
  store i8* %68, i8** %10, align 8, !dbg !3335
  br label %74, !dbg !3335

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !3333
  %71 = sext i32 %58 to i64, !dbg !3333
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3333
  %73 = add i32 %58, 8, !dbg !3333
  store i32 %73, i32* %8, align 8, !dbg !3333
  br label %74, !dbg !3333

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ], !dbg !3329
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3337
  %78 = load i8*, i8** %77, align 8, !dbg !3337
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3339
  store i8* %78, i8** %79, align 8, !dbg !3340, !tbaa !657
  %80 = icmp eq i8* %78, null, !dbg !3341
  br i1 %80, label %30, label %81, !dbg !3342

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3318, metadata !649), !dbg !3328
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3318, metadata !649), !dbg !3328
  %82 = icmp ult i32 %75, 41, !dbg !3329
  br i1 %82, label %86, label %83, !dbg !3329

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !3335
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3335
  store i8* %85, i8** %10, align 8, !dbg !3335
  br label %91, !dbg !3335

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !3333
  %88 = sext i32 %75 to i64, !dbg !3333
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3333
  %90 = add i32 %75, 8, !dbg !3333
  store i32 %90, i32* %8, align 8, !dbg !3333
  br label %91, !dbg !3333

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ], !dbg !3329
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3337
  %95 = load i8*, i8** %94, align 8, !dbg !3337
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3339
  store i8* %95, i8** %96, align 16, !dbg !3340, !tbaa !657
  %97 = icmp eq i8* %95, null, !dbg !3341
  br i1 %97, label %30, label %98, !dbg !3342

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3318, metadata !649), !dbg !3328
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3318, metadata !649), !dbg !3328
  %99 = icmp ult i32 %92, 41, !dbg !3329
  br i1 %99, label %103, label %100, !dbg !3329

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !3335
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3335
  store i8* %102, i8** %10, align 8, !dbg !3335
  br label %108, !dbg !3335

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !3333
  %105 = sext i32 %92 to i64, !dbg !3333
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3333
  %107 = add i32 %92, 8, !dbg !3333
  store i32 %107, i32* %8, align 8, !dbg !3333
  br label %108, !dbg !3333

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3337
  %111 = load i8*, i8** %110, align 8, !dbg !3337
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3339
  store i8* %111, i8** %112, align 8, !dbg !3340, !tbaa !657
  %113 = icmp eq i8* %111, null, !dbg !3341
  br i1 %113, label %30, label %114, !dbg !3342

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3318, metadata !649), !dbg !3328
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3318, metadata !649), !dbg !3328
  %115 = load i8*, i8** %10, align 8, !dbg !3335
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3335
  store i8* %116, i8** %10, align 8, !dbg !3335
  %117 = bitcast i8* %115 to i8**, !dbg !3337
  %118 = load i8*, i8** %117, align 8, !dbg !3337
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3339
  store i8* %118, i8** %119, align 16, !dbg !3340, !tbaa !657
  %120 = icmp eq i8* %118, null, !dbg !3341
  br i1 %120, label %30, label %121, !dbg !3342

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3318, metadata !649), !dbg !3328
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3318, metadata !649), !dbg !3328
  %122 = load i8*, i8** %10, align 8, !dbg !3335
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3335
  store i8* %123, i8** %10, align 8, !dbg !3335
  %124 = bitcast i8* %122 to i8**, !dbg !3337
  %125 = load i8*, i8** %124, align 8, !dbg !3337
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3339
  store i8* %125, i8** %126, align 8, !dbg !3340, !tbaa !657
  %127 = icmp eq i8* %125, null, !dbg !3341
  br i1 %127, label %30, label %128, !dbg !3342

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3318, metadata !649), !dbg !3328
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3318, metadata !649), !dbg !3328
  %129 = load i8*, i8** %10, align 8, !dbg !3335
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3335
  store i8* %130, i8** %10, align 8, !dbg !3335
  %131 = bitcast i8* %129 to i8**, !dbg !3337
  %132 = load i8*, i8** %131, align 8, !dbg !3337
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3339
  store i8* %132, i8** %133, align 16, !dbg !3340, !tbaa !657
  %134 = icmp eq i8* %132, null, !dbg !3341
  br i1 %134, label %30, label %135, !dbg !3342

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3318, metadata !649), !dbg !3328
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3318, metadata !649), !dbg !3328
  %136 = load i8*, i8** %10, align 8, !dbg !3335
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3335
  store i8* %137, i8** %10, align 8, !dbg !3335
  %138 = bitcast i8* %136 to i8**, !dbg !3337
  %139 = load i8*, i8** %138, align 8, !dbg !3337
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3339
  store i8* %139, i8** %140, align 8, !dbg !3340, !tbaa !657
  %141 = icmp eq i8* %139, null, !dbg !3341
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3318, metadata !649), !dbg !3328
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3318, metadata !649), !dbg !3328
  %142 = select i1 %141, i64 9, i64 10, !dbg !3342
  br label %30, !dbg !3342
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !3346 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3350, metadata !649), !dbg !3360
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3351, metadata !649), !dbg !3361
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3352, metadata !649), !dbg !3362
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3353, metadata !649), !dbg !3363
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3364
  call void @llvm.lifetime.start(i64 24, i8* nonnull %6) #10, !dbg !3364
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3354, metadata !649), !dbg !3365
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3366
  call void @llvm.va_start(i8* nonnull %6), !dbg !3366
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3367
  call void @llvm.va_end(i8* nonnull %6), !dbg !3368
  call void @llvm.lifetime.end(i64 24, i8* nonnull %6) #10, !dbg !3369
  ret void, !dbg !3369
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #10

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !3370 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.74, i64 0, i64 0), i32 5) #10, !dbg !3371
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.75, i64 0, i64 0)) #10, !dbg !3372
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.76, i64 0, i64 0), i32 5) #10, !dbg !3374
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.77, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.78, i64 0, i64 0)) #10, !dbg !3375
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19, i64 0, i64 0), i32 5) #10, !dbg !3376
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3376, !tbaa !657
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #10, !dbg !3377
  ret void, !dbg !3378
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #12 !dbg !3379 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3383, metadata !649), !dbg !3385
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3384, metadata !649), !dbg !3386
  %3 = udiv i64 9223372036854775807, %1, !dbg !3387
  %4 = icmp ult i64 %3, %0, !dbg !3387
  br i1 %4, label %5, label %6, !dbg !3389

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !3390
  unreachable, !dbg !3390

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3391
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3392, metadata !649) #10, !dbg !3399
  %8 = tail call noalias i8* @malloc(i64 %7) #10, !dbg !3401
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3398, metadata !649) #10, !dbg !3402
  %9 = icmp eq i8* %8, null, !dbg !3403
  %10 = icmp ne i64 %7, 0, !dbg !3405
  %11 = and i1 %10, %9, !dbg !3407
  br i1 %11, label %12, label %13, !dbg !3407

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #14, !dbg !3408
  unreachable, !dbg !3408

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !3409
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !3393 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3392, metadata !649), !dbg !3410
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3411
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3398, metadata !649), !dbg !3412
  %3 = icmp eq i8* %2, null, !dbg !3413
  %4 = icmp ne i64 %0, 0, !dbg !3414
  %5 = and i1 %4, %3, !dbg !3415
  br i1 %5, label %6, label %7, !dbg !3415

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3416
  unreachable, !dbg !3416

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3417
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #12 !dbg !3418 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3422, metadata !649), !dbg !3425
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3423, metadata !649), !dbg !3426
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3424, metadata !649), !dbg !3427
  %4 = udiv i64 9223372036854775807, %2, !dbg !3428
  %5 = icmp ult i64 %4, %1, !dbg !3428
  br i1 %5, label %6, label %7, !dbg !3430

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #14, !dbg !3431
  unreachable, !dbg !3431

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3432
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3433, metadata !649) #10, !dbg !3439
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !3438, metadata !649) #10, !dbg !3441
  %9 = icmp eq i64 %8, 0, !dbg !3442
  %10 = icmp ne i8* %0, null, !dbg !3444
  %11 = and i1 %10, %9, !dbg !3446
  br i1 %11, label %12, label %13, !dbg !3446

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #10, !dbg !3447
  br label %19, !dbg !3449

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #10, !dbg !3450
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !3433, metadata !649) #10, !dbg !3439
  %15 = icmp eq i8* %14, null, !dbg !3451
  %16 = icmp ne i64 %8, 0, !dbg !3453
  %17 = and i1 %16, %15, !dbg !3455
  br i1 %17, label %18, label %19, !dbg !3455

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !3456
  unreachable, !dbg !3456

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !3457
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !3434 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3433, metadata !649), !dbg !3458
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3438, metadata !649), !dbg !3459
  %3 = icmp eq i64 %1, 0, !dbg !3460
  %4 = icmp ne i8* %0, null, !dbg !3461
  %5 = and i1 %4, %3, !dbg !3462
  br i1 %5, label %6, label %7, !dbg !3462

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #10, !dbg !3463
  br label %13, !dbg !3464

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #10, !dbg !3465
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3433, metadata !649), !dbg !3458
  %9 = icmp eq i8* %8, null, !dbg !3466
  %10 = icmp ne i64 %1, 0, !dbg !3467
  %11 = and i1 %10, %9, !dbg !3468
  br i1 %11, label %12, label %13, !dbg !3468

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #14, !dbg !3469
  unreachable, !dbg !3469

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !3470
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #12 !dbg !571 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !576, metadata !649), !dbg !3471
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !577, metadata !649), !dbg !3472
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !578, metadata !649), !dbg !3473
  %4 = load i64, i64* %1, align 8, !dbg !3474, !tbaa !2473
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !579, metadata !649), !dbg !3475
  %5 = icmp eq i8* %0, null, !dbg !3476
  br i1 %5, label %6, label %13, !dbg !3478

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3479
  br i1 %7, label %8, label %17, !dbg !3482

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3483
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !579, metadata !649), !dbg !3475
  %10 = icmp ugt i64 %2, 128, !dbg !3485
  %11 = zext i1 %10 to i64, !dbg !3485
  %12 = add nuw nsw i64 %9, %11, !dbg !3486
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !579, metadata !649), !dbg !3475
  br label %17, !dbg !3487

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !3488
  %15 = icmp ugt i64 %14, %4, !dbg !3491
  br i1 %15, label %20, label %16, !dbg !3492

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !3493
  unreachable, !dbg !3493

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !579, metadata !649), !dbg !3475
  store i64 %18, i64* %1, align 8, !dbg !3494, !tbaa !2473
  %19 = mul i64 %18, %2, !dbg !3495
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3433, metadata !649) #10, !dbg !3496
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3438, metadata !649) #10, !dbg !3498
  br label %27, !dbg !3499

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !3500
  %22 = add i64 %4, 1, !dbg !3501
  %23 = add i64 %22, %21, !dbg !3502
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !579, metadata !649), !dbg !3475
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !579, metadata !649), !dbg !3475
  store i64 %23, i64* %1, align 8, !dbg !3494, !tbaa !2473
  %24 = mul i64 %23, %2, !dbg !3495
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3433, metadata !649) #10, !dbg !3496
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3438, metadata !649) #10, !dbg !3498
  %25 = icmp eq i64 %24, 0, !dbg !3503
  br i1 %25, label %26, label %27, !dbg !3499

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #10, !dbg !3504
  br label %34, !dbg !3505

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #10, !dbg !3506
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3433, metadata !649) #10, !dbg !3496
  %30 = icmp eq i8* %29, null, !dbg !3507
  %31 = icmp ne i64 %28, 0, !dbg !3508
  %32 = and i1 %31, %30, !dbg !3509
  br i1 %32, label %33, label %34, !dbg !3509

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #14, !dbg !3510
  unreachable, !dbg !3510

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !3511
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #12 !dbg !3512 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3514, metadata !649), !dbg !3515
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3392, metadata !649) #10, !dbg !3516
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3518
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3398, metadata !649) #10, !dbg !3519
  %3 = icmp eq i8* %2, null, !dbg !3520
  %4 = icmp ne i64 %0, 0, !dbg !3521
  %5 = and i1 %4, %3, !dbg !3522
  br i1 %5, label %6, label %7, !dbg !3522

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3523
  unreachable, !dbg !3523

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3524
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !3525 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3529, metadata !649), !dbg !3531
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !3530, metadata !649), !dbg !3532
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !576, metadata !649) #10, !dbg !3533
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !577, metadata !649) #10, !dbg !3535
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !578, metadata !649) #10, !dbg !3536
  %3 = load i64, i64* %1, align 8, !dbg !3537, !tbaa !2473
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !579, metadata !649) #10, !dbg !3538
  %4 = icmp eq i8* %0, null, !dbg !3539
  br i1 %4, label %5, label %8, !dbg !3540

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3541
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !579, metadata !649) #10, !dbg !3538
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !579, metadata !649) #10, !dbg !3538
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3542
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !579, metadata !649) #10, !dbg !3538
  store i64 %7, i64* %1, align 8, !dbg !3543, !tbaa !2473
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3433, metadata !649) #10, !dbg !3544
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3438, metadata !649) #10, !dbg !3546
  br label %17, !dbg !3547

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !3548
  br i1 %9, label %11, label %10, !dbg !3549

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #14, !dbg !3550
  unreachable, !dbg !3550

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !3551
  %13 = add i64 %3, 1, !dbg !3552
  %14 = add i64 %13, %12, !dbg !3553
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !579, metadata !649) #10, !dbg !3538
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !579, metadata !649) #10, !dbg !3538
  store i64 %14, i64* %1, align 8, !dbg !3543, !tbaa !2473
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3433, metadata !649) #10, !dbg !3544
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3438, metadata !649) #10, !dbg !3546
  %15 = icmp eq i64 %14, 0, !dbg !3554
  br i1 %15, label %16, label %17, !dbg !3547

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #10, !dbg !3555
  br label %24, !dbg !3556

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #10, !dbg !3557
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !3433, metadata !649) #10, !dbg !3544
  %20 = icmp eq i8* %19, null, !dbg !3558
  %21 = icmp ne i64 %18, 0, !dbg !3559
  %22 = and i1 %21, %20, !dbg !3560
  br i1 %22, label %23, label %24, !dbg !3560

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #14, !dbg !3561
  unreachable, !dbg !3561

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !3562
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !3563 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3565, metadata !649), !dbg !3566
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3392, metadata !649) #10, !dbg !3567
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3569
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3398, metadata !649) #10, !dbg !3570
  %3 = icmp eq i8* %2, null, !dbg !3571
  %4 = icmp ne i64 %0, 0, !dbg !3572
  %5 = and i1 %4, %3, !dbg !3573
  br i1 %5, label %6, label %7, !dbg !3573

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3574
  unreachable, !dbg !3574

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !3575
  ret i8* %2, !dbg !3576
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !3577 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3579, metadata !649), !dbg !3582
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3580, metadata !649), !dbg !3583
  %3 = udiv i64 9223372036854775807, %1, !dbg !3584
  %4 = icmp ult i64 %3, %0, !dbg !3584
  br i1 %4, label %8, label %5, !dbg !3586

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #10, !dbg !3587
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3581, metadata !649), !dbg !3589
  %7 = icmp eq i8* %6, null, !dbg !3590
  br i1 %7, label %8, label %9, !dbg !3591

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #14, !dbg !3593
  unreachable, !dbg !3593

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !3594
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !3595 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3599, metadata !649), !dbg !3601
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3600, metadata !649), !dbg !3602
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3392, metadata !649) #10, !dbg !3603
  %3 = tail call noalias i8* @malloc(i64 %1) #10, !dbg !3605
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3398, metadata !649) #10, !dbg !3606
  %4 = icmp eq i8* %3, null, !dbg !3607
  %5 = icmp ne i64 %1, 0, !dbg !3608
  %6 = and i1 %5, %4, !dbg !3609
  br i1 %6, label %7, label %8, !dbg !3609

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !3610
  unreachable, !dbg !3610

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !3611
  ret i8* %3, !dbg !3612
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !3613 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3615, metadata !649), !dbg !3616
  %2 = tail call i64 @strlen(i8* %0) #13, !dbg !3617
  %3 = add i64 %2, 1, !dbg !3618
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3599, metadata !649) #10, !dbg !3619
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3600, metadata !649) #10, !dbg !3622
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3392, metadata !649) #10, !dbg !3623
  %4 = tail call noalias i8* @malloc(i64 %3) #10, !dbg !3625
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !3398, metadata !649) #10, !dbg !3626
  %5 = icmp eq i8* %4, null, !dbg !3627
  %6 = icmp ne i64 %3, 0, !dbg !3628
  %7 = and i1 %6, %5, !dbg !3629
  br i1 %7, label %8, label %9, !dbg !3629

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3630
  unreachable, !dbg !3630

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #10, !dbg !3631
  ret i8* %4, !dbg !3632
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !3633 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3635, !tbaa !751
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.89, i64 0, i64 0), i32 5) #10, !dbg !3636
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.90, i64 0, i64 0), i8* %2) #10, !dbg !3637
  tail call void @abort() #14, !dbg !3639
  unreachable, !dbg !3639
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @xgetgroups(i8*, i32, i32**) local_unnamed_addr #6 !dbg !3640 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3643, metadata !649), !dbg !3647
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3644, metadata !649), !dbg !3648
  tail call void @llvm.dbg.value(metadata i32** %2, i64 0, metadata !3645, metadata !649), !dbg !3649
  %4 = tail call i32 @mgetgroups(i8* %0, i32 %1, i32** %2) #10, !dbg !3650
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !3646, metadata !649), !dbg !3651
  %5 = icmp eq i32 %4, -1, !dbg !3652
  br i1 %5, label %6, label %11, !dbg !3654

; <label>:6:                                      ; preds = %3
  %7 = tail call i32* @__errno_location() #1, !dbg !3655
  %8 = load i32, i32* %7, align 4, !dbg !3655, !tbaa !751
  %9 = icmp eq i32 %8, 12, !dbg !3657
  br i1 %9, label %10, label %11, !dbg !3658

; <label>:10:                                     ; preds = %6
  tail call void @xalloc_die() #14, !dbg !3660
  unreachable, !dbg !3660

; <label>:11:                                     ; preds = %6, %3
  ret i32 %4, !dbg !3661
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !3662 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3665, metadata !649), !dbg !3671
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3666, metadata !649), !dbg !3672
  %3 = icmp eq i64 %0, 0, !dbg !3673
  %4 = icmp eq i64 %1, 0, !dbg !3674
  %5 = or i1 %3, %4, !dbg !3676
  br i1 %5, label %12, label %6, !dbg !3676

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3677
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3668, metadata !649), !dbg !3678
  %8 = udiv i64 %7, %1, !dbg !3679
  %9 = icmp eq i64 %8, %0, !dbg !3681
  br i1 %9, label %12, label %10, !dbg !3682

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #1, !dbg !3683
  store i32 12, i32* %11, align 4, !dbg !3685, !tbaa !751
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3665, metadata !649), !dbg !3671
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !3666, metadata !649), !dbg !3672
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #10, !dbg !3686
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !3667, metadata !649), !dbg !3687
  br label %16, !dbg !3688

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !3689
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !3690 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !3707, metadata !649), !dbg !3716
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3708, metadata !649), !dbg !3717
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3709, metadata !649), !dbg !3718
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !3710, metadata !649), !dbg !3719
  %6 = bitcast i32* %5 to i8*, !dbg !3720
  call void @llvm.lifetime.start(i64 4, i8* nonnull %6) #10, !dbg !3720
  %7 = icmp eq i32* %0, null, !dbg !3721
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !3707, metadata !649), !dbg !3716
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3723
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !3707, metadata !649), !dbg !3716
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #10, !dbg !3724
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !3711, metadata !649), !dbg !3725
  %10 = icmp ugt i64 %9, -3, !dbg !3726
  %11 = icmp ne i64 %2, 0, !dbg !3727
  %12 = and i1 %11, %10, !dbg !3729
  br i1 %12, label %13, label %18, !dbg !3729

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #10, !dbg !3730
  br i1 %14, label %18, label %15, !dbg !3732

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3734, !tbaa !824
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !3713, metadata !649), !dbg !3735
  %17 = zext i8 %16 to i32, !dbg !3736
  store i32 %17, i32* %8, align 4, !dbg !3737, !tbaa !751
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end(i64 4, i8* nonnull %6) #10, !dbg !3738
  ret i64 %19, !dbg !3738
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !3739 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3784, metadata !649), !dbg !3789
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #10, !dbg !3790
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3791, metadata !649), !dbg !3794
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3796
  %4 = load i32, i32* %3, align 8, !dbg !3796, !tbaa !3797
  %5 = and i32 %4, 32, !dbg !3796
  %6 = icmp eq i32 %5, 0, !dbg !3798
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #10, !dbg !3799
  %8 = icmp ne i32 %7, 0, !dbg !3800
  br i1 %6, label %9, label %19, !dbg !3801

; <label>:9:                                      ; preds = %1
  %10 = xor i1 %8, true, !dbg !3803
  %11 = icmp ne i64 %2, 0, !dbg !3803
  %12 = or i1 %11, %10, !dbg !3803
  %13 = sext i1 %8 to i32, !dbg !3803
  br i1 %12, label %22, label %14, !dbg !3803

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #1, !dbg !3805
  %16 = load i32, i32* %15, align 4, !dbg !3805, !tbaa !751
  %17 = icmp ne i32 %16, 9, !dbg !3807
  %18 = sext i1 %17 to i32, !dbg !3807
  br label %22, !dbg !3807

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !3809

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #1, !dbg !3811
  store i32 0, i32* %21, align 4, !dbg !3813, !tbaa !751
  br label %22, !dbg !3811

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !3814
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !3815 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3820, metadata !649), !dbg !3840
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3821, metadata !649), !dbg !3841
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #10, !dbg !3842
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3822, metadata !649), !dbg !3843
  %3 = icmp eq i8* %2, null, !dbg !3844
  br i1 %3, label %15, label %4, !dbg !3845

; <label>:4:                                      ; preds = %1
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3830, metadata !649), !dbg !3846
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3831, metadata !649), !dbg !3847
  %5 = load i8, i8* %2, align 1, !dbg !3848, !tbaa !824
  %6 = icmp eq i8 %5, 67, !dbg !3850
  br i1 %6, label %7, label %11, !dbg !3853

; <label>:7:                                      ; preds = %4
  %8 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !3855
  %9 = load i8, i8* %8, align 1, !dbg !3855, !tbaa !824
  %10 = icmp eq i8 %9, 0, !dbg !3858
  br i1 %10, label %14, label %11, !dbg !3860

; <label>:11:                                     ; preds = %4, %7
  tail call void @llvm.dbg.value(metadata i64 5, i64 0, metadata !3836, metadata !649), !dbg !3862
  %12 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.101, i64 0, i64 0)) #10, !dbg !3863
  %13 = icmp eq i32 %12, 0, !dbg !3865
  br i1 %13, label %14, label %15, !dbg !3867

; <label>:14:                                     ; preds = %11, %7
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3821, metadata !649), !dbg !3841
  br label %15, !dbg !3869

; <label>:15:                                     ; preds = %1, %11, %14
  %16 = phi i1 [ false, %14 ], [ true, %11 ], [ true, %1 ]
  ret i1 %16, !dbg !3870
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !3871 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !3883, metadata !649), !dbg !3957
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !3950, metadata !649), !dbg !3959
  %3 = tail call i8* @nl_langinfo(i32 14) #10, !dbg !3960
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3875, metadata !649), !dbg !3961
  %4 = icmp eq i8* %3, null, !dbg !3962
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.104, i64 0, i64 0), i8* %3, !dbg !3964
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !3875, metadata !649), !dbg !3961
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !3965, !tbaa !657
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3897, metadata !649) #10, !dbg !3966
  %7 = icmp eq i8* %6, null, !dbg !3967
  br i1 %7, label %8, label %127, !dbg !3968

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.105, i64 0, i64 0)) #10, !dbg !3969
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !3898, metadata !649) #10, !dbg !3970
  %10 = icmp eq i8* %9, null, !dbg !3971
  br i1 %10, label %14, label %11, !dbg !3973

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !3974, !tbaa !824
  %13 = icmp eq i8 %12, 0, !dbg !3976
  br i1 %13, label %14, label %15, !dbg !3977

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !3979

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.106, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !3898, metadata !649) #10, !dbg !3970
  %17 = tail call i64 @strlen(i8* nonnull %16) #13, !dbg !3980
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !3901, metadata !649) #10, !dbg !3981
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !3903, metadata !649) #10, !dbg !3982
  %18 = icmp eq i64 %17, 0, !dbg !3983
  br i1 %18, label %24, label %19, !dbg !3984

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !3985
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !3985
  %22 = load i8, i8* %21, align 1, !dbg !3985, !tbaa !824
  %23 = icmp ne i8 %22, 47, !dbg !3987
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !3988
  %27 = add i64 %17, 14, !dbg !3989
  %28 = add i64 %27, %26, !dbg !3990
  %29 = tail call noalias i8* @malloc(i64 %28) #10, !dbg !3991
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3900, metadata !649) #10, !dbg !3992
  %30 = icmp eq i8* %29, null, !dbg !3993
  br i1 %30, label %125, label %31, !dbg !3993

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #10, !dbg !3994
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !3997

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !3998, !tbaa !824
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !4000
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.107, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !4001
  br label %37, !dbg !4002

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !4000
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.107, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !4001
  br label %37, !dbg !4002

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #10, !dbg !4003
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !3905, metadata !649) #10, !dbg !4004
  %39 = icmp slt i32 %38, 0, !dbg !4005
  br i1 %39, label %123, label %40, !dbg !4006

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.108, i64 0, i64 0)) #10, !dbg !4007
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3906, metadata !649) #10, !dbg !4008
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !4009
  br i1 %42, label %48, label %43, !dbg !4010

; <label>:43:                                     ; preds = %40
  %44 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %45 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %46 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %47 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !4011

; <label>:48:                                     ; preds = %40
  %49 = tail call i32 @close(i32 %38) #10, !dbg !4012
  br label %123, !dbg !4014

; <label>:50:                                     ; preds = %111, %43
  %51 = phi i64 [ %112, %111 ], [ 0, %43 ]
  %52 = phi i8* [ %113, %111 ], [ null, %43 ]
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3947, metadata !649) #10, !dbg !4011
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !3948, metadata !649) #10, !dbg !4015
  call void @llvm.lifetime.start(i64 51, i8* nonnull %44) #10, !dbg !4016
  call void @llvm.lifetime.start(i64 51, i8* nonnull %45) #10, !dbg !4017
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4018, metadata !649) #10, !dbg !4023
  %53 = load i8*, i8** %46, align 8, !dbg !4025, !tbaa !4026
  %54 = load i8*, i8** %47, align 8, !dbg !4025, !tbaa !4027
  %55 = icmp ult i8* %53, %54, !dbg !4025
  br i1 %55, label %58, label %56, !dbg !4025, !prof !819

; <label>:56:                                     ; preds = %50
  %57 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !4028
  br label %62, !dbg !4028

; <label>:58:                                     ; preds = %50
  %59 = getelementptr inbounds i8, i8* %53, i64 1, !dbg !4030
  store i8* %59, i8** %46, align 8, !dbg !4030, !tbaa !4026
  %60 = load i8, i8* %53, align 1, !dbg !4030, !tbaa !824
  %61 = zext i8 %60 to i32, !dbg !4030
  br label %62, !dbg !4030

; <label>:62:                                     ; preds = %58, %56
  %63 = phi i32 [ %57, %56 ], [ %61, %58 ], !dbg !4032
  call void @llvm.dbg.value(metadata i32 %63, i64 0, metadata !3949, metadata !649) #10, !dbg !4034
  switch i32 %63, label %77 [
    i32 -1, label %115
    i32 32, label %111
    i32 10, label %111
    i32 9, label %111
    i32 35, label %64
  ], !dbg !4035

; <label>:64:                                     ; preds = %62
  br label %65, !dbg !4036

; <label>:65:                                     ; preds = %64, %75
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4018, metadata !649) #10, !dbg !4036
  %66 = load i8*, i8** %46, align 8, !dbg !4040, !tbaa !4026
  %67 = load i8*, i8** %47, align 8, !dbg !4040, !tbaa !4027
  %68 = icmp ult i8* %66, %67, !dbg !4040
  br i1 %68, label %71, label %69, !dbg !4040, !prof !819

; <label>:69:                                     ; preds = %65
  %70 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !4041
  br label %75, !dbg !4041

; <label>:71:                                     ; preds = %65
  %72 = getelementptr inbounds i8, i8* %66, i64 1, !dbg !4042
  store i8* %72, i8** %46, align 8, !dbg !4042, !tbaa !4026
  %73 = load i8, i8* %66, align 1, !dbg !4042, !tbaa !824
  %74 = zext i8 %73 to i32, !dbg !4042
  br label %75, !dbg !4042

; <label>:75:                                     ; preds = %71, %69
  %76 = phi i32 [ %70, %69 ], [ %74, %71 ], !dbg !4043
  call void @llvm.dbg.value(metadata i32 %76, i64 0, metadata !3949, metadata !649) #10, !dbg !4034
  switch i32 %76, label %65 [
    i32 -1, label %114
    i32 10, label %110
  ], !dbg !4044, !llvm.loop !4046

; <label>:77:                                     ; preds = %62
  %78 = call i32 @ungetc(i32 %63, %struct._IO_FILE* nonnull %41) #10, !dbg !4049
  %79 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.109, i64 0, i64 0), i8* nonnull %44, i8* nonnull %45) #10, !dbg !4050
  %80 = icmp slt i32 %79, 2, !dbg !4052
  br i1 %80, label %115, label %81, !dbg !4053

; <label>:81:                                     ; preds = %77
  %82 = call i64 @strlen(i8* nonnull %44) #13, !dbg !4054
  call void @llvm.dbg.value(metadata i64 %82, i64 0, metadata !3954, metadata !649) #10, !dbg !4055
  %83 = call i64 @strlen(i8* nonnull %45) #13, !dbg !4056
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !3955, metadata !649) #10, !dbg !4057
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3956, metadata !649) #10, !dbg !4058
  %84 = icmp eq i64 %51, 0, !dbg !4059
  %85 = add i64 %82, 1
  %86 = add i64 %85, %83
  %87 = add i64 %86, 1
  br i1 %84, label %88, label %91, !dbg !4061

; <label>:88:                                     ; preds = %81
  call void @llvm.dbg.value(metadata i64 %87, i64 0, metadata !3948, metadata !649) #10, !dbg !4015
  %89 = add i64 %86, 2, !dbg !4062
  %90 = call noalias i8* @malloc(i64 %89) #10, !dbg !4064
  call void @llvm.dbg.value(metadata i8* %90, i64 0, metadata !3947, metadata !649) #10, !dbg !4011
  br label %95, !dbg !4065

; <label>:91:                                     ; preds = %81
  %92 = add i64 %87, %51, !dbg !4066
  call void @llvm.dbg.value(metadata i64 %92, i64 0, metadata !3948, metadata !649) #10, !dbg !4015
  %93 = add i64 %92, 1, !dbg !4068
  %94 = call i8* @realloc(i8* %52, i64 %93) #10, !dbg !4069
  call void @llvm.dbg.value(metadata i8* %94, i64 0, metadata !3947, metadata !649) #10, !dbg !4011
  br label %95

; <label>:95:                                     ; preds = %91, %88
  %96 = phi i64 [ %87, %88 ], [ %92, %91 ]
  %97 = phi i8* [ %90, %88 ], [ %94, %91 ]
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !3947, metadata !649) #10, !dbg !4011
  call void @llvm.dbg.value(metadata i64 %96, i64 0, metadata !3948, metadata !649) #10, !dbg !4015
  %98 = icmp eq i8* %97, null, !dbg !4070
  br i1 %98, label %99, label %100, !dbg !4072

; <label>:99:                                     ; preds = %95
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3948, metadata !649) #10, !dbg !4015
  call void @free(i8* %52) #10, !dbg !4073
  br label %116, !dbg !4075

; <label>:100:                                    ; preds = %95
  %101 = getelementptr inbounds i8, i8* %97, i64 %96, !dbg !4076
  %102 = xor i64 %83, -1, !dbg !4077
  %103 = getelementptr inbounds i8, i8* %101, i64 %102, !dbg !4077
  %104 = xor i64 %82, -1, !dbg !4078
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !4078
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !4079, metadata !649) #10, !dbg !4088
  call void @llvm.dbg.value(metadata i8* %44, i64 0, metadata !4087, metadata !649) #10, !dbg !4088
  %106 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false) #10, !dbg !4090
  %107 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %44, i64 %106) #10, !dbg !4091
  call void @llvm.dbg.value(metadata i8* %103, i64 0, metadata !4079, metadata !649) #10, !dbg !4092
  call void @llvm.dbg.value(metadata i8* %45, i64 0, metadata !4087, metadata !649) #10, !dbg !4092
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %103, i1 false) #10, !dbg !4094
  %109 = call i8* @__strcpy_chk(i8* nonnull %103, i8* nonnull %45, i64 %108) #10, !dbg !4095
  br label %111, !dbg !4096

; <label>:110:                                    ; preds = %75
  br label %111, !dbg !4011

; <label>:111:                                    ; preds = %110, %100, %62, %62, %62
  %112 = phi i64 [ %96, %100 ], [ %51, %62 ], [ %51, %62 ], [ %51, %62 ], [ %51, %110 ]
  %113 = phi i8* [ %97, %100 ], [ %52, %62 ], [ %52, %62 ], [ %52, %62 ], [ %52, %110 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !3947, metadata !649) #10, !dbg !4011
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !3948, metadata !649) #10, !dbg !4015
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #10, !dbg !4096
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #10, !dbg !4096
  br label %50

; <label>:114:                                    ; preds = %75
  br label %116, !dbg !4011

; <label>:115:                                    ; preds = %62, %77
  br label %116, !dbg !4011

; <label>:116:                                    ; preds = %115, %114, %99
  %117 = phi i64 [ 0, %99 ], [ %51, %114 ], [ %51, %115 ]
  %118 = phi i8* [ null, %99 ], [ %52, %114 ], [ %52, %115 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !3947, metadata !649) #10, !dbg !4011
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !3948, metadata !649) #10, !dbg !4015
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #10, !dbg !4096
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #10, !dbg !4096
  %119 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #10, !dbg !4097
  %120 = icmp eq i64 %117, 0, !dbg !4098
  br i1 %120, label %123, label %121, !dbg !4100

; <label>:121:                                    ; preds = %116
  %122 = getelementptr inbounds i8, i8* %118, i64 %117, !dbg !4101
  store i8 0, i8* %122, align 1, !dbg !4103, !tbaa !824
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !3897, metadata !649) #10, !dbg !3966
  br label %123

; <label>:123:                                    ; preds = %121, %116, %48, %37
  %124 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.104, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.104, i64 0, i64 0), %48 ], [ %118, %121 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.104, i64 0, i64 0), %116 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !3897, metadata !649) #10, !dbg !3966
  call void @free(i8* %29) #10, !dbg !4104
  br label %125

; <label>:125:                                    ; preds = %123, %24
  %126 = phi i8* [ %124, %123 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.104, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %126, i64 0, metadata !3897, metadata !649) #10, !dbg !3966
  store volatile i8* %126, i8** @charset_aliases, align 8, !dbg !4105, !tbaa !657
  br label %127, !dbg !4106

; <label>:127:                                    ; preds = %0, %125
  %128 = phi i8* [ %6, %0 ], [ %126, %125 ]
  call void @llvm.dbg.value(metadata i8* %128, i64 0, metadata !3876, metadata !649), !dbg !4107
  %129 = load i8, i8* %128, align 1, !dbg !4108, !tbaa !824
  %130 = icmp eq i8 %129, 0, !dbg !4109
  br i1 %130, label %157, label %131, !dbg !4110

; <label>:131:                                    ; preds = %127
  br label %132, !dbg !4112

; <label>:132:                                    ; preds = %131, %147
  %133 = phi i8 [ %154, %147 ], [ %129, %131 ]
  %134 = phi i8* [ %153, %147 ], [ %128, %131 ]
  %135 = call i32 @strcmp(i8* %5, i8* %134) #10, !dbg !4112
  %136 = icmp eq i32 %135, 0, !dbg !4113
  br i1 %136, label %143, label %137, !dbg !4114

; <label>:137:                                    ; preds = %132
  %138 = icmp eq i8 %133, 42, !dbg !4115
  br i1 %138, label %139, label %147, !dbg !4117

; <label>:139:                                    ; preds = %137
  %140 = getelementptr inbounds i8, i8* %134, i64 1, !dbg !4118
  %141 = load i8, i8* %140, align 1, !dbg !4118, !tbaa !824
  %142 = icmp eq i8 %141, 0, !dbg !4120
  br i1 %142, label %143, label %147, !dbg !4121

; <label>:143:                                    ; preds = %139, %132
  %144 = call i64 @strlen(i8* %134) #13, !dbg !4123
  %145 = getelementptr inbounds i8, i8* %134, i64 %144, !dbg !4125
  %146 = getelementptr inbounds i8, i8* %145, i64 1, !dbg !4126
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !3875, metadata !649), !dbg !3961
  br label %157, !dbg !4127

; <label>:147:                                    ; preds = %137, %139
  %148 = call i64 @strlen(i8* %134) #13, !dbg !4128
  %149 = add i64 %148, 1, !dbg !4129
  %150 = getelementptr inbounds i8, i8* %134, i64 %149, !dbg !4130
  call void @llvm.dbg.value(metadata i8* %150, i64 0, metadata !3876, metadata !649), !dbg !4107
  %151 = call i64 @strlen(i8* %150) #13, !dbg !4131
  %152 = add i64 %151, 1, !dbg !4132
  %153 = getelementptr inbounds i8, i8* %150, i64 %152, !dbg !4133
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !3876, metadata !649), !dbg !4107
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !3876, metadata !649), !dbg !4107
  %154 = load i8, i8* %153, align 1, !dbg !4108, !tbaa !824
  %155 = icmp eq i8 %154, 0, !dbg !4109
  br i1 %155, label %156, label %132, !dbg !4110, !llvm.loop !4134

; <label>:156:                                    ; preds = %147
  br label %157, !dbg !3961

; <label>:157:                                    ; preds = %156, %127, %143
  %158 = phi i8* [ %146, %143 ], [ %5, %127 ], [ %5, %156 ]
  call void @llvm.dbg.value(metadata i8* %158, i64 0, metadata !3875, metadata !649), !dbg !3961
  %159 = load i8, i8* %158, align 1, !dbg !4137, !tbaa !824
  %160 = icmp eq i8 %159, 0, !dbg !4139
  %161 = select i1 %160, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.110, i64 0, i64 0), i8* %158, !dbg !4140
  call void @llvm.dbg.value(metadata i8* %161, i64 0, metadata !3875, metadata !649), !dbg !3961
  ret i8* %161, !dbg !4141
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
define i32 @mgetgroups(i8*, i32, i32** nocapture) local_unnamed_addr #6 !dbg !602 {
  %4 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !608, metadata !649), !dbg !4142
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !609, metadata !649), !dbg !4143
  tail call void @llvm.dbg.value(metadata i32** %2, i64 0, metadata !610, metadata !649), !dbg !4144
  %5 = bitcast i32* %4 to i8*, !dbg !4145
  call void @llvm.lifetime.start(i64 4, i8* nonnull %5) #10, !dbg !4145
  %6 = icmp eq i8* %0, null, !dbg !4146
  br i1 %6, label %44, label %7, !dbg !4147

; <label>:7:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 10, i64 0, metadata !611, metadata !649), !dbg !4148
  store i32 10, i32* %4, align 4, !dbg !4149, !tbaa !751
  tail call void @llvm.dbg.value(metadata i32* null, i64 0, metadata !4150, metadata !649) #10, !dbg !4156
  tail call void @llvm.dbg.value(metadata i64 10, i64 0, metadata !4155, metadata !649) #10, !dbg !4158
  %8 = tail call i8* @realloc(i8* null, i64 40) #10, !dbg !4159
  %9 = icmp eq i8* %8, null, !dbg !4160
  br i1 %9, label %122, label %10, !dbg !4162

; <label>:10:                                     ; preds = %7
  br label %11, !dbg !4159

; <label>:11:                                     ; preds = %10, %39
  %12 = phi i32 [ %40, %39 ], [ 10, %10 ], !dbg !4163
  %13 = phi i8* [ %30, %39 ], [ %8, %10 ]
  %14 = bitcast i8* %13 to i32*, !dbg !4159
  call void @llvm.dbg.value(metadata i32* %14, i64 0, metadata !613, metadata !649), !dbg !4164
  call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !611, metadata !649), !dbg !4148
  call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !618, metadata !649), !dbg !4165
  call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !611, metadata !985), !dbg !4148
  %15 = call i32 @getgrouplist(i8* nonnull %0, i32 %1, i32* nonnull %14, i32* nonnull %4) #10, !dbg !4166
  call void @llvm.dbg.value(metadata i32 %15, i64 0, metadata !612, metadata !649), !dbg !4167
  %16 = icmp slt i32 %15, 0, !dbg !4168
  %17 = load i32, i32* %4, align 4, !tbaa !751
  %18 = icmp eq i32 %12, %17, !dbg !4170
  %19 = and i1 %16, %18, !dbg !4172
  call void @llvm.dbg.value(metadata i32 %17, i64 0, metadata !611, metadata !649), !dbg !4148
  br i1 %19, label %20, label %22, !dbg !4172

; <label>:20:                                     ; preds = %11
  %21 = shl nsw i32 %12, 1, !dbg !4173
  call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !611, metadata !649), !dbg !4148
  store i32 %21, i32* %4, align 4, !dbg !4173, !tbaa !751
  br label %22, !dbg !4174

; <label>:22:                                     ; preds = %11, %20
  %23 = phi i32 [ %21, %20 ], [ %17, %11 ], !dbg !4175
  call void @llvm.dbg.value(metadata i32 %23, i64 0, metadata !611, metadata !649), !dbg !4148
  call void @llvm.dbg.value(metadata i32* %14, i64 0, metadata !4150, metadata !649) #10, !dbg !4176
  call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !4155, metadata !649) #10, !dbg !4178
  %24 = icmp slt i32 %23, 0, !dbg !4179
  br i1 %24, label %25, label %27, !dbg !4181

; <label>:25:                                     ; preds = %22
  %26 = tail call i32* @__errno_location() #1, !dbg !4182
  store i32 12, i32* %26, align 4, !dbg !4184, !tbaa !751
  br label %34, !dbg !4185

; <label>:27:                                     ; preds = %22
  %28 = sext i32 %23 to i64, !dbg !4175
  %29 = shl nsw i64 %28, 2, !dbg !4186
  %30 = call i8* @realloc(i8* nonnull %13, i64 %29) #10, !dbg !4187
  %31 = icmp eq i8* %30, null, !dbg !4188
  br i1 %31, label %32, label %37, !dbg !4185

; <label>:32:                                     ; preds = %27
  %33 = tail call i32* @__errno_location() #1, !dbg !4189
  br label %34, !dbg !4189

; <label>:34:                                     ; preds = %32, %25
  %35 = phi i32* [ %33, %32 ], [ %26, %25 ], !dbg !4189
  %36 = load i32, i32* %35, align 4, !dbg !4189, !tbaa !751
  call void @llvm.dbg.value(metadata i32 %36, i64 0, metadata !619, metadata !649), !dbg !4190
  call void @free(i8* nonnull %13) #10, !dbg !4191
  store i32 %36, i32* %35, align 4, !dbg !4192, !tbaa !751
  br label %122

; <label>:37:                                     ; preds = %27
  %38 = icmp sgt i32 %15, -1, !dbg !4193
  br i1 %38, label %41, label %39, !dbg !4195

; <label>:39:                                     ; preds = %37
  %40 = load i32, i32* %4, align 4, !tbaa !751
  br label %11, !dbg !4195

; <label>:41:                                     ; preds = %37
  %42 = bitcast i32** %2 to i8**, !dbg !4196
  store i8* %30, i8** %42, align 8, !dbg !4196, !tbaa !657
  %43 = load i32, i32* %4, align 4, !dbg !4198, !tbaa !751
  call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !611, metadata !649), !dbg !4148
  br label %122, !dbg !4199

; <label>:44:                                     ; preds = %3
  %45 = tail call i32 @getgroups(i32 0, i32* null) #10, !dbg !4200
  tail call void @llvm.dbg.value(metadata i32 %45, i64 0, metadata !611, metadata !649), !dbg !4148
  store i32 %45, i32* %4, align 4, !dbg !4201, !tbaa !751
  %46 = icmp slt i32 %45, 0, !dbg !4203
  br i1 %46, label %47, label %59, !dbg !4205

; <label>:47:                                     ; preds = %44
  %48 = tail call i32* @__errno_location() #1, !dbg !4206
  %49 = load i32, i32* %48, align 4, !dbg !4206, !tbaa !751
  %50 = icmp eq i32 %49, 38, !dbg !4209
  br i1 %50, label %51, label %122, !dbg !4210

; <label>:51:                                     ; preds = %47
  tail call void @llvm.dbg.value(metadata i32* null, i64 0, metadata !4150, metadata !649) #10, !dbg !4211
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4155, metadata !649) #10, !dbg !4214
  %52 = tail call i8* @realloc(i8* null, i64 4) #10, !dbg !4215
  tail call void @llvm.dbg.value(metadata i32* %55, i64 0, metadata !613, metadata !649), !dbg !4164
  %53 = icmp eq i8* %52, null, !dbg !4216
  br i1 %53, label %122, label %54, !dbg !4217

; <label>:54:                                     ; preds = %51
  %55 = bitcast i8* %52 to i32*, !dbg !4215
  %56 = bitcast i32** %2 to i8**, !dbg !4219
  store i8* %52, i8** %56, align 8, !dbg !4219, !tbaa !657
  store i32 %1, i32* %55, align 4, !dbg !4221, !tbaa !751
  %57 = icmp ne i32 %1, -1, !dbg !4222
  %58 = zext i1 %57 to i32, !dbg !4222
  br label %122, !dbg !4223

; <label>:59:                                     ; preds = %44
  %60 = icmp eq i32 %45, 0, !dbg !4224
  %61 = icmp ne i32 %1, -1, !dbg !4226
  %62 = or i1 %61, %60, !dbg !4228
  br i1 %62, label %63, label %68, !dbg !4228

; <label>:63:                                     ; preds = %59
  tail call void @llvm.dbg.value(metadata i32 %45, i64 0, metadata !611, metadata !649), !dbg !4148
  %64 = add nsw i32 %45, 1, !dbg !4229
  tail call void @llvm.dbg.value(metadata i32 %64, i64 0, metadata !611, metadata !649), !dbg !4148
  store i32 %64, i32* %4, align 4, !dbg !4229, !tbaa !751
  tail call void @llvm.dbg.value(metadata i32 %64, i64 0, metadata !611, metadata !649), !dbg !4148
  tail call void @llvm.dbg.value(metadata i32* null, i64 0, metadata !4150, metadata !649) #10, !dbg !4230
  tail call void @llvm.dbg.value(metadata i64 %70, i64 0, metadata !4155, metadata !649) #10, !dbg !4232
  %65 = icmp slt i32 %45, -1, !dbg !4233
  br i1 %65, label %66, label %68, !dbg !4234

; <label>:66:                                     ; preds = %63
  %67 = tail call i32* @__errno_location() #1, !dbg !4235
  store i32 12, i32* %67, align 4, !dbg !4236, !tbaa !751
  tail call void @llvm.dbg.value(metadata i32* %73, i64 0, metadata !613, metadata !649), !dbg !4164
  br label %122, !dbg !4237

; <label>:68:                                     ; preds = %59, %63
  %69 = phi i32 [ %64, %63 ], [ %45, %59 ]
  %70 = sext i32 %69 to i64, !dbg !4238
  %71 = shl nsw i64 %70, 2, !dbg !4239
  %72 = tail call i8* @realloc(i8* null, i64 %71) #10, !dbg !4240
  %73 = bitcast i8* %72 to i32*, !dbg !4240
  tail call void @llvm.dbg.value(metadata i32* %73, i64 0, metadata !613, metadata !649), !dbg !4164
  %74 = icmp eq i8* %72, null, !dbg !4241
  br i1 %74, label %122, label %75, !dbg !4237

; <label>:75:                                     ; preds = %68
  tail call void @llvm.dbg.value(metadata i32 %64, i64 0, metadata !611, metadata !649), !dbg !4148
  %76 = zext i1 %61 to i32, !dbg !4243
  %77 = sub nsw i32 %69, %76, !dbg !4244
  %78 = zext i1 %61 to i64, !dbg !4245
  %79 = getelementptr inbounds i32, i32* %73, i64 %78, !dbg !4245
  %80 = tail call i32 @getgroups(i32 %77, i32* %79) #10, !dbg !4246
  tail call void @llvm.dbg.value(metadata i32 %80, i64 0, metadata !612, metadata !649), !dbg !4167
  %81 = icmp slt i32 %80, 0, !dbg !4247
  br i1 %81, label %82, label %85, !dbg !4248

; <label>:82:                                     ; preds = %75
  %83 = tail call i32* @__errno_location() #1, !dbg !4249
  %84 = load i32, i32* %83, align 4, !dbg !4249, !tbaa !751
  tail call void @llvm.dbg.value(metadata i32 %84, i64 0, metadata !622, metadata !649), !dbg !4250
  tail call void @free(i8* nonnull %72) #10, !dbg !4251
  store i32 %84, i32* %83, align 4, !dbg !4252, !tbaa !751
  br label %122

; <label>:85:                                     ; preds = %75
  br i1 %61, label %86, label %88, !dbg !4253

; <label>:86:                                     ; preds = %85
  store i32 %1, i32* %73, align 4, !dbg !4255, !tbaa !751
  %87 = add nsw i32 %80, 1, !dbg !4257
  tail call void @llvm.dbg.value(metadata i32 %87, i64 0, metadata !612, metadata !649), !dbg !4167
  br label %88, !dbg !4258

; <label>:88:                                     ; preds = %85, %86
  %89 = phi i32 [ %87, %86 ], [ %80, %85 ]
  tail call void @llvm.dbg.value(metadata i32 %89, i64 0, metadata !612, metadata !649), !dbg !4167
  %90 = bitcast i32** %2 to i8**, !dbg !4259
  store i8* %72, i8** %90, align 8, !dbg !4259, !tbaa !657
  %91 = icmp sgt i32 %89, 1, !dbg !4260
  br i1 %91, label %92, label %122, !dbg !4261

; <label>:92:                                     ; preds = %88
  %93 = load i32, i32* %73, align 4, !dbg !4262, !tbaa !751
  tail call void @llvm.dbg.value(metadata i32 %93, i64 0, metadata !625, metadata !649), !dbg !4263
  %94 = sext i32 %89 to i64, !dbg !4264
  %95 = getelementptr inbounds i32, i32* %73, i64 %94, !dbg !4264
  tail call void @llvm.dbg.value(metadata i32* %95, i64 0, metadata !629, metadata !649), !dbg !4265
  %96 = getelementptr inbounds i8, i8* %72, i64 4
  %97 = bitcast i8* %96 to i32*
  tail call void @llvm.dbg.value(metadata i32* %97, i64 0, metadata !628, metadata !649), !dbg !4266
  tail call void @llvm.dbg.value(metadata i32 %89, i64 0, metadata !612, metadata !649), !dbg !4167
  tail call void @llvm.dbg.value(metadata i32* %73, i64 0, metadata !613, metadata !649), !dbg !4164
  %98 = icmp ult i32* %97, %95, !dbg !4267
  br i1 %98, label %99, label %122, !dbg !4271

; <label>:99:                                     ; preds = %92
  br label %100, !dbg !4271

; <label>:100:                                    ; preds = %99, %116
  %101 = phi i32 [ %108, %116 ], [ %93, %99 ]
  %102 = phi i32* [ %118, %116 ], [ %97, %99 ]
  %103 = phi i32 [ %107, %116 ], [ %89, %99 ]
  %104 = phi i32* [ %117, %116 ], [ %73, %99 ]
  br label %105, !dbg !4271

; <label>:105:                                    ; preds = %100, %112
  %106 = phi i32* [ %102, %100 ], [ %114, %112 ]
  %107 = phi i32 [ %103, %100 ], [ %113, %112 ]
  %108 = load i32, i32* %106, align 4, !dbg !4273, !tbaa !751
  %109 = icmp eq i32 %108, %93, !dbg !4276
  %110 = icmp eq i32 %108, %101, !dbg !4277
  %111 = or i1 %109, %110, !dbg !4279
  br i1 %111, label %112, label %116, !dbg !4279

; <label>:112:                                    ; preds = %105
  %113 = add nsw i32 %107, -1, !dbg !4280
  tail call void @llvm.dbg.value(metadata i32 %113, i64 0, metadata !612, metadata !649), !dbg !4167
  %114 = getelementptr inbounds i32, i32* %106, i64 1
  tail call void @llvm.dbg.value(metadata i32* %114, i64 0, metadata !628, metadata !649), !dbg !4266
  tail call void @llvm.dbg.value(metadata i32 %113, i64 0, metadata !612, metadata !649), !dbg !4167
  tail call void @llvm.dbg.value(metadata i32* %104, i64 0, metadata !613, metadata !649), !dbg !4164
  %115 = icmp ult i32* %114, %95, !dbg !4267
  br i1 %115, label %105, label %120, !dbg !4271, !llvm.loop !4281

; <label>:116:                                    ; preds = %105
  %117 = getelementptr inbounds i32, i32* %104, i64 1, !dbg !4284
  tail call void @llvm.dbg.value(metadata i32* %117, i64 0, metadata !613, metadata !649), !dbg !4164
  store i32 %108, i32* %117, align 4, !dbg !4285, !tbaa !751
  %118 = getelementptr inbounds i32, i32* %106, i64 1
  tail call void @llvm.dbg.value(metadata i32* %118, i64 0, metadata !628, metadata !649), !dbg !4266
  tail call void @llvm.dbg.value(metadata i32 %107, i64 0, metadata !612, metadata !649), !dbg !4167
  tail call void @llvm.dbg.value(metadata i32* %117, i64 0, metadata !613, metadata !649), !dbg !4164
  %119 = icmp ult i32* %118, %95, !dbg !4267
  br i1 %119, label %100, label %121, !dbg !4271, !llvm.loop !4281

; <label>:120:                                    ; preds = %112
  br label %122, !dbg !4286

; <label>:121:                                    ; preds = %116
  br label %122, !dbg !4286

; <label>:122:                                    ; preds = %121, %120, %92, %41, %34, %66, %88, %68, %47, %51, %7, %82, %54
  %123 = phi i32 [ %58, %54 ], [ -1, %82 ], [ -1, %7 ], [ -1, %51 ], [ -1, %47 ], [ -1, %68 ], [ %89, %88 ], [ -1, %66 ], [ %43, %41 ], [ -1, %34 ], [ %89, %92 ], [ %113, %120 ], [ %107, %121 ]
  call void @llvm.lifetime.end(i64 4, i8* nonnull %5) #10, !dbg !4286
  ret i32 %123, !dbg !4286
}

declare i32 @getgrouplist(i8*, i32, i32*, i32*) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @getgroups(i32, i32*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !4287 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4332, metadata !649), !dbg !4336
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4333, metadata !649), !dbg !4337
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4335, metadata !649), !dbg !4338
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !4339
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4334, metadata !649), !dbg !4340
  %3 = icmp slt i32 %2, 0, !dbg !4341
  br i1 %3, label %4, label %6, !dbg !4343

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4344
  br label %24, !dbg !4345

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !4346
  %8 = icmp eq i32 %7, 0, !dbg !4346
  br i1 %8, label %13, label %9, !dbg !4348

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !4349
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #10, !dbg !4351
  %12 = icmp eq i64 %11, -1, !dbg !4353
  br i1 %12, label %16, label %13, !dbg !4354

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #10, !dbg !4355
  %15 = icmp eq i32 %14, 0, !dbg !4355
  br i1 %15, label %16, label %18, !dbg !4356

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4333, metadata !649), !dbg !4337
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4358
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4335, metadata !649), !dbg !4338
  br label %24, !dbg !4359

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #1, !dbg !4360
  %20 = load i32, i32* %19, align 4, !dbg !4360, !tbaa !751
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4333, metadata !649), !dbg !4337
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4333, metadata !649), !dbg !4337
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4358
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4335, metadata !649), !dbg !4338
  %22 = icmp eq i32 %20, 0, !dbg !4361
  br i1 %22, label %24, label %23, !dbg !4359

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4363, !tbaa !751
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !4335, metadata !649), !dbg !4338
  br label %24, !dbg !4365

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !4366
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
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !4367 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4412, metadata !649), !dbg !4413
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4414
  br i1 %2, label %6, label %3, !dbg !4416

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !4417
  %5 = icmp eq i32 %4, 0, !dbg !4417
  br i1 %5, label %6, label %8, !dbg !4419

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4421
  br label %17, !dbg !4422

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4423, metadata !649) #10, !dbg !4428
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4430
  %10 = load i32, i32* %9, align 8, !dbg !4430, !tbaa !3797
  %11 = and i32 %10, 256, !dbg !4432
  %12 = icmp eq i32 %11, 0, !dbg !4432
  br i1 %12, label %15, label %13, !dbg !4433

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #10, !dbg !4434
  br label %15, !dbg !4434

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4435
  br label %17, !dbg !4436

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !4437
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !4438 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4484, metadata !649), !dbg !4490
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4485, metadata !649), !dbg !4491
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4486, metadata !649), !dbg !4492
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4493
  %5 = load i8*, i8** %4, align 8, !dbg !4493, !tbaa !4027
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4494
  %7 = load i8*, i8** %6, align 8, !dbg !4494, !tbaa !4026
  %8 = icmp eq i8* %5, %7, !dbg !4495
  br i1 %8, label %9, label %28, !dbg !4496

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4497
  %11 = load i8*, i8** %10, align 8, !dbg !4497, !tbaa !814
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4499
  %13 = load i8*, i8** %12, align 8, !dbg !4499, !tbaa !4500
  %14 = icmp eq i8* %11, %13, !dbg !4501
  br i1 %14, label %15, label %28, !dbg !4502

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4503
  %17 = load i8*, i8** %16, align 8, !dbg !4503, !tbaa !4504
  %18 = icmp eq i8* %17, null, !dbg !4505
  br i1 %18, label %19, label %28, !dbg !4506

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !4508
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #10, !dbg !4509
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !4487, metadata !649), !dbg !4511
  %22 = icmp eq i64 %21, -1, !dbg !4512
  br i1 %22, label %30, label %23, !dbg !4514

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4515
  %25 = load i32, i32* %24, align 8, !dbg !4516, !tbaa !3797
  %26 = and i32 %25, -17, !dbg !4516
  store i32 %26, i32* %24, align 8, !dbg !4516, !tbaa !3797
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4517
  store i64 %21, i64* %27, align 8, !dbg !4518, !tbaa !4519
  br label %30, !dbg !4520

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4521
  br label %30, !dbg !4522

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !4523
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

!llvm.dbg.cu = !{!2, !76, !86, !91, !100, !552, !107, !114, !558, !197, !566, !583, !585, !587, !589, !592, !594, !206, !597, !633, !635, !637}
!llvm.ident = !{!639, !639, !639, !639, !639, !639, !639, !639, !639, !639, !639, !639, !639, !639, !639, !639, !639, !639, !639, !639, !639, !639}
!llvm.module.flags = !{!640, !641, !642, !643}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 40, type: !51, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !19)
!3 = !DIFile(filename: "src/groups.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
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
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 768, elements: !61)
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
!62 = !DISubrange(count: 3)
!63 = !DIGlobalVariableExpression(var: !64)
!64 = distinct !DIGlobalVariable(name: "buf", scope: !65, file: !66, line: 97, type: !81, isLocal: true, isDefinition: true)
!65 = distinct !DISubprogram(name: "gidtostr_ptr", scope: !66, file: !66, line: 95, type: !67, isLocal: true, isDefinition: true, scopeLine: 96, flags: DIFlagPrototyped, isOptimized: true, unit: !76, variables: !79)
!66 = !DIFile(filename: "src/group-list.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!67 = !DISubroutineType(types: !68)
!68 = !{!6, !69}
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !71)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !72, line: 65, baseType: !73)
!72 = !DIFile(filename: "/usr/include/sys/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !74, line: 135, baseType: !75)
!74 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!75 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!76 = distinct !DICompileUnit(language: DW_LANG_C99, file: !66, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !77, globals: !78)
!77 = !{!8, !11, !16}
!78 = !{!63}
!79 = !{!80}
!80 = !DILocalVariable(name: "gid", arg: 1, scope: !65, file: !66, line: 95, type: !69)
!81 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 168, elements: !82)
!82 = !{!83}
!83 = !DISubrange(count: 21)
!84 = !DIGlobalVariableExpression(var: !85)
!85 = distinct !DIGlobalVariable(name: "Version", scope: !86, file: !87, line: 2, type: !17, isLocal: false, isDefinition: true)
!86 = distinct !DICompileUnit(language: DW_LANG_C99, file: !87, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !88)
!87 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!88 = !{!84}
!89 = !DIGlobalVariableExpression(var: !90)
!90 = distinct !DIGlobalVariable(name: "file_name", scope: !91, file: !96, line: 36, type: !17, isLocal: true, isDefinition: true)
!91 = distinct !DICompileUnit(language: DW_LANG_C99, file: !92, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !93)
!92 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!93 = !{!89, !94}
!94 = !DIGlobalVariableExpression(var: !95)
!95 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !91, file: !96, line: 46, type: !97, isLocal: true, isDefinition: true)
!96 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!97 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!98 = !DIGlobalVariableExpression(var: !99)
!99 = distinct !DIGlobalVariable(name: "exit_failure", scope: !100, file: !103, line: 24, type: !104, isLocal: false, isDefinition: true)
!100 = distinct !DICompileUnit(language: DW_LANG_C99, file: !101, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !102)
!101 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!102 = !{!98}
!103 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!104 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !47)
!105 = !DIGlobalVariableExpression(var: !106)
!106 = distinct !DIGlobalVariable(name: "program_name", scope: !107, file: !111, line: 33, type: !17, isLocal: false, isDefinition: true)
!107 = distinct !DICompileUnit(language: DW_LANG_C99, file: !108, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !109, globals: !110)
!108 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!109 = !{!8, !6}
!110 = !{!105}
!111 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!112 = !DIGlobalVariableExpression(var: !113)
!113 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !114, file: !156, line: 77, type: !191, isLocal: false, isDefinition: true)
!114 = distinct !DICompileUnit(language: DW_LANG_C99, file: !115, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !116, retainedTypes: !151, globals: !153)
!115 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!116 = !{!117, !131, !136}
!117 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !118, line: 32, size: 32, elements: !119)
!118 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!119 = !{!120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130}
!120 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!121 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!122 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!123 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!124 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!125 = !DIEnumerator(name: "c_quoting_style", value: 5)
!126 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!127 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!128 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!129 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!130 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!131 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !118, line: 242, size: 32, elements: !132)
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
!151 = !{!47, !152, !9, !6}
!152 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!153 = !{!112, !154, !161, !173, !175, !180, !187, !189}
!154 = !DIGlobalVariableExpression(var: !155)
!155 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !114, file: !156, line: 93, type: !157, isLocal: false, isDefinition: true)
!156 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !158, size: 320, elements: !159)
!158 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !117)
!159 = !{!160}
!160 = !DISubrange(count: 10)
!161 = !DIGlobalVariableExpression(var: !162)
!162 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !114, file: !156, line: 1043, type: !163, isLocal: false, isDefinition: true)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !156, line: 57, size: 448, elements: !164)
!164 = !{!165, !166, !167, !171, !172}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !163, file: !156, line: 60, baseType: !117, size: 32)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !163, file: !156, line: 63, baseType: !47, size: 32, offset: 32)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !163, file: !156, line: 67, baseType: !168, size: 256, offset: 64)
!168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 256, elements: !169)
!169 = !{!170}
!170 = !DISubrange(count: 8)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !163, file: !156, line: 70, baseType: !17, size: 64, offset: 320)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !163, file: !156, line: 73, baseType: !17, size: 64, offset: 384)
!173 = !DIGlobalVariableExpression(var: !174)
!174 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !114, file: !156, line: 108, type: !163, isLocal: true, isDefinition: true)
!175 = !DIGlobalVariableExpression(var: !176)
!176 = distinct !DIGlobalVariable(name: "slot0", scope: !114, file: !156, line: 834, type: !177, isLocal: true, isDefinition: true)
!177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 2048, elements: !178)
!178 = !{!179}
!179 = !DISubrange(count: 256)
!180 = !DIGlobalVariableExpression(var: !181)
!181 = distinct !DIGlobalVariable(name: "slotvec", scope: !114, file: !156, line: 837, type: !182, isLocal: true, isDefinition: true)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !156, line: 826, size: 128, elements: !184)
!184 = !{!185, !186}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !183, file: !156, line: 828, baseType: !9, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !183, file: !156, line: 829, baseType: !6, size: 64, offset: 64)
!187 = !DIGlobalVariableExpression(var: !188)
!188 = distinct !DIGlobalVariable(name: "nslots", scope: !114, file: !156, line: 835, type: !47, isLocal: true, isDefinition: true)
!189 = !DIGlobalVariableExpression(var: !190)
!190 = distinct !DIGlobalVariable(name: "slotvec0", scope: !114, file: !156, line: 836, type: !183, isLocal: true, isDefinition: true)
!191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !192, size: 704, elements: !193)
!192 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!193 = !{!194}
!194 = !DISubrange(count: 11)
!195 = !DIGlobalVariableExpression(var: !196)
!196 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !197, file: !200, line: 26, type: !201, isLocal: false, isDefinition: true)
!197 = distinct !DICompileUnit(language: DW_LANG_C99, file: !198, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !199)
!198 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!199 = !{!195}
!200 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 376, elements: !202)
!202 = !{!203}
!203 = !DISubrange(count: 47)
!204 = !DIGlobalVariableExpression(var: !205)
!205 = distinct !DIGlobalVariable(name: "charset_aliases", scope: !206, file: !550, line: 120, type: !551, isLocal: true, isDefinition: true)
!206 = distinct !DICompileUnit(language: DW_LANG_C99, file: !207, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !208, retainedTypes: !547, globals: !549)
!207 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!208 = !{!209}
!209 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !210, line: 41, size: 32, elements: !211)
!210 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!211 = !{!212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546}
!212 = !DIEnumerator(name: "ABDAY_1", value: 131072)
!213 = !DIEnumerator(name: "ABDAY_2", value: 131073)
!214 = !DIEnumerator(name: "ABDAY_3", value: 131074)
!215 = !DIEnumerator(name: "ABDAY_4", value: 131075)
!216 = !DIEnumerator(name: "ABDAY_5", value: 131076)
!217 = !DIEnumerator(name: "ABDAY_6", value: 131077)
!218 = !DIEnumerator(name: "ABDAY_7", value: 131078)
!219 = !DIEnumerator(name: "DAY_1", value: 131079)
!220 = !DIEnumerator(name: "DAY_2", value: 131080)
!221 = !DIEnumerator(name: "DAY_3", value: 131081)
!222 = !DIEnumerator(name: "DAY_4", value: 131082)
!223 = !DIEnumerator(name: "DAY_5", value: 131083)
!224 = !DIEnumerator(name: "DAY_6", value: 131084)
!225 = !DIEnumerator(name: "DAY_7", value: 131085)
!226 = !DIEnumerator(name: "ABMON_1", value: 131086)
!227 = !DIEnumerator(name: "ABMON_2", value: 131087)
!228 = !DIEnumerator(name: "ABMON_3", value: 131088)
!229 = !DIEnumerator(name: "ABMON_4", value: 131089)
!230 = !DIEnumerator(name: "ABMON_5", value: 131090)
!231 = !DIEnumerator(name: "ABMON_6", value: 131091)
!232 = !DIEnumerator(name: "ABMON_7", value: 131092)
!233 = !DIEnumerator(name: "ABMON_8", value: 131093)
!234 = !DIEnumerator(name: "ABMON_9", value: 131094)
!235 = !DIEnumerator(name: "ABMON_10", value: 131095)
!236 = !DIEnumerator(name: "ABMON_11", value: 131096)
!237 = !DIEnumerator(name: "ABMON_12", value: 131097)
!238 = !DIEnumerator(name: "MON_1", value: 131098)
!239 = !DIEnumerator(name: "MON_2", value: 131099)
!240 = !DIEnumerator(name: "MON_3", value: 131100)
!241 = !DIEnumerator(name: "MON_4", value: 131101)
!242 = !DIEnumerator(name: "MON_5", value: 131102)
!243 = !DIEnumerator(name: "MON_6", value: 131103)
!244 = !DIEnumerator(name: "MON_7", value: 131104)
!245 = !DIEnumerator(name: "MON_8", value: 131105)
!246 = !DIEnumerator(name: "MON_9", value: 131106)
!247 = !DIEnumerator(name: "MON_10", value: 131107)
!248 = !DIEnumerator(name: "MON_11", value: 131108)
!249 = !DIEnumerator(name: "MON_12", value: 131109)
!250 = !DIEnumerator(name: "AM_STR", value: 131110)
!251 = !DIEnumerator(name: "PM_STR", value: 131111)
!252 = !DIEnumerator(name: "D_T_FMT", value: 131112)
!253 = !DIEnumerator(name: "D_FMT", value: 131113)
!254 = !DIEnumerator(name: "T_FMT", value: 131114)
!255 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115)
!256 = !DIEnumerator(name: "ERA", value: 131116)
!257 = !DIEnumerator(name: "__ERA_YEAR", value: 131117)
!258 = !DIEnumerator(name: "ERA_D_FMT", value: 131118)
!259 = !DIEnumerator(name: "ALT_DIGITS", value: 131119)
!260 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120)
!261 = !DIEnumerator(name: "ERA_T_FMT", value: 131121)
!262 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122)
!263 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123)
!264 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124)
!265 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125)
!266 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126)
!267 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127)
!268 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128)
!269 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129)
!270 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130)
!271 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131)
!272 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132)
!273 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133)
!274 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134)
!275 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135)
!276 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136)
!277 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137)
!278 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138)
!279 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139)
!280 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140)
!281 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141)
!282 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142)
!283 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143)
!284 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144)
!285 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145)
!286 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146)
!287 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147)
!288 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148)
!289 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149)
!290 = !DIEnumerator(name: "_NL_WMON_1", value: 131150)
!291 = !DIEnumerator(name: "_NL_WMON_2", value: 131151)
!292 = !DIEnumerator(name: "_NL_WMON_3", value: 131152)
!293 = !DIEnumerator(name: "_NL_WMON_4", value: 131153)
!294 = !DIEnumerator(name: "_NL_WMON_5", value: 131154)
!295 = !DIEnumerator(name: "_NL_WMON_6", value: 131155)
!296 = !DIEnumerator(name: "_NL_WMON_7", value: 131156)
!297 = !DIEnumerator(name: "_NL_WMON_8", value: 131157)
!298 = !DIEnumerator(name: "_NL_WMON_9", value: 131158)
!299 = !DIEnumerator(name: "_NL_WMON_10", value: 131159)
!300 = !DIEnumerator(name: "_NL_WMON_11", value: 131160)
!301 = !DIEnumerator(name: "_NL_WMON_12", value: 131161)
!302 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162)
!303 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163)
!304 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164)
!305 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165)
!306 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166)
!307 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167)
!308 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168)
!309 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169)
!310 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170)
!311 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171)
!312 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172)
!313 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173)
!314 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174)
!315 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175)
!316 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176)
!317 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177)
!318 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178)
!319 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179)
!320 = !DIEnumerator(name: "_DATE_FMT", value: 131180)
!321 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181)
!322 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182)
!323 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131183)
!324 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608)
!325 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609)
!326 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610)
!327 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611)
!328 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612)
!329 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613)
!330 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614)
!331 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615)
!332 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616)
!333 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617)
!334 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618)
!335 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619)
!336 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620)
!337 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621)
!338 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622)
!339 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623)
!340 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624)
!341 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625)
!342 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626)
!343 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627)
!344 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0)
!345 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1)
!346 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2)
!347 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3)
!348 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4)
!349 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5)
!350 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6)
!351 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7)
!352 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8)
!353 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9)
!354 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10)
!355 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11)
!356 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12)
!357 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13)
!358 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14)
!359 = !DIEnumerator(name: "CODESET", value: 14)
!360 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15)
!361 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16)
!362 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17)
!363 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18)
!364 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19)
!365 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20)
!366 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21)
!367 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22)
!368 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23)
!369 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24)
!370 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25)
!371 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26)
!372 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27)
!373 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28)
!374 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29)
!375 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30)
!376 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31)
!377 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32)
!378 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33)
!379 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34)
!380 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35)
!381 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36)
!382 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37)
!383 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38)
!384 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39)
!385 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40)
!386 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41)
!387 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42)
!388 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43)
!389 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44)
!390 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45)
!391 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46)
!392 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47)
!393 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48)
!394 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49)
!395 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50)
!396 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51)
!397 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52)
!398 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53)
!399 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54)
!400 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55)
!401 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56)
!402 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57)
!403 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58)
!404 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59)
!405 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60)
!406 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61)
!407 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62)
!408 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63)
!409 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64)
!410 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65)
!411 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66)
!412 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67)
!413 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68)
!414 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69)
!415 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70)
!416 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71)
!417 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72)
!418 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73)
!419 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74)
!420 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75)
!421 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76)
!422 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77)
!423 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78)
!424 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79)
!425 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80)
!426 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81)
!427 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82)
!428 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83)
!429 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84)
!430 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85)
!431 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86)
!432 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144)
!433 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145)
!434 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146)
!435 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147)
!436 = !DIEnumerator(name: "__MON_GROUPING", value: 262148)
!437 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149)
!438 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150)
!439 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151)
!440 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152)
!441 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153)
!442 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154)
!443 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155)
!444 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156)
!445 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157)
!446 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158)
!447 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159)
!448 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160)
!449 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161)
!450 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162)
!451 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163)
!452 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164)
!453 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165)
!454 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166)
!455 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167)
!456 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168)
!457 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169)
!458 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170)
!459 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171)
!460 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172)
!461 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173)
!462 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174)
!463 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175)
!464 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176)
!465 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177)
!466 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178)
!467 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179)
!468 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180)
!469 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181)
!470 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182)
!471 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183)
!472 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184)
!473 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185)
!474 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186)
!475 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187)
!476 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188)
!477 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189)
!478 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190)
!479 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536)
!480 = !DIEnumerator(name: "RADIXCHAR", value: 65536)
!481 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537)
!482 = !DIEnumerator(name: "THOUSEP", value: 65537)
!483 = !DIEnumerator(name: "__GROUPING", value: 65538)
!484 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539)
!485 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540)
!486 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541)
!487 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542)
!488 = !DIEnumerator(name: "__YESEXPR", value: 327680)
!489 = !DIEnumerator(name: "__NOEXPR", value: 327681)
!490 = !DIEnumerator(name: "__YESSTR", value: 327682)
!491 = !DIEnumerator(name: "__NOSTR", value: 327683)
!492 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684)
!493 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685)
!494 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752)
!495 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753)
!496 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754)
!497 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755)
!498 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288)
!499 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289)
!500 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290)
!501 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291)
!502 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292)
!503 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293)
!504 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294)
!505 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295)
!506 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824)
!507 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825)
!508 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826)
!509 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827)
!510 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828)
!511 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829)
!512 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830)
!513 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831)
!514 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832)
!515 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833)
!516 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834)
!517 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835)
!518 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836)
!519 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837)
!520 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360)
!521 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361)
!522 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362)
!523 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363)
!524 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364)
!525 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365)
!526 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896)
!527 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897)
!528 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898)
!529 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432)
!530 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433)
!531 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434)
!532 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435)
!533 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436)
!534 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437)
!535 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438)
!536 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439)
!537 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440)
!538 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441)
!539 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442)
!540 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443)
!541 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444)
!542 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445)
!543 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446)
!544 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447)
!545 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448)
!546 = !DIEnumerator(name: "_NL_NUM", value: 786449)
!547 = !{!8, !6, !548}
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!549 = !{!204}
!550 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!551 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !17)
!552 = distinct !DICompileUnit(language: DW_LANG_C99, file: !553, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !554)
!553 = !DIFile(filename: "./lib/umaxtostr.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!554 = !{!555}
!555 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !556, line: 136, baseType: !557)
!556 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!557 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !74, line: 62, baseType: !11)
!558 = distinct !DICompileUnit(language: DW_LANG_C99, file: !559, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !560, retainedTypes: !565)
!559 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!560 = !{!561}
!561 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !562, line: 41, size: 32, elements: !563)
!562 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!563 = !{!564}
!564 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!565 = !{!8}
!566 = distinct !DICompileUnit(language: DW_LANG_C99, file: !567, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !568, retainedTypes: !582)
!567 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!568 = !{!569}
!569 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !571, file: !570, line: 192, size: 32, elements: !580)
!570 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!571 = distinct !DISubprogram(name: "x2nrealloc", scope: !570, file: !570, line: 180, type: !572, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !566, variables: !575)
!572 = !DISubroutineType(types: !573)
!573 = !{!8, !8, !574, !9}
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!575 = !{!576, !577, !578, !579}
!576 = !DILocalVariable(name: "p", arg: 1, scope: !571, file: !570, line: 180, type: !8)
!577 = !DILocalVariable(name: "pn", arg: 2, scope: !571, file: !570, line: 180, type: !574)
!578 = !DILocalVariable(name: "s", arg: 3, scope: !571, file: !570, line: 180, type: !9)
!579 = !DILocalVariable(name: "n", scope: !571, file: !570, line: 182, type: !9)
!580 = !{!581}
!581 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!582 = !{!9, !6, !8}
!583 = distinct !DICompileUnit(language: DW_LANG_C99, file: !584, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!584 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!585 = distinct !DICompileUnit(language: DW_LANG_C99, file: !586, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!586 = !DIFile(filename: "./lib/xgetgroups.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!587 = distinct !DICompileUnit(language: DW_LANG_C99, file: !588, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !565)
!588 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!589 = distinct !DICompileUnit(language: DW_LANG_C99, file: !590, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !591)
!590 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!591 = !{!9}
!592 = distinct !DICompileUnit(language: DW_LANG_C99, file: !593, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!593 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!594 = distinct !DICompileUnit(language: DW_LANG_C99, file: !595, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !596)
!595 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!596 = !{!9, !12, !14, !17}
!597 = distinct !DICompileUnit(language: DW_LANG_C99, file: !598, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !599, retainedTypes: !632)
!598 = !DIFile(filename: "./lib/mgetgroups.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!599 = !{!600}
!600 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !602, file: !601, line: 83, size: 32, elements: !630)
!601 = !DIFile(filename: "lib/mgetgroups.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!602 = distinct !DISubprogram(name: "mgetgroups", scope: !601, file: !601, line: 66, type: !603, isLocal: false, isDefinition: true, scopeLine: 67, flags: DIFlagPrototyped, isOptimized: true, unit: !597, variables: !607)
!603 = !DISubroutineType(types: !604)
!604 = !{!47, !17, !71, !605}
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!607 = !{!608, !609, !610, !611, !612, !613, !614, !618, !619, !622, !625, !628, !629}
!608 = !DILocalVariable(name: "username", arg: 1, scope: !602, file: !601, line: 66, type: !17)
!609 = !DILocalVariable(name: "gid", arg: 2, scope: !602, file: !601, line: 66, type: !71)
!610 = !DILocalVariable(name: "groups", arg: 3, scope: !602, file: !601, line: 66, type: !605)
!611 = !DILocalVariable(name: "max_n_groups", scope: !602, file: !601, line: 68, type: !47)
!612 = !DILocalVariable(name: "ng", scope: !602, file: !601, line: 69, type: !47)
!613 = !DILocalVariable(name: "g", scope: !602, file: !601, line: 70, type: !606)
!614 = !DILocalVariable(name: "h", scope: !615, file: !601, line: 92, type: !606)
!615 = distinct !DILexicalBlock(scope: !616, file: !601, line: 91, column: 9)
!616 = distinct !DILexicalBlock(scope: !617, file: !601, line: 82, column: 5)
!617 = distinct !DILexicalBlock(scope: !602, file: !601, line: 81, column: 7)
!618 = !DILocalVariable(name: "last_n_groups", scope: !615, file: !601, line: 93, type: !47)
!619 = !DILocalVariable(name: "saved_errno", scope: !620, file: !601, line: 105, type: !47)
!620 = distinct !DILexicalBlock(scope: !621, file: !601, line: 104, column: 13)
!621 = distinct !DILexicalBlock(scope: !615, file: !601, line: 103, column: 15)
!622 = !DILocalVariable(name: "saved_errno", scope: !623, file: !601, line: 156, type: !47)
!623 = distinct !DILexicalBlock(scope: !624, file: !601, line: 154, column: 5)
!624 = distinct !DILexicalBlock(scope: !602, file: !601, line: 153, column: 7)
!625 = !DILocalVariable(name: "first", scope: !626, file: !601, line: 187, type: !71)
!626 = distinct !DILexicalBlock(scope: !627, file: !601, line: 186, column: 5)
!627 = distinct !DILexicalBlock(scope: !602, file: !601, line: 185, column: 7)
!628 = !DILocalVariable(name: "next", scope: !626, file: !601, line: 188, type: !606)
!629 = !DILocalVariable(name: "groups_end", scope: !626, file: !601, line: 189, type: !606)
!630 = !{!631}
!631 = !DIEnumerator(name: "N_GROUPS_INIT", value: 10)
!632 = !{!8, !71, !9}
!633 = distinct !DICompileUnit(language: DW_LANG_C99, file: !634, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!634 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!635 = distinct !DICompileUnit(language: DW_LANG_C99, file: !636, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !565)
!636 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!637 = distinct !DICompileUnit(language: DW_LANG_C99, file: !638, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !565)
!638 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!639 = !{!"clang version 4.0.1 (tags/RELEASE_401/final)"}
!640 = !{i32 2, !"Dwarf Version", i32 4}
!641 = !{i32 2, !"Debug Info Version", i32 3}
!642 = !{i32 1, !"PIC Level", i32 2}
!643 = !{i32 1, !"PIE Level", i32 2}
!644 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 48, type: !645, isLocal: false, isDefinition: true, scopeLine: 49, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, variables: !647)
!645 = !DISubroutineType(types: !646)
!646 = !{null, !47}
!647 = !{!648}
!648 = !DILocalVariable(name: "status", arg: 1, scope: !644, file: !3, line: 48, type: !47)
!649 = !DIExpression()
!650 = !DILocation(line: 48, column: 12, scope: !644)
!651 = !DILocation(line: 50, column: 14, scope: !652)
!652 = distinct !DILexicalBlock(scope: !644, file: !3, line: 50, column: 7)
!653 = !DILocation(line: 50, column: 7, scope: !644)
!654 = !DILocation(line: 51, column: 5, scope: !655)
!655 = !DILexicalBlockFile(scope: !656, file: !3, discriminator: 1)
!656 = distinct !DILexicalBlock(scope: !652, file: !3, line: 51, column: 5)
!657 = !{!658, !658, i64 0}
!658 = !{!"any pointer", !659, i64 0}
!659 = !{!"omnipotent char", !660, i64 0}
!660 = !{!"Simple C/C++ TBAA"}
!661 = !DILocation(line: 51, column: 5, scope: !662)
!662 = !DILexicalBlockFile(scope: !656, file: !3, discriminator: 3)
!663 = !DILocation(line: 51, column: 5, scope: !664)
!664 = !DILexicalBlockFile(scope: !656, file: !3, discriminator: 2)
!665 = !DILocation(line: 54, column: 7, scope: !666)
!666 = distinct !DILexicalBlock(scope: !652, file: !3, line: 53, column: 5)
!667 = !DILocation(line: 54, column: 7, scope: !668)
!668 = !DILexicalBlockFile(scope: !666, file: !3, discriminator: 1)
!669 = !DILocation(line: 55, column: 7, scope: !666)
!670 = !DILocation(line: 55, column: 7, scope: !668)
!671 = !DILocation(line: 60, column: 7, scope: !666)
!672 = !DILocation(line: 60, column: 7, scope: !668)
!673 = !DILocation(line: 61, column: 7, scope: !666)
!674 = !DILocation(line: 61, column: 7, scope: !668)
!675 = !DILocation(line: 642, column: 15, scope: !22, inlinedAt: !676)
!676 = distinct !DILocation(line: 62, column: 7, scope: !666)
!677 = !DILocation(line: 651, column: 3, scope: !22, inlinedAt: !676)
!678 = !DILocation(line: 651, column: 3, scope: !679, inlinedAt: !676)
!679 = !DILexicalBlockFile(scope: !22, file: !23, discriminator: 1)
!680 = !DILocation(line: 655, column: 29, scope: !22, inlinedAt: !676)
!681 = !DILocation(line: 655, column: 15, scope: !22, inlinedAt: !676)
!682 = !DILocation(line: 656, column: 7, scope: !42, inlinedAt: !676)
!683 = !DILocation(line: 656, column: 19, scope: !42, inlinedAt: !676)
!684 = !DILocation(line: 656, column: 22, scope: !685, inlinedAt: !676)
!685 = !DILexicalBlockFile(scope: !42, file: !23, discriminator: 16)
!686 = !DILocation(line: 656, column: 7, scope: !687, inlinedAt: !676)
!687 = !DILexicalBlockFile(scope: !22, file: !23, discriminator: 16)
!688 = !DILocation(line: 662, column: 7, scope: !689, inlinedAt: !676)
!689 = distinct !DILexicalBlock(scope: !42, file: !23, line: 657, column: 5)
!690 = !DILocation(line: 662, column: 7, scope: !691, inlinedAt: !676)
!691 = !DILexicalBlockFile(scope: !689, file: !23, discriminator: 1)
!692 = !DILocation(line: 664, column: 5, scope: !689, inlinedAt: !676)
!693 = !DILocation(line: 665, column: 3, scope: !22, inlinedAt: !676)
!694 = !DILocation(line: 665, column: 3, scope: !679, inlinedAt: !676)
!695 = !DILocation(line: 667, column: 3, scope: !22, inlinedAt: !676)
!696 = !DILocation(line: 667, column: 3, scope: !679, inlinedAt: !676)
!697 = !DILocation(line: 64, column: 3, scope: !644)
!698 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 68, type: !699, isLocal: false, isDefinition: true, scopeLine: 69, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !702)
!699 = !DISubroutineType(types: !700)
!700 = !{!47, !47, !701}
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!702 = !{!703, !704, !705, !706, !707, !708, !709, !712, !715, !716}
!703 = !DILocalVariable(name: "argc", arg: 1, scope: !698, file: !3, line: 68, type: !47)
!704 = !DILocalVariable(name: "argv", arg: 2, scope: !698, file: !3, line: 68, type: !701)
!705 = !DILocalVariable(name: "optc", scope: !698, file: !3, line: 70, type: !47)
!706 = !DILocalVariable(name: "ok", scope: !698, file: !3, line: 71, type: !97)
!707 = !DILocalVariable(name: "rgid", scope: !698, file: !3, line: 72, type: !71)
!708 = !DILocalVariable(name: "egid", scope: !698, file: !3, line: 72, type: !71)
!709 = !DILocalVariable(name: "ruid", scope: !698, file: !3, line: 73, type: !710)
!710 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !72, line: 80, baseType: !711)
!711 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !74, line: 134, baseType: !75)
!712 = !DILocalVariable(name: "NO_UID", scope: !713, file: !3, line: 100, type: !710)
!713 = distinct !DILexicalBlock(scope: !714, file: !3, line: 98, column: 5)
!714 = distinct !DILexicalBlock(scope: !698, file: !3, line: 97, column: 7)
!715 = !DILocalVariable(name: "NO_GID", scope: !713, file: !3, line: 101, type: !71)
!716 = !DILocalVariable(name: "pwd", scope: !717, file: !3, line: 127, type: !719)
!717 = distinct !DILexicalBlock(scope: !718, file: !3, line: 126, column: 9)
!718 = distinct !DILexicalBlock(scope: !714, file: !3, line: 123, column: 5)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "passwd", file: !721, line: 49, size: 384, elements: !722)
!721 = !DIFile(filename: "/usr/include/pwd.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!722 = !{!723, !724, !725, !726, !727, !728, !729}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "pw_name", scope: !720, file: !721, line: 51, baseType: !6, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "pw_passwd", scope: !720, file: !721, line: 52, baseType: !6, size: 64, offset: 64)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "pw_uid", scope: !720, file: !721, line: 53, baseType: !711, size: 32, offset: 128)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gid", scope: !720, file: !721, line: 54, baseType: !73, size: 32, offset: 160)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gecos", scope: !720, file: !721, line: 55, baseType: !6, size: 64, offset: 192)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "pw_dir", scope: !720, file: !721, line: 56, baseType: !6, size: 64, offset: 256)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "pw_shell", scope: !720, file: !721, line: 57, baseType: !6, size: 64, offset: 320)
!730 = !DILocation(line: 68, column: 11, scope: !698)
!731 = !DILocation(line: 68, column: 24, scope: !698)
!732 = !DILocation(line: 71, column: 8, scope: !698)
!733 = !DILocation(line: 76, column: 21, scope: !698)
!734 = !DILocation(line: 76, column: 3, scope: !698)
!735 = !DILocation(line: 77, column: 3, scope: !698)
!736 = !DILocation(line: 78, column: 3, scope: !698)
!737 = !DILocation(line: 79, column: 3, scope: !698)
!738 = !DILocation(line: 81, column: 3, scope: !698)
!739 = !DILocation(line: 86, column: 18, scope: !740)
!740 = !DILexicalBlockFile(scope: !698, file: !3, discriminator: 1)
!741 = !DILocation(line: 70, column: 7, scope: !698)
!742 = !DILocation(line: 86, column: 3, scope: !740)
!743 = !DILocation(line: 90, column: 9, scope: !744)
!744 = distinct !DILexicalBlock(scope: !745, file: !3, line: 89, column: 9)
!745 = distinct !DILexicalBlock(scope: !698, file: !3, line: 87, column: 5)
!746 = !DILocation(line: 91, column: 9, scope: !744)
!747 = !DILocation(line: 91, column: 9, scope: !748)
!748 = !DILexicalBlockFile(scope: !744, file: !3, discriminator: 1)
!749 = !DILocation(line: 93, column: 11, scope: !744)
!750 = !DILocation(line: 97, column: 7, scope: !714)
!751 = !{!752, !752, i64 0}
!752 = !{!"int", !659, i64 0}
!753 = !DILocation(line: 97, column: 14, scope: !714)
!754 = !DILocation(line: 97, column: 7, scope: !698)
!755 = !DILocation(line: 125, column: 21, scope: !756)
!756 = !DILexicalBlockFile(scope: !718, file: !3, discriminator: 1)
!757 = !DILocation(line: 125, column: 7, scope: !756)
!758 = !DILocation(line: 127, column: 42, scope: !717)
!759 = !DILocation(line: 100, column: 13, scope: !713)
!760 = !DILocation(line: 101, column: 13, scope: !713)
!761 = !DILocation(line: 103, column: 7, scope: !713)
!762 = !DILocation(line: 103, column: 13, scope: !713)
!763 = !DILocation(line: 104, column: 14, scope: !713)
!764 = !DILocation(line: 73, column: 9, scope: !698)
!765 = !DILocation(line: 105, column: 16, scope: !766)
!766 = distinct !DILexicalBlock(scope: !713, file: !3, line: 105, column: 11)
!767 = !DILocation(line: 105, column: 26, scope: !766)
!768 = !DILocation(line: 105, column: 29, scope: !769)
!769 = !DILexicalBlockFile(scope: !766, file: !3, discriminator: 1)
!770 = !DILocation(line: 105, column: 11, scope: !771)
!771 = !DILexicalBlockFile(scope: !713, file: !3, discriminator: 1)
!772 = !DILocation(line: 106, column: 9, scope: !769)
!773 = !DILocation(line: 106, column: 9, scope: !774)
!774 = !DILexicalBlockFile(scope: !766, file: !3, discriminator: 2)
!775 = !DILocation(line: 106, column: 9, scope: !766)
!776 = !DILocation(line: 108, column: 13, scope: !713)
!777 = !DILocation(line: 109, column: 14, scope: !713)
!778 = !DILocation(line: 72, column: 15, scope: !698)
!779 = !DILocation(line: 110, column: 16, scope: !780)
!780 = distinct !DILexicalBlock(scope: !713, file: !3, line: 110, column: 11)
!781 = !DILocation(line: 110, column: 26, scope: !780)
!782 = !DILocation(line: 110, column: 29, scope: !783)
!783 = !DILexicalBlockFile(scope: !780, file: !3, discriminator: 1)
!784 = !DILocation(line: 110, column: 11, scope: !771)
!785 = !DILocation(line: 111, column: 9, scope: !783)
!786 = !DILocation(line: 111, column: 9, scope: !787)
!787 = !DILexicalBlockFile(scope: !780, file: !3, discriminator: 2)
!788 = !DILocation(line: 111, column: 9, scope: !780)
!789 = !DILocation(line: 113, column: 13, scope: !713)
!790 = !DILocation(line: 114, column: 14, scope: !713)
!791 = !DILocation(line: 72, column: 9, scope: !698)
!792 = !DILocation(line: 115, column: 16, scope: !793)
!793 = distinct !DILexicalBlock(scope: !713, file: !3, line: 115, column: 11)
!794 = !DILocation(line: 115, column: 26, scope: !793)
!795 = !DILocation(line: 115, column: 29, scope: !796)
!796 = !DILexicalBlockFile(scope: !793, file: !3, discriminator: 1)
!797 = !DILocation(line: 115, column: 11, scope: !771)
!798 = !DILocation(line: 116, column: 9, scope: !796)
!799 = !DILocation(line: 116, column: 9, scope: !800)
!800 = !DILexicalBlockFile(scope: !793, file: !3, discriminator: 2)
!801 = !DILocation(line: 116, column: 9, scope: !793)
!802 = !DILocation(line: 118, column: 12, scope: !803)
!803 = distinct !DILexicalBlock(scope: !713, file: !3, line: 118, column: 11)
!804 = !DILocation(line: 118, column: 11, scope: !713)
!805 = !DILocalVariable(name: "__c", arg: 1, scope: !806, file: !807, line: 105, type: !47)
!806 = distinct !DISubprogram(name: "putchar_unlocked", scope: !807, file: !807, line: 105, type: !808, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !810)
!807 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!808 = !DISubroutineType(types: !809)
!809 = !{!47, !47}
!810 = !{!805}
!811 = !DILocation(line: 105, column: 23, scope: !806, inlinedAt: !812)
!812 = distinct !DILocation(line: 120, column: 7, scope: !713)
!813 = !DILocation(line: 107, column: 10, scope: !806, inlinedAt: !812)
!814 = !{!815, !658, i64 40}
!815 = !{!"_IO_FILE", !752, i64 0, !658, i64 8, !658, i64 16, !658, i64 24, !658, i64 32, !658, i64 40, !658, i64 48, !658, i64 56, !658, i64 64, !658, i64 72, !658, i64 80, !658, i64 88, !658, i64 96, !658, i64 104, !752, i64 112, !752, i64 116, !816, i64 120, !817, i64 128, !659, i64 130, !659, i64 131, !658, i64 136, !816, i64 144, !658, i64 152, !658, i64 160, !658, i64 168, !658, i64 176, !816, i64 184, !752, i64 192, !659, i64 196}
!816 = !{!"long", !659, i64 0}
!817 = !{!"short", !659, i64 0}
!818 = !{!815, !658, i64 48}
!819 = !{!"branch_weights", i32 2000, i32 1}
!820 = !DILocation(line: 107, column: 10, scope: !821, inlinedAt: !812)
!821 = !DILexicalBlockFile(scope: !806, file: !807, discriminator: 1)
!822 = !DILocation(line: 107, column: 10, scope: !823, inlinedAt: !812)
!823 = !DILexicalBlockFile(scope: !806, file: !807, discriminator: 2)
!824 = !{!659, !659, i64 0}
!825 = !DILocation(line: 127, column: 32, scope: !717)
!826 = !DILocation(line: 127, column: 26, scope: !717)
!827 = !DILocation(line: 128, column: 19, scope: !828)
!828 = distinct !DILexicalBlock(scope: !717, file: !3, line: 128, column: 15)
!829 = !DILocation(line: 128, column: 15, scope: !717)
!830 = !DILocation(line: 129, column: 13, scope: !828)
!831 = !DILocation(line: 129, column: 13, scope: !832)
!832 = !DILexicalBlockFile(scope: !828, file: !3, discriminator: 1)
!833 = !DILocation(line: 129, column: 13, scope: !834)
!834 = !DILexicalBlockFile(scope: !828, file: !3, discriminator: 2)
!835 = !DILocation(line: 131, column: 23, scope: !717)
!836 = !{!837, !752, i64 16}
!837 = !{!"passwd", !658, i64 0, !658, i64 8, !752, i64 16, !752, i64 20, !658, i64 24, !658, i64 32, !658, i64 40}
!838 = !DILocation(line: 132, column: 30, scope: !717)
!839 = !{!837, !752, i64 20}
!840 = !DILocation(line: 134, column: 11, scope: !717)
!841 = !DILocation(line: 135, column: 45, scope: !842)
!842 = distinct !DILexicalBlock(scope: !717, file: !3, line: 135, column: 15)
!843 = !DILocation(line: 135, column: 34, scope: !842)
!844 = !DILocation(line: 135, column: 16, scope: !842)
!845 = !DILocation(line: 135, column: 15, scope: !717)
!846 = !DILocation(line: 105, column: 23, scope: !806, inlinedAt: !847)
!847 = distinct !DILocation(line: 137, column: 11, scope: !717)
!848 = !DILocation(line: 107, column: 10, scope: !806, inlinedAt: !847)
!849 = !DILocation(line: 107, column: 10, scope: !821, inlinedAt: !847)
!850 = !DILocation(line: 125, column: 14, scope: !756)
!851 = distinct !{!851, !852, !853}
!852 = !DILocation(line: 125, column: 7, scope: !718)
!853 = !DILocation(line: 138, column: 9, scope: !718)
!854 = !DILocation(line: 107, column: 10, scope: !823, inlinedAt: !847)
!855 = !DILocation(line: 141, column: 10, scope: !698)
!856 = !DILocation(line: 142, column: 1, scope: !698)
!857 = distinct !DISubprogram(name: "print_group_list", scope: !66, file: !66, line: 36, type: !858, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !76, variables: !860)
!858 = !DISubroutineType(types: !859)
!859 = !{!97, !17, !710, !71, !71, !97, !7}
!860 = !{!861, !862, !863, !864, !865, !866, !867, !868, !879, !881, !882}
!861 = !DILocalVariable(name: "username", arg: 1, scope: !857, file: !66, line: 36, type: !17)
!862 = !DILocalVariable(name: "ruid", arg: 2, scope: !857, file: !66, line: 37, type: !710)
!863 = !DILocalVariable(name: "rgid", arg: 3, scope: !857, file: !66, line: 37, type: !71)
!864 = !DILocalVariable(name: "egid", arg: 4, scope: !857, file: !66, line: 37, type: !71)
!865 = !DILocalVariable(name: "use_names", arg: 5, scope: !857, file: !66, line: 38, type: !97)
!866 = !DILocalVariable(name: "delim", arg: 6, scope: !857, file: !66, line: 38, type: !7)
!867 = !DILocalVariable(name: "ok", scope: !857, file: !66, line: 40, type: !97)
!868 = !DILocalVariable(name: "pwd", scope: !857, file: !66, line: 41, type: !869)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "passwd", file: !721, line: 49, size: 384, elements: !871)
!871 = !{!872, !873, !874, !875, !876, !877, !878}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "pw_name", scope: !870, file: !721, line: 51, baseType: !6, size: 64)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "pw_passwd", scope: !870, file: !721, line: 52, baseType: !6, size: 64, offset: 64)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "pw_uid", scope: !870, file: !721, line: 53, baseType: !711, size: 32, offset: 128)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gid", scope: !870, file: !721, line: 54, baseType: !73, size: 32, offset: 160)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gecos", scope: !870, file: !721, line: 55, baseType: !6, size: 64, offset: 192)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "pw_dir", scope: !870, file: !721, line: 56, baseType: !6, size: 64, offset: 256)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "pw_shell", scope: !870, file: !721, line: 57, baseType: !6, size: 64, offset: 320)
!879 = !DILocalVariable(name: "groups", scope: !880, file: !66, line: 61, type: !606)
!880 = distinct !DILexicalBlock(scope: !857, file: !66, line: 60, column: 3)
!881 = !DILocalVariable(name: "i", scope: !880, file: !66, line: 62, type: !47)
!882 = !DILocalVariable(name: "n_groups", scope: !880, file: !66, line: 64, type: !47)
!883 = !DILocation(line: 36, column: 31, scope: !857)
!884 = !DILocation(line: 37, column: 25, scope: !857)
!885 = !DILocation(line: 37, column: 37, scope: !857)
!886 = !DILocation(line: 37, column: 49, scope: !857)
!887 = !DIExpression(DW_OP_LLVM_fragment, 0, 1)
!888 = !DILocation(line: 38, column: 24, scope: !857)
!889 = !DILocation(line: 38, column: 40, scope: !857)
!890 = !DILocation(line: 40, column: 8, scope: !857)
!891 = !DILocation(line: 41, column: 18, scope: !857)
!892 = !DILocation(line: 43, column: 7, scope: !893)
!893 = distinct !DILexicalBlock(scope: !857, file: !66, line: 43, column: 7)
!894 = !DILocation(line: 43, column: 7, scope: !857)
!895 = !DILocation(line: 45, column: 13, scope: !896)
!896 = distinct !DILexicalBlock(scope: !893, file: !66, line: 44, column: 5)
!897 = !DILocation(line: 46, column: 11, scope: !896)
!898 = !DILocalVariable(name: "gid", arg: 1, scope: !899, file: !66, line: 104, type: !71)
!899 = distinct !DISubprogram(name: "print_group", scope: !66, file: !66, line: 104, type: !900, isLocal: false, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !76, variables: !902)
!900 = !DISubroutineType(types: !901)
!901 = !{!97, !71, !97}
!902 = !{!898, !903, !904, !913, !914}
!903 = !DILocalVariable(name: "use_name", arg: 2, scope: !899, file: !66, line: 104, type: !97)
!904 = !DILocalVariable(name: "grp", scope: !899, file: !66, line: 106, type: !905)
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !906, size: 64)
!906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group", file: !907, line: 42, size: 256, elements: !908)
!907 = !DIFile(filename: "/usr/include/grp.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!908 = !{!909, !910, !911, !912}
!909 = !DIDerivedType(tag: DW_TAG_member, name: "gr_name", scope: !906, file: !907, line: 44, baseType: !6, size: 64)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "gr_passwd", scope: !906, file: !907, line: 45, baseType: !6, size: 64, offset: 64)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "gr_gid", scope: !906, file: !907, line: 46, baseType: !73, size: 32, offset: 128)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "gr_mem", scope: !906, file: !907, line: 47, baseType: !701, size: 64, offset: 192)
!913 = !DILocalVariable(name: "ok", scope: !899, file: !66, line: 107, type: !97)
!914 = !DILocalVariable(name: "s", scope: !899, file: !66, line: 120, type: !6)
!915 = !DILocation(line: 104, column: 20, scope: !899, inlinedAt: !916)
!916 = distinct !DILocation(line: 50, column: 8, scope: !917)
!917 = distinct !DILexicalBlock(scope: !857, file: !66, line: 50, column: 7)
!918 = !DILocation(line: 104, column: 30, scope: !899, inlinedAt: !916)
!919 = !DILocation(line: 106, column: 17, scope: !899, inlinedAt: !916)
!920 = !DILocation(line: 107, column: 8, scope: !899, inlinedAt: !916)
!921 = !DILocation(line: 109, column: 7, scope: !899, inlinedAt: !916)
!922 = !DILocation(line: 98, column: 21, scope: !65, inlinedAt: !923)
!923 = distinct !DILocation(line: 120, column: 34, scope: !924, inlinedAt: !916)
!924 = !DILexicalBlockFile(scope: !899, file: !66, discriminator: 2)
!925 = !DILocation(line: 98, column: 10, scope: !65, inlinedAt: !923)
!926 = !DILocation(line: 120, column: 9, scope: !899, inlinedAt: !916)
!927 = !DILocation(line: 121, column: 3, scope: !899, inlinedAt: !916)
!928 = !DILocation(line: 111, column: 13, scope: !929, inlinedAt: !916)
!929 = distinct !DILexicalBlock(scope: !930, file: !66, line: 110, column: 5)
!930 = distinct !DILexicalBlock(scope: !899, file: !66, line: 109, column: 7)
!931 = !DILocation(line: 112, column: 15, scope: !932, inlinedAt: !916)
!932 = distinct !DILexicalBlock(scope: !929, file: !66, line: 112, column: 11)
!933 = !DILocation(line: 112, column: 11, scope: !929, inlinedAt: !916)
!934 = !DILocation(line: 114, column: 24, scope: !935, inlinedAt: !916)
!935 = distinct !DILexicalBlock(scope: !932, file: !66, line: 113, column: 9)
!936 = !DILocation(line: 115, column: 18, scope: !935, inlinedAt: !916)
!937 = !DILocation(line: 114, column: 11, scope: !938, inlinedAt: !916)
!938 = !DILexicalBlockFile(scope: !935, file: !66, discriminator: 1)
!939 = !DILocation(line: 50, column: 7, scope: !857)
!940 = !DILocation(line: 120, column: 24, scope: !941, inlinedAt: !916)
!941 = !DILexicalBlockFile(scope: !899, file: !66, discriminator: 1)
!942 = !{!943, !658, i64 0}
!943 = !{!"group", !658, i64 0, !658, i64 8, !752, i64 16, !658, i64 24}
!944 = !DILocation(line: 53, column: 12, scope: !945)
!945 = distinct !DILexicalBlock(scope: !857, file: !66, line: 53, column: 7)
!946 = !DILocation(line: 53, column: 7, scope: !857)
!947 = !DILocation(line: 107, column: 10, scope: !948, inlinedAt: !951)
!948 = distinct !DISubprogram(name: "putchar_unlocked", scope: !807, file: !807, line: 105, type: !808, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !76, variables: !949)
!949 = !{!950}
!950 = !DILocalVariable(name: "__c", arg: 1, scope: !948, file: !807, line: 105, type: !47)
!951 = distinct !DILocation(line: 55, column: 7, scope: !952)
!952 = distinct !DILexicalBlock(scope: !945, file: !66, line: 54, column: 5)
!953 = !DILocation(line: 55, column: 7, scope: !952)
!954 = !DILocation(line: 107, column: 10, scope: !955, inlinedAt: !951)
!955 = !DILexicalBlockFile(scope: !948, file: !807, discriminator: 1)
!956 = !DILocation(line: 107, column: 10, scope: !957, inlinedAt: !951)
!957 = !DILexicalBlockFile(scope: !948, file: !807, discriminator: 2)
!958 = !DILocation(line: 104, column: 20, scope: !899, inlinedAt: !959)
!959 = distinct !DILocation(line: 56, column: 12, scope: !960)
!960 = distinct !DILexicalBlock(scope: !952, file: !66, line: 56, column: 11)
!961 = !DILocation(line: 104, column: 30, scope: !899, inlinedAt: !959)
!962 = !DILocation(line: 106, column: 17, scope: !899, inlinedAt: !959)
!963 = !DILocation(line: 107, column: 8, scope: !899, inlinedAt: !959)
!964 = !DILocation(line: 109, column: 7, scope: !899, inlinedAt: !959)
!965 = !DILocation(line: 98, column: 21, scope: !65, inlinedAt: !966)
!966 = distinct !DILocation(line: 120, column: 34, scope: !924, inlinedAt: !959)
!967 = !DILocation(line: 98, column: 10, scope: !65, inlinedAt: !966)
!968 = !DILocation(line: 120, column: 9, scope: !899, inlinedAt: !959)
!969 = !DILocation(line: 121, column: 3, scope: !899, inlinedAt: !959)
!970 = !DILocation(line: 111, column: 13, scope: !929, inlinedAt: !959)
!971 = !DILocation(line: 112, column: 15, scope: !932, inlinedAt: !959)
!972 = !DILocation(line: 112, column: 11, scope: !929, inlinedAt: !959)
!973 = !DILocation(line: 114, column: 24, scope: !935, inlinedAt: !959)
!974 = !DILocation(line: 115, column: 18, scope: !935, inlinedAt: !959)
!975 = !DILocation(line: 114, column: 11, scope: !938, inlinedAt: !959)
!976 = !DILocation(line: 56, column: 11, scope: !952)
!977 = !DILocation(line: 120, column: 24, scope: !941, inlinedAt: !959)
!978 = !DILocation(line: 61, column: 5, scope: !880)
!979 = !DILocation(line: 64, column: 43, scope: !880)
!980 = !DILocation(line: 64, column: 54, scope: !981)
!981 = !DILexicalBlockFile(scope: !880, file: !66, discriminator: 1)
!982 = !DILocation(line: 64, column: 43, scope: !981)
!983 = !DILocation(line: 64, column: 43, scope: !984)
!984 = !DILexicalBlockFile(scope: !880, file: !66, discriminator: 3)
!985 = !DIExpression(DW_OP_deref)
!986 = !DILocation(line: 61, column: 12, scope: !880)
!987 = !DILocation(line: 64, column: 20, scope: !984)
!988 = !DILocation(line: 64, column: 9, scope: !880)
!989 = !DILocation(line: 65, column: 18, scope: !990)
!990 = distinct !DILexicalBlock(scope: !880, file: !66, line: 65, column: 9)
!991 = !DILocation(line: 65, column: 9, scope: !880)
!992 = !DILocation(line: 62, column: 9, scope: !880)
!993 = !DILocation(line: 79, column: 19, scope: !994)
!994 = !DILexicalBlockFile(scope: !995, file: !66, discriminator: 1)
!995 = distinct !DILexicalBlock(scope: !996, file: !66, line: 79, column: 5)
!996 = distinct !DILexicalBlock(scope: !880, file: !66, line: 79, column: 5)
!997 = !DILocation(line: 79, column: 5, scope: !998)
!998 = !DILexicalBlockFile(scope: !996, file: !66, discriminator: 1)
!999 = !DILocation(line: 69, column: 23, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !1001, file: !66, line: 68, column: 11)
!1001 = distinct !DILexicalBlock(scope: !1002, file: !66, line: 67, column: 13)
!1002 = distinct !DILexicalBlock(scope: !990, file: !66, line: 66, column: 7)
!1003 = !DILocation(line: 67, column: 13, scope: !1002)
!1004 = !DILocation(line: 69, column: 30, scope: !1005)
!1005 = !DILexicalBlockFile(scope: !1000, file: !66, discriminator: 1)
!1006 = !DILocation(line: 70, column: 20, scope: !1000)
!1007 = !DILocation(line: 69, column: 13, scope: !1008)
!1008 = !DILexicalBlockFile(scope: !1000, file: !66, discriminator: 2)
!1009 = !DILocation(line: 71, column: 11, scope: !1000)
!1010 = !DILocation(line: 74, column: 30, scope: !1011)
!1011 = !DILexicalBlockFile(scope: !1012, file: !66, discriminator: 1)
!1012 = distinct !DILexicalBlock(scope: !1001, file: !66, line: 73, column: 11)
!1013 = !DILocation(line: 74, column: 13, scope: !1014)
!1014 = !DILexicalBlockFile(scope: !1012, file: !66, discriminator: 2)
!1015 = !DILocation(line: 80, column: 11, scope: !1016)
!1016 = distinct !DILexicalBlock(scope: !995, file: !66, line: 80, column: 11)
!1017 = !DILocation(line: 80, column: 21, scope: !1016)
!1018 = !DILocation(line: 80, column: 42, scope: !1019)
!1019 = !DILexicalBlockFile(scope: !1016, file: !66, discriminator: 1)
!1020 = !DILocation(line: 80, column: 29, scope: !1016)
!1021 = !DILocation(line: 107, column: 10, scope: !948, inlinedAt: !1022)
!1022 = distinct !DILocation(line: 82, column: 11, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !1016, file: !66, line: 81, column: 9)
!1024 = !DILocation(line: 107, column: 10, scope: !955, inlinedAt: !1022)
!1025 = !DILocation(line: 107, column: 10, scope: !957, inlinedAt: !1022)
!1026 = !DILocation(line: 83, column: 29, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !1023, file: !66, line: 83, column: 15)
!1028 = !DILocation(line: 104, column: 20, scope: !899, inlinedAt: !1029)
!1029 = distinct !DILocation(line: 83, column: 16, scope: !1027)
!1030 = !DILocation(line: 104, column: 30, scope: !899, inlinedAt: !1029)
!1031 = !DILocation(line: 106, column: 17, scope: !899, inlinedAt: !1029)
!1032 = !DILocation(line: 107, column: 8, scope: !899, inlinedAt: !1029)
!1033 = !DILocation(line: 109, column: 7, scope: !899, inlinedAt: !1029)
!1034 = !DILocation(line: 98, column: 21, scope: !65, inlinedAt: !1035)
!1035 = distinct !DILocation(line: 120, column: 34, scope: !924, inlinedAt: !1029)
!1036 = !DILocation(line: 98, column: 10, scope: !65, inlinedAt: !1035)
!1037 = !DILocation(line: 120, column: 9, scope: !899, inlinedAt: !1029)
!1038 = !DILocation(line: 121, column: 3, scope: !899, inlinedAt: !1029)
!1039 = !DILocation(line: 111, column: 13, scope: !929, inlinedAt: !1029)
!1040 = !DILocation(line: 112, column: 15, scope: !932, inlinedAt: !1029)
!1041 = !DILocation(line: 112, column: 11, scope: !929, inlinedAt: !1029)
!1042 = !DILocation(line: 114, column: 24, scope: !935, inlinedAt: !1029)
!1043 = !DILocation(line: 115, column: 18, scope: !935, inlinedAt: !1029)
!1044 = !DILocation(line: 114, column: 11, scope: !938, inlinedAt: !1029)
!1045 = !DILocation(line: 83, column: 15, scope: !1023)
!1046 = !DILocation(line: 120, column: 24, scope: !941, inlinedAt: !1029)
!1047 = !DILocation(line: 79, column: 32, scope: !1048)
!1048 = !DILexicalBlockFile(scope: !995, file: !66, discriminator: 2)
!1049 = distinct !{!1049, !1050, !1051}
!1050 = !DILocation(line: 79, column: 5, scope: !996)
!1051 = !DILocation(line: 85, column: 9, scope: !996)
!1052 = !DILocation(line: 87, column: 3, scope: !857)
!1053 = !DILocation(line: 86, column: 11, scope: !880)
!1054 = !DILocation(line: 86, column: 5, scope: !880)
!1055 = !DILocation(line: 88, column: 10, scope: !857)
!1056 = !DILocation(line: 89, column: 1, scope: !857)
!1057 = !DILocation(line: 104, column: 20, scope: !899)
!1058 = !DILocation(line: 104, column: 30, scope: !899)
!1059 = !DILocation(line: 106, column: 17, scope: !899)
!1060 = !DILocation(line: 107, column: 8, scope: !899)
!1061 = !DILocation(line: 109, column: 7, scope: !899)
!1062 = !DILocation(line: 98, column: 21, scope: !65, inlinedAt: !1063)
!1063 = distinct !DILocation(line: 120, column: 34, scope: !924)
!1064 = !DILocation(line: 111, column: 13, scope: !929)
!1065 = !DILocation(line: 112, column: 15, scope: !932)
!1066 = !DILocation(line: 112, column: 11, scope: !929)
!1067 = !DILocation(line: 114, column: 24, scope: !935)
!1068 = !DILocation(line: 115, column: 18, scope: !935)
!1069 = !DILocation(line: 114, column: 11, scope: !938)
!1070 = !DILocation(line: 117, column: 9, scope: !935)
!1071 = !DILocation(line: 120, column: 24, scope: !941)
!1072 = !DILocation(line: 120, column: 13, scope: !941)
!1073 = !DILocation(line: 98, column: 10, scope: !65, inlinedAt: !1063)
!1074 = !DILocation(line: 120, column: 13, scope: !924)
!1075 = !DILocation(line: 120, column: 13, scope: !1076)
!1076 = !DILexicalBlockFile(scope: !899, file: !66, discriminator: 3)
!1077 = !DILocation(line: 120, column: 9, scope: !899)
!1078 = !DILocation(line: 121, column: 3, scope: !899)
!1079 = !DILocation(line: 122, column: 3, scope: !899)
!1080 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !96, file: !96, line: 41, type: !24, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !91, variables: !1081)
!1081 = !{!1082}
!1082 = !DILocalVariable(name: "file", arg: 1, scope: !1080, file: !96, line: 41, type: !17)
!1083 = !DILocation(line: 41, column: 41, scope: !1080)
!1084 = !DILocation(line: 43, column: 13, scope: !1080)
!1085 = !DILocation(line: 44, column: 1, scope: !1080)
!1086 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !96, file: !96, line: 78, type: !1087, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !91, variables: !1089)
!1087 = !DISubroutineType(types: !1088)
!1088 = !{null, !97}
!1089 = !{!1090}
!1090 = !DILocalVariable(name: "ignore", arg: 1, scope: !1086, file: !96, line: 78, type: !97)
!1091 = !DILocation(line: 78, column: 37, scope: !1086)
!1092 = !DILocation(line: 80, column: 16, scope: !1086)
!1093 = !{!1094, !1094, i64 0}
!1094 = !{!"_Bool", !659, i64 0}
!1095 = !DILocation(line: 81, column: 1, scope: !1086)
!1096 = distinct !DISubprogram(name: "close_stdout", scope: !96, file: !96, line: 107, type: !1097, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !91, variables: !1099)
!1097 = !DISubroutineType(types: !1098)
!1098 = !{null}
!1099 = !{!1100}
!1100 = !DILocalVariable(name: "write_error", scope: !1101, file: !96, line: 112, type: !17)
!1101 = distinct !DILexicalBlock(scope: !1102, file: !96, line: 111, column: 5)
!1102 = distinct !DILexicalBlock(scope: !1096, file: !96, line: 109, column: 7)
!1103 = !DILocation(line: 109, column: 21, scope: !1102)
!1104 = !DILocation(line: 109, column: 7, scope: !1102)
!1105 = !DILocation(line: 109, column: 29, scope: !1102)
!1106 = !DILocation(line: 110, column: 7, scope: !1102)
!1107 = !DILocation(line: 110, column: 12, scope: !1108)
!1108 = !DILexicalBlockFile(scope: !1102, file: !96, discriminator: 1)
!1109 = !{i8 0, i8 2}
!1110 = !DILocation(line: 114, column: 19, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !1101, file: !96, line: 113, column: 11)
!1112 = !DILocation(line: 110, column: 25, scope: !1108)
!1113 = !DILocation(line: 110, column: 28, scope: !1114)
!1114 = !DILexicalBlockFile(scope: !1102, file: !96, discriminator: 2)
!1115 = !DILocation(line: 110, column: 34, scope: !1114)
!1116 = !DILocation(line: 109, column: 7, scope: !1117)
!1117 = !DILexicalBlockFile(scope: !1096, file: !96, discriminator: 1)
!1118 = !DILocation(line: 112, column: 33, scope: !1101)
!1119 = !DILocation(line: 112, column: 19, scope: !1101)
!1120 = !DILocation(line: 113, column: 11, scope: !1111)
!1121 = !DILocation(line: 113, column: 11, scope: !1101)
!1122 = !DILocation(line: 114, column: 36, scope: !1123)
!1123 = !DILexicalBlockFile(scope: !1111, file: !96, discriminator: 1)
!1124 = !DILocation(line: 114, column: 9, scope: !1125)
!1125 = !DILexicalBlockFile(scope: !1111, file: !96, discriminator: 2)
!1126 = !DILocation(line: 114, column: 9, scope: !1111)
!1127 = !DILocation(line: 117, column: 9, scope: !1123)
!1128 = !DILocation(line: 119, column: 14, scope: !1101)
!1129 = !DILocation(line: 119, column: 7, scope: !1101)
!1130 = !DILocation(line: 122, column: 22, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !1096, file: !96, line: 122, column: 8)
!1132 = !DILocation(line: 122, column: 8, scope: !1131)
!1133 = !DILocation(line: 122, column: 30, scope: !1131)
!1134 = !DILocation(line: 122, column: 8, scope: !1096)
!1135 = !DILocation(line: 123, column: 13, scope: !1131)
!1136 = !DILocation(line: 123, column: 6, scope: !1131)
!1137 = !DILocation(line: 124, column: 1, scope: !1096)
!1138 = distinct !DISubprogram(name: "umaxtostr", scope: !1139, file: !1139, line: 36, type: !1140, isLocal: false, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: true, unit: !552, variables: !1142)
!1139 = !DIFile(filename: "./lib/anytostr.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1140 = !DISubroutineType(types: !1141)
!1141 = !{!6, !555, !6}
!1142 = !{!1143, !1144, !1145}
!1143 = !DILocalVariable(name: "i", arg: 1, scope: !1138, file: !1139, line: 36, type: !555)
!1144 = !DILocalVariable(name: "buf", arg: 2, scope: !1138, file: !1139, line: 36, type: !6)
!1145 = !DILocalVariable(name: "p", scope: !1138, file: !1139, line: 38, type: !6)
!1146 = !DILocation(line: 36, column: 19, scope: !1138)
!1147 = !DILocation(line: 36, column: 28, scope: !1138)
!1148 = !DILocation(line: 38, column: 17, scope: !1138)
!1149 = !DILocation(line: 38, column: 9, scope: !1138)
!1150 = !DILocation(line: 39, column: 6, scope: !1138)
!1151 = !DILocation(line: 41, column: 7, scope: !1138)
!1152 = !DILocation(line: 52, column: 24, scope: !1153)
!1153 = distinct !DILexicalBlock(scope: !1154, file: !1139, line: 50, column: 5)
!1154 = distinct !DILexicalBlock(scope: !1138, file: !1139, line: 41, column: 7)
!1155 = !DILocation(line: 52, column: 16, scope: !1153)
!1156 = !DILocation(line: 52, column: 10, scope: !1153)
!1157 = !DILocation(line: 52, column: 14, scope: !1153)
!1158 = !DILocation(line: 53, column: 17, scope: !1153)
!1159 = !DILocation(line: 53, column: 24, scope: !1153)
!1160 = !DILocation(line: 52, column: 9, scope: !1161)
!1161 = !DILexicalBlockFile(scope: !1153, file: !1139, discriminator: 1)
!1162 = distinct !{!1162, !1163, !1164}
!1163 = !DILocation(line: 51, column: 7, scope: !1153)
!1164 = !DILocation(line: 53, column: 28, scope: !1153)
!1165 = !DILocation(line: 56, column: 3, scope: !1138)
!1166 = distinct !DISubprogram(name: "set_program_name", scope: !111, file: !111, line: 39, type: !24, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !107, variables: !1167)
!1167 = !{!1168, !1169, !1170}
!1168 = !DILocalVariable(name: "argv0", arg: 1, scope: !1166, file: !111, line: 39, type: !17)
!1169 = !DILocalVariable(name: "slash", scope: !1166, file: !111, line: 46, type: !17)
!1170 = !DILocalVariable(name: "base", scope: !1166, file: !111, line: 47, type: !17)
!1171 = !DILocation(line: 39, column: 31, scope: !1166)
!1172 = !DILocation(line: 51, column: 13, scope: !1173)
!1173 = distinct !DILexicalBlock(scope: !1166, file: !111, line: 51, column: 7)
!1174 = !DILocation(line: 51, column: 7, scope: !1166)
!1175 = !DILocation(line: 55, column: 14, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1173, file: !111, line: 52, column: 5)
!1177 = !DILocation(line: 54, column: 7, scope: !1176)
!1178 = !DILocation(line: 56, column: 7, scope: !1176)
!1179 = !DILocation(line: 59, column: 11, scope: !1166)
!1180 = !DILocation(line: 46, column: 15, scope: !1166)
!1181 = !DILocation(line: 60, column: 17, scope: !1166)
!1182 = !DILocation(line: 60, column: 33, scope: !1183)
!1183 = !DILexicalBlockFile(scope: !1166, file: !111, discriminator: 1)
!1184 = !DILocation(line: 60, column: 11, scope: !1166)
!1185 = !DILocation(line: 47, column: 15, scope: !1166)
!1186 = !DILocation(line: 61, column: 12, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !1166, file: !111, line: 61, column: 7)
!1188 = !DILocation(line: 61, column: 20, scope: !1187)
!1189 = !DILocation(line: 61, column: 25, scope: !1187)
!1190 = !DILocation(line: 61, column: 28, scope: !1191)
!1191 = !DILexicalBlockFile(scope: !1187, file: !111, discriminator: 1)
!1192 = !DILocation(line: 61, column: 61, scope: !1191)
!1193 = !DILocation(line: 61, column: 7, scope: !1183)
!1194 = !DILocation(line: 64, column: 11, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1196, file: !111, line: 64, column: 11)
!1196 = distinct !DILexicalBlock(scope: !1187, file: !111, line: 62, column: 5)
!1197 = !DILocation(line: 64, column: 36, scope: !1195)
!1198 = !DILocation(line: 64, column: 11, scope: !1196)
!1199 = !DILocation(line: 66, column: 24, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1195, file: !111, line: 65, column: 9)
!1201 = !DILocation(line: 70, column: 41, scope: !1200)
!1202 = !DILocation(line: 72, column: 9, scope: !1200)
!1203 = !DILocation(line: 84, column: 16, scope: !1166)
!1204 = !DILocation(line: 90, column: 27, scope: !1166)
!1205 = !DILocation(line: 92, column: 1, scope: !1166)
!1206 = distinct !DISubprogram(name: "clone_quoting_options", scope: !156, file: !156, line: 114, type: !1207, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !1210)
!1207 = !DISubroutineType(types: !1208)
!1208 = !{!1209, !1209}
!1209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!1210 = !{!1211, !1212, !1213}
!1211 = !DILocalVariable(name: "o", arg: 1, scope: !1206, file: !156, line: 114, type: !1209)
!1212 = !DILocalVariable(name: "e", scope: !1206, file: !156, line: 116, type: !47)
!1213 = !DILocalVariable(name: "p", scope: !1206, file: !156, line: 117, type: !1209)
!1214 = !DILocation(line: 114, column: 48, scope: !1206)
!1215 = !DILocation(line: 116, column: 11, scope: !1206)
!1216 = !DILocation(line: 116, column: 7, scope: !1206)
!1217 = !DILocation(line: 117, column: 40, scope: !1206)
!1218 = !DILocation(line: 117, column: 40, scope: !1219)
!1219 = !DILexicalBlockFile(scope: !1206, file: !156, discriminator: 3)
!1220 = !DILocation(line: 117, column: 31, scope: !1219)
!1221 = !DILocation(line: 117, column: 27, scope: !1206)
!1222 = !DILocation(line: 119, column: 9, scope: !1206)
!1223 = !DILocation(line: 120, column: 3, scope: !1206)
!1224 = distinct !DISubprogram(name: "get_quoting_style", scope: !156, file: !156, line: 125, type: !1225, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !1229)
!1225 = !DISubroutineType(types: !1226)
!1226 = !{!117, !1227}
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1228, size: 64)
!1228 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !163)
!1229 = !{!1230}
!1230 = !DILocalVariable(name: "o", arg: 1, scope: !1224, file: !156, line: 125, type: !1227)
!1231 = !DILocation(line: 125, column: 50, scope: !1224)
!1232 = !DILocation(line: 127, column: 11, scope: !1224)
!1233 = !DILocation(line: 127, column: 46, scope: !1234)
!1234 = !DILexicalBlockFile(scope: !1224, file: !156, discriminator: 3)
!1235 = !{!1236, !659, i64 0}
!1236 = !{!"quoting_options", !659, i64 0, !752, i64 4, !659, i64 8, !658, i64 40, !658, i64 48}
!1237 = !DILocation(line: 127, column: 3, scope: !1234)
!1238 = distinct !DISubprogram(name: "set_quoting_style", scope: !156, file: !156, line: 133, type: !1239, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !1241)
!1239 = !DISubroutineType(types: !1240)
!1240 = !{null, !1209, !117}
!1241 = !{!1242, !1243}
!1242 = !DILocalVariable(name: "o", arg: 1, scope: !1238, file: !156, line: 133, type: !1209)
!1243 = !DILocalVariable(name: "s", arg: 2, scope: !1238, file: !156, line: 133, type: !117)
!1244 = !DILocation(line: 133, column: 44, scope: !1238)
!1245 = !DILocation(line: 133, column: 66, scope: !1238)
!1246 = !DILocation(line: 135, column: 4, scope: !1238)
!1247 = !DILocation(line: 135, column: 39, scope: !1248)
!1248 = !DILexicalBlockFile(scope: !1238, file: !156, discriminator: 3)
!1249 = !DILocation(line: 135, column: 45, scope: !1248)
!1250 = !DILocation(line: 136, column: 1, scope: !1238)
!1251 = distinct !DISubprogram(name: "set_char_quoting", scope: !156, file: !156, line: 144, type: !1252, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !1254)
!1252 = !DISubroutineType(types: !1253)
!1253 = !{!47, !1209, !7, !47}
!1254 = !{!1255, !1256, !1257, !1258, !1259, !1261, !1262}
!1255 = !DILocalVariable(name: "o", arg: 1, scope: !1251, file: !156, line: 144, type: !1209)
!1256 = !DILocalVariable(name: "c", arg: 2, scope: !1251, file: !156, line: 144, type: !7)
!1257 = !DILocalVariable(name: "i", arg: 3, scope: !1251, file: !156, line: 144, type: !47)
!1258 = !DILocalVariable(name: "uc", scope: !1251, file: !156, line: 146, type: !16)
!1259 = !DILocalVariable(name: "p", scope: !1251, file: !156, line: 147, type: !1260)
!1260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!1261 = !DILocalVariable(name: "shift", scope: !1251, file: !156, line: 149, type: !47)
!1262 = !DILocalVariable(name: "r", scope: !1251, file: !156, line: 150, type: !47)
!1263 = !DILocation(line: 144, column: 43, scope: !1251)
!1264 = !DILocation(line: 144, column: 51, scope: !1251)
!1265 = !DILocation(line: 144, column: 58, scope: !1251)
!1266 = !DILocation(line: 146, column: 17, scope: !1251)
!1267 = !DILocation(line: 148, column: 6, scope: !1251)
!1268 = !DILocation(line: 148, column: 62, scope: !1269)
!1269 = !DILexicalBlockFile(scope: !1251, file: !156, discriminator: 3)
!1270 = !DILocation(line: 148, column: 57, scope: !1269)
!1271 = !DILocation(line: 147, column: 17, scope: !1251)
!1272 = !DILocation(line: 149, column: 18, scope: !1251)
!1273 = !DILocation(line: 149, column: 15, scope: !1251)
!1274 = !DILocation(line: 149, column: 7, scope: !1251)
!1275 = !DILocation(line: 150, column: 12, scope: !1251)
!1276 = !DILocation(line: 150, column: 15, scope: !1251)
!1277 = !DILocation(line: 150, column: 25, scope: !1251)
!1278 = !DILocation(line: 150, column: 7, scope: !1251)
!1279 = !DILocation(line: 151, column: 13, scope: !1251)
!1280 = !DILocation(line: 151, column: 18, scope: !1251)
!1281 = !DILocation(line: 151, column: 23, scope: !1251)
!1282 = !DILocation(line: 151, column: 6, scope: !1251)
!1283 = !DILocation(line: 152, column: 3, scope: !1251)
!1284 = distinct !DISubprogram(name: "set_quoting_flags", scope: !156, file: !156, line: 160, type: !1285, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !1287)
!1285 = !DISubroutineType(types: !1286)
!1286 = !{!47, !1209, !47}
!1287 = !{!1288, !1289, !1290}
!1288 = !DILocalVariable(name: "o", arg: 1, scope: !1284, file: !156, line: 160, type: !1209)
!1289 = !DILocalVariable(name: "i", arg: 2, scope: !1284, file: !156, line: 160, type: !47)
!1290 = !DILocalVariable(name: "r", scope: !1284, file: !156, line: 162, type: !47)
!1291 = !DILocation(line: 160, column: 44, scope: !1284)
!1292 = !DILocation(line: 160, column: 51, scope: !1284)
!1293 = !DILocation(line: 163, column: 8, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !1284, file: !156, line: 163, column: 7)
!1295 = !DILocation(line: 163, column: 7, scope: !1284)
!1296 = !DILocation(line: 165, column: 10, scope: !1284)
!1297 = !{!1236, !752, i64 4}
!1298 = !DILocation(line: 162, column: 7, scope: !1284)
!1299 = !DILocation(line: 166, column: 12, scope: !1284)
!1300 = !DILocation(line: 167, column: 3, scope: !1284)
!1301 = distinct !DISubprogram(name: "set_custom_quoting", scope: !156, file: !156, line: 171, type: !1302, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !1304)
!1302 = !DISubroutineType(types: !1303)
!1303 = !{null, !1209, !17, !17}
!1304 = !{!1305, !1306, !1307}
!1305 = !DILocalVariable(name: "o", arg: 1, scope: !1301, file: !156, line: 171, type: !1209)
!1306 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1301, file: !156, line: 172, type: !17)
!1307 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1301, file: !156, line: 172, type: !17)
!1308 = !DILocation(line: 171, column: 45, scope: !1301)
!1309 = !DILocation(line: 172, column: 33, scope: !1301)
!1310 = !DILocation(line: 172, column: 57, scope: !1301)
!1311 = !DILocation(line: 174, column: 8, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !1301, file: !156, line: 174, column: 7)
!1313 = !DILocation(line: 174, column: 7, scope: !1301)
!1314 = !DILocation(line: 176, column: 6, scope: !1301)
!1315 = !DILocation(line: 176, column: 12, scope: !1301)
!1316 = !DILocation(line: 177, column: 8, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1301, file: !156, line: 177, column: 7)
!1318 = !DILocation(line: 177, column: 23, scope: !1319)
!1319 = !DILexicalBlockFile(scope: !1317, file: !156, discriminator: 1)
!1320 = !DILocation(line: 177, column: 19, scope: !1317)
!1321 = !DILocation(line: 178, column: 5, scope: !1317)
!1322 = !DILocation(line: 179, column: 6, scope: !1301)
!1323 = !DILocation(line: 179, column: 17, scope: !1301)
!1324 = !{!1236, !658, i64 40}
!1325 = !DILocation(line: 180, column: 6, scope: !1301)
!1326 = !DILocation(line: 180, column: 18, scope: !1301)
!1327 = !{!1236, !658, i64 48}
!1328 = !DILocation(line: 181, column: 1, scope: !1301)
!1329 = distinct !DISubprogram(name: "quotearg_buffer", scope: !156, file: !156, line: 776, type: !1330, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !1332)
!1330 = !DISubroutineType(types: !1331)
!1331 = !{!9, !6, !9, !17, !9, !1227}
!1332 = !{!1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340}
!1333 = !DILocalVariable(name: "buffer", arg: 1, scope: !1329, file: !156, line: 776, type: !6)
!1334 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1329, file: !156, line: 776, type: !9)
!1335 = !DILocalVariable(name: "arg", arg: 3, scope: !1329, file: !156, line: 777, type: !17)
!1336 = !DILocalVariable(name: "argsize", arg: 4, scope: !1329, file: !156, line: 777, type: !9)
!1337 = !DILocalVariable(name: "o", arg: 5, scope: !1329, file: !156, line: 778, type: !1227)
!1338 = !DILocalVariable(name: "p", scope: !1329, file: !156, line: 780, type: !1227)
!1339 = !DILocalVariable(name: "e", scope: !1329, file: !156, line: 781, type: !47)
!1340 = !DILocalVariable(name: "r", scope: !1329, file: !156, line: 782, type: !9)
!1341 = !DILocation(line: 776, column: 24, scope: !1329)
!1342 = !DILocation(line: 776, column: 39, scope: !1329)
!1343 = !DILocation(line: 777, column: 30, scope: !1329)
!1344 = !DILocation(line: 777, column: 42, scope: !1329)
!1345 = !DILocation(line: 778, column: 48, scope: !1329)
!1346 = !DILocation(line: 780, column: 37, scope: !1329)
!1347 = !DILocation(line: 780, column: 33, scope: !1329)
!1348 = !DILocation(line: 781, column: 11, scope: !1329)
!1349 = !DILocation(line: 781, column: 7, scope: !1329)
!1350 = !DILocation(line: 783, column: 43, scope: !1329)
!1351 = !DILocation(line: 783, column: 53, scope: !1329)
!1352 = !DILocation(line: 783, column: 60, scope: !1329)
!1353 = !DILocation(line: 784, column: 43, scope: !1329)
!1354 = !DILocation(line: 784, column: 58, scope: !1329)
!1355 = !DILocation(line: 782, column: 14, scope: !1329)
!1356 = !DILocation(line: 782, column: 10, scope: !1329)
!1357 = !DILocation(line: 785, column: 9, scope: !1329)
!1358 = !DILocation(line: 786, column: 3, scope: !1329)
!1359 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !156, file: !156, line: 248, type: !1360, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !1364)
!1360 = !DISubroutineType(types: !1361)
!1361 = !{!9, !6, !9, !17, !9, !117, !47, !1362, !17, !17}
!1362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1363, size: 64)
!1363 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !75)
!1364 = !{!1365, !1366, !1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383, !1384, !1385, !1389, !1390, !1391, !1392, !1393, !1396, !1397, !1414, !1417, !1418, !1425}
!1365 = !DILocalVariable(name: "buffer", arg: 1, scope: !1359, file: !156, line: 248, type: !6)
!1366 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1359, file: !156, line: 248, type: !9)
!1367 = !DILocalVariable(name: "arg", arg: 3, scope: !1359, file: !156, line: 249, type: !17)
!1368 = !DILocalVariable(name: "argsize", arg: 4, scope: !1359, file: !156, line: 249, type: !9)
!1369 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1359, file: !156, line: 250, type: !117)
!1370 = !DILocalVariable(name: "flags", arg: 6, scope: !1359, file: !156, line: 250, type: !47)
!1371 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1359, file: !156, line: 251, type: !1362)
!1372 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1359, file: !156, line: 252, type: !17)
!1373 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1359, file: !156, line: 253, type: !17)
!1374 = !DILocalVariable(name: "i", scope: !1359, file: !156, line: 255, type: !9)
!1375 = !DILocalVariable(name: "len", scope: !1359, file: !156, line: 256, type: !9)
!1376 = !DILocalVariable(name: "orig_buffersize", scope: !1359, file: !156, line: 257, type: !9)
!1377 = !DILocalVariable(name: "quote_string", scope: !1359, file: !156, line: 258, type: !17)
!1378 = !DILocalVariable(name: "quote_string_len", scope: !1359, file: !156, line: 259, type: !9)
!1379 = !DILocalVariable(name: "backslash_escapes", scope: !1359, file: !156, line: 260, type: !97)
!1380 = !DILocalVariable(name: "unibyte_locale", scope: !1359, file: !156, line: 261, type: !97)
!1381 = !DILocalVariable(name: "elide_outer_quotes", scope: !1359, file: !156, line: 262, type: !97)
!1382 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1359, file: !156, line: 263, type: !97)
!1383 = !DILocalVariable(name: "encountered_single_quote", scope: !1359, file: !156, line: 264, type: !97)
!1384 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1359, file: !156, line: 265, type: !97)
!1385 = !DILocalVariable(name: "c", scope: !1386, file: !156, line: 394, type: !16)
!1386 = distinct !DILexicalBlock(scope: !1387, file: !156, line: 393, column: 5)
!1387 = distinct !DILexicalBlock(scope: !1388, file: !156, line: 392, column: 3)
!1388 = distinct !DILexicalBlock(scope: !1359, file: !156, line: 392, column: 3)
!1389 = !DILocalVariable(name: "esc", scope: !1386, file: !156, line: 395, type: !16)
!1390 = !DILocalVariable(name: "is_right_quote", scope: !1386, file: !156, line: 396, type: !97)
!1391 = !DILocalVariable(name: "escaping", scope: !1386, file: !156, line: 397, type: !97)
!1392 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1386, file: !156, line: 398, type: !97)
!1393 = !DILocalVariable(name: "m", scope: !1394, file: !156, line: 602, type: !9)
!1394 = distinct !DILexicalBlock(scope: !1395, file: !156, line: 600, column: 11)
!1395 = distinct !DILexicalBlock(scope: !1386, file: !156, line: 418, column: 9)
!1396 = !DILocalVariable(name: "printable", scope: !1394, file: !156, line: 604, type: !97)
!1397 = !DILocalVariable(name: "mbstate", scope: !1398, file: !156, line: 613, type: !1400)
!1398 = distinct !DILexicalBlock(scope: !1399, file: !156, line: 612, column: 15)
!1399 = distinct !DILexicalBlock(scope: !1394, file: !156, line: 606, column: 17)
!1400 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1401, line: 107, baseType: !1402)
!1401 = !DIFile(filename: "/usr/include/wchar.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1402 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1401, line: 95, baseType: !1403)
!1403 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1401, line: 83, size: 64, elements: !1404)
!1404 = !{!1405, !1406}
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1403, file: !1401, line: 85, baseType: !47, size: 32)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1403, file: !1401, line: 94, baseType: !1407, size: 32, offset: 32)
!1407 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1403, file: !1401, line: 86, size: 32, elements: !1408)
!1408 = !{!1409, !1410}
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1407, file: !1401, line: 89, baseType: !75, size: 32)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1407, file: !1401, line: 93, baseType: !1411, size: 32)
!1411 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 32, elements: !1412)
!1412 = !{!1413}
!1413 = !DISubrange(count: 4)
!1414 = !DILocalVariable(name: "w", scope: !1415, file: !156, line: 623, type: !1416)
!1415 = distinct !DILexicalBlock(scope: !1398, file: !156, line: 622, column: 19)
!1416 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !10, line: 90, baseType: !47)
!1417 = !DILocalVariable(name: "bytes", scope: !1415, file: !156, line: 624, type: !9)
!1418 = !DILocalVariable(name: "j", scope: !1419, file: !156, line: 649, type: !9)
!1419 = distinct !DILexicalBlock(scope: !1420, file: !156, line: 648, column: 27)
!1420 = distinct !DILexicalBlock(scope: !1421, file: !156, line: 646, column: 29)
!1421 = distinct !DILexicalBlock(scope: !1422, file: !156, line: 641, column: 23)
!1422 = distinct !DILexicalBlock(scope: !1423, file: !156, line: 633, column: 30)
!1423 = distinct !DILexicalBlock(scope: !1424, file: !156, line: 628, column: 30)
!1424 = distinct !DILexicalBlock(scope: !1415, file: !156, line: 626, column: 25)
!1425 = !DILocalVariable(name: "ilim", scope: !1426, file: !156, line: 676, type: !9)
!1426 = distinct !DILexicalBlock(scope: !1427, file: !156, line: 673, column: 15)
!1427 = distinct !DILexicalBlock(scope: !1394, file: !156, line: 672, column: 17)
!1428 = !DILocation(line: 248, column: 33, scope: !1359)
!1429 = !DILocation(line: 248, column: 48, scope: !1359)
!1430 = !DILocation(line: 249, column: 39, scope: !1359)
!1431 = !DILocation(line: 249, column: 51, scope: !1359)
!1432 = !DILocation(line: 250, column: 46, scope: !1359)
!1433 = !DILocation(line: 250, column: 65, scope: !1359)
!1434 = !DILocation(line: 251, column: 47, scope: !1359)
!1435 = !DILocation(line: 252, column: 39, scope: !1359)
!1436 = !DILocation(line: 253, column: 39, scope: !1359)
!1437 = !DILocation(line: 256, column: 10, scope: !1359)
!1438 = !DILocation(line: 257, column: 10, scope: !1359)
!1439 = !DILocation(line: 258, column: 15, scope: !1359)
!1440 = !DILocation(line: 259, column: 10, scope: !1359)
!1441 = !DILocation(line: 260, column: 8, scope: !1359)
!1442 = !DILocation(line: 261, column: 25, scope: !1359)
!1443 = !DILocation(line: 261, column: 36, scope: !1359)
!1444 = !DILocation(line: 262, column: 8, scope: !1359)
!1445 = !DILocation(line: 263, column: 8, scope: !1359)
!1446 = !DILocation(line: 264, column: 8, scope: !1359)
!1447 = !DILocation(line: 265, column: 8, scope: !1359)
!1448 = !DILocation(line: 265, column: 3, scope: !1359)
!1449 = !DILocation(line: 308, column: 3, scope: !1359)
!1450 = !DILocation(line: 315, column: 11, scope: !1451)
!1451 = distinct !DILexicalBlock(scope: !1359, file: !156, line: 309, column: 5)
!1452 = !DILocation(line: 315, column: 12, scope: !1453)
!1453 = distinct !DILexicalBlock(scope: !1451, file: !156, line: 315, column: 11)
!1454 = !DILocation(line: 316, column: 9, scope: !1455)
!1455 = !DILexicalBlockFile(scope: !1456, file: !156, discriminator: 1)
!1456 = distinct !DILexicalBlock(scope: !1457, file: !156, line: 316, column: 9)
!1457 = distinct !DILexicalBlock(scope: !1453, file: !156, line: 316, column: 9)
!1458 = !DILocation(line: 316, column: 9, scope: !1459)
!1459 = !DILexicalBlockFile(scope: !1457, file: !156, discriminator: 1)
!1460 = !DILocation(line: 316, column: 9, scope: !1461)
!1461 = !DILexicalBlockFile(scope: !1456, file: !156, discriminator: 2)
!1462 = !DILocation(line: 354, column: 26, scope: !1463)
!1463 = distinct !DILexicalBlock(scope: !1464, file: !156, line: 332, column: 11)
!1464 = distinct !DILexicalBlock(scope: !1465, file: !156, line: 331, column: 13)
!1465 = distinct !DILexicalBlock(scope: !1451, file: !156, line: 330, column: 7)
!1466 = !DILocation(line: 355, column: 27, scope: !1463)
!1467 = !DILocation(line: 356, column: 11, scope: !1463)
!1468 = !DILocation(line: 357, column: 14, scope: !1469)
!1469 = distinct !DILexicalBlock(scope: !1465, file: !156, line: 357, column: 13)
!1470 = !DILocation(line: 357, column: 13, scope: !1465)
!1471 = !DILocation(line: 358, column: 43, scope: !1472)
!1472 = !DILexicalBlockFile(scope: !1473, file: !156, discriminator: 1)
!1473 = distinct !DILexicalBlock(scope: !1474, file: !156, line: 358, column: 11)
!1474 = distinct !DILexicalBlock(scope: !1469, file: !156, line: 358, column: 11)
!1475 = !DILocation(line: 358, column: 11, scope: !1476)
!1476 = !DILexicalBlockFile(scope: !1474, file: !156, discriminator: 1)
!1477 = !DILocation(line: 359, column: 13, scope: !1478)
!1478 = !DILexicalBlockFile(scope: !1479, file: !156, discriminator: 1)
!1479 = distinct !DILexicalBlock(scope: !1480, file: !156, line: 359, column: 13)
!1480 = distinct !DILexicalBlock(scope: !1473, file: !156, line: 359, column: 13)
!1481 = !DILocation(line: 359, column: 13, scope: !1482)
!1482 = !DILexicalBlockFile(scope: !1480, file: !156, discriminator: 1)
!1483 = !DILocation(line: 359, column: 13, scope: !1484)
!1484 = !DILexicalBlockFile(scope: !1479, file: !156, discriminator: 2)
!1485 = !DILocation(line: 359, column: 13, scope: !1486)
!1486 = !DILexicalBlockFile(scope: !1480, file: !156, discriminator: 3)
!1487 = !DILocation(line: 358, column: 70, scope: !1488)
!1488 = !DILexicalBlockFile(scope: !1473, file: !156, discriminator: 2)
!1489 = distinct !{!1489, !1490, !1491}
!1490 = !DILocation(line: 358, column: 11, scope: !1474)
!1491 = !DILocation(line: 359, column: 13, scope: !1474)
!1492 = !DILocation(line: 362, column: 28, scope: !1465)
!1493 = !DILocation(line: 364, column: 7, scope: !1451)
!1494 = !DILocation(line: 367, column: 7, scope: !1451)
!1495 = !DILocation(line: 370, column: 7, scope: !1451)
!1496 = !DILocation(line: 373, column: 12, scope: !1497)
!1497 = distinct !DILexicalBlock(scope: !1451, file: !156, line: 373, column: 11)
!1498 = !DILocation(line: 373, column: 11, scope: !1451)
!1499 = !DILocation(line: 378, column: 12, scope: !1500)
!1500 = distinct !DILexicalBlock(scope: !1451, file: !156, line: 378, column: 11)
!1501 = !DILocation(line: 378, column: 11, scope: !1451)
!1502 = !DILocation(line: 379, column: 9, scope: !1503)
!1503 = !DILexicalBlockFile(scope: !1504, file: !156, discriminator: 1)
!1504 = distinct !DILexicalBlock(scope: !1505, file: !156, line: 379, column: 9)
!1505 = distinct !DILexicalBlock(scope: !1500, file: !156, line: 379, column: 9)
!1506 = !DILocation(line: 379, column: 9, scope: !1507)
!1507 = !DILexicalBlockFile(scope: !1505, file: !156, discriminator: 1)
!1508 = !DILocation(line: 379, column: 9, scope: !1509)
!1509 = !DILexicalBlockFile(scope: !1504, file: !156, discriminator: 2)
!1510 = !DILocation(line: 386, column: 7, scope: !1451)
!1511 = !DILocation(line: 389, column: 7, scope: !1451)
!1512 = !DILocation(line: 255, column: 10, scope: !1359)
!1513 = !DILocation(line: 392, column: 8, scope: !1388)
!1514 = !DILocation(line: 392, column: 27, scope: !1515)
!1515 = !DILexicalBlockFile(scope: !1387, file: !156, discriminator: 1)
!1516 = !DILocation(line: 392, column: 19, scope: !1515)
!1517 = !DILocation(line: 392, column: 60, scope: !1518)
!1518 = !DILexicalBlockFile(scope: !1387, file: !156, discriminator: 3)
!1519 = !DILocation(line: 392, column: 3, scope: !1520)
!1520 = !DILexicalBlockFile(scope: !1388, file: !156, discriminator: 4)
!1521 = !DILocation(line: 392, column: 41, scope: !1522)
!1522 = !DILexicalBlockFile(scope: !1387, file: !156, discriminator: 2)
!1523 = !DILocation(line: 392, column: 48, scope: !1522)
!1524 = !DILocation(line: 396, column: 12, scope: !1386)
!1525 = !DILocation(line: 397, column: 12, scope: !1386)
!1526 = !DILocation(line: 398, column: 12, scope: !1386)
!1527 = !DILocation(line: 401, column: 11, scope: !1528)
!1528 = distinct !DILexicalBlock(scope: !1386, file: !156, line: 400, column: 11)
!1529 = !DILocation(line: 403, column: 17, scope: !1530)
!1530 = !DILexicalBlockFile(scope: !1528, file: !156, discriminator: 1)
!1531 = !DILocation(line: 404, column: 39, scope: !1528)
!1532 = !DILocation(line: 408, column: 32, scope: !1528)
!1533 = !DILocation(line: 404, column: 19, scope: !1534)
!1534 = !DILexicalBlockFile(scope: !1528, file: !156, discriminator: 2)
!1535 = !DILocation(line: 404, column: 15, scope: !1536)
!1536 = !DILexicalBlockFile(scope: !1528, file: !156, discriminator: 4)
!1537 = !DILocation(line: 409, column: 11, scope: !1528)
!1538 = !DILocation(line: 409, column: 26, scope: !1530)
!1539 = !DILocation(line: 409, column: 14, scope: !1530)
!1540 = !DILocation(line: 400, column: 11, scope: !1541)
!1541 = !DILexicalBlockFile(scope: !1386, file: !156, discriminator: 1)
!1542 = !DILocation(line: 416, column: 11, scope: !1386)
!1543 = !DILocation(line: 394, column: 21, scope: !1386)
!1544 = !DILocation(line: 417, column: 7, scope: !1386)
!1545 = !DILocation(line: 420, column: 15, scope: !1395)
!1546 = !DILocation(line: 422, column: 15, scope: !1547)
!1547 = !DILexicalBlockFile(scope: !1548, file: !156, discriminator: 1)
!1548 = distinct !DILexicalBlock(scope: !1549, file: !156, line: 422, column: 15)
!1549 = distinct !DILexicalBlock(scope: !1550, file: !156, line: 421, column: 13)
!1550 = distinct !DILexicalBlock(scope: !1395, file: !156, line: 420, column: 15)
!1551 = !DILocation(line: 422, column: 15, scope: !1552)
!1552 = !DILexicalBlockFile(scope: !1553, file: !156, discriminator: 4)
!1553 = distinct !DILexicalBlock(scope: !1548, file: !156, line: 422, column: 15)
!1554 = !DILocation(line: 422, column: 15, scope: !1555)
!1555 = !DILexicalBlockFile(scope: !1553, file: !156, discriminator: 3)
!1556 = !DILocation(line: 422, column: 15, scope: !1557)
!1557 = !DILexicalBlockFile(scope: !1558, file: !156, discriminator: 6)
!1558 = distinct !DILexicalBlock(scope: !1559, file: !156, line: 422, column: 15)
!1559 = distinct !DILexicalBlock(scope: !1560, file: !156, line: 422, column: 15)
!1560 = distinct !DILexicalBlock(scope: !1553, file: !156, line: 422, column: 15)
!1561 = !DILocation(line: 422, column: 15, scope: !1562)
!1562 = !DILexicalBlockFile(scope: !1559, file: !156, discriminator: 6)
!1563 = !DILocation(line: 422, column: 15, scope: !1564)
!1564 = !DILexicalBlockFile(scope: !1558, file: !156, discriminator: 7)
!1565 = !DILocation(line: 422, column: 15, scope: !1566)
!1566 = !DILexicalBlockFile(scope: !1559, file: !156, discriminator: 8)
!1567 = !DILocation(line: 422, column: 15, scope: !1568)
!1568 = !DILexicalBlockFile(scope: !1569, file: !156, discriminator: 11)
!1569 = distinct !DILexicalBlock(scope: !1570, file: !156, line: 422, column: 15)
!1570 = distinct !DILexicalBlock(scope: !1560, file: !156, line: 422, column: 15)
!1571 = !DILocation(line: 422, column: 15, scope: !1572)
!1572 = !DILexicalBlockFile(scope: !1570, file: !156, discriminator: 11)
!1573 = !DILocation(line: 422, column: 15, scope: !1574)
!1574 = !DILexicalBlockFile(scope: !1569, file: !156, discriminator: 12)
!1575 = !DILocation(line: 422, column: 15, scope: !1576)
!1576 = !DILexicalBlockFile(scope: !1570, file: !156, discriminator: 13)
!1577 = !DILocation(line: 422, column: 15, scope: !1578)
!1578 = !DILexicalBlockFile(scope: !1579, file: !156, discriminator: 16)
!1579 = distinct !DILexicalBlock(scope: !1580, file: !156, line: 422, column: 15)
!1580 = distinct !DILexicalBlock(scope: !1560, file: !156, line: 422, column: 15)
!1581 = !DILocation(line: 422, column: 15, scope: !1582)
!1582 = !DILexicalBlockFile(scope: !1580, file: !156, discriminator: 16)
!1583 = !DILocation(line: 422, column: 15, scope: !1584)
!1584 = !DILexicalBlockFile(scope: !1579, file: !156, discriminator: 17)
!1585 = !DILocation(line: 422, column: 15, scope: !1586)
!1586 = !DILexicalBlockFile(scope: !1580, file: !156, discriminator: 18)
!1587 = !DILocation(line: 422, column: 15, scope: !1588)
!1588 = !DILexicalBlockFile(scope: !1560, file: !156, discriminator: 20)
!1589 = !DILocation(line: 422, column: 15, scope: !1590)
!1590 = !DILexicalBlockFile(scope: !1591, file: !156, discriminator: 22)
!1591 = distinct !DILexicalBlock(scope: !1592, file: !156, line: 422, column: 15)
!1592 = distinct !DILexicalBlock(scope: !1548, file: !156, line: 422, column: 15)
!1593 = !DILocation(line: 422, column: 15, scope: !1594)
!1594 = !DILexicalBlockFile(scope: !1592, file: !156, discriminator: 22)
!1595 = !DILocation(line: 422, column: 15, scope: !1596)
!1596 = !DILexicalBlockFile(scope: !1591, file: !156, discriminator: 23)
!1597 = !DILocation(line: 422, column: 15, scope: !1598)
!1598 = !DILexicalBlockFile(scope: !1592, file: !156, discriminator: 24)
!1599 = !DILocation(line: 430, column: 19, scope: !1600)
!1600 = distinct !DILexicalBlock(scope: !1549, file: !156, line: 429, column: 19)
!1601 = !DILocation(line: 430, column: 24, scope: !1602)
!1602 = !DILexicalBlockFile(scope: !1600, file: !156, discriminator: 1)
!1603 = !DILocation(line: 430, column: 28, scope: !1602)
!1604 = !DILocation(line: 430, column: 38, scope: !1602)
!1605 = !DILocation(line: 430, column: 48, scope: !1606)
!1606 = !DILexicalBlockFile(scope: !1600, file: !156, discriminator: 2)
!1607 = !DILocation(line: 430, column: 59, scope: !1606)
!1608 = !DILocation(line: 432, column: 19, scope: !1609)
!1609 = !DILexicalBlockFile(scope: !1610, file: !156, discriminator: 1)
!1610 = distinct !DILexicalBlock(scope: !1611, file: !156, line: 432, column: 19)
!1611 = distinct !DILexicalBlock(scope: !1612, file: !156, line: 432, column: 19)
!1612 = distinct !DILexicalBlock(scope: !1600, file: !156, line: 431, column: 17)
!1613 = !DILocation(line: 432, column: 19, scope: !1614)
!1614 = !DILexicalBlockFile(scope: !1611, file: !156, discriminator: 1)
!1615 = !DILocation(line: 432, column: 19, scope: !1616)
!1616 = !DILexicalBlockFile(scope: !1610, file: !156, discriminator: 2)
!1617 = !DILocation(line: 432, column: 19, scope: !1618)
!1618 = !DILexicalBlockFile(scope: !1611, file: !156, discriminator: 3)
!1619 = !DILocation(line: 433, column: 19, scope: !1620)
!1620 = !DILexicalBlockFile(scope: !1621, file: !156, discriminator: 1)
!1621 = distinct !DILexicalBlock(scope: !1622, file: !156, line: 433, column: 19)
!1622 = distinct !DILexicalBlock(scope: !1612, file: !156, line: 433, column: 19)
!1623 = !DILocation(line: 433, column: 19, scope: !1624)
!1624 = !DILexicalBlockFile(scope: !1622, file: !156, discriminator: 1)
!1625 = !DILocation(line: 433, column: 19, scope: !1626)
!1626 = !DILexicalBlockFile(scope: !1621, file: !156, discriminator: 2)
!1627 = !DILocation(line: 433, column: 19, scope: !1628)
!1628 = !DILexicalBlockFile(scope: !1622, file: !156, discriminator: 3)
!1629 = !DILocation(line: 434, column: 17, scope: !1612)
!1630 = !DILocation(line: 441, column: 20, scope: !1550)
!1631 = !DILocation(line: 446, column: 11, scope: !1395)
!1632 = !DILocation(line: 449, column: 19, scope: !1633)
!1633 = distinct !DILexicalBlock(scope: !1395, file: !156, line: 447, column: 13)
!1634 = !DILocation(line: 455, column: 19, scope: !1635)
!1635 = distinct !DILexicalBlock(scope: !1633, file: !156, line: 454, column: 19)
!1636 = !DILocation(line: 455, column: 24, scope: !1637)
!1637 = !DILexicalBlockFile(scope: !1635, file: !156, discriminator: 1)
!1638 = !DILocation(line: 455, column: 28, scope: !1637)
!1639 = !DILocation(line: 455, column: 38, scope: !1637)
!1640 = !DILocation(line: 455, column: 47, scope: !1641)
!1641 = !DILexicalBlockFile(scope: !1635, file: !156, discriminator: 2)
!1642 = !DILocation(line: 455, column: 41, scope: !1641)
!1643 = !DILocation(line: 455, column: 52, scope: !1641)
!1644 = !DILocation(line: 454, column: 19, scope: !1645)
!1645 = !DILexicalBlockFile(scope: !1633, file: !156, discriminator: 1)
!1646 = !DILocation(line: 456, column: 25, scope: !1635)
!1647 = !DILocation(line: 456, column: 17, scope: !1635)
!1648 = !DILocation(line: 463, column: 25, scope: !1649)
!1649 = distinct !DILexicalBlock(scope: !1635, file: !156, line: 457, column: 19)
!1650 = !DILocation(line: 467, column: 21, scope: !1651)
!1651 = !DILexicalBlockFile(scope: !1652, file: !156, discriminator: 1)
!1652 = distinct !DILexicalBlock(scope: !1653, file: !156, line: 467, column: 21)
!1653 = distinct !DILexicalBlock(scope: !1649, file: !156, line: 467, column: 21)
!1654 = !DILocation(line: 467, column: 21, scope: !1655)
!1655 = !DILexicalBlockFile(scope: !1653, file: !156, discriminator: 1)
!1656 = !DILocation(line: 467, column: 21, scope: !1657)
!1657 = !DILexicalBlockFile(scope: !1652, file: !156, discriminator: 2)
!1658 = !DILocation(line: 467, column: 21, scope: !1659)
!1659 = !DILexicalBlockFile(scope: !1653, file: !156, discriminator: 3)
!1660 = !DILocation(line: 468, column: 21, scope: !1661)
!1661 = !DILexicalBlockFile(scope: !1662, file: !156, discriminator: 1)
!1662 = distinct !DILexicalBlock(scope: !1663, file: !156, line: 468, column: 21)
!1663 = distinct !DILexicalBlock(scope: !1649, file: !156, line: 468, column: 21)
!1664 = !DILocation(line: 468, column: 21, scope: !1665)
!1665 = !DILexicalBlockFile(scope: !1663, file: !156, discriminator: 1)
!1666 = !DILocation(line: 468, column: 21, scope: !1667)
!1667 = !DILexicalBlockFile(scope: !1662, file: !156, discriminator: 2)
!1668 = !DILocation(line: 468, column: 21, scope: !1669)
!1669 = !DILexicalBlockFile(scope: !1663, file: !156, discriminator: 3)
!1670 = !DILocation(line: 469, column: 21, scope: !1671)
!1671 = !DILexicalBlockFile(scope: !1672, file: !156, discriminator: 1)
!1672 = distinct !DILexicalBlock(scope: !1673, file: !156, line: 469, column: 21)
!1673 = distinct !DILexicalBlock(scope: !1649, file: !156, line: 469, column: 21)
!1674 = !DILocation(line: 469, column: 21, scope: !1675)
!1675 = !DILexicalBlockFile(scope: !1673, file: !156, discriminator: 1)
!1676 = !DILocation(line: 469, column: 21, scope: !1677)
!1677 = !DILexicalBlockFile(scope: !1672, file: !156, discriminator: 2)
!1678 = !DILocation(line: 469, column: 21, scope: !1679)
!1679 = !DILexicalBlockFile(scope: !1673, file: !156, discriminator: 3)
!1680 = !DILocation(line: 470, column: 21, scope: !1681)
!1681 = !DILexicalBlockFile(scope: !1682, file: !156, discriminator: 1)
!1682 = distinct !DILexicalBlock(scope: !1683, file: !156, line: 470, column: 21)
!1683 = distinct !DILexicalBlock(scope: !1649, file: !156, line: 470, column: 21)
!1684 = !DILocation(line: 470, column: 21, scope: !1685)
!1685 = !DILexicalBlockFile(scope: !1683, file: !156, discriminator: 1)
!1686 = !DILocation(line: 470, column: 21, scope: !1687)
!1687 = !DILexicalBlockFile(scope: !1682, file: !156, discriminator: 2)
!1688 = !DILocation(line: 470, column: 21, scope: !1689)
!1689 = !DILexicalBlockFile(scope: !1683, file: !156, discriminator: 3)
!1690 = !DILocation(line: 471, column: 21, scope: !1649)
!1691 = !DILocation(line: 395, column: 21, scope: !1386)
!1692 = !DILocation(line: 484, column: 31, scope: !1395)
!1693 = !DILocation(line: 485, column: 31, scope: !1395)
!1694 = !DILocation(line: 487, column: 31, scope: !1395)
!1695 = !DILocation(line: 488, column: 31, scope: !1395)
!1696 = !DILocation(line: 489, column: 31, scope: !1395)
!1697 = !DILocation(line: 492, column: 15, scope: !1395)
!1698 = !DILocation(line: 494, column: 19, scope: !1699)
!1699 = distinct !DILexicalBlock(scope: !1700, file: !156, line: 493, column: 13)
!1700 = distinct !DILexicalBlock(scope: !1395, file: !156, line: 492, column: 15)
!1701 = !DILocation(line: 501, column: 33, scope: !1702)
!1702 = distinct !DILexicalBlock(scope: !1395, file: !156, line: 501, column: 15)
!1703 = !DILocation(line: 506, column: 15, scope: !1704)
!1704 = distinct !DILexicalBlock(scope: !1395, file: !156, line: 505, column: 15)
!1705 = !DILocation(line: 510, column: 15, scope: !1395)
!1706 = !DILocation(line: 518, column: 26, scope: !1707)
!1707 = distinct !DILexicalBlock(scope: !1395, file: !156, line: 518, column: 15)
!1708 = !DILocation(line: 518, column: 15, scope: !1395)
!1709 = !DILocation(line: 518, column: 40, scope: !1710)
!1710 = !DILexicalBlockFile(scope: !1707, file: !156, discriminator: 1)
!1711 = !DILocation(line: 518, column: 47, scope: !1710)
!1712 = !DILocation(line: 522, column: 17, scope: !1713)
!1713 = distinct !DILexicalBlock(scope: !1395, file: !156, line: 522, column: 15)
!1714 = !DILocation(line: 518, column: 18, scope: !1710)
!1715 = !DILocation(line: 518, column: 65, scope: !1716)
!1716 = !DILexicalBlockFile(scope: !1707, file: !156, discriminator: 2)
!1717 = !DILocation(line: 518, column: 15, scope: !1718)
!1718 = !DILexicalBlockFile(scope: !1395, file: !156, discriminator: 2)
!1719 = !DILocation(line: 522, column: 15, scope: !1395)
!1720 = !DILocation(line: 526, column: 11, scope: !1395)
!1721 = !DILocation(line: 541, column: 15, scope: !1722)
!1722 = distinct !DILexicalBlock(scope: !1395, file: !156, line: 540, column: 15)
!1723 = !DILocation(line: 548, column: 15, scope: !1395)
!1724 = !DILocation(line: 550, column: 19, scope: !1725)
!1725 = distinct !DILexicalBlock(scope: !1726, file: !156, line: 549, column: 13)
!1726 = distinct !DILexicalBlock(scope: !1395, file: !156, line: 548, column: 15)
!1727 = !DILocation(line: 553, column: 19, scope: !1728)
!1728 = distinct !DILexicalBlock(scope: !1725, file: !156, line: 553, column: 19)
!1729 = !DILocation(line: 553, column: 35, scope: !1730)
!1730 = !DILexicalBlockFile(scope: !1728, file: !156, discriminator: 1)
!1731 = !DILocation(line: 553, column: 30, scope: !1728)
!1732 = !DILocation(line: 562, column: 15, scope: !1733)
!1733 = !DILexicalBlockFile(scope: !1734, file: !156, discriminator: 1)
!1734 = distinct !DILexicalBlock(scope: !1735, file: !156, line: 562, column: 15)
!1735 = distinct !DILexicalBlock(scope: !1725, file: !156, line: 562, column: 15)
!1736 = !DILocation(line: 562, column: 15, scope: !1737)
!1737 = !DILexicalBlockFile(scope: !1735, file: !156, discriminator: 1)
!1738 = !DILocation(line: 562, column: 15, scope: !1739)
!1739 = !DILexicalBlockFile(scope: !1734, file: !156, discriminator: 2)
!1740 = !DILocation(line: 562, column: 15, scope: !1741)
!1741 = !DILexicalBlockFile(scope: !1735, file: !156, discriminator: 3)
!1742 = !DILocation(line: 563, column: 15, scope: !1743)
!1743 = !DILexicalBlockFile(scope: !1744, file: !156, discriminator: 1)
!1744 = distinct !DILexicalBlock(scope: !1745, file: !156, line: 563, column: 15)
!1745 = distinct !DILexicalBlock(scope: !1725, file: !156, line: 563, column: 15)
!1746 = !DILocation(line: 563, column: 15, scope: !1747)
!1747 = !DILexicalBlockFile(scope: !1745, file: !156, discriminator: 1)
!1748 = !DILocation(line: 563, column: 15, scope: !1749)
!1749 = !DILexicalBlockFile(scope: !1744, file: !156, discriminator: 2)
!1750 = !DILocation(line: 563, column: 15, scope: !1751)
!1751 = !DILexicalBlockFile(scope: !1745, file: !156, discriminator: 3)
!1752 = !DILocation(line: 564, column: 15, scope: !1753)
!1753 = !DILexicalBlockFile(scope: !1754, file: !156, discriminator: 1)
!1754 = distinct !DILexicalBlock(scope: !1755, file: !156, line: 564, column: 15)
!1755 = distinct !DILexicalBlock(scope: !1725, file: !156, line: 564, column: 15)
!1756 = !DILocation(line: 564, column: 15, scope: !1757)
!1757 = !DILexicalBlockFile(scope: !1755, file: !156, discriminator: 1)
!1758 = !DILocation(line: 564, column: 15, scope: !1759)
!1759 = !DILexicalBlockFile(scope: !1754, file: !156, discriminator: 2)
!1760 = !DILocation(line: 564, column: 15, scope: !1761)
!1761 = !DILexicalBlockFile(scope: !1755, file: !156, discriminator: 3)
!1762 = !DILocation(line: 566, column: 13, scope: !1725)
!1763 = !DILocation(line: 606, column: 17, scope: !1394)
!1764 = !DILocation(line: 602, column: 20, scope: !1394)
!1765 = !DILocation(line: 609, column: 29, scope: !1766)
!1766 = distinct !DILexicalBlock(scope: !1399, file: !156, line: 607, column: 15)
!1767 = !{!817, !817, i64 0}
!1768 = !DILocation(line: 609, column: 27, scope: !1766)
!1769 = !DILocation(line: 604, column: 18, scope: !1394)
!1770 = !DILocation(line: 610, column: 15, scope: !1766)
!1771 = !DILocation(line: 613, column: 17, scope: !1398)
!1772 = !DILocation(line: 614, column: 17, scope: !1398)
!1773 = !DILocation(line: 618, column: 29, scope: !1774)
!1774 = distinct !DILexicalBlock(scope: !1398, file: !156, line: 618, column: 21)
!1775 = !DILocation(line: 618, column: 21, scope: !1398)
!1776 = distinct !{!1776, !1777, !1778}
!1777 = !DILocation(line: 621, column: 17, scope: !1398)
!1778 = !DILocation(line: 667, column: 44, scope: !1398)
!1779 = !DILocation(line: 619, column: 29, scope: !1774)
!1780 = !DILocation(line: 619, column: 19, scope: !1774)
!1781 = !DILocation(line: 623, column: 21, scope: !1415)
!1782 = !DILocation(line: 624, column: 56, scope: !1415)
!1783 = !DILocation(line: 624, column: 50, scope: !1415)
!1784 = !DILocation(line: 625, column: 53, scope: !1415)
!1785 = !DILocation(line: 613, column: 27, scope: !1398)
!1786 = !DILocation(line: 623, column: 29, scope: !1415)
!1787 = !DILocation(line: 624, column: 36, scope: !1415)
!1788 = !DILocation(line: 624, column: 28, scope: !1415)
!1789 = !DILocation(line: 626, column: 25, scope: !1415)
!1790 = !DILocation(line: 636, column: 38, scope: !1791)
!1791 = !DILexicalBlockFile(scope: !1792, file: !156, discriminator: 1)
!1792 = distinct !DILexicalBlock(scope: !1422, file: !156, line: 634, column: 23)
!1793 = !DILocation(line: 636, column: 48, scope: !1791)
!1794 = !DILocation(line: 636, column: 51, scope: !1795)
!1795 = !DILexicalBlockFile(scope: !1792, file: !156, discriminator: 2)
!1796 = !DILocation(line: 636, column: 48, scope: !1795)
!1797 = !DILocation(line: 636, column: 25, scope: !1798)
!1798 = !DILexicalBlockFile(scope: !1792, file: !156, discriminator: 3)
!1799 = !DILocation(line: 637, column: 28, scope: !1792)
!1800 = !DILocation(line: 636, column: 34, scope: !1791)
!1801 = distinct !{!1801, !1802, !1799}
!1802 = !DILocation(line: 636, column: 25, scope: !1792)
!1803 = !DILocation(line: 650, column: 43, scope: !1804)
!1804 = !DILexicalBlockFile(scope: !1805, file: !156, discriminator: 1)
!1805 = distinct !DILexicalBlock(scope: !1806, file: !156, line: 650, column: 29)
!1806 = distinct !DILexicalBlock(scope: !1419, file: !156, line: 650, column: 29)
!1807 = !DILocation(line: 647, column: 29, scope: !1420)
!1808 = !DILocation(line: 649, column: 36, scope: !1419)
!1809 = !DILocation(line: 651, column: 49, scope: !1805)
!1810 = !DILocation(line: 651, column: 39, scope: !1805)
!1811 = !DILocation(line: 651, column: 31, scope: !1805)
!1812 = !DILocation(line: 650, column: 53, scope: !1813)
!1813 = !DILexicalBlockFile(scope: !1805, file: !156, discriminator: 2)
!1814 = !DILocation(line: 650, column: 29, scope: !1815)
!1815 = !DILexicalBlockFile(scope: !1806, file: !156, discriminator: 1)
!1816 = distinct !{!1816, !1817, !1818}
!1817 = !DILocation(line: 650, column: 29, scope: !1806)
!1818 = !DILocation(line: 659, column: 33, scope: !1806)
!1819 = !DILocation(line: 666, column: 19, scope: !1398)
!1820 = !DILocation(line: 662, column: 41, scope: !1821)
!1821 = distinct !DILexicalBlock(scope: !1421, file: !156, line: 662, column: 29)
!1822 = !DILocation(line: 662, column: 31, scope: !1821)
!1823 = !DILocation(line: 662, column: 29, scope: !1421)
!1824 = !DILocation(line: 664, column: 27, scope: !1421)
!1825 = !DILocation(line: 667, column: 26, scope: !1398)
!1826 = !DILocation(line: 667, column: 24, scope: !1398)
!1827 = !DILocation(line: 666, column: 19, scope: !1828)
!1828 = !DILexicalBlockFile(scope: !1415, file: !156, discriminator: 3)
!1829 = !DILocation(line: 668, column: 15, scope: !1399)
!1830 = !DILocation(line: 670, column: 40, scope: !1394)
!1831 = !DILocation(line: 672, column: 19, scope: !1427)
!1832 = !DILocation(line: 672, column: 45, scope: !1833)
!1833 = !DILexicalBlockFile(scope: !1427, file: !156, discriminator: 1)
!1834 = !DILocation(line: 672, column: 23, scope: !1427)
!1835 = !DILocation(line: 676, column: 33, scope: !1426)
!1836 = !DILocation(line: 676, column: 24, scope: !1426)
!1837 = !DILocation(line: 678, column: 17, scope: !1426)
!1838 = !DILocation(line: 680, column: 43, scope: !1839)
!1839 = distinct !DILexicalBlock(scope: !1840, file: !156, line: 680, column: 25)
!1840 = distinct !DILexicalBlock(scope: !1841, file: !156, line: 679, column: 19)
!1841 = distinct !DILexicalBlock(scope: !1842, file: !156, line: 678, column: 17)
!1842 = distinct !DILexicalBlock(scope: !1426, file: !156, line: 678, column: 17)
!1843 = !DILocation(line: 682, column: 25, scope: !1844)
!1844 = !DILexicalBlockFile(scope: !1845, file: !156, discriminator: 1)
!1845 = distinct !DILexicalBlock(scope: !1846, file: !156, line: 682, column: 25)
!1846 = distinct !DILexicalBlock(scope: !1839, file: !156, line: 681, column: 23)
!1847 = !DILocation(line: 682, column: 25, scope: !1848)
!1848 = !DILexicalBlockFile(scope: !1849, file: !156, discriminator: 4)
!1849 = distinct !DILexicalBlock(scope: !1845, file: !156, line: 682, column: 25)
!1850 = !DILocation(line: 682, column: 25, scope: !1851)
!1851 = !DILexicalBlockFile(scope: !1849, file: !156, discriminator: 3)
!1852 = !DILocation(line: 682, column: 25, scope: !1853)
!1853 = !DILexicalBlockFile(scope: !1854, file: !156, discriminator: 6)
!1854 = distinct !DILexicalBlock(scope: !1855, file: !156, line: 682, column: 25)
!1855 = distinct !DILexicalBlock(scope: !1856, file: !156, line: 682, column: 25)
!1856 = distinct !DILexicalBlock(scope: !1849, file: !156, line: 682, column: 25)
!1857 = !DILocation(line: 682, column: 25, scope: !1858)
!1858 = !DILexicalBlockFile(scope: !1855, file: !156, discriminator: 6)
!1859 = !DILocation(line: 682, column: 25, scope: !1860)
!1860 = !DILexicalBlockFile(scope: !1854, file: !156, discriminator: 7)
!1861 = !DILocation(line: 682, column: 25, scope: !1862)
!1862 = !DILexicalBlockFile(scope: !1855, file: !156, discriminator: 8)
!1863 = !DILocation(line: 682, column: 25, scope: !1864)
!1864 = !DILexicalBlockFile(scope: !1865, file: !156, discriminator: 11)
!1865 = distinct !DILexicalBlock(scope: !1866, file: !156, line: 682, column: 25)
!1866 = distinct !DILexicalBlock(scope: !1856, file: !156, line: 682, column: 25)
!1867 = !DILocation(line: 682, column: 25, scope: !1868)
!1868 = !DILexicalBlockFile(scope: !1866, file: !156, discriminator: 11)
!1869 = !DILocation(line: 682, column: 25, scope: !1870)
!1870 = !DILexicalBlockFile(scope: !1865, file: !156, discriminator: 12)
!1871 = !DILocation(line: 682, column: 25, scope: !1872)
!1872 = !DILexicalBlockFile(scope: !1866, file: !156, discriminator: 13)
!1873 = !DILocation(line: 682, column: 25, scope: !1874)
!1874 = !DILexicalBlockFile(scope: !1875, file: !156, discriminator: 16)
!1875 = distinct !DILexicalBlock(scope: !1876, file: !156, line: 682, column: 25)
!1876 = distinct !DILexicalBlock(scope: !1856, file: !156, line: 682, column: 25)
!1877 = !DILocation(line: 682, column: 25, scope: !1878)
!1878 = !DILexicalBlockFile(scope: !1876, file: !156, discriminator: 16)
!1879 = !DILocation(line: 682, column: 25, scope: !1880)
!1880 = !DILexicalBlockFile(scope: !1875, file: !156, discriminator: 17)
!1881 = !DILocation(line: 682, column: 25, scope: !1882)
!1882 = !DILexicalBlockFile(scope: !1876, file: !156, discriminator: 18)
!1883 = !DILocation(line: 682, column: 25, scope: !1884)
!1884 = !DILexicalBlockFile(scope: !1856, file: !156, discriminator: 20)
!1885 = !DILocation(line: 682, column: 25, scope: !1886)
!1886 = !DILexicalBlockFile(scope: !1887, file: !156, discriminator: 22)
!1887 = distinct !DILexicalBlock(scope: !1888, file: !156, line: 682, column: 25)
!1888 = distinct !DILexicalBlock(scope: !1845, file: !156, line: 682, column: 25)
!1889 = !DILocation(line: 682, column: 25, scope: !1890)
!1890 = !DILexicalBlockFile(scope: !1888, file: !156, discriminator: 22)
!1891 = !DILocation(line: 682, column: 25, scope: !1892)
!1892 = !DILexicalBlockFile(scope: !1887, file: !156, discriminator: 23)
!1893 = !DILocation(line: 682, column: 25, scope: !1894)
!1894 = !DILexicalBlockFile(scope: !1888, file: !156, discriminator: 24)
!1895 = !DILocation(line: 683, column: 25, scope: !1896)
!1896 = !DILexicalBlockFile(scope: !1897, file: !156, discriminator: 1)
!1897 = distinct !DILexicalBlock(scope: !1898, file: !156, line: 683, column: 25)
!1898 = distinct !DILexicalBlock(scope: !1846, file: !156, line: 683, column: 25)
!1899 = !DILocation(line: 683, column: 25, scope: !1900)
!1900 = !DILexicalBlockFile(scope: !1898, file: !156, discriminator: 1)
!1901 = !DILocation(line: 683, column: 25, scope: !1902)
!1902 = !DILexicalBlockFile(scope: !1897, file: !156, discriminator: 2)
!1903 = !DILocation(line: 683, column: 25, scope: !1904)
!1904 = !DILexicalBlockFile(scope: !1898, file: !156, discriminator: 3)
!1905 = !DILocation(line: 684, column: 25, scope: !1906)
!1906 = !DILexicalBlockFile(scope: !1907, file: !156, discriminator: 1)
!1907 = distinct !DILexicalBlock(scope: !1908, file: !156, line: 684, column: 25)
!1908 = distinct !DILexicalBlock(scope: !1846, file: !156, line: 684, column: 25)
!1909 = !DILocation(line: 684, column: 25, scope: !1910)
!1910 = !DILexicalBlockFile(scope: !1908, file: !156, discriminator: 1)
!1911 = !DILocation(line: 684, column: 25, scope: !1912)
!1912 = !DILexicalBlockFile(scope: !1907, file: !156, discriminator: 2)
!1913 = !DILocation(line: 684, column: 25, scope: !1914)
!1914 = !DILexicalBlockFile(scope: !1908, file: !156, discriminator: 3)
!1915 = !DILocation(line: 685, column: 38, scope: !1846)
!1916 = !DILocation(line: 685, column: 33, scope: !1846)
!1917 = !DILocation(line: 686, column: 23, scope: !1846)
!1918 = !DILocation(line: 687, column: 30, scope: !1919)
!1919 = distinct !DILexicalBlock(scope: !1839, file: !156, line: 687, column: 30)
!1920 = !DILocation(line: 687, column: 30, scope: !1839)
!1921 = !DILocation(line: 689, column: 25, scope: !1922)
!1922 = !DILexicalBlockFile(scope: !1923, file: !156, discriminator: 1)
!1923 = distinct !DILexicalBlock(scope: !1924, file: !156, line: 689, column: 25)
!1924 = distinct !DILexicalBlock(scope: !1925, file: !156, line: 689, column: 25)
!1925 = distinct !DILexicalBlock(scope: !1919, file: !156, line: 688, column: 23)
!1926 = !DILocation(line: 689, column: 25, scope: !1927)
!1927 = !DILexicalBlockFile(scope: !1924, file: !156, discriminator: 1)
!1928 = !DILocation(line: 689, column: 25, scope: !1929)
!1929 = !DILexicalBlockFile(scope: !1923, file: !156, discriminator: 2)
!1930 = !DILocation(line: 689, column: 25, scope: !1931)
!1931 = !DILexicalBlockFile(scope: !1924, file: !156, discriminator: 3)
!1932 = !DILocation(line: 691, column: 23, scope: !1925)
!1933 = !DILocation(line: 692, column: 35, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1840, file: !156, line: 692, column: 25)
!1935 = !DILocation(line: 692, column: 30, scope: !1934)
!1936 = !DILocation(line: 692, column: 25, scope: !1840)
!1937 = !DILocation(line: 694, column: 21, scope: !1938)
!1938 = !DILexicalBlockFile(scope: !1939, file: !156, discriminator: 1)
!1939 = distinct !DILexicalBlock(scope: !1940, file: !156, line: 694, column: 21)
!1940 = distinct !DILexicalBlock(scope: !1840, file: !156, line: 694, column: 21)
!1941 = !DILocation(line: 694, column: 21, scope: !1942)
!1942 = !DILexicalBlockFile(scope: !1939, file: !156, discriminator: 2)
!1943 = !DILocation(line: 694, column: 21, scope: !1944)
!1944 = !DILexicalBlockFile(scope: !1945, file: !156, discriminator: 4)
!1945 = distinct !DILexicalBlock(scope: !1946, file: !156, line: 694, column: 21)
!1946 = distinct !DILexicalBlock(scope: !1947, file: !156, line: 694, column: 21)
!1947 = distinct !DILexicalBlock(scope: !1939, file: !156, line: 694, column: 21)
!1948 = !DILocation(line: 694, column: 21, scope: !1949)
!1949 = !DILexicalBlockFile(scope: !1946, file: !156, discriminator: 4)
!1950 = !DILocation(line: 694, column: 21, scope: !1951)
!1951 = !DILexicalBlockFile(scope: !1945, file: !156, discriminator: 5)
!1952 = !DILocation(line: 694, column: 21, scope: !1953)
!1953 = !DILexicalBlockFile(scope: !1946, file: !156, discriminator: 6)
!1954 = !DILocation(line: 694, column: 21, scope: !1955)
!1955 = !DILexicalBlockFile(scope: !1956, file: !156, discriminator: 9)
!1956 = distinct !DILexicalBlock(scope: !1957, file: !156, line: 694, column: 21)
!1957 = distinct !DILexicalBlock(scope: !1947, file: !156, line: 694, column: 21)
!1958 = !DILocation(line: 694, column: 21, scope: !1959)
!1959 = !DILexicalBlockFile(scope: !1957, file: !156, discriminator: 9)
!1960 = !DILocation(line: 694, column: 21, scope: !1961)
!1961 = !DILexicalBlockFile(scope: !1956, file: !156, discriminator: 10)
!1962 = !DILocation(line: 694, column: 21, scope: !1963)
!1963 = !DILexicalBlockFile(scope: !1957, file: !156, discriminator: 11)
!1964 = !DILocation(line: 694, column: 21, scope: !1965)
!1965 = !DILexicalBlockFile(scope: !1947, file: !156, discriminator: 13)
!1966 = !DILocation(line: 695, column: 21, scope: !1967)
!1967 = !DILexicalBlockFile(scope: !1968, file: !156, discriminator: 1)
!1968 = distinct !DILexicalBlock(scope: !1969, file: !156, line: 695, column: 21)
!1969 = distinct !DILexicalBlock(scope: !1840, file: !156, line: 695, column: 21)
!1970 = !DILocation(line: 695, column: 21, scope: !1971)
!1971 = !DILexicalBlockFile(scope: !1969, file: !156, discriminator: 1)
!1972 = !DILocation(line: 695, column: 21, scope: !1973)
!1973 = !DILexicalBlockFile(scope: !1968, file: !156, discriminator: 2)
!1974 = !DILocation(line: 695, column: 21, scope: !1975)
!1975 = !DILexicalBlockFile(scope: !1969, file: !156, discriminator: 3)
!1976 = !DILocation(line: 696, column: 25, scope: !1840)
!1977 = !DILocation(line: 678, column: 17, scope: !1978)
!1978 = !DILexicalBlockFile(scope: !1841, file: !156, discriminator: 1)
!1979 = distinct !{!1979, !1980, !1981}
!1980 = !DILocation(line: 678, column: 17, scope: !1842)
!1981 = !DILocation(line: 697, column: 19, scope: !1842)
!1982 = !DILocation(line: 704, column: 34, scope: !1983)
!1983 = distinct !DILexicalBlock(scope: !1386, file: !156, line: 704, column: 11)
!1984 = !DILocation(line: 706, column: 14, scope: !1983)
!1985 = !DILocation(line: 707, column: 14, scope: !1983)
!1986 = !DILocation(line: 707, column: 35, scope: !1987)
!1987 = !DILexicalBlockFile(scope: !1983, file: !156, discriminator: 1)
!1988 = !DILocation(line: 707, column: 17, scope: !1987)
!1989 = !DILocation(line: 707, column: 53, scope: !1987)
!1990 = !DILocation(line: 707, column: 47, scope: !1987)
!1991 = !DILocation(line: 707, column: 65, scope: !1987)
!1992 = !DILocation(line: 708, column: 15, scope: !1987)
!1993 = !DILocation(line: 708, column: 11, scope: !1983)
!1994 = !DILocation(line: 704, column: 11, scope: !1995)
!1995 = !DILexicalBlockFile(scope: !1386, file: !156, discriminator: 2)
!1996 = !DILocation(line: 712, column: 7, scope: !1997)
!1997 = !DILexicalBlockFile(scope: !1998, file: !156, discriminator: 1)
!1998 = distinct !DILexicalBlock(scope: !1386, file: !156, line: 712, column: 7)
!1999 = !DILocation(line: 712, column: 7, scope: !2000)
!2000 = !DILexicalBlockFile(scope: !2001, file: !156, discriminator: 4)
!2001 = distinct !DILexicalBlock(scope: !1998, file: !156, line: 712, column: 7)
!2002 = !DILocation(line: 712, column: 7, scope: !2003)
!2003 = !DILexicalBlockFile(scope: !2001, file: !156, discriminator: 3)
!2004 = !DILocation(line: 712, column: 7, scope: !2005)
!2005 = !DILexicalBlockFile(scope: !2006, file: !156, discriminator: 6)
!2006 = distinct !DILexicalBlock(scope: !2007, file: !156, line: 712, column: 7)
!2007 = distinct !DILexicalBlock(scope: !2008, file: !156, line: 712, column: 7)
!2008 = distinct !DILexicalBlock(scope: !2001, file: !156, line: 712, column: 7)
!2009 = !DILocation(line: 712, column: 7, scope: !2010)
!2010 = !DILexicalBlockFile(scope: !2007, file: !156, discriminator: 6)
!2011 = !DILocation(line: 712, column: 7, scope: !2012)
!2012 = !DILexicalBlockFile(scope: !2006, file: !156, discriminator: 7)
!2013 = !DILocation(line: 712, column: 7, scope: !2014)
!2014 = !DILexicalBlockFile(scope: !2007, file: !156, discriminator: 8)
!2015 = !DILocation(line: 712, column: 7, scope: !2016)
!2016 = !DILexicalBlockFile(scope: !2017, file: !156, discriminator: 11)
!2017 = distinct !DILexicalBlock(scope: !2018, file: !156, line: 712, column: 7)
!2018 = distinct !DILexicalBlock(scope: !2008, file: !156, line: 712, column: 7)
!2019 = !DILocation(line: 712, column: 7, scope: !2020)
!2020 = !DILexicalBlockFile(scope: !2018, file: !156, discriminator: 11)
!2021 = !DILocation(line: 712, column: 7, scope: !2022)
!2022 = !DILexicalBlockFile(scope: !2017, file: !156, discriminator: 12)
!2023 = !DILocation(line: 712, column: 7, scope: !2024)
!2024 = !DILexicalBlockFile(scope: !2018, file: !156, discriminator: 13)
!2025 = !DILocation(line: 712, column: 7, scope: !2026)
!2026 = !DILexicalBlockFile(scope: !2027, file: !156, discriminator: 16)
!2027 = distinct !DILexicalBlock(scope: !2028, file: !156, line: 712, column: 7)
!2028 = distinct !DILexicalBlock(scope: !2008, file: !156, line: 712, column: 7)
!2029 = !DILocation(line: 712, column: 7, scope: !2030)
!2030 = !DILexicalBlockFile(scope: !2028, file: !156, discriminator: 16)
!2031 = !DILocation(line: 712, column: 7, scope: !2032)
!2032 = !DILexicalBlockFile(scope: !2027, file: !156, discriminator: 17)
!2033 = !DILocation(line: 712, column: 7, scope: !2034)
!2034 = !DILexicalBlockFile(scope: !2028, file: !156, discriminator: 18)
!2035 = !DILocation(line: 712, column: 7, scope: !2036)
!2036 = !DILexicalBlockFile(scope: !2008, file: !156, discriminator: 20)
!2037 = !DILocation(line: 712, column: 7, scope: !2038)
!2038 = !DILexicalBlockFile(scope: !2039, file: !156, discriminator: 22)
!2039 = distinct !DILexicalBlock(scope: !2040, file: !156, line: 712, column: 7)
!2040 = distinct !DILexicalBlock(scope: !1998, file: !156, line: 712, column: 7)
!2041 = !DILocation(line: 712, column: 7, scope: !2042)
!2042 = !DILexicalBlockFile(scope: !2040, file: !156, discriminator: 22)
!2043 = !DILocation(line: 712, column: 7, scope: !2044)
!2044 = !DILexicalBlockFile(scope: !2039, file: !156, discriminator: 23)
!2045 = !DILocation(line: 712, column: 7, scope: !2046)
!2046 = !DILexicalBlockFile(scope: !2040, file: !156, discriminator: 24)
!2047 = !DILocation(line: 715, column: 7, scope: !2048)
!2048 = !DILexicalBlockFile(scope: !2049, file: !156, discriminator: 1)
!2049 = distinct !DILexicalBlock(scope: !2050, file: !156, line: 715, column: 7)
!2050 = distinct !DILexicalBlock(scope: !1386, file: !156, line: 715, column: 7)
!2051 = !DILocation(line: 715, column: 7, scope: !2052)
!2052 = !DILexicalBlockFile(scope: !2049, file: !156, discriminator: 2)
!2053 = !DILocation(line: 715, column: 7, scope: !2054)
!2054 = !DILexicalBlockFile(scope: !2055, file: !156, discriminator: 4)
!2055 = distinct !DILexicalBlock(scope: !2056, file: !156, line: 715, column: 7)
!2056 = distinct !DILexicalBlock(scope: !2057, file: !156, line: 715, column: 7)
!2057 = distinct !DILexicalBlock(scope: !2049, file: !156, line: 715, column: 7)
!2058 = !DILocation(line: 715, column: 7, scope: !2059)
!2059 = !DILexicalBlockFile(scope: !2056, file: !156, discriminator: 4)
!2060 = !DILocation(line: 715, column: 7, scope: !2061)
!2061 = !DILexicalBlockFile(scope: !2055, file: !156, discriminator: 5)
!2062 = !DILocation(line: 715, column: 7, scope: !2063)
!2063 = !DILexicalBlockFile(scope: !2056, file: !156, discriminator: 6)
!2064 = !DILocation(line: 715, column: 7, scope: !2065)
!2065 = !DILexicalBlockFile(scope: !2066, file: !156, discriminator: 9)
!2066 = distinct !DILexicalBlock(scope: !2067, file: !156, line: 715, column: 7)
!2067 = distinct !DILexicalBlock(scope: !2057, file: !156, line: 715, column: 7)
!2068 = !DILocation(line: 715, column: 7, scope: !2069)
!2069 = !DILexicalBlockFile(scope: !2067, file: !156, discriminator: 9)
!2070 = !DILocation(line: 715, column: 7, scope: !2071)
!2071 = !DILexicalBlockFile(scope: !2066, file: !156, discriminator: 10)
!2072 = !DILocation(line: 715, column: 7, scope: !2073)
!2073 = !DILexicalBlockFile(scope: !2067, file: !156, discriminator: 11)
!2074 = !DILocation(line: 715, column: 7, scope: !2075)
!2075 = !DILexicalBlockFile(scope: !2057, file: !156, discriminator: 13)
!2076 = !DILocation(line: 716, column: 7, scope: !2077)
!2077 = !DILexicalBlockFile(scope: !2078, file: !156, discriminator: 1)
!2078 = distinct !DILexicalBlock(scope: !2079, file: !156, line: 716, column: 7)
!2079 = distinct !DILexicalBlock(scope: !1386, file: !156, line: 716, column: 7)
!2080 = !DILocation(line: 716, column: 7, scope: !2081)
!2081 = !DILexicalBlockFile(scope: !2079, file: !156, discriminator: 1)
!2082 = !DILocation(line: 716, column: 7, scope: !2083)
!2083 = !DILexicalBlockFile(scope: !2078, file: !156, discriminator: 2)
!2084 = !DILocation(line: 716, column: 7, scope: !2085)
!2085 = !DILexicalBlockFile(scope: !2079, file: !156, discriminator: 3)
!2086 = !DILocation(line: 718, column: 13, scope: !2087)
!2087 = distinct !DILexicalBlock(scope: !1386, file: !156, line: 718, column: 11)
!2088 = !DILocation(line: 718, column: 11, scope: !1386)
!2089 = !DILocation(line: 720, column: 5, scope: !1387)
!2090 = !DILocation(line: 392, column: 75, scope: !2091)
!2091 = !DILexicalBlockFile(scope: !1387, file: !156, discriminator: 5)
!2092 = !DILocation(line: 392, column: 3, scope: !2091)
!2093 = distinct !{!2093, !2094, !2095}
!2094 = !DILocation(line: 392, column: 3, scope: !1388)
!2095 = !DILocation(line: 720, column: 5, scope: !1388)
!2096 = !DILocation(line: 722, column: 11, scope: !2097)
!2097 = distinct !DILexicalBlock(scope: !1359, file: !156, line: 722, column: 7)
!2098 = !DILocation(line: 722, column: 16, scope: !2097)
!2099 = !DILocation(line: 730, column: 51, scope: !2100)
!2100 = distinct !DILexicalBlock(scope: !1359, file: !156, line: 730, column: 7)
!2101 = !DILocation(line: 731, column: 10, scope: !2102)
!2102 = !DILexicalBlockFile(scope: !2100, file: !156, discriminator: 1)
!2103 = !DILocation(line: 733, column: 11, scope: !2104)
!2104 = distinct !DILexicalBlock(scope: !2105, file: !156, line: 733, column: 11)
!2105 = distinct !DILexicalBlock(scope: !2100, file: !156, line: 732, column: 5)
!2106 = !DILocation(line: 733, column: 11, scope: !2105)
!2107 = !DILocation(line: 734, column: 16, scope: !2104)
!2108 = !DILocation(line: 734, column: 9, scope: !2104)
!2109 = !DILocation(line: 738, column: 18, scope: !2110)
!2110 = distinct !DILexicalBlock(scope: !2104, file: !156, line: 738, column: 16)
!2111 = !DILocation(line: 738, column: 32, scope: !2112)
!2112 = !DILexicalBlockFile(scope: !2110, file: !156, discriminator: 1)
!2113 = !DILocation(line: 738, column: 29, scope: !2110)
!2114 = !DILocation(line: 747, column: 7, scope: !2115)
!2115 = distinct !DILexicalBlock(scope: !1359, file: !156, line: 747, column: 7)
!2116 = !DILocation(line: 747, column: 20, scope: !2115)
!2117 = !DILocation(line: 748, column: 12, scope: !2118)
!2118 = !DILexicalBlockFile(scope: !2119, file: !156, discriminator: 1)
!2119 = distinct !DILexicalBlock(scope: !2120, file: !156, line: 748, column: 5)
!2120 = distinct !DILexicalBlock(scope: !2115, file: !156, line: 748, column: 5)
!2121 = !DILocation(line: 748, column: 5, scope: !2122)
!2122 = !DILexicalBlockFile(scope: !2120, file: !156, discriminator: 1)
!2123 = !DILocation(line: 749, column: 7, scope: !2124)
!2124 = !DILexicalBlockFile(scope: !2125, file: !156, discriminator: 1)
!2125 = distinct !DILexicalBlock(scope: !2126, file: !156, line: 749, column: 7)
!2126 = distinct !DILexicalBlock(scope: !2119, file: !156, line: 749, column: 7)
!2127 = !DILocation(line: 749, column: 7, scope: !2128)
!2128 = !DILexicalBlockFile(scope: !2126, file: !156, discriminator: 1)
!2129 = !DILocation(line: 749, column: 7, scope: !2130)
!2130 = !DILexicalBlockFile(scope: !2125, file: !156, discriminator: 2)
!2131 = !DILocation(line: 749, column: 7, scope: !2132)
!2132 = !DILexicalBlockFile(scope: !2126, file: !156, discriminator: 3)
!2133 = !DILocation(line: 748, column: 39, scope: !2134)
!2134 = !DILexicalBlockFile(scope: !2119, file: !156, discriminator: 2)
!2135 = distinct !{!2135, !2136, !2137}
!2136 = !DILocation(line: 748, column: 5, scope: !2120)
!2137 = !DILocation(line: 749, column: 7, scope: !2120)
!2138 = !DILocation(line: 751, column: 11, scope: !2139)
!2139 = distinct !DILexicalBlock(scope: !1359, file: !156, line: 751, column: 7)
!2140 = !DILocation(line: 751, column: 7, scope: !1359)
!2141 = !DILocation(line: 752, column: 5, scope: !2139)
!2142 = !DILocation(line: 752, column: 17, scope: !2139)
!2143 = !DILocation(line: 758, column: 21, scope: !2144)
!2144 = distinct !DILexicalBlock(scope: !1359, file: !156, line: 758, column: 7)
!2145 = !DILocation(line: 758, column: 54, scope: !2146)
!2146 = !DILexicalBlockFile(scope: !2144, file: !156, discriminator: 1)
!2147 = !DILocation(line: 758, column: 51, scope: !2144)
!2148 = !DILocation(line: 762, column: 42, scope: !1359)
!2149 = !DILocation(line: 760, column: 10, scope: !1359)
!2150 = !DILocation(line: 760, column: 3, scope: !1359)
!2151 = !DILocation(line: 764, column: 1, scope: !1359)
!2152 = distinct !DISubprogram(name: "gettext_quote", scope: !156, file: !156, line: 199, type: !2153, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !2155)
!2153 = !DISubroutineType(types: !2154)
!2154 = !{!17, !17, !117}
!2155 = !{!2156, !2157, !2158, !2159}
!2156 = !DILocalVariable(name: "msgid", arg: 1, scope: !2152, file: !156, line: 199, type: !17)
!2157 = !DILocalVariable(name: "s", arg: 2, scope: !2152, file: !156, line: 199, type: !117)
!2158 = !DILocalVariable(name: "translation", scope: !2152, file: !156, line: 201, type: !17)
!2159 = !DILocalVariable(name: "locale_code", scope: !2152, file: !156, line: 202, type: !17)
!2160 = !DILocation(line: 199, column: 28, scope: !2152)
!2161 = !DILocation(line: 199, column: 54, scope: !2152)
!2162 = !DILocation(line: 201, column: 29, scope: !2152)
!2163 = !DILocation(line: 201, column: 15, scope: !2152)
!2164 = !DILocation(line: 204, column: 19, scope: !2165)
!2165 = distinct !DILexicalBlock(scope: !2152, file: !156, line: 204, column: 7)
!2166 = !DILocation(line: 204, column: 7, scope: !2152)
!2167 = !DILocation(line: 225, column: 17, scope: !2152)
!2168 = !DILocation(line: 202, column: 15, scope: !2152)
!2169 = !DILocalVariable(name: "s2", arg: 2, scope: !2170, file: !2171, line: 160, type: !17)
!2170 = distinct !DISubprogram(name: "strcaseeq0", scope: !2171, file: !2171, line: 160, type: !2172, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !2174)
!2171 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2172 = !DISubroutineType(types: !2173)
!2173 = !{!47, !17, !17, !7, !7, !7, !7, !7, !7, !7, !7, !7}
!2174 = !{!2175, !2169, !2176, !2177, !2178, !2179, !2180, !2181, !2182, !2183, !2184}
!2175 = !DILocalVariable(name: "s1", arg: 1, scope: !2170, file: !2171, line: 160, type: !17)
!2176 = !DILocalVariable(name: "s20", arg: 3, scope: !2170, file: !2171, line: 160, type: !7)
!2177 = !DILocalVariable(name: "s21", arg: 4, scope: !2170, file: !2171, line: 160, type: !7)
!2178 = !DILocalVariable(name: "s22", arg: 5, scope: !2170, file: !2171, line: 160, type: !7)
!2179 = !DILocalVariable(name: "s23", arg: 6, scope: !2170, file: !2171, line: 160, type: !7)
!2180 = !DILocalVariable(name: "s24", arg: 7, scope: !2170, file: !2171, line: 160, type: !7)
!2181 = !DILocalVariable(name: "s25", arg: 8, scope: !2170, file: !2171, line: 160, type: !7)
!2182 = !DILocalVariable(name: "s26", arg: 9, scope: !2170, file: !2171, line: 160, type: !7)
!2183 = !DILocalVariable(name: "s27", arg: 10, scope: !2170, file: !2171, line: 160, type: !7)
!2184 = !DILocalVariable(name: "s28", arg: 11, scope: !2170, file: !2171, line: 160, type: !7)
!2185 = !DILocation(line: 160, column: 41, scope: !2170, inlinedAt: !2186)
!2186 = distinct !DILocation(line: 226, column: 7, scope: !2187)
!2187 = distinct !DILexicalBlock(scope: !2152, file: !156, line: 226, column: 7)
!2188 = !DILocation(line: 160, column: 120, scope: !2170, inlinedAt: !2186)
!2189 = !DILocation(line: 160, column: 130, scope: !2170, inlinedAt: !2186)
!2190 = !DILocation(line: 162, column: 7, scope: !2191, inlinedAt: !2186)
!2191 = !DILexicalBlockFile(scope: !2192, file: !2171, discriminator: 1)
!2192 = distinct !DILexicalBlock(scope: !2170, file: !2171, line: 162, column: 7)
!2193 = !DILocalVariable(name: "s2", arg: 2, scope: !2194, file: !2171, line: 146, type: !17)
!2194 = distinct !DISubprogram(name: "strcaseeq1", scope: !2171, file: !2171, line: 146, type: !2195, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !2197)
!2195 = !DISubroutineType(types: !2196)
!2196 = !{!47, !17, !17, !7, !7, !7, !7, !7, !7, !7, !7}
!2197 = !{!2198, !2193, !2199, !2200, !2201, !2202, !2203, !2204, !2205, !2206}
!2198 = !DILocalVariable(name: "s1", arg: 1, scope: !2194, file: !2171, line: 146, type: !17)
!2199 = !DILocalVariable(name: "s21", arg: 3, scope: !2194, file: !2171, line: 146, type: !7)
!2200 = !DILocalVariable(name: "s22", arg: 4, scope: !2194, file: !2171, line: 146, type: !7)
!2201 = !DILocalVariable(name: "s23", arg: 5, scope: !2194, file: !2171, line: 146, type: !7)
!2202 = !DILocalVariable(name: "s24", arg: 6, scope: !2194, file: !2171, line: 146, type: !7)
!2203 = !DILocalVariable(name: "s25", arg: 7, scope: !2194, file: !2171, line: 146, type: !7)
!2204 = !DILocalVariable(name: "s26", arg: 8, scope: !2194, file: !2171, line: 146, type: !7)
!2205 = !DILocalVariable(name: "s27", arg: 9, scope: !2194, file: !2171, line: 146, type: !7)
!2206 = !DILocalVariable(name: "s28", arg: 10, scope: !2194, file: !2171, line: 146, type: !7)
!2207 = !DILocation(line: 146, column: 41, scope: !2194, inlinedAt: !2208)
!2208 = distinct !DILocation(line: 167, column: 16, scope: !2209, inlinedAt: !2186)
!2209 = distinct !DILexicalBlock(scope: !2210, file: !2171, line: 164, column: 11)
!2210 = distinct !DILexicalBlock(scope: !2192, file: !2171, line: 163, column: 5)
!2211 = !DILocation(line: 146, column: 110, scope: !2194, inlinedAt: !2208)
!2212 = !DILocation(line: 146, column: 120, scope: !2194, inlinedAt: !2208)
!2213 = !DILocation(line: 148, column: 7, scope: !2214, inlinedAt: !2208)
!2214 = !DILexicalBlockFile(scope: !2215, file: !2171, discriminator: 1)
!2215 = distinct !DILexicalBlock(scope: !2194, file: !2171, line: 148, column: 7)
!2216 = !DILocalVariable(name: "s2", arg: 2, scope: !2217, file: !2171, line: 132, type: !17)
!2217 = distinct !DISubprogram(name: "strcaseeq2", scope: !2171, file: !2171, line: 132, type: !2218, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !2220)
!2218 = !DISubroutineType(types: !2219)
!2219 = !{!47, !17, !17, !7, !7, !7, !7, !7, !7, !7}
!2220 = !{!2221, !2216, !2222, !2223, !2224, !2225, !2226, !2227, !2228}
!2221 = !DILocalVariable(name: "s1", arg: 1, scope: !2217, file: !2171, line: 132, type: !17)
!2222 = !DILocalVariable(name: "s22", arg: 3, scope: !2217, file: !2171, line: 132, type: !7)
!2223 = !DILocalVariable(name: "s23", arg: 4, scope: !2217, file: !2171, line: 132, type: !7)
!2224 = !DILocalVariable(name: "s24", arg: 5, scope: !2217, file: !2171, line: 132, type: !7)
!2225 = !DILocalVariable(name: "s25", arg: 6, scope: !2217, file: !2171, line: 132, type: !7)
!2226 = !DILocalVariable(name: "s26", arg: 7, scope: !2217, file: !2171, line: 132, type: !7)
!2227 = !DILocalVariable(name: "s27", arg: 8, scope: !2217, file: !2171, line: 132, type: !7)
!2228 = !DILocalVariable(name: "s28", arg: 9, scope: !2217, file: !2171, line: 132, type: !7)
!2229 = !DILocation(line: 132, column: 41, scope: !2217, inlinedAt: !2230)
!2230 = distinct !DILocation(line: 153, column: 16, scope: !2231, inlinedAt: !2208)
!2231 = distinct !DILexicalBlock(scope: !2232, file: !2171, line: 150, column: 11)
!2232 = distinct !DILexicalBlock(scope: !2215, file: !2171, line: 149, column: 5)
!2233 = !DILocation(line: 132, column: 100, scope: !2217, inlinedAt: !2230)
!2234 = !DILocation(line: 132, column: 110, scope: !2217, inlinedAt: !2230)
!2235 = !DILocation(line: 134, column: 7, scope: !2236, inlinedAt: !2230)
!2236 = !DILexicalBlockFile(scope: !2237, file: !2171, discriminator: 1)
!2237 = distinct !DILexicalBlock(scope: !2217, file: !2171, line: 134, column: 7)
!2238 = !DILocalVariable(name: "s2", arg: 2, scope: !2239, file: !2171, line: 118, type: !17)
!2239 = distinct !DISubprogram(name: "strcaseeq3", scope: !2171, file: !2171, line: 118, type: !2240, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !2242)
!2240 = !DISubroutineType(types: !2241)
!2241 = !{!47, !17, !17, !7, !7, !7, !7, !7, !7}
!2242 = !{!2243, !2238, !2244, !2245, !2246, !2247, !2248, !2249}
!2243 = !DILocalVariable(name: "s1", arg: 1, scope: !2239, file: !2171, line: 118, type: !17)
!2244 = !DILocalVariable(name: "s23", arg: 3, scope: !2239, file: !2171, line: 118, type: !7)
!2245 = !DILocalVariable(name: "s24", arg: 4, scope: !2239, file: !2171, line: 118, type: !7)
!2246 = !DILocalVariable(name: "s25", arg: 5, scope: !2239, file: !2171, line: 118, type: !7)
!2247 = !DILocalVariable(name: "s26", arg: 6, scope: !2239, file: !2171, line: 118, type: !7)
!2248 = !DILocalVariable(name: "s27", arg: 7, scope: !2239, file: !2171, line: 118, type: !7)
!2249 = !DILocalVariable(name: "s28", arg: 8, scope: !2239, file: !2171, line: 118, type: !7)
!2250 = !DILocation(line: 118, column: 41, scope: !2239, inlinedAt: !2251)
!2251 = distinct !DILocation(line: 139, column: 16, scope: !2252, inlinedAt: !2230)
!2252 = distinct !DILexicalBlock(scope: !2253, file: !2171, line: 136, column: 11)
!2253 = distinct !DILexicalBlock(scope: !2237, file: !2171, line: 135, column: 5)
!2254 = !DILocation(line: 118, column: 90, scope: !2239, inlinedAt: !2251)
!2255 = !DILocation(line: 118, column: 100, scope: !2239, inlinedAt: !2251)
!2256 = !DILocation(line: 120, column: 7, scope: !2257, inlinedAt: !2251)
!2257 = !DILexicalBlockFile(scope: !2258, file: !2171, discriminator: 2)
!2258 = distinct !DILexicalBlock(scope: !2239, file: !2171, line: 120, column: 7)
!2259 = !DILocation(line: 120, column: 7, scope: !2260, inlinedAt: !2251)
!2260 = !DILexicalBlockFile(scope: !2239, file: !2171, discriminator: 2)
!2261 = !DILocalVariable(name: "s2", arg: 2, scope: !2262, file: !2171, line: 104, type: !17)
!2262 = distinct !DISubprogram(name: "strcaseeq4", scope: !2171, file: !2171, line: 104, type: !2263, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !2265)
!2263 = !DISubroutineType(types: !2264)
!2264 = !{!47, !17, !17, !7, !7, !7, !7, !7}
!2265 = !{!2266, !2261, !2267, !2268, !2269, !2270, !2271}
!2266 = !DILocalVariable(name: "s1", arg: 1, scope: !2262, file: !2171, line: 104, type: !17)
!2267 = !DILocalVariable(name: "s24", arg: 3, scope: !2262, file: !2171, line: 104, type: !7)
!2268 = !DILocalVariable(name: "s25", arg: 4, scope: !2262, file: !2171, line: 104, type: !7)
!2269 = !DILocalVariable(name: "s26", arg: 5, scope: !2262, file: !2171, line: 104, type: !7)
!2270 = !DILocalVariable(name: "s27", arg: 6, scope: !2262, file: !2171, line: 104, type: !7)
!2271 = !DILocalVariable(name: "s28", arg: 7, scope: !2262, file: !2171, line: 104, type: !7)
!2272 = !DILocation(line: 104, column: 41, scope: !2262, inlinedAt: !2273)
!2273 = distinct !DILocation(line: 125, column: 16, scope: !2274, inlinedAt: !2251)
!2274 = distinct !DILexicalBlock(scope: !2275, file: !2171, line: 122, column: 11)
!2275 = distinct !DILexicalBlock(scope: !2258, file: !2171, line: 121, column: 5)
!2276 = !DILocation(line: 104, column: 80, scope: !2262, inlinedAt: !2273)
!2277 = !DILocation(line: 104, column: 90, scope: !2262, inlinedAt: !2273)
!2278 = !DILocation(line: 106, column: 7, scope: !2279, inlinedAt: !2273)
!2279 = !DILexicalBlockFile(scope: !2280, file: !2171, discriminator: 2)
!2280 = distinct !DILexicalBlock(scope: !2262, file: !2171, line: 106, column: 7)
!2281 = !DILocation(line: 106, column: 7, scope: !2282, inlinedAt: !2273)
!2282 = !DILexicalBlockFile(scope: !2262, file: !2171, discriminator: 2)
!2283 = !DILocalVariable(name: "s2", arg: 2, scope: !2284, file: !2171, line: 90, type: !17)
!2284 = distinct !DISubprogram(name: "strcaseeq5", scope: !2171, file: !2171, line: 90, type: !2285, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !2287)
!2285 = !DISubroutineType(types: !2286)
!2286 = !{!47, !17, !17, !7, !7, !7, !7}
!2287 = !{!2288, !2283, !2289, !2290, !2291, !2292}
!2288 = !DILocalVariable(name: "s1", arg: 1, scope: !2284, file: !2171, line: 90, type: !17)
!2289 = !DILocalVariable(name: "s25", arg: 3, scope: !2284, file: !2171, line: 90, type: !7)
!2290 = !DILocalVariable(name: "s26", arg: 4, scope: !2284, file: !2171, line: 90, type: !7)
!2291 = !DILocalVariable(name: "s27", arg: 5, scope: !2284, file: !2171, line: 90, type: !7)
!2292 = !DILocalVariable(name: "s28", arg: 6, scope: !2284, file: !2171, line: 90, type: !7)
!2293 = !DILocation(line: 90, column: 41, scope: !2284, inlinedAt: !2294)
!2294 = distinct !DILocation(line: 111, column: 16, scope: !2295, inlinedAt: !2273)
!2295 = distinct !DILexicalBlock(scope: !2296, file: !2171, line: 108, column: 11)
!2296 = distinct !DILexicalBlock(scope: !2280, file: !2171, line: 107, column: 5)
!2297 = !DILocation(line: 90, column: 70, scope: !2284, inlinedAt: !2294)
!2298 = !DILocation(line: 90, column: 80, scope: !2284, inlinedAt: !2294)
!2299 = !DILocation(line: 92, column: 7, scope: !2300, inlinedAt: !2294)
!2300 = !DILexicalBlockFile(scope: !2301, file: !2171, discriminator: 2)
!2301 = distinct !DILexicalBlock(scope: !2284, file: !2171, line: 92, column: 7)
!2302 = !DILocation(line: 92, column: 7, scope: !2303, inlinedAt: !2294)
!2303 = !DILexicalBlockFile(scope: !2284, file: !2171, discriminator: 2)
!2304 = !DILocation(line: 227, column: 12, scope: !2187)
!2305 = !DILocation(line: 227, column: 21, scope: !2187)
!2306 = !DILocation(line: 227, column: 5, scope: !2187)
!2307 = !DILocation(line: 146, column: 41, scope: !2194, inlinedAt: !2308)
!2308 = distinct !DILocation(line: 167, column: 16, scope: !2209, inlinedAt: !2309)
!2309 = distinct !DILocation(line: 228, column: 7, scope: !2310)
!2310 = distinct !DILexicalBlock(scope: !2152, file: !156, line: 228, column: 7)
!2311 = !DILocation(line: 146, column: 110, scope: !2194, inlinedAt: !2308)
!2312 = !DILocation(line: 146, column: 120, scope: !2194, inlinedAt: !2308)
!2313 = !DILocation(line: 148, column: 7, scope: !2214, inlinedAt: !2308)
!2314 = !DILocation(line: 132, column: 41, scope: !2217, inlinedAt: !2315)
!2315 = distinct !DILocation(line: 153, column: 16, scope: !2231, inlinedAt: !2308)
!2316 = !DILocation(line: 132, column: 100, scope: !2217, inlinedAt: !2315)
!2317 = !DILocation(line: 132, column: 110, scope: !2217, inlinedAt: !2315)
!2318 = !DILocation(line: 134, column: 7, scope: !2319, inlinedAt: !2315)
!2319 = !DILexicalBlockFile(scope: !2237, file: !2171, discriminator: 2)
!2320 = !DILocation(line: 134, column: 7, scope: !2321, inlinedAt: !2315)
!2321 = !DILexicalBlockFile(scope: !2217, file: !2171, discriminator: 2)
!2322 = !DILocation(line: 118, column: 41, scope: !2239, inlinedAt: !2323)
!2323 = distinct !DILocation(line: 139, column: 16, scope: !2252, inlinedAt: !2315)
!2324 = !DILocation(line: 118, column: 90, scope: !2239, inlinedAt: !2323)
!2325 = !DILocation(line: 118, column: 100, scope: !2239, inlinedAt: !2323)
!2326 = !DILocation(line: 120, column: 7, scope: !2257, inlinedAt: !2323)
!2327 = !DILocation(line: 120, column: 7, scope: !2260, inlinedAt: !2323)
!2328 = !DILocation(line: 104, column: 41, scope: !2262, inlinedAt: !2329)
!2329 = distinct !DILocation(line: 125, column: 16, scope: !2274, inlinedAt: !2323)
!2330 = !DILocation(line: 104, column: 80, scope: !2262, inlinedAt: !2329)
!2331 = !DILocation(line: 104, column: 90, scope: !2262, inlinedAt: !2329)
!2332 = !DILocation(line: 106, column: 7, scope: !2279, inlinedAt: !2329)
!2333 = !DILocation(line: 106, column: 7, scope: !2282, inlinedAt: !2329)
!2334 = !DILocation(line: 90, column: 41, scope: !2284, inlinedAt: !2335)
!2335 = distinct !DILocation(line: 111, column: 16, scope: !2295, inlinedAt: !2329)
!2336 = !DILocation(line: 90, column: 70, scope: !2284, inlinedAt: !2335)
!2337 = !DILocation(line: 90, column: 80, scope: !2284, inlinedAt: !2335)
!2338 = !DILocation(line: 92, column: 7, scope: !2300, inlinedAt: !2335)
!2339 = !DILocation(line: 92, column: 7, scope: !2303, inlinedAt: !2335)
!2340 = !DILocalVariable(name: "s2", arg: 2, scope: !2341, file: !2171, line: 76, type: !17)
!2341 = distinct !DISubprogram(name: "strcaseeq6", scope: !2171, file: !2171, line: 76, type: !2342, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !2344)
!2342 = !DISubroutineType(types: !2343)
!2343 = !{!47, !17, !17, !7, !7, !7}
!2344 = !{!2345, !2340, !2346, !2347, !2348}
!2345 = !DILocalVariable(name: "s1", arg: 1, scope: !2341, file: !2171, line: 76, type: !17)
!2346 = !DILocalVariable(name: "s26", arg: 3, scope: !2341, file: !2171, line: 76, type: !7)
!2347 = !DILocalVariable(name: "s27", arg: 4, scope: !2341, file: !2171, line: 76, type: !7)
!2348 = !DILocalVariable(name: "s28", arg: 5, scope: !2341, file: !2171, line: 76, type: !7)
!2349 = !DILocation(line: 76, column: 41, scope: !2341, inlinedAt: !2350)
!2350 = distinct !DILocation(line: 97, column: 16, scope: !2351, inlinedAt: !2335)
!2351 = distinct !DILexicalBlock(scope: !2352, file: !2171, line: 94, column: 11)
!2352 = distinct !DILexicalBlock(scope: !2301, file: !2171, line: 93, column: 5)
!2353 = !DILocation(line: 76, column: 60, scope: !2341, inlinedAt: !2350)
!2354 = !DILocation(line: 76, column: 70, scope: !2341, inlinedAt: !2350)
!2355 = !DILocation(line: 78, column: 7, scope: !2356, inlinedAt: !2350)
!2356 = !DILexicalBlockFile(scope: !2357, file: !2171, discriminator: 2)
!2357 = distinct !DILexicalBlock(scope: !2341, file: !2171, line: 78, column: 7)
!2358 = !DILocation(line: 78, column: 7, scope: !2359, inlinedAt: !2350)
!2359 = !DILexicalBlockFile(scope: !2341, file: !2171, discriminator: 2)
!2360 = !DILocalVariable(name: "s2", arg: 2, scope: !2361, file: !2171, line: 62, type: !17)
!2361 = distinct !DISubprogram(name: "strcaseeq7", scope: !2171, file: !2171, line: 62, type: !2362, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !2364)
!2362 = !DISubroutineType(types: !2363)
!2363 = !{!47, !17, !17, !7, !7}
!2364 = !{!2365, !2360, !2366, !2367}
!2365 = !DILocalVariable(name: "s1", arg: 1, scope: !2361, file: !2171, line: 62, type: !17)
!2366 = !DILocalVariable(name: "s27", arg: 3, scope: !2361, file: !2171, line: 62, type: !7)
!2367 = !DILocalVariable(name: "s28", arg: 4, scope: !2361, file: !2171, line: 62, type: !7)
!2368 = !DILocation(line: 62, column: 41, scope: !2361, inlinedAt: !2369)
!2369 = distinct !DILocation(line: 83, column: 16, scope: !2370, inlinedAt: !2350)
!2370 = distinct !DILexicalBlock(scope: !2371, file: !2171, line: 80, column: 11)
!2371 = distinct !DILexicalBlock(scope: !2357, file: !2171, line: 79, column: 5)
!2372 = !DILocation(line: 62, column: 50, scope: !2361, inlinedAt: !2369)
!2373 = !DILocation(line: 62, column: 60, scope: !2361, inlinedAt: !2369)
!2374 = !DILocation(line: 64, column: 7, scope: !2375, inlinedAt: !2369)
!2375 = !DILexicalBlockFile(scope: !2376, file: !2171, discriminator: 2)
!2376 = distinct !DILexicalBlock(scope: !2361, file: !2171, line: 64, column: 7)
!2377 = !DILocation(line: 228, column: 7, scope: !2152)
!2378 = !DILocation(line: 229, column: 12, scope: !2310)
!2379 = !DILocation(line: 229, column: 21, scope: !2310)
!2380 = !DILocation(line: 229, column: 5, scope: !2310)
!2381 = !DILocation(line: 231, column: 13, scope: !2152)
!2382 = !DILocation(line: 231, column: 11, scope: !2152)
!2383 = !DILocation(line: 231, column: 3, scope: !2152)
!2384 = !DILocation(line: 232, column: 1, scope: !2152)
!2385 = distinct !DISubprogram(name: "quotearg_alloc", scope: !156, file: !156, line: 791, type: !2386, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !2388)
!2386 = !DISubroutineType(types: !2387)
!2387 = !{!6, !17, !9, !1227}
!2388 = !{!2389, !2390, !2391}
!2389 = !DILocalVariable(name: "arg", arg: 1, scope: !2385, file: !156, line: 791, type: !17)
!2390 = !DILocalVariable(name: "argsize", arg: 2, scope: !2385, file: !156, line: 791, type: !9)
!2391 = !DILocalVariable(name: "o", arg: 3, scope: !2385, file: !156, line: 792, type: !1227)
!2392 = !DILocation(line: 791, column: 29, scope: !2385)
!2393 = !DILocation(line: 791, column: 41, scope: !2385)
!2394 = !DILocation(line: 792, column: 47, scope: !2385)
!2395 = !DILocalVariable(name: "arg", arg: 1, scope: !2396, file: !156, line: 804, type: !17)
!2396 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !156, file: !156, line: 804, type: !2397, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !2399)
!2397 = !DISubroutineType(types: !2398)
!2398 = !{!6, !17, !9, !574, !1227}
!2399 = !{!2395, !2400, !2401, !2402, !2403, !2404, !2405, !2406, !2407}
!2400 = !DILocalVariable(name: "argsize", arg: 2, scope: !2396, file: !156, line: 804, type: !9)
!2401 = !DILocalVariable(name: "size", arg: 3, scope: !2396, file: !156, line: 804, type: !574)
!2402 = !DILocalVariable(name: "o", arg: 4, scope: !2396, file: !156, line: 805, type: !1227)
!2403 = !DILocalVariable(name: "p", scope: !2396, file: !156, line: 807, type: !1227)
!2404 = !DILocalVariable(name: "e", scope: !2396, file: !156, line: 808, type: !47)
!2405 = !DILocalVariable(name: "flags", scope: !2396, file: !156, line: 810, type: !47)
!2406 = !DILocalVariable(name: "bufsize", scope: !2396, file: !156, line: 811, type: !9)
!2407 = !DILocalVariable(name: "buf", scope: !2396, file: !156, line: 815, type: !6)
!2408 = !DILocation(line: 804, column: 33, scope: !2396, inlinedAt: !2409)
!2409 = distinct !DILocation(line: 794, column: 10, scope: !2385)
!2410 = !DILocation(line: 804, column: 45, scope: !2396, inlinedAt: !2409)
!2411 = !DILocation(line: 804, column: 62, scope: !2396, inlinedAt: !2409)
!2412 = !DILocation(line: 805, column: 51, scope: !2396, inlinedAt: !2409)
!2413 = !DILocation(line: 807, column: 37, scope: !2396, inlinedAt: !2409)
!2414 = !DILocation(line: 807, column: 33, scope: !2396, inlinedAt: !2409)
!2415 = !DILocation(line: 808, column: 11, scope: !2396, inlinedAt: !2409)
!2416 = !DILocation(line: 808, column: 7, scope: !2396, inlinedAt: !2409)
!2417 = !DILocation(line: 810, column: 18, scope: !2396, inlinedAt: !2409)
!2418 = !DILocation(line: 810, column: 24, scope: !2396, inlinedAt: !2409)
!2419 = !DILocation(line: 810, column: 7, scope: !2396, inlinedAt: !2409)
!2420 = !DILocation(line: 811, column: 69, scope: !2396, inlinedAt: !2409)
!2421 = !DILocation(line: 812, column: 53, scope: !2396, inlinedAt: !2409)
!2422 = !DILocation(line: 813, column: 49, scope: !2396, inlinedAt: !2409)
!2423 = !DILocation(line: 814, column: 49, scope: !2396, inlinedAt: !2409)
!2424 = !DILocation(line: 811, column: 20, scope: !2396, inlinedAt: !2409)
!2425 = !DILocation(line: 814, column: 62, scope: !2396, inlinedAt: !2409)
!2426 = !DILocation(line: 811, column: 10, scope: !2396, inlinedAt: !2409)
!2427 = !DILocalVariable(name: "n", arg: 1, scope: !2428, file: !570, line: 220, type: !9)
!2428 = distinct !DISubprogram(name: "xcharalloc", scope: !570, file: !570, line: 220, type: !2429, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !2431)
!2429 = !DISubroutineType(types: !2430)
!2430 = !{!6, !9}
!2431 = !{!2427}
!2432 = !DILocation(line: 220, column: 20, scope: !2428, inlinedAt: !2433)
!2433 = distinct !DILocation(line: 815, column: 15, scope: !2396, inlinedAt: !2409)
!2434 = !DILocation(line: 222, column: 10, scope: !2428, inlinedAt: !2433)
!2435 = !DILocation(line: 815, column: 9, scope: !2396, inlinedAt: !2409)
!2436 = !DILocation(line: 816, column: 60, scope: !2396, inlinedAt: !2409)
!2437 = !DILocation(line: 818, column: 32, scope: !2396, inlinedAt: !2409)
!2438 = !DILocation(line: 818, column: 47, scope: !2396, inlinedAt: !2409)
!2439 = !DILocation(line: 816, column: 3, scope: !2396, inlinedAt: !2409)
!2440 = !DILocation(line: 819, column: 9, scope: !2396, inlinedAt: !2409)
!2441 = !DILocation(line: 794, column: 3, scope: !2385)
!2442 = !DILocation(line: 804, column: 33, scope: !2396)
!2443 = !DILocation(line: 804, column: 45, scope: !2396)
!2444 = !DILocation(line: 804, column: 62, scope: !2396)
!2445 = !DILocation(line: 805, column: 51, scope: !2396)
!2446 = !DILocation(line: 807, column: 37, scope: !2396)
!2447 = !DILocation(line: 807, column: 33, scope: !2396)
!2448 = !DILocation(line: 808, column: 11, scope: !2396)
!2449 = !DILocation(line: 808, column: 7, scope: !2396)
!2450 = !DILocation(line: 810, column: 18, scope: !2396)
!2451 = !DILocation(line: 810, column: 27, scope: !2396)
!2452 = !DILocation(line: 810, column: 24, scope: !2396)
!2453 = !DILocation(line: 810, column: 7, scope: !2396)
!2454 = !DILocation(line: 811, column: 69, scope: !2396)
!2455 = !DILocation(line: 812, column: 53, scope: !2396)
!2456 = !DILocation(line: 813, column: 49, scope: !2396)
!2457 = !DILocation(line: 814, column: 49, scope: !2396)
!2458 = !DILocation(line: 811, column: 20, scope: !2396)
!2459 = !DILocation(line: 814, column: 62, scope: !2396)
!2460 = !DILocation(line: 811, column: 10, scope: !2396)
!2461 = !DILocation(line: 220, column: 20, scope: !2428, inlinedAt: !2462)
!2462 = distinct !DILocation(line: 815, column: 15, scope: !2396)
!2463 = !DILocation(line: 222, column: 10, scope: !2428, inlinedAt: !2462)
!2464 = !DILocation(line: 815, column: 9, scope: !2396)
!2465 = !DILocation(line: 816, column: 60, scope: !2396)
!2466 = !DILocation(line: 818, column: 32, scope: !2396)
!2467 = !DILocation(line: 818, column: 47, scope: !2396)
!2468 = !DILocation(line: 816, column: 3, scope: !2396)
!2469 = !DILocation(line: 819, column: 9, scope: !2396)
!2470 = !DILocation(line: 820, column: 7, scope: !2396)
!2471 = !DILocation(line: 821, column: 11, scope: !2472)
!2472 = distinct !DILexicalBlock(scope: !2396, file: !156, line: 820, column: 7)
!2473 = !{!816, !816, i64 0}
!2474 = !DILocation(line: 821, column: 5, scope: !2472)
!2475 = !DILocation(line: 822, column: 3, scope: !2396)
!2476 = distinct !DISubprogram(name: "quotearg_free", scope: !156, file: !156, line: 840, type: !1097, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !2477)
!2477 = !{!2478, !2479}
!2478 = !DILocalVariable(name: "sv", scope: !2476, file: !156, line: 842, type: !182)
!2479 = !DILocalVariable(name: "i", scope: !2476, file: !156, line: 843, type: !47)
!2480 = !DILocation(line: 842, column: 24, scope: !2476)
!2481 = !DILocation(line: 842, column: 19, scope: !2476)
!2482 = !DILocation(line: 843, column: 7, scope: !2476)
!2483 = !DILocation(line: 844, column: 19, scope: !2484)
!2484 = !DILexicalBlockFile(scope: !2485, file: !156, discriminator: 1)
!2485 = distinct !DILexicalBlock(scope: !2486, file: !156, line: 844, column: 3)
!2486 = distinct !DILexicalBlock(scope: !2476, file: !156, line: 844, column: 3)
!2487 = !DILocation(line: 844, column: 17, scope: !2484)
!2488 = !DILocation(line: 844, column: 3, scope: !2489)
!2489 = !DILexicalBlockFile(scope: !2486, file: !156, discriminator: 1)
!2490 = !DILocation(line: 845, column: 17, scope: !2485)
!2491 = !{!2492, !658, i64 8}
!2492 = !{!"slotvec", !816, i64 0, !658, i64 8}
!2493 = !DILocation(line: 845, column: 5, scope: !2485)
!2494 = !DILocation(line: 844, column: 28, scope: !2495)
!2495 = !DILexicalBlockFile(scope: !2485, file: !156, discriminator: 2)
!2496 = distinct !{!2496, !2497, !2498}
!2497 = !DILocation(line: 844, column: 3, scope: !2486)
!2498 = !DILocation(line: 845, column: 20, scope: !2486)
!2499 = !DILocation(line: 846, column: 13, scope: !2500)
!2500 = distinct !DILexicalBlock(scope: !2476, file: !156, line: 846, column: 7)
!2501 = !DILocation(line: 846, column: 17, scope: !2500)
!2502 = !DILocation(line: 846, column: 7, scope: !2476)
!2503 = !DILocation(line: 848, column: 7, scope: !2504)
!2504 = distinct !DILexicalBlock(scope: !2500, file: !156, line: 847, column: 5)
!2505 = !DILocation(line: 849, column: 21, scope: !2504)
!2506 = !{!2492, !816, i64 0}
!2507 = !DILocation(line: 850, column: 20, scope: !2504)
!2508 = !DILocation(line: 851, column: 5, scope: !2504)
!2509 = !DILocation(line: 852, column: 10, scope: !2510)
!2510 = distinct !DILexicalBlock(scope: !2476, file: !156, line: 852, column: 7)
!2511 = !DILocation(line: 852, column: 7, scope: !2476)
!2512 = !DILocation(line: 854, column: 13, scope: !2513)
!2513 = distinct !DILexicalBlock(scope: !2510, file: !156, line: 853, column: 5)
!2514 = !DILocation(line: 854, column: 7, scope: !2513)
!2515 = !DILocation(line: 855, column: 15, scope: !2513)
!2516 = !DILocation(line: 856, column: 5, scope: !2513)
!2517 = !DILocation(line: 857, column: 10, scope: !2476)
!2518 = !DILocation(line: 858, column: 1, scope: !2476)
!2519 = distinct !DISubprogram(name: "quotearg_n", scope: !156, file: !156, line: 922, type: !2520, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !2522)
!2520 = !DISubroutineType(types: !2521)
!2521 = !{!6, !47, !17}
!2522 = !{!2523, !2524}
!2523 = !DILocalVariable(name: "n", arg: 1, scope: !2519, file: !156, line: 922, type: !47)
!2524 = !DILocalVariable(name: "arg", arg: 2, scope: !2519, file: !156, line: 922, type: !17)
!2525 = !DILocation(line: 922, column: 17, scope: !2519)
!2526 = !DILocation(line: 922, column: 32, scope: !2519)
!2527 = !DILocation(line: 924, column: 10, scope: !2519)
!2528 = !DILocation(line: 924, column: 3, scope: !2519)
!2529 = distinct !DISubprogram(name: "quotearg_n_options", scope: !156, file: !156, line: 869, type: !2530, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !2532)
!2530 = !DISubroutineType(types: !2531)
!2531 = !{!6, !47, !17, !9, !1227}
!2532 = !{!2533, !2534, !2535, !2536, !2537, !2538, !2539, !2542, !2544, !2545, !2546}
!2533 = !DILocalVariable(name: "n", arg: 1, scope: !2529, file: !156, line: 869, type: !47)
!2534 = !DILocalVariable(name: "arg", arg: 2, scope: !2529, file: !156, line: 869, type: !17)
!2535 = !DILocalVariable(name: "argsize", arg: 3, scope: !2529, file: !156, line: 869, type: !9)
!2536 = !DILocalVariable(name: "options", arg: 4, scope: !2529, file: !156, line: 870, type: !1227)
!2537 = !DILocalVariable(name: "e", scope: !2529, file: !156, line: 872, type: !47)
!2538 = !DILocalVariable(name: "sv", scope: !2529, file: !156, line: 874, type: !182)
!2539 = !DILocalVariable(name: "preallocated", scope: !2540, file: !156, line: 881, type: !97)
!2540 = distinct !DILexicalBlock(scope: !2541, file: !156, line: 880, column: 5)
!2541 = distinct !DILexicalBlock(scope: !2529, file: !156, line: 879, column: 7)
!2542 = !DILocalVariable(name: "size", scope: !2543, file: !156, line: 894, type: !9)
!2543 = distinct !DILexicalBlock(scope: !2529, file: !156, line: 893, column: 3)
!2544 = !DILocalVariable(name: "val", scope: !2543, file: !156, line: 895, type: !6)
!2545 = !DILocalVariable(name: "flags", scope: !2543, file: !156, line: 897, type: !47)
!2546 = !DILocalVariable(name: "qsize", scope: !2543, file: !156, line: 898, type: !9)
!2547 = !DILocation(line: 869, column: 25, scope: !2529)
!2548 = !DILocation(line: 869, column: 40, scope: !2529)
!2549 = !DILocation(line: 869, column: 52, scope: !2529)
!2550 = !DILocation(line: 870, column: 51, scope: !2529)
!2551 = !DILocation(line: 872, column: 11, scope: !2529)
!2552 = !DILocation(line: 872, column: 7, scope: !2529)
!2553 = !DILocation(line: 874, column: 24, scope: !2529)
!2554 = !DILocation(line: 874, column: 19, scope: !2529)
!2555 = !DILocation(line: 876, column: 9, scope: !2556)
!2556 = distinct !DILexicalBlock(scope: !2529, file: !156, line: 876, column: 7)
!2557 = !DILocation(line: 876, column: 7, scope: !2529)
!2558 = !DILocation(line: 877, column: 5, scope: !2556)
!2559 = !DILocation(line: 879, column: 7, scope: !2541)
!2560 = !DILocation(line: 879, column: 14, scope: !2541)
!2561 = !DILocation(line: 879, column: 7, scope: !2529)
!2562 = !DILocation(line: 881, column: 31, scope: !2540)
!2563 = !DILocation(line: 883, column: 67, scope: !2564)
!2564 = distinct !DILexicalBlock(scope: !2540, file: !156, line: 883, column: 11)
!2565 = !DILocation(line: 883, column: 11, scope: !2540)
!2566 = !DILocation(line: 884, column: 9, scope: !2564)
!2567 = !DILocation(line: 886, column: 32, scope: !2568)
!2568 = !DILexicalBlockFile(scope: !2540, file: !156, discriminator: 3)
!2569 = !DILocation(line: 886, column: 61, scope: !2568)
!2570 = !DILocation(line: 886, column: 58, scope: !2568)
!2571 = !DILocation(line: 886, column: 66, scope: !2568)
!2572 = !DILocation(line: 886, column: 22, scope: !2568)
!2573 = !DILocation(line: 886, column: 15, scope: !2568)
!2574 = !DILocation(line: 887, column: 11, scope: !2540)
!2575 = !DILocation(line: 888, column: 15, scope: !2576)
!2576 = distinct !DILexicalBlock(scope: !2540, file: !156, line: 887, column: 11)
!2577 = !{i64 0, i64 8, !2473, i64 8, i64 8, !657}
!2578 = !DILocation(line: 888, column: 9, scope: !2576)
!2579 = !DILocation(line: 889, column: 20, scope: !2540)
!2580 = !DILocation(line: 889, column: 18, scope: !2540)
!2581 = !DILocation(line: 889, column: 7, scope: !2540)
!2582 = !DILocation(line: 889, column: 38, scope: !2540)
!2583 = !DILocation(line: 889, column: 31, scope: !2540)
!2584 = !DILocation(line: 889, column: 48, scope: !2540)
!2585 = !DILocation(line: 890, column: 14, scope: !2540)
!2586 = !DILocation(line: 891, column: 5, scope: !2540)
!2587 = !DILocation(line: 894, column: 19, scope: !2543)
!2588 = !DILocation(line: 894, column: 25, scope: !2543)
!2589 = !DILocation(line: 894, column: 12, scope: !2543)
!2590 = !DILocation(line: 895, column: 23, scope: !2543)
!2591 = !DILocation(line: 895, column: 11, scope: !2543)
!2592 = !DILocation(line: 897, column: 26, scope: !2543)
!2593 = !DILocation(line: 897, column: 32, scope: !2543)
!2594 = !DILocation(line: 897, column: 9, scope: !2543)
!2595 = !DILocation(line: 899, column: 55, scope: !2543)
!2596 = !DILocation(line: 900, column: 46, scope: !2543)
!2597 = !DILocation(line: 901, column: 55, scope: !2543)
!2598 = !DILocation(line: 902, column: 55, scope: !2543)
!2599 = !DILocation(line: 898, column: 20, scope: !2543)
!2600 = !DILocation(line: 898, column: 12, scope: !2543)
!2601 = !DILocation(line: 904, column: 14, scope: !2602)
!2602 = distinct !DILexicalBlock(scope: !2543, file: !156, line: 904, column: 9)
!2603 = !DILocation(line: 904, column: 9, scope: !2543)
!2604 = !DILocation(line: 906, column: 35, scope: !2605)
!2605 = distinct !DILexicalBlock(scope: !2602, file: !156, line: 905, column: 7)
!2606 = !DILocation(line: 906, column: 20, scope: !2605)
!2607 = !DILocation(line: 907, column: 17, scope: !2608)
!2608 = distinct !DILexicalBlock(scope: !2605, file: !156, line: 907, column: 13)
!2609 = !DILocation(line: 907, column: 13, scope: !2605)
!2610 = !DILocation(line: 908, column: 11, scope: !2608)
!2611 = !DILocation(line: 220, column: 20, scope: !2428, inlinedAt: !2612)
!2612 = distinct !DILocation(line: 909, column: 27, scope: !2605)
!2613 = !DILocation(line: 222, column: 10, scope: !2428, inlinedAt: !2612)
!2614 = !DILocation(line: 909, column: 19, scope: !2605)
!2615 = !DILocation(line: 910, column: 69, scope: !2605)
!2616 = !DILocation(line: 912, column: 44, scope: !2605)
!2617 = !DILocation(line: 913, column: 44, scope: !2605)
!2618 = !DILocation(line: 910, column: 9, scope: !2605)
!2619 = !DILocation(line: 914, column: 7, scope: !2605)
!2620 = !DILocation(line: 916, column: 11, scope: !2543)
!2621 = !DILocation(line: 917, column: 5, scope: !2543)
!2622 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !156, file: !156, line: 928, type: !2623, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !2625)
!2623 = !DISubroutineType(types: !2624)
!2624 = !{!6, !47, !17, !9}
!2625 = !{!2626, !2627, !2628}
!2626 = !DILocalVariable(name: "n", arg: 1, scope: !2622, file: !156, line: 928, type: !47)
!2627 = !DILocalVariable(name: "arg", arg: 2, scope: !2622, file: !156, line: 928, type: !17)
!2628 = !DILocalVariable(name: "argsize", arg: 3, scope: !2622, file: !156, line: 928, type: !9)
!2629 = !DILocation(line: 928, column: 21, scope: !2622)
!2630 = !DILocation(line: 928, column: 36, scope: !2622)
!2631 = !DILocation(line: 928, column: 48, scope: !2622)
!2632 = !DILocation(line: 930, column: 10, scope: !2622)
!2633 = !DILocation(line: 930, column: 3, scope: !2622)
!2634 = distinct !DISubprogram(name: "quotearg", scope: !156, file: !156, line: 934, type: !2635, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !2637)
!2635 = !DISubroutineType(types: !2636)
!2636 = !{!6, !17}
!2637 = !{!2638}
!2638 = !DILocalVariable(name: "arg", arg: 1, scope: !2634, file: !156, line: 934, type: !17)
!2639 = !DILocation(line: 934, column: 23, scope: !2634)
!2640 = !DILocation(line: 922, column: 17, scope: !2519, inlinedAt: !2641)
!2641 = distinct !DILocation(line: 936, column: 10, scope: !2634)
!2642 = !DILocation(line: 922, column: 32, scope: !2519, inlinedAt: !2641)
!2643 = !DILocation(line: 924, column: 10, scope: !2519, inlinedAt: !2641)
!2644 = !DILocation(line: 936, column: 3, scope: !2634)
!2645 = distinct !DISubprogram(name: "quotearg_mem", scope: !156, file: !156, line: 940, type: !2646, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !2648)
!2646 = !DISubroutineType(types: !2647)
!2647 = !{!6, !17, !9}
!2648 = !{!2649, !2650}
!2649 = !DILocalVariable(name: "arg", arg: 1, scope: !2645, file: !156, line: 940, type: !17)
!2650 = !DILocalVariable(name: "argsize", arg: 2, scope: !2645, file: !156, line: 940, type: !9)
!2651 = !DILocation(line: 940, column: 27, scope: !2645)
!2652 = !DILocation(line: 940, column: 39, scope: !2645)
!2653 = !DILocation(line: 928, column: 21, scope: !2622, inlinedAt: !2654)
!2654 = distinct !DILocation(line: 942, column: 10, scope: !2645)
!2655 = !DILocation(line: 928, column: 36, scope: !2622, inlinedAt: !2654)
!2656 = !DILocation(line: 928, column: 48, scope: !2622, inlinedAt: !2654)
!2657 = !DILocation(line: 930, column: 10, scope: !2622, inlinedAt: !2654)
!2658 = !DILocation(line: 942, column: 3, scope: !2645)
!2659 = distinct !DISubprogram(name: "quotearg_n_style", scope: !156, file: !156, line: 946, type: !2660, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !2662)
!2660 = !DISubroutineType(types: !2661)
!2661 = !{!6, !47, !117, !17}
!2662 = !{!2663, !2664, !2665, !2666}
!2663 = !DILocalVariable(name: "n", arg: 1, scope: !2659, file: !156, line: 946, type: !47)
!2664 = !DILocalVariable(name: "s", arg: 2, scope: !2659, file: !156, line: 946, type: !117)
!2665 = !DILocalVariable(name: "arg", arg: 3, scope: !2659, file: !156, line: 946, type: !17)
!2666 = !DILocalVariable(name: "o", scope: !2659, file: !156, line: 948, type: !1228)
!2667 = !DILocalVariable(name: "o", scope: !2668, file: !156, line: 187, type: !163)
!2668 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !156, file: !156, line: 185, type: !2669, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !2671)
!2669 = !DISubroutineType(types: !2670)
!2670 = !{!163, !117}
!2671 = !{!2672, !2667}
!2672 = !DILocalVariable(name: "style", arg: 1, scope: !2668, file: !156, line: 185, type: !117)
!2673 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!2674 = !DILocation(line: 187, column: 26, scope: !2668, inlinedAt: !2675)
!2675 = distinct !DILocation(line: 948, column: 36, scope: !2659)
!2676 = !DILocation(line: 946, column: 23, scope: !2659)
!2677 = !DILocation(line: 946, column: 45, scope: !2659)
!2678 = !DILocation(line: 946, column: 60, scope: !2659)
!2679 = !DILocation(line: 948, column: 3, scope: !2659)
!2680 = !DILocation(line: 948, column: 32, scope: !2659)
!2681 = !DILocation(line: 185, column: 48, scope: !2668, inlinedAt: !2675)
!2682 = !DILocation(line: 187, column: 3, scope: !2668, inlinedAt: !2675)
!2683 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!2684 = !DILocation(line: 188, column: 13, scope: !2685, inlinedAt: !2675)
!2685 = distinct !DILexicalBlock(scope: !2668, file: !156, line: 188, column: 7)
!2686 = !DILocation(line: 188, column: 7, scope: !2668, inlinedAt: !2675)
!2687 = !DILocation(line: 189, column: 5, scope: !2685, inlinedAt: !2675)
!2688 = !{!2689}
!2689 = distinct !{!2689, !2690, !"quoting_options_from_style: argument 0"}
!2690 = distinct !{!2690, !"quoting_options_from_style"}
!2691 = !DILocation(line: 191, column: 10, scope: !2668, inlinedAt: !2675)
!2692 = !DILocation(line: 192, column: 1, scope: !2668, inlinedAt: !2675)
!2693 = !DILocation(line: 949, column: 10, scope: !2659)
!2694 = !DILocation(line: 950, column: 1, scope: !2659)
!2695 = !DILocation(line: 949, column: 3, scope: !2659)
!2696 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !156, file: !156, line: 953, type: !2697, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !2699)
!2697 = !DISubroutineType(types: !2698)
!2698 = !{!6, !47, !117, !17, !9}
!2699 = !{!2700, !2701, !2702, !2703, !2704}
!2700 = !DILocalVariable(name: "n", arg: 1, scope: !2696, file: !156, line: 953, type: !47)
!2701 = !DILocalVariable(name: "s", arg: 2, scope: !2696, file: !156, line: 953, type: !117)
!2702 = !DILocalVariable(name: "arg", arg: 3, scope: !2696, file: !156, line: 954, type: !17)
!2703 = !DILocalVariable(name: "argsize", arg: 4, scope: !2696, file: !156, line: 954, type: !9)
!2704 = !DILocalVariable(name: "o", scope: !2696, file: !156, line: 956, type: !1228)
!2705 = !DILocation(line: 187, column: 26, scope: !2668, inlinedAt: !2706)
!2706 = distinct !DILocation(line: 956, column: 36, scope: !2696)
!2707 = !DILocation(line: 953, column: 27, scope: !2696)
!2708 = !DILocation(line: 953, column: 49, scope: !2696)
!2709 = !DILocation(line: 954, column: 35, scope: !2696)
!2710 = !DILocation(line: 954, column: 47, scope: !2696)
!2711 = !DILocation(line: 956, column: 3, scope: !2696)
!2712 = !DILocation(line: 956, column: 32, scope: !2696)
!2713 = !DILocation(line: 185, column: 48, scope: !2668, inlinedAt: !2706)
!2714 = !DILocation(line: 187, column: 3, scope: !2668, inlinedAt: !2706)
!2715 = !DILocation(line: 188, column: 13, scope: !2685, inlinedAt: !2706)
!2716 = !DILocation(line: 188, column: 7, scope: !2668, inlinedAt: !2706)
!2717 = !DILocation(line: 189, column: 5, scope: !2685, inlinedAt: !2706)
!2718 = !{!2719}
!2719 = distinct !{!2719, !2720, !"quoting_options_from_style: argument 0"}
!2720 = distinct !{!2720, !"quoting_options_from_style"}
!2721 = !DILocation(line: 191, column: 10, scope: !2668, inlinedAt: !2706)
!2722 = !DILocation(line: 192, column: 1, scope: !2668, inlinedAt: !2706)
!2723 = !DILocation(line: 957, column: 10, scope: !2696)
!2724 = !DILocation(line: 958, column: 1, scope: !2696)
!2725 = !DILocation(line: 957, column: 3, scope: !2696)
!2726 = distinct !DISubprogram(name: "quotearg_style", scope: !156, file: !156, line: 961, type: !2727, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !2729)
!2727 = !DISubroutineType(types: !2728)
!2728 = !{!6, !117, !17}
!2729 = !{!2730, !2731}
!2730 = !DILocalVariable(name: "s", arg: 1, scope: !2726, file: !156, line: 961, type: !117)
!2731 = !DILocalVariable(name: "arg", arg: 2, scope: !2726, file: !156, line: 961, type: !17)
!2732 = !DILocation(line: 187, column: 26, scope: !2668, inlinedAt: !2733)
!2733 = distinct !DILocation(line: 948, column: 36, scope: !2659, inlinedAt: !2734)
!2734 = distinct !DILocation(line: 963, column: 10, scope: !2726)
!2735 = !DILocation(line: 961, column: 36, scope: !2726)
!2736 = !DILocation(line: 961, column: 51, scope: !2726)
!2737 = !DILocation(line: 946, column: 23, scope: !2659, inlinedAt: !2734)
!2738 = !DILocation(line: 946, column: 45, scope: !2659, inlinedAt: !2734)
!2739 = !DILocation(line: 946, column: 60, scope: !2659, inlinedAt: !2734)
!2740 = !DILocation(line: 948, column: 3, scope: !2659, inlinedAt: !2734)
!2741 = !DILocation(line: 948, column: 32, scope: !2659, inlinedAt: !2734)
!2742 = !DILocation(line: 185, column: 48, scope: !2668, inlinedAt: !2733)
!2743 = !DILocation(line: 187, column: 3, scope: !2668, inlinedAt: !2733)
!2744 = !DILocation(line: 188, column: 13, scope: !2685, inlinedAt: !2733)
!2745 = !DILocation(line: 188, column: 7, scope: !2668, inlinedAt: !2733)
!2746 = !DILocation(line: 189, column: 5, scope: !2685, inlinedAt: !2733)
!2747 = !{!2748}
!2748 = distinct !{!2748, !2749, !"quoting_options_from_style: argument 0"}
!2749 = distinct !{!2749, !"quoting_options_from_style"}
!2750 = !DILocation(line: 191, column: 10, scope: !2668, inlinedAt: !2733)
!2751 = !DILocation(line: 192, column: 1, scope: !2668, inlinedAt: !2733)
!2752 = !DILocation(line: 949, column: 10, scope: !2659, inlinedAt: !2734)
!2753 = !DILocation(line: 950, column: 1, scope: !2659, inlinedAt: !2734)
!2754 = !DILocation(line: 963, column: 3, scope: !2726)
!2755 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !156, file: !156, line: 967, type: !2756, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !2758)
!2756 = !DISubroutineType(types: !2757)
!2757 = !{!6, !117, !17, !9}
!2758 = !{!2759, !2760, !2761}
!2759 = !DILocalVariable(name: "s", arg: 1, scope: !2755, file: !156, line: 967, type: !117)
!2760 = !DILocalVariable(name: "arg", arg: 2, scope: !2755, file: !156, line: 967, type: !17)
!2761 = !DILocalVariable(name: "argsize", arg: 3, scope: !2755, file: !156, line: 967, type: !9)
!2762 = !DILocation(line: 187, column: 26, scope: !2668, inlinedAt: !2763)
!2763 = distinct !DILocation(line: 956, column: 36, scope: !2696, inlinedAt: !2764)
!2764 = distinct !DILocation(line: 969, column: 10, scope: !2755)
!2765 = !DILocation(line: 967, column: 40, scope: !2755)
!2766 = !DILocation(line: 967, column: 55, scope: !2755)
!2767 = !DILocation(line: 967, column: 67, scope: !2755)
!2768 = !DILocation(line: 953, column: 27, scope: !2696, inlinedAt: !2764)
!2769 = !DILocation(line: 953, column: 49, scope: !2696, inlinedAt: !2764)
!2770 = !DILocation(line: 954, column: 35, scope: !2696, inlinedAt: !2764)
!2771 = !DILocation(line: 954, column: 47, scope: !2696, inlinedAt: !2764)
!2772 = !DILocation(line: 956, column: 3, scope: !2696, inlinedAt: !2764)
!2773 = !DILocation(line: 956, column: 32, scope: !2696, inlinedAt: !2764)
!2774 = !DILocation(line: 185, column: 48, scope: !2668, inlinedAt: !2763)
!2775 = !DILocation(line: 187, column: 3, scope: !2668, inlinedAt: !2763)
!2776 = !DILocation(line: 188, column: 13, scope: !2685, inlinedAt: !2763)
!2777 = !DILocation(line: 188, column: 7, scope: !2668, inlinedAt: !2763)
!2778 = !DILocation(line: 189, column: 5, scope: !2685, inlinedAt: !2763)
!2779 = !{!2780}
!2780 = distinct !{!2780, !2781, !"quoting_options_from_style: argument 0"}
!2781 = distinct !{!2781, !"quoting_options_from_style"}
!2782 = !DILocation(line: 191, column: 10, scope: !2668, inlinedAt: !2763)
!2783 = !DILocation(line: 192, column: 1, scope: !2668, inlinedAt: !2763)
!2784 = !DILocation(line: 957, column: 10, scope: !2696, inlinedAt: !2764)
!2785 = !DILocation(line: 958, column: 1, scope: !2696, inlinedAt: !2764)
!2786 = !DILocation(line: 969, column: 3, scope: !2755)
!2787 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !156, file: !156, line: 973, type: !2788, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !2790)
!2788 = !DISubroutineType(types: !2789)
!2789 = !{!6, !17, !9, !7}
!2790 = !{!2791, !2792, !2793, !2794}
!2791 = !DILocalVariable(name: "arg", arg: 1, scope: !2787, file: !156, line: 973, type: !17)
!2792 = !DILocalVariable(name: "argsize", arg: 2, scope: !2787, file: !156, line: 973, type: !9)
!2793 = !DILocalVariable(name: "ch", arg: 3, scope: !2787, file: !156, line: 973, type: !7)
!2794 = !DILocalVariable(name: "options", scope: !2787, file: !156, line: 975, type: !163)
!2795 = !DILocation(line: 973, column: 32, scope: !2787)
!2796 = !DILocation(line: 973, column: 44, scope: !2787)
!2797 = !DILocation(line: 973, column: 58, scope: !2787)
!2798 = !DILocation(line: 975, column: 3, scope: !2787)
!2799 = !DILocation(line: 976, column: 13, scope: !2787)
!2800 = !{i64 0, i64 4, !824, i64 4, i64 4, !751, i64 8, i64 32, !824, i64 40, i64 8, !657, i64 48, i64 8, !657}
!2801 = !DILocation(line: 975, column: 26, scope: !2787)
!2802 = !DILocation(line: 144, column: 43, scope: !1251, inlinedAt: !2803)
!2803 = distinct !DILocation(line: 977, column: 3, scope: !2787)
!2804 = !DILocation(line: 144, column: 51, scope: !1251, inlinedAt: !2803)
!2805 = !DILocation(line: 144, column: 58, scope: !1251, inlinedAt: !2803)
!2806 = !DILocation(line: 146, column: 17, scope: !1251, inlinedAt: !2803)
!2807 = !DILocation(line: 148, column: 62, scope: !1269, inlinedAt: !2803)
!2808 = !DILocation(line: 148, column: 57, scope: !1269, inlinedAt: !2803)
!2809 = !DILocation(line: 147, column: 17, scope: !1251, inlinedAt: !2803)
!2810 = !DILocation(line: 149, column: 18, scope: !1251, inlinedAt: !2803)
!2811 = !DILocation(line: 149, column: 15, scope: !1251, inlinedAt: !2803)
!2812 = !DILocation(line: 149, column: 7, scope: !1251, inlinedAt: !2803)
!2813 = !DILocation(line: 150, column: 12, scope: !1251, inlinedAt: !2803)
!2814 = !DILocation(line: 150, column: 15, scope: !1251, inlinedAt: !2803)
!2815 = !DILocation(line: 150, column: 25, scope: !1251, inlinedAt: !2803)
!2816 = !DILocation(line: 150, column: 7, scope: !1251, inlinedAt: !2803)
!2817 = !DILocation(line: 151, column: 18, scope: !1251, inlinedAt: !2803)
!2818 = !DILocation(line: 151, column: 23, scope: !1251, inlinedAt: !2803)
!2819 = !DILocation(line: 151, column: 6, scope: !1251, inlinedAt: !2803)
!2820 = !DILocation(line: 978, column: 10, scope: !2787)
!2821 = !DILocation(line: 979, column: 1, scope: !2787)
!2822 = !DILocation(line: 978, column: 3, scope: !2787)
!2823 = distinct !DISubprogram(name: "quotearg_char", scope: !156, file: !156, line: 982, type: !2824, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !2826)
!2824 = !DISubroutineType(types: !2825)
!2825 = !{!6, !17, !7}
!2826 = !{!2827, !2828}
!2827 = !DILocalVariable(name: "arg", arg: 1, scope: !2823, file: !156, line: 982, type: !17)
!2828 = !DILocalVariable(name: "ch", arg: 2, scope: !2823, file: !156, line: 982, type: !7)
!2829 = !DILocation(line: 982, column: 28, scope: !2823)
!2830 = !DILocation(line: 982, column: 38, scope: !2823)
!2831 = !DILocation(line: 973, column: 32, scope: !2787, inlinedAt: !2832)
!2832 = distinct !DILocation(line: 984, column: 10, scope: !2823)
!2833 = !DILocation(line: 973, column: 44, scope: !2787, inlinedAt: !2832)
!2834 = !DILocation(line: 973, column: 58, scope: !2787, inlinedAt: !2832)
!2835 = !DILocation(line: 975, column: 3, scope: !2787, inlinedAt: !2832)
!2836 = !DILocation(line: 976, column: 13, scope: !2787, inlinedAt: !2832)
!2837 = !DILocation(line: 975, column: 26, scope: !2787, inlinedAt: !2832)
!2838 = !DILocation(line: 144, column: 43, scope: !1251, inlinedAt: !2839)
!2839 = distinct !DILocation(line: 977, column: 3, scope: !2787, inlinedAt: !2832)
!2840 = !DILocation(line: 144, column: 51, scope: !1251, inlinedAt: !2839)
!2841 = !DILocation(line: 144, column: 58, scope: !1251, inlinedAt: !2839)
!2842 = !DILocation(line: 146, column: 17, scope: !1251, inlinedAt: !2839)
!2843 = !DILocation(line: 148, column: 62, scope: !1269, inlinedAt: !2839)
!2844 = !DILocation(line: 148, column: 57, scope: !1269, inlinedAt: !2839)
!2845 = !DILocation(line: 147, column: 17, scope: !1251, inlinedAt: !2839)
!2846 = !DILocation(line: 149, column: 18, scope: !1251, inlinedAt: !2839)
!2847 = !DILocation(line: 149, column: 15, scope: !1251, inlinedAt: !2839)
!2848 = !DILocation(line: 149, column: 7, scope: !1251, inlinedAt: !2839)
!2849 = !DILocation(line: 150, column: 12, scope: !1251, inlinedAt: !2839)
!2850 = !DILocation(line: 150, column: 15, scope: !1251, inlinedAt: !2839)
!2851 = !DILocation(line: 150, column: 25, scope: !1251, inlinedAt: !2839)
!2852 = !DILocation(line: 150, column: 7, scope: !1251, inlinedAt: !2839)
!2853 = !DILocation(line: 151, column: 18, scope: !1251, inlinedAt: !2839)
!2854 = !DILocation(line: 151, column: 23, scope: !1251, inlinedAt: !2839)
!2855 = !DILocation(line: 151, column: 6, scope: !1251, inlinedAt: !2839)
!2856 = !DILocation(line: 978, column: 10, scope: !2787, inlinedAt: !2832)
!2857 = !DILocation(line: 979, column: 1, scope: !2787, inlinedAt: !2832)
!2858 = !DILocation(line: 984, column: 3, scope: !2823)
!2859 = distinct !DISubprogram(name: "quotearg_colon", scope: !156, file: !156, line: 988, type: !2635, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !2860)
!2860 = !{!2861}
!2861 = !DILocalVariable(name: "arg", arg: 1, scope: !2859, file: !156, line: 988, type: !17)
!2862 = !DILocation(line: 988, column: 29, scope: !2859)
!2863 = !DILocation(line: 982, column: 28, scope: !2823, inlinedAt: !2864)
!2864 = distinct !DILocation(line: 990, column: 10, scope: !2859)
!2865 = !DILocation(line: 982, column: 38, scope: !2823, inlinedAt: !2864)
!2866 = !DILocation(line: 973, column: 32, scope: !2787, inlinedAt: !2867)
!2867 = distinct !DILocation(line: 984, column: 10, scope: !2823, inlinedAt: !2864)
!2868 = !DILocation(line: 973, column: 44, scope: !2787, inlinedAt: !2867)
!2869 = !DILocation(line: 973, column: 58, scope: !2787, inlinedAt: !2867)
!2870 = !DILocation(line: 975, column: 3, scope: !2787, inlinedAt: !2867)
!2871 = !DILocation(line: 976, column: 13, scope: !2787, inlinedAt: !2867)
!2872 = !DILocation(line: 975, column: 26, scope: !2787, inlinedAt: !2867)
!2873 = !DILocation(line: 144, column: 43, scope: !1251, inlinedAt: !2874)
!2874 = distinct !DILocation(line: 977, column: 3, scope: !2787, inlinedAt: !2867)
!2875 = !DILocation(line: 144, column: 51, scope: !1251, inlinedAt: !2874)
!2876 = !DILocation(line: 144, column: 58, scope: !1251, inlinedAt: !2874)
!2877 = !DILocation(line: 146, column: 17, scope: !1251, inlinedAt: !2874)
!2878 = !DILocation(line: 148, column: 57, scope: !1269, inlinedAt: !2874)
!2879 = !DILocation(line: 147, column: 17, scope: !1251, inlinedAt: !2874)
!2880 = !DILocation(line: 149, column: 7, scope: !1251, inlinedAt: !2874)
!2881 = !DILocation(line: 150, column: 12, scope: !1251, inlinedAt: !2874)
!2882 = !DILocation(line: 151, column: 6, scope: !1251, inlinedAt: !2874)
!2883 = !DILocation(line: 978, column: 10, scope: !2787, inlinedAt: !2867)
!2884 = !DILocation(line: 979, column: 1, scope: !2787, inlinedAt: !2867)
!2885 = !DILocation(line: 990, column: 3, scope: !2859)
!2886 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !156, file: !156, line: 994, type: !2646, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !2887)
!2887 = !{!2888, !2889}
!2888 = !DILocalVariable(name: "arg", arg: 1, scope: !2886, file: !156, line: 994, type: !17)
!2889 = !DILocalVariable(name: "argsize", arg: 2, scope: !2886, file: !156, line: 994, type: !9)
!2890 = !DILocation(line: 994, column: 33, scope: !2886)
!2891 = !DILocation(line: 994, column: 45, scope: !2886)
!2892 = !DILocation(line: 973, column: 32, scope: !2787, inlinedAt: !2893)
!2893 = distinct !DILocation(line: 996, column: 10, scope: !2886)
!2894 = !DILocation(line: 973, column: 44, scope: !2787, inlinedAt: !2893)
!2895 = !DILocation(line: 973, column: 58, scope: !2787, inlinedAt: !2893)
!2896 = !DILocation(line: 975, column: 3, scope: !2787, inlinedAt: !2893)
!2897 = !DILocation(line: 976, column: 13, scope: !2787, inlinedAt: !2893)
!2898 = !DILocation(line: 975, column: 26, scope: !2787, inlinedAt: !2893)
!2899 = !DILocation(line: 144, column: 43, scope: !1251, inlinedAt: !2900)
!2900 = distinct !DILocation(line: 977, column: 3, scope: !2787, inlinedAt: !2893)
!2901 = !DILocation(line: 144, column: 51, scope: !1251, inlinedAt: !2900)
!2902 = !DILocation(line: 144, column: 58, scope: !1251, inlinedAt: !2900)
!2903 = !DILocation(line: 146, column: 17, scope: !1251, inlinedAt: !2900)
!2904 = !DILocation(line: 148, column: 57, scope: !1269, inlinedAt: !2900)
!2905 = !DILocation(line: 147, column: 17, scope: !1251, inlinedAt: !2900)
!2906 = !DILocation(line: 149, column: 7, scope: !1251, inlinedAt: !2900)
!2907 = !DILocation(line: 150, column: 12, scope: !1251, inlinedAt: !2900)
!2908 = !DILocation(line: 151, column: 6, scope: !1251, inlinedAt: !2900)
!2909 = !DILocation(line: 978, column: 10, scope: !2787, inlinedAt: !2893)
!2910 = !DILocation(line: 979, column: 1, scope: !2787, inlinedAt: !2893)
!2911 = !DILocation(line: 996, column: 3, scope: !2886)
!2912 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !156, file: !156, line: 1000, type: !2660, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !2913)
!2913 = !{!2914, !2915, !2916, !2917}
!2914 = !DILocalVariable(name: "n", arg: 1, scope: !2912, file: !156, line: 1000, type: !47)
!2915 = !DILocalVariable(name: "s", arg: 2, scope: !2912, file: !156, line: 1000, type: !117)
!2916 = !DILocalVariable(name: "arg", arg: 3, scope: !2912, file: !156, line: 1000, type: !17)
!2917 = !DILocalVariable(name: "options", scope: !2912, file: !156, line: 1002, type: !163)
!2918 = !DILocation(line: 187, column: 26, scope: !2668, inlinedAt: !2919)
!2919 = distinct !DILocation(line: 1003, column: 13, scope: !2912)
!2920 = !DILocation(line: 1000, column: 29, scope: !2912)
!2921 = !DILocation(line: 1000, column: 51, scope: !2912)
!2922 = !DILocation(line: 1000, column: 66, scope: !2912)
!2923 = !DILocation(line: 1002, column: 3, scope: !2912)
!2924 = !DILocation(line: 185, column: 48, scope: !2668, inlinedAt: !2919)
!2925 = !DILocation(line: 187, column: 3, scope: !2668, inlinedAt: !2919)
!2926 = !DILocation(line: 188, column: 13, scope: !2685, inlinedAt: !2919)
!2927 = !DILocation(line: 188, column: 7, scope: !2668, inlinedAt: !2919)
!2928 = !DILocation(line: 189, column: 5, scope: !2685, inlinedAt: !2919)
!2929 = !{!2930}
!2930 = distinct !{!2930, !2931, !"quoting_options_from_style: argument 0"}
!2931 = distinct !{!2931, !"quoting_options_from_style"}
!2932 = !DILocation(line: 191, column: 10, scope: !2668, inlinedAt: !2919)
!2933 = !DILocation(line: 192, column: 1, scope: !2668, inlinedAt: !2919)
!2934 = !DILocation(line: 1003, column: 13, scope: !2912)
!2935 = !DILocation(line: 1002, column: 26, scope: !2912)
!2936 = !DILocation(line: 144, column: 43, scope: !1251, inlinedAt: !2937)
!2937 = distinct !DILocation(line: 1004, column: 3, scope: !2912)
!2938 = !DILocation(line: 144, column: 51, scope: !1251, inlinedAt: !2937)
!2939 = !DILocation(line: 144, column: 58, scope: !1251, inlinedAt: !2937)
!2940 = !DILocation(line: 146, column: 17, scope: !1251, inlinedAt: !2937)
!2941 = !DILocation(line: 148, column: 57, scope: !1269, inlinedAt: !2937)
!2942 = !DILocation(line: 147, column: 17, scope: !1251, inlinedAt: !2937)
!2943 = !DILocation(line: 149, column: 7, scope: !1251, inlinedAt: !2937)
!2944 = !DILocation(line: 150, column: 12, scope: !1251, inlinedAt: !2937)
!2945 = !DILocation(line: 151, column: 6, scope: !1251, inlinedAt: !2937)
!2946 = !DILocation(line: 1005, column: 10, scope: !2912)
!2947 = !DILocation(line: 1006, column: 1, scope: !2912)
!2948 = !DILocation(line: 1005, column: 3, scope: !2912)
!2949 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !156, file: !156, line: 1009, type: !2950, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !2952)
!2950 = !DISubroutineType(types: !2951)
!2951 = !{!6, !47, !17, !17, !17}
!2952 = !{!2953, !2954, !2955, !2956}
!2953 = !DILocalVariable(name: "n", arg: 1, scope: !2949, file: !156, line: 1009, type: !47)
!2954 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2949, file: !156, line: 1009, type: !17)
!2955 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2949, file: !156, line: 1010, type: !17)
!2956 = !DILocalVariable(name: "arg", arg: 4, scope: !2949, file: !156, line: 1010, type: !17)
!2957 = !DILocation(line: 1009, column: 24, scope: !2949)
!2958 = !DILocation(line: 1009, column: 39, scope: !2949)
!2959 = !DILocation(line: 1010, column: 32, scope: !2949)
!2960 = !DILocation(line: 1010, column: 57, scope: !2949)
!2961 = !DILocalVariable(name: "n", arg: 1, scope: !2962, file: !156, line: 1017, type: !47)
!2962 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !156, file: !156, line: 1017, type: !2963, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !2965)
!2963 = !DISubroutineType(types: !2964)
!2964 = !{!6, !47, !17, !17, !17, !9}
!2965 = !{!2961, !2966, !2967, !2968, !2969, !2970}
!2966 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2962, file: !156, line: 1017, type: !17)
!2967 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2962, file: !156, line: 1018, type: !17)
!2968 = !DILocalVariable(name: "arg", arg: 4, scope: !2962, file: !156, line: 1019, type: !17)
!2969 = !DILocalVariable(name: "argsize", arg: 5, scope: !2962, file: !156, line: 1019, type: !9)
!2970 = !DILocalVariable(name: "o", scope: !2962, file: !156, line: 1021, type: !163)
!2971 = !DILocation(line: 1017, column: 28, scope: !2962, inlinedAt: !2972)
!2972 = distinct !DILocation(line: 1012, column: 10, scope: !2949)
!2973 = !DILocation(line: 1017, column: 43, scope: !2962, inlinedAt: !2972)
!2974 = !DILocation(line: 1018, column: 36, scope: !2962, inlinedAt: !2972)
!2975 = !DILocation(line: 1019, column: 36, scope: !2962, inlinedAt: !2972)
!2976 = !DILocation(line: 1019, column: 48, scope: !2962, inlinedAt: !2972)
!2977 = !DILocation(line: 1021, column: 3, scope: !2962, inlinedAt: !2972)
!2978 = !DILocation(line: 1021, column: 30, scope: !2962, inlinedAt: !2972)
!2979 = !DILocation(line: 1021, column: 26, scope: !2962, inlinedAt: !2972)
!2980 = !DILocation(line: 171, column: 45, scope: !1301, inlinedAt: !2981)
!2981 = distinct !DILocation(line: 1022, column: 3, scope: !2962, inlinedAt: !2972)
!2982 = !DILocation(line: 172, column: 33, scope: !1301, inlinedAt: !2981)
!2983 = !DILocation(line: 172, column: 57, scope: !1301, inlinedAt: !2981)
!2984 = !DILocation(line: 176, column: 6, scope: !1301, inlinedAt: !2981)
!2985 = !DILocation(line: 176, column: 12, scope: !1301, inlinedAt: !2981)
!2986 = !DILocation(line: 177, column: 8, scope: !1317, inlinedAt: !2981)
!2987 = !DILocation(line: 177, column: 23, scope: !1319, inlinedAt: !2981)
!2988 = !DILocation(line: 177, column: 19, scope: !1317, inlinedAt: !2981)
!2989 = !DILocation(line: 178, column: 5, scope: !1317, inlinedAt: !2981)
!2990 = !DILocation(line: 179, column: 6, scope: !1301, inlinedAt: !2981)
!2991 = !DILocation(line: 179, column: 17, scope: !1301, inlinedAt: !2981)
!2992 = !DILocation(line: 180, column: 6, scope: !1301, inlinedAt: !2981)
!2993 = !DILocation(line: 180, column: 18, scope: !1301, inlinedAt: !2981)
!2994 = !DILocation(line: 1023, column: 10, scope: !2962, inlinedAt: !2972)
!2995 = !DILocation(line: 1024, column: 1, scope: !2962, inlinedAt: !2972)
!2996 = !DILocation(line: 1012, column: 3, scope: !2949)
!2997 = !DILocation(line: 1017, column: 28, scope: !2962)
!2998 = !DILocation(line: 1017, column: 43, scope: !2962)
!2999 = !DILocation(line: 1018, column: 36, scope: !2962)
!3000 = !DILocation(line: 1019, column: 36, scope: !2962)
!3001 = !DILocation(line: 1019, column: 48, scope: !2962)
!3002 = !DILocation(line: 1021, column: 3, scope: !2962)
!3003 = !DILocation(line: 1021, column: 30, scope: !2962)
!3004 = !DILocation(line: 1021, column: 26, scope: !2962)
!3005 = !DILocation(line: 171, column: 45, scope: !1301, inlinedAt: !3006)
!3006 = distinct !DILocation(line: 1022, column: 3, scope: !2962)
!3007 = !DILocation(line: 172, column: 33, scope: !1301, inlinedAt: !3006)
!3008 = !DILocation(line: 172, column: 57, scope: !1301, inlinedAt: !3006)
!3009 = !DILocation(line: 176, column: 6, scope: !1301, inlinedAt: !3006)
!3010 = !DILocation(line: 176, column: 12, scope: !1301, inlinedAt: !3006)
!3011 = !DILocation(line: 177, column: 8, scope: !1317, inlinedAt: !3006)
!3012 = !DILocation(line: 177, column: 23, scope: !1319, inlinedAt: !3006)
!3013 = !DILocation(line: 177, column: 19, scope: !1317, inlinedAt: !3006)
!3014 = !DILocation(line: 178, column: 5, scope: !1317, inlinedAt: !3006)
!3015 = !DILocation(line: 179, column: 6, scope: !1301, inlinedAt: !3006)
!3016 = !DILocation(line: 179, column: 17, scope: !1301, inlinedAt: !3006)
!3017 = !DILocation(line: 180, column: 6, scope: !1301, inlinedAt: !3006)
!3018 = !DILocation(line: 180, column: 18, scope: !1301, inlinedAt: !3006)
!3019 = !DILocation(line: 1023, column: 10, scope: !2962)
!3020 = !DILocation(line: 1024, column: 1, scope: !2962)
!3021 = !DILocation(line: 1023, column: 3, scope: !2962)
!3022 = distinct !DISubprogram(name: "quotearg_custom", scope: !156, file: !156, line: 1027, type: !3023, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !3025)
!3023 = !DISubroutineType(types: !3024)
!3024 = !{!6, !17, !17, !17}
!3025 = !{!3026, !3027, !3028}
!3026 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3022, file: !156, line: 1027, type: !17)
!3027 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3022, file: !156, line: 1027, type: !17)
!3028 = !DILocalVariable(name: "arg", arg: 3, scope: !3022, file: !156, line: 1028, type: !17)
!3029 = !DILocation(line: 1027, column: 30, scope: !3022)
!3030 = !DILocation(line: 1027, column: 54, scope: !3022)
!3031 = !DILocation(line: 1028, column: 30, scope: !3022)
!3032 = !DILocation(line: 1009, column: 24, scope: !2949, inlinedAt: !3033)
!3033 = distinct !DILocation(line: 1030, column: 10, scope: !3022)
!3034 = !DILocation(line: 1009, column: 39, scope: !2949, inlinedAt: !3033)
!3035 = !DILocation(line: 1010, column: 32, scope: !2949, inlinedAt: !3033)
!3036 = !DILocation(line: 1010, column: 57, scope: !2949, inlinedAt: !3033)
!3037 = !DILocation(line: 1017, column: 28, scope: !2962, inlinedAt: !3038)
!3038 = distinct !DILocation(line: 1012, column: 10, scope: !2949, inlinedAt: !3033)
!3039 = !DILocation(line: 1017, column: 43, scope: !2962, inlinedAt: !3038)
!3040 = !DILocation(line: 1018, column: 36, scope: !2962, inlinedAt: !3038)
!3041 = !DILocation(line: 1019, column: 36, scope: !2962, inlinedAt: !3038)
!3042 = !DILocation(line: 1019, column: 48, scope: !2962, inlinedAt: !3038)
!3043 = !DILocation(line: 1021, column: 3, scope: !2962, inlinedAt: !3038)
!3044 = !DILocation(line: 1021, column: 30, scope: !2962, inlinedAt: !3038)
!3045 = !DILocation(line: 1021, column: 26, scope: !2962, inlinedAt: !3038)
!3046 = !DILocation(line: 171, column: 45, scope: !1301, inlinedAt: !3047)
!3047 = distinct !DILocation(line: 1022, column: 3, scope: !2962, inlinedAt: !3038)
!3048 = !DILocation(line: 172, column: 33, scope: !1301, inlinedAt: !3047)
!3049 = !DILocation(line: 172, column: 57, scope: !1301, inlinedAt: !3047)
!3050 = !DILocation(line: 176, column: 6, scope: !1301, inlinedAt: !3047)
!3051 = !DILocation(line: 176, column: 12, scope: !1301, inlinedAt: !3047)
!3052 = !DILocation(line: 177, column: 8, scope: !1317, inlinedAt: !3047)
!3053 = !DILocation(line: 177, column: 23, scope: !1319, inlinedAt: !3047)
!3054 = !DILocation(line: 177, column: 19, scope: !1317, inlinedAt: !3047)
!3055 = !DILocation(line: 178, column: 5, scope: !1317, inlinedAt: !3047)
!3056 = !DILocation(line: 179, column: 6, scope: !1301, inlinedAt: !3047)
!3057 = !DILocation(line: 179, column: 17, scope: !1301, inlinedAt: !3047)
!3058 = !DILocation(line: 180, column: 6, scope: !1301, inlinedAt: !3047)
!3059 = !DILocation(line: 180, column: 18, scope: !1301, inlinedAt: !3047)
!3060 = !DILocation(line: 1023, column: 10, scope: !2962, inlinedAt: !3038)
!3061 = !DILocation(line: 1024, column: 1, scope: !2962, inlinedAt: !3038)
!3062 = !DILocation(line: 1030, column: 3, scope: !3022)
!3063 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !156, file: !156, line: 1034, type: !3064, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !3066)
!3064 = !DISubroutineType(types: !3065)
!3065 = !{!6, !17, !17, !17, !9}
!3066 = !{!3067, !3068, !3069, !3070}
!3067 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3063, file: !156, line: 1034, type: !17)
!3068 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3063, file: !156, line: 1034, type: !17)
!3069 = !DILocalVariable(name: "arg", arg: 3, scope: !3063, file: !156, line: 1035, type: !17)
!3070 = !DILocalVariable(name: "argsize", arg: 4, scope: !3063, file: !156, line: 1035, type: !9)
!3071 = !DILocation(line: 1034, column: 34, scope: !3063)
!3072 = !DILocation(line: 1034, column: 58, scope: !3063)
!3073 = !DILocation(line: 1035, column: 34, scope: !3063)
!3074 = !DILocation(line: 1035, column: 46, scope: !3063)
!3075 = !DILocation(line: 1017, column: 28, scope: !2962, inlinedAt: !3076)
!3076 = distinct !DILocation(line: 1037, column: 10, scope: !3063)
!3077 = !DILocation(line: 1017, column: 43, scope: !2962, inlinedAt: !3076)
!3078 = !DILocation(line: 1018, column: 36, scope: !2962, inlinedAt: !3076)
!3079 = !DILocation(line: 1019, column: 36, scope: !2962, inlinedAt: !3076)
!3080 = !DILocation(line: 1019, column: 48, scope: !2962, inlinedAt: !3076)
!3081 = !DILocation(line: 1021, column: 3, scope: !2962, inlinedAt: !3076)
!3082 = !DILocation(line: 1021, column: 30, scope: !2962, inlinedAt: !3076)
!3083 = !DILocation(line: 1021, column: 26, scope: !2962, inlinedAt: !3076)
!3084 = !DILocation(line: 171, column: 45, scope: !1301, inlinedAt: !3085)
!3085 = distinct !DILocation(line: 1022, column: 3, scope: !2962, inlinedAt: !3076)
!3086 = !DILocation(line: 172, column: 33, scope: !1301, inlinedAt: !3085)
!3087 = !DILocation(line: 172, column: 57, scope: !1301, inlinedAt: !3085)
!3088 = !DILocation(line: 176, column: 6, scope: !1301, inlinedAt: !3085)
!3089 = !DILocation(line: 176, column: 12, scope: !1301, inlinedAt: !3085)
!3090 = !DILocation(line: 177, column: 8, scope: !1317, inlinedAt: !3085)
!3091 = !DILocation(line: 177, column: 23, scope: !1319, inlinedAt: !3085)
!3092 = !DILocation(line: 177, column: 19, scope: !1317, inlinedAt: !3085)
!3093 = !DILocation(line: 178, column: 5, scope: !1317, inlinedAt: !3085)
!3094 = !DILocation(line: 179, column: 6, scope: !1301, inlinedAt: !3085)
!3095 = !DILocation(line: 179, column: 17, scope: !1301, inlinedAt: !3085)
!3096 = !DILocation(line: 180, column: 6, scope: !1301, inlinedAt: !3085)
!3097 = !DILocation(line: 180, column: 18, scope: !1301, inlinedAt: !3085)
!3098 = !DILocation(line: 1023, column: 10, scope: !2962, inlinedAt: !3076)
!3099 = !DILocation(line: 1024, column: 1, scope: !2962, inlinedAt: !3076)
!3100 = !DILocation(line: 1037, column: 3, scope: !3063)
!3101 = distinct !DISubprogram(name: "quote_n_mem", scope: !156, file: !156, line: 1052, type: !3102, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !3104)
!3102 = !DISubroutineType(types: !3103)
!3103 = !{!17, !47, !17, !9}
!3104 = !{!3105, !3106, !3107}
!3105 = !DILocalVariable(name: "n", arg: 1, scope: !3101, file: !156, line: 1052, type: !47)
!3106 = !DILocalVariable(name: "arg", arg: 2, scope: !3101, file: !156, line: 1052, type: !17)
!3107 = !DILocalVariable(name: "argsize", arg: 3, scope: !3101, file: !156, line: 1052, type: !9)
!3108 = !DILocation(line: 1052, column: 18, scope: !3101)
!3109 = !DILocation(line: 1052, column: 33, scope: !3101)
!3110 = !DILocation(line: 1052, column: 45, scope: !3101)
!3111 = !DILocation(line: 1054, column: 10, scope: !3101)
!3112 = !DILocation(line: 1054, column: 3, scope: !3101)
!3113 = distinct !DISubprogram(name: "quote_mem", scope: !156, file: !156, line: 1058, type: !3114, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !3116)
!3114 = !DISubroutineType(types: !3115)
!3115 = !{!17, !17, !9}
!3116 = !{!3117, !3118}
!3117 = !DILocalVariable(name: "arg", arg: 1, scope: !3113, file: !156, line: 1058, type: !17)
!3118 = !DILocalVariable(name: "argsize", arg: 2, scope: !3113, file: !156, line: 1058, type: !9)
!3119 = !DILocation(line: 1058, column: 24, scope: !3113)
!3120 = !DILocation(line: 1058, column: 36, scope: !3113)
!3121 = !DILocation(line: 1052, column: 18, scope: !3101, inlinedAt: !3122)
!3122 = distinct !DILocation(line: 1060, column: 10, scope: !3113)
!3123 = !DILocation(line: 1052, column: 33, scope: !3101, inlinedAt: !3122)
!3124 = !DILocation(line: 1052, column: 45, scope: !3101, inlinedAt: !3122)
!3125 = !DILocation(line: 1054, column: 10, scope: !3101, inlinedAt: !3122)
!3126 = !DILocation(line: 1060, column: 3, scope: !3113)
!3127 = distinct !DISubprogram(name: "quote_n", scope: !156, file: !156, line: 1064, type: !3128, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !3130)
!3128 = !DISubroutineType(types: !3129)
!3129 = !{!17, !47, !17}
!3130 = !{!3131, !3132}
!3131 = !DILocalVariable(name: "n", arg: 1, scope: !3127, file: !156, line: 1064, type: !47)
!3132 = !DILocalVariable(name: "arg", arg: 2, scope: !3127, file: !156, line: 1064, type: !17)
!3133 = !DILocation(line: 1064, column: 14, scope: !3127)
!3134 = !DILocation(line: 1064, column: 29, scope: !3127)
!3135 = !DILocation(line: 1052, column: 18, scope: !3101, inlinedAt: !3136)
!3136 = distinct !DILocation(line: 1066, column: 10, scope: !3127)
!3137 = !DILocation(line: 1052, column: 33, scope: !3101, inlinedAt: !3136)
!3138 = !DILocation(line: 1052, column: 45, scope: !3101, inlinedAt: !3136)
!3139 = !DILocation(line: 1054, column: 10, scope: !3101, inlinedAt: !3136)
!3140 = !DILocation(line: 1066, column: 3, scope: !3127)
!3141 = distinct !DISubprogram(name: "quote", scope: !156, file: !156, line: 1070, type: !3142, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !3144)
!3142 = !DISubroutineType(types: !3143)
!3143 = !{!17, !17}
!3144 = !{!3145}
!3145 = !DILocalVariable(name: "arg", arg: 1, scope: !3141, file: !156, line: 1070, type: !17)
!3146 = !DILocation(line: 1070, column: 20, scope: !3141)
!3147 = !DILocation(line: 1064, column: 14, scope: !3127, inlinedAt: !3148)
!3148 = distinct !DILocation(line: 1072, column: 10, scope: !3141)
!3149 = !DILocation(line: 1064, column: 29, scope: !3127, inlinedAt: !3148)
!3150 = !DILocation(line: 1052, column: 18, scope: !3101, inlinedAt: !3151)
!3151 = distinct !DILocation(line: 1066, column: 10, scope: !3127, inlinedAt: !3148)
!3152 = !DILocation(line: 1052, column: 33, scope: !3101, inlinedAt: !3151)
!3153 = !DILocation(line: 1052, column: 45, scope: !3101, inlinedAt: !3151)
!3154 = !DILocation(line: 1054, column: 10, scope: !3101, inlinedAt: !3151)
!3155 = !DILocation(line: 1072, column: 3, scope: !3141)
!3156 = distinct !DISubprogram(name: "version_etc_arn", scope: !562, file: !562, line: 62, type: !3157, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !558, variables: !3214)
!3157 = !DISubroutineType(types: !3158)
!3158 = !{null, !3159, !17, !17, !17, !3213, !9}
!3159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3160, size: 64)
!3160 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3161, line: 49, baseType: !3162)
!3161 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3163, line: 241, size: 1728, elements: !3164)
!3163 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3164 = !{!3165, !3166, !3167, !3168, !3169, !3170, !3171, !3172, !3173, !3174, !3175, !3176, !3177, !3185, !3186, !3187, !3188, !3191, !3192, !3194, !3198, !3201, !3203, !3204, !3205, !3206, !3207, !3208, !3209}
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3162, file: !3163, line: 242, baseType: !47, size: 32)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3162, file: !3163, line: 247, baseType: !6, size: 64, offset: 64)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3162, file: !3163, line: 248, baseType: !6, size: 64, offset: 128)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3162, file: !3163, line: 249, baseType: !6, size: 64, offset: 192)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3162, file: !3163, line: 250, baseType: !6, size: 64, offset: 256)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3162, file: !3163, line: 251, baseType: !6, size: 64, offset: 320)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3162, file: !3163, line: 252, baseType: !6, size: 64, offset: 384)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3162, file: !3163, line: 253, baseType: !6, size: 64, offset: 448)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3162, file: !3163, line: 254, baseType: !6, size: 64, offset: 512)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3162, file: !3163, line: 256, baseType: !6, size: 64, offset: 576)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3162, file: !3163, line: 257, baseType: !6, size: 64, offset: 640)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3162, file: !3163, line: 258, baseType: !6, size: 64, offset: 704)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3162, file: !3163, line: 260, baseType: !3178, size: 64, offset: 768)
!3178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3179, size: 64)
!3179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3163, line: 156, size: 192, elements: !3180)
!3180 = !{!3181, !3182, !3184}
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3179, file: !3163, line: 157, baseType: !3178, size: 64)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3179, file: !3163, line: 158, baseType: !3183, size: 64, offset: 64)
!3183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3162, size: 64)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3179, file: !3163, line: 162, baseType: !47, size: 32, offset: 128)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3162, file: !3163, line: 262, baseType: !3183, size: 64, offset: 832)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3162, file: !3163, line: 264, baseType: !47, size: 32, offset: 896)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3162, file: !3163, line: 268, baseType: !47, size: 32, offset: 928)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3162, file: !3163, line: 270, baseType: !3189, size: 64, offset: 960)
!3189 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !74, line: 140, baseType: !3190)
!3190 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3162, file: !3163, line: 274, baseType: !152, size: 16, offset: 1024)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3162, file: !3163, line: 275, baseType: !3193, size: 8, offset: 1040)
!3193 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3162, file: !3163, line: 276, baseType: !3195, size: 8, offset: 1048)
!3195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 8, elements: !3196)
!3196 = !{!3197}
!3197 = !DISubrange(count: 1)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3162, file: !3163, line: 280, baseType: !3199, size: 64, offset: 1088)
!3199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3200, size: 64)
!3200 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !3163, line: 150, baseType: null)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3162, file: !3163, line: 289, baseType: !3202, size: 64, offset: 1152)
!3202 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !74, line: 141, baseType: !3190)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3162, file: !3163, line: 297, baseType: !8, size: 64, offset: 1216)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3162, file: !3163, line: 298, baseType: !8, size: 64, offset: 1280)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3162, file: !3163, line: 299, baseType: !8, size: 64, offset: 1344)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3162, file: !3163, line: 300, baseType: !8, size: 64, offset: 1408)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3162, file: !3163, line: 302, baseType: !9, size: 64, offset: 1472)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3162, file: !3163, line: 303, baseType: !47, size: 32, offset: 1536)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3162, file: !3163, line: 305, baseType: !3210, size: 160, offset: 1568)
!3210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 160, elements: !3211)
!3211 = !{!3212}
!3212 = !DISubrange(count: 20)
!3213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!3214 = !{!3215, !3216, !3217, !3218, !3219, !3220}
!3215 = !DILocalVariable(name: "stream", arg: 1, scope: !3156, file: !562, line: 62, type: !3159)
!3216 = !DILocalVariable(name: "command_name", arg: 2, scope: !3156, file: !562, line: 63, type: !17)
!3217 = !DILocalVariable(name: "package", arg: 3, scope: !3156, file: !562, line: 63, type: !17)
!3218 = !DILocalVariable(name: "version", arg: 4, scope: !3156, file: !562, line: 64, type: !17)
!3219 = !DILocalVariable(name: "authors", arg: 5, scope: !3156, file: !562, line: 65, type: !3213)
!3220 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3156, file: !562, line: 65, type: !9)
!3221 = !DILocation(line: 62, column: 24, scope: !3156)
!3222 = !DILocation(line: 63, column: 30, scope: !3156)
!3223 = !DILocation(line: 63, column: 56, scope: !3156)
!3224 = !DILocation(line: 64, column: 30, scope: !3156)
!3225 = !DILocation(line: 65, column: 39, scope: !3156)
!3226 = !DILocation(line: 65, column: 55, scope: !3156)
!3227 = !DILocation(line: 67, column: 7, scope: !3228)
!3228 = distinct !DILexicalBlock(scope: !3156, file: !562, line: 67, column: 7)
!3229 = !DILocation(line: 67, column: 7, scope: !3156)
!3230 = !DILocation(line: 68, column: 5, scope: !3228)
!3231 = !DILocation(line: 70, column: 5, scope: !3228)
!3232 = !DILocation(line: 84, column: 3, scope: !3156)
!3233 = !DILocation(line: 84, column: 3, scope: !3234)
!3234 = !DILexicalBlockFile(scope: !3156, file: !562, discriminator: 1)
!3235 = !DILocation(line: 86, column: 3, scope: !3156)
!3236 = !DILocation(line: 86, column: 3, scope: !3234)
!3237 = !DILocation(line: 95, column: 3, scope: !3156)
!3238 = !DILocation(line: 99, column: 7, scope: !3239)
!3239 = distinct !DILexicalBlock(scope: !3156, file: !562, line: 96, column: 5)
!3240 = !DILocation(line: 102, column: 7, scope: !3239)
!3241 = !DILocation(line: 102, column: 7, scope: !3242)
!3242 = !DILexicalBlockFile(scope: !3239, file: !562, discriminator: 1)
!3243 = !DILocation(line: 103, column: 7, scope: !3239)
!3244 = !DILocation(line: 106, column: 7, scope: !3239)
!3245 = !DILocation(line: 106, column: 7, scope: !3242)
!3246 = !DILocation(line: 107, column: 7, scope: !3239)
!3247 = !DILocation(line: 110, column: 7, scope: !3239)
!3248 = !DILocation(line: 110, column: 7, scope: !3242)
!3249 = !DILocation(line: 112, column: 7, scope: !3239)
!3250 = !DILocation(line: 117, column: 7, scope: !3239)
!3251 = !DILocation(line: 117, column: 7, scope: !3242)
!3252 = !DILocation(line: 119, column: 7, scope: !3239)
!3253 = !DILocation(line: 124, column: 7, scope: !3239)
!3254 = !DILocation(line: 124, column: 7, scope: !3242)
!3255 = !DILocation(line: 126, column: 7, scope: !3239)
!3256 = !DILocation(line: 131, column: 7, scope: !3239)
!3257 = !DILocation(line: 131, column: 7, scope: !3242)
!3258 = !DILocation(line: 134, column: 7, scope: !3239)
!3259 = !DILocation(line: 139, column: 7, scope: !3239)
!3260 = !DILocation(line: 139, column: 7, scope: !3242)
!3261 = !DILocation(line: 142, column: 7, scope: !3239)
!3262 = !DILocation(line: 147, column: 7, scope: !3239)
!3263 = !DILocation(line: 147, column: 7, scope: !3242)
!3264 = !DILocation(line: 151, column: 7, scope: !3239)
!3265 = !DILocation(line: 156, column: 7, scope: !3239)
!3266 = !DILocation(line: 156, column: 7, scope: !3242)
!3267 = !DILocation(line: 160, column: 7, scope: !3239)
!3268 = !DILocation(line: 167, column: 7, scope: !3239)
!3269 = !DILocation(line: 167, column: 7, scope: !3242)
!3270 = !DILocation(line: 171, column: 7, scope: !3239)
!3271 = !DILocation(line: 173, column: 1, scope: !3156)
!3272 = distinct !DISubprogram(name: "version_etc_ar", scope: !562, file: !562, line: 180, type: !3273, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !558, variables: !3275)
!3273 = !DISubroutineType(types: !3274)
!3274 = !{null, !3159, !17, !17, !17, !3213}
!3275 = !{!3276, !3277, !3278, !3279, !3280, !3281}
!3276 = !DILocalVariable(name: "stream", arg: 1, scope: !3272, file: !562, line: 180, type: !3159)
!3277 = !DILocalVariable(name: "command_name", arg: 2, scope: !3272, file: !562, line: 181, type: !17)
!3278 = !DILocalVariable(name: "package", arg: 3, scope: !3272, file: !562, line: 181, type: !17)
!3279 = !DILocalVariable(name: "version", arg: 4, scope: !3272, file: !562, line: 182, type: !17)
!3280 = !DILocalVariable(name: "authors", arg: 5, scope: !3272, file: !562, line: 182, type: !3213)
!3281 = !DILocalVariable(name: "n_authors", scope: !3272, file: !562, line: 184, type: !9)
!3282 = !DILocation(line: 180, column: 23, scope: !3272)
!3283 = !DILocation(line: 181, column: 29, scope: !3272)
!3284 = !DILocation(line: 181, column: 55, scope: !3272)
!3285 = !DILocation(line: 182, column: 29, scope: !3272)
!3286 = !DILocation(line: 182, column: 59, scope: !3272)
!3287 = !DILocation(line: 184, column: 10, scope: !3272)
!3288 = !DILocation(line: 186, column: 8, scope: !3289)
!3289 = distinct !DILexicalBlock(scope: !3272, file: !562, line: 186, column: 3)
!3290 = !DILocation(line: 186, column: 23, scope: !3291)
!3291 = !DILexicalBlockFile(scope: !3292, file: !562, discriminator: 1)
!3292 = distinct !DILexicalBlock(scope: !3289, file: !562, line: 186, column: 3)
!3293 = !DILocation(line: 186, column: 3, scope: !3294)
!3294 = !DILexicalBlockFile(scope: !3289, file: !562, discriminator: 1)
!3295 = !DILocation(line: 186, column: 52, scope: !3296)
!3296 = !DILexicalBlockFile(scope: !3292, file: !562, discriminator: 3)
!3297 = distinct !{!3297, !3298, !3299}
!3298 = !DILocation(line: 186, column: 3, scope: !3289)
!3299 = !DILocation(line: 187, column: 5, scope: !3289)
!3300 = !DILocation(line: 188, column: 3, scope: !3272)
!3301 = !DILocation(line: 189, column: 1, scope: !3272)
!3302 = distinct !DISubprogram(name: "version_etc_va", scope: !562, file: !562, line: 196, type: !3303, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !558, variables: !3312)
!3303 = !DISubroutineType(types: !3304)
!3304 = !{null, !3159, !17, !17, !17, !3305}
!3305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3306, size: 64)
!3306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !559, line: 189, size: 192, elements: !3307)
!3307 = !{!3308, !3309, !3310, !3311}
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3306, file: !559, line: 189, baseType: !75, size: 32)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3306, file: !559, line: 189, baseType: !75, size: 32, offset: 32)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3306, file: !559, line: 189, baseType: !8, size: 64, offset: 64)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3306, file: !559, line: 189, baseType: !8, size: 64, offset: 128)
!3312 = !{!3313, !3314, !3315, !3316, !3317, !3318, !3319}
!3313 = !DILocalVariable(name: "stream", arg: 1, scope: !3302, file: !562, line: 196, type: !3159)
!3314 = !DILocalVariable(name: "command_name", arg: 2, scope: !3302, file: !562, line: 197, type: !17)
!3315 = !DILocalVariable(name: "package", arg: 3, scope: !3302, file: !562, line: 197, type: !17)
!3316 = !DILocalVariable(name: "version", arg: 4, scope: !3302, file: !562, line: 198, type: !17)
!3317 = !DILocalVariable(name: "authors", arg: 5, scope: !3302, file: !562, line: 198, type: !3305)
!3318 = !DILocalVariable(name: "n_authors", scope: !3302, file: !562, line: 200, type: !9)
!3319 = !DILocalVariable(name: "authtab", scope: !3302, file: !562, line: 201, type: !3320)
!3320 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 640, elements: !159)
!3321 = !DILocation(line: 196, column: 23, scope: !3302)
!3322 = !DILocation(line: 197, column: 29, scope: !3302)
!3323 = !DILocation(line: 197, column: 55, scope: !3302)
!3324 = !DILocation(line: 198, column: 29, scope: !3302)
!3325 = !DILocation(line: 198, column: 46, scope: !3302)
!3326 = !DILocation(line: 201, column: 3, scope: !3302)
!3327 = !DILocation(line: 201, column: 15, scope: !3302)
!3328 = !DILocation(line: 200, column: 10, scope: !3302)
!3329 = !DILocation(line: 205, column: 35, scope: !3330)
!3330 = !DILexicalBlockFile(scope: !3331, file: !562, discriminator: 1)
!3331 = distinct !DILexicalBlock(scope: !3332, file: !562, line: 203, column: 3)
!3332 = distinct !DILexicalBlock(scope: !3302, file: !562, line: 203, column: 3)
!3333 = !DILocation(line: 205, column: 35, scope: !3334)
!3334 = !DILexicalBlockFile(scope: !3331, file: !562, discriminator: 2)
!3335 = !DILocation(line: 205, column: 35, scope: !3336)
!3336 = !DILexicalBlockFile(scope: !3331, file: !562, discriminator: 3)
!3337 = !DILocation(line: 205, column: 35, scope: !3338)
!3338 = !DILexicalBlockFile(scope: !3331, file: !562, discriminator: 4)
!3339 = !DILocation(line: 205, column: 14, scope: !3338)
!3340 = !DILocation(line: 205, column: 33, scope: !3338)
!3341 = !DILocation(line: 205, column: 67, scope: !3338)
!3342 = !DILocation(line: 203, column: 3, scope: !3343)
!3343 = !DILexicalBlockFile(scope: !3332, file: !562, discriminator: 1)
!3344 = !DILocation(line: 208, column: 3, scope: !3302)
!3345 = !DILocation(line: 210, column: 1, scope: !3302)
!3346 = distinct !DISubprogram(name: "version_etc", scope: !562, file: !562, line: 227, type: !3347, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !558, variables: !3349)
!3347 = !DISubroutineType(types: !3348)
!3348 = !{null, !3159, !17, !17, !17, null}
!3349 = !{!3350, !3351, !3352, !3353, !3354}
!3350 = !DILocalVariable(name: "stream", arg: 1, scope: !3346, file: !562, line: 227, type: !3159)
!3351 = !DILocalVariable(name: "command_name", arg: 2, scope: !3346, file: !562, line: 228, type: !17)
!3352 = !DILocalVariable(name: "package", arg: 3, scope: !3346, file: !562, line: 228, type: !17)
!3353 = !DILocalVariable(name: "version", arg: 4, scope: !3346, file: !562, line: 229, type: !17)
!3354 = !DILocalVariable(name: "authors", scope: !3346, file: !562, line: 231, type: !3355)
!3355 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !3161, line: 80, baseType: !3356)
!3356 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3357, line: 50, baseType: !3358)
!3357 = !DIFile(filename: "/usr/bin/../lib/clang/4.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3358 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !559, line: 231, baseType: !3359)
!3359 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3306, size: 192, elements: !3196)
!3360 = !DILocation(line: 227, column: 20, scope: !3346)
!3361 = !DILocation(line: 228, column: 26, scope: !3346)
!3362 = !DILocation(line: 228, column: 52, scope: !3346)
!3363 = !DILocation(line: 229, column: 26, scope: !3346)
!3364 = !DILocation(line: 231, column: 3, scope: !3346)
!3365 = !DILocation(line: 231, column: 11, scope: !3346)
!3366 = !DILocation(line: 233, column: 3, scope: !3346)
!3367 = !DILocation(line: 234, column: 3, scope: !3346)
!3368 = !DILocation(line: 235, column: 3, scope: !3346)
!3369 = !DILocation(line: 236, column: 1, scope: !3346)
!3370 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !562, file: !562, line: 239, type: !1097, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !558, variables: !4)
!3371 = !DILocation(line: 245, column: 3, scope: !3370)
!3372 = !DILocation(line: 245, column: 3, scope: !3373)
!3373 = !DILexicalBlockFile(scope: !3370, file: !562, discriminator: 1)
!3374 = !DILocation(line: 251, column: 3, scope: !3370)
!3375 = !DILocation(line: 251, column: 3, scope: !3373)
!3376 = !DILocation(line: 256, column: 3, scope: !3370)
!3377 = !DILocation(line: 256, column: 3, scope: !3373)
!3378 = !DILocation(line: 258, column: 1, scope: !3370)
!3379 = distinct !DISubprogram(name: "xnmalloc", scope: !570, file: !570, line: 105, type: !3380, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !566, variables: !3382)
!3380 = !DISubroutineType(types: !3381)
!3381 = !{!8, !9, !9}
!3382 = !{!3383, !3384}
!3383 = !DILocalVariable(name: "n", arg: 1, scope: !3379, file: !570, line: 105, type: !9)
!3384 = !DILocalVariable(name: "s", arg: 2, scope: !3379, file: !570, line: 105, type: !9)
!3385 = !DILocation(line: 105, column: 18, scope: !3379)
!3386 = !DILocation(line: 105, column: 28, scope: !3379)
!3387 = !DILocation(line: 107, column: 7, scope: !3388)
!3388 = distinct !DILexicalBlock(scope: !3379, file: !570, line: 107, column: 7)
!3389 = !DILocation(line: 107, column: 7, scope: !3379)
!3390 = !DILocation(line: 108, column: 5, scope: !3388)
!3391 = !DILocation(line: 109, column: 21, scope: !3379)
!3392 = !DILocalVariable(name: "n", arg: 1, scope: !3393, file: !3394, line: 39, type: !9)
!3393 = distinct !DISubprogram(name: "xmalloc", scope: !3394, file: !3394, line: 39, type: !3395, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !566, variables: !3397)
!3394 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3395 = !DISubroutineType(types: !3396)
!3396 = !{!8, !9}
!3397 = !{!3392, !3398}
!3398 = !DILocalVariable(name: "p", scope: !3393, file: !3394, line: 41, type: !8)
!3399 = !DILocation(line: 39, column: 17, scope: !3393, inlinedAt: !3400)
!3400 = distinct !DILocation(line: 109, column: 10, scope: !3379)
!3401 = !DILocation(line: 41, column: 13, scope: !3393, inlinedAt: !3400)
!3402 = !DILocation(line: 41, column: 9, scope: !3393, inlinedAt: !3400)
!3403 = !DILocation(line: 42, column: 8, scope: !3404, inlinedAt: !3400)
!3404 = distinct !DILexicalBlock(scope: !3393, file: !3394, line: 42, column: 7)
!3405 = !DILocation(line: 42, column: 15, scope: !3406, inlinedAt: !3400)
!3406 = !DILexicalBlockFile(scope: !3404, file: !3394, discriminator: 1)
!3407 = !DILocation(line: 42, column: 10, scope: !3404, inlinedAt: !3400)
!3408 = !DILocation(line: 43, column: 5, scope: !3404, inlinedAt: !3400)
!3409 = !DILocation(line: 109, column: 3, scope: !3379)
!3410 = !DILocation(line: 39, column: 17, scope: !3393)
!3411 = !DILocation(line: 41, column: 13, scope: !3393)
!3412 = !DILocation(line: 41, column: 9, scope: !3393)
!3413 = !DILocation(line: 42, column: 8, scope: !3404)
!3414 = !DILocation(line: 42, column: 15, scope: !3406)
!3415 = !DILocation(line: 42, column: 10, scope: !3404)
!3416 = !DILocation(line: 43, column: 5, scope: !3404)
!3417 = !DILocation(line: 44, column: 3, scope: !3393)
!3418 = distinct !DISubprogram(name: "xnrealloc", scope: !570, file: !570, line: 118, type: !3419, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !566, variables: !3421)
!3419 = !DISubroutineType(types: !3420)
!3420 = !{!8, !8, !9, !9}
!3421 = !{!3422, !3423, !3424}
!3422 = !DILocalVariable(name: "p", arg: 1, scope: !3418, file: !570, line: 118, type: !8)
!3423 = !DILocalVariable(name: "n", arg: 2, scope: !3418, file: !570, line: 118, type: !9)
!3424 = !DILocalVariable(name: "s", arg: 3, scope: !3418, file: !570, line: 118, type: !9)
!3425 = !DILocation(line: 118, column: 18, scope: !3418)
!3426 = !DILocation(line: 118, column: 28, scope: !3418)
!3427 = !DILocation(line: 118, column: 38, scope: !3418)
!3428 = !DILocation(line: 120, column: 7, scope: !3429)
!3429 = distinct !DILexicalBlock(scope: !3418, file: !570, line: 120, column: 7)
!3430 = !DILocation(line: 120, column: 7, scope: !3418)
!3431 = !DILocation(line: 121, column: 5, scope: !3429)
!3432 = !DILocation(line: 122, column: 25, scope: !3418)
!3433 = !DILocalVariable(name: "p", arg: 1, scope: !3434, file: !3394, line: 51, type: !8)
!3434 = distinct !DISubprogram(name: "xrealloc", scope: !3394, file: !3394, line: 51, type: !3435, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !566, variables: !3437)
!3435 = !DISubroutineType(types: !3436)
!3436 = !{!8, !8, !9}
!3437 = !{!3433, !3438}
!3438 = !DILocalVariable(name: "n", arg: 2, scope: !3434, file: !3394, line: 51, type: !9)
!3439 = !DILocation(line: 51, column: 17, scope: !3434, inlinedAt: !3440)
!3440 = distinct !DILocation(line: 122, column: 10, scope: !3418)
!3441 = !DILocation(line: 51, column: 27, scope: !3434, inlinedAt: !3440)
!3442 = !DILocation(line: 53, column: 8, scope: !3443, inlinedAt: !3440)
!3443 = distinct !DILexicalBlock(scope: !3434, file: !3394, line: 53, column: 7)
!3444 = !DILocation(line: 53, column: 13, scope: !3445, inlinedAt: !3440)
!3445 = !DILexicalBlockFile(scope: !3443, file: !3394, discriminator: 1)
!3446 = !DILocation(line: 53, column: 10, scope: !3443, inlinedAt: !3440)
!3447 = !DILocation(line: 57, column: 7, scope: !3448, inlinedAt: !3440)
!3448 = distinct !DILexicalBlock(scope: !3443, file: !3394, line: 54, column: 5)
!3449 = !DILocation(line: 58, column: 7, scope: !3448, inlinedAt: !3440)
!3450 = !DILocation(line: 61, column: 7, scope: !3434, inlinedAt: !3440)
!3451 = !DILocation(line: 62, column: 8, scope: !3452, inlinedAt: !3440)
!3452 = distinct !DILexicalBlock(scope: !3434, file: !3394, line: 62, column: 7)
!3453 = !DILocation(line: 62, column: 13, scope: !3454, inlinedAt: !3440)
!3454 = !DILexicalBlockFile(scope: !3452, file: !3394, discriminator: 1)
!3455 = !DILocation(line: 62, column: 10, scope: !3452, inlinedAt: !3440)
!3456 = !DILocation(line: 63, column: 5, scope: !3452, inlinedAt: !3440)
!3457 = !DILocation(line: 122, column: 3, scope: !3418)
!3458 = !DILocation(line: 51, column: 17, scope: !3434)
!3459 = !DILocation(line: 51, column: 27, scope: !3434)
!3460 = !DILocation(line: 53, column: 8, scope: !3443)
!3461 = !DILocation(line: 53, column: 13, scope: !3445)
!3462 = !DILocation(line: 53, column: 10, scope: !3443)
!3463 = !DILocation(line: 57, column: 7, scope: !3448)
!3464 = !DILocation(line: 58, column: 7, scope: !3448)
!3465 = !DILocation(line: 61, column: 7, scope: !3434)
!3466 = !DILocation(line: 62, column: 8, scope: !3452)
!3467 = !DILocation(line: 62, column: 13, scope: !3454)
!3468 = !DILocation(line: 62, column: 10, scope: !3452)
!3469 = !DILocation(line: 63, column: 5, scope: !3452)
!3470 = !DILocation(line: 65, column: 1, scope: !3434)
!3471 = !DILocation(line: 180, column: 19, scope: !571)
!3472 = !DILocation(line: 180, column: 30, scope: !571)
!3473 = !DILocation(line: 180, column: 41, scope: !571)
!3474 = !DILocation(line: 182, column: 14, scope: !571)
!3475 = !DILocation(line: 182, column: 10, scope: !571)
!3476 = !DILocation(line: 184, column: 9, scope: !3477)
!3477 = distinct !DILexicalBlock(scope: !571, file: !570, line: 184, column: 7)
!3478 = !DILocation(line: 184, column: 7, scope: !571)
!3479 = !DILocation(line: 186, column: 13, scope: !3480)
!3480 = distinct !DILexicalBlock(scope: !3481, file: !570, line: 186, column: 11)
!3481 = distinct !DILexicalBlock(scope: !3477, file: !570, line: 185, column: 5)
!3482 = !DILocation(line: 186, column: 11, scope: !3481)
!3483 = !DILocation(line: 194, column: 30, scope: !3484)
!3484 = distinct !DILexicalBlock(scope: !3480, file: !570, line: 187, column: 9)
!3485 = !DILocation(line: 195, column: 16, scope: !3484)
!3486 = !DILocation(line: 195, column: 13, scope: !3484)
!3487 = !DILocation(line: 196, column: 9, scope: !3484)
!3488 = !DILocation(line: 204, column: 69, scope: !3489)
!3489 = distinct !DILexicalBlock(scope: !3490, file: !570, line: 204, column: 11)
!3490 = distinct !DILexicalBlock(scope: !3477, file: !570, line: 199, column: 5)
!3491 = !DILocation(line: 205, column: 11, scope: !3489)
!3492 = !DILocation(line: 204, column: 11, scope: !3490)
!3493 = !DILocation(line: 206, column: 9, scope: !3489)
!3494 = !DILocation(line: 210, column: 7, scope: !571)
!3495 = !DILocation(line: 211, column: 25, scope: !571)
!3496 = !DILocation(line: 51, column: 17, scope: !3434, inlinedAt: !3497)
!3497 = distinct !DILocation(line: 211, column: 10, scope: !571)
!3498 = !DILocation(line: 51, column: 27, scope: !3434, inlinedAt: !3497)
!3499 = !DILocation(line: 53, column: 10, scope: !3443, inlinedAt: !3497)
!3500 = !DILocation(line: 207, column: 14, scope: !3490)
!3501 = !DILocation(line: 207, column: 18, scope: !3490)
!3502 = !DILocation(line: 207, column: 9, scope: !3490)
!3503 = !DILocation(line: 53, column: 8, scope: !3443, inlinedAt: !3497)
!3504 = !DILocation(line: 57, column: 7, scope: !3448, inlinedAt: !3497)
!3505 = !DILocation(line: 58, column: 7, scope: !3448, inlinedAt: !3497)
!3506 = !DILocation(line: 61, column: 7, scope: !3434, inlinedAt: !3497)
!3507 = !DILocation(line: 62, column: 8, scope: !3452, inlinedAt: !3497)
!3508 = !DILocation(line: 62, column: 13, scope: !3454, inlinedAt: !3497)
!3509 = !DILocation(line: 62, column: 10, scope: !3452, inlinedAt: !3497)
!3510 = !DILocation(line: 63, column: 5, scope: !3452, inlinedAt: !3497)
!3511 = !DILocation(line: 211, column: 3, scope: !571)
!3512 = distinct !DISubprogram(name: "xcharalloc", scope: !570, file: !570, line: 220, type: !2429, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !566, variables: !3513)
!3513 = !{!3514}
!3514 = !DILocalVariable(name: "n", arg: 1, scope: !3512, file: !570, line: 220, type: !9)
!3515 = !DILocation(line: 220, column: 20, scope: !3512)
!3516 = !DILocation(line: 39, column: 17, scope: !3393, inlinedAt: !3517)
!3517 = distinct !DILocation(line: 222, column: 10, scope: !3512)
!3518 = !DILocation(line: 41, column: 13, scope: !3393, inlinedAt: !3517)
!3519 = !DILocation(line: 41, column: 9, scope: !3393, inlinedAt: !3517)
!3520 = !DILocation(line: 42, column: 8, scope: !3404, inlinedAt: !3517)
!3521 = !DILocation(line: 42, column: 15, scope: !3406, inlinedAt: !3517)
!3522 = !DILocation(line: 42, column: 10, scope: !3404, inlinedAt: !3517)
!3523 = !DILocation(line: 43, column: 5, scope: !3404, inlinedAt: !3517)
!3524 = !DILocation(line: 222, column: 3, scope: !3512)
!3525 = distinct !DISubprogram(name: "x2realloc", scope: !3394, file: !3394, line: 74, type: !3526, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !566, variables: !3528)
!3526 = !DISubroutineType(types: !3527)
!3527 = !{!8, !8, !574}
!3528 = !{!3529, !3530}
!3529 = !DILocalVariable(name: "p", arg: 1, scope: !3525, file: !3394, line: 74, type: !8)
!3530 = !DILocalVariable(name: "pn", arg: 2, scope: !3525, file: !3394, line: 74, type: !574)
!3531 = !DILocation(line: 74, column: 18, scope: !3525)
!3532 = !DILocation(line: 74, column: 29, scope: !3525)
!3533 = !DILocation(line: 180, column: 19, scope: !571, inlinedAt: !3534)
!3534 = distinct !DILocation(line: 76, column: 10, scope: !3525)
!3535 = !DILocation(line: 180, column: 30, scope: !571, inlinedAt: !3534)
!3536 = !DILocation(line: 180, column: 41, scope: !571, inlinedAt: !3534)
!3537 = !DILocation(line: 182, column: 14, scope: !571, inlinedAt: !3534)
!3538 = !DILocation(line: 182, column: 10, scope: !571, inlinedAt: !3534)
!3539 = !DILocation(line: 184, column: 9, scope: !3477, inlinedAt: !3534)
!3540 = !DILocation(line: 184, column: 7, scope: !571, inlinedAt: !3534)
!3541 = !DILocation(line: 186, column: 13, scope: !3480, inlinedAt: !3534)
!3542 = !DILocation(line: 186, column: 11, scope: !3481, inlinedAt: !3534)
!3543 = !DILocation(line: 210, column: 7, scope: !571, inlinedAt: !3534)
!3544 = !DILocation(line: 51, column: 17, scope: !3434, inlinedAt: !3545)
!3545 = distinct !DILocation(line: 211, column: 10, scope: !571, inlinedAt: !3534)
!3546 = !DILocation(line: 51, column: 27, scope: !3434, inlinedAt: !3545)
!3547 = !DILocation(line: 53, column: 10, scope: !3443, inlinedAt: !3545)
!3548 = !DILocation(line: 205, column: 11, scope: !3489, inlinedAt: !3534)
!3549 = !DILocation(line: 204, column: 11, scope: !3490, inlinedAt: !3534)
!3550 = !DILocation(line: 206, column: 9, scope: !3489, inlinedAt: !3534)
!3551 = !DILocation(line: 207, column: 14, scope: !3490, inlinedAt: !3534)
!3552 = !DILocation(line: 207, column: 18, scope: !3490, inlinedAt: !3534)
!3553 = !DILocation(line: 207, column: 9, scope: !3490, inlinedAt: !3534)
!3554 = !DILocation(line: 53, column: 8, scope: !3443, inlinedAt: !3545)
!3555 = !DILocation(line: 57, column: 7, scope: !3448, inlinedAt: !3545)
!3556 = !DILocation(line: 58, column: 7, scope: !3448, inlinedAt: !3545)
!3557 = !DILocation(line: 61, column: 7, scope: !3434, inlinedAt: !3545)
!3558 = !DILocation(line: 62, column: 8, scope: !3452, inlinedAt: !3545)
!3559 = !DILocation(line: 62, column: 13, scope: !3454, inlinedAt: !3545)
!3560 = !DILocation(line: 62, column: 10, scope: !3452, inlinedAt: !3545)
!3561 = !DILocation(line: 63, column: 5, scope: !3452, inlinedAt: !3545)
!3562 = !DILocation(line: 76, column: 3, scope: !3525)
!3563 = distinct !DISubprogram(name: "xzalloc", scope: !3394, file: !3394, line: 84, type: !3395, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !566, variables: !3564)
!3564 = !{!3565}
!3565 = !DILocalVariable(name: "s", arg: 1, scope: !3563, file: !3394, line: 84, type: !9)
!3566 = !DILocation(line: 84, column: 17, scope: !3563)
!3567 = !DILocation(line: 39, column: 17, scope: !3393, inlinedAt: !3568)
!3568 = distinct !DILocation(line: 86, column: 18, scope: !3563)
!3569 = !DILocation(line: 41, column: 13, scope: !3393, inlinedAt: !3568)
!3570 = !DILocation(line: 41, column: 9, scope: !3393, inlinedAt: !3568)
!3571 = !DILocation(line: 42, column: 8, scope: !3404, inlinedAt: !3568)
!3572 = !DILocation(line: 42, column: 15, scope: !3406, inlinedAt: !3568)
!3573 = !DILocation(line: 42, column: 10, scope: !3404, inlinedAt: !3568)
!3574 = !DILocation(line: 43, column: 5, scope: !3404, inlinedAt: !3568)
!3575 = !DILocation(line: 86, column: 10, scope: !3563)
!3576 = !DILocation(line: 86, column: 3, scope: !3563)
!3577 = distinct !DISubprogram(name: "xcalloc", scope: !3394, file: !3394, line: 93, type: !3380, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !566, variables: !3578)
!3578 = !{!3579, !3580, !3581}
!3579 = !DILocalVariable(name: "n", arg: 1, scope: !3577, file: !3394, line: 93, type: !9)
!3580 = !DILocalVariable(name: "s", arg: 2, scope: !3577, file: !3394, line: 93, type: !9)
!3581 = !DILocalVariable(name: "p", scope: !3577, file: !3394, line: 95, type: !8)
!3582 = !DILocation(line: 93, column: 17, scope: !3577)
!3583 = !DILocation(line: 93, column: 27, scope: !3577)
!3584 = !DILocation(line: 100, column: 7, scope: !3585)
!3585 = distinct !DILexicalBlock(scope: !3577, file: !3394, line: 100, column: 7)
!3586 = !DILocation(line: 101, column: 7, scope: !3585)
!3587 = !DILocation(line: 101, column: 18, scope: !3588)
!3588 = !DILexicalBlockFile(scope: !3585, file: !3394, discriminator: 1)
!3589 = !DILocation(line: 95, column: 9, scope: !3577)
!3590 = !DILocation(line: 101, column: 16, scope: !3588)
!3591 = !DILocation(line: 100, column: 7, scope: !3592)
!3592 = !DILexicalBlockFile(scope: !3577, file: !3394, discriminator: 1)
!3593 = !DILocation(line: 102, column: 5, scope: !3585)
!3594 = !DILocation(line: 103, column: 3, scope: !3577)
!3595 = distinct !DISubprogram(name: "xmemdup", scope: !3394, file: !3394, line: 111, type: !3596, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !566, variables: !3598)
!3596 = !DISubroutineType(types: !3597)
!3597 = !{!8, !12, !9}
!3598 = !{!3599, !3600}
!3599 = !DILocalVariable(name: "p", arg: 1, scope: !3595, file: !3394, line: 111, type: !12)
!3600 = !DILocalVariable(name: "s", arg: 2, scope: !3595, file: !3394, line: 111, type: !9)
!3601 = !DILocation(line: 111, column: 22, scope: !3595)
!3602 = !DILocation(line: 111, column: 32, scope: !3595)
!3603 = !DILocation(line: 39, column: 17, scope: !3393, inlinedAt: !3604)
!3604 = distinct !DILocation(line: 113, column: 18, scope: !3595)
!3605 = !DILocation(line: 41, column: 13, scope: !3393, inlinedAt: !3604)
!3606 = !DILocation(line: 41, column: 9, scope: !3393, inlinedAt: !3604)
!3607 = !DILocation(line: 42, column: 8, scope: !3404, inlinedAt: !3604)
!3608 = !DILocation(line: 42, column: 15, scope: !3406, inlinedAt: !3604)
!3609 = !DILocation(line: 42, column: 10, scope: !3404, inlinedAt: !3604)
!3610 = !DILocation(line: 43, column: 5, scope: !3404, inlinedAt: !3604)
!3611 = !DILocation(line: 113, column: 10, scope: !3595)
!3612 = !DILocation(line: 113, column: 3, scope: !3595)
!3613 = distinct !DISubprogram(name: "xstrdup", scope: !3394, file: !3394, line: 119, type: !2635, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !566, variables: !3614)
!3614 = !{!3615}
!3615 = !DILocalVariable(name: "string", arg: 1, scope: !3613, file: !3394, line: 119, type: !17)
!3616 = !DILocation(line: 119, column: 22, scope: !3613)
!3617 = !DILocation(line: 121, column: 27, scope: !3613)
!3618 = !DILocation(line: 121, column: 43, scope: !3613)
!3619 = !DILocation(line: 111, column: 22, scope: !3595, inlinedAt: !3620)
!3620 = distinct !DILocation(line: 121, column: 10, scope: !3621)
!3621 = !DILexicalBlockFile(scope: !3613, file: !3394, discriminator: 1)
!3622 = !DILocation(line: 111, column: 32, scope: !3595, inlinedAt: !3620)
!3623 = !DILocation(line: 39, column: 17, scope: !3393, inlinedAt: !3624)
!3624 = distinct !DILocation(line: 113, column: 18, scope: !3595, inlinedAt: !3620)
!3625 = !DILocation(line: 41, column: 13, scope: !3393, inlinedAt: !3624)
!3626 = !DILocation(line: 41, column: 9, scope: !3393, inlinedAt: !3624)
!3627 = !DILocation(line: 42, column: 8, scope: !3404, inlinedAt: !3624)
!3628 = !DILocation(line: 42, column: 15, scope: !3406, inlinedAt: !3624)
!3629 = !DILocation(line: 42, column: 10, scope: !3404, inlinedAt: !3624)
!3630 = !DILocation(line: 43, column: 5, scope: !3404, inlinedAt: !3624)
!3631 = !DILocation(line: 113, column: 10, scope: !3595, inlinedAt: !3620)
!3632 = !DILocation(line: 121, column: 3, scope: !3613)
!3633 = distinct !DISubprogram(name: "xalloc_die", scope: !3634, file: !3634, line: 32, type: !1097, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !583, variables: !4)
!3634 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3635 = !DILocation(line: 34, column: 10, scope: !3633)
!3636 = !DILocation(line: 34, column: 33, scope: !3633)
!3637 = !DILocation(line: 34, column: 3, scope: !3638)
!3638 = !DILexicalBlockFile(scope: !3633, file: !3634, discriminator: 1)
!3639 = !DILocation(line: 40, column: 3, scope: !3633)
!3640 = distinct !DISubprogram(name: "xgetgroups", scope: !3641, file: !3641, line: 31, type: !603, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !585, variables: !3642)
!3641 = !DIFile(filename: "lib/xgetgroups.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3642 = !{!3643, !3644, !3645, !3646}
!3643 = !DILocalVariable(name: "username", arg: 1, scope: !3640, file: !3641, line: 31, type: !17)
!3644 = !DILocalVariable(name: "gid", arg: 2, scope: !3640, file: !3641, line: 31, type: !71)
!3645 = !DILocalVariable(name: "groups", arg: 3, scope: !3640, file: !3641, line: 31, type: !605)
!3646 = !DILocalVariable(name: "result", scope: !3640, file: !3641, line: 33, type: !47)
!3647 = !DILocation(line: 31, column: 25, scope: !3640)
!3648 = !DILocation(line: 31, column: 41, scope: !3640)
!3649 = !DILocation(line: 31, column: 54, scope: !3640)
!3650 = !DILocation(line: 33, column: 16, scope: !3640)
!3651 = !DILocation(line: 33, column: 7, scope: !3640)
!3652 = !DILocation(line: 34, column: 14, scope: !3653)
!3653 = distinct !DILexicalBlock(scope: !3640, file: !3641, line: 34, column: 7)
!3654 = !DILocation(line: 34, column: 20, scope: !3653)
!3655 = !DILocation(line: 34, column: 23, scope: !3656)
!3656 = !DILexicalBlockFile(scope: !3653, file: !3641, discriminator: 1)
!3657 = !DILocation(line: 34, column: 29, scope: !3656)
!3658 = !DILocation(line: 34, column: 7, scope: !3659)
!3659 = !DILexicalBlockFile(scope: !3640, file: !3641, discriminator: 1)
!3660 = !DILocation(line: 35, column: 5, scope: !3653)
!3661 = !DILocation(line: 36, column: 3, scope: !3640)
!3662 = distinct !DISubprogram(name: "rpl_calloc", scope: !3663, file: !3663, line: 42, type: !3380, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !587, variables: !3664)
!3663 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3664 = !{!3665, !3666, !3667, !3668}
!3665 = !DILocalVariable(name: "n", arg: 1, scope: !3662, file: !3663, line: 42, type: !9)
!3666 = !DILocalVariable(name: "s", arg: 2, scope: !3662, file: !3663, line: 42, type: !9)
!3667 = !DILocalVariable(name: "result", scope: !3662, file: !3663, line: 44, type: !8)
!3668 = !DILocalVariable(name: "bytes", scope: !3669, file: !3663, line: 56, type: !9)
!3669 = distinct !DILexicalBlock(scope: !3670, file: !3663, line: 53, column: 5)
!3670 = distinct !DILexicalBlock(scope: !3662, file: !3663, line: 47, column: 7)
!3671 = !DILocation(line: 42, column: 20, scope: !3662)
!3672 = !DILocation(line: 42, column: 30, scope: !3662)
!3673 = !DILocation(line: 47, column: 9, scope: !3670)
!3674 = !DILocation(line: 47, column: 19, scope: !3675)
!3675 = !DILexicalBlockFile(scope: !3670, file: !3663, discriminator: 1)
!3676 = !DILocation(line: 47, column: 14, scope: !3670)
!3677 = !DILocation(line: 56, column: 24, scope: !3669)
!3678 = !DILocation(line: 56, column: 14, scope: !3669)
!3679 = !DILocation(line: 57, column: 17, scope: !3680)
!3680 = distinct !DILexicalBlock(scope: !3669, file: !3663, line: 57, column: 11)
!3681 = !DILocation(line: 57, column: 21, scope: !3680)
!3682 = !DILocation(line: 57, column: 11, scope: !3669)
!3683 = !DILocation(line: 59, column: 11, scope: !3684)
!3684 = distinct !DILexicalBlock(scope: !3680, file: !3663, line: 58, column: 9)
!3685 = !DILocation(line: 59, column: 17, scope: !3684)
!3686 = !DILocation(line: 65, column: 12, scope: !3662)
!3687 = !DILocation(line: 44, column: 9, scope: !3662)
!3688 = !DILocation(line: 72, column: 3, scope: !3662)
!3689 = !DILocation(line: 73, column: 1, scope: !3662)
!3690 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !3691, file: !3691, line: 334, type: !3692, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !589, variables: !3706)
!3691 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3692 = !DISubroutineType(types: !3693)
!3693 = !{!9, !3694, !17, !9, !3695}
!3694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1416, size: 64)
!3695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3696, size: 64)
!3696 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1401, line: 107, baseType: !3697)
!3697 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1401, line: 95, baseType: !3698)
!3698 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1401, line: 83, size: 64, elements: !3699)
!3699 = !{!3700, !3701}
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3698, file: !1401, line: 85, baseType: !47, size: 32)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3698, file: !1401, line: 94, baseType: !3702, size: 32, offset: 32)
!3702 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3698, file: !1401, line: 86, size: 32, elements: !3703)
!3703 = !{!3704, !3705}
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3702, file: !1401, line: 89, baseType: !75, size: 32)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3702, file: !1401, line: 93, baseType: !1411, size: 32)
!3706 = !{!3707, !3708, !3709, !3710, !3711, !3712, !3713}
!3707 = !DILocalVariable(name: "pwc", arg: 1, scope: !3690, file: !3691, line: 334, type: !3694)
!3708 = !DILocalVariable(name: "s", arg: 2, scope: !3690, file: !3691, line: 334, type: !17)
!3709 = !DILocalVariable(name: "n", arg: 3, scope: !3690, file: !3691, line: 334, type: !9)
!3710 = !DILocalVariable(name: "ps", arg: 4, scope: !3690, file: !3691, line: 334, type: !3695)
!3711 = !DILocalVariable(name: "ret", scope: !3690, file: !3691, line: 336, type: !9)
!3712 = !DILocalVariable(name: "wc", scope: !3690, file: !3691, line: 337, type: !1416)
!3713 = !DILocalVariable(name: "uc", scope: !3714, file: !3691, line: 398, type: !16)
!3714 = distinct !DILexicalBlock(scope: !3715, file: !3691, line: 397, column: 5)
!3715 = distinct !DILexicalBlock(scope: !3690, file: !3691, line: 396, column: 7)
!3716 = !DILocation(line: 334, column: 23, scope: !3690)
!3717 = !DILocation(line: 334, column: 40, scope: !3690)
!3718 = !DILocation(line: 334, column: 50, scope: !3690)
!3719 = !DILocation(line: 334, column: 64, scope: !3690)
!3720 = !DILocation(line: 337, column: 3, scope: !3690)
!3721 = !DILocation(line: 353, column: 9, scope: !3722)
!3722 = distinct !DILexicalBlock(scope: !3690, file: !3691, line: 353, column: 7)
!3723 = !DILocation(line: 353, column: 7, scope: !3690)
!3724 = !DILocation(line: 388, column: 9, scope: !3690)
!3725 = !DILocation(line: 336, column: 10, scope: !3690)
!3726 = !DILocation(line: 396, column: 19, scope: !3715)
!3727 = !DILocation(line: 396, column: 31, scope: !3728)
!3728 = !DILexicalBlockFile(scope: !3715, file: !3691, discriminator: 1)
!3729 = !DILocation(line: 396, column: 26, scope: !3715)
!3730 = !DILocation(line: 396, column: 41, scope: !3731)
!3731 = !DILexicalBlockFile(scope: !3715, file: !3691, discriminator: 2)
!3732 = !DILocation(line: 396, column: 7, scope: !3733)
!3733 = !DILexicalBlockFile(scope: !3690, file: !3691, discriminator: 2)
!3734 = !DILocation(line: 398, column: 26, scope: !3714)
!3735 = !DILocation(line: 398, column: 21, scope: !3714)
!3736 = !DILocation(line: 399, column: 14, scope: !3714)
!3737 = !DILocation(line: 399, column: 12, scope: !3714)
!3738 = !DILocation(line: 405, column: 1, scope: !3690)
!3739 = distinct !DISubprogram(name: "close_stream", scope: !3740, file: !3740, line: 56, type: !3741, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !592, variables: !3783)
!3740 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3741 = !DISubroutineType(types: !3742)
!3742 = !{!47, !3743}
!3743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3744, size: 64)
!3744 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3161, line: 49, baseType: !3745)
!3745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3163, line: 241, size: 1728, elements: !3746)
!3746 = !{!3747, !3748, !3749, !3750, !3751, !3752, !3753, !3754, !3755, !3756, !3757, !3758, !3759, !3767, !3768, !3769, !3770, !3771, !3772, !3773, !3774, !3775, !3776, !3777, !3778, !3779, !3780, !3781, !3782}
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3745, file: !3163, line: 242, baseType: !47, size: 32)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3745, file: !3163, line: 247, baseType: !6, size: 64, offset: 64)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3745, file: !3163, line: 248, baseType: !6, size: 64, offset: 128)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3745, file: !3163, line: 249, baseType: !6, size: 64, offset: 192)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3745, file: !3163, line: 250, baseType: !6, size: 64, offset: 256)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3745, file: !3163, line: 251, baseType: !6, size: 64, offset: 320)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3745, file: !3163, line: 252, baseType: !6, size: 64, offset: 384)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3745, file: !3163, line: 253, baseType: !6, size: 64, offset: 448)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3745, file: !3163, line: 254, baseType: !6, size: 64, offset: 512)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3745, file: !3163, line: 256, baseType: !6, size: 64, offset: 576)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3745, file: !3163, line: 257, baseType: !6, size: 64, offset: 640)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3745, file: !3163, line: 258, baseType: !6, size: 64, offset: 704)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3745, file: !3163, line: 260, baseType: !3760, size: 64, offset: 768)
!3760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3761, size: 64)
!3761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3163, line: 156, size: 192, elements: !3762)
!3762 = !{!3763, !3764, !3766}
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3761, file: !3163, line: 157, baseType: !3760, size: 64)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3761, file: !3163, line: 158, baseType: !3765, size: 64, offset: 64)
!3765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3745, size: 64)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3761, file: !3163, line: 162, baseType: !47, size: 32, offset: 128)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3745, file: !3163, line: 262, baseType: !3765, size: 64, offset: 832)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3745, file: !3163, line: 264, baseType: !47, size: 32, offset: 896)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3745, file: !3163, line: 268, baseType: !47, size: 32, offset: 928)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3745, file: !3163, line: 270, baseType: !3189, size: 64, offset: 960)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3745, file: !3163, line: 274, baseType: !152, size: 16, offset: 1024)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3745, file: !3163, line: 275, baseType: !3193, size: 8, offset: 1040)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3745, file: !3163, line: 276, baseType: !3195, size: 8, offset: 1048)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3745, file: !3163, line: 280, baseType: !3199, size: 64, offset: 1088)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3745, file: !3163, line: 289, baseType: !3202, size: 64, offset: 1152)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3745, file: !3163, line: 297, baseType: !8, size: 64, offset: 1216)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3745, file: !3163, line: 298, baseType: !8, size: 64, offset: 1280)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3745, file: !3163, line: 299, baseType: !8, size: 64, offset: 1344)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3745, file: !3163, line: 300, baseType: !8, size: 64, offset: 1408)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3745, file: !3163, line: 302, baseType: !9, size: 64, offset: 1472)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3745, file: !3163, line: 303, baseType: !47, size: 32, offset: 1536)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3745, file: !3163, line: 305, baseType: !3210, size: 160, offset: 1568)
!3783 = !{!3784, !3785, !3787, !3788}
!3784 = !DILocalVariable(name: "stream", arg: 1, scope: !3739, file: !3740, line: 56, type: !3743)
!3785 = !DILocalVariable(name: "some_pending", scope: !3739, file: !3740, line: 58, type: !3786)
!3786 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !97)
!3787 = !DILocalVariable(name: "prev_fail", scope: !3739, file: !3740, line: 59, type: !3786)
!3788 = !DILocalVariable(name: "fclose_fail", scope: !3739, file: !3740, line: 60, type: !3786)
!3789 = !DILocation(line: 56, column: 21, scope: !3739)
!3790 = !DILocation(line: 58, column: 30, scope: !3739)
!3791 = !DILocalVariable(name: "__stream", arg: 1, scope: !3792, file: !807, line: 132, type: !3743)
!3792 = distinct !DISubprogram(name: "ferror_unlocked", scope: !807, file: !807, line: 132, type: !3741, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !592, variables: !3793)
!3793 = !{!3791}
!3794 = !DILocation(line: 132, column: 1, scope: !3792, inlinedAt: !3795)
!3795 = distinct !DILocation(line: 59, column: 27, scope: !3739)
!3796 = !DILocation(line: 134, column: 10, scope: !3792, inlinedAt: !3795)
!3797 = !{!815, !752, i64 0}
!3798 = !DILocation(line: 59, column: 43, scope: !3739)
!3799 = !DILocation(line: 60, column: 29, scope: !3739)
!3800 = !DILocation(line: 60, column: 45, scope: !3739)
!3801 = !DILocation(line: 70, column: 17, scope: !3802)
!3802 = distinct !DILexicalBlock(scope: !3739, file: !3740, line: 70, column: 7)
!3803 = !DILocation(line: 70, column: 33, scope: !3804)
!3804 = !DILexicalBlockFile(scope: !3802, file: !3740, discriminator: 1)
!3805 = !DILocation(line: 70, column: 53, scope: !3806)
!3806 = !DILexicalBlockFile(scope: !3802, file: !3740, discriminator: 3)
!3807 = !DILocation(line: 70, column: 7, scope: !3808)
!3808 = !DILexicalBlockFile(scope: !3739, file: !3740, discriminator: 3)
!3809 = !DILocation(line: 72, column: 11, scope: !3810)
!3810 = distinct !DILexicalBlock(scope: !3802, file: !3740, line: 71, column: 5)
!3811 = !DILocation(line: 73, column: 9, scope: !3812)
!3812 = distinct !DILexicalBlock(scope: !3810, file: !3740, line: 72, column: 11)
!3813 = !DILocation(line: 73, column: 15, scope: !3812)
!3814 = !DILocation(line: 78, column: 1, scope: !3739)
!3815 = distinct !DISubprogram(name: "hard_locale", scope: !3816, file: !3816, line: 38, type: !3817, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !594, variables: !3819)
!3816 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3817 = !DISubroutineType(types: !3818)
!3818 = !{!97, !47}
!3819 = !{!3820, !3821, !3822, !3823, !3830, !3831, !3833, !3834, !3836, !3837, !3839}
!3820 = !DILocalVariable(name: "category", arg: 1, scope: !3815, file: !3816, line: 38, type: !47)
!3821 = !DILocalVariable(name: "hard", scope: !3815, file: !3816, line: 40, type: !97)
!3822 = !DILocalVariable(name: "p", scope: !3815, file: !3816, line: 41, type: !17)
!3823 = !DILocalVariable(name: "__s1_len", scope: !3824, file: !3816, line: 47, type: !9)
!3824 = distinct !DILexicalBlock(scope: !3825, file: !3816, line: 47, column: 15)
!3825 = distinct !DILexicalBlock(scope: !3826, file: !3816, line: 47, column: 15)
!3826 = distinct !DILexicalBlock(scope: !3827, file: !3816, line: 46, column: 9)
!3827 = distinct !DILexicalBlock(scope: !3828, file: !3816, line: 45, column: 11)
!3828 = distinct !DILexicalBlock(scope: !3829, file: !3816, line: 44, column: 5)
!3829 = distinct !DILexicalBlock(scope: !3815, file: !3816, line: 43, column: 7)
!3830 = !DILocalVariable(name: "__s2_len", scope: !3824, file: !3816, line: 47, type: !9)
!3831 = !DILocalVariable(name: "__s2", scope: !3832, file: !3816, line: 47, type: !14)
!3832 = distinct !DILexicalBlock(scope: !3824, file: !3816, line: 47, column: 15)
!3833 = !DILocalVariable(name: "__result", scope: !3832, file: !3816, line: 47, type: !47)
!3834 = !DILocalVariable(name: "__s1_len", scope: !3835, file: !3816, line: 47, type: !9)
!3835 = distinct !DILexicalBlock(scope: !3825, file: !3816, line: 47, column: 39)
!3836 = !DILocalVariable(name: "__s2_len", scope: !3835, file: !3816, line: 47, type: !9)
!3837 = !DILocalVariable(name: "__s2", scope: !3838, file: !3816, line: 47, type: !14)
!3838 = distinct !DILexicalBlock(scope: !3835, file: !3816, line: 47, column: 39)
!3839 = !DILocalVariable(name: "__result", scope: !3838, file: !3816, line: 47, type: !47)
!3840 = !DILocation(line: 38, column: 18, scope: !3815)
!3841 = !DILocation(line: 40, column: 8, scope: !3815)
!3842 = !DILocation(line: 41, column: 19, scope: !3815)
!3843 = !DILocation(line: 41, column: 15, scope: !3815)
!3844 = !DILocation(line: 43, column: 7, scope: !3829)
!3845 = !DILocation(line: 43, column: 7, scope: !3815)
!3846 = !DILocation(line: 47, column: 15, scope: !3824)
!3847 = !DILocation(line: 47, column: 15, scope: !3832)
!3848 = !DILocation(line: 47, column: 15, scope: !3849)
!3849 = !DILexicalBlockFile(scope: !3832, file: !3816, discriminator: 2)
!3850 = !DILocation(line: 47, column: 15, scope: !3851)
!3851 = !DILexicalBlockFile(scope: !3852, file: !3816, discriminator: 3)
!3852 = distinct !DILexicalBlock(scope: !3832, file: !3816, line: 47, column: 15)
!3853 = !DILocation(line: 47, column: 15, scope: !3854)
!3854 = !DILexicalBlockFile(scope: !3852, file: !3816, discriminator: 2)
!3855 = !DILocation(line: 47, column: 15, scope: !3856)
!3856 = !DILexicalBlockFile(scope: !3857, file: !3816, discriminator: 4)
!3857 = distinct !DILexicalBlock(scope: !3852, file: !3816, line: 47, column: 15)
!3858 = !DILocation(line: 47, column: 15, scope: !3859)
!3859 = !DILexicalBlockFile(scope: !3824, file: !3816, discriminator: 11)
!3860 = !DILocation(line: 47, column: 36, scope: !3861)
!3861 = !DILexicalBlockFile(scope: !3825, file: !3816, discriminator: 13)
!3862 = !DILocation(line: 47, column: 39, scope: !3835)
!3863 = !DILocation(line: 47, column: 39, scope: !3864)
!3864 = !DILexicalBlockFile(scope: !3835, file: !3816, discriminator: 26)
!3865 = !DILocation(line: 47, column: 59, scope: !3866)
!3866 = !DILexicalBlockFile(scope: !3825, file: !3816, discriminator: 27)
!3867 = !DILocation(line: 47, column: 15, scope: !3868)
!3868 = !DILexicalBlockFile(scope: !3826, file: !3816, discriminator: 27)
!3869 = !DILocation(line: 48, column: 13, scope: !3825)
!3870 = !DILocation(line: 71, column: 3, scope: !3815)
!3871 = distinct !DISubprogram(name: "locale_charset", scope: !550, file: !550, line: 393, type: !3872, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !206, variables: !3874)
!3872 = !DISubroutineType(types: !3873)
!3873 = !{!17}
!3874 = !{!3875, !3876, !3877, !3882}
!3875 = !DILocalVariable(name: "codeset", scope: !3871, file: !550, line: 395, type: !17)
!3876 = !DILocalVariable(name: "aliases", scope: !3871, file: !550, line: 396, type: !17)
!3877 = !DILocalVariable(name: "__s1_len", scope: !3878, file: !550, line: 592, type: !9)
!3878 = distinct !DILexicalBlock(scope: !3879, file: !550, line: 592, column: 9)
!3879 = distinct !DILexicalBlock(scope: !3880, file: !550, line: 592, column: 9)
!3880 = distinct !DILexicalBlock(scope: !3881, file: !550, line: 589, column: 3)
!3881 = distinct !DILexicalBlock(scope: !3871, file: !550, line: 589, column: 3)
!3882 = !DILocalVariable(name: "__s2_len", scope: !3878, file: !550, line: 592, type: !9)
!3883 = !DILocalVariable(name: "buf1", scope: !3884, file: !550, line: 196, type: !3951)
!3884 = distinct !DILexicalBlock(scope: !3885, file: !550, line: 194, column: 21)
!3885 = distinct !DILexicalBlock(scope: !3886, file: !550, line: 193, column: 19)
!3886 = distinct !DILexicalBlock(scope: !3887, file: !550, line: 193, column: 19)
!3887 = distinct !DILexicalBlock(scope: !3888, file: !550, line: 188, column: 17)
!3888 = distinct !DILexicalBlock(scope: !3889, file: !550, line: 181, column: 19)
!3889 = distinct !DILexicalBlock(scope: !3890, file: !550, line: 177, column: 13)
!3890 = distinct !DILexicalBlock(scope: !3891, file: !550, line: 173, column: 15)
!3891 = distinct !DILexicalBlock(scope: !3892, file: !550, line: 161, column: 9)
!3892 = distinct !DILexicalBlock(scope: !3893, file: !550, line: 157, column: 11)
!3893 = distinct !DILexicalBlock(scope: !3894, file: !550, line: 130, column: 5)
!3894 = distinct !DILexicalBlock(scope: !3895, file: !550, line: 129, column: 7)
!3895 = distinct !DISubprogram(name: "get_charset_aliases", scope: !550, file: !550, line: 124, type: !3872, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !206, variables: !3896)
!3896 = !{!3897, !3898, !3899, !3900, !3901, !3903, !3904, !3905, !3906, !3947, !3948, !3949, !3883, !3950, !3954, !3955, !3956}
!3897 = !DILocalVariable(name: "cp", scope: !3895, file: !550, line: 126, type: !17)
!3898 = !DILocalVariable(name: "dir", scope: !3893, file: !550, line: 132, type: !17)
!3899 = !DILocalVariable(name: "base", scope: !3893, file: !550, line: 133, type: !17)
!3900 = !DILocalVariable(name: "file_name", scope: !3893, file: !550, line: 134, type: !6)
!3901 = !DILocalVariable(name: "dir_len", scope: !3902, file: !550, line: 144, type: !9)
!3902 = distinct !DILexicalBlock(scope: !3893, file: !550, line: 143, column: 7)
!3903 = !DILocalVariable(name: "base_len", scope: !3902, file: !550, line: 145, type: !9)
!3904 = !DILocalVariable(name: "add_slash", scope: !3902, file: !550, line: 146, type: !47)
!3905 = !DILocalVariable(name: "fd", scope: !3891, file: !550, line: 162, type: !47)
!3906 = !DILocalVariable(name: "fp", scope: !3889, file: !550, line: 178, type: !3907)
!3907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3908, size: 64)
!3908 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3161, line: 49, baseType: !3909)
!3909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3163, line: 241, size: 1728, elements: !3910)
!3910 = !{!3911, !3912, !3913, !3914, !3915, !3916, !3917, !3918, !3919, !3920, !3921, !3922, !3923, !3931, !3932, !3933, !3934, !3935, !3936, !3937, !3938, !3939, !3940, !3941, !3942, !3943, !3944, !3945, !3946}
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3909, file: !3163, line: 242, baseType: !47, size: 32)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3909, file: !3163, line: 247, baseType: !6, size: 64, offset: 64)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3909, file: !3163, line: 248, baseType: !6, size: 64, offset: 128)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3909, file: !3163, line: 249, baseType: !6, size: 64, offset: 192)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3909, file: !3163, line: 250, baseType: !6, size: 64, offset: 256)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3909, file: !3163, line: 251, baseType: !6, size: 64, offset: 320)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3909, file: !3163, line: 252, baseType: !6, size: 64, offset: 384)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3909, file: !3163, line: 253, baseType: !6, size: 64, offset: 448)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3909, file: !3163, line: 254, baseType: !6, size: 64, offset: 512)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3909, file: !3163, line: 256, baseType: !6, size: 64, offset: 576)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3909, file: !3163, line: 257, baseType: !6, size: 64, offset: 640)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3909, file: !3163, line: 258, baseType: !6, size: 64, offset: 704)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3909, file: !3163, line: 260, baseType: !3924, size: 64, offset: 768)
!3924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3925, size: 64)
!3925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3163, line: 156, size: 192, elements: !3926)
!3926 = !{!3927, !3928, !3930}
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3925, file: !3163, line: 157, baseType: !3924, size: 64)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3925, file: !3163, line: 158, baseType: !3929, size: 64, offset: 64)
!3929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3909, size: 64)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3925, file: !3163, line: 162, baseType: !47, size: 32, offset: 128)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3909, file: !3163, line: 262, baseType: !3929, size: 64, offset: 832)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3909, file: !3163, line: 264, baseType: !47, size: 32, offset: 896)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3909, file: !3163, line: 268, baseType: !47, size: 32, offset: 928)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3909, file: !3163, line: 270, baseType: !3189, size: 64, offset: 960)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3909, file: !3163, line: 274, baseType: !152, size: 16, offset: 1024)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3909, file: !3163, line: 275, baseType: !3193, size: 8, offset: 1040)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3909, file: !3163, line: 276, baseType: !3195, size: 8, offset: 1048)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3909, file: !3163, line: 280, baseType: !3199, size: 64, offset: 1088)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3909, file: !3163, line: 289, baseType: !3202, size: 64, offset: 1152)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3909, file: !3163, line: 297, baseType: !8, size: 64, offset: 1216)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3909, file: !3163, line: 298, baseType: !8, size: 64, offset: 1280)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3909, file: !3163, line: 299, baseType: !8, size: 64, offset: 1344)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3909, file: !3163, line: 300, baseType: !8, size: 64, offset: 1408)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3909, file: !3163, line: 302, baseType: !9, size: 64, offset: 1472)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3909, file: !3163, line: 303, baseType: !47, size: 32, offset: 1536)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3909, file: !3163, line: 305, baseType: !3210, size: 160, offset: 1568)
!3947 = !DILocalVariable(name: "res_ptr", scope: !3887, file: !550, line: 190, type: !6)
!3948 = !DILocalVariable(name: "res_size", scope: !3887, file: !550, line: 191, type: !9)
!3949 = !DILocalVariable(name: "c", scope: !3884, file: !550, line: 195, type: !47)
!3950 = !DILocalVariable(name: "buf2", scope: !3884, file: !550, line: 197, type: !3951)
!3951 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 408, elements: !3952)
!3952 = !{!3953}
!3953 = !DISubrange(count: 51)
!3954 = !DILocalVariable(name: "l1", scope: !3884, file: !550, line: 198, type: !9)
!3955 = !DILocalVariable(name: "l2", scope: !3884, file: !550, line: 198, type: !9)
!3956 = !DILocalVariable(name: "old_res_ptr", scope: !3884, file: !550, line: 199, type: !6)
!3957 = !DILocation(line: 196, column: 28, scope: !3884, inlinedAt: !3958)
!3958 = distinct !DILocation(line: 589, column: 18, scope: !3881)
!3959 = !DILocation(line: 197, column: 28, scope: !3884, inlinedAt: !3958)
!3960 = !DILocation(line: 403, column: 13, scope: !3871)
!3961 = !DILocation(line: 395, column: 15, scope: !3871)
!3962 = !DILocation(line: 584, column: 15, scope: !3963)
!3963 = distinct !DILexicalBlock(scope: !3871, file: !550, line: 584, column: 7)
!3964 = !DILocation(line: 584, column: 7, scope: !3871)
!3965 = !DILocation(line: 128, column: 8, scope: !3895, inlinedAt: !3958)
!3966 = !DILocation(line: 126, column: 15, scope: !3895, inlinedAt: !3958)
!3967 = !DILocation(line: 129, column: 10, scope: !3894, inlinedAt: !3958)
!3968 = !DILocation(line: 129, column: 7, scope: !3895, inlinedAt: !3958)
!3969 = !DILocation(line: 138, column: 13, scope: !3893, inlinedAt: !3958)
!3970 = !DILocation(line: 132, column: 19, scope: !3893, inlinedAt: !3958)
!3971 = !DILocation(line: 139, column: 15, scope: !3972, inlinedAt: !3958)
!3972 = distinct !DILexicalBlock(scope: !3893, file: !550, line: 139, column: 11)
!3973 = !DILocation(line: 139, column: 23, scope: !3972, inlinedAt: !3958)
!3974 = !DILocation(line: 139, column: 26, scope: !3975, inlinedAt: !3958)
!3975 = !DILexicalBlockFile(scope: !3972, file: !550, discriminator: 1)
!3976 = !DILocation(line: 139, column: 33, scope: !3975, inlinedAt: !3958)
!3977 = !DILocation(line: 139, column: 11, scope: !3978, inlinedAt: !3958)
!3978 = !DILexicalBlockFile(scope: !3893, file: !550, discriminator: 1)
!3979 = !DILocation(line: 140, column: 9, scope: !3972, inlinedAt: !3958)
!3980 = !DILocation(line: 144, column: 26, scope: !3902, inlinedAt: !3958)
!3981 = !DILocation(line: 144, column: 16, scope: !3902, inlinedAt: !3958)
!3982 = !DILocation(line: 145, column: 16, scope: !3902, inlinedAt: !3958)
!3983 = !DILocation(line: 146, column: 34, scope: !3902, inlinedAt: !3958)
!3984 = !DILocation(line: 146, column: 38, scope: !3902, inlinedAt: !3958)
!3985 = !DILocation(line: 146, column: 42, scope: !3986, inlinedAt: !3958)
!3986 = !DILexicalBlockFile(scope: !3902, file: !550, discriminator: 1)
!3987 = !DILocation(line: 146, column: 41, scope: !3986, inlinedAt: !3958)
!3988 = !DILocation(line: 147, column: 48, scope: !3902, inlinedAt: !3958)
!3989 = !DILocation(line: 147, column: 46, scope: !3902, inlinedAt: !3958)
!3990 = !DILocation(line: 147, column: 69, scope: !3902, inlinedAt: !3958)
!3991 = !DILocation(line: 147, column: 30, scope: !3902, inlinedAt: !3958)
!3992 = !DILocation(line: 134, column: 13, scope: !3893, inlinedAt: !3958)
!3993 = !DILocation(line: 148, column: 13, scope: !3902, inlinedAt: !3958)
!3994 = !DILocation(line: 150, column: 13, scope: !3995, inlinedAt: !3958)
!3995 = distinct !DILexicalBlock(scope: !3996, file: !550, line: 149, column: 11)
!3996 = distinct !DILexicalBlock(scope: !3902, file: !550, line: 148, column: 13)
!3997 = !DILocation(line: 151, column: 17, scope: !3995, inlinedAt: !3958)
!3998 = !DILocation(line: 152, column: 34, scope: !3999, inlinedAt: !3958)
!3999 = distinct !DILexicalBlock(scope: !3995, file: !550, line: 151, column: 17)
!4000 = !DILocation(line: 153, column: 41, scope: !3995, inlinedAt: !3958)
!4001 = !DILocation(line: 153, column: 13, scope: !3995, inlinedAt: !3958)
!4002 = !DILocation(line: 157, column: 11, scope: !3893, inlinedAt: !3958)
!4003 = !DILocation(line: 171, column: 16, scope: !3891, inlinedAt: !3958)
!4004 = !DILocation(line: 162, column: 15, scope: !3891, inlinedAt: !3958)
!4005 = !DILocation(line: 173, column: 18, scope: !3890, inlinedAt: !3958)
!4006 = !DILocation(line: 173, column: 15, scope: !3891, inlinedAt: !3958)
!4007 = !DILocation(line: 180, column: 20, scope: !3889, inlinedAt: !3958)
!4008 = !DILocation(line: 178, column: 21, scope: !3889, inlinedAt: !3958)
!4009 = !DILocation(line: 181, column: 22, scope: !3888, inlinedAt: !3958)
!4010 = !DILocation(line: 181, column: 19, scope: !3889, inlinedAt: !3958)
!4011 = !DILocation(line: 190, column: 25, scope: !3887, inlinedAt: !3958)
!4012 = !DILocation(line: 184, column: 19, scope: !4013, inlinedAt: !3958)
!4013 = distinct !DILexicalBlock(scope: !3888, file: !550, line: 182, column: 17)
!4014 = !DILocation(line: 186, column: 17, scope: !4013, inlinedAt: !3958)
!4015 = !DILocation(line: 191, column: 26, scope: !3887, inlinedAt: !3958)
!4016 = !DILocation(line: 196, column: 23, scope: !3884, inlinedAt: !3958)
!4017 = !DILocation(line: 197, column: 23, scope: !3884, inlinedAt: !3958)
!4018 = !DILocalVariable(name: "__fp", arg: 1, scope: !4019, file: !807, line: 63, type: !3907)
!4019 = distinct !DISubprogram(name: "getc_unlocked", scope: !807, file: !807, line: 63, type: !4020, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !206, variables: !4022)
!4020 = !DISubroutineType(types: !4021)
!4021 = !{!47, !3907}
!4022 = !{!4018}
!4023 = !DILocation(line: 63, column: 22, scope: !4019, inlinedAt: !4024)
!4024 = distinct !DILocation(line: 201, column: 27, scope: !3884, inlinedAt: !3958)
!4025 = !DILocation(line: 65, column: 10, scope: !4019, inlinedAt: !4024)
!4026 = !{!815, !658, i64 8}
!4027 = !{!815, !658, i64 16}
!4028 = !DILocation(line: 65, column: 10, scope: !4029, inlinedAt: !4024)
!4029 = !DILexicalBlockFile(scope: !4019, file: !807, discriminator: 1)
!4030 = !DILocation(line: 65, column: 10, scope: !4031, inlinedAt: !4024)
!4031 = !DILexicalBlockFile(scope: !4019, file: !807, discriminator: 2)
!4032 = !DILocation(line: 65, column: 10, scope: !4033, inlinedAt: !4024)
!4033 = !DILexicalBlockFile(scope: !4019, file: !807, discriminator: 3)
!4034 = !DILocation(line: 195, column: 27, scope: !3884, inlinedAt: !3958)
!4035 = !DILocation(line: 202, column: 27, scope: !3884, inlinedAt: !3958)
!4036 = !DILocation(line: 63, column: 22, scope: !4019, inlinedAt: !4037)
!4037 = distinct !DILocation(line: 210, column: 33, scope: !4038, inlinedAt: !3958)
!4038 = distinct !DILexicalBlock(scope: !4039, file: !550, line: 207, column: 25)
!4039 = distinct !DILexicalBlock(scope: !3884, file: !550, line: 206, column: 27)
!4040 = !DILocation(line: 65, column: 10, scope: !4019, inlinedAt: !4037)
!4041 = !DILocation(line: 65, column: 10, scope: !4029, inlinedAt: !4037)
!4042 = !DILocation(line: 65, column: 10, scope: !4031, inlinedAt: !4037)
!4043 = !DILocation(line: 65, column: 10, scope: !4033, inlinedAt: !4037)
!4044 = !DILocation(line: 210, column: 29, scope: !4045, inlinedAt: !3958)
!4045 = !DILexicalBlockFile(scope: !4038, file: !550, discriminator: 1)
!4046 = distinct !{!4046, !4047, !4048}
!4047 = !DILocation(line: 193, column: 19, scope: !3886)
!4048 = !DILocation(line: 241, column: 21, scope: !3886)
!4049 = !DILocation(line: 216, column: 23, scope: !3884, inlinedAt: !3958)
!4050 = !DILocation(line: 217, column: 27, scope: !4051, inlinedAt: !3958)
!4051 = distinct !DILexicalBlock(scope: !3884, file: !550, line: 217, column: 27)
!4052 = !DILocation(line: 217, column: 64, scope: !4051, inlinedAt: !3958)
!4053 = !DILocation(line: 217, column: 27, scope: !3884, inlinedAt: !3958)
!4054 = !DILocation(line: 219, column: 28, scope: !3884, inlinedAt: !3958)
!4055 = !DILocation(line: 198, column: 30, scope: !3884, inlinedAt: !3958)
!4056 = !DILocation(line: 220, column: 28, scope: !3884, inlinedAt: !3958)
!4057 = !DILocation(line: 198, column: 34, scope: !3884, inlinedAt: !3958)
!4058 = !DILocation(line: 199, column: 29, scope: !3884, inlinedAt: !3958)
!4059 = !DILocation(line: 222, column: 36, scope: !4060, inlinedAt: !3958)
!4060 = distinct !DILexicalBlock(scope: !3884, file: !550, line: 222, column: 27)
!4061 = !DILocation(line: 222, column: 27, scope: !3884, inlinedAt: !3958)
!4062 = !DILocation(line: 225, column: 63, scope: !4063, inlinedAt: !3958)
!4063 = distinct !DILexicalBlock(scope: !4060, file: !550, line: 223, column: 25)
!4064 = !DILocation(line: 225, column: 46, scope: !4063, inlinedAt: !3958)
!4065 = !DILocation(line: 226, column: 25, scope: !4063, inlinedAt: !3958)
!4066 = !DILocation(line: 229, column: 36, scope: !4067, inlinedAt: !3958)
!4067 = distinct !DILexicalBlock(scope: !4060, file: !550, line: 228, column: 25)
!4068 = !DILocation(line: 230, column: 73, scope: !4067, inlinedAt: !3958)
!4069 = !DILocation(line: 230, column: 46, scope: !4067, inlinedAt: !3958)
!4070 = !DILocation(line: 232, column: 35, scope: !4071, inlinedAt: !3958)
!4071 = distinct !DILexicalBlock(scope: !3884, file: !550, line: 232, column: 27)
!4072 = !DILocation(line: 232, column: 27, scope: !3884, inlinedAt: !3958)
!4073 = !DILocation(line: 236, column: 27, scope: !4074, inlinedAt: !3958)
!4074 = distinct !DILexicalBlock(scope: !4071, file: !550, line: 233, column: 25)
!4075 = !DILocation(line: 237, column: 27, scope: !4074, inlinedAt: !3958)
!4076 = !DILocation(line: 239, column: 39, scope: !3884, inlinedAt: !3958)
!4077 = !DILocation(line: 239, column: 50, scope: !3884, inlinedAt: !3958)
!4078 = !DILocation(line: 239, column: 61, scope: !3884, inlinedAt: !3958)
!4079 = !DILocalVariable(name: "__dest", arg: 1, scope: !4080, file: !4081, line: 107, type: !4084)
!4080 = distinct !DISubprogram(name: "strcpy", scope: !4081, file: !4081, line: 107, type: !4082, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !206, variables: !4086)
!4081 = !DIFile(filename: "/usr/include/bits/string3.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4082 = !DISubroutineType(types: !4083)
!4083 = !{!6, !4084, !4085}
!4084 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !6)
!4085 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !17)
!4086 = !{!4079, !4087}
!4087 = !DILocalVariable(name: "__src", arg: 2, scope: !4080, file: !4081, line: 107, type: !4085)
!4088 = !DILocation(line: 107, column: 1, scope: !4080, inlinedAt: !4089)
!4089 = distinct !DILocation(line: 239, column: 23, scope: !3884, inlinedAt: !3958)
!4090 = !DILocation(line: 109, column: 49, scope: !4080, inlinedAt: !4089)
!4091 = !DILocation(line: 109, column: 10, scope: !4080, inlinedAt: !4089)
!4092 = !DILocation(line: 107, column: 1, scope: !4080, inlinedAt: !4093)
!4093 = distinct !DILocation(line: 240, column: 23, scope: !3884, inlinedAt: !3958)
!4094 = !DILocation(line: 109, column: 49, scope: !4080, inlinedAt: !4093)
!4095 = !DILocation(line: 109, column: 10, scope: !4080, inlinedAt: !4093)
!4096 = !DILocation(line: 241, column: 21, scope: !3885, inlinedAt: !3958)
!4097 = !DILocation(line: 242, column: 19, scope: !3887, inlinedAt: !3958)
!4098 = !DILocation(line: 243, column: 32, scope: !4099, inlinedAt: !3958)
!4099 = distinct !DILexicalBlock(scope: !3887, file: !550, line: 243, column: 23)
!4100 = !DILocation(line: 243, column: 23, scope: !3887, inlinedAt: !3958)
!4101 = !DILocation(line: 247, column: 33, scope: !4102, inlinedAt: !3958)
!4102 = distinct !DILexicalBlock(scope: !4099, file: !550, line: 246, column: 21)
!4103 = !DILocation(line: 247, column: 45, scope: !4102, inlinedAt: !3958)
!4104 = !DILocation(line: 253, column: 11, scope: !3891, inlinedAt: !3958)
!4105 = !DILocation(line: 377, column: 23, scope: !3893, inlinedAt: !3958)
!4106 = !DILocation(line: 378, column: 5, scope: !3893, inlinedAt: !3958)
!4107 = !DILocation(line: 396, column: 15, scope: !3871)
!4108 = !DILocation(line: 590, column: 8, scope: !3880)
!4109 = !DILocation(line: 590, column: 17, scope: !3880)
!4110 = !DILocation(line: 589, column: 3, scope: !4111)
!4111 = !DILexicalBlockFile(scope: !3881, file: !550, discriminator: 1)
!4112 = !DILocation(line: 592, column: 9, scope: !3878)
!4113 = !DILocation(line: 592, column: 35, scope: !3879)
!4114 = !DILocation(line: 593, column: 9, scope: !3879)
!4115 = !DILocation(line: 593, column: 24, scope: !4116)
!4116 = !DILexicalBlockFile(scope: !3879, file: !550, discriminator: 1)
!4117 = !DILocation(line: 593, column: 31, scope: !4116)
!4118 = !DILocation(line: 593, column: 34, scope: !4119)
!4119 = !DILexicalBlockFile(scope: !3879, file: !550, discriminator: 2)
!4120 = !DILocation(line: 593, column: 45, scope: !4119)
!4121 = !DILocation(line: 592, column: 9, scope: !4122)
!4122 = !DILexicalBlockFile(scope: !3880, file: !550, discriminator: 1)
!4123 = !DILocation(line: 595, column: 29, scope: !4124)
!4124 = distinct !DILexicalBlock(scope: !3879, file: !550, line: 594, column: 7)
!4125 = !DILocation(line: 595, column: 27, scope: !4124)
!4126 = !DILocation(line: 595, column: 46, scope: !4124)
!4127 = !DILocation(line: 596, column: 9, scope: !4124)
!4128 = !DILocation(line: 591, column: 19, scope: !3880)
!4129 = !DILocation(line: 591, column: 36, scope: !3880)
!4130 = !DILocation(line: 591, column: 16, scope: !3880)
!4131 = !DILocation(line: 591, column: 52, scope: !4122)
!4132 = !DILocation(line: 591, column: 69, scope: !3880)
!4133 = !DILocation(line: 591, column: 49, scope: !3880)
!4134 = distinct !{!4134, !4135, !4136}
!4135 = !DILocation(line: 589, column: 3, scope: !3881)
!4136 = !DILocation(line: 597, column: 7, scope: !3881)
!4137 = !DILocation(line: 602, column: 7, scope: !4138)
!4138 = distinct !DILexicalBlock(scope: !3871, file: !550, line: 602, column: 7)
!4139 = !DILocation(line: 602, column: 18, scope: !4138)
!4140 = !DILocation(line: 602, column: 7, scope: !3871)
!4141 = !DILocation(line: 612, column: 3, scope: !3871)
!4142 = !DILocation(line: 66, column: 25, scope: !602)
!4143 = !DILocation(line: 66, column: 41, scope: !602)
!4144 = !DILocation(line: 66, column: 54, scope: !602)
!4145 = !DILocation(line: 68, column: 3, scope: !602)
!4146 = !DILocation(line: 81, column: 7, scope: !617)
!4147 = !DILocation(line: 81, column: 7, scope: !602)
!4148 = !DILocation(line: 68, column: 7, scope: !602)
!4149 = !DILocation(line: 84, column: 20, scope: !616)
!4150 = !DILocalVariable(name: "g", arg: 1, scope: !4151, file: !601, line: 43, type: !606)
!4151 = distinct !DISubprogram(name: "realloc_groupbuf", scope: !601, file: !601, line: 43, type: !4152, isLocal: true, isDefinition: true, scopeLine: 44, flags: DIFlagPrototyped, isOptimized: true, unit: !597, variables: !4154)
!4152 = !DISubroutineType(types: !4153)
!4153 = !{!606, !606, !9}
!4154 = !{!4150, !4155}
!4155 = !DILocalVariable(name: "num", arg: 2, scope: !4151, file: !601, line: 43, type: !9)
!4156 = !DILocation(line: 43, column: 26, scope: !4151, inlinedAt: !4157)
!4157 = distinct !DILocation(line: 86, column: 11, scope: !616)
!4158 = !DILocation(line: 43, column: 36, scope: !4151, inlinedAt: !4157)
!4159 = !DILocation(line: 51, column: 10, scope: !4151, inlinedAt: !4157)
!4160 = !DILocation(line: 87, column: 13, scope: !4161)
!4161 = distinct !DILexicalBlock(scope: !616, file: !601, line: 87, column: 11)
!4162 = !DILocation(line: 87, column: 11, scope: !616)
!4163 = !DILocation(line: 93, column: 31, scope: !615)
!4164 = !DILocation(line: 70, column: 10, scope: !602)
!4165 = !DILocation(line: 93, column: 15, scope: !615)
!4166 = !DILocation(line: 96, column: 16, scope: !615)
!4167 = !DILocation(line: 69, column: 7, scope: !602)
!4168 = !DILocation(line: 100, column: 18, scope: !4169)
!4169 = distinct !DILexicalBlock(scope: !615, file: !601, line: 100, column: 15)
!4170 = !DILocation(line: 100, column: 39, scope: !4171)
!4171 = !DILexicalBlockFile(scope: !4169, file: !601, discriminator: 1)
!4172 = !DILocation(line: 100, column: 22, scope: !4169)
!4173 = !DILocation(line: 101, column: 26, scope: !4169)
!4174 = !DILocation(line: 101, column: 13, scope: !4169)
!4175 = !DILocation(line: 103, column: 41, scope: !621)
!4176 = !DILocation(line: 43, column: 26, scope: !4151, inlinedAt: !4177)
!4177 = distinct !DILocation(line: 103, column: 20, scope: !621)
!4178 = !DILocation(line: 43, column: 36, scope: !4151, inlinedAt: !4177)
!4179 = !DILocation(line: 45, column: 7, scope: !4180, inlinedAt: !4177)
!4180 = distinct !DILexicalBlock(scope: !4151, file: !601, line: 45, column: 7)
!4181 = !DILocation(line: 45, column: 7, scope: !4151, inlinedAt: !4177)
!4182 = !DILocation(line: 47, column: 7, scope: !4183, inlinedAt: !4177)
!4183 = distinct !DILexicalBlock(scope: !4180, file: !601, line: 46, column: 5)
!4184 = !DILocation(line: 47, column: 13, scope: !4183, inlinedAt: !4177)
!4185 = !DILocation(line: 103, column: 15, scope: !615)
!4186 = !DILocation(line: 51, column: 26, scope: !4151, inlinedAt: !4177)
!4187 = !DILocation(line: 51, column: 10, scope: !4151, inlinedAt: !4177)
!4188 = !DILocation(line: 103, column: 56, scope: !621)
!4189 = !DILocation(line: 105, column: 33, scope: !620)
!4190 = !DILocation(line: 105, column: 19, scope: !620)
!4191 = !DILocation(line: 106, column: 15, scope: !620)
!4192 = !DILocation(line: 107, column: 21, scope: !620)
!4193 = !DILocation(line: 112, column: 17, scope: !4194)
!4194 = distinct !DILexicalBlock(scope: !615, file: !601, line: 112, column: 15)
!4195 = !DILocation(line: 112, column: 15, scope: !615)
!4196 = !DILocation(line: 114, column: 23, scope: !4197)
!4197 = distinct !DILexicalBlock(scope: !4194, file: !601, line: 113, column: 13)
!4198 = !DILocation(line: 117, column: 22, scope: !4197)
!4199 = !DILocation(line: 117, column: 15, scope: !4197)
!4200 = !DILocation(line: 126, column: 21, scope: !602)
!4201 = !DILocation(line: 124, column: 16, scope: !4202)
!4202 = !DILexicalBlockFile(scope: !602, file: !601, discriminator: 3)
!4203 = !DILocation(line: 131, column: 20, scope: !4204)
!4204 = distinct !DILexicalBlock(scope: !602, file: !601, line: 131, column: 7)
!4205 = !DILocation(line: 131, column: 7, scope: !602)
!4206 = !DILocation(line: 133, column: 11, scope: !4207)
!4207 = distinct !DILexicalBlock(scope: !4208, file: !601, line: 133, column: 11)
!4208 = distinct !DILexicalBlock(scope: !4204, file: !601, line: 132, column: 5)
!4209 = !DILocation(line: 133, column: 17, scope: !4207)
!4210 = !DILocation(line: 133, column: 27, scope: !4207)
!4211 = !DILocation(line: 43, column: 26, scope: !4151, inlinedAt: !4212)
!4212 = distinct !DILocation(line: 133, column: 35, scope: !4213)
!4213 = !DILexicalBlockFile(scope: !4207, file: !601, discriminator: 1)
!4214 = !DILocation(line: 43, column: 36, scope: !4151, inlinedAt: !4212)
!4215 = !DILocation(line: 51, column: 10, scope: !4151, inlinedAt: !4212)
!4216 = !DILocation(line: 133, column: 33, scope: !4213)
!4217 = !DILocation(line: 133, column: 11, scope: !4218)
!4218 = !DILexicalBlockFile(scope: !4208, file: !601, discriminator: 1)
!4219 = !DILocation(line: 135, column: 19, scope: !4220)
!4220 = distinct !DILexicalBlock(scope: !4207, file: !601, line: 134, column: 9)
!4221 = !DILocation(line: 136, column: 14, scope: !4220)
!4222 = !DILocation(line: 137, column: 22, scope: !4220)
!4223 = !DILocation(line: 137, column: 11, scope: !4220)
!4224 = !DILocation(line: 142, column: 20, scope: !4225)
!4225 = distinct !DILexicalBlock(scope: !602, file: !601, line: 142, column: 7)
!4226 = !DILocation(line: 142, column: 46, scope: !4227)
!4227 = !DILexicalBlockFile(scope: !4225, file: !601, discriminator: 2)
!4228 = !DILocation(line: 142, column: 25, scope: !4225)
!4229 = !DILocation(line: 143, column: 17, scope: !4225)
!4230 = !DILocation(line: 43, column: 26, scope: !4151, inlinedAt: !4231)
!4231 = distinct !DILocation(line: 144, column: 7, scope: !602)
!4232 = !DILocation(line: 43, column: 36, scope: !4151, inlinedAt: !4231)
!4233 = !DILocation(line: 45, column: 7, scope: !4180, inlinedAt: !4231)
!4234 = !DILocation(line: 45, column: 7, scope: !4151, inlinedAt: !4231)
!4235 = !DILocation(line: 47, column: 7, scope: !4183, inlinedAt: !4231)
!4236 = !DILocation(line: 47, column: 13, scope: !4183, inlinedAt: !4231)
!4237 = !DILocation(line: 145, column: 7, scope: !602)
!4238 = !DILocation(line: 144, column: 31, scope: !602)
!4239 = !DILocation(line: 51, column: 26, scope: !4151, inlinedAt: !4231)
!4240 = !DILocation(line: 51, column: 10, scope: !4151, inlinedAt: !4231)
!4241 = !DILocation(line: 145, column: 9, scope: !4242)
!4242 = distinct !DILexicalBlock(scope: !602, file: !601, line: 145, column: 7)
!4243 = !DILocation(line: 150, column: 42, scope: !602)
!4244 = !DILocation(line: 150, column: 35, scope: !602)
!4245 = !DILocation(line: 151, column: 35, scope: !602)
!4246 = !DILocation(line: 150, column: 11, scope: !602)
!4247 = !DILocation(line: 153, column: 10, scope: !624)
!4248 = !DILocation(line: 153, column: 7, scope: !602)
!4249 = !DILocation(line: 156, column: 25, scope: !623)
!4250 = !DILocation(line: 156, column: 11, scope: !623)
!4251 = !DILocation(line: 157, column: 7, scope: !623)
!4252 = !DILocation(line: 158, column: 13, scope: !623)
!4253 = !DILocation(line: 162, column: 17, scope: !4254)
!4254 = distinct !DILexicalBlock(scope: !602, file: !601, line: 162, column: 7)
!4255 = !DILocation(line: 164, column: 10, scope: !4256)
!4256 = distinct !DILexicalBlock(scope: !4254, file: !601, line: 163, column: 5)
!4257 = !DILocation(line: 165, column: 9, scope: !4256)
!4258 = !DILocation(line: 166, column: 5, scope: !4256)
!4259 = !DILocation(line: 167, column: 11, scope: !602)
!4260 = !DILocation(line: 185, column: 9, scope: !627)
!4261 = !DILocation(line: 185, column: 7, scope: !602)
!4262 = !DILocation(line: 187, column: 21, scope: !626)
!4263 = !DILocation(line: 187, column: 13, scope: !626)
!4264 = !DILocation(line: 189, column: 29, scope: !626)
!4265 = !DILocation(line: 189, column: 14, scope: !626)
!4266 = !DILocation(line: 188, column: 14, scope: !626)
!4267 = !DILocation(line: 191, column: 31, scope: !4268)
!4268 = !DILexicalBlockFile(scope: !4269, file: !601, discriminator: 1)
!4269 = distinct !DILexicalBlock(scope: !4270, file: !601, line: 191, column: 7)
!4270 = distinct !DILexicalBlock(scope: !626, file: !601, line: 191, column: 7)
!4271 = !DILocation(line: 191, column: 7, scope: !4272)
!4272 = !DILexicalBlockFile(scope: !4270, file: !601, discriminator: 1)
!4273 = !DILocation(line: 193, column: 15, scope: !4274)
!4274 = distinct !DILexicalBlock(scope: !4275, file: !601, line: 193, column: 15)
!4275 = distinct !DILexicalBlock(scope: !4269, file: !601, line: 192, column: 9)
!4276 = !DILocation(line: 193, column: 21, scope: !4274)
!4277 = !DILocation(line: 193, column: 39, scope: !4278)
!4278 = !DILexicalBlockFile(scope: !4274, file: !601, discriminator: 1)
!4279 = !DILocation(line: 193, column: 30, scope: !4274)
!4280 = !DILocation(line: 194, column: 15, scope: !4274)
!4281 = distinct !{!4281, !4282, !4283}
!4282 = !DILocation(line: 191, column: 7, scope: !4270)
!4283 = !DILocation(line: 197, column: 9, scope: !4270)
!4284 = !DILocation(line: 196, column: 14, scope: !4274)
!4285 = !DILocation(line: 196, column: 18, scope: !4274)
!4286 = !DILocation(line: 201, column: 1, scope: !602)
!4287 = distinct !DISubprogram(name: "rpl_fclose", scope: !4288, file: !4288, line: 56, type: !4289, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !633, variables: !4331)
!4288 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4289 = !DISubroutineType(types: !4290)
!4290 = !{!47, !4291}
!4291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4292, size: 64)
!4292 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3161, line: 49, baseType: !4293)
!4293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3163, line: 241, size: 1728, elements: !4294)
!4294 = !{!4295, !4296, !4297, !4298, !4299, !4300, !4301, !4302, !4303, !4304, !4305, !4306, !4307, !4315, !4316, !4317, !4318, !4319, !4320, !4321, !4322, !4323, !4324, !4325, !4326, !4327, !4328, !4329, !4330}
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4293, file: !3163, line: 242, baseType: !47, size: 32)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4293, file: !3163, line: 247, baseType: !6, size: 64, offset: 64)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4293, file: !3163, line: 248, baseType: !6, size: 64, offset: 128)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4293, file: !3163, line: 249, baseType: !6, size: 64, offset: 192)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4293, file: !3163, line: 250, baseType: !6, size: 64, offset: 256)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4293, file: !3163, line: 251, baseType: !6, size: 64, offset: 320)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4293, file: !3163, line: 252, baseType: !6, size: 64, offset: 384)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4293, file: !3163, line: 253, baseType: !6, size: 64, offset: 448)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4293, file: !3163, line: 254, baseType: !6, size: 64, offset: 512)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4293, file: !3163, line: 256, baseType: !6, size: 64, offset: 576)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4293, file: !3163, line: 257, baseType: !6, size: 64, offset: 640)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4293, file: !3163, line: 258, baseType: !6, size: 64, offset: 704)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4293, file: !3163, line: 260, baseType: !4308, size: 64, offset: 768)
!4308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4309, size: 64)
!4309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3163, line: 156, size: 192, elements: !4310)
!4310 = !{!4311, !4312, !4314}
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4309, file: !3163, line: 157, baseType: !4308, size: 64)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4309, file: !3163, line: 158, baseType: !4313, size: 64, offset: 64)
!4313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4293, size: 64)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4309, file: !3163, line: 162, baseType: !47, size: 32, offset: 128)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4293, file: !3163, line: 262, baseType: !4313, size: 64, offset: 832)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4293, file: !3163, line: 264, baseType: !47, size: 32, offset: 896)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4293, file: !3163, line: 268, baseType: !47, size: 32, offset: 928)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4293, file: !3163, line: 270, baseType: !3189, size: 64, offset: 960)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4293, file: !3163, line: 274, baseType: !152, size: 16, offset: 1024)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4293, file: !3163, line: 275, baseType: !3193, size: 8, offset: 1040)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4293, file: !3163, line: 276, baseType: !3195, size: 8, offset: 1048)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4293, file: !3163, line: 280, baseType: !3199, size: 64, offset: 1088)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4293, file: !3163, line: 289, baseType: !3202, size: 64, offset: 1152)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4293, file: !3163, line: 297, baseType: !8, size: 64, offset: 1216)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4293, file: !3163, line: 298, baseType: !8, size: 64, offset: 1280)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4293, file: !3163, line: 299, baseType: !8, size: 64, offset: 1344)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4293, file: !3163, line: 300, baseType: !8, size: 64, offset: 1408)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4293, file: !3163, line: 302, baseType: !9, size: 64, offset: 1472)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4293, file: !3163, line: 303, baseType: !47, size: 32, offset: 1536)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4293, file: !3163, line: 305, baseType: !3210, size: 160, offset: 1568)
!4331 = !{!4332, !4333, !4334, !4335}
!4332 = !DILocalVariable(name: "fp", arg: 1, scope: !4287, file: !4288, line: 56, type: !4291)
!4333 = !DILocalVariable(name: "saved_errno", scope: !4287, file: !4288, line: 58, type: !47)
!4334 = !DILocalVariable(name: "fd", scope: !4287, file: !4288, line: 59, type: !47)
!4335 = !DILocalVariable(name: "result", scope: !4287, file: !4288, line: 60, type: !47)
!4336 = !DILocation(line: 56, column: 19, scope: !4287)
!4337 = !DILocation(line: 58, column: 7, scope: !4287)
!4338 = !DILocation(line: 60, column: 7, scope: !4287)
!4339 = !DILocation(line: 63, column: 8, scope: !4287)
!4340 = !DILocation(line: 59, column: 7, scope: !4287)
!4341 = !DILocation(line: 64, column: 10, scope: !4342)
!4342 = distinct !DILexicalBlock(scope: !4287, file: !4288, line: 64, column: 7)
!4343 = !DILocation(line: 64, column: 7, scope: !4287)
!4344 = !DILocation(line: 65, column: 12, scope: !4342)
!4345 = !DILocation(line: 65, column: 5, scope: !4342)
!4346 = !DILocation(line: 70, column: 9, scope: !4347)
!4347 = distinct !DILexicalBlock(scope: !4287, file: !4288, line: 70, column: 7)
!4348 = !DILocation(line: 70, column: 23, scope: !4347)
!4349 = !DILocation(line: 70, column: 33, scope: !4350)
!4350 = !DILexicalBlockFile(scope: !4347, file: !4288, discriminator: 1)
!4351 = !DILocation(line: 70, column: 26, scope: !4352)
!4352 = !DILexicalBlockFile(scope: !4347, file: !4288, discriminator: 3)
!4353 = !DILocation(line: 70, column: 59, scope: !4350)
!4354 = !DILocation(line: 71, column: 7, scope: !4347)
!4355 = !DILocation(line: 71, column: 10, scope: !4350)
!4356 = !DILocation(line: 70, column: 7, scope: !4357)
!4357 = !DILexicalBlockFile(scope: !4287, file: !4288, discriminator: 2)
!4358 = !DILocation(line: 98, column: 12, scope: !4287)
!4359 = !DILocation(line: 103, column: 7, scope: !4287)
!4360 = !DILocation(line: 72, column: 19, scope: !4347)
!4361 = !DILocation(line: 103, column: 19, scope: !4362)
!4362 = distinct !DILexicalBlock(scope: !4287, file: !4288, line: 103, column: 7)
!4363 = !DILocation(line: 105, column: 13, scope: !4364)
!4364 = distinct !DILexicalBlock(scope: !4362, file: !4288, line: 104, column: 5)
!4365 = !DILocation(line: 107, column: 5, scope: !4364)
!4366 = !DILocation(line: 110, column: 1, scope: !4287)
!4367 = distinct !DISubprogram(name: "rpl_fflush", scope: !4368, file: !4368, line: 127, type: !4369, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !635, variables: !4411)
!4368 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4369 = !DISubroutineType(types: !4370)
!4370 = !{!47, !4371}
!4371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4372, size: 64)
!4372 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3161, line: 49, baseType: !4373)
!4373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3163, line: 241, size: 1728, elements: !4374)
!4374 = !{!4375, !4376, !4377, !4378, !4379, !4380, !4381, !4382, !4383, !4384, !4385, !4386, !4387, !4395, !4396, !4397, !4398, !4399, !4400, !4401, !4402, !4403, !4404, !4405, !4406, !4407, !4408, !4409, !4410}
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4373, file: !3163, line: 242, baseType: !47, size: 32)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4373, file: !3163, line: 247, baseType: !6, size: 64, offset: 64)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4373, file: !3163, line: 248, baseType: !6, size: 64, offset: 128)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4373, file: !3163, line: 249, baseType: !6, size: 64, offset: 192)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4373, file: !3163, line: 250, baseType: !6, size: 64, offset: 256)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4373, file: !3163, line: 251, baseType: !6, size: 64, offset: 320)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4373, file: !3163, line: 252, baseType: !6, size: 64, offset: 384)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4373, file: !3163, line: 253, baseType: !6, size: 64, offset: 448)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4373, file: !3163, line: 254, baseType: !6, size: 64, offset: 512)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4373, file: !3163, line: 256, baseType: !6, size: 64, offset: 576)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4373, file: !3163, line: 257, baseType: !6, size: 64, offset: 640)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4373, file: !3163, line: 258, baseType: !6, size: 64, offset: 704)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4373, file: !3163, line: 260, baseType: !4388, size: 64, offset: 768)
!4388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4389, size: 64)
!4389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3163, line: 156, size: 192, elements: !4390)
!4390 = !{!4391, !4392, !4394}
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4389, file: !3163, line: 157, baseType: !4388, size: 64)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4389, file: !3163, line: 158, baseType: !4393, size: 64, offset: 64)
!4393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4373, size: 64)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4389, file: !3163, line: 162, baseType: !47, size: 32, offset: 128)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4373, file: !3163, line: 262, baseType: !4393, size: 64, offset: 832)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4373, file: !3163, line: 264, baseType: !47, size: 32, offset: 896)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4373, file: !3163, line: 268, baseType: !47, size: 32, offset: 928)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4373, file: !3163, line: 270, baseType: !3189, size: 64, offset: 960)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4373, file: !3163, line: 274, baseType: !152, size: 16, offset: 1024)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4373, file: !3163, line: 275, baseType: !3193, size: 8, offset: 1040)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4373, file: !3163, line: 276, baseType: !3195, size: 8, offset: 1048)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4373, file: !3163, line: 280, baseType: !3199, size: 64, offset: 1088)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4373, file: !3163, line: 289, baseType: !3202, size: 64, offset: 1152)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4373, file: !3163, line: 297, baseType: !8, size: 64, offset: 1216)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4373, file: !3163, line: 298, baseType: !8, size: 64, offset: 1280)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4373, file: !3163, line: 299, baseType: !8, size: 64, offset: 1344)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4373, file: !3163, line: 300, baseType: !8, size: 64, offset: 1408)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4373, file: !3163, line: 302, baseType: !9, size: 64, offset: 1472)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4373, file: !3163, line: 303, baseType: !47, size: 32, offset: 1536)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4373, file: !3163, line: 305, baseType: !3210, size: 160, offset: 1568)
!4411 = !{!4412}
!4412 = !DILocalVariable(name: "stream", arg: 1, scope: !4367, file: !4368, line: 127, type: !4371)
!4413 = !DILocation(line: 127, column: 19, scope: !4367)
!4414 = !DILocation(line: 148, column: 14, scope: !4415)
!4415 = distinct !DILexicalBlock(scope: !4367, file: !4368, line: 148, column: 7)
!4416 = !DILocation(line: 148, column: 22, scope: !4415)
!4417 = !DILocation(line: 148, column: 27, scope: !4418)
!4418 = !DILexicalBlockFile(scope: !4415, file: !4368, discriminator: 1)
!4419 = !DILocation(line: 148, column: 7, scope: !4420)
!4420 = !DILexicalBlockFile(scope: !4367, file: !4368, discriminator: 1)
!4421 = !DILocation(line: 149, column: 12, scope: !4415)
!4422 = !DILocation(line: 149, column: 5, scope: !4415)
!4423 = !DILocalVariable(name: "fp", arg: 1, scope: !4424, file: !4368, line: 40, type: !4371)
!4424 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !4368, file: !4368, line: 40, type: !4425, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !635, variables: !4427)
!4425 = !DISubroutineType(types: !4426)
!4426 = !{null, !4371}
!4427 = !{!4423}
!4428 = !DILocation(line: 40, column: 48, scope: !4424, inlinedAt: !4429)
!4429 = distinct !DILocation(line: 153, column: 3, scope: !4367)
!4430 = !DILocation(line: 42, column: 11, scope: !4431, inlinedAt: !4429)
!4431 = distinct !DILexicalBlock(scope: !4424, file: !4368, line: 42, column: 7)
!4432 = !DILocation(line: 42, column: 18, scope: !4431, inlinedAt: !4429)
!4433 = !DILocation(line: 42, column: 7, scope: !4424, inlinedAt: !4429)
!4434 = !DILocation(line: 44, column: 5, scope: !4431, inlinedAt: !4429)
!4435 = !DILocation(line: 155, column: 10, scope: !4367)
!4436 = !DILocation(line: 155, column: 3, scope: !4367)
!4437 = !DILocation(line: 229, column: 1, scope: !4367)
!4438 = distinct !DISubprogram(name: "rpl_fseeko", scope: !4439, file: !4439, line: 28, type: !4440, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !637, variables: !4483)
!4439 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4440 = !DISubroutineType(types: !4441)
!4441 = !{!47, !4442, !4482, !47}
!4442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4443, size: 64)
!4443 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3161, line: 49, baseType: !4444)
!4444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3163, line: 241, size: 1728, elements: !4445)
!4445 = !{!4446, !4447, !4448, !4449, !4450, !4451, !4452, !4453, !4454, !4455, !4456, !4457, !4458, !4466, !4467, !4468, !4469, !4470, !4471, !4472, !4473, !4474, !4475, !4476, !4477, !4478, !4479, !4480, !4481}
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4444, file: !3163, line: 242, baseType: !47, size: 32)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4444, file: !3163, line: 247, baseType: !6, size: 64, offset: 64)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4444, file: !3163, line: 248, baseType: !6, size: 64, offset: 128)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4444, file: !3163, line: 249, baseType: !6, size: 64, offset: 192)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4444, file: !3163, line: 250, baseType: !6, size: 64, offset: 256)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4444, file: !3163, line: 251, baseType: !6, size: 64, offset: 320)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4444, file: !3163, line: 252, baseType: !6, size: 64, offset: 384)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4444, file: !3163, line: 253, baseType: !6, size: 64, offset: 448)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4444, file: !3163, line: 254, baseType: !6, size: 64, offset: 512)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4444, file: !3163, line: 256, baseType: !6, size: 64, offset: 576)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4444, file: !3163, line: 257, baseType: !6, size: 64, offset: 640)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4444, file: !3163, line: 258, baseType: !6, size: 64, offset: 704)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4444, file: !3163, line: 260, baseType: !4459, size: 64, offset: 768)
!4459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4460, size: 64)
!4460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3163, line: 156, size: 192, elements: !4461)
!4461 = !{!4462, !4463, !4465}
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4460, file: !3163, line: 157, baseType: !4459, size: 64)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4460, file: !3163, line: 158, baseType: !4464, size: 64, offset: 64)
!4464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4444, size: 64)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4460, file: !3163, line: 162, baseType: !47, size: 32, offset: 128)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4444, file: !3163, line: 262, baseType: !4464, size: 64, offset: 832)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4444, file: !3163, line: 264, baseType: !47, size: 32, offset: 896)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4444, file: !3163, line: 268, baseType: !47, size: 32, offset: 928)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4444, file: !3163, line: 270, baseType: !3189, size: 64, offset: 960)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4444, file: !3163, line: 274, baseType: !152, size: 16, offset: 1024)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4444, file: !3163, line: 275, baseType: !3193, size: 8, offset: 1040)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4444, file: !3163, line: 276, baseType: !3195, size: 8, offset: 1048)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4444, file: !3163, line: 280, baseType: !3199, size: 64, offset: 1088)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4444, file: !3163, line: 289, baseType: !3202, size: 64, offset: 1152)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4444, file: !3163, line: 297, baseType: !8, size: 64, offset: 1216)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4444, file: !3163, line: 298, baseType: !8, size: 64, offset: 1280)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4444, file: !3163, line: 299, baseType: !8, size: 64, offset: 1344)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4444, file: !3163, line: 300, baseType: !8, size: 64, offset: 1408)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4444, file: !3163, line: 302, baseType: !9, size: 64, offset: 1472)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4444, file: !3163, line: 303, baseType: !47, size: 32, offset: 1536)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4444, file: !3163, line: 305, baseType: !3210, size: 160, offset: 1568)
!4482 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !3161, line: 91, baseType: !3189)
!4483 = !{!4484, !4485, !4486, !4487}
!4484 = !DILocalVariable(name: "fp", arg: 1, scope: !4438, file: !4439, line: 28, type: !4442)
!4485 = !DILocalVariable(name: "offset", arg: 2, scope: !4438, file: !4439, line: 28, type: !4482)
!4486 = !DILocalVariable(name: "whence", arg: 3, scope: !4438, file: !4439, line: 28, type: !47)
!4487 = !DILocalVariable(name: "pos", scope: !4488, file: !4439, line: 116, type: !4482)
!4488 = distinct !DILexicalBlock(scope: !4489, file: !4439, line: 112, column: 5)
!4489 = distinct !DILexicalBlock(scope: !4438, file: !4439, line: 51, column: 7)
!4490 = !DILocation(line: 28, column: 15, scope: !4438)
!4491 = !DILocation(line: 28, column: 25, scope: !4438)
!4492 = !DILocation(line: 28, column: 37, scope: !4438)
!4493 = !DILocation(line: 51, column: 11, scope: !4489)
!4494 = !DILocation(line: 51, column: 31, scope: !4489)
!4495 = !DILocation(line: 51, column: 24, scope: !4489)
!4496 = !DILocation(line: 52, column: 7, scope: !4489)
!4497 = !DILocation(line: 52, column: 14, scope: !4498)
!4498 = !DILexicalBlockFile(scope: !4489, file: !4439, discriminator: 1)
!4499 = !DILocation(line: 52, column: 35, scope: !4498)
!4500 = !{!815, !658, i64 32}
!4501 = !DILocation(line: 52, column: 28, scope: !4498)
!4502 = !DILocation(line: 53, column: 7, scope: !4489)
!4503 = !DILocation(line: 53, column: 14, scope: !4498)
!4504 = !{!815, !658, i64 72}
!4505 = !DILocation(line: 53, column: 28, scope: !4498)
!4506 = !DILocation(line: 51, column: 7, scope: !4507)
!4507 = !DILexicalBlockFile(scope: !4438, file: !4439, discriminator: 1)
!4508 = !DILocation(line: 116, column: 26, scope: !4488)
!4509 = !DILocation(line: 116, column: 19, scope: !4510)
!4510 = !DILexicalBlockFile(scope: !4488, file: !4439, discriminator: 1)
!4511 = !DILocation(line: 116, column: 13, scope: !4488)
!4512 = !DILocation(line: 117, column: 15, scope: !4513)
!4513 = distinct !DILexicalBlock(scope: !4488, file: !4439, line: 117, column: 11)
!4514 = !DILocation(line: 117, column: 11, scope: !4488)
!4515 = !DILocation(line: 127, column: 11, scope: !4488)
!4516 = !DILocation(line: 127, column: 18, scope: !4488)
!4517 = !DILocation(line: 128, column: 11, scope: !4488)
!4518 = !DILocation(line: 128, column: 19, scope: !4488)
!4519 = !{!815, !816, i64 144}
!4520 = !DILocation(line: 159, column: 7, scope: !4488)
!4521 = !DILocation(line: 161, column: 10, scope: !4438)
!4522 = !DILocation(line: 161, column: 3, scope: !4438)
!4523 = !DILocation(line: 162, column: 1, scope: !4438)
