; ModuleID = 'coreutils-8.27/src/pathchk.bc'
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
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Usage: %s [OPTION]... NAME...\0A\00", align 1
@.str.2 = private unnamed_addr constant [228 x i8] c"Diagnose invalid or unportable file names.\0A\0A  -p                  check for most POSIX systems\0A  -P                  check for empty names and leading \22-\22\0A      --portability   check for all POSIX systems (equivalent to -p -P)\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"pathchk\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.24 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.26 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.27 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.28 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"+pP\00", align 1
@longopts = internal constant [4 x %struct.option] [%struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i32 0, i32 0), i32 0, i32* null, i32 128 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !0
@.str.11 = private unnamed_addr constant [12 x i8] c"Paul Eggert\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"Jim Meyering\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.14 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1
@.str.40 = private unnamed_addr constant [43 x i8] c"leading '-' in a component of file name %s\00", align 1
@.str.33 = private unnamed_addr constant [16 x i8] c"empty file name\00", align 1
@.str.41 = private unnamed_addr constant [67 x i8] c"/ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789._-\00", align 1
@.str.42 = private unnamed_addr constant [41 x i8] c"nonportable character %s in file name %s\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.35 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.36 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.37 = private unnamed_addr constant [49 x i8] c"%s: unable to determine maximum file name length\00", align 1
@.str.38 = private unnamed_addr constant [49 x i8] c"limit %lu exceeded by length %lu of file name %s\00", align 1
@.str.39 = private unnamed_addr constant [59 x i8] c"limit %lu exceeded by length %lu of file name component %s\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"portability\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), align 8, !dbg !101
@.str.15 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !107
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !112
@.str.18 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.19 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.20 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !116
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !123
@.str.43 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.44 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.45 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.47, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.48, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.49, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.50, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.51, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.52, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.53, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.54, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.55, i32 0, i32 0), i8* null], align 16, !dbg !130
@.str.46 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.47 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.48 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.49 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.50 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.51 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.52 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.53 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.54 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.55 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !158
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !165
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !178
@.str.11.56 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.57 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.58 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.59 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.60 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.61 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !185
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !192
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !180
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !194
@.str.74 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.75 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.76 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.77 = private unnamed_addr constant [203 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.78 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.79 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.80 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.81 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.82 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.83 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.84 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.85 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.86 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.87 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.90 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.91 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.92 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.93 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !200
@.str.1.104 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.105 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !209
@.str.1.116 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.119 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !228
@.str.3.120 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.121 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.122 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.123 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.124 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.125 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) local_unnamed_addr #0 !dbg !623 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !627, metadata !628), !dbg !629
  %2 = icmp eq i32 %0, 0, !dbg !630
  br i1 %2, label %8, label %3, !dbg !632

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !633, !tbaa !636
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #10, !dbg !633
  %6 = load i8*, i8** @program_name, align 8, !dbg !633, !tbaa !636
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #10, !dbg !640
  br label %36, !dbg !642

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 5) #10, !dbg !644
  %10 = load i8*, i8** @program_name, align 8, !dbg !644, !tbaa !636
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10) #10, !dbg !646
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([228 x i8], [228 x i8]* @.str.2, i64 0, i64 0), i32 5) #10, !dbg !648
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !648, !tbaa !636
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #10, !dbg !649
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 5) #10, !dbg !650
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !650, !tbaa !636
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #10, !dbg !651
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 5) #10, !dbg !652
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !652, !tbaa !636
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #10, !dbg !653
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !66, metadata !628) #10, !dbg !654
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i64 0, metadata !66, metadata !628) #10, !dbg !654
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i64 0, i64 0), i32 5) #10, !dbg !656
  %22 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %21, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.24, i64 0, i64 0)) #10, !dbg !657
  %23 = tail call i8* @setlocale(i32 5, i8* null) #10, !dbg !659
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !77, metadata !628) #10, !dbg !660
  %24 = icmp eq i8* %23, null, !dbg !661
  br i1 %24, label %31, label %25, !dbg !662

; <label>:25:                                     ; preds = %8
  %26 = tail call i32 @strncmp(i8* nonnull %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0), i64 3) #13, !dbg !663
  %27 = icmp eq i32 %26, 0, !dbg !663
  br i1 %27, label %31, label %28, !dbg !665

; <label>:28:                                     ; preds = %25
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.26, i64 0, i64 0), i32 5) #10, !dbg !667
  %30 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0)) #10, !dbg !669
  br label %31, !dbg !671

; <label>:31:                                     ; preds = %8, %25, %28
  %32 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.27, i64 0, i64 0), i32 5) #10, !dbg !672
  %33 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %32, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0)) #10, !dbg !673
  %34 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.28, i64 0, i64 0), i32 5) #10, !dbg !674
  %35 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %34, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i64 0, i64 0)) #10, !dbg !675
  br label %36

; <label>:36:                                     ; preds = %31, %3
  tail call void @exit(i32 %0) #14, !dbg !676
  unreachable, !dbg !676
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
define i32 @main(i32, i8**) local_unnamed_addr #6 !dbg !677 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.stat, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !682, metadata !628), !dbg !688
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !683, metadata !628), !dbg !689
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !684, metadata !628), !dbg !690
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !685, metadata !628), !dbg !691
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !686, metadata !628), !dbg !692
  %5 = load i8*, i8** %1, align 8, !dbg !693, !tbaa !636
  tail call void @set_program_name(i8* %5) #10, !dbg !694
  %6 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)) #10, !dbg !695
  %7 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0)) #10, !dbg !696
  %8 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0)) #10, !dbg !697
  %9 = tail call i32 @atexit(void ()* nonnull @close_stdout) #10, !dbg !698
  br label %11, !dbg !699

; <label>:10:                                     ; preds = %14
  br label %18, !dbg !692

; <label>:11:                                     ; preds = %18, %2
  %12 = phi i8 [ 0, %2 ], [ 1, %18 ]
  %13 = phi i8 [ 0, %2 ], [ %19, %18 ]
  br label %14, !dbg !692

; <label>:14:                                     ; preds = %14, %11
  %15 = phi i8 [ %13, %11 ], [ 1, %14 ]
  tail call void @llvm.dbg.value(metadata i8 %15, i64 0, metadata !686, metadata !628), !dbg !692
  tail call void @llvm.dbg.value(metadata i8 %12, i64 0, metadata !685, metadata !628), !dbg !691
  %16 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), %struct.option* getelementptr inbounds ([4 x %struct.option], [4 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #10, !dbg !700
  tail call void @llvm.dbg.value(metadata i32 %16, i64 0, metadata !687, metadata !628), !dbg !702
  switch i32 %16, label %24 [
    i32 -1, label %25
    i32 128, label %10
    i32 112, label %17
    i32 80, label %14
    i32 -130, label %20
    i32 -131, label %21
  ], !dbg !703, !llvm.loop !704

; <label>:17:                                     ; preds = %14
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !685, metadata !628), !dbg !691
  br label %18, !dbg !706

; <label>:18:                                     ; preds = %17, %10
  %19 = phi i8 [ %15, %17 ], [ 1, %10 ]
  br label %11, !dbg !692, !llvm.loop !704

; <label>:20:                                     ; preds = %14
  tail call void @usage(i32 0) #15, !dbg !709
  unreachable, !dbg !709

; <label>:21:                                     ; preds = %14
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !710, !tbaa !636
  %23 = load i8*, i8** @Version, align 8, !dbg !710, !tbaa !636
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i8* %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0), i8* null) #10, !dbg !710
  tail call void @exit(i32 0) #14, !dbg !711
  unreachable, !dbg !710

; <label>:24:                                     ; preds = %14
  tail call void @usage(i32 1) #15, !dbg !713
  unreachable, !dbg !713

; <label>:25:                                     ; preds = %14
  %26 = load i32, i32* @optind, align 4, !dbg !714, !tbaa !716
  %27 = icmp eq i32 %26, %0, !dbg !718
  br i1 %27, label %38, label %28, !dbg !719

; <label>:28:                                     ; preds = %25
  %29 = icmp slt i32 %26, %0, !dbg !720
  br i1 %29, label %30, label %183, !dbg !724

; <label>:30:                                     ; preds = %28
  %31 = icmp ne i8 %12, 0
  %32 = icmp ne i8 %15, 0
  %33 = bitcast i64* %3 to %struct.__mbstate_t*
  %34 = bitcast i64* %3 to i8*
  %35 = icmp eq i8 %12, 0
  %36 = select i1 %31, i64 14, i64 0
  %37 = bitcast %struct.stat* %4 to i8*
  br label %40, !dbg !724

; <label>:38:                                     ; preds = %25
  %39 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 5) #10, !dbg !726
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %39) #10, !dbg !728
  tail call void @usage(i32 1) #15, !dbg !730
  unreachable, !dbg !730

; <label>:40:                                     ; preds = %30, %175
  %41 = phi i32 [ %26, %30 ], [ %179, %175 ]
  %42 = phi i1 [ true, %30 ], [ %177, %175 ]
  %43 = sext i32 %41 to i64, !dbg !731
  %44 = getelementptr inbounds i8*, i8** %1, i64 %43, !dbg !731
  %45 = load i8*, i8** %44, align 8, !dbg !731, !tbaa !636
  call void @llvm.dbg.value(metadata i8* %45, i64 0, metadata !732, metadata !628) #10, !dbg !820
  call void @llvm.dbg.value(metadata i1 %31, i64 0, metadata !737, metadata !822) #10, !dbg !823
  call void @llvm.dbg.value(metadata i1 %32, i64 0, metadata !738, metadata !822) #10, !dbg !824
  %46 = call i64 @strlen(i8* %45) #13, !dbg !825
  call void @llvm.dbg.value(metadata i64 %46, i64 0, metadata !739, metadata !628) #10, !dbg !826
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !742, metadata !628) #10, !dbg !827
  br i1 %32, label %47, label %66, !dbg !828

; <label>:47:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i8* %45, i64 0, metadata !830, metadata !628) #10, !dbg !836
  call void @llvm.dbg.value(metadata i8* %45, i64 0, metadata !835, metadata !628) #10, !dbg !839
  call void @llvm.dbg.value(metadata i8* %45, i64 0, metadata !835, metadata !628) #10, !dbg !839
  %48 = call i8* @strchr(i8* %45, i32 45) #10, !dbg !840
  call void @llvm.dbg.value(metadata i8* %48, i64 0, metadata !835, metadata !628) #10, !dbg !839
  %49 = icmp eq i8* %48, null, !dbg !844
  br i1 %49, label %66, label %50, !dbg !844

; <label>:50:                                     ; preds = %47
  br label %55, !dbg !846

; <label>:51:                                     ; preds = %58
  %52 = getelementptr inbounds i8, i8* %56, i64 1, !dbg !848
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !835, metadata !628) #10, !dbg !839
  %53 = call i8* @strchr(i8* %52, i32 45) #10, !dbg !840
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !835, metadata !628) #10, !dbg !839
  %54 = icmp eq i8* %53, null, !dbg !844
  br i1 %54, label %65, label %55, !dbg !844, !llvm.loop !850

; <label>:55:                                     ; preds = %50, %51
  %56 = phi i8* [ %53, %51 ], [ %48, %50 ]
  %57 = icmp eq i8* %56, %45, !dbg !846
  br i1 %57, label %62, label %58, !dbg !853

; <label>:58:                                     ; preds = %55
  %59 = getelementptr inbounds i8, i8* %56, i64 -1, !dbg !854
  %60 = load i8, i8* %59, align 1, !dbg !854, !tbaa !856
  %61 = icmp eq i8 %60, 47, !dbg !857
  br i1 %61, label %62, label %51, !dbg !858

; <label>:62:                                     ; preds = %58, %55
  %63 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.40, i64 0, i64 0), i32 5) #10, !dbg !859
  %64 = call i8* @quotearg_style(i32 4, i8* %45) #10, !dbg !861
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %63, i8* %64) #10, !dbg !862
  br label %175, !dbg !864

; <label>:65:                                     ; preds = %51
  br label %66, !dbg !866

; <label>:66:                                     ; preds = %65, %47, %40
  %67 = icmp eq i64 %46, 0, !dbg !866
  br i1 %31, label %70, label %68, !dbg !869

; <label>:68:                                     ; preds = %66
  %69 = and i1 %32, %67, !dbg !870
  br i1 %69, label %71, label %86, !dbg !870

; <label>:70:                                     ; preds = %66
  br i1 %67, label %71, label %73, !dbg !871

; <label>:71:                                     ; preds = %70, %68
  %72 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.33, i64 0, i64 0), i32 5) #10, !dbg !873
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %72) #10, !dbg !875
  br label %175, !dbg !877

; <label>:73:                                     ; preds = %70
  call void @llvm.dbg.value(metadata i8* %45, i64 0, metadata !878, metadata !628) #10, !dbg !900
  call void @llvm.dbg.value(metadata i64 %46, i64 0, metadata !883, metadata !628) #10, !dbg !904
  %74 = call i64 @strspn(i8* %45, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.41, i64 0, i64 0)) #10, !dbg !905
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !884, metadata !628) #10, !dbg !906
  %75 = getelementptr inbounds i8, i8* %45, i64 %74, !dbg !907
  call void @llvm.dbg.value(metadata i8* %75, i64 0, metadata !885, metadata !628) #10, !dbg !908
  %76 = load i8, i8* %75, align 1, !dbg !909, !tbaa !856
  %77 = icmp eq i8 %76, 0, !dbg !909
  br i1 %77, label %110, label %78, !dbg !910

; <label>:78:                                     ; preds = %73
  call void @llvm.lifetime.start(i64 8, i8* nonnull %34) #10, !dbg !911
  store i64 0, i64* %3, align 8, !dbg !912
  %79 = sub i64 %46, %74, !dbg !913
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %33, i64 0, metadata !886, metadata !914) #10, !dbg !912
  %80 = call i64 @rpl_mbrlen(i8* %75, i64 %79, %struct.__mbstate_t* nonnull %33) #10, !dbg !915
  call void @llvm.dbg.value(metadata i64 %80, i64 0, metadata !899, metadata !628) #10, !dbg !916
  %81 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.42, i64 0, i64 0), i32 5) #10, !dbg !917
  %82 = icmp ult i64 %80, 17, !dbg !918
  %83 = select i1 %82, i64 %80, i64 1, !dbg !919
  %84 = call i8* @quotearg_n_style_mem(i32 1, i32 8, i8* %75, i64 %83) #10, !dbg !920
  %85 = call i8* @quotearg_n_style(i32 0, i32 4, i8* nonnull %45) #10, !dbg !922
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %81, i8* %84, i8* %85) #10, !dbg !923
  call void @llvm.lifetime.end(i64 8, i8* nonnull %34) #10, !dbg !924
  br label %175, !dbg !925

; <label>:86:                                     ; preds = %68
  call void @llvm.lifetime.start(i64 144, i8* nonnull %37) #10, !dbg !926
  call void @llvm.dbg.value(metadata %struct.stat* %4, i64 0, metadata !743, metadata !914) #10, !dbg !927
  call void @llvm.dbg.value(metadata i8* %45, i64 0, metadata !928, metadata !628) #10, !dbg !936
  call void @llvm.dbg.value(metadata %struct.stat* %4, i64 0, metadata !935, metadata !628) #10, !dbg !936
  %87 = call i32 @__lxstat(i32 1, i8* nonnull %45, %struct.stat* nonnull %4) #10, !dbg !939
  %88 = icmp eq i32 %87, 0, !dbg !940
  br i1 %88, label %89, label %90, !dbg !941

; <label>:89:                                     ; preds = %86
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !742, metadata !628) #10, !dbg !827
  call void @llvm.lifetime.end(i64 144, i8* nonnull %37) #10, !dbg !942
  call void @llvm.dbg.value(metadata i8 %12, i64 0, metadata !741, metadata !628) #10, !dbg !943
  br label %135, !dbg !944

; <label>:90:                                     ; preds = %86
  %91 = tail call i32* @__errno_location() #1, !dbg !945
  %92 = load i32, i32* %91, align 4, !dbg !945, !tbaa !716
  %93 = icmp ne i32 %92, 2, !dbg !947
  %94 = or i1 %67, %93, !dbg !948
  br i1 %94, label %95, label %97, !dbg !948

; <label>:95:                                     ; preds = %90
  %96 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %45) #10, !dbg !949
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %92, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i64 0, i64 0), i8* %96) #10, !dbg !952
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !742, metadata !628) #10, !dbg !827
  call void @llvm.lifetime.end(i64 144, i8* nonnull %37) #10, !dbg !942
  br label %175

; <label>:97:                                     ; preds = %90
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !742, metadata !628) #10, !dbg !827
  call void @llvm.lifetime.end(i64 144, i8* nonnull %37) #10, !dbg !942
  %98 = icmp ugt i64 %46, 255, !dbg !954
  br i1 %98, label %99, label %118, !dbg !956

; <label>:99:                                     ; preds = %97
  %100 = load i8, i8* %45, align 1, !dbg !958, !tbaa !856
  %101 = icmp eq i8 %100, 47, !dbg !959
  %102 = select i1 %101, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i64 0, i64 0), !dbg !958
  call void @llvm.dbg.value(metadata i8* %102, i64 0, metadata !791, metadata !628) #10, !dbg !960
  store i32 0, i32* %91, align 4, !dbg !961, !tbaa !716
  %103 = call i64 @pathconf(i8* %102, i32 4) #10, !dbg !962
  call void @llvm.dbg.value(metadata i64 %103, i64 0, metadata !788, metadata !628) #10, !dbg !963
  %104 = icmp slt i64 %103, 0, !dbg !964
  br i1 %104, label %105, label %110, !dbg !966

; <label>:105:                                    ; preds = %99
  %106 = load i32, i32* %91, align 4, !dbg !967, !tbaa !716
  %107 = icmp eq i32 %106, 0, !dbg !969
  br i1 %107, label %110, label %108, !dbg !970

; <label>:108:                                    ; preds = %105
  %109 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.37, i64 0, i64 0), i32 5) #10, !dbg !972
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %106, i8* %109, i8* %102) #10, !dbg !974
  call void @llvm.dbg.value(metadata i64 %103, i64 0, metadata !785, metadata !628) #10, !dbg !976
  br label %175

; <label>:110:                                    ; preds = %105, %99, %73
  %111 = phi i64 [ 256, %73 ], [ %103, %105 ], [ %103, %99 ]
  call void @llvm.dbg.value(metadata i64 %111, i64 0, metadata !785, metadata !628) #10, !dbg !976
  %112 = icmp ugt i64 %111, %46, !dbg !977
  br i1 %112, label %117, label %113, !dbg !978

; <label>:113:                                    ; preds = %110
  call void @llvm.dbg.value(metadata i64 %46, i64 0, metadata !792, metadata !628) #10, !dbg !979
  %114 = add i64 %111, -1, !dbg !980
  call void @llvm.dbg.value(metadata i64 %114, i64 0, metadata !795, metadata !628) #10, !dbg !981
  %115 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.38, i64 0, i64 0), i32 5) #10, !dbg !982
  %116 = call i8* @quotearg_style(i32 4, i8* nonnull %45) #10, !dbg !983
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %115, i64 %114, i64 %46, i8* %116) #10, !dbg !984
  br label %175

; <label>:117:                                    ; preds = %110
  call void @llvm.dbg.value(metadata i8 %12, i64 0, metadata !741, metadata !628) #10, !dbg !943
  br i1 %31, label %135, label %118, !dbg !944

; <label>:118:                                    ; preds = %97, %117
  br label %119, !dbg !986

; <label>:119:                                    ; preds = %118, %132
  %120 = phi i8* [ %128, %132 ], [ %45, %118 ]
  call void @llvm.dbg.value(metadata i8* %120, i64 0, metadata !740, metadata !628) #10, !dbg !986
  call void @llvm.dbg.value(metadata i8 %12, i64 0, metadata !741, metadata !628) #10, !dbg !943
  call void @llvm.dbg.value(metadata i8* %120, i64 0, metadata !987, metadata !628) #10, !dbg !992
  br label %121, !dbg !995

; <label>:121:                                    ; preds = %121, %119
  %122 = phi i8* [ %120, %119 ], [ %124, %121 ]
  call void @llvm.dbg.value(metadata i8* %122, i64 0, metadata !987, metadata !628) #10, !dbg !992
  %123 = load i8, i8* %122, align 1, !dbg !996, !tbaa !856
  %124 = getelementptr inbounds i8, i8* %122, i64 1, !dbg !998
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !987, metadata !628) #10, !dbg !992
  switch i8 %123, label %125 [
    i8 47, label %121
    i8 0, label %134
  ], !dbg !999

; <label>:125:                                    ; preds = %121
  br label %126, !dbg !1000

; <label>:126:                                    ; preds = %125, %130
  %127 = phi i64 [ %131, %130 ], [ 1, %125 ]
  call void @llvm.dbg.value(metadata i64 %127, i64 0, metadata !1006, metadata !628) #10, !dbg !1000
  %128 = getelementptr inbounds i8, i8* %122, i64 %127, !dbg !1008
  %129 = load i8, i8* %128, align 1, !dbg !1008, !tbaa !856
  switch i8 %129, label %130 [
    i8 47, label %132
    i8 0, label %132
  ], !dbg !1012

; <label>:130:                                    ; preds = %126
  %131 = add i64 %127, 1, !dbg !1013
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !1006, metadata !628) #10, !dbg !1000
  br label %126, !dbg !1015, !llvm.loop !1016

; <label>:132:                                    ; preds = %126, %126
  call void @llvm.dbg.value(metadata i64 %127, i64 0, metadata !796, metadata !628) #10, !dbg !1019
  %133 = icmp ugt i64 %127, 14, !dbg !1020
  call void @llvm.dbg.value(metadata i8* %128, i64 0, metadata !740, metadata !628) #10, !dbg !986
  br i1 %133, label %136, label %119, !llvm.loop !1022

; <label>:134:                                    ; preds = %121
  br label %135, !dbg !943

; <label>:135:                                    ; preds = %134, %117, %89
  call void @llvm.dbg.value(metadata i8 %12, i64 0, metadata !741, metadata !628) #10, !dbg !943
  br i1 %35, label %175, label %137, !dbg !1025

; <label>:136:                                    ; preds = %132
  br label %137, !dbg !986

; <label>:137:                                    ; preds = %136, %135
  br label %138, !dbg !986

; <label>:138:                                    ; preds = %137, %169
  %139 = phi i64 [ %161, %169 ], [ %36, %137 ]
  %140 = phi i64 [ %162, %169 ], [ 14, %137 ]
  %141 = phi i8* [ %165, %169 ], [ %45, %137 ]
  call void @llvm.dbg.value(metadata i8* %141, i64 0, metadata !740, metadata !628) #10, !dbg !986
  call void @llvm.dbg.value(metadata i64 %140, i64 0, metadata !802, metadata !628) #10, !dbg !1026
  call void @llvm.dbg.value(metadata i64 %139, i64 0, metadata !805, metadata !628) #10, !dbg !1027
  call void @llvm.dbg.value(metadata i8* %141, i64 0, metadata !987, metadata !628) #10, !dbg !1028
  br label %142, !dbg !1031

; <label>:142:                                    ; preds = %142, %138
  %143 = phi i8* [ %141, %138 ], [ %145, %142 ]
  call void @llvm.dbg.value(metadata i8* %143, i64 0, metadata !987, metadata !628) #10, !dbg !1028
  %144 = load i8, i8* %143, align 1, !dbg !1032, !tbaa !856
  %145 = getelementptr inbounds i8, i8* %143, i64 1, !dbg !1033
  call void @llvm.dbg.value(metadata i8* %145, i64 0, metadata !987, metadata !628) #10, !dbg !1028
  switch i8 %144, label %146 [
    i8 47, label %142
    i8 0, label %174
  ], !dbg !1034

; <label>:146:                                    ; preds = %142
  %147 = icmp eq i64 %139, 0, !dbg !1035
  br i1 %147, label %148, label %160, !dbg !1036

; <label>:148:                                    ; preds = %146
  %149 = icmp eq i8* %143, %45, !dbg !1037
  %150 = select i1 %149, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i64 0, i64 0), i8* %45, !dbg !1038
  call void @llvm.dbg.value(metadata i8* %150, i64 0, metadata !813, metadata !628) #10, !dbg !1039
  call void @llvm.dbg.value(metadata i8 %144, i64 0, metadata !814, metadata !628) #10, !dbg !1040
  %151 = tail call i32* @__errno_location() #1, !dbg !1041
  store i32 0, i32* %151, align 4, !dbg !1042, !tbaa !716
  store i8 0, i8* %143, align 1, !dbg !1043, !tbaa !856
  %152 = call i64 @pathconf(i8* %150, i32 3) #10, !dbg !1044
  call void @llvm.dbg.value(metadata i64 %152, i64 0, metadata !810, metadata !628) #10, !dbg !1045
  store i8 %144, i8* %143, align 1, !dbg !1046, !tbaa !856
  %153 = icmp sgt i64 %152, -1, !dbg !1047
  br i1 %153, label %160, label %154, !dbg !1049

; <label>:154:                                    ; preds = %148
  %155 = load i32, i32* %151, align 4, !dbg !1050, !tbaa !716
  switch i32 %155, label %157 [
    i32 0, label %160
    i32 2, label %156
  ], !dbg !1051

; <label>:156:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i64 %140, i64 0, metadata !805, metadata !628) #10, !dbg !1027
  br label %160, !dbg !1052

; <label>:157:                                    ; preds = %154
  store i8 0, i8* %143, align 1, !dbg !1054, !tbaa !856
  %158 = load i32, i32* %151, align 4, !dbg !1055, !tbaa !716
  %159 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %150) #10, !dbg !1056
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %158, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i64 0, i64 0), i8* %159) #10, !dbg !1058
  store i8 %144, i8* %143, align 1, !dbg !1060, !tbaa !856
  call void @llvm.dbg.value(metadata i64 %140, i64 0, metadata !802, metadata !628) #10, !dbg !1026
  call void @llvm.dbg.value(metadata i64 %139, i64 0, metadata !805, metadata !628) #10, !dbg !1027
  br label %175

; <label>:160:                                    ; preds = %156, %154, %148, %146
  %161 = phi i64 [ %139, %146 ], [ 0, %154 ], [ 0, %148 ], [ %140, %156 ]
  %162 = phi i64 [ %139, %146 ], [ -1, %154 ], [ %152, %148 ], [ %140, %156 ]
  call void @llvm.dbg.value(metadata i64 %162, i64 0, metadata !802, metadata !628) #10, !dbg !1026
  call void @llvm.dbg.value(metadata i64 %161, i64 0, metadata !805, metadata !628) #10, !dbg !1027
  call void @llvm.dbg.value(metadata i8* %143, i64 0, metadata !1005, metadata !628) #10, !dbg !1061
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1006, metadata !628) #10, !dbg !1063
  br label %163, !dbg !1064

; <label>:163:                                    ; preds = %167, %160
  %164 = phi i64 [ 1, %160 ], [ %168, %167 ]
  call void @llvm.dbg.value(metadata i64 %164, i64 0, metadata !1006, metadata !628) #10, !dbg !1063
  %165 = getelementptr inbounds i8, i8* %143, i64 %164, !dbg !1065
  %166 = load i8, i8* %165, align 1, !dbg !1065, !tbaa !856
  switch i8 %166, label %167 [
    i8 47, label %169
    i8 0, label %169
  ], !dbg !1066

; <label>:167:                                    ; preds = %163
  %168 = add i64 %164, 1, !dbg !1067
  call void @llvm.dbg.value(metadata i64 %168, i64 0, metadata !1006, metadata !628) #10, !dbg !1063
  br label %163, !dbg !1068, !llvm.loop !1016

; <label>:169:                                    ; preds = %163, %163
  call void @llvm.dbg.value(metadata i64 %164, i64 0, metadata !806, metadata !628) #10, !dbg !1069
  %170 = icmp ult i64 %162, %164, !dbg !1070
  br i1 %170, label %171, label %138, !dbg !1071

; <label>:171:                                    ; preds = %169
  call void @llvm.dbg.value(metadata i64 %164, i64 0, metadata !815, metadata !628) #10, !dbg !1072
  call void @llvm.dbg.value(metadata i64 %162, i64 0, metadata !818, metadata !628) #10, !dbg !1073
  call void @llvm.dbg.value(metadata i8 %166, i64 0, metadata !819, metadata !628) #10, !dbg !1074
  store i8 0, i8* %165, align 1, !dbg !1075, !tbaa !856
  %172 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.39, i64 0, i64 0), i32 5) #10, !dbg !1076
  %173 = call i8* @quote(i8* nonnull %143) #10, !dbg !1077
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %172, i64 %162, i64 %164, i8* %173) #10, !dbg !1078
  store i8 %166, i8* %165, align 1, !dbg !1079, !tbaa !856
  br label %175

; <label>:174:                                    ; preds = %142
  br label %175, !dbg !1080

; <label>:175:                                    ; preds = %174, %62, %71, %78, %95, %108, %113, %135, %157, %171
  %176 = phi i1 [ false, %71 ], [ false, %95 ], [ false, %62 ], [ false, %78 ], [ false, %171 ], [ false, %157 ], [ true, %135 ], [ false, %113 ], [ false, %108 ], [ true, %174 ]
  %177 = and i1 %42, %176, !dbg !1080
  %178 = load i32, i32* @optind, align 4, !dbg !1081, !tbaa !716
  %179 = add nsw i32 %178, 1, !dbg !1081
  store i32 %179, i32* @optind, align 4, !dbg !1081, !tbaa !716
  %180 = icmp slt i32 %179, %0, !dbg !720
  br i1 %180, label %40, label %181, !dbg !724, !llvm.loop !1083

; <label>:181:                                    ; preds = %175
  %182 = xor i1 %177, true, !dbg !1086
  br label %183, !dbg !1086

; <label>:183:                                    ; preds = %181, %28
  %184 = phi i1 [ false, %28 ], [ %182, %181 ]
  %185 = zext i1 %184 to i32, !dbg !1086
  ret i32 %185, !dbg !1087
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

; Function Attrs: nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i64 @strspn(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #7

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #7

; Function Attrs: nounwind
declare i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #8

; Function Attrs: nounwind
declare i64 @pathconf(i8*, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !1088 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1090, metadata !628), !dbg !1091
  store i8* %0, i8** @file_name, align 8, !dbg !1092, !tbaa !636
  ret void, !dbg !1093
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !1094 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !1098, metadata !822), !dbg !1099
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1100, !tbaa !1101
  ret void, !dbg !1103
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !1104 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1111, !tbaa !636
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #10, !dbg !1112
  %3 = icmp eq i32 %2, 0, !dbg !1113
  br i1 %3, label %21, label %4, !dbg !1114

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1115, !tbaa !1101, !range !1117
  %6 = icmp eq i8 %5, 0, !dbg !1115
  %7 = tail call i32* @__errno_location() #1, !dbg !1118
  br i1 %6, label %11, label %8, !dbg !1120

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !1121, !tbaa !716
  %10 = icmp eq i32 %9, 32, !dbg !1123
  br i1 %10, label %21, label %11, !dbg !1124

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0), i32 5) #10, !dbg !1126
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !1108, metadata !628), !dbg !1127
  %13 = load i8*, i8** @file_name, align 8, !dbg !1128, !tbaa !636
  %14 = icmp eq i8* %13, null, !dbg !1128
  %15 = load i32, i32* %7, align 4, !tbaa !716
  br i1 %14, label %18, label %16, !dbg !1129

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #10, !dbg !1130
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.19, i64 0, i64 0), i8* %17, i8* %12) #10, !dbg !1132
  br label %19, !dbg !1134

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.20, i64 0, i64 0), i8* %12) #10, !dbg !1135
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !1136, !tbaa !716
  tail call void @_exit(i32 %20) #14, !dbg !1137
  unreachable, !dbg !1137

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1138, !tbaa !636
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #10, !dbg !1140
  %24 = icmp eq i32 %23, 0, !dbg !1141
  br i1 %24, label %27, label %25, !dbg !1142

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !1143, !tbaa !716
  tail call void @_exit(i32 %26) #14, !dbg !1144
  unreachable, !dbg !1144

; <label>:27:                                     ; preds = %21
  ret void, !dbg !1145
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !1146 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1148, metadata !628), !dbg !1151
  %2 = icmp eq i8* %0, null, !dbg !1152
  br i1 %2, label %3, label %6, !dbg !1154

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1155, !tbaa !636
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.43, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #16, !dbg !1157
  tail call void @abort() #14, !dbg !1158
  unreachable, !dbg !1158

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #13, !dbg !1159
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1149, metadata !628), !dbg !1160
  %8 = icmp ne i8* %7, null, !dbg !1161
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1162
  %10 = select i1 %8, i8* %9, i8* %0, !dbg !1164
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1150, metadata !628), !dbg !1165
  %11 = ptrtoint i8* %10 to i64, !dbg !1166
  %12 = ptrtoint i8* %0 to i64, !dbg !1166
  %13 = sub i64 %11, %12, !dbg !1166
  %14 = icmp sgt i64 %13, 6, !dbg !1168
  br i1 %14, label %15, label %24, !dbg !1169

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1170
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.44, i64 0, i64 0), i64 7) #13, !dbg !1170
  %18 = icmp eq i32 %17, 0, !dbg !1172
  br i1 %18, label %19, label %24, !dbg !1173

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1148, metadata !628), !dbg !1151
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.45, i64 0, i64 0), i64 3) #13, !dbg !1174
  %21 = icmp eq i32 %20, 0, !dbg !1177
  br i1 %21, label %22, label %24, !dbg !1178

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1179
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !1148, metadata !628), !dbg !1151
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1181, !tbaa !636
  br label %24, !dbg !1182

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !1148, metadata !628), !dbg !1151
  store i8* %25, i8** @program_name, align 8, !dbg !1183, !tbaa !636
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1184, !tbaa !636
  ret void, !dbg !1185
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #10

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !1186 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1191, metadata !628), !dbg !1194
  %2 = tail call i32* @__errno_location() #1, !dbg !1195
  %3 = load i32, i32* %2, align 4, !dbg !1195, !tbaa !716
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !1192, metadata !628), !dbg !1196
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !1197
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !1198
  %6 = select i1 %4, i8* %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), !dbg !1198
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #10, !dbg !1200
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1200
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !1193, metadata !628), !dbg !1201
  store i32 %3, i32* %2, align 4, !dbg !1202, !tbaa !716
  ret %struct.quoting_options* %8, !dbg !1203
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #11 !dbg !1204 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1210, metadata !628), !dbg !1211
  %2 = icmp ne %struct.quoting_options* %0, null, !dbg !1212
  %3 = select i1 %2, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !1212
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1213
  %5 = load i32, i32* %4, align 8, !dbg !1213, !tbaa !1215
  ret i32 %5, !dbg !1217
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1218 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1222, metadata !628), !dbg !1224
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1223, metadata !628), !dbg !1225
  %3 = icmp ne %struct.quoting_options* %0, null, !dbg !1226
  %4 = select i1 %3, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !1226
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1227
  store i32 %1, i32* %5, align 8, !dbg !1229, !tbaa !1215
  ret void, !dbg !1230
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !1231 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1235, metadata !628), !dbg !1243
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1236, metadata !628), !dbg !1244
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !1237, metadata !628), !dbg !1245
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1238, metadata !628), !dbg !1246
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !1247
  %5 = select i1 %4, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !1247
  %6 = lshr i8 %1, 5, !dbg !1248
  %7 = zext i8 %6 to i64, !dbg !1248
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1250
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1239, metadata !628), !dbg !1251
  %9 = and i8 %1, 31, !dbg !1252
  %10 = zext i8 %9 to i32, !dbg !1253
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1241, metadata !628), !dbg !1254
  %11 = load i32, i32* %8, align 4, !dbg !1255, !tbaa !716
  %12 = lshr i32 %11, %10, !dbg !1256
  %13 = and i32 %12, 1, !dbg !1257
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1242, metadata !628), !dbg !1258
  %14 = and i32 %2, 1, !dbg !1259
  %15 = xor i32 %13, %14, !dbg !1260
  %16 = shl i32 %15, %10, !dbg !1261
  %17 = xor i32 %16, %11, !dbg !1262
  store i32 %17, i32* %8, align 4, !dbg !1262, !tbaa !716
  ret i32 %13, !dbg !1263
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1264 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1268, metadata !628), !dbg !1271
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1269, metadata !628), !dbg !1272
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1273
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1268, metadata !628), !dbg !1271
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1275
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1268, metadata !628), !dbg !1271
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1276
  %6 = load i32, i32* %5, align 4, !dbg !1276, !tbaa !1277
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1270, metadata !628), !dbg !1278
  store i32 %1, i32* %5, align 4, !dbg !1279, !tbaa !1277
  ret i32 %6, !dbg !1280
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !1281 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1285, metadata !628), !dbg !1288
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1286, metadata !628), !dbg !1289
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1287, metadata !628), !dbg !1290
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1291
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1285, metadata !628), !dbg !1288
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1293
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1285, metadata !628), !dbg !1288
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1294
  store i32 10, i32* %6, align 8, !dbg !1295, !tbaa !1215
  %7 = icmp ne i8* %1, null, !dbg !1296
  %8 = icmp ne i8* %2, null, !dbg !1298
  %9 = and i1 %7, %8, !dbg !1300
  br i1 %9, label %11, label %10, !dbg !1300

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !1301
  unreachable, !dbg !1301

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1302
  store i8* %1, i8** %12, align 8, !dbg !1303, !tbaa !1304
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1305
  store i8* %2, i8** %13, align 8, !dbg !1306, !tbaa !1307
  ret void, !dbg !1308
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !1309 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1313, metadata !628), !dbg !1321
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1314, metadata !628), !dbg !1322
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1315, metadata !628), !dbg !1323
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1316, metadata !628), !dbg !1324
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1317, metadata !628), !dbg !1325
  %6 = icmp ne %struct.quoting_options* %4, null, !dbg !1326
  %7 = select i1 %6, %struct.quoting_options* %4, %struct.quoting_options* @default_quoting_options, !dbg !1326
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !1318, metadata !628), !dbg !1327
  %8 = tail call i32* @__errno_location() #1, !dbg !1328
  %9 = load i32, i32* %8, align 4, !dbg !1328, !tbaa !716
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1319, metadata !628), !dbg !1329
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1330
  %11 = load i32, i32* %10, align 8, !dbg !1330, !tbaa !1215
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1331
  %13 = load i32, i32* %12, align 4, !dbg !1331, !tbaa !1277
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1332
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1333
  %16 = load i8*, i8** %15, align 8, !dbg !1333, !tbaa !1304
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1334
  %18 = load i8*, i8** %17, align 8, !dbg !1334, !tbaa !1307
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !1335
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1320, metadata !628), !dbg !1336
  store i32 %9, i32* %8, align 4, !dbg !1337, !tbaa !716
  ret i64 %19, !dbg !1338
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !1339 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1345, metadata !628), !dbg !1404
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1346, metadata !628), !dbg !1405
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1347, metadata !628), !dbg !1406
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1348, metadata !628), !dbg !1407
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !1349, metadata !628), !dbg !1408
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1350, metadata !628), !dbg !1409
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !1351, metadata !628), !dbg !1410
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1352, metadata !628), !dbg !1411
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !1353, metadata !628), !dbg !1412
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1355, metadata !628), !dbg !1413
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1356, metadata !628), !dbg !1414
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1357, metadata !628), !dbg !1415
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1358, metadata !628), !dbg !1416
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1359, metadata !628), !dbg !1417
  %13 = tail call i64 @__ctype_get_mb_cur_max() #10, !dbg !1418
  %14 = icmp eq i64 %13, 1, !dbg !1419
  %15 = lshr i32 %5, 1, !dbg !1420
  %16 = trunc i32 %15 to i8, !dbg !1420
  %17 = and i8 %16, 1, !dbg !1420
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !1361, metadata !628), !dbg !1420
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1362, metadata !628), !dbg !1421
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1363, metadata !628), !dbg !1422
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1364, metadata !628), !dbg !1423
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !1424

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !1346, metadata !628), !dbg !1405
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !1364, metadata !628), !dbg !1423
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !1363, metadata !628), !dbg !1422
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !1362, metadata !628), !dbg !1421
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1361, metadata !628), !dbg !1420
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !1348, metadata !628), !dbg !1407
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !1359, metadata !628), !dbg !1417
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !1358, metadata !628), !dbg !1416
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !1357, metadata !628), !dbg !1415
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !1356, metadata !628), !dbg !1414
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1355, metadata !628), !dbg !1413
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !1353, metadata !628), !dbg !1412
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !1352, metadata !628), !dbg !1411
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !1349, metadata !628), !dbg !1408
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
  ], !dbg !1425

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1349, metadata !628), !dbg !1408
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1361, metadata !628), !dbg !1420
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1361, metadata !628), !dbg !1420
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1349, metadata !628), !dbg !1408
  br label %95, !dbg !1426

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1361, metadata !628), !dbg !1420
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1349, metadata !628), !dbg !1408
  %43 = and i8 %36, 1, !dbg !1428
  %44 = icmp eq i8 %43, 0, !dbg !1428
  br i1 %44, label %45, label %95, !dbg !1426

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1430
  br i1 %46, label %95, label %47, !dbg !1434

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1436, !tbaa !856
  br label %95, !dbg !1436

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.56, i64 0, i64 0), i32 %28), !dbg !1438
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !1352, metadata !628), !dbg !1411
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.57, i64 0, i64 0), i32 %28), !dbg !1442
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !1353, metadata !628), !dbg !1412
  br label %51, !dbg !1443

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1353, metadata !628), !dbg !1412
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1352, metadata !628), !dbg !1411
  %54 = and i8 %36, 1, !dbg !1444
  %55 = icmp eq i8 %54, 0, !dbg !1444
  br i1 %55, label %56, label %73, !dbg !1446

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1357, metadata !628), !dbg !1415
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1355, metadata !628), !dbg !1413
  %57 = load i8, i8* %52, align 1, !dbg !1447, !tbaa !856
  %58 = icmp eq i8 %57, 0, !dbg !1451
  br i1 %58, label %73, label %59, !dbg !1451

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !1453

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  %64 = icmp ult i64 %63, %40, !dbg !1453
  br i1 %64, label %65, label %67, !dbg !1457

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !1459
  store i8 %61, i8* %66, align 1, !dbg !1459, !tbaa !856
  br label %67, !dbg !1459

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !1461
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1355, metadata !628), !dbg !1413
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !1463
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1357, metadata !628), !dbg !1415
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1357, metadata !628), !dbg !1415
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1355, metadata !628), !dbg !1413
  %70 = load i8, i8* %69, align 1, !dbg !1447, !tbaa !856
  %71 = icmp eq i8 %70, 0, !dbg !1451
  br i1 %71, label %72, label %60, !dbg !1451, !llvm.loop !1465

; <label>:72:                                     ; preds = %67
  br label %73, !dbg !1413

; <label>:73:                                     ; preds = %72, %56, %51
  %74 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %72 ]
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !1355, metadata !628), !dbg !1413
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1359, metadata !628), !dbg !1417
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1357, metadata !628), !dbg !1415
  %75 = call i64 @strlen(i8* %53) #13, !dbg !1468
  call void @llvm.dbg.value(metadata i64 %75, i64 0, metadata !1358, metadata !628), !dbg !1416
  br label %95, !dbg !1469

; <label>:76:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1359, metadata !628), !dbg !1417
  br label %77, !dbg !1470

; <label>:77:                                     ; preds = %27, %76
  %78 = phi i8 [ %34, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %78, i64 0, metadata !1359, metadata !628), !dbg !1417
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1361, metadata !628), !dbg !1420
  br label %79, !dbg !1471

; <label>:79:                                     ; preds = %27, %77
  %80 = phi i8 [ %34, %27 ], [ %78, %77 ]
  %81 = phi i8 [ %36, %27 ], [ 1, %77 ]
  call void @llvm.dbg.value(metadata i8 %81, i64 0, metadata !1361, metadata !628), !dbg !1420
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !1359, metadata !628), !dbg !1417
  %82 = and i8 %81, 1, !dbg !1472
  %83 = icmp eq i8 %82, 0, !dbg !1472
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1359, metadata !628), !dbg !1417
  %84 = select i1 %83, i8 1, i8 %80, !dbg !1474
  br label %85, !dbg !1474

; <label>:85:                                     ; preds = %79, %27
  %86 = phi i8 [ %34, %27 ], [ %84, %79 ]
  %87 = phi i8 [ %36, %27 ], [ %81, %79 ]
  call void @llvm.dbg.value(metadata i8 %87, i64 0, metadata !1361, metadata !628), !dbg !1420
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !1359, metadata !628), !dbg !1417
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !1349, metadata !628), !dbg !1408
  %88 = and i8 %87, 1, !dbg !1475
  %89 = icmp eq i8 %88, 0, !dbg !1475
  br i1 %89, label %90, label %95, !dbg !1477

; <label>:90:                                     ; preds = %85
  %91 = icmp eq i64 %40, 0, !dbg !1478
  br i1 %91, label %95, label %92, !dbg !1482

; <label>:92:                                     ; preds = %90
  store i8 39, i8* %0, align 1, !dbg !1484, !tbaa !856
  br label %95, !dbg !1484

; <label>:93:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1361, metadata !628), !dbg !1420
  br label %95, !dbg !1486

; <label>:94:                                     ; preds = %27
  call void @abort() #14, !dbg !1487
  unreachable, !dbg !1487

; <label>:95:                                     ; preds = %41, %85, %90, %92, %27, %42, %45, %47, %93, %73
  %96 = phi i32 [ 0, %93 ], [ %28, %73 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %92 ], [ 2, %90 ], [ 2, %85 ], [ 5, %41 ]
  %97 = phi i8* [ %29, %93 ], [ %52, %73 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %92 ], [ %29, %90 ], [ %29, %85 ], [ %29, %41 ]
  %98 = phi i8* [ %30, %93 ], [ %53, %73 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %92 ], [ %30, %90 ], [ %30, %85 ], [ %30, %41 ]
  %99 = phi i64 [ 0, %93 ], [ %74, %73 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %92 ], [ 1, %90 ], [ 0, %85 ], [ 0, %41 ]
  %100 = phi i8* [ %32, %93 ], [ %53, %73 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.58, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.58, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.58, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.57, i64 0, i64 0), %92 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.57, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.57, i64 0, i64 0), %85 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.58, i64 0, i64 0), %41 ]
  %101 = phi i64 [ %33, %93 ], [ %75, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %92 ], [ 1, %90 ], [ 1, %85 ], [ 1, %41 ]
  %102 = phi i8 [ %34, %93 ], [ 1, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %86, %92 ], [ %86, %90 ], [ %86, %85 ], [ 1, %41 ]
  %103 = phi i8 [ 0, %93 ], [ %36, %73 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %87, %92 ], [ %87, %90 ], [ %87, %85 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %103, i64 0, metadata !1361, metadata !628), !dbg !1420
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !1359, metadata !628), !dbg !1417
  call void @llvm.dbg.value(metadata i64 %101, i64 0, metadata !1358, metadata !628), !dbg !1416
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !1357, metadata !628), !dbg !1415
  call void @llvm.dbg.value(metadata i64 %99, i64 0, metadata !1355, metadata !628), !dbg !1413
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !1353, metadata !628), !dbg !1412
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !1352, metadata !628), !dbg !1411
  call void @llvm.dbg.value(metadata i32 %96, i64 0, metadata !1349, metadata !628), !dbg !1408
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1354, metadata !628), !dbg !1488
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
  br label %123, !dbg !1489

; <label>:123:                                    ; preds = %587, %95
  %124 = phi i64 [ 0, %95 ], [ %596, %587 ]
  %125 = phi i64 [ %99, %95 ], [ %589, %587 ]
  %126 = phi i64 [ %31, %95 ], [ %590, %587 ]
  %127 = phi i64 [ %35, %95 ], [ %591, %587 ]
  %128 = phi i8 [ %37, %95 ], [ %592, %587 ]
  %129 = phi i8 [ %38, %95 ], [ %593, %587 ]
  %130 = phi i8 [ %39, %95 ], [ %594, %587 ]
  %131 = phi i64 [ %40, %95 ], [ %595, %587 ]
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !1346, metadata !628), !dbg !1405
  call void @llvm.dbg.value(metadata i8 %130, i64 0, metadata !1364, metadata !628), !dbg !1423
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !1363, metadata !628), !dbg !1422
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !1362, metadata !628), !dbg !1421
  call void @llvm.dbg.value(metadata i64 %127, i64 0, metadata !1348, metadata !628), !dbg !1407
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !1356, metadata !628), !dbg !1414
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1355, metadata !628), !dbg !1413
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1354, metadata !628), !dbg !1488
  %132 = icmp eq i64 %127, -1, !dbg !1490
  br i1 %132, label %135, label %133, !dbg !1492

; <label>:133:                                    ; preds = %123
  %134 = icmp eq i64 %124, %127, !dbg !1493
  br i1 %134, label %597, label %139, !dbg !1495

; <label>:135:                                    ; preds = %123
  %136 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !1497
  %137 = load i8, i8* %136, align 1, !dbg !1497, !tbaa !856
  %138 = icmp eq i8 %137, 0, !dbg !1499
  br i1 %138, label %597, label %139, !dbg !1495

; <label>:139:                                    ; preds = %133, %135
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1370, metadata !628), !dbg !1500
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1371, metadata !628), !dbg !1501
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1372, metadata !628), !dbg !1502
  br i1 %109, label %140, label %155, !dbg !1503

; <label>:140:                                    ; preds = %139
  %141 = add i64 %124, %101, !dbg !1505
  %142 = and i1 %110, %132, !dbg !1507
  br i1 %142, label %143, label %145, !dbg !1507

; <label>:143:                                    ; preds = %140
  %144 = call i64 @strlen(i8* %2) #13, !dbg !1508
  call void @llvm.dbg.value(metadata i64 %144, i64 0, metadata !1348, metadata !628), !dbg !1407
  br label %145, !dbg !1509

; <label>:145:                                    ; preds = %140, %143
  %146 = phi i64 [ %144, %143 ], [ %127, %140 ]
  call void @llvm.dbg.value(metadata i64 %146, i64 0, metadata !1348, metadata !628), !dbg !1407
  %147 = icmp ugt i64 %141, %146, !dbg !1511
  br i1 %147, label %155, label %148, !dbg !1513

; <label>:148:                                    ; preds = %145
  %149 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !1514
  %150 = call i32 @memcmp(i8* %149, i8* %100, i64 %101) #13, !dbg !1515
  %151 = icmp ne i32 %150, 0, !dbg !1516
  %152 = or i1 %151, %112, !dbg !1516
  %153 = xor i1 %151, true, !dbg !1516
  %154 = zext i1 %153 to i8, !dbg !1516
  br i1 %152, label %155, label %644, !dbg !1516

; <label>:155:                                    ; preds = %148, %145, %139
  %156 = phi i64 [ %146, %148 ], [ %146, %145 ], [ %127, %139 ]
  %157 = phi i8 [ %154, %148 ], [ 0, %145 ], [ 0, %139 ]
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !1370, metadata !628), !dbg !1500
  call void @llvm.dbg.value(metadata i64 %156, i64 0, metadata !1348, metadata !628), !dbg !1407
  %158 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !1518
  %159 = load i8, i8* %158, align 1, !dbg !1518, !tbaa !856
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !1365, metadata !628), !dbg !1519
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
  ], !dbg !1520

; <label>:160:                                    ; preds = %155
  br i1 %105, label %161, label %209, !dbg !1521

; <label>:161:                                    ; preds = %160
  br i1 %112, label %162, label %644, !dbg !1522

; <label>:162:                                    ; preds = %161
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1371, metadata !628), !dbg !1501
  %163 = and i8 %128, 1, !dbg !1527
  %164 = icmp eq i8 %163, 0, !dbg !1527
  %165 = and i1 %114, %164, !dbg !1530
  br i1 %165, label %166, label %182, !dbg !1530

; <label>:166:                                    ; preds = %162
  %167 = icmp ult i64 %125, %131, !dbg !1532
  br i1 %167, label %168, label %170, !dbg !1537

; <label>:168:                                    ; preds = %166
  %169 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !1539
  store i8 39, i8* %169, align 1, !dbg !1539, !tbaa !856
  br label %170, !dbg !1539

; <label>:170:                                    ; preds = %168, %166
  %171 = add i64 %125, 1, !dbg !1541
  call void @llvm.dbg.value(metadata i64 %171, i64 0, metadata !1355, metadata !628), !dbg !1413
  %172 = icmp ult i64 %171, %131, !dbg !1543
  br i1 %172, label %173, label %175, !dbg !1547

; <label>:173:                                    ; preds = %170
  %174 = getelementptr inbounds i8, i8* %0, i64 %171, !dbg !1549
  store i8 36, i8* %174, align 1, !dbg !1549, !tbaa !856
  br label %175, !dbg !1549

; <label>:175:                                    ; preds = %173, %170
  %176 = add i64 %125, 2, !dbg !1551
  call void @llvm.dbg.value(metadata i64 %176, i64 0, metadata !1355, metadata !628), !dbg !1413
  %177 = icmp ult i64 %176, %131, !dbg !1553
  br i1 %177, label %178, label %180, !dbg !1557

; <label>:178:                                    ; preds = %175
  %179 = getelementptr inbounds i8, i8* %0, i64 %176, !dbg !1559
  store i8 39, i8* %179, align 1, !dbg !1559, !tbaa !856
  br label %180, !dbg !1559

; <label>:180:                                    ; preds = %178, %175
  %181 = add i64 %125, 3, !dbg !1561
  call void @llvm.dbg.value(metadata i64 %181, i64 0, metadata !1355, metadata !628), !dbg !1413
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1362, metadata !628), !dbg !1421
  br label %182, !dbg !1563

; <label>:182:                                    ; preds = %162, %180
  %183 = phi i64 [ %181, %180 ], [ %125, %162 ]
  %184 = phi i8 [ 1, %180 ], [ %128, %162 ]
  call void @llvm.dbg.value(metadata i8 %184, i64 0, metadata !1362, metadata !628), !dbg !1421
  call void @llvm.dbg.value(metadata i64 %183, i64 0, metadata !1355, metadata !628), !dbg !1413
  %185 = icmp ult i64 %183, %131, !dbg !1565
  br i1 %185, label %186, label %188, !dbg !1569

; <label>:186:                                    ; preds = %182
  %187 = getelementptr inbounds i8, i8* %0, i64 %183, !dbg !1571
  store i8 92, i8* %187, align 1, !dbg !1571, !tbaa !856
  br label %188, !dbg !1571

; <label>:188:                                    ; preds = %186, %182
  %189 = add i64 %183, 1, !dbg !1573
  call void @llvm.dbg.value(metadata i64 %189, i64 0, metadata !1355, metadata !628), !dbg !1413
  br i1 %106, label %190, label %476, !dbg !1575

; <label>:190:                                    ; preds = %188
  %191 = add i64 %124, 1, !dbg !1577
  %192 = icmp ult i64 %191, %156, !dbg !1579
  br i1 %192, label %193, label %476, !dbg !1580

; <label>:193:                                    ; preds = %190
  %194 = getelementptr inbounds i8, i8* %2, i64 %191, !dbg !1581
  %195 = load i8, i8* %194, align 1, !dbg !1581, !tbaa !856
  %196 = add i8 %195, -48, !dbg !1583
  %197 = icmp ult i8 %196, 10, !dbg !1583
  br i1 %197, label %198, label %476, !dbg !1583

; <label>:198:                                    ; preds = %193
  %199 = icmp ult i64 %189, %131, !dbg !1584
  br i1 %199, label %200, label %202, !dbg !1589

; <label>:200:                                    ; preds = %198
  %201 = getelementptr inbounds i8, i8* %0, i64 %189, !dbg !1591
  store i8 48, i8* %201, align 1, !dbg !1591, !tbaa !856
  br label %202, !dbg !1591

; <label>:202:                                    ; preds = %200, %198
  %203 = add i64 %183, 2, !dbg !1593
  call void @llvm.dbg.value(metadata i64 %203, i64 0, metadata !1355, metadata !628), !dbg !1413
  %204 = icmp ult i64 %203, %131, !dbg !1595
  br i1 %204, label %205, label %207, !dbg !1599

; <label>:205:                                    ; preds = %202
  %206 = getelementptr inbounds i8, i8* %0, i64 %203, !dbg !1601
  store i8 48, i8* %206, align 1, !dbg !1601, !tbaa !856
  br label %207, !dbg !1601

; <label>:207:                                    ; preds = %205, %202
  %208 = add i64 %183, 3, !dbg !1603
  call void @llvm.dbg.value(metadata i64 %208, i64 0, metadata !1355, metadata !628), !dbg !1413
  br label %476, !dbg !1605

; <label>:209:                                    ; preds = %160
  br i1 %23, label %476, label %587, !dbg !1606

; <label>:210:                                    ; preds = %155
  switch i32 %96, label %476 [
    i32 2, label %211
    i32 5, label %212
  ], !dbg !1607

; <label>:211:                                    ; preds = %210
  br i1 %112, label %476, label %644, !dbg !1608

; <label>:212:                                    ; preds = %210
  br i1 %25, label %476, label %213, !dbg !1610

; <label>:213:                                    ; preds = %212
  %214 = add i64 %124, 2, !dbg !1612
  %215 = icmp ult i64 %214, %156, !dbg !1614
  br i1 %215, label %216, label %476, !dbg !1615

; <label>:216:                                    ; preds = %213
  %217 = add i64 %124, 1, !dbg !1616
  %218 = getelementptr inbounds i8, i8* %2, i64 %217, !dbg !1618
  %219 = load i8, i8* %218, align 1, !dbg !1618, !tbaa !856
  %220 = icmp eq i8 %219, 63, !dbg !1619
  br i1 %220, label %221, label %476, !dbg !1620

; <label>:221:                                    ; preds = %216
  %222 = getelementptr inbounds i8, i8* %2, i64 %214, !dbg !1622
  %223 = load i8, i8* %222, align 1, !dbg !1622, !tbaa !856
  %224 = sext i8 %223 to i32, !dbg !1622
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
  ], !dbg !1623

; <label>:225:                                    ; preds = %221, %221, %221, %221, %221, %221, %221, %221, %221
  br i1 %112, label %226, label %644, !dbg !1624

; <label>:226:                                    ; preds = %225
  call void @llvm.dbg.value(metadata i8 %223, i64 0, metadata !1365, metadata !628), !dbg !1519
  call void @llvm.dbg.value(metadata i64 %214, i64 0, metadata !1354, metadata !628), !dbg !1488
  %227 = icmp ult i64 %125, %131, !dbg !1626
  br i1 %227, label %228, label %230, !dbg !1630

; <label>:228:                                    ; preds = %226
  %229 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !1632
  store i8 63, i8* %229, align 1, !dbg !1632, !tbaa !856
  br label %230, !dbg !1632

; <label>:230:                                    ; preds = %228, %226
  %231 = add i64 %125, 1, !dbg !1634
  call void @llvm.dbg.value(metadata i64 %231, i64 0, metadata !1355, metadata !628), !dbg !1413
  %232 = icmp ult i64 %231, %131, !dbg !1636
  br i1 %232, label %233, label %235, !dbg !1640

; <label>:233:                                    ; preds = %230
  %234 = getelementptr inbounds i8, i8* %0, i64 %231, !dbg !1642
  store i8 34, i8* %234, align 1, !dbg !1642, !tbaa !856
  br label %235, !dbg !1642

; <label>:235:                                    ; preds = %233, %230
  %236 = add i64 %125, 2, !dbg !1644
  call void @llvm.dbg.value(metadata i64 %236, i64 0, metadata !1355, metadata !628), !dbg !1413
  %237 = icmp ult i64 %236, %131, !dbg !1646
  br i1 %237, label %238, label %240, !dbg !1650

; <label>:238:                                    ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236, !dbg !1652
  store i8 34, i8* %239, align 1, !dbg !1652, !tbaa !856
  br label %240, !dbg !1652

; <label>:240:                                    ; preds = %238, %235
  %241 = add i64 %125, 3, !dbg !1654
  call void @llvm.dbg.value(metadata i64 %241, i64 0, metadata !1355, metadata !628), !dbg !1413
  %242 = icmp ult i64 %241, %131, !dbg !1656
  br i1 %242, label %243, label %245, !dbg !1660

; <label>:243:                                    ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241, !dbg !1662
  store i8 63, i8* %244, align 1, !dbg !1662, !tbaa !856
  br label %245, !dbg !1662

; <label>:245:                                    ; preds = %243, %240
  %246 = add i64 %125, 4, !dbg !1664
  call void @llvm.dbg.value(metadata i64 %246, i64 0, metadata !1355, metadata !628), !dbg !1413
  br label %476, !dbg !1666

; <label>:247:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !1369, metadata !628), !dbg !1667
  br label %257, !dbg !1668

; <label>:248:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !1369, metadata !628), !dbg !1667
  br label %257, !dbg !1669

; <label>:249:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !1369, metadata !628), !dbg !1667
  br label %255, !dbg !1670

; <label>:250:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !1369, metadata !628), !dbg !1667
  br label %255, !dbg !1671

; <label>:251:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !1369, metadata !628), !dbg !1667
  br label %257, !dbg !1672

; <label>:252:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !1369, metadata !628), !dbg !1667
  br i1 %114, label %253, label %254, !dbg !1673

; <label>:253:                                    ; preds = %252
  br i1 %112, label %542, label %644, !dbg !1674

; <label>:254:                                    ; preds = %252
  br i1 %122, label %542, label %255, !dbg !1677

; <label>:255:                                    ; preds = %254, %155, %250, %249
  %256 = phi i8 [ 92, %254 ], [ 116, %250 ], [ 114, %249 ], [ 110, %155 ]
  call void @llvm.dbg.value(metadata i8 %256, i64 0, metadata !1369, metadata !628), !dbg !1667
  br i1 %118, label %257, label %644, !dbg !1679

; <label>:257:                                    ; preds = %255, %155, %251, %248, %247
  %258 = phi i8 [ %256, %255 ], [ 118, %251 ], [ 102, %248 ], [ 98, %247 ], [ 97, %155 ]
  call void @llvm.dbg.value(metadata i8 %258, i64 0, metadata !1369, metadata !628), !dbg !1667
  br i1 %105, label %503, label %476, !dbg !1681

; <label>:259:                                    ; preds = %155, %155
  %260 = icmp eq i64 %156, -1, !dbg !1682
  br i1 %260, label %261, label %266, !dbg !1684

; <label>:261:                                    ; preds = %259
  %262 = load i8, i8* %26, align 1, !dbg !1685, !tbaa !856
  %263 = icmp ne i8 %262, 0, !dbg !1687
  %264 = icmp ne i64 %124, 0, !dbg !1688
  %265 = or i1 %264, %263, !dbg !1690
  br i1 %265, label %476, label %272, !dbg !1690

; <label>:266:                                    ; preds = %259
  %267 = icmp ne i64 %156, 1, !dbg !1691
  %268 = icmp ne i64 %124, 0, !dbg !1688
  %269 = or i1 %268, %267, !dbg !1693
  br i1 %269, label %476, label %272, !dbg !1693

; <label>:270:                                    ; preds = %155, %155
  %271 = icmp eq i64 %124, 0, !dbg !1688
  br i1 %271, label %272, label %476, !dbg !1695

; <label>:272:                                    ; preds = %270, %266, %261, %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1372, metadata !628), !dbg !1502
  br label %273, !dbg !1696

; <label>:273:                                    ; preds = %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %272
  %274 = phi i8 [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 1, %272 ]
  call void @llvm.dbg.value(metadata i8 %274, i64 0, metadata !1372, metadata !628), !dbg !1502
  br i1 %118, label %476, label %644, !dbg !1697

; <label>:275:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1363, metadata !628), !dbg !1422
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1372, metadata !628), !dbg !1502
  br i1 %114, label %276, label %476, !dbg !1699

; <label>:276:                                    ; preds = %275
  br i1 %112, label %277, label %644, !dbg !1700

; <label>:277:                                    ; preds = %276
  %278 = icmp eq i64 %131, 0, !dbg !1703
  %279 = icmp ne i64 %126, 0, !dbg !1705
  %280 = or i1 %279, %278, !dbg !1707
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !1356, metadata !628), !dbg !1414
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1346, metadata !628), !dbg !1405
  %281 = select i1 %280, i64 %126, i64 %131, !dbg !1707
  %282 = select i1 %280, i64 %131, i64 0, !dbg !1707
  call void @llvm.dbg.value(metadata i64 %282, i64 0, metadata !1346, metadata !628), !dbg !1405
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !1356, metadata !628), !dbg !1414
  %283 = icmp ult i64 %125, %282, !dbg !1708
  br i1 %283, label %284, label %286, !dbg !1712

; <label>:284:                                    ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !1714
  store i8 39, i8* %285, align 1, !dbg !1714, !tbaa !856
  br label %286, !dbg !1714

; <label>:286:                                    ; preds = %284, %277
  %287 = add i64 %125, 1, !dbg !1716
  call void @llvm.dbg.value(metadata i64 %287, i64 0, metadata !1355, metadata !628), !dbg !1413
  %288 = icmp ult i64 %287, %282, !dbg !1718
  br i1 %288, label %289, label %291, !dbg !1722

; <label>:289:                                    ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287, !dbg !1724
  store i8 92, i8* %290, align 1, !dbg !1724, !tbaa !856
  br label %291, !dbg !1724

; <label>:291:                                    ; preds = %289, %286
  %292 = add i64 %125, 2, !dbg !1726
  call void @llvm.dbg.value(metadata i64 %292, i64 0, metadata !1355, metadata !628), !dbg !1413
  %293 = icmp ult i64 %292, %282, !dbg !1728
  br i1 %293, label %294, label %296, !dbg !1732

; <label>:294:                                    ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292, !dbg !1734
  store i8 39, i8* %295, align 1, !dbg !1734, !tbaa !856
  br label %296, !dbg !1734

; <label>:296:                                    ; preds = %294, %291
  %297 = add i64 %125, 3, !dbg !1736
  call void @llvm.dbg.value(metadata i64 %297, i64 0, metadata !1355, metadata !628), !dbg !1413
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1362, metadata !628), !dbg !1421
  br label %476, !dbg !1738

; <label>:298:                                    ; preds = %155
  br i1 %14, label %299, label %308, !dbg !1739

; <label>:299:                                    ; preds = %298
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1373, metadata !628), !dbg !1740
  %300 = tail call i16** @__ctype_b_loc() #1, !dbg !1741
  %301 = load i16*, i16** %300, align 8, !dbg !1741, !tbaa !636
  %302 = zext i8 %159 to i64, !dbg !1741
  %303 = getelementptr inbounds i16, i16* %301, i64 %302, !dbg !1741
  %304 = load i16, i16* %303, align 2, !dbg !1741, !tbaa !1743
  %305 = lshr i16 %304, 14, !dbg !1745
  %306 = trunc i16 %305 to i8, !dbg !1745
  %307 = and i8 %306, 1, !dbg !1745
  call void @llvm.dbg.value(metadata i8 %307, i64 0, metadata !1376, metadata !628), !dbg !1746
  br label %368, !dbg !1747

; <label>:308:                                    ; preds = %298
  call void @llvm.lifetime.start(i64 8, i8* nonnull %18) #10, !dbg !1748
  store i64 0, i64* %10, align 8, !dbg !1749
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1373, metadata !628), !dbg !1740
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1376, metadata !628), !dbg !1746
  %309 = icmp eq i64 %156, -1, !dbg !1750
  br i1 %309, label %310, label %312, !dbg !1752, !llvm.loop !1753

; <label>:310:                                    ; preds = %308
  %311 = call i64 @strlen(i8* nonnull %2) #13, !dbg !1756
  call void @llvm.dbg.value(metadata i64 %311, i64 0, metadata !1348, metadata !628), !dbg !1407
  br label %312, !dbg !1757, !llvm.loop !1753

; <label>:312:                                    ; preds = %310, %308
  %313 = phi i64 [ %156, %308 ], [ %311, %310 ]
  br label %314, !dbg !1746

; <label>:314:                                    ; preds = %312, %355
  %315 = phi i64 [ %360, %355 ], [ 0, %312 ]
  %316 = phi i8 [ %359, %355 ], [ 1, %312 ]
  call void @llvm.dbg.value(metadata i8 %316, i64 0, metadata !1376, metadata !628), !dbg !1746
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !1373, metadata !628), !dbg !1740
  call void @llvm.dbg.value(metadata i64 %313, i64 0, metadata !1348, metadata !628), !dbg !1407
  call void @llvm.lifetime.start(i64 4, i8* nonnull %19) #10, !dbg !1758
  %317 = add i64 %315, %124, !dbg !1759
  %318 = getelementptr inbounds i8, i8* %2, i64 %317, !dbg !1760
  %319 = sub i64 %313, %317, !dbg !1761
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1377, metadata !914), !dbg !1762
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !1390, metadata !914), !dbg !1763
  %320 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %318, i64 %319, %struct.__mbstate_t* nonnull %11) #10, !dbg !1764
  call void @llvm.dbg.value(metadata i64 %320, i64 0, metadata !1393, metadata !628), !dbg !1765
  switch i64 %320, label %334 [
    i64 0, label %350
    i64 -1, label %347
    i64 -2, label %321
  ], !dbg !1766

; <label>:321:                                    ; preds = %314
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !1373, metadata !628), !dbg !1740
  %322 = icmp ugt i64 %313, %317, !dbg !1767
  br i1 %322, label %323, label %351, !dbg !1770

; <label>:323:                                    ; preds = %321
  br label %324, !dbg !1771

; <label>:324:                                    ; preds = %323, %330
  %325 = phi i64 [ %332, %330 ], [ %317, %323 ]
  %326 = phi i64 [ %331, %330 ], [ %315, %323 ]
  %327 = getelementptr inbounds i8, i8* %2, i64 %325, !dbg !1771
  %328 = load i8, i8* %327, align 1, !dbg !1771, !tbaa !856
  %329 = icmp eq i8 %328, 0, !dbg !1773
  br i1 %329, label %348, label %330, !dbg !1774

; <label>:330:                                    ; preds = %324
  %331 = add i64 %326, 1, !dbg !1776
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !1373, metadata !628), !dbg !1740
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !1373, metadata !628), !dbg !1740
  %332 = add i64 %331, %124, !dbg !1777
  %333 = icmp ult i64 %332, %313, !dbg !1767
  br i1 %333, label %324, label %348, !dbg !1770, !llvm.loop !1778

; <label>:334:                                    ; preds = %314
  %335 = icmp ugt i64 %320, 1, !dbg !1780
  %336 = and i1 %116, %335, !dbg !1784
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1394, metadata !628), !dbg !1785
  br i1 %336, label %337, label %355, !dbg !1784

; <label>:337:                                    ; preds = %334
  br label %338, !dbg !1786

; <label>:338:                                    ; preds = %337, %344
  %339 = phi i64 [ %345, %344 ], [ 1, %337 ]
  %340 = add i64 %339, %317, !dbg !1786
  %341 = getelementptr inbounds i8, i8* %2, i64 %340, !dbg !1787
  %342 = load i8, i8* %341, align 1, !dbg !1787, !tbaa !856
  %343 = sext i8 %342 to i32, !dbg !1787
  switch i32 %343, label %344 [
    i32 91, label %367
    i32 92, label %367
    i32 94, label %367
    i32 96, label %367
    i32 124, label %367
  ], !dbg !1788

; <label>:344:                                    ; preds = %338
  %345 = add nuw i64 %339, 1, !dbg !1789
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !1394, metadata !628), !dbg !1785
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !1394, metadata !628), !dbg !1785
  %346 = icmp ult i64 %345, %320, !dbg !1780
  br i1 %346, label %338, label %354, !dbg !1791, !llvm.loop !1793

; <label>:347:                                    ; preds = %314
  br label %351, !dbg !1746

; <label>:348:                                    ; preds = %324, %330
  %349 = phi i64 [ %331, %330 ], [ %326, %324 ]
  br label %351, !dbg !1746

; <label>:350:                                    ; preds = %314
  br label %351, !dbg !1746

; <label>:351:                                    ; preds = %350, %348, %347, %321
  %352 = phi i64 [ %315, %321 ], [ %315, %347 ], [ %349, %348 ], [ %315, %350 ]
  %353 = phi i8 [ 0, %321 ], [ 0, %347 ], [ 0, %348 ], [ %316, %350 ]
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1376, metadata !628), !dbg !1746
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1373, metadata !628), !dbg !1740
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10, !dbg !1796
  br label %364

; <label>:354:                                    ; preds = %344
  br label %355, !dbg !1797

; <label>:355:                                    ; preds = %354, %334
  %356 = load i32, i32* %12, align 4, !dbg !1797, !tbaa !716
  call void @llvm.dbg.value(metadata i32 %356, i64 0, metadata !1390, metadata !628), !dbg !1763
  %357 = call i32 @iswprint(i32 %356) #10, !dbg !1799
  %358 = icmp eq i32 %357, 0, !dbg !1799
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1376, metadata !628), !dbg !1746
  %359 = select i1 %358, i8 0, i8 %316, !dbg !1800
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1376, metadata !628), !dbg !1746
  %360 = add i64 %320, %315, !dbg !1801
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1373, metadata !628), !dbg !1740
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1376, metadata !628), !dbg !1746
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1373, metadata !628), !dbg !1740
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10, !dbg !1796
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1377, metadata !914), !dbg !1762
  %361 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #13, !dbg !1802
  %362 = icmp eq i32 %361, 0, !dbg !1803
  br i1 %362, label %314, label %363, !dbg !1804, !llvm.loop !1753

; <label>:363:                                    ; preds = %355
  br label %364, !dbg !1806

; <label>:364:                                    ; preds = %363, %351
  %365 = phi i8 [ %353, %351 ], [ %359, %363 ]
  %366 = phi i64 [ %352, %351 ], [ %360, %363 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #10, !dbg !1806
  br label %368

; <label>:367:                                    ; preds = %338, %338, %338, %338, %338
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1376, metadata !628), !dbg !1746
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1373, metadata !628), !dbg !1740
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10, !dbg !1796
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #10, !dbg !1806
  br label %649

; <label>:368:                                    ; preds = %364, %299
  %369 = phi i64 [ %156, %299 ], [ %313, %364 ]
  %370 = phi i64 [ 1, %299 ], [ %366, %364 ]
  %371 = phi i8 [ %307, %299 ], [ %365, %364 ]
  call void @llvm.dbg.value(metadata i8 %371, i64 0, metadata !1376, metadata !628), !dbg !1746
  call void @llvm.dbg.value(metadata i64 %370, i64 0, metadata !1373, metadata !628), !dbg !1740
  call void @llvm.dbg.value(metadata i64 %369, i64 0, metadata !1348, metadata !628), !dbg !1407
  %372 = and i8 %371, 1, !dbg !1807
  %373 = icmp ne i8 %372, 0, !dbg !1807
  call void @llvm.dbg.value(metadata i8 %372, i64 0, metadata !1372, metadata !628), !dbg !1502
  %374 = icmp ult i64 %370, 2, !dbg !1808
  %375 = or i1 %373, %113, !dbg !1809
  %376 = and i1 %374, %375, !dbg !1811
  br i1 %376, label %476, label %377, !dbg !1811

; <label>:377:                                    ; preds = %368
  %378 = add i64 %370, %124, !dbg !1812
  call void @llvm.dbg.value(metadata i64 %378, i64 0, metadata !1401, metadata !628), !dbg !1813
  br label %379, !dbg !1814

; <label>:379:                                    ; preds = %472, %377
  %380 = phi i64 [ %124, %377 ], [ %447, %472 ]
  %381 = phi i64 [ %125, %377 ], [ %473, %472 ]
  %382 = phi i8 [ %128, %377 ], [ %468, %472 ]
  %383 = phi i8 [ %159, %377 ], [ %475, %472 ]
  %384 = phi i8 [ %157, %377 ], [ %445, %472 ]
  %385 = phi i8 [ 0, %377 ], [ %446, %472 ]
  call void @llvm.dbg.value(metadata i8 %385, i64 0, metadata !1371, metadata !628), !dbg !1501
  call void @llvm.dbg.value(metadata i8 %384, i64 0, metadata !1370, metadata !628), !dbg !1500
  call void @llvm.dbg.value(metadata i8 %383, i64 0, metadata !1365, metadata !628), !dbg !1519
  call void @llvm.dbg.value(metadata i8 %382, i64 0, metadata !1362, metadata !628), !dbg !1421
  call void @llvm.dbg.value(metadata i64 %381, i64 0, metadata !1355, metadata !628), !dbg !1413
  call void @llvm.dbg.value(metadata i64 %380, i64 0, metadata !1354, metadata !628), !dbg !1488
  br i1 %375, label %432, label %386, !dbg !1815

; <label>:386:                                    ; preds = %379
  br i1 %112, label %387, label %643, !dbg !1820

; <label>:387:                                    ; preds = %386
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1371, metadata !628), !dbg !1501
  %388 = and i8 %382, 1, !dbg !1824
  %389 = icmp eq i8 %388, 0, !dbg !1824
  %390 = and i1 %114, %389, !dbg !1827
  br i1 %390, label %391, label %407, !dbg !1827

; <label>:391:                                    ; preds = %387
  %392 = icmp ult i64 %381, %131, !dbg !1829
  br i1 %392, label %393, label %395, !dbg !1834

; <label>:393:                                    ; preds = %391
  %394 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !1836
  store i8 39, i8* %394, align 1, !dbg !1836, !tbaa !856
  br label %395, !dbg !1836

; <label>:395:                                    ; preds = %393, %391
  %396 = add i64 %381, 1, !dbg !1838
  call void @llvm.dbg.value(metadata i64 %396, i64 0, metadata !1355, metadata !628), !dbg !1413
  %397 = icmp ult i64 %396, %131, !dbg !1840
  br i1 %397, label %398, label %400, !dbg !1844

; <label>:398:                                    ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !1846
  store i8 36, i8* %399, align 1, !dbg !1846, !tbaa !856
  br label %400, !dbg !1846

; <label>:400:                                    ; preds = %398, %395
  %401 = add i64 %381, 2, !dbg !1848
  call void @llvm.dbg.value(metadata i64 %401, i64 0, metadata !1355, metadata !628), !dbg !1413
  %402 = icmp ult i64 %401, %131, !dbg !1850
  br i1 %402, label %403, label %405, !dbg !1854

; <label>:403:                                    ; preds = %400
  %404 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !1856
  store i8 39, i8* %404, align 1, !dbg !1856, !tbaa !856
  br label %405, !dbg !1856

; <label>:405:                                    ; preds = %403, %400
  %406 = add i64 %381, 3, !dbg !1858
  call void @llvm.dbg.value(metadata i64 %406, i64 0, metadata !1355, metadata !628), !dbg !1413
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1362, metadata !628), !dbg !1421
  br label %407, !dbg !1860

; <label>:407:                                    ; preds = %387, %405
  %408 = phi i64 [ %406, %405 ], [ %381, %387 ]
  %409 = phi i8 [ 1, %405 ], [ %382, %387 ]
  call void @llvm.dbg.value(metadata i8 %409, i64 0, metadata !1362, metadata !628), !dbg !1421
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !1355, metadata !628), !dbg !1413
  %410 = icmp ult i64 %408, %131, !dbg !1862
  br i1 %410, label %411, label %413, !dbg !1866

; <label>:411:                                    ; preds = %407
  %412 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !1868
  store i8 92, i8* %412, align 1, !dbg !1868, !tbaa !856
  br label %413, !dbg !1868

; <label>:413:                                    ; preds = %411, %407
  %414 = add i64 %408, 1, !dbg !1870
  call void @llvm.dbg.value(metadata i64 %414, i64 0, metadata !1355, metadata !628), !dbg !1413
  %415 = icmp ult i64 %414, %131, !dbg !1872
  br i1 %415, label %416, label %420, !dbg !1876

; <label>:416:                                    ; preds = %413
  %417 = lshr i8 %383, 6, !dbg !1878
  %418 = or i8 %417, 48, !dbg !1878
  %419 = getelementptr inbounds i8, i8* %0, i64 %414, !dbg !1878
  store i8 %418, i8* %419, align 1, !dbg !1878, !tbaa !856
  br label %420, !dbg !1878

; <label>:420:                                    ; preds = %416, %413
  %421 = add i64 %408, 2, !dbg !1880
  call void @llvm.dbg.value(metadata i64 %421, i64 0, metadata !1355, metadata !628), !dbg !1413
  %422 = icmp ult i64 %421, %131, !dbg !1882
  br i1 %422, label %423, label %428, !dbg !1886

; <label>:423:                                    ; preds = %420
  %424 = lshr i8 %383, 3, !dbg !1888
  %425 = and i8 %424, 7, !dbg !1888
  %426 = or i8 %425, 48, !dbg !1888
  %427 = getelementptr inbounds i8, i8* %0, i64 %421, !dbg !1888
  store i8 %426, i8* %427, align 1, !dbg !1888, !tbaa !856
  br label %428, !dbg !1888

; <label>:428:                                    ; preds = %423, %420
  %429 = add i64 %408, 3, !dbg !1890
  call void @llvm.dbg.value(metadata i64 %429, i64 0, metadata !1355, metadata !628), !dbg !1413
  %430 = and i8 %383, 7, !dbg !1892
  %431 = or i8 %430, 48, !dbg !1893
  call void @llvm.dbg.value(metadata i8 %431, i64 0, metadata !1365, metadata !628), !dbg !1519
  br label %441, !dbg !1894

; <label>:432:                                    ; preds = %379
  %433 = and i8 %384, 1, !dbg !1895
  %434 = icmp eq i8 %433, 0, !dbg !1895
  br i1 %434, label %441, label %435, !dbg !1897

; <label>:435:                                    ; preds = %432
  %436 = icmp ult i64 %381, %131, !dbg !1898
  br i1 %436, label %437, label %439, !dbg !1903

; <label>:437:                                    ; preds = %435
  %438 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !1905
  store i8 92, i8* %438, align 1, !dbg !1905, !tbaa !856
  br label %439, !dbg !1905

; <label>:439:                                    ; preds = %437, %435
  %440 = add i64 %381, 1, !dbg !1907
  call void @llvm.dbg.value(metadata i64 %440, i64 0, metadata !1355, metadata !628), !dbg !1413
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1370, metadata !628), !dbg !1500
  br label %441, !dbg !1909

; <label>:441:                                    ; preds = %432, %439, %428
  %442 = phi i64 [ %440, %439 ], [ %381, %432 ], [ %429, %428 ]
  %443 = phi i8 [ %382, %439 ], [ %382, %432 ], [ %409, %428 ]
  %444 = phi i8 [ %383, %439 ], [ %383, %432 ], [ %431, %428 ]
  %445 = phi i8 [ 0, %439 ], [ %384, %432 ], [ %384, %428 ]
  %446 = phi i8 [ %385, %439 ], [ %385, %432 ], [ 1, %428 ]
  call void @llvm.dbg.value(metadata i8 %446, i64 0, metadata !1371, metadata !628), !dbg !1501
  call void @llvm.dbg.value(metadata i8 %445, i64 0, metadata !1370, metadata !628), !dbg !1500
  call void @llvm.dbg.value(metadata i8 %444, i64 0, metadata !1365, metadata !628), !dbg !1519
  call void @llvm.dbg.value(metadata i8 %443, i64 0, metadata !1362, metadata !628), !dbg !1421
  call void @llvm.dbg.value(metadata i64 %442, i64 0, metadata !1355, metadata !628), !dbg !1413
  %447 = add i64 %380, 1, !dbg !1910
  %448 = icmp ugt i64 %378, %447, !dbg !1912
  br i1 %448, label %449, label %541, !dbg !1913

; <label>:449:                                    ; preds = %441
  %450 = and i8 %443, 1, !dbg !1914
  %451 = icmp ne i8 %450, 0, !dbg !1914
  %452 = and i8 %446, 1, !dbg !1918
  %453 = icmp eq i8 %452, 0, !dbg !1918
  %454 = and i1 %451, %453, !dbg !1914
  br i1 %454, label %455, label %466, !dbg !1914

; <label>:455:                                    ; preds = %449
  %456 = icmp ult i64 %442, %131, !dbg !1920
  br i1 %456, label %457, label %459, !dbg !1925

; <label>:457:                                    ; preds = %455
  %458 = getelementptr inbounds i8, i8* %0, i64 %442, !dbg !1927
  store i8 39, i8* %458, align 1, !dbg !1927, !tbaa !856
  br label %459, !dbg !1927

; <label>:459:                                    ; preds = %457, %455
  %460 = add i64 %442, 1, !dbg !1929
  call void @llvm.dbg.value(metadata i64 %460, i64 0, metadata !1355, metadata !628), !dbg !1413
  %461 = icmp ult i64 %460, %131, !dbg !1931
  br i1 %461, label %462, label %464, !dbg !1935

; <label>:462:                                    ; preds = %459
  %463 = getelementptr inbounds i8, i8* %0, i64 %460, !dbg !1937
  store i8 39, i8* %463, align 1, !dbg !1937, !tbaa !856
  br label %464, !dbg !1937

; <label>:464:                                    ; preds = %462, %459
  %465 = add i64 %442, 2, !dbg !1939
  call void @llvm.dbg.value(metadata i64 %465, i64 0, metadata !1355, metadata !628), !dbg !1413
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1362, metadata !628), !dbg !1421
  br label %466, !dbg !1941

; <label>:466:                                    ; preds = %449, %464
  %467 = phi i64 [ %465, %464 ], [ %442, %449 ]
  %468 = phi i8 [ 0, %464 ], [ %443, %449 ]
  call void @llvm.dbg.value(metadata i8 %468, i64 0, metadata !1362, metadata !628), !dbg !1421
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !1355, metadata !628), !dbg !1413
  %469 = icmp ult i64 %467, %131, !dbg !1943
  br i1 %469, label %470, label %472, !dbg !1947

; <label>:470:                                    ; preds = %466
  %471 = getelementptr inbounds i8, i8* %0, i64 %467, !dbg !1949
  store i8 %444, i8* %471, align 1, !dbg !1949, !tbaa !856
  br label %472, !dbg !1949

; <label>:472:                                    ; preds = %470, %466
  %473 = add i64 %467, 1, !dbg !1951
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !1355, metadata !628), !dbg !1413
  call void @llvm.dbg.value(metadata i64 %447, i64 0, metadata !1354, metadata !628), !dbg !1488
  %474 = getelementptr inbounds i8, i8* %2, i64 %447, !dbg !1953
  %475 = load i8, i8* %474, align 1, !dbg !1953, !tbaa !856
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !1365, metadata !628), !dbg !1519
  br label %379, !dbg !1954, !llvm.loop !1956

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
  call void @llvm.dbg.value(metadata i64 %486, i64 0, metadata !1346, metadata !628), !dbg !1405
  call void @llvm.dbg.value(metadata i8 %485, i64 0, metadata !1372, metadata !628), !dbg !1502
  call void @llvm.dbg.value(metadata i8 %484, i64 0, metadata !1371, metadata !628), !dbg !1501
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !1370, metadata !628), !dbg !1500
  call void @llvm.dbg.value(metadata i8 %483, i64 0, metadata !1365, metadata !628), !dbg !1519
  call void @llvm.dbg.value(metadata i8 %482, i64 0, metadata !1363, metadata !628), !dbg !1422
  call void @llvm.dbg.value(metadata i8 %481, i64 0, metadata !1362, metadata !628), !dbg !1421
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !1348, metadata !628), !dbg !1407
  call void @llvm.dbg.value(metadata i64 %479, i64 0, metadata !1356, metadata !628), !dbg !1414
  call void @llvm.dbg.value(metadata i64 %478, i64 0, metadata !1355, metadata !628), !dbg !1413
  call void @llvm.dbg.value(metadata i64 %477, i64 0, metadata !1354, metadata !628), !dbg !1488
  br i1 %107, label %488, label %487, !dbg !1959

; <label>:487:                                    ; preds = %476
  br i1 %117, label %489, label %501, !dbg !1961

; <label>:488:                                    ; preds = %476
  br i1 %20, label %501, label %489, !dbg !1962

; <label>:489:                                    ; preds = %488, %487
  %490 = lshr i8 %483, 5, !dbg !1963
  %491 = zext i8 %490 to i64, !dbg !1963
  %492 = getelementptr inbounds i32, i32* %6, i64 %491, !dbg !1965
  %493 = load i32, i32* %492, align 4, !dbg !1965, !tbaa !716
  %494 = and i8 %483, 31, !dbg !1966
  %495 = zext i8 %494 to i32, !dbg !1967
  %496 = shl i32 1, %495, !dbg !1968
  %497 = and i32 %493, %496, !dbg !1968
  %498 = icmp eq i32 %497, 0, !dbg !1968
  %499 = icmp eq i8 %157, 0, !dbg !1969
  %500 = and i1 %499, %498, !dbg !1970
  br i1 %500, label %542, label %503, !dbg !1970

; <label>:501:                                    ; preds = %488, %487
  %502 = icmp eq i8 %157, 0, !dbg !1969
  br i1 %502, label %542, label %503, !dbg !1971

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
  call void @llvm.dbg.value(metadata i64 %512, i64 0, metadata !1346, metadata !628), !dbg !1405
  call void @llvm.dbg.value(metadata i8 %511, i64 0, metadata !1372, metadata !628), !dbg !1502
  call void @llvm.dbg.value(metadata i8 %510, i64 0, metadata !1365, metadata !628), !dbg !1519
  call void @llvm.dbg.value(metadata i8 %509, i64 0, metadata !1363, metadata !628), !dbg !1422
  call void @llvm.dbg.value(metadata i8 %508, i64 0, metadata !1362, metadata !628), !dbg !1421
  call void @llvm.dbg.value(metadata i64 %507, i64 0, metadata !1348, metadata !628), !dbg !1407
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !1356, metadata !628), !dbg !1414
  call void @llvm.dbg.value(metadata i64 %505, i64 0, metadata !1355, metadata !628), !dbg !1413
  call void @llvm.dbg.value(metadata i64 %504, i64 0, metadata !1354, metadata !628), !dbg !1488
  br i1 %112, label %513, label %644, !dbg !1973

; <label>:513:                                    ; preds = %503
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1371, metadata !628), !dbg !1501
  %514 = and i8 %508, 1, !dbg !1976
  %515 = icmp eq i8 %514, 0, !dbg !1976
  %516 = and i1 %114, %515, !dbg !1979
  br i1 %516, label %517, label %533, !dbg !1979

; <label>:517:                                    ; preds = %513
  %518 = icmp ult i64 %505, %512, !dbg !1981
  br i1 %518, label %519, label %521, !dbg !1986

; <label>:519:                                    ; preds = %517
  %520 = getelementptr inbounds i8, i8* %0, i64 %505, !dbg !1988
  store i8 39, i8* %520, align 1, !dbg !1988, !tbaa !856
  br label %521, !dbg !1988

; <label>:521:                                    ; preds = %519, %517
  %522 = add i64 %505, 1, !dbg !1990
  call void @llvm.dbg.value(metadata i64 %522, i64 0, metadata !1355, metadata !628), !dbg !1413
  %523 = icmp ult i64 %522, %512, !dbg !1992
  br i1 %523, label %524, label %526, !dbg !1996

; <label>:524:                                    ; preds = %521
  %525 = getelementptr inbounds i8, i8* %0, i64 %522, !dbg !1998
  store i8 36, i8* %525, align 1, !dbg !1998, !tbaa !856
  br label %526, !dbg !1998

; <label>:526:                                    ; preds = %524, %521
  %527 = add i64 %505, 2, !dbg !2000
  call void @llvm.dbg.value(metadata i64 %527, i64 0, metadata !1355, metadata !628), !dbg !1413
  %528 = icmp ult i64 %527, %512, !dbg !2002
  br i1 %528, label %529, label %531, !dbg !2006

; <label>:529:                                    ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527, !dbg !2008
  store i8 39, i8* %530, align 1, !dbg !2008, !tbaa !856
  br label %531, !dbg !2008

; <label>:531:                                    ; preds = %529, %526
  %532 = add i64 %505, 3, !dbg !2010
  call void @llvm.dbg.value(metadata i64 %532, i64 0, metadata !1355, metadata !628), !dbg !1413
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1362, metadata !628), !dbg !1421
  br label %533, !dbg !2012

; <label>:533:                                    ; preds = %513, %531
  %534 = phi i64 [ %532, %531 ], [ %505, %513 ]
  %535 = phi i8 [ 1, %531 ], [ %508, %513 ]
  call void @llvm.dbg.value(metadata i8 %535, i64 0, metadata !1362, metadata !628), !dbg !1421
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !1355, metadata !628), !dbg !1413
  %536 = icmp ult i64 %534, %512, !dbg !2014
  br i1 %536, label %537, label %539, !dbg !2018

; <label>:537:                                    ; preds = %533
  %538 = getelementptr inbounds i8, i8* %0, i64 %534, !dbg !2020
  store i8 92, i8* %538, align 1, !dbg !2020, !tbaa !856
  br label %539, !dbg !2020

; <label>:539:                                    ; preds = %533, %537
  %540 = add i64 %534, 1, !dbg !2022
  call void @llvm.dbg.value(metadata i64 %540, i64 0, metadata !1355, metadata !628), !dbg !1413
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !1346, metadata !628), !dbg !1405
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !1372, metadata !628), !dbg !1502
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !1371, metadata !628), !dbg !1501
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !1365, metadata !628), !dbg !1519
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !1363, metadata !628), !dbg !1422
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !1362, metadata !628), !dbg !1421
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !1348, metadata !628), !dbg !1407
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1356, metadata !628), !dbg !1414
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !1355, metadata !628), !dbg !1413
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !1354, metadata !628), !dbg !1488
  br label %569, !dbg !2024

; <label>:541:                                    ; preds = %441
  br label %542, !dbg !1405

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
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !1346, metadata !628), !dbg !1405
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !1372, metadata !628), !dbg !1502
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !1371, metadata !628), !dbg !1501
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !1365, metadata !628), !dbg !1519
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !1363, metadata !628), !dbg !1422
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !1362, metadata !628), !dbg !1421
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !1348, metadata !628), !dbg !1407
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1356, metadata !628), !dbg !1414
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !1355, metadata !628), !dbg !1413
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !1354, metadata !628), !dbg !1488
  %553 = and i8 %547, 1, !dbg !2024
  %554 = icmp ne i8 %553, 0, !dbg !2024
  %555 = and i8 %550, 1, !dbg !2028
  %556 = icmp eq i8 %555, 0, !dbg !2028
  %557 = and i1 %554, %556, !dbg !2024
  br i1 %557, label %558, label %569, !dbg !2024

; <label>:558:                                    ; preds = %542
  %559 = icmp ult i64 %544, %552, !dbg !2030
  br i1 %559, label %560, label %562, !dbg !2035

; <label>:560:                                    ; preds = %558
  %561 = getelementptr inbounds i8, i8* %0, i64 %544, !dbg !2037
  store i8 39, i8* %561, align 1, !dbg !2037, !tbaa !856
  br label %562, !dbg !2037

; <label>:562:                                    ; preds = %560, %558
  %563 = add i64 %544, 1, !dbg !2039
  call void @llvm.dbg.value(metadata i64 %563, i64 0, metadata !1355, metadata !628), !dbg !1413
  %564 = icmp ult i64 %563, %552, !dbg !2041
  br i1 %564, label %565, label %567, !dbg !2045

; <label>:565:                                    ; preds = %562
  %566 = getelementptr inbounds i8, i8* %0, i64 %563, !dbg !2047
  store i8 39, i8* %566, align 1, !dbg !2047, !tbaa !856
  br label %567, !dbg !2047

; <label>:567:                                    ; preds = %565, %562
  %568 = add i64 %544, 2, !dbg !2049
  call void @llvm.dbg.value(metadata i64 %568, i64 0, metadata !1355, metadata !628), !dbg !1413
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1362, metadata !628), !dbg !1421
  br label %569, !dbg !2051

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
  call void @llvm.dbg.value(metadata i8 %578, i64 0, metadata !1362, metadata !628), !dbg !1421
  call void @llvm.dbg.value(metadata i64 %577, i64 0, metadata !1355, metadata !628), !dbg !1413
  %579 = icmp ult i64 %577, %570, !dbg !2053
  br i1 %579, label %580, label %582, !dbg !2057

; <label>:580:                                    ; preds = %569
  %581 = getelementptr inbounds i8, i8* %0, i64 %577, !dbg !2059
  store i8 %572, i8* %581, align 1, !dbg !2059, !tbaa !856
  br label %582, !dbg !2059

; <label>:582:                                    ; preds = %580, %569
  %583 = add i64 %577, 1, !dbg !2061
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !1355, metadata !628), !dbg !1413
  %584 = and i8 %571, 1, !dbg !2063
  %585 = icmp eq i8 %584, 0, !dbg !2063
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1364, metadata !628), !dbg !1423
  %586 = select i1 %585, i8 0, i8 %130, !dbg !2065
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !1364, metadata !628), !dbg !1423
  br label %587, !dbg !2066

; <label>:587:                                    ; preds = %582, %209
  %588 = phi i64 [ %124, %209 ], [ %576, %582 ]
  %589 = phi i64 [ %125, %209 ], [ %583, %582 ]
  %590 = phi i64 [ %126, %209 ], [ %575, %582 ]
  %591 = phi i64 [ %156, %209 ], [ %574, %582 ]
  %592 = phi i8 [ %128, %209 ], [ %578, %582 ]
  %593 = phi i8 [ %129, %209 ], [ %573, %582 ]
  %594 = phi i8 [ %130, %209 ], [ %586, %582 ]
  %595 = phi i64 [ %131, %209 ], [ %570, %582 ]
  %596 = add i64 %588, 1, !dbg !2067
  call void @llvm.dbg.value(metadata i64 %596, i64 0, metadata !1354, metadata !628), !dbg !1488
  br label %123, !dbg !2069, !llvm.loop !2070

; <label>:597:                                    ; preds = %133, %135
  %598 = phi i64 [ %124, %133 ], [ -1, %135 ]
  %599 = icmp eq i64 %125, 0, !dbg !2073
  %600 = and i1 %114, %599, !dbg !2075
  %601 = xor i1 %600, true, !dbg !2075
  %602 = or i1 %112, %601, !dbg !2075
  br i1 %602, label %603, label %648, !dbg !2075

; <label>:603:                                    ; preds = %597
  %604 = and i1 %114, %112, !dbg !2076
  %605 = xor i1 %604, true, !dbg !2076
  %606 = and i8 %129, 1, !dbg !2078
  %607 = icmp eq i8 %606, 0, !dbg !2078
  %608 = or i1 %607, %605, !dbg !2076
  br i1 %608, label %618, label %609, !dbg !2076

; <label>:609:                                    ; preds = %603
  %610 = and i8 %130, 1, !dbg !2080
  %611 = icmp eq i8 %610, 0, !dbg !2080
  br i1 %611, label %614, label %612, !dbg !2083

; <label>:612:                                    ; preds = %609
  %613 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %126, i8* %2, i64 %598, i32 5, i32 %5, i32* %6, i8* %97, i8* %98), !dbg !2084
  br label %659, !dbg !2085

; <label>:614:                                    ; preds = %609
  %615 = icmp eq i64 %131, 0, !dbg !2086
  %616 = icmp ne i64 %126, 0, !dbg !2088
  %617 = and i1 %616, %615, !dbg !2090
  br i1 %617, label %27, label %618, !dbg !2090

; <label>:618:                                    ; preds = %603, %614
  %619 = icmp ne i8* %100, null, !dbg !2091
  %620 = and i1 %619, %112, !dbg !2093
  br i1 %620, label %621, label %638, !dbg !2093

; <label>:621:                                    ; preds = %618
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !1357, metadata !628), !dbg !1415
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1355, metadata !628), !dbg !1413
  %622 = load i8, i8* %100, align 1, !dbg !2094, !tbaa !856
  %623 = icmp eq i8 %622, 0, !dbg !2098
  br i1 %623, label %638, label %624, !dbg !2098

; <label>:624:                                    ; preds = %621
  br label %625, !dbg !2100

; <label>:625:                                    ; preds = %624, %632
  %626 = phi i8 [ %635, %632 ], [ %622, %624 ]
  %627 = phi i8* [ %634, %632 ], [ %100, %624 ]
  %628 = phi i64 [ %633, %632 ], [ %125, %624 ]
  %629 = icmp ult i64 %628, %131, !dbg !2100
  br i1 %629, label %630, label %632, !dbg !2104

; <label>:630:                                    ; preds = %625
  %631 = getelementptr inbounds i8, i8* %0, i64 %628, !dbg !2106
  store i8 %626, i8* %631, align 1, !dbg !2106, !tbaa !856
  br label %632, !dbg !2106

; <label>:632:                                    ; preds = %630, %625
  %633 = add i64 %628, 1, !dbg !2108
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !1355, metadata !628), !dbg !1413
  %634 = getelementptr inbounds i8, i8* %627, i64 1, !dbg !2110
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !1357, metadata !628), !dbg !1415
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !1357, metadata !628), !dbg !1415
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !1355, metadata !628), !dbg !1413
  %635 = load i8, i8* %634, align 1, !dbg !2094, !tbaa !856
  %636 = icmp eq i8 %635, 0, !dbg !2098
  br i1 %636, label %637, label %625, !dbg !2098, !llvm.loop !2112

; <label>:637:                                    ; preds = %632
  br label %638, !dbg !1413

; <label>:638:                                    ; preds = %637, %621, %618
  %639 = phi i64 [ %125, %618 ], [ %125, %621 ], [ %633, %637 ]
  call void @llvm.dbg.value(metadata i64 %639, i64 0, metadata !1355, metadata !628), !dbg !1413
  %640 = icmp ult i64 %639, %131, !dbg !2115
  br i1 %640, label %641, label %659, !dbg !2117

; <label>:641:                                    ; preds = %638
  %642 = getelementptr inbounds i8, i8* %0, i64 %639, !dbg !2118
  store i8 0, i8* %642, align 1, !dbg !2119, !tbaa !856
  br label %659, !dbg !2118

; <label>:643:                                    ; preds = %386
  br label %649, !dbg !1405

; <label>:644:                                    ; preds = %148, %161, %211, %225, %253, %255, %273, %276, %503
  %645 = phi i32 [ %96, %148 ], [ %96, %161 ], [ 2, %211 ], [ 5, %225 ], [ 2, %253 ], [ 2, %255 ], [ 2, %273 ], [ 2, %276 ], [ %96, %503 ]
  %646 = phi i64 [ %146, %148 ], [ %156, %161 ], [ %156, %211 ], [ %156, %225 ], [ %156, %253 ], [ %156, %255 ], [ %156, %273 ], [ %156, %276 ], [ %507, %503 ]
  %647 = phi i64 [ %131, %148 ], [ %131, %161 ], [ %131, %211 ], [ %131, %225 ], [ %131, %253 ], [ %131, %255 ], [ %131, %273 ], [ %131, %276 ], [ %512, %503 ]
  br label %649, !dbg !1405

; <label>:648:                                    ; preds = %597
  br label %649, !dbg !1405

; <label>:649:                                    ; preds = %648, %644, %643, %367
  %650 = phi i32 [ 2, %367 ], [ %96, %643 ], [ %645, %644 ], [ %96, %648 ]
  %651 = phi i64 [ %313, %367 ], [ %369, %643 ], [ %646, %644 ], [ %598, %648 ]
  %652 = phi i64 [ %131, %367 ], [ %131, %643 ], [ %647, %644 ], [ %131, %648 ]
  call void @llvm.dbg.value(metadata i64 %652, i64 0, metadata !1346, metadata !628), !dbg !1405
  call void @llvm.dbg.value(metadata i64 %651, i64 0, metadata !1348, metadata !628), !dbg !1407
  %653 = icmp ne i32 %650, 2, !dbg !2120
  %654 = icmp eq i8 %104, 0, !dbg !2122
  %655 = or i1 %653, %654, !dbg !2124
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !1349, metadata !628), !dbg !1408
  %656 = select i1 %655, i32 %650, i32 4, !dbg !2124
  call void @llvm.dbg.value(metadata i32 %656, i64 0, metadata !1349, metadata !628), !dbg !1408
  %657 = and i32 %5, -3, !dbg !2125
  %658 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %652, i8* %2, i64 %651, i32 %656, i32 %657, i32* null, i8* %97, i8* %98), !dbg !2126
  br label %659, !dbg !2127

; <label>:659:                                    ; preds = %638, %641, %649, %612
  %660 = phi i64 [ %658, %649 ], [ %613, %612 ], [ %639, %641 ], [ %639, %638 ]
  ret i64 %660, !dbg !2128
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !2129 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2133, metadata !628), !dbg !2137
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2134, metadata !628), !dbg !2138
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #10, !dbg !2139
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2135, metadata !628), !dbg !2140
  %4 = icmp eq i8* %3, %0, !dbg !2141
  br i1 %4, label %5, label %75, !dbg !2143

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #10, !dbg !2144
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !2136, metadata !628), !dbg !2145
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2146, metadata !628), !dbg !2162
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2160, metadata !628), !dbg !2165
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2161, metadata !628), !dbg !2166
  %7 = load i8, i8* %6, align 1, !tbaa !856
  %8 = sext i8 %7 to i32
  %9 = and i32 %8, -33, !dbg !2167
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !2167

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2170, metadata !628), !dbg !2184
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2182, metadata !628), !dbg !2188
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2183, metadata !628), !dbg !2189
  %11 = getelementptr inbounds i8, i8* %6, i64 1
  %12 = load i8, i8* %11, align 1, !tbaa !856
  %13 = sext i8 %12 to i32
  %14 = and i32 %13, -33, !dbg !2190
  %15 = icmp eq i32 %14, 84, !dbg !2190
  br i1 %15, label %16, label %72, !dbg !2190

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2193, metadata !628), !dbg !2206
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2204, metadata !628), !dbg !2210
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2205, metadata !628), !dbg !2211
  %17 = getelementptr inbounds i8, i8* %6, i64 2
  %18 = load i8, i8* %17, align 1, !tbaa !856
  %19 = sext i8 %18 to i32
  %20 = and i32 %19, -33, !dbg !2212
  %21 = icmp eq i32 %20, 70, !dbg !2212
  br i1 %21, label %22, label %72, !dbg !2212

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2215, metadata !628), !dbg !2227
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2225, metadata !628), !dbg !2231
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2226, metadata !628), !dbg !2232
  %23 = getelementptr inbounds i8, i8* %6, i64 3
  %24 = load i8, i8* %23, align 1, !tbaa !856
  %25 = icmp eq i8 %24, 45, !dbg !2233
  br i1 %25, label %26, label %72, !dbg !2236

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2238, metadata !628), !dbg !2249
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2247, metadata !628), !dbg !2253
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2248, metadata !628), !dbg !2254
  %27 = getelementptr inbounds i8, i8* %6, i64 4
  %28 = load i8, i8* %27, align 1, !tbaa !856
  %29 = icmp eq i8 %28, 56, !dbg !2255
  br i1 %29, label %30, label %72, !dbg !2258

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2260, metadata !628), !dbg !2270
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2268, metadata !628), !dbg !2274
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2269, metadata !628), !dbg !2275
  %31 = getelementptr inbounds i8, i8* %6, i64 5
  %32 = load i8, i8* %31, align 1, !tbaa !856
  %33 = icmp eq i8 %32, 0, !dbg !2276
  br i1 %33, label %34, label %72, !dbg !2279

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !2281, !tbaa !856
  %36 = icmp eq i8 %35, 96, !dbg !2282
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.59, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.60, i64 0, i64 0), !dbg !2281
  br label %75, !dbg !2283

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2170, metadata !628), !dbg !2284
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2182, metadata !628), !dbg !2288
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2183, metadata !628), !dbg !2289
  %39 = getelementptr inbounds i8, i8* %6, i64 1
  %40 = load i8, i8* %39, align 1, !tbaa !856
  %41 = sext i8 %40 to i32
  %42 = and i32 %41, -33, !dbg !2290
  %43 = icmp eq i32 %42, 66, !dbg !2290
  br i1 %43, label %44, label %72, !dbg !2290

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2193, metadata !628), !dbg !2291
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2204, metadata !628), !dbg !2293
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2205, metadata !628), !dbg !2294
  %45 = getelementptr inbounds i8, i8* %6, i64 2
  %46 = load i8, i8* %45, align 1, !tbaa !856
  %47 = icmp eq i8 %46, 49, !dbg !2295
  br i1 %47, label %48, label %72, !dbg !2297

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2215, metadata !628), !dbg !2299
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2225, metadata !628), !dbg !2301
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2226, metadata !628), !dbg !2302
  %49 = getelementptr inbounds i8, i8* %6, i64 3
  %50 = load i8, i8* %49, align 1, !tbaa !856
  %51 = icmp eq i8 %50, 56, !dbg !2303
  br i1 %51, label %52, label %72, !dbg !2304

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2238, metadata !628), !dbg !2305
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2247, metadata !628), !dbg !2307
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2248, metadata !628), !dbg !2308
  %53 = getelementptr inbounds i8, i8* %6, i64 4
  %54 = load i8, i8* %53, align 1, !tbaa !856
  %55 = icmp eq i8 %54, 48, !dbg !2309
  br i1 %55, label %56, label %72, !dbg !2310

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2260, metadata !628), !dbg !2311
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2268, metadata !628), !dbg !2313
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2269, metadata !628), !dbg !2314
  %57 = getelementptr inbounds i8, i8* %6, i64 5
  %58 = load i8, i8* %57, align 1, !tbaa !856
  %59 = icmp eq i8 %58, 51, !dbg !2315
  br i1 %59, label %60, label %72, !dbg !2316

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2317, metadata !628), !dbg !2326
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2324, metadata !628), !dbg !2330
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2325, metadata !628), !dbg !2331
  %61 = getelementptr inbounds i8, i8* %6, i64 6
  %62 = load i8, i8* %61, align 1, !tbaa !856
  %63 = icmp eq i8 %62, 48, !dbg !2332
  br i1 %63, label %64, label %72, !dbg !2335

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2337, metadata !628), !dbg !2345
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2343, metadata !628), !dbg !2349
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2344, metadata !628), !dbg !2350
  %65 = getelementptr inbounds i8, i8* %6, i64 7
  %66 = load i8, i8* %65, align 1, !tbaa !856
  %67 = icmp eq i8 %66, 0, !dbg !2351
  br i1 %67, label %68, label %72, !dbg !2354

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !2355, !tbaa !856
  %70 = icmp eq i8 %69, 96, !dbg !2356
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.61, i64 0, i64 0), !dbg !2355
  br label %75, !dbg !2357

; <label>:72:                                     ; preds = %5, %30, %26, %22, %16, %10, %64, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !2358
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.58, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.57, i64 0, i64 0), !dbg !2359
  br label %75, !dbg !2360

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !2361
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
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2362 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2366, metadata !628), !dbg !2369
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2367, metadata !628), !dbg !2370
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2368, metadata !628), !dbg !2371
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2372, metadata !628) #10, !dbg !2385
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2377, metadata !628) #10, !dbg !2387
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !2378, metadata !628) #10, !dbg !2388
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2379, metadata !628) #10, !dbg !2389
  %4 = icmp ne %struct.quoting_options* %2, null, !dbg !2390
  %5 = select i1 %4, %struct.quoting_options* %2, %struct.quoting_options* @default_quoting_options, !dbg !2390
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2380, metadata !628) #10, !dbg !2391
  %6 = tail call i32* @__errno_location() #1, !dbg !2392
  %7 = load i32, i32* %6, align 4, !dbg !2392, !tbaa !716
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !2381, metadata !628) #10, !dbg !2393
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2394
  %9 = load i32, i32* %8, align 4, !dbg !2394, !tbaa !1277
  %10 = or i32 %9, 1, !dbg !2395
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2382, metadata !628) #10, !dbg !2396
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2397
  %12 = load i32, i32* %11, align 8, !dbg !2397, !tbaa !1215
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2398
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2399
  %15 = load i8*, i8** %14, align 8, !dbg !2399, !tbaa !1304
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2400
  %17 = load i8*, i8** %16, align 8, !dbg !2400, !tbaa !1307
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #10, !dbg !2401
  %19 = add i64 %18, 1, !dbg !2402
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2383, metadata !628) #10, !dbg !2403
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2404, metadata !628) #10, !dbg !2409
  %20 = tail call noalias i8* @xmalloc(i64 %19) #10, !dbg !2411
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !2384, metadata !628) #10, !dbg !2412
  %21 = load i32, i32* %11, align 8, !dbg !2413, !tbaa !1215
  %22 = load i8*, i8** %14, align 8, !dbg !2414, !tbaa !1304
  %23 = load i8*, i8** %16, align 8, !dbg !2415, !tbaa !1307
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #10, !dbg !2416
  store i32 %7, i32* %6, align 4, !dbg !2417, !tbaa !716
  ret i8* %20, !dbg !2418
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2373 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2372, metadata !628), !dbg !2419
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2377, metadata !628), !dbg !2420
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !2378, metadata !628), !dbg !2421
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2379, metadata !628), !dbg !2422
  %5 = icmp ne %struct.quoting_options* %3, null, !dbg !2423
  %6 = select i1 %5, %struct.quoting_options* %3, %struct.quoting_options* @default_quoting_options, !dbg !2423
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2380, metadata !628), !dbg !2424
  %7 = tail call i32* @__errno_location() #1, !dbg !2425
  %8 = load i32, i32* %7, align 4, !dbg !2425, !tbaa !716
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !2381, metadata !628), !dbg !2426
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2427
  %10 = load i32, i32* %9, align 4, !dbg !2427, !tbaa !1277
  %11 = icmp ne i64* %2, null, !dbg !2428
  %12 = xor i1 %11, true, !dbg !2428
  %13 = zext i1 %12 to i32, !dbg !2428
  %14 = or i32 %10, %13, !dbg !2429
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !2382, metadata !628), !dbg !2430
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2431
  %16 = load i32, i32* %15, align 8, !dbg !2431, !tbaa !1215
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2432
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2433
  %19 = load i8*, i8** %18, align 8, !dbg !2433, !tbaa !1304
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2434
  %21 = load i8*, i8** %20, align 8, !dbg !2434, !tbaa !1307
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !2435
  %23 = add i64 %22, 1, !dbg !2436
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2383, metadata !628), !dbg !2437
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2404, metadata !628) #10, !dbg !2438
  %24 = tail call noalias i8* @xmalloc(i64 %23) #10, !dbg !2440
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !2384, metadata !628), !dbg !2441
  %25 = load i32, i32* %15, align 8, !dbg !2442, !tbaa !1215
  %26 = load i8*, i8** %18, align 8, !dbg !2443, !tbaa !1304
  %27 = load i8*, i8** %20, align 8, !dbg !2444, !tbaa !1307
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !2445
  store i32 %8, i32* %7, align 4, !dbg !2446, !tbaa !716
  br i1 %11, label %29, label %30, !dbg !2447

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2448, !tbaa !2450
  br label %30, !dbg !2452

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !2453
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !2454 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2458, !tbaa !636
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !2456, metadata !628), !dbg !2459
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2457, metadata !628), !dbg !2460
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2457, metadata !628), !dbg !2460
  %2 = load i32, i32* @nslots, align 4, !dbg !2461, !tbaa !716
  %3 = icmp sgt i32 %2, 1, !dbg !2465
  br i1 %3, label %4, label %14, !dbg !2466

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !2468

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !2468
  %8 = load i8*, i8** %7, align 8, !dbg !2468, !tbaa !2469
  tail call void @free(i8* %8) #10, !dbg !2471
  %9 = add nuw i64 %6, 1, !dbg !2472
  %10 = load i32, i32* @nslots, align 4, !dbg !2461, !tbaa !716
  %11 = sext i32 %10 to i64, !dbg !2465
  %12 = icmp slt i64 %9, %11, !dbg !2465
  br i1 %12, label %5, label %13, !dbg !2466, !llvm.loop !2474

; <label>:13:                                     ; preds = %5
  br label %14, !dbg !2477

; <label>:14:                                     ; preds = %13, %0
  %15 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2477
  %16 = load i8*, i8** %15, align 8, !dbg !2477, !tbaa !2469
  %17 = icmp eq i8* %16, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2479
  br i1 %17, label %19, label %18, !dbg !2480

; <label>:18:                                     ; preds = %14
  tail call void @free(i8* %16) #10, !dbg !2481
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2483, !tbaa !2484
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2485, !tbaa !2469
  br label %19, !dbg !2486

; <label>:19:                                     ; preds = %14, %18
  %20 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2487
  br i1 %20, label %23, label %21, !dbg !2489

; <label>:21:                                     ; preds = %19
  %22 = bitcast %struct.slotvec* %1 to i8*, !dbg !2490
  tail call void @free(i8* %22) #10, !dbg !2492
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2493, !tbaa !636
  br label %23, !dbg !2494

; <label>:23:                                     ; preds = %19, %21
  store i32 1, i32* @nslots, align 4, !dbg !2495, !tbaa !716
  ret void, !dbg !2496
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !2497 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2501, metadata !628), !dbg !2503
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2502, metadata !628), !dbg !2504
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2505
  ret i8* %3, !dbg !2506
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !2507 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2511, metadata !628), !dbg !2525
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2512, metadata !628), !dbg !2526
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2513, metadata !628), !dbg !2527
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2514, metadata !628), !dbg !2528
  %5 = tail call i32* @__errno_location() #1, !dbg !2529
  %6 = load i32, i32* %5, align 4, !dbg !2529, !tbaa !716
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !2515, metadata !628), !dbg !2530
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2531, !tbaa !636
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !2516, metadata !628), !dbg !2532
  %8 = icmp slt i32 %0, 0, !dbg !2533
  br i1 %8, label %9, label %10, !dbg !2535

; <label>:9:                                      ; preds = %4
  tail call void @abort() #14, !dbg !2536
  unreachable, !dbg !2536

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2537, !tbaa !716
  %12 = icmp sgt i32 %11, %0, !dbg !2538
  br i1 %12, label %34, label %13, !dbg !2539

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2540
  %15 = icmp ugt i32 %0, 2147483646, !dbg !2541
  br i1 %15, label %16, label %17, !dbg !2543

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !2544
  unreachable, !dbg !2544

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !2545
  %19 = select i1 %14, i8* null, i8* %18, !dbg !2545
  %20 = add nsw i32 %0, 1, !dbg !2547
  %21 = sext i32 %20 to i64, !dbg !2548
  %22 = shl nsw i64 %21, 4, !dbg !2549
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #10, !dbg !2550
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2550
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !2516, metadata !628), !dbg !2532
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2551, !tbaa !636
  br i1 %14, label %25, label %26, !dbg !2552

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !2553, !tbaa.struct !2555
  br label %26, !dbg !2556

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2557, !tbaa !716
  %28 = sext i32 %27 to i64, !dbg !2558
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2558
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2559
  %31 = sub nsw i32 %20, %27, !dbg !2560
  %32 = sext i32 %31 to i64, !dbg !2561
  %33 = shl nsw i64 %32, 4, !dbg !2562
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !2559
  store i32 %20, i32* @nslots, align 4, !dbg !2563, !tbaa !716
  br label %34, !dbg !2564

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !2516, metadata !628), !dbg !2532
  %36 = sext i32 %0 to i64, !dbg !2565
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2566
  %38 = load i64, i64* %37, align 8, !dbg !2566, !tbaa !2484
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !2520, metadata !628), !dbg !2567
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2568
  %40 = load i8*, i8** %39, align 8, !dbg !2568, !tbaa !2469
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !2522, metadata !628), !dbg !2569
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2570
  %42 = load i32, i32* %41, align 4, !dbg !2570, !tbaa !1277
  %43 = or i32 %42, 1, !dbg !2571
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !2523, metadata !628), !dbg !2572
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2573
  %45 = load i32, i32* %44, align 8, !dbg !2573, !tbaa !1215
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2574
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2575
  %48 = load i8*, i8** %47, align 8, !dbg !2575, !tbaa !1304
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2576
  %50 = load i8*, i8** %49, align 8, !dbg !2576, !tbaa !1307
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !2577
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !2524, metadata !628), !dbg !2578
  %52 = icmp ugt i64 %38, %51, !dbg !2579
  br i1 %52, label %63, label %53, !dbg !2581

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !2582
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2520, metadata !628), !dbg !2567
  store i64 %54, i64* %37, align 8, !dbg !2584, !tbaa !2484
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2585
  br i1 %55, label %57, label %56, !dbg !2587

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #10, !dbg !2588
  br label %57, !dbg !2588

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2404, metadata !628) #10, !dbg !2589
  %58 = tail call noalias i8* @xmalloc(i64 %54) #10, !dbg !2591
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !2522, metadata !628), !dbg !2569
  store i8* %58, i8** %39, align 8, !dbg !2592, !tbaa !2469
  %59 = load i32, i32* %44, align 8, !dbg !2593, !tbaa !1215
  %60 = load i8*, i8** %47, align 8, !dbg !2594, !tbaa !1304
  %61 = load i8*, i8** %49, align 8, !dbg !2595, !tbaa !1307
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !2596
  br label %63, !dbg !2597

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !2522, metadata !628), !dbg !2569
  store i32 %6, i32* %5, align 4, !dbg !2598, !tbaa !716
  ret i8* %64, !dbg !2599
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #7

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2600 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2604, metadata !628), !dbg !2607
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2605, metadata !628), !dbg !2608
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2606, metadata !628), !dbg !2609
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2610
  ret i8* %4, !dbg !2611
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !2612 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2616, metadata !628), !dbg !2617
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2501, metadata !628) #10, !dbg !2618
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2502, metadata !628) #10, !dbg !2620
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2621
  ret i8* %2, !dbg !2622
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !2623 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2627, metadata !628), !dbg !2629
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2628, metadata !628), !dbg !2630
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2604, metadata !628) #10, !dbg !2631
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2605, metadata !628) #10, !dbg !2633
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2606, metadata !628) #10, !dbg !2634
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2635
  ret i8* %3, !dbg !2636
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !2637 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2645, metadata !2651), !dbg !2652
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2641, metadata !628), !dbg !2654
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2642, metadata !628), !dbg !2655
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2643, metadata !628), !dbg !2656
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2657
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !2657
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2644, metadata !914), !dbg !2658
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2650, metadata !628) #10, !dbg !2659
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2660
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !2660
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2645, metadata !628) #10, !dbg !2652
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2645, metadata !2661) #10, !dbg !2652
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2652
  %8 = icmp eq i32 %1, 10, !dbg !2662
  br i1 %8, label %9, label %10, !dbg !2664

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14, !dbg !2665, !noalias !2666
  unreachable, !dbg !2665

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2645, metadata !2661) #10, !dbg !2652
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2669
  store i32 %1, i32* %11, align 8, !dbg !2669, !alias.scope !2666
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2669
  %13 = bitcast i32* %12 to i8*, !dbg !2669
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !2669
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !2670
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2644, metadata !914), !dbg !2658
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2671
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !2672
  ret i8* %14, !dbg !2673
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !2674 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2645, metadata !2651), !dbg !2683
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2678, metadata !628), !dbg !2685
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2679, metadata !628), !dbg !2686
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2680, metadata !628), !dbg !2687
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2681, metadata !628), !dbg !2688
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2689
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10, !dbg !2689
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2682, metadata !914), !dbg !2690
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2650, metadata !628) #10, !dbg !2691
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2692
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !2692
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2645, metadata !628) #10, !dbg !2683
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2645, metadata !2661) #10, !dbg !2683
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2683
  %9 = icmp eq i32 %1, 10, !dbg !2693
  br i1 %9, label %10, label %11, !dbg !2694

; <label>:10:                                     ; preds = %4
  tail call void @abort() #14, !dbg !2695, !noalias !2696
  unreachable, !dbg !2695

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2645, metadata !2661) #10, !dbg !2683
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2699
  store i32 %1, i32* %12, align 8, !dbg !2699, !alias.scope !2696
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2699
  %14 = bitcast i32* %13 to i8*, !dbg !2699
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #10, !dbg !2699
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !2700
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2682, metadata !914), !dbg !2690
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !2701
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10, !dbg !2702
  ret i8* %15, !dbg !2703
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !2704 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !2645, metadata !2651), !dbg !2710
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2708, metadata !628), !dbg !2713
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2709, metadata !628), !dbg !2714
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2641, metadata !628) #10, !dbg !2715
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2642, metadata !628) #10, !dbg !2716
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2643, metadata !628) #10, !dbg !2717
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2718
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10, !dbg !2718
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2644, metadata !914) #10, !dbg !2719
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2650, metadata !628) #10, !dbg !2720
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !2721
  call void @llvm.lifetime.start(i64 52, i8* nonnull %6), !dbg !2721
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2645, metadata !628) #10, !dbg !2710
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2645, metadata !2661) #10, !dbg !2710
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !2710
  %7 = icmp eq i32 %0, 10, !dbg !2722
  br i1 %7, label %8, label %9, !dbg !2723

; <label>:8:                                      ; preds = %2
  tail call void @abort() #14, !dbg !2724, !noalias !2725
  unreachable, !dbg !2724

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2645, metadata !2661) #10, !dbg !2710
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2728
  store i32 %0, i32* %10, align 8, !dbg !2728, !alias.scope !2725
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2728
  %12 = bitcast i32* %11 to i8*, !dbg !2728
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #10, !dbg !2728
  call void @llvm.lifetime.end(i64 52, i8* nonnull %6), !dbg !2729
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2644, metadata !914) #10, !dbg !2719
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !2730
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10, !dbg !2731
  ret i8* %13, !dbg !2732
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2733 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2645, metadata !2651), !dbg !2740
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2737, metadata !628), !dbg !2743
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2738, metadata !628), !dbg !2744
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2739, metadata !628), !dbg !2745
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2678, metadata !628) #10, !dbg !2746
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2679, metadata !628) #10, !dbg !2747
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2680, metadata !628) #10, !dbg !2748
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2681, metadata !628) #10, !dbg !2749
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2750
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !2750
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2682, metadata !914) #10, !dbg !2751
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2650, metadata !628) #10, !dbg !2752
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2753
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !2753
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2645, metadata !628) #10, !dbg !2740
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2645, metadata !2661) #10, !dbg !2740
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2740
  %8 = icmp eq i32 %0, 10, !dbg !2754
  br i1 %8, label %9, label %10, !dbg !2755

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14, !dbg !2756, !noalias !2757
  unreachable, !dbg !2756

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2645, metadata !2661) #10, !dbg !2740
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2760
  store i32 %0, i32* %11, align 8, !dbg !2760, !alias.scope !2757
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2760
  %13 = bitcast i32* %12 to i8*, !dbg !2760
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !2760
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !2761
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2682, metadata !914) #10, !dbg !2751
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #10, !dbg !2762
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !2763
  ret i8* %14, !dbg !2764
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !2765 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2769, metadata !628), !dbg !2773
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2770, metadata !628), !dbg !2774
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2771, metadata !628), !dbg !2775
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2776
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10, !dbg !2776
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2777, !tbaa.struct !2778
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2772, metadata !914), !dbg !2779
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1235, metadata !628), !dbg !2780
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1236, metadata !628), !dbg !2782
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1237, metadata !628), !dbg !2783
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1238, metadata !628), !dbg !2784
  %6 = lshr i8 %2, 5, !dbg !2785
  %7 = zext i8 %6 to i64, !dbg !2785
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2786
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1239, metadata !628), !dbg !2787
  %9 = and i8 %2, 31, !dbg !2788
  %10 = zext i8 %9 to i32, !dbg !2789
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1241, metadata !628), !dbg !2790
  %11 = load i32, i32* %8, align 4, !dbg !2791, !tbaa !716
  %12 = lshr i32 %11, %10, !dbg !2792
  %13 = and i32 %12, 1, !dbg !2793
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1242, metadata !628), !dbg !2794
  %14 = xor i32 %13, 1, !dbg !2795
  %15 = shl i32 %14, %10, !dbg !2796
  %16 = xor i32 %15, %11, !dbg !2797
  store i32 %16, i32* %8, align 4, !dbg !2797, !tbaa !716
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2772, metadata !914), !dbg !2779
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2798
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10, !dbg !2799
  ret i8* %17, !dbg !2800
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !2801 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2805, metadata !628), !dbg !2807
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2806, metadata !628), !dbg !2808
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2769, metadata !628) #10, !dbg !2809
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2770, metadata !628) #10, !dbg !2811
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2771, metadata !628) #10, !dbg !2812
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2813
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #10, !dbg !2813
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2814, !tbaa.struct !2778
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2772, metadata !914) #10, !dbg !2815
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1235, metadata !628) #10, !dbg !2816
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1236, metadata !628) #10, !dbg !2818
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1237, metadata !628) #10, !dbg !2819
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1238, metadata !628) #10, !dbg !2820
  %5 = lshr i8 %1, 5, !dbg !2821
  %6 = zext i8 %5 to i64, !dbg !2821
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2822
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !1239, metadata !628) #10, !dbg !2823
  %8 = and i8 %1, 31, !dbg !2824
  %9 = zext i8 %8 to i32, !dbg !2825
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1241, metadata !628) #10, !dbg !2826
  %10 = load i32, i32* %7, align 4, !dbg !2827, !tbaa !716
  %11 = lshr i32 %10, %9, !dbg !2828
  %12 = and i32 %11, 1, !dbg !2829
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !1242, metadata !628) #10, !dbg !2830
  %13 = xor i32 %12, 1, !dbg !2831
  %14 = shl i32 %13, %9, !dbg !2832
  %15 = xor i32 %14, %10, !dbg !2833
  store i32 %15, i32* %7, align 4, !dbg !2833, !tbaa !716
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2772, metadata !914) #10, !dbg !2815
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #10, !dbg !2834
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #10, !dbg !2835
  ret i8* %16, !dbg !2836
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !2837 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2839, metadata !628), !dbg !2840
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2805, metadata !628) #10, !dbg !2841
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2806, metadata !628) #10, !dbg !2843
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2769, metadata !628) #10, !dbg !2844
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2770, metadata !628) #10, !dbg !2846
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2771, metadata !628) #10, !dbg !2847
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2848
  call void @llvm.lifetime.start(i64 56, i8* nonnull %3) #10, !dbg !2848
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2849, !tbaa.struct !2778
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2772, metadata !914) #10, !dbg !2850
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1235, metadata !628) #10, !dbg !2851
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1236, metadata !628) #10, !dbg !2853
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1237, metadata !628) #10, !dbg !2854
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1238, metadata !628) #10, !dbg !2855
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2856
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !1239, metadata !628) #10, !dbg !2857
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1241, metadata !628) #10, !dbg !2858
  %5 = load i32, i32* %4, align 4, !dbg !2859, !tbaa !716
  %6 = or i32 %5, 67108864, !dbg !2860
  store i32 %6, i32* %4, align 4, !dbg !2860, !tbaa !716
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2772, metadata !914) #10, !dbg !2850
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #10, !dbg !2861
  call void @llvm.lifetime.end(i64 56, i8* nonnull %3) #10, !dbg !2862
  ret i8* %7, !dbg !2863
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !2864 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2866, metadata !628), !dbg !2868
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2867, metadata !628), !dbg !2869
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2769, metadata !628) #10, !dbg !2870
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2770, metadata !628) #10, !dbg !2872
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2771, metadata !628) #10, !dbg !2873
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2874
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #10, !dbg !2874
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2875, !tbaa.struct !2778
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2772, metadata !914) #10, !dbg !2876
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1235, metadata !628) #10, !dbg !2877
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1236, metadata !628) #10, !dbg !2879
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1237, metadata !628) #10, !dbg !2880
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1238, metadata !628) #10, !dbg !2881
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2882
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !1239, metadata !628) #10, !dbg !2883
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1241, metadata !628) #10, !dbg !2884
  %6 = load i32, i32* %5, align 4, !dbg !2885, !tbaa !716
  %7 = or i32 %6, 67108864, !dbg !2886
  store i32 %7, i32* %5, align 4, !dbg !2886, !tbaa !716
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2772, metadata !914) #10, !dbg !2876
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #10, !dbg !2887
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #10, !dbg !2888
  ret i8* %8, !dbg !2889
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !2890 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2645, metadata !2651), !dbg !2896
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2892, metadata !628), !dbg !2898
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2893, metadata !628), !dbg !2899
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2894, metadata !628), !dbg !2900
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2901
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10, !dbg !2901
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2650, metadata !628) #10, !dbg !2902
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2903
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !2903
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2645, metadata !628) #10, !dbg !2896
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2645, metadata !2661) #10, !dbg !2896
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2896
  %9 = icmp eq i32 %1, 10, !dbg !2904
  br i1 %9, label %10, label %11, !dbg !2905

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !2906, !noalias !2907
  unreachable, !dbg !2906

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2645, metadata !2661) #10, !dbg !2896
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !2910
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !2910
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !2911
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2912
  store i32 %1, i32* %13, align 8, !dbg !2912
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2912
  %15 = bitcast i32* %14 to i8*, !dbg !2912
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !2912
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2895, metadata !914), !dbg !2913
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1235, metadata !628), !dbg !2914
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1236, metadata !628), !dbg !2916
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1237, metadata !628), !dbg !2917
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1238, metadata !628), !dbg !2918
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !2919
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !1239, metadata !628), !dbg !2920
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1241, metadata !628), !dbg !2921
  %17 = load i32, i32* %16, align 4, !dbg !2922, !tbaa !716
  %18 = or i32 %17, 67108864, !dbg !2923
  store i32 %18, i32* %16, align 4, !dbg !2923, !tbaa !716
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2895, metadata !914), !dbg !2913
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2924
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10, !dbg !2925
  ret i8* %19, !dbg !2926
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !2927 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2931, metadata !628), !dbg !2935
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2932, metadata !628), !dbg !2936
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2933, metadata !628), !dbg !2937
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2934, metadata !628), !dbg !2938
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2939, metadata !628) #10, !dbg !2949
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2944, metadata !628) #10, !dbg !2951
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2945, metadata !628) #10, !dbg !2952
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2946, metadata !628) #10, !dbg !2953
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2947, metadata !628) #10, !dbg !2954
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2955
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !2955
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2956, !tbaa.struct !2778
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2948, metadata !914) #10, !dbg !2957
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1285, metadata !628) #10, !dbg !2958
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1286, metadata !628) #10, !dbg !2960
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1287, metadata !628) #10, !dbg !2961
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1285, metadata !628) #10, !dbg !2958
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1285, metadata !628) #10, !dbg !2958
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2962
  store i32 10, i32* %7, align 8, !dbg !2963, !tbaa !1215
  %8 = icmp ne i8* %1, null, !dbg !2964
  %9 = icmp ne i8* %2, null, !dbg !2965
  %10 = and i1 %8, %9, !dbg !2966
  br i1 %10, label %12, label %11, !dbg !2966

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14, !dbg !2967
  unreachable, !dbg !2967

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2968
  store i8* %1, i8** %13, align 8, !dbg !2969, !tbaa !1304
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2970
  store i8* %2, i8** %14, align 8, !dbg !2971, !tbaa !1307
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2948, metadata !914) #10, !dbg !2957
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #10, !dbg !2972
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !2973
  ret i8* %15, !dbg !2974
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !2940 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2939, metadata !628), !dbg !2975
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2944, metadata !628), !dbg !2976
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2945, metadata !628), !dbg !2977
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2946, metadata !628), !dbg !2978
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !2947, metadata !628), !dbg !2979
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2980
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10, !dbg !2980
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2981, !tbaa.struct !2778
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2948, metadata !914), !dbg !2982
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1285, metadata !628) #10, !dbg !2983
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1286, metadata !628) #10, !dbg !2985
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1287, metadata !628) #10, !dbg !2986
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1285, metadata !628) #10, !dbg !2983
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1285, metadata !628) #10, !dbg !2983
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2987
  store i32 10, i32* %8, align 8, !dbg !2988, !tbaa !1215
  %9 = icmp ne i8* %1, null, !dbg !2989
  %10 = icmp ne i8* %2, null, !dbg !2990
  %11 = and i1 %9, %10, !dbg !2991
  br i1 %11, label %13, label %12, !dbg !2991

; <label>:12:                                     ; preds = %5
  tail call void @abort() #14, !dbg !2992
  unreachable, !dbg !2992

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2993
  store i8* %1, i8** %14, align 8, !dbg !2994, !tbaa !1304
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2995
  store i8* %2, i8** %15, align 8, !dbg !2996, !tbaa !1307
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2948, metadata !914), !dbg !2982
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2997
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10, !dbg !2998
  ret i8* %16, !dbg !2999
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !3000 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3004, metadata !628), !dbg !3007
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3005, metadata !628), !dbg !3008
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3006, metadata !628), !dbg !3009
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2931, metadata !628) #10, !dbg !3010
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2932, metadata !628) #10, !dbg !3012
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2933, metadata !628) #10, !dbg !3013
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2934, metadata !628) #10, !dbg !3014
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2939, metadata !628) #10, !dbg !3015
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2944, metadata !628) #10, !dbg !3017
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2945, metadata !628) #10, !dbg !3018
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2946, metadata !628) #10, !dbg !3019
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2947, metadata !628) #10, !dbg !3020
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3021
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10, !dbg !3021
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3022, !tbaa.struct !2778
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2948, metadata !914) #10, !dbg !3023
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1285, metadata !628) #10, !dbg !3024
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1286, metadata !628) #10, !dbg !3026
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1287, metadata !628) #10, !dbg !3027
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1285, metadata !628) #10, !dbg !3024
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1285, metadata !628) #10, !dbg !3024
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3028
  store i32 10, i32* %6, align 8, !dbg !3029, !tbaa !1215
  %7 = icmp ne i8* %0, null, !dbg !3030
  %8 = icmp ne i8* %1, null, !dbg !3031
  %9 = and i1 %7, %8, !dbg !3032
  br i1 %9, label %11, label %10, !dbg !3032

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !3033
  unreachable, !dbg !3033

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3034
  store i8* %0, i8** %12, align 8, !dbg !3035, !tbaa !1304
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3036
  store i8* %1, i8** %13, align 8, !dbg !3037, !tbaa !1307
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2948, metadata !914) #10, !dbg !3023
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !3038
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10, !dbg !3039
  ret i8* %14, !dbg !3040
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !3041 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3045, metadata !628), !dbg !3049
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3046, metadata !628), !dbg !3050
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3047, metadata !628), !dbg !3051
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3048, metadata !628), !dbg !3052
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2939, metadata !628) #10, !dbg !3053
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2944, metadata !628) #10, !dbg !3055
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2945, metadata !628) #10, !dbg !3056
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2946, metadata !628) #10, !dbg !3057
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2947, metadata !628) #10, !dbg !3058
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3059
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !3059
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3060, !tbaa.struct !2778
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2948, metadata !914) #10, !dbg !3061
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1285, metadata !628) #10, !dbg !3062
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1286, metadata !628) #10, !dbg !3064
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1287, metadata !628) #10, !dbg !3065
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1285, metadata !628) #10, !dbg !3062
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1285, metadata !628) #10, !dbg !3062
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3066
  store i32 10, i32* %7, align 8, !dbg !3067, !tbaa !1215
  %8 = icmp ne i8* %0, null, !dbg !3068
  %9 = icmp ne i8* %1, null, !dbg !3069
  %10 = and i1 %8, %9, !dbg !3070
  br i1 %10, label %12, label %11, !dbg !3070

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14, !dbg !3071
  unreachable, !dbg !3071

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3072
  store i8* %0, i8** %13, align 8, !dbg !3073, !tbaa !1304
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3074
  store i8* %1, i8** %14, align 8, !dbg !3075, !tbaa !1307
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2948, metadata !914) #10, !dbg !3061
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #10, !dbg !3076
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !3077
  ret i8* %15, !dbg !3078
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3079 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3083, metadata !628), !dbg !3086
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3084, metadata !628), !dbg !3087
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3085, metadata !628), !dbg !3088
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3089
  ret i8* %4, !dbg !3090
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !3091 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3095, metadata !628), !dbg !3097
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3096, metadata !628), !dbg !3098
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3083, metadata !628) #10, !dbg !3099
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3084, metadata !628) #10, !dbg !3101
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3085, metadata !628) #10, !dbg !3102
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !3103
  ret i8* %3, !dbg !3104
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !3105 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3109, metadata !628), !dbg !3111
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3110, metadata !628), !dbg !3112
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3083, metadata !628) #10, !dbg !3113
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3084, metadata !628) #10, !dbg !3115
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3085, metadata !628) #10, !dbg !3116
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !3117
  ret i8* %3, !dbg !3118
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !3119 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3123, metadata !628), !dbg !3124
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3109, metadata !628) #10, !dbg !3125
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3110, metadata !628) #10, !dbg !3127
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3083, metadata !628) #10, !dbg !3128
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3084, metadata !628) #10, !dbg !3130
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3085, metadata !628) #10, !dbg !3131
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !3132
  ret i8* %2, !dbg !3133
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !3134 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3191, metadata !628), !dbg !3197
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3192, metadata !628), !dbg !3198
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3193, metadata !628), !dbg !3199
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3194, metadata !628), !dbg !3200
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3195, metadata !628), !dbg !3201
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !3196, metadata !628), !dbg !3202
  %7 = icmp eq i8* %1, null, !dbg !3203
  br i1 %7, label %10, label %8, !dbg !3205

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.74, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #10, !dbg !3206
  br label %12, !dbg !3206

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.75, i64 0, i64 0), i8* %2, i8* %3) #10, !dbg !3207
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.76, i64 0, i64 0), i32 5) #10, !dbg !3208
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #10, !dbg !3209
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.77, i64 0, i64 0), i32 5) #10, !dbg !3211
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #10, !dbg !3212
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
  ], !dbg !3213

; <label>:17:                                     ; preds = %12
  tail call void @abort() #14, !dbg !3214
  unreachable, !dbg !3214

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.78, i64 0, i64 0), i32 5) #10, !dbg !3216
  %20 = load i8*, i8** %4, align 8, !dbg !3216, !tbaa !636
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #10, !dbg !3217
  br label %146, !dbg !3219

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.79, i64 0, i64 0), i32 5) #10, !dbg !3220
  %24 = load i8*, i8** %4, align 8, !dbg !3220, !tbaa !636
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3220
  %26 = load i8*, i8** %25, align 8, !dbg !3220, !tbaa !636
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #10, !dbg !3221
  br label %146, !dbg !3222

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.80, i64 0, i64 0), i32 5) #10, !dbg !3223
  %30 = load i8*, i8** %4, align 8, !dbg !3223, !tbaa !636
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3223
  %32 = load i8*, i8** %31, align 8, !dbg !3223, !tbaa !636
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3223
  %34 = load i8*, i8** %33, align 8, !dbg !3223, !tbaa !636
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #10, !dbg !3224
  br label %146, !dbg !3225

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.81, i64 0, i64 0), i32 5) #10, !dbg !3226
  %38 = load i8*, i8** %4, align 8, !dbg !3226, !tbaa !636
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3226
  %40 = load i8*, i8** %39, align 8, !dbg !3226, !tbaa !636
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3226
  %42 = load i8*, i8** %41, align 8, !dbg !3226, !tbaa !636
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3226
  %44 = load i8*, i8** %43, align 8, !dbg !3226, !tbaa !636
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #10, !dbg !3227
  br label %146, !dbg !3228

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.82, i64 0, i64 0), i32 5) #10, !dbg !3229
  %48 = load i8*, i8** %4, align 8, !dbg !3229, !tbaa !636
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3229
  %50 = load i8*, i8** %49, align 8, !dbg !3229, !tbaa !636
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3229
  %52 = load i8*, i8** %51, align 8, !dbg !3229, !tbaa !636
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3229
  %54 = load i8*, i8** %53, align 8, !dbg !3229, !tbaa !636
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3229
  %56 = load i8*, i8** %55, align 8, !dbg !3229, !tbaa !636
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #10, !dbg !3230
  br label %146, !dbg !3231

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.83, i64 0, i64 0), i32 5) #10, !dbg !3232
  %60 = load i8*, i8** %4, align 8, !dbg !3232, !tbaa !636
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3232
  %62 = load i8*, i8** %61, align 8, !dbg !3232, !tbaa !636
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3232
  %64 = load i8*, i8** %63, align 8, !dbg !3232, !tbaa !636
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3232
  %66 = load i8*, i8** %65, align 8, !dbg !3232, !tbaa !636
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3232
  %68 = load i8*, i8** %67, align 8, !dbg !3232, !tbaa !636
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3232
  %70 = load i8*, i8** %69, align 8, !dbg !3232, !tbaa !636
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #10, !dbg !3233
  br label %146, !dbg !3234

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.84, i64 0, i64 0), i32 5) #10, !dbg !3235
  %74 = load i8*, i8** %4, align 8, !dbg !3235, !tbaa !636
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3235
  %76 = load i8*, i8** %75, align 8, !dbg !3235, !tbaa !636
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3235
  %78 = load i8*, i8** %77, align 8, !dbg !3235, !tbaa !636
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3235
  %80 = load i8*, i8** %79, align 8, !dbg !3235, !tbaa !636
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3235
  %82 = load i8*, i8** %81, align 8, !dbg !3235, !tbaa !636
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3235
  %84 = load i8*, i8** %83, align 8, !dbg !3235, !tbaa !636
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3235
  %86 = load i8*, i8** %85, align 8, !dbg !3235, !tbaa !636
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #10, !dbg !3236
  br label %146, !dbg !3237

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.85, i64 0, i64 0), i32 5) #10, !dbg !3238
  %90 = load i8*, i8** %4, align 8, !dbg !3238, !tbaa !636
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3238
  %92 = load i8*, i8** %91, align 8, !dbg !3238, !tbaa !636
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3238
  %94 = load i8*, i8** %93, align 8, !dbg !3238, !tbaa !636
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3238
  %96 = load i8*, i8** %95, align 8, !dbg !3238, !tbaa !636
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3238
  %98 = load i8*, i8** %97, align 8, !dbg !3238, !tbaa !636
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3238
  %100 = load i8*, i8** %99, align 8, !dbg !3238, !tbaa !636
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3238
  %102 = load i8*, i8** %101, align 8, !dbg !3238, !tbaa !636
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3238
  %104 = load i8*, i8** %103, align 8, !dbg !3238, !tbaa !636
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #10, !dbg !3239
  br label %146, !dbg !3240

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.86, i64 0, i64 0), i32 5) #10, !dbg !3241
  %108 = load i8*, i8** %4, align 8, !dbg !3241, !tbaa !636
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3241
  %110 = load i8*, i8** %109, align 8, !dbg !3241, !tbaa !636
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3241
  %112 = load i8*, i8** %111, align 8, !dbg !3241, !tbaa !636
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3241
  %114 = load i8*, i8** %113, align 8, !dbg !3241, !tbaa !636
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3241
  %116 = load i8*, i8** %115, align 8, !dbg !3241, !tbaa !636
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3241
  %118 = load i8*, i8** %117, align 8, !dbg !3241, !tbaa !636
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3241
  %120 = load i8*, i8** %119, align 8, !dbg !3241, !tbaa !636
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3241
  %122 = load i8*, i8** %121, align 8, !dbg !3241, !tbaa !636
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3241
  %124 = load i8*, i8** %123, align 8, !dbg !3241, !tbaa !636
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #10, !dbg !3242
  br label %146, !dbg !3243

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.87, i64 0, i64 0), i32 5) #10, !dbg !3244
  %128 = load i8*, i8** %4, align 8, !dbg !3244, !tbaa !636
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3244
  %130 = load i8*, i8** %129, align 8, !dbg !3244, !tbaa !636
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3244
  %132 = load i8*, i8** %131, align 8, !dbg !3244, !tbaa !636
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3244
  %134 = load i8*, i8** %133, align 8, !dbg !3244, !tbaa !636
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3244
  %136 = load i8*, i8** %135, align 8, !dbg !3244, !tbaa !636
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3244
  %138 = load i8*, i8** %137, align 8, !dbg !3244, !tbaa !636
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3244
  %140 = load i8*, i8** %139, align 8, !dbg !3244, !tbaa !636
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3244
  %142 = load i8*, i8** %141, align 8, !dbg !3244, !tbaa !636
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3244
  %144 = load i8*, i8** %143, align 8, !dbg !3244, !tbaa !636
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #10, !dbg !3245
  br label %146, !dbg !3246

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !3247
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !3248 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3252, metadata !628), !dbg !3258
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3253, metadata !628), !dbg !3259
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3254, metadata !628), !dbg !3260
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3255, metadata !628), !dbg !3261
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3256, metadata !628), !dbg !3262
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3257, metadata !628), !dbg !3263
  br label %6, !dbg !3264

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3257, metadata !628), !dbg !3263
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3266
  %9 = load i8*, i8** %8, align 8, !dbg !3266, !tbaa !636
  %10 = icmp eq i8* %9, null, !dbg !3269
  %11 = add i64 %7, 1, !dbg !3271
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !3257, metadata !628), !dbg !3263
  br i1 %10, label %12, label %6, !dbg !3269, !llvm.loop !3273

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3276
  ret void, !dbg !3277
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !3278 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3289, metadata !628), !dbg !3297
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3290, metadata !628), !dbg !3298
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3291, metadata !628), !dbg !3299
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3292, metadata !628), !dbg !3300
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !3293, metadata !628), !dbg !3301
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3302
  call void @llvm.lifetime.start(i64 80, i8* nonnull %7) #10, !dbg !3302
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3295, metadata !628), !dbg !3303
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3294, metadata !628), !dbg !3304
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3294, metadata !628), !dbg !3304
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %11 = load i32, i32* %8, align 8, !dbg !3305
  %12 = icmp ult i32 %11, 41, !dbg !3305
  br i1 %12, label %13, label %18, !dbg !3305

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !3309
  %15 = sext i32 %11 to i64, !dbg !3309
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3309
  %17 = add i32 %11, 8, !dbg !3309
  store i32 %17, i32* %8, align 8, !dbg !3309
  br label %21, !dbg !3309

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !3311
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3311
  store i8* %20, i8** %10, align 8, !dbg !3311
  br label %21, !dbg !3311

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ], !dbg !3305
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3313
  %25 = load i8*, i8** %24, align 8, !dbg !3313
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3315
  store i8* %25, i8** %26, align 16, !dbg !3316, !tbaa !636
  %27 = icmp eq i8* %25, null, !dbg !3317
  br i1 %27, label %30, label %28, !dbg !3318

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3294, metadata !628), !dbg !3304
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3294, metadata !628), !dbg !3304
  %29 = icmp ult i32 %22, 41, !dbg !3305
  br i1 %29, label %35, label %32, !dbg !3305

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3320
  call void @llvm.lifetime.end(i64 80, i8* nonnull %7) #10, !dbg !3321
  ret void, !dbg !3321

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !3311
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3311
  store i8* %34, i8** %10, align 8, !dbg !3311
  br label %40, !dbg !3311

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !3309
  %37 = sext i32 %22 to i64, !dbg !3309
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3309
  %39 = add i32 %22, 8, !dbg !3309
  store i32 %39, i32* %8, align 8, !dbg !3309
  br label %40, !dbg !3309

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ], !dbg !3305
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3313
  %44 = load i8*, i8** %43, align 8, !dbg !3313
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3315
  store i8* %44, i8** %45, align 8, !dbg !3316, !tbaa !636
  %46 = icmp eq i8* %44, null, !dbg !3317
  br i1 %46, label %30, label %47, !dbg !3318

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3294, metadata !628), !dbg !3304
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3294, metadata !628), !dbg !3304
  %48 = icmp ult i32 %41, 41, !dbg !3305
  br i1 %48, label %52, label %49, !dbg !3305

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !3311
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3311
  store i8* %51, i8** %10, align 8, !dbg !3311
  br label %57, !dbg !3311

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !3309
  %54 = sext i32 %41 to i64, !dbg !3309
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3309
  %56 = add i32 %41, 8, !dbg !3309
  store i32 %56, i32* %8, align 8, !dbg !3309
  br label %57, !dbg !3309

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ], !dbg !3305
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3313
  %61 = load i8*, i8** %60, align 8, !dbg !3313
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3315
  store i8* %61, i8** %62, align 16, !dbg !3316, !tbaa !636
  %63 = icmp eq i8* %61, null, !dbg !3317
  br i1 %63, label %30, label %64, !dbg !3318

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3294, metadata !628), !dbg !3304
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3294, metadata !628), !dbg !3304
  %65 = icmp ult i32 %58, 41, !dbg !3305
  br i1 %65, label %69, label %66, !dbg !3305

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !3311
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3311
  store i8* %68, i8** %10, align 8, !dbg !3311
  br label %74, !dbg !3311

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !3309
  %71 = sext i32 %58 to i64, !dbg !3309
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3309
  %73 = add i32 %58, 8, !dbg !3309
  store i32 %73, i32* %8, align 8, !dbg !3309
  br label %74, !dbg !3309

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ], !dbg !3305
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3313
  %78 = load i8*, i8** %77, align 8, !dbg !3313
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3315
  store i8* %78, i8** %79, align 8, !dbg !3316, !tbaa !636
  %80 = icmp eq i8* %78, null, !dbg !3317
  br i1 %80, label %30, label %81, !dbg !3318

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3294, metadata !628), !dbg !3304
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3294, metadata !628), !dbg !3304
  %82 = icmp ult i32 %75, 41, !dbg !3305
  br i1 %82, label %86, label %83, !dbg !3305

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !3311
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3311
  store i8* %85, i8** %10, align 8, !dbg !3311
  br label %91, !dbg !3311

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !3309
  %88 = sext i32 %75 to i64, !dbg !3309
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3309
  %90 = add i32 %75, 8, !dbg !3309
  store i32 %90, i32* %8, align 8, !dbg !3309
  br label %91, !dbg !3309

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ], !dbg !3305
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3313
  %95 = load i8*, i8** %94, align 8, !dbg !3313
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3315
  store i8* %95, i8** %96, align 16, !dbg !3316, !tbaa !636
  %97 = icmp eq i8* %95, null, !dbg !3317
  br i1 %97, label %30, label %98, !dbg !3318

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3294, metadata !628), !dbg !3304
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3294, metadata !628), !dbg !3304
  %99 = icmp ult i32 %92, 41, !dbg !3305
  br i1 %99, label %103, label %100, !dbg !3305

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !3311
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3311
  store i8* %102, i8** %10, align 8, !dbg !3311
  br label %108, !dbg !3311

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !3309
  %105 = sext i32 %92 to i64, !dbg !3309
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3309
  %107 = add i32 %92, 8, !dbg !3309
  store i32 %107, i32* %8, align 8, !dbg !3309
  br label %108, !dbg !3309

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3313
  %111 = load i8*, i8** %110, align 8, !dbg !3313
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3315
  store i8* %111, i8** %112, align 8, !dbg !3316, !tbaa !636
  %113 = icmp eq i8* %111, null, !dbg !3317
  br i1 %113, label %30, label %114, !dbg !3318

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3294, metadata !628), !dbg !3304
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3294, metadata !628), !dbg !3304
  %115 = load i8*, i8** %10, align 8, !dbg !3311
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3311
  store i8* %116, i8** %10, align 8, !dbg !3311
  %117 = bitcast i8* %115 to i8**, !dbg !3313
  %118 = load i8*, i8** %117, align 8, !dbg !3313
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3315
  store i8* %118, i8** %119, align 16, !dbg !3316, !tbaa !636
  %120 = icmp eq i8* %118, null, !dbg !3317
  br i1 %120, label %30, label %121, !dbg !3318

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3294, metadata !628), !dbg !3304
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3294, metadata !628), !dbg !3304
  %122 = load i8*, i8** %10, align 8, !dbg !3311
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3311
  store i8* %123, i8** %10, align 8, !dbg !3311
  %124 = bitcast i8* %122 to i8**, !dbg !3313
  %125 = load i8*, i8** %124, align 8, !dbg !3313
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3315
  store i8* %125, i8** %126, align 8, !dbg !3316, !tbaa !636
  %127 = icmp eq i8* %125, null, !dbg !3317
  br i1 %127, label %30, label %128, !dbg !3318

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3294, metadata !628), !dbg !3304
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3294, metadata !628), !dbg !3304
  %129 = load i8*, i8** %10, align 8, !dbg !3311
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3311
  store i8* %130, i8** %10, align 8, !dbg !3311
  %131 = bitcast i8* %129 to i8**, !dbg !3313
  %132 = load i8*, i8** %131, align 8, !dbg !3313
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3315
  store i8* %132, i8** %133, align 16, !dbg !3316, !tbaa !636
  %134 = icmp eq i8* %132, null, !dbg !3317
  br i1 %134, label %30, label %135, !dbg !3318

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3294, metadata !628), !dbg !3304
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3294, metadata !628), !dbg !3304
  %136 = load i8*, i8** %10, align 8, !dbg !3311
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3311
  store i8* %137, i8** %10, align 8, !dbg !3311
  %138 = bitcast i8* %136 to i8**, !dbg !3313
  %139 = load i8*, i8** %138, align 8, !dbg !3313
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3315
  store i8* %139, i8** %140, align 8, !dbg !3316, !tbaa !636
  %141 = icmp eq i8* %139, null, !dbg !3317
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3294, metadata !628), !dbg !3304
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3294, metadata !628), !dbg !3304
  %142 = select i1 %141, i64 9, i64 10, !dbg !3318
  br label %30, !dbg !3318
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !3322 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3326, metadata !628), !dbg !3336
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3327, metadata !628), !dbg !3337
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3328, metadata !628), !dbg !3338
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3329, metadata !628), !dbg !3339
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3340
  call void @llvm.lifetime.start(i64 24, i8* nonnull %6) #10, !dbg !3340
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3330, metadata !628), !dbg !3341
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3342
  call void @llvm.va_start(i8* nonnull %6), !dbg !3342
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3343
  call void @llvm.va_end(i8* nonnull %6), !dbg !3344
  call void @llvm.lifetime.end(i64 24, i8* nonnull %6) #10, !dbg !3345
  ret void, !dbg !3345
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #10

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !3346 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.90, i64 0, i64 0), i32 5) #10, !dbg !3347
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.91, i64 0, i64 0)) #10, !dbg !3348
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0), i32 5) #10, !dbg !3350
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.92, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.93, i64 0, i64 0)) #10, !dbg !3351
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19, i64 0, i64 0), i32 5) #10, !dbg !3352
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3352, !tbaa !636
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #10, !dbg !3353
  ret void, !dbg !3354
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #12 !dbg !3355 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3359, metadata !628), !dbg !3361
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3360, metadata !628), !dbg !3362
  %3 = udiv i64 9223372036854775807, %1, !dbg !3363
  %4 = icmp ult i64 %3, %0, !dbg !3363
  br i1 %4, label %5, label %6, !dbg !3365

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !3366
  unreachable, !dbg !3366

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3367
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3368, metadata !628) #10, !dbg !3375
  %8 = tail call noalias i8* @malloc(i64 %7) #10, !dbg !3377
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3374, metadata !628) #10, !dbg !3378
  %9 = icmp eq i8* %8, null, !dbg !3379
  %10 = icmp ne i64 %7, 0, !dbg !3381
  %11 = and i1 %10, %9, !dbg !3383
  br i1 %11, label %12, label %13, !dbg !3383

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #14, !dbg !3384
  unreachable, !dbg !3384

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !3385
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !3369 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3368, metadata !628), !dbg !3386
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3387
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3374, metadata !628), !dbg !3388
  %3 = icmp eq i8* %2, null, !dbg !3389
  %4 = icmp ne i64 %0, 0, !dbg !3390
  %5 = and i1 %4, %3, !dbg !3391
  br i1 %5, label %6, label %7, !dbg !3391

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3392
  unreachable, !dbg !3392

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3393
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #12 !dbg !3394 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3398, metadata !628), !dbg !3401
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3399, metadata !628), !dbg !3402
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3400, metadata !628), !dbg !3403
  %4 = udiv i64 9223372036854775807, %2, !dbg !3404
  %5 = icmp ult i64 %4, %1, !dbg !3404
  br i1 %5, label %6, label %7, !dbg !3406

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #14, !dbg !3407
  unreachable, !dbg !3407

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3408
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3409, metadata !628) #10, !dbg !3415
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !3414, metadata !628) #10, !dbg !3417
  %9 = icmp eq i64 %8, 0, !dbg !3418
  %10 = icmp ne i8* %0, null, !dbg !3420
  %11 = and i1 %10, %9, !dbg !3422
  br i1 %11, label %12, label %13, !dbg !3422

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #10, !dbg !3423
  br label %19, !dbg !3425

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #10, !dbg !3426
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !3409, metadata !628) #10, !dbg !3415
  %15 = icmp eq i8* %14, null, !dbg !3427
  %16 = icmp ne i64 %8, 0, !dbg !3429
  %17 = and i1 %16, %15, !dbg !3431
  br i1 %17, label %18, label %19, !dbg !3431

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !3432
  unreachable, !dbg !3432

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !3433
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !3410 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3409, metadata !628), !dbg !3434
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3414, metadata !628), !dbg !3435
  %3 = icmp eq i64 %1, 0, !dbg !3436
  %4 = icmp ne i8* %0, null, !dbg !3437
  %5 = and i1 %4, %3, !dbg !3438
  br i1 %5, label %6, label %7, !dbg !3438

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #10, !dbg !3439
  br label %13, !dbg !3440

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #10, !dbg !3441
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3409, metadata !628), !dbg !3434
  %9 = icmp eq i8* %8, null, !dbg !3442
  %10 = icmp ne i64 %1, 0, !dbg !3443
  %11 = and i1 %10, %9, !dbg !3444
  br i1 %11, label %12, label %13, !dbg !3444

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #14, !dbg !3445
  unreachable, !dbg !3445

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !3446
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #12 !dbg !588 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !593, metadata !628), !dbg !3447
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !594, metadata !628), !dbg !3448
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !595, metadata !628), !dbg !3449
  %4 = load i64, i64* %1, align 8, !dbg !3450, !tbaa !2450
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !596, metadata !628), !dbg !3451
  %5 = icmp eq i8* %0, null, !dbg !3452
  br i1 %5, label %6, label %13, !dbg !3454

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3455
  br i1 %7, label %8, label %17, !dbg !3458

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3459
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !596, metadata !628), !dbg !3451
  %10 = icmp ugt i64 %2, 128, !dbg !3461
  %11 = zext i1 %10 to i64, !dbg !3461
  %12 = add nuw nsw i64 %9, %11, !dbg !3462
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !596, metadata !628), !dbg !3451
  br label %17, !dbg !3463

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !3464
  %15 = icmp ugt i64 %14, %4, !dbg !3467
  br i1 %15, label %20, label %16, !dbg !3468

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !3469
  unreachable, !dbg !3469

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !596, metadata !628), !dbg !3451
  store i64 %18, i64* %1, align 8, !dbg !3470, !tbaa !2450
  %19 = mul i64 %18, %2, !dbg !3471
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3409, metadata !628) #10, !dbg !3472
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3414, metadata !628) #10, !dbg !3474
  br label %27, !dbg !3475

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !3476
  %22 = add i64 %4, 1, !dbg !3477
  %23 = add i64 %22, %21, !dbg !3478
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !596, metadata !628), !dbg !3451
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !596, metadata !628), !dbg !3451
  store i64 %23, i64* %1, align 8, !dbg !3470, !tbaa !2450
  %24 = mul i64 %23, %2, !dbg !3471
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3409, metadata !628) #10, !dbg !3472
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3414, metadata !628) #10, !dbg !3474
  %25 = icmp eq i64 %24, 0, !dbg !3479
  br i1 %25, label %26, label %27, !dbg !3475

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #10, !dbg !3480
  br label %34, !dbg !3481

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #10, !dbg !3482
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3409, metadata !628) #10, !dbg !3472
  %30 = icmp eq i8* %29, null, !dbg !3483
  %31 = icmp ne i64 %28, 0, !dbg !3484
  %32 = and i1 %31, %30, !dbg !3485
  br i1 %32, label %33, label %34, !dbg !3485

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #14, !dbg !3486
  unreachable, !dbg !3486

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !3487
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #12 !dbg !3488 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3490, metadata !628), !dbg !3491
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3368, metadata !628) #10, !dbg !3492
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3494
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3374, metadata !628) #10, !dbg !3495
  %3 = icmp eq i8* %2, null, !dbg !3496
  %4 = icmp ne i64 %0, 0, !dbg !3497
  %5 = and i1 %4, %3, !dbg !3498
  br i1 %5, label %6, label %7, !dbg !3498

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3499
  unreachable, !dbg !3499

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3500
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !3501 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3505, metadata !628), !dbg !3507
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !3506, metadata !628), !dbg !3508
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !593, metadata !628) #10, !dbg !3509
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !594, metadata !628) #10, !dbg !3511
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !595, metadata !628) #10, !dbg !3512
  %3 = load i64, i64* %1, align 8, !dbg !3513, !tbaa !2450
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !596, metadata !628) #10, !dbg !3514
  %4 = icmp eq i8* %0, null, !dbg !3515
  br i1 %4, label %5, label %8, !dbg !3516

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3517
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !596, metadata !628) #10, !dbg !3514
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !596, metadata !628) #10, !dbg !3514
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3518
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !596, metadata !628) #10, !dbg !3514
  store i64 %7, i64* %1, align 8, !dbg !3519, !tbaa !2450
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3409, metadata !628) #10, !dbg !3520
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3414, metadata !628) #10, !dbg !3522
  br label %17, !dbg !3523

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !3524
  br i1 %9, label %11, label %10, !dbg !3525

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #14, !dbg !3526
  unreachable, !dbg !3526

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !3527
  %13 = add i64 %3, 1, !dbg !3528
  %14 = add i64 %13, %12, !dbg !3529
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !596, metadata !628) #10, !dbg !3514
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !596, metadata !628) #10, !dbg !3514
  store i64 %14, i64* %1, align 8, !dbg !3519, !tbaa !2450
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3409, metadata !628) #10, !dbg !3520
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3414, metadata !628) #10, !dbg !3522
  %15 = icmp eq i64 %14, 0, !dbg !3530
  br i1 %15, label %16, label %17, !dbg !3523

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #10, !dbg !3531
  br label %24, !dbg !3532

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #10, !dbg !3533
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !3409, metadata !628) #10, !dbg !3520
  %20 = icmp eq i8* %19, null, !dbg !3534
  %21 = icmp ne i64 %18, 0, !dbg !3535
  %22 = and i1 %21, %20, !dbg !3536
  br i1 %22, label %23, label %24, !dbg !3536

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #14, !dbg !3537
  unreachable, !dbg !3537

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !3538
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !3539 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3541, metadata !628), !dbg !3542
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3368, metadata !628) #10, !dbg !3543
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3545
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3374, metadata !628) #10, !dbg !3546
  %3 = icmp eq i8* %2, null, !dbg !3547
  %4 = icmp ne i64 %0, 0, !dbg !3548
  %5 = and i1 %4, %3, !dbg !3549
  br i1 %5, label %6, label %7, !dbg !3549

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3550
  unreachable, !dbg !3550

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !3551
  ret i8* %2, !dbg !3552
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !3553 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3555, metadata !628), !dbg !3558
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3556, metadata !628), !dbg !3559
  %3 = udiv i64 9223372036854775807, %1, !dbg !3560
  %4 = icmp ult i64 %3, %0, !dbg !3560
  br i1 %4, label %8, label %5, !dbg !3562

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #10, !dbg !3563
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3557, metadata !628), !dbg !3565
  %7 = icmp eq i8* %6, null, !dbg !3566
  br i1 %7, label %8, label %9, !dbg !3567

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #14, !dbg !3569
  unreachable, !dbg !3569

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !3570
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !3571 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3575, metadata !628), !dbg !3577
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3576, metadata !628), !dbg !3578
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3368, metadata !628) #10, !dbg !3579
  %3 = tail call noalias i8* @malloc(i64 %1) #10, !dbg !3581
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3374, metadata !628) #10, !dbg !3582
  %4 = icmp eq i8* %3, null, !dbg !3583
  %5 = icmp ne i64 %1, 0, !dbg !3584
  %6 = and i1 %5, %4, !dbg !3585
  br i1 %6, label %7, label %8, !dbg !3585

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !3586
  unreachable, !dbg !3586

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !3587
  ret i8* %3, !dbg !3588
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !3589 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3591, metadata !628), !dbg !3592
  %2 = tail call i64 @strlen(i8* %0) #13, !dbg !3593
  %3 = add i64 %2, 1, !dbg !3594
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3575, metadata !628) #10, !dbg !3595
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3576, metadata !628) #10, !dbg !3598
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3368, metadata !628) #10, !dbg !3599
  %4 = tail call noalias i8* @malloc(i64 %3) #10, !dbg !3601
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !3374, metadata !628) #10, !dbg !3602
  %5 = icmp eq i8* %4, null, !dbg !3603
  %6 = icmp ne i64 %3, 0, !dbg !3604
  %7 = and i1 %6, %5, !dbg !3605
  br i1 %7, label %8, label %9, !dbg !3605

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3606
  unreachable, !dbg !3606

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #10, !dbg !3607
  ret i8* %4, !dbg !3608
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !3609 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3611, !tbaa !716
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.104, i64 0, i64 0), i32 5) #10, !dbg !3612
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.105, i64 0, i64 0), i8* %2) #10, !dbg !3613
  tail call void @abort() #14, !dbg !3615
  unreachable, !dbg !3615
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !3616 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3619, metadata !628), !dbg !3625
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3620, metadata !628), !dbg !3626
  %3 = icmp eq i64 %0, 0, !dbg !3627
  %4 = icmp eq i64 %1, 0, !dbg !3628
  %5 = or i1 %3, %4, !dbg !3630
  br i1 %5, label %12, label %6, !dbg !3630

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3631
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3622, metadata !628), !dbg !3632
  %8 = udiv i64 %7, %1, !dbg !3633
  %9 = icmp eq i64 %8, %0, !dbg !3635
  br i1 %9, label %12, label %10, !dbg !3636

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #1, !dbg !3637
  store i32 12, i32* %11, align 4, !dbg !3639, !tbaa !716
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3619, metadata !628), !dbg !3625
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !3620, metadata !628), !dbg !3626
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #10, !dbg !3640
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !3621, metadata !628), !dbg !3641
  br label %16, !dbg !3642

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !3643
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrlen(i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !3644 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3649, metadata !628), !dbg !3652
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3650, metadata !628), !dbg !3653
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %2, i64 0, metadata !3651, metadata !628), !dbg !3654
  %4 = icmp eq %struct.__mbstate_t* %2, null, !dbg !3655
  %5 = select i1 %4, %struct.__mbstate_t* @internal_state, %struct.__mbstate_t* %2, !dbg !3657
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %5, i64 0, metadata !3651, metadata !628), !dbg !3654
  %6 = tail call i64 @rpl_mbrtowc(i32* null, i8* %0, i64 %1, %struct.__mbstate_t* %5) #10, !dbg !3658
  ret i64 %6, !dbg !3659
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !3660 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !3677, metadata !628), !dbg !3686
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3678, metadata !628), !dbg !3687
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3679, metadata !628), !dbg !3688
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !3680, metadata !628), !dbg !3689
  %6 = bitcast i32* %5 to i8*, !dbg !3690
  call void @llvm.lifetime.start(i64 4, i8* nonnull %6) #10, !dbg !3690
  %7 = icmp eq i32* %0, null, !dbg !3691
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !3677, metadata !628), !dbg !3686
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3693
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !3677, metadata !628), !dbg !3686
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #10, !dbg !3694
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !3681, metadata !628), !dbg !3695
  %10 = icmp ugt i64 %9, -3, !dbg !3696
  %11 = icmp ne i64 %2, 0, !dbg !3697
  %12 = and i1 %11, %10, !dbg !3699
  br i1 %12, label %13, label %18, !dbg !3699

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #10, !dbg !3700
  br i1 %14, label %18, label %15, !dbg !3702

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3704, !tbaa !856
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !3683, metadata !628), !dbg !3705
  %17 = zext i8 %16 to i32, !dbg !3706
  store i32 %17, i32* %8, align 4, !dbg !3707, !tbaa !716
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end(i64 4, i8* nonnull %6) #10, !dbg !3708
  ret i64 %19, !dbg !3708
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !3709 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3754, metadata !628), !dbg !3759
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #10, !dbg !3760
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3761, metadata !628), !dbg !3765
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3767
  %4 = load i32, i32* %3, align 8, !dbg !3767, !tbaa !3768
  %5 = and i32 %4, 32, !dbg !3767
  %6 = icmp eq i32 %5, 0, !dbg !3770
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #10, !dbg !3771
  %8 = icmp ne i32 %7, 0, !dbg !3772
  br i1 %6, label %9, label %19, !dbg !3773

; <label>:9:                                      ; preds = %1
  %10 = xor i1 %8, true, !dbg !3775
  %11 = icmp ne i64 %2, 0, !dbg !3775
  %12 = or i1 %11, %10, !dbg !3775
  %13 = sext i1 %8 to i32, !dbg !3775
  br i1 %12, label %22, label %14, !dbg !3775

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #1, !dbg !3777
  %16 = load i32, i32* %15, align 4, !dbg !3777, !tbaa !716
  %17 = icmp ne i32 %16, 9, !dbg !3779
  %18 = sext i1 %17 to i32, !dbg !3779
  br label %22, !dbg !3779

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !3781

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #1, !dbg !3783
  store i32 0, i32* %21, align 4, !dbg !3785, !tbaa !716
  br label %22, !dbg !3783

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !3786
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !3787 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3792, metadata !628), !dbg !3812
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3793, metadata !628), !dbg !3813
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #10, !dbg !3814
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3794, metadata !628), !dbg !3815
  %3 = icmp eq i8* %2, null, !dbg !3816
  br i1 %3, label %15, label %4, !dbg !3817

; <label>:4:                                      ; preds = %1
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3802, metadata !628), !dbg !3818
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3803, metadata !628), !dbg !3819
  %5 = load i8, i8* %2, align 1, !dbg !3820, !tbaa !856
  %6 = icmp eq i8 %5, 67, !dbg !3822
  br i1 %6, label %7, label %11, !dbg !3825

; <label>:7:                                      ; preds = %4
  %8 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !3827
  %9 = load i8, i8* %8, align 1, !dbg !3827, !tbaa !856
  %10 = icmp eq i8 %9, 0, !dbg !3830
  br i1 %10, label %14, label %11, !dbg !3832

; <label>:11:                                     ; preds = %4, %7
  tail call void @llvm.dbg.value(metadata i64 5, i64 0, metadata !3808, metadata !628), !dbg !3834
  %12 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.116, i64 0, i64 0)) #10, !dbg !3835
  %13 = icmp eq i32 %12, 0, !dbg !3837
  br i1 %13, label %14, label %15, !dbg !3839

; <label>:14:                                     ; preds = %11, %7
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3793, metadata !628), !dbg !3813
  br label %15, !dbg !3841

; <label>:15:                                     ; preds = %1, %11, %14
  %16 = phi i1 [ false, %14 ], [ true, %11 ], [ true, %1 ]
  ret i1 %16, !dbg !3842
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !3843 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !3855, metadata !628), !dbg !3929
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !3922, metadata !628), !dbg !3931
  %3 = tail call i8* @nl_langinfo(i32 14) #10, !dbg !3932
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3847, metadata !628), !dbg !3933
  %4 = icmp eq i8* %3, null, !dbg !3934
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.119, i64 0, i64 0), i8* %3, !dbg !3936
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !3847, metadata !628), !dbg !3933
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !3937, !tbaa !636
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3869, metadata !628) #10, !dbg !3938
  %7 = icmp eq i8* %6, null, !dbg !3939
  br i1 %7, label %8, label %127, !dbg !3940

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.120, i64 0, i64 0)) #10, !dbg !3941
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !3870, metadata !628) #10, !dbg !3942
  %10 = icmp eq i8* %9, null, !dbg !3943
  br i1 %10, label %14, label %11, !dbg !3945

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !3946, !tbaa !856
  %13 = icmp eq i8 %12, 0, !dbg !3948
  br i1 %13, label %14, label %15, !dbg !3949

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !3951

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.121, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !3870, metadata !628) #10, !dbg !3942
  %17 = tail call i64 @strlen(i8* nonnull %16) #13, !dbg !3952
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !3873, metadata !628) #10, !dbg !3953
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !3875, metadata !628) #10, !dbg !3954
  %18 = icmp eq i64 %17, 0, !dbg !3955
  br i1 %18, label %24, label %19, !dbg !3956

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !3957
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !3957
  %22 = load i8, i8* %21, align 1, !dbg !3957, !tbaa !856
  %23 = icmp ne i8 %22, 47, !dbg !3959
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !3960
  %27 = add i64 %17, 14, !dbg !3961
  %28 = add i64 %27, %26, !dbg !3962
  %29 = tail call noalias i8* @malloc(i64 %28) #10, !dbg !3963
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3872, metadata !628) #10, !dbg !3964
  %30 = icmp eq i8* %29, null, !dbg !3965
  br i1 %30, label %125, label %31, !dbg !3965

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #10, !dbg !3966
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !3969

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !3970, !tbaa !856
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !3972
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.122, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !3973
  br label %37, !dbg !3974

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !3972
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.122, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !3973
  br label %37, !dbg !3974

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #10, !dbg !3975
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !3877, metadata !628) #10, !dbg !3976
  %39 = icmp slt i32 %38, 0, !dbg !3977
  br i1 %39, label %123, label %40, !dbg !3978

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.123, i64 0, i64 0)) #10, !dbg !3979
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3878, metadata !628) #10, !dbg !3980
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !3981
  br i1 %42, label %48, label %43, !dbg !3982

; <label>:43:                                     ; preds = %40
  %44 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %45 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %46 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %47 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !3983

; <label>:48:                                     ; preds = %40
  %49 = tail call i32 @close(i32 %38) #10, !dbg !3984
  br label %123, !dbg !3986

; <label>:50:                                     ; preds = %111, %43
  %51 = phi i64 [ %112, %111 ], [ 0, %43 ]
  %52 = phi i8* [ %113, %111 ], [ null, %43 ]
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3919, metadata !628) #10, !dbg !3983
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !3920, metadata !628) #10, !dbg !3987
  call void @llvm.lifetime.start(i64 51, i8* nonnull %44) #10, !dbg !3988
  call void @llvm.lifetime.start(i64 51, i8* nonnull %45) #10, !dbg !3989
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3990, metadata !628) #10, !dbg !3995
  %53 = load i8*, i8** %46, align 8, !dbg !3997, !tbaa !3998
  %54 = load i8*, i8** %47, align 8, !dbg !3997, !tbaa !3999
  %55 = icmp ult i8* %53, %54, !dbg !3997
  br i1 %55, label %58, label %56, !dbg !3997, !prof !4000

; <label>:56:                                     ; preds = %50
  %57 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !4001
  br label %62, !dbg !4001

; <label>:58:                                     ; preds = %50
  %59 = getelementptr inbounds i8, i8* %53, i64 1, !dbg !4003
  store i8* %59, i8** %46, align 8, !dbg !4003, !tbaa !3998
  %60 = load i8, i8* %53, align 1, !dbg !4003, !tbaa !856
  %61 = zext i8 %60 to i32, !dbg !4003
  br label %62, !dbg !4003

; <label>:62:                                     ; preds = %58, %56
  %63 = phi i32 [ %57, %56 ], [ %61, %58 ], !dbg !4005
  call void @llvm.dbg.value(metadata i32 %63, i64 0, metadata !3921, metadata !628) #10, !dbg !4007
  switch i32 %63, label %77 [
    i32 -1, label %115
    i32 32, label %111
    i32 10, label %111
    i32 9, label %111
    i32 35, label %64
  ], !dbg !4008

; <label>:64:                                     ; preds = %62
  br label %65, !dbg !4009

; <label>:65:                                     ; preds = %64, %75
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3990, metadata !628) #10, !dbg !4009
  %66 = load i8*, i8** %46, align 8, !dbg !4013, !tbaa !3998
  %67 = load i8*, i8** %47, align 8, !dbg !4013, !tbaa !3999
  %68 = icmp ult i8* %66, %67, !dbg !4013
  br i1 %68, label %71, label %69, !dbg !4013, !prof !4000

; <label>:69:                                     ; preds = %65
  %70 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !4014
  br label %75, !dbg !4014

; <label>:71:                                     ; preds = %65
  %72 = getelementptr inbounds i8, i8* %66, i64 1, !dbg !4015
  store i8* %72, i8** %46, align 8, !dbg !4015, !tbaa !3998
  %73 = load i8, i8* %66, align 1, !dbg !4015, !tbaa !856
  %74 = zext i8 %73 to i32, !dbg !4015
  br label %75, !dbg !4015

; <label>:75:                                     ; preds = %71, %69
  %76 = phi i32 [ %70, %69 ], [ %74, %71 ], !dbg !4016
  call void @llvm.dbg.value(metadata i32 %76, i64 0, metadata !3921, metadata !628) #10, !dbg !4007
  switch i32 %76, label %65 [
    i32 -1, label %114
    i32 10, label %110
  ], !dbg !4017, !llvm.loop !4019

; <label>:77:                                     ; preds = %62
  %78 = call i32 @ungetc(i32 %63, %struct._IO_FILE* nonnull %41) #10, !dbg !4022
  %79 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.124, i64 0, i64 0), i8* nonnull %44, i8* nonnull %45) #10, !dbg !4023
  %80 = icmp slt i32 %79, 2, !dbg !4025
  br i1 %80, label %115, label %81, !dbg !4026

; <label>:81:                                     ; preds = %77
  %82 = call i64 @strlen(i8* nonnull %44) #13, !dbg !4027
  call void @llvm.dbg.value(metadata i64 %82, i64 0, metadata !3926, metadata !628) #10, !dbg !4028
  %83 = call i64 @strlen(i8* nonnull %45) #13, !dbg !4029
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !3927, metadata !628) #10, !dbg !4030
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3928, metadata !628) #10, !dbg !4031
  %84 = icmp eq i64 %51, 0, !dbg !4032
  %85 = add i64 %82, 1
  %86 = add i64 %85, %83
  %87 = add i64 %86, 1
  br i1 %84, label %88, label %91, !dbg !4034

; <label>:88:                                     ; preds = %81
  call void @llvm.dbg.value(metadata i64 %87, i64 0, metadata !3920, metadata !628) #10, !dbg !3987
  %89 = add i64 %86, 2, !dbg !4035
  %90 = call noalias i8* @malloc(i64 %89) #10, !dbg !4037
  call void @llvm.dbg.value(metadata i8* %90, i64 0, metadata !3919, metadata !628) #10, !dbg !3983
  br label %95, !dbg !4038

; <label>:91:                                     ; preds = %81
  %92 = add i64 %87, %51, !dbg !4039
  call void @llvm.dbg.value(metadata i64 %92, i64 0, metadata !3920, metadata !628) #10, !dbg !3987
  %93 = add i64 %92, 1, !dbg !4041
  %94 = call i8* @realloc(i8* %52, i64 %93) #10, !dbg !4042
  call void @llvm.dbg.value(metadata i8* %94, i64 0, metadata !3919, metadata !628) #10, !dbg !3983
  br label %95

; <label>:95:                                     ; preds = %91, %88
  %96 = phi i64 [ %87, %88 ], [ %92, %91 ]
  %97 = phi i8* [ %90, %88 ], [ %94, %91 ]
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !3919, metadata !628) #10, !dbg !3983
  call void @llvm.dbg.value(metadata i64 %96, i64 0, metadata !3920, metadata !628) #10, !dbg !3987
  %98 = icmp eq i8* %97, null, !dbg !4043
  br i1 %98, label %99, label %100, !dbg !4045

; <label>:99:                                     ; preds = %95
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3920, metadata !628) #10, !dbg !3987
  call void @free(i8* %52) #10, !dbg !4046
  br label %116, !dbg !4048

; <label>:100:                                    ; preds = %95
  %101 = getelementptr inbounds i8, i8* %97, i64 %96, !dbg !4049
  %102 = xor i64 %83, -1, !dbg !4050
  %103 = getelementptr inbounds i8, i8* %101, i64 %102, !dbg !4050
  %104 = xor i64 %82, -1, !dbg !4051
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !4051
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !4052, metadata !628) #10, !dbg !4061
  call void @llvm.dbg.value(metadata i8* %44, i64 0, metadata !4060, metadata !628) #10, !dbg !4061
  %106 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false) #10, !dbg !4063
  %107 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %44, i64 %106) #10, !dbg !4064
  call void @llvm.dbg.value(metadata i8* %103, i64 0, metadata !4052, metadata !628) #10, !dbg !4065
  call void @llvm.dbg.value(metadata i8* %45, i64 0, metadata !4060, metadata !628) #10, !dbg !4065
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %103, i1 false) #10, !dbg !4067
  %109 = call i8* @__strcpy_chk(i8* nonnull %103, i8* nonnull %45, i64 %108) #10, !dbg !4068
  br label %111, !dbg !4069

; <label>:110:                                    ; preds = %75
  br label %111, !dbg !3983

; <label>:111:                                    ; preds = %110, %100, %62, %62, %62
  %112 = phi i64 [ %96, %100 ], [ %51, %62 ], [ %51, %62 ], [ %51, %62 ], [ %51, %110 ]
  %113 = phi i8* [ %97, %100 ], [ %52, %62 ], [ %52, %62 ], [ %52, %62 ], [ %52, %110 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !3919, metadata !628) #10, !dbg !3983
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !3920, metadata !628) #10, !dbg !3987
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #10, !dbg !4069
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #10, !dbg !4069
  br label %50

; <label>:114:                                    ; preds = %75
  br label %116, !dbg !3983

; <label>:115:                                    ; preds = %62, %77
  br label %116, !dbg !3983

; <label>:116:                                    ; preds = %115, %114, %99
  %117 = phi i64 [ 0, %99 ], [ %51, %114 ], [ %51, %115 ]
  %118 = phi i8* [ null, %99 ], [ %52, %114 ], [ %52, %115 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !3919, metadata !628) #10, !dbg !3983
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !3920, metadata !628) #10, !dbg !3987
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #10, !dbg !4069
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #10, !dbg !4069
  %119 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #10, !dbg !4070
  %120 = icmp eq i64 %117, 0, !dbg !4071
  br i1 %120, label %123, label %121, !dbg !4073

; <label>:121:                                    ; preds = %116
  %122 = getelementptr inbounds i8, i8* %118, i64 %117, !dbg !4074
  store i8 0, i8* %122, align 1, !dbg !4076, !tbaa !856
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !3869, metadata !628) #10, !dbg !3938
  br label %123

; <label>:123:                                    ; preds = %121, %116, %48, %37
  %124 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.119, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.119, i64 0, i64 0), %48 ], [ %118, %121 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.119, i64 0, i64 0), %116 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !3869, metadata !628) #10, !dbg !3938
  call void @free(i8* %29) #10, !dbg !4077
  br label %125

; <label>:125:                                    ; preds = %123, %24
  %126 = phi i8* [ %124, %123 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.119, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %126, i64 0, metadata !3869, metadata !628) #10, !dbg !3938
  store volatile i8* %126, i8** @charset_aliases, align 8, !dbg !4078, !tbaa !636
  br label %127, !dbg !4079

; <label>:127:                                    ; preds = %0, %125
  %128 = phi i8* [ %6, %0 ], [ %126, %125 ]
  call void @llvm.dbg.value(metadata i8* %128, i64 0, metadata !3848, metadata !628), !dbg !4080
  %129 = load i8, i8* %128, align 1, !dbg !4081, !tbaa !856
  %130 = icmp eq i8 %129, 0, !dbg !4082
  br i1 %130, label %157, label %131, !dbg !4083

; <label>:131:                                    ; preds = %127
  br label %132, !dbg !4085

; <label>:132:                                    ; preds = %131, %147
  %133 = phi i8 [ %154, %147 ], [ %129, %131 ]
  %134 = phi i8* [ %153, %147 ], [ %128, %131 ]
  %135 = call i32 @strcmp(i8* %5, i8* %134) #10, !dbg !4085
  %136 = icmp eq i32 %135, 0, !dbg !4086
  br i1 %136, label %143, label %137, !dbg !4087

; <label>:137:                                    ; preds = %132
  %138 = icmp eq i8 %133, 42, !dbg !4088
  br i1 %138, label %139, label %147, !dbg !4090

; <label>:139:                                    ; preds = %137
  %140 = getelementptr inbounds i8, i8* %134, i64 1, !dbg !4091
  %141 = load i8, i8* %140, align 1, !dbg !4091, !tbaa !856
  %142 = icmp eq i8 %141, 0, !dbg !4093
  br i1 %142, label %143, label %147, !dbg !4094

; <label>:143:                                    ; preds = %139, %132
  %144 = call i64 @strlen(i8* %134) #13, !dbg !4096
  %145 = getelementptr inbounds i8, i8* %134, i64 %144, !dbg !4098
  %146 = getelementptr inbounds i8, i8* %145, i64 1, !dbg !4099
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !3847, metadata !628), !dbg !3933
  br label %157, !dbg !4100

; <label>:147:                                    ; preds = %137, %139
  %148 = call i64 @strlen(i8* %134) #13, !dbg !4101
  %149 = add i64 %148, 1, !dbg !4102
  %150 = getelementptr inbounds i8, i8* %134, i64 %149, !dbg !4103
  call void @llvm.dbg.value(metadata i8* %150, i64 0, metadata !3848, metadata !628), !dbg !4080
  %151 = call i64 @strlen(i8* %150) #13, !dbg !4104
  %152 = add i64 %151, 1, !dbg !4105
  %153 = getelementptr inbounds i8, i8* %150, i64 %152, !dbg !4106
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !3848, metadata !628), !dbg !4080
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !3848, metadata !628), !dbg !4080
  %154 = load i8, i8* %153, align 1, !dbg !4081, !tbaa !856
  %155 = icmp eq i8 %154, 0, !dbg !4082
  br i1 %155, label %156, label %132, !dbg !4083, !llvm.loop !4107

; <label>:156:                                    ; preds = %147
  br label %157, !dbg !3933

; <label>:157:                                    ; preds = %156, %127, %143
  %158 = phi i8* [ %146, %143 ], [ %5, %127 ], [ %5, %156 ]
  call void @llvm.dbg.value(metadata i8* %158, i64 0, metadata !3847, metadata !628), !dbg !3933
  %159 = load i8, i8* %158, align 1, !dbg !4110, !tbaa !856
  %160 = icmp eq i8 %159, 0, !dbg !4112
  %161 = select i1 %160, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.125, i64 0, i64 0), i8* %158, !dbg !4113
  call void @llvm.dbg.value(metadata i8* %161, i64 0, metadata !3847, metadata !628), !dbg !3933
  ret i8* %161, !dbg !4114
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
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !4115 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4160, metadata !628), !dbg !4164
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4161, metadata !628), !dbg !4165
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4163, metadata !628), !dbg !4166
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !4167
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4162, metadata !628), !dbg !4168
  %3 = icmp slt i32 %2, 0, !dbg !4169
  br i1 %3, label %4, label %6, !dbg !4171

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4172
  br label %24, !dbg !4173

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !4174
  %8 = icmp eq i32 %7, 0, !dbg !4174
  br i1 %8, label %13, label %9, !dbg !4176

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !4177
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #10, !dbg !4179
  %12 = icmp eq i64 %11, -1, !dbg !4181
  br i1 %12, label %16, label %13, !dbg !4182

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #10, !dbg !4183
  %15 = icmp eq i32 %14, 0, !dbg !4183
  br i1 %15, label %16, label %18, !dbg !4184

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4161, metadata !628), !dbg !4165
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4186
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4163, metadata !628), !dbg !4166
  br label %24, !dbg !4187

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #1, !dbg !4188
  %20 = load i32, i32* %19, align 4, !dbg !4188, !tbaa !716
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4161, metadata !628), !dbg !4165
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4161, metadata !628), !dbg !4165
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4186
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4163, metadata !628), !dbg !4166
  %22 = icmp eq i32 %20, 0, !dbg !4189
  br i1 %22, label %24, label %23, !dbg !4187

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4191, !tbaa !716
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !4163, metadata !628), !dbg !4166
  br label %24, !dbg !4193

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !4194
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
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !4195 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4240, metadata !628), !dbg !4241
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4242
  br i1 %2, label %6, label %3, !dbg !4244

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !4245
  %5 = icmp eq i32 %4, 0, !dbg !4245
  br i1 %5, label %6, label %8, !dbg !4247

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4249
  br label %17, !dbg !4250

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4251, metadata !628) #10, !dbg !4256
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4258
  %10 = load i32, i32* %9, align 8, !dbg !4258, !tbaa !3768
  %11 = and i32 %10, 256, !dbg !4260
  %12 = icmp eq i32 %11, 0, !dbg !4260
  br i1 %12, label %15, label %13, !dbg !4261

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #10, !dbg !4262
  br label %15, !dbg !4262

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4263
  br label %17, !dbg !4264

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !4265
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !4266 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4312, metadata !628), !dbg !4318
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4313, metadata !628), !dbg !4319
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4314, metadata !628), !dbg !4320
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4321
  %5 = load i8*, i8** %4, align 8, !dbg !4321, !tbaa !3999
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4322
  %7 = load i8*, i8** %6, align 8, !dbg !4322, !tbaa !3998
  %8 = icmp eq i8* %5, %7, !dbg !4323
  br i1 %8, label %9, label %28, !dbg !4324

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4325
  %11 = load i8*, i8** %10, align 8, !dbg !4325, !tbaa !4327
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4328
  %13 = load i8*, i8** %12, align 8, !dbg !4328, !tbaa !4329
  %14 = icmp eq i8* %11, %13, !dbg !4330
  br i1 %14, label %15, label %28, !dbg !4331

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4332
  %17 = load i8*, i8** %16, align 8, !dbg !4332, !tbaa !4333
  %18 = icmp eq i8* %17, null, !dbg !4334
  br i1 %18, label %19, label %28, !dbg !4335

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !4337
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #10, !dbg !4338
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !4315, metadata !628), !dbg !4340
  %22 = icmp eq i64 %21, -1, !dbg !4341
  br i1 %22, label %30, label %23, !dbg !4343

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4344
  %25 = load i32, i32* %24, align 8, !dbg !4345, !tbaa !3768
  %26 = and i32 %25, -17, !dbg !4345
  store i32 %26, i32* %24, align 8, !dbg !4345, !tbaa !3768
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4346
  store i64 %21, i64* %27, align 8, !dbg !4347, !tbaa !4348
  br label %30, !dbg !4349

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4350
  br label %30, !dbg !4351

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !4352
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

!llvm.dbg.cu = !{!2, !103, !109, !118, !125, !132, !576, !202, !583, !600, !602, !211, !604, !607, !609, !230, !612, !614, !616}
!llvm.ident = !{!618, !618, !618, !618, !618, !618, !618, !618, !618, !618, !618, !618, !618, !618, !618, !618, !618, !618, !618}
!llvm.module.flags = !{!619, !620, !621, !622}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 73, type: !89, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !43, globals: !57)
!3 = !DIFile(filename: "src/pathchk.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
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
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !20, line: 24, size: 32, elements: !21)
!20 = !DIFile(filename: "/usr/include/bits/confname.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!21 = !{!22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42}
!22 = !DIEnumerator(name: "_PC_LINK_MAX", value: 0)
!23 = !DIEnumerator(name: "_PC_MAX_CANON", value: 1)
!24 = !DIEnumerator(name: "_PC_MAX_INPUT", value: 2)
!25 = !DIEnumerator(name: "_PC_NAME_MAX", value: 3)
!26 = !DIEnumerator(name: "_PC_PATH_MAX", value: 4)
!27 = !DIEnumerator(name: "_PC_PIPE_BUF", value: 5)
!28 = !DIEnumerator(name: "_PC_CHOWN_RESTRICTED", value: 6)
!29 = !DIEnumerator(name: "_PC_NO_TRUNC", value: 7)
!30 = !DIEnumerator(name: "_PC_VDISABLE", value: 8)
!31 = !DIEnumerator(name: "_PC_SYNC_IO", value: 9)
!32 = !DIEnumerator(name: "_PC_ASYNC_IO", value: 10)
!33 = !DIEnumerator(name: "_PC_PRIO_IO", value: 11)
!34 = !DIEnumerator(name: "_PC_SOCK_MAXBUF", value: 12)
!35 = !DIEnumerator(name: "_PC_FILESIZEBITS", value: 13)
!36 = !DIEnumerator(name: "_PC_REC_INCR_XFER_SIZE", value: 14)
!37 = !DIEnumerator(name: "_PC_REC_MAX_XFER_SIZE", value: 15)
!38 = !DIEnumerator(name: "_PC_REC_MIN_XFER_SIZE", value: 16)
!39 = !DIEnumerator(name: "_PC_REC_XFER_ALIGN", value: 17)
!40 = !DIEnumerator(name: "_PC_ALLOC_SIZE_MIN", value: 18)
!41 = !DIEnumerator(name: "_PC_SYMLINK_MAX", value: 19)
!42 = !DIEnumerator(name: "_PC_2_SYMLINKS", value: 20)
!43 = !{!44, !46, !47, !50, !52, !55}
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !48, line: 62, baseType: !49)
!48 = !DIFile(filename: "/usr/bin/../lib/clang/4.0.1/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!49 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !54)
!54 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!57 = !{!58, !0}
!58 = !DIGlobalVariableExpression(var: !59)
!59 = distinct !DIGlobalVariable(name: "infomap", scope: !60, file: !61, line: 632, type: !86, isLocal: true, isDefinition: true)
!60 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !61, file: !61, line: 630, type: !62, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !64)
!61 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!62 = !DISubroutineType(types: !63)
!63 = !{null, !55}
!64 = !{!65, !66, !67, !74, !76, !77, !78, !81, !82, !84}
!65 = !DILocalVariable(name: "program", arg: 1, scope: !60, file: !61, line: 630, type: !55)
!66 = !DILocalVariable(name: "node", scope: !60, file: !61, line: 642, type: !55)
!67 = !DILocalVariable(name: "map_prog", scope: !60, file: !61, line: 643, type: !68)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !70)
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !60, file: !61, line: 632, size: 128, elements: !71)
!71 = !{!72, !73}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !70, file: !61, line: 632, baseType: !55, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !70, file: !61, line: 632, baseType: !55, size: 64, offset: 64)
!74 = !DILocalVariable(name: "__s1_len", scope: !75, file: !61, line: 645, type: !47)
!75 = distinct !DILexicalBlock(scope: !60, file: !61, line: 645, column: 33)
!76 = !DILocalVariable(name: "__s2_len", scope: !75, file: !61, line: 645, type: !47)
!77 = !DILocalVariable(name: "lc_messages", scope: !60, file: !61, line: 655, type: !55)
!78 = !DILocalVariable(name: "__s1_len", scope: !79, file: !61, line: 656, type: !47)
!79 = distinct !DILexicalBlock(scope: !80, file: !61, line: 656, column: 22)
!80 = distinct !DILexicalBlock(scope: !60, file: !61, line: 656, column: 7)
!81 = !DILocalVariable(name: "__s2_len", scope: !79, file: !61, line: 656, type: !47)
!82 = !DILocalVariable(name: "__s2", scope: !83, file: !61, line: 656, type: !52)
!83 = distinct !DILexicalBlock(scope: !79, file: !61, line: 656, column: 22)
!84 = !DILocalVariable(name: "__result", scope: !83, file: !61, line: 656, type: !85)
!85 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!86 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 896, elements: !87)
!87 = !{!88}
!88 = !DISubrange(count: 7)
!89 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 1024, elements: !99)
!90 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !91)
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !92, line: 104, size: 256, elements: !93)
!92 = !DIFile(filename: "/usr/include/getopt.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!93 = !{!94, !95, !96, !98}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !91, file: !92, line: 106, baseType: !55, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !91, file: !92, line: 109, baseType: !85, size: 32, offset: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !91, file: !92, line: 110, baseType: !97, size: 64, offset: 128)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !91, file: !92, line: 111, baseType: !85, size: 32, offset: 192)
!99 = !{!100}
!100 = !DISubrange(count: 4)
!101 = !DIGlobalVariableExpression(var: !102)
!102 = distinct !DIGlobalVariable(name: "Version", scope: !103, file: !104, line: 2, type: !55, isLocal: false, isDefinition: true)
!103 = distinct !DICompileUnit(language: DW_LANG_C99, file: !104, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !105, globals: !106)
!104 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!105 = !{}
!106 = !{!101}
!107 = !DIGlobalVariableExpression(var: !108)
!108 = distinct !DIGlobalVariable(name: "file_name", scope: !109, file: !114, line: 36, type: !55, isLocal: true, isDefinition: true)
!109 = distinct !DICompileUnit(language: DW_LANG_C99, file: !110, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !105, globals: !111)
!110 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!111 = !{!107, !112}
!112 = !DIGlobalVariableExpression(var: !113)
!113 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !109, file: !114, line: 46, type: !115, isLocal: true, isDefinition: true)
!114 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!115 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!116 = !DIGlobalVariableExpression(var: !117)
!117 = distinct !DIGlobalVariable(name: "exit_failure", scope: !118, file: !121, line: 24, type: !122, isLocal: false, isDefinition: true)
!118 = distinct !DICompileUnit(language: DW_LANG_C99, file: !119, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !105, globals: !120)
!119 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!120 = !{!116}
!121 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!122 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !85)
!123 = !DIGlobalVariableExpression(var: !124)
!124 = distinct !DIGlobalVariable(name: "program_name", scope: !125, file: !129, line: 33, type: !55, isLocal: false, isDefinition: true)
!125 = distinct !DICompileUnit(language: DW_LANG_C99, file: !126, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !105, retainedTypes: !127, globals: !128)
!126 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!127 = !{!46, !44}
!128 = !{!123}
!129 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!130 = !DIGlobalVariableExpression(var: !131)
!131 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !132, file: !160, line: 77, type: !196, isLocal: false, isDefinition: true)
!132 = distinct !DICompileUnit(language: DW_LANG_C99, file: !133, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !134, retainedTypes: !155, globals: !157)
!133 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!134 = !{!5, !135, !140}
!135 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !6, line: 242, size: 32, elements: !136)
!136 = !{!137, !138, !139}
!137 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!138 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!139 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!140 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !141, line: 46, size: 32, elements: !142)
!141 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!142 = !{!143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154}
!143 = !DIEnumerator(name: "_ISupper", value: 256)
!144 = !DIEnumerator(name: "_ISlower", value: 512)
!145 = !DIEnumerator(name: "_ISalpha", value: 1024)
!146 = !DIEnumerator(name: "_ISdigit", value: 2048)
!147 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!148 = !DIEnumerator(name: "_ISspace", value: 8192)
!149 = !DIEnumerator(name: "_ISprint", value: 16384)
!150 = !DIEnumerator(name: "_ISgraph", value: 32768)
!151 = !DIEnumerator(name: "_ISblank", value: 1)
!152 = !DIEnumerator(name: "_IScntrl", value: 2)
!153 = !DIEnumerator(name: "_ISpunct", value: 4)
!154 = !DIEnumerator(name: "_ISalnum", value: 8)
!155 = !{!85, !156, !47, !44}
!156 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!157 = !{!130, !158, !165, !178, !180, !185, !192, !194}
!158 = !DIGlobalVariableExpression(var: !159)
!159 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !132, file: !160, line: 93, type: !161, isLocal: false, isDefinition: true)
!160 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 320, elements: !163)
!162 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!163 = !{!164}
!164 = !DISubrange(count: 10)
!165 = !DIGlobalVariableExpression(var: !166)
!166 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !132, file: !160, line: 1043, type: !167, isLocal: false, isDefinition: true)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !160, line: 57, size: 448, elements: !168)
!168 = !{!169, !170, !171, !176, !177}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !167, file: !160, line: 60, baseType: !5, size: 32)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !167, file: !160, line: 63, baseType: !85, size: 32, offset: 32)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !167, file: !160, line: 67, baseType: !172, size: 256, offset: 64)
!172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, size: 256, elements: !174)
!173 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!174 = !{!175}
!175 = !DISubrange(count: 8)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !167, file: !160, line: 70, baseType: !55, size: 64, offset: 320)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !167, file: !160, line: 73, baseType: !55, size: 64, offset: 384)
!178 = !DIGlobalVariableExpression(var: !179)
!179 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !132, file: !160, line: 108, type: !167, isLocal: true, isDefinition: true)
!180 = !DIGlobalVariableExpression(var: !181)
!181 = distinct !DIGlobalVariable(name: "slot0", scope: !132, file: !160, line: 834, type: !182, isLocal: true, isDefinition: true)
!182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 2048, elements: !183)
!183 = !{!184}
!184 = !DISubrange(count: 256)
!185 = !DIGlobalVariableExpression(var: !186)
!186 = distinct !DIGlobalVariable(name: "slotvec", scope: !132, file: !160, line: 837, type: !187, isLocal: true, isDefinition: true)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !160, line: 826, size: 128, elements: !189)
!189 = !{!190, !191}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !188, file: !160, line: 828, baseType: !47, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !188, file: !160, line: 829, baseType: !44, size: 64, offset: 64)
!192 = !DIGlobalVariableExpression(var: !193)
!193 = distinct !DIGlobalVariable(name: "nslots", scope: !132, file: !160, line: 835, type: !85, isLocal: true, isDefinition: true)
!194 = !DIGlobalVariableExpression(var: !195)
!195 = distinct !DIGlobalVariable(name: "slotvec0", scope: !132, file: !160, line: 836, type: !188, isLocal: true, isDefinition: true)
!196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !197, size: 704, elements: !198)
!197 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !55)
!198 = !{!199}
!199 = !DISubrange(count: 11)
!200 = !DIGlobalVariableExpression(var: !201)
!201 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !202, file: !205, line: 26, type: !206, isLocal: false, isDefinition: true)
!202 = distinct !DICompileUnit(language: DW_LANG_C99, file: !203, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !105, globals: !204)
!203 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!204 = !{!200}
!205 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 376, elements: !207)
!207 = !{!208}
!208 = !DISubrange(count: 47)
!209 = !DIGlobalVariableExpression(var: !210)
!210 = distinct !DIGlobalVariable(name: "internal_state", scope: !211, file: !215, line: 24, type: !216, isLocal: true, isDefinition: true)
!211 = distinct !DICompileUnit(language: DW_LANG_C99, file: !212, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !105, retainedTypes: !213, globals: !214)
!212 = !DIFile(filename: "./lib/mbrlen.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!213 = !{!46}
!214 = !{!209}
!215 = !DIFile(filename: "lib/mbrlen.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !217, line: 107, baseType: !218)
!217 = !DIFile(filename: "/usr/include/wchar.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !217, line: 95, baseType: !219)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !217, line: 83, size: 64, elements: !220)
!220 = !{!221, !222}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !219, file: !217, line: 85, baseType: !85, size: 32)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !219, file: !217, line: 94, baseType: !223, size: 32, offset: 32)
!223 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !219, file: !217, line: 86, size: 32, elements: !224)
!224 = !{!225, !226}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !223, file: !217, line: 89, baseType: !173, size: 32)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !223, file: !217, line: 93, baseType: !227, size: 32)
!227 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 32, elements: !99)
!228 = !DIGlobalVariableExpression(var: !229)
!229 = distinct !DIGlobalVariable(name: "charset_aliases", scope: !230, file: !574, line: 120, type: !575, isLocal: true, isDefinition: true)
!230 = distinct !DICompileUnit(language: DW_LANG_C99, file: !231, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !232, retainedTypes: !571, globals: !573)
!231 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!232 = !{!233}
!233 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !234, line: 41, size: 32, elements: !235)
!234 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!235 = !{!236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570}
!236 = !DIEnumerator(name: "ABDAY_1", value: 131072)
!237 = !DIEnumerator(name: "ABDAY_2", value: 131073)
!238 = !DIEnumerator(name: "ABDAY_3", value: 131074)
!239 = !DIEnumerator(name: "ABDAY_4", value: 131075)
!240 = !DIEnumerator(name: "ABDAY_5", value: 131076)
!241 = !DIEnumerator(name: "ABDAY_6", value: 131077)
!242 = !DIEnumerator(name: "ABDAY_7", value: 131078)
!243 = !DIEnumerator(name: "DAY_1", value: 131079)
!244 = !DIEnumerator(name: "DAY_2", value: 131080)
!245 = !DIEnumerator(name: "DAY_3", value: 131081)
!246 = !DIEnumerator(name: "DAY_4", value: 131082)
!247 = !DIEnumerator(name: "DAY_5", value: 131083)
!248 = !DIEnumerator(name: "DAY_6", value: 131084)
!249 = !DIEnumerator(name: "DAY_7", value: 131085)
!250 = !DIEnumerator(name: "ABMON_1", value: 131086)
!251 = !DIEnumerator(name: "ABMON_2", value: 131087)
!252 = !DIEnumerator(name: "ABMON_3", value: 131088)
!253 = !DIEnumerator(name: "ABMON_4", value: 131089)
!254 = !DIEnumerator(name: "ABMON_5", value: 131090)
!255 = !DIEnumerator(name: "ABMON_6", value: 131091)
!256 = !DIEnumerator(name: "ABMON_7", value: 131092)
!257 = !DIEnumerator(name: "ABMON_8", value: 131093)
!258 = !DIEnumerator(name: "ABMON_9", value: 131094)
!259 = !DIEnumerator(name: "ABMON_10", value: 131095)
!260 = !DIEnumerator(name: "ABMON_11", value: 131096)
!261 = !DIEnumerator(name: "ABMON_12", value: 131097)
!262 = !DIEnumerator(name: "MON_1", value: 131098)
!263 = !DIEnumerator(name: "MON_2", value: 131099)
!264 = !DIEnumerator(name: "MON_3", value: 131100)
!265 = !DIEnumerator(name: "MON_4", value: 131101)
!266 = !DIEnumerator(name: "MON_5", value: 131102)
!267 = !DIEnumerator(name: "MON_6", value: 131103)
!268 = !DIEnumerator(name: "MON_7", value: 131104)
!269 = !DIEnumerator(name: "MON_8", value: 131105)
!270 = !DIEnumerator(name: "MON_9", value: 131106)
!271 = !DIEnumerator(name: "MON_10", value: 131107)
!272 = !DIEnumerator(name: "MON_11", value: 131108)
!273 = !DIEnumerator(name: "MON_12", value: 131109)
!274 = !DIEnumerator(name: "AM_STR", value: 131110)
!275 = !DIEnumerator(name: "PM_STR", value: 131111)
!276 = !DIEnumerator(name: "D_T_FMT", value: 131112)
!277 = !DIEnumerator(name: "D_FMT", value: 131113)
!278 = !DIEnumerator(name: "T_FMT", value: 131114)
!279 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115)
!280 = !DIEnumerator(name: "ERA", value: 131116)
!281 = !DIEnumerator(name: "__ERA_YEAR", value: 131117)
!282 = !DIEnumerator(name: "ERA_D_FMT", value: 131118)
!283 = !DIEnumerator(name: "ALT_DIGITS", value: 131119)
!284 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120)
!285 = !DIEnumerator(name: "ERA_T_FMT", value: 131121)
!286 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122)
!287 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123)
!288 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124)
!289 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125)
!290 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126)
!291 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127)
!292 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128)
!293 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129)
!294 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130)
!295 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131)
!296 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132)
!297 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133)
!298 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134)
!299 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135)
!300 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136)
!301 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137)
!302 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138)
!303 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139)
!304 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140)
!305 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141)
!306 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142)
!307 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143)
!308 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144)
!309 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145)
!310 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146)
!311 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147)
!312 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148)
!313 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149)
!314 = !DIEnumerator(name: "_NL_WMON_1", value: 131150)
!315 = !DIEnumerator(name: "_NL_WMON_2", value: 131151)
!316 = !DIEnumerator(name: "_NL_WMON_3", value: 131152)
!317 = !DIEnumerator(name: "_NL_WMON_4", value: 131153)
!318 = !DIEnumerator(name: "_NL_WMON_5", value: 131154)
!319 = !DIEnumerator(name: "_NL_WMON_6", value: 131155)
!320 = !DIEnumerator(name: "_NL_WMON_7", value: 131156)
!321 = !DIEnumerator(name: "_NL_WMON_8", value: 131157)
!322 = !DIEnumerator(name: "_NL_WMON_9", value: 131158)
!323 = !DIEnumerator(name: "_NL_WMON_10", value: 131159)
!324 = !DIEnumerator(name: "_NL_WMON_11", value: 131160)
!325 = !DIEnumerator(name: "_NL_WMON_12", value: 131161)
!326 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162)
!327 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163)
!328 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164)
!329 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165)
!330 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166)
!331 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167)
!332 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168)
!333 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169)
!334 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170)
!335 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171)
!336 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172)
!337 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173)
!338 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174)
!339 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175)
!340 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176)
!341 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177)
!342 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178)
!343 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179)
!344 = !DIEnumerator(name: "_DATE_FMT", value: 131180)
!345 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181)
!346 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182)
!347 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131183)
!348 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608)
!349 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609)
!350 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610)
!351 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611)
!352 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612)
!353 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613)
!354 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614)
!355 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615)
!356 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616)
!357 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617)
!358 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618)
!359 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619)
!360 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620)
!361 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621)
!362 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622)
!363 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623)
!364 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624)
!365 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625)
!366 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626)
!367 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627)
!368 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0)
!369 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1)
!370 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2)
!371 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3)
!372 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4)
!373 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5)
!374 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6)
!375 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7)
!376 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8)
!377 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9)
!378 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10)
!379 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11)
!380 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12)
!381 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13)
!382 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14)
!383 = !DIEnumerator(name: "CODESET", value: 14)
!384 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15)
!385 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16)
!386 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17)
!387 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18)
!388 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19)
!389 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20)
!390 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21)
!391 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22)
!392 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23)
!393 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24)
!394 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25)
!395 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26)
!396 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27)
!397 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28)
!398 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29)
!399 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30)
!400 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31)
!401 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32)
!402 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33)
!403 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34)
!404 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35)
!405 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36)
!406 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37)
!407 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38)
!408 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39)
!409 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40)
!410 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41)
!411 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42)
!412 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43)
!413 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44)
!414 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45)
!415 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46)
!416 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47)
!417 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48)
!418 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49)
!419 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50)
!420 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51)
!421 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52)
!422 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53)
!423 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54)
!424 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55)
!425 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56)
!426 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57)
!427 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58)
!428 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59)
!429 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60)
!430 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61)
!431 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62)
!432 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63)
!433 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64)
!434 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65)
!435 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66)
!436 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67)
!437 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68)
!438 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69)
!439 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70)
!440 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71)
!441 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72)
!442 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73)
!443 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74)
!444 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75)
!445 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76)
!446 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77)
!447 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78)
!448 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79)
!449 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80)
!450 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81)
!451 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82)
!452 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83)
!453 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84)
!454 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85)
!455 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86)
!456 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144)
!457 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145)
!458 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146)
!459 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147)
!460 = !DIEnumerator(name: "__MON_GROUPING", value: 262148)
!461 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149)
!462 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150)
!463 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151)
!464 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152)
!465 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153)
!466 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154)
!467 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155)
!468 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156)
!469 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157)
!470 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158)
!471 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159)
!472 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160)
!473 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161)
!474 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162)
!475 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163)
!476 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164)
!477 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165)
!478 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166)
!479 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167)
!480 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168)
!481 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169)
!482 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170)
!483 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171)
!484 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172)
!485 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173)
!486 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174)
!487 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175)
!488 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176)
!489 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177)
!490 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178)
!491 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179)
!492 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180)
!493 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181)
!494 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182)
!495 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183)
!496 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184)
!497 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185)
!498 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186)
!499 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187)
!500 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188)
!501 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189)
!502 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190)
!503 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536)
!504 = !DIEnumerator(name: "RADIXCHAR", value: 65536)
!505 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537)
!506 = !DIEnumerator(name: "THOUSEP", value: 65537)
!507 = !DIEnumerator(name: "__GROUPING", value: 65538)
!508 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539)
!509 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540)
!510 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541)
!511 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542)
!512 = !DIEnumerator(name: "__YESEXPR", value: 327680)
!513 = !DIEnumerator(name: "__NOEXPR", value: 327681)
!514 = !DIEnumerator(name: "__YESSTR", value: 327682)
!515 = !DIEnumerator(name: "__NOSTR", value: 327683)
!516 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684)
!517 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685)
!518 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752)
!519 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753)
!520 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754)
!521 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755)
!522 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288)
!523 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289)
!524 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290)
!525 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291)
!526 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292)
!527 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293)
!528 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294)
!529 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295)
!530 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824)
!531 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825)
!532 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826)
!533 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827)
!534 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828)
!535 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829)
!536 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830)
!537 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831)
!538 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832)
!539 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833)
!540 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834)
!541 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835)
!542 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836)
!543 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837)
!544 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360)
!545 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361)
!546 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362)
!547 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363)
!548 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364)
!549 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365)
!550 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896)
!551 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897)
!552 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898)
!553 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432)
!554 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433)
!555 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434)
!556 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435)
!557 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436)
!558 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437)
!559 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438)
!560 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439)
!561 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440)
!562 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441)
!563 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442)
!564 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443)
!565 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444)
!566 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445)
!567 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446)
!568 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447)
!569 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448)
!570 = !DIEnumerator(name: "_NL_NUM", value: 786449)
!571 = !{!46, !44, !572}
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!573 = !{!228}
!574 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!575 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !55)
!576 = distinct !DICompileUnit(language: DW_LANG_C99, file: !577, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !578, retainedTypes: !213)
!577 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!578 = !{!579}
!579 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !580, line: 41, size: 32, elements: !581)
!580 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!581 = !{!582}
!582 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!583 = distinct !DICompileUnit(language: DW_LANG_C99, file: !584, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !585, retainedTypes: !599)
!584 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!585 = !{!586}
!586 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !588, file: !587, line: 192, size: 32, elements: !597)
!587 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!588 = distinct !DISubprogram(name: "x2nrealloc", scope: !587, file: !587, line: 180, type: !589, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !583, variables: !592)
!589 = !DISubroutineType(types: !590)
!590 = !{!46, !46, !591, !47}
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!592 = !{!593, !594, !595, !596}
!593 = !DILocalVariable(name: "p", arg: 1, scope: !588, file: !587, line: 180, type: !46)
!594 = !DILocalVariable(name: "pn", arg: 2, scope: !588, file: !587, line: 180, type: !591)
!595 = !DILocalVariable(name: "s", arg: 3, scope: !588, file: !587, line: 180, type: !47)
!596 = !DILocalVariable(name: "n", scope: !588, file: !587, line: 182, type: !47)
!597 = !{!598}
!598 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!599 = !{!47, !44, !46}
!600 = distinct !DICompileUnit(language: DW_LANG_C99, file: !601, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !105)
!601 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!602 = distinct !DICompileUnit(language: DW_LANG_C99, file: !603, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !105, retainedTypes: !213)
!603 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!604 = distinct !DICompileUnit(language: DW_LANG_C99, file: !605, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !105, retainedTypes: !606)
!605 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!606 = !{!47}
!607 = distinct !DICompileUnit(language: DW_LANG_C99, file: !608, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !105)
!608 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!609 = distinct !DICompileUnit(language: DW_LANG_C99, file: !610, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !105, retainedTypes: !611)
!610 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!611 = !{!47, !50, !52, !55}
!612 = distinct !DICompileUnit(language: DW_LANG_C99, file: !613, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !105)
!613 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!614 = distinct !DICompileUnit(language: DW_LANG_C99, file: !615, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !105, retainedTypes: !213)
!615 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!616 = distinct !DICompileUnit(language: DW_LANG_C99, file: !617, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !105, retainedTypes: !213)
!617 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!618 = !{!"clang version 4.0.1 (tags/RELEASE_401/final)"}
!619 = !{i32 2, !"Dwarf Version", i32 4}
!620 = !{i32 2, !"Debug Info Version", i32 3}
!621 = !{i32 1, !"PIC Level", i32 2}
!622 = !{i32 1, !"PIE Level", i32 2}
!623 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 82, type: !624, isLocal: false, isDefinition: true, scopeLine: 83, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, variables: !626)
!624 = !DISubroutineType(types: !625)
!625 = !{null, !85}
!626 = !{!627}
!627 = !DILocalVariable(name: "status", arg: 1, scope: !623, file: !3, line: 82, type: !85)
!628 = !DIExpression()
!629 = !DILocation(line: 82, column: 12, scope: !623)
!630 = !DILocation(line: 84, column: 14, scope: !631)
!631 = distinct !DILexicalBlock(scope: !623, file: !3, line: 84, column: 7)
!632 = !DILocation(line: 84, column: 7, scope: !623)
!633 = !DILocation(line: 85, column: 5, scope: !634)
!634 = !DILexicalBlockFile(scope: !635, file: !3, discriminator: 1)
!635 = distinct !DILexicalBlock(scope: !631, file: !3, line: 85, column: 5)
!636 = !{!637, !637, i64 0}
!637 = !{!"any pointer", !638, i64 0}
!638 = !{!"omnipotent char", !639, i64 0}
!639 = !{!"Simple C/C++ TBAA"}
!640 = !DILocation(line: 85, column: 5, scope: !641)
!641 = !DILexicalBlockFile(scope: !635, file: !3, discriminator: 3)
!642 = !DILocation(line: 85, column: 5, scope: !643)
!643 = !DILexicalBlockFile(scope: !635, file: !3, discriminator: 2)
!644 = !DILocation(line: 88, column: 7, scope: !645)
!645 = distinct !DILexicalBlock(scope: !631, file: !3, line: 87, column: 5)
!646 = !DILocation(line: 88, column: 7, scope: !647)
!647 = !DILexicalBlockFile(scope: !645, file: !3, discriminator: 1)
!648 = !DILocation(line: 89, column: 7, scope: !645)
!649 = !DILocation(line: 89, column: 7, scope: !647)
!650 = !DILocation(line: 96, column: 7, scope: !645)
!651 = !DILocation(line: 96, column: 7, scope: !647)
!652 = !DILocation(line: 97, column: 7, scope: !645)
!653 = !DILocation(line: 97, column: 7, scope: !647)
!654 = !DILocation(line: 642, column: 15, scope: !60, inlinedAt: !655)
!655 = distinct !DILocation(line: 98, column: 7, scope: !645)
!656 = !DILocation(line: 651, column: 3, scope: !60, inlinedAt: !655)
!657 = !DILocation(line: 651, column: 3, scope: !658, inlinedAt: !655)
!658 = !DILexicalBlockFile(scope: !60, file: !61, discriminator: 1)
!659 = !DILocation(line: 655, column: 29, scope: !60, inlinedAt: !655)
!660 = !DILocation(line: 655, column: 15, scope: !60, inlinedAt: !655)
!661 = !DILocation(line: 656, column: 7, scope: !80, inlinedAt: !655)
!662 = !DILocation(line: 656, column: 19, scope: !80, inlinedAt: !655)
!663 = !DILocation(line: 656, column: 22, scope: !664, inlinedAt: !655)
!664 = !DILexicalBlockFile(scope: !80, file: !61, discriminator: 16)
!665 = !DILocation(line: 656, column: 7, scope: !666, inlinedAt: !655)
!666 = !DILexicalBlockFile(scope: !60, file: !61, discriminator: 16)
!667 = !DILocation(line: 662, column: 7, scope: !668, inlinedAt: !655)
!668 = distinct !DILexicalBlock(scope: !80, file: !61, line: 657, column: 5)
!669 = !DILocation(line: 662, column: 7, scope: !670, inlinedAt: !655)
!670 = !DILexicalBlockFile(scope: !668, file: !61, discriminator: 1)
!671 = !DILocation(line: 664, column: 5, scope: !668, inlinedAt: !655)
!672 = !DILocation(line: 665, column: 3, scope: !60, inlinedAt: !655)
!673 = !DILocation(line: 665, column: 3, scope: !658, inlinedAt: !655)
!674 = !DILocation(line: 667, column: 3, scope: !60, inlinedAt: !655)
!675 = !DILocation(line: 667, column: 3, scope: !658, inlinedAt: !655)
!676 = !DILocation(line: 100, column: 3, scope: !623)
!677 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 104, type: !678, isLocal: false, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !681)
!678 = !DISubroutineType(types: !679)
!679 = !{!85, !85, !680}
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!681 = !{!682, !683, !684, !685, !686, !687}
!682 = !DILocalVariable(name: "argc", arg: 1, scope: !677, file: !3, line: 104, type: !85)
!683 = !DILocalVariable(name: "argv", arg: 2, scope: !677, file: !3, line: 104, type: !680)
!684 = !DILocalVariable(name: "ok", scope: !677, file: !3, line: 106, type: !115)
!685 = !DILocalVariable(name: "check_basic_portability", scope: !677, file: !3, line: 107, type: !115)
!686 = !DILocalVariable(name: "check_extra_portability", scope: !677, file: !3, line: 108, type: !115)
!687 = !DILocalVariable(name: "optc", scope: !677, file: !3, line: 109, type: !85)
!688 = !DILocation(line: 104, column: 11, scope: !677)
!689 = !DILocation(line: 104, column: 24, scope: !677)
!690 = !DILocation(line: 106, column: 8, scope: !677)
!691 = !DILocation(line: 107, column: 8, scope: !677)
!692 = !DILocation(line: 108, column: 8, scope: !677)
!693 = !DILocation(line: 112, column: 21, scope: !677)
!694 = !DILocation(line: 112, column: 3, scope: !677)
!695 = !DILocation(line: 113, column: 3, scope: !677)
!696 = !DILocation(line: 114, column: 3, scope: !677)
!697 = !DILocation(line: 115, column: 3, scope: !677)
!698 = !DILocation(line: 117, column: 3, scope: !677)
!699 = !DILocation(line: 119, column: 3, scope: !677)
!700 = !DILocation(line: 119, column: 18, scope: !701)
!701 = !DILexicalBlockFile(scope: !677, file: !3, discriminator: 1)
!702 = !DILocation(line: 109, column: 7, scope: !677)
!703 = !DILocation(line: 119, column: 3, scope: !701)
!704 = distinct !{!704, !699, !705}
!705 = !DILocation(line: 143, column: 5, scope: !677)
!706 = !DILocation(line: 130, column: 11, scope: !707)
!707 = distinct !DILexicalBlock(scope: !708, file: !3, line: 122, column: 9)
!708 = distinct !DILexicalBlock(scope: !677, file: !3, line: 120, column: 5)
!709 = !DILocation(line: 136, column: 9, scope: !707)
!710 = !DILocation(line: 138, column: 9, scope: !707)
!711 = !DILocation(line: 138, column: 9, scope: !712)
!712 = !DILexicalBlockFile(scope: !707, file: !3, discriminator: 1)
!713 = !DILocation(line: 141, column: 11, scope: !707)
!714 = !DILocation(line: 145, column: 7, scope: !715)
!715 = distinct !DILexicalBlock(scope: !677, file: !3, line: 145, column: 7)
!716 = !{!717, !717, i64 0}
!717 = !{!"int", !638, i64 0}
!718 = !DILocation(line: 145, column: 14, scope: !715)
!719 = !DILocation(line: 145, column: 7, scope: !677)
!720 = !DILocation(line: 151, column: 17, scope: !721)
!721 = !DILexicalBlockFile(scope: !722, file: !3, discriminator: 1)
!722 = distinct !DILexicalBlock(scope: !723, file: !3, line: 151, column: 3)
!723 = distinct !DILexicalBlock(scope: !677, file: !3, line: 151, column: 3)
!724 = !DILocation(line: 151, column: 3, scope: !725)
!725 = !DILexicalBlockFile(scope: !723, file: !3, discriminator: 1)
!726 = !DILocation(line: 147, column: 20, scope: !727)
!727 = distinct !DILexicalBlock(scope: !715, file: !3, line: 146, column: 5)
!728 = !DILocation(line: 147, column: 7, scope: !729)
!729 = !DILexicalBlockFile(scope: !727, file: !3, discriminator: 1)
!730 = !DILocation(line: 148, column: 7, scope: !727)
!731 = !DILocation(line: 152, column: 31, scope: !722)
!732 = !DILocalVariable(name: "file", arg: 1, scope: !733, file: !3, line: 247, type: !44)
!733 = distinct !DISubprogram(name: "validate_file_name", scope: !3, file: !3, line: 247, type: !734, isLocal: true, isDefinition: true, scopeLine: 249, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !736)
!734 = !DISubroutineType(types: !735)
!735 = !{!115, !44, !115, !115}
!736 = !{!732, !737, !738, !739, !740, !741, !742, !743, !785, !788, !791, !792, !795, !796, !802, !805, !806, !810, !813, !814, !815, !818, !819}
!737 = !DILocalVariable(name: "check_basic_portability", arg: 2, scope: !733, file: !3, line: 247, type: !115)
!738 = !DILocalVariable(name: "check_extra_portability", arg: 3, scope: !733, file: !3, line: 248, type: !115)
!739 = !DILocalVariable(name: "filelen", scope: !733, file: !3, line: 250, type: !47)
!740 = !DILocalVariable(name: "start", scope: !733, file: !3, line: 253, type: !44)
!741 = !DILocalVariable(name: "check_component_lengths", scope: !733, file: !3, line: 256, type: !115)
!742 = !DILocalVariable(name: "file_exists", scope: !733, file: !3, line: 259, type: !115)
!743 = !DILocalVariable(name: "st", scope: !744, file: !3, line: 287, type: !746)
!744 = distinct !DILexicalBlock(scope: !745, file: !3, line: 281, column: 5)
!745 = distinct !DILexicalBlock(scope: !733, file: !3, line: 275, column: 7)
!746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !747, line: 46, size: 1152, elements: !748)
!747 = !DIFile(filename: "/usr/include/bits/stat.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!748 = !{!749, !752, !754, !756, !758, !760, !762, !763, !764, !767, !769, !771, !779, !780, !781}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !746, file: !747, line: 48, baseType: !750, size: 64)
!750 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !751, line: 133, baseType: !49)
!751 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!752 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !746, file: !747, line: 53, baseType: !753, size: 64, offset: 64)
!753 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !751, line: 136, baseType: !49)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !746, file: !747, line: 61, baseType: !755, size: 64, offset: 128)
!755 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !751, line: 139, baseType: !49)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !746, file: !747, line: 62, baseType: !757, size: 32, offset: 192)
!757 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !751, line: 138, baseType: !173)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !746, file: !747, line: 64, baseType: !759, size: 32, offset: 224)
!759 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !751, line: 134, baseType: !173)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !746, file: !747, line: 65, baseType: !761, size: 32, offset: 256)
!761 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !751, line: 135, baseType: !173)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !746, file: !747, line: 67, baseType: !85, size: 32, offset: 288)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !746, file: !747, line: 69, baseType: !750, size: 64, offset: 320)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !746, file: !747, line: 74, baseType: !765, size: 64, offset: 384)
!765 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !751, line: 140, baseType: !766)
!766 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !746, file: !747, line: 78, baseType: !768, size: 64, offset: 448)
!768 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !751, line: 162, baseType: !766)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !746, file: !747, line: 80, baseType: !770, size: 64, offset: 512)
!770 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !751, line: 167, baseType: !766)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !746, file: !747, line: 91, baseType: !772, size: 128, offset: 576)
!772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !773, line: 8, size: 128, elements: !774)
!773 = !DIFile(filename: "/usr/include/bits/types/struct_timespec.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!774 = !{!775, !777}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !772, file: !773, line: 10, baseType: !776, size: 64)
!776 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !751, line: 148, baseType: !766)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !772, file: !773, line: 11, baseType: !778, size: 64, offset: 64)
!778 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !751, line: 184, baseType: !766)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !746, file: !747, line: 92, baseType: !772, size: 128, offset: 704)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !746, file: !747, line: 93, baseType: !772, size: 128, offset: 832)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !746, file: !747, line: 106, baseType: !782, size: 192, offset: 960)
!782 = !DICompositeType(tag: DW_TAG_array_type, baseType: !778, size: 192, elements: !783)
!783 = !{!784}
!784 = !DISubrange(count: 3)
!785 = !DILocalVariable(name: "maxsize", scope: !786, file: !3, line: 300, type: !47)
!786 = distinct !DILexicalBlock(scope: !787, file: !3, line: 299, column: 5)
!787 = distinct !DILexicalBlock(scope: !733, file: !3, line: 297, column: 7)
!788 = !DILocalVariable(name: "size", scope: !789, file: !3, line: 306, type: !766)
!789 = distinct !DILexicalBlock(scope: !790, file: !3, line: 305, column: 9)
!790 = distinct !DILexicalBlock(scope: !786, file: !3, line: 302, column: 11)
!791 = !DILocalVariable(name: "dir", scope: !789, file: !3, line: 307, type: !55)
!792 = !DILocalVariable(name: "len", scope: !793, file: !3, line: 322, type: !49)
!793 = distinct !DILexicalBlock(scope: !794, file: !3, line: 321, column: 9)
!794 = distinct !DILexicalBlock(scope: !786, file: !3, line: 320, column: 11)
!795 = !DILocalVariable(name: "maxlen", scope: !793, file: !3, line: 323, type: !49)
!796 = !DILocalVariable(name: "length", scope: !797, file: !3, line: 340, type: !47)
!797 = distinct !DILexicalBlock(scope: !798, file: !3, line: 339, column: 9)
!798 = distinct !DILexicalBlock(scope: !799, file: !3, line: 338, column: 7)
!799 = distinct !DILexicalBlock(scope: !800, file: !3, line: 338, column: 7)
!800 = distinct !DILexicalBlock(scope: !801, file: !3, line: 337, column: 5)
!801 = distinct !DILexicalBlock(scope: !733, file: !3, line: 336, column: 7)
!802 = !DILocalVariable(name: "name_max", scope: !803, file: !3, line: 358, type: !47)
!803 = distinct !DILexicalBlock(scope: !804, file: !3, line: 353, column: 5)
!804 = distinct !DILexicalBlock(scope: !733, file: !3, line: 352, column: 7)
!805 = !DILocalVariable(name: "known_name_max", scope: !803, file: !3, line: 361, type: !47)
!806 = !DILocalVariable(name: "length", scope: !807, file: !3, line: 365, type: !47)
!807 = distinct !DILexicalBlock(scope: !808, file: !3, line: 364, column: 9)
!808 = distinct !DILexicalBlock(scope: !809, file: !3, line: 363, column: 7)
!809 = distinct !DILexicalBlock(scope: !803, file: !3, line: 363, column: 7)
!810 = !DILocalVariable(name: "len", scope: !811, file: !3, line: 371, type: !766)
!811 = distinct !DILexicalBlock(scope: !812, file: !3, line: 370, column: 13)
!812 = distinct !DILexicalBlock(scope: !807, file: !3, line: 367, column: 15)
!813 = !DILocalVariable(name: "dir", scope: !811, file: !3, line: 372, type: !55)
!814 = !DILocalVariable(name: "c", scope: !811, file: !3, line: 373, type: !45)
!815 = !DILocalVariable(name: "len", scope: !816, file: !3, line: 405, type: !49)
!816 = distinct !DILexicalBlock(scope: !817, file: !3, line: 404, column: 13)
!817 = distinct !DILexicalBlock(scope: !807, file: !3, line: 403, column: 15)
!818 = !DILocalVariable(name: "maxlen", scope: !816, file: !3, line: 406, type: !49)
!819 = !DILocalVariable(name: "c", scope: !816, file: !3, line: 407, type: !45)
!820 = !DILocation(line: 247, column: 27, scope: !733, inlinedAt: !821)
!821 = distinct !DILocation(line: 152, column: 11, scope: !722)
!822 = !DIExpression(DW_OP_LLVM_fragment, 0, 1)
!823 = !DILocation(line: 247, column: 38, scope: !733, inlinedAt: !821)
!824 = !DILocation(line: 248, column: 26, scope: !733, inlinedAt: !821)
!825 = !DILocation(line: 250, column: 20, scope: !733, inlinedAt: !821)
!826 = !DILocation(line: 250, column: 10, scope: !733, inlinedAt: !821)
!827 = !DILocation(line: 259, column: 8, scope: !733, inlinedAt: !821)
!828 = !DILocation(line: 261, column: 31, scope: !829, inlinedAt: !821)
!829 = distinct !DILexicalBlock(scope: !733, file: !3, line: 261, column: 7)
!830 = !DILocalVariable(name: "file", arg: 1, scope: !831, file: !3, line: 162, type: !55)
!831 = distinct !DISubprogram(name: "no_leading_hyphen", scope: !3, file: !3, line: 162, type: !832, isLocal: true, isDefinition: true, scopeLine: 163, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !834)
!832 = !DISubroutineType(types: !833)
!833 = !{!115, !55}
!834 = !{!830, !835}
!835 = !DILocalVariable(name: "p", scope: !831, file: !3, line: 164, type: !55)
!836 = !DILocation(line: 162, column: 32, scope: !831, inlinedAt: !837)
!837 = distinct !DILocation(line: 261, column: 36, scope: !838, inlinedAt: !821)
!838 = !DILexicalBlockFile(scope: !829, file: !3, discriminator: 1)
!839 = !DILocation(line: 164, column: 15, scope: !831, inlinedAt: !837)
!840 = !DILocation(line: 166, column: 24, scope: !841, inlinedAt: !837)
!841 = !DILexicalBlockFile(scope: !842, file: !3, discriminator: 1)
!842 = distinct !DILexicalBlock(scope: !843, file: !3, line: 166, column: 3)
!843 = distinct !DILexicalBlock(scope: !831, file: !3, line: 166, column: 3)
!844 = !DILocation(line: 166, column: 3, scope: !845, inlinedAt: !837)
!845 = !DILexicalBlockFile(scope: !843, file: !3, discriminator: 1)
!846 = !DILocation(line: 167, column: 11, scope: !847, inlinedAt: !837)
!847 = distinct !DILexicalBlock(scope: !842, file: !3, line: 167, column: 9)
!848 = !DILocation(line: 166, column: 44, scope: !849, inlinedAt: !837)
!849 = !DILexicalBlockFile(scope: !842, file: !3, discriminator: 2)
!850 = distinct !{!850, !851, !852}
!851 = !DILocation(line: 166, column: 3, scope: !843)
!852 = !DILocation(line: 172, column: 7, scope: !843)
!853 = !DILocation(line: 167, column: 19, scope: !847, inlinedAt: !837)
!854 = !DILocation(line: 167, column: 22, scope: !855, inlinedAt: !837)
!855 = !DILexicalBlockFile(scope: !847, file: !3, discriminator: 1)
!856 = !{!638, !638, i64 0}
!857 = !DILocation(line: 167, column: 28, scope: !855, inlinedAt: !837)
!858 = !DILocation(line: 167, column: 9, scope: !841, inlinedAt: !837)
!859 = !DILocation(line: 169, column: 22, scope: !860, inlinedAt: !837)
!860 = distinct !DILexicalBlock(scope: !847, file: !3, line: 168, column: 7)
!861 = !DILocation(line: 170, column: 16, scope: !860, inlinedAt: !837)
!862 = !DILocation(line: 169, column: 9, scope: !863, inlinedAt: !837)
!863 = !DILexicalBlockFile(scope: !860, file: !3, discriminator: 1)
!864 = !DILocation(line: 261, column: 7, scope: !865, inlinedAt: !821)
!865 = !DILexicalBlockFile(scope: !733, file: !3, discriminator: 1)
!866 = !DILocation(line: 265, column: 18, scope: !867, inlinedAt: !821)
!867 = !DILexicalBlockFile(scope: !868, file: !3, discriminator: 1)
!868 = distinct !DILexicalBlock(scope: !733, file: !3, line: 264, column: 7)
!869 = !DILocation(line: 264, column: 32, scope: !868, inlinedAt: !821)
!870 = !DILocation(line: 265, column: 7, scope: !868, inlinedAt: !821)
!871 = !DILocation(line: 264, column: 7, scope: !872, inlinedAt: !821)
!872 = !DILexicalBlockFile(scope: !733, file: !3, discriminator: 2)
!873 = !DILocation(line: 271, column: 20, scope: !874, inlinedAt: !821)
!874 = distinct !DILexicalBlock(scope: !868, file: !3, line: 266, column: 5)
!875 = !DILocation(line: 271, column: 7, scope: !876, inlinedAt: !821)
!876 = !DILexicalBlockFile(scope: !874, file: !3, discriminator: 1)
!877 = !DILocation(line: 272, column: 7, scope: !874, inlinedAt: !821)
!878 = !DILocalVariable(name: "file", arg: 1, scope: !879, file: !3, line: 181, type: !55)
!879 = distinct !DISubprogram(name: "portable_chars_only", scope: !3, file: !3, line: 181, type: !880, isLocal: true, isDefinition: true, scopeLine: 182, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !882)
!880 = !DISubroutineType(types: !881)
!881 = !{!115, !55, !47}
!882 = !{!878, !883, !884, !885, !886, !899}
!883 = !DILocalVariable(name: "filelen", arg: 2, scope: !879, file: !3, line: 181, type: !47)
!884 = !DILocalVariable(name: "validlen", scope: !879, file: !3, line: 183, type: !47)
!885 = !DILocalVariable(name: "invalid", scope: !879, file: !3, line: 188, type: !55)
!886 = !DILocalVariable(name: "mbstate", scope: !887, file: !3, line: 192, type: !889)
!887 = distinct !DILexicalBlock(scope: !888, file: !3, line: 191, column: 5)
!888 = distinct !DILexicalBlock(scope: !879, file: !3, line: 190, column: 7)
!889 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !217, line: 107, baseType: !890)
!890 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !217, line: 95, baseType: !891)
!891 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !217, line: 83, size: 64, elements: !892)
!892 = !{!893, !894}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !891, file: !217, line: 85, baseType: !85, size: 32)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !891, file: !217, line: 94, baseType: !895, size: 32, offset: 32)
!895 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !891, file: !217, line: 86, size: 32, elements: !896)
!896 = !{!897, !898}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !895, file: !217, line: 89, baseType: !173, size: 32)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !895, file: !217, line: 93, baseType: !227, size: 32)
!899 = !DILocalVariable(name: "charlen", scope: !887, file: !3, line: 193, type: !47)
!900 = !DILocation(line: 181, column: 34, scope: !879, inlinedAt: !901)
!901 = distinct !DILocation(line: 277, column: 13, scope: !902, inlinedAt: !821)
!902 = distinct !DILexicalBlock(scope: !903, file: !3, line: 277, column: 11)
!903 = distinct !DILexicalBlock(scope: !745, file: !3, line: 276, column: 5)
!904 = !DILocation(line: 181, column: 47, scope: !879, inlinedAt: !901)
!905 = !DILocation(line: 183, column: 21, scope: !879, inlinedAt: !901)
!906 = !DILocation(line: 183, column: 10, scope: !879, inlinedAt: !901)
!907 = !DILocation(line: 188, column: 30, scope: !879, inlinedAt: !901)
!908 = !DILocation(line: 188, column: 15, scope: !879, inlinedAt: !901)
!909 = !DILocation(line: 190, column: 7, scope: !888, inlinedAt: !901)
!910 = !DILocation(line: 190, column: 7, scope: !879, inlinedAt: !901)
!911 = !DILocation(line: 192, column: 7, scope: !887, inlinedAt: !901)
!912 = !DILocation(line: 192, column: 17, scope: !887, inlinedAt: !901)
!913 = !DILocation(line: 193, column: 49, scope: !887, inlinedAt: !901)
!914 = !DIExpression(DW_OP_deref)
!915 = !DILocation(line: 193, column: 24, scope: !887, inlinedAt: !901)
!916 = !DILocation(line: 193, column: 14, scope: !887, inlinedAt: !901)
!917 = !DILocation(line: 195, column: 14, scope: !887, inlinedAt: !901)
!918 = !DILocation(line: 197, column: 45, scope: !887, inlinedAt: !901)
!919 = !DILocation(line: 197, column: 37, scope: !887, inlinedAt: !901)
!920 = !DILocation(line: 196, column: 14, scope: !921, inlinedAt: !901)
!921 = !DILexicalBlockFile(scope: !887, file: !3, discriminator: 1)
!922 = !DILocation(line: 198, column: 14, scope: !887, inlinedAt: !901)
!923 = !DILocation(line: 194, column: 7, scope: !887, inlinedAt: !901)
!924 = !DILocation(line: 200, column: 5, scope: !888, inlinedAt: !901)
!925 = !DILocation(line: 277, column: 11, scope: !903, inlinedAt: !821)
!926 = !DILocation(line: 287, column: 7, scope: !744, inlinedAt: !821)
!927 = !DILocation(line: 287, column: 19, scope: !744, inlinedAt: !821)
!928 = !DILocalVariable(name: "__path", arg: 1, scope: !929, file: !930, line: 456, type: !55)
!929 = distinct !DISubprogram(name: "lstat", scope: !930, file: !930, line: 456, type: !931, isLocal: false, isDefinition: true, scopeLine: 457, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !934)
!930 = !DIFile(filename: "/usr/include/sys/stat.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!931 = !DISubroutineType(types: !932)
!932 = !{!85, !55, !933}
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!934 = !{!928, !935}
!935 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !929, file: !930, line: 456, type: !933)
!936 = !DILocation(line: 456, column: 1, scope: !929, inlinedAt: !937)
!937 = distinct !DILocation(line: 288, column: 11, scope: !938, inlinedAt: !821)
!938 = distinct !DILexicalBlock(scope: !744, file: !3, line: 288, column: 11)
!939 = !DILocation(line: 458, column: 10, scope: !929, inlinedAt: !937)
!940 = !DILocation(line: 288, column: 29, scope: !938, inlinedAt: !821)
!941 = !DILocation(line: 288, column: 11, scope: !744, inlinedAt: !821)
!942 = !DILocation(line: 295, column: 5, scope: !745, inlinedAt: !821)
!943 = !DILocation(line: 256, column: 8, scope: !733, inlinedAt: !821)
!944 = !DILocation(line: 336, column: 33, scope: !801, inlinedAt: !821)
!945 = !DILocation(line: 290, column: 16, scope: !946, inlinedAt: !821)
!946 = distinct !DILexicalBlock(scope: !938, file: !3, line: 290, column: 16)
!947 = !DILocation(line: 290, column: 22, scope: !946, inlinedAt: !821)
!948 = !DILocation(line: 290, column: 32, scope: !946, inlinedAt: !821)
!949 = !DILocation(line: 292, column: 34, scope: !950, inlinedAt: !821)
!950 = !DILexicalBlockFile(scope: !951, file: !3, discriminator: 1)
!951 = distinct !DILexicalBlock(scope: !946, file: !3, line: 291, column: 9)
!952 = !DILocation(line: 292, column: 11, scope: !953, inlinedAt: !821)
!953 = !DILexicalBlockFile(scope: !951, file: !3, discriminator: 2)
!954 = !DILocation(line: 298, column: 45, scope: !955, inlinedAt: !821)
!955 = !DILexicalBlockFile(scope: !787, file: !3, discriminator: 2)
!956 = !DILocation(line: 298, column: 25, scope: !957, inlinedAt: !821)
!957 = !DILexicalBlockFile(scope: !787, file: !3, discriminator: 1)
!958 = !DILocation(line: 307, column: 30, scope: !789, inlinedAt: !821)
!959 = !DILocation(line: 307, column: 36, scope: !789, inlinedAt: !821)
!960 = !DILocation(line: 307, column: 23, scope: !789, inlinedAt: !821)
!961 = !DILocation(line: 308, column: 17, scope: !789, inlinedAt: !821)
!962 = !DILocation(line: 309, column: 18, scope: !789, inlinedAt: !821)
!963 = !DILocation(line: 306, column: 20, scope: !789, inlinedAt: !821)
!964 = !DILocation(line: 310, column: 20, scope: !965, inlinedAt: !821)
!965 = distinct !DILexicalBlock(scope: !789, file: !3, line: 310, column: 15)
!966 = !DILocation(line: 310, column: 24, scope: !965, inlinedAt: !821)
!967 = !DILocation(line: 310, column: 27, scope: !968, inlinedAt: !821)
!968 = !DILexicalBlockFile(scope: !965, file: !3, discriminator: 1)
!969 = !DILocation(line: 310, column: 33, scope: !968, inlinedAt: !821)
!970 = !DILocation(line: 310, column: 15, scope: !971, inlinedAt: !821)
!971 = !DILexicalBlockFile(scope: !789, file: !3, discriminator: 1)
!972 = !DILocation(line: 313, column: 22, scope: !973, inlinedAt: !821)
!973 = distinct !DILexicalBlock(scope: !965, file: !3, line: 311, column: 13)
!974 = !DILocation(line: 312, column: 15, scope: !975, inlinedAt: !821)
!975 = !DILexicalBlockFile(scope: !973, file: !3, discriminator: 1)
!976 = !DILocation(line: 300, column: 14, scope: !786, inlinedAt: !821)
!977 = !DILocation(line: 320, column: 19, scope: !794, inlinedAt: !821)
!978 = !DILocation(line: 320, column: 11, scope: !786, inlinedAt: !821)
!979 = !DILocation(line: 322, column: 29, scope: !793, inlinedAt: !821)
!980 = !DILocation(line: 323, column: 46, scope: !793, inlinedAt: !821)
!981 = !DILocation(line: 323, column: 29, scope: !793, inlinedAt: !821)
!982 = !DILocation(line: 324, column: 24, scope: !793, inlinedAt: !821)
!983 = !DILocation(line: 325, column: 31, scope: !793, inlinedAt: !821)
!984 = !DILocation(line: 324, column: 11, scope: !985, inlinedAt: !821)
!985 = !DILexicalBlockFile(scope: !793, file: !3, discriminator: 1)
!986 = !DILocation(line: 253, column: 9, scope: !733, inlinedAt: !821)
!987 = !DILocalVariable(name: "f", arg: 1, scope: !988, file: !3, line: 208, type: !44)
!988 = distinct !DISubprogram(name: "component_start", scope: !3, file: !3, line: 208, type: !989, isLocal: true, isDefinition: true, scopeLine: 209, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !991)
!989 = !DISubroutineType(types: !990)
!990 = !{!44, !44}
!991 = !{!987}
!992 = !DILocation(line: 208, column: 24, scope: !988, inlinedAt: !993)
!993 = distinct !DILocation(line: 338, column: 36, scope: !994, inlinedAt: !821)
!994 = !DILexicalBlockFile(scope: !798, file: !3, discriminator: 1)
!995 = !DILocation(line: 210, column: 3, scope: !988, inlinedAt: !993)
!996 = !DILocation(line: 210, column: 10, scope: !997, inlinedAt: !993)
!997 = !DILexicalBlockFile(scope: !988, file: !3, discriminator: 1)
!998 = !DILocation(line: 211, column: 6, scope: !988, inlinedAt: !993)
!999 = !DILocation(line: 210, column: 3, scope: !997, inlinedAt: !993)
!1000 = !DILocation(line: 220, column: 10, scope: !1001, inlinedAt: !1007)
!1001 = distinct !DISubprogram(name: "component_len", scope: !3, file: !3, line: 218, type: !1002, isLocal: true, isDefinition: true, scopeLine: 219, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1004)
!1002 = !DISubroutineType(types: !1003)
!1003 = !{!47, !55}
!1004 = !{!1005, !1006}
!1005 = !DILocalVariable(name: "f", arg: 1, scope: !1001, file: !3, line: 218, type: !55)
!1006 = !DILocalVariable(name: "len", scope: !1001, file: !3, line: 220, type: !47)
!1007 = distinct !DILocation(line: 340, column: 27, scope: !797, inlinedAt: !821)
!1008 = !DILocation(line: 221, column: 17, scope: !1009, inlinedAt: !1007)
!1009 = !DILexicalBlockFile(scope: !1010, file: !3, discriminator: 1)
!1010 = distinct !DILexicalBlock(scope: !1011, file: !3, line: 221, column: 3)
!1011 = distinct !DILexicalBlock(scope: !1001, file: !3, line: 221, column: 3)
!1012 = !DILocation(line: 221, column: 31, scope: !1009, inlinedAt: !1007)
!1013 = !DILocation(line: 221, column: 45, scope: !1014, inlinedAt: !1007)
!1014 = !DILexicalBlockFile(scope: !1010, file: !3, discriminator: 4)
!1015 = !DILocation(line: 221, column: 3, scope: !1014, inlinedAt: !1007)
!1016 = distinct !{!1016, !1017, !1018}
!1017 = !DILocation(line: 221, column: 3, scope: !1011)
!1018 = !DILocation(line: 222, column: 5, scope: !1011)
!1019 = !DILocation(line: 340, column: 18, scope: !797, inlinedAt: !821)
!1020 = !DILocation(line: 342, column: 32, scope: !1021, inlinedAt: !821)
!1021 = distinct !DILexicalBlock(scope: !797, file: !3, line: 342, column: 15)
!1022 = distinct !{!1022, !1023, !1024}
!1023 = !DILocation(line: 338, column: 7, scope: !799)
!1024 = !DILocation(line: 349, column: 9, scope: !799)
!1025 = !DILocation(line: 352, column: 7, scope: !733, inlinedAt: !821)
!1026 = !DILocation(line: 358, column: 14, scope: !803, inlinedAt: !821)
!1027 = !DILocation(line: 361, column: 14, scope: !803, inlinedAt: !821)
!1028 = !DILocation(line: 208, column: 24, scope: !988, inlinedAt: !1029)
!1029 = distinct !DILocation(line: 363, column: 36, scope: !1030, inlinedAt: !821)
!1030 = !DILexicalBlockFile(scope: !808, file: !3, discriminator: 1)
!1031 = !DILocation(line: 210, column: 3, scope: !988, inlinedAt: !1029)
!1032 = !DILocation(line: 210, column: 10, scope: !997, inlinedAt: !1029)
!1033 = !DILocation(line: 211, column: 6, scope: !988, inlinedAt: !1029)
!1034 = !DILocation(line: 210, column: 3, scope: !997, inlinedAt: !1029)
!1035 = !DILocation(line: 367, column: 15, scope: !812, inlinedAt: !821)
!1036 = !DILocation(line: 367, column: 15, scope: !807, inlinedAt: !821)
!1037 = !DILocation(line: 372, column: 40, scope: !811, inlinedAt: !821)
!1038 = !DILocation(line: 372, column: 34, scope: !811, inlinedAt: !821)
!1039 = !DILocation(line: 372, column: 27, scope: !811, inlinedAt: !821)
!1040 = !DILocation(line: 373, column: 20, scope: !811, inlinedAt: !821)
!1041 = !DILocation(line: 374, column: 15, scope: !811, inlinedAt: !821)
!1042 = !DILocation(line: 374, column: 21, scope: !811, inlinedAt: !821)
!1043 = !DILocation(line: 375, column: 22, scope: !811, inlinedAt: !821)
!1044 = !DILocation(line: 376, column: 21, scope: !811, inlinedAt: !821)
!1045 = !DILocation(line: 371, column: 24, scope: !811, inlinedAt: !821)
!1046 = !DILocation(line: 377, column: 22, scope: !811, inlinedAt: !821)
!1047 = !DILocation(line: 378, column: 21, scope: !1048, inlinedAt: !821)
!1048 = distinct !DILexicalBlock(scope: !811, file: !3, line: 378, column: 19)
!1049 = !DILocation(line: 378, column: 19, scope: !811, inlinedAt: !821)
!1050 = !DILocation(line: 381, column: 25, scope: !1048, inlinedAt: !821)
!1051 = !DILocation(line: 381, column: 17, scope: !1048, inlinedAt: !821)
!1052 = !DILocation(line: 391, column: 21, scope: !1053, inlinedAt: !821)
!1053 = distinct !DILexicalBlock(scope: !1048, file: !3, line: 382, column: 19)
!1054 = !DILocation(line: 394, column: 28, scope: !1053, inlinedAt: !821)
!1055 = !DILocation(line: 395, column: 31, scope: !1053, inlinedAt: !821)
!1056 = !DILocation(line: 395, column: 44, scope: !1057, inlinedAt: !821)
!1057 = !DILexicalBlockFile(scope: !1053, file: !3, discriminator: 1)
!1058 = !DILocation(line: 395, column: 21, scope: !1059, inlinedAt: !821)
!1059 = !DILexicalBlockFile(scope: !1053, file: !3, discriminator: 2)
!1060 = !DILocation(line: 396, column: 28, scope: !1053, inlinedAt: !821)
!1061 = !DILocation(line: 218, column: 28, scope: !1001, inlinedAt: !1062)
!1062 = distinct !DILocation(line: 401, column: 20, scope: !807, inlinedAt: !821)
!1063 = !DILocation(line: 220, column: 10, scope: !1001, inlinedAt: !1062)
!1064 = !DILocation(line: 221, column: 8, scope: !1011, inlinedAt: !1062)
!1065 = !DILocation(line: 221, column: 17, scope: !1009, inlinedAt: !1062)
!1066 = !DILocation(line: 221, column: 31, scope: !1009, inlinedAt: !1062)
!1067 = !DILocation(line: 221, column: 45, scope: !1014, inlinedAt: !1062)
!1068 = !DILocation(line: 221, column: 3, scope: !1014, inlinedAt: !1062)
!1069 = !DILocation(line: 365, column: 18, scope: !807, inlinedAt: !821)
!1070 = !DILocation(line: 403, column: 24, scope: !817, inlinedAt: !821)
!1071 = !DILocation(line: 403, column: 15, scope: !807, inlinedAt: !821)
!1072 = !DILocation(line: 405, column: 33, scope: !816, inlinedAt: !821)
!1073 = !DILocation(line: 406, column: 33, scope: !816, inlinedAt: !821)
!1074 = !DILocation(line: 407, column: 20, scope: !816, inlinedAt: !821)
!1075 = !DILocation(line: 408, column: 26, scope: !816, inlinedAt: !821)
!1076 = !DILocation(line: 410, column: 22, scope: !816, inlinedAt: !821)
!1077 = !DILocation(line: 412, column: 35, scope: !816, inlinedAt: !821)
!1078 = !DILocation(line: 409, column: 15, scope: !816, inlinedAt: !821)
!1079 = !DILocation(line: 413, column: 26, scope: !816, inlinedAt: !821)
!1080 = !DILocation(line: 152, column: 8, scope: !722)
!1081 = !DILocation(line: 151, column: 25, scope: !1082)
!1082 = !DILexicalBlockFile(scope: !722, file: !3, discriminator: 2)
!1083 = distinct !{!1083, !1084, !1085}
!1084 = !DILocation(line: 151, column: 3, scope: !723)
!1085 = !DILocation(line: 153, column: 79, scope: !723)
!1086 = !DILocation(line: 155, column: 10, scope: !677)
!1087 = !DILocation(line: 156, column: 1, scope: !677)
!1088 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !114, file: !114, line: 41, type: !62, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !109, variables: !1089)
!1089 = !{!1090}
!1090 = !DILocalVariable(name: "file", arg: 1, scope: !1088, file: !114, line: 41, type: !55)
!1091 = !DILocation(line: 41, column: 41, scope: !1088)
!1092 = !DILocation(line: 43, column: 13, scope: !1088)
!1093 = !DILocation(line: 44, column: 1, scope: !1088)
!1094 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !114, file: !114, line: 78, type: !1095, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !109, variables: !1097)
!1095 = !DISubroutineType(types: !1096)
!1096 = !{null, !115}
!1097 = !{!1098}
!1098 = !DILocalVariable(name: "ignore", arg: 1, scope: !1094, file: !114, line: 78, type: !115)
!1099 = !DILocation(line: 78, column: 37, scope: !1094)
!1100 = !DILocation(line: 80, column: 16, scope: !1094)
!1101 = !{!1102, !1102, i64 0}
!1102 = !{!"_Bool", !638, i64 0}
!1103 = !DILocation(line: 81, column: 1, scope: !1094)
!1104 = distinct !DISubprogram(name: "close_stdout", scope: !114, file: !114, line: 107, type: !1105, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !109, variables: !1107)
!1105 = !DISubroutineType(types: !1106)
!1106 = !{null}
!1107 = !{!1108}
!1108 = !DILocalVariable(name: "write_error", scope: !1109, file: !114, line: 112, type: !55)
!1109 = distinct !DILexicalBlock(scope: !1110, file: !114, line: 111, column: 5)
!1110 = distinct !DILexicalBlock(scope: !1104, file: !114, line: 109, column: 7)
!1111 = !DILocation(line: 109, column: 21, scope: !1110)
!1112 = !DILocation(line: 109, column: 7, scope: !1110)
!1113 = !DILocation(line: 109, column: 29, scope: !1110)
!1114 = !DILocation(line: 110, column: 7, scope: !1110)
!1115 = !DILocation(line: 110, column: 12, scope: !1116)
!1116 = !DILexicalBlockFile(scope: !1110, file: !114, discriminator: 1)
!1117 = !{i8 0, i8 2}
!1118 = !DILocation(line: 114, column: 19, scope: !1119)
!1119 = distinct !DILexicalBlock(scope: !1109, file: !114, line: 113, column: 11)
!1120 = !DILocation(line: 110, column: 25, scope: !1116)
!1121 = !DILocation(line: 110, column: 28, scope: !1122)
!1122 = !DILexicalBlockFile(scope: !1110, file: !114, discriminator: 2)
!1123 = !DILocation(line: 110, column: 34, scope: !1122)
!1124 = !DILocation(line: 109, column: 7, scope: !1125)
!1125 = !DILexicalBlockFile(scope: !1104, file: !114, discriminator: 1)
!1126 = !DILocation(line: 112, column: 33, scope: !1109)
!1127 = !DILocation(line: 112, column: 19, scope: !1109)
!1128 = !DILocation(line: 113, column: 11, scope: !1119)
!1129 = !DILocation(line: 113, column: 11, scope: !1109)
!1130 = !DILocation(line: 114, column: 36, scope: !1131)
!1131 = !DILexicalBlockFile(scope: !1119, file: !114, discriminator: 1)
!1132 = !DILocation(line: 114, column: 9, scope: !1133)
!1133 = !DILexicalBlockFile(scope: !1119, file: !114, discriminator: 2)
!1134 = !DILocation(line: 114, column: 9, scope: !1119)
!1135 = !DILocation(line: 117, column: 9, scope: !1131)
!1136 = !DILocation(line: 119, column: 14, scope: !1109)
!1137 = !DILocation(line: 119, column: 7, scope: !1109)
!1138 = !DILocation(line: 122, column: 22, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !1104, file: !114, line: 122, column: 8)
!1140 = !DILocation(line: 122, column: 8, scope: !1139)
!1141 = !DILocation(line: 122, column: 30, scope: !1139)
!1142 = !DILocation(line: 122, column: 8, scope: !1104)
!1143 = !DILocation(line: 123, column: 13, scope: !1139)
!1144 = !DILocation(line: 123, column: 6, scope: !1139)
!1145 = !DILocation(line: 124, column: 1, scope: !1104)
!1146 = distinct !DISubprogram(name: "set_program_name", scope: !129, file: !129, line: 39, type: !62, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !125, variables: !1147)
!1147 = !{!1148, !1149, !1150}
!1148 = !DILocalVariable(name: "argv0", arg: 1, scope: !1146, file: !129, line: 39, type: !55)
!1149 = !DILocalVariable(name: "slash", scope: !1146, file: !129, line: 46, type: !55)
!1150 = !DILocalVariable(name: "base", scope: !1146, file: !129, line: 47, type: !55)
!1151 = !DILocation(line: 39, column: 31, scope: !1146)
!1152 = !DILocation(line: 51, column: 13, scope: !1153)
!1153 = distinct !DILexicalBlock(scope: !1146, file: !129, line: 51, column: 7)
!1154 = !DILocation(line: 51, column: 7, scope: !1146)
!1155 = !DILocation(line: 55, column: 14, scope: !1156)
!1156 = distinct !DILexicalBlock(scope: !1153, file: !129, line: 52, column: 5)
!1157 = !DILocation(line: 54, column: 7, scope: !1156)
!1158 = !DILocation(line: 56, column: 7, scope: !1156)
!1159 = !DILocation(line: 59, column: 11, scope: !1146)
!1160 = !DILocation(line: 46, column: 15, scope: !1146)
!1161 = !DILocation(line: 60, column: 17, scope: !1146)
!1162 = !DILocation(line: 60, column: 33, scope: !1163)
!1163 = !DILexicalBlockFile(scope: !1146, file: !129, discriminator: 1)
!1164 = !DILocation(line: 60, column: 11, scope: !1146)
!1165 = !DILocation(line: 47, column: 15, scope: !1146)
!1166 = !DILocation(line: 61, column: 12, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !1146, file: !129, line: 61, column: 7)
!1168 = !DILocation(line: 61, column: 20, scope: !1167)
!1169 = !DILocation(line: 61, column: 25, scope: !1167)
!1170 = !DILocation(line: 61, column: 28, scope: !1171)
!1171 = !DILexicalBlockFile(scope: !1167, file: !129, discriminator: 1)
!1172 = !DILocation(line: 61, column: 61, scope: !1171)
!1173 = !DILocation(line: 61, column: 7, scope: !1163)
!1174 = !DILocation(line: 64, column: 11, scope: !1175)
!1175 = distinct !DILexicalBlock(scope: !1176, file: !129, line: 64, column: 11)
!1176 = distinct !DILexicalBlock(scope: !1167, file: !129, line: 62, column: 5)
!1177 = !DILocation(line: 64, column: 36, scope: !1175)
!1178 = !DILocation(line: 64, column: 11, scope: !1176)
!1179 = !DILocation(line: 66, column: 24, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1175, file: !129, line: 65, column: 9)
!1181 = !DILocation(line: 70, column: 41, scope: !1180)
!1182 = !DILocation(line: 72, column: 9, scope: !1180)
!1183 = !DILocation(line: 84, column: 16, scope: !1146)
!1184 = !DILocation(line: 90, column: 27, scope: !1146)
!1185 = !DILocation(line: 92, column: 1, scope: !1146)
!1186 = distinct !DISubprogram(name: "clone_quoting_options", scope: !160, file: !160, line: 114, type: !1187, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !132, variables: !1190)
!1187 = !DISubroutineType(types: !1188)
!1188 = !{!1189, !1189}
!1189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!1190 = !{!1191, !1192, !1193}
!1191 = !DILocalVariable(name: "o", arg: 1, scope: !1186, file: !160, line: 114, type: !1189)
!1192 = !DILocalVariable(name: "e", scope: !1186, file: !160, line: 116, type: !85)
!1193 = !DILocalVariable(name: "p", scope: !1186, file: !160, line: 117, type: !1189)
!1194 = !DILocation(line: 114, column: 48, scope: !1186)
!1195 = !DILocation(line: 116, column: 11, scope: !1186)
!1196 = !DILocation(line: 116, column: 7, scope: !1186)
!1197 = !DILocation(line: 117, column: 40, scope: !1186)
!1198 = !DILocation(line: 117, column: 40, scope: !1199)
!1199 = !DILexicalBlockFile(scope: !1186, file: !160, discriminator: 3)
!1200 = !DILocation(line: 117, column: 31, scope: !1199)
!1201 = !DILocation(line: 117, column: 27, scope: !1186)
!1202 = !DILocation(line: 119, column: 9, scope: !1186)
!1203 = !DILocation(line: 120, column: 3, scope: !1186)
!1204 = distinct !DISubprogram(name: "get_quoting_style", scope: !160, file: !160, line: 125, type: !1205, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !132, variables: !1209)
!1205 = !DISubroutineType(types: !1206)
!1206 = !{!5, !1207}
!1207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64)
!1208 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !167)
!1209 = !{!1210}
!1210 = !DILocalVariable(name: "o", arg: 1, scope: !1204, file: !160, line: 125, type: !1207)
!1211 = !DILocation(line: 125, column: 50, scope: !1204)
!1212 = !DILocation(line: 127, column: 11, scope: !1204)
!1213 = !DILocation(line: 127, column: 46, scope: !1214)
!1214 = !DILexicalBlockFile(scope: !1204, file: !160, discriminator: 3)
!1215 = !{!1216, !638, i64 0}
!1216 = !{!"quoting_options", !638, i64 0, !717, i64 4, !638, i64 8, !637, i64 40, !637, i64 48}
!1217 = !DILocation(line: 127, column: 3, scope: !1214)
!1218 = distinct !DISubprogram(name: "set_quoting_style", scope: !160, file: !160, line: 133, type: !1219, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !132, variables: !1221)
!1219 = !DISubroutineType(types: !1220)
!1220 = !{null, !1189, !5}
!1221 = !{!1222, !1223}
!1222 = !DILocalVariable(name: "o", arg: 1, scope: !1218, file: !160, line: 133, type: !1189)
!1223 = !DILocalVariable(name: "s", arg: 2, scope: !1218, file: !160, line: 133, type: !5)
!1224 = !DILocation(line: 133, column: 44, scope: !1218)
!1225 = !DILocation(line: 133, column: 66, scope: !1218)
!1226 = !DILocation(line: 135, column: 4, scope: !1218)
!1227 = !DILocation(line: 135, column: 39, scope: !1228)
!1228 = !DILexicalBlockFile(scope: !1218, file: !160, discriminator: 3)
!1229 = !DILocation(line: 135, column: 45, scope: !1228)
!1230 = !DILocation(line: 136, column: 1, scope: !1218)
!1231 = distinct !DISubprogram(name: "set_char_quoting", scope: !160, file: !160, line: 144, type: !1232, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !132, variables: !1234)
!1232 = !DISubroutineType(types: !1233)
!1233 = !{!85, !1189, !45, !85}
!1234 = !{!1235, !1236, !1237, !1238, !1239, !1241, !1242}
!1235 = !DILocalVariable(name: "o", arg: 1, scope: !1231, file: !160, line: 144, type: !1189)
!1236 = !DILocalVariable(name: "c", arg: 2, scope: !1231, file: !160, line: 144, type: !45)
!1237 = !DILocalVariable(name: "i", arg: 3, scope: !1231, file: !160, line: 144, type: !85)
!1238 = !DILocalVariable(name: "uc", scope: !1231, file: !160, line: 146, type: !54)
!1239 = !DILocalVariable(name: "p", scope: !1231, file: !160, line: 147, type: !1240)
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!1241 = !DILocalVariable(name: "shift", scope: !1231, file: !160, line: 149, type: !85)
!1242 = !DILocalVariable(name: "r", scope: !1231, file: !160, line: 150, type: !85)
!1243 = !DILocation(line: 144, column: 43, scope: !1231)
!1244 = !DILocation(line: 144, column: 51, scope: !1231)
!1245 = !DILocation(line: 144, column: 58, scope: !1231)
!1246 = !DILocation(line: 146, column: 17, scope: !1231)
!1247 = !DILocation(line: 148, column: 6, scope: !1231)
!1248 = !DILocation(line: 148, column: 62, scope: !1249)
!1249 = !DILexicalBlockFile(scope: !1231, file: !160, discriminator: 3)
!1250 = !DILocation(line: 148, column: 57, scope: !1249)
!1251 = !DILocation(line: 147, column: 17, scope: !1231)
!1252 = !DILocation(line: 149, column: 18, scope: !1231)
!1253 = !DILocation(line: 149, column: 15, scope: !1231)
!1254 = !DILocation(line: 149, column: 7, scope: !1231)
!1255 = !DILocation(line: 150, column: 12, scope: !1231)
!1256 = !DILocation(line: 150, column: 15, scope: !1231)
!1257 = !DILocation(line: 150, column: 25, scope: !1231)
!1258 = !DILocation(line: 150, column: 7, scope: !1231)
!1259 = !DILocation(line: 151, column: 13, scope: !1231)
!1260 = !DILocation(line: 151, column: 18, scope: !1231)
!1261 = !DILocation(line: 151, column: 23, scope: !1231)
!1262 = !DILocation(line: 151, column: 6, scope: !1231)
!1263 = !DILocation(line: 152, column: 3, scope: !1231)
!1264 = distinct !DISubprogram(name: "set_quoting_flags", scope: !160, file: !160, line: 160, type: !1265, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !132, variables: !1267)
!1265 = !DISubroutineType(types: !1266)
!1266 = !{!85, !1189, !85}
!1267 = !{!1268, !1269, !1270}
!1268 = !DILocalVariable(name: "o", arg: 1, scope: !1264, file: !160, line: 160, type: !1189)
!1269 = !DILocalVariable(name: "i", arg: 2, scope: !1264, file: !160, line: 160, type: !85)
!1270 = !DILocalVariable(name: "r", scope: !1264, file: !160, line: 162, type: !85)
!1271 = !DILocation(line: 160, column: 44, scope: !1264)
!1272 = !DILocation(line: 160, column: 51, scope: !1264)
!1273 = !DILocation(line: 163, column: 8, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !1264, file: !160, line: 163, column: 7)
!1275 = !DILocation(line: 163, column: 7, scope: !1264)
!1276 = !DILocation(line: 165, column: 10, scope: !1264)
!1277 = !{!1216, !717, i64 4}
!1278 = !DILocation(line: 162, column: 7, scope: !1264)
!1279 = !DILocation(line: 166, column: 12, scope: !1264)
!1280 = !DILocation(line: 167, column: 3, scope: !1264)
!1281 = distinct !DISubprogram(name: "set_custom_quoting", scope: !160, file: !160, line: 171, type: !1282, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !132, variables: !1284)
!1282 = !DISubroutineType(types: !1283)
!1283 = !{null, !1189, !55, !55}
!1284 = !{!1285, !1286, !1287}
!1285 = !DILocalVariable(name: "o", arg: 1, scope: !1281, file: !160, line: 171, type: !1189)
!1286 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1281, file: !160, line: 172, type: !55)
!1287 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1281, file: !160, line: 172, type: !55)
!1288 = !DILocation(line: 171, column: 45, scope: !1281)
!1289 = !DILocation(line: 172, column: 33, scope: !1281)
!1290 = !DILocation(line: 172, column: 57, scope: !1281)
!1291 = !DILocation(line: 174, column: 8, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1281, file: !160, line: 174, column: 7)
!1293 = !DILocation(line: 174, column: 7, scope: !1281)
!1294 = !DILocation(line: 176, column: 6, scope: !1281)
!1295 = !DILocation(line: 176, column: 12, scope: !1281)
!1296 = !DILocation(line: 177, column: 8, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !1281, file: !160, line: 177, column: 7)
!1298 = !DILocation(line: 177, column: 23, scope: !1299)
!1299 = !DILexicalBlockFile(scope: !1297, file: !160, discriminator: 1)
!1300 = !DILocation(line: 177, column: 19, scope: !1297)
!1301 = !DILocation(line: 178, column: 5, scope: !1297)
!1302 = !DILocation(line: 179, column: 6, scope: !1281)
!1303 = !DILocation(line: 179, column: 17, scope: !1281)
!1304 = !{!1216, !637, i64 40}
!1305 = !DILocation(line: 180, column: 6, scope: !1281)
!1306 = !DILocation(line: 180, column: 18, scope: !1281)
!1307 = !{!1216, !637, i64 48}
!1308 = !DILocation(line: 181, column: 1, scope: !1281)
!1309 = distinct !DISubprogram(name: "quotearg_buffer", scope: !160, file: !160, line: 776, type: !1310, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !132, variables: !1312)
!1310 = !DISubroutineType(types: !1311)
!1311 = !{!47, !44, !47, !55, !47, !1207}
!1312 = !{!1313, !1314, !1315, !1316, !1317, !1318, !1319, !1320}
!1313 = !DILocalVariable(name: "buffer", arg: 1, scope: !1309, file: !160, line: 776, type: !44)
!1314 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1309, file: !160, line: 776, type: !47)
!1315 = !DILocalVariable(name: "arg", arg: 3, scope: !1309, file: !160, line: 777, type: !55)
!1316 = !DILocalVariable(name: "argsize", arg: 4, scope: !1309, file: !160, line: 777, type: !47)
!1317 = !DILocalVariable(name: "o", arg: 5, scope: !1309, file: !160, line: 778, type: !1207)
!1318 = !DILocalVariable(name: "p", scope: !1309, file: !160, line: 780, type: !1207)
!1319 = !DILocalVariable(name: "e", scope: !1309, file: !160, line: 781, type: !85)
!1320 = !DILocalVariable(name: "r", scope: !1309, file: !160, line: 782, type: !47)
!1321 = !DILocation(line: 776, column: 24, scope: !1309)
!1322 = !DILocation(line: 776, column: 39, scope: !1309)
!1323 = !DILocation(line: 777, column: 30, scope: !1309)
!1324 = !DILocation(line: 777, column: 42, scope: !1309)
!1325 = !DILocation(line: 778, column: 48, scope: !1309)
!1326 = !DILocation(line: 780, column: 37, scope: !1309)
!1327 = !DILocation(line: 780, column: 33, scope: !1309)
!1328 = !DILocation(line: 781, column: 11, scope: !1309)
!1329 = !DILocation(line: 781, column: 7, scope: !1309)
!1330 = !DILocation(line: 783, column: 43, scope: !1309)
!1331 = !DILocation(line: 783, column: 53, scope: !1309)
!1332 = !DILocation(line: 783, column: 60, scope: !1309)
!1333 = !DILocation(line: 784, column: 43, scope: !1309)
!1334 = !DILocation(line: 784, column: 58, scope: !1309)
!1335 = !DILocation(line: 782, column: 14, scope: !1309)
!1336 = !DILocation(line: 782, column: 10, scope: !1309)
!1337 = !DILocation(line: 785, column: 9, scope: !1309)
!1338 = !DILocation(line: 786, column: 3, scope: !1309)
!1339 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !160, file: !160, line: 248, type: !1340, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !132, variables: !1344)
!1340 = !DISubroutineType(types: !1341)
!1341 = !{!47, !44, !47, !55, !47, !5, !85, !1342, !55, !55}
!1342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1343, size: 64)
!1343 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !173)
!1344 = !{!1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1369, !1370, !1371, !1372, !1373, !1376, !1377, !1390, !1393, !1394, !1401}
!1345 = !DILocalVariable(name: "buffer", arg: 1, scope: !1339, file: !160, line: 248, type: !44)
!1346 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1339, file: !160, line: 248, type: !47)
!1347 = !DILocalVariable(name: "arg", arg: 3, scope: !1339, file: !160, line: 249, type: !55)
!1348 = !DILocalVariable(name: "argsize", arg: 4, scope: !1339, file: !160, line: 249, type: !47)
!1349 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1339, file: !160, line: 250, type: !5)
!1350 = !DILocalVariable(name: "flags", arg: 6, scope: !1339, file: !160, line: 250, type: !85)
!1351 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1339, file: !160, line: 251, type: !1342)
!1352 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1339, file: !160, line: 252, type: !55)
!1353 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1339, file: !160, line: 253, type: !55)
!1354 = !DILocalVariable(name: "i", scope: !1339, file: !160, line: 255, type: !47)
!1355 = !DILocalVariable(name: "len", scope: !1339, file: !160, line: 256, type: !47)
!1356 = !DILocalVariable(name: "orig_buffersize", scope: !1339, file: !160, line: 257, type: !47)
!1357 = !DILocalVariable(name: "quote_string", scope: !1339, file: !160, line: 258, type: !55)
!1358 = !DILocalVariable(name: "quote_string_len", scope: !1339, file: !160, line: 259, type: !47)
!1359 = !DILocalVariable(name: "backslash_escapes", scope: !1339, file: !160, line: 260, type: !115)
!1360 = !DILocalVariable(name: "unibyte_locale", scope: !1339, file: !160, line: 261, type: !115)
!1361 = !DILocalVariable(name: "elide_outer_quotes", scope: !1339, file: !160, line: 262, type: !115)
!1362 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1339, file: !160, line: 263, type: !115)
!1363 = !DILocalVariable(name: "encountered_single_quote", scope: !1339, file: !160, line: 264, type: !115)
!1364 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1339, file: !160, line: 265, type: !115)
!1365 = !DILocalVariable(name: "c", scope: !1366, file: !160, line: 394, type: !54)
!1366 = distinct !DILexicalBlock(scope: !1367, file: !160, line: 393, column: 5)
!1367 = distinct !DILexicalBlock(scope: !1368, file: !160, line: 392, column: 3)
!1368 = distinct !DILexicalBlock(scope: !1339, file: !160, line: 392, column: 3)
!1369 = !DILocalVariable(name: "esc", scope: !1366, file: !160, line: 395, type: !54)
!1370 = !DILocalVariable(name: "is_right_quote", scope: !1366, file: !160, line: 396, type: !115)
!1371 = !DILocalVariable(name: "escaping", scope: !1366, file: !160, line: 397, type: !115)
!1372 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1366, file: !160, line: 398, type: !115)
!1373 = !DILocalVariable(name: "m", scope: !1374, file: !160, line: 602, type: !47)
!1374 = distinct !DILexicalBlock(scope: !1375, file: !160, line: 600, column: 11)
!1375 = distinct !DILexicalBlock(scope: !1366, file: !160, line: 418, column: 9)
!1376 = !DILocalVariable(name: "printable", scope: !1374, file: !160, line: 604, type: !115)
!1377 = !DILocalVariable(name: "mbstate", scope: !1378, file: !160, line: 613, type: !1380)
!1378 = distinct !DILexicalBlock(scope: !1379, file: !160, line: 612, column: 15)
!1379 = distinct !DILexicalBlock(scope: !1374, file: !160, line: 606, column: 17)
!1380 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !217, line: 107, baseType: !1381)
!1381 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !217, line: 95, baseType: !1382)
!1382 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !217, line: 83, size: 64, elements: !1383)
!1383 = !{!1384, !1385}
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1382, file: !217, line: 85, baseType: !85, size: 32)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1382, file: !217, line: 94, baseType: !1386, size: 32, offset: 32)
!1386 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1382, file: !217, line: 86, size: 32, elements: !1387)
!1387 = !{!1388, !1389}
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1386, file: !217, line: 89, baseType: !173, size: 32)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1386, file: !217, line: 93, baseType: !227, size: 32)
!1390 = !DILocalVariable(name: "w", scope: !1391, file: !160, line: 623, type: !1392)
!1391 = distinct !DILexicalBlock(scope: !1378, file: !160, line: 622, column: 19)
!1392 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !48, line: 90, baseType: !85)
!1393 = !DILocalVariable(name: "bytes", scope: !1391, file: !160, line: 624, type: !47)
!1394 = !DILocalVariable(name: "j", scope: !1395, file: !160, line: 649, type: !47)
!1395 = distinct !DILexicalBlock(scope: !1396, file: !160, line: 648, column: 27)
!1396 = distinct !DILexicalBlock(scope: !1397, file: !160, line: 646, column: 29)
!1397 = distinct !DILexicalBlock(scope: !1398, file: !160, line: 641, column: 23)
!1398 = distinct !DILexicalBlock(scope: !1399, file: !160, line: 633, column: 30)
!1399 = distinct !DILexicalBlock(scope: !1400, file: !160, line: 628, column: 30)
!1400 = distinct !DILexicalBlock(scope: !1391, file: !160, line: 626, column: 25)
!1401 = !DILocalVariable(name: "ilim", scope: !1402, file: !160, line: 676, type: !47)
!1402 = distinct !DILexicalBlock(scope: !1403, file: !160, line: 673, column: 15)
!1403 = distinct !DILexicalBlock(scope: !1374, file: !160, line: 672, column: 17)
!1404 = !DILocation(line: 248, column: 33, scope: !1339)
!1405 = !DILocation(line: 248, column: 48, scope: !1339)
!1406 = !DILocation(line: 249, column: 39, scope: !1339)
!1407 = !DILocation(line: 249, column: 51, scope: !1339)
!1408 = !DILocation(line: 250, column: 46, scope: !1339)
!1409 = !DILocation(line: 250, column: 65, scope: !1339)
!1410 = !DILocation(line: 251, column: 47, scope: !1339)
!1411 = !DILocation(line: 252, column: 39, scope: !1339)
!1412 = !DILocation(line: 253, column: 39, scope: !1339)
!1413 = !DILocation(line: 256, column: 10, scope: !1339)
!1414 = !DILocation(line: 257, column: 10, scope: !1339)
!1415 = !DILocation(line: 258, column: 15, scope: !1339)
!1416 = !DILocation(line: 259, column: 10, scope: !1339)
!1417 = !DILocation(line: 260, column: 8, scope: !1339)
!1418 = !DILocation(line: 261, column: 25, scope: !1339)
!1419 = !DILocation(line: 261, column: 36, scope: !1339)
!1420 = !DILocation(line: 262, column: 8, scope: !1339)
!1421 = !DILocation(line: 263, column: 8, scope: !1339)
!1422 = !DILocation(line: 264, column: 8, scope: !1339)
!1423 = !DILocation(line: 265, column: 8, scope: !1339)
!1424 = !DILocation(line: 265, column: 3, scope: !1339)
!1425 = !DILocation(line: 308, column: 3, scope: !1339)
!1426 = !DILocation(line: 315, column: 11, scope: !1427)
!1427 = distinct !DILexicalBlock(scope: !1339, file: !160, line: 309, column: 5)
!1428 = !DILocation(line: 315, column: 12, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1427, file: !160, line: 315, column: 11)
!1430 = !DILocation(line: 316, column: 9, scope: !1431)
!1431 = !DILexicalBlockFile(scope: !1432, file: !160, discriminator: 1)
!1432 = distinct !DILexicalBlock(scope: !1433, file: !160, line: 316, column: 9)
!1433 = distinct !DILexicalBlock(scope: !1429, file: !160, line: 316, column: 9)
!1434 = !DILocation(line: 316, column: 9, scope: !1435)
!1435 = !DILexicalBlockFile(scope: !1433, file: !160, discriminator: 1)
!1436 = !DILocation(line: 316, column: 9, scope: !1437)
!1437 = !DILexicalBlockFile(scope: !1432, file: !160, discriminator: 2)
!1438 = !DILocation(line: 354, column: 26, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !1440, file: !160, line: 332, column: 11)
!1440 = distinct !DILexicalBlock(scope: !1441, file: !160, line: 331, column: 13)
!1441 = distinct !DILexicalBlock(scope: !1427, file: !160, line: 330, column: 7)
!1442 = !DILocation(line: 355, column: 27, scope: !1439)
!1443 = !DILocation(line: 356, column: 11, scope: !1439)
!1444 = !DILocation(line: 357, column: 14, scope: !1445)
!1445 = distinct !DILexicalBlock(scope: !1441, file: !160, line: 357, column: 13)
!1446 = !DILocation(line: 357, column: 13, scope: !1441)
!1447 = !DILocation(line: 358, column: 43, scope: !1448)
!1448 = !DILexicalBlockFile(scope: !1449, file: !160, discriminator: 1)
!1449 = distinct !DILexicalBlock(scope: !1450, file: !160, line: 358, column: 11)
!1450 = distinct !DILexicalBlock(scope: !1445, file: !160, line: 358, column: 11)
!1451 = !DILocation(line: 358, column: 11, scope: !1452)
!1452 = !DILexicalBlockFile(scope: !1450, file: !160, discriminator: 1)
!1453 = !DILocation(line: 359, column: 13, scope: !1454)
!1454 = !DILexicalBlockFile(scope: !1455, file: !160, discriminator: 1)
!1455 = distinct !DILexicalBlock(scope: !1456, file: !160, line: 359, column: 13)
!1456 = distinct !DILexicalBlock(scope: !1449, file: !160, line: 359, column: 13)
!1457 = !DILocation(line: 359, column: 13, scope: !1458)
!1458 = !DILexicalBlockFile(scope: !1456, file: !160, discriminator: 1)
!1459 = !DILocation(line: 359, column: 13, scope: !1460)
!1460 = !DILexicalBlockFile(scope: !1455, file: !160, discriminator: 2)
!1461 = !DILocation(line: 359, column: 13, scope: !1462)
!1462 = !DILexicalBlockFile(scope: !1456, file: !160, discriminator: 3)
!1463 = !DILocation(line: 358, column: 70, scope: !1464)
!1464 = !DILexicalBlockFile(scope: !1449, file: !160, discriminator: 2)
!1465 = distinct !{!1465, !1466, !1467}
!1466 = !DILocation(line: 358, column: 11, scope: !1450)
!1467 = !DILocation(line: 359, column: 13, scope: !1450)
!1468 = !DILocation(line: 362, column: 28, scope: !1441)
!1469 = !DILocation(line: 364, column: 7, scope: !1427)
!1470 = !DILocation(line: 367, column: 7, scope: !1427)
!1471 = !DILocation(line: 370, column: 7, scope: !1427)
!1472 = !DILocation(line: 373, column: 12, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !1427, file: !160, line: 373, column: 11)
!1474 = !DILocation(line: 373, column: 11, scope: !1427)
!1475 = !DILocation(line: 378, column: 12, scope: !1476)
!1476 = distinct !DILexicalBlock(scope: !1427, file: !160, line: 378, column: 11)
!1477 = !DILocation(line: 378, column: 11, scope: !1427)
!1478 = !DILocation(line: 379, column: 9, scope: !1479)
!1479 = !DILexicalBlockFile(scope: !1480, file: !160, discriminator: 1)
!1480 = distinct !DILexicalBlock(scope: !1481, file: !160, line: 379, column: 9)
!1481 = distinct !DILexicalBlock(scope: !1476, file: !160, line: 379, column: 9)
!1482 = !DILocation(line: 379, column: 9, scope: !1483)
!1483 = !DILexicalBlockFile(scope: !1481, file: !160, discriminator: 1)
!1484 = !DILocation(line: 379, column: 9, scope: !1485)
!1485 = !DILexicalBlockFile(scope: !1480, file: !160, discriminator: 2)
!1486 = !DILocation(line: 386, column: 7, scope: !1427)
!1487 = !DILocation(line: 389, column: 7, scope: !1427)
!1488 = !DILocation(line: 255, column: 10, scope: !1339)
!1489 = !DILocation(line: 392, column: 8, scope: !1368)
!1490 = !DILocation(line: 392, column: 27, scope: !1491)
!1491 = !DILexicalBlockFile(scope: !1367, file: !160, discriminator: 1)
!1492 = !DILocation(line: 392, column: 19, scope: !1491)
!1493 = !DILocation(line: 392, column: 60, scope: !1494)
!1494 = !DILexicalBlockFile(scope: !1367, file: !160, discriminator: 3)
!1495 = !DILocation(line: 392, column: 3, scope: !1496)
!1496 = !DILexicalBlockFile(scope: !1368, file: !160, discriminator: 4)
!1497 = !DILocation(line: 392, column: 41, scope: !1498)
!1498 = !DILexicalBlockFile(scope: !1367, file: !160, discriminator: 2)
!1499 = !DILocation(line: 392, column: 48, scope: !1498)
!1500 = !DILocation(line: 396, column: 12, scope: !1366)
!1501 = !DILocation(line: 397, column: 12, scope: !1366)
!1502 = !DILocation(line: 398, column: 12, scope: !1366)
!1503 = !DILocation(line: 401, column: 11, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !1366, file: !160, line: 400, column: 11)
!1505 = !DILocation(line: 403, column: 17, scope: !1506)
!1506 = !DILexicalBlockFile(scope: !1504, file: !160, discriminator: 1)
!1507 = !DILocation(line: 404, column: 39, scope: !1504)
!1508 = !DILocation(line: 408, column: 32, scope: !1504)
!1509 = !DILocation(line: 404, column: 19, scope: !1510)
!1510 = !DILexicalBlockFile(scope: !1504, file: !160, discriminator: 2)
!1511 = !DILocation(line: 404, column: 15, scope: !1512)
!1512 = !DILexicalBlockFile(scope: !1504, file: !160, discriminator: 4)
!1513 = !DILocation(line: 409, column: 11, scope: !1504)
!1514 = !DILocation(line: 409, column: 26, scope: !1506)
!1515 = !DILocation(line: 409, column: 14, scope: !1506)
!1516 = !DILocation(line: 400, column: 11, scope: !1517)
!1517 = !DILexicalBlockFile(scope: !1366, file: !160, discriminator: 1)
!1518 = !DILocation(line: 416, column: 11, scope: !1366)
!1519 = !DILocation(line: 394, column: 21, scope: !1366)
!1520 = !DILocation(line: 417, column: 7, scope: !1366)
!1521 = !DILocation(line: 420, column: 15, scope: !1375)
!1522 = !DILocation(line: 422, column: 15, scope: !1523)
!1523 = !DILexicalBlockFile(scope: !1524, file: !160, discriminator: 1)
!1524 = distinct !DILexicalBlock(scope: !1525, file: !160, line: 422, column: 15)
!1525 = distinct !DILexicalBlock(scope: !1526, file: !160, line: 421, column: 13)
!1526 = distinct !DILexicalBlock(scope: !1375, file: !160, line: 420, column: 15)
!1527 = !DILocation(line: 422, column: 15, scope: !1528)
!1528 = !DILexicalBlockFile(scope: !1529, file: !160, discriminator: 4)
!1529 = distinct !DILexicalBlock(scope: !1524, file: !160, line: 422, column: 15)
!1530 = !DILocation(line: 422, column: 15, scope: !1531)
!1531 = !DILexicalBlockFile(scope: !1529, file: !160, discriminator: 3)
!1532 = !DILocation(line: 422, column: 15, scope: !1533)
!1533 = !DILexicalBlockFile(scope: !1534, file: !160, discriminator: 6)
!1534 = distinct !DILexicalBlock(scope: !1535, file: !160, line: 422, column: 15)
!1535 = distinct !DILexicalBlock(scope: !1536, file: !160, line: 422, column: 15)
!1536 = distinct !DILexicalBlock(scope: !1529, file: !160, line: 422, column: 15)
!1537 = !DILocation(line: 422, column: 15, scope: !1538)
!1538 = !DILexicalBlockFile(scope: !1535, file: !160, discriminator: 6)
!1539 = !DILocation(line: 422, column: 15, scope: !1540)
!1540 = !DILexicalBlockFile(scope: !1534, file: !160, discriminator: 7)
!1541 = !DILocation(line: 422, column: 15, scope: !1542)
!1542 = !DILexicalBlockFile(scope: !1535, file: !160, discriminator: 8)
!1543 = !DILocation(line: 422, column: 15, scope: !1544)
!1544 = !DILexicalBlockFile(scope: !1545, file: !160, discriminator: 11)
!1545 = distinct !DILexicalBlock(scope: !1546, file: !160, line: 422, column: 15)
!1546 = distinct !DILexicalBlock(scope: !1536, file: !160, line: 422, column: 15)
!1547 = !DILocation(line: 422, column: 15, scope: !1548)
!1548 = !DILexicalBlockFile(scope: !1546, file: !160, discriminator: 11)
!1549 = !DILocation(line: 422, column: 15, scope: !1550)
!1550 = !DILexicalBlockFile(scope: !1545, file: !160, discriminator: 12)
!1551 = !DILocation(line: 422, column: 15, scope: !1552)
!1552 = !DILexicalBlockFile(scope: !1546, file: !160, discriminator: 13)
!1553 = !DILocation(line: 422, column: 15, scope: !1554)
!1554 = !DILexicalBlockFile(scope: !1555, file: !160, discriminator: 16)
!1555 = distinct !DILexicalBlock(scope: !1556, file: !160, line: 422, column: 15)
!1556 = distinct !DILexicalBlock(scope: !1536, file: !160, line: 422, column: 15)
!1557 = !DILocation(line: 422, column: 15, scope: !1558)
!1558 = !DILexicalBlockFile(scope: !1556, file: !160, discriminator: 16)
!1559 = !DILocation(line: 422, column: 15, scope: !1560)
!1560 = !DILexicalBlockFile(scope: !1555, file: !160, discriminator: 17)
!1561 = !DILocation(line: 422, column: 15, scope: !1562)
!1562 = !DILexicalBlockFile(scope: !1556, file: !160, discriminator: 18)
!1563 = !DILocation(line: 422, column: 15, scope: !1564)
!1564 = !DILexicalBlockFile(scope: !1536, file: !160, discriminator: 20)
!1565 = !DILocation(line: 422, column: 15, scope: !1566)
!1566 = !DILexicalBlockFile(scope: !1567, file: !160, discriminator: 22)
!1567 = distinct !DILexicalBlock(scope: !1568, file: !160, line: 422, column: 15)
!1568 = distinct !DILexicalBlock(scope: !1524, file: !160, line: 422, column: 15)
!1569 = !DILocation(line: 422, column: 15, scope: !1570)
!1570 = !DILexicalBlockFile(scope: !1568, file: !160, discriminator: 22)
!1571 = !DILocation(line: 422, column: 15, scope: !1572)
!1572 = !DILexicalBlockFile(scope: !1567, file: !160, discriminator: 23)
!1573 = !DILocation(line: 422, column: 15, scope: !1574)
!1574 = !DILexicalBlockFile(scope: !1568, file: !160, discriminator: 24)
!1575 = !DILocation(line: 430, column: 19, scope: !1576)
!1576 = distinct !DILexicalBlock(scope: !1525, file: !160, line: 429, column: 19)
!1577 = !DILocation(line: 430, column: 24, scope: !1578)
!1578 = !DILexicalBlockFile(scope: !1576, file: !160, discriminator: 1)
!1579 = !DILocation(line: 430, column: 28, scope: !1578)
!1580 = !DILocation(line: 430, column: 38, scope: !1578)
!1581 = !DILocation(line: 430, column: 48, scope: !1582)
!1582 = !DILexicalBlockFile(scope: !1576, file: !160, discriminator: 2)
!1583 = !DILocation(line: 430, column: 59, scope: !1582)
!1584 = !DILocation(line: 432, column: 19, scope: !1585)
!1585 = !DILexicalBlockFile(scope: !1586, file: !160, discriminator: 1)
!1586 = distinct !DILexicalBlock(scope: !1587, file: !160, line: 432, column: 19)
!1587 = distinct !DILexicalBlock(scope: !1588, file: !160, line: 432, column: 19)
!1588 = distinct !DILexicalBlock(scope: !1576, file: !160, line: 431, column: 17)
!1589 = !DILocation(line: 432, column: 19, scope: !1590)
!1590 = !DILexicalBlockFile(scope: !1587, file: !160, discriminator: 1)
!1591 = !DILocation(line: 432, column: 19, scope: !1592)
!1592 = !DILexicalBlockFile(scope: !1586, file: !160, discriminator: 2)
!1593 = !DILocation(line: 432, column: 19, scope: !1594)
!1594 = !DILexicalBlockFile(scope: !1587, file: !160, discriminator: 3)
!1595 = !DILocation(line: 433, column: 19, scope: !1596)
!1596 = !DILexicalBlockFile(scope: !1597, file: !160, discriminator: 1)
!1597 = distinct !DILexicalBlock(scope: !1598, file: !160, line: 433, column: 19)
!1598 = distinct !DILexicalBlock(scope: !1588, file: !160, line: 433, column: 19)
!1599 = !DILocation(line: 433, column: 19, scope: !1600)
!1600 = !DILexicalBlockFile(scope: !1598, file: !160, discriminator: 1)
!1601 = !DILocation(line: 433, column: 19, scope: !1602)
!1602 = !DILexicalBlockFile(scope: !1597, file: !160, discriminator: 2)
!1603 = !DILocation(line: 433, column: 19, scope: !1604)
!1604 = !DILexicalBlockFile(scope: !1598, file: !160, discriminator: 3)
!1605 = !DILocation(line: 434, column: 17, scope: !1588)
!1606 = !DILocation(line: 441, column: 20, scope: !1526)
!1607 = !DILocation(line: 446, column: 11, scope: !1375)
!1608 = !DILocation(line: 449, column: 19, scope: !1609)
!1609 = distinct !DILexicalBlock(scope: !1375, file: !160, line: 447, column: 13)
!1610 = !DILocation(line: 455, column: 19, scope: !1611)
!1611 = distinct !DILexicalBlock(scope: !1609, file: !160, line: 454, column: 19)
!1612 = !DILocation(line: 455, column: 24, scope: !1613)
!1613 = !DILexicalBlockFile(scope: !1611, file: !160, discriminator: 1)
!1614 = !DILocation(line: 455, column: 28, scope: !1613)
!1615 = !DILocation(line: 455, column: 38, scope: !1613)
!1616 = !DILocation(line: 455, column: 47, scope: !1617)
!1617 = !DILexicalBlockFile(scope: !1611, file: !160, discriminator: 2)
!1618 = !DILocation(line: 455, column: 41, scope: !1617)
!1619 = !DILocation(line: 455, column: 52, scope: !1617)
!1620 = !DILocation(line: 454, column: 19, scope: !1621)
!1621 = !DILexicalBlockFile(scope: !1609, file: !160, discriminator: 1)
!1622 = !DILocation(line: 456, column: 25, scope: !1611)
!1623 = !DILocation(line: 456, column: 17, scope: !1611)
!1624 = !DILocation(line: 463, column: 25, scope: !1625)
!1625 = distinct !DILexicalBlock(scope: !1611, file: !160, line: 457, column: 19)
!1626 = !DILocation(line: 467, column: 21, scope: !1627)
!1627 = !DILexicalBlockFile(scope: !1628, file: !160, discriminator: 1)
!1628 = distinct !DILexicalBlock(scope: !1629, file: !160, line: 467, column: 21)
!1629 = distinct !DILexicalBlock(scope: !1625, file: !160, line: 467, column: 21)
!1630 = !DILocation(line: 467, column: 21, scope: !1631)
!1631 = !DILexicalBlockFile(scope: !1629, file: !160, discriminator: 1)
!1632 = !DILocation(line: 467, column: 21, scope: !1633)
!1633 = !DILexicalBlockFile(scope: !1628, file: !160, discriminator: 2)
!1634 = !DILocation(line: 467, column: 21, scope: !1635)
!1635 = !DILexicalBlockFile(scope: !1629, file: !160, discriminator: 3)
!1636 = !DILocation(line: 468, column: 21, scope: !1637)
!1637 = !DILexicalBlockFile(scope: !1638, file: !160, discriminator: 1)
!1638 = distinct !DILexicalBlock(scope: !1639, file: !160, line: 468, column: 21)
!1639 = distinct !DILexicalBlock(scope: !1625, file: !160, line: 468, column: 21)
!1640 = !DILocation(line: 468, column: 21, scope: !1641)
!1641 = !DILexicalBlockFile(scope: !1639, file: !160, discriminator: 1)
!1642 = !DILocation(line: 468, column: 21, scope: !1643)
!1643 = !DILexicalBlockFile(scope: !1638, file: !160, discriminator: 2)
!1644 = !DILocation(line: 468, column: 21, scope: !1645)
!1645 = !DILexicalBlockFile(scope: !1639, file: !160, discriminator: 3)
!1646 = !DILocation(line: 469, column: 21, scope: !1647)
!1647 = !DILexicalBlockFile(scope: !1648, file: !160, discriminator: 1)
!1648 = distinct !DILexicalBlock(scope: !1649, file: !160, line: 469, column: 21)
!1649 = distinct !DILexicalBlock(scope: !1625, file: !160, line: 469, column: 21)
!1650 = !DILocation(line: 469, column: 21, scope: !1651)
!1651 = !DILexicalBlockFile(scope: !1649, file: !160, discriminator: 1)
!1652 = !DILocation(line: 469, column: 21, scope: !1653)
!1653 = !DILexicalBlockFile(scope: !1648, file: !160, discriminator: 2)
!1654 = !DILocation(line: 469, column: 21, scope: !1655)
!1655 = !DILexicalBlockFile(scope: !1649, file: !160, discriminator: 3)
!1656 = !DILocation(line: 470, column: 21, scope: !1657)
!1657 = !DILexicalBlockFile(scope: !1658, file: !160, discriminator: 1)
!1658 = distinct !DILexicalBlock(scope: !1659, file: !160, line: 470, column: 21)
!1659 = distinct !DILexicalBlock(scope: !1625, file: !160, line: 470, column: 21)
!1660 = !DILocation(line: 470, column: 21, scope: !1661)
!1661 = !DILexicalBlockFile(scope: !1659, file: !160, discriminator: 1)
!1662 = !DILocation(line: 470, column: 21, scope: !1663)
!1663 = !DILexicalBlockFile(scope: !1658, file: !160, discriminator: 2)
!1664 = !DILocation(line: 470, column: 21, scope: !1665)
!1665 = !DILexicalBlockFile(scope: !1659, file: !160, discriminator: 3)
!1666 = !DILocation(line: 471, column: 21, scope: !1625)
!1667 = !DILocation(line: 395, column: 21, scope: !1366)
!1668 = !DILocation(line: 484, column: 31, scope: !1375)
!1669 = !DILocation(line: 485, column: 31, scope: !1375)
!1670 = !DILocation(line: 487, column: 31, scope: !1375)
!1671 = !DILocation(line: 488, column: 31, scope: !1375)
!1672 = !DILocation(line: 489, column: 31, scope: !1375)
!1673 = !DILocation(line: 492, column: 15, scope: !1375)
!1674 = !DILocation(line: 494, column: 19, scope: !1675)
!1675 = distinct !DILexicalBlock(scope: !1676, file: !160, line: 493, column: 13)
!1676 = distinct !DILexicalBlock(scope: !1375, file: !160, line: 492, column: 15)
!1677 = !DILocation(line: 501, column: 33, scope: !1678)
!1678 = distinct !DILexicalBlock(scope: !1375, file: !160, line: 501, column: 15)
!1679 = !DILocation(line: 506, column: 15, scope: !1680)
!1680 = distinct !DILexicalBlock(scope: !1375, file: !160, line: 505, column: 15)
!1681 = !DILocation(line: 510, column: 15, scope: !1375)
!1682 = !DILocation(line: 518, column: 26, scope: !1683)
!1683 = distinct !DILexicalBlock(scope: !1375, file: !160, line: 518, column: 15)
!1684 = !DILocation(line: 518, column: 15, scope: !1375)
!1685 = !DILocation(line: 518, column: 40, scope: !1686)
!1686 = !DILexicalBlockFile(scope: !1683, file: !160, discriminator: 1)
!1687 = !DILocation(line: 518, column: 47, scope: !1686)
!1688 = !DILocation(line: 522, column: 17, scope: !1689)
!1689 = distinct !DILexicalBlock(scope: !1375, file: !160, line: 522, column: 15)
!1690 = !DILocation(line: 518, column: 18, scope: !1686)
!1691 = !DILocation(line: 518, column: 65, scope: !1692)
!1692 = !DILexicalBlockFile(scope: !1683, file: !160, discriminator: 2)
!1693 = !DILocation(line: 518, column: 15, scope: !1694)
!1694 = !DILexicalBlockFile(scope: !1375, file: !160, discriminator: 2)
!1695 = !DILocation(line: 522, column: 15, scope: !1375)
!1696 = !DILocation(line: 526, column: 11, scope: !1375)
!1697 = !DILocation(line: 541, column: 15, scope: !1698)
!1698 = distinct !DILexicalBlock(scope: !1375, file: !160, line: 540, column: 15)
!1699 = !DILocation(line: 548, column: 15, scope: !1375)
!1700 = !DILocation(line: 550, column: 19, scope: !1701)
!1701 = distinct !DILexicalBlock(scope: !1702, file: !160, line: 549, column: 13)
!1702 = distinct !DILexicalBlock(scope: !1375, file: !160, line: 548, column: 15)
!1703 = !DILocation(line: 553, column: 19, scope: !1704)
!1704 = distinct !DILexicalBlock(scope: !1701, file: !160, line: 553, column: 19)
!1705 = !DILocation(line: 553, column: 35, scope: !1706)
!1706 = !DILexicalBlockFile(scope: !1704, file: !160, discriminator: 1)
!1707 = !DILocation(line: 553, column: 30, scope: !1704)
!1708 = !DILocation(line: 562, column: 15, scope: !1709)
!1709 = !DILexicalBlockFile(scope: !1710, file: !160, discriminator: 1)
!1710 = distinct !DILexicalBlock(scope: !1711, file: !160, line: 562, column: 15)
!1711 = distinct !DILexicalBlock(scope: !1701, file: !160, line: 562, column: 15)
!1712 = !DILocation(line: 562, column: 15, scope: !1713)
!1713 = !DILexicalBlockFile(scope: !1711, file: !160, discriminator: 1)
!1714 = !DILocation(line: 562, column: 15, scope: !1715)
!1715 = !DILexicalBlockFile(scope: !1710, file: !160, discriminator: 2)
!1716 = !DILocation(line: 562, column: 15, scope: !1717)
!1717 = !DILexicalBlockFile(scope: !1711, file: !160, discriminator: 3)
!1718 = !DILocation(line: 563, column: 15, scope: !1719)
!1719 = !DILexicalBlockFile(scope: !1720, file: !160, discriminator: 1)
!1720 = distinct !DILexicalBlock(scope: !1721, file: !160, line: 563, column: 15)
!1721 = distinct !DILexicalBlock(scope: !1701, file: !160, line: 563, column: 15)
!1722 = !DILocation(line: 563, column: 15, scope: !1723)
!1723 = !DILexicalBlockFile(scope: !1721, file: !160, discriminator: 1)
!1724 = !DILocation(line: 563, column: 15, scope: !1725)
!1725 = !DILexicalBlockFile(scope: !1720, file: !160, discriminator: 2)
!1726 = !DILocation(line: 563, column: 15, scope: !1727)
!1727 = !DILexicalBlockFile(scope: !1721, file: !160, discriminator: 3)
!1728 = !DILocation(line: 564, column: 15, scope: !1729)
!1729 = !DILexicalBlockFile(scope: !1730, file: !160, discriminator: 1)
!1730 = distinct !DILexicalBlock(scope: !1731, file: !160, line: 564, column: 15)
!1731 = distinct !DILexicalBlock(scope: !1701, file: !160, line: 564, column: 15)
!1732 = !DILocation(line: 564, column: 15, scope: !1733)
!1733 = !DILexicalBlockFile(scope: !1731, file: !160, discriminator: 1)
!1734 = !DILocation(line: 564, column: 15, scope: !1735)
!1735 = !DILexicalBlockFile(scope: !1730, file: !160, discriminator: 2)
!1736 = !DILocation(line: 564, column: 15, scope: !1737)
!1737 = !DILexicalBlockFile(scope: !1731, file: !160, discriminator: 3)
!1738 = !DILocation(line: 566, column: 13, scope: !1701)
!1739 = !DILocation(line: 606, column: 17, scope: !1374)
!1740 = !DILocation(line: 602, column: 20, scope: !1374)
!1741 = !DILocation(line: 609, column: 29, scope: !1742)
!1742 = distinct !DILexicalBlock(scope: !1379, file: !160, line: 607, column: 15)
!1743 = !{!1744, !1744, i64 0}
!1744 = !{!"short", !638, i64 0}
!1745 = !DILocation(line: 609, column: 27, scope: !1742)
!1746 = !DILocation(line: 604, column: 18, scope: !1374)
!1747 = !DILocation(line: 610, column: 15, scope: !1742)
!1748 = !DILocation(line: 613, column: 17, scope: !1378)
!1749 = !DILocation(line: 614, column: 17, scope: !1378)
!1750 = !DILocation(line: 618, column: 29, scope: !1751)
!1751 = distinct !DILexicalBlock(scope: !1378, file: !160, line: 618, column: 21)
!1752 = !DILocation(line: 618, column: 21, scope: !1378)
!1753 = distinct !{!1753, !1754, !1755}
!1754 = !DILocation(line: 621, column: 17, scope: !1378)
!1755 = !DILocation(line: 667, column: 44, scope: !1378)
!1756 = !DILocation(line: 619, column: 29, scope: !1751)
!1757 = !DILocation(line: 619, column: 19, scope: !1751)
!1758 = !DILocation(line: 623, column: 21, scope: !1391)
!1759 = !DILocation(line: 624, column: 56, scope: !1391)
!1760 = !DILocation(line: 624, column: 50, scope: !1391)
!1761 = !DILocation(line: 625, column: 53, scope: !1391)
!1762 = !DILocation(line: 613, column: 27, scope: !1378)
!1763 = !DILocation(line: 623, column: 29, scope: !1391)
!1764 = !DILocation(line: 624, column: 36, scope: !1391)
!1765 = !DILocation(line: 624, column: 28, scope: !1391)
!1766 = !DILocation(line: 626, column: 25, scope: !1391)
!1767 = !DILocation(line: 636, column: 38, scope: !1768)
!1768 = !DILexicalBlockFile(scope: !1769, file: !160, discriminator: 1)
!1769 = distinct !DILexicalBlock(scope: !1398, file: !160, line: 634, column: 23)
!1770 = !DILocation(line: 636, column: 48, scope: !1768)
!1771 = !DILocation(line: 636, column: 51, scope: !1772)
!1772 = !DILexicalBlockFile(scope: !1769, file: !160, discriminator: 2)
!1773 = !DILocation(line: 636, column: 48, scope: !1772)
!1774 = !DILocation(line: 636, column: 25, scope: !1775)
!1775 = !DILexicalBlockFile(scope: !1769, file: !160, discriminator: 3)
!1776 = !DILocation(line: 637, column: 28, scope: !1769)
!1777 = !DILocation(line: 636, column: 34, scope: !1768)
!1778 = distinct !{!1778, !1779, !1776}
!1779 = !DILocation(line: 636, column: 25, scope: !1769)
!1780 = !DILocation(line: 650, column: 43, scope: !1781)
!1781 = !DILexicalBlockFile(scope: !1782, file: !160, discriminator: 1)
!1782 = distinct !DILexicalBlock(scope: !1783, file: !160, line: 650, column: 29)
!1783 = distinct !DILexicalBlock(scope: !1395, file: !160, line: 650, column: 29)
!1784 = !DILocation(line: 647, column: 29, scope: !1396)
!1785 = !DILocation(line: 649, column: 36, scope: !1395)
!1786 = !DILocation(line: 651, column: 49, scope: !1782)
!1787 = !DILocation(line: 651, column: 39, scope: !1782)
!1788 = !DILocation(line: 651, column: 31, scope: !1782)
!1789 = !DILocation(line: 650, column: 53, scope: !1790)
!1790 = !DILexicalBlockFile(scope: !1782, file: !160, discriminator: 2)
!1791 = !DILocation(line: 650, column: 29, scope: !1792)
!1792 = !DILexicalBlockFile(scope: !1783, file: !160, discriminator: 1)
!1793 = distinct !{!1793, !1794, !1795}
!1794 = !DILocation(line: 650, column: 29, scope: !1783)
!1795 = !DILocation(line: 659, column: 33, scope: !1783)
!1796 = !DILocation(line: 666, column: 19, scope: !1378)
!1797 = !DILocation(line: 662, column: 41, scope: !1798)
!1798 = distinct !DILexicalBlock(scope: !1397, file: !160, line: 662, column: 29)
!1799 = !DILocation(line: 662, column: 31, scope: !1798)
!1800 = !DILocation(line: 662, column: 29, scope: !1397)
!1801 = !DILocation(line: 664, column: 27, scope: !1397)
!1802 = !DILocation(line: 667, column: 26, scope: !1378)
!1803 = !DILocation(line: 667, column: 24, scope: !1378)
!1804 = !DILocation(line: 666, column: 19, scope: !1805)
!1805 = !DILexicalBlockFile(scope: !1391, file: !160, discriminator: 3)
!1806 = !DILocation(line: 668, column: 15, scope: !1379)
!1807 = !DILocation(line: 670, column: 40, scope: !1374)
!1808 = !DILocation(line: 672, column: 19, scope: !1403)
!1809 = !DILocation(line: 672, column: 45, scope: !1810)
!1810 = !DILexicalBlockFile(scope: !1403, file: !160, discriminator: 1)
!1811 = !DILocation(line: 672, column: 23, scope: !1403)
!1812 = !DILocation(line: 676, column: 33, scope: !1402)
!1813 = !DILocation(line: 676, column: 24, scope: !1402)
!1814 = !DILocation(line: 678, column: 17, scope: !1402)
!1815 = !DILocation(line: 680, column: 43, scope: !1816)
!1816 = distinct !DILexicalBlock(scope: !1817, file: !160, line: 680, column: 25)
!1817 = distinct !DILexicalBlock(scope: !1818, file: !160, line: 679, column: 19)
!1818 = distinct !DILexicalBlock(scope: !1819, file: !160, line: 678, column: 17)
!1819 = distinct !DILexicalBlock(scope: !1402, file: !160, line: 678, column: 17)
!1820 = !DILocation(line: 682, column: 25, scope: !1821)
!1821 = !DILexicalBlockFile(scope: !1822, file: !160, discriminator: 1)
!1822 = distinct !DILexicalBlock(scope: !1823, file: !160, line: 682, column: 25)
!1823 = distinct !DILexicalBlock(scope: !1816, file: !160, line: 681, column: 23)
!1824 = !DILocation(line: 682, column: 25, scope: !1825)
!1825 = !DILexicalBlockFile(scope: !1826, file: !160, discriminator: 4)
!1826 = distinct !DILexicalBlock(scope: !1822, file: !160, line: 682, column: 25)
!1827 = !DILocation(line: 682, column: 25, scope: !1828)
!1828 = !DILexicalBlockFile(scope: !1826, file: !160, discriminator: 3)
!1829 = !DILocation(line: 682, column: 25, scope: !1830)
!1830 = !DILexicalBlockFile(scope: !1831, file: !160, discriminator: 6)
!1831 = distinct !DILexicalBlock(scope: !1832, file: !160, line: 682, column: 25)
!1832 = distinct !DILexicalBlock(scope: !1833, file: !160, line: 682, column: 25)
!1833 = distinct !DILexicalBlock(scope: !1826, file: !160, line: 682, column: 25)
!1834 = !DILocation(line: 682, column: 25, scope: !1835)
!1835 = !DILexicalBlockFile(scope: !1832, file: !160, discriminator: 6)
!1836 = !DILocation(line: 682, column: 25, scope: !1837)
!1837 = !DILexicalBlockFile(scope: !1831, file: !160, discriminator: 7)
!1838 = !DILocation(line: 682, column: 25, scope: !1839)
!1839 = !DILexicalBlockFile(scope: !1832, file: !160, discriminator: 8)
!1840 = !DILocation(line: 682, column: 25, scope: !1841)
!1841 = !DILexicalBlockFile(scope: !1842, file: !160, discriminator: 11)
!1842 = distinct !DILexicalBlock(scope: !1843, file: !160, line: 682, column: 25)
!1843 = distinct !DILexicalBlock(scope: !1833, file: !160, line: 682, column: 25)
!1844 = !DILocation(line: 682, column: 25, scope: !1845)
!1845 = !DILexicalBlockFile(scope: !1843, file: !160, discriminator: 11)
!1846 = !DILocation(line: 682, column: 25, scope: !1847)
!1847 = !DILexicalBlockFile(scope: !1842, file: !160, discriminator: 12)
!1848 = !DILocation(line: 682, column: 25, scope: !1849)
!1849 = !DILexicalBlockFile(scope: !1843, file: !160, discriminator: 13)
!1850 = !DILocation(line: 682, column: 25, scope: !1851)
!1851 = !DILexicalBlockFile(scope: !1852, file: !160, discriminator: 16)
!1852 = distinct !DILexicalBlock(scope: !1853, file: !160, line: 682, column: 25)
!1853 = distinct !DILexicalBlock(scope: !1833, file: !160, line: 682, column: 25)
!1854 = !DILocation(line: 682, column: 25, scope: !1855)
!1855 = !DILexicalBlockFile(scope: !1853, file: !160, discriminator: 16)
!1856 = !DILocation(line: 682, column: 25, scope: !1857)
!1857 = !DILexicalBlockFile(scope: !1852, file: !160, discriminator: 17)
!1858 = !DILocation(line: 682, column: 25, scope: !1859)
!1859 = !DILexicalBlockFile(scope: !1853, file: !160, discriminator: 18)
!1860 = !DILocation(line: 682, column: 25, scope: !1861)
!1861 = !DILexicalBlockFile(scope: !1833, file: !160, discriminator: 20)
!1862 = !DILocation(line: 682, column: 25, scope: !1863)
!1863 = !DILexicalBlockFile(scope: !1864, file: !160, discriminator: 22)
!1864 = distinct !DILexicalBlock(scope: !1865, file: !160, line: 682, column: 25)
!1865 = distinct !DILexicalBlock(scope: !1822, file: !160, line: 682, column: 25)
!1866 = !DILocation(line: 682, column: 25, scope: !1867)
!1867 = !DILexicalBlockFile(scope: !1865, file: !160, discriminator: 22)
!1868 = !DILocation(line: 682, column: 25, scope: !1869)
!1869 = !DILexicalBlockFile(scope: !1864, file: !160, discriminator: 23)
!1870 = !DILocation(line: 682, column: 25, scope: !1871)
!1871 = !DILexicalBlockFile(scope: !1865, file: !160, discriminator: 24)
!1872 = !DILocation(line: 683, column: 25, scope: !1873)
!1873 = !DILexicalBlockFile(scope: !1874, file: !160, discriminator: 1)
!1874 = distinct !DILexicalBlock(scope: !1875, file: !160, line: 683, column: 25)
!1875 = distinct !DILexicalBlock(scope: !1823, file: !160, line: 683, column: 25)
!1876 = !DILocation(line: 683, column: 25, scope: !1877)
!1877 = !DILexicalBlockFile(scope: !1875, file: !160, discriminator: 1)
!1878 = !DILocation(line: 683, column: 25, scope: !1879)
!1879 = !DILexicalBlockFile(scope: !1874, file: !160, discriminator: 2)
!1880 = !DILocation(line: 683, column: 25, scope: !1881)
!1881 = !DILexicalBlockFile(scope: !1875, file: !160, discriminator: 3)
!1882 = !DILocation(line: 684, column: 25, scope: !1883)
!1883 = !DILexicalBlockFile(scope: !1884, file: !160, discriminator: 1)
!1884 = distinct !DILexicalBlock(scope: !1885, file: !160, line: 684, column: 25)
!1885 = distinct !DILexicalBlock(scope: !1823, file: !160, line: 684, column: 25)
!1886 = !DILocation(line: 684, column: 25, scope: !1887)
!1887 = !DILexicalBlockFile(scope: !1885, file: !160, discriminator: 1)
!1888 = !DILocation(line: 684, column: 25, scope: !1889)
!1889 = !DILexicalBlockFile(scope: !1884, file: !160, discriminator: 2)
!1890 = !DILocation(line: 684, column: 25, scope: !1891)
!1891 = !DILexicalBlockFile(scope: !1885, file: !160, discriminator: 3)
!1892 = !DILocation(line: 685, column: 38, scope: !1823)
!1893 = !DILocation(line: 685, column: 33, scope: !1823)
!1894 = !DILocation(line: 686, column: 23, scope: !1823)
!1895 = !DILocation(line: 687, column: 30, scope: !1896)
!1896 = distinct !DILexicalBlock(scope: !1816, file: !160, line: 687, column: 30)
!1897 = !DILocation(line: 687, column: 30, scope: !1816)
!1898 = !DILocation(line: 689, column: 25, scope: !1899)
!1899 = !DILexicalBlockFile(scope: !1900, file: !160, discriminator: 1)
!1900 = distinct !DILexicalBlock(scope: !1901, file: !160, line: 689, column: 25)
!1901 = distinct !DILexicalBlock(scope: !1902, file: !160, line: 689, column: 25)
!1902 = distinct !DILexicalBlock(scope: !1896, file: !160, line: 688, column: 23)
!1903 = !DILocation(line: 689, column: 25, scope: !1904)
!1904 = !DILexicalBlockFile(scope: !1901, file: !160, discriminator: 1)
!1905 = !DILocation(line: 689, column: 25, scope: !1906)
!1906 = !DILexicalBlockFile(scope: !1900, file: !160, discriminator: 2)
!1907 = !DILocation(line: 689, column: 25, scope: !1908)
!1908 = !DILexicalBlockFile(scope: !1901, file: !160, discriminator: 3)
!1909 = !DILocation(line: 691, column: 23, scope: !1902)
!1910 = !DILocation(line: 692, column: 35, scope: !1911)
!1911 = distinct !DILexicalBlock(scope: !1817, file: !160, line: 692, column: 25)
!1912 = !DILocation(line: 692, column: 30, scope: !1911)
!1913 = !DILocation(line: 692, column: 25, scope: !1817)
!1914 = !DILocation(line: 694, column: 21, scope: !1915)
!1915 = !DILexicalBlockFile(scope: !1916, file: !160, discriminator: 1)
!1916 = distinct !DILexicalBlock(scope: !1917, file: !160, line: 694, column: 21)
!1917 = distinct !DILexicalBlock(scope: !1817, file: !160, line: 694, column: 21)
!1918 = !DILocation(line: 694, column: 21, scope: !1919)
!1919 = !DILexicalBlockFile(scope: !1916, file: !160, discriminator: 2)
!1920 = !DILocation(line: 694, column: 21, scope: !1921)
!1921 = !DILexicalBlockFile(scope: !1922, file: !160, discriminator: 4)
!1922 = distinct !DILexicalBlock(scope: !1923, file: !160, line: 694, column: 21)
!1923 = distinct !DILexicalBlock(scope: !1924, file: !160, line: 694, column: 21)
!1924 = distinct !DILexicalBlock(scope: !1916, file: !160, line: 694, column: 21)
!1925 = !DILocation(line: 694, column: 21, scope: !1926)
!1926 = !DILexicalBlockFile(scope: !1923, file: !160, discriminator: 4)
!1927 = !DILocation(line: 694, column: 21, scope: !1928)
!1928 = !DILexicalBlockFile(scope: !1922, file: !160, discriminator: 5)
!1929 = !DILocation(line: 694, column: 21, scope: !1930)
!1930 = !DILexicalBlockFile(scope: !1923, file: !160, discriminator: 6)
!1931 = !DILocation(line: 694, column: 21, scope: !1932)
!1932 = !DILexicalBlockFile(scope: !1933, file: !160, discriminator: 9)
!1933 = distinct !DILexicalBlock(scope: !1934, file: !160, line: 694, column: 21)
!1934 = distinct !DILexicalBlock(scope: !1924, file: !160, line: 694, column: 21)
!1935 = !DILocation(line: 694, column: 21, scope: !1936)
!1936 = !DILexicalBlockFile(scope: !1934, file: !160, discriminator: 9)
!1937 = !DILocation(line: 694, column: 21, scope: !1938)
!1938 = !DILexicalBlockFile(scope: !1933, file: !160, discriminator: 10)
!1939 = !DILocation(line: 694, column: 21, scope: !1940)
!1940 = !DILexicalBlockFile(scope: !1934, file: !160, discriminator: 11)
!1941 = !DILocation(line: 694, column: 21, scope: !1942)
!1942 = !DILexicalBlockFile(scope: !1924, file: !160, discriminator: 13)
!1943 = !DILocation(line: 695, column: 21, scope: !1944)
!1944 = !DILexicalBlockFile(scope: !1945, file: !160, discriminator: 1)
!1945 = distinct !DILexicalBlock(scope: !1946, file: !160, line: 695, column: 21)
!1946 = distinct !DILexicalBlock(scope: !1817, file: !160, line: 695, column: 21)
!1947 = !DILocation(line: 695, column: 21, scope: !1948)
!1948 = !DILexicalBlockFile(scope: !1946, file: !160, discriminator: 1)
!1949 = !DILocation(line: 695, column: 21, scope: !1950)
!1950 = !DILexicalBlockFile(scope: !1945, file: !160, discriminator: 2)
!1951 = !DILocation(line: 695, column: 21, scope: !1952)
!1952 = !DILexicalBlockFile(scope: !1946, file: !160, discriminator: 3)
!1953 = !DILocation(line: 696, column: 25, scope: !1817)
!1954 = !DILocation(line: 678, column: 17, scope: !1955)
!1955 = !DILexicalBlockFile(scope: !1818, file: !160, discriminator: 1)
!1956 = distinct !{!1956, !1957, !1958}
!1957 = !DILocation(line: 678, column: 17, scope: !1819)
!1958 = !DILocation(line: 697, column: 19, scope: !1819)
!1959 = !DILocation(line: 704, column: 34, scope: !1960)
!1960 = distinct !DILexicalBlock(scope: !1366, file: !160, line: 704, column: 11)
!1961 = !DILocation(line: 706, column: 14, scope: !1960)
!1962 = !DILocation(line: 707, column: 14, scope: !1960)
!1963 = !DILocation(line: 707, column: 35, scope: !1964)
!1964 = !DILexicalBlockFile(scope: !1960, file: !160, discriminator: 1)
!1965 = !DILocation(line: 707, column: 17, scope: !1964)
!1966 = !DILocation(line: 707, column: 53, scope: !1964)
!1967 = !DILocation(line: 707, column: 47, scope: !1964)
!1968 = !DILocation(line: 707, column: 65, scope: !1964)
!1969 = !DILocation(line: 708, column: 15, scope: !1964)
!1970 = !DILocation(line: 708, column: 11, scope: !1960)
!1971 = !DILocation(line: 704, column: 11, scope: !1972)
!1972 = !DILexicalBlockFile(scope: !1366, file: !160, discriminator: 2)
!1973 = !DILocation(line: 712, column: 7, scope: !1974)
!1974 = !DILexicalBlockFile(scope: !1975, file: !160, discriminator: 1)
!1975 = distinct !DILexicalBlock(scope: !1366, file: !160, line: 712, column: 7)
!1976 = !DILocation(line: 712, column: 7, scope: !1977)
!1977 = !DILexicalBlockFile(scope: !1978, file: !160, discriminator: 4)
!1978 = distinct !DILexicalBlock(scope: !1975, file: !160, line: 712, column: 7)
!1979 = !DILocation(line: 712, column: 7, scope: !1980)
!1980 = !DILexicalBlockFile(scope: !1978, file: !160, discriminator: 3)
!1981 = !DILocation(line: 712, column: 7, scope: !1982)
!1982 = !DILexicalBlockFile(scope: !1983, file: !160, discriminator: 6)
!1983 = distinct !DILexicalBlock(scope: !1984, file: !160, line: 712, column: 7)
!1984 = distinct !DILexicalBlock(scope: !1985, file: !160, line: 712, column: 7)
!1985 = distinct !DILexicalBlock(scope: !1978, file: !160, line: 712, column: 7)
!1986 = !DILocation(line: 712, column: 7, scope: !1987)
!1987 = !DILexicalBlockFile(scope: !1984, file: !160, discriminator: 6)
!1988 = !DILocation(line: 712, column: 7, scope: !1989)
!1989 = !DILexicalBlockFile(scope: !1983, file: !160, discriminator: 7)
!1990 = !DILocation(line: 712, column: 7, scope: !1991)
!1991 = !DILexicalBlockFile(scope: !1984, file: !160, discriminator: 8)
!1992 = !DILocation(line: 712, column: 7, scope: !1993)
!1993 = !DILexicalBlockFile(scope: !1994, file: !160, discriminator: 11)
!1994 = distinct !DILexicalBlock(scope: !1995, file: !160, line: 712, column: 7)
!1995 = distinct !DILexicalBlock(scope: !1985, file: !160, line: 712, column: 7)
!1996 = !DILocation(line: 712, column: 7, scope: !1997)
!1997 = !DILexicalBlockFile(scope: !1995, file: !160, discriminator: 11)
!1998 = !DILocation(line: 712, column: 7, scope: !1999)
!1999 = !DILexicalBlockFile(scope: !1994, file: !160, discriminator: 12)
!2000 = !DILocation(line: 712, column: 7, scope: !2001)
!2001 = !DILexicalBlockFile(scope: !1995, file: !160, discriminator: 13)
!2002 = !DILocation(line: 712, column: 7, scope: !2003)
!2003 = !DILexicalBlockFile(scope: !2004, file: !160, discriminator: 16)
!2004 = distinct !DILexicalBlock(scope: !2005, file: !160, line: 712, column: 7)
!2005 = distinct !DILexicalBlock(scope: !1985, file: !160, line: 712, column: 7)
!2006 = !DILocation(line: 712, column: 7, scope: !2007)
!2007 = !DILexicalBlockFile(scope: !2005, file: !160, discriminator: 16)
!2008 = !DILocation(line: 712, column: 7, scope: !2009)
!2009 = !DILexicalBlockFile(scope: !2004, file: !160, discriminator: 17)
!2010 = !DILocation(line: 712, column: 7, scope: !2011)
!2011 = !DILexicalBlockFile(scope: !2005, file: !160, discriminator: 18)
!2012 = !DILocation(line: 712, column: 7, scope: !2013)
!2013 = !DILexicalBlockFile(scope: !1985, file: !160, discriminator: 20)
!2014 = !DILocation(line: 712, column: 7, scope: !2015)
!2015 = !DILexicalBlockFile(scope: !2016, file: !160, discriminator: 22)
!2016 = distinct !DILexicalBlock(scope: !2017, file: !160, line: 712, column: 7)
!2017 = distinct !DILexicalBlock(scope: !1975, file: !160, line: 712, column: 7)
!2018 = !DILocation(line: 712, column: 7, scope: !2019)
!2019 = !DILexicalBlockFile(scope: !2017, file: !160, discriminator: 22)
!2020 = !DILocation(line: 712, column: 7, scope: !2021)
!2021 = !DILexicalBlockFile(scope: !2016, file: !160, discriminator: 23)
!2022 = !DILocation(line: 712, column: 7, scope: !2023)
!2023 = !DILexicalBlockFile(scope: !2017, file: !160, discriminator: 24)
!2024 = !DILocation(line: 715, column: 7, scope: !2025)
!2025 = !DILexicalBlockFile(scope: !2026, file: !160, discriminator: 1)
!2026 = distinct !DILexicalBlock(scope: !2027, file: !160, line: 715, column: 7)
!2027 = distinct !DILexicalBlock(scope: !1366, file: !160, line: 715, column: 7)
!2028 = !DILocation(line: 715, column: 7, scope: !2029)
!2029 = !DILexicalBlockFile(scope: !2026, file: !160, discriminator: 2)
!2030 = !DILocation(line: 715, column: 7, scope: !2031)
!2031 = !DILexicalBlockFile(scope: !2032, file: !160, discriminator: 4)
!2032 = distinct !DILexicalBlock(scope: !2033, file: !160, line: 715, column: 7)
!2033 = distinct !DILexicalBlock(scope: !2034, file: !160, line: 715, column: 7)
!2034 = distinct !DILexicalBlock(scope: !2026, file: !160, line: 715, column: 7)
!2035 = !DILocation(line: 715, column: 7, scope: !2036)
!2036 = !DILexicalBlockFile(scope: !2033, file: !160, discriminator: 4)
!2037 = !DILocation(line: 715, column: 7, scope: !2038)
!2038 = !DILexicalBlockFile(scope: !2032, file: !160, discriminator: 5)
!2039 = !DILocation(line: 715, column: 7, scope: !2040)
!2040 = !DILexicalBlockFile(scope: !2033, file: !160, discriminator: 6)
!2041 = !DILocation(line: 715, column: 7, scope: !2042)
!2042 = !DILexicalBlockFile(scope: !2043, file: !160, discriminator: 9)
!2043 = distinct !DILexicalBlock(scope: !2044, file: !160, line: 715, column: 7)
!2044 = distinct !DILexicalBlock(scope: !2034, file: !160, line: 715, column: 7)
!2045 = !DILocation(line: 715, column: 7, scope: !2046)
!2046 = !DILexicalBlockFile(scope: !2044, file: !160, discriminator: 9)
!2047 = !DILocation(line: 715, column: 7, scope: !2048)
!2048 = !DILexicalBlockFile(scope: !2043, file: !160, discriminator: 10)
!2049 = !DILocation(line: 715, column: 7, scope: !2050)
!2050 = !DILexicalBlockFile(scope: !2044, file: !160, discriminator: 11)
!2051 = !DILocation(line: 715, column: 7, scope: !2052)
!2052 = !DILexicalBlockFile(scope: !2034, file: !160, discriminator: 13)
!2053 = !DILocation(line: 716, column: 7, scope: !2054)
!2054 = !DILexicalBlockFile(scope: !2055, file: !160, discriminator: 1)
!2055 = distinct !DILexicalBlock(scope: !2056, file: !160, line: 716, column: 7)
!2056 = distinct !DILexicalBlock(scope: !1366, file: !160, line: 716, column: 7)
!2057 = !DILocation(line: 716, column: 7, scope: !2058)
!2058 = !DILexicalBlockFile(scope: !2056, file: !160, discriminator: 1)
!2059 = !DILocation(line: 716, column: 7, scope: !2060)
!2060 = !DILexicalBlockFile(scope: !2055, file: !160, discriminator: 2)
!2061 = !DILocation(line: 716, column: 7, scope: !2062)
!2062 = !DILexicalBlockFile(scope: !2056, file: !160, discriminator: 3)
!2063 = !DILocation(line: 718, column: 13, scope: !2064)
!2064 = distinct !DILexicalBlock(scope: !1366, file: !160, line: 718, column: 11)
!2065 = !DILocation(line: 718, column: 11, scope: !1366)
!2066 = !DILocation(line: 720, column: 5, scope: !1367)
!2067 = !DILocation(line: 392, column: 75, scope: !2068)
!2068 = !DILexicalBlockFile(scope: !1367, file: !160, discriminator: 5)
!2069 = !DILocation(line: 392, column: 3, scope: !2068)
!2070 = distinct !{!2070, !2071, !2072}
!2071 = !DILocation(line: 392, column: 3, scope: !1368)
!2072 = !DILocation(line: 720, column: 5, scope: !1368)
!2073 = !DILocation(line: 722, column: 11, scope: !2074)
!2074 = distinct !DILexicalBlock(scope: !1339, file: !160, line: 722, column: 7)
!2075 = !DILocation(line: 722, column: 16, scope: !2074)
!2076 = !DILocation(line: 730, column: 51, scope: !2077)
!2077 = distinct !DILexicalBlock(scope: !1339, file: !160, line: 730, column: 7)
!2078 = !DILocation(line: 731, column: 10, scope: !2079)
!2079 = !DILexicalBlockFile(scope: !2077, file: !160, discriminator: 1)
!2080 = !DILocation(line: 733, column: 11, scope: !2081)
!2081 = distinct !DILexicalBlock(scope: !2082, file: !160, line: 733, column: 11)
!2082 = distinct !DILexicalBlock(scope: !2077, file: !160, line: 732, column: 5)
!2083 = !DILocation(line: 733, column: 11, scope: !2082)
!2084 = !DILocation(line: 734, column: 16, scope: !2081)
!2085 = !DILocation(line: 734, column: 9, scope: !2081)
!2086 = !DILocation(line: 738, column: 18, scope: !2087)
!2087 = distinct !DILexicalBlock(scope: !2081, file: !160, line: 738, column: 16)
!2088 = !DILocation(line: 738, column: 32, scope: !2089)
!2089 = !DILexicalBlockFile(scope: !2087, file: !160, discriminator: 1)
!2090 = !DILocation(line: 738, column: 29, scope: !2087)
!2091 = !DILocation(line: 747, column: 7, scope: !2092)
!2092 = distinct !DILexicalBlock(scope: !1339, file: !160, line: 747, column: 7)
!2093 = !DILocation(line: 747, column: 20, scope: !2092)
!2094 = !DILocation(line: 748, column: 12, scope: !2095)
!2095 = !DILexicalBlockFile(scope: !2096, file: !160, discriminator: 1)
!2096 = distinct !DILexicalBlock(scope: !2097, file: !160, line: 748, column: 5)
!2097 = distinct !DILexicalBlock(scope: !2092, file: !160, line: 748, column: 5)
!2098 = !DILocation(line: 748, column: 5, scope: !2099)
!2099 = !DILexicalBlockFile(scope: !2097, file: !160, discriminator: 1)
!2100 = !DILocation(line: 749, column: 7, scope: !2101)
!2101 = !DILexicalBlockFile(scope: !2102, file: !160, discriminator: 1)
!2102 = distinct !DILexicalBlock(scope: !2103, file: !160, line: 749, column: 7)
!2103 = distinct !DILexicalBlock(scope: !2096, file: !160, line: 749, column: 7)
!2104 = !DILocation(line: 749, column: 7, scope: !2105)
!2105 = !DILexicalBlockFile(scope: !2103, file: !160, discriminator: 1)
!2106 = !DILocation(line: 749, column: 7, scope: !2107)
!2107 = !DILexicalBlockFile(scope: !2102, file: !160, discriminator: 2)
!2108 = !DILocation(line: 749, column: 7, scope: !2109)
!2109 = !DILexicalBlockFile(scope: !2103, file: !160, discriminator: 3)
!2110 = !DILocation(line: 748, column: 39, scope: !2111)
!2111 = !DILexicalBlockFile(scope: !2096, file: !160, discriminator: 2)
!2112 = distinct !{!2112, !2113, !2114}
!2113 = !DILocation(line: 748, column: 5, scope: !2097)
!2114 = !DILocation(line: 749, column: 7, scope: !2097)
!2115 = !DILocation(line: 751, column: 11, scope: !2116)
!2116 = distinct !DILexicalBlock(scope: !1339, file: !160, line: 751, column: 7)
!2117 = !DILocation(line: 751, column: 7, scope: !1339)
!2118 = !DILocation(line: 752, column: 5, scope: !2116)
!2119 = !DILocation(line: 752, column: 17, scope: !2116)
!2120 = !DILocation(line: 758, column: 21, scope: !2121)
!2121 = distinct !DILexicalBlock(scope: !1339, file: !160, line: 758, column: 7)
!2122 = !DILocation(line: 758, column: 54, scope: !2123)
!2123 = !DILexicalBlockFile(scope: !2121, file: !160, discriminator: 1)
!2124 = !DILocation(line: 758, column: 51, scope: !2121)
!2125 = !DILocation(line: 762, column: 42, scope: !1339)
!2126 = !DILocation(line: 760, column: 10, scope: !1339)
!2127 = !DILocation(line: 760, column: 3, scope: !1339)
!2128 = !DILocation(line: 764, column: 1, scope: !1339)
!2129 = distinct !DISubprogram(name: "gettext_quote", scope: !160, file: !160, line: 199, type: !2130, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !132, variables: !2132)
!2130 = !DISubroutineType(types: !2131)
!2131 = !{!55, !55, !5}
!2132 = !{!2133, !2134, !2135, !2136}
!2133 = !DILocalVariable(name: "msgid", arg: 1, scope: !2129, file: !160, line: 199, type: !55)
!2134 = !DILocalVariable(name: "s", arg: 2, scope: !2129, file: !160, line: 199, type: !5)
!2135 = !DILocalVariable(name: "translation", scope: !2129, file: !160, line: 201, type: !55)
!2136 = !DILocalVariable(name: "locale_code", scope: !2129, file: !160, line: 202, type: !55)
!2137 = !DILocation(line: 199, column: 28, scope: !2129)
!2138 = !DILocation(line: 199, column: 54, scope: !2129)
!2139 = !DILocation(line: 201, column: 29, scope: !2129)
!2140 = !DILocation(line: 201, column: 15, scope: !2129)
!2141 = !DILocation(line: 204, column: 19, scope: !2142)
!2142 = distinct !DILexicalBlock(scope: !2129, file: !160, line: 204, column: 7)
!2143 = !DILocation(line: 204, column: 7, scope: !2129)
!2144 = !DILocation(line: 225, column: 17, scope: !2129)
!2145 = !DILocation(line: 202, column: 15, scope: !2129)
!2146 = !DILocalVariable(name: "s2", arg: 2, scope: !2147, file: !2148, line: 160, type: !55)
!2147 = distinct !DISubprogram(name: "strcaseeq0", scope: !2148, file: !2148, line: 160, type: !2149, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !132, variables: !2151)
!2148 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2149 = !DISubroutineType(types: !2150)
!2150 = !{!85, !55, !55, !45, !45, !45, !45, !45, !45, !45, !45, !45}
!2151 = !{!2152, !2146, !2153, !2154, !2155, !2156, !2157, !2158, !2159, !2160, !2161}
!2152 = !DILocalVariable(name: "s1", arg: 1, scope: !2147, file: !2148, line: 160, type: !55)
!2153 = !DILocalVariable(name: "s20", arg: 3, scope: !2147, file: !2148, line: 160, type: !45)
!2154 = !DILocalVariable(name: "s21", arg: 4, scope: !2147, file: !2148, line: 160, type: !45)
!2155 = !DILocalVariable(name: "s22", arg: 5, scope: !2147, file: !2148, line: 160, type: !45)
!2156 = !DILocalVariable(name: "s23", arg: 6, scope: !2147, file: !2148, line: 160, type: !45)
!2157 = !DILocalVariable(name: "s24", arg: 7, scope: !2147, file: !2148, line: 160, type: !45)
!2158 = !DILocalVariable(name: "s25", arg: 8, scope: !2147, file: !2148, line: 160, type: !45)
!2159 = !DILocalVariable(name: "s26", arg: 9, scope: !2147, file: !2148, line: 160, type: !45)
!2160 = !DILocalVariable(name: "s27", arg: 10, scope: !2147, file: !2148, line: 160, type: !45)
!2161 = !DILocalVariable(name: "s28", arg: 11, scope: !2147, file: !2148, line: 160, type: !45)
!2162 = !DILocation(line: 160, column: 41, scope: !2147, inlinedAt: !2163)
!2163 = distinct !DILocation(line: 226, column: 7, scope: !2164)
!2164 = distinct !DILexicalBlock(scope: !2129, file: !160, line: 226, column: 7)
!2165 = !DILocation(line: 160, column: 120, scope: !2147, inlinedAt: !2163)
!2166 = !DILocation(line: 160, column: 130, scope: !2147, inlinedAt: !2163)
!2167 = !DILocation(line: 162, column: 7, scope: !2168, inlinedAt: !2163)
!2168 = !DILexicalBlockFile(scope: !2169, file: !2148, discriminator: 1)
!2169 = distinct !DILexicalBlock(scope: !2147, file: !2148, line: 162, column: 7)
!2170 = !DILocalVariable(name: "s2", arg: 2, scope: !2171, file: !2148, line: 146, type: !55)
!2171 = distinct !DISubprogram(name: "strcaseeq1", scope: !2148, file: !2148, line: 146, type: !2172, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !132, variables: !2174)
!2172 = !DISubroutineType(types: !2173)
!2173 = !{!85, !55, !55, !45, !45, !45, !45, !45, !45, !45, !45}
!2174 = !{!2175, !2170, !2176, !2177, !2178, !2179, !2180, !2181, !2182, !2183}
!2175 = !DILocalVariable(name: "s1", arg: 1, scope: !2171, file: !2148, line: 146, type: !55)
!2176 = !DILocalVariable(name: "s21", arg: 3, scope: !2171, file: !2148, line: 146, type: !45)
!2177 = !DILocalVariable(name: "s22", arg: 4, scope: !2171, file: !2148, line: 146, type: !45)
!2178 = !DILocalVariable(name: "s23", arg: 5, scope: !2171, file: !2148, line: 146, type: !45)
!2179 = !DILocalVariable(name: "s24", arg: 6, scope: !2171, file: !2148, line: 146, type: !45)
!2180 = !DILocalVariable(name: "s25", arg: 7, scope: !2171, file: !2148, line: 146, type: !45)
!2181 = !DILocalVariable(name: "s26", arg: 8, scope: !2171, file: !2148, line: 146, type: !45)
!2182 = !DILocalVariable(name: "s27", arg: 9, scope: !2171, file: !2148, line: 146, type: !45)
!2183 = !DILocalVariable(name: "s28", arg: 10, scope: !2171, file: !2148, line: 146, type: !45)
!2184 = !DILocation(line: 146, column: 41, scope: !2171, inlinedAt: !2185)
!2185 = distinct !DILocation(line: 167, column: 16, scope: !2186, inlinedAt: !2163)
!2186 = distinct !DILexicalBlock(scope: !2187, file: !2148, line: 164, column: 11)
!2187 = distinct !DILexicalBlock(scope: !2169, file: !2148, line: 163, column: 5)
!2188 = !DILocation(line: 146, column: 110, scope: !2171, inlinedAt: !2185)
!2189 = !DILocation(line: 146, column: 120, scope: !2171, inlinedAt: !2185)
!2190 = !DILocation(line: 148, column: 7, scope: !2191, inlinedAt: !2185)
!2191 = !DILexicalBlockFile(scope: !2192, file: !2148, discriminator: 1)
!2192 = distinct !DILexicalBlock(scope: !2171, file: !2148, line: 148, column: 7)
!2193 = !DILocalVariable(name: "s2", arg: 2, scope: !2194, file: !2148, line: 132, type: !55)
!2194 = distinct !DISubprogram(name: "strcaseeq2", scope: !2148, file: !2148, line: 132, type: !2195, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !132, variables: !2197)
!2195 = !DISubroutineType(types: !2196)
!2196 = !{!85, !55, !55, !45, !45, !45, !45, !45, !45, !45}
!2197 = !{!2198, !2193, !2199, !2200, !2201, !2202, !2203, !2204, !2205}
!2198 = !DILocalVariable(name: "s1", arg: 1, scope: !2194, file: !2148, line: 132, type: !55)
!2199 = !DILocalVariable(name: "s22", arg: 3, scope: !2194, file: !2148, line: 132, type: !45)
!2200 = !DILocalVariable(name: "s23", arg: 4, scope: !2194, file: !2148, line: 132, type: !45)
!2201 = !DILocalVariable(name: "s24", arg: 5, scope: !2194, file: !2148, line: 132, type: !45)
!2202 = !DILocalVariable(name: "s25", arg: 6, scope: !2194, file: !2148, line: 132, type: !45)
!2203 = !DILocalVariable(name: "s26", arg: 7, scope: !2194, file: !2148, line: 132, type: !45)
!2204 = !DILocalVariable(name: "s27", arg: 8, scope: !2194, file: !2148, line: 132, type: !45)
!2205 = !DILocalVariable(name: "s28", arg: 9, scope: !2194, file: !2148, line: 132, type: !45)
!2206 = !DILocation(line: 132, column: 41, scope: !2194, inlinedAt: !2207)
!2207 = distinct !DILocation(line: 153, column: 16, scope: !2208, inlinedAt: !2185)
!2208 = distinct !DILexicalBlock(scope: !2209, file: !2148, line: 150, column: 11)
!2209 = distinct !DILexicalBlock(scope: !2192, file: !2148, line: 149, column: 5)
!2210 = !DILocation(line: 132, column: 100, scope: !2194, inlinedAt: !2207)
!2211 = !DILocation(line: 132, column: 110, scope: !2194, inlinedAt: !2207)
!2212 = !DILocation(line: 134, column: 7, scope: !2213, inlinedAt: !2207)
!2213 = !DILexicalBlockFile(scope: !2214, file: !2148, discriminator: 1)
!2214 = distinct !DILexicalBlock(scope: !2194, file: !2148, line: 134, column: 7)
!2215 = !DILocalVariable(name: "s2", arg: 2, scope: !2216, file: !2148, line: 118, type: !55)
!2216 = distinct !DISubprogram(name: "strcaseeq3", scope: !2148, file: !2148, line: 118, type: !2217, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !132, variables: !2219)
!2217 = !DISubroutineType(types: !2218)
!2218 = !{!85, !55, !55, !45, !45, !45, !45, !45, !45}
!2219 = !{!2220, !2215, !2221, !2222, !2223, !2224, !2225, !2226}
!2220 = !DILocalVariable(name: "s1", arg: 1, scope: !2216, file: !2148, line: 118, type: !55)
!2221 = !DILocalVariable(name: "s23", arg: 3, scope: !2216, file: !2148, line: 118, type: !45)
!2222 = !DILocalVariable(name: "s24", arg: 4, scope: !2216, file: !2148, line: 118, type: !45)
!2223 = !DILocalVariable(name: "s25", arg: 5, scope: !2216, file: !2148, line: 118, type: !45)
!2224 = !DILocalVariable(name: "s26", arg: 6, scope: !2216, file: !2148, line: 118, type: !45)
!2225 = !DILocalVariable(name: "s27", arg: 7, scope: !2216, file: !2148, line: 118, type: !45)
!2226 = !DILocalVariable(name: "s28", arg: 8, scope: !2216, file: !2148, line: 118, type: !45)
!2227 = !DILocation(line: 118, column: 41, scope: !2216, inlinedAt: !2228)
!2228 = distinct !DILocation(line: 139, column: 16, scope: !2229, inlinedAt: !2207)
!2229 = distinct !DILexicalBlock(scope: !2230, file: !2148, line: 136, column: 11)
!2230 = distinct !DILexicalBlock(scope: !2214, file: !2148, line: 135, column: 5)
!2231 = !DILocation(line: 118, column: 90, scope: !2216, inlinedAt: !2228)
!2232 = !DILocation(line: 118, column: 100, scope: !2216, inlinedAt: !2228)
!2233 = !DILocation(line: 120, column: 7, scope: !2234, inlinedAt: !2228)
!2234 = !DILexicalBlockFile(scope: !2235, file: !2148, discriminator: 2)
!2235 = distinct !DILexicalBlock(scope: !2216, file: !2148, line: 120, column: 7)
!2236 = !DILocation(line: 120, column: 7, scope: !2237, inlinedAt: !2228)
!2237 = !DILexicalBlockFile(scope: !2216, file: !2148, discriminator: 2)
!2238 = !DILocalVariable(name: "s2", arg: 2, scope: !2239, file: !2148, line: 104, type: !55)
!2239 = distinct !DISubprogram(name: "strcaseeq4", scope: !2148, file: !2148, line: 104, type: !2240, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !132, variables: !2242)
!2240 = !DISubroutineType(types: !2241)
!2241 = !{!85, !55, !55, !45, !45, !45, !45, !45}
!2242 = !{!2243, !2238, !2244, !2245, !2246, !2247, !2248}
!2243 = !DILocalVariable(name: "s1", arg: 1, scope: !2239, file: !2148, line: 104, type: !55)
!2244 = !DILocalVariable(name: "s24", arg: 3, scope: !2239, file: !2148, line: 104, type: !45)
!2245 = !DILocalVariable(name: "s25", arg: 4, scope: !2239, file: !2148, line: 104, type: !45)
!2246 = !DILocalVariable(name: "s26", arg: 5, scope: !2239, file: !2148, line: 104, type: !45)
!2247 = !DILocalVariable(name: "s27", arg: 6, scope: !2239, file: !2148, line: 104, type: !45)
!2248 = !DILocalVariable(name: "s28", arg: 7, scope: !2239, file: !2148, line: 104, type: !45)
!2249 = !DILocation(line: 104, column: 41, scope: !2239, inlinedAt: !2250)
!2250 = distinct !DILocation(line: 125, column: 16, scope: !2251, inlinedAt: !2228)
!2251 = distinct !DILexicalBlock(scope: !2252, file: !2148, line: 122, column: 11)
!2252 = distinct !DILexicalBlock(scope: !2235, file: !2148, line: 121, column: 5)
!2253 = !DILocation(line: 104, column: 80, scope: !2239, inlinedAt: !2250)
!2254 = !DILocation(line: 104, column: 90, scope: !2239, inlinedAt: !2250)
!2255 = !DILocation(line: 106, column: 7, scope: !2256, inlinedAt: !2250)
!2256 = !DILexicalBlockFile(scope: !2257, file: !2148, discriminator: 2)
!2257 = distinct !DILexicalBlock(scope: !2239, file: !2148, line: 106, column: 7)
!2258 = !DILocation(line: 106, column: 7, scope: !2259, inlinedAt: !2250)
!2259 = !DILexicalBlockFile(scope: !2239, file: !2148, discriminator: 2)
!2260 = !DILocalVariable(name: "s2", arg: 2, scope: !2261, file: !2148, line: 90, type: !55)
!2261 = distinct !DISubprogram(name: "strcaseeq5", scope: !2148, file: !2148, line: 90, type: !2262, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !132, variables: !2264)
!2262 = !DISubroutineType(types: !2263)
!2263 = !{!85, !55, !55, !45, !45, !45, !45}
!2264 = !{!2265, !2260, !2266, !2267, !2268, !2269}
!2265 = !DILocalVariable(name: "s1", arg: 1, scope: !2261, file: !2148, line: 90, type: !55)
!2266 = !DILocalVariable(name: "s25", arg: 3, scope: !2261, file: !2148, line: 90, type: !45)
!2267 = !DILocalVariable(name: "s26", arg: 4, scope: !2261, file: !2148, line: 90, type: !45)
!2268 = !DILocalVariable(name: "s27", arg: 5, scope: !2261, file: !2148, line: 90, type: !45)
!2269 = !DILocalVariable(name: "s28", arg: 6, scope: !2261, file: !2148, line: 90, type: !45)
!2270 = !DILocation(line: 90, column: 41, scope: !2261, inlinedAt: !2271)
!2271 = distinct !DILocation(line: 111, column: 16, scope: !2272, inlinedAt: !2250)
!2272 = distinct !DILexicalBlock(scope: !2273, file: !2148, line: 108, column: 11)
!2273 = distinct !DILexicalBlock(scope: !2257, file: !2148, line: 107, column: 5)
!2274 = !DILocation(line: 90, column: 70, scope: !2261, inlinedAt: !2271)
!2275 = !DILocation(line: 90, column: 80, scope: !2261, inlinedAt: !2271)
!2276 = !DILocation(line: 92, column: 7, scope: !2277, inlinedAt: !2271)
!2277 = !DILexicalBlockFile(scope: !2278, file: !2148, discriminator: 2)
!2278 = distinct !DILexicalBlock(scope: !2261, file: !2148, line: 92, column: 7)
!2279 = !DILocation(line: 92, column: 7, scope: !2280, inlinedAt: !2271)
!2280 = !DILexicalBlockFile(scope: !2261, file: !2148, discriminator: 2)
!2281 = !DILocation(line: 227, column: 12, scope: !2164)
!2282 = !DILocation(line: 227, column: 21, scope: !2164)
!2283 = !DILocation(line: 227, column: 5, scope: !2164)
!2284 = !DILocation(line: 146, column: 41, scope: !2171, inlinedAt: !2285)
!2285 = distinct !DILocation(line: 167, column: 16, scope: !2186, inlinedAt: !2286)
!2286 = distinct !DILocation(line: 228, column: 7, scope: !2287)
!2287 = distinct !DILexicalBlock(scope: !2129, file: !160, line: 228, column: 7)
!2288 = !DILocation(line: 146, column: 110, scope: !2171, inlinedAt: !2285)
!2289 = !DILocation(line: 146, column: 120, scope: !2171, inlinedAt: !2285)
!2290 = !DILocation(line: 148, column: 7, scope: !2191, inlinedAt: !2285)
!2291 = !DILocation(line: 132, column: 41, scope: !2194, inlinedAt: !2292)
!2292 = distinct !DILocation(line: 153, column: 16, scope: !2208, inlinedAt: !2285)
!2293 = !DILocation(line: 132, column: 100, scope: !2194, inlinedAt: !2292)
!2294 = !DILocation(line: 132, column: 110, scope: !2194, inlinedAt: !2292)
!2295 = !DILocation(line: 134, column: 7, scope: !2296, inlinedAt: !2292)
!2296 = !DILexicalBlockFile(scope: !2214, file: !2148, discriminator: 2)
!2297 = !DILocation(line: 134, column: 7, scope: !2298, inlinedAt: !2292)
!2298 = !DILexicalBlockFile(scope: !2194, file: !2148, discriminator: 2)
!2299 = !DILocation(line: 118, column: 41, scope: !2216, inlinedAt: !2300)
!2300 = distinct !DILocation(line: 139, column: 16, scope: !2229, inlinedAt: !2292)
!2301 = !DILocation(line: 118, column: 90, scope: !2216, inlinedAt: !2300)
!2302 = !DILocation(line: 118, column: 100, scope: !2216, inlinedAt: !2300)
!2303 = !DILocation(line: 120, column: 7, scope: !2234, inlinedAt: !2300)
!2304 = !DILocation(line: 120, column: 7, scope: !2237, inlinedAt: !2300)
!2305 = !DILocation(line: 104, column: 41, scope: !2239, inlinedAt: !2306)
!2306 = distinct !DILocation(line: 125, column: 16, scope: !2251, inlinedAt: !2300)
!2307 = !DILocation(line: 104, column: 80, scope: !2239, inlinedAt: !2306)
!2308 = !DILocation(line: 104, column: 90, scope: !2239, inlinedAt: !2306)
!2309 = !DILocation(line: 106, column: 7, scope: !2256, inlinedAt: !2306)
!2310 = !DILocation(line: 106, column: 7, scope: !2259, inlinedAt: !2306)
!2311 = !DILocation(line: 90, column: 41, scope: !2261, inlinedAt: !2312)
!2312 = distinct !DILocation(line: 111, column: 16, scope: !2272, inlinedAt: !2306)
!2313 = !DILocation(line: 90, column: 70, scope: !2261, inlinedAt: !2312)
!2314 = !DILocation(line: 90, column: 80, scope: !2261, inlinedAt: !2312)
!2315 = !DILocation(line: 92, column: 7, scope: !2277, inlinedAt: !2312)
!2316 = !DILocation(line: 92, column: 7, scope: !2280, inlinedAt: !2312)
!2317 = !DILocalVariable(name: "s2", arg: 2, scope: !2318, file: !2148, line: 76, type: !55)
!2318 = distinct !DISubprogram(name: "strcaseeq6", scope: !2148, file: !2148, line: 76, type: !2319, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !132, variables: !2321)
!2319 = !DISubroutineType(types: !2320)
!2320 = !{!85, !55, !55, !45, !45, !45}
!2321 = !{!2322, !2317, !2323, !2324, !2325}
!2322 = !DILocalVariable(name: "s1", arg: 1, scope: !2318, file: !2148, line: 76, type: !55)
!2323 = !DILocalVariable(name: "s26", arg: 3, scope: !2318, file: !2148, line: 76, type: !45)
!2324 = !DILocalVariable(name: "s27", arg: 4, scope: !2318, file: !2148, line: 76, type: !45)
!2325 = !DILocalVariable(name: "s28", arg: 5, scope: !2318, file: !2148, line: 76, type: !45)
!2326 = !DILocation(line: 76, column: 41, scope: !2318, inlinedAt: !2327)
!2327 = distinct !DILocation(line: 97, column: 16, scope: !2328, inlinedAt: !2312)
!2328 = distinct !DILexicalBlock(scope: !2329, file: !2148, line: 94, column: 11)
!2329 = distinct !DILexicalBlock(scope: !2278, file: !2148, line: 93, column: 5)
!2330 = !DILocation(line: 76, column: 60, scope: !2318, inlinedAt: !2327)
!2331 = !DILocation(line: 76, column: 70, scope: !2318, inlinedAt: !2327)
!2332 = !DILocation(line: 78, column: 7, scope: !2333, inlinedAt: !2327)
!2333 = !DILexicalBlockFile(scope: !2334, file: !2148, discriminator: 2)
!2334 = distinct !DILexicalBlock(scope: !2318, file: !2148, line: 78, column: 7)
!2335 = !DILocation(line: 78, column: 7, scope: !2336, inlinedAt: !2327)
!2336 = !DILexicalBlockFile(scope: !2318, file: !2148, discriminator: 2)
!2337 = !DILocalVariable(name: "s2", arg: 2, scope: !2338, file: !2148, line: 62, type: !55)
!2338 = distinct !DISubprogram(name: "strcaseeq7", scope: !2148, file: !2148, line: 62, type: !2339, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !132, variables: !2341)
!2339 = !DISubroutineType(types: !2340)
!2340 = !{!85, !55, !55, !45, !45}
!2341 = !{!2342, !2337, !2343, !2344}
!2342 = !DILocalVariable(name: "s1", arg: 1, scope: !2338, file: !2148, line: 62, type: !55)
!2343 = !DILocalVariable(name: "s27", arg: 3, scope: !2338, file: !2148, line: 62, type: !45)
!2344 = !DILocalVariable(name: "s28", arg: 4, scope: !2338, file: !2148, line: 62, type: !45)
!2345 = !DILocation(line: 62, column: 41, scope: !2338, inlinedAt: !2346)
!2346 = distinct !DILocation(line: 83, column: 16, scope: !2347, inlinedAt: !2327)
!2347 = distinct !DILexicalBlock(scope: !2348, file: !2148, line: 80, column: 11)
!2348 = distinct !DILexicalBlock(scope: !2334, file: !2148, line: 79, column: 5)
!2349 = !DILocation(line: 62, column: 50, scope: !2338, inlinedAt: !2346)
!2350 = !DILocation(line: 62, column: 60, scope: !2338, inlinedAt: !2346)
!2351 = !DILocation(line: 64, column: 7, scope: !2352, inlinedAt: !2346)
!2352 = !DILexicalBlockFile(scope: !2353, file: !2148, discriminator: 2)
!2353 = distinct !DILexicalBlock(scope: !2338, file: !2148, line: 64, column: 7)
!2354 = !DILocation(line: 228, column: 7, scope: !2129)
!2355 = !DILocation(line: 229, column: 12, scope: !2287)
!2356 = !DILocation(line: 229, column: 21, scope: !2287)
!2357 = !DILocation(line: 229, column: 5, scope: !2287)
!2358 = !DILocation(line: 231, column: 13, scope: !2129)
!2359 = !DILocation(line: 231, column: 11, scope: !2129)
!2360 = !DILocation(line: 231, column: 3, scope: !2129)
!2361 = !DILocation(line: 232, column: 1, scope: !2129)
!2362 = distinct !DISubprogram(name: "quotearg_alloc", scope: !160, file: !160, line: 791, type: !2363, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !132, variables: !2365)
!2363 = !DISubroutineType(types: !2364)
!2364 = !{!44, !55, !47, !1207}
!2365 = !{!2366, !2367, !2368}
!2366 = !DILocalVariable(name: "arg", arg: 1, scope: !2362, file: !160, line: 791, type: !55)
!2367 = !DILocalVariable(name: "argsize", arg: 2, scope: !2362, file: !160, line: 791, type: !47)
!2368 = !DILocalVariable(name: "o", arg: 3, scope: !2362, file: !160, line: 792, type: !1207)
!2369 = !DILocation(line: 791, column: 29, scope: !2362)
!2370 = !DILocation(line: 791, column: 41, scope: !2362)
!2371 = !DILocation(line: 792, column: 47, scope: !2362)
!2372 = !DILocalVariable(name: "arg", arg: 1, scope: !2373, file: !160, line: 804, type: !55)
!2373 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !160, file: !160, line: 804, type: !2374, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !132, variables: !2376)
!2374 = !DISubroutineType(types: !2375)
!2375 = !{!44, !55, !47, !591, !1207}
!2376 = !{!2372, !2377, !2378, !2379, !2380, !2381, !2382, !2383, !2384}
!2377 = !DILocalVariable(name: "argsize", arg: 2, scope: !2373, file: !160, line: 804, type: !47)
!2378 = !DILocalVariable(name: "size", arg: 3, scope: !2373, file: !160, line: 804, type: !591)
!2379 = !DILocalVariable(name: "o", arg: 4, scope: !2373, file: !160, line: 805, type: !1207)
!2380 = !DILocalVariable(name: "p", scope: !2373, file: !160, line: 807, type: !1207)
!2381 = !DILocalVariable(name: "e", scope: !2373, file: !160, line: 808, type: !85)
!2382 = !DILocalVariable(name: "flags", scope: !2373, file: !160, line: 810, type: !85)
!2383 = !DILocalVariable(name: "bufsize", scope: !2373, file: !160, line: 811, type: !47)
!2384 = !DILocalVariable(name: "buf", scope: !2373, file: !160, line: 815, type: !44)
!2385 = !DILocation(line: 804, column: 33, scope: !2373, inlinedAt: !2386)
!2386 = distinct !DILocation(line: 794, column: 10, scope: !2362)
!2387 = !DILocation(line: 804, column: 45, scope: !2373, inlinedAt: !2386)
!2388 = !DILocation(line: 804, column: 62, scope: !2373, inlinedAt: !2386)
!2389 = !DILocation(line: 805, column: 51, scope: !2373, inlinedAt: !2386)
!2390 = !DILocation(line: 807, column: 37, scope: !2373, inlinedAt: !2386)
!2391 = !DILocation(line: 807, column: 33, scope: !2373, inlinedAt: !2386)
!2392 = !DILocation(line: 808, column: 11, scope: !2373, inlinedAt: !2386)
!2393 = !DILocation(line: 808, column: 7, scope: !2373, inlinedAt: !2386)
!2394 = !DILocation(line: 810, column: 18, scope: !2373, inlinedAt: !2386)
!2395 = !DILocation(line: 810, column: 24, scope: !2373, inlinedAt: !2386)
!2396 = !DILocation(line: 810, column: 7, scope: !2373, inlinedAt: !2386)
!2397 = !DILocation(line: 811, column: 69, scope: !2373, inlinedAt: !2386)
!2398 = !DILocation(line: 812, column: 53, scope: !2373, inlinedAt: !2386)
!2399 = !DILocation(line: 813, column: 49, scope: !2373, inlinedAt: !2386)
!2400 = !DILocation(line: 814, column: 49, scope: !2373, inlinedAt: !2386)
!2401 = !DILocation(line: 811, column: 20, scope: !2373, inlinedAt: !2386)
!2402 = !DILocation(line: 814, column: 62, scope: !2373, inlinedAt: !2386)
!2403 = !DILocation(line: 811, column: 10, scope: !2373, inlinedAt: !2386)
!2404 = !DILocalVariable(name: "n", arg: 1, scope: !2405, file: !587, line: 220, type: !47)
!2405 = distinct !DISubprogram(name: "xcharalloc", scope: !587, file: !587, line: 220, type: !2406, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !132, variables: !2408)
!2406 = !DISubroutineType(types: !2407)
!2407 = !{!44, !47}
!2408 = !{!2404}
!2409 = !DILocation(line: 220, column: 20, scope: !2405, inlinedAt: !2410)
!2410 = distinct !DILocation(line: 815, column: 15, scope: !2373, inlinedAt: !2386)
!2411 = !DILocation(line: 222, column: 10, scope: !2405, inlinedAt: !2410)
!2412 = !DILocation(line: 815, column: 9, scope: !2373, inlinedAt: !2386)
!2413 = !DILocation(line: 816, column: 60, scope: !2373, inlinedAt: !2386)
!2414 = !DILocation(line: 818, column: 32, scope: !2373, inlinedAt: !2386)
!2415 = !DILocation(line: 818, column: 47, scope: !2373, inlinedAt: !2386)
!2416 = !DILocation(line: 816, column: 3, scope: !2373, inlinedAt: !2386)
!2417 = !DILocation(line: 819, column: 9, scope: !2373, inlinedAt: !2386)
!2418 = !DILocation(line: 794, column: 3, scope: !2362)
!2419 = !DILocation(line: 804, column: 33, scope: !2373)
!2420 = !DILocation(line: 804, column: 45, scope: !2373)
!2421 = !DILocation(line: 804, column: 62, scope: !2373)
!2422 = !DILocation(line: 805, column: 51, scope: !2373)
!2423 = !DILocation(line: 807, column: 37, scope: !2373)
!2424 = !DILocation(line: 807, column: 33, scope: !2373)
!2425 = !DILocation(line: 808, column: 11, scope: !2373)
!2426 = !DILocation(line: 808, column: 7, scope: !2373)
!2427 = !DILocation(line: 810, column: 18, scope: !2373)
!2428 = !DILocation(line: 810, column: 27, scope: !2373)
!2429 = !DILocation(line: 810, column: 24, scope: !2373)
!2430 = !DILocation(line: 810, column: 7, scope: !2373)
!2431 = !DILocation(line: 811, column: 69, scope: !2373)
!2432 = !DILocation(line: 812, column: 53, scope: !2373)
!2433 = !DILocation(line: 813, column: 49, scope: !2373)
!2434 = !DILocation(line: 814, column: 49, scope: !2373)
!2435 = !DILocation(line: 811, column: 20, scope: !2373)
!2436 = !DILocation(line: 814, column: 62, scope: !2373)
!2437 = !DILocation(line: 811, column: 10, scope: !2373)
!2438 = !DILocation(line: 220, column: 20, scope: !2405, inlinedAt: !2439)
!2439 = distinct !DILocation(line: 815, column: 15, scope: !2373)
!2440 = !DILocation(line: 222, column: 10, scope: !2405, inlinedAt: !2439)
!2441 = !DILocation(line: 815, column: 9, scope: !2373)
!2442 = !DILocation(line: 816, column: 60, scope: !2373)
!2443 = !DILocation(line: 818, column: 32, scope: !2373)
!2444 = !DILocation(line: 818, column: 47, scope: !2373)
!2445 = !DILocation(line: 816, column: 3, scope: !2373)
!2446 = !DILocation(line: 819, column: 9, scope: !2373)
!2447 = !DILocation(line: 820, column: 7, scope: !2373)
!2448 = !DILocation(line: 821, column: 11, scope: !2449)
!2449 = distinct !DILexicalBlock(scope: !2373, file: !160, line: 820, column: 7)
!2450 = !{!2451, !2451, i64 0}
!2451 = !{!"long", !638, i64 0}
!2452 = !DILocation(line: 821, column: 5, scope: !2449)
!2453 = !DILocation(line: 822, column: 3, scope: !2373)
!2454 = distinct !DISubprogram(name: "quotearg_free", scope: !160, file: !160, line: 840, type: !1105, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !132, variables: !2455)
!2455 = !{!2456, !2457}
!2456 = !DILocalVariable(name: "sv", scope: !2454, file: !160, line: 842, type: !187)
!2457 = !DILocalVariable(name: "i", scope: !2454, file: !160, line: 843, type: !85)
!2458 = !DILocation(line: 842, column: 24, scope: !2454)
!2459 = !DILocation(line: 842, column: 19, scope: !2454)
!2460 = !DILocation(line: 843, column: 7, scope: !2454)
!2461 = !DILocation(line: 844, column: 19, scope: !2462)
!2462 = !DILexicalBlockFile(scope: !2463, file: !160, discriminator: 1)
!2463 = distinct !DILexicalBlock(scope: !2464, file: !160, line: 844, column: 3)
!2464 = distinct !DILexicalBlock(scope: !2454, file: !160, line: 844, column: 3)
!2465 = !DILocation(line: 844, column: 17, scope: !2462)
!2466 = !DILocation(line: 844, column: 3, scope: !2467)
!2467 = !DILexicalBlockFile(scope: !2464, file: !160, discriminator: 1)
!2468 = !DILocation(line: 845, column: 17, scope: !2463)
!2469 = !{!2470, !637, i64 8}
!2470 = !{!"slotvec", !2451, i64 0, !637, i64 8}
!2471 = !DILocation(line: 845, column: 5, scope: !2463)
!2472 = !DILocation(line: 844, column: 28, scope: !2473)
!2473 = !DILexicalBlockFile(scope: !2463, file: !160, discriminator: 2)
!2474 = distinct !{!2474, !2475, !2476}
!2475 = !DILocation(line: 844, column: 3, scope: !2464)
!2476 = !DILocation(line: 845, column: 20, scope: !2464)
!2477 = !DILocation(line: 846, column: 13, scope: !2478)
!2478 = distinct !DILexicalBlock(scope: !2454, file: !160, line: 846, column: 7)
!2479 = !DILocation(line: 846, column: 17, scope: !2478)
!2480 = !DILocation(line: 846, column: 7, scope: !2454)
!2481 = !DILocation(line: 848, column: 7, scope: !2482)
!2482 = distinct !DILexicalBlock(scope: !2478, file: !160, line: 847, column: 5)
!2483 = !DILocation(line: 849, column: 21, scope: !2482)
!2484 = !{!2470, !2451, i64 0}
!2485 = !DILocation(line: 850, column: 20, scope: !2482)
!2486 = !DILocation(line: 851, column: 5, scope: !2482)
!2487 = !DILocation(line: 852, column: 10, scope: !2488)
!2488 = distinct !DILexicalBlock(scope: !2454, file: !160, line: 852, column: 7)
!2489 = !DILocation(line: 852, column: 7, scope: !2454)
!2490 = !DILocation(line: 854, column: 13, scope: !2491)
!2491 = distinct !DILexicalBlock(scope: !2488, file: !160, line: 853, column: 5)
!2492 = !DILocation(line: 854, column: 7, scope: !2491)
!2493 = !DILocation(line: 855, column: 15, scope: !2491)
!2494 = !DILocation(line: 856, column: 5, scope: !2491)
!2495 = !DILocation(line: 857, column: 10, scope: !2454)
!2496 = !DILocation(line: 858, column: 1, scope: !2454)
!2497 = distinct !DISubprogram(name: "quotearg_n", scope: !160, file: !160, line: 922, type: !2498, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !132, variables: !2500)
!2498 = !DISubroutineType(types: !2499)
!2499 = !{!44, !85, !55}
!2500 = !{!2501, !2502}
!2501 = !DILocalVariable(name: "n", arg: 1, scope: !2497, file: !160, line: 922, type: !85)
!2502 = !DILocalVariable(name: "arg", arg: 2, scope: !2497, file: !160, line: 922, type: !55)
!2503 = !DILocation(line: 922, column: 17, scope: !2497)
!2504 = !DILocation(line: 922, column: 32, scope: !2497)
!2505 = !DILocation(line: 924, column: 10, scope: !2497)
!2506 = !DILocation(line: 924, column: 3, scope: !2497)
!2507 = distinct !DISubprogram(name: "quotearg_n_options", scope: !160, file: !160, line: 869, type: !2508, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !132, variables: !2510)
!2508 = !DISubroutineType(types: !2509)
!2509 = !{!44, !85, !55, !47, !1207}
!2510 = !{!2511, !2512, !2513, !2514, !2515, !2516, !2517, !2520, !2522, !2523, !2524}
!2511 = !DILocalVariable(name: "n", arg: 1, scope: !2507, file: !160, line: 869, type: !85)
!2512 = !DILocalVariable(name: "arg", arg: 2, scope: !2507, file: !160, line: 869, type: !55)
!2513 = !DILocalVariable(name: "argsize", arg: 3, scope: !2507, file: !160, line: 869, type: !47)
!2514 = !DILocalVariable(name: "options", arg: 4, scope: !2507, file: !160, line: 870, type: !1207)
!2515 = !DILocalVariable(name: "e", scope: !2507, file: !160, line: 872, type: !85)
!2516 = !DILocalVariable(name: "sv", scope: !2507, file: !160, line: 874, type: !187)
!2517 = !DILocalVariable(name: "preallocated", scope: !2518, file: !160, line: 881, type: !115)
!2518 = distinct !DILexicalBlock(scope: !2519, file: !160, line: 880, column: 5)
!2519 = distinct !DILexicalBlock(scope: !2507, file: !160, line: 879, column: 7)
!2520 = !DILocalVariable(name: "size", scope: !2521, file: !160, line: 894, type: !47)
!2521 = distinct !DILexicalBlock(scope: !2507, file: !160, line: 893, column: 3)
!2522 = !DILocalVariable(name: "val", scope: !2521, file: !160, line: 895, type: !44)
!2523 = !DILocalVariable(name: "flags", scope: !2521, file: !160, line: 897, type: !85)
!2524 = !DILocalVariable(name: "qsize", scope: !2521, file: !160, line: 898, type: !47)
!2525 = !DILocation(line: 869, column: 25, scope: !2507)
!2526 = !DILocation(line: 869, column: 40, scope: !2507)
!2527 = !DILocation(line: 869, column: 52, scope: !2507)
!2528 = !DILocation(line: 870, column: 51, scope: !2507)
!2529 = !DILocation(line: 872, column: 11, scope: !2507)
!2530 = !DILocation(line: 872, column: 7, scope: !2507)
!2531 = !DILocation(line: 874, column: 24, scope: !2507)
!2532 = !DILocation(line: 874, column: 19, scope: !2507)
!2533 = !DILocation(line: 876, column: 9, scope: !2534)
!2534 = distinct !DILexicalBlock(scope: !2507, file: !160, line: 876, column: 7)
!2535 = !DILocation(line: 876, column: 7, scope: !2507)
!2536 = !DILocation(line: 877, column: 5, scope: !2534)
!2537 = !DILocation(line: 879, column: 7, scope: !2519)
!2538 = !DILocation(line: 879, column: 14, scope: !2519)
!2539 = !DILocation(line: 879, column: 7, scope: !2507)
!2540 = !DILocation(line: 881, column: 31, scope: !2518)
!2541 = !DILocation(line: 883, column: 67, scope: !2542)
!2542 = distinct !DILexicalBlock(scope: !2518, file: !160, line: 883, column: 11)
!2543 = !DILocation(line: 883, column: 11, scope: !2518)
!2544 = !DILocation(line: 884, column: 9, scope: !2542)
!2545 = !DILocation(line: 886, column: 32, scope: !2546)
!2546 = !DILexicalBlockFile(scope: !2518, file: !160, discriminator: 3)
!2547 = !DILocation(line: 886, column: 61, scope: !2546)
!2548 = !DILocation(line: 886, column: 58, scope: !2546)
!2549 = !DILocation(line: 886, column: 66, scope: !2546)
!2550 = !DILocation(line: 886, column: 22, scope: !2546)
!2551 = !DILocation(line: 886, column: 15, scope: !2546)
!2552 = !DILocation(line: 887, column: 11, scope: !2518)
!2553 = !DILocation(line: 888, column: 15, scope: !2554)
!2554 = distinct !DILexicalBlock(scope: !2518, file: !160, line: 887, column: 11)
!2555 = !{i64 0, i64 8, !2450, i64 8, i64 8, !636}
!2556 = !DILocation(line: 888, column: 9, scope: !2554)
!2557 = !DILocation(line: 889, column: 20, scope: !2518)
!2558 = !DILocation(line: 889, column: 18, scope: !2518)
!2559 = !DILocation(line: 889, column: 7, scope: !2518)
!2560 = !DILocation(line: 889, column: 38, scope: !2518)
!2561 = !DILocation(line: 889, column: 31, scope: !2518)
!2562 = !DILocation(line: 889, column: 48, scope: !2518)
!2563 = !DILocation(line: 890, column: 14, scope: !2518)
!2564 = !DILocation(line: 891, column: 5, scope: !2518)
!2565 = !DILocation(line: 894, column: 19, scope: !2521)
!2566 = !DILocation(line: 894, column: 25, scope: !2521)
!2567 = !DILocation(line: 894, column: 12, scope: !2521)
!2568 = !DILocation(line: 895, column: 23, scope: !2521)
!2569 = !DILocation(line: 895, column: 11, scope: !2521)
!2570 = !DILocation(line: 897, column: 26, scope: !2521)
!2571 = !DILocation(line: 897, column: 32, scope: !2521)
!2572 = !DILocation(line: 897, column: 9, scope: !2521)
!2573 = !DILocation(line: 899, column: 55, scope: !2521)
!2574 = !DILocation(line: 900, column: 46, scope: !2521)
!2575 = !DILocation(line: 901, column: 55, scope: !2521)
!2576 = !DILocation(line: 902, column: 55, scope: !2521)
!2577 = !DILocation(line: 898, column: 20, scope: !2521)
!2578 = !DILocation(line: 898, column: 12, scope: !2521)
!2579 = !DILocation(line: 904, column: 14, scope: !2580)
!2580 = distinct !DILexicalBlock(scope: !2521, file: !160, line: 904, column: 9)
!2581 = !DILocation(line: 904, column: 9, scope: !2521)
!2582 = !DILocation(line: 906, column: 35, scope: !2583)
!2583 = distinct !DILexicalBlock(scope: !2580, file: !160, line: 905, column: 7)
!2584 = !DILocation(line: 906, column: 20, scope: !2583)
!2585 = !DILocation(line: 907, column: 17, scope: !2586)
!2586 = distinct !DILexicalBlock(scope: !2583, file: !160, line: 907, column: 13)
!2587 = !DILocation(line: 907, column: 13, scope: !2583)
!2588 = !DILocation(line: 908, column: 11, scope: !2586)
!2589 = !DILocation(line: 220, column: 20, scope: !2405, inlinedAt: !2590)
!2590 = distinct !DILocation(line: 909, column: 27, scope: !2583)
!2591 = !DILocation(line: 222, column: 10, scope: !2405, inlinedAt: !2590)
!2592 = !DILocation(line: 909, column: 19, scope: !2583)
!2593 = !DILocation(line: 910, column: 69, scope: !2583)
!2594 = !DILocation(line: 912, column: 44, scope: !2583)
!2595 = !DILocation(line: 913, column: 44, scope: !2583)
!2596 = !DILocation(line: 910, column: 9, scope: !2583)
!2597 = !DILocation(line: 914, column: 7, scope: !2583)
!2598 = !DILocation(line: 916, column: 11, scope: !2521)
!2599 = !DILocation(line: 917, column: 5, scope: !2521)
!2600 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !160, file: !160, line: 928, type: !2601, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !132, variables: !2603)
!2601 = !DISubroutineType(types: !2602)
!2602 = !{!44, !85, !55, !47}
!2603 = !{!2604, !2605, !2606}
!2604 = !DILocalVariable(name: "n", arg: 1, scope: !2600, file: !160, line: 928, type: !85)
!2605 = !DILocalVariable(name: "arg", arg: 2, scope: !2600, file: !160, line: 928, type: !55)
!2606 = !DILocalVariable(name: "argsize", arg: 3, scope: !2600, file: !160, line: 928, type: !47)
!2607 = !DILocation(line: 928, column: 21, scope: !2600)
!2608 = !DILocation(line: 928, column: 36, scope: !2600)
!2609 = !DILocation(line: 928, column: 48, scope: !2600)
!2610 = !DILocation(line: 930, column: 10, scope: !2600)
!2611 = !DILocation(line: 930, column: 3, scope: !2600)
!2612 = distinct !DISubprogram(name: "quotearg", scope: !160, file: !160, line: 934, type: !2613, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !132, variables: !2615)
!2613 = !DISubroutineType(types: !2614)
!2614 = !{!44, !55}
!2615 = !{!2616}
!2616 = !DILocalVariable(name: "arg", arg: 1, scope: !2612, file: !160, line: 934, type: !55)
!2617 = !DILocation(line: 934, column: 23, scope: !2612)
!2618 = !DILocation(line: 922, column: 17, scope: !2497, inlinedAt: !2619)
!2619 = distinct !DILocation(line: 936, column: 10, scope: !2612)
!2620 = !DILocation(line: 922, column: 32, scope: !2497, inlinedAt: !2619)
!2621 = !DILocation(line: 924, column: 10, scope: !2497, inlinedAt: !2619)
!2622 = !DILocation(line: 936, column: 3, scope: !2612)
!2623 = distinct !DISubprogram(name: "quotearg_mem", scope: !160, file: !160, line: 940, type: !2624, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !132, variables: !2626)
!2624 = !DISubroutineType(types: !2625)
!2625 = !{!44, !55, !47}
!2626 = !{!2627, !2628}
!2627 = !DILocalVariable(name: "arg", arg: 1, scope: !2623, file: !160, line: 940, type: !55)
!2628 = !DILocalVariable(name: "argsize", arg: 2, scope: !2623, file: !160, line: 940, type: !47)
!2629 = !DILocation(line: 940, column: 27, scope: !2623)
!2630 = !DILocation(line: 940, column: 39, scope: !2623)
!2631 = !DILocation(line: 928, column: 21, scope: !2600, inlinedAt: !2632)
!2632 = distinct !DILocation(line: 942, column: 10, scope: !2623)
!2633 = !DILocation(line: 928, column: 36, scope: !2600, inlinedAt: !2632)
!2634 = !DILocation(line: 928, column: 48, scope: !2600, inlinedAt: !2632)
!2635 = !DILocation(line: 930, column: 10, scope: !2600, inlinedAt: !2632)
!2636 = !DILocation(line: 942, column: 3, scope: !2623)
!2637 = distinct !DISubprogram(name: "quotearg_n_style", scope: !160, file: !160, line: 946, type: !2638, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !132, variables: !2640)
!2638 = !DISubroutineType(types: !2639)
!2639 = !{!44, !85, !5, !55}
!2640 = !{!2641, !2642, !2643, !2644}
!2641 = !DILocalVariable(name: "n", arg: 1, scope: !2637, file: !160, line: 946, type: !85)
!2642 = !DILocalVariable(name: "s", arg: 2, scope: !2637, file: !160, line: 946, type: !5)
!2643 = !DILocalVariable(name: "arg", arg: 3, scope: !2637, file: !160, line: 946, type: !55)
!2644 = !DILocalVariable(name: "o", scope: !2637, file: !160, line: 948, type: !1208)
!2645 = !DILocalVariable(name: "o", scope: !2646, file: !160, line: 187, type: !167)
!2646 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !160, file: !160, line: 185, type: !2647, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !132, variables: !2649)
!2647 = !DISubroutineType(types: !2648)
!2648 = !{!167, !5}
!2649 = !{!2650, !2645}
!2650 = !DILocalVariable(name: "style", arg: 1, scope: !2646, file: !160, line: 185, type: !5)
!2651 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!2652 = !DILocation(line: 187, column: 26, scope: !2646, inlinedAt: !2653)
!2653 = distinct !DILocation(line: 948, column: 36, scope: !2637)
!2654 = !DILocation(line: 946, column: 23, scope: !2637)
!2655 = !DILocation(line: 946, column: 45, scope: !2637)
!2656 = !DILocation(line: 946, column: 60, scope: !2637)
!2657 = !DILocation(line: 948, column: 3, scope: !2637)
!2658 = !DILocation(line: 948, column: 32, scope: !2637)
!2659 = !DILocation(line: 185, column: 48, scope: !2646, inlinedAt: !2653)
!2660 = !DILocation(line: 187, column: 3, scope: !2646, inlinedAt: !2653)
!2661 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!2662 = !DILocation(line: 188, column: 13, scope: !2663, inlinedAt: !2653)
!2663 = distinct !DILexicalBlock(scope: !2646, file: !160, line: 188, column: 7)
!2664 = !DILocation(line: 188, column: 7, scope: !2646, inlinedAt: !2653)
!2665 = !DILocation(line: 189, column: 5, scope: !2663, inlinedAt: !2653)
!2666 = !{!2667}
!2667 = distinct !{!2667, !2668, !"quoting_options_from_style: argument 0"}
!2668 = distinct !{!2668, !"quoting_options_from_style"}
!2669 = !DILocation(line: 191, column: 10, scope: !2646, inlinedAt: !2653)
!2670 = !DILocation(line: 192, column: 1, scope: !2646, inlinedAt: !2653)
!2671 = !DILocation(line: 949, column: 10, scope: !2637)
!2672 = !DILocation(line: 950, column: 1, scope: !2637)
!2673 = !DILocation(line: 949, column: 3, scope: !2637)
!2674 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !160, file: !160, line: 953, type: !2675, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !132, variables: !2677)
!2675 = !DISubroutineType(types: !2676)
!2676 = !{!44, !85, !5, !55, !47}
!2677 = !{!2678, !2679, !2680, !2681, !2682}
!2678 = !DILocalVariable(name: "n", arg: 1, scope: !2674, file: !160, line: 953, type: !85)
!2679 = !DILocalVariable(name: "s", arg: 2, scope: !2674, file: !160, line: 953, type: !5)
!2680 = !DILocalVariable(name: "arg", arg: 3, scope: !2674, file: !160, line: 954, type: !55)
!2681 = !DILocalVariable(name: "argsize", arg: 4, scope: !2674, file: !160, line: 954, type: !47)
!2682 = !DILocalVariable(name: "o", scope: !2674, file: !160, line: 956, type: !1208)
!2683 = !DILocation(line: 187, column: 26, scope: !2646, inlinedAt: !2684)
!2684 = distinct !DILocation(line: 956, column: 36, scope: !2674)
!2685 = !DILocation(line: 953, column: 27, scope: !2674)
!2686 = !DILocation(line: 953, column: 49, scope: !2674)
!2687 = !DILocation(line: 954, column: 35, scope: !2674)
!2688 = !DILocation(line: 954, column: 47, scope: !2674)
!2689 = !DILocation(line: 956, column: 3, scope: !2674)
!2690 = !DILocation(line: 956, column: 32, scope: !2674)
!2691 = !DILocation(line: 185, column: 48, scope: !2646, inlinedAt: !2684)
!2692 = !DILocation(line: 187, column: 3, scope: !2646, inlinedAt: !2684)
!2693 = !DILocation(line: 188, column: 13, scope: !2663, inlinedAt: !2684)
!2694 = !DILocation(line: 188, column: 7, scope: !2646, inlinedAt: !2684)
!2695 = !DILocation(line: 189, column: 5, scope: !2663, inlinedAt: !2684)
!2696 = !{!2697}
!2697 = distinct !{!2697, !2698, !"quoting_options_from_style: argument 0"}
!2698 = distinct !{!2698, !"quoting_options_from_style"}
!2699 = !DILocation(line: 191, column: 10, scope: !2646, inlinedAt: !2684)
!2700 = !DILocation(line: 192, column: 1, scope: !2646, inlinedAt: !2684)
!2701 = !DILocation(line: 957, column: 10, scope: !2674)
!2702 = !DILocation(line: 958, column: 1, scope: !2674)
!2703 = !DILocation(line: 957, column: 3, scope: !2674)
!2704 = distinct !DISubprogram(name: "quotearg_style", scope: !160, file: !160, line: 961, type: !2705, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !132, variables: !2707)
!2705 = !DISubroutineType(types: !2706)
!2706 = !{!44, !5, !55}
!2707 = !{!2708, !2709}
!2708 = !DILocalVariable(name: "s", arg: 1, scope: !2704, file: !160, line: 961, type: !5)
!2709 = !DILocalVariable(name: "arg", arg: 2, scope: !2704, file: !160, line: 961, type: !55)
!2710 = !DILocation(line: 187, column: 26, scope: !2646, inlinedAt: !2711)
!2711 = distinct !DILocation(line: 948, column: 36, scope: !2637, inlinedAt: !2712)
!2712 = distinct !DILocation(line: 963, column: 10, scope: !2704)
!2713 = !DILocation(line: 961, column: 36, scope: !2704)
!2714 = !DILocation(line: 961, column: 51, scope: !2704)
!2715 = !DILocation(line: 946, column: 23, scope: !2637, inlinedAt: !2712)
!2716 = !DILocation(line: 946, column: 45, scope: !2637, inlinedAt: !2712)
!2717 = !DILocation(line: 946, column: 60, scope: !2637, inlinedAt: !2712)
!2718 = !DILocation(line: 948, column: 3, scope: !2637, inlinedAt: !2712)
!2719 = !DILocation(line: 948, column: 32, scope: !2637, inlinedAt: !2712)
!2720 = !DILocation(line: 185, column: 48, scope: !2646, inlinedAt: !2711)
!2721 = !DILocation(line: 187, column: 3, scope: !2646, inlinedAt: !2711)
!2722 = !DILocation(line: 188, column: 13, scope: !2663, inlinedAt: !2711)
!2723 = !DILocation(line: 188, column: 7, scope: !2646, inlinedAt: !2711)
!2724 = !DILocation(line: 189, column: 5, scope: !2663, inlinedAt: !2711)
!2725 = !{!2726}
!2726 = distinct !{!2726, !2727, !"quoting_options_from_style: argument 0"}
!2727 = distinct !{!2727, !"quoting_options_from_style"}
!2728 = !DILocation(line: 191, column: 10, scope: !2646, inlinedAt: !2711)
!2729 = !DILocation(line: 192, column: 1, scope: !2646, inlinedAt: !2711)
!2730 = !DILocation(line: 949, column: 10, scope: !2637, inlinedAt: !2712)
!2731 = !DILocation(line: 950, column: 1, scope: !2637, inlinedAt: !2712)
!2732 = !DILocation(line: 963, column: 3, scope: !2704)
!2733 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !160, file: !160, line: 967, type: !2734, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !132, variables: !2736)
!2734 = !DISubroutineType(types: !2735)
!2735 = !{!44, !5, !55, !47}
!2736 = !{!2737, !2738, !2739}
!2737 = !DILocalVariable(name: "s", arg: 1, scope: !2733, file: !160, line: 967, type: !5)
!2738 = !DILocalVariable(name: "arg", arg: 2, scope: !2733, file: !160, line: 967, type: !55)
!2739 = !DILocalVariable(name: "argsize", arg: 3, scope: !2733, file: !160, line: 967, type: !47)
!2740 = !DILocation(line: 187, column: 26, scope: !2646, inlinedAt: !2741)
!2741 = distinct !DILocation(line: 956, column: 36, scope: !2674, inlinedAt: !2742)
!2742 = distinct !DILocation(line: 969, column: 10, scope: !2733)
!2743 = !DILocation(line: 967, column: 40, scope: !2733)
!2744 = !DILocation(line: 967, column: 55, scope: !2733)
!2745 = !DILocation(line: 967, column: 67, scope: !2733)
!2746 = !DILocation(line: 953, column: 27, scope: !2674, inlinedAt: !2742)
!2747 = !DILocation(line: 953, column: 49, scope: !2674, inlinedAt: !2742)
!2748 = !DILocation(line: 954, column: 35, scope: !2674, inlinedAt: !2742)
!2749 = !DILocation(line: 954, column: 47, scope: !2674, inlinedAt: !2742)
!2750 = !DILocation(line: 956, column: 3, scope: !2674, inlinedAt: !2742)
!2751 = !DILocation(line: 956, column: 32, scope: !2674, inlinedAt: !2742)
!2752 = !DILocation(line: 185, column: 48, scope: !2646, inlinedAt: !2741)
!2753 = !DILocation(line: 187, column: 3, scope: !2646, inlinedAt: !2741)
!2754 = !DILocation(line: 188, column: 13, scope: !2663, inlinedAt: !2741)
!2755 = !DILocation(line: 188, column: 7, scope: !2646, inlinedAt: !2741)
!2756 = !DILocation(line: 189, column: 5, scope: !2663, inlinedAt: !2741)
!2757 = !{!2758}
!2758 = distinct !{!2758, !2759, !"quoting_options_from_style: argument 0"}
!2759 = distinct !{!2759, !"quoting_options_from_style"}
!2760 = !DILocation(line: 191, column: 10, scope: !2646, inlinedAt: !2741)
!2761 = !DILocation(line: 192, column: 1, scope: !2646, inlinedAt: !2741)
!2762 = !DILocation(line: 957, column: 10, scope: !2674, inlinedAt: !2742)
!2763 = !DILocation(line: 958, column: 1, scope: !2674, inlinedAt: !2742)
!2764 = !DILocation(line: 969, column: 3, scope: !2733)
!2765 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !160, file: !160, line: 973, type: !2766, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !132, variables: !2768)
!2766 = !DISubroutineType(types: !2767)
!2767 = !{!44, !55, !47, !45}
!2768 = !{!2769, !2770, !2771, !2772}
!2769 = !DILocalVariable(name: "arg", arg: 1, scope: !2765, file: !160, line: 973, type: !55)
!2770 = !DILocalVariable(name: "argsize", arg: 2, scope: !2765, file: !160, line: 973, type: !47)
!2771 = !DILocalVariable(name: "ch", arg: 3, scope: !2765, file: !160, line: 973, type: !45)
!2772 = !DILocalVariable(name: "options", scope: !2765, file: !160, line: 975, type: !167)
!2773 = !DILocation(line: 973, column: 32, scope: !2765)
!2774 = !DILocation(line: 973, column: 44, scope: !2765)
!2775 = !DILocation(line: 973, column: 58, scope: !2765)
!2776 = !DILocation(line: 975, column: 3, scope: !2765)
!2777 = !DILocation(line: 976, column: 13, scope: !2765)
!2778 = !{i64 0, i64 4, !856, i64 4, i64 4, !716, i64 8, i64 32, !856, i64 40, i64 8, !636, i64 48, i64 8, !636}
!2779 = !DILocation(line: 975, column: 26, scope: !2765)
!2780 = !DILocation(line: 144, column: 43, scope: !1231, inlinedAt: !2781)
!2781 = distinct !DILocation(line: 977, column: 3, scope: !2765)
!2782 = !DILocation(line: 144, column: 51, scope: !1231, inlinedAt: !2781)
!2783 = !DILocation(line: 144, column: 58, scope: !1231, inlinedAt: !2781)
!2784 = !DILocation(line: 146, column: 17, scope: !1231, inlinedAt: !2781)
!2785 = !DILocation(line: 148, column: 62, scope: !1249, inlinedAt: !2781)
!2786 = !DILocation(line: 148, column: 57, scope: !1249, inlinedAt: !2781)
!2787 = !DILocation(line: 147, column: 17, scope: !1231, inlinedAt: !2781)
!2788 = !DILocation(line: 149, column: 18, scope: !1231, inlinedAt: !2781)
!2789 = !DILocation(line: 149, column: 15, scope: !1231, inlinedAt: !2781)
!2790 = !DILocation(line: 149, column: 7, scope: !1231, inlinedAt: !2781)
!2791 = !DILocation(line: 150, column: 12, scope: !1231, inlinedAt: !2781)
!2792 = !DILocation(line: 150, column: 15, scope: !1231, inlinedAt: !2781)
!2793 = !DILocation(line: 150, column: 25, scope: !1231, inlinedAt: !2781)
!2794 = !DILocation(line: 150, column: 7, scope: !1231, inlinedAt: !2781)
!2795 = !DILocation(line: 151, column: 18, scope: !1231, inlinedAt: !2781)
!2796 = !DILocation(line: 151, column: 23, scope: !1231, inlinedAt: !2781)
!2797 = !DILocation(line: 151, column: 6, scope: !1231, inlinedAt: !2781)
!2798 = !DILocation(line: 978, column: 10, scope: !2765)
!2799 = !DILocation(line: 979, column: 1, scope: !2765)
!2800 = !DILocation(line: 978, column: 3, scope: !2765)
!2801 = distinct !DISubprogram(name: "quotearg_char", scope: !160, file: !160, line: 982, type: !2802, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !132, variables: !2804)
!2802 = !DISubroutineType(types: !2803)
!2803 = !{!44, !55, !45}
!2804 = !{!2805, !2806}
!2805 = !DILocalVariable(name: "arg", arg: 1, scope: !2801, file: !160, line: 982, type: !55)
!2806 = !DILocalVariable(name: "ch", arg: 2, scope: !2801, file: !160, line: 982, type: !45)
!2807 = !DILocation(line: 982, column: 28, scope: !2801)
!2808 = !DILocation(line: 982, column: 38, scope: !2801)
!2809 = !DILocation(line: 973, column: 32, scope: !2765, inlinedAt: !2810)
!2810 = distinct !DILocation(line: 984, column: 10, scope: !2801)
!2811 = !DILocation(line: 973, column: 44, scope: !2765, inlinedAt: !2810)
!2812 = !DILocation(line: 973, column: 58, scope: !2765, inlinedAt: !2810)
!2813 = !DILocation(line: 975, column: 3, scope: !2765, inlinedAt: !2810)
!2814 = !DILocation(line: 976, column: 13, scope: !2765, inlinedAt: !2810)
!2815 = !DILocation(line: 975, column: 26, scope: !2765, inlinedAt: !2810)
!2816 = !DILocation(line: 144, column: 43, scope: !1231, inlinedAt: !2817)
!2817 = distinct !DILocation(line: 977, column: 3, scope: !2765, inlinedAt: !2810)
!2818 = !DILocation(line: 144, column: 51, scope: !1231, inlinedAt: !2817)
!2819 = !DILocation(line: 144, column: 58, scope: !1231, inlinedAt: !2817)
!2820 = !DILocation(line: 146, column: 17, scope: !1231, inlinedAt: !2817)
!2821 = !DILocation(line: 148, column: 62, scope: !1249, inlinedAt: !2817)
!2822 = !DILocation(line: 148, column: 57, scope: !1249, inlinedAt: !2817)
!2823 = !DILocation(line: 147, column: 17, scope: !1231, inlinedAt: !2817)
!2824 = !DILocation(line: 149, column: 18, scope: !1231, inlinedAt: !2817)
!2825 = !DILocation(line: 149, column: 15, scope: !1231, inlinedAt: !2817)
!2826 = !DILocation(line: 149, column: 7, scope: !1231, inlinedAt: !2817)
!2827 = !DILocation(line: 150, column: 12, scope: !1231, inlinedAt: !2817)
!2828 = !DILocation(line: 150, column: 15, scope: !1231, inlinedAt: !2817)
!2829 = !DILocation(line: 150, column: 25, scope: !1231, inlinedAt: !2817)
!2830 = !DILocation(line: 150, column: 7, scope: !1231, inlinedAt: !2817)
!2831 = !DILocation(line: 151, column: 18, scope: !1231, inlinedAt: !2817)
!2832 = !DILocation(line: 151, column: 23, scope: !1231, inlinedAt: !2817)
!2833 = !DILocation(line: 151, column: 6, scope: !1231, inlinedAt: !2817)
!2834 = !DILocation(line: 978, column: 10, scope: !2765, inlinedAt: !2810)
!2835 = !DILocation(line: 979, column: 1, scope: !2765, inlinedAt: !2810)
!2836 = !DILocation(line: 984, column: 3, scope: !2801)
!2837 = distinct !DISubprogram(name: "quotearg_colon", scope: !160, file: !160, line: 988, type: !2613, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !132, variables: !2838)
!2838 = !{!2839}
!2839 = !DILocalVariable(name: "arg", arg: 1, scope: !2837, file: !160, line: 988, type: !55)
!2840 = !DILocation(line: 988, column: 29, scope: !2837)
!2841 = !DILocation(line: 982, column: 28, scope: !2801, inlinedAt: !2842)
!2842 = distinct !DILocation(line: 990, column: 10, scope: !2837)
!2843 = !DILocation(line: 982, column: 38, scope: !2801, inlinedAt: !2842)
!2844 = !DILocation(line: 973, column: 32, scope: !2765, inlinedAt: !2845)
!2845 = distinct !DILocation(line: 984, column: 10, scope: !2801, inlinedAt: !2842)
!2846 = !DILocation(line: 973, column: 44, scope: !2765, inlinedAt: !2845)
!2847 = !DILocation(line: 973, column: 58, scope: !2765, inlinedAt: !2845)
!2848 = !DILocation(line: 975, column: 3, scope: !2765, inlinedAt: !2845)
!2849 = !DILocation(line: 976, column: 13, scope: !2765, inlinedAt: !2845)
!2850 = !DILocation(line: 975, column: 26, scope: !2765, inlinedAt: !2845)
!2851 = !DILocation(line: 144, column: 43, scope: !1231, inlinedAt: !2852)
!2852 = distinct !DILocation(line: 977, column: 3, scope: !2765, inlinedAt: !2845)
!2853 = !DILocation(line: 144, column: 51, scope: !1231, inlinedAt: !2852)
!2854 = !DILocation(line: 144, column: 58, scope: !1231, inlinedAt: !2852)
!2855 = !DILocation(line: 146, column: 17, scope: !1231, inlinedAt: !2852)
!2856 = !DILocation(line: 148, column: 57, scope: !1249, inlinedAt: !2852)
!2857 = !DILocation(line: 147, column: 17, scope: !1231, inlinedAt: !2852)
!2858 = !DILocation(line: 149, column: 7, scope: !1231, inlinedAt: !2852)
!2859 = !DILocation(line: 150, column: 12, scope: !1231, inlinedAt: !2852)
!2860 = !DILocation(line: 151, column: 6, scope: !1231, inlinedAt: !2852)
!2861 = !DILocation(line: 978, column: 10, scope: !2765, inlinedAt: !2845)
!2862 = !DILocation(line: 979, column: 1, scope: !2765, inlinedAt: !2845)
!2863 = !DILocation(line: 990, column: 3, scope: !2837)
!2864 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !160, file: !160, line: 994, type: !2624, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !132, variables: !2865)
!2865 = !{!2866, !2867}
!2866 = !DILocalVariable(name: "arg", arg: 1, scope: !2864, file: !160, line: 994, type: !55)
!2867 = !DILocalVariable(name: "argsize", arg: 2, scope: !2864, file: !160, line: 994, type: !47)
!2868 = !DILocation(line: 994, column: 33, scope: !2864)
!2869 = !DILocation(line: 994, column: 45, scope: !2864)
!2870 = !DILocation(line: 973, column: 32, scope: !2765, inlinedAt: !2871)
!2871 = distinct !DILocation(line: 996, column: 10, scope: !2864)
!2872 = !DILocation(line: 973, column: 44, scope: !2765, inlinedAt: !2871)
!2873 = !DILocation(line: 973, column: 58, scope: !2765, inlinedAt: !2871)
!2874 = !DILocation(line: 975, column: 3, scope: !2765, inlinedAt: !2871)
!2875 = !DILocation(line: 976, column: 13, scope: !2765, inlinedAt: !2871)
!2876 = !DILocation(line: 975, column: 26, scope: !2765, inlinedAt: !2871)
!2877 = !DILocation(line: 144, column: 43, scope: !1231, inlinedAt: !2878)
!2878 = distinct !DILocation(line: 977, column: 3, scope: !2765, inlinedAt: !2871)
!2879 = !DILocation(line: 144, column: 51, scope: !1231, inlinedAt: !2878)
!2880 = !DILocation(line: 144, column: 58, scope: !1231, inlinedAt: !2878)
!2881 = !DILocation(line: 146, column: 17, scope: !1231, inlinedAt: !2878)
!2882 = !DILocation(line: 148, column: 57, scope: !1249, inlinedAt: !2878)
!2883 = !DILocation(line: 147, column: 17, scope: !1231, inlinedAt: !2878)
!2884 = !DILocation(line: 149, column: 7, scope: !1231, inlinedAt: !2878)
!2885 = !DILocation(line: 150, column: 12, scope: !1231, inlinedAt: !2878)
!2886 = !DILocation(line: 151, column: 6, scope: !1231, inlinedAt: !2878)
!2887 = !DILocation(line: 978, column: 10, scope: !2765, inlinedAt: !2871)
!2888 = !DILocation(line: 979, column: 1, scope: !2765, inlinedAt: !2871)
!2889 = !DILocation(line: 996, column: 3, scope: !2864)
!2890 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !160, file: !160, line: 1000, type: !2638, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !132, variables: !2891)
!2891 = !{!2892, !2893, !2894, !2895}
!2892 = !DILocalVariable(name: "n", arg: 1, scope: !2890, file: !160, line: 1000, type: !85)
!2893 = !DILocalVariable(name: "s", arg: 2, scope: !2890, file: !160, line: 1000, type: !5)
!2894 = !DILocalVariable(name: "arg", arg: 3, scope: !2890, file: !160, line: 1000, type: !55)
!2895 = !DILocalVariable(name: "options", scope: !2890, file: !160, line: 1002, type: !167)
!2896 = !DILocation(line: 187, column: 26, scope: !2646, inlinedAt: !2897)
!2897 = distinct !DILocation(line: 1003, column: 13, scope: !2890)
!2898 = !DILocation(line: 1000, column: 29, scope: !2890)
!2899 = !DILocation(line: 1000, column: 51, scope: !2890)
!2900 = !DILocation(line: 1000, column: 66, scope: !2890)
!2901 = !DILocation(line: 1002, column: 3, scope: !2890)
!2902 = !DILocation(line: 185, column: 48, scope: !2646, inlinedAt: !2897)
!2903 = !DILocation(line: 187, column: 3, scope: !2646, inlinedAt: !2897)
!2904 = !DILocation(line: 188, column: 13, scope: !2663, inlinedAt: !2897)
!2905 = !DILocation(line: 188, column: 7, scope: !2646, inlinedAt: !2897)
!2906 = !DILocation(line: 189, column: 5, scope: !2663, inlinedAt: !2897)
!2907 = !{!2908}
!2908 = distinct !{!2908, !2909, !"quoting_options_from_style: argument 0"}
!2909 = distinct !{!2909, !"quoting_options_from_style"}
!2910 = !DILocation(line: 191, column: 10, scope: !2646, inlinedAt: !2897)
!2911 = !DILocation(line: 192, column: 1, scope: !2646, inlinedAt: !2897)
!2912 = !DILocation(line: 1003, column: 13, scope: !2890)
!2913 = !DILocation(line: 1002, column: 26, scope: !2890)
!2914 = !DILocation(line: 144, column: 43, scope: !1231, inlinedAt: !2915)
!2915 = distinct !DILocation(line: 1004, column: 3, scope: !2890)
!2916 = !DILocation(line: 144, column: 51, scope: !1231, inlinedAt: !2915)
!2917 = !DILocation(line: 144, column: 58, scope: !1231, inlinedAt: !2915)
!2918 = !DILocation(line: 146, column: 17, scope: !1231, inlinedAt: !2915)
!2919 = !DILocation(line: 148, column: 57, scope: !1249, inlinedAt: !2915)
!2920 = !DILocation(line: 147, column: 17, scope: !1231, inlinedAt: !2915)
!2921 = !DILocation(line: 149, column: 7, scope: !1231, inlinedAt: !2915)
!2922 = !DILocation(line: 150, column: 12, scope: !1231, inlinedAt: !2915)
!2923 = !DILocation(line: 151, column: 6, scope: !1231, inlinedAt: !2915)
!2924 = !DILocation(line: 1005, column: 10, scope: !2890)
!2925 = !DILocation(line: 1006, column: 1, scope: !2890)
!2926 = !DILocation(line: 1005, column: 3, scope: !2890)
!2927 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !160, file: !160, line: 1009, type: !2928, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !132, variables: !2930)
!2928 = !DISubroutineType(types: !2929)
!2929 = !{!44, !85, !55, !55, !55}
!2930 = !{!2931, !2932, !2933, !2934}
!2931 = !DILocalVariable(name: "n", arg: 1, scope: !2927, file: !160, line: 1009, type: !85)
!2932 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2927, file: !160, line: 1009, type: !55)
!2933 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2927, file: !160, line: 1010, type: !55)
!2934 = !DILocalVariable(name: "arg", arg: 4, scope: !2927, file: !160, line: 1010, type: !55)
!2935 = !DILocation(line: 1009, column: 24, scope: !2927)
!2936 = !DILocation(line: 1009, column: 39, scope: !2927)
!2937 = !DILocation(line: 1010, column: 32, scope: !2927)
!2938 = !DILocation(line: 1010, column: 57, scope: !2927)
!2939 = !DILocalVariable(name: "n", arg: 1, scope: !2940, file: !160, line: 1017, type: !85)
!2940 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !160, file: !160, line: 1017, type: !2941, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !132, variables: !2943)
!2941 = !DISubroutineType(types: !2942)
!2942 = !{!44, !85, !55, !55, !55, !47}
!2943 = !{!2939, !2944, !2945, !2946, !2947, !2948}
!2944 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2940, file: !160, line: 1017, type: !55)
!2945 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2940, file: !160, line: 1018, type: !55)
!2946 = !DILocalVariable(name: "arg", arg: 4, scope: !2940, file: !160, line: 1019, type: !55)
!2947 = !DILocalVariable(name: "argsize", arg: 5, scope: !2940, file: !160, line: 1019, type: !47)
!2948 = !DILocalVariable(name: "o", scope: !2940, file: !160, line: 1021, type: !167)
!2949 = !DILocation(line: 1017, column: 28, scope: !2940, inlinedAt: !2950)
!2950 = distinct !DILocation(line: 1012, column: 10, scope: !2927)
!2951 = !DILocation(line: 1017, column: 43, scope: !2940, inlinedAt: !2950)
!2952 = !DILocation(line: 1018, column: 36, scope: !2940, inlinedAt: !2950)
!2953 = !DILocation(line: 1019, column: 36, scope: !2940, inlinedAt: !2950)
!2954 = !DILocation(line: 1019, column: 48, scope: !2940, inlinedAt: !2950)
!2955 = !DILocation(line: 1021, column: 3, scope: !2940, inlinedAt: !2950)
!2956 = !DILocation(line: 1021, column: 30, scope: !2940, inlinedAt: !2950)
!2957 = !DILocation(line: 1021, column: 26, scope: !2940, inlinedAt: !2950)
!2958 = !DILocation(line: 171, column: 45, scope: !1281, inlinedAt: !2959)
!2959 = distinct !DILocation(line: 1022, column: 3, scope: !2940, inlinedAt: !2950)
!2960 = !DILocation(line: 172, column: 33, scope: !1281, inlinedAt: !2959)
!2961 = !DILocation(line: 172, column: 57, scope: !1281, inlinedAt: !2959)
!2962 = !DILocation(line: 176, column: 6, scope: !1281, inlinedAt: !2959)
!2963 = !DILocation(line: 176, column: 12, scope: !1281, inlinedAt: !2959)
!2964 = !DILocation(line: 177, column: 8, scope: !1297, inlinedAt: !2959)
!2965 = !DILocation(line: 177, column: 23, scope: !1299, inlinedAt: !2959)
!2966 = !DILocation(line: 177, column: 19, scope: !1297, inlinedAt: !2959)
!2967 = !DILocation(line: 178, column: 5, scope: !1297, inlinedAt: !2959)
!2968 = !DILocation(line: 179, column: 6, scope: !1281, inlinedAt: !2959)
!2969 = !DILocation(line: 179, column: 17, scope: !1281, inlinedAt: !2959)
!2970 = !DILocation(line: 180, column: 6, scope: !1281, inlinedAt: !2959)
!2971 = !DILocation(line: 180, column: 18, scope: !1281, inlinedAt: !2959)
!2972 = !DILocation(line: 1023, column: 10, scope: !2940, inlinedAt: !2950)
!2973 = !DILocation(line: 1024, column: 1, scope: !2940, inlinedAt: !2950)
!2974 = !DILocation(line: 1012, column: 3, scope: !2927)
!2975 = !DILocation(line: 1017, column: 28, scope: !2940)
!2976 = !DILocation(line: 1017, column: 43, scope: !2940)
!2977 = !DILocation(line: 1018, column: 36, scope: !2940)
!2978 = !DILocation(line: 1019, column: 36, scope: !2940)
!2979 = !DILocation(line: 1019, column: 48, scope: !2940)
!2980 = !DILocation(line: 1021, column: 3, scope: !2940)
!2981 = !DILocation(line: 1021, column: 30, scope: !2940)
!2982 = !DILocation(line: 1021, column: 26, scope: !2940)
!2983 = !DILocation(line: 171, column: 45, scope: !1281, inlinedAt: !2984)
!2984 = distinct !DILocation(line: 1022, column: 3, scope: !2940)
!2985 = !DILocation(line: 172, column: 33, scope: !1281, inlinedAt: !2984)
!2986 = !DILocation(line: 172, column: 57, scope: !1281, inlinedAt: !2984)
!2987 = !DILocation(line: 176, column: 6, scope: !1281, inlinedAt: !2984)
!2988 = !DILocation(line: 176, column: 12, scope: !1281, inlinedAt: !2984)
!2989 = !DILocation(line: 177, column: 8, scope: !1297, inlinedAt: !2984)
!2990 = !DILocation(line: 177, column: 23, scope: !1299, inlinedAt: !2984)
!2991 = !DILocation(line: 177, column: 19, scope: !1297, inlinedAt: !2984)
!2992 = !DILocation(line: 178, column: 5, scope: !1297, inlinedAt: !2984)
!2993 = !DILocation(line: 179, column: 6, scope: !1281, inlinedAt: !2984)
!2994 = !DILocation(line: 179, column: 17, scope: !1281, inlinedAt: !2984)
!2995 = !DILocation(line: 180, column: 6, scope: !1281, inlinedAt: !2984)
!2996 = !DILocation(line: 180, column: 18, scope: !1281, inlinedAt: !2984)
!2997 = !DILocation(line: 1023, column: 10, scope: !2940)
!2998 = !DILocation(line: 1024, column: 1, scope: !2940)
!2999 = !DILocation(line: 1023, column: 3, scope: !2940)
!3000 = distinct !DISubprogram(name: "quotearg_custom", scope: !160, file: !160, line: 1027, type: !3001, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !132, variables: !3003)
!3001 = !DISubroutineType(types: !3002)
!3002 = !{!44, !55, !55, !55}
!3003 = !{!3004, !3005, !3006}
!3004 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3000, file: !160, line: 1027, type: !55)
!3005 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3000, file: !160, line: 1027, type: !55)
!3006 = !DILocalVariable(name: "arg", arg: 3, scope: !3000, file: !160, line: 1028, type: !55)
!3007 = !DILocation(line: 1027, column: 30, scope: !3000)
!3008 = !DILocation(line: 1027, column: 54, scope: !3000)
!3009 = !DILocation(line: 1028, column: 30, scope: !3000)
!3010 = !DILocation(line: 1009, column: 24, scope: !2927, inlinedAt: !3011)
!3011 = distinct !DILocation(line: 1030, column: 10, scope: !3000)
!3012 = !DILocation(line: 1009, column: 39, scope: !2927, inlinedAt: !3011)
!3013 = !DILocation(line: 1010, column: 32, scope: !2927, inlinedAt: !3011)
!3014 = !DILocation(line: 1010, column: 57, scope: !2927, inlinedAt: !3011)
!3015 = !DILocation(line: 1017, column: 28, scope: !2940, inlinedAt: !3016)
!3016 = distinct !DILocation(line: 1012, column: 10, scope: !2927, inlinedAt: !3011)
!3017 = !DILocation(line: 1017, column: 43, scope: !2940, inlinedAt: !3016)
!3018 = !DILocation(line: 1018, column: 36, scope: !2940, inlinedAt: !3016)
!3019 = !DILocation(line: 1019, column: 36, scope: !2940, inlinedAt: !3016)
!3020 = !DILocation(line: 1019, column: 48, scope: !2940, inlinedAt: !3016)
!3021 = !DILocation(line: 1021, column: 3, scope: !2940, inlinedAt: !3016)
!3022 = !DILocation(line: 1021, column: 30, scope: !2940, inlinedAt: !3016)
!3023 = !DILocation(line: 1021, column: 26, scope: !2940, inlinedAt: !3016)
!3024 = !DILocation(line: 171, column: 45, scope: !1281, inlinedAt: !3025)
!3025 = distinct !DILocation(line: 1022, column: 3, scope: !2940, inlinedAt: !3016)
!3026 = !DILocation(line: 172, column: 33, scope: !1281, inlinedAt: !3025)
!3027 = !DILocation(line: 172, column: 57, scope: !1281, inlinedAt: !3025)
!3028 = !DILocation(line: 176, column: 6, scope: !1281, inlinedAt: !3025)
!3029 = !DILocation(line: 176, column: 12, scope: !1281, inlinedAt: !3025)
!3030 = !DILocation(line: 177, column: 8, scope: !1297, inlinedAt: !3025)
!3031 = !DILocation(line: 177, column: 23, scope: !1299, inlinedAt: !3025)
!3032 = !DILocation(line: 177, column: 19, scope: !1297, inlinedAt: !3025)
!3033 = !DILocation(line: 178, column: 5, scope: !1297, inlinedAt: !3025)
!3034 = !DILocation(line: 179, column: 6, scope: !1281, inlinedAt: !3025)
!3035 = !DILocation(line: 179, column: 17, scope: !1281, inlinedAt: !3025)
!3036 = !DILocation(line: 180, column: 6, scope: !1281, inlinedAt: !3025)
!3037 = !DILocation(line: 180, column: 18, scope: !1281, inlinedAt: !3025)
!3038 = !DILocation(line: 1023, column: 10, scope: !2940, inlinedAt: !3016)
!3039 = !DILocation(line: 1024, column: 1, scope: !2940, inlinedAt: !3016)
!3040 = !DILocation(line: 1030, column: 3, scope: !3000)
!3041 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !160, file: !160, line: 1034, type: !3042, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !132, variables: !3044)
!3042 = !DISubroutineType(types: !3043)
!3043 = !{!44, !55, !55, !55, !47}
!3044 = !{!3045, !3046, !3047, !3048}
!3045 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3041, file: !160, line: 1034, type: !55)
!3046 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3041, file: !160, line: 1034, type: !55)
!3047 = !DILocalVariable(name: "arg", arg: 3, scope: !3041, file: !160, line: 1035, type: !55)
!3048 = !DILocalVariable(name: "argsize", arg: 4, scope: !3041, file: !160, line: 1035, type: !47)
!3049 = !DILocation(line: 1034, column: 34, scope: !3041)
!3050 = !DILocation(line: 1034, column: 58, scope: !3041)
!3051 = !DILocation(line: 1035, column: 34, scope: !3041)
!3052 = !DILocation(line: 1035, column: 46, scope: !3041)
!3053 = !DILocation(line: 1017, column: 28, scope: !2940, inlinedAt: !3054)
!3054 = distinct !DILocation(line: 1037, column: 10, scope: !3041)
!3055 = !DILocation(line: 1017, column: 43, scope: !2940, inlinedAt: !3054)
!3056 = !DILocation(line: 1018, column: 36, scope: !2940, inlinedAt: !3054)
!3057 = !DILocation(line: 1019, column: 36, scope: !2940, inlinedAt: !3054)
!3058 = !DILocation(line: 1019, column: 48, scope: !2940, inlinedAt: !3054)
!3059 = !DILocation(line: 1021, column: 3, scope: !2940, inlinedAt: !3054)
!3060 = !DILocation(line: 1021, column: 30, scope: !2940, inlinedAt: !3054)
!3061 = !DILocation(line: 1021, column: 26, scope: !2940, inlinedAt: !3054)
!3062 = !DILocation(line: 171, column: 45, scope: !1281, inlinedAt: !3063)
!3063 = distinct !DILocation(line: 1022, column: 3, scope: !2940, inlinedAt: !3054)
!3064 = !DILocation(line: 172, column: 33, scope: !1281, inlinedAt: !3063)
!3065 = !DILocation(line: 172, column: 57, scope: !1281, inlinedAt: !3063)
!3066 = !DILocation(line: 176, column: 6, scope: !1281, inlinedAt: !3063)
!3067 = !DILocation(line: 176, column: 12, scope: !1281, inlinedAt: !3063)
!3068 = !DILocation(line: 177, column: 8, scope: !1297, inlinedAt: !3063)
!3069 = !DILocation(line: 177, column: 23, scope: !1299, inlinedAt: !3063)
!3070 = !DILocation(line: 177, column: 19, scope: !1297, inlinedAt: !3063)
!3071 = !DILocation(line: 178, column: 5, scope: !1297, inlinedAt: !3063)
!3072 = !DILocation(line: 179, column: 6, scope: !1281, inlinedAt: !3063)
!3073 = !DILocation(line: 179, column: 17, scope: !1281, inlinedAt: !3063)
!3074 = !DILocation(line: 180, column: 6, scope: !1281, inlinedAt: !3063)
!3075 = !DILocation(line: 180, column: 18, scope: !1281, inlinedAt: !3063)
!3076 = !DILocation(line: 1023, column: 10, scope: !2940, inlinedAt: !3054)
!3077 = !DILocation(line: 1024, column: 1, scope: !2940, inlinedAt: !3054)
!3078 = !DILocation(line: 1037, column: 3, scope: !3041)
!3079 = distinct !DISubprogram(name: "quote_n_mem", scope: !160, file: !160, line: 1052, type: !3080, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !132, variables: !3082)
!3080 = !DISubroutineType(types: !3081)
!3081 = !{!55, !85, !55, !47}
!3082 = !{!3083, !3084, !3085}
!3083 = !DILocalVariable(name: "n", arg: 1, scope: !3079, file: !160, line: 1052, type: !85)
!3084 = !DILocalVariable(name: "arg", arg: 2, scope: !3079, file: !160, line: 1052, type: !55)
!3085 = !DILocalVariable(name: "argsize", arg: 3, scope: !3079, file: !160, line: 1052, type: !47)
!3086 = !DILocation(line: 1052, column: 18, scope: !3079)
!3087 = !DILocation(line: 1052, column: 33, scope: !3079)
!3088 = !DILocation(line: 1052, column: 45, scope: !3079)
!3089 = !DILocation(line: 1054, column: 10, scope: !3079)
!3090 = !DILocation(line: 1054, column: 3, scope: !3079)
!3091 = distinct !DISubprogram(name: "quote_mem", scope: !160, file: !160, line: 1058, type: !3092, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !132, variables: !3094)
!3092 = !DISubroutineType(types: !3093)
!3093 = !{!55, !55, !47}
!3094 = !{!3095, !3096}
!3095 = !DILocalVariable(name: "arg", arg: 1, scope: !3091, file: !160, line: 1058, type: !55)
!3096 = !DILocalVariable(name: "argsize", arg: 2, scope: !3091, file: !160, line: 1058, type: !47)
!3097 = !DILocation(line: 1058, column: 24, scope: !3091)
!3098 = !DILocation(line: 1058, column: 36, scope: !3091)
!3099 = !DILocation(line: 1052, column: 18, scope: !3079, inlinedAt: !3100)
!3100 = distinct !DILocation(line: 1060, column: 10, scope: !3091)
!3101 = !DILocation(line: 1052, column: 33, scope: !3079, inlinedAt: !3100)
!3102 = !DILocation(line: 1052, column: 45, scope: !3079, inlinedAt: !3100)
!3103 = !DILocation(line: 1054, column: 10, scope: !3079, inlinedAt: !3100)
!3104 = !DILocation(line: 1060, column: 3, scope: !3091)
!3105 = distinct !DISubprogram(name: "quote_n", scope: !160, file: !160, line: 1064, type: !3106, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !132, variables: !3108)
!3106 = !DISubroutineType(types: !3107)
!3107 = !{!55, !85, !55}
!3108 = !{!3109, !3110}
!3109 = !DILocalVariable(name: "n", arg: 1, scope: !3105, file: !160, line: 1064, type: !85)
!3110 = !DILocalVariable(name: "arg", arg: 2, scope: !3105, file: !160, line: 1064, type: !55)
!3111 = !DILocation(line: 1064, column: 14, scope: !3105)
!3112 = !DILocation(line: 1064, column: 29, scope: !3105)
!3113 = !DILocation(line: 1052, column: 18, scope: !3079, inlinedAt: !3114)
!3114 = distinct !DILocation(line: 1066, column: 10, scope: !3105)
!3115 = !DILocation(line: 1052, column: 33, scope: !3079, inlinedAt: !3114)
!3116 = !DILocation(line: 1052, column: 45, scope: !3079, inlinedAt: !3114)
!3117 = !DILocation(line: 1054, column: 10, scope: !3079, inlinedAt: !3114)
!3118 = !DILocation(line: 1066, column: 3, scope: !3105)
!3119 = distinct !DISubprogram(name: "quote", scope: !160, file: !160, line: 1070, type: !3120, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !132, variables: !3122)
!3120 = !DISubroutineType(types: !3121)
!3121 = !{!55, !55}
!3122 = !{!3123}
!3123 = !DILocalVariable(name: "arg", arg: 1, scope: !3119, file: !160, line: 1070, type: !55)
!3124 = !DILocation(line: 1070, column: 20, scope: !3119)
!3125 = !DILocation(line: 1064, column: 14, scope: !3105, inlinedAt: !3126)
!3126 = distinct !DILocation(line: 1072, column: 10, scope: !3119)
!3127 = !DILocation(line: 1064, column: 29, scope: !3105, inlinedAt: !3126)
!3128 = !DILocation(line: 1052, column: 18, scope: !3079, inlinedAt: !3129)
!3129 = distinct !DILocation(line: 1066, column: 10, scope: !3105, inlinedAt: !3126)
!3130 = !DILocation(line: 1052, column: 33, scope: !3079, inlinedAt: !3129)
!3131 = !DILocation(line: 1052, column: 45, scope: !3079, inlinedAt: !3129)
!3132 = !DILocation(line: 1054, column: 10, scope: !3079, inlinedAt: !3129)
!3133 = !DILocation(line: 1072, column: 3, scope: !3119)
!3134 = distinct !DISubprogram(name: "version_etc_arn", scope: !580, file: !580, line: 62, type: !3135, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !576, variables: !3190)
!3135 = !DISubroutineType(types: !3136)
!3136 = !{null, !3137, !55, !55, !55, !3189, !47}
!3137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3138, size: 64)
!3138 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3139, line: 49, baseType: !3140)
!3139 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3141, line: 241, size: 1728, elements: !3142)
!3141 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3142 = !{!3143, !3144, !3145, !3146, !3147, !3148, !3149, !3150, !3151, !3152, !3153, !3154, !3155, !3163, !3164, !3165, !3166, !3167, !3168, !3170, !3174, !3177, !3179, !3180, !3181, !3182, !3183, !3184, !3185}
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3140, file: !3141, line: 242, baseType: !85, size: 32)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3140, file: !3141, line: 247, baseType: !44, size: 64, offset: 64)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3140, file: !3141, line: 248, baseType: !44, size: 64, offset: 128)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3140, file: !3141, line: 249, baseType: !44, size: 64, offset: 192)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3140, file: !3141, line: 250, baseType: !44, size: 64, offset: 256)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3140, file: !3141, line: 251, baseType: !44, size: 64, offset: 320)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3140, file: !3141, line: 252, baseType: !44, size: 64, offset: 384)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3140, file: !3141, line: 253, baseType: !44, size: 64, offset: 448)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3140, file: !3141, line: 254, baseType: !44, size: 64, offset: 512)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3140, file: !3141, line: 256, baseType: !44, size: 64, offset: 576)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3140, file: !3141, line: 257, baseType: !44, size: 64, offset: 640)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3140, file: !3141, line: 258, baseType: !44, size: 64, offset: 704)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3140, file: !3141, line: 260, baseType: !3156, size: 64, offset: 768)
!3156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3157, size: 64)
!3157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3141, line: 156, size: 192, elements: !3158)
!3158 = !{!3159, !3160, !3162}
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3157, file: !3141, line: 157, baseType: !3156, size: 64)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3157, file: !3141, line: 158, baseType: !3161, size: 64, offset: 64)
!3161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3140, size: 64)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3157, file: !3141, line: 162, baseType: !85, size: 32, offset: 128)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3140, file: !3141, line: 262, baseType: !3161, size: 64, offset: 832)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3140, file: !3141, line: 264, baseType: !85, size: 32, offset: 896)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3140, file: !3141, line: 268, baseType: !85, size: 32, offset: 928)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3140, file: !3141, line: 270, baseType: !765, size: 64, offset: 960)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3140, file: !3141, line: 274, baseType: !156, size: 16, offset: 1024)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3140, file: !3141, line: 275, baseType: !3169, size: 8, offset: 1040)
!3169 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3140, file: !3141, line: 276, baseType: !3171, size: 8, offset: 1048)
!3171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 8, elements: !3172)
!3172 = !{!3173}
!3173 = !DISubrange(count: 1)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3140, file: !3141, line: 280, baseType: !3175, size: 64, offset: 1088)
!3175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3176, size: 64)
!3176 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !3141, line: 150, baseType: null)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3140, file: !3141, line: 289, baseType: !3178, size: 64, offset: 1152)
!3178 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !751, line: 141, baseType: !766)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3140, file: !3141, line: 297, baseType: !46, size: 64, offset: 1216)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3140, file: !3141, line: 298, baseType: !46, size: 64, offset: 1280)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3140, file: !3141, line: 299, baseType: !46, size: 64, offset: 1344)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3140, file: !3141, line: 300, baseType: !46, size: 64, offset: 1408)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3140, file: !3141, line: 302, baseType: !47, size: 64, offset: 1472)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3140, file: !3141, line: 303, baseType: !85, size: 32, offset: 1536)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3140, file: !3141, line: 305, baseType: !3186, size: 160, offset: 1568)
!3186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 160, elements: !3187)
!3187 = !{!3188}
!3188 = !DISubrange(count: 20)
!3189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!3190 = !{!3191, !3192, !3193, !3194, !3195, !3196}
!3191 = !DILocalVariable(name: "stream", arg: 1, scope: !3134, file: !580, line: 62, type: !3137)
!3192 = !DILocalVariable(name: "command_name", arg: 2, scope: !3134, file: !580, line: 63, type: !55)
!3193 = !DILocalVariable(name: "package", arg: 3, scope: !3134, file: !580, line: 63, type: !55)
!3194 = !DILocalVariable(name: "version", arg: 4, scope: !3134, file: !580, line: 64, type: !55)
!3195 = !DILocalVariable(name: "authors", arg: 5, scope: !3134, file: !580, line: 65, type: !3189)
!3196 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3134, file: !580, line: 65, type: !47)
!3197 = !DILocation(line: 62, column: 24, scope: !3134)
!3198 = !DILocation(line: 63, column: 30, scope: !3134)
!3199 = !DILocation(line: 63, column: 56, scope: !3134)
!3200 = !DILocation(line: 64, column: 30, scope: !3134)
!3201 = !DILocation(line: 65, column: 39, scope: !3134)
!3202 = !DILocation(line: 65, column: 55, scope: !3134)
!3203 = !DILocation(line: 67, column: 7, scope: !3204)
!3204 = distinct !DILexicalBlock(scope: !3134, file: !580, line: 67, column: 7)
!3205 = !DILocation(line: 67, column: 7, scope: !3134)
!3206 = !DILocation(line: 68, column: 5, scope: !3204)
!3207 = !DILocation(line: 70, column: 5, scope: !3204)
!3208 = !DILocation(line: 84, column: 3, scope: !3134)
!3209 = !DILocation(line: 84, column: 3, scope: !3210)
!3210 = !DILexicalBlockFile(scope: !3134, file: !580, discriminator: 1)
!3211 = !DILocation(line: 86, column: 3, scope: !3134)
!3212 = !DILocation(line: 86, column: 3, scope: !3210)
!3213 = !DILocation(line: 95, column: 3, scope: !3134)
!3214 = !DILocation(line: 99, column: 7, scope: !3215)
!3215 = distinct !DILexicalBlock(scope: !3134, file: !580, line: 96, column: 5)
!3216 = !DILocation(line: 102, column: 7, scope: !3215)
!3217 = !DILocation(line: 102, column: 7, scope: !3218)
!3218 = !DILexicalBlockFile(scope: !3215, file: !580, discriminator: 1)
!3219 = !DILocation(line: 103, column: 7, scope: !3215)
!3220 = !DILocation(line: 106, column: 7, scope: !3215)
!3221 = !DILocation(line: 106, column: 7, scope: !3218)
!3222 = !DILocation(line: 107, column: 7, scope: !3215)
!3223 = !DILocation(line: 110, column: 7, scope: !3215)
!3224 = !DILocation(line: 110, column: 7, scope: !3218)
!3225 = !DILocation(line: 112, column: 7, scope: !3215)
!3226 = !DILocation(line: 117, column: 7, scope: !3215)
!3227 = !DILocation(line: 117, column: 7, scope: !3218)
!3228 = !DILocation(line: 119, column: 7, scope: !3215)
!3229 = !DILocation(line: 124, column: 7, scope: !3215)
!3230 = !DILocation(line: 124, column: 7, scope: !3218)
!3231 = !DILocation(line: 126, column: 7, scope: !3215)
!3232 = !DILocation(line: 131, column: 7, scope: !3215)
!3233 = !DILocation(line: 131, column: 7, scope: !3218)
!3234 = !DILocation(line: 134, column: 7, scope: !3215)
!3235 = !DILocation(line: 139, column: 7, scope: !3215)
!3236 = !DILocation(line: 139, column: 7, scope: !3218)
!3237 = !DILocation(line: 142, column: 7, scope: !3215)
!3238 = !DILocation(line: 147, column: 7, scope: !3215)
!3239 = !DILocation(line: 147, column: 7, scope: !3218)
!3240 = !DILocation(line: 151, column: 7, scope: !3215)
!3241 = !DILocation(line: 156, column: 7, scope: !3215)
!3242 = !DILocation(line: 156, column: 7, scope: !3218)
!3243 = !DILocation(line: 160, column: 7, scope: !3215)
!3244 = !DILocation(line: 167, column: 7, scope: !3215)
!3245 = !DILocation(line: 167, column: 7, scope: !3218)
!3246 = !DILocation(line: 171, column: 7, scope: !3215)
!3247 = !DILocation(line: 173, column: 1, scope: !3134)
!3248 = distinct !DISubprogram(name: "version_etc_ar", scope: !580, file: !580, line: 180, type: !3249, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !576, variables: !3251)
!3249 = !DISubroutineType(types: !3250)
!3250 = !{null, !3137, !55, !55, !55, !3189}
!3251 = !{!3252, !3253, !3254, !3255, !3256, !3257}
!3252 = !DILocalVariable(name: "stream", arg: 1, scope: !3248, file: !580, line: 180, type: !3137)
!3253 = !DILocalVariable(name: "command_name", arg: 2, scope: !3248, file: !580, line: 181, type: !55)
!3254 = !DILocalVariable(name: "package", arg: 3, scope: !3248, file: !580, line: 181, type: !55)
!3255 = !DILocalVariable(name: "version", arg: 4, scope: !3248, file: !580, line: 182, type: !55)
!3256 = !DILocalVariable(name: "authors", arg: 5, scope: !3248, file: !580, line: 182, type: !3189)
!3257 = !DILocalVariable(name: "n_authors", scope: !3248, file: !580, line: 184, type: !47)
!3258 = !DILocation(line: 180, column: 23, scope: !3248)
!3259 = !DILocation(line: 181, column: 29, scope: !3248)
!3260 = !DILocation(line: 181, column: 55, scope: !3248)
!3261 = !DILocation(line: 182, column: 29, scope: !3248)
!3262 = !DILocation(line: 182, column: 59, scope: !3248)
!3263 = !DILocation(line: 184, column: 10, scope: !3248)
!3264 = !DILocation(line: 186, column: 8, scope: !3265)
!3265 = distinct !DILexicalBlock(scope: !3248, file: !580, line: 186, column: 3)
!3266 = !DILocation(line: 186, column: 23, scope: !3267)
!3267 = !DILexicalBlockFile(scope: !3268, file: !580, discriminator: 1)
!3268 = distinct !DILexicalBlock(scope: !3265, file: !580, line: 186, column: 3)
!3269 = !DILocation(line: 186, column: 3, scope: !3270)
!3270 = !DILexicalBlockFile(scope: !3265, file: !580, discriminator: 1)
!3271 = !DILocation(line: 186, column: 52, scope: !3272)
!3272 = !DILexicalBlockFile(scope: !3268, file: !580, discriminator: 3)
!3273 = distinct !{!3273, !3274, !3275}
!3274 = !DILocation(line: 186, column: 3, scope: !3265)
!3275 = !DILocation(line: 187, column: 5, scope: !3265)
!3276 = !DILocation(line: 188, column: 3, scope: !3248)
!3277 = !DILocation(line: 189, column: 1, scope: !3248)
!3278 = distinct !DISubprogram(name: "version_etc_va", scope: !580, file: !580, line: 196, type: !3279, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !576, variables: !3288)
!3279 = !DISubroutineType(types: !3280)
!3280 = !{null, !3137, !55, !55, !55, !3281}
!3281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3282, size: 64)
!3282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !577, line: 189, size: 192, elements: !3283)
!3283 = !{!3284, !3285, !3286, !3287}
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3282, file: !577, line: 189, baseType: !173, size: 32)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3282, file: !577, line: 189, baseType: !173, size: 32, offset: 32)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3282, file: !577, line: 189, baseType: !46, size: 64, offset: 64)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3282, file: !577, line: 189, baseType: !46, size: 64, offset: 128)
!3288 = !{!3289, !3290, !3291, !3292, !3293, !3294, !3295}
!3289 = !DILocalVariable(name: "stream", arg: 1, scope: !3278, file: !580, line: 196, type: !3137)
!3290 = !DILocalVariable(name: "command_name", arg: 2, scope: !3278, file: !580, line: 197, type: !55)
!3291 = !DILocalVariable(name: "package", arg: 3, scope: !3278, file: !580, line: 197, type: !55)
!3292 = !DILocalVariable(name: "version", arg: 4, scope: !3278, file: !580, line: 198, type: !55)
!3293 = !DILocalVariable(name: "authors", arg: 5, scope: !3278, file: !580, line: 198, type: !3281)
!3294 = !DILocalVariable(name: "n_authors", scope: !3278, file: !580, line: 200, type: !47)
!3295 = !DILocalVariable(name: "authtab", scope: !3278, file: !580, line: 201, type: !3296)
!3296 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 640, elements: !163)
!3297 = !DILocation(line: 196, column: 23, scope: !3278)
!3298 = !DILocation(line: 197, column: 29, scope: !3278)
!3299 = !DILocation(line: 197, column: 55, scope: !3278)
!3300 = !DILocation(line: 198, column: 29, scope: !3278)
!3301 = !DILocation(line: 198, column: 46, scope: !3278)
!3302 = !DILocation(line: 201, column: 3, scope: !3278)
!3303 = !DILocation(line: 201, column: 15, scope: !3278)
!3304 = !DILocation(line: 200, column: 10, scope: !3278)
!3305 = !DILocation(line: 205, column: 35, scope: !3306)
!3306 = !DILexicalBlockFile(scope: !3307, file: !580, discriminator: 1)
!3307 = distinct !DILexicalBlock(scope: !3308, file: !580, line: 203, column: 3)
!3308 = distinct !DILexicalBlock(scope: !3278, file: !580, line: 203, column: 3)
!3309 = !DILocation(line: 205, column: 35, scope: !3310)
!3310 = !DILexicalBlockFile(scope: !3307, file: !580, discriminator: 2)
!3311 = !DILocation(line: 205, column: 35, scope: !3312)
!3312 = !DILexicalBlockFile(scope: !3307, file: !580, discriminator: 3)
!3313 = !DILocation(line: 205, column: 35, scope: !3314)
!3314 = !DILexicalBlockFile(scope: !3307, file: !580, discriminator: 4)
!3315 = !DILocation(line: 205, column: 14, scope: !3314)
!3316 = !DILocation(line: 205, column: 33, scope: !3314)
!3317 = !DILocation(line: 205, column: 67, scope: !3314)
!3318 = !DILocation(line: 203, column: 3, scope: !3319)
!3319 = !DILexicalBlockFile(scope: !3308, file: !580, discriminator: 1)
!3320 = !DILocation(line: 208, column: 3, scope: !3278)
!3321 = !DILocation(line: 210, column: 1, scope: !3278)
!3322 = distinct !DISubprogram(name: "version_etc", scope: !580, file: !580, line: 227, type: !3323, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !576, variables: !3325)
!3323 = !DISubroutineType(types: !3324)
!3324 = !{null, !3137, !55, !55, !55, null}
!3325 = !{!3326, !3327, !3328, !3329, !3330}
!3326 = !DILocalVariable(name: "stream", arg: 1, scope: !3322, file: !580, line: 227, type: !3137)
!3327 = !DILocalVariable(name: "command_name", arg: 2, scope: !3322, file: !580, line: 228, type: !55)
!3328 = !DILocalVariable(name: "package", arg: 3, scope: !3322, file: !580, line: 228, type: !55)
!3329 = !DILocalVariable(name: "version", arg: 4, scope: !3322, file: !580, line: 229, type: !55)
!3330 = !DILocalVariable(name: "authors", scope: !3322, file: !580, line: 231, type: !3331)
!3331 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !3139, line: 80, baseType: !3332)
!3332 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3333, line: 50, baseType: !3334)
!3333 = !DIFile(filename: "/usr/bin/../lib/clang/4.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3334 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !577, line: 231, baseType: !3335)
!3335 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3282, size: 192, elements: !3172)
!3336 = !DILocation(line: 227, column: 20, scope: !3322)
!3337 = !DILocation(line: 228, column: 26, scope: !3322)
!3338 = !DILocation(line: 228, column: 52, scope: !3322)
!3339 = !DILocation(line: 229, column: 26, scope: !3322)
!3340 = !DILocation(line: 231, column: 3, scope: !3322)
!3341 = !DILocation(line: 231, column: 11, scope: !3322)
!3342 = !DILocation(line: 233, column: 3, scope: !3322)
!3343 = !DILocation(line: 234, column: 3, scope: !3322)
!3344 = !DILocation(line: 235, column: 3, scope: !3322)
!3345 = !DILocation(line: 236, column: 1, scope: !3322)
!3346 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !580, file: !580, line: 239, type: !1105, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !576, variables: !105)
!3347 = !DILocation(line: 245, column: 3, scope: !3346)
!3348 = !DILocation(line: 245, column: 3, scope: !3349)
!3349 = !DILexicalBlockFile(scope: !3346, file: !580, discriminator: 1)
!3350 = !DILocation(line: 251, column: 3, scope: !3346)
!3351 = !DILocation(line: 251, column: 3, scope: !3349)
!3352 = !DILocation(line: 256, column: 3, scope: !3346)
!3353 = !DILocation(line: 256, column: 3, scope: !3349)
!3354 = !DILocation(line: 258, column: 1, scope: !3346)
!3355 = distinct !DISubprogram(name: "xnmalloc", scope: !587, file: !587, line: 105, type: !3356, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !583, variables: !3358)
!3356 = !DISubroutineType(types: !3357)
!3357 = !{!46, !47, !47}
!3358 = !{!3359, !3360}
!3359 = !DILocalVariable(name: "n", arg: 1, scope: !3355, file: !587, line: 105, type: !47)
!3360 = !DILocalVariable(name: "s", arg: 2, scope: !3355, file: !587, line: 105, type: !47)
!3361 = !DILocation(line: 105, column: 18, scope: !3355)
!3362 = !DILocation(line: 105, column: 28, scope: !3355)
!3363 = !DILocation(line: 107, column: 7, scope: !3364)
!3364 = distinct !DILexicalBlock(scope: !3355, file: !587, line: 107, column: 7)
!3365 = !DILocation(line: 107, column: 7, scope: !3355)
!3366 = !DILocation(line: 108, column: 5, scope: !3364)
!3367 = !DILocation(line: 109, column: 21, scope: !3355)
!3368 = !DILocalVariable(name: "n", arg: 1, scope: !3369, file: !3370, line: 39, type: !47)
!3369 = distinct !DISubprogram(name: "xmalloc", scope: !3370, file: !3370, line: 39, type: !3371, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !583, variables: !3373)
!3370 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3371 = !DISubroutineType(types: !3372)
!3372 = !{!46, !47}
!3373 = !{!3368, !3374}
!3374 = !DILocalVariable(name: "p", scope: !3369, file: !3370, line: 41, type: !46)
!3375 = !DILocation(line: 39, column: 17, scope: !3369, inlinedAt: !3376)
!3376 = distinct !DILocation(line: 109, column: 10, scope: !3355)
!3377 = !DILocation(line: 41, column: 13, scope: !3369, inlinedAt: !3376)
!3378 = !DILocation(line: 41, column: 9, scope: !3369, inlinedAt: !3376)
!3379 = !DILocation(line: 42, column: 8, scope: !3380, inlinedAt: !3376)
!3380 = distinct !DILexicalBlock(scope: !3369, file: !3370, line: 42, column: 7)
!3381 = !DILocation(line: 42, column: 15, scope: !3382, inlinedAt: !3376)
!3382 = !DILexicalBlockFile(scope: !3380, file: !3370, discriminator: 1)
!3383 = !DILocation(line: 42, column: 10, scope: !3380, inlinedAt: !3376)
!3384 = !DILocation(line: 43, column: 5, scope: !3380, inlinedAt: !3376)
!3385 = !DILocation(line: 109, column: 3, scope: !3355)
!3386 = !DILocation(line: 39, column: 17, scope: !3369)
!3387 = !DILocation(line: 41, column: 13, scope: !3369)
!3388 = !DILocation(line: 41, column: 9, scope: !3369)
!3389 = !DILocation(line: 42, column: 8, scope: !3380)
!3390 = !DILocation(line: 42, column: 15, scope: !3382)
!3391 = !DILocation(line: 42, column: 10, scope: !3380)
!3392 = !DILocation(line: 43, column: 5, scope: !3380)
!3393 = !DILocation(line: 44, column: 3, scope: !3369)
!3394 = distinct !DISubprogram(name: "xnrealloc", scope: !587, file: !587, line: 118, type: !3395, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !583, variables: !3397)
!3395 = !DISubroutineType(types: !3396)
!3396 = !{!46, !46, !47, !47}
!3397 = !{!3398, !3399, !3400}
!3398 = !DILocalVariable(name: "p", arg: 1, scope: !3394, file: !587, line: 118, type: !46)
!3399 = !DILocalVariable(name: "n", arg: 2, scope: !3394, file: !587, line: 118, type: !47)
!3400 = !DILocalVariable(name: "s", arg: 3, scope: !3394, file: !587, line: 118, type: !47)
!3401 = !DILocation(line: 118, column: 18, scope: !3394)
!3402 = !DILocation(line: 118, column: 28, scope: !3394)
!3403 = !DILocation(line: 118, column: 38, scope: !3394)
!3404 = !DILocation(line: 120, column: 7, scope: !3405)
!3405 = distinct !DILexicalBlock(scope: !3394, file: !587, line: 120, column: 7)
!3406 = !DILocation(line: 120, column: 7, scope: !3394)
!3407 = !DILocation(line: 121, column: 5, scope: !3405)
!3408 = !DILocation(line: 122, column: 25, scope: !3394)
!3409 = !DILocalVariable(name: "p", arg: 1, scope: !3410, file: !3370, line: 51, type: !46)
!3410 = distinct !DISubprogram(name: "xrealloc", scope: !3370, file: !3370, line: 51, type: !3411, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !583, variables: !3413)
!3411 = !DISubroutineType(types: !3412)
!3412 = !{!46, !46, !47}
!3413 = !{!3409, !3414}
!3414 = !DILocalVariable(name: "n", arg: 2, scope: !3410, file: !3370, line: 51, type: !47)
!3415 = !DILocation(line: 51, column: 17, scope: !3410, inlinedAt: !3416)
!3416 = distinct !DILocation(line: 122, column: 10, scope: !3394)
!3417 = !DILocation(line: 51, column: 27, scope: !3410, inlinedAt: !3416)
!3418 = !DILocation(line: 53, column: 8, scope: !3419, inlinedAt: !3416)
!3419 = distinct !DILexicalBlock(scope: !3410, file: !3370, line: 53, column: 7)
!3420 = !DILocation(line: 53, column: 13, scope: !3421, inlinedAt: !3416)
!3421 = !DILexicalBlockFile(scope: !3419, file: !3370, discriminator: 1)
!3422 = !DILocation(line: 53, column: 10, scope: !3419, inlinedAt: !3416)
!3423 = !DILocation(line: 57, column: 7, scope: !3424, inlinedAt: !3416)
!3424 = distinct !DILexicalBlock(scope: !3419, file: !3370, line: 54, column: 5)
!3425 = !DILocation(line: 58, column: 7, scope: !3424, inlinedAt: !3416)
!3426 = !DILocation(line: 61, column: 7, scope: !3410, inlinedAt: !3416)
!3427 = !DILocation(line: 62, column: 8, scope: !3428, inlinedAt: !3416)
!3428 = distinct !DILexicalBlock(scope: !3410, file: !3370, line: 62, column: 7)
!3429 = !DILocation(line: 62, column: 13, scope: !3430, inlinedAt: !3416)
!3430 = !DILexicalBlockFile(scope: !3428, file: !3370, discriminator: 1)
!3431 = !DILocation(line: 62, column: 10, scope: !3428, inlinedAt: !3416)
!3432 = !DILocation(line: 63, column: 5, scope: !3428, inlinedAt: !3416)
!3433 = !DILocation(line: 122, column: 3, scope: !3394)
!3434 = !DILocation(line: 51, column: 17, scope: !3410)
!3435 = !DILocation(line: 51, column: 27, scope: !3410)
!3436 = !DILocation(line: 53, column: 8, scope: !3419)
!3437 = !DILocation(line: 53, column: 13, scope: !3421)
!3438 = !DILocation(line: 53, column: 10, scope: !3419)
!3439 = !DILocation(line: 57, column: 7, scope: !3424)
!3440 = !DILocation(line: 58, column: 7, scope: !3424)
!3441 = !DILocation(line: 61, column: 7, scope: !3410)
!3442 = !DILocation(line: 62, column: 8, scope: !3428)
!3443 = !DILocation(line: 62, column: 13, scope: !3430)
!3444 = !DILocation(line: 62, column: 10, scope: !3428)
!3445 = !DILocation(line: 63, column: 5, scope: !3428)
!3446 = !DILocation(line: 65, column: 1, scope: !3410)
!3447 = !DILocation(line: 180, column: 19, scope: !588)
!3448 = !DILocation(line: 180, column: 30, scope: !588)
!3449 = !DILocation(line: 180, column: 41, scope: !588)
!3450 = !DILocation(line: 182, column: 14, scope: !588)
!3451 = !DILocation(line: 182, column: 10, scope: !588)
!3452 = !DILocation(line: 184, column: 9, scope: !3453)
!3453 = distinct !DILexicalBlock(scope: !588, file: !587, line: 184, column: 7)
!3454 = !DILocation(line: 184, column: 7, scope: !588)
!3455 = !DILocation(line: 186, column: 13, scope: !3456)
!3456 = distinct !DILexicalBlock(scope: !3457, file: !587, line: 186, column: 11)
!3457 = distinct !DILexicalBlock(scope: !3453, file: !587, line: 185, column: 5)
!3458 = !DILocation(line: 186, column: 11, scope: !3457)
!3459 = !DILocation(line: 194, column: 30, scope: !3460)
!3460 = distinct !DILexicalBlock(scope: !3456, file: !587, line: 187, column: 9)
!3461 = !DILocation(line: 195, column: 16, scope: !3460)
!3462 = !DILocation(line: 195, column: 13, scope: !3460)
!3463 = !DILocation(line: 196, column: 9, scope: !3460)
!3464 = !DILocation(line: 204, column: 69, scope: !3465)
!3465 = distinct !DILexicalBlock(scope: !3466, file: !587, line: 204, column: 11)
!3466 = distinct !DILexicalBlock(scope: !3453, file: !587, line: 199, column: 5)
!3467 = !DILocation(line: 205, column: 11, scope: !3465)
!3468 = !DILocation(line: 204, column: 11, scope: !3466)
!3469 = !DILocation(line: 206, column: 9, scope: !3465)
!3470 = !DILocation(line: 210, column: 7, scope: !588)
!3471 = !DILocation(line: 211, column: 25, scope: !588)
!3472 = !DILocation(line: 51, column: 17, scope: !3410, inlinedAt: !3473)
!3473 = distinct !DILocation(line: 211, column: 10, scope: !588)
!3474 = !DILocation(line: 51, column: 27, scope: !3410, inlinedAt: !3473)
!3475 = !DILocation(line: 53, column: 10, scope: !3419, inlinedAt: !3473)
!3476 = !DILocation(line: 207, column: 14, scope: !3466)
!3477 = !DILocation(line: 207, column: 18, scope: !3466)
!3478 = !DILocation(line: 207, column: 9, scope: !3466)
!3479 = !DILocation(line: 53, column: 8, scope: !3419, inlinedAt: !3473)
!3480 = !DILocation(line: 57, column: 7, scope: !3424, inlinedAt: !3473)
!3481 = !DILocation(line: 58, column: 7, scope: !3424, inlinedAt: !3473)
!3482 = !DILocation(line: 61, column: 7, scope: !3410, inlinedAt: !3473)
!3483 = !DILocation(line: 62, column: 8, scope: !3428, inlinedAt: !3473)
!3484 = !DILocation(line: 62, column: 13, scope: !3430, inlinedAt: !3473)
!3485 = !DILocation(line: 62, column: 10, scope: !3428, inlinedAt: !3473)
!3486 = !DILocation(line: 63, column: 5, scope: !3428, inlinedAt: !3473)
!3487 = !DILocation(line: 211, column: 3, scope: !588)
!3488 = distinct !DISubprogram(name: "xcharalloc", scope: !587, file: !587, line: 220, type: !2406, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !583, variables: !3489)
!3489 = !{!3490}
!3490 = !DILocalVariable(name: "n", arg: 1, scope: !3488, file: !587, line: 220, type: !47)
!3491 = !DILocation(line: 220, column: 20, scope: !3488)
!3492 = !DILocation(line: 39, column: 17, scope: !3369, inlinedAt: !3493)
!3493 = distinct !DILocation(line: 222, column: 10, scope: !3488)
!3494 = !DILocation(line: 41, column: 13, scope: !3369, inlinedAt: !3493)
!3495 = !DILocation(line: 41, column: 9, scope: !3369, inlinedAt: !3493)
!3496 = !DILocation(line: 42, column: 8, scope: !3380, inlinedAt: !3493)
!3497 = !DILocation(line: 42, column: 15, scope: !3382, inlinedAt: !3493)
!3498 = !DILocation(line: 42, column: 10, scope: !3380, inlinedAt: !3493)
!3499 = !DILocation(line: 43, column: 5, scope: !3380, inlinedAt: !3493)
!3500 = !DILocation(line: 222, column: 3, scope: !3488)
!3501 = distinct !DISubprogram(name: "x2realloc", scope: !3370, file: !3370, line: 74, type: !3502, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !583, variables: !3504)
!3502 = !DISubroutineType(types: !3503)
!3503 = !{!46, !46, !591}
!3504 = !{!3505, !3506}
!3505 = !DILocalVariable(name: "p", arg: 1, scope: !3501, file: !3370, line: 74, type: !46)
!3506 = !DILocalVariable(name: "pn", arg: 2, scope: !3501, file: !3370, line: 74, type: !591)
!3507 = !DILocation(line: 74, column: 18, scope: !3501)
!3508 = !DILocation(line: 74, column: 29, scope: !3501)
!3509 = !DILocation(line: 180, column: 19, scope: !588, inlinedAt: !3510)
!3510 = distinct !DILocation(line: 76, column: 10, scope: !3501)
!3511 = !DILocation(line: 180, column: 30, scope: !588, inlinedAt: !3510)
!3512 = !DILocation(line: 180, column: 41, scope: !588, inlinedAt: !3510)
!3513 = !DILocation(line: 182, column: 14, scope: !588, inlinedAt: !3510)
!3514 = !DILocation(line: 182, column: 10, scope: !588, inlinedAt: !3510)
!3515 = !DILocation(line: 184, column: 9, scope: !3453, inlinedAt: !3510)
!3516 = !DILocation(line: 184, column: 7, scope: !588, inlinedAt: !3510)
!3517 = !DILocation(line: 186, column: 13, scope: !3456, inlinedAt: !3510)
!3518 = !DILocation(line: 186, column: 11, scope: !3457, inlinedAt: !3510)
!3519 = !DILocation(line: 210, column: 7, scope: !588, inlinedAt: !3510)
!3520 = !DILocation(line: 51, column: 17, scope: !3410, inlinedAt: !3521)
!3521 = distinct !DILocation(line: 211, column: 10, scope: !588, inlinedAt: !3510)
!3522 = !DILocation(line: 51, column: 27, scope: !3410, inlinedAt: !3521)
!3523 = !DILocation(line: 53, column: 10, scope: !3419, inlinedAt: !3521)
!3524 = !DILocation(line: 205, column: 11, scope: !3465, inlinedAt: !3510)
!3525 = !DILocation(line: 204, column: 11, scope: !3466, inlinedAt: !3510)
!3526 = !DILocation(line: 206, column: 9, scope: !3465, inlinedAt: !3510)
!3527 = !DILocation(line: 207, column: 14, scope: !3466, inlinedAt: !3510)
!3528 = !DILocation(line: 207, column: 18, scope: !3466, inlinedAt: !3510)
!3529 = !DILocation(line: 207, column: 9, scope: !3466, inlinedAt: !3510)
!3530 = !DILocation(line: 53, column: 8, scope: !3419, inlinedAt: !3521)
!3531 = !DILocation(line: 57, column: 7, scope: !3424, inlinedAt: !3521)
!3532 = !DILocation(line: 58, column: 7, scope: !3424, inlinedAt: !3521)
!3533 = !DILocation(line: 61, column: 7, scope: !3410, inlinedAt: !3521)
!3534 = !DILocation(line: 62, column: 8, scope: !3428, inlinedAt: !3521)
!3535 = !DILocation(line: 62, column: 13, scope: !3430, inlinedAt: !3521)
!3536 = !DILocation(line: 62, column: 10, scope: !3428, inlinedAt: !3521)
!3537 = !DILocation(line: 63, column: 5, scope: !3428, inlinedAt: !3521)
!3538 = !DILocation(line: 76, column: 3, scope: !3501)
!3539 = distinct !DISubprogram(name: "xzalloc", scope: !3370, file: !3370, line: 84, type: !3371, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !583, variables: !3540)
!3540 = !{!3541}
!3541 = !DILocalVariable(name: "s", arg: 1, scope: !3539, file: !3370, line: 84, type: !47)
!3542 = !DILocation(line: 84, column: 17, scope: !3539)
!3543 = !DILocation(line: 39, column: 17, scope: !3369, inlinedAt: !3544)
!3544 = distinct !DILocation(line: 86, column: 18, scope: !3539)
!3545 = !DILocation(line: 41, column: 13, scope: !3369, inlinedAt: !3544)
!3546 = !DILocation(line: 41, column: 9, scope: !3369, inlinedAt: !3544)
!3547 = !DILocation(line: 42, column: 8, scope: !3380, inlinedAt: !3544)
!3548 = !DILocation(line: 42, column: 15, scope: !3382, inlinedAt: !3544)
!3549 = !DILocation(line: 42, column: 10, scope: !3380, inlinedAt: !3544)
!3550 = !DILocation(line: 43, column: 5, scope: !3380, inlinedAt: !3544)
!3551 = !DILocation(line: 86, column: 10, scope: !3539)
!3552 = !DILocation(line: 86, column: 3, scope: !3539)
!3553 = distinct !DISubprogram(name: "xcalloc", scope: !3370, file: !3370, line: 93, type: !3356, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !583, variables: !3554)
!3554 = !{!3555, !3556, !3557}
!3555 = !DILocalVariable(name: "n", arg: 1, scope: !3553, file: !3370, line: 93, type: !47)
!3556 = !DILocalVariable(name: "s", arg: 2, scope: !3553, file: !3370, line: 93, type: !47)
!3557 = !DILocalVariable(name: "p", scope: !3553, file: !3370, line: 95, type: !46)
!3558 = !DILocation(line: 93, column: 17, scope: !3553)
!3559 = !DILocation(line: 93, column: 27, scope: !3553)
!3560 = !DILocation(line: 100, column: 7, scope: !3561)
!3561 = distinct !DILexicalBlock(scope: !3553, file: !3370, line: 100, column: 7)
!3562 = !DILocation(line: 101, column: 7, scope: !3561)
!3563 = !DILocation(line: 101, column: 18, scope: !3564)
!3564 = !DILexicalBlockFile(scope: !3561, file: !3370, discriminator: 1)
!3565 = !DILocation(line: 95, column: 9, scope: !3553)
!3566 = !DILocation(line: 101, column: 16, scope: !3564)
!3567 = !DILocation(line: 100, column: 7, scope: !3568)
!3568 = !DILexicalBlockFile(scope: !3553, file: !3370, discriminator: 1)
!3569 = !DILocation(line: 102, column: 5, scope: !3561)
!3570 = !DILocation(line: 103, column: 3, scope: !3553)
!3571 = distinct !DISubprogram(name: "xmemdup", scope: !3370, file: !3370, line: 111, type: !3572, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !583, variables: !3574)
!3572 = !DISubroutineType(types: !3573)
!3573 = !{!46, !50, !47}
!3574 = !{!3575, !3576}
!3575 = !DILocalVariable(name: "p", arg: 1, scope: !3571, file: !3370, line: 111, type: !50)
!3576 = !DILocalVariable(name: "s", arg: 2, scope: !3571, file: !3370, line: 111, type: !47)
!3577 = !DILocation(line: 111, column: 22, scope: !3571)
!3578 = !DILocation(line: 111, column: 32, scope: !3571)
!3579 = !DILocation(line: 39, column: 17, scope: !3369, inlinedAt: !3580)
!3580 = distinct !DILocation(line: 113, column: 18, scope: !3571)
!3581 = !DILocation(line: 41, column: 13, scope: !3369, inlinedAt: !3580)
!3582 = !DILocation(line: 41, column: 9, scope: !3369, inlinedAt: !3580)
!3583 = !DILocation(line: 42, column: 8, scope: !3380, inlinedAt: !3580)
!3584 = !DILocation(line: 42, column: 15, scope: !3382, inlinedAt: !3580)
!3585 = !DILocation(line: 42, column: 10, scope: !3380, inlinedAt: !3580)
!3586 = !DILocation(line: 43, column: 5, scope: !3380, inlinedAt: !3580)
!3587 = !DILocation(line: 113, column: 10, scope: !3571)
!3588 = !DILocation(line: 113, column: 3, scope: !3571)
!3589 = distinct !DISubprogram(name: "xstrdup", scope: !3370, file: !3370, line: 119, type: !2613, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !583, variables: !3590)
!3590 = !{!3591}
!3591 = !DILocalVariable(name: "string", arg: 1, scope: !3589, file: !3370, line: 119, type: !55)
!3592 = !DILocation(line: 119, column: 22, scope: !3589)
!3593 = !DILocation(line: 121, column: 27, scope: !3589)
!3594 = !DILocation(line: 121, column: 43, scope: !3589)
!3595 = !DILocation(line: 111, column: 22, scope: !3571, inlinedAt: !3596)
!3596 = distinct !DILocation(line: 121, column: 10, scope: !3597)
!3597 = !DILexicalBlockFile(scope: !3589, file: !3370, discriminator: 1)
!3598 = !DILocation(line: 111, column: 32, scope: !3571, inlinedAt: !3596)
!3599 = !DILocation(line: 39, column: 17, scope: !3369, inlinedAt: !3600)
!3600 = distinct !DILocation(line: 113, column: 18, scope: !3571, inlinedAt: !3596)
!3601 = !DILocation(line: 41, column: 13, scope: !3369, inlinedAt: !3600)
!3602 = !DILocation(line: 41, column: 9, scope: !3369, inlinedAt: !3600)
!3603 = !DILocation(line: 42, column: 8, scope: !3380, inlinedAt: !3600)
!3604 = !DILocation(line: 42, column: 15, scope: !3382, inlinedAt: !3600)
!3605 = !DILocation(line: 42, column: 10, scope: !3380, inlinedAt: !3600)
!3606 = !DILocation(line: 43, column: 5, scope: !3380, inlinedAt: !3600)
!3607 = !DILocation(line: 113, column: 10, scope: !3571, inlinedAt: !3596)
!3608 = !DILocation(line: 121, column: 3, scope: !3589)
!3609 = distinct !DISubprogram(name: "xalloc_die", scope: !3610, file: !3610, line: 32, type: !1105, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !600, variables: !105)
!3610 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3611 = !DILocation(line: 34, column: 10, scope: !3609)
!3612 = !DILocation(line: 34, column: 33, scope: !3609)
!3613 = !DILocation(line: 34, column: 3, scope: !3614)
!3614 = !DILexicalBlockFile(scope: !3609, file: !3610, discriminator: 1)
!3615 = !DILocation(line: 40, column: 3, scope: !3609)
!3616 = distinct !DISubprogram(name: "rpl_calloc", scope: !3617, file: !3617, line: 42, type: !3356, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !602, variables: !3618)
!3617 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3618 = !{!3619, !3620, !3621, !3622}
!3619 = !DILocalVariable(name: "n", arg: 1, scope: !3616, file: !3617, line: 42, type: !47)
!3620 = !DILocalVariable(name: "s", arg: 2, scope: !3616, file: !3617, line: 42, type: !47)
!3621 = !DILocalVariable(name: "result", scope: !3616, file: !3617, line: 44, type: !46)
!3622 = !DILocalVariable(name: "bytes", scope: !3623, file: !3617, line: 56, type: !47)
!3623 = distinct !DILexicalBlock(scope: !3624, file: !3617, line: 53, column: 5)
!3624 = distinct !DILexicalBlock(scope: !3616, file: !3617, line: 47, column: 7)
!3625 = !DILocation(line: 42, column: 20, scope: !3616)
!3626 = !DILocation(line: 42, column: 30, scope: !3616)
!3627 = !DILocation(line: 47, column: 9, scope: !3624)
!3628 = !DILocation(line: 47, column: 19, scope: !3629)
!3629 = !DILexicalBlockFile(scope: !3624, file: !3617, discriminator: 1)
!3630 = !DILocation(line: 47, column: 14, scope: !3624)
!3631 = !DILocation(line: 56, column: 24, scope: !3623)
!3632 = !DILocation(line: 56, column: 14, scope: !3623)
!3633 = !DILocation(line: 57, column: 17, scope: !3634)
!3634 = distinct !DILexicalBlock(scope: !3623, file: !3617, line: 57, column: 11)
!3635 = !DILocation(line: 57, column: 21, scope: !3634)
!3636 = !DILocation(line: 57, column: 11, scope: !3623)
!3637 = !DILocation(line: 59, column: 11, scope: !3638)
!3638 = distinct !DILexicalBlock(scope: !3634, file: !3617, line: 58, column: 9)
!3639 = !DILocation(line: 59, column: 17, scope: !3638)
!3640 = !DILocation(line: 65, column: 12, scope: !3616)
!3641 = !DILocation(line: 44, column: 9, scope: !3616)
!3642 = !DILocation(line: 72, column: 3, scope: !3616)
!3643 = !DILocation(line: 73, column: 1, scope: !3616)
!3644 = distinct !DISubprogram(name: "rpl_mbrlen", scope: !215, file: !215, line: 27, type: !3645, isLocal: false, isDefinition: true, scopeLine: 28, flags: DIFlagPrototyped, isOptimized: true, unit: !211, variables: !3648)
!3645 = !DISubroutineType(types: !3646)
!3646 = !{!47, !55, !47, !3647}
!3647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!3648 = !{!3649, !3650, !3651}
!3649 = !DILocalVariable(name: "s", arg: 1, scope: !3644, file: !215, line: 27, type: !55)
!3650 = !DILocalVariable(name: "n", arg: 2, scope: !3644, file: !215, line: 27, type: !47)
!3651 = !DILocalVariable(name: "ps", arg: 3, scope: !3644, file: !215, line: 27, type: !3647)
!3652 = !DILocation(line: 27, column: 21, scope: !3644)
!3653 = !DILocation(line: 27, column: 31, scope: !3644)
!3654 = !DILocation(line: 27, column: 45, scope: !3644)
!3655 = !DILocation(line: 29, column: 10, scope: !3656)
!3656 = distinct !DILexicalBlock(scope: !3644, file: !215, line: 29, column: 7)
!3657 = !DILocation(line: 29, column: 7, scope: !3644)
!3658 = !DILocation(line: 31, column: 10, scope: !3644)
!3659 = !DILocation(line: 31, column: 3, scope: !3644)
!3660 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !3661, file: !3661, line: 334, type: !3662, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !604, variables: !3676)
!3661 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3662 = !DISubroutineType(types: !3663)
!3663 = !{!47, !3664, !55, !47, !3665}
!3664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1392, size: 64)
!3665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3666, size: 64)
!3666 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !217, line: 107, baseType: !3667)
!3667 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !217, line: 95, baseType: !3668)
!3668 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !217, line: 83, size: 64, elements: !3669)
!3669 = !{!3670, !3671}
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3668, file: !217, line: 85, baseType: !85, size: 32)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3668, file: !217, line: 94, baseType: !3672, size: 32, offset: 32)
!3672 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3668, file: !217, line: 86, size: 32, elements: !3673)
!3673 = !{!3674, !3675}
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3672, file: !217, line: 89, baseType: !173, size: 32)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3672, file: !217, line: 93, baseType: !227, size: 32)
!3676 = !{!3677, !3678, !3679, !3680, !3681, !3682, !3683}
!3677 = !DILocalVariable(name: "pwc", arg: 1, scope: !3660, file: !3661, line: 334, type: !3664)
!3678 = !DILocalVariable(name: "s", arg: 2, scope: !3660, file: !3661, line: 334, type: !55)
!3679 = !DILocalVariable(name: "n", arg: 3, scope: !3660, file: !3661, line: 334, type: !47)
!3680 = !DILocalVariable(name: "ps", arg: 4, scope: !3660, file: !3661, line: 334, type: !3665)
!3681 = !DILocalVariable(name: "ret", scope: !3660, file: !3661, line: 336, type: !47)
!3682 = !DILocalVariable(name: "wc", scope: !3660, file: !3661, line: 337, type: !1392)
!3683 = !DILocalVariable(name: "uc", scope: !3684, file: !3661, line: 398, type: !54)
!3684 = distinct !DILexicalBlock(scope: !3685, file: !3661, line: 397, column: 5)
!3685 = distinct !DILexicalBlock(scope: !3660, file: !3661, line: 396, column: 7)
!3686 = !DILocation(line: 334, column: 23, scope: !3660)
!3687 = !DILocation(line: 334, column: 40, scope: !3660)
!3688 = !DILocation(line: 334, column: 50, scope: !3660)
!3689 = !DILocation(line: 334, column: 64, scope: !3660)
!3690 = !DILocation(line: 337, column: 3, scope: !3660)
!3691 = !DILocation(line: 353, column: 9, scope: !3692)
!3692 = distinct !DILexicalBlock(scope: !3660, file: !3661, line: 353, column: 7)
!3693 = !DILocation(line: 353, column: 7, scope: !3660)
!3694 = !DILocation(line: 388, column: 9, scope: !3660)
!3695 = !DILocation(line: 336, column: 10, scope: !3660)
!3696 = !DILocation(line: 396, column: 19, scope: !3685)
!3697 = !DILocation(line: 396, column: 31, scope: !3698)
!3698 = !DILexicalBlockFile(scope: !3685, file: !3661, discriminator: 1)
!3699 = !DILocation(line: 396, column: 26, scope: !3685)
!3700 = !DILocation(line: 396, column: 41, scope: !3701)
!3701 = !DILexicalBlockFile(scope: !3685, file: !3661, discriminator: 2)
!3702 = !DILocation(line: 396, column: 7, scope: !3703)
!3703 = !DILexicalBlockFile(scope: !3660, file: !3661, discriminator: 2)
!3704 = !DILocation(line: 398, column: 26, scope: !3684)
!3705 = !DILocation(line: 398, column: 21, scope: !3684)
!3706 = !DILocation(line: 399, column: 14, scope: !3684)
!3707 = !DILocation(line: 399, column: 12, scope: !3684)
!3708 = !DILocation(line: 405, column: 1, scope: !3660)
!3709 = distinct !DISubprogram(name: "close_stream", scope: !3710, file: !3710, line: 56, type: !3711, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !607, variables: !3753)
!3710 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3711 = !DISubroutineType(types: !3712)
!3712 = !{!85, !3713}
!3713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3714, size: 64)
!3714 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3139, line: 49, baseType: !3715)
!3715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3141, line: 241, size: 1728, elements: !3716)
!3716 = !{!3717, !3718, !3719, !3720, !3721, !3722, !3723, !3724, !3725, !3726, !3727, !3728, !3729, !3737, !3738, !3739, !3740, !3741, !3742, !3743, !3744, !3745, !3746, !3747, !3748, !3749, !3750, !3751, !3752}
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3715, file: !3141, line: 242, baseType: !85, size: 32)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3715, file: !3141, line: 247, baseType: !44, size: 64, offset: 64)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3715, file: !3141, line: 248, baseType: !44, size: 64, offset: 128)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3715, file: !3141, line: 249, baseType: !44, size: 64, offset: 192)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3715, file: !3141, line: 250, baseType: !44, size: 64, offset: 256)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3715, file: !3141, line: 251, baseType: !44, size: 64, offset: 320)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3715, file: !3141, line: 252, baseType: !44, size: 64, offset: 384)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3715, file: !3141, line: 253, baseType: !44, size: 64, offset: 448)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3715, file: !3141, line: 254, baseType: !44, size: 64, offset: 512)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3715, file: !3141, line: 256, baseType: !44, size: 64, offset: 576)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3715, file: !3141, line: 257, baseType: !44, size: 64, offset: 640)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3715, file: !3141, line: 258, baseType: !44, size: 64, offset: 704)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3715, file: !3141, line: 260, baseType: !3730, size: 64, offset: 768)
!3730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3731, size: 64)
!3731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3141, line: 156, size: 192, elements: !3732)
!3732 = !{!3733, !3734, !3736}
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3731, file: !3141, line: 157, baseType: !3730, size: 64)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3731, file: !3141, line: 158, baseType: !3735, size: 64, offset: 64)
!3735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3715, size: 64)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3731, file: !3141, line: 162, baseType: !85, size: 32, offset: 128)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3715, file: !3141, line: 262, baseType: !3735, size: 64, offset: 832)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3715, file: !3141, line: 264, baseType: !85, size: 32, offset: 896)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3715, file: !3141, line: 268, baseType: !85, size: 32, offset: 928)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3715, file: !3141, line: 270, baseType: !765, size: 64, offset: 960)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3715, file: !3141, line: 274, baseType: !156, size: 16, offset: 1024)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3715, file: !3141, line: 275, baseType: !3169, size: 8, offset: 1040)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3715, file: !3141, line: 276, baseType: !3171, size: 8, offset: 1048)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3715, file: !3141, line: 280, baseType: !3175, size: 64, offset: 1088)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3715, file: !3141, line: 289, baseType: !3178, size: 64, offset: 1152)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3715, file: !3141, line: 297, baseType: !46, size: 64, offset: 1216)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3715, file: !3141, line: 298, baseType: !46, size: 64, offset: 1280)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3715, file: !3141, line: 299, baseType: !46, size: 64, offset: 1344)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3715, file: !3141, line: 300, baseType: !46, size: 64, offset: 1408)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3715, file: !3141, line: 302, baseType: !47, size: 64, offset: 1472)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3715, file: !3141, line: 303, baseType: !85, size: 32, offset: 1536)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3715, file: !3141, line: 305, baseType: !3186, size: 160, offset: 1568)
!3753 = !{!3754, !3755, !3757, !3758}
!3754 = !DILocalVariable(name: "stream", arg: 1, scope: !3709, file: !3710, line: 56, type: !3713)
!3755 = !DILocalVariable(name: "some_pending", scope: !3709, file: !3710, line: 58, type: !3756)
!3756 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !115)
!3757 = !DILocalVariable(name: "prev_fail", scope: !3709, file: !3710, line: 59, type: !3756)
!3758 = !DILocalVariable(name: "fclose_fail", scope: !3709, file: !3710, line: 60, type: !3756)
!3759 = !DILocation(line: 56, column: 21, scope: !3709)
!3760 = !DILocation(line: 58, column: 30, scope: !3709)
!3761 = !DILocalVariable(name: "__stream", arg: 1, scope: !3762, file: !3763, line: 132, type: !3713)
!3762 = distinct !DISubprogram(name: "ferror_unlocked", scope: !3763, file: !3763, line: 132, type: !3711, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !607, variables: !3764)
!3763 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3764 = !{!3761}
!3765 = !DILocation(line: 132, column: 1, scope: !3762, inlinedAt: !3766)
!3766 = distinct !DILocation(line: 59, column: 27, scope: !3709)
!3767 = !DILocation(line: 134, column: 10, scope: !3762, inlinedAt: !3766)
!3768 = !{!3769, !717, i64 0}
!3769 = !{!"_IO_FILE", !717, i64 0, !637, i64 8, !637, i64 16, !637, i64 24, !637, i64 32, !637, i64 40, !637, i64 48, !637, i64 56, !637, i64 64, !637, i64 72, !637, i64 80, !637, i64 88, !637, i64 96, !637, i64 104, !717, i64 112, !717, i64 116, !2451, i64 120, !1744, i64 128, !638, i64 130, !638, i64 131, !637, i64 136, !2451, i64 144, !637, i64 152, !637, i64 160, !637, i64 168, !637, i64 176, !2451, i64 184, !717, i64 192, !638, i64 196}
!3770 = !DILocation(line: 59, column: 43, scope: !3709)
!3771 = !DILocation(line: 60, column: 29, scope: !3709)
!3772 = !DILocation(line: 60, column: 45, scope: !3709)
!3773 = !DILocation(line: 70, column: 17, scope: !3774)
!3774 = distinct !DILexicalBlock(scope: !3709, file: !3710, line: 70, column: 7)
!3775 = !DILocation(line: 70, column: 33, scope: !3776)
!3776 = !DILexicalBlockFile(scope: !3774, file: !3710, discriminator: 1)
!3777 = !DILocation(line: 70, column: 53, scope: !3778)
!3778 = !DILexicalBlockFile(scope: !3774, file: !3710, discriminator: 3)
!3779 = !DILocation(line: 70, column: 7, scope: !3780)
!3780 = !DILexicalBlockFile(scope: !3709, file: !3710, discriminator: 3)
!3781 = !DILocation(line: 72, column: 11, scope: !3782)
!3782 = distinct !DILexicalBlock(scope: !3774, file: !3710, line: 71, column: 5)
!3783 = !DILocation(line: 73, column: 9, scope: !3784)
!3784 = distinct !DILexicalBlock(scope: !3782, file: !3710, line: 72, column: 11)
!3785 = !DILocation(line: 73, column: 15, scope: !3784)
!3786 = !DILocation(line: 78, column: 1, scope: !3709)
!3787 = distinct !DISubprogram(name: "hard_locale", scope: !3788, file: !3788, line: 38, type: !3789, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !609, variables: !3791)
!3788 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3789 = !DISubroutineType(types: !3790)
!3790 = !{!115, !85}
!3791 = !{!3792, !3793, !3794, !3795, !3802, !3803, !3805, !3806, !3808, !3809, !3811}
!3792 = !DILocalVariable(name: "category", arg: 1, scope: !3787, file: !3788, line: 38, type: !85)
!3793 = !DILocalVariable(name: "hard", scope: !3787, file: !3788, line: 40, type: !115)
!3794 = !DILocalVariable(name: "p", scope: !3787, file: !3788, line: 41, type: !55)
!3795 = !DILocalVariable(name: "__s1_len", scope: !3796, file: !3788, line: 47, type: !47)
!3796 = distinct !DILexicalBlock(scope: !3797, file: !3788, line: 47, column: 15)
!3797 = distinct !DILexicalBlock(scope: !3798, file: !3788, line: 47, column: 15)
!3798 = distinct !DILexicalBlock(scope: !3799, file: !3788, line: 46, column: 9)
!3799 = distinct !DILexicalBlock(scope: !3800, file: !3788, line: 45, column: 11)
!3800 = distinct !DILexicalBlock(scope: !3801, file: !3788, line: 44, column: 5)
!3801 = distinct !DILexicalBlock(scope: !3787, file: !3788, line: 43, column: 7)
!3802 = !DILocalVariable(name: "__s2_len", scope: !3796, file: !3788, line: 47, type: !47)
!3803 = !DILocalVariable(name: "__s2", scope: !3804, file: !3788, line: 47, type: !52)
!3804 = distinct !DILexicalBlock(scope: !3796, file: !3788, line: 47, column: 15)
!3805 = !DILocalVariable(name: "__result", scope: !3804, file: !3788, line: 47, type: !85)
!3806 = !DILocalVariable(name: "__s1_len", scope: !3807, file: !3788, line: 47, type: !47)
!3807 = distinct !DILexicalBlock(scope: !3797, file: !3788, line: 47, column: 39)
!3808 = !DILocalVariable(name: "__s2_len", scope: !3807, file: !3788, line: 47, type: !47)
!3809 = !DILocalVariable(name: "__s2", scope: !3810, file: !3788, line: 47, type: !52)
!3810 = distinct !DILexicalBlock(scope: !3807, file: !3788, line: 47, column: 39)
!3811 = !DILocalVariable(name: "__result", scope: !3810, file: !3788, line: 47, type: !85)
!3812 = !DILocation(line: 38, column: 18, scope: !3787)
!3813 = !DILocation(line: 40, column: 8, scope: !3787)
!3814 = !DILocation(line: 41, column: 19, scope: !3787)
!3815 = !DILocation(line: 41, column: 15, scope: !3787)
!3816 = !DILocation(line: 43, column: 7, scope: !3801)
!3817 = !DILocation(line: 43, column: 7, scope: !3787)
!3818 = !DILocation(line: 47, column: 15, scope: !3796)
!3819 = !DILocation(line: 47, column: 15, scope: !3804)
!3820 = !DILocation(line: 47, column: 15, scope: !3821)
!3821 = !DILexicalBlockFile(scope: !3804, file: !3788, discriminator: 2)
!3822 = !DILocation(line: 47, column: 15, scope: !3823)
!3823 = !DILexicalBlockFile(scope: !3824, file: !3788, discriminator: 3)
!3824 = distinct !DILexicalBlock(scope: !3804, file: !3788, line: 47, column: 15)
!3825 = !DILocation(line: 47, column: 15, scope: !3826)
!3826 = !DILexicalBlockFile(scope: !3824, file: !3788, discriminator: 2)
!3827 = !DILocation(line: 47, column: 15, scope: !3828)
!3828 = !DILexicalBlockFile(scope: !3829, file: !3788, discriminator: 4)
!3829 = distinct !DILexicalBlock(scope: !3824, file: !3788, line: 47, column: 15)
!3830 = !DILocation(line: 47, column: 15, scope: !3831)
!3831 = !DILexicalBlockFile(scope: !3796, file: !3788, discriminator: 11)
!3832 = !DILocation(line: 47, column: 36, scope: !3833)
!3833 = !DILexicalBlockFile(scope: !3797, file: !3788, discriminator: 13)
!3834 = !DILocation(line: 47, column: 39, scope: !3807)
!3835 = !DILocation(line: 47, column: 39, scope: !3836)
!3836 = !DILexicalBlockFile(scope: !3807, file: !3788, discriminator: 26)
!3837 = !DILocation(line: 47, column: 59, scope: !3838)
!3838 = !DILexicalBlockFile(scope: !3797, file: !3788, discriminator: 27)
!3839 = !DILocation(line: 47, column: 15, scope: !3840)
!3840 = !DILexicalBlockFile(scope: !3798, file: !3788, discriminator: 27)
!3841 = !DILocation(line: 48, column: 13, scope: !3797)
!3842 = !DILocation(line: 71, column: 3, scope: !3787)
!3843 = distinct !DISubprogram(name: "locale_charset", scope: !574, file: !574, line: 393, type: !3844, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !230, variables: !3846)
!3844 = !DISubroutineType(types: !3845)
!3845 = !{!55}
!3846 = !{!3847, !3848, !3849, !3854}
!3847 = !DILocalVariable(name: "codeset", scope: !3843, file: !574, line: 395, type: !55)
!3848 = !DILocalVariable(name: "aliases", scope: !3843, file: !574, line: 396, type: !55)
!3849 = !DILocalVariable(name: "__s1_len", scope: !3850, file: !574, line: 592, type: !47)
!3850 = distinct !DILexicalBlock(scope: !3851, file: !574, line: 592, column: 9)
!3851 = distinct !DILexicalBlock(scope: !3852, file: !574, line: 592, column: 9)
!3852 = distinct !DILexicalBlock(scope: !3853, file: !574, line: 589, column: 3)
!3853 = distinct !DILexicalBlock(scope: !3843, file: !574, line: 589, column: 3)
!3854 = !DILocalVariable(name: "__s2_len", scope: !3850, file: !574, line: 592, type: !47)
!3855 = !DILocalVariable(name: "buf1", scope: !3856, file: !574, line: 196, type: !3923)
!3856 = distinct !DILexicalBlock(scope: !3857, file: !574, line: 194, column: 21)
!3857 = distinct !DILexicalBlock(scope: !3858, file: !574, line: 193, column: 19)
!3858 = distinct !DILexicalBlock(scope: !3859, file: !574, line: 193, column: 19)
!3859 = distinct !DILexicalBlock(scope: !3860, file: !574, line: 188, column: 17)
!3860 = distinct !DILexicalBlock(scope: !3861, file: !574, line: 181, column: 19)
!3861 = distinct !DILexicalBlock(scope: !3862, file: !574, line: 177, column: 13)
!3862 = distinct !DILexicalBlock(scope: !3863, file: !574, line: 173, column: 15)
!3863 = distinct !DILexicalBlock(scope: !3864, file: !574, line: 161, column: 9)
!3864 = distinct !DILexicalBlock(scope: !3865, file: !574, line: 157, column: 11)
!3865 = distinct !DILexicalBlock(scope: !3866, file: !574, line: 130, column: 5)
!3866 = distinct !DILexicalBlock(scope: !3867, file: !574, line: 129, column: 7)
!3867 = distinct !DISubprogram(name: "get_charset_aliases", scope: !574, file: !574, line: 124, type: !3844, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !230, variables: !3868)
!3868 = !{!3869, !3870, !3871, !3872, !3873, !3875, !3876, !3877, !3878, !3919, !3920, !3921, !3855, !3922, !3926, !3927, !3928}
!3869 = !DILocalVariable(name: "cp", scope: !3867, file: !574, line: 126, type: !55)
!3870 = !DILocalVariable(name: "dir", scope: !3865, file: !574, line: 132, type: !55)
!3871 = !DILocalVariable(name: "base", scope: !3865, file: !574, line: 133, type: !55)
!3872 = !DILocalVariable(name: "file_name", scope: !3865, file: !574, line: 134, type: !44)
!3873 = !DILocalVariable(name: "dir_len", scope: !3874, file: !574, line: 144, type: !47)
!3874 = distinct !DILexicalBlock(scope: !3865, file: !574, line: 143, column: 7)
!3875 = !DILocalVariable(name: "base_len", scope: !3874, file: !574, line: 145, type: !47)
!3876 = !DILocalVariable(name: "add_slash", scope: !3874, file: !574, line: 146, type: !85)
!3877 = !DILocalVariable(name: "fd", scope: !3863, file: !574, line: 162, type: !85)
!3878 = !DILocalVariable(name: "fp", scope: !3861, file: !574, line: 178, type: !3879)
!3879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3880, size: 64)
!3880 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3139, line: 49, baseType: !3881)
!3881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3141, line: 241, size: 1728, elements: !3882)
!3882 = !{!3883, !3884, !3885, !3886, !3887, !3888, !3889, !3890, !3891, !3892, !3893, !3894, !3895, !3903, !3904, !3905, !3906, !3907, !3908, !3909, !3910, !3911, !3912, !3913, !3914, !3915, !3916, !3917, !3918}
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3881, file: !3141, line: 242, baseType: !85, size: 32)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3881, file: !3141, line: 247, baseType: !44, size: 64, offset: 64)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3881, file: !3141, line: 248, baseType: !44, size: 64, offset: 128)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3881, file: !3141, line: 249, baseType: !44, size: 64, offset: 192)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3881, file: !3141, line: 250, baseType: !44, size: 64, offset: 256)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3881, file: !3141, line: 251, baseType: !44, size: 64, offset: 320)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3881, file: !3141, line: 252, baseType: !44, size: 64, offset: 384)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3881, file: !3141, line: 253, baseType: !44, size: 64, offset: 448)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3881, file: !3141, line: 254, baseType: !44, size: 64, offset: 512)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3881, file: !3141, line: 256, baseType: !44, size: 64, offset: 576)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3881, file: !3141, line: 257, baseType: !44, size: 64, offset: 640)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3881, file: !3141, line: 258, baseType: !44, size: 64, offset: 704)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3881, file: !3141, line: 260, baseType: !3896, size: 64, offset: 768)
!3896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3897, size: 64)
!3897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3141, line: 156, size: 192, elements: !3898)
!3898 = !{!3899, !3900, !3902}
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3897, file: !3141, line: 157, baseType: !3896, size: 64)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3897, file: !3141, line: 158, baseType: !3901, size: 64, offset: 64)
!3901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3881, size: 64)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3897, file: !3141, line: 162, baseType: !85, size: 32, offset: 128)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3881, file: !3141, line: 262, baseType: !3901, size: 64, offset: 832)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3881, file: !3141, line: 264, baseType: !85, size: 32, offset: 896)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3881, file: !3141, line: 268, baseType: !85, size: 32, offset: 928)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3881, file: !3141, line: 270, baseType: !765, size: 64, offset: 960)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3881, file: !3141, line: 274, baseType: !156, size: 16, offset: 1024)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3881, file: !3141, line: 275, baseType: !3169, size: 8, offset: 1040)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3881, file: !3141, line: 276, baseType: !3171, size: 8, offset: 1048)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3881, file: !3141, line: 280, baseType: !3175, size: 64, offset: 1088)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3881, file: !3141, line: 289, baseType: !3178, size: 64, offset: 1152)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3881, file: !3141, line: 297, baseType: !46, size: 64, offset: 1216)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3881, file: !3141, line: 298, baseType: !46, size: 64, offset: 1280)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3881, file: !3141, line: 299, baseType: !46, size: 64, offset: 1344)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3881, file: !3141, line: 300, baseType: !46, size: 64, offset: 1408)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3881, file: !3141, line: 302, baseType: !47, size: 64, offset: 1472)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3881, file: !3141, line: 303, baseType: !85, size: 32, offset: 1536)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3881, file: !3141, line: 305, baseType: !3186, size: 160, offset: 1568)
!3919 = !DILocalVariable(name: "res_ptr", scope: !3859, file: !574, line: 190, type: !44)
!3920 = !DILocalVariable(name: "res_size", scope: !3859, file: !574, line: 191, type: !47)
!3921 = !DILocalVariable(name: "c", scope: !3856, file: !574, line: 195, type: !85)
!3922 = !DILocalVariable(name: "buf2", scope: !3856, file: !574, line: 197, type: !3923)
!3923 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 408, elements: !3924)
!3924 = !{!3925}
!3925 = !DISubrange(count: 51)
!3926 = !DILocalVariable(name: "l1", scope: !3856, file: !574, line: 198, type: !47)
!3927 = !DILocalVariable(name: "l2", scope: !3856, file: !574, line: 198, type: !47)
!3928 = !DILocalVariable(name: "old_res_ptr", scope: !3856, file: !574, line: 199, type: !44)
!3929 = !DILocation(line: 196, column: 28, scope: !3856, inlinedAt: !3930)
!3930 = distinct !DILocation(line: 589, column: 18, scope: !3853)
!3931 = !DILocation(line: 197, column: 28, scope: !3856, inlinedAt: !3930)
!3932 = !DILocation(line: 403, column: 13, scope: !3843)
!3933 = !DILocation(line: 395, column: 15, scope: !3843)
!3934 = !DILocation(line: 584, column: 15, scope: !3935)
!3935 = distinct !DILexicalBlock(scope: !3843, file: !574, line: 584, column: 7)
!3936 = !DILocation(line: 584, column: 7, scope: !3843)
!3937 = !DILocation(line: 128, column: 8, scope: !3867, inlinedAt: !3930)
!3938 = !DILocation(line: 126, column: 15, scope: !3867, inlinedAt: !3930)
!3939 = !DILocation(line: 129, column: 10, scope: !3866, inlinedAt: !3930)
!3940 = !DILocation(line: 129, column: 7, scope: !3867, inlinedAt: !3930)
!3941 = !DILocation(line: 138, column: 13, scope: !3865, inlinedAt: !3930)
!3942 = !DILocation(line: 132, column: 19, scope: !3865, inlinedAt: !3930)
!3943 = !DILocation(line: 139, column: 15, scope: !3944, inlinedAt: !3930)
!3944 = distinct !DILexicalBlock(scope: !3865, file: !574, line: 139, column: 11)
!3945 = !DILocation(line: 139, column: 23, scope: !3944, inlinedAt: !3930)
!3946 = !DILocation(line: 139, column: 26, scope: !3947, inlinedAt: !3930)
!3947 = !DILexicalBlockFile(scope: !3944, file: !574, discriminator: 1)
!3948 = !DILocation(line: 139, column: 33, scope: !3947, inlinedAt: !3930)
!3949 = !DILocation(line: 139, column: 11, scope: !3950, inlinedAt: !3930)
!3950 = !DILexicalBlockFile(scope: !3865, file: !574, discriminator: 1)
!3951 = !DILocation(line: 140, column: 9, scope: !3944, inlinedAt: !3930)
!3952 = !DILocation(line: 144, column: 26, scope: !3874, inlinedAt: !3930)
!3953 = !DILocation(line: 144, column: 16, scope: !3874, inlinedAt: !3930)
!3954 = !DILocation(line: 145, column: 16, scope: !3874, inlinedAt: !3930)
!3955 = !DILocation(line: 146, column: 34, scope: !3874, inlinedAt: !3930)
!3956 = !DILocation(line: 146, column: 38, scope: !3874, inlinedAt: !3930)
!3957 = !DILocation(line: 146, column: 42, scope: !3958, inlinedAt: !3930)
!3958 = !DILexicalBlockFile(scope: !3874, file: !574, discriminator: 1)
!3959 = !DILocation(line: 146, column: 41, scope: !3958, inlinedAt: !3930)
!3960 = !DILocation(line: 147, column: 48, scope: !3874, inlinedAt: !3930)
!3961 = !DILocation(line: 147, column: 46, scope: !3874, inlinedAt: !3930)
!3962 = !DILocation(line: 147, column: 69, scope: !3874, inlinedAt: !3930)
!3963 = !DILocation(line: 147, column: 30, scope: !3874, inlinedAt: !3930)
!3964 = !DILocation(line: 134, column: 13, scope: !3865, inlinedAt: !3930)
!3965 = !DILocation(line: 148, column: 13, scope: !3874, inlinedAt: !3930)
!3966 = !DILocation(line: 150, column: 13, scope: !3967, inlinedAt: !3930)
!3967 = distinct !DILexicalBlock(scope: !3968, file: !574, line: 149, column: 11)
!3968 = distinct !DILexicalBlock(scope: !3874, file: !574, line: 148, column: 13)
!3969 = !DILocation(line: 151, column: 17, scope: !3967, inlinedAt: !3930)
!3970 = !DILocation(line: 152, column: 34, scope: !3971, inlinedAt: !3930)
!3971 = distinct !DILexicalBlock(scope: !3967, file: !574, line: 151, column: 17)
!3972 = !DILocation(line: 153, column: 41, scope: !3967, inlinedAt: !3930)
!3973 = !DILocation(line: 153, column: 13, scope: !3967, inlinedAt: !3930)
!3974 = !DILocation(line: 157, column: 11, scope: !3865, inlinedAt: !3930)
!3975 = !DILocation(line: 171, column: 16, scope: !3863, inlinedAt: !3930)
!3976 = !DILocation(line: 162, column: 15, scope: !3863, inlinedAt: !3930)
!3977 = !DILocation(line: 173, column: 18, scope: !3862, inlinedAt: !3930)
!3978 = !DILocation(line: 173, column: 15, scope: !3863, inlinedAt: !3930)
!3979 = !DILocation(line: 180, column: 20, scope: !3861, inlinedAt: !3930)
!3980 = !DILocation(line: 178, column: 21, scope: !3861, inlinedAt: !3930)
!3981 = !DILocation(line: 181, column: 22, scope: !3860, inlinedAt: !3930)
!3982 = !DILocation(line: 181, column: 19, scope: !3861, inlinedAt: !3930)
!3983 = !DILocation(line: 190, column: 25, scope: !3859, inlinedAt: !3930)
!3984 = !DILocation(line: 184, column: 19, scope: !3985, inlinedAt: !3930)
!3985 = distinct !DILexicalBlock(scope: !3860, file: !574, line: 182, column: 17)
!3986 = !DILocation(line: 186, column: 17, scope: !3985, inlinedAt: !3930)
!3987 = !DILocation(line: 191, column: 26, scope: !3859, inlinedAt: !3930)
!3988 = !DILocation(line: 196, column: 23, scope: !3856, inlinedAt: !3930)
!3989 = !DILocation(line: 197, column: 23, scope: !3856, inlinedAt: !3930)
!3990 = !DILocalVariable(name: "__fp", arg: 1, scope: !3991, file: !3763, line: 63, type: !3879)
!3991 = distinct !DISubprogram(name: "getc_unlocked", scope: !3763, file: !3763, line: 63, type: !3992, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !230, variables: !3994)
!3992 = !DISubroutineType(types: !3993)
!3993 = !{!85, !3879}
!3994 = !{!3990}
!3995 = !DILocation(line: 63, column: 22, scope: !3991, inlinedAt: !3996)
!3996 = distinct !DILocation(line: 201, column: 27, scope: !3856, inlinedAt: !3930)
!3997 = !DILocation(line: 65, column: 10, scope: !3991, inlinedAt: !3996)
!3998 = !{!3769, !637, i64 8}
!3999 = !{!3769, !637, i64 16}
!4000 = !{!"branch_weights", i32 2000, i32 1}
!4001 = !DILocation(line: 65, column: 10, scope: !4002, inlinedAt: !3996)
!4002 = !DILexicalBlockFile(scope: !3991, file: !3763, discriminator: 1)
!4003 = !DILocation(line: 65, column: 10, scope: !4004, inlinedAt: !3996)
!4004 = !DILexicalBlockFile(scope: !3991, file: !3763, discriminator: 2)
!4005 = !DILocation(line: 65, column: 10, scope: !4006, inlinedAt: !3996)
!4006 = !DILexicalBlockFile(scope: !3991, file: !3763, discriminator: 3)
!4007 = !DILocation(line: 195, column: 27, scope: !3856, inlinedAt: !3930)
!4008 = !DILocation(line: 202, column: 27, scope: !3856, inlinedAt: !3930)
!4009 = !DILocation(line: 63, column: 22, scope: !3991, inlinedAt: !4010)
!4010 = distinct !DILocation(line: 210, column: 33, scope: !4011, inlinedAt: !3930)
!4011 = distinct !DILexicalBlock(scope: !4012, file: !574, line: 207, column: 25)
!4012 = distinct !DILexicalBlock(scope: !3856, file: !574, line: 206, column: 27)
!4013 = !DILocation(line: 65, column: 10, scope: !3991, inlinedAt: !4010)
!4014 = !DILocation(line: 65, column: 10, scope: !4002, inlinedAt: !4010)
!4015 = !DILocation(line: 65, column: 10, scope: !4004, inlinedAt: !4010)
!4016 = !DILocation(line: 65, column: 10, scope: !4006, inlinedAt: !4010)
!4017 = !DILocation(line: 210, column: 29, scope: !4018, inlinedAt: !3930)
!4018 = !DILexicalBlockFile(scope: !4011, file: !574, discriminator: 1)
!4019 = distinct !{!4019, !4020, !4021}
!4020 = !DILocation(line: 193, column: 19, scope: !3858)
!4021 = !DILocation(line: 241, column: 21, scope: !3858)
!4022 = !DILocation(line: 216, column: 23, scope: !3856, inlinedAt: !3930)
!4023 = !DILocation(line: 217, column: 27, scope: !4024, inlinedAt: !3930)
!4024 = distinct !DILexicalBlock(scope: !3856, file: !574, line: 217, column: 27)
!4025 = !DILocation(line: 217, column: 64, scope: !4024, inlinedAt: !3930)
!4026 = !DILocation(line: 217, column: 27, scope: !3856, inlinedAt: !3930)
!4027 = !DILocation(line: 219, column: 28, scope: !3856, inlinedAt: !3930)
!4028 = !DILocation(line: 198, column: 30, scope: !3856, inlinedAt: !3930)
!4029 = !DILocation(line: 220, column: 28, scope: !3856, inlinedAt: !3930)
!4030 = !DILocation(line: 198, column: 34, scope: !3856, inlinedAt: !3930)
!4031 = !DILocation(line: 199, column: 29, scope: !3856, inlinedAt: !3930)
!4032 = !DILocation(line: 222, column: 36, scope: !4033, inlinedAt: !3930)
!4033 = distinct !DILexicalBlock(scope: !3856, file: !574, line: 222, column: 27)
!4034 = !DILocation(line: 222, column: 27, scope: !3856, inlinedAt: !3930)
!4035 = !DILocation(line: 225, column: 63, scope: !4036, inlinedAt: !3930)
!4036 = distinct !DILexicalBlock(scope: !4033, file: !574, line: 223, column: 25)
!4037 = !DILocation(line: 225, column: 46, scope: !4036, inlinedAt: !3930)
!4038 = !DILocation(line: 226, column: 25, scope: !4036, inlinedAt: !3930)
!4039 = !DILocation(line: 229, column: 36, scope: !4040, inlinedAt: !3930)
!4040 = distinct !DILexicalBlock(scope: !4033, file: !574, line: 228, column: 25)
!4041 = !DILocation(line: 230, column: 73, scope: !4040, inlinedAt: !3930)
!4042 = !DILocation(line: 230, column: 46, scope: !4040, inlinedAt: !3930)
!4043 = !DILocation(line: 232, column: 35, scope: !4044, inlinedAt: !3930)
!4044 = distinct !DILexicalBlock(scope: !3856, file: !574, line: 232, column: 27)
!4045 = !DILocation(line: 232, column: 27, scope: !3856, inlinedAt: !3930)
!4046 = !DILocation(line: 236, column: 27, scope: !4047, inlinedAt: !3930)
!4047 = distinct !DILexicalBlock(scope: !4044, file: !574, line: 233, column: 25)
!4048 = !DILocation(line: 237, column: 27, scope: !4047, inlinedAt: !3930)
!4049 = !DILocation(line: 239, column: 39, scope: !3856, inlinedAt: !3930)
!4050 = !DILocation(line: 239, column: 50, scope: !3856, inlinedAt: !3930)
!4051 = !DILocation(line: 239, column: 61, scope: !3856, inlinedAt: !3930)
!4052 = !DILocalVariable(name: "__dest", arg: 1, scope: !4053, file: !4054, line: 107, type: !4057)
!4053 = distinct !DISubprogram(name: "strcpy", scope: !4054, file: !4054, line: 107, type: !4055, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !230, variables: !4059)
!4054 = !DIFile(filename: "/usr/include/bits/string3.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4055 = !DISubroutineType(types: !4056)
!4056 = !{!44, !4057, !4058}
!4057 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !44)
!4058 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !55)
!4059 = !{!4052, !4060}
!4060 = !DILocalVariable(name: "__src", arg: 2, scope: !4053, file: !4054, line: 107, type: !4058)
!4061 = !DILocation(line: 107, column: 1, scope: !4053, inlinedAt: !4062)
!4062 = distinct !DILocation(line: 239, column: 23, scope: !3856, inlinedAt: !3930)
!4063 = !DILocation(line: 109, column: 49, scope: !4053, inlinedAt: !4062)
!4064 = !DILocation(line: 109, column: 10, scope: !4053, inlinedAt: !4062)
!4065 = !DILocation(line: 107, column: 1, scope: !4053, inlinedAt: !4066)
!4066 = distinct !DILocation(line: 240, column: 23, scope: !3856, inlinedAt: !3930)
!4067 = !DILocation(line: 109, column: 49, scope: !4053, inlinedAt: !4066)
!4068 = !DILocation(line: 109, column: 10, scope: !4053, inlinedAt: !4066)
!4069 = !DILocation(line: 241, column: 21, scope: !3857, inlinedAt: !3930)
!4070 = !DILocation(line: 242, column: 19, scope: !3859, inlinedAt: !3930)
!4071 = !DILocation(line: 243, column: 32, scope: !4072, inlinedAt: !3930)
!4072 = distinct !DILexicalBlock(scope: !3859, file: !574, line: 243, column: 23)
!4073 = !DILocation(line: 243, column: 23, scope: !3859, inlinedAt: !3930)
!4074 = !DILocation(line: 247, column: 33, scope: !4075, inlinedAt: !3930)
!4075 = distinct !DILexicalBlock(scope: !4072, file: !574, line: 246, column: 21)
!4076 = !DILocation(line: 247, column: 45, scope: !4075, inlinedAt: !3930)
!4077 = !DILocation(line: 253, column: 11, scope: !3863, inlinedAt: !3930)
!4078 = !DILocation(line: 377, column: 23, scope: !3865, inlinedAt: !3930)
!4079 = !DILocation(line: 378, column: 5, scope: !3865, inlinedAt: !3930)
!4080 = !DILocation(line: 396, column: 15, scope: !3843)
!4081 = !DILocation(line: 590, column: 8, scope: !3852)
!4082 = !DILocation(line: 590, column: 17, scope: !3852)
!4083 = !DILocation(line: 589, column: 3, scope: !4084)
!4084 = !DILexicalBlockFile(scope: !3853, file: !574, discriminator: 1)
!4085 = !DILocation(line: 592, column: 9, scope: !3850)
!4086 = !DILocation(line: 592, column: 35, scope: !3851)
!4087 = !DILocation(line: 593, column: 9, scope: !3851)
!4088 = !DILocation(line: 593, column: 24, scope: !4089)
!4089 = !DILexicalBlockFile(scope: !3851, file: !574, discriminator: 1)
!4090 = !DILocation(line: 593, column: 31, scope: !4089)
!4091 = !DILocation(line: 593, column: 34, scope: !4092)
!4092 = !DILexicalBlockFile(scope: !3851, file: !574, discriminator: 2)
!4093 = !DILocation(line: 593, column: 45, scope: !4092)
!4094 = !DILocation(line: 592, column: 9, scope: !4095)
!4095 = !DILexicalBlockFile(scope: !3852, file: !574, discriminator: 1)
!4096 = !DILocation(line: 595, column: 29, scope: !4097)
!4097 = distinct !DILexicalBlock(scope: !3851, file: !574, line: 594, column: 7)
!4098 = !DILocation(line: 595, column: 27, scope: !4097)
!4099 = !DILocation(line: 595, column: 46, scope: !4097)
!4100 = !DILocation(line: 596, column: 9, scope: !4097)
!4101 = !DILocation(line: 591, column: 19, scope: !3852)
!4102 = !DILocation(line: 591, column: 36, scope: !3852)
!4103 = !DILocation(line: 591, column: 16, scope: !3852)
!4104 = !DILocation(line: 591, column: 52, scope: !4095)
!4105 = !DILocation(line: 591, column: 69, scope: !3852)
!4106 = !DILocation(line: 591, column: 49, scope: !3852)
!4107 = distinct !{!4107, !4108, !4109}
!4108 = !DILocation(line: 589, column: 3, scope: !3853)
!4109 = !DILocation(line: 597, column: 7, scope: !3853)
!4110 = !DILocation(line: 602, column: 7, scope: !4111)
!4111 = distinct !DILexicalBlock(scope: !3843, file: !574, line: 602, column: 7)
!4112 = !DILocation(line: 602, column: 18, scope: !4111)
!4113 = !DILocation(line: 602, column: 7, scope: !3843)
!4114 = !DILocation(line: 612, column: 3, scope: !3843)
!4115 = distinct !DISubprogram(name: "rpl_fclose", scope: !4116, file: !4116, line: 56, type: !4117, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !612, variables: !4159)
!4116 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4117 = !DISubroutineType(types: !4118)
!4118 = !{!85, !4119}
!4119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4120, size: 64)
!4120 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3139, line: 49, baseType: !4121)
!4121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3141, line: 241, size: 1728, elements: !4122)
!4122 = !{!4123, !4124, !4125, !4126, !4127, !4128, !4129, !4130, !4131, !4132, !4133, !4134, !4135, !4143, !4144, !4145, !4146, !4147, !4148, !4149, !4150, !4151, !4152, !4153, !4154, !4155, !4156, !4157, !4158}
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4121, file: !3141, line: 242, baseType: !85, size: 32)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4121, file: !3141, line: 247, baseType: !44, size: 64, offset: 64)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4121, file: !3141, line: 248, baseType: !44, size: 64, offset: 128)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4121, file: !3141, line: 249, baseType: !44, size: 64, offset: 192)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4121, file: !3141, line: 250, baseType: !44, size: 64, offset: 256)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4121, file: !3141, line: 251, baseType: !44, size: 64, offset: 320)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4121, file: !3141, line: 252, baseType: !44, size: 64, offset: 384)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4121, file: !3141, line: 253, baseType: !44, size: 64, offset: 448)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4121, file: !3141, line: 254, baseType: !44, size: 64, offset: 512)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4121, file: !3141, line: 256, baseType: !44, size: 64, offset: 576)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4121, file: !3141, line: 257, baseType: !44, size: 64, offset: 640)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4121, file: !3141, line: 258, baseType: !44, size: 64, offset: 704)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4121, file: !3141, line: 260, baseType: !4136, size: 64, offset: 768)
!4136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4137, size: 64)
!4137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3141, line: 156, size: 192, elements: !4138)
!4138 = !{!4139, !4140, !4142}
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4137, file: !3141, line: 157, baseType: !4136, size: 64)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4137, file: !3141, line: 158, baseType: !4141, size: 64, offset: 64)
!4141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4121, size: 64)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4137, file: !3141, line: 162, baseType: !85, size: 32, offset: 128)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4121, file: !3141, line: 262, baseType: !4141, size: 64, offset: 832)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4121, file: !3141, line: 264, baseType: !85, size: 32, offset: 896)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4121, file: !3141, line: 268, baseType: !85, size: 32, offset: 928)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4121, file: !3141, line: 270, baseType: !765, size: 64, offset: 960)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4121, file: !3141, line: 274, baseType: !156, size: 16, offset: 1024)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4121, file: !3141, line: 275, baseType: !3169, size: 8, offset: 1040)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4121, file: !3141, line: 276, baseType: !3171, size: 8, offset: 1048)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4121, file: !3141, line: 280, baseType: !3175, size: 64, offset: 1088)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4121, file: !3141, line: 289, baseType: !3178, size: 64, offset: 1152)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4121, file: !3141, line: 297, baseType: !46, size: 64, offset: 1216)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4121, file: !3141, line: 298, baseType: !46, size: 64, offset: 1280)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4121, file: !3141, line: 299, baseType: !46, size: 64, offset: 1344)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4121, file: !3141, line: 300, baseType: !46, size: 64, offset: 1408)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4121, file: !3141, line: 302, baseType: !47, size: 64, offset: 1472)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4121, file: !3141, line: 303, baseType: !85, size: 32, offset: 1536)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4121, file: !3141, line: 305, baseType: !3186, size: 160, offset: 1568)
!4159 = !{!4160, !4161, !4162, !4163}
!4160 = !DILocalVariable(name: "fp", arg: 1, scope: !4115, file: !4116, line: 56, type: !4119)
!4161 = !DILocalVariable(name: "saved_errno", scope: !4115, file: !4116, line: 58, type: !85)
!4162 = !DILocalVariable(name: "fd", scope: !4115, file: !4116, line: 59, type: !85)
!4163 = !DILocalVariable(name: "result", scope: !4115, file: !4116, line: 60, type: !85)
!4164 = !DILocation(line: 56, column: 19, scope: !4115)
!4165 = !DILocation(line: 58, column: 7, scope: !4115)
!4166 = !DILocation(line: 60, column: 7, scope: !4115)
!4167 = !DILocation(line: 63, column: 8, scope: !4115)
!4168 = !DILocation(line: 59, column: 7, scope: !4115)
!4169 = !DILocation(line: 64, column: 10, scope: !4170)
!4170 = distinct !DILexicalBlock(scope: !4115, file: !4116, line: 64, column: 7)
!4171 = !DILocation(line: 64, column: 7, scope: !4115)
!4172 = !DILocation(line: 65, column: 12, scope: !4170)
!4173 = !DILocation(line: 65, column: 5, scope: !4170)
!4174 = !DILocation(line: 70, column: 9, scope: !4175)
!4175 = distinct !DILexicalBlock(scope: !4115, file: !4116, line: 70, column: 7)
!4176 = !DILocation(line: 70, column: 23, scope: !4175)
!4177 = !DILocation(line: 70, column: 33, scope: !4178)
!4178 = !DILexicalBlockFile(scope: !4175, file: !4116, discriminator: 1)
!4179 = !DILocation(line: 70, column: 26, scope: !4180)
!4180 = !DILexicalBlockFile(scope: !4175, file: !4116, discriminator: 3)
!4181 = !DILocation(line: 70, column: 59, scope: !4178)
!4182 = !DILocation(line: 71, column: 7, scope: !4175)
!4183 = !DILocation(line: 71, column: 10, scope: !4178)
!4184 = !DILocation(line: 70, column: 7, scope: !4185)
!4185 = !DILexicalBlockFile(scope: !4115, file: !4116, discriminator: 2)
!4186 = !DILocation(line: 98, column: 12, scope: !4115)
!4187 = !DILocation(line: 103, column: 7, scope: !4115)
!4188 = !DILocation(line: 72, column: 19, scope: !4175)
!4189 = !DILocation(line: 103, column: 19, scope: !4190)
!4190 = distinct !DILexicalBlock(scope: !4115, file: !4116, line: 103, column: 7)
!4191 = !DILocation(line: 105, column: 13, scope: !4192)
!4192 = distinct !DILexicalBlock(scope: !4190, file: !4116, line: 104, column: 5)
!4193 = !DILocation(line: 107, column: 5, scope: !4192)
!4194 = !DILocation(line: 110, column: 1, scope: !4115)
!4195 = distinct !DISubprogram(name: "rpl_fflush", scope: !4196, file: !4196, line: 127, type: !4197, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !614, variables: !4239)
!4196 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4197 = !DISubroutineType(types: !4198)
!4198 = !{!85, !4199}
!4199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4200, size: 64)
!4200 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3139, line: 49, baseType: !4201)
!4201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3141, line: 241, size: 1728, elements: !4202)
!4202 = !{!4203, !4204, !4205, !4206, !4207, !4208, !4209, !4210, !4211, !4212, !4213, !4214, !4215, !4223, !4224, !4225, !4226, !4227, !4228, !4229, !4230, !4231, !4232, !4233, !4234, !4235, !4236, !4237, !4238}
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4201, file: !3141, line: 242, baseType: !85, size: 32)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4201, file: !3141, line: 247, baseType: !44, size: 64, offset: 64)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4201, file: !3141, line: 248, baseType: !44, size: 64, offset: 128)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4201, file: !3141, line: 249, baseType: !44, size: 64, offset: 192)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4201, file: !3141, line: 250, baseType: !44, size: 64, offset: 256)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4201, file: !3141, line: 251, baseType: !44, size: 64, offset: 320)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4201, file: !3141, line: 252, baseType: !44, size: 64, offset: 384)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4201, file: !3141, line: 253, baseType: !44, size: 64, offset: 448)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4201, file: !3141, line: 254, baseType: !44, size: 64, offset: 512)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4201, file: !3141, line: 256, baseType: !44, size: 64, offset: 576)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4201, file: !3141, line: 257, baseType: !44, size: 64, offset: 640)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4201, file: !3141, line: 258, baseType: !44, size: 64, offset: 704)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4201, file: !3141, line: 260, baseType: !4216, size: 64, offset: 768)
!4216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4217, size: 64)
!4217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3141, line: 156, size: 192, elements: !4218)
!4218 = !{!4219, !4220, !4222}
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4217, file: !3141, line: 157, baseType: !4216, size: 64)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4217, file: !3141, line: 158, baseType: !4221, size: 64, offset: 64)
!4221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4201, size: 64)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4217, file: !3141, line: 162, baseType: !85, size: 32, offset: 128)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4201, file: !3141, line: 262, baseType: !4221, size: 64, offset: 832)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4201, file: !3141, line: 264, baseType: !85, size: 32, offset: 896)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4201, file: !3141, line: 268, baseType: !85, size: 32, offset: 928)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4201, file: !3141, line: 270, baseType: !765, size: 64, offset: 960)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4201, file: !3141, line: 274, baseType: !156, size: 16, offset: 1024)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4201, file: !3141, line: 275, baseType: !3169, size: 8, offset: 1040)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4201, file: !3141, line: 276, baseType: !3171, size: 8, offset: 1048)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4201, file: !3141, line: 280, baseType: !3175, size: 64, offset: 1088)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4201, file: !3141, line: 289, baseType: !3178, size: 64, offset: 1152)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4201, file: !3141, line: 297, baseType: !46, size: 64, offset: 1216)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4201, file: !3141, line: 298, baseType: !46, size: 64, offset: 1280)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4201, file: !3141, line: 299, baseType: !46, size: 64, offset: 1344)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4201, file: !3141, line: 300, baseType: !46, size: 64, offset: 1408)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4201, file: !3141, line: 302, baseType: !47, size: 64, offset: 1472)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4201, file: !3141, line: 303, baseType: !85, size: 32, offset: 1536)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4201, file: !3141, line: 305, baseType: !3186, size: 160, offset: 1568)
!4239 = !{!4240}
!4240 = !DILocalVariable(name: "stream", arg: 1, scope: !4195, file: !4196, line: 127, type: !4199)
!4241 = !DILocation(line: 127, column: 19, scope: !4195)
!4242 = !DILocation(line: 148, column: 14, scope: !4243)
!4243 = distinct !DILexicalBlock(scope: !4195, file: !4196, line: 148, column: 7)
!4244 = !DILocation(line: 148, column: 22, scope: !4243)
!4245 = !DILocation(line: 148, column: 27, scope: !4246)
!4246 = !DILexicalBlockFile(scope: !4243, file: !4196, discriminator: 1)
!4247 = !DILocation(line: 148, column: 7, scope: !4248)
!4248 = !DILexicalBlockFile(scope: !4195, file: !4196, discriminator: 1)
!4249 = !DILocation(line: 149, column: 12, scope: !4243)
!4250 = !DILocation(line: 149, column: 5, scope: !4243)
!4251 = !DILocalVariable(name: "fp", arg: 1, scope: !4252, file: !4196, line: 40, type: !4199)
!4252 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !4196, file: !4196, line: 40, type: !4253, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !614, variables: !4255)
!4253 = !DISubroutineType(types: !4254)
!4254 = !{null, !4199}
!4255 = !{!4251}
!4256 = !DILocation(line: 40, column: 48, scope: !4252, inlinedAt: !4257)
!4257 = distinct !DILocation(line: 153, column: 3, scope: !4195)
!4258 = !DILocation(line: 42, column: 11, scope: !4259, inlinedAt: !4257)
!4259 = distinct !DILexicalBlock(scope: !4252, file: !4196, line: 42, column: 7)
!4260 = !DILocation(line: 42, column: 18, scope: !4259, inlinedAt: !4257)
!4261 = !DILocation(line: 42, column: 7, scope: !4252, inlinedAt: !4257)
!4262 = !DILocation(line: 44, column: 5, scope: !4259, inlinedAt: !4257)
!4263 = !DILocation(line: 155, column: 10, scope: !4195)
!4264 = !DILocation(line: 155, column: 3, scope: !4195)
!4265 = !DILocation(line: 229, column: 1, scope: !4195)
!4266 = distinct !DISubprogram(name: "rpl_fseeko", scope: !4267, file: !4267, line: 28, type: !4268, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !616, variables: !4311)
!4267 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4268 = !DISubroutineType(types: !4269)
!4269 = !{!85, !4270, !4310, !85}
!4270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4271, size: 64)
!4271 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3139, line: 49, baseType: !4272)
!4272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3141, line: 241, size: 1728, elements: !4273)
!4273 = !{!4274, !4275, !4276, !4277, !4278, !4279, !4280, !4281, !4282, !4283, !4284, !4285, !4286, !4294, !4295, !4296, !4297, !4298, !4299, !4300, !4301, !4302, !4303, !4304, !4305, !4306, !4307, !4308, !4309}
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4272, file: !3141, line: 242, baseType: !85, size: 32)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4272, file: !3141, line: 247, baseType: !44, size: 64, offset: 64)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4272, file: !3141, line: 248, baseType: !44, size: 64, offset: 128)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4272, file: !3141, line: 249, baseType: !44, size: 64, offset: 192)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4272, file: !3141, line: 250, baseType: !44, size: 64, offset: 256)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4272, file: !3141, line: 251, baseType: !44, size: 64, offset: 320)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4272, file: !3141, line: 252, baseType: !44, size: 64, offset: 384)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4272, file: !3141, line: 253, baseType: !44, size: 64, offset: 448)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4272, file: !3141, line: 254, baseType: !44, size: 64, offset: 512)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4272, file: !3141, line: 256, baseType: !44, size: 64, offset: 576)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4272, file: !3141, line: 257, baseType: !44, size: 64, offset: 640)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4272, file: !3141, line: 258, baseType: !44, size: 64, offset: 704)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4272, file: !3141, line: 260, baseType: !4287, size: 64, offset: 768)
!4287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4288, size: 64)
!4288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3141, line: 156, size: 192, elements: !4289)
!4289 = !{!4290, !4291, !4293}
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4288, file: !3141, line: 157, baseType: !4287, size: 64)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4288, file: !3141, line: 158, baseType: !4292, size: 64, offset: 64)
!4292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4272, size: 64)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4288, file: !3141, line: 162, baseType: !85, size: 32, offset: 128)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4272, file: !3141, line: 262, baseType: !4292, size: 64, offset: 832)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4272, file: !3141, line: 264, baseType: !85, size: 32, offset: 896)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4272, file: !3141, line: 268, baseType: !85, size: 32, offset: 928)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4272, file: !3141, line: 270, baseType: !765, size: 64, offset: 960)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4272, file: !3141, line: 274, baseType: !156, size: 16, offset: 1024)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4272, file: !3141, line: 275, baseType: !3169, size: 8, offset: 1040)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4272, file: !3141, line: 276, baseType: !3171, size: 8, offset: 1048)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4272, file: !3141, line: 280, baseType: !3175, size: 64, offset: 1088)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4272, file: !3141, line: 289, baseType: !3178, size: 64, offset: 1152)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4272, file: !3141, line: 297, baseType: !46, size: 64, offset: 1216)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4272, file: !3141, line: 298, baseType: !46, size: 64, offset: 1280)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4272, file: !3141, line: 299, baseType: !46, size: 64, offset: 1344)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4272, file: !3141, line: 300, baseType: !46, size: 64, offset: 1408)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4272, file: !3141, line: 302, baseType: !47, size: 64, offset: 1472)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4272, file: !3141, line: 303, baseType: !85, size: 32, offset: 1536)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4272, file: !3141, line: 305, baseType: !3186, size: 160, offset: 1568)
!4310 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !3139, line: 91, baseType: !765)
!4311 = !{!4312, !4313, !4314, !4315}
!4312 = !DILocalVariable(name: "fp", arg: 1, scope: !4266, file: !4267, line: 28, type: !4270)
!4313 = !DILocalVariable(name: "offset", arg: 2, scope: !4266, file: !4267, line: 28, type: !4310)
!4314 = !DILocalVariable(name: "whence", arg: 3, scope: !4266, file: !4267, line: 28, type: !85)
!4315 = !DILocalVariable(name: "pos", scope: !4316, file: !4267, line: 116, type: !4310)
!4316 = distinct !DILexicalBlock(scope: !4317, file: !4267, line: 112, column: 5)
!4317 = distinct !DILexicalBlock(scope: !4266, file: !4267, line: 51, column: 7)
!4318 = !DILocation(line: 28, column: 15, scope: !4266)
!4319 = !DILocation(line: 28, column: 25, scope: !4266)
!4320 = !DILocation(line: 28, column: 37, scope: !4266)
!4321 = !DILocation(line: 51, column: 11, scope: !4317)
!4322 = !DILocation(line: 51, column: 31, scope: !4317)
!4323 = !DILocation(line: 51, column: 24, scope: !4317)
!4324 = !DILocation(line: 52, column: 7, scope: !4317)
!4325 = !DILocation(line: 52, column: 14, scope: !4326)
!4326 = !DILexicalBlockFile(scope: !4317, file: !4267, discriminator: 1)
!4327 = !{!3769, !637, i64 40}
!4328 = !DILocation(line: 52, column: 35, scope: !4326)
!4329 = !{!3769, !637, i64 32}
!4330 = !DILocation(line: 52, column: 28, scope: !4326)
!4331 = !DILocation(line: 53, column: 7, scope: !4317)
!4332 = !DILocation(line: 53, column: 14, scope: !4326)
!4333 = !{!3769, !637, i64 72}
!4334 = !DILocation(line: 53, column: 28, scope: !4326)
!4335 = !DILocation(line: 51, column: 7, scope: !4336)
!4336 = !DILexicalBlockFile(scope: !4266, file: !4267, discriminator: 1)
!4337 = !DILocation(line: 116, column: 26, scope: !4316)
!4338 = !DILocation(line: 116, column: 19, scope: !4339)
!4339 = !DILexicalBlockFile(scope: !4316, file: !4267, discriminator: 1)
!4340 = !DILocation(line: 116, column: 13, scope: !4316)
!4341 = !DILocation(line: 117, column: 15, scope: !4342)
!4342 = distinct !DILexicalBlock(scope: !4316, file: !4267, line: 117, column: 11)
!4343 = !DILocation(line: 117, column: 11, scope: !4316)
!4344 = !DILocation(line: 127, column: 11, scope: !4316)
!4345 = !DILocation(line: 127, column: 18, scope: !4316)
!4346 = !DILocation(line: 128, column: 11, scope: !4316)
!4347 = !DILocation(line: 128, column: 19, scope: !4316)
!4348 = !{!3769, !2451, i64 144}
!4349 = !DILocation(line: 159, column: 7, scope: !4316)
!4350 = !DILocation(line: 161, column: 10, scope: !4266)
!4351 = !DILocation(line: 161, column: 3, scope: !4266)
!4352 = !DILocation(line: 162, column: 1, scope: !4266)
