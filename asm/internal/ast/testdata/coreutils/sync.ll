; ModuleID = 'coreutils-8.27/src/sync.bc'
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
@.str.1 = private unnamed_addr constant [30 x i8] c"Usage: %s [OPTION] [FILE]...\0A\00", align 1
@.str.2 = private unnamed_addr constant [137 x i8] c"Synchronize cached writes to persistent storage\0A\0AIf one or more files are specified, sync only them,\0Aor their containing file systems.\0A\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [68 x i8] c"  -d, --data             sync only file data, no unneeded metadata\0A\00", align 1
@.str.4 = private unnamed_addr constant [71 x i8] c"  -f, --file-system      sync the file systems that contain the files\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"sync\00", align 1
@.str.25 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.26 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.28 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.29 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.30 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"df\00", align 1
@long_options = internal constant [5 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0), i32 0, i32* null, i32 100 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i32 0, i32 0), i32 0, i32* null, i32 102 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !0
@.str.13 = private unnamed_addr constant [13 x i8] c"Jim Meyering\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"Giuseppe Scrivano\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.15 = private unnamed_addr constant [45 x i8] c"cannot specify both --data and --file-system\00", align 1
@.str.16 = private unnamed_addr constant [35 x i8] c"--data needs at least one argument\00", align 1
@.str.36 = private unnamed_addr constant [17 x i8] c"error opening %s\00", align 1
@.str.37 = private unnamed_addr constant [36 x i8] c"couldn't reset non-blocking mode %s\00", align 1
@.str.41 = private unnamed_addr constant [17 x i8] c"error syncing %s\00", align 1
@.str.42 = private unnamed_addr constant [19 x i8] c"failed to close %s\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"file-system\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), align 8, !dbg !83
@.str.17 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !89
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !94
@.str.20 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.21 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.22 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !98
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !105
@.str.38 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.39 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.40 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.44, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.45, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.46, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.47, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.48, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.49, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.50, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.51, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.52, i32 0, i32 0), i8* null], align 16, !dbg !112
@.str.43 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.44 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.45 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.46 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.47 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.48 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.49 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.50 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.51 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.52 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !140
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !147
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !160
@.str.11.53 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.54 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.55 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.56 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.57 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.58 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !167
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !174
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !162
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !176
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
@.str.19 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !182
@.str.1.94 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.95 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@rpl_fcntl.have_dupfd_cloexec = internal unnamed_addr global i32 0, align 4, !dbg !191
@.str.1.106 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.109 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !228
@.str.3.110 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.111 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.112 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.113 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.114 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.115 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) local_unnamed_addr #0 !dbg !624 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !628, metadata !629), !dbg !630
  %2 = icmp eq i32 %0, 0, !dbg !631
  br i1 %2, label %8, label %3, !dbg !633

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !634, !tbaa !637
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #9, !dbg !634
  %6 = load i8*, i8** @program_name, align 8, !dbg !634, !tbaa !637
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #9, !dbg !641
  br label %42, !dbg !643

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 5) #9, !dbg !645
  %10 = load i8*, i8** @program_name, align 8, !dbg !645, !tbaa !637
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10) #9, !dbg !647
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([137 x i8], [137 x i8]* @.str.2, i64 0, i64 0), i32 5) #9, !dbg !649
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !649, !tbaa !637
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #9, !dbg !650
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.3, i64 0, i64 0), i32 5) #9, !dbg !651
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !651, !tbaa !637
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #9, !dbg !652
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.4, i64 0, i64 0), i32 5) #9, !dbg !653
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !653, !tbaa !637
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #9, !dbg !654
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 5) #9, !dbg !655
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !655, !tbaa !637
  %23 = tail call i32 @fputs_unlocked(i8* %21, %struct._IO_FILE* %22) #9, !dbg !656
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0), i32 5) #9, !dbg !657
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !657, !tbaa !637
  %26 = tail call i32 @fputs_unlocked(i8* %24, %struct._IO_FILE* %25) #9, !dbg !658
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !48, metadata !629) #9, !dbg !659
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 0, metadata !48, metadata !629) #9, !dbg !659
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.25, i64 0, i64 0), i32 5) #9, !dbg !661
  %28 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %27, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.26, i64 0, i64 0)) #9, !dbg !662
  %29 = tail call i8* @setlocale(i32 5, i8* null) #9, !dbg !664
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !59, metadata !629) #9, !dbg !665
  %30 = icmp eq i8* %29, null, !dbg !666
  br i1 %30, label %37, label %31, !dbg !667

; <label>:31:                                     ; preds = %8
  %32 = tail call i32 @strncmp(i8* nonnull %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i64 0, i64 0), i64 3) #13, !dbg !668
  %33 = icmp eq i32 %32, 0, !dbg !668
  br i1 %33, label %37, label %34, !dbg !670

; <label>:34:                                     ; preds = %31
  %35 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.28, i64 0, i64 0), i32 5) #9, !dbg !672
  %36 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0)) #9, !dbg !674
  br label %37, !dbg !676

; <label>:37:                                     ; preds = %8, %31, %34
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.29, i64 0, i64 0), i32 5) #9, !dbg !677
  %39 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %38, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0)) #9, !dbg !678
  %40 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.30, i64 0, i64 0), i32 5) #9, !dbg !679
  %41 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i64 0, i64 0)) #9, !dbg !680
  br label %42

; <label>:42:                                     ; preds = %37, %3
  tail call void @exit(i32 %0) #14, !dbg !681
  unreachable, !dbg !681
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
define i32 @main(i32, i8**) local_unnamed_addr #6 !dbg !682 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !687, metadata !629), !dbg !695
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !688, metadata !629), !dbg !696
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !691, metadata !629), !dbg !697
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !692, metadata !629), !dbg !698
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !694, metadata !629), !dbg !699
  %3 = load i8*, i8** %1, align 8, !dbg !700, !tbaa !637
  tail call void @set_program_name(i8* %3) #9, !dbg !701
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)) #9, !dbg !702
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0)) #9, !dbg !703
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0)) #9, !dbg !704
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #9, !dbg !705
  br label %9, !dbg !706

; <label>:8:                                      ; preds = %12
  br label %9, !dbg !698

; <label>:9:                                      ; preds = %8, %2
  %10 = phi i8 [ 0, %2 ], [ 1, %8 ]
  %11 = phi i8 [ 0, %2 ], [ %13, %8 ]
  br label %12, !dbg !698

; <label>:12:                                     ; preds = %12, %9
  %13 = phi i8 [ %11, %9 ], [ 1, %12 ]
  tail call void @llvm.dbg.value(metadata i8 %13, i64 0, metadata !692, metadata !629), !dbg !698
  tail call void @llvm.dbg.value(metadata i8 %10, i64 0, metadata !691, metadata !629), !dbg !697
  %14 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), %struct.option* getelementptr inbounds ([5 x %struct.option], [5 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #9, !dbg !707
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !689, metadata !629), !dbg !709
  switch i32 %14, label %19 [
    i32 -1, label %20
    i32 100, label %8
    i32 102, label %12
    i32 -130, label %15
    i32 -131, label %16
  ], !dbg !710, !llvm.loop !711

; <label>:15:                                     ; preds = %12
  tail call void @usage(i32 0) #15, !dbg !713
  unreachable, !dbg !713

; <label>:16:                                     ; preds = %12
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !716, !tbaa !637
  %18 = load i8*, i8** @Version, align 8, !dbg !716, !tbaa !637
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* %18, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0), i8* null) #9, !dbg !716
  tail call void @exit(i32 0) #14, !dbg !717
  unreachable, !dbg !716

; <label>:19:                                     ; preds = %12
  tail call void @usage(i32 1) #15, !dbg !719
  unreachable, !dbg !719

; <label>:20:                                     ; preds = %12
  %21 = load i32, i32* @optind, align 4, !dbg !720, !tbaa !721
  %22 = icmp slt i32 %21, %0, !dbg !723
  %23 = icmp eq i8 %10, 0, !dbg !724
  %24 = icmp eq i8 %13, 0, !dbg !726
  %25 = or i1 %23, %24, !dbg !724
  br i1 %25, label %28, label %26, !dbg !724

; <label>:26:                                     ; preds = %20
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.15, i64 0, i64 0), i32 5) #9, !dbg !728
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %27) #9, !dbg !730
  unreachable, !dbg !728

; <label>:28:                                     ; preds = %20
  %29 = or i1 %23, %22, !dbg !732
  br i1 %29, label %32, label %30, !dbg !732

; <label>:30:                                     ; preds = %28
  %31 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.16, i64 0, i64 0), i32 5) #9, !dbg !734
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %31) #9, !dbg !735
  unreachable, !dbg !734

; <label>:32:                                     ; preds = %28
  br i1 %22, label %33, label %36, !dbg !737

; <label>:33:                                     ; preds = %32
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !694, metadata !629), !dbg !699
  %34 = trunc i8 %10 to i2
  %35 = select i1 %24, i2 %34, i2 -2
  br label %37, !dbg !739

; <label>:36:                                     ; preds = %32
  tail call void @sync() #9, !dbg !744
  br label %103, !dbg !744

; <label>:37:                                     ; preds = %33, %93
  %38 = phi i32 [ %21, %33 ], [ %98, %93 ]
  %39 = phi i8 [ 1, %33 ], [ %96, %93 ]
  %40 = sext i32 %38 to i64, !dbg !745
  %41 = getelementptr inbounds i8*, i8** %1, i64 %40, !dbg !745
  %42 = load i8*, i8** %41, align 8, !dbg !745, !tbaa !637
  tail call void @llvm.dbg.value(metadata i8* %42, i64 0, metadata !747, metadata !629) #9, !dbg !763
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !753, metadata !629) #9, !dbg !765
  tail call void @llvm.dbg.value(metadata i32 2048, i64 0, metadata !754, metadata !629) #9, !dbg !766
  %43 = tail call i32 (i8*, i32, ...) @open(i8* %42, i32 2048) #9, !dbg !767
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !755, metadata !629) #9, !dbg !768
  %44 = icmp slt i32 %43, 0, !dbg !769
  br i1 %44, label %45, label %53, !dbg !770

; <label>:45:                                     ; preds = %37
  %46 = tail call i32* @__errno_location() #1, !dbg !771
  %47 = load i32, i32* %46, align 4, !dbg !771, !tbaa !721
  tail call void @llvm.dbg.value(metadata i32 %47, i64 0, metadata !756, metadata !629) #9, !dbg !772
  %48 = tail call i32 (i8*, i32, ...) @open(i8* %42, i32 2049) #9, !dbg !773
  tail call void @llvm.dbg.value(metadata i32 %48, i64 0, metadata !755, metadata !629) #9, !dbg !768
  tail call void @llvm.dbg.value(metadata i32 %48, i64 0, metadata !755, metadata !629) #9, !dbg !768
  %49 = icmp slt i32 %48, 0, !dbg !775
  br i1 %49, label %50, label %93, !dbg !777

; <label>:50:                                     ; preds = %45
  %51 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.36, i64 0, i64 0), i32 5) #9, !dbg !778
  %52 = tail call i8* @quotearg_style(i32 4, i8* %42) #9, !dbg !779
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %47, i8* %51, i8* %52) #9, !dbg !781
  br label %93, !dbg !783

; <label>:53:                                     ; preds = %37
  %54 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 %43, i32 3) #9, !dbg !784
  tail call void @llvm.dbg.value(metadata i32 %54, i64 0, metadata !759, metadata !629) #9, !dbg !785
  %55 = icmp eq i32 %54, -1, !dbg !786
  br i1 %55, label %60, label %56, !dbg !788

; <label>:56:                                     ; preds = %53
  %57 = and i32 %54, -2049, !dbg !789
  %58 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 %43, i32 4, i32 %57) #9, !dbg !791
  %59 = icmp slt i32 %58, 0, !dbg !792
  br i1 %59, label %60, label %65, !dbg !793

; <label>:60:                                     ; preds = %56, %53
  %61 = tail call i32* @__errno_location() #1, !dbg !795
  %62 = load i32, i32* %61, align 4, !dbg !795, !tbaa !721
  %63 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.37, i64 0, i64 0), i32 5) #9, !dbg !797
  %64 = tail call i8* @quotearg_style(i32 4, i8* %42) #9, !dbg !799
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %62, i8* %63, i8* %64) #9, !dbg !800
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !753, metadata !629) #9, !dbg !765
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !753, metadata !629) #9, !dbg !765
  br label %80, !dbg !802

; <label>:65:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !753, metadata !629) #9, !dbg !765
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !760, metadata !629) #9, !dbg !803
  switch i2 %35, label %75 [
    i2 1, label %66
    i2 0, label %68
    i2 -2, label %70
  ], !dbg !804

; <label>:66:                                     ; preds = %65
  %67 = tail call i32 @fdatasync(i32 %43) #9, !dbg !805
  tail call void @llvm.dbg.value(metadata i32 %67, i64 0, metadata !760, metadata !629) #9, !dbg !803
  br label %72, !dbg !807

; <label>:68:                                     ; preds = %65
  %69 = tail call i32 @fsync(i32 %43) #9, !dbg !808
  tail call void @llvm.dbg.value(metadata i32 %69, i64 0, metadata !760, metadata !629) #9, !dbg !803
  br label %72, !dbg !809

; <label>:70:                                     ; preds = %65
  %71 = tail call i32 @syncfs(i32 %43) #9, !dbg !810
  tail call void @llvm.dbg.value(metadata i32 %71, i64 0, metadata !760, metadata !629) #9, !dbg !803
  br label %72, !dbg !811

; <label>:72:                                     ; preds = %70, %68, %66
  %73 = phi i32 [ %71, %70 ], [ %69, %68 ], [ %67, %66 ]
  tail call void @llvm.dbg.value(metadata i32 %73, i64 0, metadata !760, metadata !629) #9, !dbg !803
  %74 = icmp slt i32 %73, 0, !dbg !812
  br i1 %74, label %75, label %80, !dbg !814

; <label>:75:                                     ; preds = %72, %65
  %76 = tail call i32* @__errno_location() #1, !dbg !815
  %77 = load i32, i32* %76, align 4, !dbg !815, !tbaa !721
  %78 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.41, i64 0, i64 0), i32 5) #9, !dbg !817
  %79 = tail call i8* @quotearg_style(i32 4, i8* %42) #9, !dbg !819
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %77, i8* %78, i8* %79) #9, !dbg !821
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !753, metadata !629) #9, !dbg !765
  br label %80, !dbg !823

; <label>:80:                                     ; preds = %75, %72, %60
  %81 = phi i8 [ 0, %75 ], [ 1, %72 ], [ 0, %60 ]
  tail call void @llvm.dbg.value(metadata i8 %81, i64 0, metadata !753, metadata !629) #9, !dbg !765
  %82 = tail call i32 @close(i32 %43) #9, !dbg !824
  %83 = icmp slt i32 %82, 0, !dbg !826
  br i1 %83, label %84, label %89, !dbg !827

; <label>:84:                                     ; preds = %80
  %85 = tail call i32* @__errno_location() #1, !dbg !828
  %86 = load i32, i32* %85, align 4, !dbg !828, !tbaa !721
  %87 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.42, i64 0, i64 0), i32 5) #9, !dbg !830
  %88 = tail call i8* @quotearg_style(i32 4, i8* %42) #9, !dbg !832
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %86, i8* %87, i8* %88) #9, !dbg !834
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !753, metadata !629) #9, !dbg !765
  br label %89, !dbg !836

; <label>:89:                                     ; preds = %84, %80
  %90 = phi i8 [ 0, %84 ], [ %81, %80 ]
  tail call void @llvm.dbg.value(metadata i8 %90, i64 0, metadata !753, metadata !629) #9, !dbg !765
  %91 = and i8 %90, 1, !dbg !837
  %92 = icmp ne i8 %91, 0, !dbg !837
  br label %93

; <label>:93:                                     ; preds = %45, %50, %89
  %94 = phi i1 [ %92, %89 ], [ false, %50 ], [ false, %45 ]
  %95 = zext i1 %94 to i8, !dbg !838
  %96 = and i8 %95, %39, !dbg !839
  tail call void @llvm.dbg.value(metadata i8 %96, i64 0, metadata !694, metadata !629), !dbg !699
  %97 = load i32, i32* @optind, align 4, !dbg !840, !tbaa !721
  %98 = add nsw i32 %97, 1, !dbg !840
  store i32 %98, i32* @optind, align 4, !dbg !840, !tbaa !721
  tail call void @llvm.dbg.value(metadata i8 %96, i64 0, metadata !694, metadata !629), !dbg !699
  %99 = icmp slt i32 %98, %0, !dbg !842
  br i1 %99, label %37, label %100, !dbg !739, !llvm.loop !844

; <label>:100:                                    ; preds = %93
  %101 = xor i8 %96, 1, !dbg !699
  %102 = zext i8 %101 to i32, !dbg !699
  br label %103, !dbg !699

; <label>:103:                                    ; preds = %100, %36
  %104 = phi i32 [ 0, %36 ], [ %102, %100 ]
  ret i32 %104, !dbg !847
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
declare void @sync() local_unnamed_addr #2

declare i32 @open(i8* nocapture readonly, i32, ...) local_unnamed_addr #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #7

declare i32 @fdatasync(i32) local_unnamed_addr #3

declare i32 @fsync(i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @syncfs(i32) local_unnamed_addr #2

declare i32 @close(i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !848 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !850, metadata !629), !dbg !851
  store i8* %0, i8** @file_name, align 8, !dbg !852, !tbaa !637
  ret void, !dbg !853
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !854 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !858, metadata !859), !dbg !860
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !861, !tbaa !862
  ret void, !dbg !864
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !865 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !872, !tbaa !637
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #9, !dbg !873
  %3 = icmp eq i32 %2, 0, !dbg !874
  br i1 %3, label %21, label %4, !dbg !875

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !876, !tbaa !862, !range !878
  %6 = icmp eq i8 %5, 0, !dbg !876
  %7 = tail call i32* @__errno_location() #1, !dbg !879
  br i1 %6, label %11, label %8, !dbg !881

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !882, !tbaa !721
  %10 = icmp eq i32 %9, 32, !dbg !884
  br i1 %10, label %21, label %11, !dbg !885

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0), i32 5) #9, !dbg !887
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !869, metadata !629), !dbg !888
  %13 = load i8*, i8** @file_name, align 8, !dbg !889, !tbaa !637
  %14 = icmp eq i8* %13, null, !dbg !889
  %15 = load i32, i32* %7, align 4, !tbaa !721
  br i1 %14, label %18, label %16, !dbg !890

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #9, !dbg !891
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.21, i64 0, i64 0), i8* %17, i8* %12) #9, !dbg !893
  br label %19, !dbg !895

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.22, i64 0, i64 0), i8* %12) #9, !dbg !896
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !897, !tbaa !721
  tail call void @_exit(i32 %20) #14, !dbg !898
  unreachable, !dbg !898

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !899, !tbaa !637
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #9, !dbg !901
  %24 = icmp eq i32 %23, 0, !dbg !902
  br i1 %24, label %27, label %25, !dbg !903

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !904, !tbaa !721
  tail call void @_exit(i32 %26) #14, !dbg !905
  unreachable, !dbg !905

; <label>:27:                                     ; preds = %21
  ret void, !dbg !906
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #8

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !907 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !909, metadata !629), !dbg !912
  %2 = icmp eq i8* %0, null, !dbg !913
  br i1 %2, label %3, label %6, !dbg !915

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !916, !tbaa !637
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.38, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #16, !dbg !918
  tail call void @abort() #14, !dbg !919
  unreachable, !dbg !919

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #13, !dbg !920
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !910, metadata !629), !dbg !921
  %8 = icmp ne i8* %7, null, !dbg !922
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !923
  %10 = select i1 %8, i8* %9, i8* %0, !dbg !925
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !911, metadata !629), !dbg !926
  %11 = ptrtoint i8* %10 to i64, !dbg !927
  %12 = ptrtoint i8* %0 to i64, !dbg !927
  %13 = sub i64 %11, %12, !dbg !927
  %14 = icmp sgt i64 %13, 6, !dbg !929
  br i1 %14, label %15, label %24, !dbg !930

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !931
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.39, i64 0, i64 0), i64 7) #13, !dbg !931
  %18 = icmp eq i32 %17, 0, !dbg !933
  br i1 %18, label %19, label %24, !dbg !934

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !909, metadata !629), !dbg !912
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.40, i64 0, i64 0), i64 3) #13, !dbg !935
  %21 = icmp eq i32 %20, 0, !dbg !938
  br i1 %21, label %22, label %24, !dbg !939

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !940
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !909, metadata !629), !dbg !912
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !942, !tbaa !637
  br label %24, !dbg !943

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !909, metadata !629), !dbg !912
  store i8* %25, i8** @program_name, align 8, !dbg !944, !tbaa !637
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !945, !tbaa !637
  ret void, !dbg !946
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #9

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !947 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !952, metadata !629), !dbg !955
  %2 = tail call i32* @__errno_location() #1, !dbg !956
  %3 = load i32, i32* %2, align 4, !dbg !956, !tbaa !721
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !953, metadata !629), !dbg !957
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !958
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !959
  %6 = select i1 %4, i8* %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), !dbg !959
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #9, !dbg !961
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !961
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !954, metadata !629), !dbg !962
  store i32 %3, i32* %2, align 4, !dbg !963, !tbaa !721
  ret %struct.quoting_options* %8, !dbg !964
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #10 !dbg !965 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !971, metadata !629), !dbg !972
  %2 = icmp ne %struct.quoting_options* %0, null, !dbg !973
  %3 = select i1 %2, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !973
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !974
  %5 = load i32, i32* %4, align 8, !dbg !974, !tbaa !976
  ret i32 %5, !dbg !978
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !979 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !983, metadata !629), !dbg !985
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !984, metadata !629), !dbg !986
  %3 = icmp ne %struct.quoting_options* %0, null, !dbg !987
  %4 = select i1 %3, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !987
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !988
  store i32 %1, i32* %5, align 8, !dbg !990, !tbaa !976
  ret void, !dbg !991
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !992 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !996, metadata !629), !dbg !1004
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !997, metadata !629), !dbg !1005
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !998, metadata !629), !dbg !1006
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !999, metadata !629), !dbg !1007
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !1008
  %5 = select i1 %4, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !1008
  %6 = lshr i8 %1, 5, !dbg !1009
  %7 = zext i8 %6 to i64, !dbg !1009
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1011
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1000, metadata !629), !dbg !1012
  %9 = and i8 %1, 31, !dbg !1013
  %10 = zext i8 %9 to i32, !dbg !1014
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1002, metadata !629), !dbg !1015
  %11 = load i32, i32* %8, align 4, !dbg !1016, !tbaa !721
  %12 = lshr i32 %11, %10, !dbg !1017
  %13 = and i32 %12, 1, !dbg !1018
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1003, metadata !629), !dbg !1019
  %14 = and i32 %2, 1, !dbg !1020
  %15 = xor i32 %13, %14, !dbg !1021
  %16 = shl i32 %15, %10, !dbg !1022
  %17 = xor i32 %16, %11, !dbg !1023
  store i32 %17, i32* %8, align 4, !dbg !1023, !tbaa !721
  ret i32 %13, !dbg !1024
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1025 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1029, metadata !629), !dbg !1032
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1030, metadata !629), !dbg !1033
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1034
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1029, metadata !629), !dbg !1032
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1036
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1029, metadata !629), !dbg !1032
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1037
  %6 = load i32, i32* %5, align 4, !dbg !1037, !tbaa !1038
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1031, metadata !629), !dbg !1039
  store i32 %1, i32* %5, align 4, !dbg !1040, !tbaa !1038
  ret i32 %6, !dbg !1041
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !1042 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1046, metadata !629), !dbg !1049
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1047, metadata !629), !dbg !1050
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1048, metadata !629), !dbg !1051
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1052
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1046, metadata !629), !dbg !1049
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1054
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1046, metadata !629), !dbg !1049
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1055
  store i32 10, i32* %6, align 8, !dbg !1056, !tbaa !976
  %7 = icmp ne i8* %1, null, !dbg !1057
  %8 = icmp ne i8* %2, null, !dbg !1059
  %9 = and i1 %7, %8, !dbg !1061
  br i1 %9, label %11, label %10, !dbg !1061

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !1062
  unreachable, !dbg !1062

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1063
  store i8* %1, i8** %12, align 8, !dbg !1064, !tbaa !1065
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1066
  store i8* %2, i8** %13, align 8, !dbg !1067, !tbaa !1068
  ret void, !dbg !1069
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !1070 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1074, metadata !629), !dbg !1082
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1075, metadata !629), !dbg !1083
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1076, metadata !629), !dbg !1084
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1077, metadata !629), !dbg !1085
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1078, metadata !629), !dbg !1086
  %6 = icmp ne %struct.quoting_options* %4, null, !dbg !1087
  %7 = select i1 %6, %struct.quoting_options* %4, %struct.quoting_options* @default_quoting_options, !dbg !1087
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !1079, metadata !629), !dbg !1088
  %8 = tail call i32* @__errno_location() #1, !dbg !1089
  %9 = load i32, i32* %8, align 4, !dbg !1089, !tbaa !721
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1080, metadata !629), !dbg !1090
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1091
  %11 = load i32, i32* %10, align 8, !dbg !1091, !tbaa !976
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1092
  %13 = load i32, i32* %12, align 4, !dbg !1092, !tbaa !1038
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1093
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1094
  %16 = load i8*, i8** %15, align 8, !dbg !1094, !tbaa !1065
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1095
  %18 = load i8*, i8** %17, align 8, !dbg !1095, !tbaa !1068
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !1096
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1081, metadata !629), !dbg !1097
  store i32 %9, i32* %8, align 4, !dbg !1098, !tbaa !721
  ret i64 %19, !dbg !1099
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !1100 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1106, metadata !629), !dbg !1169
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1107, metadata !629), !dbg !1170
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1108, metadata !629), !dbg !1171
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1109, metadata !629), !dbg !1172
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !1110, metadata !629), !dbg !1173
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1111, metadata !629), !dbg !1174
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !1112, metadata !629), !dbg !1175
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1113, metadata !629), !dbg !1176
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !1114, metadata !629), !dbg !1177
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1116, metadata !629), !dbg !1178
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1117, metadata !629), !dbg !1179
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1118, metadata !629), !dbg !1180
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1119, metadata !629), !dbg !1181
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1120, metadata !629), !dbg !1182
  %13 = tail call i64 @__ctype_get_mb_cur_max() #9, !dbg !1183
  %14 = icmp eq i64 %13, 1, !dbg !1184
  %15 = lshr i32 %5, 1, !dbg !1185
  %16 = trunc i32 %15 to i8, !dbg !1185
  %17 = and i8 %16, 1, !dbg !1185
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !1122, metadata !629), !dbg !1185
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1123, metadata !629), !dbg !1186
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1124, metadata !629), !dbg !1187
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1125, metadata !629), !dbg !1188
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !1189

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !1107, metadata !629), !dbg !1170
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !1125, metadata !629), !dbg !1188
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !1124, metadata !629), !dbg !1187
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !1123, metadata !629), !dbg !1186
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1122, metadata !629), !dbg !1185
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !1109, metadata !629), !dbg !1172
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !1120, metadata !629), !dbg !1182
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !1119, metadata !629), !dbg !1181
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !1118, metadata !629), !dbg !1180
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !1117, metadata !629), !dbg !1179
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1116, metadata !629), !dbg !1178
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !1114, metadata !629), !dbg !1177
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !1113, metadata !629), !dbg !1176
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !1110, metadata !629), !dbg !1173
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
  ], !dbg !1190

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1110, metadata !629), !dbg !1173
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1122, metadata !629), !dbg !1185
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1122, metadata !629), !dbg !1185
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1110, metadata !629), !dbg !1173
  br label %95, !dbg !1191

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1122, metadata !629), !dbg !1185
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1110, metadata !629), !dbg !1173
  %43 = and i8 %36, 1, !dbg !1193
  %44 = icmp eq i8 %43, 0, !dbg !1193
  br i1 %44, label %45, label %95, !dbg !1191

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1195
  br i1 %46, label %95, label %47, !dbg !1199

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1201, !tbaa !1203
  br label %95, !dbg !1201

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.53, i64 0, i64 0), i32 %28), !dbg !1204
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !1113, metadata !629), !dbg !1176
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.54, i64 0, i64 0), i32 %28), !dbg !1208
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !1114, metadata !629), !dbg !1177
  br label %51, !dbg !1209

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1114, metadata !629), !dbg !1177
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1113, metadata !629), !dbg !1176
  %54 = and i8 %36, 1, !dbg !1210
  %55 = icmp eq i8 %54, 0, !dbg !1210
  br i1 %55, label %56, label %73, !dbg !1212

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1118, metadata !629), !dbg !1180
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1116, metadata !629), !dbg !1178
  %57 = load i8, i8* %52, align 1, !dbg !1213, !tbaa !1203
  %58 = icmp eq i8 %57, 0, !dbg !1217
  br i1 %58, label %73, label %59, !dbg !1217

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !1219

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  %64 = icmp ult i64 %63, %40, !dbg !1219
  br i1 %64, label %65, label %67, !dbg !1223

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !1225
  store i8 %61, i8* %66, align 1, !dbg !1225, !tbaa !1203
  br label %67, !dbg !1225

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !1227
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1116, metadata !629), !dbg !1178
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !1229
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1118, metadata !629), !dbg !1180
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1118, metadata !629), !dbg !1180
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1116, metadata !629), !dbg !1178
  %70 = load i8, i8* %69, align 1, !dbg !1213, !tbaa !1203
  %71 = icmp eq i8 %70, 0, !dbg !1217
  br i1 %71, label %72, label %60, !dbg !1217, !llvm.loop !1231

; <label>:72:                                     ; preds = %67
  br label %73, !dbg !1178

; <label>:73:                                     ; preds = %72, %56, %51
  %74 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %72 ]
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !1116, metadata !629), !dbg !1178
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1120, metadata !629), !dbg !1182
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1118, metadata !629), !dbg !1180
  %75 = call i64 @strlen(i8* %53) #13, !dbg !1234
  call void @llvm.dbg.value(metadata i64 %75, i64 0, metadata !1119, metadata !629), !dbg !1181
  br label %95, !dbg !1235

; <label>:76:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1120, metadata !629), !dbg !1182
  br label %77, !dbg !1236

; <label>:77:                                     ; preds = %27, %76
  %78 = phi i8 [ %34, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %78, i64 0, metadata !1120, metadata !629), !dbg !1182
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1122, metadata !629), !dbg !1185
  br label %79, !dbg !1237

; <label>:79:                                     ; preds = %27, %77
  %80 = phi i8 [ %34, %27 ], [ %78, %77 ]
  %81 = phi i8 [ %36, %27 ], [ 1, %77 ]
  call void @llvm.dbg.value(metadata i8 %81, i64 0, metadata !1122, metadata !629), !dbg !1185
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !1120, metadata !629), !dbg !1182
  %82 = and i8 %81, 1, !dbg !1238
  %83 = icmp eq i8 %82, 0, !dbg !1238
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1120, metadata !629), !dbg !1182
  %84 = select i1 %83, i8 1, i8 %80, !dbg !1240
  br label %85, !dbg !1240

; <label>:85:                                     ; preds = %79, %27
  %86 = phi i8 [ %34, %27 ], [ %84, %79 ]
  %87 = phi i8 [ %36, %27 ], [ %81, %79 ]
  call void @llvm.dbg.value(metadata i8 %87, i64 0, metadata !1122, metadata !629), !dbg !1185
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !1120, metadata !629), !dbg !1182
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !1110, metadata !629), !dbg !1173
  %88 = and i8 %87, 1, !dbg !1241
  %89 = icmp eq i8 %88, 0, !dbg !1241
  br i1 %89, label %90, label %95, !dbg !1243

; <label>:90:                                     ; preds = %85
  %91 = icmp eq i64 %40, 0, !dbg !1244
  br i1 %91, label %95, label %92, !dbg !1248

; <label>:92:                                     ; preds = %90
  store i8 39, i8* %0, align 1, !dbg !1250, !tbaa !1203
  br label %95, !dbg !1250

; <label>:93:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1122, metadata !629), !dbg !1185
  br label %95, !dbg !1252

; <label>:94:                                     ; preds = %27
  call void @abort() #14, !dbg !1253
  unreachable, !dbg !1253

; <label>:95:                                     ; preds = %41, %85, %90, %92, %27, %42, %45, %47, %93, %73
  %96 = phi i32 [ 0, %93 ], [ %28, %73 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %92 ], [ 2, %90 ], [ 2, %85 ], [ 5, %41 ]
  %97 = phi i8* [ %29, %93 ], [ %52, %73 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %92 ], [ %29, %90 ], [ %29, %85 ], [ %29, %41 ]
  %98 = phi i8* [ %30, %93 ], [ %53, %73 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %92 ], [ %30, %90 ], [ %30, %85 ], [ %30, %41 ]
  %99 = phi i64 [ 0, %93 ], [ %74, %73 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %92 ], [ 1, %90 ], [ 0, %85 ], [ 0, %41 ]
  %100 = phi i8* [ %32, %93 ], [ %53, %73 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.55, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.55, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.55, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.54, i64 0, i64 0), %92 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.54, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.54, i64 0, i64 0), %85 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.55, i64 0, i64 0), %41 ]
  %101 = phi i64 [ %33, %93 ], [ %75, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %92 ], [ 1, %90 ], [ 1, %85 ], [ 1, %41 ]
  %102 = phi i8 [ %34, %93 ], [ 1, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %86, %92 ], [ %86, %90 ], [ %86, %85 ], [ 1, %41 ]
  %103 = phi i8 [ 0, %93 ], [ %36, %73 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %87, %92 ], [ %87, %90 ], [ %87, %85 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %103, i64 0, metadata !1122, metadata !629), !dbg !1185
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !1120, metadata !629), !dbg !1182
  call void @llvm.dbg.value(metadata i64 %101, i64 0, metadata !1119, metadata !629), !dbg !1181
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !1118, metadata !629), !dbg !1180
  call void @llvm.dbg.value(metadata i64 %99, i64 0, metadata !1116, metadata !629), !dbg !1178
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !1114, metadata !629), !dbg !1177
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !1113, metadata !629), !dbg !1176
  call void @llvm.dbg.value(metadata i32 %96, i64 0, metadata !1110, metadata !629), !dbg !1173
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1115, metadata !629), !dbg !1254
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
  br label %123, !dbg !1255

; <label>:123:                                    ; preds = %587, %95
  %124 = phi i64 [ 0, %95 ], [ %596, %587 ]
  %125 = phi i64 [ %99, %95 ], [ %589, %587 ]
  %126 = phi i64 [ %31, %95 ], [ %590, %587 ]
  %127 = phi i64 [ %35, %95 ], [ %591, %587 ]
  %128 = phi i8 [ %37, %95 ], [ %592, %587 ]
  %129 = phi i8 [ %38, %95 ], [ %593, %587 ]
  %130 = phi i8 [ %39, %95 ], [ %594, %587 ]
  %131 = phi i64 [ %40, %95 ], [ %595, %587 ]
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !1107, metadata !629), !dbg !1170
  call void @llvm.dbg.value(metadata i8 %130, i64 0, metadata !1125, metadata !629), !dbg !1188
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !1124, metadata !629), !dbg !1187
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !1123, metadata !629), !dbg !1186
  call void @llvm.dbg.value(metadata i64 %127, i64 0, metadata !1109, metadata !629), !dbg !1172
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !1117, metadata !629), !dbg !1179
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1116, metadata !629), !dbg !1178
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1115, metadata !629), !dbg !1254
  %132 = icmp eq i64 %127, -1, !dbg !1256
  br i1 %132, label %135, label %133, !dbg !1258

; <label>:133:                                    ; preds = %123
  %134 = icmp eq i64 %124, %127, !dbg !1259
  br i1 %134, label %597, label %139, !dbg !1261

; <label>:135:                                    ; preds = %123
  %136 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !1263
  %137 = load i8, i8* %136, align 1, !dbg !1263, !tbaa !1203
  %138 = icmp eq i8 %137, 0, !dbg !1265
  br i1 %138, label %597, label %139, !dbg !1261

; <label>:139:                                    ; preds = %133, %135
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1131, metadata !629), !dbg !1266
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1132, metadata !629), !dbg !1267
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1133, metadata !629), !dbg !1268
  br i1 %109, label %140, label %155, !dbg !1269

; <label>:140:                                    ; preds = %139
  %141 = add i64 %124, %101, !dbg !1271
  %142 = and i1 %110, %132, !dbg !1273
  br i1 %142, label %143, label %145, !dbg !1273

; <label>:143:                                    ; preds = %140
  %144 = call i64 @strlen(i8* %2) #13, !dbg !1274
  call void @llvm.dbg.value(metadata i64 %144, i64 0, metadata !1109, metadata !629), !dbg !1172
  br label %145, !dbg !1275

; <label>:145:                                    ; preds = %140, %143
  %146 = phi i64 [ %144, %143 ], [ %127, %140 ]
  call void @llvm.dbg.value(metadata i64 %146, i64 0, metadata !1109, metadata !629), !dbg !1172
  %147 = icmp ugt i64 %141, %146, !dbg !1277
  br i1 %147, label %155, label %148, !dbg !1279

; <label>:148:                                    ; preds = %145
  %149 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !1280
  %150 = call i32 @memcmp(i8* %149, i8* %100, i64 %101) #13, !dbg !1281
  %151 = icmp ne i32 %150, 0, !dbg !1282
  %152 = or i1 %151, %112, !dbg !1282
  %153 = xor i1 %151, true, !dbg !1282
  %154 = zext i1 %153 to i8, !dbg !1282
  br i1 %152, label %155, label %644, !dbg !1282

; <label>:155:                                    ; preds = %148, %145, %139
  %156 = phi i64 [ %146, %148 ], [ %146, %145 ], [ %127, %139 ]
  %157 = phi i8 [ %154, %148 ], [ 0, %145 ], [ 0, %139 ]
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !1131, metadata !629), !dbg !1266
  call void @llvm.dbg.value(metadata i64 %156, i64 0, metadata !1109, metadata !629), !dbg !1172
  %158 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !1284
  %159 = load i8, i8* %158, align 1, !dbg !1284, !tbaa !1203
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !1126, metadata !629), !dbg !1285
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
  ], !dbg !1286

; <label>:160:                                    ; preds = %155
  br i1 %105, label %161, label %209, !dbg !1287

; <label>:161:                                    ; preds = %160
  br i1 %112, label %162, label %644, !dbg !1288

; <label>:162:                                    ; preds = %161
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1132, metadata !629), !dbg !1267
  %163 = and i8 %128, 1, !dbg !1293
  %164 = icmp eq i8 %163, 0, !dbg !1293
  %165 = and i1 %114, %164, !dbg !1296
  br i1 %165, label %166, label %182, !dbg !1296

; <label>:166:                                    ; preds = %162
  %167 = icmp ult i64 %125, %131, !dbg !1298
  br i1 %167, label %168, label %170, !dbg !1303

; <label>:168:                                    ; preds = %166
  %169 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !1305
  store i8 39, i8* %169, align 1, !dbg !1305, !tbaa !1203
  br label %170, !dbg !1305

; <label>:170:                                    ; preds = %168, %166
  %171 = add i64 %125, 1, !dbg !1307
  call void @llvm.dbg.value(metadata i64 %171, i64 0, metadata !1116, metadata !629), !dbg !1178
  %172 = icmp ult i64 %171, %131, !dbg !1309
  br i1 %172, label %173, label %175, !dbg !1313

; <label>:173:                                    ; preds = %170
  %174 = getelementptr inbounds i8, i8* %0, i64 %171, !dbg !1315
  store i8 36, i8* %174, align 1, !dbg !1315, !tbaa !1203
  br label %175, !dbg !1315

; <label>:175:                                    ; preds = %173, %170
  %176 = add i64 %125, 2, !dbg !1317
  call void @llvm.dbg.value(metadata i64 %176, i64 0, metadata !1116, metadata !629), !dbg !1178
  %177 = icmp ult i64 %176, %131, !dbg !1319
  br i1 %177, label %178, label %180, !dbg !1323

; <label>:178:                                    ; preds = %175
  %179 = getelementptr inbounds i8, i8* %0, i64 %176, !dbg !1325
  store i8 39, i8* %179, align 1, !dbg !1325, !tbaa !1203
  br label %180, !dbg !1325

; <label>:180:                                    ; preds = %178, %175
  %181 = add i64 %125, 3, !dbg !1327
  call void @llvm.dbg.value(metadata i64 %181, i64 0, metadata !1116, metadata !629), !dbg !1178
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1123, metadata !629), !dbg !1186
  br label %182, !dbg !1329

; <label>:182:                                    ; preds = %162, %180
  %183 = phi i64 [ %181, %180 ], [ %125, %162 ]
  %184 = phi i8 [ 1, %180 ], [ %128, %162 ]
  call void @llvm.dbg.value(metadata i8 %184, i64 0, metadata !1123, metadata !629), !dbg !1186
  call void @llvm.dbg.value(metadata i64 %183, i64 0, metadata !1116, metadata !629), !dbg !1178
  %185 = icmp ult i64 %183, %131, !dbg !1331
  br i1 %185, label %186, label %188, !dbg !1335

; <label>:186:                                    ; preds = %182
  %187 = getelementptr inbounds i8, i8* %0, i64 %183, !dbg !1337
  store i8 92, i8* %187, align 1, !dbg !1337, !tbaa !1203
  br label %188, !dbg !1337

; <label>:188:                                    ; preds = %186, %182
  %189 = add i64 %183, 1, !dbg !1339
  call void @llvm.dbg.value(metadata i64 %189, i64 0, metadata !1116, metadata !629), !dbg !1178
  br i1 %106, label %190, label %476, !dbg !1341

; <label>:190:                                    ; preds = %188
  %191 = add i64 %124, 1, !dbg !1343
  %192 = icmp ult i64 %191, %156, !dbg !1345
  br i1 %192, label %193, label %476, !dbg !1346

; <label>:193:                                    ; preds = %190
  %194 = getelementptr inbounds i8, i8* %2, i64 %191, !dbg !1347
  %195 = load i8, i8* %194, align 1, !dbg !1347, !tbaa !1203
  %196 = add i8 %195, -48, !dbg !1349
  %197 = icmp ult i8 %196, 10, !dbg !1349
  br i1 %197, label %198, label %476, !dbg !1349

; <label>:198:                                    ; preds = %193
  %199 = icmp ult i64 %189, %131, !dbg !1350
  br i1 %199, label %200, label %202, !dbg !1355

; <label>:200:                                    ; preds = %198
  %201 = getelementptr inbounds i8, i8* %0, i64 %189, !dbg !1357
  store i8 48, i8* %201, align 1, !dbg !1357, !tbaa !1203
  br label %202, !dbg !1357

; <label>:202:                                    ; preds = %200, %198
  %203 = add i64 %183, 2, !dbg !1359
  call void @llvm.dbg.value(metadata i64 %203, i64 0, metadata !1116, metadata !629), !dbg !1178
  %204 = icmp ult i64 %203, %131, !dbg !1361
  br i1 %204, label %205, label %207, !dbg !1365

; <label>:205:                                    ; preds = %202
  %206 = getelementptr inbounds i8, i8* %0, i64 %203, !dbg !1367
  store i8 48, i8* %206, align 1, !dbg !1367, !tbaa !1203
  br label %207, !dbg !1367

; <label>:207:                                    ; preds = %205, %202
  %208 = add i64 %183, 3, !dbg !1369
  call void @llvm.dbg.value(metadata i64 %208, i64 0, metadata !1116, metadata !629), !dbg !1178
  br label %476, !dbg !1371

; <label>:209:                                    ; preds = %160
  br i1 %23, label %476, label %587, !dbg !1372

; <label>:210:                                    ; preds = %155
  switch i32 %96, label %476 [
    i32 2, label %211
    i32 5, label %212
  ], !dbg !1373

; <label>:211:                                    ; preds = %210
  br i1 %112, label %476, label %644, !dbg !1374

; <label>:212:                                    ; preds = %210
  br i1 %25, label %476, label %213, !dbg !1376

; <label>:213:                                    ; preds = %212
  %214 = add i64 %124, 2, !dbg !1378
  %215 = icmp ult i64 %214, %156, !dbg !1380
  br i1 %215, label %216, label %476, !dbg !1381

; <label>:216:                                    ; preds = %213
  %217 = add i64 %124, 1, !dbg !1382
  %218 = getelementptr inbounds i8, i8* %2, i64 %217, !dbg !1384
  %219 = load i8, i8* %218, align 1, !dbg !1384, !tbaa !1203
  %220 = icmp eq i8 %219, 63, !dbg !1385
  br i1 %220, label %221, label %476, !dbg !1386

; <label>:221:                                    ; preds = %216
  %222 = getelementptr inbounds i8, i8* %2, i64 %214, !dbg !1388
  %223 = load i8, i8* %222, align 1, !dbg !1388, !tbaa !1203
  %224 = sext i8 %223 to i32, !dbg !1388
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
  ], !dbg !1389

; <label>:225:                                    ; preds = %221, %221, %221, %221, %221, %221, %221, %221, %221
  br i1 %112, label %226, label %644, !dbg !1390

; <label>:226:                                    ; preds = %225
  call void @llvm.dbg.value(metadata i8 %223, i64 0, metadata !1126, metadata !629), !dbg !1285
  call void @llvm.dbg.value(metadata i64 %214, i64 0, metadata !1115, metadata !629), !dbg !1254
  %227 = icmp ult i64 %125, %131, !dbg !1392
  br i1 %227, label %228, label %230, !dbg !1396

; <label>:228:                                    ; preds = %226
  %229 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !1398
  store i8 63, i8* %229, align 1, !dbg !1398, !tbaa !1203
  br label %230, !dbg !1398

; <label>:230:                                    ; preds = %228, %226
  %231 = add i64 %125, 1, !dbg !1400
  call void @llvm.dbg.value(metadata i64 %231, i64 0, metadata !1116, metadata !629), !dbg !1178
  %232 = icmp ult i64 %231, %131, !dbg !1402
  br i1 %232, label %233, label %235, !dbg !1406

; <label>:233:                                    ; preds = %230
  %234 = getelementptr inbounds i8, i8* %0, i64 %231, !dbg !1408
  store i8 34, i8* %234, align 1, !dbg !1408, !tbaa !1203
  br label %235, !dbg !1408

; <label>:235:                                    ; preds = %233, %230
  %236 = add i64 %125, 2, !dbg !1410
  call void @llvm.dbg.value(metadata i64 %236, i64 0, metadata !1116, metadata !629), !dbg !1178
  %237 = icmp ult i64 %236, %131, !dbg !1412
  br i1 %237, label %238, label %240, !dbg !1416

; <label>:238:                                    ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236, !dbg !1418
  store i8 34, i8* %239, align 1, !dbg !1418, !tbaa !1203
  br label %240, !dbg !1418

; <label>:240:                                    ; preds = %238, %235
  %241 = add i64 %125, 3, !dbg !1420
  call void @llvm.dbg.value(metadata i64 %241, i64 0, metadata !1116, metadata !629), !dbg !1178
  %242 = icmp ult i64 %241, %131, !dbg !1422
  br i1 %242, label %243, label %245, !dbg !1426

; <label>:243:                                    ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241, !dbg !1428
  store i8 63, i8* %244, align 1, !dbg !1428, !tbaa !1203
  br label %245, !dbg !1428

; <label>:245:                                    ; preds = %243, %240
  %246 = add i64 %125, 4, !dbg !1430
  call void @llvm.dbg.value(metadata i64 %246, i64 0, metadata !1116, metadata !629), !dbg !1178
  br label %476, !dbg !1432

; <label>:247:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !1130, metadata !629), !dbg !1433
  br label %257, !dbg !1434

; <label>:248:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !1130, metadata !629), !dbg !1433
  br label %257, !dbg !1435

; <label>:249:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !1130, metadata !629), !dbg !1433
  br label %255, !dbg !1436

; <label>:250:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !1130, metadata !629), !dbg !1433
  br label %255, !dbg !1437

; <label>:251:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !1130, metadata !629), !dbg !1433
  br label %257, !dbg !1438

; <label>:252:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !1130, metadata !629), !dbg !1433
  br i1 %114, label %253, label %254, !dbg !1439

; <label>:253:                                    ; preds = %252
  br i1 %112, label %542, label %644, !dbg !1440

; <label>:254:                                    ; preds = %252
  br i1 %122, label %542, label %255, !dbg !1443

; <label>:255:                                    ; preds = %254, %155, %250, %249
  %256 = phi i8 [ 92, %254 ], [ 116, %250 ], [ 114, %249 ], [ 110, %155 ]
  call void @llvm.dbg.value(metadata i8 %256, i64 0, metadata !1130, metadata !629), !dbg !1433
  br i1 %118, label %257, label %644, !dbg !1445

; <label>:257:                                    ; preds = %255, %155, %251, %248, %247
  %258 = phi i8 [ %256, %255 ], [ 118, %251 ], [ 102, %248 ], [ 98, %247 ], [ 97, %155 ]
  call void @llvm.dbg.value(metadata i8 %258, i64 0, metadata !1130, metadata !629), !dbg !1433
  br i1 %105, label %503, label %476, !dbg !1447

; <label>:259:                                    ; preds = %155, %155
  %260 = icmp eq i64 %156, -1, !dbg !1448
  br i1 %260, label %261, label %266, !dbg !1450

; <label>:261:                                    ; preds = %259
  %262 = load i8, i8* %26, align 1, !dbg !1451, !tbaa !1203
  %263 = icmp ne i8 %262, 0, !dbg !1453
  %264 = icmp ne i64 %124, 0, !dbg !1454
  %265 = or i1 %264, %263, !dbg !1456
  br i1 %265, label %476, label %272, !dbg !1456

; <label>:266:                                    ; preds = %259
  %267 = icmp ne i64 %156, 1, !dbg !1457
  %268 = icmp ne i64 %124, 0, !dbg !1454
  %269 = or i1 %268, %267, !dbg !1459
  br i1 %269, label %476, label %272, !dbg !1459

; <label>:270:                                    ; preds = %155, %155
  %271 = icmp eq i64 %124, 0, !dbg !1454
  br i1 %271, label %272, label %476, !dbg !1461

; <label>:272:                                    ; preds = %270, %266, %261, %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1133, metadata !629), !dbg !1268
  br label %273, !dbg !1462

; <label>:273:                                    ; preds = %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %272
  %274 = phi i8 [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 1, %272 ]
  call void @llvm.dbg.value(metadata i8 %274, i64 0, metadata !1133, metadata !629), !dbg !1268
  br i1 %118, label %476, label %644, !dbg !1463

; <label>:275:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1124, metadata !629), !dbg !1187
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1133, metadata !629), !dbg !1268
  br i1 %114, label %276, label %476, !dbg !1465

; <label>:276:                                    ; preds = %275
  br i1 %112, label %277, label %644, !dbg !1466

; <label>:277:                                    ; preds = %276
  %278 = icmp eq i64 %131, 0, !dbg !1469
  %279 = icmp ne i64 %126, 0, !dbg !1471
  %280 = or i1 %279, %278, !dbg !1473
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !1117, metadata !629), !dbg !1179
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1107, metadata !629), !dbg !1170
  %281 = select i1 %280, i64 %126, i64 %131, !dbg !1473
  %282 = select i1 %280, i64 %131, i64 0, !dbg !1473
  call void @llvm.dbg.value(metadata i64 %282, i64 0, metadata !1107, metadata !629), !dbg !1170
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !1117, metadata !629), !dbg !1179
  %283 = icmp ult i64 %125, %282, !dbg !1474
  br i1 %283, label %284, label %286, !dbg !1478

; <label>:284:                                    ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !1480
  store i8 39, i8* %285, align 1, !dbg !1480, !tbaa !1203
  br label %286, !dbg !1480

; <label>:286:                                    ; preds = %284, %277
  %287 = add i64 %125, 1, !dbg !1482
  call void @llvm.dbg.value(metadata i64 %287, i64 0, metadata !1116, metadata !629), !dbg !1178
  %288 = icmp ult i64 %287, %282, !dbg !1484
  br i1 %288, label %289, label %291, !dbg !1488

; <label>:289:                                    ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287, !dbg !1490
  store i8 92, i8* %290, align 1, !dbg !1490, !tbaa !1203
  br label %291, !dbg !1490

; <label>:291:                                    ; preds = %289, %286
  %292 = add i64 %125, 2, !dbg !1492
  call void @llvm.dbg.value(metadata i64 %292, i64 0, metadata !1116, metadata !629), !dbg !1178
  %293 = icmp ult i64 %292, %282, !dbg !1494
  br i1 %293, label %294, label %296, !dbg !1498

; <label>:294:                                    ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292, !dbg !1500
  store i8 39, i8* %295, align 1, !dbg !1500, !tbaa !1203
  br label %296, !dbg !1500

; <label>:296:                                    ; preds = %294, %291
  %297 = add i64 %125, 3, !dbg !1502
  call void @llvm.dbg.value(metadata i64 %297, i64 0, metadata !1116, metadata !629), !dbg !1178
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1123, metadata !629), !dbg !1186
  br label %476, !dbg !1504

; <label>:298:                                    ; preds = %155
  br i1 %14, label %299, label %308, !dbg !1505

; <label>:299:                                    ; preds = %298
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1134, metadata !629), !dbg !1506
  %300 = tail call i16** @__ctype_b_loc() #1, !dbg !1507
  %301 = load i16*, i16** %300, align 8, !dbg !1507, !tbaa !637
  %302 = zext i8 %159 to i64, !dbg !1507
  %303 = getelementptr inbounds i16, i16* %301, i64 %302, !dbg !1507
  %304 = load i16, i16* %303, align 2, !dbg !1507, !tbaa !1509
  %305 = lshr i16 %304, 14, !dbg !1511
  %306 = trunc i16 %305 to i8, !dbg !1511
  %307 = and i8 %306, 1, !dbg !1511
  call void @llvm.dbg.value(metadata i8 %307, i64 0, metadata !1137, metadata !629), !dbg !1512
  br label %368, !dbg !1513

; <label>:308:                                    ; preds = %298
  call void @llvm.lifetime.start(i64 8, i8* nonnull %18) #9, !dbg !1514
  store i64 0, i64* %10, align 8, !dbg !1515
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1134, metadata !629), !dbg !1506
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1137, metadata !629), !dbg !1512
  %309 = icmp eq i64 %156, -1, !dbg !1516
  br i1 %309, label %310, label %312, !dbg !1518, !llvm.loop !1519

; <label>:310:                                    ; preds = %308
  %311 = call i64 @strlen(i8* nonnull %2) #13, !dbg !1522
  call void @llvm.dbg.value(metadata i64 %311, i64 0, metadata !1109, metadata !629), !dbg !1172
  br label %312, !dbg !1523, !llvm.loop !1519

; <label>:312:                                    ; preds = %310, %308
  %313 = phi i64 [ %156, %308 ], [ %311, %310 ]
  br label %314, !dbg !1512

; <label>:314:                                    ; preds = %312, %355
  %315 = phi i64 [ %360, %355 ], [ 0, %312 ]
  %316 = phi i8 [ %359, %355 ], [ 1, %312 ]
  call void @llvm.dbg.value(metadata i8 %316, i64 0, metadata !1137, metadata !629), !dbg !1512
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !1134, metadata !629), !dbg !1506
  call void @llvm.dbg.value(metadata i64 %313, i64 0, metadata !1109, metadata !629), !dbg !1172
  call void @llvm.lifetime.start(i64 4, i8* nonnull %19) #9, !dbg !1524
  %317 = add i64 %315, %124, !dbg !1525
  %318 = getelementptr inbounds i8, i8* %2, i64 %317, !dbg !1526
  %319 = sub i64 %313, %317, !dbg !1527
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1138, metadata !1528), !dbg !1529
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !1155, metadata !1528), !dbg !1530
  %320 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %318, i64 %319, %struct.__mbstate_t* nonnull %11) #9, !dbg !1531
  call void @llvm.dbg.value(metadata i64 %320, i64 0, metadata !1158, metadata !629), !dbg !1532
  switch i64 %320, label %334 [
    i64 0, label %350
    i64 -1, label %347
    i64 -2, label %321
  ], !dbg !1533

; <label>:321:                                    ; preds = %314
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !1134, metadata !629), !dbg !1506
  %322 = icmp ugt i64 %313, %317, !dbg !1534
  br i1 %322, label %323, label %351, !dbg !1537

; <label>:323:                                    ; preds = %321
  br label %324, !dbg !1538

; <label>:324:                                    ; preds = %323, %330
  %325 = phi i64 [ %332, %330 ], [ %317, %323 ]
  %326 = phi i64 [ %331, %330 ], [ %315, %323 ]
  %327 = getelementptr inbounds i8, i8* %2, i64 %325, !dbg !1538
  %328 = load i8, i8* %327, align 1, !dbg !1538, !tbaa !1203
  %329 = icmp eq i8 %328, 0, !dbg !1540
  br i1 %329, label %348, label %330, !dbg !1541

; <label>:330:                                    ; preds = %324
  %331 = add i64 %326, 1, !dbg !1543
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !1134, metadata !629), !dbg !1506
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !1134, metadata !629), !dbg !1506
  %332 = add i64 %331, %124, !dbg !1544
  %333 = icmp ult i64 %332, %313, !dbg !1534
  br i1 %333, label %324, label %348, !dbg !1537, !llvm.loop !1545

; <label>:334:                                    ; preds = %314
  %335 = icmp ugt i64 %320, 1, !dbg !1547
  %336 = and i1 %116, %335, !dbg !1551
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1159, metadata !629), !dbg !1552
  br i1 %336, label %337, label %355, !dbg !1551

; <label>:337:                                    ; preds = %334
  br label %338, !dbg !1553

; <label>:338:                                    ; preds = %337, %344
  %339 = phi i64 [ %345, %344 ], [ 1, %337 ]
  %340 = add i64 %339, %317, !dbg !1553
  %341 = getelementptr inbounds i8, i8* %2, i64 %340, !dbg !1554
  %342 = load i8, i8* %341, align 1, !dbg !1554, !tbaa !1203
  %343 = sext i8 %342 to i32, !dbg !1554
  switch i32 %343, label %344 [
    i32 91, label %367
    i32 92, label %367
    i32 94, label %367
    i32 96, label %367
    i32 124, label %367
  ], !dbg !1555

; <label>:344:                                    ; preds = %338
  %345 = add nuw i64 %339, 1, !dbg !1556
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !1159, metadata !629), !dbg !1552
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !1159, metadata !629), !dbg !1552
  %346 = icmp ult i64 %345, %320, !dbg !1547
  br i1 %346, label %338, label %354, !dbg !1558, !llvm.loop !1560

; <label>:347:                                    ; preds = %314
  br label %351, !dbg !1512

; <label>:348:                                    ; preds = %324, %330
  %349 = phi i64 [ %331, %330 ], [ %326, %324 ]
  br label %351, !dbg !1512

; <label>:350:                                    ; preds = %314
  br label %351, !dbg !1512

; <label>:351:                                    ; preds = %350, %348, %347, %321
  %352 = phi i64 [ %315, %321 ], [ %315, %347 ], [ %349, %348 ], [ %315, %350 ]
  %353 = phi i8 [ 0, %321 ], [ 0, %347 ], [ 0, %348 ], [ %316, %350 ]
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1137, metadata !629), !dbg !1512
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1134, metadata !629), !dbg !1506
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #9, !dbg !1563
  br label %364

; <label>:354:                                    ; preds = %344
  br label %355, !dbg !1564

; <label>:355:                                    ; preds = %354, %334
  %356 = load i32, i32* %12, align 4, !dbg !1564, !tbaa !721
  call void @llvm.dbg.value(metadata i32 %356, i64 0, metadata !1155, metadata !629), !dbg !1530
  %357 = call i32 @iswprint(i32 %356) #9, !dbg !1566
  %358 = icmp eq i32 %357, 0, !dbg !1566
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1137, metadata !629), !dbg !1512
  %359 = select i1 %358, i8 0, i8 %316, !dbg !1567
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1137, metadata !629), !dbg !1512
  %360 = add i64 %320, %315, !dbg !1568
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1134, metadata !629), !dbg !1506
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1137, metadata !629), !dbg !1512
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1134, metadata !629), !dbg !1506
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #9, !dbg !1563
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1138, metadata !1528), !dbg !1529
  %361 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #13, !dbg !1569
  %362 = icmp eq i32 %361, 0, !dbg !1570
  br i1 %362, label %314, label %363, !dbg !1571, !llvm.loop !1519

; <label>:363:                                    ; preds = %355
  br label %364, !dbg !1573

; <label>:364:                                    ; preds = %363, %351
  %365 = phi i8 [ %353, %351 ], [ %359, %363 ]
  %366 = phi i64 [ %352, %351 ], [ %360, %363 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #9, !dbg !1573
  br label %368

; <label>:367:                                    ; preds = %338, %338, %338, %338, %338
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1137, metadata !629), !dbg !1512
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1134, metadata !629), !dbg !1506
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #9, !dbg !1563
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #9, !dbg !1573
  br label %649

; <label>:368:                                    ; preds = %364, %299
  %369 = phi i64 [ %156, %299 ], [ %313, %364 ]
  %370 = phi i64 [ 1, %299 ], [ %366, %364 ]
  %371 = phi i8 [ %307, %299 ], [ %365, %364 ]
  call void @llvm.dbg.value(metadata i8 %371, i64 0, metadata !1137, metadata !629), !dbg !1512
  call void @llvm.dbg.value(metadata i64 %370, i64 0, metadata !1134, metadata !629), !dbg !1506
  call void @llvm.dbg.value(metadata i64 %369, i64 0, metadata !1109, metadata !629), !dbg !1172
  %372 = and i8 %371, 1, !dbg !1574
  %373 = icmp ne i8 %372, 0, !dbg !1574
  call void @llvm.dbg.value(metadata i8 %372, i64 0, metadata !1133, metadata !629), !dbg !1268
  %374 = icmp ult i64 %370, 2, !dbg !1575
  %375 = or i1 %373, %113, !dbg !1576
  %376 = and i1 %374, %375, !dbg !1578
  br i1 %376, label %476, label %377, !dbg !1578

; <label>:377:                                    ; preds = %368
  %378 = add i64 %370, %124, !dbg !1579
  call void @llvm.dbg.value(metadata i64 %378, i64 0, metadata !1166, metadata !629), !dbg !1580
  br label %379, !dbg !1581

; <label>:379:                                    ; preds = %472, %377
  %380 = phi i64 [ %124, %377 ], [ %447, %472 ]
  %381 = phi i64 [ %125, %377 ], [ %473, %472 ]
  %382 = phi i8 [ %128, %377 ], [ %468, %472 ]
  %383 = phi i8 [ %159, %377 ], [ %475, %472 ]
  %384 = phi i8 [ %157, %377 ], [ %445, %472 ]
  %385 = phi i8 [ 0, %377 ], [ %446, %472 ]
  call void @llvm.dbg.value(metadata i8 %385, i64 0, metadata !1132, metadata !629), !dbg !1267
  call void @llvm.dbg.value(metadata i8 %384, i64 0, metadata !1131, metadata !629), !dbg !1266
  call void @llvm.dbg.value(metadata i8 %383, i64 0, metadata !1126, metadata !629), !dbg !1285
  call void @llvm.dbg.value(metadata i8 %382, i64 0, metadata !1123, metadata !629), !dbg !1186
  call void @llvm.dbg.value(metadata i64 %381, i64 0, metadata !1116, metadata !629), !dbg !1178
  call void @llvm.dbg.value(metadata i64 %380, i64 0, metadata !1115, metadata !629), !dbg !1254
  br i1 %375, label %432, label %386, !dbg !1582

; <label>:386:                                    ; preds = %379
  br i1 %112, label %387, label %643, !dbg !1587

; <label>:387:                                    ; preds = %386
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1132, metadata !629), !dbg !1267
  %388 = and i8 %382, 1, !dbg !1591
  %389 = icmp eq i8 %388, 0, !dbg !1591
  %390 = and i1 %114, %389, !dbg !1594
  br i1 %390, label %391, label %407, !dbg !1594

; <label>:391:                                    ; preds = %387
  %392 = icmp ult i64 %381, %131, !dbg !1596
  br i1 %392, label %393, label %395, !dbg !1601

; <label>:393:                                    ; preds = %391
  %394 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !1603
  store i8 39, i8* %394, align 1, !dbg !1603, !tbaa !1203
  br label %395, !dbg !1603

; <label>:395:                                    ; preds = %393, %391
  %396 = add i64 %381, 1, !dbg !1605
  call void @llvm.dbg.value(metadata i64 %396, i64 0, metadata !1116, metadata !629), !dbg !1178
  %397 = icmp ult i64 %396, %131, !dbg !1607
  br i1 %397, label %398, label %400, !dbg !1611

; <label>:398:                                    ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !1613
  store i8 36, i8* %399, align 1, !dbg !1613, !tbaa !1203
  br label %400, !dbg !1613

; <label>:400:                                    ; preds = %398, %395
  %401 = add i64 %381, 2, !dbg !1615
  call void @llvm.dbg.value(metadata i64 %401, i64 0, metadata !1116, metadata !629), !dbg !1178
  %402 = icmp ult i64 %401, %131, !dbg !1617
  br i1 %402, label %403, label %405, !dbg !1621

; <label>:403:                                    ; preds = %400
  %404 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !1623
  store i8 39, i8* %404, align 1, !dbg !1623, !tbaa !1203
  br label %405, !dbg !1623

; <label>:405:                                    ; preds = %403, %400
  %406 = add i64 %381, 3, !dbg !1625
  call void @llvm.dbg.value(metadata i64 %406, i64 0, metadata !1116, metadata !629), !dbg !1178
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1123, metadata !629), !dbg !1186
  br label %407, !dbg !1627

; <label>:407:                                    ; preds = %387, %405
  %408 = phi i64 [ %406, %405 ], [ %381, %387 ]
  %409 = phi i8 [ 1, %405 ], [ %382, %387 ]
  call void @llvm.dbg.value(metadata i8 %409, i64 0, metadata !1123, metadata !629), !dbg !1186
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !1116, metadata !629), !dbg !1178
  %410 = icmp ult i64 %408, %131, !dbg !1629
  br i1 %410, label %411, label %413, !dbg !1633

; <label>:411:                                    ; preds = %407
  %412 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !1635
  store i8 92, i8* %412, align 1, !dbg !1635, !tbaa !1203
  br label %413, !dbg !1635

; <label>:413:                                    ; preds = %411, %407
  %414 = add i64 %408, 1, !dbg !1637
  call void @llvm.dbg.value(metadata i64 %414, i64 0, metadata !1116, metadata !629), !dbg !1178
  %415 = icmp ult i64 %414, %131, !dbg !1639
  br i1 %415, label %416, label %420, !dbg !1643

; <label>:416:                                    ; preds = %413
  %417 = lshr i8 %383, 6, !dbg !1645
  %418 = or i8 %417, 48, !dbg !1645
  %419 = getelementptr inbounds i8, i8* %0, i64 %414, !dbg !1645
  store i8 %418, i8* %419, align 1, !dbg !1645, !tbaa !1203
  br label %420, !dbg !1645

; <label>:420:                                    ; preds = %416, %413
  %421 = add i64 %408, 2, !dbg !1647
  call void @llvm.dbg.value(metadata i64 %421, i64 0, metadata !1116, metadata !629), !dbg !1178
  %422 = icmp ult i64 %421, %131, !dbg !1649
  br i1 %422, label %423, label %428, !dbg !1653

; <label>:423:                                    ; preds = %420
  %424 = lshr i8 %383, 3, !dbg !1655
  %425 = and i8 %424, 7, !dbg !1655
  %426 = or i8 %425, 48, !dbg !1655
  %427 = getelementptr inbounds i8, i8* %0, i64 %421, !dbg !1655
  store i8 %426, i8* %427, align 1, !dbg !1655, !tbaa !1203
  br label %428, !dbg !1655

; <label>:428:                                    ; preds = %423, %420
  %429 = add i64 %408, 3, !dbg !1657
  call void @llvm.dbg.value(metadata i64 %429, i64 0, metadata !1116, metadata !629), !dbg !1178
  %430 = and i8 %383, 7, !dbg !1659
  %431 = or i8 %430, 48, !dbg !1660
  call void @llvm.dbg.value(metadata i8 %431, i64 0, metadata !1126, metadata !629), !dbg !1285
  br label %441, !dbg !1661

; <label>:432:                                    ; preds = %379
  %433 = and i8 %384, 1, !dbg !1662
  %434 = icmp eq i8 %433, 0, !dbg !1662
  br i1 %434, label %441, label %435, !dbg !1664

; <label>:435:                                    ; preds = %432
  %436 = icmp ult i64 %381, %131, !dbg !1665
  br i1 %436, label %437, label %439, !dbg !1670

; <label>:437:                                    ; preds = %435
  %438 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !1672
  store i8 92, i8* %438, align 1, !dbg !1672, !tbaa !1203
  br label %439, !dbg !1672

; <label>:439:                                    ; preds = %437, %435
  %440 = add i64 %381, 1, !dbg !1674
  call void @llvm.dbg.value(metadata i64 %440, i64 0, metadata !1116, metadata !629), !dbg !1178
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1131, metadata !629), !dbg !1266
  br label %441, !dbg !1676

; <label>:441:                                    ; preds = %432, %439, %428
  %442 = phi i64 [ %440, %439 ], [ %381, %432 ], [ %429, %428 ]
  %443 = phi i8 [ %382, %439 ], [ %382, %432 ], [ %409, %428 ]
  %444 = phi i8 [ %383, %439 ], [ %383, %432 ], [ %431, %428 ]
  %445 = phi i8 [ 0, %439 ], [ %384, %432 ], [ %384, %428 ]
  %446 = phi i8 [ %385, %439 ], [ %385, %432 ], [ 1, %428 ]
  call void @llvm.dbg.value(metadata i8 %446, i64 0, metadata !1132, metadata !629), !dbg !1267
  call void @llvm.dbg.value(metadata i8 %445, i64 0, metadata !1131, metadata !629), !dbg !1266
  call void @llvm.dbg.value(metadata i8 %444, i64 0, metadata !1126, metadata !629), !dbg !1285
  call void @llvm.dbg.value(metadata i8 %443, i64 0, metadata !1123, metadata !629), !dbg !1186
  call void @llvm.dbg.value(metadata i64 %442, i64 0, metadata !1116, metadata !629), !dbg !1178
  %447 = add i64 %380, 1, !dbg !1677
  %448 = icmp ugt i64 %378, %447, !dbg !1679
  br i1 %448, label %449, label %541, !dbg !1680

; <label>:449:                                    ; preds = %441
  %450 = and i8 %443, 1, !dbg !1681
  %451 = icmp ne i8 %450, 0, !dbg !1681
  %452 = and i8 %446, 1, !dbg !1685
  %453 = icmp eq i8 %452, 0, !dbg !1685
  %454 = and i1 %451, %453, !dbg !1681
  br i1 %454, label %455, label %466, !dbg !1681

; <label>:455:                                    ; preds = %449
  %456 = icmp ult i64 %442, %131, !dbg !1687
  br i1 %456, label %457, label %459, !dbg !1692

; <label>:457:                                    ; preds = %455
  %458 = getelementptr inbounds i8, i8* %0, i64 %442, !dbg !1694
  store i8 39, i8* %458, align 1, !dbg !1694, !tbaa !1203
  br label %459, !dbg !1694

; <label>:459:                                    ; preds = %457, %455
  %460 = add i64 %442, 1, !dbg !1696
  call void @llvm.dbg.value(metadata i64 %460, i64 0, metadata !1116, metadata !629), !dbg !1178
  %461 = icmp ult i64 %460, %131, !dbg !1698
  br i1 %461, label %462, label %464, !dbg !1702

; <label>:462:                                    ; preds = %459
  %463 = getelementptr inbounds i8, i8* %0, i64 %460, !dbg !1704
  store i8 39, i8* %463, align 1, !dbg !1704, !tbaa !1203
  br label %464, !dbg !1704

; <label>:464:                                    ; preds = %462, %459
  %465 = add i64 %442, 2, !dbg !1706
  call void @llvm.dbg.value(metadata i64 %465, i64 0, metadata !1116, metadata !629), !dbg !1178
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1123, metadata !629), !dbg !1186
  br label %466, !dbg !1708

; <label>:466:                                    ; preds = %449, %464
  %467 = phi i64 [ %465, %464 ], [ %442, %449 ]
  %468 = phi i8 [ 0, %464 ], [ %443, %449 ]
  call void @llvm.dbg.value(metadata i8 %468, i64 0, metadata !1123, metadata !629), !dbg !1186
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !1116, metadata !629), !dbg !1178
  %469 = icmp ult i64 %467, %131, !dbg !1710
  br i1 %469, label %470, label %472, !dbg !1714

; <label>:470:                                    ; preds = %466
  %471 = getelementptr inbounds i8, i8* %0, i64 %467, !dbg !1716
  store i8 %444, i8* %471, align 1, !dbg !1716, !tbaa !1203
  br label %472, !dbg !1716

; <label>:472:                                    ; preds = %470, %466
  %473 = add i64 %467, 1, !dbg !1718
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !1116, metadata !629), !dbg !1178
  call void @llvm.dbg.value(metadata i64 %447, i64 0, metadata !1115, metadata !629), !dbg !1254
  %474 = getelementptr inbounds i8, i8* %2, i64 %447, !dbg !1720
  %475 = load i8, i8* %474, align 1, !dbg !1720, !tbaa !1203
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !1126, metadata !629), !dbg !1285
  br label %379, !dbg !1721, !llvm.loop !1723

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
  call void @llvm.dbg.value(metadata i64 %486, i64 0, metadata !1107, metadata !629), !dbg !1170
  call void @llvm.dbg.value(metadata i8 %485, i64 0, metadata !1133, metadata !629), !dbg !1268
  call void @llvm.dbg.value(metadata i8 %484, i64 0, metadata !1132, metadata !629), !dbg !1267
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !1131, metadata !629), !dbg !1266
  call void @llvm.dbg.value(metadata i8 %483, i64 0, metadata !1126, metadata !629), !dbg !1285
  call void @llvm.dbg.value(metadata i8 %482, i64 0, metadata !1124, metadata !629), !dbg !1187
  call void @llvm.dbg.value(metadata i8 %481, i64 0, metadata !1123, metadata !629), !dbg !1186
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !1109, metadata !629), !dbg !1172
  call void @llvm.dbg.value(metadata i64 %479, i64 0, metadata !1117, metadata !629), !dbg !1179
  call void @llvm.dbg.value(metadata i64 %478, i64 0, metadata !1116, metadata !629), !dbg !1178
  call void @llvm.dbg.value(metadata i64 %477, i64 0, metadata !1115, metadata !629), !dbg !1254
  br i1 %107, label %488, label %487, !dbg !1726

; <label>:487:                                    ; preds = %476
  br i1 %117, label %489, label %501, !dbg !1728

; <label>:488:                                    ; preds = %476
  br i1 %20, label %501, label %489, !dbg !1729

; <label>:489:                                    ; preds = %488, %487
  %490 = lshr i8 %483, 5, !dbg !1730
  %491 = zext i8 %490 to i64, !dbg !1730
  %492 = getelementptr inbounds i32, i32* %6, i64 %491, !dbg !1732
  %493 = load i32, i32* %492, align 4, !dbg !1732, !tbaa !721
  %494 = and i8 %483, 31, !dbg !1733
  %495 = zext i8 %494 to i32, !dbg !1734
  %496 = shl i32 1, %495, !dbg !1735
  %497 = and i32 %493, %496, !dbg !1735
  %498 = icmp eq i32 %497, 0, !dbg !1735
  %499 = icmp eq i8 %157, 0, !dbg !1736
  %500 = and i1 %499, %498, !dbg !1737
  br i1 %500, label %542, label %503, !dbg !1737

; <label>:501:                                    ; preds = %488, %487
  %502 = icmp eq i8 %157, 0, !dbg !1736
  br i1 %502, label %542, label %503, !dbg !1738

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
  call void @llvm.dbg.value(metadata i64 %512, i64 0, metadata !1107, metadata !629), !dbg !1170
  call void @llvm.dbg.value(metadata i8 %511, i64 0, metadata !1133, metadata !629), !dbg !1268
  call void @llvm.dbg.value(metadata i8 %510, i64 0, metadata !1126, metadata !629), !dbg !1285
  call void @llvm.dbg.value(metadata i8 %509, i64 0, metadata !1124, metadata !629), !dbg !1187
  call void @llvm.dbg.value(metadata i8 %508, i64 0, metadata !1123, metadata !629), !dbg !1186
  call void @llvm.dbg.value(metadata i64 %507, i64 0, metadata !1109, metadata !629), !dbg !1172
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !1117, metadata !629), !dbg !1179
  call void @llvm.dbg.value(metadata i64 %505, i64 0, metadata !1116, metadata !629), !dbg !1178
  call void @llvm.dbg.value(metadata i64 %504, i64 0, metadata !1115, metadata !629), !dbg !1254
  br i1 %112, label %513, label %644, !dbg !1740

; <label>:513:                                    ; preds = %503
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1132, metadata !629), !dbg !1267
  %514 = and i8 %508, 1, !dbg !1743
  %515 = icmp eq i8 %514, 0, !dbg !1743
  %516 = and i1 %114, %515, !dbg !1746
  br i1 %516, label %517, label %533, !dbg !1746

; <label>:517:                                    ; preds = %513
  %518 = icmp ult i64 %505, %512, !dbg !1748
  br i1 %518, label %519, label %521, !dbg !1753

; <label>:519:                                    ; preds = %517
  %520 = getelementptr inbounds i8, i8* %0, i64 %505, !dbg !1755
  store i8 39, i8* %520, align 1, !dbg !1755, !tbaa !1203
  br label %521, !dbg !1755

; <label>:521:                                    ; preds = %519, %517
  %522 = add i64 %505, 1, !dbg !1757
  call void @llvm.dbg.value(metadata i64 %522, i64 0, metadata !1116, metadata !629), !dbg !1178
  %523 = icmp ult i64 %522, %512, !dbg !1759
  br i1 %523, label %524, label %526, !dbg !1763

; <label>:524:                                    ; preds = %521
  %525 = getelementptr inbounds i8, i8* %0, i64 %522, !dbg !1765
  store i8 36, i8* %525, align 1, !dbg !1765, !tbaa !1203
  br label %526, !dbg !1765

; <label>:526:                                    ; preds = %524, %521
  %527 = add i64 %505, 2, !dbg !1767
  call void @llvm.dbg.value(metadata i64 %527, i64 0, metadata !1116, metadata !629), !dbg !1178
  %528 = icmp ult i64 %527, %512, !dbg !1769
  br i1 %528, label %529, label %531, !dbg !1773

; <label>:529:                                    ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527, !dbg !1775
  store i8 39, i8* %530, align 1, !dbg !1775, !tbaa !1203
  br label %531, !dbg !1775

; <label>:531:                                    ; preds = %529, %526
  %532 = add i64 %505, 3, !dbg !1777
  call void @llvm.dbg.value(metadata i64 %532, i64 0, metadata !1116, metadata !629), !dbg !1178
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1123, metadata !629), !dbg !1186
  br label %533, !dbg !1779

; <label>:533:                                    ; preds = %513, %531
  %534 = phi i64 [ %532, %531 ], [ %505, %513 ]
  %535 = phi i8 [ 1, %531 ], [ %508, %513 ]
  call void @llvm.dbg.value(metadata i8 %535, i64 0, metadata !1123, metadata !629), !dbg !1186
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !1116, metadata !629), !dbg !1178
  %536 = icmp ult i64 %534, %512, !dbg !1781
  br i1 %536, label %537, label %539, !dbg !1785

; <label>:537:                                    ; preds = %533
  %538 = getelementptr inbounds i8, i8* %0, i64 %534, !dbg !1787
  store i8 92, i8* %538, align 1, !dbg !1787, !tbaa !1203
  br label %539, !dbg !1787

; <label>:539:                                    ; preds = %533, %537
  %540 = add i64 %534, 1, !dbg !1789
  call void @llvm.dbg.value(metadata i64 %540, i64 0, metadata !1116, metadata !629), !dbg !1178
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !1107, metadata !629), !dbg !1170
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !1133, metadata !629), !dbg !1268
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !1132, metadata !629), !dbg !1267
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !1126, metadata !629), !dbg !1285
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !1124, metadata !629), !dbg !1187
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !1123, metadata !629), !dbg !1186
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !1109, metadata !629), !dbg !1172
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1117, metadata !629), !dbg !1179
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !1116, metadata !629), !dbg !1178
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !1115, metadata !629), !dbg !1254
  br label %569, !dbg !1791

; <label>:541:                                    ; preds = %441
  br label %542, !dbg !1170

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
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !1107, metadata !629), !dbg !1170
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !1133, metadata !629), !dbg !1268
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !1132, metadata !629), !dbg !1267
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !1126, metadata !629), !dbg !1285
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !1124, metadata !629), !dbg !1187
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !1123, metadata !629), !dbg !1186
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !1109, metadata !629), !dbg !1172
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1117, metadata !629), !dbg !1179
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !1116, metadata !629), !dbg !1178
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !1115, metadata !629), !dbg !1254
  %553 = and i8 %547, 1, !dbg !1791
  %554 = icmp ne i8 %553, 0, !dbg !1791
  %555 = and i8 %550, 1, !dbg !1795
  %556 = icmp eq i8 %555, 0, !dbg !1795
  %557 = and i1 %554, %556, !dbg !1791
  br i1 %557, label %558, label %569, !dbg !1791

; <label>:558:                                    ; preds = %542
  %559 = icmp ult i64 %544, %552, !dbg !1797
  br i1 %559, label %560, label %562, !dbg !1802

; <label>:560:                                    ; preds = %558
  %561 = getelementptr inbounds i8, i8* %0, i64 %544, !dbg !1804
  store i8 39, i8* %561, align 1, !dbg !1804, !tbaa !1203
  br label %562, !dbg !1804

; <label>:562:                                    ; preds = %560, %558
  %563 = add i64 %544, 1, !dbg !1806
  call void @llvm.dbg.value(metadata i64 %563, i64 0, metadata !1116, metadata !629), !dbg !1178
  %564 = icmp ult i64 %563, %552, !dbg !1808
  br i1 %564, label %565, label %567, !dbg !1812

; <label>:565:                                    ; preds = %562
  %566 = getelementptr inbounds i8, i8* %0, i64 %563, !dbg !1814
  store i8 39, i8* %566, align 1, !dbg !1814, !tbaa !1203
  br label %567, !dbg !1814

; <label>:567:                                    ; preds = %565, %562
  %568 = add i64 %544, 2, !dbg !1816
  call void @llvm.dbg.value(metadata i64 %568, i64 0, metadata !1116, metadata !629), !dbg !1178
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1123, metadata !629), !dbg !1186
  br label %569, !dbg !1818

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
  call void @llvm.dbg.value(metadata i8 %578, i64 0, metadata !1123, metadata !629), !dbg !1186
  call void @llvm.dbg.value(metadata i64 %577, i64 0, metadata !1116, metadata !629), !dbg !1178
  %579 = icmp ult i64 %577, %570, !dbg !1820
  br i1 %579, label %580, label %582, !dbg !1824

; <label>:580:                                    ; preds = %569
  %581 = getelementptr inbounds i8, i8* %0, i64 %577, !dbg !1826
  store i8 %572, i8* %581, align 1, !dbg !1826, !tbaa !1203
  br label %582, !dbg !1826

; <label>:582:                                    ; preds = %580, %569
  %583 = add i64 %577, 1, !dbg !1828
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !1116, metadata !629), !dbg !1178
  %584 = and i8 %571, 1, !dbg !1830
  %585 = icmp eq i8 %584, 0, !dbg !1830
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1125, metadata !629), !dbg !1188
  %586 = select i1 %585, i8 0, i8 %130, !dbg !1832
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !1125, metadata !629), !dbg !1188
  br label %587, !dbg !1833

; <label>:587:                                    ; preds = %582, %209
  %588 = phi i64 [ %124, %209 ], [ %576, %582 ]
  %589 = phi i64 [ %125, %209 ], [ %583, %582 ]
  %590 = phi i64 [ %126, %209 ], [ %575, %582 ]
  %591 = phi i64 [ %156, %209 ], [ %574, %582 ]
  %592 = phi i8 [ %128, %209 ], [ %578, %582 ]
  %593 = phi i8 [ %129, %209 ], [ %573, %582 ]
  %594 = phi i8 [ %130, %209 ], [ %586, %582 ]
  %595 = phi i64 [ %131, %209 ], [ %570, %582 ]
  %596 = add i64 %588, 1, !dbg !1834
  call void @llvm.dbg.value(metadata i64 %596, i64 0, metadata !1115, metadata !629), !dbg !1254
  br label %123, !dbg !1836, !llvm.loop !1837

; <label>:597:                                    ; preds = %133, %135
  %598 = phi i64 [ %124, %133 ], [ -1, %135 ]
  %599 = icmp eq i64 %125, 0, !dbg !1840
  %600 = and i1 %114, %599, !dbg !1842
  %601 = xor i1 %600, true, !dbg !1842
  %602 = or i1 %112, %601, !dbg !1842
  br i1 %602, label %603, label %648, !dbg !1842

; <label>:603:                                    ; preds = %597
  %604 = and i1 %114, %112, !dbg !1843
  %605 = xor i1 %604, true, !dbg !1843
  %606 = and i8 %129, 1, !dbg !1845
  %607 = icmp eq i8 %606, 0, !dbg !1845
  %608 = or i1 %607, %605, !dbg !1843
  br i1 %608, label %618, label %609, !dbg !1843

; <label>:609:                                    ; preds = %603
  %610 = and i8 %130, 1, !dbg !1847
  %611 = icmp eq i8 %610, 0, !dbg !1847
  br i1 %611, label %614, label %612, !dbg !1850

; <label>:612:                                    ; preds = %609
  %613 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %126, i8* %2, i64 %598, i32 5, i32 %5, i32* %6, i8* %97, i8* %98), !dbg !1851
  br label %659, !dbg !1852

; <label>:614:                                    ; preds = %609
  %615 = icmp eq i64 %131, 0, !dbg !1853
  %616 = icmp ne i64 %126, 0, !dbg !1855
  %617 = and i1 %616, %615, !dbg !1857
  br i1 %617, label %27, label %618, !dbg !1857

; <label>:618:                                    ; preds = %603, %614
  %619 = icmp ne i8* %100, null, !dbg !1858
  %620 = and i1 %619, %112, !dbg !1860
  br i1 %620, label %621, label %638, !dbg !1860

; <label>:621:                                    ; preds = %618
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !1118, metadata !629), !dbg !1180
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1116, metadata !629), !dbg !1178
  %622 = load i8, i8* %100, align 1, !dbg !1861, !tbaa !1203
  %623 = icmp eq i8 %622, 0, !dbg !1865
  br i1 %623, label %638, label %624, !dbg !1865

; <label>:624:                                    ; preds = %621
  br label %625, !dbg !1867

; <label>:625:                                    ; preds = %624, %632
  %626 = phi i8 [ %635, %632 ], [ %622, %624 ]
  %627 = phi i8* [ %634, %632 ], [ %100, %624 ]
  %628 = phi i64 [ %633, %632 ], [ %125, %624 ]
  %629 = icmp ult i64 %628, %131, !dbg !1867
  br i1 %629, label %630, label %632, !dbg !1871

; <label>:630:                                    ; preds = %625
  %631 = getelementptr inbounds i8, i8* %0, i64 %628, !dbg !1873
  store i8 %626, i8* %631, align 1, !dbg !1873, !tbaa !1203
  br label %632, !dbg !1873

; <label>:632:                                    ; preds = %630, %625
  %633 = add i64 %628, 1, !dbg !1875
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !1116, metadata !629), !dbg !1178
  %634 = getelementptr inbounds i8, i8* %627, i64 1, !dbg !1877
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !1118, metadata !629), !dbg !1180
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !1118, metadata !629), !dbg !1180
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !1116, metadata !629), !dbg !1178
  %635 = load i8, i8* %634, align 1, !dbg !1861, !tbaa !1203
  %636 = icmp eq i8 %635, 0, !dbg !1865
  br i1 %636, label %637, label %625, !dbg !1865, !llvm.loop !1879

; <label>:637:                                    ; preds = %632
  br label %638, !dbg !1178

; <label>:638:                                    ; preds = %637, %621, %618
  %639 = phi i64 [ %125, %618 ], [ %125, %621 ], [ %633, %637 ]
  call void @llvm.dbg.value(metadata i64 %639, i64 0, metadata !1116, metadata !629), !dbg !1178
  %640 = icmp ult i64 %639, %131, !dbg !1882
  br i1 %640, label %641, label %659, !dbg !1884

; <label>:641:                                    ; preds = %638
  %642 = getelementptr inbounds i8, i8* %0, i64 %639, !dbg !1885
  store i8 0, i8* %642, align 1, !dbg !1886, !tbaa !1203
  br label %659, !dbg !1885

; <label>:643:                                    ; preds = %386
  br label %649, !dbg !1170

; <label>:644:                                    ; preds = %148, %161, %211, %225, %253, %255, %273, %276, %503
  %645 = phi i32 [ %96, %148 ], [ %96, %161 ], [ 2, %211 ], [ 5, %225 ], [ 2, %253 ], [ 2, %255 ], [ 2, %273 ], [ 2, %276 ], [ %96, %503 ]
  %646 = phi i64 [ %146, %148 ], [ %156, %161 ], [ %156, %211 ], [ %156, %225 ], [ %156, %253 ], [ %156, %255 ], [ %156, %273 ], [ %156, %276 ], [ %507, %503 ]
  %647 = phi i64 [ %131, %148 ], [ %131, %161 ], [ %131, %211 ], [ %131, %225 ], [ %131, %253 ], [ %131, %255 ], [ %131, %273 ], [ %131, %276 ], [ %512, %503 ]
  br label %649, !dbg !1170

; <label>:648:                                    ; preds = %597
  br label %649, !dbg !1170

; <label>:649:                                    ; preds = %648, %644, %643, %367
  %650 = phi i32 [ 2, %367 ], [ %96, %643 ], [ %645, %644 ], [ %96, %648 ]
  %651 = phi i64 [ %313, %367 ], [ %369, %643 ], [ %646, %644 ], [ %598, %648 ]
  %652 = phi i64 [ %131, %367 ], [ %131, %643 ], [ %647, %644 ], [ %131, %648 ]
  call void @llvm.dbg.value(metadata i64 %652, i64 0, metadata !1107, metadata !629), !dbg !1170
  call void @llvm.dbg.value(metadata i64 %651, i64 0, metadata !1109, metadata !629), !dbg !1172
  %653 = icmp ne i32 %650, 2, !dbg !1887
  %654 = icmp eq i8 %104, 0, !dbg !1889
  %655 = or i1 %653, %654, !dbg !1891
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !1110, metadata !629), !dbg !1173
  %656 = select i1 %655, i32 %650, i32 4, !dbg !1891
  call void @llvm.dbg.value(metadata i32 %656, i64 0, metadata !1110, metadata !629), !dbg !1173
  %657 = and i32 %5, -3, !dbg !1892
  %658 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %652, i8* %2, i64 %651, i32 %656, i32 %657, i32* null, i8* %97, i8* %98), !dbg !1893
  br label %659, !dbg !1894

; <label>:659:                                    ; preds = %638, %641, %649, %612
  %660 = phi i64 [ %658, %649 ], [ %613, %612 ], [ %639, %641 ], [ %639, %638 ]
  ret i64 %660, !dbg !1895
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !1896 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1900, metadata !629), !dbg !1904
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1901, metadata !629), !dbg !1905
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #9, !dbg !1906
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !1902, metadata !629), !dbg !1907
  %4 = icmp eq i8* %3, %0, !dbg !1908
  br i1 %4, label %5, label %75, !dbg !1910

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #9, !dbg !1911
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !1903, metadata !629), !dbg !1912
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1913, metadata !629), !dbg !1929
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1927, metadata !629), !dbg !1932
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1928, metadata !629), !dbg !1933
  %7 = load i8, i8* %6, align 1, !tbaa !1203
  %8 = sext i8 %7 to i32
  %9 = and i32 %8, -33, !dbg !1934
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !1934

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1937, metadata !629), !dbg !1951
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1949, metadata !629), !dbg !1955
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1950, metadata !629), !dbg !1956
  %11 = getelementptr inbounds i8, i8* %6, i64 1
  %12 = load i8, i8* %11, align 1, !tbaa !1203
  %13 = sext i8 %12 to i32
  %14 = and i32 %13, -33, !dbg !1957
  %15 = icmp eq i32 %14, 84, !dbg !1957
  br i1 %15, label %16, label %72, !dbg !1957

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1960, metadata !629), !dbg !1973
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1971, metadata !629), !dbg !1977
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1972, metadata !629), !dbg !1978
  %17 = getelementptr inbounds i8, i8* %6, i64 2
  %18 = load i8, i8* %17, align 1, !tbaa !1203
  %19 = sext i8 %18 to i32
  %20 = and i32 %19, -33, !dbg !1979
  %21 = icmp eq i32 %20, 70, !dbg !1979
  br i1 %21, label %22, label %72, !dbg !1979

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1982, metadata !629), !dbg !1994
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1992, metadata !629), !dbg !1998
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1993, metadata !629), !dbg !1999
  %23 = getelementptr inbounds i8, i8* %6, i64 3
  %24 = load i8, i8* %23, align 1, !tbaa !1203
  %25 = icmp eq i8 %24, 45, !dbg !2000
  br i1 %25, label %26, label %72, !dbg !2003

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2005, metadata !629), !dbg !2016
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2014, metadata !629), !dbg !2020
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2015, metadata !629), !dbg !2021
  %27 = getelementptr inbounds i8, i8* %6, i64 4
  %28 = load i8, i8* %27, align 1, !tbaa !1203
  %29 = icmp eq i8 %28, 56, !dbg !2022
  br i1 %29, label %30, label %72, !dbg !2025

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2027, metadata !629), !dbg !2037
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2035, metadata !629), !dbg !2041
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2036, metadata !629), !dbg !2042
  %31 = getelementptr inbounds i8, i8* %6, i64 5
  %32 = load i8, i8* %31, align 1, !tbaa !1203
  %33 = icmp eq i8 %32, 0, !dbg !2043
  br i1 %33, label %34, label %72, !dbg !2046

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !2048, !tbaa !1203
  %36 = icmp eq i8 %35, 96, !dbg !2049
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.56, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.57, i64 0, i64 0), !dbg !2048
  br label %75, !dbg !2050

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1937, metadata !629), !dbg !2051
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1949, metadata !629), !dbg !2055
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1950, metadata !629), !dbg !2056
  %39 = getelementptr inbounds i8, i8* %6, i64 1
  %40 = load i8, i8* %39, align 1, !tbaa !1203
  %41 = sext i8 %40 to i32
  %42 = and i32 %41, -33, !dbg !2057
  %43 = icmp eq i32 %42, 66, !dbg !2057
  br i1 %43, label %44, label %72, !dbg !2057

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1960, metadata !629), !dbg !2058
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1971, metadata !629), !dbg !2060
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1972, metadata !629), !dbg !2061
  %45 = getelementptr inbounds i8, i8* %6, i64 2
  %46 = load i8, i8* %45, align 1, !tbaa !1203
  %47 = icmp eq i8 %46, 49, !dbg !2062
  br i1 %47, label %48, label %72, !dbg !2064

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1982, metadata !629), !dbg !2066
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1992, metadata !629), !dbg !2068
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1993, metadata !629), !dbg !2069
  %49 = getelementptr inbounds i8, i8* %6, i64 3
  %50 = load i8, i8* %49, align 1, !tbaa !1203
  %51 = icmp eq i8 %50, 56, !dbg !2070
  br i1 %51, label %52, label %72, !dbg !2071

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2005, metadata !629), !dbg !2072
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2014, metadata !629), !dbg !2074
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2015, metadata !629), !dbg !2075
  %53 = getelementptr inbounds i8, i8* %6, i64 4
  %54 = load i8, i8* %53, align 1, !tbaa !1203
  %55 = icmp eq i8 %54, 48, !dbg !2076
  br i1 %55, label %56, label %72, !dbg !2077

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2027, metadata !629), !dbg !2078
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2035, metadata !629), !dbg !2080
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2036, metadata !629), !dbg !2081
  %57 = getelementptr inbounds i8, i8* %6, i64 5
  %58 = load i8, i8* %57, align 1, !tbaa !1203
  %59 = icmp eq i8 %58, 51, !dbg !2082
  br i1 %59, label %60, label %72, !dbg !2083

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2084, metadata !629), !dbg !2093
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2091, metadata !629), !dbg !2097
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2092, metadata !629), !dbg !2098
  %61 = getelementptr inbounds i8, i8* %6, i64 6
  %62 = load i8, i8* %61, align 1, !tbaa !1203
  %63 = icmp eq i8 %62, 48, !dbg !2099
  br i1 %63, label %64, label %72, !dbg !2102

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2104, metadata !629), !dbg !2112
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2110, metadata !629), !dbg !2116
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2111, metadata !629), !dbg !2117
  %65 = getelementptr inbounds i8, i8* %6, i64 7
  %66 = load i8, i8* %65, align 1, !tbaa !1203
  %67 = icmp eq i8 %66, 0, !dbg !2118
  br i1 %67, label %68, label %72, !dbg !2121

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !2122, !tbaa !1203
  %70 = icmp eq i8 %69, 96, !dbg !2123
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.58, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), !dbg !2122
  br label %75, !dbg !2124

; <label>:72:                                     ; preds = %5, %30, %26, %22, %16, %10, %64, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !2125
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.55, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.54, i64 0, i64 0), !dbg !2126
  br label %75, !dbg !2127

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !2128
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
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2129 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2133, metadata !629), !dbg !2136
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2134, metadata !629), !dbg !2137
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2135, metadata !629), !dbg !2138
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2139, metadata !629) #9, !dbg !2152
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2144, metadata !629) #9, !dbg !2154
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !2145, metadata !629) #9, !dbg !2155
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2146, metadata !629) #9, !dbg !2156
  %4 = icmp ne %struct.quoting_options* %2, null, !dbg !2157
  %5 = select i1 %4, %struct.quoting_options* %2, %struct.quoting_options* @default_quoting_options, !dbg !2157
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2147, metadata !629) #9, !dbg !2158
  %6 = tail call i32* @__errno_location() #1, !dbg !2159
  %7 = load i32, i32* %6, align 4, !dbg !2159, !tbaa !721
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !2148, metadata !629) #9, !dbg !2160
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2161
  %9 = load i32, i32* %8, align 4, !dbg !2161, !tbaa !1038
  %10 = or i32 %9, 1, !dbg !2162
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2149, metadata !629) #9, !dbg !2163
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2164
  %12 = load i32, i32* %11, align 8, !dbg !2164, !tbaa !976
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2165
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2166
  %15 = load i8*, i8** %14, align 8, !dbg !2166, !tbaa !1065
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2167
  %17 = load i8*, i8** %16, align 8, !dbg !2167, !tbaa !1068
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #9, !dbg !2168
  %19 = add i64 %18, 1, !dbg !2169
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2150, metadata !629) #9, !dbg !2170
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2171, metadata !629) #9, !dbg !2176
  %20 = tail call noalias i8* @xmalloc(i64 %19) #9, !dbg !2178
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !2151, metadata !629) #9, !dbg !2179
  %21 = load i32, i32* %11, align 8, !dbg !2180, !tbaa !976
  %22 = load i8*, i8** %14, align 8, !dbg !2181, !tbaa !1065
  %23 = load i8*, i8** %16, align 8, !dbg !2182, !tbaa !1068
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #9, !dbg !2183
  store i32 %7, i32* %6, align 4, !dbg !2184, !tbaa !721
  ret i8* %20, !dbg !2185
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2140 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2139, metadata !629), !dbg !2186
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2144, metadata !629), !dbg !2187
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !2145, metadata !629), !dbg !2188
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2146, metadata !629), !dbg !2189
  %5 = icmp ne %struct.quoting_options* %3, null, !dbg !2190
  %6 = select i1 %5, %struct.quoting_options* %3, %struct.quoting_options* @default_quoting_options, !dbg !2190
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2147, metadata !629), !dbg !2191
  %7 = tail call i32* @__errno_location() #1, !dbg !2192
  %8 = load i32, i32* %7, align 4, !dbg !2192, !tbaa !721
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !2148, metadata !629), !dbg !2193
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2194
  %10 = load i32, i32* %9, align 4, !dbg !2194, !tbaa !1038
  %11 = icmp ne i64* %2, null, !dbg !2195
  %12 = xor i1 %11, true, !dbg !2195
  %13 = zext i1 %12 to i32, !dbg !2195
  %14 = or i32 %10, %13, !dbg !2196
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !2149, metadata !629), !dbg !2197
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2198
  %16 = load i32, i32* %15, align 8, !dbg !2198, !tbaa !976
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2199
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2200
  %19 = load i8*, i8** %18, align 8, !dbg !2200, !tbaa !1065
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2201
  %21 = load i8*, i8** %20, align 8, !dbg !2201, !tbaa !1068
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !2202
  %23 = add i64 %22, 1, !dbg !2203
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2150, metadata !629), !dbg !2204
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2171, metadata !629) #9, !dbg !2205
  %24 = tail call noalias i8* @xmalloc(i64 %23) #9, !dbg !2207
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !2151, metadata !629), !dbg !2208
  %25 = load i32, i32* %15, align 8, !dbg !2209, !tbaa !976
  %26 = load i8*, i8** %18, align 8, !dbg !2210, !tbaa !1065
  %27 = load i8*, i8** %20, align 8, !dbg !2211, !tbaa !1068
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !2212
  store i32 %8, i32* %7, align 4, !dbg !2213, !tbaa !721
  br i1 %11, label %29, label %30, !dbg !2214

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2215, !tbaa !2217
  br label %30, !dbg !2219

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !2220
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !2221 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2225, !tbaa !637
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !2223, metadata !629), !dbg !2226
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2224, metadata !629), !dbg !2227
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2224, metadata !629), !dbg !2227
  %2 = load i32, i32* @nslots, align 4, !dbg !2228, !tbaa !721
  %3 = icmp sgt i32 %2, 1, !dbg !2232
  br i1 %3, label %4, label %14, !dbg !2233

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !2235

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !2235
  %8 = load i8*, i8** %7, align 8, !dbg !2235, !tbaa !2236
  tail call void @free(i8* %8) #9, !dbg !2238
  %9 = add nuw i64 %6, 1, !dbg !2239
  %10 = load i32, i32* @nslots, align 4, !dbg !2228, !tbaa !721
  %11 = sext i32 %10 to i64, !dbg !2232
  %12 = icmp slt i64 %9, %11, !dbg !2232
  br i1 %12, label %5, label %13, !dbg !2233, !llvm.loop !2241

; <label>:13:                                     ; preds = %5
  br label %14, !dbg !2244

; <label>:14:                                     ; preds = %13, %0
  %15 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2244
  %16 = load i8*, i8** %15, align 8, !dbg !2244, !tbaa !2236
  %17 = icmp eq i8* %16, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2246
  br i1 %17, label %19, label %18, !dbg !2247

; <label>:18:                                     ; preds = %14
  tail call void @free(i8* %16) #9, !dbg !2248
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2250, !tbaa !2251
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2252, !tbaa !2236
  br label %19, !dbg !2253

; <label>:19:                                     ; preds = %14, %18
  %20 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2254
  br i1 %20, label %23, label %21, !dbg !2256

; <label>:21:                                     ; preds = %19
  %22 = bitcast %struct.slotvec* %1 to i8*, !dbg !2257
  tail call void @free(i8* %22) #9, !dbg !2259
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2260, !tbaa !637
  br label %23, !dbg !2261

; <label>:23:                                     ; preds = %19, %21
  store i32 1, i32* @nslots, align 4, !dbg !2262, !tbaa !721
  ret void, !dbg !2263
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !2264 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2268, metadata !629), !dbg !2270
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2269, metadata !629), !dbg !2271
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2272
  ret i8* %3, !dbg !2273
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !2274 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2278, metadata !629), !dbg !2292
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2279, metadata !629), !dbg !2293
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2280, metadata !629), !dbg !2294
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2281, metadata !629), !dbg !2295
  %5 = tail call i32* @__errno_location() #1, !dbg !2296
  %6 = load i32, i32* %5, align 4, !dbg !2296, !tbaa !721
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !2282, metadata !629), !dbg !2297
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2298, !tbaa !637
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !2283, metadata !629), !dbg !2299
  %8 = icmp slt i32 %0, 0, !dbg !2300
  br i1 %8, label %9, label %10, !dbg !2302

; <label>:9:                                      ; preds = %4
  tail call void @abort() #14, !dbg !2303
  unreachable, !dbg !2303

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2304, !tbaa !721
  %12 = icmp sgt i32 %11, %0, !dbg !2305
  br i1 %12, label %34, label %13, !dbg !2306

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2307
  %15 = icmp ugt i32 %0, 2147483646, !dbg !2308
  br i1 %15, label %16, label %17, !dbg !2310

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !2311
  unreachable, !dbg !2311

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !2312
  %19 = select i1 %14, i8* null, i8* %18, !dbg !2312
  %20 = add nsw i32 %0, 1, !dbg !2314
  %21 = sext i32 %20 to i64, !dbg !2315
  %22 = shl nsw i64 %21, 4, !dbg !2316
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #9, !dbg !2317
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2317
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !2283, metadata !629), !dbg !2299
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2318, !tbaa !637
  br i1 %14, label %25, label %26, !dbg !2319

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !2320, !tbaa.struct !2322
  br label %26, !dbg !2323

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2324, !tbaa !721
  %28 = sext i32 %27 to i64, !dbg !2325
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2325
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2326
  %31 = sub nsw i32 %20, %27, !dbg !2327
  %32 = sext i32 %31 to i64, !dbg !2328
  %33 = shl nsw i64 %32, 4, !dbg !2329
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !2326
  store i32 %20, i32* @nslots, align 4, !dbg !2330, !tbaa !721
  br label %34, !dbg !2331

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !2283, metadata !629), !dbg !2299
  %36 = sext i32 %0 to i64, !dbg !2332
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2333
  %38 = load i64, i64* %37, align 8, !dbg !2333, !tbaa !2251
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !2287, metadata !629), !dbg !2334
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2335
  %40 = load i8*, i8** %39, align 8, !dbg !2335, !tbaa !2236
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !2289, metadata !629), !dbg !2336
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2337
  %42 = load i32, i32* %41, align 4, !dbg !2337, !tbaa !1038
  %43 = or i32 %42, 1, !dbg !2338
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !2290, metadata !629), !dbg !2339
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2340
  %45 = load i32, i32* %44, align 8, !dbg !2340, !tbaa !976
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2341
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2342
  %48 = load i8*, i8** %47, align 8, !dbg !2342, !tbaa !1065
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2343
  %50 = load i8*, i8** %49, align 8, !dbg !2343, !tbaa !1068
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !2344
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !2291, metadata !629), !dbg !2345
  %52 = icmp ugt i64 %38, %51, !dbg !2346
  br i1 %52, label %63, label %53, !dbg !2348

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !2349
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2287, metadata !629), !dbg !2334
  store i64 %54, i64* %37, align 8, !dbg !2351, !tbaa !2251
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2352
  br i1 %55, label %57, label %56, !dbg !2354

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #9, !dbg !2355
  br label %57, !dbg !2355

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2171, metadata !629) #9, !dbg !2356
  %58 = tail call noalias i8* @xmalloc(i64 %54) #9, !dbg !2358
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !2289, metadata !629), !dbg !2336
  store i8* %58, i8** %39, align 8, !dbg !2359, !tbaa !2236
  %59 = load i32, i32* %44, align 8, !dbg !2360, !tbaa !976
  %60 = load i8*, i8** %47, align 8, !dbg !2361, !tbaa !1065
  %61 = load i8*, i8** %49, align 8, !dbg !2362, !tbaa !1068
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !2363
  br label %63, !dbg !2364

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !2289, metadata !629), !dbg !2336
  store i32 %6, i32* %5, align 4, !dbg !2365, !tbaa !721
  ret i8* %64, !dbg !2366
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #11

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #11

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2367 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2371, metadata !629), !dbg !2374
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2372, metadata !629), !dbg !2375
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2373, metadata !629), !dbg !2376
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2377
  ret i8* %4, !dbg !2378
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !2379 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2383, metadata !629), !dbg !2384
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2268, metadata !629) #9, !dbg !2385
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2269, metadata !629) #9, !dbg !2387
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #9, !dbg !2388
  ret i8* %2, !dbg !2389
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !2390 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2394, metadata !629), !dbg !2396
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2395, metadata !629), !dbg !2397
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2371, metadata !629) #9, !dbg !2398
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2372, metadata !629) #9, !dbg !2400
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2373, metadata !629) #9, !dbg !2401
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #9, !dbg !2402
  ret i8* %3, !dbg !2403
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !2404 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2412, metadata !2418), !dbg !2419
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2408, metadata !629), !dbg !2421
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2409, metadata !629), !dbg !2422
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2410, metadata !629), !dbg !2423
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2424
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #9, !dbg !2424
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2411, metadata !1528), !dbg !2425
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2417, metadata !629) #9, !dbg !2426
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2427
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !2427
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2412, metadata !629) #9, !dbg !2419
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2412, metadata !2428) #9, !dbg !2419
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2419
  %8 = icmp eq i32 %1, 10, !dbg !2429
  br i1 %8, label %9, label %10, !dbg !2431

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14, !dbg !2432, !noalias !2433
  unreachable, !dbg !2432

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2412, metadata !2428) #9, !dbg !2419
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2436
  store i32 %1, i32* %11, align 8, !dbg !2436, !alias.scope !2433
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2436
  %13 = bitcast i32* %12 to i8*, !dbg !2436
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #9, !dbg !2436
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !2437
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2411, metadata !1528), !dbg !2425
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2438
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #9, !dbg !2439
  ret i8* %14, !dbg !2440
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !2441 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2412, metadata !2418), !dbg !2450
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2445, metadata !629), !dbg !2452
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2446, metadata !629), !dbg !2453
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2447, metadata !629), !dbg !2454
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2448, metadata !629), !dbg !2455
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2456
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #9, !dbg !2456
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2449, metadata !1528), !dbg !2457
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2417, metadata !629) #9, !dbg !2458
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2459
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !2459
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2412, metadata !629) #9, !dbg !2450
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2412, metadata !2428) #9, !dbg !2450
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2450
  %9 = icmp eq i32 %1, 10, !dbg !2460
  br i1 %9, label %10, label %11, !dbg !2461

; <label>:10:                                     ; preds = %4
  tail call void @abort() #14, !dbg !2462, !noalias !2463
  unreachable, !dbg !2462

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2412, metadata !2428) #9, !dbg !2450
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2466
  store i32 %1, i32* %12, align 8, !dbg !2466, !alias.scope !2463
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2466
  %14 = bitcast i32* %13 to i8*, !dbg !2466
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #9, !dbg !2466
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !2467
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2449, metadata !1528), !dbg !2457
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !2468
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #9, !dbg !2469
  ret i8* %15, !dbg !2470
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !2471 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !2412, metadata !2418), !dbg !2477
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2475, metadata !629), !dbg !2480
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2476, metadata !629), !dbg !2481
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2408, metadata !629) #9, !dbg !2482
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2409, metadata !629) #9, !dbg !2483
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2410, metadata !629) #9, !dbg !2484
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2485
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #9, !dbg !2485
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2411, metadata !1528) #9, !dbg !2486
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2417, metadata !629) #9, !dbg !2487
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !2488
  call void @llvm.lifetime.start(i64 52, i8* nonnull %6), !dbg !2488
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2412, metadata !629) #9, !dbg !2477
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2412, metadata !2428) #9, !dbg !2477
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !2477
  %7 = icmp eq i32 %0, 10, !dbg !2489
  br i1 %7, label %8, label %9, !dbg !2490

; <label>:8:                                      ; preds = %2
  tail call void @abort() #14, !dbg !2491, !noalias !2492
  unreachable, !dbg !2491

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2412, metadata !2428) #9, !dbg !2477
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2495
  store i32 %0, i32* %10, align 8, !dbg !2495, !alias.scope !2492
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2495
  %12 = bitcast i32* %11 to i8*, !dbg !2495
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #9, !dbg !2495
  call void @llvm.lifetime.end(i64 52, i8* nonnull %6), !dbg !2496
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2411, metadata !1528) #9, !dbg !2486
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #9, !dbg !2497
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #9, !dbg !2498
  ret i8* %13, !dbg !2499
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2500 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2412, metadata !2418), !dbg !2507
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2504, metadata !629), !dbg !2510
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2505, metadata !629), !dbg !2511
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2506, metadata !629), !dbg !2512
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2445, metadata !629) #9, !dbg !2513
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2446, metadata !629) #9, !dbg !2514
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2447, metadata !629) #9, !dbg !2515
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2448, metadata !629) #9, !dbg !2516
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2517
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #9, !dbg !2517
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2449, metadata !1528) #9, !dbg !2518
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2417, metadata !629) #9, !dbg !2519
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2520
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !2520
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2412, metadata !629) #9, !dbg !2507
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2412, metadata !2428) #9, !dbg !2507
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2507
  %8 = icmp eq i32 %0, 10, !dbg !2521
  br i1 %8, label %9, label %10, !dbg !2522

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14, !dbg !2523, !noalias !2524
  unreachable, !dbg !2523

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2412, metadata !2428) #9, !dbg !2507
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2527
  store i32 %0, i32* %11, align 8, !dbg !2527, !alias.scope !2524
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2527
  %13 = bitcast i32* %12 to i8*, !dbg !2527
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #9, !dbg !2527
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !2528
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2449, metadata !1528) #9, !dbg !2518
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #9, !dbg !2529
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #9, !dbg !2530
  ret i8* %14, !dbg !2531
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !2532 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2536, metadata !629), !dbg !2540
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2537, metadata !629), !dbg !2541
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2538, metadata !629), !dbg !2542
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2543
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #9, !dbg !2543
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2544, !tbaa.struct !2545
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2539, metadata !1528), !dbg !2546
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !996, metadata !629), !dbg !2547
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !997, metadata !629), !dbg !2549
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !998, metadata !629), !dbg !2550
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !999, metadata !629), !dbg !2551
  %6 = lshr i8 %2, 5, !dbg !2552
  %7 = zext i8 %6 to i64, !dbg !2552
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2553
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1000, metadata !629), !dbg !2554
  %9 = and i8 %2, 31, !dbg !2555
  %10 = zext i8 %9 to i32, !dbg !2556
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1002, metadata !629), !dbg !2557
  %11 = load i32, i32* %8, align 4, !dbg !2558, !tbaa !721
  %12 = lshr i32 %11, %10, !dbg !2559
  %13 = and i32 %12, 1, !dbg !2560
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1003, metadata !629), !dbg !2561
  %14 = xor i32 %13, 1, !dbg !2562
  %15 = shl i32 %14, %10, !dbg !2563
  %16 = xor i32 %15, %11, !dbg !2564
  store i32 %16, i32* %8, align 4, !dbg !2564, !tbaa !721
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2539, metadata !1528), !dbg !2546
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2565
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #9, !dbg !2566
  ret i8* %17, !dbg !2567
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !2568 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2572, metadata !629), !dbg !2574
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2573, metadata !629), !dbg !2575
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2536, metadata !629) #9, !dbg !2576
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2537, metadata !629) #9, !dbg !2578
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2538, metadata !629) #9, !dbg !2579
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2580
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #9, !dbg !2580
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9, !dbg !2581, !tbaa.struct !2545
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2539, metadata !1528) #9, !dbg !2582
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !996, metadata !629) #9, !dbg !2583
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !997, metadata !629) #9, !dbg !2585
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !998, metadata !629) #9, !dbg !2586
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !999, metadata !629) #9, !dbg !2587
  %5 = lshr i8 %1, 5, !dbg !2588
  %6 = zext i8 %5 to i64, !dbg !2588
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2589
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !1000, metadata !629) #9, !dbg !2590
  %8 = and i8 %1, 31, !dbg !2591
  %9 = zext i8 %8 to i32, !dbg !2592
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1002, metadata !629) #9, !dbg !2593
  %10 = load i32, i32* %7, align 4, !dbg !2594, !tbaa !721
  %11 = lshr i32 %10, %9, !dbg !2595
  %12 = and i32 %11, 1, !dbg !2596
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !1003, metadata !629) #9, !dbg !2597
  %13 = xor i32 %12, 1, !dbg !2598
  %14 = shl i32 %13, %9, !dbg !2599
  %15 = xor i32 %14, %10, !dbg !2600
  store i32 %15, i32* %7, align 4, !dbg !2600, !tbaa !721
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2539, metadata !1528) #9, !dbg !2582
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #9, !dbg !2601
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #9, !dbg !2602
  ret i8* %16, !dbg !2603
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !2604 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2606, metadata !629), !dbg !2607
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2572, metadata !629) #9, !dbg !2608
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2573, metadata !629) #9, !dbg !2610
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2536, metadata !629) #9, !dbg !2611
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2537, metadata !629) #9, !dbg !2613
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2538, metadata !629) #9, !dbg !2614
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2615
  call void @llvm.lifetime.start(i64 56, i8* nonnull %3) #9, !dbg !2615
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9, !dbg !2616, !tbaa.struct !2545
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2539, metadata !1528) #9, !dbg !2617
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !996, metadata !629) #9, !dbg !2618
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !997, metadata !629) #9, !dbg !2620
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !998, metadata !629) #9, !dbg !2621
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !999, metadata !629) #9, !dbg !2622
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2623
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !1000, metadata !629) #9, !dbg !2624
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1002, metadata !629) #9, !dbg !2625
  %5 = load i32, i32* %4, align 4, !dbg !2626, !tbaa !721
  %6 = or i32 %5, 67108864, !dbg !2627
  store i32 %6, i32* %4, align 4, !dbg !2627, !tbaa !721
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2539, metadata !1528) #9, !dbg !2617
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #9, !dbg !2628
  call void @llvm.lifetime.end(i64 56, i8* nonnull %3) #9, !dbg !2629
  ret i8* %7, !dbg !2630
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !2631 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2633, metadata !629), !dbg !2635
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2634, metadata !629), !dbg !2636
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2536, metadata !629) #9, !dbg !2637
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2537, metadata !629) #9, !dbg !2639
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2538, metadata !629) #9, !dbg !2640
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2641
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #9, !dbg !2641
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9, !dbg !2642, !tbaa.struct !2545
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2539, metadata !1528) #9, !dbg !2643
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !996, metadata !629) #9, !dbg !2644
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !997, metadata !629) #9, !dbg !2646
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !998, metadata !629) #9, !dbg !2647
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !999, metadata !629) #9, !dbg !2648
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2649
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !1000, metadata !629) #9, !dbg !2650
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1002, metadata !629) #9, !dbg !2651
  %6 = load i32, i32* %5, align 4, !dbg !2652, !tbaa !721
  %7 = or i32 %6, 67108864, !dbg !2653
  store i32 %7, i32* %5, align 4, !dbg !2653, !tbaa !721
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2539, metadata !1528) #9, !dbg !2643
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #9, !dbg !2654
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #9, !dbg !2655
  ret i8* %8, !dbg !2656
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !2657 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2412, metadata !2418), !dbg !2663
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2659, metadata !629), !dbg !2665
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2660, metadata !629), !dbg !2666
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2661, metadata !629), !dbg !2667
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2668
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #9, !dbg !2668
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2417, metadata !629) #9, !dbg !2669
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2670
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !2670
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2412, metadata !629) #9, !dbg !2663
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2412, metadata !2428) #9, !dbg !2663
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2663
  %9 = icmp eq i32 %1, 10, !dbg !2671
  br i1 %9, label %10, label %11, !dbg !2672

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !2673, !noalias !2674
  unreachable, !dbg !2673

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2412, metadata !2428) #9, !dbg !2663
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !2677
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !2677
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !2678
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2679
  store i32 %1, i32* %13, align 8, !dbg !2679
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2679
  %15 = bitcast i32* %14 to i8*, !dbg !2679
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !2679
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2662, metadata !1528), !dbg !2680
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !996, metadata !629), !dbg !2681
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !997, metadata !629), !dbg !2683
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !998, metadata !629), !dbg !2684
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !999, metadata !629), !dbg !2685
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !2686
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !1000, metadata !629), !dbg !2687
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1002, metadata !629), !dbg !2688
  %17 = load i32, i32* %16, align 4, !dbg !2689, !tbaa !721
  %18 = or i32 %17, 67108864, !dbg !2690
  store i32 %18, i32* %16, align 4, !dbg !2690, !tbaa !721
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2662, metadata !1528), !dbg !2680
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2691
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #9, !dbg !2692
  ret i8* %19, !dbg !2693
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !2694 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2698, metadata !629), !dbg !2702
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2699, metadata !629), !dbg !2703
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2700, metadata !629), !dbg !2704
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2701, metadata !629), !dbg !2705
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2706, metadata !629) #9, !dbg !2716
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2711, metadata !629) #9, !dbg !2718
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2712, metadata !629) #9, !dbg !2719
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2713, metadata !629) #9, !dbg !2720
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2714, metadata !629) #9, !dbg !2721
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2722
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #9, !dbg !2722
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9, !dbg !2723, !tbaa.struct !2545
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2715, metadata !1528) #9, !dbg !2724
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1046, metadata !629) #9, !dbg !2725
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1047, metadata !629) #9, !dbg !2727
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1048, metadata !629) #9, !dbg !2728
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1046, metadata !629) #9, !dbg !2725
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1046, metadata !629) #9, !dbg !2725
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2729
  store i32 10, i32* %7, align 8, !dbg !2730, !tbaa !976
  %8 = icmp ne i8* %1, null, !dbg !2731
  %9 = icmp ne i8* %2, null, !dbg !2732
  %10 = and i1 %8, %9, !dbg !2733
  br i1 %10, label %12, label %11, !dbg !2733

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14, !dbg !2734
  unreachable, !dbg !2734

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2735
  store i8* %1, i8** %13, align 8, !dbg !2736, !tbaa !1065
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2737
  store i8* %2, i8** %14, align 8, !dbg !2738, !tbaa !1068
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2715, metadata !1528) #9, !dbg !2724
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #9, !dbg !2739
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #9, !dbg !2740
  ret i8* %15, !dbg !2741
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !2707 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2706, metadata !629), !dbg !2742
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2711, metadata !629), !dbg !2743
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2712, metadata !629), !dbg !2744
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2713, metadata !629), !dbg !2745
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !2714, metadata !629), !dbg !2746
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2747
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #9, !dbg !2747
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2748, !tbaa.struct !2545
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2715, metadata !1528), !dbg !2749
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1046, metadata !629) #9, !dbg !2750
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1047, metadata !629) #9, !dbg !2752
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1048, metadata !629) #9, !dbg !2753
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1046, metadata !629) #9, !dbg !2750
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1046, metadata !629) #9, !dbg !2750
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2754
  store i32 10, i32* %8, align 8, !dbg !2755, !tbaa !976
  %9 = icmp ne i8* %1, null, !dbg !2756
  %10 = icmp ne i8* %2, null, !dbg !2757
  %11 = and i1 %9, %10, !dbg !2758
  br i1 %11, label %13, label %12, !dbg !2758

; <label>:12:                                     ; preds = %5
  tail call void @abort() #14, !dbg !2759
  unreachable, !dbg !2759

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2760
  store i8* %1, i8** %14, align 8, !dbg !2761, !tbaa !1065
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2762
  store i8* %2, i8** %15, align 8, !dbg !2763, !tbaa !1068
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2715, metadata !1528), !dbg !2749
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2764
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #9, !dbg !2765
  ret i8* %16, !dbg !2766
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !2767 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2771, metadata !629), !dbg !2774
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2772, metadata !629), !dbg !2775
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2773, metadata !629), !dbg !2776
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2698, metadata !629) #9, !dbg !2777
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2699, metadata !629) #9, !dbg !2779
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2700, metadata !629) #9, !dbg !2780
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2701, metadata !629) #9, !dbg !2781
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2706, metadata !629) #9, !dbg !2782
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2711, metadata !629) #9, !dbg !2784
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2712, metadata !629) #9, !dbg !2785
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2713, metadata !629) #9, !dbg !2786
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2714, metadata !629) #9, !dbg !2787
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2788
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #9, !dbg !2788
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9, !dbg !2789, !tbaa.struct !2545
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2715, metadata !1528) #9, !dbg !2790
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1046, metadata !629) #9, !dbg !2791
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1047, metadata !629) #9, !dbg !2793
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1048, metadata !629) #9, !dbg !2794
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1046, metadata !629) #9, !dbg !2791
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1046, metadata !629) #9, !dbg !2791
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2795
  store i32 10, i32* %6, align 8, !dbg !2796, !tbaa !976
  %7 = icmp ne i8* %0, null, !dbg !2797
  %8 = icmp ne i8* %1, null, !dbg !2798
  %9 = and i1 %7, %8, !dbg !2799
  br i1 %9, label %11, label %10, !dbg !2799

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !2800
  unreachable, !dbg !2800

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2801
  store i8* %0, i8** %12, align 8, !dbg !2802, !tbaa !1065
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2803
  store i8* %1, i8** %13, align 8, !dbg !2804, !tbaa !1068
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2715, metadata !1528) #9, !dbg !2790
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #9, !dbg !2805
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #9, !dbg !2806
  ret i8* %14, !dbg !2807
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !2808 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2812, metadata !629), !dbg !2816
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2813, metadata !629), !dbg !2817
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2814, metadata !629), !dbg !2818
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2815, metadata !629), !dbg !2819
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2706, metadata !629) #9, !dbg !2820
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2711, metadata !629) #9, !dbg !2822
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2712, metadata !629) #9, !dbg !2823
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2713, metadata !629) #9, !dbg !2824
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2714, metadata !629) #9, !dbg !2825
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2826
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #9, !dbg !2826
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9, !dbg !2827, !tbaa.struct !2545
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2715, metadata !1528) #9, !dbg !2828
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1046, metadata !629) #9, !dbg !2829
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1047, metadata !629) #9, !dbg !2831
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1048, metadata !629) #9, !dbg !2832
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1046, metadata !629) #9, !dbg !2829
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1046, metadata !629) #9, !dbg !2829
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2833
  store i32 10, i32* %7, align 8, !dbg !2834, !tbaa !976
  %8 = icmp ne i8* %0, null, !dbg !2835
  %9 = icmp ne i8* %1, null, !dbg !2836
  %10 = and i1 %8, %9, !dbg !2837
  br i1 %10, label %12, label %11, !dbg !2837

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14, !dbg !2838
  unreachable, !dbg !2838

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2839
  store i8* %0, i8** %13, align 8, !dbg !2840, !tbaa !1065
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2841
  store i8* %1, i8** %14, align 8, !dbg !2842, !tbaa !1068
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2715, metadata !1528) #9, !dbg !2828
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #9, !dbg !2843
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #9, !dbg !2844
  ret i8* %15, !dbg !2845
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2846 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2850, metadata !629), !dbg !2853
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2851, metadata !629), !dbg !2854
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2852, metadata !629), !dbg !2855
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2856
  ret i8* %4, !dbg !2857
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !2858 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2862, metadata !629), !dbg !2864
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2863, metadata !629), !dbg !2865
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2850, metadata !629) #9, !dbg !2866
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2851, metadata !629) #9, !dbg !2868
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2852, metadata !629) #9, !dbg !2869
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #9, !dbg !2870
  ret i8* %3, !dbg !2871
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !2872 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2876, metadata !629), !dbg !2878
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2877, metadata !629), !dbg !2879
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2850, metadata !629) #9, !dbg !2880
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2851, metadata !629) #9, !dbg !2882
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2852, metadata !629) #9, !dbg !2883
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #9, !dbg !2884
  ret i8* %3, !dbg !2885
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !2886 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2890, metadata !629), !dbg !2891
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2876, metadata !629) #9, !dbg !2892
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2877, metadata !629) #9, !dbg !2894
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2850, metadata !629) #9, !dbg !2895
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2851, metadata !629) #9, !dbg !2897
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2852, metadata !629) #9, !dbg !2898
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #9, !dbg !2899
  ret i8* %2, !dbg !2900
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !2901 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2959, metadata !629), !dbg !2965
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2960, metadata !629), !dbg !2966
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2961, metadata !629), !dbg !2967
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2962, metadata !629), !dbg !2968
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !2963, metadata !629), !dbg !2969
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !2964, metadata !629), !dbg !2970
  %7 = icmp eq i8* %1, null, !dbg !2971
  br i1 %7, label %10, label %8, !dbg !2973

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.63, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #9, !dbg !2974
  br label %12, !dbg !2974

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.64, i64 0, i64 0), i8* %2, i8* %3) #9, !dbg !2975
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.65, i64 0, i64 0), i32 5) #9, !dbg !2976
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #9, !dbg !2977
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.66, i64 0, i64 0), i32 5) #9, !dbg !2979
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #9, !dbg !2980
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
  ], !dbg !2981

; <label>:17:                                     ; preds = %12
  tail call void @abort() #14, !dbg !2982
  unreachable, !dbg !2982

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.67, i64 0, i64 0), i32 5) #9, !dbg !2984
  %20 = load i8*, i8** %4, align 8, !dbg !2984, !tbaa !637
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #9, !dbg !2985
  br label %146, !dbg !2987

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.68, i64 0, i64 0), i32 5) #9, !dbg !2988
  %24 = load i8*, i8** %4, align 8, !dbg !2988, !tbaa !637
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2988
  %26 = load i8*, i8** %25, align 8, !dbg !2988, !tbaa !637
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #9, !dbg !2989
  br label %146, !dbg !2990

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.69, i64 0, i64 0), i32 5) #9, !dbg !2991
  %30 = load i8*, i8** %4, align 8, !dbg !2991, !tbaa !637
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2991
  %32 = load i8*, i8** %31, align 8, !dbg !2991, !tbaa !637
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2991
  %34 = load i8*, i8** %33, align 8, !dbg !2991, !tbaa !637
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #9, !dbg !2992
  br label %146, !dbg !2993

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.70, i64 0, i64 0), i32 5) #9, !dbg !2994
  %38 = load i8*, i8** %4, align 8, !dbg !2994, !tbaa !637
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2994
  %40 = load i8*, i8** %39, align 8, !dbg !2994, !tbaa !637
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2994
  %42 = load i8*, i8** %41, align 8, !dbg !2994, !tbaa !637
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2994
  %44 = load i8*, i8** %43, align 8, !dbg !2994, !tbaa !637
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #9, !dbg !2995
  br label %146, !dbg !2996

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.71, i64 0, i64 0), i32 5) #9, !dbg !2997
  %48 = load i8*, i8** %4, align 8, !dbg !2997, !tbaa !637
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2997
  %50 = load i8*, i8** %49, align 8, !dbg !2997, !tbaa !637
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2997
  %52 = load i8*, i8** %51, align 8, !dbg !2997, !tbaa !637
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2997
  %54 = load i8*, i8** %53, align 8, !dbg !2997, !tbaa !637
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2997
  %56 = load i8*, i8** %55, align 8, !dbg !2997, !tbaa !637
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #9, !dbg !2998
  br label %146, !dbg !2999

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.72, i64 0, i64 0), i32 5) #9, !dbg !3000
  %60 = load i8*, i8** %4, align 8, !dbg !3000, !tbaa !637
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3000
  %62 = load i8*, i8** %61, align 8, !dbg !3000, !tbaa !637
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3000
  %64 = load i8*, i8** %63, align 8, !dbg !3000, !tbaa !637
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3000
  %66 = load i8*, i8** %65, align 8, !dbg !3000, !tbaa !637
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3000
  %68 = load i8*, i8** %67, align 8, !dbg !3000, !tbaa !637
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3000
  %70 = load i8*, i8** %69, align 8, !dbg !3000, !tbaa !637
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #9, !dbg !3001
  br label %146, !dbg !3002

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.73, i64 0, i64 0), i32 5) #9, !dbg !3003
  %74 = load i8*, i8** %4, align 8, !dbg !3003, !tbaa !637
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3003
  %76 = load i8*, i8** %75, align 8, !dbg !3003, !tbaa !637
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3003
  %78 = load i8*, i8** %77, align 8, !dbg !3003, !tbaa !637
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3003
  %80 = load i8*, i8** %79, align 8, !dbg !3003, !tbaa !637
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3003
  %82 = load i8*, i8** %81, align 8, !dbg !3003, !tbaa !637
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3003
  %84 = load i8*, i8** %83, align 8, !dbg !3003, !tbaa !637
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3003
  %86 = load i8*, i8** %85, align 8, !dbg !3003, !tbaa !637
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #9, !dbg !3004
  br label %146, !dbg !3005

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.74, i64 0, i64 0), i32 5) #9, !dbg !3006
  %90 = load i8*, i8** %4, align 8, !dbg !3006, !tbaa !637
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3006
  %92 = load i8*, i8** %91, align 8, !dbg !3006, !tbaa !637
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3006
  %94 = load i8*, i8** %93, align 8, !dbg !3006, !tbaa !637
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3006
  %96 = load i8*, i8** %95, align 8, !dbg !3006, !tbaa !637
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3006
  %98 = load i8*, i8** %97, align 8, !dbg !3006, !tbaa !637
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3006
  %100 = load i8*, i8** %99, align 8, !dbg !3006, !tbaa !637
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3006
  %102 = load i8*, i8** %101, align 8, !dbg !3006, !tbaa !637
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3006
  %104 = load i8*, i8** %103, align 8, !dbg !3006, !tbaa !637
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #9, !dbg !3007
  br label %146, !dbg !3008

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.75, i64 0, i64 0), i32 5) #9, !dbg !3009
  %108 = load i8*, i8** %4, align 8, !dbg !3009, !tbaa !637
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3009
  %110 = load i8*, i8** %109, align 8, !dbg !3009, !tbaa !637
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3009
  %112 = load i8*, i8** %111, align 8, !dbg !3009, !tbaa !637
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3009
  %114 = load i8*, i8** %113, align 8, !dbg !3009, !tbaa !637
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3009
  %116 = load i8*, i8** %115, align 8, !dbg !3009, !tbaa !637
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3009
  %118 = load i8*, i8** %117, align 8, !dbg !3009, !tbaa !637
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3009
  %120 = load i8*, i8** %119, align 8, !dbg !3009, !tbaa !637
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3009
  %122 = load i8*, i8** %121, align 8, !dbg !3009, !tbaa !637
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3009
  %124 = load i8*, i8** %123, align 8, !dbg !3009, !tbaa !637
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #9, !dbg !3010
  br label %146, !dbg !3011

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.76, i64 0, i64 0), i32 5) #9, !dbg !3012
  %128 = load i8*, i8** %4, align 8, !dbg !3012, !tbaa !637
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3012
  %130 = load i8*, i8** %129, align 8, !dbg !3012, !tbaa !637
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3012
  %132 = load i8*, i8** %131, align 8, !dbg !3012, !tbaa !637
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3012
  %134 = load i8*, i8** %133, align 8, !dbg !3012, !tbaa !637
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3012
  %136 = load i8*, i8** %135, align 8, !dbg !3012, !tbaa !637
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3012
  %138 = load i8*, i8** %137, align 8, !dbg !3012, !tbaa !637
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3012
  %140 = load i8*, i8** %139, align 8, !dbg !3012, !tbaa !637
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3012
  %142 = load i8*, i8** %141, align 8, !dbg !3012, !tbaa !637
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3012
  %144 = load i8*, i8** %143, align 8, !dbg !3012, !tbaa !637
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #9, !dbg !3013
  br label %146, !dbg !3014

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !3015
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !3016 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3020, metadata !629), !dbg !3026
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3021, metadata !629), !dbg !3027
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3022, metadata !629), !dbg !3028
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3023, metadata !629), !dbg !3029
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3024, metadata !629), !dbg !3030
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3025, metadata !629), !dbg !3031
  br label %6, !dbg !3032

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3025, metadata !629), !dbg !3031
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3034
  %9 = load i8*, i8** %8, align 8, !dbg !3034, !tbaa !637
  %10 = icmp eq i8* %9, null, !dbg !3037
  %11 = add i64 %7, 1, !dbg !3039
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !3025, metadata !629), !dbg !3031
  br i1 %10, label %12, label %6, !dbg !3037, !llvm.loop !3041

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3044
  ret void, !dbg !3045
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !3046 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3057, metadata !629), !dbg !3065
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3058, metadata !629), !dbg !3066
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3059, metadata !629), !dbg !3067
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3060, metadata !629), !dbg !3068
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !3061, metadata !629), !dbg !3069
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3070
  call void @llvm.lifetime.start(i64 80, i8* nonnull %7) #9, !dbg !3070
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3063, metadata !629), !dbg !3071
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3062, metadata !629), !dbg !3072
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3062, metadata !629), !dbg !3072
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %11 = load i32, i32* %8, align 8, !dbg !3073
  %12 = icmp ult i32 %11, 41, !dbg !3073
  br i1 %12, label %13, label %18, !dbg !3073

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !3077
  %15 = sext i32 %11 to i64, !dbg !3077
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3077
  %17 = add i32 %11, 8, !dbg !3077
  store i32 %17, i32* %8, align 8, !dbg !3077
  br label %21, !dbg !3077

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !3079
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3079
  store i8* %20, i8** %10, align 8, !dbg !3079
  br label %21, !dbg !3079

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ], !dbg !3073
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3081
  %25 = load i8*, i8** %24, align 8, !dbg !3081
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3083
  store i8* %25, i8** %26, align 16, !dbg !3084, !tbaa !637
  %27 = icmp eq i8* %25, null, !dbg !3085
  br i1 %27, label %30, label %28, !dbg !3086

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3062, metadata !629), !dbg !3072
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3062, metadata !629), !dbg !3072
  %29 = icmp ult i32 %22, 41, !dbg !3073
  br i1 %29, label %35, label %32, !dbg !3073

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3088
  call void @llvm.lifetime.end(i64 80, i8* nonnull %7) #9, !dbg !3089
  ret void, !dbg !3089

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !3079
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3079
  store i8* %34, i8** %10, align 8, !dbg !3079
  br label %40, !dbg !3079

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !3077
  %37 = sext i32 %22 to i64, !dbg !3077
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3077
  %39 = add i32 %22, 8, !dbg !3077
  store i32 %39, i32* %8, align 8, !dbg !3077
  br label %40, !dbg !3077

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ], !dbg !3073
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3081
  %44 = load i8*, i8** %43, align 8, !dbg !3081
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3083
  store i8* %44, i8** %45, align 8, !dbg !3084, !tbaa !637
  %46 = icmp eq i8* %44, null, !dbg !3085
  br i1 %46, label %30, label %47, !dbg !3086

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3062, metadata !629), !dbg !3072
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3062, metadata !629), !dbg !3072
  %48 = icmp ult i32 %41, 41, !dbg !3073
  br i1 %48, label %52, label %49, !dbg !3073

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !3079
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3079
  store i8* %51, i8** %10, align 8, !dbg !3079
  br label %57, !dbg !3079

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !3077
  %54 = sext i32 %41 to i64, !dbg !3077
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3077
  %56 = add i32 %41, 8, !dbg !3077
  store i32 %56, i32* %8, align 8, !dbg !3077
  br label %57, !dbg !3077

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ], !dbg !3073
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3081
  %61 = load i8*, i8** %60, align 8, !dbg !3081
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3083
  store i8* %61, i8** %62, align 16, !dbg !3084, !tbaa !637
  %63 = icmp eq i8* %61, null, !dbg !3085
  br i1 %63, label %30, label %64, !dbg !3086

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3062, metadata !629), !dbg !3072
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3062, metadata !629), !dbg !3072
  %65 = icmp ult i32 %58, 41, !dbg !3073
  br i1 %65, label %69, label %66, !dbg !3073

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !3079
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3079
  store i8* %68, i8** %10, align 8, !dbg !3079
  br label %74, !dbg !3079

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !3077
  %71 = sext i32 %58 to i64, !dbg !3077
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3077
  %73 = add i32 %58, 8, !dbg !3077
  store i32 %73, i32* %8, align 8, !dbg !3077
  br label %74, !dbg !3077

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ], !dbg !3073
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3081
  %78 = load i8*, i8** %77, align 8, !dbg !3081
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3083
  store i8* %78, i8** %79, align 8, !dbg !3084, !tbaa !637
  %80 = icmp eq i8* %78, null, !dbg !3085
  br i1 %80, label %30, label %81, !dbg !3086

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3062, metadata !629), !dbg !3072
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3062, metadata !629), !dbg !3072
  %82 = icmp ult i32 %75, 41, !dbg !3073
  br i1 %82, label %86, label %83, !dbg !3073

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !3079
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3079
  store i8* %85, i8** %10, align 8, !dbg !3079
  br label %91, !dbg !3079

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !3077
  %88 = sext i32 %75 to i64, !dbg !3077
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3077
  %90 = add i32 %75, 8, !dbg !3077
  store i32 %90, i32* %8, align 8, !dbg !3077
  br label %91, !dbg !3077

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ], !dbg !3073
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3081
  %95 = load i8*, i8** %94, align 8, !dbg !3081
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3083
  store i8* %95, i8** %96, align 16, !dbg !3084, !tbaa !637
  %97 = icmp eq i8* %95, null, !dbg !3085
  br i1 %97, label %30, label %98, !dbg !3086

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3062, metadata !629), !dbg !3072
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3062, metadata !629), !dbg !3072
  %99 = icmp ult i32 %92, 41, !dbg !3073
  br i1 %99, label %103, label %100, !dbg !3073

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !3079
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3079
  store i8* %102, i8** %10, align 8, !dbg !3079
  br label %108, !dbg !3079

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !3077
  %105 = sext i32 %92 to i64, !dbg !3077
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3077
  %107 = add i32 %92, 8, !dbg !3077
  store i32 %107, i32* %8, align 8, !dbg !3077
  br label %108, !dbg !3077

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3081
  %111 = load i8*, i8** %110, align 8, !dbg !3081
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3083
  store i8* %111, i8** %112, align 8, !dbg !3084, !tbaa !637
  %113 = icmp eq i8* %111, null, !dbg !3085
  br i1 %113, label %30, label %114, !dbg !3086

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3062, metadata !629), !dbg !3072
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3062, metadata !629), !dbg !3072
  %115 = load i8*, i8** %10, align 8, !dbg !3079
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3079
  store i8* %116, i8** %10, align 8, !dbg !3079
  %117 = bitcast i8* %115 to i8**, !dbg !3081
  %118 = load i8*, i8** %117, align 8, !dbg !3081
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3083
  store i8* %118, i8** %119, align 16, !dbg !3084, !tbaa !637
  %120 = icmp eq i8* %118, null, !dbg !3085
  br i1 %120, label %30, label %121, !dbg !3086

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3062, metadata !629), !dbg !3072
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3062, metadata !629), !dbg !3072
  %122 = load i8*, i8** %10, align 8, !dbg !3079
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3079
  store i8* %123, i8** %10, align 8, !dbg !3079
  %124 = bitcast i8* %122 to i8**, !dbg !3081
  %125 = load i8*, i8** %124, align 8, !dbg !3081
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3083
  store i8* %125, i8** %126, align 8, !dbg !3084, !tbaa !637
  %127 = icmp eq i8* %125, null, !dbg !3085
  br i1 %127, label %30, label %128, !dbg !3086

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3062, metadata !629), !dbg !3072
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3062, metadata !629), !dbg !3072
  %129 = load i8*, i8** %10, align 8, !dbg !3079
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3079
  store i8* %130, i8** %10, align 8, !dbg !3079
  %131 = bitcast i8* %129 to i8**, !dbg !3081
  %132 = load i8*, i8** %131, align 8, !dbg !3081
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3083
  store i8* %132, i8** %133, align 16, !dbg !3084, !tbaa !637
  %134 = icmp eq i8* %132, null, !dbg !3085
  br i1 %134, label %30, label %135, !dbg !3086

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3062, metadata !629), !dbg !3072
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3062, metadata !629), !dbg !3072
  %136 = load i8*, i8** %10, align 8, !dbg !3079
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3079
  store i8* %137, i8** %10, align 8, !dbg !3079
  %138 = bitcast i8* %136 to i8**, !dbg !3081
  %139 = load i8*, i8** %138, align 8, !dbg !3081
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3083
  store i8* %139, i8** %140, align 8, !dbg !3084, !tbaa !637
  %141 = icmp eq i8* %139, null, !dbg !3085
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3062, metadata !629), !dbg !3072
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3062, metadata !629), !dbg !3072
  %142 = select i1 %141, i64 9, i64 10, !dbg !3086
  br label %30, !dbg !3086
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !3090 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3094, metadata !629), !dbg !3103
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3095, metadata !629), !dbg !3104
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3096, metadata !629), !dbg !3105
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3097, metadata !629), !dbg !3106
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3107
  call void @llvm.lifetime.start(i64 24, i8* nonnull %6) #9, !dbg !3107
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3098, metadata !629), !dbg !3108
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3109
  call void @llvm.va_start(i8* nonnull %6), !dbg !3109
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3110
  call void @llvm.va_end(i8* nonnull %6), !dbg !3111
  call void @llvm.lifetime.end(i64 24, i8* nonnull %6) #9, !dbg !3112
  ret void, !dbg !3112
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #9

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #9

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !3113 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.79, i64 0, i64 0), i32 5) #9, !dbg !3114
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.80, i64 0, i64 0)) #9, !dbg !3115
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.81, i64 0, i64 0), i32 5) #9, !dbg !3117
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.82, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.83, i64 0, i64 0)) #9, !dbg !3118
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19, i64 0, i64 0), i32 5) #9, !dbg !3119
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3119, !tbaa !637
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #9, !dbg !3120
  ret void, !dbg !3121
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #12 !dbg !3122 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3126, metadata !629), !dbg !3128
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3127, metadata !629), !dbg !3129
  %3 = udiv i64 9223372036854775807, %1, !dbg !3130
  %4 = icmp ult i64 %3, %0, !dbg !3130
  br i1 %4, label %5, label %6, !dbg !3132

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !3133
  unreachable, !dbg !3133

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3134
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3135, metadata !629) #9, !dbg !3142
  %8 = tail call noalias i8* @malloc(i64 %7) #9, !dbg !3144
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3141, metadata !629) #9, !dbg !3145
  %9 = icmp eq i8* %8, null, !dbg !3146
  %10 = icmp ne i64 %7, 0, !dbg !3148
  %11 = and i1 %10, %9, !dbg !3150
  br i1 %11, label %12, label %13, !dbg !3150

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #14, !dbg !3151
  unreachable, !dbg !3151

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !3152
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !3136 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3135, metadata !629), !dbg !3153
  %2 = tail call noalias i8* @malloc(i64 %0) #9, !dbg !3154
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3141, metadata !629), !dbg !3155
  %3 = icmp eq i8* %2, null, !dbg !3156
  %4 = icmp ne i64 %0, 0, !dbg !3157
  %5 = and i1 %4, %3, !dbg !3158
  br i1 %5, label %6, label %7, !dbg !3158

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3159
  unreachable, !dbg !3159

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3160
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #12 !dbg !3161 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3165, metadata !629), !dbg !3168
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3166, metadata !629), !dbg !3169
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3167, metadata !629), !dbg !3170
  %4 = udiv i64 9223372036854775807, %2, !dbg !3171
  %5 = icmp ult i64 %4, %1, !dbg !3171
  br i1 %5, label %6, label %7, !dbg !3173

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #14, !dbg !3174
  unreachable, !dbg !3174

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3175
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3176, metadata !629) #9, !dbg !3182
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !3181, metadata !629) #9, !dbg !3184
  %9 = icmp eq i64 %8, 0, !dbg !3185
  %10 = icmp ne i8* %0, null, !dbg !3187
  %11 = and i1 %10, %9, !dbg !3189
  br i1 %11, label %12, label %13, !dbg !3189

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #9, !dbg !3190
  br label %19, !dbg !3192

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #9, !dbg !3193
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !3176, metadata !629) #9, !dbg !3182
  %15 = icmp eq i8* %14, null, !dbg !3194
  %16 = icmp ne i64 %8, 0, !dbg !3196
  %17 = and i1 %16, %15, !dbg !3198
  br i1 %17, label %18, label %19, !dbg !3198

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !3199
  unreachable, !dbg !3199

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !3200
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !3177 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3176, metadata !629), !dbg !3201
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3181, metadata !629), !dbg !3202
  %3 = icmp eq i64 %1, 0, !dbg !3203
  %4 = icmp ne i8* %0, null, !dbg !3204
  %5 = and i1 %4, %3, !dbg !3205
  br i1 %5, label %6, label %7, !dbg !3205

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #9, !dbg !3206
  br label %13, !dbg !3207

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #9, !dbg !3208
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3176, metadata !629), !dbg !3201
  %9 = icmp eq i8* %8, null, !dbg !3209
  %10 = icmp ne i64 %1, 0, !dbg !3210
  %11 = and i1 %10, %9, !dbg !3211
  br i1 %11, label %12, label %13, !dbg !3211

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #14, !dbg !3212
  unreachable, !dbg !3212

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !3213
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #12 !dbg !589 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !594, metadata !629), !dbg !3214
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !595, metadata !629), !dbg !3215
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !596, metadata !629), !dbg !3216
  %4 = load i64, i64* %1, align 8, !dbg !3217, !tbaa !2217
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !597, metadata !629), !dbg !3218
  %5 = icmp eq i8* %0, null, !dbg !3219
  br i1 %5, label %6, label %13, !dbg !3221

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3222
  br i1 %7, label %8, label %17, !dbg !3225

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3226
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !597, metadata !629), !dbg !3218
  %10 = icmp ugt i64 %2, 128, !dbg !3228
  %11 = zext i1 %10 to i64, !dbg !3228
  %12 = add nuw nsw i64 %9, %11, !dbg !3229
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !597, metadata !629), !dbg !3218
  br label %17, !dbg !3230

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !3231
  %15 = icmp ugt i64 %14, %4, !dbg !3234
  br i1 %15, label %20, label %16, !dbg !3235

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !3236
  unreachable, !dbg !3236

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !597, metadata !629), !dbg !3218
  store i64 %18, i64* %1, align 8, !dbg !3237, !tbaa !2217
  %19 = mul i64 %18, %2, !dbg !3238
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3176, metadata !629) #9, !dbg !3239
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3181, metadata !629) #9, !dbg !3241
  br label %27, !dbg !3242

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !3243
  %22 = add i64 %4, 1, !dbg !3244
  %23 = add i64 %22, %21, !dbg !3245
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !597, metadata !629), !dbg !3218
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !597, metadata !629), !dbg !3218
  store i64 %23, i64* %1, align 8, !dbg !3237, !tbaa !2217
  %24 = mul i64 %23, %2, !dbg !3238
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3176, metadata !629) #9, !dbg !3239
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3181, metadata !629) #9, !dbg !3241
  %25 = icmp eq i64 %24, 0, !dbg !3246
  br i1 %25, label %26, label %27, !dbg !3242

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #9, !dbg !3247
  br label %34, !dbg !3248

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #9, !dbg !3249
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3176, metadata !629) #9, !dbg !3239
  %30 = icmp eq i8* %29, null, !dbg !3250
  %31 = icmp ne i64 %28, 0, !dbg !3251
  %32 = and i1 %31, %30, !dbg !3252
  br i1 %32, label %33, label %34, !dbg !3252

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #14, !dbg !3253
  unreachable, !dbg !3253

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !3254
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #12 !dbg !3255 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3257, metadata !629), !dbg !3258
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3135, metadata !629) #9, !dbg !3259
  %2 = tail call noalias i8* @malloc(i64 %0) #9, !dbg !3261
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3141, metadata !629) #9, !dbg !3262
  %3 = icmp eq i8* %2, null, !dbg !3263
  %4 = icmp ne i64 %0, 0, !dbg !3264
  %5 = and i1 %4, %3, !dbg !3265
  br i1 %5, label %6, label %7, !dbg !3265

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3266
  unreachable, !dbg !3266

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3267
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !3268 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3272, metadata !629), !dbg !3274
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !3273, metadata !629), !dbg !3275
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !594, metadata !629) #9, !dbg !3276
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !595, metadata !629) #9, !dbg !3278
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !596, metadata !629) #9, !dbg !3279
  %3 = load i64, i64* %1, align 8, !dbg !3280, !tbaa !2217
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !597, metadata !629) #9, !dbg !3281
  %4 = icmp eq i8* %0, null, !dbg !3282
  br i1 %4, label %5, label %8, !dbg !3283

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3284
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !597, metadata !629) #9, !dbg !3281
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !597, metadata !629) #9, !dbg !3281
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3285
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !597, metadata !629) #9, !dbg !3281
  store i64 %7, i64* %1, align 8, !dbg !3286, !tbaa !2217
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3176, metadata !629) #9, !dbg !3287
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3181, metadata !629) #9, !dbg !3289
  br label %17, !dbg !3290

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !3291
  br i1 %9, label %11, label %10, !dbg !3292

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #14, !dbg !3293
  unreachable, !dbg !3293

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !3294
  %13 = add i64 %3, 1, !dbg !3295
  %14 = add i64 %13, %12, !dbg !3296
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !597, metadata !629) #9, !dbg !3281
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !597, metadata !629) #9, !dbg !3281
  store i64 %14, i64* %1, align 8, !dbg !3286, !tbaa !2217
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3176, metadata !629) #9, !dbg !3287
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3181, metadata !629) #9, !dbg !3289
  %15 = icmp eq i64 %14, 0, !dbg !3297
  br i1 %15, label %16, label %17, !dbg !3290

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #9, !dbg !3298
  br label %24, !dbg !3299

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #9, !dbg !3300
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !3176, metadata !629) #9, !dbg !3287
  %20 = icmp eq i8* %19, null, !dbg !3301
  %21 = icmp ne i64 %18, 0, !dbg !3302
  %22 = and i1 %21, %20, !dbg !3303
  br i1 %22, label %23, label %24, !dbg !3303

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #14, !dbg !3304
  unreachable, !dbg !3304

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !3305
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !3306 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3308, metadata !629), !dbg !3309
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3135, metadata !629) #9, !dbg !3310
  %2 = tail call noalias i8* @malloc(i64 %0) #9, !dbg !3312
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3141, metadata !629) #9, !dbg !3313
  %3 = icmp eq i8* %2, null, !dbg !3314
  %4 = icmp ne i64 %0, 0, !dbg !3315
  %5 = and i1 %4, %3, !dbg !3316
  br i1 %5, label %6, label %7, !dbg !3316

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3317
  unreachable, !dbg !3317

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !3318
  ret i8* %2, !dbg !3319
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !3320 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3322, metadata !629), !dbg !3325
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3323, metadata !629), !dbg !3326
  %3 = udiv i64 9223372036854775807, %1, !dbg !3327
  %4 = icmp ult i64 %3, %0, !dbg !3327
  br i1 %4, label %8, label %5, !dbg !3329

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #9, !dbg !3330
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3324, metadata !629), !dbg !3332
  %7 = icmp eq i8* %6, null, !dbg !3333
  br i1 %7, label %8, label %9, !dbg !3334

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #14, !dbg !3336
  unreachable, !dbg !3336

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !3337
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !3338 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3342, metadata !629), !dbg !3344
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3343, metadata !629), !dbg !3345
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3135, metadata !629) #9, !dbg !3346
  %3 = tail call noalias i8* @malloc(i64 %1) #9, !dbg !3348
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3141, metadata !629) #9, !dbg !3349
  %4 = icmp eq i8* %3, null, !dbg !3350
  %5 = icmp ne i64 %1, 0, !dbg !3351
  %6 = and i1 %5, %4, !dbg !3352
  br i1 %6, label %7, label %8, !dbg !3352

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !3353
  unreachable, !dbg !3353

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !3354
  ret i8* %3, !dbg !3355
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !3356 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3358, metadata !629), !dbg !3359
  %2 = tail call i64 @strlen(i8* %0) #13, !dbg !3360
  %3 = add i64 %2, 1, !dbg !3361
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3342, metadata !629) #9, !dbg !3362
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3343, metadata !629) #9, !dbg !3365
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3135, metadata !629) #9, !dbg !3366
  %4 = tail call noalias i8* @malloc(i64 %3) #9, !dbg !3368
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !3141, metadata !629) #9, !dbg !3369
  %5 = icmp eq i8* %4, null, !dbg !3370
  %6 = icmp ne i64 %3, 0, !dbg !3371
  %7 = and i1 %6, %5, !dbg !3372
  br i1 %7, label %8, label %9, !dbg !3372

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3373
  unreachable, !dbg !3373

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #9, !dbg !3374
  ret i8* %4, !dbg !3375
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !3376 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3378, !tbaa !721
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.94, i64 0, i64 0), i32 5) #9, !dbg !3379
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.95, i64 0, i64 0), i8* %2) #9, !dbg !3380
  tail call void @abort() #14, !dbg !3382
  unreachable, !dbg !3382
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !3383 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3386, metadata !629), !dbg !3392
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3387, metadata !629), !dbg !3393
  %3 = icmp eq i64 %0, 0, !dbg !3394
  %4 = icmp eq i64 %1, 0, !dbg !3395
  %5 = or i1 %3, %4, !dbg !3397
  br i1 %5, label %12, label %6, !dbg !3397

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3398
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3389, metadata !629), !dbg !3399
  %8 = udiv i64 %7, %1, !dbg !3400
  %9 = icmp eq i64 %8, %0, !dbg !3402
  br i1 %9, label %12, label %10, !dbg !3403

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #1, !dbg !3404
  store i32 12, i32* %11, align 4, !dbg !3406, !tbaa !721
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3386, metadata !629), !dbg !3392
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !3387, metadata !629), !dbg !3393
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #9, !dbg !3407
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !3388, metadata !629), !dbg !3408
  br label %16, !dbg !3409

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !3410
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fcntl(i32, i32, ...) local_unnamed_addr #6 !dbg !193 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !201, metadata !629), !dbg !3411
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !202, metadata !629), !dbg !3412
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !3413
  call void @llvm.lifetime.start(i64 24, i8* nonnull %4) #9, !dbg !3413
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %3, metadata !203, metadata !629), !dbg !3414
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !216, metadata !629), !dbg !3415
  call void @llvm.va_start(i8* nonnull %4), !dbg !3416
  %5 = icmp eq i32 %1, 1030, !dbg !3417
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0
  %7 = load i32, i32* %6, align 16
  %8 = icmp ult i32 %7, 41
  br i1 %5, label %9, label %59, !dbg !3417

; <label>:9:                                      ; preds = %2
  br i1 %8, label %10, label %16, !dbg !3418

; <label>:10:                                     ; preds = %9
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !3419
  %12 = load i8*, i8** %11, align 16, !dbg !3419
  %13 = sext i32 %7 to i64, !dbg !3419
  %14 = getelementptr i8, i8* %12, i64 %13, !dbg !3419
  %15 = add i32 %7, 8, !dbg !3419
  store i32 %15, i32* %6, align 16, !dbg !3419
  br label %20, !dbg !3419

; <label>:16:                                     ; preds = %9
  %17 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !3421
  %18 = load i8*, i8** %17, align 8, !dbg !3421
  %19 = getelementptr i8, i8* %18, i64 8, !dbg !3421
  store i8* %19, i8** %17, align 8, !dbg !3421
  br label %20, !dbg !3421

; <label>:20:                                     ; preds = %16, %10
  %21 = phi i8* [ %14, %10 ], [ %18, %16 ]
  %22 = bitcast i8* %21 to i32*, !dbg !3423
  %23 = load i32, i32* %22, align 4, !dbg !3423
  call void @llvm.dbg.value(metadata i32 %23, i64 0, metadata !217, metadata !629), !dbg !3425
  %24 = load i32, i32* @rpl_fcntl.have_dupfd_cloexec, align 4, !dbg !3426, !tbaa !721
  %25 = icmp sgt i32 %24, -1, !dbg !3428
  br i1 %25, label %26, label %39, !dbg !3429

; <label>:26:                                     ; preds = %20
  %27 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 1030, i32 %23) #9, !dbg !3430
  call void @llvm.dbg.value(metadata i32 %27, i64 0, metadata !216, metadata !629), !dbg !3415
  %28 = icmp sgt i32 %27, -1, !dbg !3432
  br i1 %28, label %36, label %29, !dbg !3434

; <label>:29:                                     ; preds = %26
  %30 = tail call i32* @__errno_location() #1, !dbg !3435
  %31 = load i32, i32* %30, align 4, !dbg !3435, !tbaa !721
  %32 = icmp eq i32 %31, 22, !dbg !3437
  br i1 %32, label %33, label %36, !dbg !3438

; <label>:33:                                     ; preds = %29
  %34 = call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 0, i32 %23), !dbg !3440
  call void @llvm.dbg.value(metadata i32 %34, i64 0, metadata !216, metadata !629), !dbg !3415
  %35 = icmp slt i32 %34, 0, !dbg !3442
  br i1 %35, label %75, label %36, !dbg !3444

; <label>:36:                                     ; preds = %29, %26, %33
  %37 = phi i32 [ %27, %26 ], [ %27, %29 ], [ %34, %33 ]
  %38 = phi i32 [ 1, %26 ], [ 1, %29 ], [ -1, %33 ]
  call void @llvm.dbg.value(metadata i32 %37, i64 0, metadata !216, metadata !629), !dbg !3415
  store i32 %38, i32* @rpl_fcntl.have_dupfd_cloexec, align 4, !tbaa !721
  br label %42, !dbg !3445

; <label>:39:                                     ; preds = %20
  %40 = call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 0, i32 %23), !dbg !3446
  call void @llvm.dbg.value(metadata i32 %40, i64 0, metadata !216, metadata !629), !dbg !3415
  %41 = load i32, i32* @rpl_fcntl.have_dupfd_cloexec, align 4
  br label %42

; <label>:42:                                     ; preds = %39, %36
  %43 = phi i32 [ %38, %36 ], [ %41, %39 ], !dbg !3447
  %44 = phi i32 [ %37, %36 ], [ %40, %39 ]
  call void @llvm.dbg.value(metadata i32 %44, i64 0, metadata !216, metadata !629), !dbg !3415
  %45 = icmp sgt i32 %44, -1, !dbg !3449
  %46 = icmp eq i32 %43, -1, !dbg !3450
  %47 = and i1 %45, %46, !dbg !3451
  br i1 %47, label %48, label %75, !dbg !3451

; <label>:48:                                     ; preds = %42
  %49 = call i32 (i32, i32, ...) @fcntl(i32 %44, i32 1) #9, !dbg !3452
  call void @llvm.dbg.value(metadata i32 %49, i64 0, metadata !220, metadata !629), !dbg !3453
  %50 = icmp slt i32 %49, 0, !dbg !3454
  br i1 %50, label %55, label %51, !dbg !3455

; <label>:51:                                     ; preds = %48
  %52 = or i32 %49, 1, !dbg !3456
  %53 = call i32 (i32, i32, ...) @fcntl(i32 %44, i32 2, i32 %52) #9, !dbg !3458
  %54 = icmp eq i32 %53, -1, !dbg !3459
  br i1 %54, label %55, label %75, !dbg !3460

; <label>:55:                                     ; preds = %51, %48
  %56 = tail call i32* @__errno_location() #1, !dbg !3462
  %57 = load i32, i32* %56, align 4, !dbg !3462, !tbaa !721
  call void @llvm.dbg.value(metadata i32 %57, i64 0, metadata !223, metadata !629), !dbg !3463
  %58 = call i32 @close(i32 %44) #9, !dbg !3464
  store i32 %57, i32* %56, align 4, !dbg !3465, !tbaa !721
  call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !216, metadata !629), !dbg !3415
  br label %75, !dbg !3466

; <label>:59:                                     ; preds = %2
  br i1 %8, label %60, label %66, !dbg !3467

; <label>:60:                                     ; preds = %59
  %61 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !3468
  %62 = load i8*, i8** %61, align 16, !dbg !3468
  %63 = sext i32 %7 to i64, !dbg !3468
  %64 = getelementptr i8, i8* %62, i64 %63, !dbg !3468
  %65 = add i32 %7, 8, !dbg !3468
  store i32 %65, i32* %6, align 16, !dbg !3468
  br label %70, !dbg !3468

; <label>:66:                                     ; preds = %59
  %67 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !3470
  %68 = load i8*, i8** %67, align 8, !dbg !3470
  %69 = getelementptr i8, i8* %68, i64 8, !dbg !3470
  store i8* %69, i8** %67, align 8, !dbg !3470
  br label %70, !dbg !3470

; <label>:70:                                     ; preds = %66, %60
  %71 = phi i8* [ %64, %60 ], [ %68, %66 ]
  %72 = bitcast i8* %71 to i8**, !dbg !3472
  %73 = load i8*, i8** %72, align 8, !dbg !3472
  call void @llvm.dbg.value(metadata i8* %73, i64 0, metadata !226, metadata !629), !dbg !3474
  %74 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 %1, i8* %73) #9, !dbg !3475
  call void @llvm.dbg.value(metadata i32 %74, i64 0, metadata !216, metadata !629), !dbg !3415
  br label %75

; <label>:75:                                     ; preds = %33, %51, %55, %42, %70
  %76 = phi i32 [ %74, %70 ], [ %34, %33 ], [ %44, %42 ], [ -1, %55 ], [ %44, %51 ]
  call void @llvm.dbg.value(metadata i32 %76, i64 0, metadata !216, metadata !629), !dbg !3415
  call void @llvm.va_end(i8* nonnull %4), !dbg !3476
  call void @llvm.lifetime.end(i64 24, i8* nonnull %4) #9, !dbg !3477
  ret i32 %76, !dbg !3478
}

declare i32 @fcntl(i32, i32, ...) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !3479 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !3496, metadata !629), !dbg !3505
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3497, metadata !629), !dbg !3506
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3498, metadata !629), !dbg !3507
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !3499, metadata !629), !dbg !3508
  %6 = bitcast i32* %5 to i8*, !dbg !3509
  call void @llvm.lifetime.start(i64 4, i8* nonnull %6) #9, !dbg !3509
  %7 = icmp eq i32* %0, null, !dbg !3510
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !3496, metadata !629), !dbg !3505
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3512
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !3496, metadata !629), !dbg !3505
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #9, !dbg !3513
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !3500, metadata !629), !dbg !3514
  %10 = icmp ugt i64 %9, -3, !dbg !3515
  %11 = icmp ne i64 %2, 0, !dbg !3516
  %12 = and i1 %11, %10, !dbg !3518
  br i1 %12, label %13, label %18, !dbg !3518

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #9, !dbg !3519
  br i1 %14, label %18, label %15, !dbg !3521

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3523, !tbaa !1203
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !3502, metadata !629), !dbg !3524
  %17 = zext i8 %16 to i32, !dbg !3525
  store i32 %17, i32* %8, align 4, !dbg !3526, !tbaa !721
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end(i64 4, i8* nonnull %6) #9, !dbg !3527
  ret i64 %19, !dbg !3527
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !3528 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3573, metadata !629), !dbg !3578
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #9, !dbg !3579
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3580, metadata !629), !dbg !3584
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3586
  %4 = load i32, i32* %3, align 8, !dbg !3586, !tbaa !3587
  %5 = and i32 %4, 32, !dbg !3586
  %6 = icmp eq i32 %5, 0, !dbg !3589
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #9, !dbg !3590
  %8 = icmp ne i32 %7, 0, !dbg !3591
  br i1 %6, label %9, label %19, !dbg !3592

; <label>:9:                                      ; preds = %1
  %10 = xor i1 %8, true, !dbg !3594
  %11 = icmp ne i64 %2, 0, !dbg !3594
  %12 = or i1 %11, %10, !dbg !3594
  %13 = sext i1 %8 to i32, !dbg !3594
  br i1 %12, label %22, label %14, !dbg !3594

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #1, !dbg !3596
  %16 = load i32, i32* %15, align 4, !dbg !3596, !tbaa !721
  %17 = icmp ne i32 %16, 9, !dbg !3598
  %18 = sext i1 %17 to i32, !dbg !3598
  br label %22, !dbg !3598

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !3600

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #1, !dbg !3602
  store i32 0, i32* %21, align 4, !dbg !3604, !tbaa !721
  br label %22, !dbg !3602

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !3605
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !3606 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3611, metadata !629), !dbg !3631
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3612, metadata !629), !dbg !3632
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #9, !dbg !3633
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3613, metadata !629), !dbg !3634
  %3 = icmp eq i8* %2, null, !dbg !3635
  br i1 %3, label %15, label %4, !dbg !3636

; <label>:4:                                      ; preds = %1
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3621, metadata !629), !dbg !3637
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3622, metadata !629), !dbg !3638
  %5 = load i8, i8* %2, align 1, !dbg !3639, !tbaa !1203
  %6 = icmp eq i8 %5, 67, !dbg !3641
  br i1 %6, label %7, label %11, !dbg !3644

; <label>:7:                                      ; preds = %4
  %8 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !3646
  %9 = load i8, i8* %8, align 1, !dbg !3646, !tbaa !1203
  %10 = icmp eq i8 %9, 0, !dbg !3649
  br i1 %10, label %14, label %11, !dbg !3651

; <label>:11:                                     ; preds = %4, %7
  tail call void @llvm.dbg.value(metadata i64 5, i64 0, metadata !3627, metadata !629), !dbg !3653
  %12 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.106, i64 0, i64 0)) #9, !dbg !3654
  %13 = icmp eq i32 %12, 0, !dbg !3656
  br i1 %13, label %14, label %15, !dbg !3658

; <label>:14:                                     ; preds = %11, %7
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3612, metadata !629), !dbg !3632
  br label %15, !dbg !3660

; <label>:15:                                     ; preds = %1, %11, %14
  %16 = phi i1 [ false, %14 ], [ true, %11 ], [ true, %1 ]
  ret i1 %16, !dbg !3661
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !3662 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !3674, metadata !629), !dbg !3748
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !3741, metadata !629), !dbg !3750
  %3 = tail call i8* @nl_langinfo(i32 14) #9, !dbg !3751
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3666, metadata !629), !dbg !3752
  %4 = icmp eq i8* %3, null, !dbg !3753
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.109, i64 0, i64 0), i8* %3, !dbg !3755
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !3666, metadata !629), !dbg !3752
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !3756, !tbaa !637
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3688, metadata !629) #9, !dbg !3757
  %7 = icmp eq i8* %6, null, !dbg !3758
  br i1 %7, label %8, label %127, !dbg !3759

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.110, i64 0, i64 0)) #9, !dbg !3760
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !3689, metadata !629) #9, !dbg !3761
  %10 = icmp eq i8* %9, null, !dbg !3762
  br i1 %10, label %14, label %11, !dbg !3764

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !3765, !tbaa !1203
  %13 = icmp eq i8 %12, 0, !dbg !3767
  br i1 %13, label %14, label %15, !dbg !3768

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !3770

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.111, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !3689, metadata !629) #9, !dbg !3761
  %17 = tail call i64 @strlen(i8* nonnull %16) #13, !dbg !3771
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !3692, metadata !629) #9, !dbg !3772
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !3694, metadata !629) #9, !dbg !3773
  %18 = icmp eq i64 %17, 0, !dbg !3774
  br i1 %18, label %24, label %19, !dbg !3775

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !3776
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !3776
  %22 = load i8, i8* %21, align 1, !dbg !3776, !tbaa !1203
  %23 = icmp ne i8 %22, 47, !dbg !3778
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !3779
  %27 = add i64 %17, 14, !dbg !3780
  %28 = add i64 %27, %26, !dbg !3781
  %29 = tail call noalias i8* @malloc(i64 %28) #9, !dbg !3782
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3691, metadata !629) #9, !dbg !3783
  %30 = icmp eq i8* %29, null, !dbg !3784
  br i1 %30, label %125, label %31, !dbg !3784

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #9, !dbg !3785
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !3788

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !3789, !tbaa !1203
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !3791
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.112, i64 0, i64 0), i64 14, i32 1, i1 false) #9, !dbg !3792
  br label %37, !dbg !3793

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !3791
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.112, i64 0, i64 0), i64 14, i32 1, i1 false) #9, !dbg !3792
  br label %37, !dbg !3793

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #9, !dbg !3794
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !3696, metadata !629) #9, !dbg !3795
  %39 = icmp slt i32 %38, 0, !dbg !3796
  br i1 %39, label %123, label %40, !dbg !3797

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.113, i64 0, i64 0)) #9, !dbg !3798
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3697, metadata !629) #9, !dbg !3799
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !3800
  br i1 %42, label %48, label %43, !dbg !3801

; <label>:43:                                     ; preds = %40
  %44 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %45 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %46 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %47 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !3802

; <label>:48:                                     ; preds = %40
  %49 = tail call i32 @close(i32 %38) #9, !dbg !3803
  br label %123, !dbg !3805

; <label>:50:                                     ; preds = %111, %43
  %51 = phi i64 [ %112, %111 ], [ 0, %43 ]
  %52 = phi i8* [ %113, %111 ], [ null, %43 ]
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3738, metadata !629) #9, !dbg !3802
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !3739, metadata !629) #9, !dbg !3806
  call void @llvm.lifetime.start(i64 51, i8* nonnull %44) #9, !dbg !3807
  call void @llvm.lifetime.start(i64 51, i8* nonnull %45) #9, !dbg !3808
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3809, metadata !629) #9, !dbg !3814
  %53 = load i8*, i8** %46, align 8, !dbg !3816, !tbaa !3817
  %54 = load i8*, i8** %47, align 8, !dbg !3816, !tbaa !3818
  %55 = icmp ult i8* %53, %54, !dbg !3816
  br i1 %55, label %58, label %56, !dbg !3816, !prof !3819

; <label>:56:                                     ; preds = %50
  %57 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #9, !dbg !3820
  br label %62, !dbg !3820

; <label>:58:                                     ; preds = %50
  %59 = getelementptr inbounds i8, i8* %53, i64 1, !dbg !3822
  store i8* %59, i8** %46, align 8, !dbg !3822, !tbaa !3817
  %60 = load i8, i8* %53, align 1, !dbg !3822, !tbaa !1203
  %61 = zext i8 %60 to i32, !dbg !3822
  br label %62, !dbg !3822

; <label>:62:                                     ; preds = %58, %56
  %63 = phi i32 [ %57, %56 ], [ %61, %58 ], !dbg !3824
  call void @llvm.dbg.value(metadata i32 %63, i64 0, metadata !3740, metadata !629) #9, !dbg !3826
  switch i32 %63, label %77 [
    i32 -1, label %115
    i32 32, label %111
    i32 10, label %111
    i32 9, label %111
    i32 35, label %64
  ], !dbg !3827

; <label>:64:                                     ; preds = %62
  br label %65, !dbg !3828

; <label>:65:                                     ; preds = %64, %75
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3809, metadata !629) #9, !dbg !3828
  %66 = load i8*, i8** %46, align 8, !dbg !3832, !tbaa !3817
  %67 = load i8*, i8** %47, align 8, !dbg !3832, !tbaa !3818
  %68 = icmp ult i8* %66, %67, !dbg !3832
  br i1 %68, label %71, label %69, !dbg !3832, !prof !3819

; <label>:69:                                     ; preds = %65
  %70 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #9, !dbg !3833
  br label %75, !dbg !3833

; <label>:71:                                     ; preds = %65
  %72 = getelementptr inbounds i8, i8* %66, i64 1, !dbg !3834
  store i8* %72, i8** %46, align 8, !dbg !3834, !tbaa !3817
  %73 = load i8, i8* %66, align 1, !dbg !3834, !tbaa !1203
  %74 = zext i8 %73 to i32, !dbg !3834
  br label %75, !dbg !3834

; <label>:75:                                     ; preds = %71, %69
  %76 = phi i32 [ %70, %69 ], [ %74, %71 ], !dbg !3835
  call void @llvm.dbg.value(metadata i32 %76, i64 0, metadata !3740, metadata !629) #9, !dbg !3826
  switch i32 %76, label %65 [
    i32 -1, label %114
    i32 10, label %110
  ], !dbg !3836, !llvm.loop !3838

; <label>:77:                                     ; preds = %62
  %78 = call i32 @ungetc(i32 %63, %struct._IO_FILE* nonnull %41) #9, !dbg !3841
  %79 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.114, i64 0, i64 0), i8* nonnull %44, i8* nonnull %45) #9, !dbg !3842
  %80 = icmp slt i32 %79, 2, !dbg !3844
  br i1 %80, label %115, label %81, !dbg !3845

; <label>:81:                                     ; preds = %77
  %82 = call i64 @strlen(i8* nonnull %44) #13, !dbg !3846
  call void @llvm.dbg.value(metadata i64 %82, i64 0, metadata !3745, metadata !629) #9, !dbg !3847
  %83 = call i64 @strlen(i8* nonnull %45) #13, !dbg !3848
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !3746, metadata !629) #9, !dbg !3849
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3747, metadata !629) #9, !dbg !3850
  %84 = icmp eq i64 %51, 0, !dbg !3851
  %85 = add i64 %82, 1
  %86 = add i64 %85, %83
  %87 = add i64 %86, 1
  br i1 %84, label %88, label %91, !dbg !3853

; <label>:88:                                     ; preds = %81
  call void @llvm.dbg.value(metadata i64 %87, i64 0, metadata !3739, metadata !629) #9, !dbg !3806
  %89 = add i64 %86, 2, !dbg !3854
  %90 = call noalias i8* @malloc(i64 %89) #9, !dbg !3856
  call void @llvm.dbg.value(metadata i8* %90, i64 0, metadata !3738, metadata !629) #9, !dbg !3802
  br label %95, !dbg !3857

; <label>:91:                                     ; preds = %81
  %92 = add i64 %87, %51, !dbg !3858
  call void @llvm.dbg.value(metadata i64 %92, i64 0, metadata !3739, metadata !629) #9, !dbg !3806
  %93 = add i64 %92, 1, !dbg !3860
  %94 = call i8* @realloc(i8* %52, i64 %93) #9, !dbg !3861
  call void @llvm.dbg.value(metadata i8* %94, i64 0, metadata !3738, metadata !629) #9, !dbg !3802
  br label %95

; <label>:95:                                     ; preds = %91, %88
  %96 = phi i64 [ %87, %88 ], [ %92, %91 ]
  %97 = phi i8* [ %90, %88 ], [ %94, %91 ]
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !3738, metadata !629) #9, !dbg !3802
  call void @llvm.dbg.value(metadata i64 %96, i64 0, metadata !3739, metadata !629) #9, !dbg !3806
  %98 = icmp eq i8* %97, null, !dbg !3862
  br i1 %98, label %99, label %100, !dbg !3864

; <label>:99:                                     ; preds = %95
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3739, metadata !629) #9, !dbg !3806
  call void @free(i8* %52) #9, !dbg !3865
  br label %116, !dbg !3867

; <label>:100:                                    ; preds = %95
  %101 = getelementptr inbounds i8, i8* %97, i64 %96, !dbg !3868
  %102 = xor i64 %83, -1, !dbg !3869
  %103 = getelementptr inbounds i8, i8* %101, i64 %102, !dbg !3869
  %104 = xor i64 %82, -1, !dbg !3870
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !3870
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !3871, metadata !629) #9, !dbg !3880
  call void @llvm.dbg.value(metadata i8* %44, i64 0, metadata !3879, metadata !629) #9, !dbg !3880
  %106 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false) #9, !dbg !3882
  %107 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %44, i64 %106) #9, !dbg !3883
  call void @llvm.dbg.value(metadata i8* %103, i64 0, metadata !3871, metadata !629) #9, !dbg !3884
  call void @llvm.dbg.value(metadata i8* %45, i64 0, metadata !3879, metadata !629) #9, !dbg !3884
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %103, i1 false) #9, !dbg !3886
  %109 = call i8* @__strcpy_chk(i8* nonnull %103, i8* nonnull %45, i64 %108) #9, !dbg !3887
  br label %111, !dbg !3888

; <label>:110:                                    ; preds = %75
  br label %111, !dbg !3802

; <label>:111:                                    ; preds = %110, %100, %62, %62, %62
  %112 = phi i64 [ %96, %100 ], [ %51, %62 ], [ %51, %62 ], [ %51, %62 ], [ %51, %110 ]
  %113 = phi i8* [ %97, %100 ], [ %52, %62 ], [ %52, %62 ], [ %52, %62 ], [ %52, %110 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !3738, metadata !629) #9, !dbg !3802
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !3739, metadata !629) #9, !dbg !3806
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #9, !dbg !3888
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #9, !dbg !3888
  br label %50

; <label>:114:                                    ; preds = %75
  br label %116, !dbg !3802

; <label>:115:                                    ; preds = %62, %77
  br label %116, !dbg !3802

; <label>:116:                                    ; preds = %115, %114, %99
  %117 = phi i64 [ 0, %99 ], [ %51, %114 ], [ %51, %115 ]
  %118 = phi i8* [ null, %99 ], [ %52, %114 ], [ %52, %115 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !3738, metadata !629) #9, !dbg !3802
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !3739, metadata !629) #9, !dbg !3806
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #9, !dbg !3888
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #9, !dbg !3888
  %119 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #9, !dbg !3889
  %120 = icmp eq i64 %117, 0, !dbg !3890
  br i1 %120, label %123, label %121, !dbg !3892

; <label>:121:                                    ; preds = %116
  %122 = getelementptr inbounds i8, i8* %118, i64 %117, !dbg !3893
  store i8 0, i8* %122, align 1, !dbg !3895, !tbaa !1203
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !3688, metadata !629) #9, !dbg !3757
  br label %123

; <label>:123:                                    ; preds = %121, %116, %48, %37
  %124 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.109, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.109, i64 0, i64 0), %48 ], [ %118, %121 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.109, i64 0, i64 0), %116 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !3688, metadata !629) #9, !dbg !3757
  call void @free(i8* %29) #9, !dbg !3896
  br label %125

; <label>:125:                                    ; preds = %123, %24
  %126 = phi i8* [ %124, %123 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.109, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %126, i64 0, metadata !3688, metadata !629) #9, !dbg !3757
  store volatile i8* %126, i8** @charset_aliases, align 8, !dbg !3897, !tbaa !637
  br label %127, !dbg !3898

; <label>:127:                                    ; preds = %0, %125
  %128 = phi i8* [ %6, %0 ], [ %126, %125 ]
  call void @llvm.dbg.value(metadata i8* %128, i64 0, metadata !3667, metadata !629), !dbg !3899
  %129 = load i8, i8* %128, align 1, !dbg !3900, !tbaa !1203
  %130 = icmp eq i8 %129, 0, !dbg !3901
  br i1 %130, label %157, label %131, !dbg !3902

; <label>:131:                                    ; preds = %127
  br label %132, !dbg !3904

; <label>:132:                                    ; preds = %131, %147
  %133 = phi i8 [ %154, %147 ], [ %129, %131 ]
  %134 = phi i8* [ %153, %147 ], [ %128, %131 ]
  %135 = call i32 @strcmp(i8* %5, i8* %134) #9, !dbg !3904
  %136 = icmp eq i32 %135, 0, !dbg !3905
  br i1 %136, label %143, label %137, !dbg !3906

; <label>:137:                                    ; preds = %132
  %138 = icmp eq i8 %133, 42, !dbg !3907
  br i1 %138, label %139, label %147, !dbg !3909

; <label>:139:                                    ; preds = %137
  %140 = getelementptr inbounds i8, i8* %134, i64 1, !dbg !3910
  %141 = load i8, i8* %140, align 1, !dbg !3910, !tbaa !1203
  %142 = icmp eq i8 %141, 0, !dbg !3912
  br i1 %142, label %143, label %147, !dbg !3913

; <label>:143:                                    ; preds = %139, %132
  %144 = call i64 @strlen(i8* %134) #13, !dbg !3915
  %145 = getelementptr inbounds i8, i8* %134, i64 %144, !dbg !3917
  %146 = getelementptr inbounds i8, i8* %145, i64 1, !dbg !3918
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !3666, metadata !629), !dbg !3752
  br label %157, !dbg !3919

; <label>:147:                                    ; preds = %137, %139
  %148 = call i64 @strlen(i8* %134) #13, !dbg !3920
  %149 = add i64 %148, 1, !dbg !3921
  %150 = getelementptr inbounds i8, i8* %134, i64 %149, !dbg !3922
  call void @llvm.dbg.value(metadata i8* %150, i64 0, metadata !3667, metadata !629), !dbg !3899
  %151 = call i64 @strlen(i8* %150) #13, !dbg !3923
  %152 = add i64 %151, 1, !dbg !3924
  %153 = getelementptr inbounds i8, i8* %150, i64 %152, !dbg !3925
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !3667, metadata !629), !dbg !3899
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !3667, metadata !629), !dbg !3899
  %154 = load i8, i8* %153, align 1, !dbg !3900, !tbaa !1203
  %155 = icmp eq i8 %154, 0, !dbg !3901
  br i1 %155, label %156, label %132, !dbg !3902, !llvm.loop !3926

; <label>:156:                                    ; preds = %147
  br label %157, !dbg !3752

; <label>:157:                                    ; preds = %156, %127, %143
  %158 = phi i8* [ %146, %143 ], [ %5, %127 ], [ %5, %156 ]
  call void @llvm.dbg.value(metadata i8* %158, i64 0, metadata !3666, metadata !629), !dbg !3752
  %159 = load i8, i8* %158, align 1, !dbg !3929, !tbaa !1203
  %160 = icmp eq i8 %159, 0, !dbg !3931
  %161 = select i1 %160, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.115, i64 0, i64 0), i8* %158, !dbg !3932
  call void @llvm.dbg.value(metadata i8* %161, i64 0, metadata !3666, metadata !629), !dbg !3752
  ret i8* %161, !dbg !3933
}

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i8* @getenv(i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fdopen(i32, i8* nocapture readonly) local_unnamed_addr #2

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
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !3934 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3979, metadata !629), !dbg !3983
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3980, metadata !629), !dbg !3984
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3982, metadata !629), !dbg !3985
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #9, !dbg !3986
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3981, metadata !629), !dbg !3987
  %3 = icmp slt i32 %2, 0, !dbg !3988
  br i1 %3, label %4, label %6, !dbg !3990

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3991
  br label %24, !dbg !3992

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #9, !dbg !3993
  %8 = icmp eq i32 %7, 0, !dbg !3993
  br i1 %8, label %13, label %9, !dbg !3995

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #9, !dbg !3996
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #9, !dbg !3998
  %12 = icmp eq i64 %11, -1, !dbg !4000
  br i1 %12, label %16, label %13, !dbg !4001

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #9, !dbg !4002
  %15 = icmp eq i32 %14, 0, !dbg !4002
  br i1 %15, label %16, label %18, !dbg !4003

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3980, metadata !629), !dbg !3984
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4005
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !3982, metadata !629), !dbg !3985
  br label %24, !dbg !4006

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #1, !dbg !4007
  %20 = load i32, i32* %19, align 4, !dbg !4007, !tbaa !721
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3980, metadata !629), !dbg !3984
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3980, metadata !629), !dbg !3984
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4005
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !3982, metadata !629), !dbg !3985
  %22 = icmp eq i32 %20, 0, !dbg !4008
  br i1 %22, label %24, label %23, !dbg !4006

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4010, !tbaa !721
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !3982, metadata !629), !dbg !3985
  br label %24, !dbg !4012

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !4013
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
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !4014 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4059, metadata !629), !dbg !4060
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4061
  br i1 %2, label %6, label %3, !dbg !4063

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #9, !dbg !4064
  %5 = icmp eq i32 %4, 0, !dbg !4064
  br i1 %5, label %6, label %8, !dbg !4066

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4068
  br label %17, !dbg !4069

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4070, metadata !629) #9, !dbg !4075
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4077
  %10 = load i32, i32* %9, align 8, !dbg !4077, !tbaa !3587
  %11 = and i32 %10, 256, !dbg !4079
  %12 = icmp eq i32 %11, 0, !dbg !4079
  br i1 %12, label %15, label %13, !dbg !4080

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #9, !dbg !4081
  br label %15, !dbg !4081

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4082
  br label %17, !dbg !4083

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !4084
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !4085 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4131, metadata !629), !dbg !4137
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4132, metadata !629), !dbg !4138
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4133, metadata !629), !dbg !4139
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4140
  %5 = load i8*, i8** %4, align 8, !dbg !4140, !tbaa !3818
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4141
  %7 = load i8*, i8** %6, align 8, !dbg !4141, !tbaa !3817
  %8 = icmp eq i8* %5, %7, !dbg !4142
  br i1 %8, label %9, label %28, !dbg !4143

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4144
  %11 = load i8*, i8** %10, align 8, !dbg !4144, !tbaa !4146
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4147
  %13 = load i8*, i8** %12, align 8, !dbg !4147, !tbaa !4148
  %14 = icmp eq i8* %11, %13, !dbg !4149
  br i1 %14, label %15, label %28, !dbg !4150

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4151
  %17 = load i8*, i8** %16, align 8, !dbg !4151, !tbaa !4152
  %18 = icmp eq i8* %17, null, !dbg !4153
  br i1 %18, label %19, label %28, !dbg !4154

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #9, !dbg !4156
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #9, !dbg !4157
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !4134, metadata !629), !dbg !4159
  %22 = icmp eq i64 %21, -1, !dbg !4160
  br i1 %22, label %30, label %23, !dbg !4162

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4163
  %25 = load i32, i32* %24, align 8, !dbg !4164, !tbaa !3587
  %26 = and i32 %25, -17, !dbg !4164
  store i32 %26, i32* %24, align 8, !dbg !4164, !tbaa !3587
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4165
  store i64 %21, i64* %27, align 8, !dbg !4166, !tbaa !4167
  br label %30, !dbg !4168

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4169
  br label %30, !dbg !4170

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !4171
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
attributes #9 = { nounwind }
attributes #10 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { argmemonly nounwind }
attributes #12 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { nounwind readonly }
attributes #14 = { noreturn nounwind }
attributes #15 = { noreturn }
attributes #16 = { cold }

!llvm.dbg.cu = !{!2, !85, !91, !100, !107, !114, !576, !184, !584, !601, !603, !197, !605, !608, !610, !230, !613, !615, !617}
!llvm.ident = !{!619, !619, !619, !619, !619, !619, !619, !619, !619, !619, !619, !619, !619, !619, !619, !619, !619, !619, !619}
!llvm.module.flags = !{!620, !621, !622, !623}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "long_options", scope: !2, file: !3, line: 48, type: !71, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !25, globals: !39)
!3 = !DIFile(filename: "src/sync.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4 = !{!5, !11}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "sync_mode", file: !3, line: 40, size: 32, elements: !6)
!6 = !{!7, !8, !9, !10}
!7 = !DIEnumerator(name: "MODE_FILE", value: 0)
!8 = !DIEnumerator(name: "MODE_DATA", value: 1)
!9 = !DIEnumerator(name: "MODE_FILE_SYSTEM", value: 2)
!10 = !DIEnumerator(name: "MODE_SYNC", value: 3)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !12, line: 32, size: 32, elements: !13)
!12 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!13 = !{!14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24}
!14 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!15 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!16 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!17 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!18 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!19 = !DIEnumerator(name: "c_quoting_style", value: 5)
!20 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!21 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!22 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!23 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!24 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!25 = !{!26, !28, !29, !32, !34, !37}
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !30, line: 62, baseType: !31)
!30 = !DIFile(filename: "/usr/bin/../lib/clang/4.0.1/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!31 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !36)
!36 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!39 = !{!40, !0}
!40 = !DIGlobalVariableExpression(var: !41)
!41 = distinct !DIGlobalVariable(name: "infomap", scope: !42, file: !43, line: 632, type: !68, isLocal: true, isDefinition: true)
!42 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !43, file: !43, line: 630, type: !44, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !46)
!43 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!44 = !DISubroutineType(types: !45)
!45 = !{null, !37}
!46 = !{!47, !48, !49, !56, !58, !59, !60, !63, !64, !66}
!47 = !DILocalVariable(name: "program", arg: 1, scope: !42, file: !43, line: 630, type: !37)
!48 = !DILocalVariable(name: "node", scope: !42, file: !43, line: 642, type: !37)
!49 = !DILocalVariable(name: "map_prog", scope: !42, file: !43, line: 643, type: !50)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !52)
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !42, file: !43, line: 632, size: 128, elements: !53)
!53 = !{!54, !55}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !52, file: !43, line: 632, baseType: !37, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !52, file: !43, line: 632, baseType: !37, size: 64, offset: 64)
!56 = !DILocalVariable(name: "__s1_len", scope: !57, file: !43, line: 645, type: !29)
!57 = distinct !DILexicalBlock(scope: !42, file: !43, line: 645, column: 33)
!58 = !DILocalVariable(name: "__s2_len", scope: !57, file: !43, line: 645, type: !29)
!59 = !DILocalVariable(name: "lc_messages", scope: !42, file: !43, line: 655, type: !37)
!60 = !DILocalVariable(name: "__s1_len", scope: !61, file: !43, line: 656, type: !29)
!61 = distinct !DILexicalBlock(scope: !62, file: !43, line: 656, column: 22)
!62 = distinct !DILexicalBlock(scope: !42, file: !43, line: 656, column: 7)
!63 = !DILocalVariable(name: "__s2_len", scope: !61, file: !43, line: 656, type: !29)
!64 = !DILocalVariable(name: "__s2", scope: !65, file: !43, line: 656, type: !34)
!65 = distinct !DILexicalBlock(scope: !61, file: !43, line: 656, column: 22)
!66 = !DILocalVariable(name: "__result", scope: !65, file: !43, line: 656, type: !67)
!67 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!68 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 896, elements: !69)
!69 = !{!70}
!70 = !DISubrange(count: 7)
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 1280, elements: !81)
!72 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !73)
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !74, line: 104, size: 256, elements: !75)
!74 = !DIFile(filename: "/usr/include/getopt.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!75 = !{!76, !77, !78, !80}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !73, file: !74, line: 106, baseType: !37, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !73, file: !74, line: 109, baseType: !67, size: 32, offset: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !73, file: !74, line: 110, baseType: !79, size: 64, offset: 128)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !73, file: !74, line: 111, baseType: !67, size: 32, offset: 192)
!81 = !{!82}
!82 = !DISubrange(count: 5)
!83 = !DIGlobalVariableExpression(var: !84)
!84 = distinct !DIGlobalVariable(name: "Version", scope: !85, file: !86, line: 2, type: !37, isLocal: false, isDefinition: true)
!85 = distinct !DICompileUnit(language: DW_LANG_C99, file: !86, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !87, globals: !88)
!86 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!87 = !{}
!88 = !{!83}
!89 = !DIGlobalVariableExpression(var: !90)
!90 = distinct !DIGlobalVariable(name: "file_name", scope: !91, file: !96, line: 36, type: !37, isLocal: true, isDefinition: true)
!91 = distinct !DICompileUnit(language: DW_LANG_C99, file: !92, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !87, globals: !93)
!92 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!93 = !{!89, !94}
!94 = !DIGlobalVariableExpression(var: !95)
!95 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !91, file: !96, line: 46, type: !97, isLocal: true, isDefinition: true)
!96 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!97 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!98 = !DIGlobalVariableExpression(var: !99)
!99 = distinct !DIGlobalVariable(name: "exit_failure", scope: !100, file: !103, line: 24, type: !104, isLocal: false, isDefinition: true)
!100 = distinct !DICompileUnit(language: DW_LANG_C99, file: !101, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !87, globals: !102)
!101 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!102 = !{!98}
!103 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!104 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !67)
!105 = !DIGlobalVariableExpression(var: !106)
!106 = distinct !DIGlobalVariable(name: "program_name", scope: !107, file: !111, line: 33, type: !37, isLocal: false, isDefinition: true)
!107 = distinct !DICompileUnit(language: DW_LANG_C99, file: !108, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !87, retainedTypes: !109, globals: !110)
!108 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!109 = !{!28, !26}
!110 = !{!105}
!111 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!112 = !DIGlobalVariableExpression(var: !113)
!113 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !114, file: !142, line: 77, type: !178, isLocal: false, isDefinition: true)
!114 = distinct !DICompileUnit(language: DW_LANG_C99, file: !115, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !116, retainedTypes: !137, globals: !139)
!115 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!116 = !{!11, !117, !122}
!117 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !12, line: 242, size: 32, elements: !118)
!118 = !{!119, !120, !121}
!119 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!120 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!121 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!122 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !123, line: 46, size: 32, elements: !124)
!123 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!124 = !{!125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136}
!125 = !DIEnumerator(name: "_ISupper", value: 256)
!126 = !DIEnumerator(name: "_ISlower", value: 512)
!127 = !DIEnumerator(name: "_ISalpha", value: 1024)
!128 = !DIEnumerator(name: "_ISdigit", value: 2048)
!129 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!130 = !DIEnumerator(name: "_ISspace", value: 8192)
!131 = !DIEnumerator(name: "_ISprint", value: 16384)
!132 = !DIEnumerator(name: "_ISgraph", value: 32768)
!133 = !DIEnumerator(name: "_ISblank", value: 1)
!134 = !DIEnumerator(name: "_IScntrl", value: 2)
!135 = !DIEnumerator(name: "_ISpunct", value: 4)
!136 = !DIEnumerator(name: "_ISalnum", value: 8)
!137 = !{!67, !138, !29, !26}
!138 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!139 = !{!112, !140, !147, !160, !162, !167, !174, !176}
!140 = !DIGlobalVariableExpression(var: !141)
!141 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !114, file: !142, line: 93, type: !143, isLocal: false, isDefinition: true)
!142 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 320, elements: !145)
!144 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!145 = !{!146}
!146 = !DISubrange(count: 10)
!147 = !DIGlobalVariableExpression(var: !148)
!148 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !114, file: !142, line: 1043, type: !149, isLocal: false, isDefinition: true)
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !142, line: 57, size: 448, elements: !150)
!150 = !{!151, !152, !153, !158, !159}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !149, file: !142, line: 60, baseType: !11, size: 32)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !149, file: !142, line: 63, baseType: !67, size: 32, offset: 32)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !149, file: !142, line: 67, baseType: !154, size: 256, offset: 64)
!154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, size: 256, elements: !156)
!155 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!156 = !{!157}
!157 = !DISubrange(count: 8)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !149, file: !142, line: 70, baseType: !37, size: 64, offset: 320)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !149, file: !142, line: 73, baseType: !37, size: 64, offset: 384)
!160 = !DIGlobalVariableExpression(var: !161)
!161 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !114, file: !142, line: 108, type: !149, isLocal: true, isDefinition: true)
!162 = !DIGlobalVariableExpression(var: !163)
!163 = distinct !DIGlobalVariable(name: "slot0", scope: !114, file: !142, line: 834, type: !164, isLocal: true, isDefinition: true)
!164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 2048, elements: !165)
!165 = !{!166}
!166 = !DISubrange(count: 256)
!167 = !DIGlobalVariableExpression(var: !168)
!168 = distinct !DIGlobalVariable(name: "slotvec", scope: !114, file: !142, line: 837, type: !169, isLocal: true, isDefinition: true)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !142, line: 826, size: 128, elements: !171)
!171 = !{!172, !173}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !170, file: !142, line: 828, baseType: !29, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !170, file: !142, line: 829, baseType: !26, size: 64, offset: 64)
!174 = !DIGlobalVariableExpression(var: !175)
!175 = distinct !DIGlobalVariable(name: "nslots", scope: !114, file: !142, line: 835, type: !67, isLocal: true, isDefinition: true)
!176 = !DIGlobalVariableExpression(var: !177)
!177 = distinct !DIGlobalVariable(name: "slotvec0", scope: !114, file: !142, line: 836, type: !170, isLocal: true, isDefinition: true)
!178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 704, elements: !180)
!179 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !37)
!180 = !{!181}
!181 = !DISubrange(count: 11)
!182 = !DIGlobalVariableExpression(var: !183)
!183 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !184, file: !187, line: 26, type: !188, isLocal: false, isDefinition: true)
!184 = distinct !DICompileUnit(language: DW_LANG_C99, file: !185, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !87, globals: !186)
!185 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!186 = !{!182}
!187 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 376, elements: !189)
!189 = !{!190}
!190 = !DISubrange(count: 47)
!191 = !DIGlobalVariableExpression(var: !192)
!192 = distinct !DIGlobalVariable(name: "have_dupfd_cloexec", scope: !193, file: !194, line: 335, type: !67, isLocal: true, isDefinition: true)
!193 = distinct !DISubprogram(name: "rpl_fcntl", scope: !194, file: !194, line: 272, type: !195, isLocal: false, isDefinition: true, scopeLine: 273, flags: DIFlagPrototyped, isOptimized: true, unit: !197, variables: !200)
!194 = !DIFile(filename: "lib/fcntl.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!195 = !DISubroutineType(types: !196)
!196 = !{!67, !67, !67, null}
!197 = distinct !DICompileUnit(language: DW_LANG_C99, file: !198, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !87, globals: !199)
!198 = !DIFile(filename: "./lib/fcntl.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!199 = !{!191}
!200 = !{!201, !202, !203, !216, !217, !220, !223, !226}
!201 = !DILocalVariable(name: "fd", arg: 1, scope: !193, file: !194, line: 272, type: !67)
!202 = !DILocalVariable(name: "action", arg: 2, scope: !193, file: !194, line: 272, type: !67)
!203 = !DILocalVariable(name: "arg", scope: !193, file: !194, line: 274, type: !204)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !205, line: 30, baseType: !206)
!205 = !DIFile(filename: "/usr/bin/../lib/clang/4.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !198, line: 274, baseType: !207)
!207 = !DICompositeType(tag: DW_TAG_array_type, baseType: !208, size: 192, elements: !214)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !198, line: 274, size: 192, elements: !209)
!209 = !{!210, !211, !212, !213}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !208, file: !198, line: 274, baseType: !155, size: 32)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !208, file: !198, line: 274, baseType: !155, size: 32, offset: 32)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !208, file: !198, line: 274, baseType: !28, size: 64, offset: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !208, file: !198, line: 274, baseType: !28, size: 64, offset: 128)
!214 = !{!215}
!215 = !DISubrange(count: 1)
!216 = !DILocalVariable(name: "result", scope: !193, file: !194, line: 275, type: !67)
!217 = !DILocalVariable(name: "target", scope: !218, file: !194, line: 322, type: !67)
!218 = distinct !DILexicalBlock(scope: !219, file: !194, line: 321, column: 7)
!219 = distinct !DILexicalBlock(scope: !193, file: !194, line: 278, column: 5)
!220 = !DILocalVariable(name: "flags", scope: !221, file: !194, line: 359, type: !67)
!221 = distinct !DILexicalBlock(scope: !222, file: !194, line: 358, column: 11)
!222 = distinct !DILexicalBlock(scope: !218, file: !194, line: 357, column: 13)
!223 = !DILocalVariable(name: "saved_errno", scope: !224, file: !194, line: 362, type: !67)
!224 = distinct !DILexicalBlock(scope: !225, file: !194, line: 361, column: 15)
!225 = distinct !DILexicalBlock(scope: !221, file: !194, line: 360, column: 17)
!226 = !DILocalVariable(name: "p", scope: !227, file: !194, line: 404, type: !28)
!227 = distinct !DILexicalBlock(scope: !219, file: !194, line: 402, column: 7)
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
!571 = !{!28, !26, !572}
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!573 = !{!228}
!574 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!575 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !37)
!576 = distinct !DICompileUnit(language: DW_LANG_C99, file: !577, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !578, retainedTypes: !583)
!577 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!578 = !{!579}
!579 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !580, line: 41, size: 32, elements: !581)
!580 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!581 = !{!582}
!582 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!583 = !{!28}
!584 = distinct !DICompileUnit(language: DW_LANG_C99, file: !585, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !586, retainedTypes: !600)
!585 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!586 = !{!587}
!587 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !589, file: !588, line: 192, size: 32, elements: !598)
!588 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!589 = distinct !DISubprogram(name: "x2nrealloc", scope: !588, file: !588, line: 180, type: !590, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !584, variables: !593)
!590 = !DISubroutineType(types: !591)
!591 = !{!28, !28, !592, !29}
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!593 = !{!594, !595, !596, !597}
!594 = !DILocalVariable(name: "p", arg: 1, scope: !589, file: !588, line: 180, type: !28)
!595 = !DILocalVariable(name: "pn", arg: 2, scope: !589, file: !588, line: 180, type: !592)
!596 = !DILocalVariable(name: "s", arg: 3, scope: !589, file: !588, line: 180, type: !29)
!597 = !DILocalVariable(name: "n", scope: !589, file: !588, line: 182, type: !29)
!598 = !{!599}
!599 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!600 = !{!29, !26, !28}
!601 = distinct !DICompileUnit(language: DW_LANG_C99, file: !602, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !87)
!602 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!603 = distinct !DICompileUnit(language: DW_LANG_C99, file: !604, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !87, retainedTypes: !583)
!604 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!605 = distinct !DICompileUnit(language: DW_LANG_C99, file: !606, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !87, retainedTypes: !607)
!606 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!607 = !{!29}
!608 = distinct !DICompileUnit(language: DW_LANG_C99, file: !609, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !87)
!609 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!610 = distinct !DICompileUnit(language: DW_LANG_C99, file: !611, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !87, retainedTypes: !612)
!611 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!612 = !{!29, !32, !34, !37}
!613 = distinct !DICompileUnit(language: DW_LANG_C99, file: !614, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !87)
!614 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!615 = distinct !DICompileUnit(language: DW_LANG_C99, file: !616, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !87, retainedTypes: !583)
!616 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!617 = distinct !DICompileUnit(language: DW_LANG_C99, file: !618, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !87, retainedTypes: !583)
!618 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!619 = !{!"clang version 4.0.1 (tags/RELEASE_401/final)"}
!620 = !{i32 2, !"Dwarf Version", i32 4}
!621 = !{i32 2, !"Debug Info Version", i32 3}
!622 = !{i32 1, !"PIC Level", i32 2}
!623 = !{i32 1, !"PIE Level", i32 2}
!624 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 58, type: !625, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, variables: !627)
!625 = !DISubroutineType(types: !626)
!626 = !{null, !67}
!627 = !{!628}
!628 = !DILocalVariable(name: "status", arg: 1, scope: !624, file: !3, line: 58, type: !67)
!629 = !DIExpression()
!630 = !DILocation(line: 58, column: 12, scope: !624)
!631 = !DILocation(line: 60, column: 14, scope: !632)
!632 = distinct !DILexicalBlock(scope: !624, file: !3, line: 60, column: 7)
!633 = !DILocation(line: 60, column: 7, scope: !624)
!634 = !DILocation(line: 61, column: 5, scope: !635)
!635 = !DILexicalBlockFile(scope: !636, file: !3, discriminator: 1)
!636 = distinct !DILexicalBlock(scope: !632, file: !3, line: 61, column: 5)
!637 = !{!638, !638, i64 0}
!638 = !{!"any pointer", !639, i64 0}
!639 = !{!"omnipotent char", !640, i64 0}
!640 = !{!"Simple C/C++ TBAA"}
!641 = !DILocation(line: 61, column: 5, scope: !642)
!642 = !DILexicalBlockFile(scope: !636, file: !3, discriminator: 3)
!643 = !DILocation(line: 61, column: 5, scope: !644)
!644 = !DILexicalBlockFile(scope: !636, file: !3, discriminator: 2)
!645 = !DILocation(line: 64, column: 7, scope: !646)
!646 = distinct !DILexicalBlock(scope: !632, file: !3, line: 63, column: 5)
!647 = !DILocation(line: 64, column: 7, scope: !648)
!648 = !DILexicalBlockFile(scope: !646, file: !3, discriminator: 1)
!649 = !DILocation(line: 65, column: 7, scope: !646)
!650 = !DILocation(line: 65, column: 7, scope: !648)
!651 = !DILocation(line: 73, column: 7, scope: !646)
!652 = !DILocation(line: 73, column: 7, scope: !648)
!653 = !DILocation(line: 76, column: 7, scope: !646)
!654 = !DILocation(line: 76, column: 7, scope: !648)
!655 = !DILocation(line: 80, column: 7, scope: !646)
!656 = !DILocation(line: 80, column: 7, scope: !648)
!657 = !DILocation(line: 81, column: 7, scope: !646)
!658 = !DILocation(line: 81, column: 7, scope: !648)
!659 = !DILocation(line: 642, column: 15, scope: !42, inlinedAt: !660)
!660 = distinct !DILocation(line: 82, column: 7, scope: !646)
!661 = !DILocation(line: 651, column: 3, scope: !42, inlinedAt: !660)
!662 = !DILocation(line: 651, column: 3, scope: !663, inlinedAt: !660)
!663 = !DILexicalBlockFile(scope: !42, file: !43, discriminator: 1)
!664 = !DILocation(line: 655, column: 29, scope: !42, inlinedAt: !660)
!665 = !DILocation(line: 655, column: 15, scope: !42, inlinedAt: !660)
!666 = !DILocation(line: 656, column: 7, scope: !62, inlinedAt: !660)
!667 = !DILocation(line: 656, column: 19, scope: !62, inlinedAt: !660)
!668 = !DILocation(line: 656, column: 22, scope: !669, inlinedAt: !660)
!669 = !DILexicalBlockFile(scope: !62, file: !43, discriminator: 16)
!670 = !DILocation(line: 656, column: 7, scope: !671, inlinedAt: !660)
!671 = !DILexicalBlockFile(scope: !42, file: !43, discriminator: 16)
!672 = !DILocation(line: 662, column: 7, scope: !673, inlinedAt: !660)
!673 = distinct !DILexicalBlock(scope: !62, file: !43, line: 657, column: 5)
!674 = !DILocation(line: 662, column: 7, scope: !675, inlinedAt: !660)
!675 = !DILexicalBlockFile(scope: !673, file: !43, discriminator: 1)
!676 = !DILocation(line: 664, column: 5, scope: !673, inlinedAt: !660)
!677 = !DILocation(line: 665, column: 3, scope: !42, inlinedAt: !660)
!678 = !DILocation(line: 665, column: 3, scope: !663, inlinedAt: !660)
!679 = !DILocation(line: 667, column: 3, scope: !42, inlinedAt: !660)
!680 = !DILocation(line: 667, column: 3, scope: !663, inlinedAt: !660)
!681 = !DILocation(line: 84, column: 3, scope: !624)
!682 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 170, type: !683, isLocal: false, isDefinition: true, scopeLine: 171, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !686)
!683 = !DISubroutineType(types: !684)
!684 = !{!67, !67, !685}
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!686 = !{!687, !688, !689, !690, !691, !692, !693, !694}
!687 = !DILocalVariable(name: "argc", arg: 1, scope: !682, file: !3, line: 170, type: !67)
!688 = !DILocalVariable(name: "argv", arg: 2, scope: !682, file: !3, line: 170, type: !685)
!689 = !DILocalVariable(name: "c", scope: !682, file: !3, line: 172, type: !67)
!690 = !DILocalVariable(name: "args_specified", scope: !682, file: !3, line: 173, type: !97)
!691 = !DILocalVariable(name: "arg_data", scope: !682, file: !3, line: 174, type: !97)
!692 = !DILocalVariable(name: "arg_file_system", scope: !682, file: !3, line: 174, type: !97)
!693 = !DILocalVariable(name: "mode", scope: !682, file: !3, line: 175, type: !5)
!694 = !DILocalVariable(name: "ok", scope: !682, file: !3, line: 176, type: !97)
!695 = !DILocation(line: 170, column: 11, scope: !682)
!696 = !DILocation(line: 170, column: 24, scope: !682)
!697 = !DILocation(line: 174, column: 8, scope: !682)
!698 = !DILocation(line: 174, column: 26, scope: !682)
!699 = !DILocation(line: 176, column: 8, scope: !682)
!700 = !DILocation(line: 179, column: 21, scope: !682)
!701 = !DILocation(line: 179, column: 3, scope: !682)
!702 = !DILocation(line: 180, column: 3, scope: !682)
!703 = !DILocation(line: 181, column: 3, scope: !682)
!704 = !DILocation(line: 182, column: 3, scope: !682)
!705 = !DILocation(line: 184, column: 3, scope: !682)
!706 = !DILocation(line: 186, column: 3, scope: !682)
!707 = !DILocation(line: 186, column: 15, scope: !708)
!708 = !DILexicalBlockFile(scope: !682, file: !3, discriminator: 1)
!709 = !DILocation(line: 172, column: 7, scope: !682)
!710 = !DILocation(line: 186, column: 3, scope: !708)
!711 = distinct !{!711, !706, !712}
!712 = !DILocation(line: 206, column: 5, scope: !682)
!713 = !DILocation(line: 199, column: 9, scope: !714)
!714 = distinct !DILexicalBlock(scope: !715, file: !3, line: 190, column: 9)
!715 = distinct !DILexicalBlock(scope: !682, file: !3, line: 188, column: 5)
!716 = !DILocation(line: 201, column: 9, scope: !714)
!717 = !DILocation(line: 201, column: 9, scope: !718)
!718 = !DILexicalBlockFile(scope: !714, file: !3, discriminator: 1)
!719 = !DILocation(line: 204, column: 11, scope: !714)
!720 = !DILocation(line: 208, column: 20, scope: !682)
!721 = !{!722, !722, i64 0}
!722 = !{!"int", !639, i64 0}
!723 = !DILocation(line: 208, column: 27, scope: !682)
!724 = !DILocation(line: 210, column: 16, scope: !725)
!725 = distinct !DILexicalBlock(scope: !682, file: !3, line: 210, column: 7)
!726 = !DILocation(line: 210, column: 19, scope: !727)
!727 = !DILexicalBlockFile(scope: !725, file: !3, discriminator: 1)
!728 = !DILocation(line: 212, column: 7, scope: !729)
!729 = distinct !DILexicalBlock(scope: !725, file: !3, line: 211, column: 5)
!730 = !DILocation(line: 212, column: 7, scope: !731)
!731 = !DILexicalBlockFile(scope: !729, file: !3, discriminator: 1)
!732 = !DILocation(line: 216, column: 23, scope: !733)
!733 = distinct !DILexicalBlock(scope: !682, file: !3, line: 216, column: 7)
!734 = !DILocation(line: 217, column: 5, scope: !733)
!735 = !DILocation(line: 217, column: 5, scope: !736)
!736 = !DILexicalBlockFile(scope: !733, file: !3, discriminator: 1)
!737 = !DILocation(line: 219, column: 24, scope: !738)
!738 = distinct !DILexicalBlock(scope: !682, file: !3, line: 219, column: 7)
!739 = !DILocation(line: 232, column: 7, scope: !740)
!740 = !DILexicalBlockFile(scope: !741, file: !3, discriminator: 1)
!741 = distinct !DILexicalBlock(scope: !742, file: !3, line: 232, column: 7)
!742 = distinct !DILexicalBlock(scope: !743, file: !3, line: 231, column: 5)
!743 = distinct !DILexicalBlock(scope: !682, file: !3, line: 228, column: 7)
!744 = !DILocation(line: 229, column: 5, scope: !743)
!745 = !DILocation(line: 233, column: 31, scope: !746)
!746 = distinct !DILexicalBlock(scope: !741, file: !3, line: 232, column: 7)
!747 = !DILocalVariable(name: "file", arg: 2, scope: !748, file: !3, line: 91, type: !37)
!748 = distinct !DISubprogram(name: "sync_arg", scope: !3, file: !3, line: 91, type: !749, isLocal: true, isDefinition: true, scopeLine: 92, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !751)
!749 = !DISubroutineType(types: !750)
!750 = !{!97, !5, !37}
!751 = !{!752, !747, !753, !754, !755, !756, !759, !760}
!752 = !DILocalVariable(name: "mode", arg: 1, scope: !748, file: !3, line: 91, type: !5)
!753 = !DILocalVariable(name: "ret", scope: !748, file: !3, line: 93, type: !97)
!754 = !DILocalVariable(name: "open_flags", scope: !748, file: !3, line: 94, type: !67)
!755 = !DILocalVariable(name: "fd", scope: !748, file: !3, line: 95, type: !67)
!756 = !DILocalVariable(name: "rd_errno", scope: !757, file: !3, line: 110, type: !67)
!757 = distinct !DILexicalBlock(scope: !758, file: !3, line: 107, column: 5)
!758 = distinct !DILexicalBlock(scope: !748, file: !3, line: 106, column: 7)
!759 = !DILocalVariable(name: "fdflags", scope: !748, file: !3, line: 120, type: !67)
!760 = !DILocalVariable(name: "sync_status", scope: !761, file: !3, line: 131, type: !67)
!761 = distinct !DILexicalBlock(scope: !762, file: !3, line: 130, column: 5)
!762 = distinct !DILexicalBlock(scope: !748, file: !3, line: 129, column: 7)
!763 = !DILocation(line: 91, column: 44, scope: !748, inlinedAt: !764)
!764 = distinct !DILocation(line: 233, column: 15, scope: !746)
!765 = !DILocation(line: 93, column: 8, scope: !748, inlinedAt: !764)
!766 = !DILocation(line: 94, column: 7, scope: !748, inlinedAt: !764)
!767 = !DILocation(line: 105, column: 8, scope: !748, inlinedAt: !764)
!768 = !DILocation(line: 95, column: 7, scope: !748, inlinedAt: !764)
!769 = !DILocation(line: 106, column: 10, scope: !758, inlinedAt: !764)
!770 = !DILocation(line: 106, column: 7, scope: !748, inlinedAt: !764)
!771 = !DILocation(line: 110, column: 22, scope: !757, inlinedAt: !764)
!772 = !DILocation(line: 110, column: 11, scope: !757, inlinedAt: !764)
!773 = !DILocation(line: 112, column: 14, scope: !774, inlinedAt: !764)
!774 = distinct !DILexicalBlock(scope: !757, file: !3, line: 111, column: 11)
!775 = !DILocation(line: 113, column: 14, scope: !776, inlinedAt: !764)
!776 = distinct !DILexicalBlock(scope: !757, file: !3, line: 113, column: 11)
!777 = !DILocation(line: 113, column: 11, scope: !757, inlinedAt: !764)
!778 = !DILocation(line: 114, column: 29, scope: !776, inlinedAt: !764)
!779 = !DILocation(line: 114, column: 52, scope: !780, inlinedAt: !764)
!780 = !DILexicalBlockFile(scope: !776, file: !3, discriminator: 1)
!781 = !DILocation(line: 114, column: 9, scope: !782, inlinedAt: !764)
!782 = !DILexicalBlockFile(scope: !776, file: !3, discriminator: 2)
!783 = !DILocation(line: 114, column: 9, scope: !776, inlinedAt: !764)
!784 = !DILocation(line: 120, column: 17, scope: !748, inlinedAt: !764)
!785 = !DILocation(line: 120, column: 7, scope: !748, inlinedAt: !764)
!786 = !DILocation(line: 121, column: 15, scope: !787, inlinedAt: !764)
!787 = distinct !DILexicalBlock(scope: !748, file: !3, line: 121, column: 7)
!788 = !DILocation(line: 122, column: 7, scope: !787, inlinedAt: !764)
!789 = !DILocation(line: 122, column: 38, scope: !790, inlinedAt: !764)
!790 = !DILexicalBlockFile(scope: !787, file: !3, discriminator: 1)
!791 = !DILocation(line: 122, column: 10, scope: !790, inlinedAt: !764)
!792 = !DILocation(line: 122, column: 53, scope: !790, inlinedAt: !764)
!793 = !DILocation(line: 121, column: 7, scope: !794, inlinedAt: !764)
!794 = !DILexicalBlockFile(scope: !748, file: !3, discriminator: 1)
!795 = !DILocation(line: 124, column: 17, scope: !796, inlinedAt: !764)
!796 = distinct !DILexicalBlock(scope: !787, file: !3, line: 123, column: 5)
!797 = !DILocation(line: 124, column: 24, scope: !798, inlinedAt: !764)
!798 = !DILexicalBlockFile(scope: !796, file: !3, discriminator: 1)
!799 = !DILocation(line: 125, column: 14, scope: !796, inlinedAt: !764)
!800 = !DILocation(line: 124, column: 7, scope: !801, inlinedAt: !764)
!801 = !DILexicalBlockFile(scope: !796, file: !3, discriminator: 2)
!802 = !DILocation(line: 129, column: 7, scope: !748, inlinedAt: !764)
!803 = !DILocation(line: 131, column: 11, scope: !761, inlinedAt: !764)
!804 = !DILocation(line: 133, column: 7, scope: !761, inlinedAt: !764)
!805 = !DILocation(line: 136, column: 25, scope: !806, inlinedAt: !764)
!806 = distinct !DILexicalBlock(scope: !761, file: !3, line: 134, column: 9)
!807 = !DILocation(line: 137, column: 11, scope: !806, inlinedAt: !764)
!808 = !DILocation(line: 140, column: 25, scope: !806, inlinedAt: !764)
!809 = !DILocation(line: 141, column: 11, scope: !806, inlinedAt: !764)
!810 = !DILocation(line: 145, column: 25, scope: !806, inlinedAt: !764)
!811 = !DILocation(line: 146, column: 11, scope: !806, inlinedAt: !764)
!812 = !DILocation(line: 153, column: 23, scope: !813, inlinedAt: !764)
!813 = distinct !DILexicalBlock(scope: !761, file: !3, line: 153, column: 11)
!814 = !DILocation(line: 153, column: 11, scope: !761, inlinedAt: !764)
!815 = !DILocation(line: 155, column: 21, scope: !816, inlinedAt: !764)
!816 = distinct !DILexicalBlock(scope: !813, file: !3, line: 154, column: 9)
!817 = !DILocation(line: 155, column: 28, scope: !818, inlinedAt: !764)
!818 = !DILexicalBlockFile(scope: !816, file: !3, discriminator: 1)
!819 = !DILocation(line: 155, column: 51, scope: !820, inlinedAt: !764)
!820 = !DILexicalBlockFile(scope: !816, file: !3, discriminator: 2)
!821 = !DILocation(line: 155, column: 11, scope: !822, inlinedAt: !764)
!822 = !DILexicalBlockFile(scope: !816, file: !3, discriminator: 3)
!823 = !DILocation(line: 157, column: 9, scope: !816, inlinedAt: !764)
!824 = !DILocation(line: 160, column: 7, scope: !825, inlinedAt: !764)
!825 = distinct !DILexicalBlock(scope: !748, file: !3, line: 160, column: 7)
!826 = !DILocation(line: 160, column: 18, scope: !825, inlinedAt: !764)
!827 = !DILocation(line: 160, column: 7, scope: !748, inlinedAt: !764)
!828 = !DILocation(line: 162, column: 17, scope: !829, inlinedAt: !764)
!829 = distinct !DILexicalBlock(scope: !825, file: !3, line: 161, column: 5)
!830 = !DILocation(line: 162, column: 24, scope: !831, inlinedAt: !764)
!831 = !DILexicalBlockFile(scope: !829, file: !3, discriminator: 1)
!832 = !DILocation(line: 162, column: 49, scope: !833, inlinedAt: !764)
!833 = !DILexicalBlockFile(scope: !829, file: !3, discriminator: 2)
!834 = !DILocation(line: 162, column: 7, scope: !835, inlinedAt: !764)
!835 = !DILexicalBlockFile(scope: !829, file: !3, discriminator: 3)
!836 = !DILocation(line: 164, column: 5, scope: !829, inlinedAt: !764)
!837 = !DILocation(line: 166, column: 10, scope: !748, inlinedAt: !764)
!838 = !DILocation(line: 233, column: 15, scope: !746)
!839 = !DILocation(line: 233, column: 12, scope: !746)
!840 = !DILocation(line: 232, column: 35, scope: !841)
!841 = !DILexicalBlockFile(scope: !746, file: !3, discriminator: 2)
!842 = !DILocation(line: 232, column: 21, scope: !843)
!843 = !DILexicalBlockFile(scope: !746, file: !3, discriminator: 1)
!844 = distinct !{!844, !845, !846}
!845 = !DILocation(line: 232, column: 7, scope: !741)
!846 = !DILocation(line: 233, column: 43, scope: !741)
!847 = !DILocation(line: 237, column: 1, scope: !682)
!848 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !96, file: !96, line: 41, type: !44, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !91, variables: !849)
!849 = !{!850}
!850 = !DILocalVariable(name: "file", arg: 1, scope: !848, file: !96, line: 41, type: !37)
!851 = !DILocation(line: 41, column: 41, scope: !848)
!852 = !DILocation(line: 43, column: 13, scope: !848)
!853 = !DILocation(line: 44, column: 1, scope: !848)
!854 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !96, file: !96, line: 78, type: !855, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !91, variables: !857)
!855 = !DISubroutineType(types: !856)
!856 = !{null, !97}
!857 = !{!858}
!858 = !DILocalVariable(name: "ignore", arg: 1, scope: !854, file: !96, line: 78, type: !97)
!859 = !DIExpression(DW_OP_LLVM_fragment, 0, 1)
!860 = !DILocation(line: 78, column: 37, scope: !854)
!861 = !DILocation(line: 80, column: 16, scope: !854)
!862 = !{!863, !863, i64 0}
!863 = !{!"_Bool", !639, i64 0}
!864 = !DILocation(line: 81, column: 1, scope: !854)
!865 = distinct !DISubprogram(name: "close_stdout", scope: !96, file: !96, line: 107, type: !866, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !91, variables: !868)
!866 = !DISubroutineType(types: !867)
!867 = !{null}
!868 = !{!869}
!869 = !DILocalVariable(name: "write_error", scope: !870, file: !96, line: 112, type: !37)
!870 = distinct !DILexicalBlock(scope: !871, file: !96, line: 111, column: 5)
!871 = distinct !DILexicalBlock(scope: !865, file: !96, line: 109, column: 7)
!872 = !DILocation(line: 109, column: 21, scope: !871)
!873 = !DILocation(line: 109, column: 7, scope: !871)
!874 = !DILocation(line: 109, column: 29, scope: !871)
!875 = !DILocation(line: 110, column: 7, scope: !871)
!876 = !DILocation(line: 110, column: 12, scope: !877)
!877 = !DILexicalBlockFile(scope: !871, file: !96, discriminator: 1)
!878 = !{i8 0, i8 2}
!879 = !DILocation(line: 114, column: 19, scope: !880)
!880 = distinct !DILexicalBlock(scope: !870, file: !96, line: 113, column: 11)
!881 = !DILocation(line: 110, column: 25, scope: !877)
!882 = !DILocation(line: 110, column: 28, scope: !883)
!883 = !DILexicalBlockFile(scope: !871, file: !96, discriminator: 2)
!884 = !DILocation(line: 110, column: 34, scope: !883)
!885 = !DILocation(line: 109, column: 7, scope: !886)
!886 = !DILexicalBlockFile(scope: !865, file: !96, discriminator: 1)
!887 = !DILocation(line: 112, column: 33, scope: !870)
!888 = !DILocation(line: 112, column: 19, scope: !870)
!889 = !DILocation(line: 113, column: 11, scope: !880)
!890 = !DILocation(line: 113, column: 11, scope: !870)
!891 = !DILocation(line: 114, column: 36, scope: !892)
!892 = !DILexicalBlockFile(scope: !880, file: !96, discriminator: 1)
!893 = !DILocation(line: 114, column: 9, scope: !894)
!894 = !DILexicalBlockFile(scope: !880, file: !96, discriminator: 2)
!895 = !DILocation(line: 114, column: 9, scope: !880)
!896 = !DILocation(line: 117, column: 9, scope: !892)
!897 = !DILocation(line: 119, column: 14, scope: !870)
!898 = !DILocation(line: 119, column: 7, scope: !870)
!899 = !DILocation(line: 122, column: 22, scope: !900)
!900 = distinct !DILexicalBlock(scope: !865, file: !96, line: 122, column: 8)
!901 = !DILocation(line: 122, column: 8, scope: !900)
!902 = !DILocation(line: 122, column: 30, scope: !900)
!903 = !DILocation(line: 122, column: 8, scope: !865)
!904 = !DILocation(line: 123, column: 13, scope: !900)
!905 = !DILocation(line: 123, column: 6, scope: !900)
!906 = !DILocation(line: 124, column: 1, scope: !865)
!907 = distinct !DISubprogram(name: "set_program_name", scope: !111, file: !111, line: 39, type: !44, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !107, variables: !908)
!908 = !{!909, !910, !911}
!909 = !DILocalVariable(name: "argv0", arg: 1, scope: !907, file: !111, line: 39, type: !37)
!910 = !DILocalVariable(name: "slash", scope: !907, file: !111, line: 46, type: !37)
!911 = !DILocalVariable(name: "base", scope: !907, file: !111, line: 47, type: !37)
!912 = !DILocation(line: 39, column: 31, scope: !907)
!913 = !DILocation(line: 51, column: 13, scope: !914)
!914 = distinct !DILexicalBlock(scope: !907, file: !111, line: 51, column: 7)
!915 = !DILocation(line: 51, column: 7, scope: !907)
!916 = !DILocation(line: 55, column: 14, scope: !917)
!917 = distinct !DILexicalBlock(scope: !914, file: !111, line: 52, column: 5)
!918 = !DILocation(line: 54, column: 7, scope: !917)
!919 = !DILocation(line: 56, column: 7, scope: !917)
!920 = !DILocation(line: 59, column: 11, scope: !907)
!921 = !DILocation(line: 46, column: 15, scope: !907)
!922 = !DILocation(line: 60, column: 17, scope: !907)
!923 = !DILocation(line: 60, column: 33, scope: !924)
!924 = !DILexicalBlockFile(scope: !907, file: !111, discriminator: 1)
!925 = !DILocation(line: 60, column: 11, scope: !907)
!926 = !DILocation(line: 47, column: 15, scope: !907)
!927 = !DILocation(line: 61, column: 12, scope: !928)
!928 = distinct !DILexicalBlock(scope: !907, file: !111, line: 61, column: 7)
!929 = !DILocation(line: 61, column: 20, scope: !928)
!930 = !DILocation(line: 61, column: 25, scope: !928)
!931 = !DILocation(line: 61, column: 28, scope: !932)
!932 = !DILexicalBlockFile(scope: !928, file: !111, discriminator: 1)
!933 = !DILocation(line: 61, column: 61, scope: !932)
!934 = !DILocation(line: 61, column: 7, scope: !924)
!935 = !DILocation(line: 64, column: 11, scope: !936)
!936 = distinct !DILexicalBlock(scope: !937, file: !111, line: 64, column: 11)
!937 = distinct !DILexicalBlock(scope: !928, file: !111, line: 62, column: 5)
!938 = !DILocation(line: 64, column: 36, scope: !936)
!939 = !DILocation(line: 64, column: 11, scope: !937)
!940 = !DILocation(line: 66, column: 24, scope: !941)
!941 = distinct !DILexicalBlock(scope: !936, file: !111, line: 65, column: 9)
!942 = !DILocation(line: 70, column: 41, scope: !941)
!943 = !DILocation(line: 72, column: 9, scope: !941)
!944 = !DILocation(line: 84, column: 16, scope: !907)
!945 = !DILocation(line: 90, column: 27, scope: !907)
!946 = !DILocation(line: 92, column: 1, scope: !907)
!947 = distinct !DISubprogram(name: "clone_quoting_options", scope: !142, file: !142, line: 114, type: !948, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !951)
!948 = !DISubroutineType(types: !949)
!949 = !{!950, !950}
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!951 = !{!952, !953, !954}
!952 = !DILocalVariable(name: "o", arg: 1, scope: !947, file: !142, line: 114, type: !950)
!953 = !DILocalVariable(name: "e", scope: !947, file: !142, line: 116, type: !67)
!954 = !DILocalVariable(name: "p", scope: !947, file: !142, line: 117, type: !950)
!955 = !DILocation(line: 114, column: 48, scope: !947)
!956 = !DILocation(line: 116, column: 11, scope: !947)
!957 = !DILocation(line: 116, column: 7, scope: !947)
!958 = !DILocation(line: 117, column: 40, scope: !947)
!959 = !DILocation(line: 117, column: 40, scope: !960)
!960 = !DILexicalBlockFile(scope: !947, file: !142, discriminator: 3)
!961 = !DILocation(line: 117, column: 31, scope: !960)
!962 = !DILocation(line: 117, column: 27, scope: !947)
!963 = !DILocation(line: 119, column: 9, scope: !947)
!964 = !DILocation(line: 120, column: 3, scope: !947)
!965 = distinct !DISubprogram(name: "get_quoting_style", scope: !142, file: !142, line: 125, type: !966, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !970)
!966 = !DISubroutineType(types: !967)
!967 = !{!11, !968}
!968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !969, size: 64)
!969 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !149)
!970 = !{!971}
!971 = !DILocalVariable(name: "o", arg: 1, scope: !965, file: !142, line: 125, type: !968)
!972 = !DILocation(line: 125, column: 50, scope: !965)
!973 = !DILocation(line: 127, column: 11, scope: !965)
!974 = !DILocation(line: 127, column: 46, scope: !975)
!975 = !DILexicalBlockFile(scope: !965, file: !142, discriminator: 3)
!976 = !{!977, !639, i64 0}
!977 = !{!"quoting_options", !639, i64 0, !722, i64 4, !639, i64 8, !638, i64 40, !638, i64 48}
!978 = !DILocation(line: 127, column: 3, scope: !975)
!979 = distinct !DISubprogram(name: "set_quoting_style", scope: !142, file: !142, line: 133, type: !980, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !982)
!980 = !DISubroutineType(types: !981)
!981 = !{null, !950, !11}
!982 = !{!983, !984}
!983 = !DILocalVariable(name: "o", arg: 1, scope: !979, file: !142, line: 133, type: !950)
!984 = !DILocalVariable(name: "s", arg: 2, scope: !979, file: !142, line: 133, type: !11)
!985 = !DILocation(line: 133, column: 44, scope: !979)
!986 = !DILocation(line: 133, column: 66, scope: !979)
!987 = !DILocation(line: 135, column: 4, scope: !979)
!988 = !DILocation(line: 135, column: 39, scope: !989)
!989 = !DILexicalBlockFile(scope: !979, file: !142, discriminator: 3)
!990 = !DILocation(line: 135, column: 45, scope: !989)
!991 = !DILocation(line: 136, column: 1, scope: !979)
!992 = distinct !DISubprogram(name: "set_char_quoting", scope: !142, file: !142, line: 144, type: !993, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !995)
!993 = !DISubroutineType(types: !994)
!994 = !{!67, !950, !27, !67}
!995 = !{!996, !997, !998, !999, !1000, !1002, !1003}
!996 = !DILocalVariable(name: "o", arg: 1, scope: !992, file: !142, line: 144, type: !950)
!997 = !DILocalVariable(name: "c", arg: 2, scope: !992, file: !142, line: 144, type: !27)
!998 = !DILocalVariable(name: "i", arg: 3, scope: !992, file: !142, line: 144, type: !67)
!999 = !DILocalVariable(name: "uc", scope: !992, file: !142, line: 146, type: !36)
!1000 = !DILocalVariable(name: "p", scope: !992, file: !142, line: 147, type: !1001)
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!1002 = !DILocalVariable(name: "shift", scope: !992, file: !142, line: 149, type: !67)
!1003 = !DILocalVariable(name: "r", scope: !992, file: !142, line: 150, type: !67)
!1004 = !DILocation(line: 144, column: 43, scope: !992)
!1005 = !DILocation(line: 144, column: 51, scope: !992)
!1006 = !DILocation(line: 144, column: 58, scope: !992)
!1007 = !DILocation(line: 146, column: 17, scope: !992)
!1008 = !DILocation(line: 148, column: 6, scope: !992)
!1009 = !DILocation(line: 148, column: 62, scope: !1010)
!1010 = !DILexicalBlockFile(scope: !992, file: !142, discriminator: 3)
!1011 = !DILocation(line: 148, column: 57, scope: !1010)
!1012 = !DILocation(line: 147, column: 17, scope: !992)
!1013 = !DILocation(line: 149, column: 18, scope: !992)
!1014 = !DILocation(line: 149, column: 15, scope: !992)
!1015 = !DILocation(line: 149, column: 7, scope: !992)
!1016 = !DILocation(line: 150, column: 12, scope: !992)
!1017 = !DILocation(line: 150, column: 15, scope: !992)
!1018 = !DILocation(line: 150, column: 25, scope: !992)
!1019 = !DILocation(line: 150, column: 7, scope: !992)
!1020 = !DILocation(line: 151, column: 13, scope: !992)
!1021 = !DILocation(line: 151, column: 18, scope: !992)
!1022 = !DILocation(line: 151, column: 23, scope: !992)
!1023 = !DILocation(line: 151, column: 6, scope: !992)
!1024 = !DILocation(line: 152, column: 3, scope: !992)
!1025 = distinct !DISubprogram(name: "set_quoting_flags", scope: !142, file: !142, line: 160, type: !1026, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !1028)
!1026 = !DISubroutineType(types: !1027)
!1027 = !{!67, !950, !67}
!1028 = !{!1029, !1030, !1031}
!1029 = !DILocalVariable(name: "o", arg: 1, scope: !1025, file: !142, line: 160, type: !950)
!1030 = !DILocalVariable(name: "i", arg: 2, scope: !1025, file: !142, line: 160, type: !67)
!1031 = !DILocalVariable(name: "r", scope: !1025, file: !142, line: 162, type: !67)
!1032 = !DILocation(line: 160, column: 44, scope: !1025)
!1033 = !DILocation(line: 160, column: 51, scope: !1025)
!1034 = !DILocation(line: 163, column: 8, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !1025, file: !142, line: 163, column: 7)
!1036 = !DILocation(line: 163, column: 7, scope: !1025)
!1037 = !DILocation(line: 165, column: 10, scope: !1025)
!1038 = !{!977, !722, i64 4}
!1039 = !DILocation(line: 162, column: 7, scope: !1025)
!1040 = !DILocation(line: 166, column: 12, scope: !1025)
!1041 = !DILocation(line: 167, column: 3, scope: !1025)
!1042 = distinct !DISubprogram(name: "set_custom_quoting", scope: !142, file: !142, line: 171, type: !1043, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !1045)
!1043 = !DISubroutineType(types: !1044)
!1044 = !{null, !950, !37, !37}
!1045 = !{!1046, !1047, !1048}
!1046 = !DILocalVariable(name: "o", arg: 1, scope: !1042, file: !142, line: 171, type: !950)
!1047 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1042, file: !142, line: 172, type: !37)
!1048 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1042, file: !142, line: 172, type: !37)
!1049 = !DILocation(line: 171, column: 45, scope: !1042)
!1050 = !DILocation(line: 172, column: 33, scope: !1042)
!1051 = !DILocation(line: 172, column: 57, scope: !1042)
!1052 = !DILocation(line: 174, column: 8, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !1042, file: !142, line: 174, column: 7)
!1054 = !DILocation(line: 174, column: 7, scope: !1042)
!1055 = !DILocation(line: 176, column: 6, scope: !1042)
!1056 = !DILocation(line: 176, column: 12, scope: !1042)
!1057 = !DILocation(line: 177, column: 8, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !1042, file: !142, line: 177, column: 7)
!1059 = !DILocation(line: 177, column: 23, scope: !1060)
!1060 = !DILexicalBlockFile(scope: !1058, file: !142, discriminator: 1)
!1061 = !DILocation(line: 177, column: 19, scope: !1058)
!1062 = !DILocation(line: 178, column: 5, scope: !1058)
!1063 = !DILocation(line: 179, column: 6, scope: !1042)
!1064 = !DILocation(line: 179, column: 17, scope: !1042)
!1065 = !{!977, !638, i64 40}
!1066 = !DILocation(line: 180, column: 6, scope: !1042)
!1067 = !DILocation(line: 180, column: 18, scope: !1042)
!1068 = !{!977, !638, i64 48}
!1069 = !DILocation(line: 181, column: 1, scope: !1042)
!1070 = distinct !DISubprogram(name: "quotearg_buffer", scope: !142, file: !142, line: 776, type: !1071, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !1073)
!1071 = !DISubroutineType(types: !1072)
!1072 = !{!29, !26, !29, !37, !29, !968}
!1073 = !{!1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081}
!1074 = !DILocalVariable(name: "buffer", arg: 1, scope: !1070, file: !142, line: 776, type: !26)
!1075 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1070, file: !142, line: 776, type: !29)
!1076 = !DILocalVariable(name: "arg", arg: 3, scope: !1070, file: !142, line: 777, type: !37)
!1077 = !DILocalVariable(name: "argsize", arg: 4, scope: !1070, file: !142, line: 777, type: !29)
!1078 = !DILocalVariable(name: "o", arg: 5, scope: !1070, file: !142, line: 778, type: !968)
!1079 = !DILocalVariable(name: "p", scope: !1070, file: !142, line: 780, type: !968)
!1080 = !DILocalVariable(name: "e", scope: !1070, file: !142, line: 781, type: !67)
!1081 = !DILocalVariable(name: "r", scope: !1070, file: !142, line: 782, type: !29)
!1082 = !DILocation(line: 776, column: 24, scope: !1070)
!1083 = !DILocation(line: 776, column: 39, scope: !1070)
!1084 = !DILocation(line: 777, column: 30, scope: !1070)
!1085 = !DILocation(line: 777, column: 42, scope: !1070)
!1086 = !DILocation(line: 778, column: 48, scope: !1070)
!1087 = !DILocation(line: 780, column: 37, scope: !1070)
!1088 = !DILocation(line: 780, column: 33, scope: !1070)
!1089 = !DILocation(line: 781, column: 11, scope: !1070)
!1090 = !DILocation(line: 781, column: 7, scope: !1070)
!1091 = !DILocation(line: 783, column: 43, scope: !1070)
!1092 = !DILocation(line: 783, column: 53, scope: !1070)
!1093 = !DILocation(line: 783, column: 60, scope: !1070)
!1094 = !DILocation(line: 784, column: 43, scope: !1070)
!1095 = !DILocation(line: 784, column: 58, scope: !1070)
!1096 = !DILocation(line: 782, column: 14, scope: !1070)
!1097 = !DILocation(line: 782, column: 10, scope: !1070)
!1098 = !DILocation(line: 785, column: 9, scope: !1070)
!1099 = !DILocation(line: 786, column: 3, scope: !1070)
!1100 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !142, file: !142, line: 248, type: !1101, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !1105)
!1101 = !DISubroutineType(types: !1102)
!1102 = !{!29, !26, !29, !37, !29, !11, !67, !1103, !37, !37}
!1103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1104, size: 64)
!1104 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !155)
!1105 = !{!1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1130, !1131, !1132, !1133, !1134, !1137, !1138, !1155, !1158, !1159, !1166}
!1106 = !DILocalVariable(name: "buffer", arg: 1, scope: !1100, file: !142, line: 248, type: !26)
!1107 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1100, file: !142, line: 248, type: !29)
!1108 = !DILocalVariable(name: "arg", arg: 3, scope: !1100, file: !142, line: 249, type: !37)
!1109 = !DILocalVariable(name: "argsize", arg: 4, scope: !1100, file: !142, line: 249, type: !29)
!1110 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1100, file: !142, line: 250, type: !11)
!1111 = !DILocalVariable(name: "flags", arg: 6, scope: !1100, file: !142, line: 250, type: !67)
!1112 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1100, file: !142, line: 251, type: !1103)
!1113 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1100, file: !142, line: 252, type: !37)
!1114 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1100, file: !142, line: 253, type: !37)
!1115 = !DILocalVariable(name: "i", scope: !1100, file: !142, line: 255, type: !29)
!1116 = !DILocalVariable(name: "len", scope: !1100, file: !142, line: 256, type: !29)
!1117 = !DILocalVariable(name: "orig_buffersize", scope: !1100, file: !142, line: 257, type: !29)
!1118 = !DILocalVariable(name: "quote_string", scope: !1100, file: !142, line: 258, type: !37)
!1119 = !DILocalVariable(name: "quote_string_len", scope: !1100, file: !142, line: 259, type: !29)
!1120 = !DILocalVariable(name: "backslash_escapes", scope: !1100, file: !142, line: 260, type: !97)
!1121 = !DILocalVariable(name: "unibyte_locale", scope: !1100, file: !142, line: 261, type: !97)
!1122 = !DILocalVariable(name: "elide_outer_quotes", scope: !1100, file: !142, line: 262, type: !97)
!1123 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1100, file: !142, line: 263, type: !97)
!1124 = !DILocalVariable(name: "encountered_single_quote", scope: !1100, file: !142, line: 264, type: !97)
!1125 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1100, file: !142, line: 265, type: !97)
!1126 = !DILocalVariable(name: "c", scope: !1127, file: !142, line: 394, type: !36)
!1127 = distinct !DILexicalBlock(scope: !1128, file: !142, line: 393, column: 5)
!1128 = distinct !DILexicalBlock(scope: !1129, file: !142, line: 392, column: 3)
!1129 = distinct !DILexicalBlock(scope: !1100, file: !142, line: 392, column: 3)
!1130 = !DILocalVariable(name: "esc", scope: !1127, file: !142, line: 395, type: !36)
!1131 = !DILocalVariable(name: "is_right_quote", scope: !1127, file: !142, line: 396, type: !97)
!1132 = !DILocalVariable(name: "escaping", scope: !1127, file: !142, line: 397, type: !97)
!1133 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1127, file: !142, line: 398, type: !97)
!1134 = !DILocalVariable(name: "m", scope: !1135, file: !142, line: 602, type: !29)
!1135 = distinct !DILexicalBlock(scope: !1136, file: !142, line: 600, column: 11)
!1136 = distinct !DILexicalBlock(scope: !1127, file: !142, line: 418, column: 9)
!1137 = !DILocalVariable(name: "printable", scope: !1135, file: !142, line: 604, type: !97)
!1138 = !DILocalVariable(name: "mbstate", scope: !1139, file: !142, line: 613, type: !1141)
!1139 = distinct !DILexicalBlock(scope: !1140, file: !142, line: 612, column: 15)
!1140 = distinct !DILexicalBlock(scope: !1135, file: !142, line: 606, column: 17)
!1141 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1142, line: 107, baseType: !1143)
!1142 = !DIFile(filename: "/usr/include/wchar.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1143 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1142, line: 95, baseType: !1144)
!1144 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1142, line: 83, size: 64, elements: !1145)
!1145 = !{!1146, !1147}
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1144, file: !1142, line: 85, baseType: !67, size: 32)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1144, file: !1142, line: 94, baseType: !1148, size: 32, offset: 32)
!1148 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1144, file: !1142, line: 86, size: 32, elements: !1149)
!1149 = !{!1150, !1151}
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1148, file: !1142, line: 89, baseType: !155, size: 32)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1148, file: !1142, line: 93, baseType: !1152, size: 32)
!1152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 32, elements: !1153)
!1153 = !{!1154}
!1154 = !DISubrange(count: 4)
!1155 = !DILocalVariable(name: "w", scope: !1156, file: !142, line: 623, type: !1157)
!1156 = distinct !DILexicalBlock(scope: !1139, file: !142, line: 622, column: 19)
!1157 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !30, line: 90, baseType: !67)
!1158 = !DILocalVariable(name: "bytes", scope: !1156, file: !142, line: 624, type: !29)
!1159 = !DILocalVariable(name: "j", scope: !1160, file: !142, line: 649, type: !29)
!1160 = distinct !DILexicalBlock(scope: !1161, file: !142, line: 648, column: 27)
!1161 = distinct !DILexicalBlock(scope: !1162, file: !142, line: 646, column: 29)
!1162 = distinct !DILexicalBlock(scope: !1163, file: !142, line: 641, column: 23)
!1163 = distinct !DILexicalBlock(scope: !1164, file: !142, line: 633, column: 30)
!1164 = distinct !DILexicalBlock(scope: !1165, file: !142, line: 628, column: 30)
!1165 = distinct !DILexicalBlock(scope: !1156, file: !142, line: 626, column: 25)
!1166 = !DILocalVariable(name: "ilim", scope: !1167, file: !142, line: 676, type: !29)
!1167 = distinct !DILexicalBlock(scope: !1168, file: !142, line: 673, column: 15)
!1168 = distinct !DILexicalBlock(scope: !1135, file: !142, line: 672, column: 17)
!1169 = !DILocation(line: 248, column: 33, scope: !1100)
!1170 = !DILocation(line: 248, column: 48, scope: !1100)
!1171 = !DILocation(line: 249, column: 39, scope: !1100)
!1172 = !DILocation(line: 249, column: 51, scope: !1100)
!1173 = !DILocation(line: 250, column: 46, scope: !1100)
!1174 = !DILocation(line: 250, column: 65, scope: !1100)
!1175 = !DILocation(line: 251, column: 47, scope: !1100)
!1176 = !DILocation(line: 252, column: 39, scope: !1100)
!1177 = !DILocation(line: 253, column: 39, scope: !1100)
!1178 = !DILocation(line: 256, column: 10, scope: !1100)
!1179 = !DILocation(line: 257, column: 10, scope: !1100)
!1180 = !DILocation(line: 258, column: 15, scope: !1100)
!1181 = !DILocation(line: 259, column: 10, scope: !1100)
!1182 = !DILocation(line: 260, column: 8, scope: !1100)
!1183 = !DILocation(line: 261, column: 25, scope: !1100)
!1184 = !DILocation(line: 261, column: 36, scope: !1100)
!1185 = !DILocation(line: 262, column: 8, scope: !1100)
!1186 = !DILocation(line: 263, column: 8, scope: !1100)
!1187 = !DILocation(line: 264, column: 8, scope: !1100)
!1188 = !DILocation(line: 265, column: 8, scope: !1100)
!1189 = !DILocation(line: 265, column: 3, scope: !1100)
!1190 = !DILocation(line: 308, column: 3, scope: !1100)
!1191 = !DILocation(line: 315, column: 11, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1100, file: !142, line: 309, column: 5)
!1193 = !DILocation(line: 315, column: 12, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !1192, file: !142, line: 315, column: 11)
!1195 = !DILocation(line: 316, column: 9, scope: !1196)
!1196 = !DILexicalBlockFile(scope: !1197, file: !142, discriminator: 1)
!1197 = distinct !DILexicalBlock(scope: !1198, file: !142, line: 316, column: 9)
!1198 = distinct !DILexicalBlock(scope: !1194, file: !142, line: 316, column: 9)
!1199 = !DILocation(line: 316, column: 9, scope: !1200)
!1200 = !DILexicalBlockFile(scope: !1198, file: !142, discriminator: 1)
!1201 = !DILocation(line: 316, column: 9, scope: !1202)
!1202 = !DILexicalBlockFile(scope: !1197, file: !142, discriminator: 2)
!1203 = !{!639, !639, i64 0}
!1204 = !DILocation(line: 354, column: 26, scope: !1205)
!1205 = distinct !DILexicalBlock(scope: !1206, file: !142, line: 332, column: 11)
!1206 = distinct !DILexicalBlock(scope: !1207, file: !142, line: 331, column: 13)
!1207 = distinct !DILexicalBlock(scope: !1192, file: !142, line: 330, column: 7)
!1208 = !DILocation(line: 355, column: 27, scope: !1205)
!1209 = !DILocation(line: 356, column: 11, scope: !1205)
!1210 = !DILocation(line: 357, column: 14, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !1207, file: !142, line: 357, column: 13)
!1212 = !DILocation(line: 357, column: 13, scope: !1207)
!1213 = !DILocation(line: 358, column: 43, scope: !1214)
!1214 = !DILexicalBlockFile(scope: !1215, file: !142, discriminator: 1)
!1215 = distinct !DILexicalBlock(scope: !1216, file: !142, line: 358, column: 11)
!1216 = distinct !DILexicalBlock(scope: !1211, file: !142, line: 358, column: 11)
!1217 = !DILocation(line: 358, column: 11, scope: !1218)
!1218 = !DILexicalBlockFile(scope: !1216, file: !142, discriminator: 1)
!1219 = !DILocation(line: 359, column: 13, scope: !1220)
!1220 = !DILexicalBlockFile(scope: !1221, file: !142, discriminator: 1)
!1221 = distinct !DILexicalBlock(scope: !1222, file: !142, line: 359, column: 13)
!1222 = distinct !DILexicalBlock(scope: !1215, file: !142, line: 359, column: 13)
!1223 = !DILocation(line: 359, column: 13, scope: !1224)
!1224 = !DILexicalBlockFile(scope: !1222, file: !142, discriminator: 1)
!1225 = !DILocation(line: 359, column: 13, scope: !1226)
!1226 = !DILexicalBlockFile(scope: !1221, file: !142, discriminator: 2)
!1227 = !DILocation(line: 359, column: 13, scope: !1228)
!1228 = !DILexicalBlockFile(scope: !1222, file: !142, discriminator: 3)
!1229 = !DILocation(line: 358, column: 70, scope: !1230)
!1230 = !DILexicalBlockFile(scope: !1215, file: !142, discriminator: 2)
!1231 = distinct !{!1231, !1232, !1233}
!1232 = !DILocation(line: 358, column: 11, scope: !1216)
!1233 = !DILocation(line: 359, column: 13, scope: !1216)
!1234 = !DILocation(line: 362, column: 28, scope: !1207)
!1235 = !DILocation(line: 364, column: 7, scope: !1192)
!1236 = !DILocation(line: 367, column: 7, scope: !1192)
!1237 = !DILocation(line: 370, column: 7, scope: !1192)
!1238 = !DILocation(line: 373, column: 12, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1192, file: !142, line: 373, column: 11)
!1240 = !DILocation(line: 373, column: 11, scope: !1192)
!1241 = !DILocation(line: 378, column: 12, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !1192, file: !142, line: 378, column: 11)
!1243 = !DILocation(line: 378, column: 11, scope: !1192)
!1244 = !DILocation(line: 379, column: 9, scope: !1245)
!1245 = !DILexicalBlockFile(scope: !1246, file: !142, discriminator: 1)
!1246 = distinct !DILexicalBlock(scope: !1247, file: !142, line: 379, column: 9)
!1247 = distinct !DILexicalBlock(scope: !1242, file: !142, line: 379, column: 9)
!1248 = !DILocation(line: 379, column: 9, scope: !1249)
!1249 = !DILexicalBlockFile(scope: !1247, file: !142, discriminator: 1)
!1250 = !DILocation(line: 379, column: 9, scope: !1251)
!1251 = !DILexicalBlockFile(scope: !1246, file: !142, discriminator: 2)
!1252 = !DILocation(line: 386, column: 7, scope: !1192)
!1253 = !DILocation(line: 389, column: 7, scope: !1192)
!1254 = !DILocation(line: 255, column: 10, scope: !1100)
!1255 = !DILocation(line: 392, column: 8, scope: !1129)
!1256 = !DILocation(line: 392, column: 27, scope: !1257)
!1257 = !DILexicalBlockFile(scope: !1128, file: !142, discriminator: 1)
!1258 = !DILocation(line: 392, column: 19, scope: !1257)
!1259 = !DILocation(line: 392, column: 60, scope: !1260)
!1260 = !DILexicalBlockFile(scope: !1128, file: !142, discriminator: 3)
!1261 = !DILocation(line: 392, column: 3, scope: !1262)
!1262 = !DILexicalBlockFile(scope: !1129, file: !142, discriminator: 4)
!1263 = !DILocation(line: 392, column: 41, scope: !1264)
!1264 = !DILexicalBlockFile(scope: !1128, file: !142, discriminator: 2)
!1265 = !DILocation(line: 392, column: 48, scope: !1264)
!1266 = !DILocation(line: 396, column: 12, scope: !1127)
!1267 = !DILocation(line: 397, column: 12, scope: !1127)
!1268 = !DILocation(line: 398, column: 12, scope: !1127)
!1269 = !DILocation(line: 401, column: 11, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1127, file: !142, line: 400, column: 11)
!1271 = !DILocation(line: 403, column: 17, scope: !1272)
!1272 = !DILexicalBlockFile(scope: !1270, file: !142, discriminator: 1)
!1273 = !DILocation(line: 404, column: 39, scope: !1270)
!1274 = !DILocation(line: 408, column: 32, scope: !1270)
!1275 = !DILocation(line: 404, column: 19, scope: !1276)
!1276 = !DILexicalBlockFile(scope: !1270, file: !142, discriminator: 2)
!1277 = !DILocation(line: 404, column: 15, scope: !1278)
!1278 = !DILexicalBlockFile(scope: !1270, file: !142, discriminator: 4)
!1279 = !DILocation(line: 409, column: 11, scope: !1270)
!1280 = !DILocation(line: 409, column: 26, scope: !1272)
!1281 = !DILocation(line: 409, column: 14, scope: !1272)
!1282 = !DILocation(line: 400, column: 11, scope: !1283)
!1283 = !DILexicalBlockFile(scope: !1127, file: !142, discriminator: 1)
!1284 = !DILocation(line: 416, column: 11, scope: !1127)
!1285 = !DILocation(line: 394, column: 21, scope: !1127)
!1286 = !DILocation(line: 417, column: 7, scope: !1127)
!1287 = !DILocation(line: 420, column: 15, scope: !1136)
!1288 = !DILocation(line: 422, column: 15, scope: !1289)
!1289 = !DILexicalBlockFile(scope: !1290, file: !142, discriminator: 1)
!1290 = distinct !DILexicalBlock(scope: !1291, file: !142, line: 422, column: 15)
!1291 = distinct !DILexicalBlock(scope: !1292, file: !142, line: 421, column: 13)
!1292 = distinct !DILexicalBlock(scope: !1136, file: !142, line: 420, column: 15)
!1293 = !DILocation(line: 422, column: 15, scope: !1294)
!1294 = !DILexicalBlockFile(scope: !1295, file: !142, discriminator: 4)
!1295 = distinct !DILexicalBlock(scope: !1290, file: !142, line: 422, column: 15)
!1296 = !DILocation(line: 422, column: 15, scope: !1297)
!1297 = !DILexicalBlockFile(scope: !1295, file: !142, discriminator: 3)
!1298 = !DILocation(line: 422, column: 15, scope: !1299)
!1299 = !DILexicalBlockFile(scope: !1300, file: !142, discriminator: 6)
!1300 = distinct !DILexicalBlock(scope: !1301, file: !142, line: 422, column: 15)
!1301 = distinct !DILexicalBlock(scope: !1302, file: !142, line: 422, column: 15)
!1302 = distinct !DILexicalBlock(scope: !1295, file: !142, line: 422, column: 15)
!1303 = !DILocation(line: 422, column: 15, scope: !1304)
!1304 = !DILexicalBlockFile(scope: !1301, file: !142, discriminator: 6)
!1305 = !DILocation(line: 422, column: 15, scope: !1306)
!1306 = !DILexicalBlockFile(scope: !1300, file: !142, discriminator: 7)
!1307 = !DILocation(line: 422, column: 15, scope: !1308)
!1308 = !DILexicalBlockFile(scope: !1301, file: !142, discriminator: 8)
!1309 = !DILocation(line: 422, column: 15, scope: !1310)
!1310 = !DILexicalBlockFile(scope: !1311, file: !142, discriminator: 11)
!1311 = distinct !DILexicalBlock(scope: !1312, file: !142, line: 422, column: 15)
!1312 = distinct !DILexicalBlock(scope: !1302, file: !142, line: 422, column: 15)
!1313 = !DILocation(line: 422, column: 15, scope: !1314)
!1314 = !DILexicalBlockFile(scope: !1312, file: !142, discriminator: 11)
!1315 = !DILocation(line: 422, column: 15, scope: !1316)
!1316 = !DILexicalBlockFile(scope: !1311, file: !142, discriminator: 12)
!1317 = !DILocation(line: 422, column: 15, scope: !1318)
!1318 = !DILexicalBlockFile(scope: !1312, file: !142, discriminator: 13)
!1319 = !DILocation(line: 422, column: 15, scope: !1320)
!1320 = !DILexicalBlockFile(scope: !1321, file: !142, discriminator: 16)
!1321 = distinct !DILexicalBlock(scope: !1322, file: !142, line: 422, column: 15)
!1322 = distinct !DILexicalBlock(scope: !1302, file: !142, line: 422, column: 15)
!1323 = !DILocation(line: 422, column: 15, scope: !1324)
!1324 = !DILexicalBlockFile(scope: !1322, file: !142, discriminator: 16)
!1325 = !DILocation(line: 422, column: 15, scope: !1326)
!1326 = !DILexicalBlockFile(scope: !1321, file: !142, discriminator: 17)
!1327 = !DILocation(line: 422, column: 15, scope: !1328)
!1328 = !DILexicalBlockFile(scope: !1322, file: !142, discriminator: 18)
!1329 = !DILocation(line: 422, column: 15, scope: !1330)
!1330 = !DILexicalBlockFile(scope: !1302, file: !142, discriminator: 20)
!1331 = !DILocation(line: 422, column: 15, scope: !1332)
!1332 = !DILexicalBlockFile(scope: !1333, file: !142, discriminator: 22)
!1333 = distinct !DILexicalBlock(scope: !1334, file: !142, line: 422, column: 15)
!1334 = distinct !DILexicalBlock(scope: !1290, file: !142, line: 422, column: 15)
!1335 = !DILocation(line: 422, column: 15, scope: !1336)
!1336 = !DILexicalBlockFile(scope: !1334, file: !142, discriminator: 22)
!1337 = !DILocation(line: 422, column: 15, scope: !1338)
!1338 = !DILexicalBlockFile(scope: !1333, file: !142, discriminator: 23)
!1339 = !DILocation(line: 422, column: 15, scope: !1340)
!1340 = !DILexicalBlockFile(scope: !1334, file: !142, discriminator: 24)
!1341 = !DILocation(line: 430, column: 19, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !1291, file: !142, line: 429, column: 19)
!1343 = !DILocation(line: 430, column: 24, scope: !1344)
!1344 = !DILexicalBlockFile(scope: !1342, file: !142, discriminator: 1)
!1345 = !DILocation(line: 430, column: 28, scope: !1344)
!1346 = !DILocation(line: 430, column: 38, scope: !1344)
!1347 = !DILocation(line: 430, column: 48, scope: !1348)
!1348 = !DILexicalBlockFile(scope: !1342, file: !142, discriminator: 2)
!1349 = !DILocation(line: 430, column: 59, scope: !1348)
!1350 = !DILocation(line: 432, column: 19, scope: !1351)
!1351 = !DILexicalBlockFile(scope: !1352, file: !142, discriminator: 1)
!1352 = distinct !DILexicalBlock(scope: !1353, file: !142, line: 432, column: 19)
!1353 = distinct !DILexicalBlock(scope: !1354, file: !142, line: 432, column: 19)
!1354 = distinct !DILexicalBlock(scope: !1342, file: !142, line: 431, column: 17)
!1355 = !DILocation(line: 432, column: 19, scope: !1356)
!1356 = !DILexicalBlockFile(scope: !1353, file: !142, discriminator: 1)
!1357 = !DILocation(line: 432, column: 19, scope: !1358)
!1358 = !DILexicalBlockFile(scope: !1352, file: !142, discriminator: 2)
!1359 = !DILocation(line: 432, column: 19, scope: !1360)
!1360 = !DILexicalBlockFile(scope: !1353, file: !142, discriminator: 3)
!1361 = !DILocation(line: 433, column: 19, scope: !1362)
!1362 = !DILexicalBlockFile(scope: !1363, file: !142, discriminator: 1)
!1363 = distinct !DILexicalBlock(scope: !1364, file: !142, line: 433, column: 19)
!1364 = distinct !DILexicalBlock(scope: !1354, file: !142, line: 433, column: 19)
!1365 = !DILocation(line: 433, column: 19, scope: !1366)
!1366 = !DILexicalBlockFile(scope: !1364, file: !142, discriminator: 1)
!1367 = !DILocation(line: 433, column: 19, scope: !1368)
!1368 = !DILexicalBlockFile(scope: !1363, file: !142, discriminator: 2)
!1369 = !DILocation(line: 433, column: 19, scope: !1370)
!1370 = !DILexicalBlockFile(scope: !1364, file: !142, discriminator: 3)
!1371 = !DILocation(line: 434, column: 17, scope: !1354)
!1372 = !DILocation(line: 441, column: 20, scope: !1292)
!1373 = !DILocation(line: 446, column: 11, scope: !1136)
!1374 = !DILocation(line: 449, column: 19, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !1136, file: !142, line: 447, column: 13)
!1376 = !DILocation(line: 455, column: 19, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !1375, file: !142, line: 454, column: 19)
!1378 = !DILocation(line: 455, column: 24, scope: !1379)
!1379 = !DILexicalBlockFile(scope: !1377, file: !142, discriminator: 1)
!1380 = !DILocation(line: 455, column: 28, scope: !1379)
!1381 = !DILocation(line: 455, column: 38, scope: !1379)
!1382 = !DILocation(line: 455, column: 47, scope: !1383)
!1383 = !DILexicalBlockFile(scope: !1377, file: !142, discriminator: 2)
!1384 = !DILocation(line: 455, column: 41, scope: !1383)
!1385 = !DILocation(line: 455, column: 52, scope: !1383)
!1386 = !DILocation(line: 454, column: 19, scope: !1387)
!1387 = !DILexicalBlockFile(scope: !1375, file: !142, discriminator: 1)
!1388 = !DILocation(line: 456, column: 25, scope: !1377)
!1389 = !DILocation(line: 456, column: 17, scope: !1377)
!1390 = !DILocation(line: 463, column: 25, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !1377, file: !142, line: 457, column: 19)
!1392 = !DILocation(line: 467, column: 21, scope: !1393)
!1393 = !DILexicalBlockFile(scope: !1394, file: !142, discriminator: 1)
!1394 = distinct !DILexicalBlock(scope: !1395, file: !142, line: 467, column: 21)
!1395 = distinct !DILexicalBlock(scope: !1391, file: !142, line: 467, column: 21)
!1396 = !DILocation(line: 467, column: 21, scope: !1397)
!1397 = !DILexicalBlockFile(scope: !1395, file: !142, discriminator: 1)
!1398 = !DILocation(line: 467, column: 21, scope: !1399)
!1399 = !DILexicalBlockFile(scope: !1394, file: !142, discriminator: 2)
!1400 = !DILocation(line: 467, column: 21, scope: !1401)
!1401 = !DILexicalBlockFile(scope: !1395, file: !142, discriminator: 3)
!1402 = !DILocation(line: 468, column: 21, scope: !1403)
!1403 = !DILexicalBlockFile(scope: !1404, file: !142, discriminator: 1)
!1404 = distinct !DILexicalBlock(scope: !1405, file: !142, line: 468, column: 21)
!1405 = distinct !DILexicalBlock(scope: !1391, file: !142, line: 468, column: 21)
!1406 = !DILocation(line: 468, column: 21, scope: !1407)
!1407 = !DILexicalBlockFile(scope: !1405, file: !142, discriminator: 1)
!1408 = !DILocation(line: 468, column: 21, scope: !1409)
!1409 = !DILexicalBlockFile(scope: !1404, file: !142, discriminator: 2)
!1410 = !DILocation(line: 468, column: 21, scope: !1411)
!1411 = !DILexicalBlockFile(scope: !1405, file: !142, discriminator: 3)
!1412 = !DILocation(line: 469, column: 21, scope: !1413)
!1413 = !DILexicalBlockFile(scope: !1414, file: !142, discriminator: 1)
!1414 = distinct !DILexicalBlock(scope: !1415, file: !142, line: 469, column: 21)
!1415 = distinct !DILexicalBlock(scope: !1391, file: !142, line: 469, column: 21)
!1416 = !DILocation(line: 469, column: 21, scope: !1417)
!1417 = !DILexicalBlockFile(scope: !1415, file: !142, discriminator: 1)
!1418 = !DILocation(line: 469, column: 21, scope: !1419)
!1419 = !DILexicalBlockFile(scope: !1414, file: !142, discriminator: 2)
!1420 = !DILocation(line: 469, column: 21, scope: !1421)
!1421 = !DILexicalBlockFile(scope: !1415, file: !142, discriminator: 3)
!1422 = !DILocation(line: 470, column: 21, scope: !1423)
!1423 = !DILexicalBlockFile(scope: !1424, file: !142, discriminator: 1)
!1424 = distinct !DILexicalBlock(scope: !1425, file: !142, line: 470, column: 21)
!1425 = distinct !DILexicalBlock(scope: !1391, file: !142, line: 470, column: 21)
!1426 = !DILocation(line: 470, column: 21, scope: !1427)
!1427 = !DILexicalBlockFile(scope: !1425, file: !142, discriminator: 1)
!1428 = !DILocation(line: 470, column: 21, scope: !1429)
!1429 = !DILexicalBlockFile(scope: !1424, file: !142, discriminator: 2)
!1430 = !DILocation(line: 470, column: 21, scope: !1431)
!1431 = !DILexicalBlockFile(scope: !1425, file: !142, discriminator: 3)
!1432 = !DILocation(line: 471, column: 21, scope: !1391)
!1433 = !DILocation(line: 395, column: 21, scope: !1127)
!1434 = !DILocation(line: 484, column: 31, scope: !1136)
!1435 = !DILocation(line: 485, column: 31, scope: !1136)
!1436 = !DILocation(line: 487, column: 31, scope: !1136)
!1437 = !DILocation(line: 488, column: 31, scope: !1136)
!1438 = !DILocation(line: 489, column: 31, scope: !1136)
!1439 = !DILocation(line: 492, column: 15, scope: !1136)
!1440 = !DILocation(line: 494, column: 19, scope: !1441)
!1441 = distinct !DILexicalBlock(scope: !1442, file: !142, line: 493, column: 13)
!1442 = distinct !DILexicalBlock(scope: !1136, file: !142, line: 492, column: 15)
!1443 = !DILocation(line: 501, column: 33, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !1136, file: !142, line: 501, column: 15)
!1445 = !DILocation(line: 506, column: 15, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !1136, file: !142, line: 505, column: 15)
!1447 = !DILocation(line: 510, column: 15, scope: !1136)
!1448 = !DILocation(line: 518, column: 26, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !1136, file: !142, line: 518, column: 15)
!1450 = !DILocation(line: 518, column: 15, scope: !1136)
!1451 = !DILocation(line: 518, column: 40, scope: !1452)
!1452 = !DILexicalBlockFile(scope: !1449, file: !142, discriminator: 1)
!1453 = !DILocation(line: 518, column: 47, scope: !1452)
!1454 = !DILocation(line: 522, column: 17, scope: !1455)
!1455 = distinct !DILexicalBlock(scope: !1136, file: !142, line: 522, column: 15)
!1456 = !DILocation(line: 518, column: 18, scope: !1452)
!1457 = !DILocation(line: 518, column: 65, scope: !1458)
!1458 = !DILexicalBlockFile(scope: !1449, file: !142, discriminator: 2)
!1459 = !DILocation(line: 518, column: 15, scope: !1460)
!1460 = !DILexicalBlockFile(scope: !1136, file: !142, discriminator: 2)
!1461 = !DILocation(line: 522, column: 15, scope: !1136)
!1462 = !DILocation(line: 526, column: 11, scope: !1136)
!1463 = !DILocation(line: 541, column: 15, scope: !1464)
!1464 = distinct !DILexicalBlock(scope: !1136, file: !142, line: 540, column: 15)
!1465 = !DILocation(line: 548, column: 15, scope: !1136)
!1466 = !DILocation(line: 550, column: 19, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !1468, file: !142, line: 549, column: 13)
!1468 = distinct !DILexicalBlock(scope: !1136, file: !142, line: 548, column: 15)
!1469 = !DILocation(line: 553, column: 19, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1467, file: !142, line: 553, column: 19)
!1471 = !DILocation(line: 553, column: 35, scope: !1472)
!1472 = !DILexicalBlockFile(scope: !1470, file: !142, discriminator: 1)
!1473 = !DILocation(line: 553, column: 30, scope: !1470)
!1474 = !DILocation(line: 562, column: 15, scope: !1475)
!1475 = !DILexicalBlockFile(scope: !1476, file: !142, discriminator: 1)
!1476 = distinct !DILexicalBlock(scope: !1477, file: !142, line: 562, column: 15)
!1477 = distinct !DILexicalBlock(scope: !1467, file: !142, line: 562, column: 15)
!1478 = !DILocation(line: 562, column: 15, scope: !1479)
!1479 = !DILexicalBlockFile(scope: !1477, file: !142, discriminator: 1)
!1480 = !DILocation(line: 562, column: 15, scope: !1481)
!1481 = !DILexicalBlockFile(scope: !1476, file: !142, discriminator: 2)
!1482 = !DILocation(line: 562, column: 15, scope: !1483)
!1483 = !DILexicalBlockFile(scope: !1477, file: !142, discriminator: 3)
!1484 = !DILocation(line: 563, column: 15, scope: !1485)
!1485 = !DILexicalBlockFile(scope: !1486, file: !142, discriminator: 1)
!1486 = distinct !DILexicalBlock(scope: !1487, file: !142, line: 563, column: 15)
!1487 = distinct !DILexicalBlock(scope: !1467, file: !142, line: 563, column: 15)
!1488 = !DILocation(line: 563, column: 15, scope: !1489)
!1489 = !DILexicalBlockFile(scope: !1487, file: !142, discriminator: 1)
!1490 = !DILocation(line: 563, column: 15, scope: !1491)
!1491 = !DILexicalBlockFile(scope: !1486, file: !142, discriminator: 2)
!1492 = !DILocation(line: 563, column: 15, scope: !1493)
!1493 = !DILexicalBlockFile(scope: !1487, file: !142, discriminator: 3)
!1494 = !DILocation(line: 564, column: 15, scope: !1495)
!1495 = !DILexicalBlockFile(scope: !1496, file: !142, discriminator: 1)
!1496 = distinct !DILexicalBlock(scope: !1497, file: !142, line: 564, column: 15)
!1497 = distinct !DILexicalBlock(scope: !1467, file: !142, line: 564, column: 15)
!1498 = !DILocation(line: 564, column: 15, scope: !1499)
!1499 = !DILexicalBlockFile(scope: !1497, file: !142, discriminator: 1)
!1500 = !DILocation(line: 564, column: 15, scope: !1501)
!1501 = !DILexicalBlockFile(scope: !1496, file: !142, discriminator: 2)
!1502 = !DILocation(line: 564, column: 15, scope: !1503)
!1503 = !DILexicalBlockFile(scope: !1497, file: !142, discriminator: 3)
!1504 = !DILocation(line: 566, column: 13, scope: !1467)
!1505 = !DILocation(line: 606, column: 17, scope: !1135)
!1506 = !DILocation(line: 602, column: 20, scope: !1135)
!1507 = !DILocation(line: 609, column: 29, scope: !1508)
!1508 = distinct !DILexicalBlock(scope: !1140, file: !142, line: 607, column: 15)
!1509 = !{!1510, !1510, i64 0}
!1510 = !{!"short", !639, i64 0}
!1511 = !DILocation(line: 609, column: 27, scope: !1508)
!1512 = !DILocation(line: 604, column: 18, scope: !1135)
!1513 = !DILocation(line: 610, column: 15, scope: !1508)
!1514 = !DILocation(line: 613, column: 17, scope: !1139)
!1515 = !DILocation(line: 614, column: 17, scope: !1139)
!1516 = !DILocation(line: 618, column: 29, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !1139, file: !142, line: 618, column: 21)
!1518 = !DILocation(line: 618, column: 21, scope: !1139)
!1519 = distinct !{!1519, !1520, !1521}
!1520 = !DILocation(line: 621, column: 17, scope: !1139)
!1521 = !DILocation(line: 667, column: 44, scope: !1139)
!1522 = !DILocation(line: 619, column: 29, scope: !1517)
!1523 = !DILocation(line: 619, column: 19, scope: !1517)
!1524 = !DILocation(line: 623, column: 21, scope: !1156)
!1525 = !DILocation(line: 624, column: 56, scope: !1156)
!1526 = !DILocation(line: 624, column: 50, scope: !1156)
!1527 = !DILocation(line: 625, column: 53, scope: !1156)
!1528 = !DIExpression(DW_OP_deref)
!1529 = !DILocation(line: 613, column: 27, scope: !1139)
!1530 = !DILocation(line: 623, column: 29, scope: !1156)
!1531 = !DILocation(line: 624, column: 36, scope: !1156)
!1532 = !DILocation(line: 624, column: 28, scope: !1156)
!1533 = !DILocation(line: 626, column: 25, scope: !1156)
!1534 = !DILocation(line: 636, column: 38, scope: !1535)
!1535 = !DILexicalBlockFile(scope: !1536, file: !142, discriminator: 1)
!1536 = distinct !DILexicalBlock(scope: !1163, file: !142, line: 634, column: 23)
!1537 = !DILocation(line: 636, column: 48, scope: !1535)
!1538 = !DILocation(line: 636, column: 51, scope: !1539)
!1539 = !DILexicalBlockFile(scope: !1536, file: !142, discriminator: 2)
!1540 = !DILocation(line: 636, column: 48, scope: !1539)
!1541 = !DILocation(line: 636, column: 25, scope: !1542)
!1542 = !DILexicalBlockFile(scope: !1536, file: !142, discriminator: 3)
!1543 = !DILocation(line: 637, column: 28, scope: !1536)
!1544 = !DILocation(line: 636, column: 34, scope: !1535)
!1545 = distinct !{!1545, !1546, !1543}
!1546 = !DILocation(line: 636, column: 25, scope: !1536)
!1547 = !DILocation(line: 650, column: 43, scope: !1548)
!1548 = !DILexicalBlockFile(scope: !1549, file: !142, discriminator: 1)
!1549 = distinct !DILexicalBlock(scope: !1550, file: !142, line: 650, column: 29)
!1550 = distinct !DILexicalBlock(scope: !1160, file: !142, line: 650, column: 29)
!1551 = !DILocation(line: 647, column: 29, scope: !1161)
!1552 = !DILocation(line: 649, column: 36, scope: !1160)
!1553 = !DILocation(line: 651, column: 49, scope: !1549)
!1554 = !DILocation(line: 651, column: 39, scope: !1549)
!1555 = !DILocation(line: 651, column: 31, scope: !1549)
!1556 = !DILocation(line: 650, column: 53, scope: !1557)
!1557 = !DILexicalBlockFile(scope: !1549, file: !142, discriminator: 2)
!1558 = !DILocation(line: 650, column: 29, scope: !1559)
!1559 = !DILexicalBlockFile(scope: !1550, file: !142, discriminator: 1)
!1560 = distinct !{!1560, !1561, !1562}
!1561 = !DILocation(line: 650, column: 29, scope: !1550)
!1562 = !DILocation(line: 659, column: 33, scope: !1550)
!1563 = !DILocation(line: 666, column: 19, scope: !1139)
!1564 = !DILocation(line: 662, column: 41, scope: !1565)
!1565 = distinct !DILexicalBlock(scope: !1162, file: !142, line: 662, column: 29)
!1566 = !DILocation(line: 662, column: 31, scope: !1565)
!1567 = !DILocation(line: 662, column: 29, scope: !1162)
!1568 = !DILocation(line: 664, column: 27, scope: !1162)
!1569 = !DILocation(line: 667, column: 26, scope: !1139)
!1570 = !DILocation(line: 667, column: 24, scope: !1139)
!1571 = !DILocation(line: 666, column: 19, scope: !1572)
!1572 = !DILexicalBlockFile(scope: !1156, file: !142, discriminator: 3)
!1573 = !DILocation(line: 668, column: 15, scope: !1140)
!1574 = !DILocation(line: 670, column: 40, scope: !1135)
!1575 = !DILocation(line: 672, column: 19, scope: !1168)
!1576 = !DILocation(line: 672, column: 45, scope: !1577)
!1577 = !DILexicalBlockFile(scope: !1168, file: !142, discriminator: 1)
!1578 = !DILocation(line: 672, column: 23, scope: !1168)
!1579 = !DILocation(line: 676, column: 33, scope: !1167)
!1580 = !DILocation(line: 676, column: 24, scope: !1167)
!1581 = !DILocation(line: 678, column: 17, scope: !1167)
!1582 = !DILocation(line: 680, column: 43, scope: !1583)
!1583 = distinct !DILexicalBlock(scope: !1584, file: !142, line: 680, column: 25)
!1584 = distinct !DILexicalBlock(scope: !1585, file: !142, line: 679, column: 19)
!1585 = distinct !DILexicalBlock(scope: !1586, file: !142, line: 678, column: 17)
!1586 = distinct !DILexicalBlock(scope: !1167, file: !142, line: 678, column: 17)
!1587 = !DILocation(line: 682, column: 25, scope: !1588)
!1588 = !DILexicalBlockFile(scope: !1589, file: !142, discriminator: 1)
!1589 = distinct !DILexicalBlock(scope: !1590, file: !142, line: 682, column: 25)
!1590 = distinct !DILexicalBlock(scope: !1583, file: !142, line: 681, column: 23)
!1591 = !DILocation(line: 682, column: 25, scope: !1592)
!1592 = !DILexicalBlockFile(scope: !1593, file: !142, discriminator: 4)
!1593 = distinct !DILexicalBlock(scope: !1589, file: !142, line: 682, column: 25)
!1594 = !DILocation(line: 682, column: 25, scope: !1595)
!1595 = !DILexicalBlockFile(scope: !1593, file: !142, discriminator: 3)
!1596 = !DILocation(line: 682, column: 25, scope: !1597)
!1597 = !DILexicalBlockFile(scope: !1598, file: !142, discriminator: 6)
!1598 = distinct !DILexicalBlock(scope: !1599, file: !142, line: 682, column: 25)
!1599 = distinct !DILexicalBlock(scope: !1600, file: !142, line: 682, column: 25)
!1600 = distinct !DILexicalBlock(scope: !1593, file: !142, line: 682, column: 25)
!1601 = !DILocation(line: 682, column: 25, scope: !1602)
!1602 = !DILexicalBlockFile(scope: !1599, file: !142, discriminator: 6)
!1603 = !DILocation(line: 682, column: 25, scope: !1604)
!1604 = !DILexicalBlockFile(scope: !1598, file: !142, discriminator: 7)
!1605 = !DILocation(line: 682, column: 25, scope: !1606)
!1606 = !DILexicalBlockFile(scope: !1599, file: !142, discriminator: 8)
!1607 = !DILocation(line: 682, column: 25, scope: !1608)
!1608 = !DILexicalBlockFile(scope: !1609, file: !142, discriminator: 11)
!1609 = distinct !DILexicalBlock(scope: !1610, file: !142, line: 682, column: 25)
!1610 = distinct !DILexicalBlock(scope: !1600, file: !142, line: 682, column: 25)
!1611 = !DILocation(line: 682, column: 25, scope: !1612)
!1612 = !DILexicalBlockFile(scope: !1610, file: !142, discriminator: 11)
!1613 = !DILocation(line: 682, column: 25, scope: !1614)
!1614 = !DILexicalBlockFile(scope: !1609, file: !142, discriminator: 12)
!1615 = !DILocation(line: 682, column: 25, scope: !1616)
!1616 = !DILexicalBlockFile(scope: !1610, file: !142, discriminator: 13)
!1617 = !DILocation(line: 682, column: 25, scope: !1618)
!1618 = !DILexicalBlockFile(scope: !1619, file: !142, discriminator: 16)
!1619 = distinct !DILexicalBlock(scope: !1620, file: !142, line: 682, column: 25)
!1620 = distinct !DILexicalBlock(scope: !1600, file: !142, line: 682, column: 25)
!1621 = !DILocation(line: 682, column: 25, scope: !1622)
!1622 = !DILexicalBlockFile(scope: !1620, file: !142, discriminator: 16)
!1623 = !DILocation(line: 682, column: 25, scope: !1624)
!1624 = !DILexicalBlockFile(scope: !1619, file: !142, discriminator: 17)
!1625 = !DILocation(line: 682, column: 25, scope: !1626)
!1626 = !DILexicalBlockFile(scope: !1620, file: !142, discriminator: 18)
!1627 = !DILocation(line: 682, column: 25, scope: !1628)
!1628 = !DILexicalBlockFile(scope: !1600, file: !142, discriminator: 20)
!1629 = !DILocation(line: 682, column: 25, scope: !1630)
!1630 = !DILexicalBlockFile(scope: !1631, file: !142, discriminator: 22)
!1631 = distinct !DILexicalBlock(scope: !1632, file: !142, line: 682, column: 25)
!1632 = distinct !DILexicalBlock(scope: !1589, file: !142, line: 682, column: 25)
!1633 = !DILocation(line: 682, column: 25, scope: !1634)
!1634 = !DILexicalBlockFile(scope: !1632, file: !142, discriminator: 22)
!1635 = !DILocation(line: 682, column: 25, scope: !1636)
!1636 = !DILexicalBlockFile(scope: !1631, file: !142, discriminator: 23)
!1637 = !DILocation(line: 682, column: 25, scope: !1638)
!1638 = !DILexicalBlockFile(scope: !1632, file: !142, discriminator: 24)
!1639 = !DILocation(line: 683, column: 25, scope: !1640)
!1640 = !DILexicalBlockFile(scope: !1641, file: !142, discriminator: 1)
!1641 = distinct !DILexicalBlock(scope: !1642, file: !142, line: 683, column: 25)
!1642 = distinct !DILexicalBlock(scope: !1590, file: !142, line: 683, column: 25)
!1643 = !DILocation(line: 683, column: 25, scope: !1644)
!1644 = !DILexicalBlockFile(scope: !1642, file: !142, discriminator: 1)
!1645 = !DILocation(line: 683, column: 25, scope: !1646)
!1646 = !DILexicalBlockFile(scope: !1641, file: !142, discriminator: 2)
!1647 = !DILocation(line: 683, column: 25, scope: !1648)
!1648 = !DILexicalBlockFile(scope: !1642, file: !142, discriminator: 3)
!1649 = !DILocation(line: 684, column: 25, scope: !1650)
!1650 = !DILexicalBlockFile(scope: !1651, file: !142, discriminator: 1)
!1651 = distinct !DILexicalBlock(scope: !1652, file: !142, line: 684, column: 25)
!1652 = distinct !DILexicalBlock(scope: !1590, file: !142, line: 684, column: 25)
!1653 = !DILocation(line: 684, column: 25, scope: !1654)
!1654 = !DILexicalBlockFile(scope: !1652, file: !142, discriminator: 1)
!1655 = !DILocation(line: 684, column: 25, scope: !1656)
!1656 = !DILexicalBlockFile(scope: !1651, file: !142, discriminator: 2)
!1657 = !DILocation(line: 684, column: 25, scope: !1658)
!1658 = !DILexicalBlockFile(scope: !1652, file: !142, discriminator: 3)
!1659 = !DILocation(line: 685, column: 38, scope: !1590)
!1660 = !DILocation(line: 685, column: 33, scope: !1590)
!1661 = !DILocation(line: 686, column: 23, scope: !1590)
!1662 = !DILocation(line: 687, column: 30, scope: !1663)
!1663 = distinct !DILexicalBlock(scope: !1583, file: !142, line: 687, column: 30)
!1664 = !DILocation(line: 687, column: 30, scope: !1583)
!1665 = !DILocation(line: 689, column: 25, scope: !1666)
!1666 = !DILexicalBlockFile(scope: !1667, file: !142, discriminator: 1)
!1667 = distinct !DILexicalBlock(scope: !1668, file: !142, line: 689, column: 25)
!1668 = distinct !DILexicalBlock(scope: !1669, file: !142, line: 689, column: 25)
!1669 = distinct !DILexicalBlock(scope: !1663, file: !142, line: 688, column: 23)
!1670 = !DILocation(line: 689, column: 25, scope: !1671)
!1671 = !DILexicalBlockFile(scope: !1668, file: !142, discriminator: 1)
!1672 = !DILocation(line: 689, column: 25, scope: !1673)
!1673 = !DILexicalBlockFile(scope: !1667, file: !142, discriminator: 2)
!1674 = !DILocation(line: 689, column: 25, scope: !1675)
!1675 = !DILexicalBlockFile(scope: !1668, file: !142, discriminator: 3)
!1676 = !DILocation(line: 691, column: 23, scope: !1669)
!1677 = !DILocation(line: 692, column: 35, scope: !1678)
!1678 = distinct !DILexicalBlock(scope: !1584, file: !142, line: 692, column: 25)
!1679 = !DILocation(line: 692, column: 30, scope: !1678)
!1680 = !DILocation(line: 692, column: 25, scope: !1584)
!1681 = !DILocation(line: 694, column: 21, scope: !1682)
!1682 = !DILexicalBlockFile(scope: !1683, file: !142, discriminator: 1)
!1683 = distinct !DILexicalBlock(scope: !1684, file: !142, line: 694, column: 21)
!1684 = distinct !DILexicalBlock(scope: !1584, file: !142, line: 694, column: 21)
!1685 = !DILocation(line: 694, column: 21, scope: !1686)
!1686 = !DILexicalBlockFile(scope: !1683, file: !142, discriminator: 2)
!1687 = !DILocation(line: 694, column: 21, scope: !1688)
!1688 = !DILexicalBlockFile(scope: !1689, file: !142, discriminator: 4)
!1689 = distinct !DILexicalBlock(scope: !1690, file: !142, line: 694, column: 21)
!1690 = distinct !DILexicalBlock(scope: !1691, file: !142, line: 694, column: 21)
!1691 = distinct !DILexicalBlock(scope: !1683, file: !142, line: 694, column: 21)
!1692 = !DILocation(line: 694, column: 21, scope: !1693)
!1693 = !DILexicalBlockFile(scope: !1690, file: !142, discriminator: 4)
!1694 = !DILocation(line: 694, column: 21, scope: !1695)
!1695 = !DILexicalBlockFile(scope: !1689, file: !142, discriminator: 5)
!1696 = !DILocation(line: 694, column: 21, scope: !1697)
!1697 = !DILexicalBlockFile(scope: !1690, file: !142, discriminator: 6)
!1698 = !DILocation(line: 694, column: 21, scope: !1699)
!1699 = !DILexicalBlockFile(scope: !1700, file: !142, discriminator: 9)
!1700 = distinct !DILexicalBlock(scope: !1701, file: !142, line: 694, column: 21)
!1701 = distinct !DILexicalBlock(scope: !1691, file: !142, line: 694, column: 21)
!1702 = !DILocation(line: 694, column: 21, scope: !1703)
!1703 = !DILexicalBlockFile(scope: !1701, file: !142, discriminator: 9)
!1704 = !DILocation(line: 694, column: 21, scope: !1705)
!1705 = !DILexicalBlockFile(scope: !1700, file: !142, discriminator: 10)
!1706 = !DILocation(line: 694, column: 21, scope: !1707)
!1707 = !DILexicalBlockFile(scope: !1701, file: !142, discriminator: 11)
!1708 = !DILocation(line: 694, column: 21, scope: !1709)
!1709 = !DILexicalBlockFile(scope: !1691, file: !142, discriminator: 13)
!1710 = !DILocation(line: 695, column: 21, scope: !1711)
!1711 = !DILexicalBlockFile(scope: !1712, file: !142, discriminator: 1)
!1712 = distinct !DILexicalBlock(scope: !1713, file: !142, line: 695, column: 21)
!1713 = distinct !DILexicalBlock(scope: !1584, file: !142, line: 695, column: 21)
!1714 = !DILocation(line: 695, column: 21, scope: !1715)
!1715 = !DILexicalBlockFile(scope: !1713, file: !142, discriminator: 1)
!1716 = !DILocation(line: 695, column: 21, scope: !1717)
!1717 = !DILexicalBlockFile(scope: !1712, file: !142, discriminator: 2)
!1718 = !DILocation(line: 695, column: 21, scope: !1719)
!1719 = !DILexicalBlockFile(scope: !1713, file: !142, discriminator: 3)
!1720 = !DILocation(line: 696, column: 25, scope: !1584)
!1721 = !DILocation(line: 678, column: 17, scope: !1722)
!1722 = !DILexicalBlockFile(scope: !1585, file: !142, discriminator: 1)
!1723 = distinct !{!1723, !1724, !1725}
!1724 = !DILocation(line: 678, column: 17, scope: !1586)
!1725 = !DILocation(line: 697, column: 19, scope: !1586)
!1726 = !DILocation(line: 704, column: 34, scope: !1727)
!1727 = distinct !DILexicalBlock(scope: !1127, file: !142, line: 704, column: 11)
!1728 = !DILocation(line: 706, column: 14, scope: !1727)
!1729 = !DILocation(line: 707, column: 14, scope: !1727)
!1730 = !DILocation(line: 707, column: 35, scope: !1731)
!1731 = !DILexicalBlockFile(scope: !1727, file: !142, discriminator: 1)
!1732 = !DILocation(line: 707, column: 17, scope: !1731)
!1733 = !DILocation(line: 707, column: 53, scope: !1731)
!1734 = !DILocation(line: 707, column: 47, scope: !1731)
!1735 = !DILocation(line: 707, column: 65, scope: !1731)
!1736 = !DILocation(line: 708, column: 15, scope: !1731)
!1737 = !DILocation(line: 708, column: 11, scope: !1727)
!1738 = !DILocation(line: 704, column: 11, scope: !1739)
!1739 = !DILexicalBlockFile(scope: !1127, file: !142, discriminator: 2)
!1740 = !DILocation(line: 712, column: 7, scope: !1741)
!1741 = !DILexicalBlockFile(scope: !1742, file: !142, discriminator: 1)
!1742 = distinct !DILexicalBlock(scope: !1127, file: !142, line: 712, column: 7)
!1743 = !DILocation(line: 712, column: 7, scope: !1744)
!1744 = !DILexicalBlockFile(scope: !1745, file: !142, discriminator: 4)
!1745 = distinct !DILexicalBlock(scope: !1742, file: !142, line: 712, column: 7)
!1746 = !DILocation(line: 712, column: 7, scope: !1747)
!1747 = !DILexicalBlockFile(scope: !1745, file: !142, discriminator: 3)
!1748 = !DILocation(line: 712, column: 7, scope: !1749)
!1749 = !DILexicalBlockFile(scope: !1750, file: !142, discriminator: 6)
!1750 = distinct !DILexicalBlock(scope: !1751, file: !142, line: 712, column: 7)
!1751 = distinct !DILexicalBlock(scope: !1752, file: !142, line: 712, column: 7)
!1752 = distinct !DILexicalBlock(scope: !1745, file: !142, line: 712, column: 7)
!1753 = !DILocation(line: 712, column: 7, scope: !1754)
!1754 = !DILexicalBlockFile(scope: !1751, file: !142, discriminator: 6)
!1755 = !DILocation(line: 712, column: 7, scope: !1756)
!1756 = !DILexicalBlockFile(scope: !1750, file: !142, discriminator: 7)
!1757 = !DILocation(line: 712, column: 7, scope: !1758)
!1758 = !DILexicalBlockFile(scope: !1751, file: !142, discriminator: 8)
!1759 = !DILocation(line: 712, column: 7, scope: !1760)
!1760 = !DILexicalBlockFile(scope: !1761, file: !142, discriminator: 11)
!1761 = distinct !DILexicalBlock(scope: !1762, file: !142, line: 712, column: 7)
!1762 = distinct !DILexicalBlock(scope: !1752, file: !142, line: 712, column: 7)
!1763 = !DILocation(line: 712, column: 7, scope: !1764)
!1764 = !DILexicalBlockFile(scope: !1762, file: !142, discriminator: 11)
!1765 = !DILocation(line: 712, column: 7, scope: !1766)
!1766 = !DILexicalBlockFile(scope: !1761, file: !142, discriminator: 12)
!1767 = !DILocation(line: 712, column: 7, scope: !1768)
!1768 = !DILexicalBlockFile(scope: !1762, file: !142, discriminator: 13)
!1769 = !DILocation(line: 712, column: 7, scope: !1770)
!1770 = !DILexicalBlockFile(scope: !1771, file: !142, discriminator: 16)
!1771 = distinct !DILexicalBlock(scope: !1772, file: !142, line: 712, column: 7)
!1772 = distinct !DILexicalBlock(scope: !1752, file: !142, line: 712, column: 7)
!1773 = !DILocation(line: 712, column: 7, scope: !1774)
!1774 = !DILexicalBlockFile(scope: !1772, file: !142, discriminator: 16)
!1775 = !DILocation(line: 712, column: 7, scope: !1776)
!1776 = !DILexicalBlockFile(scope: !1771, file: !142, discriminator: 17)
!1777 = !DILocation(line: 712, column: 7, scope: !1778)
!1778 = !DILexicalBlockFile(scope: !1772, file: !142, discriminator: 18)
!1779 = !DILocation(line: 712, column: 7, scope: !1780)
!1780 = !DILexicalBlockFile(scope: !1752, file: !142, discriminator: 20)
!1781 = !DILocation(line: 712, column: 7, scope: !1782)
!1782 = !DILexicalBlockFile(scope: !1783, file: !142, discriminator: 22)
!1783 = distinct !DILexicalBlock(scope: !1784, file: !142, line: 712, column: 7)
!1784 = distinct !DILexicalBlock(scope: !1742, file: !142, line: 712, column: 7)
!1785 = !DILocation(line: 712, column: 7, scope: !1786)
!1786 = !DILexicalBlockFile(scope: !1784, file: !142, discriminator: 22)
!1787 = !DILocation(line: 712, column: 7, scope: !1788)
!1788 = !DILexicalBlockFile(scope: !1783, file: !142, discriminator: 23)
!1789 = !DILocation(line: 712, column: 7, scope: !1790)
!1790 = !DILexicalBlockFile(scope: !1784, file: !142, discriminator: 24)
!1791 = !DILocation(line: 715, column: 7, scope: !1792)
!1792 = !DILexicalBlockFile(scope: !1793, file: !142, discriminator: 1)
!1793 = distinct !DILexicalBlock(scope: !1794, file: !142, line: 715, column: 7)
!1794 = distinct !DILexicalBlock(scope: !1127, file: !142, line: 715, column: 7)
!1795 = !DILocation(line: 715, column: 7, scope: !1796)
!1796 = !DILexicalBlockFile(scope: !1793, file: !142, discriminator: 2)
!1797 = !DILocation(line: 715, column: 7, scope: !1798)
!1798 = !DILexicalBlockFile(scope: !1799, file: !142, discriminator: 4)
!1799 = distinct !DILexicalBlock(scope: !1800, file: !142, line: 715, column: 7)
!1800 = distinct !DILexicalBlock(scope: !1801, file: !142, line: 715, column: 7)
!1801 = distinct !DILexicalBlock(scope: !1793, file: !142, line: 715, column: 7)
!1802 = !DILocation(line: 715, column: 7, scope: !1803)
!1803 = !DILexicalBlockFile(scope: !1800, file: !142, discriminator: 4)
!1804 = !DILocation(line: 715, column: 7, scope: !1805)
!1805 = !DILexicalBlockFile(scope: !1799, file: !142, discriminator: 5)
!1806 = !DILocation(line: 715, column: 7, scope: !1807)
!1807 = !DILexicalBlockFile(scope: !1800, file: !142, discriminator: 6)
!1808 = !DILocation(line: 715, column: 7, scope: !1809)
!1809 = !DILexicalBlockFile(scope: !1810, file: !142, discriminator: 9)
!1810 = distinct !DILexicalBlock(scope: !1811, file: !142, line: 715, column: 7)
!1811 = distinct !DILexicalBlock(scope: !1801, file: !142, line: 715, column: 7)
!1812 = !DILocation(line: 715, column: 7, scope: !1813)
!1813 = !DILexicalBlockFile(scope: !1811, file: !142, discriminator: 9)
!1814 = !DILocation(line: 715, column: 7, scope: !1815)
!1815 = !DILexicalBlockFile(scope: !1810, file: !142, discriminator: 10)
!1816 = !DILocation(line: 715, column: 7, scope: !1817)
!1817 = !DILexicalBlockFile(scope: !1811, file: !142, discriminator: 11)
!1818 = !DILocation(line: 715, column: 7, scope: !1819)
!1819 = !DILexicalBlockFile(scope: !1801, file: !142, discriminator: 13)
!1820 = !DILocation(line: 716, column: 7, scope: !1821)
!1821 = !DILexicalBlockFile(scope: !1822, file: !142, discriminator: 1)
!1822 = distinct !DILexicalBlock(scope: !1823, file: !142, line: 716, column: 7)
!1823 = distinct !DILexicalBlock(scope: !1127, file: !142, line: 716, column: 7)
!1824 = !DILocation(line: 716, column: 7, scope: !1825)
!1825 = !DILexicalBlockFile(scope: !1823, file: !142, discriminator: 1)
!1826 = !DILocation(line: 716, column: 7, scope: !1827)
!1827 = !DILexicalBlockFile(scope: !1822, file: !142, discriminator: 2)
!1828 = !DILocation(line: 716, column: 7, scope: !1829)
!1829 = !DILexicalBlockFile(scope: !1823, file: !142, discriminator: 3)
!1830 = !DILocation(line: 718, column: 13, scope: !1831)
!1831 = distinct !DILexicalBlock(scope: !1127, file: !142, line: 718, column: 11)
!1832 = !DILocation(line: 718, column: 11, scope: !1127)
!1833 = !DILocation(line: 720, column: 5, scope: !1128)
!1834 = !DILocation(line: 392, column: 75, scope: !1835)
!1835 = !DILexicalBlockFile(scope: !1128, file: !142, discriminator: 5)
!1836 = !DILocation(line: 392, column: 3, scope: !1835)
!1837 = distinct !{!1837, !1838, !1839}
!1838 = !DILocation(line: 392, column: 3, scope: !1129)
!1839 = !DILocation(line: 720, column: 5, scope: !1129)
!1840 = !DILocation(line: 722, column: 11, scope: !1841)
!1841 = distinct !DILexicalBlock(scope: !1100, file: !142, line: 722, column: 7)
!1842 = !DILocation(line: 722, column: 16, scope: !1841)
!1843 = !DILocation(line: 730, column: 51, scope: !1844)
!1844 = distinct !DILexicalBlock(scope: !1100, file: !142, line: 730, column: 7)
!1845 = !DILocation(line: 731, column: 10, scope: !1846)
!1846 = !DILexicalBlockFile(scope: !1844, file: !142, discriminator: 1)
!1847 = !DILocation(line: 733, column: 11, scope: !1848)
!1848 = distinct !DILexicalBlock(scope: !1849, file: !142, line: 733, column: 11)
!1849 = distinct !DILexicalBlock(scope: !1844, file: !142, line: 732, column: 5)
!1850 = !DILocation(line: 733, column: 11, scope: !1849)
!1851 = !DILocation(line: 734, column: 16, scope: !1848)
!1852 = !DILocation(line: 734, column: 9, scope: !1848)
!1853 = !DILocation(line: 738, column: 18, scope: !1854)
!1854 = distinct !DILexicalBlock(scope: !1848, file: !142, line: 738, column: 16)
!1855 = !DILocation(line: 738, column: 32, scope: !1856)
!1856 = !DILexicalBlockFile(scope: !1854, file: !142, discriminator: 1)
!1857 = !DILocation(line: 738, column: 29, scope: !1854)
!1858 = !DILocation(line: 747, column: 7, scope: !1859)
!1859 = distinct !DILexicalBlock(scope: !1100, file: !142, line: 747, column: 7)
!1860 = !DILocation(line: 747, column: 20, scope: !1859)
!1861 = !DILocation(line: 748, column: 12, scope: !1862)
!1862 = !DILexicalBlockFile(scope: !1863, file: !142, discriminator: 1)
!1863 = distinct !DILexicalBlock(scope: !1864, file: !142, line: 748, column: 5)
!1864 = distinct !DILexicalBlock(scope: !1859, file: !142, line: 748, column: 5)
!1865 = !DILocation(line: 748, column: 5, scope: !1866)
!1866 = !DILexicalBlockFile(scope: !1864, file: !142, discriminator: 1)
!1867 = !DILocation(line: 749, column: 7, scope: !1868)
!1868 = !DILexicalBlockFile(scope: !1869, file: !142, discriminator: 1)
!1869 = distinct !DILexicalBlock(scope: !1870, file: !142, line: 749, column: 7)
!1870 = distinct !DILexicalBlock(scope: !1863, file: !142, line: 749, column: 7)
!1871 = !DILocation(line: 749, column: 7, scope: !1872)
!1872 = !DILexicalBlockFile(scope: !1870, file: !142, discriminator: 1)
!1873 = !DILocation(line: 749, column: 7, scope: !1874)
!1874 = !DILexicalBlockFile(scope: !1869, file: !142, discriminator: 2)
!1875 = !DILocation(line: 749, column: 7, scope: !1876)
!1876 = !DILexicalBlockFile(scope: !1870, file: !142, discriminator: 3)
!1877 = !DILocation(line: 748, column: 39, scope: !1878)
!1878 = !DILexicalBlockFile(scope: !1863, file: !142, discriminator: 2)
!1879 = distinct !{!1879, !1880, !1881}
!1880 = !DILocation(line: 748, column: 5, scope: !1864)
!1881 = !DILocation(line: 749, column: 7, scope: !1864)
!1882 = !DILocation(line: 751, column: 11, scope: !1883)
!1883 = distinct !DILexicalBlock(scope: !1100, file: !142, line: 751, column: 7)
!1884 = !DILocation(line: 751, column: 7, scope: !1100)
!1885 = !DILocation(line: 752, column: 5, scope: !1883)
!1886 = !DILocation(line: 752, column: 17, scope: !1883)
!1887 = !DILocation(line: 758, column: 21, scope: !1888)
!1888 = distinct !DILexicalBlock(scope: !1100, file: !142, line: 758, column: 7)
!1889 = !DILocation(line: 758, column: 54, scope: !1890)
!1890 = !DILexicalBlockFile(scope: !1888, file: !142, discriminator: 1)
!1891 = !DILocation(line: 758, column: 51, scope: !1888)
!1892 = !DILocation(line: 762, column: 42, scope: !1100)
!1893 = !DILocation(line: 760, column: 10, scope: !1100)
!1894 = !DILocation(line: 760, column: 3, scope: !1100)
!1895 = !DILocation(line: 764, column: 1, scope: !1100)
!1896 = distinct !DISubprogram(name: "gettext_quote", scope: !142, file: !142, line: 199, type: !1897, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !1899)
!1897 = !DISubroutineType(types: !1898)
!1898 = !{!37, !37, !11}
!1899 = !{!1900, !1901, !1902, !1903}
!1900 = !DILocalVariable(name: "msgid", arg: 1, scope: !1896, file: !142, line: 199, type: !37)
!1901 = !DILocalVariable(name: "s", arg: 2, scope: !1896, file: !142, line: 199, type: !11)
!1902 = !DILocalVariable(name: "translation", scope: !1896, file: !142, line: 201, type: !37)
!1903 = !DILocalVariable(name: "locale_code", scope: !1896, file: !142, line: 202, type: !37)
!1904 = !DILocation(line: 199, column: 28, scope: !1896)
!1905 = !DILocation(line: 199, column: 54, scope: !1896)
!1906 = !DILocation(line: 201, column: 29, scope: !1896)
!1907 = !DILocation(line: 201, column: 15, scope: !1896)
!1908 = !DILocation(line: 204, column: 19, scope: !1909)
!1909 = distinct !DILexicalBlock(scope: !1896, file: !142, line: 204, column: 7)
!1910 = !DILocation(line: 204, column: 7, scope: !1896)
!1911 = !DILocation(line: 225, column: 17, scope: !1896)
!1912 = !DILocation(line: 202, column: 15, scope: !1896)
!1913 = !DILocalVariable(name: "s2", arg: 2, scope: !1914, file: !1915, line: 160, type: !37)
!1914 = distinct !DISubprogram(name: "strcaseeq0", scope: !1915, file: !1915, line: 160, type: !1916, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !1918)
!1915 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1916 = !DISubroutineType(types: !1917)
!1917 = !{!67, !37, !37, !27, !27, !27, !27, !27, !27, !27, !27, !27}
!1918 = !{!1919, !1913, !1920, !1921, !1922, !1923, !1924, !1925, !1926, !1927, !1928}
!1919 = !DILocalVariable(name: "s1", arg: 1, scope: !1914, file: !1915, line: 160, type: !37)
!1920 = !DILocalVariable(name: "s20", arg: 3, scope: !1914, file: !1915, line: 160, type: !27)
!1921 = !DILocalVariable(name: "s21", arg: 4, scope: !1914, file: !1915, line: 160, type: !27)
!1922 = !DILocalVariable(name: "s22", arg: 5, scope: !1914, file: !1915, line: 160, type: !27)
!1923 = !DILocalVariable(name: "s23", arg: 6, scope: !1914, file: !1915, line: 160, type: !27)
!1924 = !DILocalVariable(name: "s24", arg: 7, scope: !1914, file: !1915, line: 160, type: !27)
!1925 = !DILocalVariable(name: "s25", arg: 8, scope: !1914, file: !1915, line: 160, type: !27)
!1926 = !DILocalVariable(name: "s26", arg: 9, scope: !1914, file: !1915, line: 160, type: !27)
!1927 = !DILocalVariable(name: "s27", arg: 10, scope: !1914, file: !1915, line: 160, type: !27)
!1928 = !DILocalVariable(name: "s28", arg: 11, scope: !1914, file: !1915, line: 160, type: !27)
!1929 = !DILocation(line: 160, column: 41, scope: !1914, inlinedAt: !1930)
!1930 = distinct !DILocation(line: 226, column: 7, scope: !1931)
!1931 = distinct !DILexicalBlock(scope: !1896, file: !142, line: 226, column: 7)
!1932 = !DILocation(line: 160, column: 120, scope: !1914, inlinedAt: !1930)
!1933 = !DILocation(line: 160, column: 130, scope: !1914, inlinedAt: !1930)
!1934 = !DILocation(line: 162, column: 7, scope: !1935, inlinedAt: !1930)
!1935 = !DILexicalBlockFile(scope: !1936, file: !1915, discriminator: 1)
!1936 = distinct !DILexicalBlock(scope: !1914, file: !1915, line: 162, column: 7)
!1937 = !DILocalVariable(name: "s2", arg: 2, scope: !1938, file: !1915, line: 146, type: !37)
!1938 = distinct !DISubprogram(name: "strcaseeq1", scope: !1915, file: !1915, line: 146, type: !1939, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !1941)
!1939 = !DISubroutineType(types: !1940)
!1940 = !{!67, !37, !37, !27, !27, !27, !27, !27, !27, !27, !27}
!1941 = !{!1942, !1937, !1943, !1944, !1945, !1946, !1947, !1948, !1949, !1950}
!1942 = !DILocalVariable(name: "s1", arg: 1, scope: !1938, file: !1915, line: 146, type: !37)
!1943 = !DILocalVariable(name: "s21", arg: 3, scope: !1938, file: !1915, line: 146, type: !27)
!1944 = !DILocalVariable(name: "s22", arg: 4, scope: !1938, file: !1915, line: 146, type: !27)
!1945 = !DILocalVariable(name: "s23", arg: 5, scope: !1938, file: !1915, line: 146, type: !27)
!1946 = !DILocalVariable(name: "s24", arg: 6, scope: !1938, file: !1915, line: 146, type: !27)
!1947 = !DILocalVariable(name: "s25", arg: 7, scope: !1938, file: !1915, line: 146, type: !27)
!1948 = !DILocalVariable(name: "s26", arg: 8, scope: !1938, file: !1915, line: 146, type: !27)
!1949 = !DILocalVariable(name: "s27", arg: 9, scope: !1938, file: !1915, line: 146, type: !27)
!1950 = !DILocalVariable(name: "s28", arg: 10, scope: !1938, file: !1915, line: 146, type: !27)
!1951 = !DILocation(line: 146, column: 41, scope: !1938, inlinedAt: !1952)
!1952 = distinct !DILocation(line: 167, column: 16, scope: !1953, inlinedAt: !1930)
!1953 = distinct !DILexicalBlock(scope: !1954, file: !1915, line: 164, column: 11)
!1954 = distinct !DILexicalBlock(scope: !1936, file: !1915, line: 163, column: 5)
!1955 = !DILocation(line: 146, column: 110, scope: !1938, inlinedAt: !1952)
!1956 = !DILocation(line: 146, column: 120, scope: !1938, inlinedAt: !1952)
!1957 = !DILocation(line: 148, column: 7, scope: !1958, inlinedAt: !1952)
!1958 = !DILexicalBlockFile(scope: !1959, file: !1915, discriminator: 1)
!1959 = distinct !DILexicalBlock(scope: !1938, file: !1915, line: 148, column: 7)
!1960 = !DILocalVariable(name: "s2", arg: 2, scope: !1961, file: !1915, line: 132, type: !37)
!1961 = distinct !DISubprogram(name: "strcaseeq2", scope: !1915, file: !1915, line: 132, type: !1962, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !1964)
!1962 = !DISubroutineType(types: !1963)
!1963 = !{!67, !37, !37, !27, !27, !27, !27, !27, !27, !27}
!1964 = !{!1965, !1960, !1966, !1967, !1968, !1969, !1970, !1971, !1972}
!1965 = !DILocalVariable(name: "s1", arg: 1, scope: !1961, file: !1915, line: 132, type: !37)
!1966 = !DILocalVariable(name: "s22", arg: 3, scope: !1961, file: !1915, line: 132, type: !27)
!1967 = !DILocalVariable(name: "s23", arg: 4, scope: !1961, file: !1915, line: 132, type: !27)
!1968 = !DILocalVariable(name: "s24", arg: 5, scope: !1961, file: !1915, line: 132, type: !27)
!1969 = !DILocalVariable(name: "s25", arg: 6, scope: !1961, file: !1915, line: 132, type: !27)
!1970 = !DILocalVariable(name: "s26", arg: 7, scope: !1961, file: !1915, line: 132, type: !27)
!1971 = !DILocalVariable(name: "s27", arg: 8, scope: !1961, file: !1915, line: 132, type: !27)
!1972 = !DILocalVariable(name: "s28", arg: 9, scope: !1961, file: !1915, line: 132, type: !27)
!1973 = !DILocation(line: 132, column: 41, scope: !1961, inlinedAt: !1974)
!1974 = distinct !DILocation(line: 153, column: 16, scope: !1975, inlinedAt: !1952)
!1975 = distinct !DILexicalBlock(scope: !1976, file: !1915, line: 150, column: 11)
!1976 = distinct !DILexicalBlock(scope: !1959, file: !1915, line: 149, column: 5)
!1977 = !DILocation(line: 132, column: 100, scope: !1961, inlinedAt: !1974)
!1978 = !DILocation(line: 132, column: 110, scope: !1961, inlinedAt: !1974)
!1979 = !DILocation(line: 134, column: 7, scope: !1980, inlinedAt: !1974)
!1980 = !DILexicalBlockFile(scope: !1981, file: !1915, discriminator: 1)
!1981 = distinct !DILexicalBlock(scope: !1961, file: !1915, line: 134, column: 7)
!1982 = !DILocalVariable(name: "s2", arg: 2, scope: !1983, file: !1915, line: 118, type: !37)
!1983 = distinct !DISubprogram(name: "strcaseeq3", scope: !1915, file: !1915, line: 118, type: !1984, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !1986)
!1984 = !DISubroutineType(types: !1985)
!1985 = !{!67, !37, !37, !27, !27, !27, !27, !27, !27}
!1986 = !{!1987, !1982, !1988, !1989, !1990, !1991, !1992, !1993}
!1987 = !DILocalVariable(name: "s1", arg: 1, scope: !1983, file: !1915, line: 118, type: !37)
!1988 = !DILocalVariable(name: "s23", arg: 3, scope: !1983, file: !1915, line: 118, type: !27)
!1989 = !DILocalVariable(name: "s24", arg: 4, scope: !1983, file: !1915, line: 118, type: !27)
!1990 = !DILocalVariable(name: "s25", arg: 5, scope: !1983, file: !1915, line: 118, type: !27)
!1991 = !DILocalVariable(name: "s26", arg: 6, scope: !1983, file: !1915, line: 118, type: !27)
!1992 = !DILocalVariable(name: "s27", arg: 7, scope: !1983, file: !1915, line: 118, type: !27)
!1993 = !DILocalVariable(name: "s28", arg: 8, scope: !1983, file: !1915, line: 118, type: !27)
!1994 = !DILocation(line: 118, column: 41, scope: !1983, inlinedAt: !1995)
!1995 = distinct !DILocation(line: 139, column: 16, scope: !1996, inlinedAt: !1974)
!1996 = distinct !DILexicalBlock(scope: !1997, file: !1915, line: 136, column: 11)
!1997 = distinct !DILexicalBlock(scope: !1981, file: !1915, line: 135, column: 5)
!1998 = !DILocation(line: 118, column: 90, scope: !1983, inlinedAt: !1995)
!1999 = !DILocation(line: 118, column: 100, scope: !1983, inlinedAt: !1995)
!2000 = !DILocation(line: 120, column: 7, scope: !2001, inlinedAt: !1995)
!2001 = !DILexicalBlockFile(scope: !2002, file: !1915, discriminator: 2)
!2002 = distinct !DILexicalBlock(scope: !1983, file: !1915, line: 120, column: 7)
!2003 = !DILocation(line: 120, column: 7, scope: !2004, inlinedAt: !1995)
!2004 = !DILexicalBlockFile(scope: !1983, file: !1915, discriminator: 2)
!2005 = !DILocalVariable(name: "s2", arg: 2, scope: !2006, file: !1915, line: 104, type: !37)
!2006 = distinct !DISubprogram(name: "strcaseeq4", scope: !1915, file: !1915, line: 104, type: !2007, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !2009)
!2007 = !DISubroutineType(types: !2008)
!2008 = !{!67, !37, !37, !27, !27, !27, !27, !27}
!2009 = !{!2010, !2005, !2011, !2012, !2013, !2014, !2015}
!2010 = !DILocalVariable(name: "s1", arg: 1, scope: !2006, file: !1915, line: 104, type: !37)
!2011 = !DILocalVariable(name: "s24", arg: 3, scope: !2006, file: !1915, line: 104, type: !27)
!2012 = !DILocalVariable(name: "s25", arg: 4, scope: !2006, file: !1915, line: 104, type: !27)
!2013 = !DILocalVariable(name: "s26", arg: 5, scope: !2006, file: !1915, line: 104, type: !27)
!2014 = !DILocalVariable(name: "s27", arg: 6, scope: !2006, file: !1915, line: 104, type: !27)
!2015 = !DILocalVariable(name: "s28", arg: 7, scope: !2006, file: !1915, line: 104, type: !27)
!2016 = !DILocation(line: 104, column: 41, scope: !2006, inlinedAt: !2017)
!2017 = distinct !DILocation(line: 125, column: 16, scope: !2018, inlinedAt: !1995)
!2018 = distinct !DILexicalBlock(scope: !2019, file: !1915, line: 122, column: 11)
!2019 = distinct !DILexicalBlock(scope: !2002, file: !1915, line: 121, column: 5)
!2020 = !DILocation(line: 104, column: 80, scope: !2006, inlinedAt: !2017)
!2021 = !DILocation(line: 104, column: 90, scope: !2006, inlinedAt: !2017)
!2022 = !DILocation(line: 106, column: 7, scope: !2023, inlinedAt: !2017)
!2023 = !DILexicalBlockFile(scope: !2024, file: !1915, discriminator: 2)
!2024 = distinct !DILexicalBlock(scope: !2006, file: !1915, line: 106, column: 7)
!2025 = !DILocation(line: 106, column: 7, scope: !2026, inlinedAt: !2017)
!2026 = !DILexicalBlockFile(scope: !2006, file: !1915, discriminator: 2)
!2027 = !DILocalVariable(name: "s2", arg: 2, scope: !2028, file: !1915, line: 90, type: !37)
!2028 = distinct !DISubprogram(name: "strcaseeq5", scope: !1915, file: !1915, line: 90, type: !2029, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !2031)
!2029 = !DISubroutineType(types: !2030)
!2030 = !{!67, !37, !37, !27, !27, !27, !27}
!2031 = !{!2032, !2027, !2033, !2034, !2035, !2036}
!2032 = !DILocalVariable(name: "s1", arg: 1, scope: !2028, file: !1915, line: 90, type: !37)
!2033 = !DILocalVariable(name: "s25", arg: 3, scope: !2028, file: !1915, line: 90, type: !27)
!2034 = !DILocalVariable(name: "s26", arg: 4, scope: !2028, file: !1915, line: 90, type: !27)
!2035 = !DILocalVariable(name: "s27", arg: 5, scope: !2028, file: !1915, line: 90, type: !27)
!2036 = !DILocalVariable(name: "s28", arg: 6, scope: !2028, file: !1915, line: 90, type: !27)
!2037 = !DILocation(line: 90, column: 41, scope: !2028, inlinedAt: !2038)
!2038 = distinct !DILocation(line: 111, column: 16, scope: !2039, inlinedAt: !2017)
!2039 = distinct !DILexicalBlock(scope: !2040, file: !1915, line: 108, column: 11)
!2040 = distinct !DILexicalBlock(scope: !2024, file: !1915, line: 107, column: 5)
!2041 = !DILocation(line: 90, column: 70, scope: !2028, inlinedAt: !2038)
!2042 = !DILocation(line: 90, column: 80, scope: !2028, inlinedAt: !2038)
!2043 = !DILocation(line: 92, column: 7, scope: !2044, inlinedAt: !2038)
!2044 = !DILexicalBlockFile(scope: !2045, file: !1915, discriminator: 2)
!2045 = distinct !DILexicalBlock(scope: !2028, file: !1915, line: 92, column: 7)
!2046 = !DILocation(line: 92, column: 7, scope: !2047, inlinedAt: !2038)
!2047 = !DILexicalBlockFile(scope: !2028, file: !1915, discriminator: 2)
!2048 = !DILocation(line: 227, column: 12, scope: !1931)
!2049 = !DILocation(line: 227, column: 21, scope: !1931)
!2050 = !DILocation(line: 227, column: 5, scope: !1931)
!2051 = !DILocation(line: 146, column: 41, scope: !1938, inlinedAt: !2052)
!2052 = distinct !DILocation(line: 167, column: 16, scope: !1953, inlinedAt: !2053)
!2053 = distinct !DILocation(line: 228, column: 7, scope: !2054)
!2054 = distinct !DILexicalBlock(scope: !1896, file: !142, line: 228, column: 7)
!2055 = !DILocation(line: 146, column: 110, scope: !1938, inlinedAt: !2052)
!2056 = !DILocation(line: 146, column: 120, scope: !1938, inlinedAt: !2052)
!2057 = !DILocation(line: 148, column: 7, scope: !1958, inlinedAt: !2052)
!2058 = !DILocation(line: 132, column: 41, scope: !1961, inlinedAt: !2059)
!2059 = distinct !DILocation(line: 153, column: 16, scope: !1975, inlinedAt: !2052)
!2060 = !DILocation(line: 132, column: 100, scope: !1961, inlinedAt: !2059)
!2061 = !DILocation(line: 132, column: 110, scope: !1961, inlinedAt: !2059)
!2062 = !DILocation(line: 134, column: 7, scope: !2063, inlinedAt: !2059)
!2063 = !DILexicalBlockFile(scope: !1981, file: !1915, discriminator: 2)
!2064 = !DILocation(line: 134, column: 7, scope: !2065, inlinedAt: !2059)
!2065 = !DILexicalBlockFile(scope: !1961, file: !1915, discriminator: 2)
!2066 = !DILocation(line: 118, column: 41, scope: !1983, inlinedAt: !2067)
!2067 = distinct !DILocation(line: 139, column: 16, scope: !1996, inlinedAt: !2059)
!2068 = !DILocation(line: 118, column: 90, scope: !1983, inlinedAt: !2067)
!2069 = !DILocation(line: 118, column: 100, scope: !1983, inlinedAt: !2067)
!2070 = !DILocation(line: 120, column: 7, scope: !2001, inlinedAt: !2067)
!2071 = !DILocation(line: 120, column: 7, scope: !2004, inlinedAt: !2067)
!2072 = !DILocation(line: 104, column: 41, scope: !2006, inlinedAt: !2073)
!2073 = distinct !DILocation(line: 125, column: 16, scope: !2018, inlinedAt: !2067)
!2074 = !DILocation(line: 104, column: 80, scope: !2006, inlinedAt: !2073)
!2075 = !DILocation(line: 104, column: 90, scope: !2006, inlinedAt: !2073)
!2076 = !DILocation(line: 106, column: 7, scope: !2023, inlinedAt: !2073)
!2077 = !DILocation(line: 106, column: 7, scope: !2026, inlinedAt: !2073)
!2078 = !DILocation(line: 90, column: 41, scope: !2028, inlinedAt: !2079)
!2079 = distinct !DILocation(line: 111, column: 16, scope: !2039, inlinedAt: !2073)
!2080 = !DILocation(line: 90, column: 70, scope: !2028, inlinedAt: !2079)
!2081 = !DILocation(line: 90, column: 80, scope: !2028, inlinedAt: !2079)
!2082 = !DILocation(line: 92, column: 7, scope: !2044, inlinedAt: !2079)
!2083 = !DILocation(line: 92, column: 7, scope: !2047, inlinedAt: !2079)
!2084 = !DILocalVariable(name: "s2", arg: 2, scope: !2085, file: !1915, line: 76, type: !37)
!2085 = distinct !DISubprogram(name: "strcaseeq6", scope: !1915, file: !1915, line: 76, type: !2086, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !2088)
!2086 = !DISubroutineType(types: !2087)
!2087 = !{!67, !37, !37, !27, !27, !27}
!2088 = !{!2089, !2084, !2090, !2091, !2092}
!2089 = !DILocalVariable(name: "s1", arg: 1, scope: !2085, file: !1915, line: 76, type: !37)
!2090 = !DILocalVariable(name: "s26", arg: 3, scope: !2085, file: !1915, line: 76, type: !27)
!2091 = !DILocalVariable(name: "s27", arg: 4, scope: !2085, file: !1915, line: 76, type: !27)
!2092 = !DILocalVariable(name: "s28", arg: 5, scope: !2085, file: !1915, line: 76, type: !27)
!2093 = !DILocation(line: 76, column: 41, scope: !2085, inlinedAt: !2094)
!2094 = distinct !DILocation(line: 97, column: 16, scope: !2095, inlinedAt: !2079)
!2095 = distinct !DILexicalBlock(scope: !2096, file: !1915, line: 94, column: 11)
!2096 = distinct !DILexicalBlock(scope: !2045, file: !1915, line: 93, column: 5)
!2097 = !DILocation(line: 76, column: 60, scope: !2085, inlinedAt: !2094)
!2098 = !DILocation(line: 76, column: 70, scope: !2085, inlinedAt: !2094)
!2099 = !DILocation(line: 78, column: 7, scope: !2100, inlinedAt: !2094)
!2100 = !DILexicalBlockFile(scope: !2101, file: !1915, discriminator: 2)
!2101 = distinct !DILexicalBlock(scope: !2085, file: !1915, line: 78, column: 7)
!2102 = !DILocation(line: 78, column: 7, scope: !2103, inlinedAt: !2094)
!2103 = !DILexicalBlockFile(scope: !2085, file: !1915, discriminator: 2)
!2104 = !DILocalVariable(name: "s2", arg: 2, scope: !2105, file: !1915, line: 62, type: !37)
!2105 = distinct !DISubprogram(name: "strcaseeq7", scope: !1915, file: !1915, line: 62, type: !2106, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !2108)
!2106 = !DISubroutineType(types: !2107)
!2107 = !{!67, !37, !37, !27, !27}
!2108 = !{!2109, !2104, !2110, !2111}
!2109 = !DILocalVariable(name: "s1", arg: 1, scope: !2105, file: !1915, line: 62, type: !37)
!2110 = !DILocalVariable(name: "s27", arg: 3, scope: !2105, file: !1915, line: 62, type: !27)
!2111 = !DILocalVariable(name: "s28", arg: 4, scope: !2105, file: !1915, line: 62, type: !27)
!2112 = !DILocation(line: 62, column: 41, scope: !2105, inlinedAt: !2113)
!2113 = distinct !DILocation(line: 83, column: 16, scope: !2114, inlinedAt: !2094)
!2114 = distinct !DILexicalBlock(scope: !2115, file: !1915, line: 80, column: 11)
!2115 = distinct !DILexicalBlock(scope: !2101, file: !1915, line: 79, column: 5)
!2116 = !DILocation(line: 62, column: 50, scope: !2105, inlinedAt: !2113)
!2117 = !DILocation(line: 62, column: 60, scope: !2105, inlinedAt: !2113)
!2118 = !DILocation(line: 64, column: 7, scope: !2119, inlinedAt: !2113)
!2119 = !DILexicalBlockFile(scope: !2120, file: !1915, discriminator: 2)
!2120 = distinct !DILexicalBlock(scope: !2105, file: !1915, line: 64, column: 7)
!2121 = !DILocation(line: 228, column: 7, scope: !1896)
!2122 = !DILocation(line: 229, column: 12, scope: !2054)
!2123 = !DILocation(line: 229, column: 21, scope: !2054)
!2124 = !DILocation(line: 229, column: 5, scope: !2054)
!2125 = !DILocation(line: 231, column: 13, scope: !1896)
!2126 = !DILocation(line: 231, column: 11, scope: !1896)
!2127 = !DILocation(line: 231, column: 3, scope: !1896)
!2128 = !DILocation(line: 232, column: 1, scope: !1896)
!2129 = distinct !DISubprogram(name: "quotearg_alloc", scope: !142, file: !142, line: 791, type: !2130, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !2132)
!2130 = !DISubroutineType(types: !2131)
!2131 = !{!26, !37, !29, !968}
!2132 = !{!2133, !2134, !2135}
!2133 = !DILocalVariable(name: "arg", arg: 1, scope: !2129, file: !142, line: 791, type: !37)
!2134 = !DILocalVariable(name: "argsize", arg: 2, scope: !2129, file: !142, line: 791, type: !29)
!2135 = !DILocalVariable(name: "o", arg: 3, scope: !2129, file: !142, line: 792, type: !968)
!2136 = !DILocation(line: 791, column: 29, scope: !2129)
!2137 = !DILocation(line: 791, column: 41, scope: !2129)
!2138 = !DILocation(line: 792, column: 47, scope: !2129)
!2139 = !DILocalVariable(name: "arg", arg: 1, scope: !2140, file: !142, line: 804, type: !37)
!2140 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !142, file: !142, line: 804, type: !2141, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !2143)
!2141 = !DISubroutineType(types: !2142)
!2142 = !{!26, !37, !29, !592, !968}
!2143 = !{!2139, !2144, !2145, !2146, !2147, !2148, !2149, !2150, !2151}
!2144 = !DILocalVariable(name: "argsize", arg: 2, scope: !2140, file: !142, line: 804, type: !29)
!2145 = !DILocalVariable(name: "size", arg: 3, scope: !2140, file: !142, line: 804, type: !592)
!2146 = !DILocalVariable(name: "o", arg: 4, scope: !2140, file: !142, line: 805, type: !968)
!2147 = !DILocalVariable(name: "p", scope: !2140, file: !142, line: 807, type: !968)
!2148 = !DILocalVariable(name: "e", scope: !2140, file: !142, line: 808, type: !67)
!2149 = !DILocalVariable(name: "flags", scope: !2140, file: !142, line: 810, type: !67)
!2150 = !DILocalVariable(name: "bufsize", scope: !2140, file: !142, line: 811, type: !29)
!2151 = !DILocalVariable(name: "buf", scope: !2140, file: !142, line: 815, type: !26)
!2152 = !DILocation(line: 804, column: 33, scope: !2140, inlinedAt: !2153)
!2153 = distinct !DILocation(line: 794, column: 10, scope: !2129)
!2154 = !DILocation(line: 804, column: 45, scope: !2140, inlinedAt: !2153)
!2155 = !DILocation(line: 804, column: 62, scope: !2140, inlinedAt: !2153)
!2156 = !DILocation(line: 805, column: 51, scope: !2140, inlinedAt: !2153)
!2157 = !DILocation(line: 807, column: 37, scope: !2140, inlinedAt: !2153)
!2158 = !DILocation(line: 807, column: 33, scope: !2140, inlinedAt: !2153)
!2159 = !DILocation(line: 808, column: 11, scope: !2140, inlinedAt: !2153)
!2160 = !DILocation(line: 808, column: 7, scope: !2140, inlinedAt: !2153)
!2161 = !DILocation(line: 810, column: 18, scope: !2140, inlinedAt: !2153)
!2162 = !DILocation(line: 810, column: 24, scope: !2140, inlinedAt: !2153)
!2163 = !DILocation(line: 810, column: 7, scope: !2140, inlinedAt: !2153)
!2164 = !DILocation(line: 811, column: 69, scope: !2140, inlinedAt: !2153)
!2165 = !DILocation(line: 812, column: 53, scope: !2140, inlinedAt: !2153)
!2166 = !DILocation(line: 813, column: 49, scope: !2140, inlinedAt: !2153)
!2167 = !DILocation(line: 814, column: 49, scope: !2140, inlinedAt: !2153)
!2168 = !DILocation(line: 811, column: 20, scope: !2140, inlinedAt: !2153)
!2169 = !DILocation(line: 814, column: 62, scope: !2140, inlinedAt: !2153)
!2170 = !DILocation(line: 811, column: 10, scope: !2140, inlinedAt: !2153)
!2171 = !DILocalVariable(name: "n", arg: 1, scope: !2172, file: !588, line: 220, type: !29)
!2172 = distinct !DISubprogram(name: "xcharalloc", scope: !588, file: !588, line: 220, type: !2173, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !2175)
!2173 = !DISubroutineType(types: !2174)
!2174 = !{!26, !29}
!2175 = !{!2171}
!2176 = !DILocation(line: 220, column: 20, scope: !2172, inlinedAt: !2177)
!2177 = distinct !DILocation(line: 815, column: 15, scope: !2140, inlinedAt: !2153)
!2178 = !DILocation(line: 222, column: 10, scope: !2172, inlinedAt: !2177)
!2179 = !DILocation(line: 815, column: 9, scope: !2140, inlinedAt: !2153)
!2180 = !DILocation(line: 816, column: 60, scope: !2140, inlinedAt: !2153)
!2181 = !DILocation(line: 818, column: 32, scope: !2140, inlinedAt: !2153)
!2182 = !DILocation(line: 818, column: 47, scope: !2140, inlinedAt: !2153)
!2183 = !DILocation(line: 816, column: 3, scope: !2140, inlinedAt: !2153)
!2184 = !DILocation(line: 819, column: 9, scope: !2140, inlinedAt: !2153)
!2185 = !DILocation(line: 794, column: 3, scope: !2129)
!2186 = !DILocation(line: 804, column: 33, scope: !2140)
!2187 = !DILocation(line: 804, column: 45, scope: !2140)
!2188 = !DILocation(line: 804, column: 62, scope: !2140)
!2189 = !DILocation(line: 805, column: 51, scope: !2140)
!2190 = !DILocation(line: 807, column: 37, scope: !2140)
!2191 = !DILocation(line: 807, column: 33, scope: !2140)
!2192 = !DILocation(line: 808, column: 11, scope: !2140)
!2193 = !DILocation(line: 808, column: 7, scope: !2140)
!2194 = !DILocation(line: 810, column: 18, scope: !2140)
!2195 = !DILocation(line: 810, column: 27, scope: !2140)
!2196 = !DILocation(line: 810, column: 24, scope: !2140)
!2197 = !DILocation(line: 810, column: 7, scope: !2140)
!2198 = !DILocation(line: 811, column: 69, scope: !2140)
!2199 = !DILocation(line: 812, column: 53, scope: !2140)
!2200 = !DILocation(line: 813, column: 49, scope: !2140)
!2201 = !DILocation(line: 814, column: 49, scope: !2140)
!2202 = !DILocation(line: 811, column: 20, scope: !2140)
!2203 = !DILocation(line: 814, column: 62, scope: !2140)
!2204 = !DILocation(line: 811, column: 10, scope: !2140)
!2205 = !DILocation(line: 220, column: 20, scope: !2172, inlinedAt: !2206)
!2206 = distinct !DILocation(line: 815, column: 15, scope: !2140)
!2207 = !DILocation(line: 222, column: 10, scope: !2172, inlinedAt: !2206)
!2208 = !DILocation(line: 815, column: 9, scope: !2140)
!2209 = !DILocation(line: 816, column: 60, scope: !2140)
!2210 = !DILocation(line: 818, column: 32, scope: !2140)
!2211 = !DILocation(line: 818, column: 47, scope: !2140)
!2212 = !DILocation(line: 816, column: 3, scope: !2140)
!2213 = !DILocation(line: 819, column: 9, scope: !2140)
!2214 = !DILocation(line: 820, column: 7, scope: !2140)
!2215 = !DILocation(line: 821, column: 11, scope: !2216)
!2216 = distinct !DILexicalBlock(scope: !2140, file: !142, line: 820, column: 7)
!2217 = !{!2218, !2218, i64 0}
!2218 = !{!"long", !639, i64 0}
!2219 = !DILocation(line: 821, column: 5, scope: !2216)
!2220 = !DILocation(line: 822, column: 3, scope: !2140)
!2221 = distinct !DISubprogram(name: "quotearg_free", scope: !142, file: !142, line: 840, type: !866, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !2222)
!2222 = !{!2223, !2224}
!2223 = !DILocalVariable(name: "sv", scope: !2221, file: !142, line: 842, type: !169)
!2224 = !DILocalVariable(name: "i", scope: !2221, file: !142, line: 843, type: !67)
!2225 = !DILocation(line: 842, column: 24, scope: !2221)
!2226 = !DILocation(line: 842, column: 19, scope: !2221)
!2227 = !DILocation(line: 843, column: 7, scope: !2221)
!2228 = !DILocation(line: 844, column: 19, scope: !2229)
!2229 = !DILexicalBlockFile(scope: !2230, file: !142, discriminator: 1)
!2230 = distinct !DILexicalBlock(scope: !2231, file: !142, line: 844, column: 3)
!2231 = distinct !DILexicalBlock(scope: !2221, file: !142, line: 844, column: 3)
!2232 = !DILocation(line: 844, column: 17, scope: !2229)
!2233 = !DILocation(line: 844, column: 3, scope: !2234)
!2234 = !DILexicalBlockFile(scope: !2231, file: !142, discriminator: 1)
!2235 = !DILocation(line: 845, column: 17, scope: !2230)
!2236 = !{!2237, !638, i64 8}
!2237 = !{!"slotvec", !2218, i64 0, !638, i64 8}
!2238 = !DILocation(line: 845, column: 5, scope: !2230)
!2239 = !DILocation(line: 844, column: 28, scope: !2240)
!2240 = !DILexicalBlockFile(scope: !2230, file: !142, discriminator: 2)
!2241 = distinct !{!2241, !2242, !2243}
!2242 = !DILocation(line: 844, column: 3, scope: !2231)
!2243 = !DILocation(line: 845, column: 20, scope: !2231)
!2244 = !DILocation(line: 846, column: 13, scope: !2245)
!2245 = distinct !DILexicalBlock(scope: !2221, file: !142, line: 846, column: 7)
!2246 = !DILocation(line: 846, column: 17, scope: !2245)
!2247 = !DILocation(line: 846, column: 7, scope: !2221)
!2248 = !DILocation(line: 848, column: 7, scope: !2249)
!2249 = distinct !DILexicalBlock(scope: !2245, file: !142, line: 847, column: 5)
!2250 = !DILocation(line: 849, column: 21, scope: !2249)
!2251 = !{!2237, !2218, i64 0}
!2252 = !DILocation(line: 850, column: 20, scope: !2249)
!2253 = !DILocation(line: 851, column: 5, scope: !2249)
!2254 = !DILocation(line: 852, column: 10, scope: !2255)
!2255 = distinct !DILexicalBlock(scope: !2221, file: !142, line: 852, column: 7)
!2256 = !DILocation(line: 852, column: 7, scope: !2221)
!2257 = !DILocation(line: 854, column: 13, scope: !2258)
!2258 = distinct !DILexicalBlock(scope: !2255, file: !142, line: 853, column: 5)
!2259 = !DILocation(line: 854, column: 7, scope: !2258)
!2260 = !DILocation(line: 855, column: 15, scope: !2258)
!2261 = !DILocation(line: 856, column: 5, scope: !2258)
!2262 = !DILocation(line: 857, column: 10, scope: !2221)
!2263 = !DILocation(line: 858, column: 1, scope: !2221)
!2264 = distinct !DISubprogram(name: "quotearg_n", scope: !142, file: !142, line: 922, type: !2265, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !2267)
!2265 = !DISubroutineType(types: !2266)
!2266 = !{!26, !67, !37}
!2267 = !{!2268, !2269}
!2268 = !DILocalVariable(name: "n", arg: 1, scope: !2264, file: !142, line: 922, type: !67)
!2269 = !DILocalVariable(name: "arg", arg: 2, scope: !2264, file: !142, line: 922, type: !37)
!2270 = !DILocation(line: 922, column: 17, scope: !2264)
!2271 = !DILocation(line: 922, column: 32, scope: !2264)
!2272 = !DILocation(line: 924, column: 10, scope: !2264)
!2273 = !DILocation(line: 924, column: 3, scope: !2264)
!2274 = distinct !DISubprogram(name: "quotearg_n_options", scope: !142, file: !142, line: 869, type: !2275, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !2277)
!2275 = !DISubroutineType(types: !2276)
!2276 = !{!26, !67, !37, !29, !968}
!2277 = !{!2278, !2279, !2280, !2281, !2282, !2283, !2284, !2287, !2289, !2290, !2291}
!2278 = !DILocalVariable(name: "n", arg: 1, scope: !2274, file: !142, line: 869, type: !67)
!2279 = !DILocalVariable(name: "arg", arg: 2, scope: !2274, file: !142, line: 869, type: !37)
!2280 = !DILocalVariable(name: "argsize", arg: 3, scope: !2274, file: !142, line: 869, type: !29)
!2281 = !DILocalVariable(name: "options", arg: 4, scope: !2274, file: !142, line: 870, type: !968)
!2282 = !DILocalVariable(name: "e", scope: !2274, file: !142, line: 872, type: !67)
!2283 = !DILocalVariable(name: "sv", scope: !2274, file: !142, line: 874, type: !169)
!2284 = !DILocalVariable(name: "preallocated", scope: !2285, file: !142, line: 881, type: !97)
!2285 = distinct !DILexicalBlock(scope: !2286, file: !142, line: 880, column: 5)
!2286 = distinct !DILexicalBlock(scope: !2274, file: !142, line: 879, column: 7)
!2287 = !DILocalVariable(name: "size", scope: !2288, file: !142, line: 894, type: !29)
!2288 = distinct !DILexicalBlock(scope: !2274, file: !142, line: 893, column: 3)
!2289 = !DILocalVariable(name: "val", scope: !2288, file: !142, line: 895, type: !26)
!2290 = !DILocalVariable(name: "flags", scope: !2288, file: !142, line: 897, type: !67)
!2291 = !DILocalVariable(name: "qsize", scope: !2288, file: !142, line: 898, type: !29)
!2292 = !DILocation(line: 869, column: 25, scope: !2274)
!2293 = !DILocation(line: 869, column: 40, scope: !2274)
!2294 = !DILocation(line: 869, column: 52, scope: !2274)
!2295 = !DILocation(line: 870, column: 51, scope: !2274)
!2296 = !DILocation(line: 872, column: 11, scope: !2274)
!2297 = !DILocation(line: 872, column: 7, scope: !2274)
!2298 = !DILocation(line: 874, column: 24, scope: !2274)
!2299 = !DILocation(line: 874, column: 19, scope: !2274)
!2300 = !DILocation(line: 876, column: 9, scope: !2301)
!2301 = distinct !DILexicalBlock(scope: !2274, file: !142, line: 876, column: 7)
!2302 = !DILocation(line: 876, column: 7, scope: !2274)
!2303 = !DILocation(line: 877, column: 5, scope: !2301)
!2304 = !DILocation(line: 879, column: 7, scope: !2286)
!2305 = !DILocation(line: 879, column: 14, scope: !2286)
!2306 = !DILocation(line: 879, column: 7, scope: !2274)
!2307 = !DILocation(line: 881, column: 31, scope: !2285)
!2308 = !DILocation(line: 883, column: 67, scope: !2309)
!2309 = distinct !DILexicalBlock(scope: !2285, file: !142, line: 883, column: 11)
!2310 = !DILocation(line: 883, column: 11, scope: !2285)
!2311 = !DILocation(line: 884, column: 9, scope: !2309)
!2312 = !DILocation(line: 886, column: 32, scope: !2313)
!2313 = !DILexicalBlockFile(scope: !2285, file: !142, discriminator: 3)
!2314 = !DILocation(line: 886, column: 61, scope: !2313)
!2315 = !DILocation(line: 886, column: 58, scope: !2313)
!2316 = !DILocation(line: 886, column: 66, scope: !2313)
!2317 = !DILocation(line: 886, column: 22, scope: !2313)
!2318 = !DILocation(line: 886, column: 15, scope: !2313)
!2319 = !DILocation(line: 887, column: 11, scope: !2285)
!2320 = !DILocation(line: 888, column: 15, scope: !2321)
!2321 = distinct !DILexicalBlock(scope: !2285, file: !142, line: 887, column: 11)
!2322 = !{i64 0, i64 8, !2217, i64 8, i64 8, !637}
!2323 = !DILocation(line: 888, column: 9, scope: !2321)
!2324 = !DILocation(line: 889, column: 20, scope: !2285)
!2325 = !DILocation(line: 889, column: 18, scope: !2285)
!2326 = !DILocation(line: 889, column: 7, scope: !2285)
!2327 = !DILocation(line: 889, column: 38, scope: !2285)
!2328 = !DILocation(line: 889, column: 31, scope: !2285)
!2329 = !DILocation(line: 889, column: 48, scope: !2285)
!2330 = !DILocation(line: 890, column: 14, scope: !2285)
!2331 = !DILocation(line: 891, column: 5, scope: !2285)
!2332 = !DILocation(line: 894, column: 19, scope: !2288)
!2333 = !DILocation(line: 894, column: 25, scope: !2288)
!2334 = !DILocation(line: 894, column: 12, scope: !2288)
!2335 = !DILocation(line: 895, column: 23, scope: !2288)
!2336 = !DILocation(line: 895, column: 11, scope: !2288)
!2337 = !DILocation(line: 897, column: 26, scope: !2288)
!2338 = !DILocation(line: 897, column: 32, scope: !2288)
!2339 = !DILocation(line: 897, column: 9, scope: !2288)
!2340 = !DILocation(line: 899, column: 55, scope: !2288)
!2341 = !DILocation(line: 900, column: 46, scope: !2288)
!2342 = !DILocation(line: 901, column: 55, scope: !2288)
!2343 = !DILocation(line: 902, column: 55, scope: !2288)
!2344 = !DILocation(line: 898, column: 20, scope: !2288)
!2345 = !DILocation(line: 898, column: 12, scope: !2288)
!2346 = !DILocation(line: 904, column: 14, scope: !2347)
!2347 = distinct !DILexicalBlock(scope: !2288, file: !142, line: 904, column: 9)
!2348 = !DILocation(line: 904, column: 9, scope: !2288)
!2349 = !DILocation(line: 906, column: 35, scope: !2350)
!2350 = distinct !DILexicalBlock(scope: !2347, file: !142, line: 905, column: 7)
!2351 = !DILocation(line: 906, column: 20, scope: !2350)
!2352 = !DILocation(line: 907, column: 17, scope: !2353)
!2353 = distinct !DILexicalBlock(scope: !2350, file: !142, line: 907, column: 13)
!2354 = !DILocation(line: 907, column: 13, scope: !2350)
!2355 = !DILocation(line: 908, column: 11, scope: !2353)
!2356 = !DILocation(line: 220, column: 20, scope: !2172, inlinedAt: !2357)
!2357 = distinct !DILocation(line: 909, column: 27, scope: !2350)
!2358 = !DILocation(line: 222, column: 10, scope: !2172, inlinedAt: !2357)
!2359 = !DILocation(line: 909, column: 19, scope: !2350)
!2360 = !DILocation(line: 910, column: 69, scope: !2350)
!2361 = !DILocation(line: 912, column: 44, scope: !2350)
!2362 = !DILocation(line: 913, column: 44, scope: !2350)
!2363 = !DILocation(line: 910, column: 9, scope: !2350)
!2364 = !DILocation(line: 914, column: 7, scope: !2350)
!2365 = !DILocation(line: 916, column: 11, scope: !2288)
!2366 = !DILocation(line: 917, column: 5, scope: !2288)
!2367 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !142, file: !142, line: 928, type: !2368, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !2370)
!2368 = !DISubroutineType(types: !2369)
!2369 = !{!26, !67, !37, !29}
!2370 = !{!2371, !2372, !2373}
!2371 = !DILocalVariable(name: "n", arg: 1, scope: !2367, file: !142, line: 928, type: !67)
!2372 = !DILocalVariable(name: "arg", arg: 2, scope: !2367, file: !142, line: 928, type: !37)
!2373 = !DILocalVariable(name: "argsize", arg: 3, scope: !2367, file: !142, line: 928, type: !29)
!2374 = !DILocation(line: 928, column: 21, scope: !2367)
!2375 = !DILocation(line: 928, column: 36, scope: !2367)
!2376 = !DILocation(line: 928, column: 48, scope: !2367)
!2377 = !DILocation(line: 930, column: 10, scope: !2367)
!2378 = !DILocation(line: 930, column: 3, scope: !2367)
!2379 = distinct !DISubprogram(name: "quotearg", scope: !142, file: !142, line: 934, type: !2380, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !2382)
!2380 = !DISubroutineType(types: !2381)
!2381 = !{!26, !37}
!2382 = !{!2383}
!2383 = !DILocalVariable(name: "arg", arg: 1, scope: !2379, file: !142, line: 934, type: !37)
!2384 = !DILocation(line: 934, column: 23, scope: !2379)
!2385 = !DILocation(line: 922, column: 17, scope: !2264, inlinedAt: !2386)
!2386 = distinct !DILocation(line: 936, column: 10, scope: !2379)
!2387 = !DILocation(line: 922, column: 32, scope: !2264, inlinedAt: !2386)
!2388 = !DILocation(line: 924, column: 10, scope: !2264, inlinedAt: !2386)
!2389 = !DILocation(line: 936, column: 3, scope: !2379)
!2390 = distinct !DISubprogram(name: "quotearg_mem", scope: !142, file: !142, line: 940, type: !2391, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !2393)
!2391 = !DISubroutineType(types: !2392)
!2392 = !{!26, !37, !29}
!2393 = !{!2394, !2395}
!2394 = !DILocalVariable(name: "arg", arg: 1, scope: !2390, file: !142, line: 940, type: !37)
!2395 = !DILocalVariable(name: "argsize", arg: 2, scope: !2390, file: !142, line: 940, type: !29)
!2396 = !DILocation(line: 940, column: 27, scope: !2390)
!2397 = !DILocation(line: 940, column: 39, scope: !2390)
!2398 = !DILocation(line: 928, column: 21, scope: !2367, inlinedAt: !2399)
!2399 = distinct !DILocation(line: 942, column: 10, scope: !2390)
!2400 = !DILocation(line: 928, column: 36, scope: !2367, inlinedAt: !2399)
!2401 = !DILocation(line: 928, column: 48, scope: !2367, inlinedAt: !2399)
!2402 = !DILocation(line: 930, column: 10, scope: !2367, inlinedAt: !2399)
!2403 = !DILocation(line: 942, column: 3, scope: !2390)
!2404 = distinct !DISubprogram(name: "quotearg_n_style", scope: !142, file: !142, line: 946, type: !2405, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !2407)
!2405 = !DISubroutineType(types: !2406)
!2406 = !{!26, !67, !11, !37}
!2407 = !{!2408, !2409, !2410, !2411}
!2408 = !DILocalVariable(name: "n", arg: 1, scope: !2404, file: !142, line: 946, type: !67)
!2409 = !DILocalVariable(name: "s", arg: 2, scope: !2404, file: !142, line: 946, type: !11)
!2410 = !DILocalVariable(name: "arg", arg: 3, scope: !2404, file: !142, line: 946, type: !37)
!2411 = !DILocalVariable(name: "o", scope: !2404, file: !142, line: 948, type: !969)
!2412 = !DILocalVariable(name: "o", scope: !2413, file: !142, line: 187, type: !149)
!2413 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !142, file: !142, line: 185, type: !2414, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !2416)
!2414 = !DISubroutineType(types: !2415)
!2415 = !{!149, !11}
!2416 = !{!2417, !2412}
!2417 = !DILocalVariable(name: "style", arg: 1, scope: !2413, file: !142, line: 185, type: !11)
!2418 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!2419 = !DILocation(line: 187, column: 26, scope: !2413, inlinedAt: !2420)
!2420 = distinct !DILocation(line: 948, column: 36, scope: !2404)
!2421 = !DILocation(line: 946, column: 23, scope: !2404)
!2422 = !DILocation(line: 946, column: 45, scope: !2404)
!2423 = !DILocation(line: 946, column: 60, scope: !2404)
!2424 = !DILocation(line: 948, column: 3, scope: !2404)
!2425 = !DILocation(line: 948, column: 32, scope: !2404)
!2426 = !DILocation(line: 185, column: 48, scope: !2413, inlinedAt: !2420)
!2427 = !DILocation(line: 187, column: 3, scope: !2413, inlinedAt: !2420)
!2428 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!2429 = !DILocation(line: 188, column: 13, scope: !2430, inlinedAt: !2420)
!2430 = distinct !DILexicalBlock(scope: !2413, file: !142, line: 188, column: 7)
!2431 = !DILocation(line: 188, column: 7, scope: !2413, inlinedAt: !2420)
!2432 = !DILocation(line: 189, column: 5, scope: !2430, inlinedAt: !2420)
!2433 = !{!2434}
!2434 = distinct !{!2434, !2435, !"quoting_options_from_style: argument 0"}
!2435 = distinct !{!2435, !"quoting_options_from_style"}
!2436 = !DILocation(line: 191, column: 10, scope: !2413, inlinedAt: !2420)
!2437 = !DILocation(line: 192, column: 1, scope: !2413, inlinedAt: !2420)
!2438 = !DILocation(line: 949, column: 10, scope: !2404)
!2439 = !DILocation(line: 950, column: 1, scope: !2404)
!2440 = !DILocation(line: 949, column: 3, scope: !2404)
!2441 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !142, file: !142, line: 953, type: !2442, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !2444)
!2442 = !DISubroutineType(types: !2443)
!2443 = !{!26, !67, !11, !37, !29}
!2444 = !{!2445, !2446, !2447, !2448, !2449}
!2445 = !DILocalVariable(name: "n", arg: 1, scope: !2441, file: !142, line: 953, type: !67)
!2446 = !DILocalVariable(name: "s", arg: 2, scope: !2441, file: !142, line: 953, type: !11)
!2447 = !DILocalVariable(name: "arg", arg: 3, scope: !2441, file: !142, line: 954, type: !37)
!2448 = !DILocalVariable(name: "argsize", arg: 4, scope: !2441, file: !142, line: 954, type: !29)
!2449 = !DILocalVariable(name: "o", scope: !2441, file: !142, line: 956, type: !969)
!2450 = !DILocation(line: 187, column: 26, scope: !2413, inlinedAt: !2451)
!2451 = distinct !DILocation(line: 956, column: 36, scope: !2441)
!2452 = !DILocation(line: 953, column: 27, scope: !2441)
!2453 = !DILocation(line: 953, column: 49, scope: !2441)
!2454 = !DILocation(line: 954, column: 35, scope: !2441)
!2455 = !DILocation(line: 954, column: 47, scope: !2441)
!2456 = !DILocation(line: 956, column: 3, scope: !2441)
!2457 = !DILocation(line: 956, column: 32, scope: !2441)
!2458 = !DILocation(line: 185, column: 48, scope: !2413, inlinedAt: !2451)
!2459 = !DILocation(line: 187, column: 3, scope: !2413, inlinedAt: !2451)
!2460 = !DILocation(line: 188, column: 13, scope: !2430, inlinedAt: !2451)
!2461 = !DILocation(line: 188, column: 7, scope: !2413, inlinedAt: !2451)
!2462 = !DILocation(line: 189, column: 5, scope: !2430, inlinedAt: !2451)
!2463 = !{!2464}
!2464 = distinct !{!2464, !2465, !"quoting_options_from_style: argument 0"}
!2465 = distinct !{!2465, !"quoting_options_from_style"}
!2466 = !DILocation(line: 191, column: 10, scope: !2413, inlinedAt: !2451)
!2467 = !DILocation(line: 192, column: 1, scope: !2413, inlinedAt: !2451)
!2468 = !DILocation(line: 957, column: 10, scope: !2441)
!2469 = !DILocation(line: 958, column: 1, scope: !2441)
!2470 = !DILocation(line: 957, column: 3, scope: !2441)
!2471 = distinct !DISubprogram(name: "quotearg_style", scope: !142, file: !142, line: 961, type: !2472, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !2474)
!2472 = !DISubroutineType(types: !2473)
!2473 = !{!26, !11, !37}
!2474 = !{!2475, !2476}
!2475 = !DILocalVariable(name: "s", arg: 1, scope: !2471, file: !142, line: 961, type: !11)
!2476 = !DILocalVariable(name: "arg", arg: 2, scope: !2471, file: !142, line: 961, type: !37)
!2477 = !DILocation(line: 187, column: 26, scope: !2413, inlinedAt: !2478)
!2478 = distinct !DILocation(line: 948, column: 36, scope: !2404, inlinedAt: !2479)
!2479 = distinct !DILocation(line: 963, column: 10, scope: !2471)
!2480 = !DILocation(line: 961, column: 36, scope: !2471)
!2481 = !DILocation(line: 961, column: 51, scope: !2471)
!2482 = !DILocation(line: 946, column: 23, scope: !2404, inlinedAt: !2479)
!2483 = !DILocation(line: 946, column: 45, scope: !2404, inlinedAt: !2479)
!2484 = !DILocation(line: 946, column: 60, scope: !2404, inlinedAt: !2479)
!2485 = !DILocation(line: 948, column: 3, scope: !2404, inlinedAt: !2479)
!2486 = !DILocation(line: 948, column: 32, scope: !2404, inlinedAt: !2479)
!2487 = !DILocation(line: 185, column: 48, scope: !2413, inlinedAt: !2478)
!2488 = !DILocation(line: 187, column: 3, scope: !2413, inlinedAt: !2478)
!2489 = !DILocation(line: 188, column: 13, scope: !2430, inlinedAt: !2478)
!2490 = !DILocation(line: 188, column: 7, scope: !2413, inlinedAt: !2478)
!2491 = !DILocation(line: 189, column: 5, scope: !2430, inlinedAt: !2478)
!2492 = !{!2493}
!2493 = distinct !{!2493, !2494, !"quoting_options_from_style: argument 0"}
!2494 = distinct !{!2494, !"quoting_options_from_style"}
!2495 = !DILocation(line: 191, column: 10, scope: !2413, inlinedAt: !2478)
!2496 = !DILocation(line: 192, column: 1, scope: !2413, inlinedAt: !2478)
!2497 = !DILocation(line: 949, column: 10, scope: !2404, inlinedAt: !2479)
!2498 = !DILocation(line: 950, column: 1, scope: !2404, inlinedAt: !2479)
!2499 = !DILocation(line: 963, column: 3, scope: !2471)
!2500 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !142, file: !142, line: 967, type: !2501, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !2503)
!2501 = !DISubroutineType(types: !2502)
!2502 = !{!26, !11, !37, !29}
!2503 = !{!2504, !2505, !2506}
!2504 = !DILocalVariable(name: "s", arg: 1, scope: !2500, file: !142, line: 967, type: !11)
!2505 = !DILocalVariable(name: "arg", arg: 2, scope: !2500, file: !142, line: 967, type: !37)
!2506 = !DILocalVariable(name: "argsize", arg: 3, scope: !2500, file: !142, line: 967, type: !29)
!2507 = !DILocation(line: 187, column: 26, scope: !2413, inlinedAt: !2508)
!2508 = distinct !DILocation(line: 956, column: 36, scope: !2441, inlinedAt: !2509)
!2509 = distinct !DILocation(line: 969, column: 10, scope: !2500)
!2510 = !DILocation(line: 967, column: 40, scope: !2500)
!2511 = !DILocation(line: 967, column: 55, scope: !2500)
!2512 = !DILocation(line: 967, column: 67, scope: !2500)
!2513 = !DILocation(line: 953, column: 27, scope: !2441, inlinedAt: !2509)
!2514 = !DILocation(line: 953, column: 49, scope: !2441, inlinedAt: !2509)
!2515 = !DILocation(line: 954, column: 35, scope: !2441, inlinedAt: !2509)
!2516 = !DILocation(line: 954, column: 47, scope: !2441, inlinedAt: !2509)
!2517 = !DILocation(line: 956, column: 3, scope: !2441, inlinedAt: !2509)
!2518 = !DILocation(line: 956, column: 32, scope: !2441, inlinedAt: !2509)
!2519 = !DILocation(line: 185, column: 48, scope: !2413, inlinedAt: !2508)
!2520 = !DILocation(line: 187, column: 3, scope: !2413, inlinedAt: !2508)
!2521 = !DILocation(line: 188, column: 13, scope: !2430, inlinedAt: !2508)
!2522 = !DILocation(line: 188, column: 7, scope: !2413, inlinedAt: !2508)
!2523 = !DILocation(line: 189, column: 5, scope: !2430, inlinedAt: !2508)
!2524 = !{!2525}
!2525 = distinct !{!2525, !2526, !"quoting_options_from_style: argument 0"}
!2526 = distinct !{!2526, !"quoting_options_from_style"}
!2527 = !DILocation(line: 191, column: 10, scope: !2413, inlinedAt: !2508)
!2528 = !DILocation(line: 192, column: 1, scope: !2413, inlinedAt: !2508)
!2529 = !DILocation(line: 957, column: 10, scope: !2441, inlinedAt: !2509)
!2530 = !DILocation(line: 958, column: 1, scope: !2441, inlinedAt: !2509)
!2531 = !DILocation(line: 969, column: 3, scope: !2500)
!2532 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !142, file: !142, line: 973, type: !2533, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !2535)
!2533 = !DISubroutineType(types: !2534)
!2534 = !{!26, !37, !29, !27}
!2535 = !{!2536, !2537, !2538, !2539}
!2536 = !DILocalVariable(name: "arg", arg: 1, scope: !2532, file: !142, line: 973, type: !37)
!2537 = !DILocalVariable(name: "argsize", arg: 2, scope: !2532, file: !142, line: 973, type: !29)
!2538 = !DILocalVariable(name: "ch", arg: 3, scope: !2532, file: !142, line: 973, type: !27)
!2539 = !DILocalVariable(name: "options", scope: !2532, file: !142, line: 975, type: !149)
!2540 = !DILocation(line: 973, column: 32, scope: !2532)
!2541 = !DILocation(line: 973, column: 44, scope: !2532)
!2542 = !DILocation(line: 973, column: 58, scope: !2532)
!2543 = !DILocation(line: 975, column: 3, scope: !2532)
!2544 = !DILocation(line: 976, column: 13, scope: !2532)
!2545 = !{i64 0, i64 4, !1203, i64 4, i64 4, !721, i64 8, i64 32, !1203, i64 40, i64 8, !637, i64 48, i64 8, !637}
!2546 = !DILocation(line: 975, column: 26, scope: !2532)
!2547 = !DILocation(line: 144, column: 43, scope: !992, inlinedAt: !2548)
!2548 = distinct !DILocation(line: 977, column: 3, scope: !2532)
!2549 = !DILocation(line: 144, column: 51, scope: !992, inlinedAt: !2548)
!2550 = !DILocation(line: 144, column: 58, scope: !992, inlinedAt: !2548)
!2551 = !DILocation(line: 146, column: 17, scope: !992, inlinedAt: !2548)
!2552 = !DILocation(line: 148, column: 62, scope: !1010, inlinedAt: !2548)
!2553 = !DILocation(line: 148, column: 57, scope: !1010, inlinedAt: !2548)
!2554 = !DILocation(line: 147, column: 17, scope: !992, inlinedAt: !2548)
!2555 = !DILocation(line: 149, column: 18, scope: !992, inlinedAt: !2548)
!2556 = !DILocation(line: 149, column: 15, scope: !992, inlinedAt: !2548)
!2557 = !DILocation(line: 149, column: 7, scope: !992, inlinedAt: !2548)
!2558 = !DILocation(line: 150, column: 12, scope: !992, inlinedAt: !2548)
!2559 = !DILocation(line: 150, column: 15, scope: !992, inlinedAt: !2548)
!2560 = !DILocation(line: 150, column: 25, scope: !992, inlinedAt: !2548)
!2561 = !DILocation(line: 150, column: 7, scope: !992, inlinedAt: !2548)
!2562 = !DILocation(line: 151, column: 18, scope: !992, inlinedAt: !2548)
!2563 = !DILocation(line: 151, column: 23, scope: !992, inlinedAt: !2548)
!2564 = !DILocation(line: 151, column: 6, scope: !992, inlinedAt: !2548)
!2565 = !DILocation(line: 978, column: 10, scope: !2532)
!2566 = !DILocation(line: 979, column: 1, scope: !2532)
!2567 = !DILocation(line: 978, column: 3, scope: !2532)
!2568 = distinct !DISubprogram(name: "quotearg_char", scope: !142, file: !142, line: 982, type: !2569, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !2571)
!2569 = !DISubroutineType(types: !2570)
!2570 = !{!26, !37, !27}
!2571 = !{!2572, !2573}
!2572 = !DILocalVariable(name: "arg", arg: 1, scope: !2568, file: !142, line: 982, type: !37)
!2573 = !DILocalVariable(name: "ch", arg: 2, scope: !2568, file: !142, line: 982, type: !27)
!2574 = !DILocation(line: 982, column: 28, scope: !2568)
!2575 = !DILocation(line: 982, column: 38, scope: !2568)
!2576 = !DILocation(line: 973, column: 32, scope: !2532, inlinedAt: !2577)
!2577 = distinct !DILocation(line: 984, column: 10, scope: !2568)
!2578 = !DILocation(line: 973, column: 44, scope: !2532, inlinedAt: !2577)
!2579 = !DILocation(line: 973, column: 58, scope: !2532, inlinedAt: !2577)
!2580 = !DILocation(line: 975, column: 3, scope: !2532, inlinedAt: !2577)
!2581 = !DILocation(line: 976, column: 13, scope: !2532, inlinedAt: !2577)
!2582 = !DILocation(line: 975, column: 26, scope: !2532, inlinedAt: !2577)
!2583 = !DILocation(line: 144, column: 43, scope: !992, inlinedAt: !2584)
!2584 = distinct !DILocation(line: 977, column: 3, scope: !2532, inlinedAt: !2577)
!2585 = !DILocation(line: 144, column: 51, scope: !992, inlinedAt: !2584)
!2586 = !DILocation(line: 144, column: 58, scope: !992, inlinedAt: !2584)
!2587 = !DILocation(line: 146, column: 17, scope: !992, inlinedAt: !2584)
!2588 = !DILocation(line: 148, column: 62, scope: !1010, inlinedAt: !2584)
!2589 = !DILocation(line: 148, column: 57, scope: !1010, inlinedAt: !2584)
!2590 = !DILocation(line: 147, column: 17, scope: !992, inlinedAt: !2584)
!2591 = !DILocation(line: 149, column: 18, scope: !992, inlinedAt: !2584)
!2592 = !DILocation(line: 149, column: 15, scope: !992, inlinedAt: !2584)
!2593 = !DILocation(line: 149, column: 7, scope: !992, inlinedAt: !2584)
!2594 = !DILocation(line: 150, column: 12, scope: !992, inlinedAt: !2584)
!2595 = !DILocation(line: 150, column: 15, scope: !992, inlinedAt: !2584)
!2596 = !DILocation(line: 150, column: 25, scope: !992, inlinedAt: !2584)
!2597 = !DILocation(line: 150, column: 7, scope: !992, inlinedAt: !2584)
!2598 = !DILocation(line: 151, column: 18, scope: !992, inlinedAt: !2584)
!2599 = !DILocation(line: 151, column: 23, scope: !992, inlinedAt: !2584)
!2600 = !DILocation(line: 151, column: 6, scope: !992, inlinedAt: !2584)
!2601 = !DILocation(line: 978, column: 10, scope: !2532, inlinedAt: !2577)
!2602 = !DILocation(line: 979, column: 1, scope: !2532, inlinedAt: !2577)
!2603 = !DILocation(line: 984, column: 3, scope: !2568)
!2604 = distinct !DISubprogram(name: "quotearg_colon", scope: !142, file: !142, line: 988, type: !2380, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !2605)
!2605 = !{!2606}
!2606 = !DILocalVariable(name: "arg", arg: 1, scope: !2604, file: !142, line: 988, type: !37)
!2607 = !DILocation(line: 988, column: 29, scope: !2604)
!2608 = !DILocation(line: 982, column: 28, scope: !2568, inlinedAt: !2609)
!2609 = distinct !DILocation(line: 990, column: 10, scope: !2604)
!2610 = !DILocation(line: 982, column: 38, scope: !2568, inlinedAt: !2609)
!2611 = !DILocation(line: 973, column: 32, scope: !2532, inlinedAt: !2612)
!2612 = distinct !DILocation(line: 984, column: 10, scope: !2568, inlinedAt: !2609)
!2613 = !DILocation(line: 973, column: 44, scope: !2532, inlinedAt: !2612)
!2614 = !DILocation(line: 973, column: 58, scope: !2532, inlinedAt: !2612)
!2615 = !DILocation(line: 975, column: 3, scope: !2532, inlinedAt: !2612)
!2616 = !DILocation(line: 976, column: 13, scope: !2532, inlinedAt: !2612)
!2617 = !DILocation(line: 975, column: 26, scope: !2532, inlinedAt: !2612)
!2618 = !DILocation(line: 144, column: 43, scope: !992, inlinedAt: !2619)
!2619 = distinct !DILocation(line: 977, column: 3, scope: !2532, inlinedAt: !2612)
!2620 = !DILocation(line: 144, column: 51, scope: !992, inlinedAt: !2619)
!2621 = !DILocation(line: 144, column: 58, scope: !992, inlinedAt: !2619)
!2622 = !DILocation(line: 146, column: 17, scope: !992, inlinedAt: !2619)
!2623 = !DILocation(line: 148, column: 57, scope: !1010, inlinedAt: !2619)
!2624 = !DILocation(line: 147, column: 17, scope: !992, inlinedAt: !2619)
!2625 = !DILocation(line: 149, column: 7, scope: !992, inlinedAt: !2619)
!2626 = !DILocation(line: 150, column: 12, scope: !992, inlinedAt: !2619)
!2627 = !DILocation(line: 151, column: 6, scope: !992, inlinedAt: !2619)
!2628 = !DILocation(line: 978, column: 10, scope: !2532, inlinedAt: !2612)
!2629 = !DILocation(line: 979, column: 1, scope: !2532, inlinedAt: !2612)
!2630 = !DILocation(line: 990, column: 3, scope: !2604)
!2631 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !142, file: !142, line: 994, type: !2391, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !2632)
!2632 = !{!2633, !2634}
!2633 = !DILocalVariable(name: "arg", arg: 1, scope: !2631, file: !142, line: 994, type: !37)
!2634 = !DILocalVariable(name: "argsize", arg: 2, scope: !2631, file: !142, line: 994, type: !29)
!2635 = !DILocation(line: 994, column: 33, scope: !2631)
!2636 = !DILocation(line: 994, column: 45, scope: !2631)
!2637 = !DILocation(line: 973, column: 32, scope: !2532, inlinedAt: !2638)
!2638 = distinct !DILocation(line: 996, column: 10, scope: !2631)
!2639 = !DILocation(line: 973, column: 44, scope: !2532, inlinedAt: !2638)
!2640 = !DILocation(line: 973, column: 58, scope: !2532, inlinedAt: !2638)
!2641 = !DILocation(line: 975, column: 3, scope: !2532, inlinedAt: !2638)
!2642 = !DILocation(line: 976, column: 13, scope: !2532, inlinedAt: !2638)
!2643 = !DILocation(line: 975, column: 26, scope: !2532, inlinedAt: !2638)
!2644 = !DILocation(line: 144, column: 43, scope: !992, inlinedAt: !2645)
!2645 = distinct !DILocation(line: 977, column: 3, scope: !2532, inlinedAt: !2638)
!2646 = !DILocation(line: 144, column: 51, scope: !992, inlinedAt: !2645)
!2647 = !DILocation(line: 144, column: 58, scope: !992, inlinedAt: !2645)
!2648 = !DILocation(line: 146, column: 17, scope: !992, inlinedAt: !2645)
!2649 = !DILocation(line: 148, column: 57, scope: !1010, inlinedAt: !2645)
!2650 = !DILocation(line: 147, column: 17, scope: !992, inlinedAt: !2645)
!2651 = !DILocation(line: 149, column: 7, scope: !992, inlinedAt: !2645)
!2652 = !DILocation(line: 150, column: 12, scope: !992, inlinedAt: !2645)
!2653 = !DILocation(line: 151, column: 6, scope: !992, inlinedAt: !2645)
!2654 = !DILocation(line: 978, column: 10, scope: !2532, inlinedAt: !2638)
!2655 = !DILocation(line: 979, column: 1, scope: !2532, inlinedAt: !2638)
!2656 = !DILocation(line: 996, column: 3, scope: !2631)
!2657 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !142, file: !142, line: 1000, type: !2405, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !2658)
!2658 = !{!2659, !2660, !2661, !2662}
!2659 = !DILocalVariable(name: "n", arg: 1, scope: !2657, file: !142, line: 1000, type: !67)
!2660 = !DILocalVariable(name: "s", arg: 2, scope: !2657, file: !142, line: 1000, type: !11)
!2661 = !DILocalVariable(name: "arg", arg: 3, scope: !2657, file: !142, line: 1000, type: !37)
!2662 = !DILocalVariable(name: "options", scope: !2657, file: !142, line: 1002, type: !149)
!2663 = !DILocation(line: 187, column: 26, scope: !2413, inlinedAt: !2664)
!2664 = distinct !DILocation(line: 1003, column: 13, scope: !2657)
!2665 = !DILocation(line: 1000, column: 29, scope: !2657)
!2666 = !DILocation(line: 1000, column: 51, scope: !2657)
!2667 = !DILocation(line: 1000, column: 66, scope: !2657)
!2668 = !DILocation(line: 1002, column: 3, scope: !2657)
!2669 = !DILocation(line: 185, column: 48, scope: !2413, inlinedAt: !2664)
!2670 = !DILocation(line: 187, column: 3, scope: !2413, inlinedAt: !2664)
!2671 = !DILocation(line: 188, column: 13, scope: !2430, inlinedAt: !2664)
!2672 = !DILocation(line: 188, column: 7, scope: !2413, inlinedAt: !2664)
!2673 = !DILocation(line: 189, column: 5, scope: !2430, inlinedAt: !2664)
!2674 = !{!2675}
!2675 = distinct !{!2675, !2676, !"quoting_options_from_style: argument 0"}
!2676 = distinct !{!2676, !"quoting_options_from_style"}
!2677 = !DILocation(line: 191, column: 10, scope: !2413, inlinedAt: !2664)
!2678 = !DILocation(line: 192, column: 1, scope: !2413, inlinedAt: !2664)
!2679 = !DILocation(line: 1003, column: 13, scope: !2657)
!2680 = !DILocation(line: 1002, column: 26, scope: !2657)
!2681 = !DILocation(line: 144, column: 43, scope: !992, inlinedAt: !2682)
!2682 = distinct !DILocation(line: 1004, column: 3, scope: !2657)
!2683 = !DILocation(line: 144, column: 51, scope: !992, inlinedAt: !2682)
!2684 = !DILocation(line: 144, column: 58, scope: !992, inlinedAt: !2682)
!2685 = !DILocation(line: 146, column: 17, scope: !992, inlinedAt: !2682)
!2686 = !DILocation(line: 148, column: 57, scope: !1010, inlinedAt: !2682)
!2687 = !DILocation(line: 147, column: 17, scope: !992, inlinedAt: !2682)
!2688 = !DILocation(line: 149, column: 7, scope: !992, inlinedAt: !2682)
!2689 = !DILocation(line: 150, column: 12, scope: !992, inlinedAt: !2682)
!2690 = !DILocation(line: 151, column: 6, scope: !992, inlinedAt: !2682)
!2691 = !DILocation(line: 1005, column: 10, scope: !2657)
!2692 = !DILocation(line: 1006, column: 1, scope: !2657)
!2693 = !DILocation(line: 1005, column: 3, scope: !2657)
!2694 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !142, file: !142, line: 1009, type: !2695, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !2697)
!2695 = !DISubroutineType(types: !2696)
!2696 = !{!26, !67, !37, !37, !37}
!2697 = !{!2698, !2699, !2700, !2701}
!2698 = !DILocalVariable(name: "n", arg: 1, scope: !2694, file: !142, line: 1009, type: !67)
!2699 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2694, file: !142, line: 1009, type: !37)
!2700 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2694, file: !142, line: 1010, type: !37)
!2701 = !DILocalVariable(name: "arg", arg: 4, scope: !2694, file: !142, line: 1010, type: !37)
!2702 = !DILocation(line: 1009, column: 24, scope: !2694)
!2703 = !DILocation(line: 1009, column: 39, scope: !2694)
!2704 = !DILocation(line: 1010, column: 32, scope: !2694)
!2705 = !DILocation(line: 1010, column: 57, scope: !2694)
!2706 = !DILocalVariable(name: "n", arg: 1, scope: !2707, file: !142, line: 1017, type: !67)
!2707 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !142, file: !142, line: 1017, type: !2708, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !2710)
!2708 = !DISubroutineType(types: !2709)
!2709 = !{!26, !67, !37, !37, !37, !29}
!2710 = !{!2706, !2711, !2712, !2713, !2714, !2715}
!2711 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2707, file: !142, line: 1017, type: !37)
!2712 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2707, file: !142, line: 1018, type: !37)
!2713 = !DILocalVariable(name: "arg", arg: 4, scope: !2707, file: !142, line: 1019, type: !37)
!2714 = !DILocalVariable(name: "argsize", arg: 5, scope: !2707, file: !142, line: 1019, type: !29)
!2715 = !DILocalVariable(name: "o", scope: !2707, file: !142, line: 1021, type: !149)
!2716 = !DILocation(line: 1017, column: 28, scope: !2707, inlinedAt: !2717)
!2717 = distinct !DILocation(line: 1012, column: 10, scope: !2694)
!2718 = !DILocation(line: 1017, column: 43, scope: !2707, inlinedAt: !2717)
!2719 = !DILocation(line: 1018, column: 36, scope: !2707, inlinedAt: !2717)
!2720 = !DILocation(line: 1019, column: 36, scope: !2707, inlinedAt: !2717)
!2721 = !DILocation(line: 1019, column: 48, scope: !2707, inlinedAt: !2717)
!2722 = !DILocation(line: 1021, column: 3, scope: !2707, inlinedAt: !2717)
!2723 = !DILocation(line: 1021, column: 30, scope: !2707, inlinedAt: !2717)
!2724 = !DILocation(line: 1021, column: 26, scope: !2707, inlinedAt: !2717)
!2725 = !DILocation(line: 171, column: 45, scope: !1042, inlinedAt: !2726)
!2726 = distinct !DILocation(line: 1022, column: 3, scope: !2707, inlinedAt: !2717)
!2727 = !DILocation(line: 172, column: 33, scope: !1042, inlinedAt: !2726)
!2728 = !DILocation(line: 172, column: 57, scope: !1042, inlinedAt: !2726)
!2729 = !DILocation(line: 176, column: 6, scope: !1042, inlinedAt: !2726)
!2730 = !DILocation(line: 176, column: 12, scope: !1042, inlinedAt: !2726)
!2731 = !DILocation(line: 177, column: 8, scope: !1058, inlinedAt: !2726)
!2732 = !DILocation(line: 177, column: 23, scope: !1060, inlinedAt: !2726)
!2733 = !DILocation(line: 177, column: 19, scope: !1058, inlinedAt: !2726)
!2734 = !DILocation(line: 178, column: 5, scope: !1058, inlinedAt: !2726)
!2735 = !DILocation(line: 179, column: 6, scope: !1042, inlinedAt: !2726)
!2736 = !DILocation(line: 179, column: 17, scope: !1042, inlinedAt: !2726)
!2737 = !DILocation(line: 180, column: 6, scope: !1042, inlinedAt: !2726)
!2738 = !DILocation(line: 180, column: 18, scope: !1042, inlinedAt: !2726)
!2739 = !DILocation(line: 1023, column: 10, scope: !2707, inlinedAt: !2717)
!2740 = !DILocation(line: 1024, column: 1, scope: !2707, inlinedAt: !2717)
!2741 = !DILocation(line: 1012, column: 3, scope: !2694)
!2742 = !DILocation(line: 1017, column: 28, scope: !2707)
!2743 = !DILocation(line: 1017, column: 43, scope: !2707)
!2744 = !DILocation(line: 1018, column: 36, scope: !2707)
!2745 = !DILocation(line: 1019, column: 36, scope: !2707)
!2746 = !DILocation(line: 1019, column: 48, scope: !2707)
!2747 = !DILocation(line: 1021, column: 3, scope: !2707)
!2748 = !DILocation(line: 1021, column: 30, scope: !2707)
!2749 = !DILocation(line: 1021, column: 26, scope: !2707)
!2750 = !DILocation(line: 171, column: 45, scope: !1042, inlinedAt: !2751)
!2751 = distinct !DILocation(line: 1022, column: 3, scope: !2707)
!2752 = !DILocation(line: 172, column: 33, scope: !1042, inlinedAt: !2751)
!2753 = !DILocation(line: 172, column: 57, scope: !1042, inlinedAt: !2751)
!2754 = !DILocation(line: 176, column: 6, scope: !1042, inlinedAt: !2751)
!2755 = !DILocation(line: 176, column: 12, scope: !1042, inlinedAt: !2751)
!2756 = !DILocation(line: 177, column: 8, scope: !1058, inlinedAt: !2751)
!2757 = !DILocation(line: 177, column: 23, scope: !1060, inlinedAt: !2751)
!2758 = !DILocation(line: 177, column: 19, scope: !1058, inlinedAt: !2751)
!2759 = !DILocation(line: 178, column: 5, scope: !1058, inlinedAt: !2751)
!2760 = !DILocation(line: 179, column: 6, scope: !1042, inlinedAt: !2751)
!2761 = !DILocation(line: 179, column: 17, scope: !1042, inlinedAt: !2751)
!2762 = !DILocation(line: 180, column: 6, scope: !1042, inlinedAt: !2751)
!2763 = !DILocation(line: 180, column: 18, scope: !1042, inlinedAt: !2751)
!2764 = !DILocation(line: 1023, column: 10, scope: !2707)
!2765 = !DILocation(line: 1024, column: 1, scope: !2707)
!2766 = !DILocation(line: 1023, column: 3, scope: !2707)
!2767 = distinct !DISubprogram(name: "quotearg_custom", scope: !142, file: !142, line: 1027, type: !2768, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !2770)
!2768 = !DISubroutineType(types: !2769)
!2769 = !{!26, !37, !37, !37}
!2770 = !{!2771, !2772, !2773}
!2771 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2767, file: !142, line: 1027, type: !37)
!2772 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2767, file: !142, line: 1027, type: !37)
!2773 = !DILocalVariable(name: "arg", arg: 3, scope: !2767, file: !142, line: 1028, type: !37)
!2774 = !DILocation(line: 1027, column: 30, scope: !2767)
!2775 = !DILocation(line: 1027, column: 54, scope: !2767)
!2776 = !DILocation(line: 1028, column: 30, scope: !2767)
!2777 = !DILocation(line: 1009, column: 24, scope: !2694, inlinedAt: !2778)
!2778 = distinct !DILocation(line: 1030, column: 10, scope: !2767)
!2779 = !DILocation(line: 1009, column: 39, scope: !2694, inlinedAt: !2778)
!2780 = !DILocation(line: 1010, column: 32, scope: !2694, inlinedAt: !2778)
!2781 = !DILocation(line: 1010, column: 57, scope: !2694, inlinedAt: !2778)
!2782 = !DILocation(line: 1017, column: 28, scope: !2707, inlinedAt: !2783)
!2783 = distinct !DILocation(line: 1012, column: 10, scope: !2694, inlinedAt: !2778)
!2784 = !DILocation(line: 1017, column: 43, scope: !2707, inlinedAt: !2783)
!2785 = !DILocation(line: 1018, column: 36, scope: !2707, inlinedAt: !2783)
!2786 = !DILocation(line: 1019, column: 36, scope: !2707, inlinedAt: !2783)
!2787 = !DILocation(line: 1019, column: 48, scope: !2707, inlinedAt: !2783)
!2788 = !DILocation(line: 1021, column: 3, scope: !2707, inlinedAt: !2783)
!2789 = !DILocation(line: 1021, column: 30, scope: !2707, inlinedAt: !2783)
!2790 = !DILocation(line: 1021, column: 26, scope: !2707, inlinedAt: !2783)
!2791 = !DILocation(line: 171, column: 45, scope: !1042, inlinedAt: !2792)
!2792 = distinct !DILocation(line: 1022, column: 3, scope: !2707, inlinedAt: !2783)
!2793 = !DILocation(line: 172, column: 33, scope: !1042, inlinedAt: !2792)
!2794 = !DILocation(line: 172, column: 57, scope: !1042, inlinedAt: !2792)
!2795 = !DILocation(line: 176, column: 6, scope: !1042, inlinedAt: !2792)
!2796 = !DILocation(line: 176, column: 12, scope: !1042, inlinedAt: !2792)
!2797 = !DILocation(line: 177, column: 8, scope: !1058, inlinedAt: !2792)
!2798 = !DILocation(line: 177, column: 23, scope: !1060, inlinedAt: !2792)
!2799 = !DILocation(line: 177, column: 19, scope: !1058, inlinedAt: !2792)
!2800 = !DILocation(line: 178, column: 5, scope: !1058, inlinedAt: !2792)
!2801 = !DILocation(line: 179, column: 6, scope: !1042, inlinedAt: !2792)
!2802 = !DILocation(line: 179, column: 17, scope: !1042, inlinedAt: !2792)
!2803 = !DILocation(line: 180, column: 6, scope: !1042, inlinedAt: !2792)
!2804 = !DILocation(line: 180, column: 18, scope: !1042, inlinedAt: !2792)
!2805 = !DILocation(line: 1023, column: 10, scope: !2707, inlinedAt: !2783)
!2806 = !DILocation(line: 1024, column: 1, scope: !2707, inlinedAt: !2783)
!2807 = !DILocation(line: 1030, column: 3, scope: !2767)
!2808 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !142, file: !142, line: 1034, type: !2809, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !2811)
!2809 = !DISubroutineType(types: !2810)
!2810 = !{!26, !37, !37, !37, !29}
!2811 = !{!2812, !2813, !2814, !2815}
!2812 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2808, file: !142, line: 1034, type: !37)
!2813 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2808, file: !142, line: 1034, type: !37)
!2814 = !DILocalVariable(name: "arg", arg: 3, scope: !2808, file: !142, line: 1035, type: !37)
!2815 = !DILocalVariable(name: "argsize", arg: 4, scope: !2808, file: !142, line: 1035, type: !29)
!2816 = !DILocation(line: 1034, column: 34, scope: !2808)
!2817 = !DILocation(line: 1034, column: 58, scope: !2808)
!2818 = !DILocation(line: 1035, column: 34, scope: !2808)
!2819 = !DILocation(line: 1035, column: 46, scope: !2808)
!2820 = !DILocation(line: 1017, column: 28, scope: !2707, inlinedAt: !2821)
!2821 = distinct !DILocation(line: 1037, column: 10, scope: !2808)
!2822 = !DILocation(line: 1017, column: 43, scope: !2707, inlinedAt: !2821)
!2823 = !DILocation(line: 1018, column: 36, scope: !2707, inlinedAt: !2821)
!2824 = !DILocation(line: 1019, column: 36, scope: !2707, inlinedAt: !2821)
!2825 = !DILocation(line: 1019, column: 48, scope: !2707, inlinedAt: !2821)
!2826 = !DILocation(line: 1021, column: 3, scope: !2707, inlinedAt: !2821)
!2827 = !DILocation(line: 1021, column: 30, scope: !2707, inlinedAt: !2821)
!2828 = !DILocation(line: 1021, column: 26, scope: !2707, inlinedAt: !2821)
!2829 = !DILocation(line: 171, column: 45, scope: !1042, inlinedAt: !2830)
!2830 = distinct !DILocation(line: 1022, column: 3, scope: !2707, inlinedAt: !2821)
!2831 = !DILocation(line: 172, column: 33, scope: !1042, inlinedAt: !2830)
!2832 = !DILocation(line: 172, column: 57, scope: !1042, inlinedAt: !2830)
!2833 = !DILocation(line: 176, column: 6, scope: !1042, inlinedAt: !2830)
!2834 = !DILocation(line: 176, column: 12, scope: !1042, inlinedAt: !2830)
!2835 = !DILocation(line: 177, column: 8, scope: !1058, inlinedAt: !2830)
!2836 = !DILocation(line: 177, column: 23, scope: !1060, inlinedAt: !2830)
!2837 = !DILocation(line: 177, column: 19, scope: !1058, inlinedAt: !2830)
!2838 = !DILocation(line: 178, column: 5, scope: !1058, inlinedAt: !2830)
!2839 = !DILocation(line: 179, column: 6, scope: !1042, inlinedAt: !2830)
!2840 = !DILocation(line: 179, column: 17, scope: !1042, inlinedAt: !2830)
!2841 = !DILocation(line: 180, column: 6, scope: !1042, inlinedAt: !2830)
!2842 = !DILocation(line: 180, column: 18, scope: !1042, inlinedAt: !2830)
!2843 = !DILocation(line: 1023, column: 10, scope: !2707, inlinedAt: !2821)
!2844 = !DILocation(line: 1024, column: 1, scope: !2707, inlinedAt: !2821)
!2845 = !DILocation(line: 1037, column: 3, scope: !2808)
!2846 = distinct !DISubprogram(name: "quote_n_mem", scope: !142, file: !142, line: 1052, type: !2847, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !2849)
!2847 = !DISubroutineType(types: !2848)
!2848 = !{!37, !67, !37, !29}
!2849 = !{!2850, !2851, !2852}
!2850 = !DILocalVariable(name: "n", arg: 1, scope: !2846, file: !142, line: 1052, type: !67)
!2851 = !DILocalVariable(name: "arg", arg: 2, scope: !2846, file: !142, line: 1052, type: !37)
!2852 = !DILocalVariable(name: "argsize", arg: 3, scope: !2846, file: !142, line: 1052, type: !29)
!2853 = !DILocation(line: 1052, column: 18, scope: !2846)
!2854 = !DILocation(line: 1052, column: 33, scope: !2846)
!2855 = !DILocation(line: 1052, column: 45, scope: !2846)
!2856 = !DILocation(line: 1054, column: 10, scope: !2846)
!2857 = !DILocation(line: 1054, column: 3, scope: !2846)
!2858 = distinct !DISubprogram(name: "quote_mem", scope: !142, file: !142, line: 1058, type: !2859, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !2861)
!2859 = !DISubroutineType(types: !2860)
!2860 = !{!37, !37, !29}
!2861 = !{!2862, !2863}
!2862 = !DILocalVariable(name: "arg", arg: 1, scope: !2858, file: !142, line: 1058, type: !37)
!2863 = !DILocalVariable(name: "argsize", arg: 2, scope: !2858, file: !142, line: 1058, type: !29)
!2864 = !DILocation(line: 1058, column: 24, scope: !2858)
!2865 = !DILocation(line: 1058, column: 36, scope: !2858)
!2866 = !DILocation(line: 1052, column: 18, scope: !2846, inlinedAt: !2867)
!2867 = distinct !DILocation(line: 1060, column: 10, scope: !2858)
!2868 = !DILocation(line: 1052, column: 33, scope: !2846, inlinedAt: !2867)
!2869 = !DILocation(line: 1052, column: 45, scope: !2846, inlinedAt: !2867)
!2870 = !DILocation(line: 1054, column: 10, scope: !2846, inlinedAt: !2867)
!2871 = !DILocation(line: 1060, column: 3, scope: !2858)
!2872 = distinct !DISubprogram(name: "quote_n", scope: !142, file: !142, line: 1064, type: !2873, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !2875)
!2873 = !DISubroutineType(types: !2874)
!2874 = !{!37, !67, !37}
!2875 = !{!2876, !2877}
!2876 = !DILocalVariable(name: "n", arg: 1, scope: !2872, file: !142, line: 1064, type: !67)
!2877 = !DILocalVariable(name: "arg", arg: 2, scope: !2872, file: !142, line: 1064, type: !37)
!2878 = !DILocation(line: 1064, column: 14, scope: !2872)
!2879 = !DILocation(line: 1064, column: 29, scope: !2872)
!2880 = !DILocation(line: 1052, column: 18, scope: !2846, inlinedAt: !2881)
!2881 = distinct !DILocation(line: 1066, column: 10, scope: !2872)
!2882 = !DILocation(line: 1052, column: 33, scope: !2846, inlinedAt: !2881)
!2883 = !DILocation(line: 1052, column: 45, scope: !2846, inlinedAt: !2881)
!2884 = !DILocation(line: 1054, column: 10, scope: !2846, inlinedAt: !2881)
!2885 = !DILocation(line: 1066, column: 3, scope: !2872)
!2886 = distinct !DISubprogram(name: "quote", scope: !142, file: !142, line: 1070, type: !2887, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !2889)
!2887 = !DISubroutineType(types: !2888)
!2888 = !{!37, !37}
!2889 = !{!2890}
!2890 = !DILocalVariable(name: "arg", arg: 1, scope: !2886, file: !142, line: 1070, type: !37)
!2891 = !DILocation(line: 1070, column: 20, scope: !2886)
!2892 = !DILocation(line: 1064, column: 14, scope: !2872, inlinedAt: !2893)
!2893 = distinct !DILocation(line: 1072, column: 10, scope: !2886)
!2894 = !DILocation(line: 1064, column: 29, scope: !2872, inlinedAt: !2893)
!2895 = !DILocation(line: 1052, column: 18, scope: !2846, inlinedAt: !2896)
!2896 = distinct !DILocation(line: 1066, column: 10, scope: !2872, inlinedAt: !2893)
!2897 = !DILocation(line: 1052, column: 33, scope: !2846, inlinedAt: !2896)
!2898 = !DILocation(line: 1052, column: 45, scope: !2846, inlinedAt: !2896)
!2899 = !DILocation(line: 1054, column: 10, scope: !2846, inlinedAt: !2896)
!2900 = !DILocation(line: 1072, column: 3, scope: !2886)
!2901 = distinct !DISubprogram(name: "version_etc_arn", scope: !580, file: !580, line: 62, type: !2902, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !576, variables: !2958)
!2902 = !DISubroutineType(types: !2903)
!2903 = !{null, !2904, !37, !37, !37, !2957, !29}
!2904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2905, size: 64)
!2905 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2906, line: 49, baseType: !2907)
!2906 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2908, line: 241, size: 1728, elements: !2909)
!2908 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2909 = !{!2910, !2911, !2912, !2913, !2914, !2915, !2916, !2917, !2918, !2919, !2920, !2921, !2922, !2930, !2931, !2932, !2933, !2937, !2938, !2940, !2942, !2945, !2947, !2948, !2949, !2950, !2951, !2952, !2953}
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2907, file: !2908, line: 242, baseType: !67, size: 32)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2907, file: !2908, line: 247, baseType: !26, size: 64, offset: 64)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2907, file: !2908, line: 248, baseType: !26, size: 64, offset: 128)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2907, file: !2908, line: 249, baseType: !26, size: 64, offset: 192)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2907, file: !2908, line: 250, baseType: !26, size: 64, offset: 256)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2907, file: !2908, line: 251, baseType: !26, size: 64, offset: 320)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2907, file: !2908, line: 252, baseType: !26, size: 64, offset: 384)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2907, file: !2908, line: 253, baseType: !26, size: 64, offset: 448)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2907, file: !2908, line: 254, baseType: !26, size: 64, offset: 512)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2907, file: !2908, line: 256, baseType: !26, size: 64, offset: 576)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2907, file: !2908, line: 257, baseType: !26, size: 64, offset: 640)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2907, file: !2908, line: 258, baseType: !26, size: 64, offset: 704)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2907, file: !2908, line: 260, baseType: !2923, size: 64, offset: 768)
!2923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2924, size: 64)
!2924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2908, line: 156, size: 192, elements: !2925)
!2925 = !{!2926, !2927, !2929}
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !2924, file: !2908, line: 157, baseType: !2923, size: 64)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !2924, file: !2908, line: 158, baseType: !2928, size: 64, offset: 64)
!2928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2907, size: 64)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !2924, file: !2908, line: 162, baseType: !67, size: 32, offset: 128)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2907, file: !2908, line: 262, baseType: !2928, size: 64, offset: 832)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2907, file: !2908, line: 264, baseType: !67, size: 32, offset: 896)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2907, file: !2908, line: 268, baseType: !67, size: 32, offset: 928)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2907, file: !2908, line: 270, baseType: !2934, size: 64, offset: 960)
!2934 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !2935, line: 140, baseType: !2936)
!2935 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2936 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2907, file: !2908, line: 274, baseType: !138, size: 16, offset: 1024)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2907, file: !2908, line: 275, baseType: !2939, size: 8, offset: 1040)
!2939 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2907, file: !2908, line: 276, baseType: !2941, size: 8, offset: 1048)
!2941 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 8, elements: !214)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2907, file: !2908, line: 280, baseType: !2943, size: 64, offset: 1088)
!2943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2944, size: 64)
!2944 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2908, line: 150, baseType: null)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2907, file: !2908, line: 289, baseType: !2946, size: 64, offset: 1152)
!2946 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !2935, line: 141, baseType: !2936)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !2907, file: !2908, line: 297, baseType: !28, size: 64, offset: 1216)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !2907, file: !2908, line: 298, baseType: !28, size: 64, offset: 1280)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !2907, file: !2908, line: 299, baseType: !28, size: 64, offset: 1344)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !2907, file: !2908, line: 300, baseType: !28, size: 64, offset: 1408)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2907, file: !2908, line: 302, baseType: !29, size: 64, offset: 1472)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2907, file: !2908, line: 303, baseType: !67, size: 32, offset: 1536)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2907, file: !2908, line: 305, baseType: !2954, size: 160, offset: 1568)
!2954 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 160, elements: !2955)
!2955 = !{!2956}
!2956 = !DISubrange(count: 20)
!2957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!2958 = !{!2959, !2960, !2961, !2962, !2963, !2964}
!2959 = !DILocalVariable(name: "stream", arg: 1, scope: !2901, file: !580, line: 62, type: !2904)
!2960 = !DILocalVariable(name: "command_name", arg: 2, scope: !2901, file: !580, line: 63, type: !37)
!2961 = !DILocalVariable(name: "package", arg: 3, scope: !2901, file: !580, line: 63, type: !37)
!2962 = !DILocalVariable(name: "version", arg: 4, scope: !2901, file: !580, line: 64, type: !37)
!2963 = !DILocalVariable(name: "authors", arg: 5, scope: !2901, file: !580, line: 65, type: !2957)
!2964 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2901, file: !580, line: 65, type: !29)
!2965 = !DILocation(line: 62, column: 24, scope: !2901)
!2966 = !DILocation(line: 63, column: 30, scope: !2901)
!2967 = !DILocation(line: 63, column: 56, scope: !2901)
!2968 = !DILocation(line: 64, column: 30, scope: !2901)
!2969 = !DILocation(line: 65, column: 39, scope: !2901)
!2970 = !DILocation(line: 65, column: 55, scope: !2901)
!2971 = !DILocation(line: 67, column: 7, scope: !2972)
!2972 = distinct !DILexicalBlock(scope: !2901, file: !580, line: 67, column: 7)
!2973 = !DILocation(line: 67, column: 7, scope: !2901)
!2974 = !DILocation(line: 68, column: 5, scope: !2972)
!2975 = !DILocation(line: 70, column: 5, scope: !2972)
!2976 = !DILocation(line: 84, column: 3, scope: !2901)
!2977 = !DILocation(line: 84, column: 3, scope: !2978)
!2978 = !DILexicalBlockFile(scope: !2901, file: !580, discriminator: 1)
!2979 = !DILocation(line: 86, column: 3, scope: !2901)
!2980 = !DILocation(line: 86, column: 3, scope: !2978)
!2981 = !DILocation(line: 95, column: 3, scope: !2901)
!2982 = !DILocation(line: 99, column: 7, scope: !2983)
!2983 = distinct !DILexicalBlock(scope: !2901, file: !580, line: 96, column: 5)
!2984 = !DILocation(line: 102, column: 7, scope: !2983)
!2985 = !DILocation(line: 102, column: 7, scope: !2986)
!2986 = !DILexicalBlockFile(scope: !2983, file: !580, discriminator: 1)
!2987 = !DILocation(line: 103, column: 7, scope: !2983)
!2988 = !DILocation(line: 106, column: 7, scope: !2983)
!2989 = !DILocation(line: 106, column: 7, scope: !2986)
!2990 = !DILocation(line: 107, column: 7, scope: !2983)
!2991 = !DILocation(line: 110, column: 7, scope: !2983)
!2992 = !DILocation(line: 110, column: 7, scope: !2986)
!2993 = !DILocation(line: 112, column: 7, scope: !2983)
!2994 = !DILocation(line: 117, column: 7, scope: !2983)
!2995 = !DILocation(line: 117, column: 7, scope: !2986)
!2996 = !DILocation(line: 119, column: 7, scope: !2983)
!2997 = !DILocation(line: 124, column: 7, scope: !2983)
!2998 = !DILocation(line: 124, column: 7, scope: !2986)
!2999 = !DILocation(line: 126, column: 7, scope: !2983)
!3000 = !DILocation(line: 131, column: 7, scope: !2983)
!3001 = !DILocation(line: 131, column: 7, scope: !2986)
!3002 = !DILocation(line: 134, column: 7, scope: !2983)
!3003 = !DILocation(line: 139, column: 7, scope: !2983)
!3004 = !DILocation(line: 139, column: 7, scope: !2986)
!3005 = !DILocation(line: 142, column: 7, scope: !2983)
!3006 = !DILocation(line: 147, column: 7, scope: !2983)
!3007 = !DILocation(line: 147, column: 7, scope: !2986)
!3008 = !DILocation(line: 151, column: 7, scope: !2983)
!3009 = !DILocation(line: 156, column: 7, scope: !2983)
!3010 = !DILocation(line: 156, column: 7, scope: !2986)
!3011 = !DILocation(line: 160, column: 7, scope: !2983)
!3012 = !DILocation(line: 167, column: 7, scope: !2983)
!3013 = !DILocation(line: 167, column: 7, scope: !2986)
!3014 = !DILocation(line: 171, column: 7, scope: !2983)
!3015 = !DILocation(line: 173, column: 1, scope: !2901)
!3016 = distinct !DISubprogram(name: "version_etc_ar", scope: !580, file: !580, line: 180, type: !3017, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !576, variables: !3019)
!3017 = !DISubroutineType(types: !3018)
!3018 = !{null, !2904, !37, !37, !37, !2957}
!3019 = !{!3020, !3021, !3022, !3023, !3024, !3025}
!3020 = !DILocalVariable(name: "stream", arg: 1, scope: !3016, file: !580, line: 180, type: !2904)
!3021 = !DILocalVariable(name: "command_name", arg: 2, scope: !3016, file: !580, line: 181, type: !37)
!3022 = !DILocalVariable(name: "package", arg: 3, scope: !3016, file: !580, line: 181, type: !37)
!3023 = !DILocalVariable(name: "version", arg: 4, scope: !3016, file: !580, line: 182, type: !37)
!3024 = !DILocalVariable(name: "authors", arg: 5, scope: !3016, file: !580, line: 182, type: !2957)
!3025 = !DILocalVariable(name: "n_authors", scope: !3016, file: !580, line: 184, type: !29)
!3026 = !DILocation(line: 180, column: 23, scope: !3016)
!3027 = !DILocation(line: 181, column: 29, scope: !3016)
!3028 = !DILocation(line: 181, column: 55, scope: !3016)
!3029 = !DILocation(line: 182, column: 29, scope: !3016)
!3030 = !DILocation(line: 182, column: 59, scope: !3016)
!3031 = !DILocation(line: 184, column: 10, scope: !3016)
!3032 = !DILocation(line: 186, column: 8, scope: !3033)
!3033 = distinct !DILexicalBlock(scope: !3016, file: !580, line: 186, column: 3)
!3034 = !DILocation(line: 186, column: 23, scope: !3035)
!3035 = !DILexicalBlockFile(scope: !3036, file: !580, discriminator: 1)
!3036 = distinct !DILexicalBlock(scope: !3033, file: !580, line: 186, column: 3)
!3037 = !DILocation(line: 186, column: 3, scope: !3038)
!3038 = !DILexicalBlockFile(scope: !3033, file: !580, discriminator: 1)
!3039 = !DILocation(line: 186, column: 52, scope: !3040)
!3040 = !DILexicalBlockFile(scope: !3036, file: !580, discriminator: 3)
!3041 = distinct !{!3041, !3042, !3043}
!3042 = !DILocation(line: 186, column: 3, scope: !3033)
!3043 = !DILocation(line: 187, column: 5, scope: !3033)
!3044 = !DILocation(line: 188, column: 3, scope: !3016)
!3045 = !DILocation(line: 189, column: 1, scope: !3016)
!3046 = distinct !DISubprogram(name: "version_etc_va", scope: !580, file: !580, line: 196, type: !3047, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !576, variables: !3056)
!3047 = !DISubroutineType(types: !3048)
!3048 = !{null, !2904, !37, !37, !37, !3049}
!3049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3050, size: 64)
!3050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !577, line: 189, size: 192, elements: !3051)
!3051 = !{!3052, !3053, !3054, !3055}
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3050, file: !577, line: 189, baseType: !155, size: 32)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3050, file: !577, line: 189, baseType: !155, size: 32, offset: 32)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3050, file: !577, line: 189, baseType: !28, size: 64, offset: 64)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3050, file: !577, line: 189, baseType: !28, size: 64, offset: 128)
!3056 = !{!3057, !3058, !3059, !3060, !3061, !3062, !3063}
!3057 = !DILocalVariable(name: "stream", arg: 1, scope: !3046, file: !580, line: 196, type: !2904)
!3058 = !DILocalVariable(name: "command_name", arg: 2, scope: !3046, file: !580, line: 197, type: !37)
!3059 = !DILocalVariable(name: "package", arg: 3, scope: !3046, file: !580, line: 197, type: !37)
!3060 = !DILocalVariable(name: "version", arg: 4, scope: !3046, file: !580, line: 198, type: !37)
!3061 = !DILocalVariable(name: "authors", arg: 5, scope: !3046, file: !580, line: 198, type: !3049)
!3062 = !DILocalVariable(name: "n_authors", scope: !3046, file: !580, line: 200, type: !29)
!3063 = !DILocalVariable(name: "authtab", scope: !3046, file: !580, line: 201, type: !3064)
!3064 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 640, elements: !145)
!3065 = !DILocation(line: 196, column: 23, scope: !3046)
!3066 = !DILocation(line: 197, column: 29, scope: !3046)
!3067 = !DILocation(line: 197, column: 55, scope: !3046)
!3068 = !DILocation(line: 198, column: 29, scope: !3046)
!3069 = !DILocation(line: 198, column: 46, scope: !3046)
!3070 = !DILocation(line: 201, column: 3, scope: !3046)
!3071 = !DILocation(line: 201, column: 15, scope: !3046)
!3072 = !DILocation(line: 200, column: 10, scope: !3046)
!3073 = !DILocation(line: 205, column: 35, scope: !3074)
!3074 = !DILexicalBlockFile(scope: !3075, file: !580, discriminator: 1)
!3075 = distinct !DILexicalBlock(scope: !3076, file: !580, line: 203, column: 3)
!3076 = distinct !DILexicalBlock(scope: !3046, file: !580, line: 203, column: 3)
!3077 = !DILocation(line: 205, column: 35, scope: !3078)
!3078 = !DILexicalBlockFile(scope: !3075, file: !580, discriminator: 2)
!3079 = !DILocation(line: 205, column: 35, scope: !3080)
!3080 = !DILexicalBlockFile(scope: !3075, file: !580, discriminator: 3)
!3081 = !DILocation(line: 205, column: 35, scope: !3082)
!3082 = !DILexicalBlockFile(scope: !3075, file: !580, discriminator: 4)
!3083 = !DILocation(line: 205, column: 14, scope: !3082)
!3084 = !DILocation(line: 205, column: 33, scope: !3082)
!3085 = !DILocation(line: 205, column: 67, scope: !3082)
!3086 = !DILocation(line: 203, column: 3, scope: !3087)
!3087 = !DILexicalBlockFile(scope: !3076, file: !580, discriminator: 1)
!3088 = !DILocation(line: 208, column: 3, scope: !3046)
!3089 = !DILocation(line: 210, column: 1, scope: !3046)
!3090 = distinct !DISubprogram(name: "version_etc", scope: !580, file: !580, line: 227, type: !3091, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !576, variables: !3093)
!3091 = !DISubroutineType(types: !3092)
!3092 = !{null, !2904, !37, !37, !37, null}
!3093 = !{!3094, !3095, !3096, !3097, !3098}
!3094 = !DILocalVariable(name: "stream", arg: 1, scope: !3090, file: !580, line: 227, type: !2904)
!3095 = !DILocalVariable(name: "command_name", arg: 2, scope: !3090, file: !580, line: 228, type: !37)
!3096 = !DILocalVariable(name: "package", arg: 3, scope: !3090, file: !580, line: 228, type: !37)
!3097 = !DILocalVariable(name: "version", arg: 4, scope: !3090, file: !580, line: 229, type: !37)
!3098 = !DILocalVariable(name: "authors", scope: !3090, file: !580, line: 231, type: !3099)
!3099 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !2906, line: 80, baseType: !3100)
!3100 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !205, line: 50, baseType: !3101)
!3101 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !577, line: 231, baseType: !3102)
!3102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3050, size: 192, elements: !214)
!3103 = !DILocation(line: 227, column: 20, scope: !3090)
!3104 = !DILocation(line: 228, column: 26, scope: !3090)
!3105 = !DILocation(line: 228, column: 52, scope: !3090)
!3106 = !DILocation(line: 229, column: 26, scope: !3090)
!3107 = !DILocation(line: 231, column: 3, scope: !3090)
!3108 = !DILocation(line: 231, column: 11, scope: !3090)
!3109 = !DILocation(line: 233, column: 3, scope: !3090)
!3110 = !DILocation(line: 234, column: 3, scope: !3090)
!3111 = !DILocation(line: 235, column: 3, scope: !3090)
!3112 = !DILocation(line: 236, column: 1, scope: !3090)
!3113 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !580, file: !580, line: 239, type: !866, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !576, variables: !87)
!3114 = !DILocation(line: 245, column: 3, scope: !3113)
!3115 = !DILocation(line: 245, column: 3, scope: !3116)
!3116 = !DILexicalBlockFile(scope: !3113, file: !580, discriminator: 1)
!3117 = !DILocation(line: 251, column: 3, scope: !3113)
!3118 = !DILocation(line: 251, column: 3, scope: !3116)
!3119 = !DILocation(line: 256, column: 3, scope: !3113)
!3120 = !DILocation(line: 256, column: 3, scope: !3116)
!3121 = !DILocation(line: 258, column: 1, scope: !3113)
!3122 = distinct !DISubprogram(name: "xnmalloc", scope: !588, file: !588, line: 105, type: !3123, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !584, variables: !3125)
!3123 = !DISubroutineType(types: !3124)
!3124 = !{!28, !29, !29}
!3125 = !{!3126, !3127}
!3126 = !DILocalVariable(name: "n", arg: 1, scope: !3122, file: !588, line: 105, type: !29)
!3127 = !DILocalVariable(name: "s", arg: 2, scope: !3122, file: !588, line: 105, type: !29)
!3128 = !DILocation(line: 105, column: 18, scope: !3122)
!3129 = !DILocation(line: 105, column: 28, scope: !3122)
!3130 = !DILocation(line: 107, column: 7, scope: !3131)
!3131 = distinct !DILexicalBlock(scope: !3122, file: !588, line: 107, column: 7)
!3132 = !DILocation(line: 107, column: 7, scope: !3122)
!3133 = !DILocation(line: 108, column: 5, scope: !3131)
!3134 = !DILocation(line: 109, column: 21, scope: !3122)
!3135 = !DILocalVariable(name: "n", arg: 1, scope: !3136, file: !3137, line: 39, type: !29)
!3136 = distinct !DISubprogram(name: "xmalloc", scope: !3137, file: !3137, line: 39, type: !3138, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !584, variables: !3140)
!3137 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3138 = !DISubroutineType(types: !3139)
!3139 = !{!28, !29}
!3140 = !{!3135, !3141}
!3141 = !DILocalVariable(name: "p", scope: !3136, file: !3137, line: 41, type: !28)
!3142 = !DILocation(line: 39, column: 17, scope: !3136, inlinedAt: !3143)
!3143 = distinct !DILocation(line: 109, column: 10, scope: !3122)
!3144 = !DILocation(line: 41, column: 13, scope: !3136, inlinedAt: !3143)
!3145 = !DILocation(line: 41, column: 9, scope: !3136, inlinedAt: !3143)
!3146 = !DILocation(line: 42, column: 8, scope: !3147, inlinedAt: !3143)
!3147 = distinct !DILexicalBlock(scope: !3136, file: !3137, line: 42, column: 7)
!3148 = !DILocation(line: 42, column: 15, scope: !3149, inlinedAt: !3143)
!3149 = !DILexicalBlockFile(scope: !3147, file: !3137, discriminator: 1)
!3150 = !DILocation(line: 42, column: 10, scope: !3147, inlinedAt: !3143)
!3151 = !DILocation(line: 43, column: 5, scope: !3147, inlinedAt: !3143)
!3152 = !DILocation(line: 109, column: 3, scope: !3122)
!3153 = !DILocation(line: 39, column: 17, scope: !3136)
!3154 = !DILocation(line: 41, column: 13, scope: !3136)
!3155 = !DILocation(line: 41, column: 9, scope: !3136)
!3156 = !DILocation(line: 42, column: 8, scope: !3147)
!3157 = !DILocation(line: 42, column: 15, scope: !3149)
!3158 = !DILocation(line: 42, column: 10, scope: !3147)
!3159 = !DILocation(line: 43, column: 5, scope: !3147)
!3160 = !DILocation(line: 44, column: 3, scope: !3136)
!3161 = distinct !DISubprogram(name: "xnrealloc", scope: !588, file: !588, line: 118, type: !3162, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !584, variables: !3164)
!3162 = !DISubroutineType(types: !3163)
!3163 = !{!28, !28, !29, !29}
!3164 = !{!3165, !3166, !3167}
!3165 = !DILocalVariable(name: "p", arg: 1, scope: !3161, file: !588, line: 118, type: !28)
!3166 = !DILocalVariable(name: "n", arg: 2, scope: !3161, file: !588, line: 118, type: !29)
!3167 = !DILocalVariable(name: "s", arg: 3, scope: !3161, file: !588, line: 118, type: !29)
!3168 = !DILocation(line: 118, column: 18, scope: !3161)
!3169 = !DILocation(line: 118, column: 28, scope: !3161)
!3170 = !DILocation(line: 118, column: 38, scope: !3161)
!3171 = !DILocation(line: 120, column: 7, scope: !3172)
!3172 = distinct !DILexicalBlock(scope: !3161, file: !588, line: 120, column: 7)
!3173 = !DILocation(line: 120, column: 7, scope: !3161)
!3174 = !DILocation(line: 121, column: 5, scope: !3172)
!3175 = !DILocation(line: 122, column: 25, scope: !3161)
!3176 = !DILocalVariable(name: "p", arg: 1, scope: !3177, file: !3137, line: 51, type: !28)
!3177 = distinct !DISubprogram(name: "xrealloc", scope: !3137, file: !3137, line: 51, type: !3178, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !584, variables: !3180)
!3178 = !DISubroutineType(types: !3179)
!3179 = !{!28, !28, !29}
!3180 = !{!3176, !3181}
!3181 = !DILocalVariable(name: "n", arg: 2, scope: !3177, file: !3137, line: 51, type: !29)
!3182 = !DILocation(line: 51, column: 17, scope: !3177, inlinedAt: !3183)
!3183 = distinct !DILocation(line: 122, column: 10, scope: !3161)
!3184 = !DILocation(line: 51, column: 27, scope: !3177, inlinedAt: !3183)
!3185 = !DILocation(line: 53, column: 8, scope: !3186, inlinedAt: !3183)
!3186 = distinct !DILexicalBlock(scope: !3177, file: !3137, line: 53, column: 7)
!3187 = !DILocation(line: 53, column: 13, scope: !3188, inlinedAt: !3183)
!3188 = !DILexicalBlockFile(scope: !3186, file: !3137, discriminator: 1)
!3189 = !DILocation(line: 53, column: 10, scope: !3186, inlinedAt: !3183)
!3190 = !DILocation(line: 57, column: 7, scope: !3191, inlinedAt: !3183)
!3191 = distinct !DILexicalBlock(scope: !3186, file: !3137, line: 54, column: 5)
!3192 = !DILocation(line: 58, column: 7, scope: !3191, inlinedAt: !3183)
!3193 = !DILocation(line: 61, column: 7, scope: !3177, inlinedAt: !3183)
!3194 = !DILocation(line: 62, column: 8, scope: !3195, inlinedAt: !3183)
!3195 = distinct !DILexicalBlock(scope: !3177, file: !3137, line: 62, column: 7)
!3196 = !DILocation(line: 62, column: 13, scope: !3197, inlinedAt: !3183)
!3197 = !DILexicalBlockFile(scope: !3195, file: !3137, discriminator: 1)
!3198 = !DILocation(line: 62, column: 10, scope: !3195, inlinedAt: !3183)
!3199 = !DILocation(line: 63, column: 5, scope: !3195, inlinedAt: !3183)
!3200 = !DILocation(line: 122, column: 3, scope: !3161)
!3201 = !DILocation(line: 51, column: 17, scope: !3177)
!3202 = !DILocation(line: 51, column: 27, scope: !3177)
!3203 = !DILocation(line: 53, column: 8, scope: !3186)
!3204 = !DILocation(line: 53, column: 13, scope: !3188)
!3205 = !DILocation(line: 53, column: 10, scope: !3186)
!3206 = !DILocation(line: 57, column: 7, scope: !3191)
!3207 = !DILocation(line: 58, column: 7, scope: !3191)
!3208 = !DILocation(line: 61, column: 7, scope: !3177)
!3209 = !DILocation(line: 62, column: 8, scope: !3195)
!3210 = !DILocation(line: 62, column: 13, scope: !3197)
!3211 = !DILocation(line: 62, column: 10, scope: !3195)
!3212 = !DILocation(line: 63, column: 5, scope: !3195)
!3213 = !DILocation(line: 65, column: 1, scope: !3177)
!3214 = !DILocation(line: 180, column: 19, scope: !589)
!3215 = !DILocation(line: 180, column: 30, scope: !589)
!3216 = !DILocation(line: 180, column: 41, scope: !589)
!3217 = !DILocation(line: 182, column: 14, scope: !589)
!3218 = !DILocation(line: 182, column: 10, scope: !589)
!3219 = !DILocation(line: 184, column: 9, scope: !3220)
!3220 = distinct !DILexicalBlock(scope: !589, file: !588, line: 184, column: 7)
!3221 = !DILocation(line: 184, column: 7, scope: !589)
!3222 = !DILocation(line: 186, column: 13, scope: !3223)
!3223 = distinct !DILexicalBlock(scope: !3224, file: !588, line: 186, column: 11)
!3224 = distinct !DILexicalBlock(scope: !3220, file: !588, line: 185, column: 5)
!3225 = !DILocation(line: 186, column: 11, scope: !3224)
!3226 = !DILocation(line: 194, column: 30, scope: !3227)
!3227 = distinct !DILexicalBlock(scope: !3223, file: !588, line: 187, column: 9)
!3228 = !DILocation(line: 195, column: 16, scope: !3227)
!3229 = !DILocation(line: 195, column: 13, scope: !3227)
!3230 = !DILocation(line: 196, column: 9, scope: !3227)
!3231 = !DILocation(line: 204, column: 69, scope: !3232)
!3232 = distinct !DILexicalBlock(scope: !3233, file: !588, line: 204, column: 11)
!3233 = distinct !DILexicalBlock(scope: !3220, file: !588, line: 199, column: 5)
!3234 = !DILocation(line: 205, column: 11, scope: !3232)
!3235 = !DILocation(line: 204, column: 11, scope: !3233)
!3236 = !DILocation(line: 206, column: 9, scope: !3232)
!3237 = !DILocation(line: 210, column: 7, scope: !589)
!3238 = !DILocation(line: 211, column: 25, scope: !589)
!3239 = !DILocation(line: 51, column: 17, scope: !3177, inlinedAt: !3240)
!3240 = distinct !DILocation(line: 211, column: 10, scope: !589)
!3241 = !DILocation(line: 51, column: 27, scope: !3177, inlinedAt: !3240)
!3242 = !DILocation(line: 53, column: 10, scope: !3186, inlinedAt: !3240)
!3243 = !DILocation(line: 207, column: 14, scope: !3233)
!3244 = !DILocation(line: 207, column: 18, scope: !3233)
!3245 = !DILocation(line: 207, column: 9, scope: !3233)
!3246 = !DILocation(line: 53, column: 8, scope: !3186, inlinedAt: !3240)
!3247 = !DILocation(line: 57, column: 7, scope: !3191, inlinedAt: !3240)
!3248 = !DILocation(line: 58, column: 7, scope: !3191, inlinedAt: !3240)
!3249 = !DILocation(line: 61, column: 7, scope: !3177, inlinedAt: !3240)
!3250 = !DILocation(line: 62, column: 8, scope: !3195, inlinedAt: !3240)
!3251 = !DILocation(line: 62, column: 13, scope: !3197, inlinedAt: !3240)
!3252 = !DILocation(line: 62, column: 10, scope: !3195, inlinedAt: !3240)
!3253 = !DILocation(line: 63, column: 5, scope: !3195, inlinedAt: !3240)
!3254 = !DILocation(line: 211, column: 3, scope: !589)
!3255 = distinct !DISubprogram(name: "xcharalloc", scope: !588, file: !588, line: 220, type: !2173, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !584, variables: !3256)
!3256 = !{!3257}
!3257 = !DILocalVariable(name: "n", arg: 1, scope: !3255, file: !588, line: 220, type: !29)
!3258 = !DILocation(line: 220, column: 20, scope: !3255)
!3259 = !DILocation(line: 39, column: 17, scope: !3136, inlinedAt: !3260)
!3260 = distinct !DILocation(line: 222, column: 10, scope: !3255)
!3261 = !DILocation(line: 41, column: 13, scope: !3136, inlinedAt: !3260)
!3262 = !DILocation(line: 41, column: 9, scope: !3136, inlinedAt: !3260)
!3263 = !DILocation(line: 42, column: 8, scope: !3147, inlinedAt: !3260)
!3264 = !DILocation(line: 42, column: 15, scope: !3149, inlinedAt: !3260)
!3265 = !DILocation(line: 42, column: 10, scope: !3147, inlinedAt: !3260)
!3266 = !DILocation(line: 43, column: 5, scope: !3147, inlinedAt: !3260)
!3267 = !DILocation(line: 222, column: 3, scope: !3255)
!3268 = distinct !DISubprogram(name: "x2realloc", scope: !3137, file: !3137, line: 74, type: !3269, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !584, variables: !3271)
!3269 = !DISubroutineType(types: !3270)
!3270 = !{!28, !28, !592}
!3271 = !{!3272, !3273}
!3272 = !DILocalVariable(name: "p", arg: 1, scope: !3268, file: !3137, line: 74, type: !28)
!3273 = !DILocalVariable(name: "pn", arg: 2, scope: !3268, file: !3137, line: 74, type: !592)
!3274 = !DILocation(line: 74, column: 18, scope: !3268)
!3275 = !DILocation(line: 74, column: 29, scope: !3268)
!3276 = !DILocation(line: 180, column: 19, scope: !589, inlinedAt: !3277)
!3277 = distinct !DILocation(line: 76, column: 10, scope: !3268)
!3278 = !DILocation(line: 180, column: 30, scope: !589, inlinedAt: !3277)
!3279 = !DILocation(line: 180, column: 41, scope: !589, inlinedAt: !3277)
!3280 = !DILocation(line: 182, column: 14, scope: !589, inlinedAt: !3277)
!3281 = !DILocation(line: 182, column: 10, scope: !589, inlinedAt: !3277)
!3282 = !DILocation(line: 184, column: 9, scope: !3220, inlinedAt: !3277)
!3283 = !DILocation(line: 184, column: 7, scope: !589, inlinedAt: !3277)
!3284 = !DILocation(line: 186, column: 13, scope: !3223, inlinedAt: !3277)
!3285 = !DILocation(line: 186, column: 11, scope: !3224, inlinedAt: !3277)
!3286 = !DILocation(line: 210, column: 7, scope: !589, inlinedAt: !3277)
!3287 = !DILocation(line: 51, column: 17, scope: !3177, inlinedAt: !3288)
!3288 = distinct !DILocation(line: 211, column: 10, scope: !589, inlinedAt: !3277)
!3289 = !DILocation(line: 51, column: 27, scope: !3177, inlinedAt: !3288)
!3290 = !DILocation(line: 53, column: 10, scope: !3186, inlinedAt: !3288)
!3291 = !DILocation(line: 205, column: 11, scope: !3232, inlinedAt: !3277)
!3292 = !DILocation(line: 204, column: 11, scope: !3233, inlinedAt: !3277)
!3293 = !DILocation(line: 206, column: 9, scope: !3232, inlinedAt: !3277)
!3294 = !DILocation(line: 207, column: 14, scope: !3233, inlinedAt: !3277)
!3295 = !DILocation(line: 207, column: 18, scope: !3233, inlinedAt: !3277)
!3296 = !DILocation(line: 207, column: 9, scope: !3233, inlinedAt: !3277)
!3297 = !DILocation(line: 53, column: 8, scope: !3186, inlinedAt: !3288)
!3298 = !DILocation(line: 57, column: 7, scope: !3191, inlinedAt: !3288)
!3299 = !DILocation(line: 58, column: 7, scope: !3191, inlinedAt: !3288)
!3300 = !DILocation(line: 61, column: 7, scope: !3177, inlinedAt: !3288)
!3301 = !DILocation(line: 62, column: 8, scope: !3195, inlinedAt: !3288)
!3302 = !DILocation(line: 62, column: 13, scope: !3197, inlinedAt: !3288)
!3303 = !DILocation(line: 62, column: 10, scope: !3195, inlinedAt: !3288)
!3304 = !DILocation(line: 63, column: 5, scope: !3195, inlinedAt: !3288)
!3305 = !DILocation(line: 76, column: 3, scope: !3268)
!3306 = distinct !DISubprogram(name: "xzalloc", scope: !3137, file: !3137, line: 84, type: !3138, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !584, variables: !3307)
!3307 = !{!3308}
!3308 = !DILocalVariable(name: "s", arg: 1, scope: !3306, file: !3137, line: 84, type: !29)
!3309 = !DILocation(line: 84, column: 17, scope: !3306)
!3310 = !DILocation(line: 39, column: 17, scope: !3136, inlinedAt: !3311)
!3311 = distinct !DILocation(line: 86, column: 18, scope: !3306)
!3312 = !DILocation(line: 41, column: 13, scope: !3136, inlinedAt: !3311)
!3313 = !DILocation(line: 41, column: 9, scope: !3136, inlinedAt: !3311)
!3314 = !DILocation(line: 42, column: 8, scope: !3147, inlinedAt: !3311)
!3315 = !DILocation(line: 42, column: 15, scope: !3149, inlinedAt: !3311)
!3316 = !DILocation(line: 42, column: 10, scope: !3147, inlinedAt: !3311)
!3317 = !DILocation(line: 43, column: 5, scope: !3147, inlinedAt: !3311)
!3318 = !DILocation(line: 86, column: 10, scope: !3306)
!3319 = !DILocation(line: 86, column: 3, scope: !3306)
!3320 = distinct !DISubprogram(name: "xcalloc", scope: !3137, file: !3137, line: 93, type: !3123, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !584, variables: !3321)
!3321 = !{!3322, !3323, !3324}
!3322 = !DILocalVariable(name: "n", arg: 1, scope: !3320, file: !3137, line: 93, type: !29)
!3323 = !DILocalVariable(name: "s", arg: 2, scope: !3320, file: !3137, line: 93, type: !29)
!3324 = !DILocalVariable(name: "p", scope: !3320, file: !3137, line: 95, type: !28)
!3325 = !DILocation(line: 93, column: 17, scope: !3320)
!3326 = !DILocation(line: 93, column: 27, scope: !3320)
!3327 = !DILocation(line: 100, column: 7, scope: !3328)
!3328 = distinct !DILexicalBlock(scope: !3320, file: !3137, line: 100, column: 7)
!3329 = !DILocation(line: 101, column: 7, scope: !3328)
!3330 = !DILocation(line: 101, column: 18, scope: !3331)
!3331 = !DILexicalBlockFile(scope: !3328, file: !3137, discriminator: 1)
!3332 = !DILocation(line: 95, column: 9, scope: !3320)
!3333 = !DILocation(line: 101, column: 16, scope: !3331)
!3334 = !DILocation(line: 100, column: 7, scope: !3335)
!3335 = !DILexicalBlockFile(scope: !3320, file: !3137, discriminator: 1)
!3336 = !DILocation(line: 102, column: 5, scope: !3328)
!3337 = !DILocation(line: 103, column: 3, scope: !3320)
!3338 = distinct !DISubprogram(name: "xmemdup", scope: !3137, file: !3137, line: 111, type: !3339, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !584, variables: !3341)
!3339 = !DISubroutineType(types: !3340)
!3340 = !{!28, !32, !29}
!3341 = !{!3342, !3343}
!3342 = !DILocalVariable(name: "p", arg: 1, scope: !3338, file: !3137, line: 111, type: !32)
!3343 = !DILocalVariable(name: "s", arg: 2, scope: !3338, file: !3137, line: 111, type: !29)
!3344 = !DILocation(line: 111, column: 22, scope: !3338)
!3345 = !DILocation(line: 111, column: 32, scope: !3338)
!3346 = !DILocation(line: 39, column: 17, scope: !3136, inlinedAt: !3347)
!3347 = distinct !DILocation(line: 113, column: 18, scope: !3338)
!3348 = !DILocation(line: 41, column: 13, scope: !3136, inlinedAt: !3347)
!3349 = !DILocation(line: 41, column: 9, scope: !3136, inlinedAt: !3347)
!3350 = !DILocation(line: 42, column: 8, scope: !3147, inlinedAt: !3347)
!3351 = !DILocation(line: 42, column: 15, scope: !3149, inlinedAt: !3347)
!3352 = !DILocation(line: 42, column: 10, scope: !3147, inlinedAt: !3347)
!3353 = !DILocation(line: 43, column: 5, scope: !3147, inlinedAt: !3347)
!3354 = !DILocation(line: 113, column: 10, scope: !3338)
!3355 = !DILocation(line: 113, column: 3, scope: !3338)
!3356 = distinct !DISubprogram(name: "xstrdup", scope: !3137, file: !3137, line: 119, type: !2380, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !584, variables: !3357)
!3357 = !{!3358}
!3358 = !DILocalVariable(name: "string", arg: 1, scope: !3356, file: !3137, line: 119, type: !37)
!3359 = !DILocation(line: 119, column: 22, scope: !3356)
!3360 = !DILocation(line: 121, column: 27, scope: !3356)
!3361 = !DILocation(line: 121, column: 43, scope: !3356)
!3362 = !DILocation(line: 111, column: 22, scope: !3338, inlinedAt: !3363)
!3363 = distinct !DILocation(line: 121, column: 10, scope: !3364)
!3364 = !DILexicalBlockFile(scope: !3356, file: !3137, discriminator: 1)
!3365 = !DILocation(line: 111, column: 32, scope: !3338, inlinedAt: !3363)
!3366 = !DILocation(line: 39, column: 17, scope: !3136, inlinedAt: !3367)
!3367 = distinct !DILocation(line: 113, column: 18, scope: !3338, inlinedAt: !3363)
!3368 = !DILocation(line: 41, column: 13, scope: !3136, inlinedAt: !3367)
!3369 = !DILocation(line: 41, column: 9, scope: !3136, inlinedAt: !3367)
!3370 = !DILocation(line: 42, column: 8, scope: !3147, inlinedAt: !3367)
!3371 = !DILocation(line: 42, column: 15, scope: !3149, inlinedAt: !3367)
!3372 = !DILocation(line: 42, column: 10, scope: !3147, inlinedAt: !3367)
!3373 = !DILocation(line: 43, column: 5, scope: !3147, inlinedAt: !3367)
!3374 = !DILocation(line: 113, column: 10, scope: !3338, inlinedAt: !3363)
!3375 = !DILocation(line: 121, column: 3, scope: !3356)
!3376 = distinct !DISubprogram(name: "xalloc_die", scope: !3377, file: !3377, line: 32, type: !866, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !601, variables: !87)
!3377 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3378 = !DILocation(line: 34, column: 10, scope: !3376)
!3379 = !DILocation(line: 34, column: 33, scope: !3376)
!3380 = !DILocation(line: 34, column: 3, scope: !3381)
!3381 = !DILexicalBlockFile(scope: !3376, file: !3377, discriminator: 1)
!3382 = !DILocation(line: 40, column: 3, scope: !3376)
!3383 = distinct !DISubprogram(name: "rpl_calloc", scope: !3384, file: !3384, line: 42, type: !3123, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !603, variables: !3385)
!3384 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3385 = !{!3386, !3387, !3388, !3389}
!3386 = !DILocalVariable(name: "n", arg: 1, scope: !3383, file: !3384, line: 42, type: !29)
!3387 = !DILocalVariable(name: "s", arg: 2, scope: !3383, file: !3384, line: 42, type: !29)
!3388 = !DILocalVariable(name: "result", scope: !3383, file: !3384, line: 44, type: !28)
!3389 = !DILocalVariable(name: "bytes", scope: !3390, file: !3384, line: 56, type: !29)
!3390 = distinct !DILexicalBlock(scope: !3391, file: !3384, line: 53, column: 5)
!3391 = distinct !DILexicalBlock(scope: !3383, file: !3384, line: 47, column: 7)
!3392 = !DILocation(line: 42, column: 20, scope: !3383)
!3393 = !DILocation(line: 42, column: 30, scope: !3383)
!3394 = !DILocation(line: 47, column: 9, scope: !3391)
!3395 = !DILocation(line: 47, column: 19, scope: !3396)
!3396 = !DILexicalBlockFile(scope: !3391, file: !3384, discriminator: 1)
!3397 = !DILocation(line: 47, column: 14, scope: !3391)
!3398 = !DILocation(line: 56, column: 24, scope: !3390)
!3399 = !DILocation(line: 56, column: 14, scope: !3390)
!3400 = !DILocation(line: 57, column: 17, scope: !3401)
!3401 = distinct !DILexicalBlock(scope: !3390, file: !3384, line: 57, column: 11)
!3402 = !DILocation(line: 57, column: 21, scope: !3401)
!3403 = !DILocation(line: 57, column: 11, scope: !3390)
!3404 = !DILocation(line: 59, column: 11, scope: !3405)
!3405 = distinct !DILexicalBlock(scope: !3401, file: !3384, line: 58, column: 9)
!3406 = !DILocation(line: 59, column: 17, scope: !3405)
!3407 = !DILocation(line: 65, column: 12, scope: !3383)
!3408 = !DILocation(line: 44, column: 9, scope: !3383)
!3409 = !DILocation(line: 72, column: 3, scope: !3383)
!3410 = !DILocation(line: 73, column: 1, scope: !3383)
!3411 = !DILocation(line: 272, column: 16, scope: !193)
!3412 = !DILocation(line: 272, column: 24, scope: !193)
!3413 = !DILocation(line: 274, column: 3, scope: !193)
!3414 = !DILocation(line: 274, column: 11, scope: !193)
!3415 = !DILocation(line: 275, column: 7, scope: !193)
!3416 = !DILocation(line: 276, column: 3, scope: !193)
!3417 = !DILocation(line: 277, column: 3, scope: !193)
!3418 = !DILocation(line: 322, column: 22, scope: !218)
!3419 = !DILocation(line: 322, column: 22, scope: !3420)
!3420 = !DILexicalBlockFile(scope: !218, file: !194, discriminator: 1)
!3421 = !DILocation(line: 322, column: 22, scope: !3422)
!3422 = !DILexicalBlockFile(scope: !218, file: !194, discriminator: 2)
!3423 = !DILocation(line: 322, column: 22, scope: !3424)
!3424 = !DILexicalBlockFile(scope: !218, file: !194, discriminator: 3)
!3425 = !DILocation(line: 322, column: 13, scope: !218)
!3426 = !DILocation(line: 336, column: 18, scope: !3427)
!3427 = distinct !DILexicalBlock(scope: !218, file: !194, line: 336, column: 13)
!3428 = !DILocation(line: 336, column: 15, scope: !3427)
!3429 = !DILocation(line: 336, column: 13, scope: !218)
!3430 = !DILocation(line: 338, column: 22, scope: !3431)
!3431 = distinct !DILexicalBlock(scope: !3427, file: !194, line: 337, column: 11)
!3432 = !DILocation(line: 339, column: 19, scope: !3433)
!3433 = distinct !DILexicalBlock(scope: !3431, file: !194, line: 339, column: 17)
!3434 = !DILocation(line: 339, column: 29, scope: !3433)
!3435 = !DILocation(line: 339, column: 32, scope: !3436)
!3436 = !DILexicalBlockFile(scope: !3433, file: !194, discriminator: 1)
!3437 = !DILocation(line: 339, column: 38, scope: !3436)
!3438 = !DILocation(line: 339, column: 17, scope: !3439)
!3439 = !DILexicalBlockFile(scope: !3431, file: !194, discriminator: 1)
!3440 = !DILocation(line: 349, column: 26, scope: !3441)
!3441 = distinct !DILexicalBlock(scope: !3433, file: !194, line: 348, column: 15)
!3442 = !DILocation(line: 350, column: 28, scope: !3443)
!3443 = distinct !DILexicalBlock(scope: !3441, file: !194, line: 350, column: 21)
!3444 = !DILocation(line: 350, column: 21, scope: !3441)
!3445 = !DILocation(line: 354, column: 11, scope: !3431)
!3446 = !DILocation(line: 356, column: 20, scope: !3427)
!3447 = !DILocation(line: 357, column: 28, scope: !3448)
!3448 = !DILexicalBlockFile(scope: !222, file: !194, discriminator: 1)
!3449 = !DILocation(line: 357, column: 15, scope: !222)
!3450 = !DILocation(line: 357, column: 47, scope: !3448)
!3451 = !DILocation(line: 357, column: 25, scope: !222)
!3452 = !DILocation(line: 359, column: 25, scope: !221)
!3453 = !DILocation(line: 359, column: 17, scope: !221)
!3454 = !DILocation(line: 360, column: 23, scope: !225)
!3455 = !DILocation(line: 360, column: 27, scope: !225)
!3456 = !DILocation(line: 360, column: 60, scope: !3457)
!3457 = !DILexicalBlockFile(scope: !225, file: !194, discriminator: 1)
!3458 = !DILocation(line: 360, column: 30, scope: !3457)
!3459 = !DILocation(line: 360, column: 74, scope: !3457)
!3460 = !DILocation(line: 360, column: 17, scope: !3461)
!3461 = !DILexicalBlockFile(scope: !221, file: !194, discriminator: 1)
!3462 = !DILocation(line: 362, column: 35, scope: !224)
!3463 = !DILocation(line: 362, column: 21, scope: !224)
!3464 = !DILocation(line: 363, column: 17, scope: !224)
!3465 = !DILocation(line: 364, column: 23, scope: !224)
!3466 = !DILocation(line: 366, column: 15, scope: !224)
!3467 = !DILocation(line: 404, column: 19, scope: !227)
!3468 = !DILocation(line: 404, column: 19, scope: !3469)
!3469 = !DILexicalBlockFile(scope: !227, file: !194, discriminator: 1)
!3470 = !DILocation(line: 404, column: 19, scope: !3471)
!3471 = !DILexicalBlockFile(scope: !227, file: !194, discriminator: 2)
!3472 = !DILocation(line: 404, column: 19, scope: !3473)
!3473 = !DILexicalBlockFile(scope: !227, file: !194, discriminator: 3)
!3474 = !DILocation(line: 404, column: 15, scope: !227)
!3475 = !DILocation(line: 405, column: 18, scope: !227)
!3476 = !DILocation(line: 412, column: 3, scope: !193)
!3477 = !DILocation(line: 414, column: 1, scope: !193)
!3478 = !DILocation(line: 413, column: 3, scope: !193)
!3479 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !3480, file: !3480, line: 334, type: !3481, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !605, variables: !3495)
!3480 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3481 = !DISubroutineType(types: !3482)
!3482 = !{!29, !3483, !37, !29, !3484}
!3483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1157, size: 64)
!3484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3485, size: 64)
!3485 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1142, line: 107, baseType: !3486)
!3486 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1142, line: 95, baseType: !3487)
!3487 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1142, line: 83, size: 64, elements: !3488)
!3488 = !{!3489, !3490}
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3487, file: !1142, line: 85, baseType: !67, size: 32)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3487, file: !1142, line: 94, baseType: !3491, size: 32, offset: 32)
!3491 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3487, file: !1142, line: 86, size: 32, elements: !3492)
!3492 = !{!3493, !3494}
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3491, file: !1142, line: 89, baseType: !155, size: 32)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3491, file: !1142, line: 93, baseType: !1152, size: 32)
!3495 = !{!3496, !3497, !3498, !3499, !3500, !3501, !3502}
!3496 = !DILocalVariable(name: "pwc", arg: 1, scope: !3479, file: !3480, line: 334, type: !3483)
!3497 = !DILocalVariable(name: "s", arg: 2, scope: !3479, file: !3480, line: 334, type: !37)
!3498 = !DILocalVariable(name: "n", arg: 3, scope: !3479, file: !3480, line: 334, type: !29)
!3499 = !DILocalVariable(name: "ps", arg: 4, scope: !3479, file: !3480, line: 334, type: !3484)
!3500 = !DILocalVariable(name: "ret", scope: !3479, file: !3480, line: 336, type: !29)
!3501 = !DILocalVariable(name: "wc", scope: !3479, file: !3480, line: 337, type: !1157)
!3502 = !DILocalVariable(name: "uc", scope: !3503, file: !3480, line: 398, type: !36)
!3503 = distinct !DILexicalBlock(scope: !3504, file: !3480, line: 397, column: 5)
!3504 = distinct !DILexicalBlock(scope: !3479, file: !3480, line: 396, column: 7)
!3505 = !DILocation(line: 334, column: 23, scope: !3479)
!3506 = !DILocation(line: 334, column: 40, scope: !3479)
!3507 = !DILocation(line: 334, column: 50, scope: !3479)
!3508 = !DILocation(line: 334, column: 64, scope: !3479)
!3509 = !DILocation(line: 337, column: 3, scope: !3479)
!3510 = !DILocation(line: 353, column: 9, scope: !3511)
!3511 = distinct !DILexicalBlock(scope: !3479, file: !3480, line: 353, column: 7)
!3512 = !DILocation(line: 353, column: 7, scope: !3479)
!3513 = !DILocation(line: 388, column: 9, scope: !3479)
!3514 = !DILocation(line: 336, column: 10, scope: !3479)
!3515 = !DILocation(line: 396, column: 19, scope: !3504)
!3516 = !DILocation(line: 396, column: 31, scope: !3517)
!3517 = !DILexicalBlockFile(scope: !3504, file: !3480, discriminator: 1)
!3518 = !DILocation(line: 396, column: 26, scope: !3504)
!3519 = !DILocation(line: 396, column: 41, scope: !3520)
!3520 = !DILexicalBlockFile(scope: !3504, file: !3480, discriminator: 2)
!3521 = !DILocation(line: 396, column: 7, scope: !3522)
!3522 = !DILexicalBlockFile(scope: !3479, file: !3480, discriminator: 2)
!3523 = !DILocation(line: 398, column: 26, scope: !3503)
!3524 = !DILocation(line: 398, column: 21, scope: !3503)
!3525 = !DILocation(line: 399, column: 14, scope: !3503)
!3526 = !DILocation(line: 399, column: 12, scope: !3503)
!3527 = !DILocation(line: 405, column: 1, scope: !3479)
!3528 = distinct !DISubprogram(name: "close_stream", scope: !3529, file: !3529, line: 56, type: !3530, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !608, variables: !3572)
!3529 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3530 = !DISubroutineType(types: !3531)
!3531 = !{!67, !3532}
!3532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3533, size: 64)
!3533 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2906, line: 49, baseType: !3534)
!3534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2908, line: 241, size: 1728, elements: !3535)
!3535 = !{!3536, !3537, !3538, !3539, !3540, !3541, !3542, !3543, !3544, !3545, !3546, !3547, !3548, !3556, !3557, !3558, !3559, !3560, !3561, !3562, !3563, !3564, !3565, !3566, !3567, !3568, !3569, !3570, !3571}
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3534, file: !2908, line: 242, baseType: !67, size: 32)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3534, file: !2908, line: 247, baseType: !26, size: 64, offset: 64)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3534, file: !2908, line: 248, baseType: !26, size: 64, offset: 128)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3534, file: !2908, line: 249, baseType: !26, size: 64, offset: 192)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3534, file: !2908, line: 250, baseType: !26, size: 64, offset: 256)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3534, file: !2908, line: 251, baseType: !26, size: 64, offset: 320)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3534, file: !2908, line: 252, baseType: !26, size: 64, offset: 384)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3534, file: !2908, line: 253, baseType: !26, size: 64, offset: 448)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3534, file: !2908, line: 254, baseType: !26, size: 64, offset: 512)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3534, file: !2908, line: 256, baseType: !26, size: 64, offset: 576)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3534, file: !2908, line: 257, baseType: !26, size: 64, offset: 640)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3534, file: !2908, line: 258, baseType: !26, size: 64, offset: 704)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3534, file: !2908, line: 260, baseType: !3549, size: 64, offset: 768)
!3549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3550, size: 64)
!3550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2908, line: 156, size: 192, elements: !3551)
!3551 = !{!3552, !3553, !3555}
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3550, file: !2908, line: 157, baseType: !3549, size: 64)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3550, file: !2908, line: 158, baseType: !3554, size: 64, offset: 64)
!3554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3534, size: 64)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3550, file: !2908, line: 162, baseType: !67, size: 32, offset: 128)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3534, file: !2908, line: 262, baseType: !3554, size: 64, offset: 832)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3534, file: !2908, line: 264, baseType: !67, size: 32, offset: 896)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3534, file: !2908, line: 268, baseType: !67, size: 32, offset: 928)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3534, file: !2908, line: 270, baseType: !2934, size: 64, offset: 960)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3534, file: !2908, line: 274, baseType: !138, size: 16, offset: 1024)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3534, file: !2908, line: 275, baseType: !2939, size: 8, offset: 1040)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3534, file: !2908, line: 276, baseType: !2941, size: 8, offset: 1048)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3534, file: !2908, line: 280, baseType: !2943, size: 64, offset: 1088)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3534, file: !2908, line: 289, baseType: !2946, size: 64, offset: 1152)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3534, file: !2908, line: 297, baseType: !28, size: 64, offset: 1216)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3534, file: !2908, line: 298, baseType: !28, size: 64, offset: 1280)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3534, file: !2908, line: 299, baseType: !28, size: 64, offset: 1344)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3534, file: !2908, line: 300, baseType: !28, size: 64, offset: 1408)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3534, file: !2908, line: 302, baseType: !29, size: 64, offset: 1472)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3534, file: !2908, line: 303, baseType: !67, size: 32, offset: 1536)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3534, file: !2908, line: 305, baseType: !2954, size: 160, offset: 1568)
!3572 = !{!3573, !3574, !3576, !3577}
!3573 = !DILocalVariable(name: "stream", arg: 1, scope: !3528, file: !3529, line: 56, type: !3532)
!3574 = !DILocalVariable(name: "some_pending", scope: !3528, file: !3529, line: 58, type: !3575)
!3575 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !97)
!3576 = !DILocalVariable(name: "prev_fail", scope: !3528, file: !3529, line: 59, type: !3575)
!3577 = !DILocalVariable(name: "fclose_fail", scope: !3528, file: !3529, line: 60, type: !3575)
!3578 = !DILocation(line: 56, column: 21, scope: !3528)
!3579 = !DILocation(line: 58, column: 30, scope: !3528)
!3580 = !DILocalVariable(name: "__stream", arg: 1, scope: !3581, file: !3582, line: 132, type: !3532)
!3581 = distinct !DISubprogram(name: "ferror_unlocked", scope: !3582, file: !3582, line: 132, type: !3530, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !608, variables: !3583)
!3582 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3583 = !{!3580}
!3584 = !DILocation(line: 132, column: 1, scope: !3581, inlinedAt: !3585)
!3585 = distinct !DILocation(line: 59, column: 27, scope: !3528)
!3586 = !DILocation(line: 134, column: 10, scope: !3581, inlinedAt: !3585)
!3587 = !{!3588, !722, i64 0}
!3588 = !{!"_IO_FILE", !722, i64 0, !638, i64 8, !638, i64 16, !638, i64 24, !638, i64 32, !638, i64 40, !638, i64 48, !638, i64 56, !638, i64 64, !638, i64 72, !638, i64 80, !638, i64 88, !638, i64 96, !638, i64 104, !722, i64 112, !722, i64 116, !2218, i64 120, !1510, i64 128, !639, i64 130, !639, i64 131, !638, i64 136, !2218, i64 144, !638, i64 152, !638, i64 160, !638, i64 168, !638, i64 176, !2218, i64 184, !722, i64 192, !639, i64 196}
!3589 = !DILocation(line: 59, column: 43, scope: !3528)
!3590 = !DILocation(line: 60, column: 29, scope: !3528)
!3591 = !DILocation(line: 60, column: 45, scope: !3528)
!3592 = !DILocation(line: 70, column: 17, scope: !3593)
!3593 = distinct !DILexicalBlock(scope: !3528, file: !3529, line: 70, column: 7)
!3594 = !DILocation(line: 70, column: 33, scope: !3595)
!3595 = !DILexicalBlockFile(scope: !3593, file: !3529, discriminator: 1)
!3596 = !DILocation(line: 70, column: 53, scope: !3597)
!3597 = !DILexicalBlockFile(scope: !3593, file: !3529, discriminator: 3)
!3598 = !DILocation(line: 70, column: 7, scope: !3599)
!3599 = !DILexicalBlockFile(scope: !3528, file: !3529, discriminator: 3)
!3600 = !DILocation(line: 72, column: 11, scope: !3601)
!3601 = distinct !DILexicalBlock(scope: !3593, file: !3529, line: 71, column: 5)
!3602 = !DILocation(line: 73, column: 9, scope: !3603)
!3603 = distinct !DILexicalBlock(scope: !3601, file: !3529, line: 72, column: 11)
!3604 = !DILocation(line: 73, column: 15, scope: !3603)
!3605 = !DILocation(line: 78, column: 1, scope: !3528)
!3606 = distinct !DISubprogram(name: "hard_locale", scope: !3607, file: !3607, line: 38, type: !3608, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !610, variables: !3610)
!3607 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3608 = !DISubroutineType(types: !3609)
!3609 = !{!97, !67}
!3610 = !{!3611, !3612, !3613, !3614, !3621, !3622, !3624, !3625, !3627, !3628, !3630}
!3611 = !DILocalVariable(name: "category", arg: 1, scope: !3606, file: !3607, line: 38, type: !67)
!3612 = !DILocalVariable(name: "hard", scope: !3606, file: !3607, line: 40, type: !97)
!3613 = !DILocalVariable(name: "p", scope: !3606, file: !3607, line: 41, type: !37)
!3614 = !DILocalVariable(name: "__s1_len", scope: !3615, file: !3607, line: 47, type: !29)
!3615 = distinct !DILexicalBlock(scope: !3616, file: !3607, line: 47, column: 15)
!3616 = distinct !DILexicalBlock(scope: !3617, file: !3607, line: 47, column: 15)
!3617 = distinct !DILexicalBlock(scope: !3618, file: !3607, line: 46, column: 9)
!3618 = distinct !DILexicalBlock(scope: !3619, file: !3607, line: 45, column: 11)
!3619 = distinct !DILexicalBlock(scope: !3620, file: !3607, line: 44, column: 5)
!3620 = distinct !DILexicalBlock(scope: !3606, file: !3607, line: 43, column: 7)
!3621 = !DILocalVariable(name: "__s2_len", scope: !3615, file: !3607, line: 47, type: !29)
!3622 = !DILocalVariable(name: "__s2", scope: !3623, file: !3607, line: 47, type: !34)
!3623 = distinct !DILexicalBlock(scope: !3615, file: !3607, line: 47, column: 15)
!3624 = !DILocalVariable(name: "__result", scope: !3623, file: !3607, line: 47, type: !67)
!3625 = !DILocalVariable(name: "__s1_len", scope: !3626, file: !3607, line: 47, type: !29)
!3626 = distinct !DILexicalBlock(scope: !3616, file: !3607, line: 47, column: 39)
!3627 = !DILocalVariable(name: "__s2_len", scope: !3626, file: !3607, line: 47, type: !29)
!3628 = !DILocalVariable(name: "__s2", scope: !3629, file: !3607, line: 47, type: !34)
!3629 = distinct !DILexicalBlock(scope: !3626, file: !3607, line: 47, column: 39)
!3630 = !DILocalVariable(name: "__result", scope: !3629, file: !3607, line: 47, type: !67)
!3631 = !DILocation(line: 38, column: 18, scope: !3606)
!3632 = !DILocation(line: 40, column: 8, scope: !3606)
!3633 = !DILocation(line: 41, column: 19, scope: !3606)
!3634 = !DILocation(line: 41, column: 15, scope: !3606)
!3635 = !DILocation(line: 43, column: 7, scope: !3620)
!3636 = !DILocation(line: 43, column: 7, scope: !3606)
!3637 = !DILocation(line: 47, column: 15, scope: !3615)
!3638 = !DILocation(line: 47, column: 15, scope: !3623)
!3639 = !DILocation(line: 47, column: 15, scope: !3640)
!3640 = !DILexicalBlockFile(scope: !3623, file: !3607, discriminator: 2)
!3641 = !DILocation(line: 47, column: 15, scope: !3642)
!3642 = !DILexicalBlockFile(scope: !3643, file: !3607, discriminator: 3)
!3643 = distinct !DILexicalBlock(scope: !3623, file: !3607, line: 47, column: 15)
!3644 = !DILocation(line: 47, column: 15, scope: !3645)
!3645 = !DILexicalBlockFile(scope: !3643, file: !3607, discriminator: 2)
!3646 = !DILocation(line: 47, column: 15, scope: !3647)
!3647 = !DILexicalBlockFile(scope: !3648, file: !3607, discriminator: 4)
!3648 = distinct !DILexicalBlock(scope: !3643, file: !3607, line: 47, column: 15)
!3649 = !DILocation(line: 47, column: 15, scope: !3650)
!3650 = !DILexicalBlockFile(scope: !3615, file: !3607, discriminator: 11)
!3651 = !DILocation(line: 47, column: 36, scope: !3652)
!3652 = !DILexicalBlockFile(scope: !3616, file: !3607, discriminator: 13)
!3653 = !DILocation(line: 47, column: 39, scope: !3626)
!3654 = !DILocation(line: 47, column: 39, scope: !3655)
!3655 = !DILexicalBlockFile(scope: !3626, file: !3607, discriminator: 26)
!3656 = !DILocation(line: 47, column: 59, scope: !3657)
!3657 = !DILexicalBlockFile(scope: !3616, file: !3607, discriminator: 27)
!3658 = !DILocation(line: 47, column: 15, scope: !3659)
!3659 = !DILexicalBlockFile(scope: !3617, file: !3607, discriminator: 27)
!3660 = !DILocation(line: 48, column: 13, scope: !3616)
!3661 = !DILocation(line: 71, column: 3, scope: !3606)
!3662 = distinct !DISubprogram(name: "locale_charset", scope: !574, file: !574, line: 393, type: !3663, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !230, variables: !3665)
!3663 = !DISubroutineType(types: !3664)
!3664 = !{!37}
!3665 = !{!3666, !3667, !3668, !3673}
!3666 = !DILocalVariable(name: "codeset", scope: !3662, file: !574, line: 395, type: !37)
!3667 = !DILocalVariable(name: "aliases", scope: !3662, file: !574, line: 396, type: !37)
!3668 = !DILocalVariable(name: "__s1_len", scope: !3669, file: !574, line: 592, type: !29)
!3669 = distinct !DILexicalBlock(scope: !3670, file: !574, line: 592, column: 9)
!3670 = distinct !DILexicalBlock(scope: !3671, file: !574, line: 592, column: 9)
!3671 = distinct !DILexicalBlock(scope: !3672, file: !574, line: 589, column: 3)
!3672 = distinct !DILexicalBlock(scope: !3662, file: !574, line: 589, column: 3)
!3673 = !DILocalVariable(name: "__s2_len", scope: !3669, file: !574, line: 592, type: !29)
!3674 = !DILocalVariable(name: "buf1", scope: !3675, file: !574, line: 196, type: !3742)
!3675 = distinct !DILexicalBlock(scope: !3676, file: !574, line: 194, column: 21)
!3676 = distinct !DILexicalBlock(scope: !3677, file: !574, line: 193, column: 19)
!3677 = distinct !DILexicalBlock(scope: !3678, file: !574, line: 193, column: 19)
!3678 = distinct !DILexicalBlock(scope: !3679, file: !574, line: 188, column: 17)
!3679 = distinct !DILexicalBlock(scope: !3680, file: !574, line: 181, column: 19)
!3680 = distinct !DILexicalBlock(scope: !3681, file: !574, line: 177, column: 13)
!3681 = distinct !DILexicalBlock(scope: !3682, file: !574, line: 173, column: 15)
!3682 = distinct !DILexicalBlock(scope: !3683, file: !574, line: 161, column: 9)
!3683 = distinct !DILexicalBlock(scope: !3684, file: !574, line: 157, column: 11)
!3684 = distinct !DILexicalBlock(scope: !3685, file: !574, line: 130, column: 5)
!3685 = distinct !DILexicalBlock(scope: !3686, file: !574, line: 129, column: 7)
!3686 = distinct !DISubprogram(name: "get_charset_aliases", scope: !574, file: !574, line: 124, type: !3663, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !230, variables: !3687)
!3687 = !{!3688, !3689, !3690, !3691, !3692, !3694, !3695, !3696, !3697, !3738, !3739, !3740, !3674, !3741, !3745, !3746, !3747}
!3688 = !DILocalVariable(name: "cp", scope: !3686, file: !574, line: 126, type: !37)
!3689 = !DILocalVariable(name: "dir", scope: !3684, file: !574, line: 132, type: !37)
!3690 = !DILocalVariable(name: "base", scope: !3684, file: !574, line: 133, type: !37)
!3691 = !DILocalVariable(name: "file_name", scope: !3684, file: !574, line: 134, type: !26)
!3692 = !DILocalVariable(name: "dir_len", scope: !3693, file: !574, line: 144, type: !29)
!3693 = distinct !DILexicalBlock(scope: !3684, file: !574, line: 143, column: 7)
!3694 = !DILocalVariable(name: "base_len", scope: !3693, file: !574, line: 145, type: !29)
!3695 = !DILocalVariable(name: "add_slash", scope: !3693, file: !574, line: 146, type: !67)
!3696 = !DILocalVariable(name: "fd", scope: !3682, file: !574, line: 162, type: !67)
!3697 = !DILocalVariable(name: "fp", scope: !3680, file: !574, line: 178, type: !3698)
!3698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3699, size: 64)
!3699 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2906, line: 49, baseType: !3700)
!3700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2908, line: 241, size: 1728, elements: !3701)
!3701 = !{!3702, !3703, !3704, !3705, !3706, !3707, !3708, !3709, !3710, !3711, !3712, !3713, !3714, !3722, !3723, !3724, !3725, !3726, !3727, !3728, !3729, !3730, !3731, !3732, !3733, !3734, !3735, !3736, !3737}
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3700, file: !2908, line: 242, baseType: !67, size: 32)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3700, file: !2908, line: 247, baseType: !26, size: 64, offset: 64)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3700, file: !2908, line: 248, baseType: !26, size: 64, offset: 128)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3700, file: !2908, line: 249, baseType: !26, size: 64, offset: 192)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3700, file: !2908, line: 250, baseType: !26, size: 64, offset: 256)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3700, file: !2908, line: 251, baseType: !26, size: 64, offset: 320)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3700, file: !2908, line: 252, baseType: !26, size: 64, offset: 384)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3700, file: !2908, line: 253, baseType: !26, size: 64, offset: 448)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3700, file: !2908, line: 254, baseType: !26, size: 64, offset: 512)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3700, file: !2908, line: 256, baseType: !26, size: 64, offset: 576)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3700, file: !2908, line: 257, baseType: !26, size: 64, offset: 640)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3700, file: !2908, line: 258, baseType: !26, size: 64, offset: 704)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3700, file: !2908, line: 260, baseType: !3715, size: 64, offset: 768)
!3715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3716, size: 64)
!3716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2908, line: 156, size: 192, elements: !3717)
!3717 = !{!3718, !3719, !3721}
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3716, file: !2908, line: 157, baseType: !3715, size: 64)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3716, file: !2908, line: 158, baseType: !3720, size: 64, offset: 64)
!3720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3700, size: 64)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3716, file: !2908, line: 162, baseType: !67, size: 32, offset: 128)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3700, file: !2908, line: 262, baseType: !3720, size: 64, offset: 832)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3700, file: !2908, line: 264, baseType: !67, size: 32, offset: 896)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3700, file: !2908, line: 268, baseType: !67, size: 32, offset: 928)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3700, file: !2908, line: 270, baseType: !2934, size: 64, offset: 960)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3700, file: !2908, line: 274, baseType: !138, size: 16, offset: 1024)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3700, file: !2908, line: 275, baseType: !2939, size: 8, offset: 1040)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3700, file: !2908, line: 276, baseType: !2941, size: 8, offset: 1048)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3700, file: !2908, line: 280, baseType: !2943, size: 64, offset: 1088)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3700, file: !2908, line: 289, baseType: !2946, size: 64, offset: 1152)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3700, file: !2908, line: 297, baseType: !28, size: 64, offset: 1216)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3700, file: !2908, line: 298, baseType: !28, size: 64, offset: 1280)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3700, file: !2908, line: 299, baseType: !28, size: 64, offset: 1344)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3700, file: !2908, line: 300, baseType: !28, size: 64, offset: 1408)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3700, file: !2908, line: 302, baseType: !29, size: 64, offset: 1472)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3700, file: !2908, line: 303, baseType: !67, size: 32, offset: 1536)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3700, file: !2908, line: 305, baseType: !2954, size: 160, offset: 1568)
!3738 = !DILocalVariable(name: "res_ptr", scope: !3678, file: !574, line: 190, type: !26)
!3739 = !DILocalVariable(name: "res_size", scope: !3678, file: !574, line: 191, type: !29)
!3740 = !DILocalVariable(name: "c", scope: !3675, file: !574, line: 195, type: !67)
!3741 = !DILocalVariable(name: "buf2", scope: !3675, file: !574, line: 197, type: !3742)
!3742 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 408, elements: !3743)
!3743 = !{!3744}
!3744 = !DISubrange(count: 51)
!3745 = !DILocalVariable(name: "l1", scope: !3675, file: !574, line: 198, type: !29)
!3746 = !DILocalVariable(name: "l2", scope: !3675, file: !574, line: 198, type: !29)
!3747 = !DILocalVariable(name: "old_res_ptr", scope: !3675, file: !574, line: 199, type: !26)
!3748 = !DILocation(line: 196, column: 28, scope: !3675, inlinedAt: !3749)
!3749 = distinct !DILocation(line: 589, column: 18, scope: !3672)
!3750 = !DILocation(line: 197, column: 28, scope: !3675, inlinedAt: !3749)
!3751 = !DILocation(line: 403, column: 13, scope: !3662)
!3752 = !DILocation(line: 395, column: 15, scope: !3662)
!3753 = !DILocation(line: 584, column: 15, scope: !3754)
!3754 = distinct !DILexicalBlock(scope: !3662, file: !574, line: 584, column: 7)
!3755 = !DILocation(line: 584, column: 7, scope: !3662)
!3756 = !DILocation(line: 128, column: 8, scope: !3686, inlinedAt: !3749)
!3757 = !DILocation(line: 126, column: 15, scope: !3686, inlinedAt: !3749)
!3758 = !DILocation(line: 129, column: 10, scope: !3685, inlinedAt: !3749)
!3759 = !DILocation(line: 129, column: 7, scope: !3686, inlinedAt: !3749)
!3760 = !DILocation(line: 138, column: 13, scope: !3684, inlinedAt: !3749)
!3761 = !DILocation(line: 132, column: 19, scope: !3684, inlinedAt: !3749)
!3762 = !DILocation(line: 139, column: 15, scope: !3763, inlinedAt: !3749)
!3763 = distinct !DILexicalBlock(scope: !3684, file: !574, line: 139, column: 11)
!3764 = !DILocation(line: 139, column: 23, scope: !3763, inlinedAt: !3749)
!3765 = !DILocation(line: 139, column: 26, scope: !3766, inlinedAt: !3749)
!3766 = !DILexicalBlockFile(scope: !3763, file: !574, discriminator: 1)
!3767 = !DILocation(line: 139, column: 33, scope: !3766, inlinedAt: !3749)
!3768 = !DILocation(line: 139, column: 11, scope: !3769, inlinedAt: !3749)
!3769 = !DILexicalBlockFile(scope: !3684, file: !574, discriminator: 1)
!3770 = !DILocation(line: 140, column: 9, scope: !3763, inlinedAt: !3749)
!3771 = !DILocation(line: 144, column: 26, scope: !3693, inlinedAt: !3749)
!3772 = !DILocation(line: 144, column: 16, scope: !3693, inlinedAt: !3749)
!3773 = !DILocation(line: 145, column: 16, scope: !3693, inlinedAt: !3749)
!3774 = !DILocation(line: 146, column: 34, scope: !3693, inlinedAt: !3749)
!3775 = !DILocation(line: 146, column: 38, scope: !3693, inlinedAt: !3749)
!3776 = !DILocation(line: 146, column: 42, scope: !3777, inlinedAt: !3749)
!3777 = !DILexicalBlockFile(scope: !3693, file: !574, discriminator: 1)
!3778 = !DILocation(line: 146, column: 41, scope: !3777, inlinedAt: !3749)
!3779 = !DILocation(line: 147, column: 48, scope: !3693, inlinedAt: !3749)
!3780 = !DILocation(line: 147, column: 46, scope: !3693, inlinedAt: !3749)
!3781 = !DILocation(line: 147, column: 69, scope: !3693, inlinedAt: !3749)
!3782 = !DILocation(line: 147, column: 30, scope: !3693, inlinedAt: !3749)
!3783 = !DILocation(line: 134, column: 13, scope: !3684, inlinedAt: !3749)
!3784 = !DILocation(line: 148, column: 13, scope: !3693, inlinedAt: !3749)
!3785 = !DILocation(line: 150, column: 13, scope: !3786, inlinedAt: !3749)
!3786 = distinct !DILexicalBlock(scope: !3787, file: !574, line: 149, column: 11)
!3787 = distinct !DILexicalBlock(scope: !3693, file: !574, line: 148, column: 13)
!3788 = !DILocation(line: 151, column: 17, scope: !3786, inlinedAt: !3749)
!3789 = !DILocation(line: 152, column: 34, scope: !3790, inlinedAt: !3749)
!3790 = distinct !DILexicalBlock(scope: !3786, file: !574, line: 151, column: 17)
!3791 = !DILocation(line: 153, column: 41, scope: !3786, inlinedAt: !3749)
!3792 = !DILocation(line: 153, column: 13, scope: !3786, inlinedAt: !3749)
!3793 = !DILocation(line: 157, column: 11, scope: !3684, inlinedAt: !3749)
!3794 = !DILocation(line: 171, column: 16, scope: !3682, inlinedAt: !3749)
!3795 = !DILocation(line: 162, column: 15, scope: !3682, inlinedAt: !3749)
!3796 = !DILocation(line: 173, column: 18, scope: !3681, inlinedAt: !3749)
!3797 = !DILocation(line: 173, column: 15, scope: !3682, inlinedAt: !3749)
!3798 = !DILocation(line: 180, column: 20, scope: !3680, inlinedAt: !3749)
!3799 = !DILocation(line: 178, column: 21, scope: !3680, inlinedAt: !3749)
!3800 = !DILocation(line: 181, column: 22, scope: !3679, inlinedAt: !3749)
!3801 = !DILocation(line: 181, column: 19, scope: !3680, inlinedAt: !3749)
!3802 = !DILocation(line: 190, column: 25, scope: !3678, inlinedAt: !3749)
!3803 = !DILocation(line: 184, column: 19, scope: !3804, inlinedAt: !3749)
!3804 = distinct !DILexicalBlock(scope: !3679, file: !574, line: 182, column: 17)
!3805 = !DILocation(line: 186, column: 17, scope: !3804, inlinedAt: !3749)
!3806 = !DILocation(line: 191, column: 26, scope: !3678, inlinedAt: !3749)
!3807 = !DILocation(line: 196, column: 23, scope: !3675, inlinedAt: !3749)
!3808 = !DILocation(line: 197, column: 23, scope: !3675, inlinedAt: !3749)
!3809 = !DILocalVariable(name: "__fp", arg: 1, scope: !3810, file: !3582, line: 63, type: !3698)
!3810 = distinct !DISubprogram(name: "getc_unlocked", scope: !3582, file: !3582, line: 63, type: !3811, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !230, variables: !3813)
!3811 = !DISubroutineType(types: !3812)
!3812 = !{!67, !3698}
!3813 = !{!3809}
!3814 = !DILocation(line: 63, column: 22, scope: !3810, inlinedAt: !3815)
!3815 = distinct !DILocation(line: 201, column: 27, scope: !3675, inlinedAt: !3749)
!3816 = !DILocation(line: 65, column: 10, scope: !3810, inlinedAt: !3815)
!3817 = !{!3588, !638, i64 8}
!3818 = !{!3588, !638, i64 16}
!3819 = !{!"branch_weights", i32 2000, i32 1}
!3820 = !DILocation(line: 65, column: 10, scope: !3821, inlinedAt: !3815)
!3821 = !DILexicalBlockFile(scope: !3810, file: !3582, discriminator: 1)
!3822 = !DILocation(line: 65, column: 10, scope: !3823, inlinedAt: !3815)
!3823 = !DILexicalBlockFile(scope: !3810, file: !3582, discriminator: 2)
!3824 = !DILocation(line: 65, column: 10, scope: !3825, inlinedAt: !3815)
!3825 = !DILexicalBlockFile(scope: !3810, file: !3582, discriminator: 3)
!3826 = !DILocation(line: 195, column: 27, scope: !3675, inlinedAt: !3749)
!3827 = !DILocation(line: 202, column: 27, scope: !3675, inlinedAt: !3749)
!3828 = !DILocation(line: 63, column: 22, scope: !3810, inlinedAt: !3829)
!3829 = distinct !DILocation(line: 210, column: 33, scope: !3830, inlinedAt: !3749)
!3830 = distinct !DILexicalBlock(scope: !3831, file: !574, line: 207, column: 25)
!3831 = distinct !DILexicalBlock(scope: !3675, file: !574, line: 206, column: 27)
!3832 = !DILocation(line: 65, column: 10, scope: !3810, inlinedAt: !3829)
!3833 = !DILocation(line: 65, column: 10, scope: !3821, inlinedAt: !3829)
!3834 = !DILocation(line: 65, column: 10, scope: !3823, inlinedAt: !3829)
!3835 = !DILocation(line: 65, column: 10, scope: !3825, inlinedAt: !3829)
!3836 = !DILocation(line: 210, column: 29, scope: !3837, inlinedAt: !3749)
!3837 = !DILexicalBlockFile(scope: !3830, file: !574, discriminator: 1)
!3838 = distinct !{!3838, !3839, !3840}
!3839 = !DILocation(line: 193, column: 19, scope: !3677)
!3840 = !DILocation(line: 241, column: 21, scope: !3677)
!3841 = !DILocation(line: 216, column: 23, scope: !3675, inlinedAt: !3749)
!3842 = !DILocation(line: 217, column: 27, scope: !3843, inlinedAt: !3749)
!3843 = distinct !DILexicalBlock(scope: !3675, file: !574, line: 217, column: 27)
!3844 = !DILocation(line: 217, column: 64, scope: !3843, inlinedAt: !3749)
!3845 = !DILocation(line: 217, column: 27, scope: !3675, inlinedAt: !3749)
!3846 = !DILocation(line: 219, column: 28, scope: !3675, inlinedAt: !3749)
!3847 = !DILocation(line: 198, column: 30, scope: !3675, inlinedAt: !3749)
!3848 = !DILocation(line: 220, column: 28, scope: !3675, inlinedAt: !3749)
!3849 = !DILocation(line: 198, column: 34, scope: !3675, inlinedAt: !3749)
!3850 = !DILocation(line: 199, column: 29, scope: !3675, inlinedAt: !3749)
!3851 = !DILocation(line: 222, column: 36, scope: !3852, inlinedAt: !3749)
!3852 = distinct !DILexicalBlock(scope: !3675, file: !574, line: 222, column: 27)
!3853 = !DILocation(line: 222, column: 27, scope: !3675, inlinedAt: !3749)
!3854 = !DILocation(line: 225, column: 63, scope: !3855, inlinedAt: !3749)
!3855 = distinct !DILexicalBlock(scope: !3852, file: !574, line: 223, column: 25)
!3856 = !DILocation(line: 225, column: 46, scope: !3855, inlinedAt: !3749)
!3857 = !DILocation(line: 226, column: 25, scope: !3855, inlinedAt: !3749)
!3858 = !DILocation(line: 229, column: 36, scope: !3859, inlinedAt: !3749)
!3859 = distinct !DILexicalBlock(scope: !3852, file: !574, line: 228, column: 25)
!3860 = !DILocation(line: 230, column: 73, scope: !3859, inlinedAt: !3749)
!3861 = !DILocation(line: 230, column: 46, scope: !3859, inlinedAt: !3749)
!3862 = !DILocation(line: 232, column: 35, scope: !3863, inlinedAt: !3749)
!3863 = distinct !DILexicalBlock(scope: !3675, file: !574, line: 232, column: 27)
!3864 = !DILocation(line: 232, column: 27, scope: !3675, inlinedAt: !3749)
!3865 = !DILocation(line: 236, column: 27, scope: !3866, inlinedAt: !3749)
!3866 = distinct !DILexicalBlock(scope: !3863, file: !574, line: 233, column: 25)
!3867 = !DILocation(line: 237, column: 27, scope: !3866, inlinedAt: !3749)
!3868 = !DILocation(line: 239, column: 39, scope: !3675, inlinedAt: !3749)
!3869 = !DILocation(line: 239, column: 50, scope: !3675, inlinedAt: !3749)
!3870 = !DILocation(line: 239, column: 61, scope: !3675, inlinedAt: !3749)
!3871 = !DILocalVariable(name: "__dest", arg: 1, scope: !3872, file: !3873, line: 107, type: !3876)
!3872 = distinct !DISubprogram(name: "strcpy", scope: !3873, file: !3873, line: 107, type: !3874, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !230, variables: !3878)
!3873 = !DIFile(filename: "/usr/include/bits/string3.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3874 = !DISubroutineType(types: !3875)
!3875 = !{!26, !3876, !3877}
!3876 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !26)
!3877 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !37)
!3878 = !{!3871, !3879}
!3879 = !DILocalVariable(name: "__src", arg: 2, scope: !3872, file: !3873, line: 107, type: !3877)
!3880 = !DILocation(line: 107, column: 1, scope: !3872, inlinedAt: !3881)
!3881 = distinct !DILocation(line: 239, column: 23, scope: !3675, inlinedAt: !3749)
!3882 = !DILocation(line: 109, column: 49, scope: !3872, inlinedAt: !3881)
!3883 = !DILocation(line: 109, column: 10, scope: !3872, inlinedAt: !3881)
!3884 = !DILocation(line: 107, column: 1, scope: !3872, inlinedAt: !3885)
!3885 = distinct !DILocation(line: 240, column: 23, scope: !3675, inlinedAt: !3749)
!3886 = !DILocation(line: 109, column: 49, scope: !3872, inlinedAt: !3885)
!3887 = !DILocation(line: 109, column: 10, scope: !3872, inlinedAt: !3885)
!3888 = !DILocation(line: 241, column: 21, scope: !3676, inlinedAt: !3749)
!3889 = !DILocation(line: 242, column: 19, scope: !3678, inlinedAt: !3749)
!3890 = !DILocation(line: 243, column: 32, scope: !3891, inlinedAt: !3749)
!3891 = distinct !DILexicalBlock(scope: !3678, file: !574, line: 243, column: 23)
!3892 = !DILocation(line: 243, column: 23, scope: !3678, inlinedAt: !3749)
!3893 = !DILocation(line: 247, column: 33, scope: !3894, inlinedAt: !3749)
!3894 = distinct !DILexicalBlock(scope: !3891, file: !574, line: 246, column: 21)
!3895 = !DILocation(line: 247, column: 45, scope: !3894, inlinedAt: !3749)
!3896 = !DILocation(line: 253, column: 11, scope: !3682, inlinedAt: !3749)
!3897 = !DILocation(line: 377, column: 23, scope: !3684, inlinedAt: !3749)
!3898 = !DILocation(line: 378, column: 5, scope: !3684, inlinedAt: !3749)
!3899 = !DILocation(line: 396, column: 15, scope: !3662)
!3900 = !DILocation(line: 590, column: 8, scope: !3671)
!3901 = !DILocation(line: 590, column: 17, scope: !3671)
!3902 = !DILocation(line: 589, column: 3, scope: !3903)
!3903 = !DILexicalBlockFile(scope: !3672, file: !574, discriminator: 1)
!3904 = !DILocation(line: 592, column: 9, scope: !3669)
!3905 = !DILocation(line: 592, column: 35, scope: !3670)
!3906 = !DILocation(line: 593, column: 9, scope: !3670)
!3907 = !DILocation(line: 593, column: 24, scope: !3908)
!3908 = !DILexicalBlockFile(scope: !3670, file: !574, discriminator: 1)
!3909 = !DILocation(line: 593, column: 31, scope: !3908)
!3910 = !DILocation(line: 593, column: 34, scope: !3911)
!3911 = !DILexicalBlockFile(scope: !3670, file: !574, discriminator: 2)
!3912 = !DILocation(line: 593, column: 45, scope: !3911)
!3913 = !DILocation(line: 592, column: 9, scope: !3914)
!3914 = !DILexicalBlockFile(scope: !3671, file: !574, discriminator: 1)
!3915 = !DILocation(line: 595, column: 29, scope: !3916)
!3916 = distinct !DILexicalBlock(scope: !3670, file: !574, line: 594, column: 7)
!3917 = !DILocation(line: 595, column: 27, scope: !3916)
!3918 = !DILocation(line: 595, column: 46, scope: !3916)
!3919 = !DILocation(line: 596, column: 9, scope: !3916)
!3920 = !DILocation(line: 591, column: 19, scope: !3671)
!3921 = !DILocation(line: 591, column: 36, scope: !3671)
!3922 = !DILocation(line: 591, column: 16, scope: !3671)
!3923 = !DILocation(line: 591, column: 52, scope: !3914)
!3924 = !DILocation(line: 591, column: 69, scope: !3671)
!3925 = !DILocation(line: 591, column: 49, scope: !3671)
!3926 = distinct !{!3926, !3927, !3928}
!3927 = !DILocation(line: 589, column: 3, scope: !3672)
!3928 = !DILocation(line: 597, column: 7, scope: !3672)
!3929 = !DILocation(line: 602, column: 7, scope: !3930)
!3930 = distinct !DILexicalBlock(scope: !3662, file: !574, line: 602, column: 7)
!3931 = !DILocation(line: 602, column: 18, scope: !3930)
!3932 = !DILocation(line: 602, column: 7, scope: !3662)
!3933 = !DILocation(line: 612, column: 3, scope: !3662)
!3934 = distinct !DISubprogram(name: "rpl_fclose", scope: !3935, file: !3935, line: 56, type: !3936, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !613, variables: !3978)
!3935 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3936 = !DISubroutineType(types: !3937)
!3937 = !{!67, !3938}
!3938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3939, size: 64)
!3939 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2906, line: 49, baseType: !3940)
!3940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2908, line: 241, size: 1728, elements: !3941)
!3941 = !{!3942, !3943, !3944, !3945, !3946, !3947, !3948, !3949, !3950, !3951, !3952, !3953, !3954, !3962, !3963, !3964, !3965, !3966, !3967, !3968, !3969, !3970, !3971, !3972, !3973, !3974, !3975, !3976, !3977}
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3940, file: !2908, line: 242, baseType: !67, size: 32)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3940, file: !2908, line: 247, baseType: !26, size: 64, offset: 64)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3940, file: !2908, line: 248, baseType: !26, size: 64, offset: 128)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3940, file: !2908, line: 249, baseType: !26, size: 64, offset: 192)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3940, file: !2908, line: 250, baseType: !26, size: 64, offset: 256)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3940, file: !2908, line: 251, baseType: !26, size: 64, offset: 320)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3940, file: !2908, line: 252, baseType: !26, size: 64, offset: 384)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3940, file: !2908, line: 253, baseType: !26, size: 64, offset: 448)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3940, file: !2908, line: 254, baseType: !26, size: 64, offset: 512)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3940, file: !2908, line: 256, baseType: !26, size: 64, offset: 576)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3940, file: !2908, line: 257, baseType: !26, size: 64, offset: 640)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3940, file: !2908, line: 258, baseType: !26, size: 64, offset: 704)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3940, file: !2908, line: 260, baseType: !3955, size: 64, offset: 768)
!3955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3956, size: 64)
!3956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2908, line: 156, size: 192, elements: !3957)
!3957 = !{!3958, !3959, !3961}
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3956, file: !2908, line: 157, baseType: !3955, size: 64)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3956, file: !2908, line: 158, baseType: !3960, size: 64, offset: 64)
!3960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3940, size: 64)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3956, file: !2908, line: 162, baseType: !67, size: 32, offset: 128)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3940, file: !2908, line: 262, baseType: !3960, size: 64, offset: 832)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3940, file: !2908, line: 264, baseType: !67, size: 32, offset: 896)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3940, file: !2908, line: 268, baseType: !67, size: 32, offset: 928)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3940, file: !2908, line: 270, baseType: !2934, size: 64, offset: 960)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3940, file: !2908, line: 274, baseType: !138, size: 16, offset: 1024)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3940, file: !2908, line: 275, baseType: !2939, size: 8, offset: 1040)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3940, file: !2908, line: 276, baseType: !2941, size: 8, offset: 1048)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3940, file: !2908, line: 280, baseType: !2943, size: 64, offset: 1088)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3940, file: !2908, line: 289, baseType: !2946, size: 64, offset: 1152)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3940, file: !2908, line: 297, baseType: !28, size: 64, offset: 1216)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3940, file: !2908, line: 298, baseType: !28, size: 64, offset: 1280)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3940, file: !2908, line: 299, baseType: !28, size: 64, offset: 1344)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3940, file: !2908, line: 300, baseType: !28, size: 64, offset: 1408)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3940, file: !2908, line: 302, baseType: !29, size: 64, offset: 1472)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3940, file: !2908, line: 303, baseType: !67, size: 32, offset: 1536)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3940, file: !2908, line: 305, baseType: !2954, size: 160, offset: 1568)
!3978 = !{!3979, !3980, !3981, !3982}
!3979 = !DILocalVariable(name: "fp", arg: 1, scope: !3934, file: !3935, line: 56, type: !3938)
!3980 = !DILocalVariable(name: "saved_errno", scope: !3934, file: !3935, line: 58, type: !67)
!3981 = !DILocalVariable(name: "fd", scope: !3934, file: !3935, line: 59, type: !67)
!3982 = !DILocalVariable(name: "result", scope: !3934, file: !3935, line: 60, type: !67)
!3983 = !DILocation(line: 56, column: 19, scope: !3934)
!3984 = !DILocation(line: 58, column: 7, scope: !3934)
!3985 = !DILocation(line: 60, column: 7, scope: !3934)
!3986 = !DILocation(line: 63, column: 8, scope: !3934)
!3987 = !DILocation(line: 59, column: 7, scope: !3934)
!3988 = !DILocation(line: 64, column: 10, scope: !3989)
!3989 = distinct !DILexicalBlock(scope: !3934, file: !3935, line: 64, column: 7)
!3990 = !DILocation(line: 64, column: 7, scope: !3934)
!3991 = !DILocation(line: 65, column: 12, scope: !3989)
!3992 = !DILocation(line: 65, column: 5, scope: !3989)
!3993 = !DILocation(line: 70, column: 9, scope: !3994)
!3994 = distinct !DILexicalBlock(scope: !3934, file: !3935, line: 70, column: 7)
!3995 = !DILocation(line: 70, column: 23, scope: !3994)
!3996 = !DILocation(line: 70, column: 33, scope: !3997)
!3997 = !DILexicalBlockFile(scope: !3994, file: !3935, discriminator: 1)
!3998 = !DILocation(line: 70, column: 26, scope: !3999)
!3999 = !DILexicalBlockFile(scope: !3994, file: !3935, discriminator: 3)
!4000 = !DILocation(line: 70, column: 59, scope: !3997)
!4001 = !DILocation(line: 71, column: 7, scope: !3994)
!4002 = !DILocation(line: 71, column: 10, scope: !3997)
!4003 = !DILocation(line: 70, column: 7, scope: !4004)
!4004 = !DILexicalBlockFile(scope: !3934, file: !3935, discriminator: 2)
!4005 = !DILocation(line: 98, column: 12, scope: !3934)
!4006 = !DILocation(line: 103, column: 7, scope: !3934)
!4007 = !DILocation(line: 72, column: 19, scope: !3994)
!4008 = !DILocation(line: 103, column: 19, scope: !4009)
!4009 = distinct !DILexicalBlock(scope: !3934, file: !3935, line: 103, column: 7)
!4010 = !DILocation(line: 105, column: 13, scope: !4011)
!4011 = distinct !DILexicalBlock(scope: !4009, file: !3935, line: 104, column: 5)
!4012 = !DILocation(line: 107, column: 5, scope: !4011)
!4013 = !DILocation(line: 110, column: 1, scope: !3934)
!4014 = distinct !DISubprogram(name: "rpl_fflush", scope: !4015, file: !4015, line: 127, type: !4016, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !615, variables: !4058)
!4015 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4016 = !DISubroutineType(types: !4017)
!4017 = !{!67, !4018}
!4018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4019, size: 64)
!4019 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2906, line: 49, baseType: !4020)
!4020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2908, line: 241, size: 1728, elements: !4021)
!4021 = !{!4022, !4023, !4024, !4025, !4026, !4027, !4028, !4029, !4030, !4031, !4032, !4033, !4034, !4042, !4043, !4044, !4045, !4046, !4047, !4048, !4049, !4050, !4051, !4052, !4053, !4054, !4055, !4056, !4057}
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4020, file: !2908, line: 242, baseType: !67, size: 32)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4020, file: !2908, line: 247, baseType: !26, size: 64, offset: 64)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4020, file: !2908, line: 248, baseType: !26, size: 64, offset: 128)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4020, file: !2908, line: 249, baseType: !26, size: 64, offset: 192)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4020, file: !2908, line: 250, baseType: !26, size: 64, offset: 256)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4020, file: !2908, line: 251, baseType: !26, size: 64, offset: 320)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4020, file: !2908, line: 252, baseType: !26, size: 64, offset: 384)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4020, file: !2908, line: 253, baseType: !26, size: 64, offset: 448)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4020, file: !2908, line: 254, baseType: !26, size: 64, offset: 512)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4020, file: !2908, line: 256, baseType: !26, size: 64, offset: 576)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4020, file: !2908, line: 257, baseType: !26, size: 64, offset: 640)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4020, file: !2908, line: 258, baseType: !26, size: 64, offset: 704)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4020, file: !2908, line: 260, baseType: !4035, size: 64, offset: 768)
!4035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4036, size: 64)
!4036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2908, line: 156, size: 192, elements: !4037)
!4037 = !{!4038, !4039, !4041}
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4036, file: !2908, line: 157, baseType: !4035, size: 64)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4036, file: !2908, line: 158, baseType: !4040, size: 64, offset: 64)
!4040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4020, size: 64)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4036, file: !2908, line: 162, baseType: !67, size: 32, offset: 128)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4020, file: !2908, line: 262, baseType: !4040, size: 64, offset: 832)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4020, file: !2908, line: 264, baseType: !67, size: 32, offset: 896)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4020, file: !2908, line: 268, baseType: !67, size: 32, offset: 928)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4020, file: !2908, line: 270, baseType: !2934, size: 64, offset: 960)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4020, file: !2908, line: 274, baseType: !138, size: 16, offset: 1024)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4020, file: !2908, line: 275, baseType: !2939, size: 8, offset: 1040)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4020, file: !2908, line: 276, baseType: !2941, size: 8, offset: 1048)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4020, file: !2908, line: 280, baseType: !2943, size: 64, offset: 1088)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4020, file: !2908, line: 289, baseType: !2946, size: 64, offset: 1152)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4020, file: !2908, line: 297, baseType: !28, size: 64, offset: 1216)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4020, file: !2908, line: 298, baseType: !28, size: 64, offset: 1280)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4020, file: !2908, line: 299, baseType: !28, size: 64, offset: 1344)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4020, file: !2908, line: 300, baseType: !28, size: 64, offset: 1408)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4020, file: !2908, line: 302, baseType: !29, size: 64, offset: 1472)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4020, file: !2908, line: 303, baseType: !67, size: 32, offset: 1536)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4020, file: !2908, line: 305, baseType: !2954, size: 160, offset: 1568)
!4058 = !{!4059}
!4059 = !DILocalVariable(name: "stream", arg: 1, scope: !4014, file: !4015, line: 127, type: !4018)
!4060 = !DILocation(line: 127, column: 19, scope: !4014)
!4061 = !DILocation(line: 148, column: 14, scope: !4062)
!4062 = distinct !DILexicalBlock(scope: !4014, file: !4015, line: 148, column: 7)
!4063 = !DILocation(line: 148, column: 22, scope: !4062)
!4064 = !DILocation(line: 148, column: 27, scope: !4065)
!4065 = !DILexicalBlockFile(scope: !4062, file: !4015, discriminator: 1)
!4066 = !DILocation(line: 148, column: 7, scope: !4067)
!4067 = !DILexicalBlockFile(scope: !4014, file: !4015, discriminator: 1)
!4068 = !DILocation(line: 149, column: 12, scope: !4062)
!4069 = !DILocation(line: 149, column: 5, scope: !4062)
!4070 = !DILocalVariable(name: "fp", arg: 1, scope: !4071, file: !4015, line: 40, type: !4018)
!4071 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !4015, file: !4015, line: 40, type: !4072, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !615, variables: !4074)
!4072 = !DISubroutineType(types: !4073)
!4073 = !{null, !4018}
!4074 = !{!4070}
!4075 = !DILocation(line: 40, column: 48, scope: !4071, inlinedAt: !4076)
!4076 = distinct !DILocation(line: 153, column: 3, scope: !4014)
!4077 = !DILocation(line: 42, column: 11, scope: !4078, inlinedAt: !4076)
!4078 = distinct !DILexicalBlock(scope: !4071, file: !4015, line: 42, column: 7)
!4079 = !DILocation(line: 42, column: 18, scope: !4078, inlinedAt: !4076)
!4080 = !DILocation(line: 42, column: 7, scope: !4071, inlinedAt: !4076)
!4081 = !DILocation(line: 44, column: 5, scope: !4078, inlinedAt: !4076)
!4082 = !DILocation(line: 155, column: 10, scope: !4014)
!4083 = !DILocation(line: 155, column: 3, scope: !4014)
!4084 = !DILocation(line: 229, column: 1, scope: !4014)
!4085 = distinct !DISubprogram(name: "rpl_fseeko", scope: !4086, file: !4086, line: 28, type: !4087, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !617, variables: !4130)
!4086 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4087 = !DISubroutineType(types: !4088)
!4088 = !{!67, !4089, !4129, !67}
!4089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4090, size: 64)
!4090 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2906, line: 49, baseType: !4091)
!4091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2908, line: 241, size: 1728, elements: !4092)
!4092 = !{!4093, !4094, !4095, !4096, !4097, !4098, !4099, !4100, !4101, !4102, !4103, !4104, !4105, !4113, !4114, !4115, !4116, !4117, !4118, !4119, !4120, !4121, !4122, !4123, !4124, !4125, !4126, !4127, !4128}
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4091, file: !2908, line: 242, baseType: !67, size: 32)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4091, file: !2908, line: 247, baseType: !26, size: 64, offset: 64)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4091, file: !2908, line: 248, baseType: !26, size: 64, offset: 128)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4091, file: !2908, line: 249, baseType: !26, size: 64, offset: 192)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4091, file: !2908, line: 250, baseType: !26, size: 64, offset: 256)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4091, file: !2908, line: 251, baseType: !26, size: 64, offset: 320)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4091, file: !2908, line: 252, baseType: !26, size: 64, offset: 384)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4091, file: !2908, line: 253, baseType: !26, size: 64, offset: 448)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4091, file: !2908, line: 254, baseType: !26, size: 64, offset: 512)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4091, file: !2908, line: 256, baseType: !26, size: 64, offset: 576)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4091, file: !2908, line: 257, baseType: !26, size: 64, offset: 640)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4091, file: !2908, line: 258, baseType: !26, size: 64, offset: 704)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4091, file: !2908, line: 260, baseType: !4106, size: 64, offset: 768)
!4106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4107, size: 64)
!4107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2908, line: 156, size: 192, elements: !4108)
!4108 = !{!4109, !4110, !4112}
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4107, file: !2908, line: 157, baseType: !4106, size: 64)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4107, file: !2908, line: 158, baseType: !4111, size: 64, offset: 64)
!4111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4091, size: 64)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4107, file: !2908, line: 162, baseType: !67, size: 32, offset: 128)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4091, file: !2908, line: 262, baseType: !4111, size: 64, offset: 832)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4091, file: !2908, line: 264, baseType: !67, size: 32, offset: 896)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4091, file: !2908, line: 268, baseType: !67, size: 32, offset: 928)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4091, file: !2908, line: 270, baseType: !2934, size: 64, offset: 960)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4091, file: !2908, line: 274, baseType: !138, size: 16, offset: 1024)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4091, file: !2908, line: 275, baseType: !2939, size: 8, offset: 1040)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4091, file: !2908, line: 276, baseType: !2941, size: 8, offset: 1048)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4091, file: !2908, line: 280, baseType: !2943, size: 64, offset: 1088)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4091, file: !2908, line: 289, baseType: !2946, size: 64, offset: 1152)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4091, file: !2908, line: 297, baseType: !28, size: 64, offset: 1216)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4091, file: !2908, line: 298, baseType: !28, size: 64, offset: 1280)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4091, file: !2908, line: 299, baseType: !28, size: 64, offset: 1344)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4091, file: !2908, line: 300, baseType: !28, size: 64, offset: 1408)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4091, file: !2908, line: 302, baseType: !29, size: 64, offset: 1472)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4091, file: !2908, line: 303, baseType: !67, size: 32, offset: 1536)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4091, file: !2908, line: 305, baseType: !2954, size: 160, offset: 1568)
!4129 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !2906, line: 91, baseType: !2934)
!4130 = !{!4131, !4132, !4133, !4134}
!4131 = !DILocalVariable(name: "fp", arg: 1, scope: !4085, file: !4086, line: 28, type: !4089)
!4132 = !DILocalVariable(name: "offset", arg: 2, scope: !4085, file: !4086, line: 28, type: !4129)
!4133 = !DILocalVariable(name: "whence", arg: 3, scope: !4085, file: !4086, line: 28, type: !67)
!4134 = !DILocalVariable(name: "pos", scope: !4135, file: !4086, line: 116, type: !4129)
!4135 = distinct !DILexicalBlock(scope: !4136, file: !4086, line: 112, column: 5)
!4136 = distinct !DILexicalBlock(scope: !4085, file: !4086, line: 51, column: 7)
!4137 = !DILocation(line: 28, column: 15, scope: !4085)
!4138 = !DILocation(line: 28, column: 25, scope: !4085)
!4139 = !DILocation(line: 28, column: 37, scope: !4085)
!4140 = !DILocation(line: 51, column: 11, scope: !4136)
!4141 = !DILocation(line: 51, column: 31, scope: !4136)
!4142 = !DILocation(line: 51, column: 24, scope: !4136)
!4143 = !DILocation(line: 52, column: 7, scope: !4136)
!4144 = !DILocation(line: 52, column: 14, scope: !4145)
!4145 = !DILexicalBlockFile(scope: !4136, file: !4086, discriminator: 1)
!4146 = !{!3588, !638, i64 40}
!4147 = !DILocation(line: 52, column: 35, scope: !4145)
!4148 = !{!3588, !638, i64 32}
!4149 = !DILocation(line: 52, column: 28, scope: !4145)
!4150 = !DILocation(line: 53, column: 7, scope: !4136)
!4151 = !DILocation(line: 53, column: 14, scope: !4145)
!4152 = !{!3588, !638, i64 72}
!4153 = !DILocation(line: 53, column: 28, scope: !4145)
!4154 = !DILocation(line: 51, column: 7, scope: !4155)
!4155 = !DILexicalBlockFile(scope: !4085, file: !4086, discriminator: 1)
!4156 = !DILocation(line: 116, column: 26, scope: !4135)
!4157 = !DILocation(line: 116, column: 19, scope: !4158)
!4158 = !DILexicalBlockFile(scope: !4135, file: !4086, discriminator: 1)
!4159 = !DILocation(line: 116, column: 13, scope: !4135)
!4160 = !DILocation(line: 117, column: 15, scope: !4161)
!4161 = distinct !DILexicalBlock(scope: !4135, file: !4086, line: 117, column: 11)
!4162 = !DILocation(line: 117, column: 11, scope: !4135)
!4163 = !DILocation(line: 127, column: 11, scope: !4135)
!4164 = !DILocation(line: 127, column: 18, scope: !4135)
!4165 = !DILocation(line: 128, column: 11, scope: !4135)
!4166 = !DILocation(line: 128, column: 19, scope: !4135)
!4167 = !{!3588, !2218, i64 144}
!4168 = !DILocation(line: 159, column: 7, scope: !4135)
!4169 = !DILocation(line: 161, column: 10, scope: !4085)
!4170 = !DILocation(line: 161, column: 3, scope: !4085)
!4171 = !DILocation(line: 162, column: 1, scope: !4085)
