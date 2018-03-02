; ModuleID = 'coreutils-8.27/src/rmdir.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.__dirstream = type opaque
%struct.dirent = type { i64, i64, i16, i8, [256 x i8] }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Usage: %s [OPTION]... DIRECTORY...\0A\00", align 1
@.str.2 = private unnamed_addr constant [187 x i8] c"Remove the DIRECTORY(ies), if they are empty.\0A\0A      --ignore-fail-on-non-empty\0A                  ignore each failure that is solely because a directory\0A                    is non-empty\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [200 x i8] c"  -p, --parents   remove DIRECTORY and its ancestors; e.g., 'rmdir -p a/b/c' is\0A                    similar to 'rmdir a/b/c a/b a'\0A  -v, --verbose   output a diagnostic for every directory processed\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"rmdir\00", align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.25 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.27 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.28 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.29 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@remove_empty_parents = internal unnamed_addr global i8 0, align 1, !dbg !0
@.str.10 = private unnamed_addr constant [3 x i8] c"pv\00", align 1
@longopts = internal constant [7 x %struct.option] [%struct.option { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.31, i32 0, i32 0), i32 0, i32* null, i32 128 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0), i32 0, i32* null, i32 112 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i32 0, i32 0), i32 0, i32* null, i32 112 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.34, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !70
@.str.12 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@verbose = internal unnamed_addr global i8 0, align 1, !dbg !37
@ignore_fail_on_non_empty = internal unnamed_addr global i8 0, align 1, !dbg !34
@optind = external local_unnamed_addr global i32, align 4
@.str.13 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"removing directory, %s\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"failed to remove %s\00", align 1
@.str.37 = private unnamed_addr constant [30 x i8] c"failed to remove directory %s\00", align 1
@.str.31 = private unnamed_addr constant [25 x i8] c"ignore-fail-on-non-empty\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"parents\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c": \00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), align 8, !dbg !82
@.str.19 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !88
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !93
@.str.22 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.23 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.24 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !96
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !103
@.str.38 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.39 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.40 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.42, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.43, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.44, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.45, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.46, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.47, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.48, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.49, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.50, i32 0, i32 0), i8* null], align 16, !dbg !110
@.str.41 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.42 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.43 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.44 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.45 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.46 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.47 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.48 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.49 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.50 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !138
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !145
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !158
@.str.11.51 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.52 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.53 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.54 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.55 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !165
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !172
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !160
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !174
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
@.str.16.78 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.79 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.80 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19.81 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !180
@.str.1.92 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.93 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.106 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.109 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !189
@.str.3.110 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.111 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.112 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.113 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.114 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.115 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) local_unnamed_addr #0 !dbg !593 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !597, metadata !598), !dbg !599
  %2 = icmp eq i32 %0, 0, !dbg !600
  br i1 %2, label %8, label %3, !dbg !602

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !603, !tbaa !606
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #9, !dbg !603
  %6 = load i8*, i8** @program_name, align 8, !dbg !603, !tbaa !606
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #9, !dbg !610
  br label %39, !dbg !612

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 5) #9, !dbg !614
  %10 = load i8*, i8** @program_name, align 8, !dbg !614, !tbaa !606
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10) #9, !dbg !616
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([187 x i8], [187 x i8]* @.str.2, i64 0, i64 0), i32 5) #9, !dbg !618
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !618, !tbaa !606
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #9, !dbg !619
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([200 x i8], [200 x i8]* @.str.3, i64 0, i64 0), i32 5) #9, !dbg !620
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !620, !tbaa !606
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #9, !dbg !621
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 5) #9, !dbg !622
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !622, !tbaa !606
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #9, !dbg !623
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 5) #9, !dbg !624
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !624, !tbaa !606
  %23 = tail call i32 @fputs_unlocked(i8* %21, %struct._IO_FILE* %22) #9, !dbg !625
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !47, metadata !598) #9, !dbg !626
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i64 0, metadata !47, metadata !598) #9, !dbg !626
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.24, i64 0, i64 0), i32 5) #9, !dbg !628
  %25 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %24, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.25, i64 0, i64 0)) #9, !dbg !629
  %26 = tail call i8* @setlocale(i32 5, i8* null) #9, !dbg !631
  tail call void @llvm.dbg.value(metadata i8* %26, i64 0, metadata !58, metadata !598) #9, !dbg !632
  %27 = icmp eq i8* %26, null, !dbg !633
  br i1 %27, label %34, label %28, !dbg !634

; <label>:28:                                     ; preds = %8
  %29 = tail call i32 @strncmp(i8* nonnull %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0), i64 3) #13, !dbg !635
  %30 = icmp eq i32 %29, 0, !dbg !635
  br i1 %30, label %34, label %31, !dbg !637

; <label>:31:                                     ; preds = %28
  %32 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.27, i64 0, i64 0), i32 5) #9, !dbg !639
  %33 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0)) #9, !dbg !641
  br label %34, !dbg !643

; <label>:34:                                     ; preds = %8, %28, %31
  %35 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.28, i64 0, i64 0), i32 5) #9, !dbg !644
  %36 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %35, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0)) #9, !dbg !645
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.29, i64 0, i64 0), i32 5) #9, !dbg !646
  %38 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i64 0, i64 0)) #9, !dbg !647
  br label %39

; <label>:39:                                     ; preds = %34, %3
  tail call void @exit(i32 %0) #14, !dbg !648
  unreachable, !dbg !648
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
define i32 @main(i32, i8**) local_unnamed_addr #6 !dbg !649 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !654, metadata !598), !dbg !662
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !655, metadata !598), !dbg !663
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !656, metadata !598), !dbg !664
  %3 = load i8*, i8** %1, align 8, !dbg !665, !tbaa !606
  tail call void @set_program_name(i8* %3) #9, !dbg !666
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)) #9, !dbg !667
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0)) #9, !dbg !668
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0)) #9, !dbg !669
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #9, !dbg !670
  store i8 0, i8* @remove_empty_parents, align 1, !dbg !671, !tbaa !672
  br label %8, !dbg !674

; <label>:8:                                      ; preds = %17, %2
  %9 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), %struct.option* getelementptr inbounds ([7 x %struct.option], [7 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #9, !dbg !675
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !657, metadata !598), !dbg !677
  switch i32 %9, label %16 [
    i32 -1, label %19
    i32 112, label %10
    i32 128, label %17
    i32 118, label %11
    i32 -130, label %12
    i32 -131, label %13
  ], !dbg !678

; <label>:10:                                     ; preds = %8
  br label %17, !dbg !679

; <label>:11:                                     ; preds = %8
  br label %17, !dbg !682

; <label>:12:                                     ; preds = %8
  tail call void @usage(i32 0) #15, !dbg !683
  unreachable, !dbg !683

; <label>:13:                                     ; preds = %8
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !684, !tbaa !606
  %15 = load i8*, i8** @Version, align 8, !dbg !684, !tbaa !606
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* %15, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0), i8* null) #9, !dbg !684
  tail call void @exit(i32 0) #14, !dbg !685
  unreachable, !dbg !684

; <label>:16:                                     ; preds = %8
  tail call void @usage(i32 1) #15, !dbg !687
  unreachable, !dbg !687

; <label>:17:                                     ; preds = %8, %11, %10
  %18 = phi i8* [ @verbose, %11 ], [ @remove_empty_parents, %10 ], [ @ignore_fail_on_non_empty, %8 ]
  store i8 1, i8* %18, align 1, !tbaa !672
  br label %8, !dbg !688, !llvm.loop !690

; <label>:19:                                     ; preds = %8
  %20 = load i32, i32* @optind, align 4, !dbg !692, !tbaa !694
  %21 = icmp eq i32 %20, %0, !dbg !696
  br i1 %21, label %25, label %22, !dbg !697

; <label>:22:                                     ; preds = %19
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !656, metadata !598), !dbg !664
  %23 = icmp slt i32 %20, %0, !dbg !698
  br i1 %23, label %24, label %103, !dbg !700

; <label>:24:                                     ; preds = %22
  br label %27, !dbg !702

; <label>:25:                                     ; preds = %19
  %26 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i32 5) #9, !dbg !703
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %26) #9, !dbg !705
  tail call void @usage(i32 1) #15, !dbg !707
  unreachable, !dbg !707

; <label>:27:                                     ; preds = %24, %97
  %28 = phi i32 [ %100, %97 ], [ %20, %24 ]
  %29 = phi i8 [ %98, %97 ], [ 1, %24 ]
  %30 = sext i32 %28 to i64, !dbg !702
  %31 = getelementptr inbounds i8*, i8** %1, i64 %30, !dbg !702
  %32 = load i8*, i8** %31, align 8, !dbg !702, !tbaa !606
  tail call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !658, metadata !598), !dbg !708
  %33 = load i8, i8* @verbose, align 1, !dbg !709, !tbaa !672, !range !711
  %34 = icmp eq i8 %33, 0, !dbg !709
  br i1 %34, label %39, label %35, !dbg !712

; <label>:35:                                     ; preds = %27
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !713, !tbaa !606
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i32 5) #9, !dbg !714
  %38 = tail call i8* @quotearg_style(i32 4, i8* %32) #9, !dbg !715
  tail call void (%struct._IO_FILE*, i8*, ...) @prog_fprintf(%struct._IO_FILE* %36, i8* %37, i8* %38) #9, !dbg !717
  br label %39, !dbg !719

; <label>:39:                                     ; preds = %27, %35
  %40 = tail call i32 @rmdir(i8* %32) #9, !dbg !720
  %41 = icmp eq i32 %40, 0, !dbg !722
  br i1 %41, label %50, label %42, !dbg !723

; <label>:42:                                     ; preds = %39
  %43 = tail call i32* @__errno_location() #1, !dbg !724
  %44 = load i32, i32* %43, align 4, !dbg !724, !tbaa !694
  %45 = tail call fastcc zeroext i1 @ignorable_failure(i32 %44, i8* %32), !dbg !727
  br i1 %45, label %97, label %46, !dbg !729

; <label>:46:                                     ; preds = %42
  %47 = load i32, i32* %43, align 4, !dbg !730, !tbaa !694
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0), i32 5) #9, !dbg !731
  %49 = tail call i8* @quotearg_style(i32 4, i8* %32) #9, !dbg !733
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %47, i8* %48, i8* %49) #9, !dbg !735
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !656, metadata !598), !dbg !664
  br label %97, !dbg !737

; <label>:50:                                     ; preds = %39
  %51 = load i8, i8* @remove_empty_parents, align 1, !dbg !738, !tbaa !672, !range !711
  %52 = icmp eq i8 %51, 0, !dbg !738
  br i1 %52, label %97, label %53, !dbg !740

; <label>:53:                                     ; preds = %50
  tail call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !741, metadata !598) #9, !dbg !748
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !747, metadata !598) #9, !dbg !751
  %54 = tail call zeroext i1 @strip_trailing_slashes(i8* %32) #9, !dbg !752
  br label %55, !dbg !753

; <label>:55:                                     ; preds = %80, %53
  %56 = phi i8 [ 1, %53 ], [ %83, %80 ]
  tail call void @llvm.dbg.value(metadata i8 %56, i64 0, metadata !747, metadata !598) #9, !dbg !751
  %57 = tail call i8* @strrchr(i8* %32, i32 47) #13, !dbg !754
  tail call void @llvm.dbg.value(metadata i8* %57, i64 0, metadata !746, metadata !598) #9, !dbg !756
  %58 = icmp eq i8* %57, null, !dbg !757
  br i1 %58, label %92, label %59, !dbg !759

; <label>:59:                                     ; preds = %55
  tail call void @llvm.dbg.value(metadata i8* %57, i64 0, metadata !746, metadata !598) #9, !dbg !756
  %60 = icmp ugt i8* %57, %32, !dbg !760
  br i1 %60, label %61, label %71, !dbg !762

; <label>:61:                                     ; preds = %59
  br label %62, !dbg !763

; <label>:62:                                     ; preds = %61, %66
  %63 = phi i8* [ %67, %66 ], [ %57, %61 ]
  %64 = load i8, i8* %63, align 1, !dbg !763, !tbaa !765
  %65 = icmp eq i8 %64, 47, !dbg !766
  br i1 %65, label %66, label %69, !dbg !767

; <label>:66:                                     ; preds = %62
  %67 = getelementptr inbounds i8, i8* %63, i64 -1, !dbg !769
  tail call void @llvm.dbg.value(metadata i8* %67, i64 0, metadata !746, metadata !598) #9, !dbg !756
  tail call void @llvm.dbg.value(metadata i8* %67, i64 0, metadata !746, metadata !598) #9, !dbg !756
  %68 = icmp ugt i8* %67, %32, !dbg !760
  br i1 %68, label %62, label %69, !dbg !762, !llvm.loop !770

; <label>:69:                                     ; preds = %62, %66
  %70 = phi i8* [ %63, %62 ], [ %67, %66 ]
  br label %71, !dbg !773

; <label>:71:                                     ; preds = %69, %59
  %72 = phi i8* [ %57, %59 ], [ %70, %69 ]
  %73 = getelementptr inbounds i8, i8* %72, i64 1, !dbg !773
  store i8 0, i8* %73, align 1, !dbg !774, !tbaa !765
  %74 = load i8, i8* @verbose, align 1, !dbg !775, !tbaa !672, !range !711
  %75 = icmp eq i8 %74, 0, !dbg !775
  br i1 %75, label %80, label %76, !dbg !777

; <label>:76:                                     ; preds = %71
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !778, !tbaa !606
  %78 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i32 5) #9, !dbg !779
  %79 = tail call i8* @quotearg_style(i32 4, i8* %32) #9, !dbg !780
  tail call void (%struct._IO_FILE*, i8*, ...) @prog_fprintf(%struct._IO_FILE* %77, i8* %78, i8* %79) #9, !dbg !782
  br label %80, !dbg !784

; <label>:80:                                     ; preds = %76, %71
  %81 = tail call i32 @rmdir(i8* %32) #9, !dbg !785
  %82 = icmp eq i32 %81, 0, !dbg !786
  %83 = zext i1 %82 to i8, !dbg !787
  tail call void @llvm.dbg.value(metadata i8 %83, i64 0, metadata !747, metadata !598) #9, !dbg !751
  br i1 %82, label %55, label %84, !dbg !788, !llvm.loop !789

; <label>:84:                                     ; preds = %80
  %85 = tail call i32* @__errno_location() #1, !dbg !792
  %86 = load i32, i32* %85, align 4, !dbg !792, !tbaa !694
  %87 = tail call fastcc zeroext i1 @ignorable_failure(i32 %86, i8* %32) #9, !dbg !796
  br i1 %87, label %93, label %88, !dbg !798

; <label>:88:                                     ; preds = %84
  %89 = load i32, i32* %85, align 4, !dbg !799, !tbaa !694
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.37, i64 0, i64 0), i32 5) #9, !dbg !801
  %91 = tail call i8* @quotearg_style(i32 4, i8* %32) #9, !dbg !803
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %89, i8* %90, i8* %91) #9, !dbg !804
  br label %93

; <label>:92:                                     ; preds = %55
  br label %93, !dbg !751

; <label>:93:                                     ; preds = %92, %84, %88
  %94 = phi i8 [ %83, %88 ], [ 1, %84 ], [ %56, %92 ]
  tail call void @llvm.dbg.value(metadata i8 %94, i64 0, metadata !747, metadata !598) #9, !dbg !751
  %95 = and i8 %29, 1, !dbg !806
  %96 = and i8 %95, %94, !dbg !807
  tail call void @llvm.dbg.value(metadata i8 %96, i64 0, metadata !656, metadata !598), !dbg !664
  br label %97, !dbg !808

; <label>:97:                                     ; preds = %46, %93, %50, %42
  %98 = phi i8 [ %29, %42 ], [ 0, %46 ], [ %96, %93 ], [ %29, %50 ]
  tail call void @llvm.dbg.value(metadata i8 %98, i64 0, metadata !656, metadata !598), !dbg !664
  %99 = load i32, i32* @optind, align 4, !dbg !809, !tbaa !694
  %100 = add nsw i32 %99, 1, !dbg !809
  store i32 %100, i32* @optind, align 4, !dbg !809, !tbaa !694
  tail call void @llvm.dbg.value(metadata i8 %98, i64 0, metadata !656, metadata !598), !dbg !664
  %101 = icmp slt i32 %100, %0, !dbg !698
  br i1 %101, label %27, label %102, !dbg !700, !llvm.loop !811

; <label>:102:                                    ; preds = %97
  br label %103, !dbg !814

; <label>:103:                                    ; preds = %102, %22
  %104 = phi i8 [ 1, %22 ], [ %98, %102 ]
  %105 = and i8 %104, 1, !dbg !814
  %106 = xor i8 %105, 1, !dbg !814
  %107 = zext i8 %106 to i32, !dbg !814
  ret i32 %107, !dbg !815
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
declare i32 @rmdir(i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @ignorable_failure(i32, i8*) unnamed_addr #6 !dbg !816 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !820, metadata !598), !dbg !822
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !821, metadata !598), !dbg !823
  %3 = load i8, i8* @ignore_fail_on_non_empty, align 1, !dbg !824, !tbaa !672, !range !711
  %4 = icmp eq i8 %3, 0, !dbg !824
  br i1 %4, label %60, label %5, !dbg !825

; <label>:5:                                      ; preds = %2
  switch i32 %0, label %6 [
    i32 39, label %60
    i32 17, label %60
  ], !dbg !826

; <label>:6:                                      ; preds = %5
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !827, metadata !598), !dbg !832
  %7 = add i32 %0, -1, !dbg !835
  %8 = icmp ult i32 %7, 30, !dbg !835
  br i1 %8, label %9, label %60, !dbg !835

; <label>:9:                                      ; preds = %6
  %10 = trunc i32 %7 to i30, !dbg !835
  %11 = lshr i30 -536768511, %10, !dbg !835
  %12 = and i30 %11, 1, !dbg !835
  %13 = icmp eq i30 %12, 0, !dbg !835
  br i1 %13, label %60, label %14, !dbg !836

; <label>:14:                                     ; preds = %9
  tail call void @llvm.dbg.value(metadata i32 -100, i64 0, metadata !837, metadata !598) #9, !dbg !863
  %15 = tail call i32 (i32, i8*, i32, ...) @openat(i32 -100, i8* %1, i32 198912) #9, !dbg !865
  tail call void @llvm.dbg.value(metadata i32 %15, i64 0, metadata !862, metadata !598) #9, !dbg !866
  %16 = icmp slt i32 %15, 0, !dbg !867
  br i1 %16, label %60, label %17, !dbg !869

; <label>:17:                                     ; preds = %14
  %18 = tail call %struct.__dirstream* @fdopendir(i32 %15) #9, !dbg !870
  tail call void @llvm.dbg.value(metadata %struct.__dirstream* %18, i64 0, metadata !841, metadata !598) #9, !dbg !871
  %19 = icmp eq %struct.__dirstream* %18, null, !dbg !872
  br i1 %19, label %20, label %22, !dbg !874

; <label>:20:                                     ; preds = %17
  %21 = tail call i32 @close(i32 %15) #9, !dbg !875
  br label %60, !dbg !877

; <label>:22:                                     ; preds = %17
  %23 = tail call i32* @__errno_location() #1, !dbg !878
  store i32 0, i32* %23, align 4, !dbg !879, !tbaa !694
  tail call void @llvm.dbg.value(metadata %struct.__dirstream* %18, i64 0, metadata !880, metadata !598) #9, !dbg !887
  %24 = tail call %struct.dirent* @readdir(%struct.__dirstream* nonnull %18) #9, !dbg !889
  tail call void @llvm.dbg.value(metadata %struct.dirent* %24, i64 0, metadata !885, metadata !598) #9, !dbg !890
  %25 = icmp eq %struct.dirent* %24, null, !dbg !891
  br i1 %25, label %50, label %26, !dbg !893

; <label>:26:                                     ; preds = %22
  br label %27, !dbg !894

; <label>:27:                                     ; preds = %26, %46
  %28 = phi %struct.dirent* [ %47, %46 ], [ %24, %26 ]
  %29 = phi %struct.dirent* [ %45, %46 ], [ undef, %26 ]
  %30 = getelementptr inbounds %struct.dirent, %struct.dirent* %28, i64 0, i32 4, i64 0, !dbg !894
  tail call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !896, metadata !598) #9, !dbg !904
  %31 = load i8, i8* %30, align 1, !dbg !906, !tbaa !765
  %32 = icmp eq i8 %31, 46, !dbg !907
  br i1 %32, label %35, label %33, !dbg !908

; <label>:33:                                     ; preds = %27
  %34 = tail call i32 @closedir(%struct.__dirstream* nonnull %18) #9, !dbg !909
  br label %60, !dbg !910

; <label>:35:                                     ; preds = %27
  %36 = getelementptr inbounds %struct.dirent, %struct.dirent* %28, i64 0, i32 4, i64 1, !dbg !911
  %37 = load i8, i8* %36, align 1, !dbg !911, !tbaa !765
  %38 = icmp eq i8 %37, 46, !dbg !912
  %39 = select i1 %38, i64 2, i64 1, !dbg !913
  %40 = getelementptr inbounds %struct.dirent, %struct.dirent* %28, i64 0, i32 4, i64 %39, !dbg !913
  %41 = load i8, i8* %40, align 1, !dbg !913, !tbaa !765
  tail call void @llvm.dbg.value(metadata i8 %41, i64 0, metadata !901, metadata !598) #9, !dbg !914
  %42 = icmp eq i8 %41, 0, !dbg !915
  %43 = icmp eq i8 %41, 47, !dbg !916
  %44 = or i1 %42, %43, !dbg !918
  %45 = select i1 %44, %struct.dirent* %29, %struct.dirent* %28, !dbg !919
  switch i8 %41, label %53 [
    i8 47, label %46
    i8 0, label %46
  ]

; <label>:46:                                     ; preds = %35, %35
  %47 = tail call %struct.dirent* @readdir(%struct.__dirstream* nonnull %18) #9, !dbg !889
  tail call void @llvm.dbg.value(metadata %struct.dirent* %47, i64 0, metadata !885, metadata !598) #9, !dbg !890
  %48 = icmp eq %struct.dirent* %47, null, !dbg !891
  br i1 %48, label %49, label %27, !dbg !893

; <label>:49:                                     ; preds = %46
  br label %50, !dbg !921

; <label>:50:                                     ; preds = %49, %22
  tail call void @llvm.dbg.value(metadata %struct.dirent* %45, i64 0, metadata !846, metadata !598) #9, !dbg !921
  %51 = load i32, i32* %23, align 4, !dbg !922, !tbaa !694
  %52 = tail call i32 @closedir(%struct.__dirstream* nonnull %18) #9, !dbg !909
  br label %57, !dbg !910

; <label>:53:                                     ; preds = %35
  tail call void @llvm.dbg.value(metadata %struct.dirent* %45, i64 0, metadata !846, metadata !598) #9, !dbg !921
  %54 = load i32, i32* %23, align 4, !dbg !922, !tbaa !694
  tail call void @llvm.dbg.value(metadata i32 %54, i64 0, metadata !861, metadata !598) #9, !dbg !923
  %55 = tail call i32 @closedir(%struct.__dirstream* nonnull %18) #9, !dbg !909
  %56 = icmp eq %struct.dirent* %45, null, !dbg !924
  br i1 %56, label %57, label %60, !dbg !910

; <label>:57:                                     ; preds = %53, %50
  %58 = phi i32 [ %51, %50 ], [ %54, %53 ]
  %59 = icmp eq i32 %58, 0, !dbg !926
  br label %60, !dbg !927

; <label>:60:                                     ; preds = %9, %5, %5, %6, %57, %53, %33, %20, %14, %2
  %61 = phi i1 [ false, %2 ], [ true, %5 ], [ false, %9 ], [ false, %20 ], [ %59, %57 ], [ false, %14 ], [ false, %53 ], [ false, %33 ], [ false, %6 ], [ true, %5 ]
  ret i1 %61, !dbg !928
}

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

declare i32 @openat(i32, i8*, i32, ...) local_unnamed_addr #3

declare %struct.__dirstream* @fdopendir(i32) local_unnamed_addr #3

declare i32 @close(i32) local_unnamed_addr #3

declare %struct.dirent* @readdir(%struct.__dirstream*) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @closedir(%struct.__dirstream* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @prog_fprintf(%struct._IO_FILE*, i8*, ...) local_unnamed_addr #6 !dbg !929 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !985, metadata !598), !dbg !999
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !986, metadata !598), !dbg !1000
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !1001
  call void @llvm.lifetime.start(i64 24, i8* nonnull %4) #9, !dbg !1001
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %3, metadata !987, metadata !598), !dbg !1002
  %5 = load i8*, i8** @program_name, align 8, !dbg !1003, !tbaa !606
  %6 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %0) #9, !dbg !1003
  %7 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), %struct._IO_FILE* %0) #9, !dbg !1004
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, !dbg !1005
  call void @llvm.va_start(i8* nonnull %4), !dbg !1005
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !1006, metadata !598) #9, !dbg !1017
  call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1015, metadata !598) #9, !dbg !1019
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %8, i64 0, metadata !1016, metadata !598) #9, !dbg !1020
  %9 = call i32 @__vfprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %1, %struct.__va_list_tag* nonnull %8) #9, !dbg !1021
  call void @llvm.va_end(i8* nonnull %4), !dbg !1022
  call void @llvm.dbg.value(metadata i32 10, i64 0, metadata !1023, metadata !598) #9, !dbg !1030
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !1029, metadata !598) #9, !dbg !1032
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !1033
  %11 = load i8*, i8** %10, align 8, !dbg !1033, !tbaa !1034
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !1033
  %13 = load i8*, i8** %12, align 8, !dbg !1033, !tbaa !1038
  %14 = icmp ult i8* %11, %13, !dbg !1033
  br i1 %14, label %17, label %15, !dbg !1033, !prof !1039

; <label>:15:                                     ; preds = %2
  %16 = call i32 @__overflow(%struct._IO_FILE* nonnull %0, i32 10) #9, !dbg !1040
  br label %19, !dbg !1040

; <label>:17:                                     ; preds = %2
  %18 = getelementptr inbounds i8, i8* %11, i64 1, !dbg !1042
  store i8* %18, i8** %10, align 8, !dbg !1042, !tbaa !1034
  store i8 10, i8* %11, align 1, !dbg !1042, !tbaa !765
  br label %19, !dbg !1042

; <label>:19:                                     ; preds = %15, %17
  call void @llvm.lifetime.end(i64 24, i8* nonnull %4) #9, !dbg !1044
  ret void, !dbg !1044
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #8

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #9

declare i32 @__vfprintf_chk(%struct._IO_FILE*, i32, i8*, %struct.__va_list_tag*) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #9

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #8

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !1045 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1047, metadata !598), !dbg !1048
  store i8* %0, i8** @file_name, align 8, !dbg !1049, !tbaa !606
  ret void, !dbg !1050
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !1051 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !1055, metadata !1056), !dbg !1057
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1058, !tbaa !672
  ret void, !dbg !1059
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !1060 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1067, !tbaa !606
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #9, !dbg !1068
  %3 = icmp eq i32 %2, 0, !dbg !1069
  br i1 %3, label %21, label %4, !dbg !1070

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1071, !tbaa !672, !range !711
  %6 = icmp eq i8 %5, 0, !dbg !1071
  %7 = tail call i32* @__errno_location() #1, !dbg !1073
  br i1 %6, label %11, label %8, !dbg !1075

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !1076, !tbaa !694
  %10 = icmp eq i32 %9, 32, !dbg !1078
  br i1 %10, label %21, label %11, !dbg !1079

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i64 0, i64 0), i32 5) #9, !dbg !1081
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !1064, metadata !598), !dbg !1082
  %13 = load i8*, i8** @file_name, align 8, !dbg !1083, !tbaa !606
  %14 = icmp eq i8* %13, null, !dbg !1083
  %15 = load i32, i32* %7, align 4, !tbaa !694
  br i1 %14, label %18, label %16, !dbg !1084

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #9, !dbg !1085
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.23, i64 0, i64 0), i8* %17, i8* %12) #9, !dbg !1087
  br label %19, !dbg !1089

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.24, i64 0, i64 0), i8* %12) #9, !dbg !1090
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !1091, !tbaa !694
  tail call void @_exit(i32 %20) #14, !dbg !1092
  unreachable, !dbg !1092

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1093, !tbaa !606
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #9, !dbg !1095
  %24 = icmp eq i32 %23, 0, !dbg !1096
  br i1 %24, label %27, label %25, !dbg !1097

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !1098, !tbaa !694
  tail call void @_exit(i32 %26) #14, !dbg !1099
  unreachable, !dbg !1099

; <label>:27:                                     ; preds = %21
  ret void, !dbg !1100
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #10

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @strip_trailing_slashes(i8*) local_unnamed_addr #6 !dbg !1101 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1104, metadata !598), !dbg !1108
  %2 = tail call i8* @last_component(i8* %0) #13, !dbg !1109
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1105, metadata !598), !dbg !1110
  %3 = load i8, i8* %2, align 1, !dbg !1111, !tbaa !765
  %4 = icmp eq i8 %3, 0, !dbg !1111
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1105, metadata !598), !dbg !1110
  %5 = select i1 %4, i8* %0, i8* %2, !dbg !1113
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !1105, metadata !598), !dbg !1110
  %6 = tail call i64 @base_len(i8* %5) #13, !dbg !1114
  %7 = getelementptr inbounds i8, i8* %5, i64 %6, !dbg !1115
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1106, metadata !598), !dbg !1116
  %8 = load i8, i8* %7, align 1, !dbg !1117, !tbaa !765
  %9 = icmp ne i8 %8, 0, !dbg !1118
  store i8 0, i8* %7, align 1, !dbg !1119, !tbaa !765
  ret i1 %9, !dbg !1120
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !1121 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1123, metadata !598), !dbg !1126
  %2 = icmp eq i8* %0, null, !dbg !1127
  br i1 %2, label %3, label %6, !dbg !1129

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1130, !tbaa !606
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.38, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #16, !dbg !1132
  tail call void @abort() #14, !dbg !1133
  unreachable, !dbg !1133

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #13, !dbg !1134
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1124, metadata !598), !dbg !1135
  %8 = icmp ne i8* %7, null, !dbg !1136
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1137
  %10 = select i1 %8, i8* %9, i8* %0, !dbg !1139
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1125, metadata !598), !dbg !1140
  %11 = ptrtoint i8* %10 to i64, !dbg !1141
  %12 = ptrtoint i8* %0 to i64, !dbg !1141
  %13 = sub i64 %11, %12, !dbg !1141
  %14 = icmp sgt i64 %13, 6, !dbg !1143
  br i1 %14, label %15, label %24, !dbg !1144

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1145
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.39, i64 0, i64 0), i64 7) #13, !dbg !1145
  %18 = icmp eq i32 %17, 0, !dbg !1147
  br i1 %18, label %19, label %24, !dbg !1148

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1123, metadata !598), !dbg !1126
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.40, i64 0, i64 0), i64 3) #13, !dbg !1149
  %21 = icmp eq i32 %20, 0, !dbg !1152
  br i1 %21, label %22, label %24, !dbg !1153

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1154
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !1123, metadata !598), !dbg !1126
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1156, !tbaa !606
  br label %24, !dbg !1157

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !1123, metadata !598), !dbg !1126
  store i8* %25, i8** @program_name, align 8, !dbg !1158, !tbaa !606
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1159, !tbaa !606
  ret void, !dbg !1160
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #9

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !1161 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1166, metadata !598), !dbg !1169
  %2 = tail call i32* @__errno_location() #1, !dbg !1170
  %3 = load i32, i32* %2, align 4, !dbg !1170, !tbaa !694
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !1167, metadata !598), !dbg !1171
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !1172
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !1173
  %6 = select i1 %4, i8* %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), !dbg !1173
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #9, !dbg !1175
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1175
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !1168, metadata !598), !dbg !1176
  store i32 %3, i32* %2, align 4, !dbg !1177, !tbaa !694
  ret %struct.quoting_options* %8, !dbg !1178
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #11 !dbg !1179 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1185, metadata !598), !dbg !1186
  %2 = icmp ne %struct.quoting_options* %0, null, !dbg !1187
  %3 = select i1 %2, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !1187
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1188
  %5 = load i32, i32* %4, align 8, !dbg !1188, !tbaa !1190
  ret i32 %5, !dbg !1192
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1193 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1197, metadata !598), !dbg !1199
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1198, metadata !598), !dbg !1200
  %3 = icmp ne %struct.quoting_options* %0, null, !dbg !1201
  %4 = select i1 %3, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !1201
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1202
  store i32 %1, i32* %5, align 8, !dbg !1204, !tbaa !1190
  ret void, !dbg !1205
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !1206 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1210, metadata !598), !dbg !1218
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1211, metadata !598), !dbg !1219
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !1212, metadata !598), !dbg !1220
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1213, metadata !598), !dbg !1221
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !1222
  %5 = select i1 %4, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !1222
  %6 = lshr i8 %1, 5, !dbg !1223
  %7 = zext i8 %6 to i64, !dbg !1223
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1225
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1214, metadata !598), !dbg !1226
  %9 = and i8 %1, 31, !dbg !1227
  %10 = zext i8 %9 to i32, !dbg !1228
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1216, metadata !598), !dbg !1229
  %11 = load i32, i32* %8, align 4, !dbg !1230, !tbaa !694
  %12 = lshr i32 %11, %10, !dbg !1231
  %13 = and i32 %12, 1, !dbg !1232
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1217, metadata !598), !dbg !1233
  %14 = and i32 %2, 1, !dbg !1234
  %15 = xor i32 %13, %14, !dbg !1235
  %16 = shl i32 %15, %10, !dbg !1236
  %17 = xor i32 %16, %11, !dbg !1237
  store i32 %17, i32* %8, align 4, !dbg !1237, !tbaa !694
  ret i32 %13, !dbg !1238
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1239 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1243, metadata !598), !dbg !1246
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1244, metadata !598), !dbg !1247
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1248
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1243, metadata !598), !dbg !1246
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1250
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1243, metadata !598), !dbg !1246
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1251
  %6 = load i32, i32* %5, align 4, !dbg !1251, !tbaa !1252
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1245, metadata !598), !dbg !1253
  store i32 %1, i32* %5, align 4, !dbg !1254, !tbaa !1252
  ret i32 %6, !dbg !1255
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !1256 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1260, metadata !598), !dbg !1263
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1261, metadata !598), !dbg !1264
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1262, metadata !598), !dbg !1265
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1266
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1260, metadata !598), !dbg !1263
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1268
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1260, metadata !598), !dbg !1263
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1269
  store i32 10, i32* %6, align 8, !dbg !1270, !tbaa !1190
  %7 = icmp ne i8* %1, null, !dbg !1271
  %8 = icmp ne i8* %2, null, !dbg !1273
  %9 = and i1 %7, %8, !dbg !1275
  br i1 %9, label %11, label %10, !dbg !1275

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !1276
  unreachable, !dbg !1276

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1277
  store i8* %1, i8** %12, align 8, !dbg !1278, !tbaa !1279
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1280
  store i8* %2, i8** %13, align 8, !dbg !1281, !tbaa !1282
  ret void, !dbg !1283
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !1284 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1288, metadata !598), !dbg !1296
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1289, metadata !598), !dbg !1297
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1290, metadata !598), !dbg !1298
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1291, metadata !598), !dbg !1299
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1292, metadata !598), !dbg !1300
  %6 = icmp ne %struct.quoting_options* %4, null, !dbg !1301
  %7 = select i1 %6, %struct.quoting_options* %4, %struct.quoting_options* @default_quoting_options, !dbg !1301
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !1293, metadata !598), !dbg !1302
  %8 = tail call i32* @__errno_location() #1, !dbg !1303
  %9 = load i32, i32* %8, align 4, !dbg !1303, !tbaa !694
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1294, metadata !598), !dbg !1304
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1305
  %11 = load i32, i32* %10, align 8, !dbg !1305, !tbaa !1190
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1306
  %13 = load i32, i32* %12, align 4, !dbg !1306, !tbaa !1252
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1307
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1308
  %16 = load i8*, i8** %15, align 8, !dbg !1308, !tbaa !1279
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1309
  %18 = load i8*, i8** %17, align 8, !dbg !1309, !tbaa !1282
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !1310
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1295, metadata !598), !dbg !1311
  store i32 %9, i32* %8, align 4, !dbg !1312, !tbaa !694
  ret i64 %19, !dbg !1313
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !1314 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1320, metadata !598), !dbg !1383
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1321, metadata !598), !dbg !1384
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1322, metadata !598), !dbg !1385
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1323, metadata !598), !dbg !1386
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !1324, metadata !598), !dbg !1387
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1325, metadata !598), !dbg !1388
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !1326, metadata !598), !dbg !1389
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1327, metadata !598), !dbg !1390
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !1328, metadata !598), !dbg !1391
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1330, metadata !598), !dbg !1392
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1331, metadata !598), !dbg !1393
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1332, metadata !598), !dbg !1394
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1333, metadata !598), !dbg !1395
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1334, metadata !598), !dbg !1396
  %13 = tail call i64 @__ctype_get_mb_cur_max() #9, !dbg !1397
  %14 = icmp eq i64 %13, 1, !dbg !1398
  %15 = lshr i32 %5, 1, !dbg !1399
  %16 = trunc i32 %15 to i8, !dbg !1399
  %17 = and i8 %16, 1, !dbg !1399
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !1336, metadata !598), !dbg !1399
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1337, metadata !598), !dbg !1400
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1338, metadata !598), !dbg !1401
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1339, metadata !598), !dbg !1402
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !1403

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !1321, metadata !598), !dbg !1384
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !1339, metadata !598), !dbg !1402
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !1338, metadata !598), !dbg !1401
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !1337, metadata !598), !dbg !1400
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1336, metadata !598), !dbg !1399
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !1323, metadata !598), !dbg !1386
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !1334, metadata !598), !dbg !1396
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !1333, metadata !598), !dbg !1395
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !1332, metadata !598), !dbg !1394
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !1331, metadata !598), !dbg !1393
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1330, metadata !598), !dbg !1392
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !1328, metadata !598), !dbg !1391
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !1327, metadata !598), !dbg !1390
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !1324, metadata !598), !dbg !1387
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
  ], !dbg !1404

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1324, metadata !598), !dbg !1387
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1336, metadata !598), !dbg !1399
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1336, metadata !598), !dbg !1399
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1324, metadata !598), !dbg !1387
  br label %95, !dbg !1405

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1336, metadata !598), !dbg !1399
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1324, metadata !598), !dbg !1387
  %43 = and i8 %36, 1, !dbg !1407
  %44 = icmp eq i8 %43, 0, !dbg !1407
  br i1 %44, label %45, label %95, !dbg !1405

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1409
  br i1 %46, label %95, label %47, !dbg !1413

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1415, !tbaa !765
  br label %95, !dbg !1415

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.51, i64 0, i64 0), i32 %28), !dbg !1417
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !1327, metadata !598), !dbg !1390
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.52, i64 0, i64 0), i32 %28), !dbg !1421
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !1328, metadata !598), !dbg !1391
  br label %51, !dbg !1422

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1328, metadata !598), !dbg !1391
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1327, metadata !598), !dbg !1390
  %54 = and i8 %36, 1, !dbg !1423
  %55 = icmp eq i8 %54, 0, !dbg !1423
  br i1 %55, label %56, label %73, !dbg !1425

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1332, metadata !598), !dbg !1394
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1330, metadata !598), !dbg !1392
  %57 = load i8, i8* %52, align 1, !dbg !1426, !tbaa !765
  %58 = icmp eq i8 %57, 0, !dbg !1430
  br i1 %58, label %73, label %59, !dbg !1430

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !1432

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  %64 = icmp ult i64 %63, %40, !dbg !1432
  br i1 %64, label %65, label %67, !dbg !1436

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !1438
  store i8 %61, i8* %66, align 1, !dbg !1438, !tbaa !765
  br label %67, !dbg !1438

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !1440
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1330, metadata !598), !dbg !1392
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !1442
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1332, metadata !598), !dbg !1394
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1332, metadata !598), !dbg !1394
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1330, metadata !598), !dbg !1392
  %70 = load i8, i8* %69, align 1, !dbg !1426, !tbaa !765
  %71 = icmp eq i8 %70, 0, !dbg !1430
  br i1 %71, label %72, label %60, !dbg !1430, !llvm.loop !1444

; <label>:72:                                     ; preds = %67
  br label %73, !dbg !1392

; <label>:73:                                     ; preds = %72, %56, %51
  %74 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %72 ]
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !1330, metadata !598), !dbg !1392
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1334, metadata !598), !dbg !1396
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1332, metadata !598), !dbg !1394
  %75 = call i64 @strlen(i8* %53) #13, !dbg !1447
  call void @llvm.dbg.value(metadata i64 %75, i64 0, metadata !1333, metadata !598), !dbg !1395
  br label %95, !dbg !1448

; <label>:76:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1334, metadata !598), !dbg !1396
  br label %77, !dbg !1449

; <label>:77:                                     ; preds = %27, %76
  %78 = phi i8 [ %34, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %78, i64 0, metadata !1334, metadata !598), !dbg !1396
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1336, metadata !598), !dbg !1399
  br label %79, !dbg !1450

; <label>:79:                                     ; preds = %27, %77
  %80 = phi i8 [ %34, %27 ], [ %78, %77 ]
  %81 = phi i8 [ %36, %27 ], [ 1, %77 ]
  call void @llvm.dbg.value(metadata i8 %81, i64 0, metadata !1336, metadata !598), !dbg !1399
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !1334, metadata !598), !dbg !1396
  %82 = and i8 %81, 1, !dbg !1451
  %83 = icmp eq i8 %82, 0, !dbg !1451
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1334, metadata !598), !dbg !1396
  %84 = select i1 %83, i8 1, i8 %80, !dbg !1453
  br label %85, !dbg !1453

; <label>:85:                                     ; preds = %79, %27
  %86 = phi i8 [ %34, %27 ], [ %84, %79 ]
  %87 = phi i8 [ %36, %27 ], [ %81, %79 ]
  call void @llvm.dbg.value(metadata i8 %87, i64 0, metadata !1336, metadata !598), !dbg !1399
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !1334, metadata !598), !dbg !1396
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !1324, metadata !598), !dbg !1387
  %88 = and i8 %87, 1, !dbg !1454
  %89 = icmp eq i8 %88, 0, !dbg !1454
  br i1 %89, label %90, label %95, !dbg !1456

; <label>:90:                                     ; preds = %85
  %91 = icmp eq i64 %40, 0, !dbg !1457
  br i1 %91, label %95, label %92, !dbg !1461

; <label>:92:                                     ; preds = %90
  store i8 39, i8* %0, align 1, !dbg !1463, !tbaa !765
  br label %95, !dbg !1463

; <label>:93:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1336, metadata !598), !dbg !1399
  br label %95, !dbg !1465

; <label>:94:                                     ; preds = %27
  call void @abort() #14, !dbg !1466
  unreachable, !dbg !1466

; <label>:95:                                     ; preds = %41, %85, %90, %92, %27, %42, %45, %47, %93, %73
  %96 = phi i32 [ 0, %93 ], [ %28, %73 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %92 ], [ 2, %90 ], [ 2, %85 ], [ 5, %41 ]
  %97 = phi i8* [ %29, %93 ], [ %52, %73 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %92 ], [ %29, %90 ], [ %29, %85 ], [ %29, %41 ]
  %98 = phi i8* [ %30, %93 ], [ %53, %73 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %92 ], [ %30, %90 ], [ %30, %85 ], [ %30, %41 ]
  %99 = phi i64 [ 0, %93 ], [ %74, %73 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %92 ], [ 1, %90 ], [ 0, %85 ], [ 0, %41 ]
  %100 = phi i8* [ %32, %93 ], [ %53, %73 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.53, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.53, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.53, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.52, i64 0, i64 0), %92 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.52, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.52, i64 0, i64 0), %85 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.53, i64 0, i64 0), %41 ]
  %101 = phi i64 [ %33, %93 ], [ %75, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %92 ], [ 1, %90 ], [ 1, %85 ], [ 1, %41 ]
  %102 = phi i8 [ %34, %93 ], [ 1, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %86, %92 ], [ %86, %90 ], [ %86, %85 ], [ 1, %41 ]
  %103 = phi i8 [ 0, %93 ], [ %36, %73 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %87, %92 ], [ %87, %90 ], [ %87, %85 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %103, i64 0, metadata !1336, metadata !598), !dbg !1399
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !1334, metadata !598), !dbg !1396
  call void @llvm.dbg.value(metadata i64 %101, i64 0, metadata !1333, metadata !598), !dbg !1395
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !1332, metadata !598), !dbg !1394
  call void @llvm.dbg.value(metadata i64 %99, i64 0, metadata !1330, metadata !598), !dbg !1392
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !1328, metadata !598), !dbg !1391
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !1327, metadata !598), !dbg !1390
  call void @llvm.dbg.value(metadata i32 %96, i64 0, metadata !1324, metadata !598), !dbg !1387
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1329, metadata !598), !dbg !1467
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
  br label %123, !dbg !1468

; <label>:123:                                    ; preds = %587, %95
  %124 = phi i64 [ 0, %95 ], [ %596, %587 ]
  %125 = phi i64 [ %99, %95 ], [ %589, %587 ]
  %126 = phi i64 [ %31, %95 ], [ %590, %587 ]
  %127 = phi i64 [ %35, %95 ], [ %591, %587 ]
  %128 = phi i8 [ %37, %95 ], [ %592, %587 ]
  %129 = phi i8 [ %38, %95 ], [ %593, %587 ]
  %130 = phi i8 [ %39, %95 ], [ %594, %587 ]
  %131 = phi i64 [ %40, %95 ], [ %595, %587 ]
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !1321, metadata !598), !dbg !1384
  call void @llvm.dbg.value(metadata i8 %130, i64 0, metadata !1339, metadata !598), !dbg !1402
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !1338, metadata !598), !dbg !1401
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !1337, metadata !598), !dbg !1400
  call void @llvm.dbg.value(metadata i64 %127, i64 0, metadata !1323, metadata !598), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !1331, metadata !598), !dbg !1393
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1330, metadata !598), !dbg !1392
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1329, metadata !598), !dbg !1467
  %132 = icmp eq i64 %127, -1, !dbg !1469
  br i1 %132, label %135, label %133, !dbg !1471

; <label>:133:                                    ; preds = %123
  %134 = icmp eq i64 %124, %127, !dbg !1472
  br i1 %134, label %597, label %139, !dbg !1474

; <label>:135:                                    ; preds = %123
  %136 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !1476
  %137 = load i8, i8* %136, align 1, !dbg !1476, !tbaa !765
  %138 = icmp eq i8 %137, 0, !dbg !1478
  br i1 %138, label %597, label %139, !dbg !1474

; <label>:139:                                    ; preds = %133, %135
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1345, metadata !598), !dbg !1479
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1346, metadata !598), !dbg !1480
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1347, metadata !598), !dbg !1481
  br i1 %109, label %140, label %155, !dbg !1482

; <label>:140:                                    ; preds = %139
  %141 = add i64 %124, %101, !dbg !1484
  %142 = and i1 %110, %132, !dbg !1486
  br i1 %142, label %143, label %145, !dbg !1486

; <label>:143:                                    ; preds = %140
  %144 = call i64 @strlen(i8* %2) #13, !dbg !1487
  call void @llvm.dbg.value(metadata i64 %144, i64 0, metadata !1323, metadata !598), !dbg !1386
  br label %145, !dbg !1488

; <label>:145:                                    ; preds = %140, %143
  %146 = phi i64 [ %144, %143 ], [ %127, %140 ]
  call void @llvm.dbg.value(metadata i64 %146, i64 0, metadata !1323, metadata !598), !dbg !1386
  %147 = icmp ugt i64 %141, %146, !dbg !1490
  br i1 %147, label %155, label %148, !dbg !1492

; <label>:148:                                    ; preds = %145
  %149 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !1493
  %150 = call i32 @memcmp(i8* %149, i8* %100, i64 %101) #13, !dbg !1494
  %151 = icmp ne i32 %150, 0, !dbg !1495
  %152 = or i1 %151, %112, !dbg !1495
  %153 = xor i1 %151, true, !dbg !1495
  %154 = zext i1 %153 to i8, !dbg !1495
  br i1 %152, label %155, label %644, !dbg !1495

; <label>:155:                                    ; preds = %148, %145, %139
  %156 = phi i64 [ %146, %148 ], [ %146, %145 ], [ %127, %139 ]
  %157 = phi i8 [ %154, %148 ], [ 0, %145 ], [ 0, %139 ]
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !1345, metadata !598), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %156, i64 0, metadata !1323, metadata !598), !dbg !1386
  %158 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !1497
  %159 = load i8, i8* %158, align 1, !dbg !1497, !tbaa !765
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !1340, metadata !598), !dbg !1498
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
  ], !dbg !1499

; <label>:160:                                    ; preds = %155
  br i1 %105, label %161, label %209, !dbg !1500

; <label>:161:                                    ; preds = %160
  br i1 %112, label %162, label %644, !dbg !1501

; <label>:162:                                    ; preds = %161
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1346, metadata !598), !dbg !1480
  %163 = and i8 %128, 1, !dbg !1506
  %164 = icmp eq i8 %163, 0, !dbg !1506
  %165 = and i1 %114, %164, !dbg !1509
  br i1 %165, label %166, label %182, !dbg !1509

; <label>:166:                                    ; preds = %162
  %167 = icmp ult i64 %125, %131, !dbg !1511
  br i1 %167, label %168, label %170, !dbg !1516

; <label>:168:                                    ; preds = %166
  %169 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !1518
  store i8 39, i8* %169, align 1, !dbg !1518, !tbaa !765
  br label %170, !dbg !1518

; <label>:170:                                    ; preds = %168, %166
  %171 = add i64 %125, 1, !dbg !1520
  call void @llvm.dbg.value(metadata i64 %171, i64 0, metadata !1330, metadata !598), !dbg !1392
  %172 = icmp ult i64 %171, %131, !dbg !1522
  br i1 %172, label %173, label %175, !dbg !1526

; <label>:173:                                    ; preds = %170
  %174 = getelementptr inbounds i8, i8* %0, i64 %171, !dbg !1528
  store i8 36, i8* %174, align 1, !dbg !1528, !tbaa !765
  br label %175, !dbg !1528

; <label>:175:                                    ; preds = %173, %170
  %176 = add i64 %125, 2, !dbg !1530
  call void @llvm.dbg.value(metadata i64 %176, i64 0, metadata !1330, metadata !598), !dbg !1392
  %177 = icmp ult i64 %176, %131, !dbg !1532
  br i1 %177, label %178, label %180, !dbg !1536

; <label>:178:                                    ; preds = %175
  %179 = getelementptr inbounds i8, i8* %0, i64 %176, !dbg !1538
  store i8 39, i8* %179, align 1, !dbg !1538, !tbaa !765
  br label %180, !dbg !1538

; <label>:180:                                    ; preds = %178, %175
  %181 = add i64 %125, 3, !dbg !1540
  call void @llvm.dbg.value(metadata i64 %181, i64 0, metadata !1330, metadata !598), !dbg !1392
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1337, metadata !598), !dbg !1400
  br label %182, !dbg !1542

; <label>:182:                                    ; preds = %162, %180
  %183 = phi i64 [ %181, %180 ], [ %125, %162 ]
  %184 = phi i8 [ 1, %180 ], [ %128, %162 ]
  call void @llvm.dbg.value(metadata i8 %184, i64 0, metadata !1337, metadata !598), !dbg !1400
  call void @llvm.dbg.value(metadata i64 %183, i64 0, metadata !1330, metadata !598), !dbg !1392
  %185 = icmp ult i64 %183, %131, !dbg !1544
  br i1 %185, label %186, label %188, !dbg !1548

; <label>:186:                                    ; preds = %182
  %187 = getelementptr inbounds i8, i8* %0, i64 %183, !dbg !1550
  store i8 92, i8* %187, align 1, !dbg !1550, !tbaa !765
  br label %188, !dbg !1550

; <label>:188:                                    ; preds = %186, %182
  %189 = add i64 %183, 1, !dbg !1552
  call void @llvm.dbg.value(metadata i64 %189, i64 0, metadata !1330, metadata !598), !dbg !1392
  br i1 %106, label %190, label %476, !dbg !1554

; <label>:190:                                    ; preds = %188
  %191 = add i64 %124, 1, !dbg !1556
  %192 = icmp ult i64 %191, %156, !dbg !1558
  br i1 %192, label %193, label %476, !dbg !1559

; <label>:193:                                    ; preds = %190
  %194 = getelementptr inbounds i8, i8* %2, i64 %191, !dbg !1560
  %195 = load i8, i8* %194, align 1, !dbg !1560, !tbaa !765
  %196 = add i8 %195, -48, !dbg !1562
  %197 = icmp ult i8 %196, 10, !dbg !1562
  br i1 %197, label %198, label %476, !dbg !1562

; <label>:198:                                    ; preds = %193
  %199 = icmp ult i64 %189, %131, !dbg !1563
  br i1 %199, label %200, label %202, !dbg !1568

; <label>:200:                                    ; preds = %198
  %201 = getelementptr inbounds i8, i8* %0, i64 %189, !dbg !1570
  store i8 48, i8* %201, align 1, !dbg !1570, !tbaa !765
  br label %202, !dbg !1570

; <label>:202:                                    ; preds = %200, %198
  %203 = add i64 %183, 2, !dbg !1572
  call void @llvm.dbg.value(metadata i64 %203, i64 0, metadata !1330, metadata !598), !dbg !1392
  %204 = icmp ult i64 %203, %131, !dbg !1574
  br i1 %204, label %205, label %207, !dbg !1578

; <label>:205:                                    ; preds = %202
  %206 = getelementptr inbounds i8, i8* %0, i64 %203, !dbg !1580
  store i8 48, i8* %206, align 1, !dbg !1580, !tbaa !765
  br label %207, !dbg !1580

; <label>:207:                                    ; preds = %205, %202
  %208 = add i64 %183, 3, !dbg !1582
  call void @llvm.dbg.value(metadata i64 %208, i64 0, metadata !1330, metadata !598), !dbg !1392
  br label %476, !dbg !1584

; <label>:209:                                    ; preds = %160
  br i1 %23, label %476, label %587, !dbg !1585

; <label>:210:                                    ; preds = %155
  switch i32 %96, label %476 [
    i32 2, label %211
    i32 5, label %212
  ], !dbg !1586

; <label>:211:                                    ; preds = %210
  br i1 %112, label %476, label %644, !dbg !1587

; <label>:212:                                    ; preds = %210
  br i1 %25, label %476, label %213, !dbg !1589

; <label>:213:                                    ; preds = %212
  %214 = add i64 %124, 2, !dbg !1591
  %215 = icmp ult i64 %214, %156, !dbg !1593
  br i1 %215, label %216, label %476, !dbg !1594

; <label>:216:                                    ; preds = %213
  %217 = add i64 %124, 1, !dbg !1595
  %218 = getelementptr inbounds i8, i8* %2, i64 %217, !dbg !1597
  %219 = load i8, i8* %218, align 1, !dbg !1597, !tbaa !765
  %220 = icmp eq i8 %219, 63, !dbg !1598
  br i1 %220, label %221, label %476, !dbg !1599

; <label>:221:                                    ; preds = %216
  %222 = getelementptr inbounds i8, i8* %2, i64 %214, !dbg !1601
  %223 = load i8, i8* %222, align 1, !dbg !1601, !tbaa !765
  %224 = sext i8 %223 to i32, !dbg !1601
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
  ], !dbg !1602

; <label>:225:                                    ; preds = %221, %221, %221, %221, %221, %221, %221, %221, %221
  br i1 %112, label %226, label %644, !dbg !1603

; <label>:226:                                    ; preds = %225
  call void @llvm.dbg.value(metadata i8 %223, i64 0, metadata !1340, metadata !598), !dbg !1498
  call void @llvm.dbg.value(metadata i64 %214, i64 0, metadata !1329, metadata !598), !dbg !1467
  %227 = icmp ult i64 %125, %131, !dbg !1605
  br i1 %227, label %228, label %230, !dbg !1609

; <label>:228:                                    ; preds = %226
  %229 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !1611
  store i8 63, i8* %229, align 1, !dbg !1611, !tbaa !765
  br label %230, !dbg !1611

; <label>:230:                                    ; preds = %228, %226
  %231 = add i64 %125, 1, !dbg !1613
  call void @llvm.dbg.value(metadata i64 %231, i64 0, metadata !1330, metadata !598), !dbg !1392
  %232 = icmp ult i64 %231, %131, !dbg !1615
  br i1 %232, label %233, label %235, !dbg !1619

; <label>:233:                                    ; preds = %230
  %234 = getelementptr inbounds i8, i8* %0, i64 %231, !dbg !1621
  store i8 34, i8* %234, align 1, !dbg !1621, !tbaa !765
  br label %235, !dbg !1621

; <label>:235:                                    ; preds = %233, %230
  %236 = add i64 %125, 2, !dbg !1623
  call void @llvm.dbg.value(metadata i64 %236, i64 0, metadata !1330, metadata !598), !dbg !1392
  %237 = icmp ult i64 %236, %131, !dbg !1625
  br i1 %237, label %238, label %240, !dbg !1629

; <label>:238:                                    ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236, !dbg !1631
  store i8 34, i8* %239, align 1, !dbg !1631, !tbaa !765
  br label %240, !dbg !1631

; <label>:240:                                    ; preds = %238, %235
  %241 = add i64 %125, 3, !dbg !1633
  call void @llvm.dbg.value(metadata i64 %241, i64 0, metadata !1330, metadata !598), !dbg !1392
  %242 = icmp ult i64 %241, %131, !dbg !1635
  br i1 %242, label %243, label %245, !dbg !1639

; <label>:243:                                    ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241, !dbg !1641
  store i8 63, i8* %244, align 1, !dbg !1641, !tbaa !765
  br label %245, !dbg !1641

; <label>:245:                                    ; preds = %243, %240
  %246 = add i64 %125, 4, !dbg !1643
  call void @llvm.dbg.value(metadata i64 %246, i64 0, metadata !1330, metadata !598), !dbg !1392
  br label %476, !dbg !1645

; <label>:247:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !1344, metadata !598), !dbg !1646
  br label %257, !dbg !1647

; <label>:248:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !1344, metadata !598), !dbg !1646
  br label %257, !dbg !1648

; <label>:249:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !1344, metadata !598), !dbg !1646
  br label %255, !dbg !1649

; <label>:250:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !1344, metadata !598), !dbg !1646
  br label %255, !dbg !1650

; <label>:251:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !1344, metadata !598), !dbg !1646
  br label %257, !dbg !1651

; <label>:252:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !1344, metadata !598), !dbg !1646
  br i1 %114, label %253, label %254, !dbg !1652

; <label>:253:                                    ; preds = %252
  br i1 %112, label %542, label %644, !dbg !1653

; <label>:254:                                    ; preds = %252
  br i1 %122, label %542, label %255, !dbg !1656

; <label>:255:                                    ; preds = %254, %155, %250, %249
  %256 = phi i8 [ 92, %254 ], [ 116, %250 ], [ 114, %249 ], [ 110, %155 ]
  call void @llvm.dbg.value(metadata i8 %256, i64 0, metadata !1344, metadata !598), !dbg !1646
  br i1 %118, label %257, label %644, !dbg !1658

; <label>:257:                                    ; preds = %255, %155, %251, %248, %247
  %258 = phi i8 [ %256, %255 ], [ 118, %251 ], [ 102, %248 ], [ 98, %247 ], [ 97, %155 ]
  call void @llvm.dbg.value(metadata i8 %258, i64 0, metadata !1344, metadata !598), !dbg !1646
  br i1 %105, label %503, label %476, !dbg !1660

; <label>:259:                                    ; preds = %155, %155
  %260 = icmp eq i64 %156, -1, !dbg !1661
  br i1 %260, label %261, label %266, !dbg !1663

; <label>:261:                                    ; preds = %259
  %262 = load i8, i8* %26, align 1, !dbg !1664, !tbaa !765
  %263 = icmp ne i8 %262, 0, !dbg !1666
  %264 = icmp ne i64 %124, 0, !dbg !1667
  %265 = or i1 %264, %263, !dbg !1669
  br i1 %265, label %476, label %272, !dbg !1669

; <label>:266:                                    ; preds = %259
  %267 = icmp ne i64 %156, 1, !dbg !1670
  %268 = icmp ne i64 %124, 0, !dbg !1667
  %269 = or i1 %268, %267, !dbg !1672
  br i1 %269, label %476, label %272, !dbg !1672

; <label>:270:                                    ; preds = %155, %155
  %271 = icmp eq i64 %124, 0, !dbg !1667
  br i1 %271, label %272, label %476, !dbg !1674

; <label>:272:                                    ; preds = %270, %266, %261, %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1347, metadata !598), !dbg !1481
  br label %273, !dbg !1675

; <label>:273:                                    ; preds = %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %272
  %274 = phi i8 [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 1, %272 ]
  call void @llvm.dbg.value(metadata i8 %274, i64 0, metadata !1347, metadata !598), !dbg !1481
  br i1 %118, label %476, label %644, !dbg !1676

; <label>:275:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1338, metadata !598), !dbg !1401
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1347, metadata !598), !dbg !1481
  br i1 %114, label %276, label %476, !dbg !1678

; <label>:276:                                    ; preds = %275
  br i1 %112, label %277, label %644, !dbg !1679

; <label>:277:                                    ; preds = %276
  %278 = icmp eq i64 %131, 0, !dbg !1682
  %279 = icmp ne i64 %126, 0, !dbg !1684
  %280 = or i1 %279, %278, !dbg !1686
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !1331, metadata !598), !dbg !1393
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1321, metadata !598), !dbg !1384
  %281 = select i1 %280, i64 %126, i64 %131, !dbg !1686
  %282 = select i1 %280, i64 %131, i64 0, !dbg !1686
  call void @llvm.dbg.value(metadata i64 %282, i64 0, metadata !1321, metadata !598), !dbg !1384
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !1331, metadata !598), !dbg !1393
  %283 = icmp ult i64 %125, %282, !dbg !1687
  br i1 %283, label %284, label %286, !dbg !1691

; <label>:284:                                    ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !1693
  store i8 39, i8* %285, align 1, !dbg !1693, !tbaa !765
  br label %286, !dbg !1693

; <label>:286:                                    ; preds = %284, %277
  %287 = add i64 %125, 1, !dbg !1695
  call void @llvm.dbg.value(metadata i64 %287, i64 0, metadata !1330, metadata !598), !dbg !1392
  %288 = icmp ult i64 %287, %282, !dbg !1697
  br i1 %288, label %289, label %291, !dbg !1701

; <label>:289:                                    ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287, !dbg !1703
  store i8 92, i8* %290, align 1, !dbg !1703, !tbaa !765
  br label %291, !dbg !1703

; <label>:291:                                    ; preds = %289, %286
  %292 = add i64 %125, 2, !dbg !1705
  call void @llvm.dbg.value(metadata i64 %292, i64 0, metadata !1330, metadata !598), !dbg !1392
  %293 = icmp ult i64 %292, %282, !dbg !1707
  br i1 %293, label %294, label %296, !dbg !1711

; <label>:294:                                    ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292, !dbg !1713
  store i8 39, i8* %295, align 1, !dbg !1713, !tbaa !765
  br label %296, !dbg !1713

; <label>:296:                                    ; preds = %294, %291
  %297 = add i64 %125, 3, !dbg !1715
  call void @llvm.dbg.value(metadata i64 %297, i64 0, metadata !1330, metadata !598), !dbg !1392
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1337, metadata !598), !dbg !1400
  br label %476, !dbg !1717

; <label>:298:                                    ; preds = %155
  br i1 %14, label %299, label %308, !dbg !1718

; <label>:299:                                    ; preds = %298
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1348, metadata !598), !dbg !1719
  %300 = tail call i16** @__ctype_b_loc() #1, !dbg !1720
  %301 = load i16*, i16** %300, align 8, !dbg !1720, !tbaa !606
  %302 = zext i8 %159 to i64, !dbg !1720
  %303 = getelementptr inbounds i16, i16* %301, i64 %302, !dbg !1720
  %304 = load i16, i16* %303, align 2, !dbg !1720, !tbaa !1722
  %305 = lshr i16 %304, 14, !dbg !1723
  %306 = trunc i16 %305 to i8, !dbg !1723
  %307 = and i8 %306, 1, !dbg !1723
  call void @llvm.dbg.value(metadata i8 %307, i64 0, metadata !1351, metadata !598), !dbg !1724
  br label %368, !dbg !1725

; <label>:308:                                    ; preds = %298
  call void @llvm.lifetime.start(i64 8, i8* nonnull %18) #9, !dbg !1726
  store i64 0, i64* %10, align 8, !dbg !1727
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1348, metadata !598), !dbg !1719
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1351, metadata !598), !dbg !1724
  %309 = icmp eq i64 %156, -1, !dbg !1728
  br i1 %309, label %310, label %312, !dbg !1730, !llvm.loop !1731

; <label>:310:                                    ; preds = %308
  %311 = call i64 @strlen(i8* nonnull %2) #13, !dbg !1734
  call void @llvm.dbg.value(metadata i64 %311, i64 0, metadata !1323, metadata !598), !dbg !1386
  br label %312, !dbg !1735, !llvm.loop !1731

; <label>:312:                                    ; preds = %310, %308
  %313 = phi i64 [ %156, %308 ], [ %311, %310 ]
  br label %314, !dbg !1724

; <label>:314:                                    ; preds = %312, %355
  %315 = phi i64 [ %360, %355 ], [ 0, %312 ]
  %316 = phi i8 [ %359, %355 ], [ 1, %312 ]
  call void @llvm.dbg.value(metadata i8 %316, i64 0, metadata !1351, metadata !598), !dbg !1724
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !1348, metadata !598), !dbg !1719
  call void @llvm.dbg.value(metadata i64 %313, i64 0, metadata !1323, metadata !598), !dbg !1386
  call void @llvm.lifetime.start(i64 4, i8* nonnull %19) #9, !dbg !1736
  %317 = add i64 %315, %124, !dbg !1737
  %318 = getelementptr inbounds i8, i8* %2, i64 %317, !dbg !1738
  %319 = sub i64 %313, %317, !dbg !1739
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1352, metadata !1740), !dbg !1741
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !1369, metadata !1740), !dbg !1742
  %320 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %318, i64 %319, %struct.__mbstate_t* nonnull %11) #9, !dbg !1743
  call void @llvm.dbg.value(metadata i64 %320, i64 0, metadata !1372, metadata !598), !dbg !1744
  switch i64 %320, label %334 [
    i64 0, label %350
    i64 -1, label %347
    i64 -2, label %321
  ], !dbg !1745

; <label>:321:                                    ; preds = %314
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !1348, metadata !598), !dbg !1719
  %322 = icmp ugt i64 %313, %317, !dbg !1746
  br i1 %322, label %323, label %351, !dbg !1749

; <label>:323:                                    ; preds = %321
  br label %324, !dbg !1750

; <label>:324:                                    ; preds = %323, %330
  %325 = phi i64 [ %332, %330 ], [ %317, %323 ]
  %326 = phi i64 [ %331, %330 ], [ %315, %323 ]
  %327 = getelementptr inbounds i8, i8* %2, i64 %325, !dbg !1750
  %328 = load i8, i8* %327, align 1, !dbg !1750, !tbaa !765
  %329 = icmp eq i8 %328, 0, !dbg !1752
  br i1 %329, label %348, label %330, !dbg !1753

; <label>:330:                                    ; preds = %324
  %331 = add i64 %326, 1, !dbg !1755
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !1348, metadata !598), !dbg !1719
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !1348, metadata !598), !dbg !1719
  %332 = add i64 %331, %124, !dbg !1756
  %333 = icmp ult i64 %332, %313, !dbg !1746
  br i1 %333, label %324, label %348, !dbg !1749, !llvm.loop !1757

; <label>:334:                                    ; preds = %314
  %335 = icmp ugt i64 %320, 1, !dbg !1759
  %336 = and i1 %116, %335, !dbg !1763
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1373, metadata !598), !dbg !1764
  br i1 %336, label %337, label %355, !dbg !1763

; <label>:337:                                    ; preds = %334
  br label %338, !dbg !1765

; <label>:338:                                    ; preds = %337, %344
  %339 = phi i64 [ %345, %344 ], [ 1, %337 ]
  %340 = add i64 %339, %317, !dbg !1765
  %341 = getelementptr inbounds i8, i8* %2, i64 %340, !dbg !1766
  %342 = load i8, i8* %341, align 1, !dbg !1766, !tbaa !765
  %343 = sext i8 %342 to i32, !dbg !1766
  switch i32 %343, label %344 [
    i32 91, label %367
    i32 92, label %367
    i32 94, label %367
    i32 96, label %367
    i32 124, label %367
  ], !dbg !1767

; <label>:344:                                    ; preds = %338
  %345 = add nuw i64 %339, 1, !dbg !1768
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !1373, metadata !598), !dbg !1764
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !1373, metadata !598), !dbg !1764
  %346 = icmp ult i64 %345, %320, !dbg !1759
  br i1 %346, label %338, label %354, !dbg !1770, !llvm.loop !1772

; <label>:347:                                    ; preds = %314
  br label %351, !dbg !1724

; <label>:348:                                    ; preds = %324, %330
  %349 = phi i64 [ %331, %330 ], [ %326, %324 ]
  br label %351, !dbg !1724

; <label>:350:                                    ; preds = %314
  br label %351, !dbg !1724

; <label>:351:                                    ; preds = %350, %348, %347, %321
  %352 = phi i64 [ %315, %321 ], [ %315, %347 ], [ %349, %348 ], [ %315, %350 ]
  %353 = phi i8 [ 0, %321 ], [ 0, %347 ], [ 0, %348 ], [ %316, %350 ]
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1351, metadata !598), !dbg !1724
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1348, metadata !598), !dbg !1719
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #9, !dbg !1775
  br label %364

; <label>:354:                                    ; preds = %344
  br label %355, !dbg !1776

; <label>:355:                                    ; preds = %354, %334
  %356 = load i32, i32* %12, align 4, !dbg !1776, !tbaa !694
  call void @llvm.dbg.value(metadata i32 %356, i64 0, metadata !1369, metadata !598), !dbg !1742
  %357 = call i32 @iswprint(i32 %356) #9, !dbg !1778
  %358 = icmp eq i32 %357, 0, !dbg !1778
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1351, metadata !598), !dbg !1724
  %359 = select i1 %358, i8 0, i8 %316, !dbg !1779
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1351, metadata !598), !dbg !1724
  %360 = add i64 %320, %315, !dbg !1780
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1348, metadata !598), !dbg !1719
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1351, metadata !598), !dbg !1724
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1348, metadata !598), !dbg !1719
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #9, !dbg !1775
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1352, metadata !1740), !dbg !1741
  %361 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #13, !dbg !1781
  %362 = icmp eq i32 %361, 0, !dbg !1782
  br i1 %362, label %314, label %363, !dbg !1783, !llvm.loop !1731

; <label>:363:                                    ; preds = %355
  br label %364, !dbg !1785

; <label>:364:                                    ; preds = %363, %351
  %365 = phi i8 [ %353, %351 ], [ %359, %363 ]
  %366 = phi i64 [ %352, %351 ], [ %360, %363 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #9, !dbg !1785
  br label %368

; <label>:367:                                    ; preds = %338, %338, %338, %338, %338
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1351, metadata !598), !dbg !1724
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1348, metadata !598), !dbg !1719
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #9, !dbg !1775
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #9, !dbg !1785
  br label %649

; <label>:368:                                    ; preds = %364, %299
  %369 = phi i64 [ %156, %299 ], [ %313, %364 ]
  %370 = phi i64 [ 1, %299 ], [ %366, %364 ]
  %371 = phi i8 [ %307, %299 ], [ %365, %364 ]
  call void @llvm.dbg.value(metadata i8 %371, i64 0, metadata !1351, metadata !598), !dbg !1724
  call void @llvm.dbg.value(metadata i64 %370, i64 0, metadata !1348, metadata !598), !dbg !1719
  call void @llvm.dbg.value(metadata i64 %369, i64 0, metadata !1323, metadata !598), !dbg !1386
  %372 = and i8 %371, 1, !dbg !1786
  %373 = icmp ne i8 %372, 0, !dbg !1786
  call void @llvm.dbg.value(metadata i8 %372, i64 0, metadata !1347, metadata !598), !dbg !1481
  %374 = icmp ult i64 %370, 2, !dbg !1787
  %375 = or i1 %373, %113, !dbg !1788
  %376 = and i1 %374, %375, !dbg !1790
  br i1 %376, label %476, label %377, !dbg !1790

; <label>:377:                                    ; preds = %368
  %378 = add i64 %370, %124, !dbg !1791
  call void @llvm.dbg.value(metadata i64 %378, i64 0, metadata !1380, metadata !598), !dbg !1792
  br label %379, !dbg !1793

; <label>:379:                                    ; preds = %472, %377
  %380 = phi i64 [ %124, %377 ], [ %447, %472 ]
  %381 = phi i64 [ %125, %377 ], [ %473, %472 ]
  %382 = phi i8 [ %128, %377 ], [ %468, %472 ]
  %383 = phi i8 [ %159, %377 ], [ %475, %472 ]
  %384 = phi i8 [ %157, %377 ], [ %445, %472 ]
  %385 = phi i8 [ 0, %377 ], [ %446, %472 ]
  call void @llvm.dbg.value(metadata i8 %385, i64 0, metadata !1346, metadata !598), !dbg !1480
  call void @llvm.dbg.value(metadata i8 %384, i64 0, metadata !1345, metadata !598), !dbg !1479
  call void @llvm.dbg.value(metadata i8 %383, i64 0, metadata !1340, metadata !598), !dbg !1498
  call void @llvm.dbg.value(metadata i8 %382, i64 0, metadata !1337, metadata !598), !dbg !1400
  call void @llvm.dbg.value(metadata i64 %381, i64 0, metadata !1330, metadata !598), !dbg !1392
  call void @llvm.dbg.value(metadata i64 %380, i64 0, metadata !1329, metadata !598), !dbg !1467
  br i1 %375, label %432, label %386, !dbg !1794

; <label>:386:                                    ; preds = %379
  br i1 %112, label %387, label %643, !dbg !1799

; <label>:387:                                    ; preds = %386
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1346, metadata !598), !dbg !1480
  %388 = and i8 %382, 1, !dbg !1803
  %389 = icmp eq i8 %388, 0, !dbg !1803
  %390 = and i1 %114, %389, !dbg !1806
  br i1 %390, label %391, label %407, !dbg !1806

; <label>:391:                                    ; preds = %387
  %392 = icmp ult i64 %381, %131, !dbg !1808
  br i1 %392, label %393, label %395, !dbg !1813

; <label>:393:                                    ; preds = %391
  %394 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !1815
  store i8 39, i8* %394, align 1, !dbg !1815, !tbaa !765
  br label %395, !dbg !1815

; <label>:395:                                    ; preds = %393, %391
  %396 = add i64 %381, 1, !dbg !1817
  call void @llvm.dbg.value(metadata i64 %396, i64 0, metadata !1330, metadata !598), !dbg !1392
  %397 = icmp ult i64 %396, %131, !dbg !1819
  br i1 %397, label %398, label %400, !dbg !1823

; <label>:398:                                    ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !1825
  store i8 36, i8* %399, align 1, !dbg !1825, !tbaa !765
  br label %400, !dbg !1825

; <label>:400:                                    ; preds = %398, %395
  %401 = add i64 %381, 2, !dbg !1827
  call void @llvm.dbg.value(metadata i64 %401, i64 0, metadata !1330, metadata !598), !dbg !1392
  %402 = icmp ult i64 %401, %131, !dbg !1829
  br i1 %402, label %403, label %405, !dbg !1833

; <label>:403:                                    ; preds = %400
  %404 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !1835
  store i8 39, i8* %404, align 1, !dbg !1835, !tbaa !765
  br label %405, !dbg !1835

; <label>:405:                                    ; preds = %403, %400
  %406 = add i64 %381, 3, !dbg !1837
  call void @llvm.dbg.value(metadata i64 %406, i64 0, metadata !1330, metadata !598), !dbg !1392
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1337, metadata !598), !dbg !1400
  br label %407, !dbg !1839

; <label>:407:                                    ; preds = %387, %405
  %408 = phi i64 [ %406, %405 ], [ %381, %387 ]
  %409 = phi i8 [ 1, %405 ], [ %382, %387 ]
  call void @llvm.dbg.value(metadata i8 %409, i64 0, metadata !1337, metadata !598), !dbg !1400
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !1330, metadata !598), !dbg !1392
  %410 = icmp ult i64 %408, %131, !dbg !1841
  br i1 %410, label %411, label %413, !dbg !1845

; <label>:411:                                    ; preds = %407
  %412 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !1847
  store i8 92, i8* %412, align 1, !dbg !1847, !tbaa !765
  br label %413, !dbg !1847

; <label>:413:                                    ; preds = %411, %407
  %414 = add i64 %408, 1, !dbg !1849
  call void @llvm.dbg.value(metadata i64 %414, i64 0, metadata !1330, metadata !598), !dbg !1392
  %415 = icmp ult i64 %414, %131, !dbg !1851
  br i1 %415, label %416, label %420, !dbg !1855

; <label>:416:                                    ; preds = %413
  %417 = lshr i8 %383, 6, !dbg !1857
  %418 = or i8 %417, 48, !dbg !1857
  %419 = getelementptr inbounds i8, i8* %0, i64 %414, !dbg !1857
  store i8 %418, i8* %419, align 1, !dbg !1857, !tbaa !765
  br label %420, !dbg !1857

; <label>:420:                                    ; preds = %416, %413
  %421 = add i64 %408, 2, !dbg !1859
  call void @llvm.dbg.value(metadata i64 %421, i64 0, metadata !1330, metadata !598), !dbg !1392
  %422 = icmp ult i64 %421, %131, !dbg !1861
  br i1 %422, label %423, label %428, !dbg !1865

; <label>:423:                                    ; preds = %420
  %424 = lshr i8 %383, 3, !dbg !1867
  %425 = and i8 %424, 7, !dbg !1867
  %426 = or i8 %425, 48, !dbg !1867
  %427 = getelementptr inbounds i8, i8* %0, i64 %421, !dbg !1867
  store i8 %426, i8* %427, align 1, !dbg !1867, !tbaa !765
  br label %428, !dbg !1867

; <label>:428:                                    ; preds = %423, %420
  %429 = add i64 %408, 3, !dbg !1869
  call void @llvm.dbg.value(metadata i64 %429, i64 0, metadata !1330, metadata !598), !dbg !1392
  %430 = and i8 %383, 7, !dbg !1871
  %431 = or i8 %430, 48, !dbg !1872
  call void @llvm.dbg.value(metadata i8 %431, i64 0, metadata !1340, metadata !598), !dbg !1498
  br label %441, !dbg !1873

; <label>:432:                                    ; preds = %379
  %433 = and i8 %384, 1, !dbg !1874
  %434 = icmp eq i8 %433, 0, !dbg !1874
  br i1 %434, label %441, label %435, !dbg !1876

; <label>:435:                                    ; preds = %432
  %436 = icmp ult i64 %381, %131, !dbg !1877
  br i1 %436, label %437, label %439, !dbg !1882

; <label>:437:                                    ; preds = %435
  %438 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !1884
  store i8 92, i8* %438, align 1, !dbg !1884, !tbaa !765
  br label %439, !dbg !1884

; <label>:439:                                    ; preds = %437, %435
  %440 = add i64 %381, 1, !dbg !1886
  call void @llvm.dbg.value(metadata i64 %440, i64 0, metadata !1330, metadata !598), !dbg !1392
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1345, metadata !598), !dbg !1479
  br label %441, !dbg !1888

; <label>:441:                                    ; preds = %432, %439, %428
  %442 = phi i64 [ %440, %439 ], [ %381, %432 ], [ %429, %428 ]
  %443 = phi i8 [ %382, %439 ], [ %382, %432 ], [ %409, %428 ]
  %444 = phi i8 [ %383, %439 ], [ %383, %432 ], [ %431, %428 ]
  %445 = phi i8 [ 0, %439 ], [ %384, %432 ], [ %384, %428 ]
  %446 = phi i8 [ %385, %439 ], [ %385, %432 ], [ 1, %428 ]
  call void @llvm.dbg.value(metadata i8 %446, i64 0, metadata !1346, metadata !598), !dbg !1480
  call void @llvm.dbg.value(metadata i8 %445, i64 0, metadata !1345, metadata !598), !dbg !1479
  call void @llvm.dbg.value(metadata i8 %444, i64 0, metadata !1340, metadata !598), !dbg !1498
  call void @llvm.dbg.value(metadata i8 %443, i64 0, metadata !1337, metadata !598), !dbg !1400
  call void @llvm.dbg.value(metadata i64 %442, i64 0, metadata !1330, metadata !598), !dbg !1392
  %447 = add i64 %380, 1, !dbg !1889
  %448 = icmp ugt i64 %378, %447, !dbg !1891
  br i1 %448, label %449, label %541, !dbg !1892

; <label>:449:                                    ; preds = %441
  %450 = and i8 %443, 1, !dbg !1893
  %451 = icmp ne i8 %450, 0, !dbg !1893
  %452 = and i8 %446, 1, !dbg !1897
  %453 = icmp eq i8 %452, 0, !dbg !1897
  %454 = and i1 %451, %453, !dbg !1893
  br i1 %454, label %455, label %466, !dbg !1893

; <label>:455:                                    ; preds = %449
  %456 = icmp ult i64 %442, %131, !dbg !1899
  br i1 %456, label %457, label %459, !dbg !1904

; <label>:457:                                    ; preds = %455
  %458 = getelementptr inbounds i8, i8* %0, i64 %442, !dbg !1906
  store i8 39, i8* %458, align 1, !dbg !1906, !tbaa !765
  br label %459, !dbg !1906

; <label>:459:                                    ; preds = %457, %455
  %460 = add i64 %442, 1, !dbg !1908
  call void @llvm.dbg.value(metadata i64 %460, i64 0, metadata !1330, metadata !598), !dbg !1392
  %461 = icmp ult i64 %460, %131, !dbg !1910
  br i1 %461, label %462, label %464, !dbg !1914

; <label>:462:                                    ; preds = %459
  %463 = getelementptr inbounds i8, i8* %0, i64 %460, !dbg !1916
  store i8 39, i8* %463, align 1, !dbg !1916, !tbaa !765
  br label %464, !dbg !1916

; <label>:464:                                    ; preds = %462, %459
  %465 = add i64 %442, 2, !dbg !1918
  call void @llvm.dbg.value(metadata i64 %465, i64 0, metadata !1330, metadata !598), !dbg !1392
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1337, metadata !598), !dbg !1400
  br label %466, !dbg !1920

; <label>:466:                                    ; preds = %449, %464
  %467 = phi i64 [ %465, %464 ], [ %442, %449 ]
  %468 = phi i8 [ 0, %464 ], [ %443, %449 ]
  call void @llvm.dbg.value(metadata i8 %468, i64 0, metadata !1337, metadata !598), !dbg !1400
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !1330, metadata !598), !dbg !1392
  %469 = icmp ult i64 %467, %131, !dbg !1922
  br i1 %469, label %470, label %472, !dbg !1926

; <label>:470:                                    ; preds = %466
  %471 = getelementptr inbounds i8, i8* %0, i64 %467, !dbg !1928
  store i8 %444, i8* %471, align 1, !dbg !1928, !tbaa !765
  br label %472, !dbg !1928

; <label>:472:                                    ; preds = %470, %466
  %473 = add i64 %467, 1, !dbg !1930
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !1330, metadata !598), !dbg !1392
  call void @llvm.dbg.value(metadata i64 %447, i64 0, metadata !1329, metadata !598), !dbg !1467
  %474 = getelementptr inbounds i8, i8* %2, i64 %447, !dbg !1932
  %475 = load i8, i8* %474, align 1, !dbg !1932, !tbaa !765
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !1340, metadata !598), !dbg !1498
  br label %379, !dbg !1933, !llvm.loop !1935

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
  call void @llvm.dbg.value(metadata i64 %486, i64 0, metadata !1321, metadata !598), !dbg !1384
  call void @llvm.dbg.value(metadata i8 %485, i64 0, metadata !1347, metadata !598), !dbg !1481
  call void @llvm.dbg.value(metadata i8 %484, i64 0, metadata !1346, metadata !598), !dbg !1480
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !1345, metadata !598), !dbg !1479
  call void @llvm.dbg.value(metadata i8 %483, i64 0, metadata !1340, metadata !598), !dbg !1498
  call void @llvm.dbg.value(metadata i8 %482, i64 0, metadata !1338, metadata !598), !dbg !1401
  call void @llvm.dbg.value(metadata i8 %481, i64 0, metadata !1337, metadata !598), !dbg !1400
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !1323, metadata !598), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %479, i64 0, metadata !1331, metadata !598), !dbg !1393
  call void @llvm.dbg.value(metadata i64 %478, i64 0, metadata !1330, metadata !598), !dbg !1392
  call void @llvm.dbg.value(metadata i64 %477, i64 0, metadata !1329, metadata !598), !dbg !1467
  br i1 %107, label %488, label %487, !dbg !1938

; <label>:487:                                    ; preds = %476
  br i1 %117, label %489, label %501, !dbg !1940

; <label>:488:                                    ; preds = %476
  br i1 %20, label %501, label %489, !dbg !1941

; <label>:489:                                    ; preds = %488, %487
  %490 = lshr i8 %483, 5, !dbg !1942
  %491 = zext i8 %490 to i64, !dbg !1942
  %492 = getelementptr inbounds i32, i32* %6, i64 %491, !dbg !1944
  %493 = load i32, i32* %492, align 4, !dbg !1944, !tbaa !694
  %494 = and i8 %483, 31, !dbg !1945
  %495 = zext i8 %494 to i32, !dbg !1946
  %496 = shl i32 1, %495, !dbg !1947
  %497 = and i32 %493, %496, !dbg !1947
  %498 = icmp eq i32 %497, 0, !dbg !1947
  %499 = icmp eq i8 %157, 0, !dbg !1948
  %500 = and i1 %499, %498, !dbg !1949
  br i1 %500, label %542, label %503, !dbg !1949

; <label>:501:                                    ; preds = %488, %487
  %502 = icmp eq i8 %157, 0, !dbg !1948
  br i1 %502, label %542, label %503, !dbg !1950

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
  call void @llvm.dbg.value(metadata i64 %512, i64 0, metadata !1321, metadata !598), !dbg !1384
  call void @llvm.dbg.value(metadata i8 %511, i64 0, metadata !1347, metadata !598), !dbg !1481
  call void @llvm.dbg.value(metadata i8 %510, i64 0, metadata !1340, metadata !598), !dbg !1498
  call void @llvm.dbg.value(metadata i8 %509, i64 0, metadata !1338, metadata !598), !dbg !1401
  call void @llvm.dbg.value(metadata i8 %508, i64 0, metadata !1337, metadata !598), !dbg !1400
  call void @llvm.dbg.value(metadata i64 %507, i64 0, metadata !1323, metadata !598), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !1331, metadata !598), !dbg !1393
  call void @llvm.dbg.value(metadata i64 %505, i64 0, metadata !1330, metadata !598), !dbg !1392
  call void @llvm.dbg.value(metadata i64 %504, i64 0, metadata !1329, metadata !598), !dbg !1467
  br i1 %112, label %513, label %644, !dbg !1952

; <label>:513:                                    ; preds = %503
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1346, metadata !598), !dbg !1480
  %514 = and i8 %508, 1, !dbg !1955
  %515 = icmp eq i8 %514, 0, !dbg !1955
  %516 = and i1 %114, %515, !dbg !1958
  br i1 %516, label %517, label %533, !dbg !1958

; <label>:517:                                    ; preds = %513
  %518 = icmp ult i64 %505, %512, !dbg !1960
  br i1 %518, label %519, label %521, !dbg !1965

; <label>:519:                                    ; preds = %517
  %520 = getelementptr inbounds i8, i8* %0, i64 %505, !dbg !1967
  store i8 39, i8* %520, align 1, !dbg !1967, !tbaa !765
  br label %521, !dbg !1967

; <label>:521:                                    ; preds = %519, %517
  %522 = add i64 %505, 1, !dbg !1969
  call void @llvm.dbg.value(metadata i64 %522, i64 0, metadata !1330, metadata !598), !dbg !1392
  %523 = icmp ult i64 %522, %512, !dbg !1971
  br i1 %523, label %524, label %526, !dbg !1975

; <label>:524:                                    ; preds = %521
  %525 = getelementptr inbounds i8, i8* %0, i64 %522, !dbg !1977
  store i8 36, i8* %525, align 1, !dbg !1977, !tbaa !765
  br label %526, !dbg !1977

; <label>:526:                                    ; preds = %524, %521
  %527 = add i64 %505, 2, !dbg !1979
  call void @llvm.dbg.value(metadata i64 %527, i64 0, metadata !1330, metadata !598), !dbg !1392
  %528 = icmp ult i64 %527, %512, !dbg !1981
  br i1 %528, label %529, label %531, !dbg !1985

; <label>:529:                                    ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527, !dbg !1987
  store i8 39, i8* %530, align 1, !dbg !1987, !tbaa !765
  br label %531, !dbg !1987

; <label>:531:                                    ; preds = %529, %526
  %532 = add i64 %505, 3, !dbg !1989
  call void @llvm.dbg.value(metadata i64 %532, i64 0, metadata !1330, metadata !598), !dbg !1392
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1337, metadata !598), !dbg !1400
  br label %533, !dbg !1991

; <label>:533:                                    ; preds = %513, %531
  %534 = phi i64 [ %532, %531 ], [ %505, %513 ]
  %535 = phi i8 [ 1, %531 ], [ %508, %513 ]
  call void @llvm.dbg.value(metadata i8 %535, i64 0, metadata !1337, metadata !598), !dbg !1400
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !1330, metadata !598), !dbg !1392
  %536 = icmp ult i64 %534, %512, !dbg !1993
  br i1 %536, label %537, label %539, !dbg !1997

; <label>:537:                                    ; preds = %533
  %538 = getelementptr inbounds i8, i8* %0, i64 %534, !dbg !1999
  store i8 92, i8* %538, align 1, !dbg !1999, !tbaa !765
  br label %539, !dbg !1999

; <label>:539:                                    ; preds = %533, %537
  %540 = add i64 %534, 1, !dbg !2001
  call void @llvm.dbg.value(metadata i64 %540, i64 0, metadata !1330, metadata !598), !dbg !1392
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !1321, metadata !598), !dbg !1384
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !1347, metadata !598), !dbg !1481
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !1346, metadata !598), !dbg !1480
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !1340, metadata !598), !dbg !1498
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !1338, metadata !598), !dbg !1401
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !1337, metadata !598), !dbg !1400
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !1323, metadata !598), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1331, metadata !598), !dbg !1393
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !1330, metadata !598), !dbg !1392
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !1329, metadata !598), !dbg !1467
  br label %569, !dbg !2003

; <label>:541:                                    ; preds = %441
  br label %542, !dbg !1384

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
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !1321, metadata !598), !dbg !1384
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !1347, metadata !598), !dbg !1481
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !1346, metadata !598), !dbg !1480
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !1340, metadata !598), !dbg !1498
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !1338, metadata !598), !dbg !1401
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !1337, metadata !598), !dbg !1400
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !1323, metadata !598), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1331, metadata !598), !dbg !1393
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !1330, metadata !598), !dbg !1392
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !1329, metadata !598), !dbg !1467
  %553 = and i8 %547, 1, !dbg !2003
  %554 = icmp ne i8 %553, 0, !dbg !2003
  %555 = and i8 %550, 1, !dbg !2007
  %556 = icmp eq i8 %555, 0, !dbg !2007
  %557 = and i1 %554, %556, !dbg !2003
  br i1 %557, label %558, label %569, !dbg !2003

; <label>:558:                                    ; preds = %542
  %559 = icmp ult i64 %544, %552, !dbg !2009
  br i1 %559, label %560, label %562, !dbg !2014

; <label>:560:                                    ; preds = %558
  %561 = getelementptr inbounds i8, i8* %0, i64 %544, !dbg !2016
  store i8 39, i8* %561, align 1, !dbg !2016, !tbaa !765
  br label %562, !dbg !2016

; <label>:562:                                    ; preds = %560, %558
  %563 = add i64 %544, 1, !dbg !2018
  call void @llvm.dbg.value(metadata i64 %563, i64 0, metadata !1330, metadata !598), !dbg !1392
  %564 = icmp ult i64 %563, %552, !dbg !2020
  br i1 %564, label %565, label %567, !dbg !2024

; <label>:565:                                    ; preds = %562
  %566 = getelementptr inbounds i8, i8* %0, i64 %563, !dbg !2026
  store i8 39, i8* %566, align 1, !dbg !2026, !tbaa !765
  br label %567, !dbg !2026

; <label>:567:                                    ; preds = %565, %562
  %568 = add i64 %544, 2, !dbg !2028
  call void @llvm.dbg.value(metadata i64 %568, i64 0, metadata !1330, metadata !598), !dbg !1392
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1337, metadata !598), !dbg !1400
  br label %569, !dbg !2030

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
  call void @llvm.dbg.value(metadata i8 %578, i64 0, metadata !1337, metadata !598), !dbg !1400
  call void @llvm.dbg.value(metadata i64 %577, i64 0, metadata !1330, metadata !598), !dbg !1392
  %579 = icmp ult i64 %577, %570, !dbg !2032
  br i1 %579, label %580, label %582, !dbg !2036

; <label>:580:                                    ; preds = %569
  %581 = getelementptr inbounds i8, i8* %0, i64 %577, !dbg !2038
  store i8 %572, i8* %581, align 1, !dbg !2038, !tbaa !765
  br label %582, !dbg !2038

; <label>:582:                                    ; preds = %580, %569
  %583 = add i64 %577, 1, !dbg !2040
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !1330, metadata !598), !dbg !1392
  %584 = and i8 %571, 1, !dbg !2042
  %585 = icmp eq i8 %584, 0, !dbg !2042
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1339, metadata !598), !dbg !1402
  %586 = select i1 %585, i8 0, i8 %130, !dbg !2044
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !1339, metadata !598), !dbg !1402
  br label %587, !dbg !2045

; <label>:587:                                    ; preds = %582, %209
  %588 = phi i64 [ %124, %209 ], [ %576, %582 ]
  %589 = phi i64 [ %125, %209 ], [ %583, %582 ]
  %590 = phi i64 [ %126, %209 ], [ %575, %582 ]
  %591 = phi i64 [ %156, %209 ], [ %574, %582 ]
  %592 = phi i8 [ %128, %209 ], [ %578, %582 ]
  %593 = phi i8 [ %129, %209 ], [ %573, %582 ]
  %594 = phi i8 [ %130, %209 ], [ %586, %582 ]
  %595 = phi i64 [ %131, %209 ], [ %570, %582 ]
  %596 = add i64 %588, 1, !dbg !2046
  call void @llvm.dbg.value(metadata i64 %596, i64 0, metadata !1329, metadata !598), !dbg !1467
  br label %123, !dbg !2048, !llvm.loop !2049

; <label>:597:                                    ; preds = %133, %135
  %598 = phi i64 [ %124, %133 ], [ -1, %135 ]
  %599 = icmp eq i64 %125, 0, !dbg !2052
  %600 = and i1 %114, %599, !dbg !2054
  %601 = xor i1 %600, true, !dbg !2054
  %602 = or i1 %112, %601, !dbg !2054
  br i1 %602, label %603, label %648, !dbg !2054

; <label>:603:                                    ; preds = %597
  %604 = and i1 %114, %112, !dbg !2055
  %605 = xor i1 %604, true, !dbg !2055
  %606 = and i8 %129, 1, !dbg !2057
  %607 = icmp eq i8 %606, 0, !dbg !2057
  %608 = or i1 %607, %605, !dbg !2055
  br i1 %608, label %618, label %609, !dbg !2055

; <label>:609:                                    ; preds = %603
  %610 = and i8 %130, 1, !dbg !2059
  %611 = icmp eq i8 %610, 0, !dbg !2059
  br i1 %611, label %614, label %612, !dbg !2062

; <label>:612:                                    ; preds = %609
  %613 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %126, i8* %2, i64 %598, i32 5, i32 %5, i32* %6, i8* %97, i8* %98), !dbg !2063
  br label %659, !dbg !2064

; <label>:614:                                    ; preds = %609
  %615 = icmp eq i64 %131, 0, !dbg !2065
  %616 = icmp ne i64 %126, 0, !dbg !2067
  %617 = and i1 %616, %615, !dbg !2069
  br i1 %617, label %27, label %618, !dbg !2069

; <label>:618:                                    ; preds = %603, %614
  %619 = icmp ne i8* %100, null, !dbg !2070
  %620 = and i1 %619, %112, !dbg !2072
  br i1 %620, label %621, label %638, !dbg !2072

; <label>:621:                                    ; preds = %618
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !1332, metadata !598), !dbg !1394
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1330, metadata !598), !dbg !1392
  %622 = load i8, i8* %100, align 1, !dbg !2073, !tbaa !765
  %623 = icmp eq i8 %622, 0, !dbg !2077
  br i1 %623, label %638, label %624, !dbg !2077

; <label>:624:                                    ; preds = %621
  br label %625, !dbg !2079

; <label>:625:                                    ; preds = %624, %632
  %626 = phi i8 [ %635, %632 ], [ %622, %624 ]
  %627 = phi i8* [ %634, %632 ], [ %100, %624 ]
  %628 = phi i64 [ %633, %632 ], [ %125, %624 ]
  %629 = icmp ult i64 %628, %131, !dbg !2079
  br i1 %629, label %630, label %632, !dbg !2083

; <label>:630:                                    ; preds = %625
  %631 = getelementptr inbounds i8, i8* %0, i64 %628, !dbg !2085
  store i8 %626, i8* %631, align 1, !dbg !2085, !tbaa !765
  br label %632, !dbg !2085

; <label>:632:                                    ; preds = %630, %625
  %633 = add i64 %628, 1, !dbg !2087
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !1330, metadata !598), !dbg !1392
  %634 = getelementptr inbounds i8, i8* %627, i64 1, !dbg !2089
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !1332, metadata !598), !dbg !1394
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !1332, metadata !598), !dbg !1394
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !1330, metadata !598), !dbg !1392
  %635 = load i8, i8* %634, align 1, !dbg !2073, !tbaa !765
  %636 = icmp eq i8 %635, 0, !dbg !2077
  br i1 %636, label %637, label %625, !dbg !2077, !llvm.loop !2091

; <label>:637:                                    ; preds = %632
  br label %638, !dbg !1392

; <label>:638:                                    ; preds = %637, %621, %618
  %639 = phi i64 [ %125, %618 ], [ %125, %621 ], [ %633, %637 ]
  call void @llvm.dbg.value(metadata i64 %639, i64 0, metadata !1330, metadata !598), !dbg !1392
  %640 = icmp ult i64 %639, %131, !dbg !2094
  br i1 %640, label %641, label %659, !dbg !2096

; <label>:641:                                    ; preds = %638
  %642 = getelementptr inbounds i8, i8* %0, i64 %639, !dbg !2097
  store i8 0, i8* %642, align 1, !dbg !2098, !tbaa !765
  br label %659, !dbg !2097

; <label>:643:                                    ; preds = %386
  br label %649, !dbg !1384

; <label>:644:                                    ; preds = %148, %161, %211, %225, %253, %255, %273, %276, %503
  %645 = phi i32 [ %96, %148 ], [ %96, %161 ], [ 2, %211 ], [ 5, %225 ], [ 2, %253 ], [ 2, %255 ], [ 2, %273 ], [ 2, %276 ], [ %96, %503 ]
  %646 = phi i64 [ %146, %148 ], [ %156, %161 ], [ %156, %211 ], [ %156, %225 ], [ %156, %253 ], [ %156, %255 ], [ %156, %273 ], [ %156, %276 ], [ %507, %503 ]
  %647 = phi i64 [ %131, %148 ], [ %131, %161 ], [ %131, %211 ], [ %131, %225 ], [ %131, %253 ], [ %131, %255 ], [ %131, %273 ], [ %131, %276 ], [ %512, %503 ]
  br label %649, !dbg !1384

; <label>:648:                                    ; preds = %597
  br label %649, !dbg !1384

; <label>:649:                                    ; preds = %648, %644, %643, %367
  %650 = phi i32 [ 2, %367 ], [ %96, %643 ], [ %645, %644 ], [ %96, %648 ]
  %651 = phi i64 [ %313, %367 ], [ %369, %643 ], [ %646, %644 ], [ %598, %648 ]
  %652 = phi i64 [ %131, %367 ], [ %131, %643 ], [ %647, %644 ], [ %131, %648 ]
  call void @llvm.dbg.value(metadata i64 %652, i64 0, metadata !1321, metadata !598), !dbg !1384
  call void @llvm.dbg.value(metadata i64 %651, i64 0, metadata !1323, metadata !598), !dbg !1386
  %653 = icmp ne i32 %650, 2, !dbg !2099
  %654 = icmp eq i8 %104, 0, !dbg !2101
  %655 = or i1 %653, %654, !dbg !2103
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !1324, metadata !598), !dbg !1387
  %656 = select i1 %655, i32 %650, i32 4, !dbg !2103
  call void @llvm.dbg.value(metadata i32 %656, i64 0, metadata !1324, metadata !598), !dbg !1387
  %657 = and i32 %5, -3, !dbg !2104
  %658 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %652, i8* %2, i64 %651, i32 %656, i32 %657, i32* null, i8* %97, i8* %98), !dbg !2105
  br label %659, !dbg !2106

; <label>:659:                                    ; preds = %638, %641, %649, %612
  %660 = phi i64 [ %658, %649 ], [ %613, %612 ], [ %639, %641 ], [ %639, %638 ]
  ret i64 %660, !dbg !2107
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !2108 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2112, metadata !598), !dbg !2116
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2113, metadata !598), !dbg !2117
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #9, !dbg !2118
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2114, metadata !598), !dbg !2119
  %4 = icmp eq i8* %3, %0, !dbg !2120
  br i1 %4, label %5, label %75, !dbg !2122

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #9, !dbg !2123
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !2115, metadata !598), !dbg !2124
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2125, metadata !598), !dbg !2141
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2139, metadata !598), !dbg !2144
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2140, metadata !598), !dbg !2145
  %7 = load i8, i8* %6, align 1, !tbaa !765
  %8 = sext i8 %7 to i32
  %9 = and i32 %8, -33, !dbg !2146
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !2146

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2149, metadata !598), !dbg !2163
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2161, metadata !598), !dbg !2167
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2162, metadata !598), !dbg !2168
  %11 = getelementptr inbounds i8, i8* %6, i64 1
  %12 = load i8, i8* %11, align 1, !tbaa !765
  %13 = sext i8 %12 to i32
  %14 = and i32 %13, -33, !dbg !2169
  %15 = icmp eq i32 %14, 84, !dbg !2169
  br i1 %15, label %16, label %72, !dbg !2169

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2172, metadata !598), !dbg !2185
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2183, metadata !598), !dbg !2189
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2184, metadata !598), !dbg !2190
  %17 = getelementptr inbounds i8, i8* %6, i64 2
  %18 = load i8, i8* %17, align 1, !tbaa !765
  %19 = sext i8 %18 to i32
  %20 = and i32 %19, -33, !dbg !2191
  %21 = icmp eq i32 %20, 70, !dbg !2191
  br i1 %21, label %22, label %72, !dbg !2191

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2194, metadata !598), !dbg !2206
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2204, metadata !598), !dbg !2210
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2205, metadata !598), !dbg !2211
  %23 = getelementptr inbounds i8, i8* %6, i64 3
  %24 = load i8, i8* %23, align 1, !tbaa !765
  %25 = icmp eq i8 %24, 45, !dbg !2212
  br i1 %25, label %26, label %72, !dbg !2215

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2217, metadata !598), !dbg !2228
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2226, metadata !598), !dbg !2232
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2227, metadata !598), !dbg !2233
  %27 = getelementptr inbounds i8, i8* %6, i64 4
  %28 = load i8, i8* %27, align 1, !tbaa !765
  %29 = icmp eq i8 %28, 56, !dbg !2234
  br i1 %29, label %30, label %72, !dbg !2237

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2239, metadata !598), !dbg !2249
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2247, metadata !598), !dbg !2253
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2248, metadata !598), !dbg !2254
  %31 = getelementptr inbounds i8, i8* %6, i64 5
  %32 = load i8, i8* %31, align 1, !tbaa !765
  %33 = icmp eq i8 %32, 0, !dbg !2255
  br i1 %33, label %34, label %72, !dbg !2258

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !2260, !tbaa !765
  %36 = icmp eq i8 %35, 96, !dbg !2261
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.54, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.55, i64 0, i64 0), !dbg !2260
  br label %75, !dbg !2262

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2149, metadata !598), !dbg !2263
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2161, metadata !598), !dbg !2267
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2162, metadata !598), !dbg !2268
  %39 = getelementptr inbounds i8, i8* %6, i64 1
  %40 = load i8, i8* %39, align 1, !tbaa !765
  %41 = sext i8 %40 to i32
  %42 = and i32 %41, -33, !dbg !2269
  %43 = icmp eq i32 %42, 66, !dbg !2269
  br i1 %43, label %44, label %72, !dbg !2269

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2172, metadata !598), !dbg !2270
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2183, metadata !598), !dbg !2272
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2184, metadata !598), !dbg !2273
  %45 = getelementptr inbounds i8, i8* %6, i64 2
  %46 = load i8, i8* %45, align 1, !tbaa !765
  %47 = icmp eq i8 %46, 49, !dbg !2274
  br i1 %47, label %48, label %72, !dbg !2276

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2194, metadata !598), !dbg !2278
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2204, metadata !598), !dbg !2280
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2205, metadata !598), !dbg !2281
  %49 = getelementptr inbounds i8, i8* %6, i64 3
  %50 = load i8, i8* %49, align 1, !tbaa !765
  %51 = icmp eq i8 %50, 56, !dbg !2282
  br i1 %51, label %52, label %72, !dbg !2283

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2217, metadata !598), !dbg !2284
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2226, metadata !598), !dbg !2286
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2227, metadata !598), !dbg !2287
  %53 = getelementptr inbounds i8, i8* %6, i64 4
  %54 = load i8, i8* %53, align 1, !tbaa !765
  %55 = icmp eq i8 %54, 48, !dbg !2288
  br i1 %55, label %56, label %72, !dbg !2289

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2239, metadata !598), !dbg !2290
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2247, metadata !598), !dbg !2292
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2248, metadata !598), !dbg !2293
  %57 = getelementptr inbounds i8, i8* %6, i64 5
  %58 = load i8, i8* %57, align 1, !tbaa !765
  %59 = icmp eq i8 %58, 51, !dbg !2294
  br i1 %59, label %60, label %72, !dbg !2295

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2296, metadata !598), !dbg !2305
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2303, metadata !598), !dbg !2309
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2304, metadata !598), !dbg !2310
  %61 = getelementptr inbounds i8, i8* %6, i64 6
  %62 = load i8, i8* %61, align 1, !tbaa !765
  %63 = icmp eq i8 %62, 48, !dbg !2311
  br i1 %63, label %64, label %72, !dbg !2314

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2316, metadata !598), !dbg !2324
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2322, metadata !598), !dbg !2328
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2323, metadata !598), !dbg !2329
  %65 = getelementptr inbounds i8, i8* %6, i64 7
  %66 = load i8, i8* %65, align 1, !tbaa !765
  %67 = icmp eq i8 %66, 0, !dbg !2330
  br i1 %67, label %68, label %72, !dbg !2333

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !2334, !tbaa !765
  %70 = icmp eq i8 %69, 96, !dbg !2335
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), !dbg !2334
  br label %75, !dbg !2336

; <label>:72:                                     ; preds = %5, %30, %26, %22, %16, %10, %64, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !2337
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.53, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.52, i64 0, i64 0), !dbg !2338
  br label %75, !dbg !2339

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !2340
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
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2341 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2345, metadata !598), !dbg !2348
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2346, metadata !598), !dbg !2349
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2347, metadata !598), !dbg !2350
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2351, metadata !598) #9, !dbg !2364
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2356, metadata !598) #9, !dbg !2366
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !2357, metadata !598) #9, !dbg !2367
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2358, metadata !598) #9, !dbg !2368
  %4 = icmp ne %struct.quoting_options* %2, null, !dbg !2369
  %5 = select i1 %4, %struct.quoting_options* %2, %struct.quoting_options* @default_quoting_options, !dbg !2369
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2359, metadata !598) #9, !dbg !2370
  %6 = tail call i32* @__errno_location() #1, !dbg !2371
  %7 = load i32, i32* %6, align 4, !dbg !2371, !tbaa !694
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !2360, metadata !598) #9, !dbg !2372
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2373
  %9 = load i32, i32* %8, align 4, !dbg !2373, !tbaa !1252
  %10 = or i32 %9, 1, !dbg !2374
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2361, metadata !598) #9, !dbg !2375
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2376
  %12 = load i32, i32* %11, align 8, !dbg !2376, !tbaa !1190
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2377
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2378
  %15 = load i8*, i8** %14, align 8, !dbg !2378, !tbaa !1279
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2379
  %17 = load i8*, i8** %16, align 8, !dbg !2379, !tbaa !1282
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #9, !dbg !2380
  %19 = add i64 %18, 1, !dbg !2381
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2362, metadata !598) #9, !dbg !2382
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2383, metadata !598) #9, !dbg !2388
  %20 = tail call noalias i8* @xmalloc(i64 %19) #9, !dbg !2390
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !2363, metadata !598) #9, !dbg !2391
  %21 = load i32, i32* %11, align 8, !dbg !2392, !tbaa !1190
  %22 = load i8*, i8** %14, align 8, !dbg !2393, !tbaa !1279
  %23 = load i8*, i8** %16, align 8, !dbg !2394, !tbaa !1282
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #9, !dbg !2395
  store i32 %7, i32* %6, align 4, !dbg !2396, !tbaa !694
  ret i8* %20, !dbg !2397
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2352 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2351, metadata !598), !dbg !2398
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2356, metadata !598), !dbg !2399
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !2357, metadata !598), !dbg !2400
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2358, metadata !598), !dbg !2401
  %5 = icmp ne %struct.quoting_options* %3, null, !dbg !2402
  %6 = select i1 %5, %struct.quoting_options* %3, %struct.quoting_options* @default_quoting_options, !dbg !2402
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2359, metadata !598), !dbg !2403
  %7 = tail call i32* @__errno_location() #1, !dbg !2404
  %8 = load i32, i32* %7, align 4, !dbg !2404, !tbaa !694
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !2360, metadata !598), !dbg !2405
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2406
  %10 = load i32, i32* %9, align 4, !dbg !2406, !tbaa !1252
  %11 = icmp ne i64* %2, null, !dbg !2407
  %12 = xor i1 %11, true, !dbg !2407
  %13 = zext i1 %12 to i32, !dbg !2407
  %14 = or i32 %10, %13, !dbg !2408
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !2361, metadata !598), !dbg !2409
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2410
  %16 = load i32, i32* %15, align 8, !dbg !2410, !tbaa !1190
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2411
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2412
  %19 = load i8*, i8** %18, align 8, !dbg !2412, !tbaa !1279
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2413
  %21 = load i8*, i8** %20, align 8, !dbg !2413, !tbaa !1282
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !2414
  %23 = add i64 %22, 1, !dbg !2415
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2362, metadata !598), !dbg !2416
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2383, metadata !598) #9, !dbg !2417
  %24 = tail call noalias i8* @xmalloc(i64 %23) #9, !dbg !2419
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !2363, metadata !598), !dbg !2420
  %25 = load i32, i32* %15, align 8, !dbg !2421, !tbaa !1190
  %26 = load i8*, i8** %18, align 8, !dbg !2422, !tbaa !1279
  %27 = load i8*, i8** %20, align 8, !dbg !2423, !tbaa !1282
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !2424
  store i32 %8, i32* %7, align 4, !dbg !2425, !tbaa !694
  br i1 %11, label %29, label %30, !dbg !2426

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2427, !tbaa !2429
  br label %30, !dbg !2430

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !2431
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !2432 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2436, !tbaa !606
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !2434, metadata !598), !dbg !2437
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2435, metadata !598), !dbg !2438
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2435, metadata !598), !dbg !2438
  %2 = load i32, i32* @nslots, align 4, !dbg !2439, !tbaa !694
  %3 = icmp sgt i32 %2, 1, !dbg !2443
  br i1 %3, label %4, label %14, !dbg !2444

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !2446

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !2446
  %8 = load i8*, i8** %7, align 8, !dbg !2446, !tbaa !2447
  tail call void @free(i8* %8) #9, !dbg !2449
  %9 = add nuw i64 %6, 1, !dbg !2450
  %10 = load i32, i32* @nslots, align 4, !dbg !2439, !tbaa !694
  %11 = sext i32 %10 to i64, !dbg !2443
  %12 = icmp slt i64 %9, %11, !dbg !2443
  br i1 %12, label %5, label %13, !dbg !2444, !llvm.loop !2452

; <label>:13:                                     ; preds = %5
  br label %14, !dbg !2455

; <label>:14:                                     ; preds = %13, %0
  %15 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2455
  %16 = load i8*, i8** %15, align 8, !dbg !2455, !tbaa !2447
  %17 = icmp eq i8* %16, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2457
  br i1 %17, label %19, label %18, !dbg !2458

; <label>:18:                                     ; preds = %14
  tail call void @free(i8* %16) #9, !dbg !2459
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2461, !tbaa !2462
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2463, !tbaa !2447
  br label %19, !dbg !2464

; <label>:19:                                     ; preds = %14, %18
  %20 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2465
  br i1 %20, label %23, label %21, !dbg !2467

; <label>:21:                                     ; preds = %19
  %22 = bitcast %struct.slotvec* %1 to i8*, !dbg !2468
  tail call void @free(i8* %22) #9, !dbg !2470
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2471, !tbaa !606
  br label %23, !dbg !2472

; <label>:23:                                     ; preds = %19, %21
  store i32 1, i32* @nslots, align 4, !dbg !2473, !tbaa !694
  ret void, !dbg !2474
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !2475 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2479, metadata !598), !dbg !2481
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2480, metadata !598), !dbg !2482
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2483
  ret i8* %3, !dbg !2484
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !2485 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2489, metadata !598), !dbg !2503
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2490, metadata !598), !dbg !2504
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2491, metadata !598), !dbg !2505
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2492, metadata !598), !dbg !2506
  %5 = tail call i32* @__errno_location() #1, !dbg !2507
  %6 = load i32, i32* %5, align 4, !dbg !2507, !tbaa !694
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !2493, metadata !598), !dbg !2508
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2509, !tbaa !606
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !2494, metadata !598), !dbg !2510
  %8 = icmp slt i32 %0, 0, !dbg !2511
  br i1 %8, label %9, label %10, !dbg !2513

; <label>:9:                                      ; preds = %4
  tail call void @abort() #14, !dbg !2514
  unreachable, !dbg !2514

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2515, !tbaa !694
  %12 = icmp sgt i32 %11, %0, !dbg !2516
  br i1 %12, label %34, label %13, !dbg !2517

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2518
  %15 = icmp ugt i32 %0, 2147483646, !dbg !2519
  br i1 %15, label %16, label %17, !dbg !2521

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !2522
  unreachable, !dbg !2522

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !2523
  %19 = select i1 %14, i8* null, i8* %18, !dbg !2523
  %20 = add nsw i32 %0, 1, !dbg !2525
  %21 = sext i32 %20 to i64, !dbg !2526
  %22 = shl nsw i64 %21, 4, !dbg !2527
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #9, !dbg !2528
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2528
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !2494, metadata !598), !dbg !2510
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2529, !tbaa !606
  br i1 %14, label %25, label %26, !dbg !2530

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !2531, !tbaa.struct !2533
  br label %26, !dbg !2534

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2535, !tbaa !694
  %28 = sext i32 %27 to i64, !dbg !2536
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2536
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2537
  %31 = sub nsw i32 %20, %27, !dbg !2538
  %32 = sext i32 %31 to i64, !dbg !2539
  %33 = shl nsw i64 %32, 4, !dbg !2540
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !2537
  store i32 %20, i32* @nslots, align 4, !dbg !2541, !tbaa !694
  br label %34, !dbg !2542

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !2494, metadata !598), !dbg !2510
  %36 = sext i32 %0 to i64, !dbg !2543
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2544
  %38 = load i64, i64* %37, align 8, !dbg !2544, !tbaa !2462
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !2498, metadata !598), !dbg !2545
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2546
  %40 = load i8*, i8** %39, align 8, !dbg !2546, !tbaa !2447
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !2500, metadata !598), !dbg !2547
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2548
  %42 = load i32, i32* %41, align 4, !dbg !2548, !tbaa !1252
  %43 = or i32 %42, 1, !dbg !2549
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !2501, metadata !598), !dbg !2550
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2551
  %45 = load i32, i32* %44, align 8, !dbg !2551, !tbaa !1190
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2552
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2553
  %48 = load i8*, i8** %47, align 8, !dbg !2553, !tbaa !1279
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2554
  %50 = load i8*, i8** %49, align 8, !dbg !2554, !tbaa !1282
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !2555
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !2502, metadata !598), !dbg !2556
  %52 = icmp ugt i64 %38, %51, !dbg !2557
  br i1 %52, label %63, label %53, !dbg !2559

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !2560
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2498, metadata !598), !dbg !2545
  store i64 %54, i64* %37, align 8, !dbg !2562, !tbaa !2462
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2563
  br i1 %55, label %57, label %56, !dbg !2565

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #9, !dbg !2566
  br label %57, !dbg !2566

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2383, metadata !598) #9, !dbg !2567
  %58 = tail call noalias i8* @xmalloc(i64 %54) #9, !dbg !2569
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !2500, metadata !598), !dbg !2547
  store i8* %58, i8** %39, align 8, !dbg !2570, !tbaa !2447
  %59 = load i32, i32* %44, align 8, !dbg !2571, !tbaa !1190
  %60 = load i8*, i8** %47, align 8, !dbg !2572, !tbaa !1279
  %61 = load i8*, i8** %49, align 8, !dbg !2573, !tbaa !1282
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !2574
  br label %63, !dbg !2575

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !2500, metadata !598), !dbg !2547
  store i32 %6, i32* %5, align 4, !dbg !2576, !tbaa !694
  ret i8* %64, !dbg !2577
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #8

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #8

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2578 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2582, metadata !598), !dbg !2585
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2583, metadata !598), !dbg !2586
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2584, metadata !598), !dbg !2587
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2588
  ret i8* %4, !dbg !2589
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !2590 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2594, metadata !598), !dbg !2595
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2479, metadata !598) #9, !dbg !2596
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2480, metadata !598) #9, !dbg !2598
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #9, !dbg !2599
  ret i8* %2, !dbg !2600
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !2601 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2605, metadata !598), !dbg !2607
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2606, metadata !598), !dbg !2608
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2582, metadata !598) #9, !dbg !2609
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2583, metadata !598) #9, !dbg !2611
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2584, metadata !598) #9, !dbg !2612
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #9, !dbg !2613
  ret i8* %3, !dbg !2614
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !2615 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2623, metadata !2629), !dbg !2630
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2619, metadata !598), !dbg !2632
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2620, metadata !598), !dbg !2633
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2621, metadata !598), !dbg !2634
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2635
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #9, !dbg !2635
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2622, metadata !1740), !dbg !2636
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2628, metadata !598) #9, !dbg !2637
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2638
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !2638
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2623, metadata !598) #9, !dbg !2630
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2623, metadata !2639) #9, !dbg !2630
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2630
  %8 = icmp eq i32 %1, 10, !dbg !2640
  br i1 %8, label %9, label %10, !dbg !2642

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14, !dbg !2643, !noalias !2644
  unreachable, !dbg !2643

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2623, metadata !2639) #9, !dbg !2630
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2647
  store i32 %1, i32* %11, align 8, !dbg !2647, !alias.scope !2644
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2647
  %13 = bitcast i32* %12 to i8*, !dbg !2647
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #9, !dbg !2647
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !2648
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2622, metadata !1740), !dbg !2636
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2649
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #9, !dbg !2650
  ret i8* %14, !dbg !2651
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !2652 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2623, metadata !2629), !dbg !2661
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2656, metadata !598), !dbg !2663
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2657, metadata !598), !dbg !2664
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2658, metadata !598), !dbg !2665
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2659, metadata !598), !dbg !2666
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2667
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #9, !dbg !2667
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2660, metadata !1740), !dbg !2668
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2628, metadata !598) #9, !dbg !2669
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2670
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !2670
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2623, metadata !598) #9, !dbg !2661
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2623, metadata !2639) #9, !dbg !2661
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2661
  %9 = icmp eq i32 %1, 10, !dbg !2671
  br i1 %9, label %10, label %11, !dbg !2672

; <label>:10:                                     ; preds = %4
  tail call void @abort() #14, !dbg !2673, !noalias !2674
  unreachable, !dbg !2673

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2623, metadata !2639) #9, !dbg !2661
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2677
  store i32 %1, i32* %12, align 8, !dbg !2677, !alias.scope !2674
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2677
  %14 = bitcast i32* %13 to i8*, !dbg !2677
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #9, !dbg !2677
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !2678
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2660, metadata !1740), !dbg !2668
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !2679
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #9, !dbg !2680
  ret i8* %15, !dbg !2681
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !2682 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !2623, metadata !2629), !dbg !2688
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2686, metadata !598), !dbg !2691
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2687, metadata !598), !dbg !2692
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2619, metadata !598) #9, !dbg !2693
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2620, metadata !598) #9, !dbg !2694
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2621, metadata !598) #9, !dbg !2695
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2696
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #9, !dbg !2696
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2622, metadata !1740) #9, !dbg !2697
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2628, metadata !598) #9, !dbg !2698
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !2699
  call void @llvm.lifetime.start(i64 52, i8* nonnull %6), !dbg !2699
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2623, metadata !598) #9, !dbg !2688
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2623, metadata !2639) #9, !dbg !2688
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !2688
  %7 = icmp eq i32 %0, 10, !dbg !2700
  br i1 %7, label %8, label %9, !dbg !2701

; <label>:8:                                      ; preds = %2
  tail call void @abort() #14, !dbg !2702, !noalias !2703
  unreachable, !dbg !2702

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2623, metadata !2639) #9, !dbg !2688
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2706
  store i32 %0, i32* %10, align 8, !dbg !2706, !alias.scope !2703
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2706
  %12 = bitcast i32* %11 to i8*, !dbg !2706
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #9, !dbg !2706
  call void @llvm.lifetime.end(i64 52, i8* nonnull %6), !dbg !2707
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2622, metadata !1740) #9, !dbg !2697
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #9, !dbg !2708
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #9, !dbg !2709
  ret i8* %13, !dbg !2710
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2711 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2623, metadata !2629), !dbg !2718
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2715, metadata !598), !dbg !2721
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2716, metadata !598), !dbg !2722
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2717, metadata !598), !dbg !2723
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2656, metadata !598) #9, !dbg !2724
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2657, metadata !598) #9, !dbg !2725
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2658, metadata !598) #9, !dbg !2726
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2659, metadata !598) #9, !dbg !2727
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2728
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #9, !dbg !2728
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2660, metadata !1740) #9, !dbg !2729
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2628, metadata !598) #9, !dbg !2730
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2731
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !2731
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2623, metadata !598) #9, !dbg !2718
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2623, metadata !2639) #9, !dbg !2718
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2718
  %8 = icmp eq i32 %0, 10, !dbg !2732
  br i1 %8, label %9, label %10, !dbg !2733

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14, !dbg !2734, !noalias !2735
  unreachable, !dbg !2734

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2623, metadata !2639) #9, !dbg !2718
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2738
  store i32 %0, i32* %11, align 8, !dbg !2738, !alias.scope !2735
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2738
  %13 = bitcast i32* %12 to i8*, !dbg !2738
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #9, !dbg !2738
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !2739
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2660, metadata !1740) #9, !dbg !2729
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #9, !dbg !2740
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #9, !dbg !2741
  ret i8* %14, !dbg !2742
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !2743 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2747, metadata !598), !dbg !2751
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2748, metadata !598), !dbg !2752
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2749, metadata !598), !dbg !2753
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2754
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #9, !dbg !2754
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2755, !tbaa.struct !2756
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2750, metadata !1740), !dbg !2757
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1210, metadata !598), !dbg !2758
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1211, metadata !598), !dbg !2760
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1212, metadata !598), !dbg !2761
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1213, metadata !598), !dbg !2762
  %6 = lshr i8 %2, 5, !dbg !2763
  %7 = zext i8 %6 to i64, !dbg !2763
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2764
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1214, metadata !598), !dbg !2765
  %9 = and i8 %2, 31, !dbg !2766
  %10 = zext i8 %9 to i32, !dbg !2767
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1216, metadata !598), !dbg !2768
  %11 = load i32, i32* %8, align 4, !dbg !2769, !tbaa !694
  %12 = lshr i32 %11, %10, !dbg !2770
  %13 = and i32 %12, 1, !dbg !2771
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1217, metadata !598), !dbg !2772
  %14 = xor i32 %13, 1, !dbg !2773
  %15 = shl i32 %14, %10, !dbg !2774
  %16 = xor i32 %15, %11, !dbg !2775
  store i32 %16, i32* %8, align 4, !dbg !2775, !tbaa !694
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2750, metadata !1740), !dbg !2757
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2776
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #9, !dbg !2777
  ret i8* %17, !dbg !2778
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !2779 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2783, metadata !598), !dbg !2785
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2784, metadata !598), !dbg !2786
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2747, metadata !598) #9, !dbg !2787
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2748, metadata !598) #9, !dbg !2789
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2749, metadata !598) #9, !dbg !2790
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2791
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #9, !dbg !2791
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9, !dbg !2792, !tbaa.struct !2756
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2750, metadata !1740) #9, !dbg !2793
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1210, metadata !598) #9, !dbg !2794
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1211, metadata !598) #9, !dbg !2796
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1212, metadata !598) #9, !dbg !2797
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1213, metadata !598) #9, !dbg !2798
  %5 = lshr i8 %1, 5, !dbg !2799
  %6 = zext i8 %5 to i64, !dbg !2799
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2800
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !1214, metadata !598) #9, !dbg !2801
  %8 = and i8 %1, 31, !dbg !2802
  %9 = zext i8 %8 to i32, !dbg !2803
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1216, metadata !598) #9, !dbg !2804
  %10 = load i32, i32* %7, align 4, !dbg !2805, !tbaa !694
  %11 = lshr i32 %10, %9, !dbg !2806
  %12 = and i32 %11, 1, !dbg !2807
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !1217, metadata !598) #9, !dbg !2808
  %13 = xor i32 %12, 1, !dbg !2809
  %14 = shl i32 %13, %9, !dbg !2810
  %15 = xor i32 %14, %10, !dbg !2811
  store i32 %15, i32* %7, align 4, !dbg !2811, !tbaa !694
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2750, metadata !1740) #9, !dbg !2793
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #9, !dbg !2812
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #9, !dbg !2813
  ret i8* %16, !dbg !2814
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !2815 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2817, metadata !598), !dbg !2818
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2783, metadata !598) #9, !dbg !2819
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2784, metadata !598) #9, !dbg !2821
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2747, metadata !598) #9, !dbg !2822
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2748, metadata !598) #9, !dbg !2824
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2749, metadata !598) #9, !dbg !2825
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2826
  call void @llvm.lifetime.start(i64 56, i8* nonnull %3) #9, !dbg !2826
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9, !dbg !2827, !tbaa.struct !2756
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2750, metadata !1740) #9, !dbg !2828
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1210, metadata !598) #9, !dbg !2829
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1211, metadata !598) #9, !dbg !2831
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1212, metadata !598) #9, !dbg !2832
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1213, metadata !598) #9, !dbg !2833
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2834
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !1214, metadata !598) #9, !dbg !2835
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1216, metadata !598) #9, !dbg !2836
  %5 = load i32, i32* %4, align 4, !dbg !2837, !tbaa !694
  %6 = or i32 %5, 67108864, !dbg !2838
  store i32 %6, i32* %4, align 4, !dbg !2838, !tbaa !694
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2750, metadata !1740) #9, !dbg !2828
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #9, !dbg !2839
  call void @llvm.lifetime.end(i64 56, i8* nonnull %3) #9, !dbg !2840
  ret i8* %7, !dbg !2841
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !2842 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2844, metadata !598), !dbg !2846
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2845, metadata !598), !dbg !2847
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2747, metadata !598) #9, !dbg !2848
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2748, metadata !598) #9, !dbg !2850
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2749, metadata !598) #9, !dbg !2851
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2852
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #9, !dbg !2852
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9, !dbg !2853, !tbaa.struct !2756
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2750, metadata !1740) #9, !dbg !2854
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1210, metadata !598) #9, !dbg !2855
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1211, metadata !598) #9, !dbg !2857
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1212, metadata !598) #9, !dbg !2858
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1213, metadata !598) #9, !dbg !2859
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2860
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !1214, metadata !598) #9, !dbg !2861
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1216, metadata !598) #9, !dbg !2862
  %6 = load i32, i32* %5, align 4, !dbg !2863, !tbaa !694
  %7 = or i32 %6, 67108864, !dbg !2864
  store i32 %7, i32* %5, align 4, !dbg !2864, !tbaa !694
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2750, metadata !1740) #9, !dbg !2854
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #9, !dbg !2865
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #9, !dbg !2866
  ret i8* %8, !dbg !2867
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !2868 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2623, metadata !2629), !dbg !2874
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2870, metadata !598), !dbg !2876
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2871, metadata !598), !dbg !2877
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2872, metadata !598), !dbg !2878
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2879
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #9, !dbg !2879
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2628, metadata !598) #9, !dbg !2880
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2881
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !2881
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2623, metadata !598) #9, !dbg !2874
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2623, metadata !2639) #9, !dbg !2874
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2874
  %9 = icmp eq i32 %1, 10, !dbg !2882
  br i1 %9, label %10, label %11, !dbg !2883

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !2884, !noalias !2885
  unreachable, !dbg !2884

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2623, metadata !2639) #9, !dbg !2874
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !2888
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !2888
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !2889
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2890
  store i32 %1, i32* %13, align 8, !dbg !2890
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2890
  %15 = bitcast i32* %14 to i8*, !dbg !2890
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !2890
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2873, metadata !1740), !dbg !2891
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1210, metadata !598), !dbg !2892
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1211, metadata !598), !dbg !2894
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1212, metadata !598), !dbg !2895
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1213, metadata !598), !dbg !2896
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !2897
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !1214, metadata !598), !dbg !2898
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1216, metadata !598), !dbg !2899
  %17 = load i32, i32* %16, align 4, !dbg !2900, !tbaa !694
  %18 = or i32 %17, 67108864, !dbg !2901
  store i32 %18, i32* %16, align 4, !dbg !2901, !tbaa !694
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2873, metadata !1740), !dbg !2891
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2902
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #9, !dbg !2903
  ret i8* %19, !dbg !2904
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !2905 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2909, metadata !598), !dbg !2913
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2910, metadata !598), !dbg !2914
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2911, metadata !598), !dbg !2915
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2912, metadata !598), !dbg !2916
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2917, metadata !598) #9, !dbg !2927
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2922, metadata !598) #9, !dbg !2929
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2923, metadata !598) #9, !dbg !2930
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2924, metadata !598) #9, !dbg !2931
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2925, metadata !598) #9, !dbg !2932
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2933
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #9, !dbg !2933
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9, !dbg !2934, !tbaa.struct !2756
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2926, metadata !1740) #9, !dbg !2935
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1260, metadata !598) #9, !dbg !2936
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1261, metadata !598) #9, !dbg !2938
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1262, metadata !598) #9, !dbg !2939
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1260, metadata !598) #9, !dbg !2936
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1260, metadata !598) #9, !dbg !2936
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2940
  store i32 10, i32* %7, align 8, !dbg !2941, !tbaa !1190
  %8 = icmp ne i8* %1, null, !dbg !2942
  %9 = icmp ne i8* %2, null, !dbg !2943
  %10 = and i1 %8, %9, !dbg !2944
  br i1 %10, label %12, label %11, !dbg !2944

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14, !dbg !2945
  unreachable, !dbg !2945

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2946
  store i8* %1, i8** %13, align 8, !dbg !2947, !tbaa !1279
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2948
  store i8* %2, i8** %14, align 8, !dbg !2949, !tbaa !1282
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2926, metadata !1740) #9, !dbg !2935
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #9, !dbg !2950
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #9, !dbg !2951
  ret i8* %15, !dbg !2952
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !2918 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2917, metadata !598), !dbg !2953
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2922, metadata !598), !dbg !2954
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2923, metadata !598), !dbg !2955
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2924, metadata !598), !dbg !2956
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !2925, metadata !598), !dbg !2957
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2958
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #9, !dbg !2958
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2959, !tbaa.struct !2756
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2926, metadata !1740), !dbg !2960
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1260, metadata !598) #9, !dbg !2961
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1261, metadata !598) #9, !dbg !2963
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1262, metadata !598) #9, !dbg !2964
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1260, metadata !598) #9, !dbg !2961
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1260, metadata !598) #9, !dbg !2961
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2965
  store i32 10, i32* %8, align 8, !dbg !2966, !tbaa !1190
  %9 = icmp ne i8* %1, null, !dbg !2967
  %10 = icmp ne i8* %2, null, !dbg !2968
  %11 = and i1 %9, %10, !dbg !2969
  br i1 %11, label %13, label %12, !dbg !2969

; <label>:12:                                     ; preds = %5
  tail call void @abort() #14, !dbg !2970
  unreachable, !dbg !2970

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2971
  store i8* %1, i8** %14, align 8, !dbg !2972, !tbaa !1279
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2973
  store i8* %2, i8** %15, align 8, !dbg !2974, !tbaa !1282
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2926, metadata !1740), !dbg !2960
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2975
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #9, !dbg !2976
  ret i8* %16, !dbg !2977
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !2978 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2982, metadata !598), !dbg !2985
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2983, metadata !598), !dbg !2986
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2984, metadata !598), !dbg !2987
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2909, metadata !598) #9, !dbg !2988
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2910, metadata !598) #9, !dbg !2990
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2911, metadata !598) #9, !dbg !2991
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2912, metadata !598) #9, !dbg !2992
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2917, metadata !598) #9, !dbg !2993
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2922, metadata !598) #9, !dbg !2995
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2923, metadata !598) #9, !dbg !2996
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2924, metadata !598) #9, !dbg !2997
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2925, metadata !598) #9, !dbg !2998
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2999
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #9, !dbg !2999
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9, !dbg !3000, !tbaa.struct !2756
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2926, metadata !1740) #9, !dbg !3001
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1260, metadata !598) #9, !dbg !3002
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1261, metadata !598) #9, !dbg !3004
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1262, metadata !598) #9, !dbg !3005
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1260, metadata !598) #9, !dbg !3002
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1260, metadata !598) #9, !dbg !3002
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3006
  store i32 10, i32* %6, align 8, !dbg !3007, !tbaa !1190
  %7 = icmp ne i8* %0, null, !dbg !3008
  %8 = icmp ne i8* %1, null, !dbg !3009
  %9 = and i1 %7, %8, !dbg !3010
  br i1 %9, label %11, label %10, !dbg !3010

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !3011
  unreachable, !dbg !3011

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3012
  store i8* %0, i8** %12, align 8, !dbg !3013, !tbaa !1279
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3014
  store i8* %1, i8** %13, align 8, !dbg !3015, !tbaa !1282
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2926, metadata !1740) #9, !dbg !3001
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #9, !dbg !3016
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #9, !dbg !3017
  ret i8* %14, !dbg !3018
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !3019 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3023, metadata !598), !dbg !3027
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3024, metadata !598), !dbg !3028
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3025, metadata !598), !dbg !3029
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3026, metadata !598), !dbg !3030
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2917, metadata !598) #9, !dbg !3031
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2922, metadata !598) #9, !dbg !3033
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2923, metadata !598) #9, !dbg !3034
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2924, metadata !598) #9, !dbg !3035
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2925, metadata !598) #9, !dbg !3036
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3037
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #9, !dbg !3037
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9, !dbg !3038, !tbaa.struct !2756
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2926, metadata !1740) #9, !dbg !3039
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1260, metadata !598) #9, !dbg !3040
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1261, metadata !598) #9, !dbg !3042
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1262, metadata !598) #9, !dbg !3043
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1260, metadata !598) #9, !dbg !3040
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1260, metadata !598) #9, !dbg !3040
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3044
  store i32 10, i32* %7, align 8, !dbg !3045, !tbaa !1190
  %8 = icmp ne i8* %0, null, !dbg !3046
  %9 = icmp ne i8* %1, null, !dbg !3047
  %10 = and i1 %8, %9, !dbg !3048
  br i1 %10, label %12, label %11, !dbg !3048

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14, !dbg !3049
  unreachable, !dbg !3049

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3050
  store i8* %0, i8** %13, align 8, !dbg !3051, !tbaa !1279
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3052
  store i8* %1, i8** %14, align 8, !dbg !3053, !tbaa !1282
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2926, metadata !1740) #9, !dbg !3039
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #9, !dbg !3054
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #9, !dbg !3055
  ret i8* %15, !dbg !3056
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3057 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3061, metadata !598), !dbg !3064
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3062, metadata !598), !dbg !3065
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3063, metadata !598), !dbg !3066
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3067
  ret i8* %4, !dbg !3068
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !3069 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3073, metadata !598), !dbg !3075
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3074, metadata !598), !dbg !3076
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3061, metadata !598) #9, !dbg !3077
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3062, metadata !598) #9, !dbg !3079
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3063, metadata !598) #9, !dbg !3080
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #9, !dbg !3081
  ret i8* %3, !dbg !3082
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !3083 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3087, metadata !598), !dbg !3089
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3088, metadata !598), !dbg !3090
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3061, metadata !598) #9, !dbg !3091
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3062, metadata !598) #9, !dbg !3093
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3063, metadata !598) #9, !dbg !3094
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #9, !dbg !3095
  ret i8* %3, !dbg !3096
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !3097 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3101, metadata !598), !dbg !3102
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3087, metadata !598) #9, !dbg !3103
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3088, metadata !598) #9, !dbg !3105
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3061, metadata !598) #9, !dbg !3106
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3062, metadata !598) #9, !dbg !3108
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3063, metadata !598) #9, !dbg !3109
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #9, !dbg !3110
  ret i8* %2, !dbg !3111
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !3112 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3157, metadata !598), !dbg !3163
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3158, metadata !598), !dbg !3164
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3159, metadata !598), !dbg !3165
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3160, metadata !598), !dbg !3166
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3161, metadata !598), !dbg !3167
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !3162, metadata !598), !dbg !3168
  %7 = icmp eq i8* %1, null, !dbg !3169
  br i1 %7, label %10, label %8, !dbg !3171

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.60, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #9, !dbg !3172
  br label %12, !dbg !3172

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.61, i64 0, i64 0), i8* %2, i8* %3) #9, !dbg !3173
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.62, i64 0, i64 0), i32 5) #9, !dbg !3174
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #9, !dbg !3175
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.63, i64 0, i64 0), i32 5) #9, !dbg !3177
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #9, !dbg !3178
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
  ], !dbg !3179

; <label>:17:                                     ; preds = %12
  tail call void @abort() #14, !dbg !3180
  unreachable, !dbg !3180

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.64, i64 0, i64 0), i32 5) #9, !dbg !3182
  %20 = load i8*, i8** %4, align 8, !dbg !3182, !tbaa !606
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #9, !dbg !3183
  br label %146, !dbg !3185

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.65, i64 0, i64 0), i32 5) #9, !dbg !3186
  %24 = load i8*, i8** %4, align 8, !dbg !3186, !tbaa !606
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3186
  %26 = load i8*, i8** %25, align 8, !dbg !3186, !tbaa !606
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #9, !dbg !3187
  br label %146, !dbg !3188

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.66, i64 0, i64 0), i32 5) #9, !dbg !3189
  %30 = load i8*, i8** %4, align 8, !dbg !3189, !tbaa !606
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3189
  %32 = load i8*, i8** %31, align 8, !dbg !3189, !tbaa !606
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3189
  %34 = load i8*, i8** %33, align 8, !dbg !3189, !tbaa !606
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #9, !dbg !3190
  br label %146, !dbg !3191

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.67, i64 0, i64 0), i32 5) #9, !dbg !3192
  %38 = load i8*, i8** %4, align 8, !dbg !3192, !tbaa !606
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3192
  %40 = load i8*, i8** %39, align 8, !dbg !3192, !tbaa !606
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3192
  %42 = load i8*, i8** %41, align 8, !dbg !3192, !tbaa !606
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3192
  %44 = load i8*, i8** %43, align 8, !dbg !3192, !tbaa !606
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #9, !dbg !3193
  br label %146, !dbg !3194

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.68, i64 0, i64 0), i32 5) #9, !dbg !3195
  %48 = load i8*, i8** %4, align 8, !dbg !3195, !tbaa !606
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3195
  %50 = load i8*, i8** %49, align 8, !dbg !3195, !tbaa !606
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3195
  %52 = load i8*, i8** %51, align 8, !dbg !3195, !tbaa !606
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3195
  %54 = load i8*, i8** %53, align 8, !dbg !3195, !tbaa !606
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3195
  %56 = load i8*, i8** %55, align 8, !dbg !3195, !tbaa !606
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #9, !dbg !3196
  br label %146, !dbg !3197

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.69, i64 0, i64 0), i32 5) #9, !dbg !3198
  %60 = load i8*, i8** %4, align 8, !dbg !3198, !tbaa !606
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3198
  %62 = load i8*, i8** %61, align 8, !dbg !3198, !tbaa !606
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3198
  %64 = load i8*, i8** %63, align 8, !dbg !3198, !tbaa !606
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3198
  %66 = load i8*, i8** %65, align 8, !dbg !3198, !tbaa !606
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3198
  %68 = load i8*, i8** %67, align 8, !dbg !3198, !tbaa !606
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3198
  %70 = load i8*, i8** %69, align 8, !dbg !3198, !tbaa !606
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #9, !dbg !3199
  br label %146, !dbg !3200

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.70, i64 0, i64 0), i32 5) #9, !dbg !3201
  %74 = load i8*, i8** %4, align 8, !dbg !3201, !tbaa !606
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3201
  %76 = load i8*, i8** %75, align 8, !dbg !3201, !tbaa !606
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3201
  %78 = load i8*, i8** %77, align 8, !dbg !3201, !tbaa !606
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3201
  %80 = load i8*, i8** %79, align 8, !dbg !3201, !tbaa !606
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3201
  %82 = load i8*, i8** %81, align 8, !dbg !3201, !tbaa !606
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3201
  %84 = load i8*, i8** %83, align 8, !dbg !3201, !tbaa !606
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3201
  %86 = load i8*, i8** %85, align 8, !dbg !3201, !tbaa !606
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #9, !dbg !3202
  br label %146, !dbg !3203

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.71, i64 0, i64 0), i32 5) #9, !dbg !3204
  %90 = load i8*, i8** %4, align 8, !dbg !3204, !tbaa !606
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3204
  %92 = load i8*, i8** %91, align 8, !dbg !3204, !tbaa !606
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3204
  %94 = load i8*, i8** %93, align 8, !dbg !3204, !tbaa !606
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3204
  %96 = load i8*, i8** %95, align 8, !dbg !3204, !tbaa !606
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3204
  %98 = load i8*, i8** %97, align 8, !dbg !3204, !tbaa !606
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3204
  %100 = load i8*, i8** %99, align 8, !dbg !3204, !tbaa !606
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3204
  %102 = load i8*, i8** %101, align 8, !dbg !3204, !tbaa !606
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3204
  %104 = load i8*, i8** %103, align 8, !dbg !3204, !tbaa !606
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #9, !dbg !3205
  br label %146, !dbg !3206

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.72, i64 0, i64 0), i32 5) #9, !dbg !3207
  %108 = load i8*, i8** %4, align 8, !dbg !3207, !tbaa !606
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3207
  %110 = load i8*, i8** %109, align 8, !dbg !3207, !tbaa !606
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3207
  %112 = load i8*, i8** %111, align 8, !dbg !3207, !tbaa !606
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3207
  %114 = load i8*, i8** %113, align 8, !dbg !3207, !tbaa !606
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3207
  %116 = load i8*, i8** %115, align 8, !dbg !3207, !tbaa !606
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3207
  %118 = load i8*, i8** %117, align 8, !dbg !3207, !tbaa !606
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3207
  %120 = load i8*, i8** %119, align 8, !dbg !3207, !tbaa !606
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3207
  %122 = load i8*, i8** %121, align 8, !dbg !3207, !tbaa !606
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3207
  %124 = load i8*, i8** %123, align 8, !dbg !3207, !tbaa !606
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #9, !dbg !3208
  br label %146, !dbg !3209

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.73, i64 0, i64 0), i32 5) #9, !dbg !3210
  %128 = load i8*, i8** %4, align 8, !dbg !3210, !tbaa !606
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3210
  %130 = load i8*, i8** %129, align 8, !dbg !3210, !tbaa !606
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3210
  %132 = load i8*, i8** %131, align 8, !dbg !3210, !tbaa !606
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3210
  %134 = load i8*, i8** %133, align 8, !dbg !3210, !tbaa !606
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3210
  %136 = load i8*, i8** %135, align 8, !dbg !3210, !tbaa !606
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3210
  %138 = load i8*, i8** %137, align 8, !dbg !3210, !tbaa !606
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3210
  %140 = load i8*, i8** %139, align 8, !dbg !3210, !tbaa !606
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3210
  %142 = load i8*, i8** %141, align 8, !dbg !3210, !tbaa !606
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3210
  %144 = load i8*, i8** %143, align 8, !dbg !3210, !tbaa !606
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #9, !dbg !3211
  br label %146, !dbg !3212

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !3213
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !3214 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3218, metadata !598), !dbg !3224
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3219, metadata !598), !dbg !3225
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3220, metadata !598), !dbg !3226
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3221, metadata !598), !dbg !3227
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3222, metadata !598), !dbg !3228
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3223, metadata !598), !dbg !3229
  br label %6, !dbg !3230

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3223, metadata !598), !dbg !3229
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3232
  %9 = load i8*, i8** %8, align 8, !dbg !3232, !tbaa !606
  %10 = icmp eq i8* %9, null, !dbg !3235
  %11 = add i64 %7, 1, !dbg !3237
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !3223, metadata !598), !dbg !3229
  br i1 %10, label %12, label %6, !dbg !3235, !llvm.loop !3239

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3242
  ret void, !dbg !3243
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !3244 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3255, metadata !598), !dbg !3263
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3256, metadata !598), !dbg !3264
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3257, metadata !598), !dbg !3265
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3258, metadata !598), !dbg !3266
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !3259, metadata !598), !dbg !3267
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3268
  call void @llvm.lifetime.start(i64 80, i8* nonnull %7) #9, !dbg !3268
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3261, metadata !598), !dbg !3269
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3260, metadata !598), !dbg !3270
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3260, metadata !598), !dbg !3270
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %11 = load i32, i32* %8, align 8, !dbg !3271
  %12 = icmp ult i32 %11, 41, !dbg !3271
  br i1 %12, label %13, label %18, !dbg !3271

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !3275
  %15 = sext i32 %11 to i64, !dbg !3275
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3275
  %17 = add i32 %11, 8, !dbg !3275
  store i32 %17, i32* %8, align 8, !dbg !3275
  br label %21, !dbg !3275

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !3277
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3277
  store i8* %20, i8** %10, align 8, !dbg !3277
  br label %21, !dbg !3277

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ], !dbg !3271
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3279
  %25 = load i8*, i8** %24, align 8, !dbg !3279
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3281
  store i8* %25, i8** %26, align 16, !dbg !3282, !tbaa !606
  %27 = icmp eq i8* %25, null, !dbg !3283
  br i1 %27, label %30, label %28, !dbg !3284

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3260, metadata !598), !dbg !3270
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3260, metadata !598), !dbg !3270
  %29 = icmp ult i32 %22, 41, !dbg !3271
  br i1 %29, label %35, label %32, !dbg !3271

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3286
  call void @llvm.lifetime.end(i64 80, i8* nonnull %7) #9, !dbg !3287
  ret void, !dbg !3287

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !3277
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3277
  store i8* %34, i8** %10, align 8, !dbg !3277
  br label %40, !dbg !3277

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !3275
  %37 = sext i32 %22 to i64, !dbg !3275
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3275
  %39 = add i32 %22, 8, !dbg !3275
  store i32 %39, i32* %8, align 8, !dbg !3275
  br label %40, !dbg !3275

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ], !dbg !3271
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3279
  %44 = load i8*, i8** %43, align 8, !dbg !3279
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3281
  store i8* %44, i8** %45, align 8, !dbg !3282, !tbaa !606
  %46 = icmp eq i8* %44, null, !dbg !3283
  br i1 %46, label %30, label %47, !dbg !3284

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3260, metadata !598), !dbg !3270
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3260, metadata !598), !dbg !3270
  %48 = icmp ult i32 %41, 41, !dbg !3271
  br i1 %48, label %52, label %49, !dbg !3271

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !3277
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3277
  store i8* %51, i8** %10, align 8, !dbg !3277
  br label %57, !dbg !3277

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !3275
  %54 = sext i32 %41 to i64, !dbg !3275
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3275
  %56 = add i32 %41, 8, !dbg !3275
  store i32 %56, i32* %8, align 8, !dbg !3275
  br label %57, !dbg !3275

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ], !dbg !3271
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3279
  %61 = load i8*, i8** %60, align 8, !dbg !3279
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3281
  store i8* %61, i8** %62, align 16, !dbg !3282, !tbaa !606
  %63 = icmp eq i8* %61, null, !dbg !3283
  br i1 %63, label %30, label %64, !dbg !3284

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3260, metadata !598), !dbg !3270
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3260, metadata !598), !dbg !3270
  %65 = icmp ult i32 %58, 41, !dbg !3271
  br i1 %65, label %69, label %66, !dbg !3271

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !3277
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3277
  store i8* %68, i8** %10, align 8, !dbg !3277
  br label %74, !dbg !3277

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !3275
  %71 = sext i32 %58 to i64, !dbg !3275
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3275
  %73 = add i32 %58, 8, !dbg !3275
  store i32 %73, i32* %8, align 8, !dbg !3275
  br label %74, !dbg !3275

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ], !dbg !3271
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3279
  %78 = load i8*, i8** %77, align 8, !dbg !3279
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3281
  store i8* %78, i8** %79, align 8, !dbg !3282, !tbaa !606
  %80 = icmp eq i8* %78, null, !dbg !3283
  br i1 %80, label %30, label %81, !dbg !3284

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3260, metadata !598), !dbg !3270
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3260, metadata !598), !dbg !3270
  %82 = icmp ult i32 %75, 41, !dbg !3271
  br i1 %82, label %86, label %83, !dbg !3271

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !3277
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3277
  store i8* %85, i8** %10, align 8, !dbg !3277
  br label %91, !dbg !3277

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !3275
  %88 = sext i32 %75 to i64, !dbg !3275
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3275
  %90 = add i32 %75, 8, !dbg !3275
  store i32 %90, i32* %8, align 8, !dbg !3275
  br label %91, !dbg !3275

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ], !dbg !3271
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3279
  %95 = load i8*, i8** %94, align 8, !dbg !3279
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3281
  store i8* %95, i8** %96, align 16, !dbg !3282, !tbaa !606
  %97 = icmp eq i8* %95, null, !dbg !3283
  br i1 %97, label %30, label %98, !dbg !3284

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3260, metadata !598), !dbg !3270
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3260, metadata !598), !dbg !3270
  %99 = icmp ult i32 %92, 41, !dbg !3271
  br i1 %99, label %103, label %100, !dbg !3271

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !3277
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3277
  store i8* %102, i8** %10, align 8, !dbg !3277
  br label %108, !dbg !3277

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !3275
  %105 = sext i32 %92 to i64, !dbg !3275
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3275
  %107 = add i32 %92, 8, !dbg !3275
  store i32 %107, i32* %8, align 8, !dbg !3275
  br label %108, !dbg !3275

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3279
  %111 = load i8*, i8** %110, align 8, !dbg !3279
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3281
  store i8* %111, i8** %112, align 8, !dbg !3282, !tbaa !606
  %113 = icmp eq i8* %111, null, !dbg !3283
  br i1 %113, label %30, label %114, !dbg !3284

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3260, metadata !598), !dbg !3270
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3260, metadata !598), !dbg !3270
  %115 = load i8*, i8** %10, align 8, !dbg !3277
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3277
  store i8* %116, i8** %10, align 8, !dbg !3277
  %117 = bitcast i8* %115 to i8**, !dbg !3279
  %118 = load i8*, i8** %117, align 8, !dbg !3279
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3281
  store i8* %118, i8** %119, align 16, !dbg !3282, !tbaa !606
  %120 = icmp eq i8* %118, null, !dbg !3283
  br i1 %120, label %30, label %121, !dbg !3284

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3260, metadata !598), !dbg !3270
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3260, metadata !598), !dbg !3270
  %122 = load i8*, i8** %10, align 8, !dbg !3277
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3277
  store i8* %123, i8** %10, align 8, !dbg !3277
  %124 = bitcast i8* %122 to i8**, !dbg !3279
  %125 = load i8*, i8** %124, align 8, !dbg !3279
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3281
  store i8* %125, i8** %126, align 8, !dbg !3282, !tbaa !606
  %127 = icmp eq i8* %125, null, !dbg !3283
  br i1 %127, label %30, label %128, !dbg !3284

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3260, metadata !598), !dbg !3270
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3260, metadata !598), !dbg !3270
  %129 = load i8*, i8** %10, align 8, !dbg !3277
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3277
  store i8* %130, i8** %10, align 8, !dbg !3277
  %131 = bitcast i8* %129 to i8**, !dbg !3279
  %132 = load i8*, i8** %131, align 8, !dbg !3279
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3281
  store i8* %132, i8** %133, align 16, !dbg !3282, !tbaa !606
  %134 = icmp eq i8* %132, null, !dbg !3283
  br i1 %134, label %30, label %135, !dbg !3284

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3260, metadata !598), !dbg !3270
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3260, metadata !598), !dbg !3270
  %136 = load i8*, i8** %10, align 8, !dbg !3277
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3277
  store i8* %137, i8** %10, align 8, !dbg !3277
  %138 = bitcast i8* %136 to i8**, !dbg !3279
  %139 = load i8*, i8** %138, align 8, !dbg !3279
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3281
  store i8* %139, i8** %140, align 8, !dbg !3282, !tbaa !606
  %141 = icmp eq i8* %139, null, !dbg !3283
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3260, metadata !598), !dbg !3270
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3260, metadata !598), !dbg !3270
  %142 = select i1 %141, i64 9, i64 10, !dbg !3284
  br label %30, !dbg !3284
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !3288 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3292, metadata !598), !dbg !3301
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3293, metadata !598), !dbg !3302
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3294, metadata !598), !dbg !3303
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3295, metadata !598), !dbg !3304
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3305
  call void @llvm.lifetime.start(i64 24, i8* nonnull %6) #9, !dbg !3305
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3296, metadata !598), !dbg !3306
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3307
  call void @llvm.va_start(i8* nonnull %6), !dbg !3307
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3308
  call void @llvm.va_end(i8* nonnull %6), !dbg !3309
  call void @llvm.lifetime.end(i64 24, i8* nonnull %6) #9, !dbg !3310
  ret void, !dbg !3310
}

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !3311 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.76, i64 0, i64 0), i32 5) #9, !dbg !3312
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.77, i64 0, i64 0)) #9, !dbg !3313
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.78, i64 0, i64 0), i32 5) #9, !dbg !3315
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.79, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.80, i64 0, i64 0)) #9, !dbg !3316
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19.81, i64 0, i64 0), i32 5) #9, !dbg !3317
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3317, !tbaa !606
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #9, !dbg !3318
  ret void, !dbg !3319
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #12 !dbg !3320 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3324, metadata !598), !dbg !3326
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3325, metadata !598), !dbg !3327
  %3 = udiv i64 9223372036854775807, %1, !dbg !3328
  %4 = icmp ult i64 %3, %0, !dbg !3328
  br i1 %4, label %5, label %6, !dbg !3330

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !3331
  unreachable, !dbg !3331

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3332
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3333, metadata !598) #9, !dbg !3340
  %8 = tail call noalias i8* @malloc(i64 %7) #9, !dbg !3342
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3339, metadata !598) #9, !dbg !3343
  %9 = icmp eq i8* %8, null, !dbg !3344
  %10 = icmp ne i64 %7, 0, !dbg !3346
  %11 = and i1 %10, %9, !dbg !3348
  br i1 %11, label %12, label %13, !dbg !3348

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #14, !dbg !3349
  unreachable, !dbg !3349

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !3350
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !3334 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3333, metadata !598), !dbg !3351
  %2 = tail call noalias i8* @malloc(i64 %0) #9, !dbg !3352
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3339, metadata !598), !dbg !3353
  %3 = icmp eq i8* %2, null, !dbg !3354
  %4 = icmp ne i64 %0, 0, !dbg !3355
  %5 = and i1 %4, %3, !dbg !3356
  br i1 %5, label %6, label %7, !dbg !3356

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3357
  unreachable, !dbg !3357

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3358
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #12 !dbg !3359 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3363, metadata !598), !dbg !3366
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3364, metadata !598), !dbg !3367
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3365, metadata !598), !dbg !3368
  %4 = udiv i64 9223372036854775807, %2, !dbg !3369
  %5 = icmp ult i64 %4, %1, !dbg !3369
  br i1 %5, label %6, label %7, !dbg !3371

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #14, !dbg !3372
  unreachable, !dbg !3372

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3373
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3374, metadata !598) #9, !dbg !3380
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !3379, metadata !598) #9, !dbg !3382
  %9 = icmp eq i64 %8, 0, !dbg !3383
  %10 = icmp ne i8* %0, null, !dbg !3385
  %11 = and i1 %10, %9, !dbg !3387
  br i1 %11, label %12, label %13, !dbg !3387

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #9, !dbg !3388
  br label %19, !dbg !3390

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #9, !dbg !3391
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !3374, metadata !598) #9, !dbg !3380
  %15 = icmp eq i8* %14, null, !dbg !3392
  %16 = icmp ne i64 %8, 0, !dbg !3394
  %17 = and i1 %16, %15, !dbg !3396
  br i1 %17, label %18, label %19, !dbg !3396

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !3397
  unreachable, !dbg !3397

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !3398
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !3375 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3374, metadata !598), !dbg !3399
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3379, metadata !598), !dbg !3400
  %3 = icmp eq i64 %1, 0, !dbg !3401
  %4 = icmp ne i8* %0, null, !dbg !3402
  %5 = and i1 %4, %3, !dbg !3403
  br i1 %5, label %6, label %7, !dbg !3403

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #9, !dbg !3404
  br label %13, !dbg !3405

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #9, !dbg !3406
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3374, metadata !598), !dbg !3399
  %9 = icmp eq i8* %8, null, !dbg !3407
  %10 = icmp ne i64 %1, 0, !dbg !3408
  %11 = and i1 %10, %9, !dbg !3409
  br i1 %11, label %12, label %13, !dbg !3409

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #14, !dbg !3410
  unreachable, !dbg !3410

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !3411
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #12 !dbg !555 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !560, metadata !598), !dbg !3412
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !561, metadata !598), !dbg !3413
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !562, metadata !598), !dbg !3414
  %4 = load i64, i64* %1, align 8, !dbg !3415, !tbaa !2429
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !563, metadata !598), !dbg !3416
  %5 = icmp eq i8* %0, null, !dbg !3417
  br i1 %5, label %6, label %13, !dbg !3419

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3420
  br i1 %7, label %8, label %17, !dbg !3423

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3424
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !563, metadata !598), !dbg !3416
  %10 = icmp ugt i64 %2, 128, !dbg !3426
  %11 = zext i1 %10 to i64, !dbg !3426
  %12 = add nuw nsw i64 %9, %11, !dbg !3427
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !563, metadata !598), !dbg !3416
  br label %17, !dbg !3428

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !3429
  %15 = icmp ugt i64 %14, %4, !dbg !3432
  br i1 %15, label %20, label %16, !dbg !3433

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !3434
  unreachable, !dbg !3434

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !563, metadata !598), !dbg !3416
  store i64 %18, i64* %1, align 8, !dbg !3435, !tbaa !2429
  %19 = mul i64 %18, %2, !dbg !3436
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3374, metadata !598) #9, !dbg !3437
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3379, metadata !598) #9, !dbg !3439
  br label %27, !dbg !3440

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !3441
  %22 = add i64 %4, 1, !dbg !3442
  %23 = add i64 %22, %21, !dbg !3443
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !563, metadata !598), !dbg !3416
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !563, metadata !598), !dbg !3416
  store i64 %23, i64* %1, align 8, !dbg !3435, !tbaa !2429
  %24 = mul i64 %23, %2, !dbg !3436
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3374, metadata !598) #9, !dbg !3437
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3379, metadata !598) #9, !dbg !3439
  %25 = icmp eq i64 %24, 0, !dbg !3444
  br i1 %25, label %26, label %27, !dbg !3440

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #9, !dbg !3445
  br label %34, !dbg !3446

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #9, !dbg !3447
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3374, metadata !598) #9, !dbg !3437
  %30 = icmp eq i8* %29, null, !dbg !3448
  %31 = icmp ne i64 %28, 0, !dbg !3449
  %32 = and i1 %31, %30, !dbg !3450
  br i1 %32, label %33, label %34, !dbg !3450

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #14, !dbg !3451
  unreachable, !dbg !3451

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !3452
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #12 !dbg !3453 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3455, metadata !598), !dbg !3456
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3333, metadata !598) #9, !dbg !3457
  %2 = tail call noalias i8* @malloc(i64 %0) #9, !dbg !3459
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3339, metadata !598) #9, !dbg !3460
  %3 = icmp eq i8* %2, null, !dbg !3461
  %4 = icmp ne i64 %0, 0, !dbg !3462
  %5 = and i1 %4, %3, !dbg !3463
  br i1 %5, label %6, label %7, !dbg !3463

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3464
  unreachable, !dbg !3464

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3465
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !3466 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3470, metadata !598), !dbg !3472
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !3471, metadata !598), !dbg !3473
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !560, metadata !598) #9, !dbg !3474
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !561, metadata !598) #9, !dbg !3476
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !562, metadata !598) #9, !dbg !3477
  %3 = load i64, i64* %1, align 8, !dbg !3478, !tbaa !2429
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !563, metadata !598) #9, !dbg !3479
  %4 = icmp eq i8* %0, null, !dbg !3480
  br i1 %4, label %5, label %8, !dbg !3481

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3482
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !563, metadata !598) #9, !dbg !3479
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !563, metadata !598) #9, !dbg !3479
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3483
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !563, metadata !598) #9, !dbg !3479
  store i64 %7, i64* %1, align 8, !dbg !3484, !tbaa !2429
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3374, metadata !598) #9, !dbg !3485
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3379, metadata !598) #9, !dbg !3487
  br label %17, !dbg !3488

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !3489
  br i1 %9, label %11, label %10, !dbg !3490

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #14, !dbg !3491
  unreachable, !dbg !3491

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !3492
  %13 = add i64 %3, 1, !dbg !3493
  %14 = add i64 %13, %12, !dbg !3494
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !563, metadata !598) #9, !dbg !3479
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !563, metadata !598) #9, !dbg !3479
  store i64 %14, i64* %1, align 8, !dbg !3484, !tbaa !2429
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3374, metadata !598) #9, !dbg !3485
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3379, metadata !598) #9, !dbg !3487
  %15 = icmp eq i64 %14, 0, !dbg !3495
  br i1 %15, label %16, label %17, !dbg !3488

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #9, !dbg !3496
  br label %24, !dbg !3497

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #9, !dbg !3498
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !3374, metadata !598) #9, !dbg !3485
  %20 = icmp eq i8* %19, null, !dbg !3499
  %21 = icmp ne i64 %18, 0, !dbg !3500
  %22 = and i1 %21, %20, !dbg !3501
  br i1 %22, label %23, label %24, !dbg !3501

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #14, !dbg !3502
  unreachable, !dbg !3502

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !3503
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !3504 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3506, metadata !598), !dbg !3507
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3333, metadata !598) #9, !dbg !3508
  %2 = tail call noalias i8* @malloc(i64 %0) #9, !dbg !3510
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3339, metadata !598) #9, !dbg !3511
  %3 = icmp eq i8* %2, null, !dbg !3512
  %4 = icmp ne i64 %0, 0, !dbg !3513
  %5 = and i1 %4, %3, !dbg !3514
  br i1 %5, label %6, label %7, !dbg !3514

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3515
  unreachable, !dbg !3515

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !3516
  ret i8* %2, !dbg !3517
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !3518 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3520, metadata !598), !dbg !3523
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3521, metadata !598), !dbg !3524
  %3 = udiv i64 9223372036854775807, %1, !dbg !3525
  %4 = icmp ult i64 %3, %0, !dbg !3525
  br i1 %4, label %8, label %5, !dbg !3527

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #9, !dbg !3528
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3522, metadata !598), !dbg !3530
  %7 = icmp eq i8* %6, null, !dbg !3531
  br i1 %7, label %8, label %9, !dbg !3532

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #14, !dbg !3534
  unreachable, !dbg !3534

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !3535
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !3536 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3540, metadata !598), !dbg !3542
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3541, metadata !598), !dbg !3543
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3333, metadata !598) #9, !dbg !3544
  %3 = tail call noalias i8* @malloc(i64 %1) #9, !dbg !3546
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3339, metadata !598) #9, !dbg !3547
  %4 = icmp eq i8* %3, null, !dbg !3548
  %5 = icmp ne i64 %1, 0, !dbg !3549
  %6 = and i1 %5, %4, !dbg !3550
  br i1 %6, label %7, label %8, !dbg !3550

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !3551
  unreachable, !dbg !3551

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !3552
  ret i8* %3, !dbg !3553
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !3554 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3556, metadata !598), !dbg !3557
  %2 = tail call i64 @strlen(i8* %0) #13, !dbg !3558
  %3 = add i64 %2, 1, !dbg !3559
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3540, metadata !598) #9, !dbg !3560
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3541, metadata !598) #9, !dbg !3563
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3333, metadata !598) #9, !dbg !3564
  %4 = tail call noalias i8* @malloc(i64 %3) #9, !dbg !3566
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !3339, metadata !598) #9, !dbg !3567
  %5 = icmp eq i8* %4, null, !dbg !3568
  %6 = icmp ne i64 %3, 0, !dbg !3569
  %7 = and i1 %6, %5, !dbg !3570
  br i1 %7, label %8, label %9, !dbg !3570

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3571
  unreachable, !dbg !3571

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #9, !dbg !3572
  ret i8* %4, !dbg !3573
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !3574 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3576, !tbaa !694
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.92, i64 0, i64 0), i32 5) #9, !dbg !3577
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.93, i64 0, i64 0), i8* %2) #9, !dbg !3578
  tail call void @abort() #14, !dbg !3580
  unreachable, !dbg !3580
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !3581 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3584, metadata !598), !dbg !3590
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3585, metadata !598), !dbg !3591
  %3 = icmp eq i64 %0, 0, !dbg !3592
  %4 = icmp eq i64 %1, 0, !dbg !3593
  %5 = or i1 %3, %4, !dbg !3595
  br i1 %5, label %12, label %6, !dbg !3595

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3596
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3587, metadata !598), !dbg !3597
  %8 = udiv i64 %7, %1, !dbg !3598
  %9 = icmp eq i64 %8, %0, !dbg !3600
  br i1 %9, label %12, label %10, !dbg !3601

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #1, !dbg !3602
  store i32 12, i32* %11, align 4, !dbg !3604, !tbaa !694
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3584, metadata !598), !dbg !3590
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !3585, metadata !598), !dbg !3591
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #9, !dbg !3605
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !3586, metadata !598), !dbg !3606
  br label %16, !dbg !3607

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !3608
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !3609 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !3626, metadata !598), !dbg !3635
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3627, metadata !598), !dbg !3636
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3628, metadata !598), !dbg !3637
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !3629, metadata !598), !dbg !3638
  %6 = bitcast i32* %5 to i8*, !dbg !3639
  call void @llvm.lifetime.start(i64 4, i8* nonnull %6) #9, !dbg !3639
  %7 = icmp eq i32* %0, null, !dbg !3640
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !3626, metadata !598), !dbg !3635
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3642
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !3626, metadata !598), !dbg !3635
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #9, !dbg !3643
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !3630, metadata !598), !dbg !3644
  %10 = icmp ugt i64 %9, -3, !dbg !3645
  %11 = icmp ne i64 %2, 0, !dbg !3646
  %12 = and i1 %11, %10, !dbg !3648
  br i1 %12, label %13, label %18, !dbg !3648

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #9, !dbg !3649
  br i1 %14, label %18, label %15, !dbg !3651

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3653, !tbaa !765
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !3632, metadata !598), !dbg !3654
  %17 = zext i8 %16 to i32, !dbg !3655
  store i32 %17, i32* %8, align 4, !dbg !3656, !tbaa !694
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end(i64 4, i8* nonnull %6) #9, !dbg !3657
  ret i64 %19, !dbg !3657
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !3658 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3703, metadata !598), !dbg !3708
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #9, !dbg !3709
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3710, metadata !598), !dbg !3713
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3715
  %4 = load i32, i32* %3, align 8, !dbg !3715, !tbaa !3716
  %5 = and i32 %4, 32, !dbg !3715
  %6 = icmp eq i32 %5, 0, !dbg !3717
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #9, !dbg !3718
  %8 = icmp ne i32 %7, 0, !dbg !3719
  br i1 %6, label %9, label %19, !dbg !3720

; <label>:9:                                      ; preds = %1
  %10 = xor i1 %8, true, !dbg !3722
  %11 = icmp ne i64 %2, 0, !dbg !3722
  %12 = or i1 %11, %10, !dbg !3722
  %13 = sext i1 %8 to i32, !dbg !3722
  br i1 %12, label %22, label %14, !dbg !3722

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #1, !dbg !3724
  %16 = load i32, i32* %15, align 4, !dbg !3724, !tbaa !694
  %17 = icmp ne i32 %16, 9, !dbg !3726
  %18 = sext i1 %17 to i32, !dbg !3726
  br label %22, !dbg !3726

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !3728

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #1, !dbg !3730
  store i32 0, i32* %21, align 4, !dbg !3732, !tbaa !694
  br label %22, !dbg !3730

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !3733
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind readonly sspstrong uwtable
define i8* @last_component(i8* readonly) local_unnamed_addr #11 !dbg !3734 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3737, metadata !598), !dbg !3741
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3738, metadata !598), !dbg !3742
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3740, metadata !598), !dbg !3743
  br label %2, !dbg !3744

; <label>:2:                                      ; preds = %2, %1
  %3 = phi i8* [ %0, %1 ], [ %6, %2 ]
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3738, metadata !598), !dbg !3742
  %4 = load i8, i8* %3, align 1, !dbg !3745, !tbaa !765
  %5 = icmp eq i8 %4, 47, !dbg !3745
  %6 = getelementptr inbounds i8, i8* %3, i64 1, !dbg !3747
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3738, metadata !598), !dbg !3742
  br i1 %5, label %2, label %7, !dbg !3748, !llvm.loop !3749

; <label>:7:                                      ; preds = %2
  br label %8, !dbg !3743

; <label>:8:                                      ; preds = %7, %18
  %9 = phi i8 [ %22, %18 ], [ %4, %7 ], !dbg !3750
  %10 = phi i8* [ %19, %18 ], [ %3, %7 ]
  %11 = phi i8* [ %21, %18 ], [ %3, %7 ]
  %12 = phi i8 [ %20, %18 ], [ 0, %7 ]
  tail call void @llvm.dbg.value(metadata i8 %12, i64 0, metadata !3740, metadata !598), !dbg !3743
  tail call void @llvm.dbg.value(metadata i8* %11, i64 0, metadata !3739, metadata !598), !dbg !3754
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !3738, metadata !598), !dbg !3742
  switch i8 %9, label %13 [
    i8 0, label %23
    i8 47, label %18
  ], !dbg !3755

; <label>:13:                                     ; preds = %8
  %14 = and i8 %12, 1, !dbg !3757
  %15 = icmp eq i8 %14, 0, !dbg !3757
  tail call void @llvm.dbg.value(metadata i8* %11, i64 0, metadata !3738, metadata !598), !dbg !3742
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3740, metadata !598), !dbg !3743
  %16 = select i1 %15, i8* %10, i8* %11, !dbg !3761
  %17 = select i1 %15, i8 %12, i8 0, !dbg !3761
  br label %18, !dbg !3761

; <label>:18:                                     ; preds = %13, %8
  %19 = phi i8* [ %10, %8 ], [ %16, %13 ]
  %20 = phi i8 [ 1, %8 ], [ %17, %13 ]
  tail call void @llvm.dbg.value(metadata i8 %20, i64 0, metadata !3740, metadata !598), !dbg !3743
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !3738, metadata !598), !dbg !3742
  %21 = getelementptr inbounds i8, i8* %11, i64 1, !dbg !3762
  tail call void @llvm.dbg.value(metadata i8* %21, i64 0, metadata !3739, metadata !598), !dbg !3754
  %22 = load i8, i8* %21, align 1, !tbaa !765
  br label %8, !dbg !3764, !llvm.loop !3765

; <label>:23:                                     ; preds = %8
  ret i8* %10, !dbg !3768
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i64 @base_len(i8* nocapture readonly) local_unnamed_addr #11 !dbg !3769 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3773, metadata !598), !dbg !3776
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3775, metadata !598), !dbg !3777
  %2 = tail call i64 @strlen(i8* %0) #13, !dbg !3778
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3774, metadata !598), !dbg !3780
  br label %3, !dbg !3781

; <label>:3:                                      ; preds = %6, %1
  %4 = phi i64 [ %2, %1 ], [ %7, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !3774, metadata !598), !dbg !3780
  %5 = icmp ugt i64 %4, 1, !dbg !3782
  br i1 %5, label %6, label %11, !dbg !3785

; <label>:6:                                      ; preds = %3
  %7 = add i64 %4, -1, !dbg !3786
  %8 = getelementptr inbounds i8, i8* %0, i64 %7, !dbg !3786
  %9 = load i8, i8* %8, align 1, !dbg !3786, !tbaa !765
  %10 = icmp eq i8 %9, 47, !dbg !3786
  br i1 %10, label %3, label %11, !dbg !3788, !llvm.loop !3790

; <label>:11:                                     ; preds = %3, %6
  ret i64 %4, !dbg !3793
}

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !3794 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3797, metadata !598), !dbg !3817
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3798, metadata !598), !dbg !3818
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #9, !dbg !3819
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3799, metadata !598), !dbg !3820
  %3 = icmp eq i8* %2, null, !dbg !3821
  br i1 %3, label %15, label %4, !dbg !3822

; <label>:4:                                      ; preds = %1
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3807, metadata !598), !dbg !3823
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3808, metadata !598), !dbg !3824
  %5 = load i8, i8* %2, align 1, !dbg !3825, !tbaa !765
  %6 = icmp eq i8 %5, 67, !dbg !3827
  br i1 %6, label %7, label %11, !dbg !3830

; <label>:7:                                      ; preds = %4
  %8 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !3832
  %9 = load i8, i8* %8, align 1, !dbg !3832, !tbaa !765
  %10 = icmp eq i8 %9, 0, !dbg !3835
  br i1 %10, label %14, label %11, !dbg !3837

; <label>:11:                                     ; preds = %4, %7
  tail call void @llvm.dbg.value(metadata i64 5, i64 0, metadata !3813, metadata !598), !dbg !3839
  %12 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.106, i64 0, i64 0)) #9, !dbg !3840
  %13 = icmp eq i32 %12, 0, !dbg !3842
  br i1 %13, label %14, label %15, !dbg !3844

; <label>:14:                                     ; preds = %11, %7
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3798, metadata !598), !dbg !3818
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
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !3860, metadata !598), !dbg !3934
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !3927, metadata !598), !dbg !3936
  %3 = tail call i8* @nl_langinfo(i32 14) #9, !dbg !3937
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3852, metadata !598), !dbg !3938
  %4 = icmp eq i8* %3, null, !dbg !3939
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.109, i64 0, i64 0), i8* %3, !dbg !3941
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !3852, metadata !598), !dbg !3938
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !3942, !tbaa !606
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3874, metadata !598) #9, !dbg !3943
  %7 = icmp eq i8* %6, null, !dbg !3944
  br i1 %7, label %8, label %127, !dbg !3945

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.110, i64 0, i64 0)) #9, !dbg !3946
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !3875, metadata !598) #9, !dbg !3947
  %10 = icmp eq i8* %9, null, !dbg !3948
  br i1 %10, label %14, label %11, !dbg !3950

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !3951, !tbaa !765
  %13 = icmp eq i8 %12, 0, !dbg !3953
  br i1 %13, label %14, label %15, !dbg !3954

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !3956

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.111, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !3875, metadata !598) #9, !dbg !3947
  %17 = tail call i64 @strlen(i8* nonnull %16) #13, !dbg !3957
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !3878, metadata !598) #9, !dbg !3958
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !3880, metadata !598) #9, !dbg !3959
  %18 = icmp eq i64 %17, 0, !dbg !3960
  br i1 %18, label %24, label %19, !dbg !3961

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !3962
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !3962
  %22 = load i8, i8* %21, align 1, !dbg !3962, !tbaa !765
  %23 = icmp ne i8 %22, 47, !dbg !3964
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !3965
  %27 = add i64 %17, 14, !dbg !3966
  %28 = add i64 %27, %26, !dbg !3967
  %29 = tail call noalias i8* @malloc(i64 %28) #9, !dbg !3968
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3877, metadata !598) #9, !dbg !3969
  %30 = icmp eq i8* %29, null, !dbg !3970
  br i1 %30, label %125, label %31, !dbg !3970

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #9, !dbg !3971
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !3974

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !3975, !tbaa !765
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !3977
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.112, i64 0, i64 0), i64 14, i32 1, i1 false) #9, !dbg !3978
  br label %37, !dbg !3979

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !3977
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.112, i64 0, i64 0), i64 14, i32 1, i1 false) #9, !dbg !3978
  br label %37, !dbg !3979

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #9, !dbg !3980
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !3882, metadata !598) #9, !dbg !3981
  %39 = icmp slt i32 %38, 0, !dbg !3982
  br i1 %39, label %123, label %40, !dbg !3983

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.113, i64 0, i64 0)) #9, !dbg !3984
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3883, metadata !598) #9, !dbg !3985
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !3986
  br i1 %42, label %48, label %43, !dbg !3987

; <label>:43:                                     ; preds = %40
  %44 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %45 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %46 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %47 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !3988

; <label>:48:                                     ; preds = %40
  %49 = tail call i32 @close(i32 %38) #9, !dbg !3989
  br label %123, !dbg !3991

; <label>:50:                                     ; preds = %111, %43
  %51 = phi i64 [ %112, %111 ], [ 0, %43 ]
  %52 = phi i8* [ %113, %111 ], [ null, %43 ]
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3924, metadata !598) #9, !dbg !3988
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !3925, metadata !598) #9, !dbg !3992
  call void @llvm.lifetime.start(i64 51, i8* nonnull %44) #9, !dbg !3993
  call void @llvm.lifetime.start(i64 51, i8* nonnull %45) #9, !dbg !3994
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3995, metadata !598) #9, !dbg !4000
  %53 = load i8*, i8** %46, align 8, !dbg !4002, !tbaa !4003
  %54 = load i8*, i8** %47, align 8, !dbg !4002, !tbaa !4004
  %55 = icmp ult i8* %53, %54, !dbg !4002
  br i1 %55, label %58, label %56, !dbg !4002, !prof !1039

; <label>:56:                                     ; preds = %50
  %57 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #9, !dbg !4005
  br label %62, !dbg !4005

; <label>:58:                                     ; preds = %50
  %59 = getelementptr inbounds i8, i8* %53, i64 1, !dbg !4007
  store i8* %59, i8** %46, align 8, !dbg !4007, !tbaa !4003
  %60 = load i8, i8* %53, align 1, !dbg !4007, !tbaa !765
  %61 = zext i8 %60 to i32, !dbg !4007
  br label %62, !dbg !4007

; <label>:62:                                     ; preds = %58, %56
  %63 = phi i32 [ %57, %56 ], [ %61, %58 ], !dbg !4009
  call void @llvm.dbg.value(metadata i32 %63, i64 0, metadata !3926, metadata !598) #9, !dbg !4011
  switch i32 %63, label %77 [
    i32 -1, label %115
    i32 32, label %111
    i32 10, label %111
    i32 9, label %111
    i32 35, label %64
  ], !dbg !4012

; <label>:64:                                     ; preds = %62
  br label %65, !dbg !4013

; <label>:65:                                     ; preds = %64, %75
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3995, metadata !598) #9, !dbg !4013
  %66 = load i8*, i8** %46, align 8, !dbg !4017, !tbaa !4003
  %67 = load i8*, i8** %47, align 8, !dbg !4017, !tbaa !4004
  %68 = icmp ult i8* %66, %67, !dbg !4017
  br i1 %68, label %71, label %69, !dbg !4017, !prof !1039

; <label>:69:                                     ; preds = %65
  %70 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #9, !dbg !4018
  br label %75, !dbg !4018

; <label>:71:                                     ; preds = %65
  %72 = getelementptr inbounds i8, i8* %66, i64 1, !dbg !4019
  store i8* %72, i8** %46, align 8, !dbg !4019, !tbaa !4003
  %73 = load i8, i8* %66, align 1, !dbg !4019, !tbaa !765
  %74 = zext i8 %73 to i32, !dbg !4019
  br label %75, !dbg !4019

; <label>:75:                                     ; preds = %71, %69
  %76 = phi i32 [ %70, %69 ], [ %74, %71 ], !dbg !4020
  call void @llvm.dbg.value(metadata i32 %76, i64 0, metadata !3926, metadata !598) #9, !dbg !4011
  switch i32 %76, label %65 [
    i32 -1, label %114
    i32 10, label %110
  ], !dbg !4021, !llvm.loop !4023

; <label>:77:                                     ; preds = %62
  %78 = call i32 @ungetc(i32 %63, %struct._IO_FILE* nonnull %41) #9, !dbg !4026
  %79 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.114, i64 0, i64 0), i8* nonnull %44, i8* nonnull %45) #9, !dbg !4027
  %80 = icmp slt i32 %79, 2, !dbg !4029
  br i1 %80, label %115, label %81, !dbg !4030

; <label>:81:                                     ; preds = %77
  %82 = call i64 @strlen(i8* nonnull %44) #13, !dbg !4031
  call void @llvm.dbg.value(metadata i64 %82, i64 0, metadata !3931, metadata !598) #9, !dbg !4032
  %83 = call i64 @strlen(i8* nonnull %45) #13, !dbg !4033
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !3932, metadata !598) #9, !dbg !4034
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3933, metadata !598) #9, !dbg !4035
  %84 = icmp eq i64 %51, 0, !dbg !4036
  %85 = add i64 %82, 1
  %86 = add i64 %85, %83
  %87 = add i64 %86, 1
  br i1 %84, label %88, label %91, !dbg !4038

; <label>:88:                                     ; preds = %81
  call void @llvm.dbg.value(metadata i64 %87, i64 0, metadata !3925, metadata !598) #9, !dbg !3992
  %89 = add i64 %86, 2, !dbg !4039
  %90 = call noalias i8* @malloc(i64 %89) #9, !dbg !4041
  call void @llvm.dbg.value(metadata i8* %90, i64 0, metadata !3924, metadata !598) #9, !dbg !3988
  br label %95, !dbg !4042

; <label>:91:                                     ; preds = %81
  %92 = add i64 %87, %51, !dbg !4043
  call void @llvm.dbg.value(metadata i64 %92, i64 0, metadata !3925, metadata !598) #9, !dbg !3992
  %93 = add i64 %92, 1, !dbg !4045
  %94 = call i8* @realloc(i8* %52, i64 %93) #9, !dbg !4046
  call void @llvm.dbg.value(metadata i8* %94, i64 0, metadata !3924, metadata !598) #9, !dbg !3988
  br label %95

; <label>:95:                                     ; preds = %91, %88
  %96 = phi i64 [ %87, %88 ], [ %92, %91 ]
  %97 = phi i8* [ %90, %88 ], [ %94, %91 ]
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !3924, metadata !598) #9, !dbg !3988
  call void @llvm.dbg.value(metadata i64 %96, i64 0, metadata !3925, metadata !598) #9, !dbg !3992
  %98 = icmp eq i8* %97, null, !dbg !4047
  br i1 %98, label %99, label %100, !dbg !4049

; <label>:99:                                     ; preds = %95
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3925, metadata !598) #9, !dbg !3992
  call void @free(i8* %52) #9, !dbg !4050
  br label %116, !dbg !4052

; <label>:100:                                    ; preds = %95
  %101 = getelementptr inbounds i8, i8* %97, i64 %96, !dbg !4053
  %102 = xor i64 %83, -1, !dbg !4054
  %103 = getelementptr inbounds i8, i8* %101, i64 %102, !dbg !4054
  %104 = xor i64 %82, -1, !dbg !4055
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !4055
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !4056, metadata !598) #9, !dbg !4064
  call void @llvm.dbg.value(metadata i8* %44, i64 0, metadata !4063, metadata !598) #9, !dbg !4064
  %106 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false) #9, !dbg !4066
  %107 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %44, i64 %106) #9, !dbg !4067
  call void @llvm.dbg.value(metadata i8* %103, i64 0, metadata !4056, metadata !598) #9, !dbg !4068
  call void @llvm.dbg.value(metadata i8* %45, i64 0, metadata !4063, metadata !598) #9, !dbg !4068
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %103, i1 false) #9, !dbg !4070
  %109 = call i8* @__strcpy_chk(i8* nonnull %103, i8* nonnull %45, i64 %108) #9, !dbg !4071
  br label %111, !dbg !4072

; <label>:110:                                    ; preds = %75
  br label %111, !dbg !3988

; <label>:111:                                    ; preds = %110, %100, %62, %62, %62
  %112 = phi i64 [ %96, %100 ], [ %51, %62 ], [ %51, %62 ], [ %51, %62 ], [ %51, %110 ]
  %113 = phi i8* [ %97, %100 ], [ %52, %62 ], [ %52, %62 ], [ %52, %62 ], [ %52, %110 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !3924, metadata !598) #9, !dbg !3988
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !3925, metadata !598) #9, !dbg !3992
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #9, !dbg !4072
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #9, !dbg !4072
  br label %50

; <label>:114:                                    ; preds = %75
  br label %116, !dbg !3988

; <label>:115:                                    ; preds = %62, %77
  br label %116, !dbg !3988

; <label>:116:                                    ; preds = %115, %114, %99
  %117 = phi i64 [ 0, %99 ], [ %51, %114 ], [ %51, %115 ]
  %118 = phi i8* [ null, %99 ], [ %52, %114 ], [ %52, %115 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !3924, metadata !598) #9, !dbg !3988
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !3925, metadata !598) #9, !dbg !3992
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #9, !dbg !4072
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #9, !dbg !4072
  %119 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #9, !dbg !4073
  %120 = icmp eq i64 %117, 0, !dbg !4074
  br i1 %120, label %123, label %121, !dbg !4076

; <label>:121:                                    ; preds = %116
  %122 = getelementptr inbounds i8, i8* %118, i64 %117, !dbg !4077
  store i8 0, i8* %122, align 1, !dbg !4079, !tbaa !765
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !3874, metadata !598) #9, !dbg !3943
  br label %123

; <label>:123:                                    ; preds = %121, %116, %48, %37
  %124 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.109, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.109, i64 0, i64 0), %48 ], [ %118, %121 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.109, i64 0, i64 0), %116 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !3874, metadata !598) #9, !dbg !3943
  call void @free(i8* %29) #9, !dbg !4080
  br label %125

; <label>:125:                                    ; preds = %123, %24
  %126 = phi i8* [ %124, %123 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.109, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %126, i64 0, metadata !3874, metadata !598) #9, !dbg !3943
  store volatile i8* %126, i8** @charset_aliases, align 8, !dbg !4081, !tbaa !606
  br label %127, !dbg !4082

; <label>:127:                                    ; preds = %0, %125
  %128 = phi i8* [ %6, %0 ], [ %126, %125 ]
  call void @llvm.dbg.value(metadata i8* %128, i64 0, metadata !3853, metadata !598), !dbg !4083
  %129 = load i8, i8* %128, align 1, !dbg !4084, !tbaa !765
  %130 = icmp eq i8 %129, 0, !dbg !4085
  br i1 %130, label %157, label %131, !dbg !4086

; <label>:131:                                    ; preds = %127
  br label %132, !dbg !4088

; <label>:132:                                    ; preds = %131, %147
  %133 = phi i8 [ %154, %147 ], [ %129, %131 ]
  %134 = phi i8* [ %153, %147 ], [ %128, %131 ]
  %135 = call i32 @strcmp(i8* %5, i8* %134) #9, !dbg !4088
  %136 = icmp eq i32 %135, 0, !dbg !4089
  br i1 %136, label %143, label %137, !dbg !4090

; <label>:137:                                    ; preds = %132
  %138 = icmp eq i8 %133, 42, !dbg !4091
  br i1 %138, label %139, label %147, !dbg !4093

; <label>:139:                                    ; preds = %137
  %140 = getelementptr inbounds i8, i8* %134, i64 1, !dbg !4094
  %141 = load i8, i8* %140, align 1, !dbg !4094, !tbaa !765
  %142 = icmp eq i8 %141, 0, !dbg !4096
  br i1 %142, label %143, label %147, !dbg !4097

; <label>:143:                                    ; preds = %139, %132
  %144 = call i64 @strlen(i8* %134) #13, !dbg !4099
  %145 = getelementptr inbounds i8, i8* %134, i64 %144, !dbg !4101
  %146 = getelementptr inbounds i8, i8* %145, i64 1, !dbg !4102
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !3852, metadata !598), !dbg !3938
  br label %157, !dbg !4103

; <label>:147:                                    ; preds = %137, %139
  %148 = call i64 @strlen(i8* %134) #13, !dbg !4104
  %149 = add i64 %148, 1, !dbg !4105
  %150 = getelementptr inbounds i8, i8* %134, i64 %149, !dbg !4106
  call void @llvm.dbg.value(metadata i8* %150, i64 0, metadata !3853, metadata !598), !dbg !4083
  %151 = call i64 @strlen(i8* %150) #13, !dbg !4107
  %152 = add i64 %151, 1, !dbg !4108
  %153 = getelementptr inbounds i8, i8* %150, i64 %152, !dbg !4109
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !3853, metadata !598), !dbg !4083
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !3853, metadata !598), !dbg !4083
  %154 = load i8, i8* %153, align 1, !dbg !4084, !tbaa !765
  %155 = icmp eq i8 %154, 0, !dbg !4085
  br i1 %155, label %156, label %132, !dbg !4086, !llvm.loop !4110

; <label>:156:                                    ; preds = %147
  br label %157, !dbg !3938

; <label>:157:                                    ; preds = %156, %127, %143
  %158 = phi i8* [ %146, %143 ], [ %5, %127 ], [ %5, %156 ]
  call void @llvm.dbg.value(metadata i8* %158, i64 0, metadata !3852, metadata !598), !dbg !3938
  %159 = load i8, i8* %158, align 1, !dbg !4113, !tbaa !765
  %160 = icmp eq i8 %159, 0, !dbg !4115
  %161 = select i1 %160, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.115, i64 0, i64 0), i8* %158, !dbg !4116
  call void @llvm.dbg.value(metadata i8* %161, i64 0, metadata !3852, metadata !598), !dbg !3938
  ret i8* %161, !dbg !4117
}

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i8* @getenv(i8* nocapture) local_unnamed_addr #4

declare i32 @open(i8* nocapture readonly, i32, ...) local_unnamed_addr #3

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
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !4118 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4163, metadata !598), !dbg !4167
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4164, metadata !598), !dbg !4168
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4166, metadata !598), !dbg !4169
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #9, !dbg !4170
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4165, metadata !598), !dbg !4171
  %3 = icmp slt i32 %2, 0, !dbg !4172
  br i1 %3, label %4, label %6, !dbg !4174

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4175
  br label %24, !dbg !4176

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #9, !dbg !4177
  %8 = icmp eq i32 %7, 0, !dbg !4177
  br i1 %8, label %13, label %9, !dbg !4179

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #9, !dbg !4180
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #9, !dbg !4182
  %12 = icmp eq i64 %11, -1, !dbg !4184
  br i1 %12, label %16, label %13, !dbg !4185

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #9, !dbg !4186
  %15 = icmp eq i32 %14, 0, !dbg !4186
  br i1 %15, label %16, label %18, !dbg !4187

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4164, metadata !598), !dbg !4168
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4189
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4166, metadata !598), !dbg !4169
  br label %24, !dbg !4190

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #1, !dbg !4191
  %20 = load i32, i32* %19, align 4, !dbg !4191, !tbaa !694
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4164, metadata !598), !dbg !4168
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4164, metadata !598), !dbg !4168
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4189
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4166, metadata !598), !dbg !4169
  %22 = icmp eq i32 %20, 0, !dbg !4192
  br i1 %22, label %24, label %23, !dbg !4190

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4194, !tbaa !694
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !4166, metadata !598), !dbg !4169
  br label %24, !dbg !4196

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !4197
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
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !4198 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4243, metadata !598), !dbg !4244
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4245
  br i1 %2, label %6, label %3, !dbg !4247

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #9, !dbg !4248
  %5 = icmp eq i32 %4, 0, !dbg !4248
  br i1 %5, label %6, label %8, !dbg !4250

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4252
  br label %17, !dbg !4253

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4254, metadata !598) #9, !dbg !4259
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4261
  %10 = load i32, i32* %9, align 8, !dbg !4261, !tbaa !3716
  %11 = and i32 %10, 256, !dbg !4263
  %12 = icmp eq i32 %11, 0, !dbg !4263
  br i1 %12, label %15, label %13, !dbg !4264

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #9, !dbg !4265
  br label %15, !dbg !4265

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4266
  br label %17, !dbg !4267

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !4268
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !4269 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4315, metadata !598), !dbg !4321
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4316, metadata !598), !dbg !4322
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4317, metadata !598), !dbg !4323
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4324
  %5 = load i8*, i8** %4, align 8, !dbg !4324, !tbaa !4004
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4325
  %7 = load i8*, i8** %6, align 8, !dbg !4325, !tbaa !4003
  %8 = icmp eq i8* %5, %7, !dbg !4326
  br i1 %8, label %9, label %28, !dbg !4327

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4328
  %11 = load i8*, i8** %10, align 8, !dbg !4328, !tbaa !1034
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4330
  %13 = load i8*, i8** %12, align 8, !dbg !4330, !tbaa !4331
  %14 = icmp eq i8* %11, %13, !dbg !4332
  br i1 %14, label %15, label %28, !dbg !4333

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4334
  %17 = load i8*, i8** %16, align 8, !dbg !4334, !tbaa !4335
  %18 = icmp eq i8* %17, null, !dbg !4336
  br i1 %18, label %19, label %28, !dbg !4337

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #9, !dbg !4339
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #9, !dbg !4340
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !4318, metadata !598), !dbg !4342
  %22 = icmp eq i64 %21, -1, !dbg !4343
  br i1 %22, label %30, label %23, !dbg !4345

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4346
  %25 = load i32, i32* %24, align 8, !dbg !4347, !tbaa !3716
  %26 = and i32 %25, -17, !dbg !4347
  store i32 %26, i32* %24, align 8, !dbg !4347, !tbaa !3716
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4348
  store i64 %21, i64* %27, align 8, !dbg !4349, !tbaa !4350
  br label %30, !dbg !4351

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4352
  br label %30, !dbg !4353

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !4354
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
attributes #9 = { nounwind }
attributes #10 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { nounwind readonly }
attributes #14 = { noreturn nounwind }
attributes #15 = { noreturn }
attributes #16 = { cold }

!llvm.dbg.cu = !{!2, !537, !84, !90, !540, !98, !105, !112, !542, !182, !550, !567, !569, !571, !574, !576, !579, !191, !582, !584, !586}
!llvm.ident = !{!588, !588, !588, !588, !588, !588, !588, !588, !588, !588, !588, !588, !588, !588, !588, !588, !588, !588, !588, !588, !588}
!llvm.module.flags = !{!589, !590, !591, !592}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "remove_empty_parents", scope: !2, file: !3, line: 40, type: !36, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !19, globals: !33)
!3 = !DIFile(filename: "src/rmdir.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4 = !{!5}
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
!19 = !{!20, !22, !23, !26, !28, !31}
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !24, line: 62, baseType: !25)
!24 = !DIFile(filename: "/usr/bin/../lib/clang/4.0.1/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!25 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!30 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!33 = !{!0, !34, !37, !39, !70}
!34 = !DIGlobalVariableExpression(var: !35)
!35 = distinct !DIGlobalVariable(name: "ignore_fail_on_non_empty", scope: !2, file: !3, line: 44, type: !36, isLocal: true, isDefinition: true)
!36 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!37 = !DIGlobalVariableExpression(var: !38)
!38 = distinct !DIGlobalVariable(name: "verbose", scope: !2, file: !3, line: 47, type: !36, isLocal: true, isDefinition: true)
!39 = !DIGlobalVariableExpression(var: !40)
!40 = distinct !DIGlobalVariable(name: "infomap", scope: !41, file: !42, line: 632, type: !67, isLocal: true, isDefinition: true)
!41 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !42, file: !42, line: 630, type: !43, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !45)
!42 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!43 = !DISubroutineType(types: !44)
!44 = !{null, !31}
!45 = !{!46, !47, !48, !55, !57, !58, !59, !62, !63, !65}
!46 = !DILocalVariable(name: "program", arg: 1, scope: !41, file: !42, line: 630, type: !31)
!47 = !DILocalVariable(name: "node", scope: !41, file: !42, line: 642, type: !31)
!48 = !DILocalVariable(name: "map_prog", scope: !41, file: !42, line: 643, type: !49)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !41, file: !42, line: 632, size: 128, elements: !52)
!52 = !{!53, !54}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !51, file: !42, line: 632, baseType: !31, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !51, file: !42, line: 632, baseType: !31, size: 64, offset: 64)
!55 = !DILocalVariable(name: "__s1_len", scope: !56, file: !42, line: 645, type: !23)
!56 = distinct !DILexicalBlock(scope: !41, file: !42, line: 645, column: 33)
!57 = !DILocalVariable(name: "__s2_len", scope: !56, file: !42, line: 645, type: !23)
!58 = !DILocalVariable(name: "lc_messages", scope: !41, file: !42, line: 655, type: !31)
!59 = !DILocalVariable(name: "__s1_len", scope: !60, file: !42, line: 656, type: !23)
!60 = distinct !DILexicalBlock(scope: !61, file: !42, line: 656, column: 22)
!61 = distinct !DILexicalBlock(scope: !41, file: !42, line: 656, column: 7)
!62 = !DILocalVariable(name: "__s2_len", scope: !60, file: !42, line: 656, type: !23)
!63 = !DILocalVariable(name: "__s2", scope: !64, file: !42, line: 656, type: !28)
!64 = distinct !DILexicalBlock(scope: !60, file: !42, line: 656, column: 22)
!65 = !DILocalVariable(name: "__result", scope: !64, file: !42, line: 656, type: !66)
!66 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!67 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 896, elements: !68)
!68 = !{!69}
!69 = !DISubrange(count: 7)
!70 = !DIGlobalVariableExpression(var: !71)
!71 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 56, type: !72, isLocal: true, isDefinition: true)
!72 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 1792, elements: !68)
!73 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !74)
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !75, line: 104, size: 256, elements: !76)
!75 = !DIFile(filename: "/usr/include/getopt.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!76 = !{!77, !78, !79, !81}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !74, file: !75, line: 106, baseType: !31, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !74, file: !75, line: 109, baseType: !66, size: 32, offset: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !74, file: !75, line: 110, baseType: !80, size: 64, offset: 128)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !74, file: !75, line: 111, baseType: !66, size: 32, offset: 192)
!82 = !DIGlobalVariableExpression(var: !83)
!83 = distinct !DIGlobalVariable(name: "Version", scope: !84, file: !85, line: 2, type: !31, isLocal: false, isDefinition: true)
!84 = distinct !DICompileUnit(language: DW_LANG_C99, file: !85, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !86, globals: !87)
!85 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!86 = !{}
!87 = !{!82}
!88 = !DIGlobalVariableExpression(var: !89)
!89 = distinct !DIGlobalVariable(name: "file_name", scope: !90, file: !95, line: 36, type: !31, isLocal: true, isDefinition: true)
!90 = distinct !DICompileUnit(language: DW_LANG_C99, file: !91, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !86, globals: !92)
!91 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!92 = !{!88, !93}
!93 = !DIGlobalVariableExpression(var: !94)
!94 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !90, file: !95, line: 46, type: !36, isLocal: true, isDefinition: true)
!95 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!96 = !DIGlobalVariableExpression(var: !97)
!97 = distinct !DIGlobalVariable(name: "exit_failure", scope: !98, file: !101, line: 24, type: !102, isLocal: false, isDefinition: true)
!98 = distinct !DICompileUnit(language: DW_LANG_C99, file: !99, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !86, globals: !100)
!99 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!100 = !{!96}
!101 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!102 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !66)
!103 = !DIGlobalVariableExpression(var: !104)
!104 = distinct !DIGlobalVariable(name: "program_name", scope: !105, file: !109, line: 33, type: !31, isLocal: false, isDefinition: true)
!105 = distinct !DICompileUnit(language: DW_LANG_C99, file: !106, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !86, retainedTypes: !107, globals: !108)
!106 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!107 = !{!22, !20}
!108 = !{!103}
!109 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!110 = !DIGlobalVariableExpression(var: !111)
!111 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !112, file: !140, line: 77, type: !176, isLocal: false, isDefinition: true)
!112 = distinct !DICompileUnit(language: DW_LANG_C99, file: !113, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !114, retainedTypes: !135, globals: !137)
!113 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!114 = !{!5, !115, !120}
!115 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !6, line: 242, size: 32, elements: !116)
!116 = !{!117, !118, !119}
!117 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!118 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!119 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!120 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !121, line: 46, size: 32, elements: !122)
!121 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!122 = !{!123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134}
!123 = !DIEnumerator(name: "_ISupper", value: 256)
!124 = !DIEnumerator(name: "_ISlower", value: 512)
!125 = !DIEnumerator(name: "_ISalpha", value: 1024)
!126 = !DIEnumerator(name: "_ISdigit", value: 2048)
!127 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!128 = !DIEnumerator(name: "_ISspace", value: 8192)
!129 = !DIEnumerator(name: "_ISprint", value: 16384)
!130 = !DIEnumerator(name: "_ISgraph", value: 32768)
!131 = !DIEnumerator(name: "_ISblank", value: 1)
!132 = !DIEnumerator(name: "_IScntrl", value: 2)
!133 = !DIEnumerator(name: "_ISpunct", value: 4)
!134 = !DIEnumerator(name: "_ISalnum", value: 8)
!135 = !{!66, !136, !23, !20}
!136 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!137 = !{!110, !138, !145, !158, !160, !165, !172, !174}
!138 = !DIGlobalVariableExpression(var: !139)
!139 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !112, file: !140, line: 93, type: !141, isLocal: false, isDefinition: true)
!140 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 320, elements: !143)
!142 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!143 = !{!144}
!144 = !DISubrange(count: 10)
!145 = !DIGlobalVariableExpression(var: !146)
!146 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !112, file: !140, line: 1043, type: !147, isLocal: false, isDefinition: true)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !140, line: 57, size: 448, elements: !148)
!148 = !{!149, !150, !151, !156, !157}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !147, file: !140, line: 60, baseType: !5, size: 32)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !147, file: !140, line: 63, baseType: !66, size: 32, offset: 32)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !147, file: !140, line: 67, baseType: !152, size: 256, offset: 64)
!152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, size: 256, elements: !154)
!153 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!154 = !{!155}
!155 = !DISubrange(count: 8)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !147, file: !140, line: 70, baseType: !31, size: 64, offset: 320)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !147, file: !140, line: 73, baseType: !31, size: 64, offset: 384)
!158 = !DIGlobalVariableExpression(var: !159)
!159 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !112, file: !140, line: 108, type: !147, isLocal: true, isDefinition: true)
!160 = !DIGlobalVariableExpression(var: !161)
!161 = distinct !DIGlobalVariable(name: "slot0", scope: !112, file: !140, line: 834, type: !162, isLocal: true, isDefinition: true)
!162 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 2048, elements: !163)
!163 = !{!164}
!164 = !DISubrange(count: 256)
!165 = !DIGlobalVariableExpression(var: !166)
!166 = distinct !DIGlobalVariable(name: "slotvec", scope: !112, file: !140, line: 837, type: !167, isLocal: true, isDefinition: true)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !140, line: 826, size: 128, elements: !169)
!169 = !{!170, !171}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !168, file: !140, line: 828, baseType: !23, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !168, file: !140, line: 829, baseType: !20, size: 64, offset: 64)
!172 = !DIGlobalVariableExpression(var: !173)
!173 = distinct !DIGlobalVariable(name: "nslots", scope: !112, file: !140, line: 835, type: !66, isLocal: true, isDefinition: true)
!174 = !DIGlobalVariableExpression(var: !175)
!175 = distinct !DIGlobalVariable(name: "slotvec0", scope: !112, file: !140, line: 836, type: !168, isLocal: true, isDefinition: true)
!176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !177, size: 704, elements: !178)
!177 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!178 = !{!179}
!179 = !DISubrange(count: 11)
!180 = !DIGlobalVariableExpression(var: !181)
!181 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !182, file: !185, line: 26, type: !186, isLocal: false, isDefinition: true)
!182 = distinct !DICompileUnit(language: DW_LANG_C99, file: !183, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !86, globals: !184)
!183 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!184 = !{!180}
!185 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 376, elements: !187)
!187 = !{!188}
!188 = !DISubrange(count: 47)
!189 = !DIGlobalVariableExpression(var: !190)
!190 = distinct !DIGlobalVariable(name: "charset_aliases", scope: !191, file: !535, line: 120, type: !536, isLocal: true, isDefinition: true)
!191 = distinct !DICompileUnit(language: DW_LANG_C99, file: !192, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !193, retainedTypes: !532, globals: !534)
!192 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!193 = !{!194}
!194 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !195, line: 41, size: 32, elements: !196)
!195 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!196 = !{!197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531}
!197 = !DIEnumerator(name: "ABDAY_1", value: 131072)
!198 = !DIEnumerator(name: "ABDAY_2", value: 131073)
!199 = !DIEnumerator(name: "ABDAY_3", value: 131074)
!200 = !DIEnumerator(name: "ABDAY_4", value: 131075)
!201 = !DIEnumerator(name: "ABDAY_5", value: 131076)
!202 = !DIEnumerator(name: "ABDAY_6", value: 131077)
!203 = !DIEnumerator(name: "ABDAY_7", value: 131078)
!204 = !DIEnumerator(name: "DAY_1", value: 131079)
!205 = !DIEnumerator(name: "DAY_2", value: 131080)
!206 = !DIEnumerator(name: "DAY_3", value: 131081)
!207 = !DIEnumerator(name: "DAY_4", value: 131082)
!208 = !DIEnumerator(name: "DAY_5", value: 131083)
!209 = !DIEnumerator(name: "DAY_6", value: 131084)
!210 = !DIEnumerator(name: "DAY_7", value: 131085)
!211 = !DIEnumerator(name: "ABMON_1", value: 131086)
!212 = !DIEnumerator(name: "ABMON_2", value: 131087)
!213 = !DIEnumerator(name: "ABMON_3", value: 131088)
!214 = !DIEnumerator(name: "ABMON_4", value: 131089)
!215 = !DIEnumerator(name: "ABMON_5", value: 131090)
!216 = !DIEnumerator(name: "ABMON_6", value: 131091)
!217 = !DIEnumerator(name: "ABMON_7", value: 131092)
!218 = !DIEnumerator(name: "ABMON_8", value: 131093)
!219 = !DIEnumerator(name: "ABMON_9", value: 131094)
!220 = !DIEnumerator(name: "ABMON_10", value: 131095)
!221 = !DIEnumerator(name: "ABMON_11", value: 131096)
!222 = !DIEnumerator(name: "ABMON_12", value: 131097)
!223 = !DIEnumerator(name: "MON_1", value: 131098)
!224 = !DIEnumerator(name: "MON_2", value: 131099)
!225 = !DIEnumerator(name: "MON_3", value: 131100)
!226 = !DIEnumerator(name: "MON_4", value: 131101)
!227 = !DIEnumerator(name: "MON_5", value: 131102)
!228 = !DIEnumerator(name: "MON_6", value: 131103)
!229 = !DIEnumerator(name: "MON_7", value: 131104)
!230 = !DIEnumerator(name: "MON_8", value: 131105)
!231 = !DIEnumerator(name: "MON_9", value: 131106)
!232 = !DIEnumerator(name: "MON_10", value: 131107)
!233 = !DIEnumerator(name: "MON_11", value: 131108)
!234 = !DIEnumerator(name: "MON_12", value: 131109)
!235 = !DIEnumerator(name: "AM_STR", value: 131110)
!236 = !DIEnumerator(name: "PM_STR", value: 131111)
!237 = !DIEnumerator(name: "D_T_FMT", value: 131112)
!238 = !DIEnumerator(name: "D_FMT", value: 131113)
!239 = !DIEnumerator(name: "T_FMT", value: 131114)
!240 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115)
!241 = !DIEnumerator(name: "ERA", value: 131116)
!242 = !DIEnumerator(name: "__ERA_YEAR", value: 131117)
!243 = !DIEnumerator(name: "ERA_D_FMT", value: 131118)
!244 = !DIEnumerator(name: "ALT_DIGITS", value: 131119)
!245 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120)
!246 = !DIEnumerator(name: "ERA_T_FMT", value: 131121)
!247 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122)
!248 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123)
!249 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124)
!250 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125)
!251 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126)
!252 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127)
!253 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128)
!254 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129)
!255 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130)
!256 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131)
!257 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132)
!258 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133)
!259 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134)
!260 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135)
!261 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136)
!262 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137)
!263 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138)
!264 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139)
!265 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140)
!266 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141)
!267 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142)
!268 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143)
!269 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144)
!270 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145)
!271 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146)
!272 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147)
!273 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148)
!274 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149)
!275 = !DIEnumerator(name: "_NL_WMON_1", value: 131150)
!276 = !DIEnumerator(name: "_NL_WMON_2", value: 131151)
!277 = !DIEnumerator(name: "_NL_WMON_3", value: 131152)
!278 = !DIEnumerator(name: "_NL_WMON_4", value: 131153)
!279 = !DIEnumerator(name: "_NL_WMON_5", value: 131154)
!280 = !DIEnumerator(name: "_NL_WMON_6", value: 131155)
!281 = !DIEnumerator(name: "_NL_WMON_7", value: 131156)
!282 = !DIEnumerator(name: "_NL_WMON_8", value: 131157)
!283 = !DIEnumerator(name: "_NL_WMON_9", value: 131158)
!284 = !DIEnumerator(name: "_NL_WMON_10", value: 131159)
!285 = !DIEnumerator(name: "_NL_WMON_11", value: 131160)
!286 = !DIEnumerator(name: "_NL_WMON_12", value: 131161)
!287 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162)
!288 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163)
!289 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164)
!290 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165)
!291 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166)
!292 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167)
!293 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168)
!294 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169)
!295 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170)
!296 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171)
!297 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172)
!298 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173)
!299 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174)
!300 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175)
!301 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176)
!302 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177)
!303 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178)
!304 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179)
!305 = !DIEnumerator(name: "_DATE_FMT", value: 131180)
!306 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181)
!307 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182)
!308 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131183)
!309 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608)
!310 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609)
!311 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610)
!312 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611)
!313 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612)
!314 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613)
!315 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614)
!316 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615)
!317 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616)
!318 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617)
!319 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618)
!320 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619)
!321 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620)
!322 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621)
!323 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622)
!324 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623)
!325 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624)
!326 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625)
!327 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626)
!328 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627)
!329 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0)
!330 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1)
!331 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2)
!332 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3)
!333 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4)
!334 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5)
!335 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6)
!336 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7)
!337 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8)
!338 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9)
!339 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10)
!340 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11)
!341 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12)
!342 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13)
!343 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14)
!344 = !DIEnumerator(name: "CODESET", value: 14)
!345 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15)
!346 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16)
!347 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17)
!348 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18)
!349 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19)
!350 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20)
!351 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21)
!352 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22)
!353 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23)
!354 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24)
!355 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25)
!356 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26)
!357 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27)
!358 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28)
!359 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29)
!360 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30)
!361 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31)
!362 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32)
!363 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33)
!364 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34)
!365 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35)
!366 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36)
!367 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37)
!368 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38)
!369 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39)
!370 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40)
!371 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41)
!372 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42)
!373 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43)
!374 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44)
!375 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45)
!376 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46)
!377 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47)
!378 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48)
!379 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49)
!380 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50)
!381 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51)
!382 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52)
!383 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53)
!384 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54)
!385 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55)
!386 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56)
!387 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57)
!388 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58)
!389 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59)
!390 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60)
!391 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61)
!392 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62)
!393 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63)
!394 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64)
!395 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65)
!396 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66)
!397 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67)
!398 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68)
!399 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69)
!400 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70)
!401 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71)
!402 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72)
!403 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73)
!404 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74)
!405 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75)
!406 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76)
!407 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77)
!408 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78)
!409 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79)
!410 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80)
!411 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81)
!412 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82)
!413 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83)
!414 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84)
!415 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85)
!416 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86)
!417 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144)
!418 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145)
!419 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146)
!420 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147)
!421 = !DIEnumerator(name: "__MON_GROUPING", value: 262148)
!422 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149)
!423 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150)
!424 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151)
!425 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152)
!426 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153)
!427 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154)
!428 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155)
!429 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156)
!430 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157)
!431 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158)
!432 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159)
!433 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160)
!434 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161)
!435 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162)
!436 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163)
!437 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164)
!438 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165)
!439 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166)
!440 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167)
!441 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168)
!442 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169)
!443 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170)
!444 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171)
!445 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172)
!446 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173)
!447 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174)
!448 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175)
!449 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176)
!450 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177)
!451 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178)
!452 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179)
!453 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180)
!454 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181)
!455 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182)
!456 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183)
!457 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184)
!458 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185)
!459 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186)
!460 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187)
!461 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188)
!462 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189)
!463 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190)
!464 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536)
!465 = !DIEnumerator(name: "RADIXCHAR", value: 65536)
!466 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537)
!467 = !DIEnumerator(name: "THOUSEP", value: 65537)
!468 = !DIEnumerator(name: "__GROUPING", value: 65538)
!469 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539)
!470 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540)
!471 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541)
!472 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542)
!473 = !DIEnumerator(name: "__YESEXPR", value: 327680)
!474 = !DIEnumerator(name: "__NOEXPR", value: 327681)
!475 = !DIEnumerator(name: "__YESSTR", value: 327682)
!476 = !DIEnumerator(name: "__NOSTR", value: 327683)
!477 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684)
!478 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685)
!479 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752)
!480 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753)
!481 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754)
!482 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755)
!483 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288)
!484 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289)
!485 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290)
!486 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291)
!487 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292)
!488 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293)
!489 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294)
!490 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295)
!491 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824)
!492 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825)
!493 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826)
!494 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827)
!495 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828)
!496 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829)
!497 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830)
!498 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831)
!499 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832)
!500 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833)
!501 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834)
!502 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835)
!503 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836)
!504 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837)
!505 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360)
!506 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361)
!507 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362)
!508 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363)
!509 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364)
!510 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365)
!511 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896)
!512 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897)
!513 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898)
!514 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432)
!515 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433)
!516 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434)
!517 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435)
!518 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436)
!519 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437)
!520 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438)
!521 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439)
!522 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440)
!523 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441)
!524 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442)
!525 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443)
!526 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444)
!527 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445)
!528 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446)
!529 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447)
!530 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448)
!531 = !DIEnumerator(name: "_NL_NUM", value: 786449)
!532 = !{!22, !20, !533}
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!534 = !{!189}
!535 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!536 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !31)
!537 = distinct !DICompileUnit(language: DW_LANG_C99, file: !538, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !86, retainedTypes: !539)
!538 = !DIFile(filename: "src/prog-fprintf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!539 = !{!30}
!540 = distinct !DICompileUnit(language: DW_LANG_C99, file: !541, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !86)
!541 = !DIFile(filename: "./lib/stripslash.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!542 = distinct !DICompileUnit(language: DW_LANG_C99, file: !543, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !544, retainedTypes: !549)
!543 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!544 = !{!545}
!545 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !546, line: 41, size: 32, elements: !547)
!546 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!547 = !{!548}
!548 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!549 = !{!22}
!550 = distinct !DICompileUnit(language: DW_LANG_C99, file: !551, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !552, retainedTypes: !566)
!551 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!552 = !{!553}
!553 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !555, file: !554, line: 192, size: 32, elements: !564)
!554 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!555 = distinct !DISubprogram(name: "x2nrealloc", scope: !554, file: !554, line: 180, type: !556, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !550, variables: !559)
!556 = !DISubroutineType(types: !557)
!557 = !{!22, !22, !558, !23}
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!559 = !{!560, !561, !562, !563}
!560 = !DILocalVariable(name: "p", arg: 1, scope: !555, file: !554, line: 180, type: !22)
!561 = !DILocalVariable(name: "pn", arg: 2, scope: !555, file: !554, line: 180, type: !558)
!562 = !DILocalVariable(name: "s", arg: 3, scope: !555, file: !554, line: 180, type: !23)
!563 = !DILocalVariable(name: "n", scope: !555, file: !554, line: 182, type: !23)
!564 = !{!565}
!565 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!566 = !{!23, !20, !22}
!567 = distinct !DICompileUnit(language: DW_LANG_C99, file: !568, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !86)
!568 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!569 = distinct !DICompileUnit(language: DW_LANG_C99, file: !570, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !86, retainedTypes: !549)
!570 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!571 = distinct !DICompileUnit(language: DW_LANG_C99, file: !572, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !86, retainedTypes: !573)
!572 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!573 = !{!23}
!574 = distinct !DICompileUnit(language: DW_LANG_C99, file: !575, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !86)
!575 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!576 = distinct !DICompileUnit(language: DW_LANG_C99, file: !577, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !86, retainedTypes: !578)
!577 = !DIFile(filename: "./lib/basename-lgpl.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!578 = !{!20}
!579 = distinct !DICompileUnit(language: DW_LANG_C99, file: !580, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !86, retainedTypes: !581)
!580 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!581 = !{!23, !26, !28, !31}
!582 = distinct !DICompileUnit(language: DW_LANG_C99, file: !583, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !86)
!583 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!584 = distinct !DICompileUnit(language: DW_LANG_C99, file: !585, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !86, retainedTypes: !549)
!585 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!586 = distinct !DICompileUnit(language: DW_LANG_C99, file: !587, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !86, retainedTypes: !549)
!587 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!588 = !{!"clang version 4.0.1 (tags/RELEASE_401/final)"}
!589 = !{i32 2, !"Dwarf Version", i32 4}
!590 = !{i32 2, !"Debug Info Version", i32 3}
!591 = !{i32 1, !"PIC Level", i32 2}
!592 = !{i32 1, !"PIE Level", i32 2}
!593 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 157, type: !594, isLocal: false, isDefinition: true, scopeLine: 158, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, variables: !596)
!594 = !DISubroutineType(types: !595)
!595 = !{null, !66}
!596 = !{!597}
!597 = !DILocalVariable(name: "status", arg: 1, scope: !593, file: !3, line: 157, type: !66)
!598 = !DIExpression()
!599 = !DILocation(line: 157, column: 12, scope: !593)
!600 = !DILocation(line: 159, column: 14, scope: !601)
!601 = distinct !DILexicalBlock(scope: !593, file: !3, line: 159, column: 7)
!602 = !DILocation(line: 159, column: 7, scope: !593)
!603 = !DILocation(line: 160, column: 5, scope: !604)
!604 = !DILexicalBlockFile(scope: !605, file: !3, discriminator: 1)
!605 = distinct !DILexicalBlock(scope: !601, file: !3, line: 160, column: 5)
!606 = !{!607, !607, i64 0}
!607 = !{!"any pointer", !608, i64 0}
!608 = !{!"omnipotent char", !609, i64 0}
!609 = !{!"Simple C/C++ TBAA"}
!610 = !DILocation(line: 160, column: 5, scope: !611)
!611 = !DILexicalBlockFile(scope: !605, file: !3, discriminator: 3)
!612 = !DILocation(line: 160, column: 5, scope: !613)
!613 = !DILexicalBlockFile(scope: !605, file: !3, discriminator: 2)
!614 = !DILocation(line: 163, column: 7, scope: !615)
!615 = distinct !DILexicalBlock(scope: !601, file: !3, line: 162, column: 5)
!616 = !DILocation(line: 163, column: 7, scope: !617)
!617 = !DILexicalBlockFile(scope: !615, file: !3, discriminator: 1)
!618 = !DILocation(line: 164, column: 7, scope: !615)
!619 = !DILocation(line: 164, column: 7, scope: !617)
!620 = !DILocation(line: 171, column: 7, scope: !615)
!621 = !DILocation(line: 171, column: 7, scope: !617)
!622 = !DILocation(line: 177, column: 7, scope: !615)
!623 = !DILocation(line: 177, column: 7, scope: !617)
!624 = !DILocation(line: 178, column: 7, scope: !615)
!625 = !DILocation(line: 178, column: 7, scope: !617)
!626 = !DILocation(line: 642, column: 15, scope: !41, inlinedAt: !627)
!627 = distinct !DILocation(line: 179, column: 7, scope: !615)
!628 = !DILocation(line: 651, column: 3, scope: !41, inlinedAt: !627)
!629 = !DILocation(line: 651, column: 3, scope: !630, inlinedAt: !627)
!630 = !DILexicalBlockFile(scope: !41, file: !42, discriminator: 1)
!631 = !DILocation(line: 655, column: 29, scope: !41, inlinedAt: !627)
!632 = !DILocation(line: 655, column: 15, scope: !41, inlinedAt: !627)
!633 = !DILocation(line: 656, column: 7, scope: !61, inlinedAt: !627)
!634 = !DILocation(line: 656, column: 19, scope: !61, inlinedAt: !627)
!635 = !DILocation(line: 656, column: 22, scope: !636, inlinedAt: !627)
!636 = !DILexicalBlockFile(scope: !61, file: !42, discriminator: 16)
!637 = !DILocation(line: 656, column: 7, scope: !638, inlinedAt: !627)
!638 = !DILexicalBlockFile(scope: !41, file: !42, discriminator: 16)
!639 = !DILocation(line: 662, column: 7, scope: !640, inlinedAt: !627)
!640 = distinct !DILexicalBlock(scope: !61, file: !42, line: 657, column: 5)
!641 = !DILocation(line: 662, column: 7, scope: !642, inlinedAt: !627)
!642 = !DILexicalBlockFile(scope: !640, file: !42, discriminator: 1)
!643 = !DILocation(line: 664, column: 5, scope: !640, inlinedAt: !627)
!644 = !DILocation(line: 665, column: 3, scope: !41, inlinedAt: !627)
!645 = !DILocation(line: 665, column: 3, scope: !630, inlinedAt: !627)
!646 = !DILocation(line: 667, column: 3, scope: !41, inlinedAt: !627)
!647 = !DILocation(line: 667, column: 3, scope: !630, inlinedAt: !627)
!648 = !DILocation(line: 181, column: 3, scope: !593)
!649 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 185, type: !650, isLocal: false, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !653)
!650 = !DISubroutineType(types: !651)
!651 = !{!66, !66, !652}
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!653 = !{!654, !655, !656, !657, !658}
!654 = !DILocalVariable(name: "argc", arg: 1, scope: !649, file: !3, line: 185, type: !66)
!655 = !DILocalVariable(name: "argv", arg: 2, scope: !649, file: !3, line: 185, type: !652)
!656 = !DILocalVariable(name: "ok", scope: !649, file: !3, line: 187, type: !36)
!657 = !DILocalVariable(name: "optc", scope: !649, file: !3, line: 188, type: !66)
!658 = !DILocalVariable(name: "dir", scope: !659, file: !3, line: 228, type: !20)
!659 = distinct !DILexicalBlock(scope: !660, file: !3, line: 227, column: 5)
!660 = distinct !DILexicalBlock(scope: !661, file: !3, line: 226, column: 3)
!661 = distinct !DILexicalBlock(scope: !649, file: !3, line: 226, column: 3)
!662 = !DILocation(line: 185, column: 11, scope: !649)
!663 = !DILocation(line: 185, column: 24, scope: !649)
!664 = !DILocation(line: 187, column: 8, scope: !649)
!665 = !DILocation(line: 191, column: 21, scope: !649)
!666 = !DILocation(line: 191, column: 3, scope: !649)
!667 = !DILocation(line: 192, column: 3, scope: !649)
!668 = !DILocation(line: 193, column: 3, scope: !649)
!669 = !DILocation(line: 194, column: 3, scope: !649)
!670 = !DILocation(line: 196, column: 3, scope: !649)
!671 = !DILocation(line: 198, column: 24, scope: !649)
!672 = !{!673, !673, i64 0}
!673 = !{!"_Bool", !608, i64 0}
!674 = !DILocation(line: 200, column: 3, scope: !649)
!675 = !DILocation(line: 200, column: 18, scope: !676)
!676 = !DILexicalBlockFile(scope: !649, file: !3, discriminator: 1)
!677 = !DILocation(line: 188, column: 7, scope: !649)
!678 = !DILocation(line: 200, column: 3, scope: !676)
!679 = !DILocation(line: 206, column: 11, scope: !680)
!680 = distinct !DILexicalBlock(scope: !681, file: !3, line: 203, column: 9)
!681 = distinct !DILexicalBlock(scope: !649, file: !3, line: 201, column: 5)
!682 = !DILocation(line: 212, column: 11, scope: !680)
!683 = !DILocation(line: 213, column: 9, scope: !680)
!684 = !DILocation(line: 214, column: 9, scope: !680)
!685 = !DILocation(line: 214, column: 9, scope: !686)
!686 = !DILexicalBlockFile(scope: !680, file: !3, discriminator: 1)
!687 = !DILocation(line: 216, column: 11, scope: !680)
!688 = !DILocation(line: 200, column: 3, scope: !689)
!689 = !DILexicalBlockFile(scope: !649, file: !3, discriminator: 2)
!690 = distinct !{!690, !674, !691}
!691 = !DILocation(line: 218, column: 5, scope: !649)
!692 = !DILocation(line: 220, column: 7, scope: !693)
!693 = distinct !DILexicalBlock(scope: !649, file: !3, line: 220, column: 7)
!694 = !{!695, !695, i64 0}
!695 = !{!"int", !608, i64 0}
!696 = !DILocation(line: 220, column: 14, scope: !693)
!697 = !DILocation(line: 220, column: 7, scope: !649)
!698 = !DILocation(line: 226, column: 17, scope: !699)
!699 = !DILexicalBlockFile(scope: !660, file: !3, discriminator: 1)
!700 = !DILocation(line: 226, column: 3, scope: !701)
!701 = !DILexicalBlockFile(scope: !661, file: !3, discriminator: 1)
!702 = !DILocation(line: 228, column: 19, scope: !659)
!703 = !DILocation(line: 222, column: 20, scope: !704)
!704 = distinct !DILexicalBlock(scope: !693, file: !3, line: 221, column: 5)
!705 = !DILocation(line: 222, column: 7, scope: !706)
!706 = !DILexicalBlockFile(scope: !704, file: !3, discriminator: 1)
!707 = !DILocation(line: 223, column: 7, scope: !704)
!708 = !DILocation(line: 228, column: 13, scope: !659)
!709 = !DILocation(line: 231, column: 11, scope: !710)
!710 = distinct !DILexicalBlock(scope: !659, file: !3, line: 231, column: 11)
!711 = !{i8 0, i8 2}
!712 = !DILocation(line: 231, column: 11, scope: !659)
!713 = !DILocation(line: 232, column: 23, scope: !710)
!714 = !DILocation(line: 232, column: 31, scope: !710)
!715 = !DILocation(line: 232, column: 60, scope: !716)
!716 = !DILexicalBlockFile(scope: !710, file: !3, discriminator: 1)
!717 = !DILocation(line: 232, column: 9, scope: !718)
!718 = !DILexicalBlockFile(scope: !710, file: !3, discriminator: 2)
!719 = !DILocation(line: 232, column: 9, scope: !710)
!720 = !DILocation(line: 234, column: 11, scope: !721)
!721 = distinct !DILexicalBlock(scope: !659, file: !3, line: 234, column: 11)
!722 = !DILocation(line: 234, column: 23, scope: !721)
!723 = !DILocation(line: 234, column: 11, scope: !659)
!724 = !DILocation(line: 236, column: 34, scope: !725)
!725 = distinct !DILexicalBlock(scope: !726, file: !3, line: 236, column: 15)
!726 = distinct !DILexicalBlock(scope: !721, file: !3, line: 235, column: 9)
!727 = !DILocation(line: 236, column: 15, scope: !728)
!728 = !DILexicalBlockFile(scope: !725, file: !3, discriminator: 1)
!729 = !DILocation(line: 236, column: 15, scope: !726)
!730 = !DILocation(line: 241, column: 21, scope: !726)
!731 = !DILocation(line: 241, column: 28, scope: !732)
!732 = !DILexicalBlockFile(scope: !726, file: !3, discriminator: 1)
!733 = !DILocation(line: 241, column: 54, scope: !734)
!734 = !DILexicalBlockFile(scope: !726, file: !3, discriminator: 2)
!735 = !DILocation(line: 241, column: 11, scope: !736)
!736 = !DILexicalBlockFile(scope: !726, file: !3, discriminator: 3)
!737 = !DILocation(line: 243, column: 9, scope: !726)
!738 = !DILocation(line: 244, column: 16, scope: !739)
!739 = distinct !DILexicalBlock(scope: !721, file: !3, line: 244, column: 16)
!740 = !DILocation(line: 244, column: 16, scope: !721)
!741 = !DILocalVariable(name: "dir", arg: 1, scope: !742, file: !3, line: 114, type: !20)
!742 = distinct !DISubprogram(name: "remove_parents", scope: !3, file: !3, line: 114, type: !743, isLocal: true, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !745)
!743 = !DISubroutineType(types: !744)
!744 = !{!36, !20}
!745 = !{!741, !746, !747}
!746 = !DILocalVariable(name: "slash", scope: !742, file: !3, line: 116, type: !20)
!747 = !DILocalVariable(name: "ok", scope: !742, file: !3, line: 117, type: !36)
!748 = !DILocation(line: 114, column: 23, scope: !742, inlinedAt: !749)
!749 = distinct !DILocation(line: 246, column: 17, scope: !750)
!750 = distinct !DILexicalBlock(scope: !739, file: !3, line: 245, column: 9)
!751 = !DILocation(line: 117, column: 8, scope: !742, inlinedAt: !749)
!752 = !DILocation(line: 119, column: 3, scope: !742, inlinedAt: !749)
!753 = !DILocation(line: 120, column: 3, scope: !742, inlinedAt: !749)
!754 = !DILocation(line: 122, column: 15, scope: !755, inlinedAt: !749)
!755 = distinct !DILexicalBlock(scope: !742, file: !3, line: 121, column: 5)
!756 = !DILocation(line: 116, column: 9, scope: !742, inlinedAt: !749)
!757 = !DILocation(line: 123, column: 17, scope: !758, inlinedAt: !749)
!758 = distinct !DILexicalBlock(scope: !755, file: !3, line: 123, column: 11)
!759 = !DILocation(line: 123, column: 11, scope: !755, inlinedAt: !749)
!760 = !DILocation(line: 127, column: 20, scope: !761, inlinedAt: !749)
!761 = !DILexicalBlockFile(scope: !755, file: !3, discriminator: 1)
!762 = !DILocation(line: 127, column: 26, scope: !761, inlinedAt: !749)
!763 = !DILocation(line: 127, column: 29, scope: !764, inlinedAt: !749)
!764 = !DILexicalBlockFile(scope: !755, file: !3, discriminator: 2)
!765 = !{!608, !608, i64 0}
!766 = !DILocation(line: 127, column: 36, scope: !764, inlinedAt: !749)
!767 = !DILocation(line: 127, column: 7, scope: !768, inlinedAt: !749)
!768 = !DILexicalBlockFile(scope: !755, file: !3, discriminator: 3)
!769 = !DILocation(line: 128, column: 9, scope: !755, inlinedAt: !749)
!770 = distinct !{!770, !771, !772}
!771 = !DILocation(line: 127, column: 7, scope: !755)
!772 = !DILocation(line: 128, column: 11, scope: !755)
!773 = !DILocation(line: 129, column: 7, scope: !755, inlinedAt: !749)
!774 = !DILocation(line: 129, column: 16, scope: !755, inlinedAt: !749)
!775 = !DILocation(line: 132, column: 11, scope: !776, inlinedAt: !749)
!776 = distinct !DILexicalBlock(scope: !755, file: !3, line: 132, column: 11)
!777 = !DILocation(line: 132, column: 11, scope: !755, inlinedAt: !749)
!778 = !DILocation(line: 133, column: 23, scope: !776, inlinedAt: !749)
!779 = !DILocation(line: 133, column: 31, scope: !776, inlinedAt: !749)
!780 = !DILocation(line: 133, column: 60, scope: !781, inlinedAt: !749)
!781 = !DILexicalBlockFile(scope: !776, file: !3, discriminator: 1)
!782 = !DILocation(line: 133, column: 9, scope: !783, inlinedAt: !749)
!783 = !DILexicalBlockFile(scope: !776, file: !3, discriminator: 2)
!784 = !DILocation(line: 133, column: 9, scope: !776, inlinedAt: !749)
!785 = !DILocation(line: 135, column: 13, scope: !755, inlinedAt: !749)
!786 = !DILocation(line: 135, column: 25, scope: !755, inlinedAt: !749)
!787 = !DILocation(line: 135, column: 10, scope: !755, inlinedAt: !749)
!788 = !DILocation(line: 137, column: 11, scope: !755, inlinedAt: !749)
!789 = distinct !{!789, !790, !791}
!790 = !DILocation(line: 120, column: 3, scope: !742)
!791 = !DILocation(line: 152, column: 5, scope: !742)
!792 = !DILocation(line: 140, column: 34, scope: !793, inlinedAt: !749)
!793 = distinct !DILexicalBlock(scope: !794, file: !3, line: 140, column: 15)
!794 = distinct !DILexicalBlock(scope: !795, file: !3, line: 138, column: 9)
!795 = distinct !DILexicalBlock(scope: !755, file: !3, line: 137, column: 11)
!796 = !DILocation(line: 140, column: 15, scope: !797, inlinedAt: !749)
!797 = !DILexicalBlockFile(scope: !793, file: !3, discriminator: 1)
!798 = !DILocation(line: 140, column: 15, scope: !794, inlinedAt: !749)
!799 = !DILocation(line: 147, column: 25, scope: !800, inlinedAt: !749)
!800 = distinct !DILexicalBlock(scope: !793, file: !3, line: 145, column: 13)
!801 = !DILocation(line: 147, column: 32, scope: !802, inlinedAt: !749)
!802 = !DILexicalBlockFile(scope: !800, file: !3, discriminator: 1)
!803 = !DILocation(line: 148, column: 22, scope: !800, inlinedAt: !749)
!804 = !DILocation(line: 147, column: 15, scope: !805, inlinedAt: !749)
!805 = !DILexicalBlockFile(scope: !800, file: !3, discriminator: 2)
!806 = !DILocation(line: 153, column: 10, scope: !742, inlinedAt: !749)
!807 = !DILocation(line: 246, column: 14, scope: !750)
!808 = !DILocation(line: 247, column: 9, scope: !750)
!809 = !DILocation(line: 226, column: 25, scope: !810)
!810 = !DILexicalBlockFile(scope: !660, file: !3, discriminator: 2)
!811 = distinct !{!811, !812, !813}
!812 = !DILocation(line: 226, column: 3, scope: !661)
!813 = !DILocation(line: 248, column: 5, scope: !661)
!814 = !DILocation(line: 250, column: 10, scope: !649)
!815 = !DILocation(line: 251, column: 1, scope: !649)
!816 = distinct !DISubprogram(name: "ignorable_failure", scope: !3, file: !3, line: 100, type: !817, isLocal: true, isDefinition: true, scopeLine: 101, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !819)
!817 = !DISubroutineType(types: !818)
!818 = !{!36, !66, !31}
!819 = !{!820, !821}
!820 = !DILocalVariable(name: "error_number", arg: 1, scope: !816, file: !3, line: 100, type: !66)
!821 = !DILocalVariable(name: "dir", arg: 2, scope: !816, file: !3, line: 100, type: !31)
!822 = !DILocation(line: 100, column: 24, scope: !816)
!823 = !DILocation(line: 100, column: 50, scope: !816)
!824 = !DILocation(line: 102, column: 11, scope: !816)
!825 = !DILocation(line: 103, column: 11, scope: !816)
!826 = !DILocation(line: 104, column: 15, scope: !816)
!827 = !DILocalVariable(name: "error_number", arg: 1, scope: !828, file: !3, line: 82, type: !66)
!828 = distinct !DISubprogram(name: "errno_may_be_empty", scope: !3, file: !3, line: 82, type: !829, isLocal: true, isDefinition: true, scopeLine: 83, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !831)
!829 = !DISubroutineType(types: !830)
!830 = !{!36, !66}
!831 = !{!827}
!832 = !DILocation(line: 82, column: 25, scope: !828, inlinedAt: !833)
!833 = distinct !DILocation(line: 104, column: 19, scope: !834)
!834 = !DILexicalBlockFile(scope: !816, file: !3, discriminator: 1)
!835 = !DILocation(line: 84, column: 3, scope: !828, inlinedAt: !833)
!836 = !DILocation(line: 105, column: 19, scope: !816)
!837 = !DILocalVariable(name: "fd_cwd", arg: 1, scope: !838, file: !42, line: 290, type: !66)
!838 = distinct !DISubprogram(name: "is_empty_dir", scope: !42, file: !42, line: 290, type: !817, isLocal: true, isDefinition: true, scopeLine: 291, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !839)
!839 = !{!837, !840, !841, !846, !861, !862}
!840 = !DILocalVariable(name: "dir", arg: 2, scope: !838, file: !42, line: 290, type: !31)
!841 = !DILocalVariable(name: "dirp", scope: !838, file: !42, line: 292, type: !842)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = !DIDerivedType(tag: DW_TAG_typedef, name: "DIR", file: !844, line: 127, baseType: !845)
!844 = !DIFile(filename: "/usr/include/dirent.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!845 = !DICompositeType(tag: DW_TAG_structure_type, name: "__dirstream", file: !844, line: 127, flags: DIFlagFwdDecl)
!846 = !DILocalVariable(name: "dp", scope: !838, file: !42, line: 293, type: !847)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !849)
!849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dirent", file: !850, line: 22, size: 2240, elements: !851)
!850 = !DIFile(filename: "/usr/include/bits/dirent.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!851 = !{!852, !855, !858, !859, !860}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino", scope: !849, file: !850, line: 25, baseType: !853, size: 64)
!853 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !854, line: 136, baseType: !25)
!854 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!855 = !DIDerivedType(tag: DW_TAG_member, name: "d_off", scope: !849, file: !850, line: 26, baseType: !856, size: 64, offset: 64)
!856 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !854, line: 140, baseType: !857)
!857 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "d_reclen", scope: !849, file: !850, line: 31, baseType: !136, size: 16, offset: 128)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "d_type", scope: !849, file: !850, line: 32, baseType: !30, size: 8, offset: 144)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !849, file: !850, line: 33, baseType: !162, size: 2048, offset: 152)
!861 = !DILocalVariable(name: "saved_errno", scope: !838, file: !42, line: 294, type: !66)
!862 = !DILocalVariable(name: "fd", scope: !838, file: !42, line: 295, type: !66)
!863 = !DILocation(line: 290, column: 19, scope: !838, inlinedAt: !864)
!864 = distinct !DILocation(line: 105, column: 22, scope: !834)
!865 = !DILocation(line: 295, column: 12, scope: !838, inlinedAt: !864)
!866 = !DILocation(line: 295, column: 7, scope: !838, inlinedAt: !864)
!867 = !DILocation(line: 299, column: 10, scope: !868, inlinedAt: !864)
!868 = distinct !DILexicalBlock(scope: !838, file: !42, line: 299, column: 7)
!869 = !DILocation(line: 299, column: 7, scope: !838, inlinedAt: !864)
!870 = !DILocation(line: 302, column: 10, scope: !838, inlinedAt: !864)
!871 = !DILocation(line: 292, column: 8, scope: !838, inlinedAt: !864)
!872 = !DILocation(line: 303, column: 12, scope: !873, inlinedAt: !864)
!873 = distinct !DILexicalBlock(scope: !838, file: !42, line: 303, column: 7)
!874 = !DILocation(line: 303, column: 7, scope: !838, inlinedAt: !864)
!875 = !DILocation(line: 305, column: 7, scope: !876, inlinedAt: !864)
!876 = distinct !DILexicalBlock(scope: !873, file: !42, line: 304, column: 5)
!877 = !DILocation(line: 306, column: 7, scope: !876, inlinedAt: !864)
!878 = !DILocation(line: 309, column: 3, scope: !838, inlinedAt: !864)
!879 = !DILocation(line: 309, column: 9, scope: !838, inlinedAt: !864)
!880 = !DILocalVariable(name: "dirp", arg: 1, scope: !881, file: !42, line: 278, type: !842)
!881 = distinct !DISubprogram(name: "readdir_ignoring_dot_and_dotdot", scope: !42, file: !42, line: 278, type: !882, isLocal: true, isDefinition: true, scopeLine: 279, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !884)
!882 = !DISubroutineType(types: !883)
!883 = !{!847, !842}
!884 = !{!880, !885}
!885 = !DILocalVariable(name: "dp", scope: !886, file: !42, line: 282, type: !847)
!886 = distinct !DILexicalBlock(scope: !881, file: !42, line: 281, column: 5)
!887 = !DILocation(line: 278, column: 39, scope: !881, inlinedAt: !888)
!888 = distinct !DILocation(line: 310, column: 8, scope: !838, inlinedAt: !864)
!889 = !DILocation(line: 282, column: 33, scope: !886, inlinedAt: !888)
!890 = !DILocation(line: 282, column: 28, scope: !886, inlinedAt: !888)
!891 = !DILocation(line: 283, column: 14, scope: !892, inlinedAt: !888)
!892 = distinct !DILexicalBlock(scope: !886, file: !42, line: 283, column: 11)
!893 = !DILocation(line: 283, column: 22, scope: !892, inlinedAt: !888)
!894 = !DILocation(line: 283, column: 42, scope: !895, inlinedAt: !888)
!895 = !DILexicalBlockFile(scope: !892, file: !42, discriminator: 1)
!896 = !DILocalVariable(name: "file_name", arg: 1, scope: !897, file: !42, line: 265, type: !31)
!897 = distinct !DISubprogram(name: "dot_or_dotdot", scope: !42, file: !42, line: 265, type: !898, isLocal: true, isDefinition: true, scopeLine: 266, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !900)
!898 = !DISubroutineType(types: !899)
!899 = !{!36, !31}
!900 = !{!896, !901}
!901 = !DILocalVariable(name: "sep", scope: !902, file: !42, line: 269, type: !21)
!902 = distinct !DILexicalBlock(scope: !903, file: !42, line: 268, column: 5)
!903 = distinct !DILexicalBlock(scope: !897, file: !42, line: 267, column: 7)
!904 = !DILocation(line: 265, column: 28, scope: !897, inlinedAt: !905)
!905 = distinct !DILocation(line: 283, column: 27, scope: !895, inlinedAt: !888)
!906 = !DILocation(line: 267, column: 7, scope: !903, inlinedAt: !905)
!907 = !DILocation(line: 267, column: 20, scope: !903, inlinedAt: !905)
!908 = !DILocation(line: 267, column: 7, scope: !897, inlinedAt: !905)
!909 = !DILocation(line: 312, column: 3, scope: !838, inlinedAt: !864)
!910 = !DILocation(line: 313, column: 7, scope: !838, inlinedAt: !864)
!911 = !DILocation(line: 269, column: 29, scope: !902, inlinedAt: !905)
!912 = !DILocation(line: 269, column: 42, scope: !902, inlinedAt: !905)
!913 = !DILocation(line: 269, column: 18, scope: !902, inlinedAt: !905)
!914 = !DILocation(line: 269, column: 12, scope: !902, inlinedAt: !905)
!915 = !DILocation(line: 270, column: 17, scope: !902, inlinedAt: !905)
!916 = !DILocation(line: 270, column: 24, scope: !917, inlinedAt: !905)
!917 = !DILexicalBlockFile(scope: !902, file: !42, discriminator: 1)
!918 = !DILocation(line: 270, column: 21, scope: !902, inlinedAt: !905)
!919 = !DILocation(line: 283, column: 11, scope: !920, inlinedAt: !888)
!920 = !DILexicalBlockFile(scope: !886, file: !42, discriminator: 1)
!921 = !DILocation(line: 293, column: 24, scope: !838, inlinedAt: !864)
!922 = !DILocation(line: 311, column: 17, scope: !838, inlinedAt: !864)
!923 = !DILocation(line: 294, column: 7, scope: !838, inlinedAt: !864)
!924 = !DILocation(line: 313, column: 10, scope: !925, inlinedAt: !864)
!925 = distinct !DILexicalBlock(scope: !838, file: !42, line: 313, column: 7)
!926 = !DILocation(line: 315, column: 22, scope: !838, inlinedAt: !864)
!927 = !DILocation(line: 315, column: 3, scope: !838, inlinedAt: !864)
!928 = !DILocation(line: 102, column: 3, scope: !834)
!929 = distinct !DISubprogram(name: "prog_fprintf", scope: !538, file: !538, line: 28, type: !930, isLocal: false, isDefinition: true, scopeLine: 29, flags: DIFlagPrototyped, isOptimized: true, unit: !537, variables: !984)
!930 = !DISubroutineType(types: !931)
!931 = !{null, !932, !31, null}
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !934, line: 49, baseType: !935)
!934 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !936, line: 241, size: 1728, elements: !937)
!936 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!937 = !{!938, !939, !940, !941, !942, !943, !944, !945, !946, !947, !948, !949, !950, !958, !959, !960, !961, !962, !963, !965, !969, !972, !974, !975, !976, !977, !978, !979, !980}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !935, file: !936, line: 242, baseType: !66, size: 32)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !935, file: !936, line: 247, baseType: !20, size: 64, offset: 64)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !935, file: !936, line: 248, baseType: !20, size: 64, offset: 128)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !935, file: !936, line: 249, baseType: !20, size: 64, offset: 192)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !935, file: !936, line: 250, baseType: !20, size: 64, offset: 256)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !935, file: !936, line: 251, baseType: !20, size: 64, offset: 320)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !935, file: !936, line: 252, baseType: !20, size: 64, offset: 384)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !935, file: !936, line: 253, baseType: !20, size: 64, offset: 448)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !935, file: !936, line: 254, baseType: !20, size: 64, offset: 512)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !935, file: !936, line: 256, baseType: !20, size: 64, offset: 576)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !935, file: !936, line: 257, baseType: !20, size: 64, offset: 640)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !935, file: !936, line: 258, baseType: !20, size: 64, offset: 704)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !935, file: !936, line: 260, baseType: !951, size: 64, offset: 768)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !936, line: 156, size: 192, elements: !953)
!953 = !{!954, !955, !957}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !952, file: !936, line: 157, baseType: !951, size: 64)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !952, file: !936, line: 158, baseType: !956, size: 64, offset: 64)
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !935, size: 64)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !952, file: !936, line: 162, baseType: !66, size: 32, offset: 128)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !935, file: !936, line: 262, baseType: !956, size: 64, offset: 832)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !935, file: !936, line: 264, baseType: !66, size: 32, offset: 896)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !935, file: !936, line: 268, baseType: !66, size: 32, offset: 928)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !935, file: !936, line: 270, baseType: !856, size: 64, offset: 960)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !935, file: !936, line: 274, baseType: !136, size: 16, offset: 1024)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !935, file: !936, line: 275, baseType: !964, size: 8, offset: 1040)
!964 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !935, file: !936, line: 276, baseType: !966, size: 8, offset: 1048)
!966 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 8, elements: !967)
!967 = !{!968}
!968 = !DISubrange(count: 1)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !935, file: !936, line: 280, baseType: !970, size: 64, offset: 1088)
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64)
!971 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !936, line: 150, baseType: null)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !935, file: !936, line: 289, baseType: !973, size: 64, offset: 1152)
!973 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !854, line: 141, baseType: !857)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !935, file: !936, line: 297, baseType: !22, size: 64, offset: 1216)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !935, file: !936, line: 298, baseType: !22, size: 64, offset: 1280)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !935, file: !936, line: 299, baseType: !22, size: 64, offset: 1344)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !935, file: !936, line: 300, baseType: !22, size: 64, offset: 1408)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !935, file: !936, line: 302, baseType: !23, size: 64, offset: 1472)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !935, file: !936, line: 303, baseType: !66, size: 32, offset: 1536)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !935, file: !936, line: 305, baseType: !981, size: 160, offset: 1568)
!981 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 160, elements: !982)
!982 = !{!983}
!983 = !DISubrange(count: 20)
!984 = !{!985, !986, !987}
!985 = !DILocalVariable(name: "fp", arg: 1, scope: !929, file: !538, line: 28, type: !932)
!986 = !DILocalVariable(name: "fmt", arg: 2, scope: !929, file: !538, line: 28, type: !31)
!987 = !DILocalVariable(name: "ap", scope: !929, file: !538, line: 30, type: !988)
!988 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !934, line: 80, baseType: !989)
!989 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !990, line: 50, baseType: !991)
!990 = !DIFile(filename: "/usr/bin/../lib/clang/4.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!991 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !538, line: 30, baseType: !992)
!992 = !DICompositeType(tag: DW_TAG_array_type, baseType: !993, size: 192, elements: !967)
!993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !538, line: 30, size: 192, elements: !994)
!994 = !{!995, !996, !997, !998}
!995 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !993, file: !538, line: 30, baseType: !153, size: 32)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !993, file: !538, line: 30, baseType: !153, size: 32, offset: 32)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !993, file: !538, line: 30, baseType: !22, size: 64, offset: 64)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !993, file: !538, line: 30, baseType: !22, size: 64, offset: 128)
!999 = !DILocation(line: 28, column: 21, scope: !929)
!1000 = !DILocation(line: 28, column: 37, scope: !929)
!1001 = !DILocation(line: 30, column: 3, scope: !929)
!1002 = !DILocation(line: 30, column: 11, scope: !929)
!1003 = !DILocation(line: 31, column: 3, scope: !929)
!1004 = !DILocation(line: 32, column: 3, scope: !929)
!1005 = !DILocation(line: 33, column: 3, scope: !929)
!1006 = !DILocalVariable(name: "__stream", arg: 1, scope: !1007, file: !1008, line: 124, type: !1011)
!1007 = distinct !DISubprogram(name: "vfprintf", scope: !1008, file: !1008, line: 124, type: !1009, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !537, variables: !1014)
!1008 = !DIFile(filename: "/usr/include/bits/stdio2.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1009 = !DISubroutineType(types: !1010)
!1010 = !{!66, !1011, !1012, !1013}
!1011 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !932)
!1012 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !31)
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 64)
!1014 = !{!1006, !1015, !1016}
!1015 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1007, file: !1008, line: 125, type: !1012)
!1016 = !DILocalVariable(name: "__ap", arg: 3, scope: !1007, file: !1008, line: 125, type: !1013)
!1017 = !DILocation(line: 124, column: 28, scope: !1007, inlinedAt: !1018)
!1018 = distinct !DILocation(line: 34, column: 3, scope: !929)
!1019 = !DILocation(line: 125, column: 27, scope: !1007, inlinedAt: !1018)
!1020 = !DILocation(line: 125, column: 45, scope: !1007, inlinedAt: !1018)
!1021 = !DILocation(line: 127, column: 10, scope: !1007, inlinedAt: !1018)
!1022 = !DILocation(line: 35, column: 3, scope: !929)
!1023 = !DILocalVariable(name: "__c", arg: 1, scope: !1024, file: !1025, line: 88, type: !66)
!1024 = distinct !DISubprogram(name: "fputc_unlocked", scope: !1025, file: !1025, line: 88, type: !1026, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !537, variables: !1028)
!1025 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1026 = !DISubroutineType(types: !1027)
!1027 = !{!66, !66, !932}
!1028 = !{!1023, !1029}
!1029 = !DILocalVariable(name: "__stream", arg: 2, scope: !1024, file: !1025, line: 88, type: !932)
!1030 = !DILocation(line: 88, column: 21, scope: !1024, inlinedAt: !1031)
!1031 = distinct !DILocation(line: 36, column: 3, scope: !929)
!1032 = !DILocation(line: 88, column: 32, scope: !1024, inlinedAt: !1031)
!1033 = !DILocation(line: 90, column: 10, scope: !1024, inlinedAt: !1031)
!1034 = !{!1035, !607, i64 40}
!1035 = !{!"_IO_FILE", !695, i64 0, !607, i64 8, !607, i64 16, !607, i64 24, !607, i64 32, !607, i64 40, !607, i64 48, !607, i64 56, !607, i64 64, !607, i64 72, !607, i64 80, !607, i64 88, !607, i64 96, !607, i64 104, !695, i64 112, !695, i64 116, !1036, i64 120, !1037, i64 128, !608, i64 130, !608, i64 131, !607, i64 136, !1036, i64 144, !607, i64 152, !607, i64 160, !607, i64 168, !607, i64 176, !1036, i64 184, !695, i64 192, !608, i64 196}
!1036 = !{!"long", !608, i64 0}
!1037 = !{!"short", !608, i64 0}
!1038 = !{!1035, !607, i64 48}
!1039 = !{!"branch_weights", i32 2000, i32 1}
!1040 = !DILocation(line: 90, column: 10, scope: !1041, inlinedAt: !1031)
!1041 = !DILexicalBlockFile(scope: !1024, file: !1025, discriminator: 1)
!1042 = !DILocation(line: 90, column: 10, scope: !1043, inlinedAt: !1031)
!1043 = !DILexicalBlockFile(scope: !1024, file: !1025, discriminator: 2)
!1044 = !DILocation(line: 37, column: 1, scope: !929)
!1045 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !95, file: !95, line: 41, type: !43, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !90, variables: !1046)
!1046 = !{!1047}
!1047 = !DILocalVariable(name: "file", arg: 1, scope: !1045, file: !95, line: 41, type: !31)
!1048 = !DILocation(line: 41, column: 41, scope: !1045)
!1049 = !DILocation(line: 43, column: 13, scope: !1045)
!1050 = !DILocation(line: 44, column: 1, scope: !1045)
!1051 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !95, file: !95, line: 78, type: !1052, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !90, variables: !1054)
!1052 = !DISubroutineType(types: !1053)
!1053 = !{null, !36}
!1054 = !{!1055}
!1055 = !DILocalVariable(name: "ignore", arg: 1, scope: !1051, file: !95, line: 78, type: !36)
!1056 = !DIExpression(DW_OP_LLVM_fragment, 0, 1)
!1057 = !DILocation(line: 78, column: 37, scope: !1051)
!1058 = !DILocation(line: 80, column: 16, scope: !1051)
!1059 = !DILocation(line: 81, column: 1, scope: !1051)
!1060 = distinct !DISubprogram(name: "close_stdout", scope: !95, file: !95, line: 107, type: !1061, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !90, variables: !1063)
!1061 = !DISubroutineType(types: !1062)
!1062 = !{null}
!1063 = !{!1064}
!1064 = !DILocalVariable(name: "write_error", scope: !1065, file: !95, line: 112, type: !31)
!1065 = distinct !DILexicalBlock(scope: !1066, file: !95, line: 111, column: 5)
!1066 = distinct !DILexicalBlock(scope: !1060, file: !95, line: 109, column: 7)
!1067 = !DILocation(line: 109, column: 21, scope: !1066)
!1068 = !DILocation(line: 109, column: 7, scope: !1066)
!1069 = !DILocation(line: 109, column: 29, scope: !1066)
!1070 = !DILocation(line: 110, column: 7, scope: !1066)
!1071 = !DILocation(line: 110, column: 12, scope: !1072)
!1072 = !DILexicalBlockFile(scope: !1066, file: !95, discriminator: 1)
!1073 = !DILocation(line: 114, column: 19, scope: !1074)
!1074 = distinct !DILexicalBlock(scope: !1065, file: !95, line: 113, column: 11)
!1075 = !DILocation(line: 110, column: 25, scope: !1072)
!1076 = !DILocation(line: 110, column: 28, scope: !1077)
!1077 = !DILexicalBlockFile(scope: !1066, file: !95, discriminator: 2)
!1078 = !DILocation(line: 110, column: 34, scope: !1077)
!1079 = !DILocation(line: 109, column: 7, scope: !1080)
!1080 = !DILexicalBlockFile(scope: !1060, file: !95, discriminator: 1)
!1081 = !DILocation(line: 112, column: 33, scope: !1065)
!1082 = !DILocation(line: 112, column: 19, scope: !1065)
!1083 = !DILocation(line: 113, column: 11, scope: !1074)
!1084 = !DILocation(line: 113, column: 11, scope: !1065)
!1085 = !DILocation(line: 114, column: 36, scope: !1086)
!1086 = !DILexicalBlockFile(scope: !1074, file: !95, discriminator: 1)
!1087 = !DILocation(line: 114, column: 9, scope: !1088)
!1088 = !DILexicalBlockFile(scope: !1074, file: !95, discriminator: 2)
!1089 = !DILocation(line: 114, column: 9, scope: !1074)
!1090 = !DILocation(line: 117, column: 9, scope: !1086)
!1091 = !DILocation(line: 119, column: 14, scope: !1065)
!1092 = !DILocation(line: 119, column: 7, scope: !1065)
!1093 = !DILocation(line: 122, column: 22, scope: !1094)
!1094 = distinct !DILexicalBlock(scope: !1060, file: !95, line: 122, column: 8)
!1095 = !DILocation(line: 122, column: 8, scope: !1094)
!1096 = !DILocation(line: 122, column: 30, scope: !1094)
!1097 = !DILocation(line: 122, column: 8, scope: !1060)
!1098 = !DILocation(line: 123, column: 13, scope: !1094)
!1099 = !DILocation(line: 123, column: 6, scope: !1094)
!1100 = !DILocation(line: 124, column: 1, scope: !1060)
!1101 = distinct !DISubprogram(name: "strip_trailing_slashes", scope: !1102, file: !1102, line: 31, type: !743, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !540, variables: !1103)
!1102 = !DIFile(filename: "lib/stripslash.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1103 = !{!1104, !1105, !1106, !1107}
!1104 = !DILocalVariable(name: "file", arg: 1, scope: !1101, file: !1102, line: 31, type: !20)
!1105 = !DILocalVariable(name: "base", scope: !1101, file: !1102, line: 33, type: !20)
!1106 = !DILocalVariable(name: "base_lim", scope: !1101, file: !1102, line: 34, type: !20)
!1107 = !DILocalVariable(name: "had_slash", scope: !1101, file: !1102, line: 35, type: !36)
!1108 = !DILocation(line: 31, column: 31, scope: !1101)
!1109 = !DILocation(line: 33, column: 16, scope: !1101)
!1110 = !DILocation(line: 33, column: 9, scope: !1101)
!1111 = !DILocation(line: 39, column: 9, scope: !1112)
!1112 = distinct !DILexicalBlock(scope: !1101, file: !1102, line: 39, column: 7)
!1113 = !DILocation(line: 39, column: 7, scope: !1101)
!1114 = !DILocation(line: 41, column: 21, scope: !1101)
!1115 = !DILocation(line: 41, column: 19, scope: !1101)
!1116 = !DILocation(line: 34, column: 9, scope: !1101)
!1117 = !DILocation(line: 42, column: 16, scope: !1101)
!1118 = !DILocation(line: 42, column: 26, scope: !1101)
!1119 = !DILocation(line: 43, column: 13, scope: !1101)
!1120 = !DILocation(line: 44, column: 3, scope: !1101)
!1121 = distinct !DISubprogram(name: "set_program_name", scope: !109, file: !109, line: 39, type: !43, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !105, variables: !1122)
!1122 = !{!1123, !1124, !1125}
!1123 = !DILocalVariable(name: "argv0", arg: 1, scope: !1121, file: !109, line: 39, type: !31)
!1124 = !DILocalVariable(name: "slash", scope: !1121, file: !109, line: 46, type: !31)
!1125 = !DILocalVariable(name: "base", scope: !1121, file: !109, line: 47, type: !31)
!1126 = !DILocation(line: 39, column: 31, scope: !1121)
!1127 = !DILocation(line: 51, column: 13, scope: !1128)
!1128 = distinct !DILexicalBlock(scope: !1121, file: !109, line: 51, column: 7)
!1129 = !DILocation(line: 51, column: 7, scope: !1121)
!1130 = !DILocation(line: 55, column: 14, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !1128, file: !109, line: 52, column: 5)
!1132 = !DILocation(line: 54, column: 7, scope: !1131)
!1133 = !DILocation(line: 56, column: 7, scope: !1131)
!1134 = !DILocation(line: 59, column: 11, scope: !1121)
!1135 = !DILocation(line: 46, column: 15, scope: !1121)
!1136 = !DILocation(line: 60, column: 17, scope: !1121)
!1137 = !DILocation(line: 60, column: 33, scope: !1138)
!1138 = !DILexicalBlockFile(scope: !1121, file: !109, discriminator: 1)
!1139 = !DILocation(line: 60, column: 11, scope: !1121)
!1140 = !DILocation(line: 47, column: 15, scope: !1121)
!1141 = !DILocation(line: 61, column: 12, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !1121, file: !109, line: 61, column: 7)
!1143 = !DILocation(line: 61, column: 20, scope: !1142)
!1144 = !DILocation(line: 61, column: 25, scope: !1142)
!1145 = !DILocation(line: 61, column: 28, scope: !1146)
!1146 = !DILexicalBlockFile(scope: !1142, file: !109, discriminator: 1)
!1147 = !DILocation(line: 61, column: 61, scope: !1146)
!1148 = !DILocation(line: 61, column: 7, scope: !1138)
!1149 = !DILocation(line: 64, column: 11, scope: !1150)
!1150 = distinct !DILexicalBlock(scope: !1151, file: !109, line: 64, column: 11)
!1151 = distinct !DILexicalBlock(scope: !1142, file: !109, line: 62, column: 5)
!1152 = !DILocation(line: 64, column: 36, scope: !1150)
!1153 = !DILocation(line: 64, column: 11, scope: !1151)
!1154 = !DILocation(line: 66, column: 24, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !1150, file: !109, line: 65, column: 9)
!1156 = !DILocation(line: 70, column: 41, scope: !1155)
!1157 = !DILocation(line: 72, column: 9, scope: !1155)
!1158 = !DILocation(line: 84, column: 16, scope: !1121)
!1159 = !DILocation(line: 90, column: 27, scope: !1121)
!1160 = !DILocation(line: 92, column: 1, scope: !1121)
!1161 = distinct !DISubprogram(name: "clone_quoting_options", scope: !140, file: !140, line: 114, type: !1162, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !112, variables: !1165)
!1162 = !DISubroutineType(types: !1163)
!1163 = !{!1164, !1164}
!1164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!1165 = !{!1166, !1167, !1168}
!1166 = !DILocalVariable(name: "o", arg: 1, scope: !1161, file: !140, line: 114, type: !1164)
!1167 = !DILocalVariable(name: "e", scope: !1161, file: !140, line: 116, type: !66)
!1168 = !DILocalVariable(name: "p", scope: !1161, file: !140, line: 117, type: !1164)
!1169 = !DILocation(line: 114, column: 48, scope: !1161)
!1170 = !DILocation(line: 116, column: 11, scope: !1161)
!1171 = !DILocation(line: 116, column: 7, scope: !1161)
!1172 = !DILocation(line: 117, column: 40, scope: !1161)
!1173 = !DILocation(line: 117, column: 40, scope: !1174)
!1174 = !DILexicalBlockFile(scope: !1161, file: !140, discriminator: 3)
!1175 = !DILocation(line: 117, column: 31, scope: !1174)
!1176 = !DILocation(line: 117, column: 27, scope: !1161)
!1177 = !DILocation(line: 119, column: 9, scope: !1161)
!1178 = !DILocation(line: 120, column: 3, scope: !1161)
!1179 = distinct !DISubprogram(name: "get_quoting_style", scope: !140, file: !140, line: 125, type: !1180, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !112, variables: !1184)
!1180 = !DISubroutineType(types: !1181)
!1181 = !{!5, !1182}
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!1183 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !147)
!1184 = !{!1185}
!1185 = !DILocalVariable(name: "o", arg: 1, scope: !1179, file: !140, line: 125, type: !1182)
!1186 = !DILocation(line: 125, column: 50, scope: !1179)
!1187 = !DILocation(line: 127, column: 11, scope: !1179)
!1188 = !DILocation(line: 127, column: 46, scope: !1189)
!1189 = !DILexicalBlockFile(scope: !1179, file: !140, discriminator: 3)
!1190 = !{!1191, !608, i64 0}
!1191 = !{!"quoting_options", !608, i64 0, !695, i64 4, !608, i64 8, !607, i64 40, !607, i64 48}
!1192 = !DILocation(line: 127, column: 3, scope: !1189)
!1193 = distinct !DISubprogram(name: "set_quoting_style", scope: !140, file: !140, line: 133, type: !1194, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !112, variables: !1196)
!1194 = !DISubroutineType(types: !1195)
!1195 = !{null, !1164, !5}
!1196 = !{!1197, !1198}
!1197 = !DILocalVariable(name: "o", arg: 1, scope: !1193, file: !140, line: 133, type: !1164)
!1198 = !DILocalVariable(name: "s", arg: 2, scope: !1193, file: !140, line: 133, type: !5)
!1199 = !DILocation(line: 133, column: 44, scope: !1193)
!1200 = !DILocation(line: 133, column: 66, scope: !1193)
!1201 = !DILocation(line: 135, column: 4, scope: !1193)
!1202 = !DILocation(line: 135, column: 39, scope: !1203)
!1203 = !DILexicalBlockFile(scope: !1193, file: !140, discriminator: 3)
!1204 = !DILocation(line: 135, column: 45, scope: !1203)
!1205 = !DILocation(line: 136, column: 1, scope: !1193)
!1206 = distinct !DISubprogram(name: "set_char_quoting", scope: !140, file: !140, line: 144, type: !1207, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !112, variables: !1209)
!1207 = !DISubroutineType(types: !1208)
!1208 = !{!66, !1164, !21, !66}
!1209 = !{!1210, !1211, !1212, !1213, !1214, !1216, !1217}
!1210 = !DILocalVariable(name: "o", arg: 1, scope: !1206, file: !140, line: 144, type: !1164)
!1211 = !DILocalVariable(name: "c", arg: 2, scope: !1206, file: !140, line: 144, type: !21)
!1212 = !DILocalVariable(name: "i", arg: 3, scope: !1206, file: !140, line: 144, type: !66)
!1213 = !DILocalVariable(name: "uc", scope: !1206, file: !140, line: 146, type: !30)
!1214 = !DILocalVariable(name: "p", scope: !1206, file: !140, line: 147, type: !1215)
!1215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!1216 = !DILocalVariable(name: "shift", scope: !1206, file: !140, line: 149, type: !66)
!1217 = !DILocalVariable(name: "r", scope: !1206, file: !140, line: 150, type: !66)
!1218 = !DILocation(line: 144, column: 43, scope: !1206)
!1219 = !DILocation(line: 144, column: 51, scope: !1206)
!1220 = !DILocation(line: 144, column: 58, scope: !1206)
!1221 = !DILocation(line: 146, column: 17, scope: !1206)
!1222 = !DILocation(line: 148, column: 6, scope: !1206)
!1223 = !DILocation(line: 148, column: 62, scope: !1224)
!1224 = !DILexicalBlockFile(scope: !1206, file: !140, discriminator: 3)
!1225 = !DILocation(line: 148, column: 57, scope: !1224)
!1226 = !DILocation(line: 147, column: 17, scope: !1206)
!1227 = !DILocation(line: 149, column: 18, scope: !1206)
!1228 = !DILocation(line: 149, column: 15, scope: !1206)
!1229 = !DILocation(line: 149, column: 7, scope: !1206)
!1230 = !DILocation(line: 150, column: 12, scope: !1206)
!1231 = !DILocation(line: 150, column: 15, scope: !1206)
!1232 = !DILocation(line: 150, column: 25, scope: !1206)
!1233 = !DILocation(line: 150, column: 7, scope: !1206)
!1234 = !DILocation(line: 151, column: 13, scope: !1206)
!1235 = !DILocation(line: 151, column: 18, scope: !1206)
!1236 = !DILocation(line: 151, column: 23, scope: !1206)
!1237 = !DILocation(line: 151, column: 6, scope: !1206)
!1238 = !DILocation(line: 152, column: 3, scope: !1206)
!1239 = distinct !DISubprogram(name: "set_quoting_flags", scope: !140, file: !140, line: 160, type: !1240, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !112, variables: !1242)
!1240 = !DISubroutineType(types: !1241)
!1241 = !{!66, !1164, !66}
!1242 = !{!1243, !1244, !1245}
!1243 = !DILocalVariable(name: "o", arg: 1, scope: !1239, file: !140, line: 160, type: !1164)
!1244 = !DILocalVariable(name: "i", arg: 2, scope: !1239, file: !140, line: 160, type: !66)
!1245 = !DILocalVariable(name: "r", scope: !1239, file: !140, line: 162, type: !66)
!1246 = !DILocation(line: 160, column: 44, scope: !1239)
!1247 = !DILocation(line: 160, column: 51, scope: !1239)
!1248 = !DILocation(line: 163, column: 8, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !1239, file: !140, line: 163, column: 7)
!1250 = !DILocation(line: 163, column: 7, scope: !1239)
!1251 = !DILocation(line: 165, column: 10, scope: !1239)
!1252 = !{!1191, !695, i64 4}
!1253 = !DILocation(line: 162, column: 7, scope: !1239)
!1254 = !DILocation(line: 166, column: 12, scope: !1239)
!1255 = !DILocation(line: 167, column: 3, scope: !1239)
!1256 = distinct !DISubprogram(name: "set_custom_quoting", scope: !140, file: !140, line: 171, type: !1257, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !112, variables: !1259)
!1257 = !DISubroutineType(types: !1258)
!1258 = !{null, !1164, !31, !31}
!1259 = !{!1260, !1261, !1262}
!1260 = !DILocalVariable(name: "o", arg: 1, scope: !1256, file: !140, line: 171, type: !1164)
!1261 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1256, file: !140, line: 172, type: !31)
!1262 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1256, file: !140, line: 172, type: !31)
!1263 = !DILocation(line: 171, column: 45, scope: !1256)
!1264 = !DILocation(line: 172, column: 33, scope: !1256)
!1265 = !DILocation(line: 172, column: 57, scope: !1256)
!1266 = !DILocation(line: 174, column: 8, scope: !1267)
!1267 = distinct !DILexicalBlock(scope: !1256, file: !140, line: 174, column: 7)
!1268 = !DILocation(line: 174, column: 7, scope: !1256)
!1269 = !DILocation(line: 176, column: 6, scope: !1256)
!1270 = !DILocation(line: 176, column: 12, scope: !1256)
!1271 = !DILocation(line: 177, column: 8, scope: !1272)
!1272 = distinct !DILexicalBlock(scope: !1256, file: !140, line: 177, column: 7)
!1273 = !DILocation(line: 177, column: 23, scope: !1274)
!1274 = !DILexicalBlockFile(scope: !1272, file: !140, discriminator: 1)
!1275 = !DILocation(line: 177, column: 19, scope: !1272)
!1276 = !DILocation(line: 178, column: 5, scope: !1272)
!1277 = !DILocation(line: 179, column: 6, scope: !1256)
!1278 = !DILocation(line: 179, column: 17, scope: !1256)
!1279 = !{!1191, !607, i64 40}
!1280 = !DILocation(line: 180, column: 6, scope: !1256)
!1281 = !DILocation(line: 180, column: 18, scope: !1256)
!1282 = !{!1191, !607, i64 48}
!1283 = !DILocation(line: 181, column: 1, scope: !1256)
!1284 = distinct !DISubprogram(name: "quotearg_buffer", scope: !140, file: !140, line: 776, type: !1285, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !112, variables: !1287)
!1285 = !DISubroutineType(types: !1286)
!1286 = !{!23, !20, !23, !31, !23, !1182}
!1287 = !{!1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295}
!1288 = !DILocalVariable(name: "buffer", arg: 1, scope: !1284, file: !140, line: 776, type: !20)
!1289 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1284, file: !140, line: 776, type: !23)
!1290 = !DILocalVariable(name: "arg", arg: 3, scope: !1284, file: !140, line: 777, type: !31)
!1291 = !DILocalVariable(name: "argsize", arg: 4, scope: !1284, file: !140, line: 777, type: !23)
!1292 = !DILocalVariable(name: "o", arg: 5, scope: !1284, file: !140, line: 778, type: !1182)
!1293 = !DILocalVariable(name: "p", scope: !1284, file: !140, line: 780, type: !1182)
!1294 = !DILocalVariable(name: "e", scope: !1284, file: !140, line: 781, type: !66)
!1295 = !DILocalVariable(name: "r", scope: !1284, file: !140, line: 782, type: !23)
!1296 = !DILocation(line: 776, column: 24, scope: !1284)
!1297 = !DILocation(line: 776, column: 39, scope: !1284)
!1298 = !DILocation(line: 777, column: 30, scope: !1284)
!1299 = !DILocation(line: 777, column: 42, scope: !1284)
!1300 = !DILocation(line: 778, column: 48, scope: !1284)
!1301 = !DILocation(line: 780, column: 37, scope: !1284)
!1302 = !DILocation(line: 780, column: 33, scope: !1284)
!1303 = !DILocation(line: 781, column: 11, scope: !1284)
!1304 = !DILocation(line: 781, column: 7, scope: !1284)
!1305 = !DILocation(line: 783, column: 43, scope: !1284)
!1306 = !DILocation(line: 783, column: 53, scope: !1284)
!1307 = !DILocation(line: 783, column: 60, scope: !1284)
!1308 = !DILocation(line: 784, column: 43, scope: !1284)
!1309 = !DILocation(line: 784, column: 58, scope: !1284)
!1310 = !DILocation(line: 782, column: 14, scope: !1284)
!1311 = !DILocation(line: 782, column: 10, scope: !1284)
!1312 = !DILocation(line: 785, column: 9, scope: !1284)
!1313 = !DILocation(line: 786, column: 3, scope: !1284)
!1314 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !140, file: !140, line: 248, type: !1315, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !112, variables: !1319)
!1315 = !DISubroutineType(types: !1316)
!1316 = !{!23, !20, !23, !31, !23, !5, !66, !1317, !31, !31}
!1317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1318, size: 64)
!1318 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !153)
!1319 = !{!1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1344, !1345, !1346, !1347, !1348, !1351, !1352, !1369, !1372, !1373, !1380}
!1320 = !DILocalVariable(name: "buffer", arg: 1, scope: !1314, file: !140, line: 248, type: !20)
!1321 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1314, file: !140, line: 248, type: !23)
!1322 = !DILocalVariable(name: "arg", arg: 3, scope: !1314, file: !140, line: 249, type: !31)
!1323 = !DILocalVariable(name: "argsize", arg: 4, scope: !1314, file: !140, line: 249, type: !23)
!1324 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1314, file: !140, line: 250, type: !5)
!1325 = !DILocalVariable(name: "flags", arg: 6, scope: !1314, file: !140, line: 250, type: !66)
!1326 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1314, file: !140, line: 251, type: !1317)
!1327 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1314, file: !140, line: 252, type: !31)
!1328 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1314, file: !140, line: 253, type: !31)
!1329 = !DILocalVariable(name: "i", scope: !1314, file: !140, line: 255, type: !23)
!1330 = !DILocalVariable(name: "len", scope: !1314, file: !140, line: 256, type: !23)
!1331 = !DILocalVariable(name: "orig_buffersize", scope: !1314, file: !140, line: 257, type: !23)
!1332 = !DILocalVariable(name: "quote_string", scope: !1314, file: !140, line: 258, type: !31)
!1333 = !DILocalVariable(name: "quote_string_len", scope: !1314, file: !140, line: 259, type: !23)
!1334 = !DILocalVariable(name: "backslash_escapes", scope: !1314, file: !140, line: 260, type: !36)
!1335 = !DILocalVariable(name: "unibyte_locale", scope: !1314, file: !140, line: 261, type: !36)
!1336 = !DILocalVariable(name: "elide_outer_quotes", scope: !1314, file: !140, line: 262, type: !36)
!1337 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1314, file: !140, line: 263, type: !36)
!1338 = !DILocalVariable(name: "encountered_single_quote", scope: !1314, file: !140, line: 264, type: !36)
!1339 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1314, file: !140, line: 265, type: !36)
!1340 = !DILocalVariable(name: "c", scope: !1341, file: !140, line: 394, type: !30)
!1341 = distinct !DILexicalBlock(scope: !1342, file: !140, line: 393, column: 5)
!1342 = distinct !DILexicalBlock(scope: !1343, file: !140, line: 392, column: 3)
!1343 = distinct !DILexicalBlock(scope: !1314, file: !140, line: 392, column: 3)
!1344 = !DILocalVariable(name: "esc", scope: !1341, file: !140, line: 395, type: !30)
!1345 = !DILocalVariable(name: "is_right_quote", scope: !1341, file: !140, line: 396, type: !36)
!1346 = !DILocalVariable(name: "escaping", scope: !1341, file: !140, line: 397, type: !36)
!1347 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1341, file: !140, line: 398, type: !36)
!1348 = !DILocalVariable(name: "m", scope: !1349, file: !140, line: 602, type: !23)
!1349 = distinct !DILexicalBlock(scope: !1350, file: !140, line: 600, column: 11)
!1350 = distinct !DILexicalBlock(scope: !1341, file: !140, line: 418, column: 9)
!1351 = !DILocalVariable(name: "printable", scope: !1349, file: !140, line: 604, type: !36)
!1352 = !DILocalVariable(name: "mbstate", scope: !1353, file: !140, line: 613, type: !1355)
!1353 = distinct !DILexicalBlock(scope: !1354, file: !140, line: 612, column: 15)
!1354 = distinct !DILexicalBlock(scope: !1349, file: !140, line: 606, column: 17)
!1355 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1356, line: 107, baseType: !1357)
!1356 = !DIFile(filename: "/usr/include/wchar.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1357 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1356, line: 95, baseType: !1358)
!1358 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1356, line: 83, size: 64, elements: !1359)
!1359 = !{!1360, !1361}
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1358, file: !1356, line: 85, baseType: !66, size: 32)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1358, file: !1356, line: 94, baseType: !1362, size: 32, offset: 32)
!1362 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1358, file: !1356, line: 86, size: 32, elements: !1363)
!1363 = !{!1364, !1365}
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1362, file: !1356, line: 89, baseType: !153, size: 32)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1362, file: !1356, line: 93, baseType: !1366, size: 32)
!1366 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 32, elements: !1367)
!1367 = !{!1368}
!1368 = !DISubrange(count: 4)
!1369 = !DILocalVariable(name: "w", scope: !1370, file: !140, line: 623, type: !1371)
!1370 = distinct !DILexicalBlock(scope: !1353, file: !140, line: 622, column: 19)
!1371 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !24, line: 90, baseType: !66)
!1372 = !DILocalVariable(name: "bytes", scope: !1370, file: !140, line: 624, type: !23)
!1373 = !DILocalVariable(name: "j", scope: !1374, file: !140, line: 649, type: !23)
!1374 = distinct !DILexicalBlock(scope: !1375, file: !140, line: 648, column: 27)
!1375 = distinct !DILexicalBlock(scope: !1376, file: !140, line: 646, column: 29)
!1376 = distinct !DILexicalBlock(scope: !1377, file: !140, line: 641, column: 23)
!1377 = distinct !DILexicalBlock(scope: !1378, file: !140, line: 633, column: 30)
!1378 = distinct !DILexicalBlock(scope: !1379, file: !140, line: 628, column: 30)
!1379 = distinct !DILexicalBlock(scope: !1370, file: !140, line: 626, column: 25)
!1380 = !DILocalVariable(name: "ilim", scope: !1381, file: !140, line: 676, type: !23)
!1381 = distinct !DILexicalBlock(scope: !1382, file: !140, line: 673, column: 15)
!1382 = distinct !DILexicalBlock(scope: !1349, file: !140, line: 672, column: 17)
!1383 = !DILocation(line: 248, column: 33, scope: !1314)
!1384 = !DILocation(line: 248, column: 48, scope: !1314)
!1385 = !DILocation(line: 249, column: 39, scope: !1314)
!1386 = !DILocation(line: 249, column: 51, scope: !1314)
!1387 = !DILocation(line: 250, column: 46, scope: !1314)
!1388 = !DILocation(line: 250, column: 65, scope: !1314)
!1389 = !DILocation(line: 251, column: 47, scope: !1314)
!1390 = !DILocation(line: 252, column: 39, scope: !1314)
!1391 = !DILocation(line: 253, column: 39, scope: !1314)
!1392 = !DILocation(line: 256, column: 10, scope: !1314)
!1393 = !DILocation(line: 257, column: 10, scope: !1314)
!1394 = !DILocation(line: 258, column: 15, scope: !1314)
!1395 = !DILocation(line: 259, column: 10, scope: !1314)
!1396 = !DILocation(line: 260, column: 8, scope: !1314)
!1397 = !DILocation(line: 261, column: 25, scope: !1314)
!1398 = !DILocation(line: 261, column: 36, scope: !1314)
!1399 = !DILocation(line: 262, column: 8, scope: !1314)
!1400 = !DILocation(line: 263, column: 8, scope: !1314)
!1401 = !DILocation(line: 264, column: 8, scope: !1314)
!1402 = !DILocation(line: 265, column: 8, scope: !1314)
!1403 = !DILocation(line: 265, column: 3, scope: !1314)
!1404 = !DILocation(line: 308, column: 3, scope: !1314)
!1405 = !DILocation(line: 315, column: 11, scope: !1406)
!1406 = distinct !DILexicalBlock(scope: !1314, file: !140, line: 309, column: 5)
!1407 = !DILocation(line: 315, column: 12, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1406, file: !140, line: 315, column: 11)
!1409 = !DILocation(line: 316, column: 9, scope: !1410)
!1410 = !DILexicalBlockFile(scope: !1411, file: !140, discriminator: 1)
!1411 = distinct !DILexicalBlock(scope: !1412, file: !140, line: 316, column: 9)
!1412 = distinct !DILexicalBlock(scope: !1408, file: !140, line: 316, column: 9)
!1413 = !DILocation(line: 316, column: 9, scope: !1414)
!1414 = !DILexicalBlockFile(scope: !1412, file: !140, discriminator: 1)
!1415 = !DILocation(line: 316, column: 9, scope: !1416)
!1416 = !DILexicalBlockFile(scope: !1411, file: !140, discriminator: 2)
!1417 = !DILocation(line: 354, column: 26, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1419, file: !140, line: 332, column: 11)
!1419 = distinct !DILexicalBlock(scope: !1420, file: !140, line: 331, column: 13)
!1420 = distinct !DILexicalBlock(scope: !1406, file: !140, line: 330, column: 7)
!1421 = !DILocation(line: 355, column: 27, scope: !1418)
!1422 = !DILocation(line: 356, column: 11, scope: !1418)
!1423 = !DILocation(line: 357, column: 14, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1420, file: !140, line: 357, column: 13)
!1425 = !DILocation(line: 357, column: 13, scope: !1420)
!1426 = !DILocation(line: 358, column: 43, scope: !1427)
!1427 = !DILexicalBlockFile(scope: !1428, file: !140, discriminator: 1)
!1428 = distinct !DILexicalBlock(scope: !1429, file: !140, line: 358, column: 11)
!1429 = distinct !DILexicalBlock(scope: !1424, file: !140, line: 358, column: 11)
!1430 = !DILocation(line: 358, column: 11, scope: !1431)
!1431 = !DILexicalBlockFile(scope: !1429, file: !140, discriminator: 1)
!1432 = !DILocation(line: 359, column: 13, scope: !1433)
!1433 = !DILexicalBlockFile(scope: !1434, file: !140, discriminator: 1)
!1434 = distinct !DILexicalBlock(scope: !1435, file: !140, line: 359, column: 13)
!1435 = distinct !DILexicalBlock(scope: !1428, file: !140, line: 359, column: 13)
!1436 = !DILocation(line: 359, column: 13, scope: !1437)
!1437 = !DILexicalBlockFile(scope: !1435, file: !140, discriminator: 1)
!1438 = !DILocation(line: 359, column: 13, scope: !1439)
!1439 = !DILexicalBlockFile(scope: !1434, file: !140, discriminator: 2)
!1440 = !DILocation(line: 359, column: 13, scope: !1441)
!1441 = !DILexicalBlockFile(scope: !1435, file: !140, discriminator: 3)
!1442 = !DILocation(line: 358, column: 70, scope: !1443)
!1443 = !DILexicalBlockFile(scope: !1428, file: !140, discriminator: 2)
!1444 = distinct !{!1444, !1445, !1446}
!1445 = !DILocation(line: 358, column: 11, scope: !1429)
!1446 = !DILocation(line: 359, column: 13, scope: !1429)
!1447 = !DILocation(line: 362, column: 28, scope: !1420)
!1448 = !DILocation(line: 364, column: 7, scope: !1406)
!1449 = !DILocation(line: 367, column: 7, scope: !1406)
!1450 = !DILocation(line: 370, column: 7, scope: !1406)
!1451 = !DILocation(line: 373, column: 12, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1406, file: !140, line: 373, column: 11)
!1453 = !DILocation(line: 373, column: 11, scope: !1406)
!1454 = !DILocation(line: 378, column: 12, scope: !1455)
!1455 = distinct !DILexicalBlock(scope: !1406, file: !140, line: 378, column: 11)
!1456 = !DILocation(line: 378, column: 11, scope: !1406)
!1457 = !DILocation(line: 379, column: 9, scope: !1458)
!1458 = !DILexicalBlockFile(scope: !1459, file: !140, discriminator: 1)
!1459 = distinct !DILexicalBlock(scope: !1460, file: !140, line: 379, column: 9)
!1460 = distinct !DILexicalBlock(scope: !1455, file: !140, line: 379, column: 9)
!1461 = !DILocation(line: 379, column: 9, scope: !1462)
!1462 = !DILexicalBlockFile(scope: !1460, file: !140, discriminator: 1)
!1463 = !DILocation(line: 379, column: 9, scope: !1464)
!1464 = !DILexicalBlockFile(scope: !1459, file: !140, discriminator: 2)
!1465 = !DILocation(line: 386, column: 7, scope: !1406)
!1466 = !DILocation(line: 389, column: 7, scope: !1406)
!1467 = !DILocation(line: 255, column: 10, scope: !1314)
!1468 = !DILocation(line: 392, column: 8, scope: !1343)
!1469 = !DILocation(line: 392, column: 27, scope: !1470)
!1470 = !DILexicalBlockFile(scope: !1342, file: !140, discriminator: 1)
!1471 = !DILocation(line: 392, column: 19, scope: !1470)
!1472 = !DILocation(line: 392, column: 60, scope: !1473)
!1473 = !DILexicalBlockFile(scope: !1342, file: !140, discriminator: 3)
!1474 = !DILocation(line: 392, column: 3, scope: !1475)
!1475 = !DILexicalBlockFile(scope: !1343, file: !140, discriminator: 4)
!1476 = !DILocation(line: 392, column: 41, scope: !1477)
!1477 = !DILexicalBlockFile(scope: !1342, file: !140, discriminator: 2)
!1478 = !DILocation(line: 392, column: 48, scope: !1477)
!1479 = !DILocation(line: 396, column: 12, scope: !1341)
!1480 = !DILocation(line: 397, column: 12, scope: !1341)
!1481 = !DILocation(line: 398, column: 12, scope: !1341)
!1482 = !DILocation(line: 401, column: 11, scope: !1483)
!1483 = distinct !DILexicalBlock(scope: !1341, file: !140, line: 400, column: 11)
!1484 = !DILocation(line: 403, column: 17, scope: !1485)
!1485 = !DILexicalBlockFile(scope: !1483, file: !140, discriminator: 1)
!1486 = !DILocation(line: 404, column: 39, scope: !1483)
!1487 = !DILocation(line: 408, column: 32, scope: !1483)
!1488 = !DILocation(line: 404, column: 19, scope: !1489)
!1489 = !DILexicalBlockFile(scope: !1483, file: !140, discriminator: 2)
!1490 = !DILocation(line: 404, column: 15, scope: !1491)
!1491 = !DILexicalBlockFile(scope: !1483, file: !140, discriminator: 4)
!1492 = !DILocation(line: 409, column: 11, scope: !1483)
!1493 = !DILocation(line: 409, column: 26, scope: !1485)
!1494 = !DILocation(line: 409, column: 14, scope: !1485)
!1495 = !DILocation(line: 400, column: 11, scope: !1496)
!1496 = !DILexicalBlockFile(scope: !1341, file: !140, discriminator: 1)
!1497 = !DILocation(line: 416, column: 11, scope: !1341)
!1498 = !DILocation(line: 394, column: 21, scope: !1341)
!1499 = !DILocation(line: 417, column: 7, scope: !1341)
!1500 = !DILocation(line: 420, column: 15, scope: !1350)
!1501 = !DILocation(line: 422, column: 15, scope: !1502)
!1502 = !DILexicalBlockFile(scope: !1503, file: !140, discriminator: 1)
!1503 = distinct !DILexicalBlock(scope: !1504, file: !140, line: 422, column: 15)
!1504 = distinct !DILexicalBlock(scope: !1505, file: !140, line: 421, column: 13)
!1505 = distinct !DILexicalBlock(scope: !1350, file: !140, line: 420, column: 15)
!1506 = !DILocation(line: 422, column: 15, scope: !1507)
!1507 = !DILexicalBlockFile(scope: !1508, file: !140, discriminator: 4)
!1508 = distinct !DILexicalBlock(scope: !1503, file: !140, line: 422, column: 15)
!1509 = !DILocation(line: 422, column: 15, scope: !1510)
!1510 = !DILexicalBlockFile(scope: !1508, file: !140, discriminator: 3)
!1511 = !DILocation(line: 422, column: 15, scope: !1512)
!1512 = !DILexicalBlockFile(scope: !1513, file: !140, discriminator: 6)
!1513 = distinct !DILexicalBlock(scope: !1514, file: !140, line: 422, column: 15)
!1514 = distinct !DILexicalBlock(scope: !1515, file: !140, line: 422, column: 15)
!1515 = distinct !DILexicalBlock(scope: !1508, file: !140, line: 422, column: 15)
!1516 = !DILocation(line: 422, column: 15, scope: !1517)
!1517 = !DILexicalBlockFile(scope: !1514, file: !140, discriminator: 6)
!1518 = !DILocation(line: 422, column: 15, scope: !1519)
!1519 = !DILexicalBlockFile(scope: !1513, file: !140, discriminator: 7)
!1520 = !DILocation(line: 422, column: 15, scope: !1521)
!1521 = !DILexicalBlockFile(scope: !1514, file: !140, discriminator: 8)
!1522 = !DILocation(line: 422, column: 15, scope: !1523)
!1523 = !DILexicalBlockFile(scope: !1524, file: !140, discriminator: 11)
!1524 = distinct !DILexicalBlock(scope: !1525, file: !140, line: 422, column: 15)
!1525 = distinct !DILexicalBlock(scope: !1515, file: !140, line: 422, column: 15)
!1526 = !DILocation(line: 422, column: 15, scope: !1527)
!1527 = !DILexicalBlockFile(scope: !1525, file: !140, discriminator: 11)
!1528 = !DILocation(line: 422, column: 15, scope: !1529)
!1529 = !DILexicalBlockFile(scope: !1524, file: !140, discriminator: 12)
!1530 = !DILocation(line: 422, column: 15, scope: !1531)
!1531 = !DILexicalBlockFile(scope: !1525, file: !140, discriminator: 13)
!1532 = !DILocation(line: 422, column: 15, scope: !1533)
!1533 = !DILexicalBlockFile(scope: !1534, file: !140, discriminator: 16)
!1534 = distinct !DILexicalBlock(scope: !1535, file: !140, line: 422, column: 15)
!1535 = distinct !DILexicalBlock(scope: !1515, file: !140, line: 422, column: 15)
!1536 = !DILocation(line: 422, column: 15, scope: !1537)
!1537 = !DILexicalBlockFile(scope: !1535, file: !140, discriminator: 16)
!1538 = !DILocation(line: 422, column: 15, scope: !1539)
!1539 = !DILexicalBlockFile(scope: !1534, file: !140, discriminator: 17)
!1540 = !DILocation(line: 422, column: 15, scope: !1541)
!1541 = !DILexicalBlockFile(scope: !1535, file: !140, discriminator: 18)
!1542 = !DILocation(line: 422, column: 15, scope: !1543)
!1543 = !DILexicalBlockFile(scope: !1515, file: !140, discriminator: 20)
!1544 = !DILocation(line: 422, column: 15, scope: !1545)
!1545 = !DILexicalBlockFile(scope: !1546, file: !140, discriminator: 22)
!1546 = distinct !DILexicalBlock(scope: !1547, file: !140, line: 422, column: 15)
!1547 = distinct !DILexicalBlock(scope: !1503, file: !140, line: 422, column: 15)
!1548 = !DILocation(line: 422, column: 15, scope: !1549)
!1549 = !DILexicalBlockFile(scope: !1547, file: !140, discriminator: 22)
!1550 = !DILocation(line: 422, column: 15, scope: !1551)
!1551 = !DILexicalBlockFile(scope: !1546, file: !140, discriminator: 23)
!1552 = !DILocation(line: 422, column: 15, scope: !1553)
!1553 = !DILexicalBlockFile(scope: !1547, file: !140, discriminator: 24)
!1554 = !DILocation(line: 430, column: 19, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !1504, file: !140, line: 429, column: 19)
!1556 = !DILocation(line: 430, column: 24, scope: !1557)
!1557 = !DILexicalBlockFile(scope: !1555, file: !140, discriminator: 1)
!1558 = !DILocation(line: 430, column: 28, scope: !1557)
!1559 = !DILocation(line: 430, column: 38, scope: !1557)
!1560 = !DILocation(line: 430, column: 48, scope: !1561)
!1561 = !DILexicalBlockFile(scope: !1555, file: !140, discriminator: 2)
!1562 = !DILocation(line: 430, column: 59, scope: !1561)
!1563 = !DILocation(line: 432, column: 19, scope: !1564)
!1564 = !DILexicalBlockFile(scope: !1565, file: !140, discriminator: 1)
!1565 = distinct !DILexicalBlock(scope: !1566, file: !140, line: 432, column: 19)
!1566 = distinct !DILexicalBlock(scope: !1567, file: !140, line: 432, column: 19)
!1567 = distinct !DILexicalBlock(scope: !1555, file: !140, line: 431, column: 17)
!1568 = !DILocation(line: 432, column: 19, scope: !1569)
!1569 = !DILexicalBlockFile(scope: !1566, file: !140, discriminator: 1)
!1570 = !DILocation(line: 432, column: 19, scope: !1571)
!1571 = !DILexicalBlockFile(scope: !1565, file: !140, discriminator: 2)
!1572 = !DILocation(line: 432, column: 19, scope: !1573)
!1573 = !DILexicalBlockFile(scope: !1566, file: !140, discriminator: 3)
!1574 = !DILocation(line: 433, column: 19, scope: !1575)
!1575 = !DILexicalBlockFile(scope: !1576, file: !140, discriminator: 1)
!1576 = distinct !DILexicalBlock(scope: !1577, file: !140, line: 433, column: 19)
!1577 = distinct !DILexicalBlock(scope: !1567, file: !140, line: 433, column: 19)
!1578 = !DILocation(line: 433, column: 19, scope: !1579)
!1579 = !DILexicalBlockFile(scope: !1577, file: !140, discriminator: 1)
!1580 = !DILocation(line: 433, column: 19, scope: !1581)
!1581 = !DILexicalBlockFile(scope: !1576, file: !140, discriminator: 2)
!1582 = !DILocation(line: 433, column: 19, scope: !1583)
!1583 = !DILexicalBlockFile(scope: !1577, file: !140, discriminator: 3)
!1584 = !DILocation(line: 434, column: 17, scope: !1567)
!1585 = !DILocation(line: 441, column: 20, scope: !1505)
!1586 = !DILocation(line: 446, column: 11, scope: !1350)
!1587 = !DILocation(line: 449, column: 19, scope: !1588)
!1588 = distinct !DILexicalBlock(scope: !1350, file: !140, line: 447, column: 13)
!1589 = !DILocation(line: 455, column: 19, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !1588, file: !140, line: 454, column: 19)
!1591 = !DILocation(line: 455, column: 24, scope: !1592)
!1592 = !DILexicalBlockFile(scope: !1590, file: !140, discriminator: 1)
!1593 = !DILocation(line: 455, column: 28, scope: !1592)
!1594 = !DILocation(line: 455, column: 38, scope: !1592)
!1595 = !DILocation(line: 455, column: 47, scope: !1596)
!1596 = !DILexicalBlockFile(scope: !1590, file: !140, discriminator: 2)
!1597 = !DILocation(line: 455, column: 41, scope: !1596)
!1598 = !DILocation(line: 455, column: 52, scope: !1596)
!1599 = !DILocation(line: 454, column: 19, scope: !1600)
!1600 = !DILexicalBlockFile(scope: !1588, file: !140, discriminator: 1)
!1601 = !DILocation(line: 456, column: 25, scope: !1590)
!1602 = !DILocation(line: 456, column: 17, scope: !1590)
!1603 = !DILocation(line: 463, column: 25, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !1590, file: !140, line: 457, column: 19)
!1605 = !DILocation(line: 467, column: 21, scope: !1606)
!1606 = !DILexicalBlockFile(scope: !1607, file: !140, discriminator: 1)
!1607 = distinct !DILexicalBlock(scope: !1608, file: !140, line: 467, column: 21)
!1608 = distinct !DILexicalBlock(scope: !1604, file: !140, line: 467, column: 21)
!1609 = !DILocation(line: 467, column: 21, scope: !1610)
!1610 = !DILexicalBlockFile(scope: !1608, file: !140, discriminator: 1)
!1611 = !DILocation(line: 467, column: 21, scope: !1612)
!1612 = !DILexicalBlockFile(scope: !1607, file: !140, discriminator: 2)
!1613 = !DILocation(line: 467, column: 21, scope: !1614)
!1614 = !DILexicalBlockFile(scope: !1608, file: !140, discriminator: 3)
!1615 = !DILocation(line: 468, column: 21, scope: !1616)
!1616 = !DILexicalBlockFile(scope: !1617, file: !140, discriminator: 1)
!1617 = distinct !DILexicalBlock(scope: !1618, file: !140, line: 468, column: 21)
!1618 = distinct !DILexicalBlock(scope: !1604, file: !140, line: 468, column: 21)
!1619 = !DILocation(line: 468, column: 21, scope: !1620)
!1620 = !DILexicalBlockFile(scope: !1618, file: !140, discriminator: 1)
!1621 = !DILocation(line: 468, column: 21, scope: !1622)
!1622 = !DILexicalBlockFile(scope: !1617, file: !140, discriminator: 2)
!1623 = !DILocation(line: 468, column: 21, scope: !1624)
!1624 = !DILexicalBlockFile(scope: !1618, file: !140, discriminator: 3)
!1625 = !DILocation(line: 469, column: 21, scope: !1626)
!1626 = !DILexicalBlockFile(scope: !1627, file: !140, discriminator: 1)
!1627 = distinct !DILexicalBlock(scope: !1628, file: !140, line: 469, column: 21)
!1628 = distinct !DILexicalBlock(scope: !1604, file: !140, line: 469, column: 21)
!1629 = !DILocation(line: 469, column: 21, scope: !1630)
!1630 = !DILexicalBlockFile(scope: !1628, file: !140, discriminator: 1)
!1631 = !DILocation(line: 469, column: 21, scope: !1632)
!1632 = !DILexicalBlockFile(scope: !1627, file: !140, discriminator: 2)
!1633 = !DILocation(line: 469, column: 21, scope: !1634)
!1634 = !DILexicalBlockFile(scope: !1628, file: !140, discriminator: 3)
!1635 = !DILocation(line: 470, column: 21, scope: !1636)
!1636 = !DILexicalBlockFile(scope: !1637, file: !140, discriminator: 1)
!1637 = distinct !DILexicalBlock(scope: !1638, file: !140, line: 470, column: 21)
!1638 = distinct !DILexicalBlock(scope: !1604, file: !140, line: 470, column: 21)
!1639 = !DILocation(line: 470, column: 21, scope: !1640)
!1640 = !DILexicalBlockFile(scope: !1638, file: !140, discriminator: 1)
!1641 = !DILocation(line: 470, column: 21, scope: !1642)
!1642 = !DILexicalBlockFile(scope: !1637, file: !140, discriminator: 2)
!1643 = !DILocation(line: 470, column: 21, scope: !1644)
!1644 = !DILexicalBlockFile(scope: !1638, file: !140, discriminator: 3)
!1645 = !DILocation(line: 471, column: 21, scope: !1604)
!1646 = !DILocation(line: 395, column: 21, scope: !1341)
!1647 = !DILocation(line: 484, column: 31, scope: !1350)
!1648 = !DILocation(line: 485, column: 31, scope: !1350)
!1649 = !DILocation(line: 487, column: 31, scope: !1350)
!1650 = !DILocation(line: 488, column: 31, scope: !1350)
!1651 = !DILocation(line: 489, column: 31, scope: !1350)
!1652 = !DILocation(line: 492, column: 15, scope: !1350)
!1653 = !DILocation(line: 494, column: 19, scope: !1654)
!1654 = distinct !DILexicalBlock(scope: !1655, file: !140, line: 493, column: 13)
!1655 = distinct !DILexicalBlock(scope: !1350, file: !140, line: 492, column: 15)
!1656 = !DILocation(line: 501, column: 33, scope: !1657)
!1657 = distinct !DILexicalBlock(scope: !1350, file: !140, line: 501, column: 15)
!1658 = !DILocation(line: 506, column: 15, scope: !1659)
!1659 = distinct !DILexicalBlock(scope: !1350, file: !140, line: 505, column: 15)
!1660 = !DILocation(line: 510, column: 15, scope: !1350)
!1661 = !DILocation(line: 518, column: 26, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !1350, file: !140, line: 518, column: 15)
!1663 = !DILocation(line: 518, column: 15, scope: !1350)
!1664 = !DILocation(line: 518, column: 40, scope: !1665)
!1665 = !DILexicalBlockFile(scope: !1662, file: !140, discriminator: 1)
!1666 = !DILocation(line: 518, column: 47, scope: !1665)
!1667 = !DILocation(line: 522, column: 17, scope: !1668)
!1668 = distinct !DILexicalBlock(scope: !1350, file: !140, line: 522, column: 15)
!1669 = !DILocation(line: 518, column: 18, scope: !1665)
!1670 = !DILocation(line: 518, column: 65, scope: !1671)
!1671 = !DILexicalBlockFile(scope: !1662, file: !140, discriminator: 2)
!1672 = !DILocation(line: 518, column: 15, scope: !1673)
!1673 = !DILexicalBlockFile(scope: !1350, file: !140, discriminator: 2)
!1674 = !DILocation(line: 522, column: 15, scope: !1350)
!1675 = !DILocation(line: 526, column: 11, scope: !1350)
!1676 = !DILocation(line: 541, column: 15, scope: !1677)
!1677 = distinct !DILexicalBlock(scope: !1350, file: !140, line: 540, column: 15)
!1678 = !DILocation(line: 548, column: 15, scope: !1350)
!1679 = !DILocation(line: 550, column: 19, scope: !1680)
!1680 = distinct !DILexicalBlock(scope: !1681, file: !140, line: 549, column: 13)
!1681 = distinct !DILexicalBlock(scope: !1350, file: !140, line: 548, column: 15)
!1682 = !DILocation(line: 553, column: 19, scope: !1683)
!1683 = distinct !DILexicalBlock(scope: !1680, file: !140, line: 553, column: 19)
!1684 = !DILocation(line: 553, column: 35, scope: !1685)
!1685 = !DILexicalBlockFile(scope: !1683, file: !140, discriminator: 1)
!1686 = !DILocation(line: 553, column: 30, scope: !1683)
!1687 = !DILocation(line: 562, column: 15, scope: !1688)
!1688 = !DILexicalBlockFile(scope: !1689, file: !140, discriminator: 1)
!1689 = distinct !DILexicalBlock(scope: !1690, file: !140, line: 562, column: 15)
!1690 = distinct !DILexicalBlock(scope: !1680, file: !140, line: 562, column: 15)
!1691 = !DILocation(line: 562, column: 15, scope: !1692)
!1692 = !DILexicalBlockFile(scope: !1690, file: !140, discriminator: 1)
!1693 = !DILocation(line: 562, column: 15, scope: !1694)
!1694 = !DILexicalBlockFile(scope: !1689, file: !140, discriminator: 2)
!1695 = !DILocation(line: 562, column: 15, scope: !1696)
!1696 = !DILexicalBlockFile(scope: !1690, file: !140, discriminator: 3)
!1697 = !DILocation(line: 563, column: 15, scope: !1698)
!1698 = !DILexicalBlockFile(scope: !1699, file: !140, discriminator: 1)
!1699 = distinct !DILexicalBlock(scope: !1700, file: !140, line: 563, column: 15)
!1700 = distinct !DILexicalBlock(scope: !1680, file: !140, line: 563, column: 15)
!1701 = !DILocation(line: 563, column: 15, scope: !1702)
!1702 = !DILexicalBlockFile(scope: !1700, file: !140, discriminator: 1)
!1703 = !DILocation(line: 563, column: 15, scope: !1704)
!1704 = !DILexicalBlockFile(scope: !1699, file: !140, discriminator: 2)
!1705 = !DILocation(line: 563, column: 15, scope: !1706)
!1706 = !DILexicalBlockFile(scope: !1700, file: !140, discriminator: 3)
!1707 = !DILocation(line: 564, column: 15, scope: !1708)
!1708 = !DILexicalBlockFile(scope: !1709, file: !140, discriminator: 1)
!1709 = distinct !DILexicalBlock(scope: !1710, file: !140, line: 564, column: 15)
!1710 = distinct !DILexicalBlock(scope: !1680, file: !140, line: 564, column: 15)
!1711 = !DILocation(line: 564, column: 15, scope: !1712)
!1712 = !DILexicalBlockFile(scope: !1710, file: !140, discriminator: 1)
!1713 = !DILocation(line: 564, column: 15, scope: !1714)
!1714 = !DILexicalBlockFile(scope: !1709, file: !140, discriminator: 2)
!1715 = !DILocation(line: 564, column: 15, scope: !1716)
!1716 = !DILexicalBlockFile(scope: !1710, file: !140, discriminator: 3)
!1717 = !DILocation(line: 566, column: 13, scope: !1680)
!1718 = !DILocation(line: 606, column: 17, scope: !1349)
!1719 = !DILocation(line: 602, column: 20, scope: !1349)
!1720 = !DILocation(line: 609, column: 29, scope: !1721)
!1721 = distinct !DILexicalBlock(scope: !1354, file: !140, line: 607, column: 15)
!1722 = !{!1037, !1037, i64 0}
!1723 = !DILocation(line: 609, column: 27, scope: !1721)
!1724 = !DILocation(line: 604, column: 18, scope: !1349)
!1725 = !DILocation(line: 610, column: 15, scope: !1721)
!1726 = !DILocation(line: 613, column: 17, scope: !1353)
!1727 = !DILocation(line: 614, column: 17, scope: !1353)
!1728 = !DILocation(line: 618, column: 29, scope: !1729)
!1729 = distinct !DILexicalBlock(scope: !1353, file: !140, line: 618, column: 21)
!1730 = !DILocation(line: 618, column: 21, scope: !1353)
!1731 = distinct !{!1731, !1732, !1733}
!1732 = !DILocation(line: 621, column: 17, scope: !1353)
!1733 = !DILocation(line: 667, column: 44, scope: !1353)
!1734 = !DILocation(line: 619, column: 29, scope: !1729)
!1735 = !DILocation(line: 619, column: 19, scope: !1729)
!1736 = !DILocation(line: 623, column: 21, scope: !1370)
!1737 = !DILocation(line: 624, column: 56, scope: !1370)
!1738 = !DILocation(line: 624, column: 50, scope: !1370)
!1739 = !DILocation(line: 625, column: 53, scope: !1370)
!1740 = !DIExpression(DW_OP_deref)
!1741 = !DILocation(line: 613, column: 27, scope: !1353)
!1742 = !DILocation(line: 623, column: 29, scope: !1370)
!1743 = !DILocation(line: 624, column: 36, scope: !1370)
!1744 = !DILocation(line: 624, column: 28, scope: !1370)
!1745 = !DILocation(line: 626, column: 25, scope: !1370)
!1746 = !DILocation(line: 636, column: 38, scope: !1747)
!1747 = !DILexicalBlockFile(scope: !1748, file: !140, discriminator: 1)
!1748 = distinct !DILexicalBlock(scope: !1377, file: !140, line: 634, column: 23)
!1749 = !DILocation(line: 636, column: 48, scope: !1747)
!1750 = !DILocation(line: 636, column: 51, scope: !1751)
!1751 = !DILexicalBlockFile(scope: !1748, file: !140, discriminator: 2)
!1752 = !DILocation(line: 636, column: 48, scope: !1751)
!1753 = !DILocation(line: 636, column: 25, scope: !1754)
!1754 = !DILexicalBlockFile(scope: !1748, file: !140, discriminator: 3)
!1755 = !DILocation(line: 637, column: 28, scope: !1748)
!1756 = !DILocation(line: 636, column: 34, scope: !1747)
!1757 = distinct !{!1757, !1758, !1755}
!1758 = !DILocation(line: 636, column: 25, scope: !1748)
!1759 = !DILocation(line: 650, column: 43, scope: !1760)
!1760 = !DILexicalBlockFile(scope: !1761, file: !140, discriminator: 1)
!1761 = distinct !DILexicalBlock(scope: !1762, file: !140, line: 650, column: 29)
!1762 = distinct !DILexicalBlock(scope: !1374, file: !140, line: 650, column: 29)
!1763 = !DILocation(line: 647, column: 29, scope: !1375)
!1764 = !DILocation(line: 649, column: 36, scope: !1374)
!1765 = !DILocation(line: 651, column: 49, scope: !1761)
!1766 = !DILocation(line: 651, column: 39, scope: !1761)
!1767 = !DILocation(line: 651, column: 31, scope: !1761)
!1768 = !DILocation(line: 650, column: 53, scope: !1769)
!1769 = !DILexicalBlockFile(scope: !1761, file: !140, discriminator: 2)
!1770 = !DILocation(line: 650, column: 29, scope: !1771)
!1771 = !DILexicalBlockFile(scope: !1762, file: !140, discriminator: 1)
!1772 = distinct !{!1772, !1773, !1774}
!1773 = !DILocation(line: 650, column: 29, scope: !1762)
!1774 = !DILocation(line: 659, column: 33, scope: !1762)
!1775 = !DILocation(line: 666, column: 19, scope: !1353)
!1776 = !DILocation(line: 662, column: 41, scope: !1777)
!1777 = distinct !DILexicalBlock(scope: !1376, file: !140, line: 662, column: 29)
!1778 = !DILocation(line: 662, column: 31, scope: !1777)
!1779 = !DILocation(line: 662, column: 29, scope: !1376)
!1780 = !DILocation(line: 664, column: 27, scope: !1376)
!1781 = !DILocation(line: 667, column: 26, scope: !1353)
!1782 = !DILocation(line: 667, column: 24, scope: !1353)
!1783 = !DILocation(line: 666, column: 19, scope: !1784)
!1784 = !DILexicalBlockFile(scope: !1370, file: !140, discriminator: 3)
!1785 = !DILocation(line: 668, column: 15, scope: !1354)
!1786 = !DILocation(line: 670, column: 40, scope: !1349)
!1787 = !DILocation(line: 672, column: 19, scope: !1382)
!1788 = !DILocation(line: 672, column: 45, scope: !1789)
!1789 = !DILexicalBlockFile(scope: !1382, file: !140, discriminator: 1)
!1790 = !DILocation(line: 672, column: 23, scope: !1382)
!1791 = !DILocation(line: 676, column: 33, scope: !1381)
!1792 = !DILocation(line: 676, column: 24, scope: !1381)
!1793 = !DILocation(line: 678, column: 17, scope: !1381)
!1794 = !DILocation(line: 680, column: 43, scope: !1795)
!1795 = distinct !DILexicalBlock(scope: !1796, file: !140, line: 680, column: 25)
!1796 = distinct !DILexicalBlock(scope: !1797, file: !140, line: 679, column: 19)
!1797 = distinct !DILexicalBlock(scope: !1798, file: !140, line: 678, column: 17)
!1798 = distinct !DILexicalBlock(scope: !1381, file: !140, line: 678, column: 17)
!1799 = !DILocation(line: 682, column: 25, scope: !1800)
!1800 = !DILexicalBlockFile(scope: !1801, file: !140, discriminator: 1)
!1801 = distinct !DILexicalBlock(scope: !1802, file: !140, line: 682, column: 25)
!1802 = distinct !DILexicalBlock(scope: !1795, file: !140, line: 681, column: 23)
!1803 = !DILocation(line: 682, column: 25, scope: !1804)
!1804 = !DILexicalBlockFile(scope: !1805, file: !140, discriminator: 4)
!1805 = distinct !DILexicalBlock(scope: !1801, file: !140, line: 682, column: 25)
!1806 = !DILocation(line: 682, column: 25, scope: !1807)
!1807 = !DILexicalBlockFile(scope: !1805, file: !140, discriminator: 3)
!1808 = !DILocation(line: 682, column: 25, scope: !1809)
!1809 = !DILexicalBlockFile(scope: !1810, file: !140, discriminator: 6)
!1810 = distinct !DILexicalBlock(scope: !1811, file: !140, line: 682, column: 25)
!1811 = distinct !DILexicalBlock(scope: !1812, file: !140, line: 682, column: 25)
!1812 = distinct !DILexicalBlock(scope: !1805, file: !140, line: 682, column: 25)
!1813 = !DILocation(line: 682, column: 25, scope: !1814)
!1814 = !DILexicalBlockFile(scope: !1811, file: !140, discriminator: 6)
!1815 = !DILocation(line: 682, column: 25, scope: !1816)
!1816 = !DILexicalBlockFile(scope: !1810, file: !140, discriminator: 7)
!1817 = !DILocation(line: 682, column: 25, scope: !1818)
!1818 = !DILexicalBlockFile(scope: !1811, file: !140, discriminator: 8)
!1819 = !DILocation(line: 682, column: 25, scope: !1820)
!1820 = !DILexicalBlockFile(scope: !1821, file: !140, discriminator: 11)
!1821 = distinct !DILexicalBlock(scope: !1822, file: !140, line: 682, column: 25)
!1822 = distinct !DILexicalBlock(scope: !1812, file: !140, line: 682, column: 25)
!1823 = !DILocation(line: 682, column: 25, scope: !1824)
!1824 = !DILexicalBlockFile(scope: !1822, file: !140, discriminator: 11)
!1825 = !DILocation(line: 682, column: 25, scope: !1826)
!1826 = !DILexicalBlockFile(scope: !1821, file: !140, discriminator: 12)
!1827 = !DILocation(line: 682, column: 25, scope: !1828)
!1828 = !DILexicalBlockFile(scope: !1822, file: !140, discriminator: 13)
!1829 = !DILocation(line: 682, column: 25, scope: !1830)
!1830 = !DILexicalBlockFile(scope: !1831, file: !140, discriminator: 16)
!1831 = distinct !DILexicalBlock(scope: !1832, file: !140, line: 682, column: 25)
!1832 = distinct !DILexicalBlock(scope: !1812, file: !140, line: 682, column: 25)
!1833 = !DILocation(line: 682, column: 25, scope: !1834)
!1834 = !DILexicalBlockFile(scope: !1832, file: !140, discriminator: 16)
!1835 = !DILocation(line: 682, column: 25, scope: !1836)
!1836 = !DILexicalBlockFile(scope: !1831, file: !140, discriminator: 17)
!1837 = !DILocation(line: 682, column: 25, scope: !1838)
!1838 = !DILexicalBlockFile(scope: !1832, file: !140, discriminator: 18)
!1839 = !DILocation(line: 682, column: 25, scope: !1840)
!1840 = !DILexicalBlockFile(scope: !1812, file: !140, discriminator: 20)
!1841 = !DILocation(line: 682, column: 25, scope: !1842)
!1842 = !DILexicalBlockFile(scope: !1843, file: !140, discriminator: 22)
!1843 = distinct !DILexicalBlock(scope: !1844, file: !140, line: 682, column: 25)
!1844 = distinct !DILexicalBlock(scope: !1801, file: !140, line: 682, column: 25)
!1845 = !DILocation(line: 682, column: 25, scope: !1846)
!1846 = !DILexicalBlockFile(scope: !1844, file: !140, discriminator: 22)
!1847 = !DILocation(line: 682, column: 25, scope: !1848)
!1848 = !DILexicalBlockFile(scope: !1843, file: !140, discriminator: 23)
!1849 = !DILocation(line: 682, column: 25, scope: !1850)
!1850 = !DILexicalBlockFile(scope: !1844, file: !140, discriminator: 24)
!1851 = !DILocation(line: 683, column: 25, scope: !1852)
!1852 = !DILexicalBlockFile(scope: !1853, file: !140, discriminator: 1)
!1853 = distinct !DILexicalBlock(scope: !1854, file: !140, line: 683, column: 25)
!1854 = distinct !DILexicalBlock(scope: !1802, file: !140, line: 683, column: 25)
!1855 = !DILocation(line: 683, column: 25, scope: !1856)
!1856 = !DILexicalBlockFile(scope: !1854, file: !140, discriminator: 1)
!1857 = !DILocation(line: 683, column: 25, scope: !1858)
!1858 = !DILexicalBlockFile(scope: !1853, file: !140, discriminator: 2)
!1859 = !DILocation(line: 683, column: 25, scope: !1860)
!1860 = !DILexicalBlockFile(scope: !1854, file: !140, discriminator: 3)
!1861 = !DILocation(line: 684, column: 25, scope: !1862)
!1862 = !DILexicalBlockFile(scope: !1863, file: !140, discriminator: 1)
!1863 = distinct !DILexicalBlock(scope: !1864, file: !140, line: 684, column: 25)
!1864 = distinct !DILexicalBlock(scope: !1802, file: !140, line: 684, column: 25)
!1865 = !DILocation(line: 684, column: 25, scope: !1866)
!1866 = !DILexicalBlockFile(scope: !1864, file: !140, discriminator: 1)
!1867 = !DILocation(line: 684, column: 25, scope: !1868)
!1868 = !DILexicalBlockFile(scope: !1863, file: !140, discriminator: 2)
!1869 = !DILocation(line: 684, column: 25, scope: !1870)
!1870 = !DILexicalBlockFile(scope: !1864, file: !140, discriminator: 3)
!1871 = !DILocation(line: 685, column: 38, scope: !1802)
!1872 = !DILocation(line: 685, column: 33, scope: !1802)
!1873 = !DILocation(line: 686, column: 23, scope: !1802)
!1874 = !DILocation(line: 687, column: 30, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !1795, file: !140, line: 687, column: 30)
!1876 = !DILocation(line: 687, column: 30, scope: !1795)
!1877 = !DILocation(line: 689, column: 25, scope: !1878)
!1878 = !DILexicalBlockFile(scope: !1879, file: !140, discriminator: 1)
!1879 = distinct !DILexicalBlock(scope: !1880, file: !140, line: 689, column: 25)
!1880 = distinct !DILexicalBlock(scope: !1881, file: !140, line: 689, column: 25)
!1881 = distinct !DILexicalBlock(scope: !1875, file: !140, line: 688, column: 23)
!1882 = !DILocation(line: 689, column: 25, scope: !1883)
!1883 = !DILexicalBlockFile(scope: !1880, file: !140, discriminator: 1)
!1884 = !DILocation(line: 689, column: 25, scope: !1885)
!1885 = !DILexicalBlockFile(scope: !1879, file: !140, discriminator: 2)
!1886 = !DILocation(line: 689, column: 25, scope: !1887)
!1887 = !DILexicalBlockFile(scope: !1880, file: !140, discriminator: 3)
!1888 = !DILocation(line: 691, column: 23, scope: !1881)
!1889 = !DILocation(line: 692, column: 35, scope: !1890)
!1890 = distinct !DILexicalBlock(scope: !1796, file: !140, line: 692, column: 25)
!1891 = !DILocation(line: 692, column: 30, scope: !1890)
!1892 = !DILocation(line: 692, column: 25, scope: !1796)
!1893 = !DILocation(line: 694, column: 21, scope: !1894)
!1894 = !DILexicalBlockFile(scope: !1895, file: !140, discriminator: 1)
!1895 = distinct !DILexicalBlock(scope: !1896, file: !140, line: 694, column: 21)
!1896 = distinct !DILexicalBlock(scope: !1796, file: !140, line: 694, column: 21)
!1897 = !DILocation(line: 694, column: 21, scope: !1898)
!1898 = !DILexicalBlockFile(scope: !1895, file: !140, discriminator: 2)
!1899 = !DILocation(line: 694, column: 21, scope: !1900)
!1900 = !DILexicalBlockFile(scope: !1901, file: !140, discriminator: 4)
!1901 = distinct !DILexicalBlock(scope: !1902, file: !140, line: 694, column: 21)
!1902 = distinct !DILexicalBlock(scope: !1903, file: !140, line: 694, column: 21)
!1903 = distinct !DILexicalBlock(scope: !1895, file: !140, line: 694, column: 21)
!1904 = !DILocation(line: 694, column: 21, scope: !1905)
!1905 = !DILexicalBlockFile(scope: !1902, file: !140, discriminator: 4)
!1906 = !DILocation(line: 694, column: 21, scope: !1907)
!1907 = !DILexicalBlockFile(scope: !1901, file: !140, discriminator: 5)
!1908 = !DILocation(line: 694, column: 21, scope: !1909)
!1909 = !DILexicalBlockFile(scope: !1902, file: !140, discriminator: 6)
!1910 = !DILocation(line: 694, column: 21, scope: !1911)
!1911 = !DILexicalBlockFile(scope: !1912, file: !140, discriminator: 9)
!1912 = distinct !DILexicalBlock(scope: !1913, file: !140, line: 694, column: 21)
!1913 = distinct !DILexicalBlock(scope: !1903, file: !140, line: 694, column: 21)
!1914 = !DILocation(line: 694, column: 21, scope: !1915)
!1915 = !DILexicalBlockFile(scope: !1913, file: !140, discriminator: 9)
!1916 = !DILocation(line: 694, column: 21, scope: !1917)
!1917 = !DILexicalBlockFile(scope: !1912, file: !140, discriminator: 10)
!1918 = !DILocation(line: 694, column: 21, scope: !1919)
!1919 = !DILexicalBlockFile(scope: !1913, file: !140, discriminator: 11)
!1920 = !DILocation(line: 694, column: 21, scope: !1921)
!1921 = !DILexicalBlockFile(scope: !1903, file: !140, discriminator: 13)
!1922 = !DILocation(line: 695, column: 21, scope: !1923)
!1923 = !DILexicalBlockFile(scope: !1924, file: !140, discriminator: 1)
!1924 = distinct !DILexicalBlock(scope: !1925, file: !140, line: 695, column: 21)
!1925 = distinct !DILexicalBlock(scope: !1796, file: !140, line: 695, column: 21)
!1926 = !DILocation(line: 695, column: 21, scope: !1927)
!1927 = !DILexicalBlockFile(scope: !1925, file: !140, discriminator: 1)
!1928 = !DILocation(line: 695, column: 21, scope: !1929)
!1929 = !DILexicalBlockFile(scope: !1924, file: !140, discriminator: 2)
!1930 = !DILocation(line: 695, column: 21, scope: !1931)
!1931 = !DILexicalBlockFile(scope: !1925, file: !140, discriminator: 3)
!1932 = !DILocation(line: 696, column: 25, scope: !1796)
!1933 = !DILocation(line: 678, column: 17, scope: !1934)
!1934 = !DILexicalBlockFile(scope: !1797, file: !140, discriminator: 1)
!1935 = distinct !{!1935, !1936, !1937}
!1936 = !DILocation(line: 678, column: 17, scope: !1798)
!1937 = !DILocation(line: 697, column: 19, scope: !1798)
!1938 = !DILocation(line: 704, column: 34, scope: !1939)
!1939 = distinct !DILexicalBlock(scope: !1341, file: !140, line: 704, column: 11)
!1940 = !DILocation(line: 706, column: 14, scope: !1939)
!1941 = !DILocation(line: 707, column: 14, scope: !1939)
!1942 = !DILocation(line: 707, column: 35, scope: !1943)
!1943 = !DILexicalBlockFile(scope: !1939, file: !140, discriminator: 1)
!1944 = !DILocation(line: 707, column: 17, scope: !1943)
!1945 = !DILocation(line: 707, column: 53, scope: !1943)
!1946 = !DILocation(line: 707, column: 47, scope: !1943)
!1947 = !DILocation(line: 707, column: 65, scope: !1943)
!1948 = !DILocation(line: 708, column: 15, scope: !1943)
!1949 = !DILocation(line: 708, column: 11, scope: !1939)
!1950 = !DILocation(line: 704, column: 11, scope: !1951)
!1951 = !DILexicalBlockFile(scope: !1341, file: !140, discriminator: 2)
!1952 = !DILocation(line: 712, column: 7, scope: !1953)
!1953 = !DILexicalBlockFile(scope: !1954, file: !140, discriminator: 1)
!1954 = distinct !DILexicalBlock(scope: !1341, file: !140, line: 712, column: 7)
!1955 = !DILocation(line: 712, column: 7, scope: !1956)
!1956 = !DILexicalBlockFile(scope: !1957, file: !140, discriminator: 4)
!1957 = distinct !DILexicalBlock(scope: !1954, file: !140, line: 712, column: 7)
!1958 = !DILocation(line: 712, column: 7, scope: !1959)
!1959 = !DILexicalBlockFile(scope: !1957, file: !140, discriminator: 3)
!1960 = !DILocation(line: 712, column: 7, scope: !1961)
!1961 = !DILexicalBlockFile(scope: !1962, file: !140, discriminator: 6)
!1962 = distinct !DILexicalBlock(scope: !1963, file: !140, line: 712, column: 7)
!1963 = distinct !DILexicalBlock(scope: !1964, file: !140, line: 712, column: 7)
!1964 = distinct !DILexicalBlock(scope: !1957, file: !140, line: 712, column: 7)
!1965 = !DILocation(line: 712, column: 7, scope: !1966)
!1966 = !DILexicalBlockFile(scope: !1963, file: !140, discriminator: 6)
!1967 = !DILocation(line: 712, column: 7, scope: !1968)
!1968 = !DILexicalBlockFile(scope: !1962, file: !140, discriminator: 7)
!1969 = !DILocation(line: 712, column: 7, scope: !1970)
!1970 = !DILexicalBlockFile(scope: !1963, file: !140, discriminator: 8)
!1971 = !DILocation(line: 712, column: 7, scope: !1972)
!1972 = !DILexicalBlockFile(scope: !1973, file: !140, discriminator: 11)
!1973 = distinct !DILexicalBlock(scope: !1974, file: !140, line: 712, column: 7)
!1974 = distinct !DILexicalBlock(scope: !1964, file: !140, line: 712, column: 7)
!1975 = !DILocation(line: 712, column: 7, scope: !1976)
!1976 = !DILexicalBlockFile(scope: !1974, file: !140, discriminator: 11)
!1977 = !DILocation(line: 712, column: 7, scope: !1978)
!1978 = !DILexicalBlockFile(scope: !1973, file: !140, discriminator: 12)
!1979 = !DILocation(line: 712, column: 7, scope: !1980)
!1980 = !DILexicalBlockFile(scope: !1974, file: !140, discriminator: 13)
!1981 = !DILocation(line: 712, column: 7, scope: !1982)
!1982 = !DILexicalBlockFile(scope: !1983, file: !140, discriminator: 16)
!1983 = distinct !DILexicalBlock(scope: !1984, file: !140, line: 712, column: 7)
!1984 = distinct !DILexicalBlock(scope: !1964, file: !140, line: 712, column: 7)
!1985 = !DILocation(line: 712, column: 7, scope: !1986)
!1986 = !DILexicalBlockFile(scope: !1984, file: !140, discriminator: 16)
!1987 = !DILocation(line: 712, column: 7, scope: !1988)
!1988 = !DILexicalBlockFile(scope: !1983, file: !140, discriminator: 17)
!1989 = !DILocation(line: 712, column: 7, scope: !1990)
!1990 = !DILexicalBlockFile(scope: !1984, file: !140, discriminator: 18)
!1991 = !DILocation(line: 712, column: 7, scope: !1992)
!1992 = !DILexicalBlockFile(scope: !1964, file: !140, discriminator: 20)
!1993 = !DILocation(line: 712, column: 7, scope: !1994)
!1994 = !DILexicalBlockFile(scope: !1995, file: !140, discriminator: 22)
!1995 = distinct !DILexicalBlock(scope: !1996, file: !140, line: 712, column: 7)
!1996 = distinct !DILexicalBlock(scope: !1954, file: !140, line: 712, column: 7)
!1997 = !DILocation(line: 712, column: 7, scope: !1998)
!1998 = !DILexicalBlockFile(scope: !1996, file: !140, discriminator: 22)
!1999 = !DILocation(line: 712, column: 7, scope: !2000)
!2000 = !DILexicalBlockFile(scope: !1995, file: !140, discriminator: 23)
!2001 = !DILocation(line: 712, column: 7, scope: !2002)
!2002 = !DILexicalBlockFile(scope: !1996, file: !140, discriminator: 24)
!2003 = !DILocation(line: 715, column: 7, scope: !2004)
!2004 = !DILexicalBlockFile(scope: !2005, file: !140, discriminator: 1)
!2005 = distinct !DILexicalBlock(scope: !2006, file: !140, line: 715, column: 7)
!2006 = distinct !DILexicalBlock(scope: !1341, file: !140, line: 715, column: 7)
!2007 = !DILocation(line: 715, column: 7, scope: !2008)
!2008 = !DILexicalBlockFile(scope: !2005, file: !140, discriminator: 2)
!2009 = !DILocation(line: 715, column: 7, scope: !2010)
!2010 = !DILexicalBlockFile(scope: !2011, file: !140, discriminator: 4)
!2011 = distinct !DILexicalBlock(scope: !2012, file: !140, line: 715, column: 7)
!2012 = distinct !DILexicalBlock(scope: !2013, file: !140, line: 715, column: 7)
!2013 = distinct !DILexicalBlock(scope: !2005, file: !140, line: 715, column: 7)
!2014 = !DILocation(line: 715, column: 7, scope: !2015)
!2015 = !DILexicalBlockFile(scope: !2012, file: !140, discriminator: 4)
!2016 = !DILocation(line: 715, column: 7, scope: !2017)
!2017 = !DILexicalBlockFile(scope: !2011, file: !140, discriminator: 5)
!2018 = !DILocation(line: 715, column: 7, scope: !2019)
!2019 = !DILexicalBlockFile(scope: !2012, file: !140, discriminator: 6)
!2020 = !DILocation(line: 715, column: 7, scope: !2021)
!2021 = !DILexicalBlockFile(scope: !2022, file: !140, discriminator: 9)
!2022 = distinct !DILexicalBlock(scope: !2023, file: !140, line: 715, column: 7)
!2023 = distinct !DILexicalBlock(scope: !2013, file: !140, line: 715, column: 7)
!2024 = !DILocation(line: 715, column: 7, scope: !2025)
!2025 = !DILexicalBlockFile(scope: !2023, file: !140, discriminator: 9)
!2026 = !DILocation(line: 715, column: 7, scope: !2027)
!2027 = !DILexicalBlockFile(scope: !2022, file: !140, discriminator: 10)
!2028 = !DILocation(line: 715, column: 7, scope: !2029)
!2029 = !DILexicalBlockFile(scope: !2023, file: !140, discriminator: 11)
!2030 = !DILocation(line: 715, column: 7, scope: !2031)
!2031 = !DILexicalBlockFile(scope: !2013, file: !140, discriminator: 13)
!2032 = !DILocation(line: 716, column: 7, scope: !2033)
!2033 = !DILexicalBlockFile(scope: !2034, file: !140, discriminator: 1)
!2034 = distinct !DILexicalBlock(scope: !2035, file: !140, line: 716, column: 7)
!2035 = distinct !DILexicalBlock(scope: !1341, file: !140, line: 716, column: 7)
!2036 = !DILocation(line: 716, column: 7, scope: !2037)
!2037 = !DILexicalBlockFile(scope: !2035, file: !140, discriminator: 1)
!2038 = !DILocation(line: 716, column: 7, scope: !2039)
!2039 = !DILexicalBlockFile(scope: !2034, file: !140, discriminator: 2)
!2040 = !DILocation(line: 716, column: 7, scope: !2041)
!2041 = !DILexicalBlockFile(scope: !2035, file: !140, discriminator: 3)
!2042 = !DILocation(line: 718, column: 13, scope: !2043)
!2043 = distinct !DILexicalBlock(scope: !1341, file: !140, line: 718, column: 11)
!2044 = !DILocation(line: 718, column: 11, scope: !1341)
!2045 = !DILocation(line: 720, column: 5, scope: !1342)
!2046 = !DILocation(line: 392, column: 75, scope: !2047)
!2047 = !DILexicalBlockFile(scope: !1342, file: !140, discriminator: 5)
!2048 = !DILocation(line: 392, column: 3, scope: !2047)
!2049 = distinct !{!2049, !2050, !2051}
!2050 = !DILocation(line: 392, column: 3, scope: !1343)
!2051 = !DILocation(line: 720, column: 5, scope: !1343)
!2052 = !DILocation(line: 722, column: 11, scope: !2053)
!2053 = distinct !DILexicalBlock(scope: !1314, file: !140, line: 722, column: 7)
!2054 = !DILocation(line: 722, column: 16, scope: !2053)
!2055 = !DILocation(line: 730, column: 51, scope: !2056)
!2056 = distinct !DILexicalBlock(scope: !1314, file: !140, line: 730, column: 7)
!2057 = !DILocation(line: 731, column: 10, scope: !2058)
!2058 = !DILexicalBlockFile(scope: !2056, file: !140, discriminator: 1)
!2059 = !DILocation(line: 733, column: 11, scope: !2060)
!2060 = distinct !DILexicalBlock(scope: !2061, file: !140, line: 733, column: 11)
!2061 = distinct !DILexicalBlock(scope: !2056, file: !140, line: 732, column: 5)
!2062 = !DILocation(line: 733, column: 11, scope: !2061)
!2063 = !DILocation(line: 734, column: 16, scope: !2060)
!2064 = !DILocation(line: 734, column: 9, scope: !2060)
!2065 = !DILocation(line: 738, column: 18, scope: !2066)
!2066 = distinct !DILexicalBlock(scope: !2060, file: !140, line: 738, column: 16)
!2067 = !DILocation(line: 738, column: 32, scope: !2068)
!2068 = !DILexicalBlockFile(scope: !2066, file: !140, discriminator: 1)
!2069 = !DILocation(line: 738, column: 29, scope: !2066)
!2070 = !DILocation(line: 747, column: 7, scope: !2071)
!2071 = distinct !DILexicalBlock(scope: !1314, file: !140, line: 747, column: 7)
!2072 = !DILocation(line: 747, column: 20, scope: !2071)
!2073 = !DILocation(line: 748, column: 12, scope: !2074)
!2074 = !DILexicalBlockFile(scope: !2075, file: !140, discriminator: 1)
!2075 = distinct !DILexicalBlock(scope: !2076, file: !140, line: 748, column: 5)
!2076 = distinct !DILexicalBlock(scope: !2071, file: !140, line: 748, column: 5)
!2077 = !DILocation(line: 748, column: 5, scope: !2078)
!2078 = !DILexicalBlockFile(scope: !2076, file: !140, discriminator: 1)
!2079 = !DILocation(line: 749, column: 7, scope: !2080)
!2080 = !DILexicalBlockFile(scope: !2081, file: !140, discriminator: 1)
!2081 = distinct !DILexicalBlock(scope: !2082, file: !140, line: 749, column: 7)
!2082 = distinct !DILexicalBlock(scope: !2075, file: !140, line: 749, column: 7)
!2083 = !DILocation(line: 749, column: 7, scope: !2084)
!2084 = !DILexicalBlockFile(scope: !2082, file: !140, discriminator: 1)
!2085 = !DILocation(line: 749, column: 7, scope: !2086)
!2086 = !DILexicalBlockFile(scope: !2081, file: !140, discriminator: 2)
!2087 = !DILocation(line: 749, column: 7, scope: !2088)
!2088 = !DILexicalBlockFile(scope: !2082, file: !140, discriminator: 3)
!2089 = !DILocation(line: 748, column: 39, scope: !2090)
!2090 = !DILexicalBlockFile(scope: !2075, file: !140, discriminator: 2)
!2091 = distinct !{!2091, !2092, !2093}
!2092 = !DILocation(line: 748, column: 5, scope: !2076)
!2093 = !DILocation(line: 749, column: 7, scope: !2076)
!2094 = !DILocation(line: 751, column: 11, scope: !2095)
!2095 = distinct !DILexicalBlock(scope: !1314, file: !140, line: 751, column: 7)
!2096 = !DILocation(line: 751, column: 7, scope: !1314)
!2097 = !DILocation(line: 752, column: 5, scope: !2095)
!2098 = !DILocation(line: 752, column: 17, scope: !2095)
!2099 = !DILocation(line: 758, column: 21, scope: !2100)
!2100 = distinct !DILexicalBlock(scope: !1314, file: !140, line: 758, column: 7)
!2101 = !DILocation(line: 758, column: 54, scope: !2102)
!2102 = !DILexicalBlockFile(scope: !2100, file: !140, discriminator: 1)
!2103 = !DILocation(line: 758, column: 51, scope: !2100)
!2104 = !DILocation(line: 762, column: 42, scope: !1314)
!2105 = !DILocation(line: 760, column: 10, scope: !1314)
!2106 = !DILocation(line: 760, column: 3, scope: !1314)
!2107 = !DILocation(line: 764, column: 1, scope: !1314)
!2108 = distinct !DISubprogram(name: "gettext_quote", scope: !140, file: !140, line: 199, type: !2109, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !112, variables: !2111)
!2109 = !DISubroutineType(types: !2110)
!2110 = !{!31, !31, !5}
!2111 = !{!2112, !2113, !2114, !2115}
!2112 = !DILocalVariable(name: "msgid", arg: 1, scope: !2108, file: !140, line: 199, type: !31)
!2113 = !DILocalVariable(name: "s", arg: 2, scope: !2108, file: !140, line: 199, type: !5)
!2114 = !DILocalVariable(name: "translation", scope: !2108, file: !140, line: 201, type: !31)
!2115 = !DILocalVariable(name: "locale_code", scope: !2108, file: !140, line: 202, type: !31)
!2116 = !DILocation(line: 199, column: 28, scope: !2108)
!2117 = !DILocation(line: 199, column: 54, scope: !2108)
!2118 = !DILocation(line: 201, column: 29, scope: !2108)
!2119 = !DILocation(line: 201, column: 15, scope: !2108)
!2120 = !DILocation(line: 204, column: 19, scope: !2121)
!2121 = distinct !DILexicalBlock(scope: !2108, file: !140, line: 204, column: 7)
!2122 = !DILocation(line: 204, column: 7, scope: !2108)
!2123 = !DILocation(line: 225, column: 17, scope: !2108)
!2124 = !DILocation(line: 202, column: 15, scope: !2108)
!2125 = !DILocalVariable(name: "s2", arg: 2, scope: !2126, file: !2127, line: 160, type: !31)
!2126 = distinct !DISubprogram(name: "strcaseeq0", scope: !2127, file: !2127, line: 160, type: !2128, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !112, variables: !2130)
!2127 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2128 = !DISubroutineType(types: !2129)
!2129 = !{!66, !31, !31, !21, !21, !21, !21, !21, !21, !21, !21, !21}
!2130 = !{!2131, !2125, !2132, !2133, !2134, !2135, !2136, !2137, !2138, !2139, !2140}
!2131 = !DILocalVariable(name: "s1", arg: 1, scope: !2126, file: !2127, line: 160, type: !31)
!2132 = !DILocalVariable(name: "s20", arg: 3, scope: !2126, file: !2127, line: 160, type: !21)
!2133 = !DILocalVariable(name: "s21", arg: 4, scope: !2126, file: !2127, line: 160, type: !21)
!2134 = !DILocalVariable(name: "s22", arg: 5, scope: !2126, file: !2127, line: 160, type: !21)
!2135 = !DILocalVariable(name: "s23", arg: 6, scope: !2126, file: !2127, line: 160, type: !21)
!2136 = !DILocalVariable(name: "s24", arg: 7, scope: !2126, file: !2127, line: 160, type: !21)
!2137 = !DILocalVariable(name: "s25", arg: 8, scope: !2126, file: !2127, line: 160, type: !21)
!2138 = !DILocalVariable(name: "s26", arg: 9, scope: !2126, file: !2127, line: 160, type: !21)
!2139 = !DILocalVariable(name: "s27", arg: 10, scope: !2126, file: !2127, line: 160, type: !21)
!2140 = !DILocalVariable(name: "s28", arg: 11, scope: !2126, file: !2127, line: 160, type: !21)
!2141 = !DILocation(line: 160, column: 41, scope: !2126, inlinedAt: !2142)
!2142 = distinct !DILocation(line: 226, column: 7, scope: !2143)
!2143 = distinct !DILexicalBlock(scope: !2108, file: !140, line: 226, column: 7)
!2144 = !DILocation(line: 160, column: 120, scope: !2126, inlinedAt: !2142)
!2145 = !DILocation(line: 160, column: 130, scope: !2126, inlinedAt: !2142)
!2146 = !DILocation(line: 162, column: 7, scope: !2147, inlinedAt: !2142)
!2147 = !DILexicalBlockFile(scope: !2148, file: !2127, discriminator: 1)
!2148 = distinct !DILexicalBlock(scope: !2126, file: !2127, line: 162, column: 7)
!2149 = !DILocalVariable(name: "s2", arg: 2, scope: !2150, file: !2127, line: 146, type: !31)
!2150 = distinct !DISubprogram(name: "strcaseeq1", scope: !2127, file: !2127, line: 146, type: !2151, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !112, variables: !2153)
!2151 = !DISubroutineType(types: !2152)
!2152 = !{!66, !31, !31, !21, !21, !21, !21, !21, !21, !21, !21}
!2153 = !{!2154, !2149, !2155, !2156, !2157, !2158, !2159, !2160, !2161, !2162}
!2154 = !DILocalVariable(name: "s1", arg: 1, scope: !2150, file: !2127, line: 146, type: !31)
!2155 = !DILocalVariable(name: "s21", arg: 3, scope: !2150, file: !2127, line: 146, type: !21)
!2156 = !DILocalVariable(name: "s22", arg: 4, scope: !2150, file: !2127, line: 146, type: !21)
!2157 = !DILocalVariable(name: "s23", arg: 5, scope: !2150, file: !2127, line: 146, type: !21)
!2158 = !DILocalVariable(name: "s24", arg: 6, scope: !2150, file: !2127, line: 146, type: !21)
!2159 = !DILocalVariable(name: "s25", arg: 7, scope: !2150, file: !2127, line: 146, type: !21)
!2160 = !DILocalVariable(name: "s26", arg: 8, scope: !2150, file: !2127, line: 146, type: !21)
!2161 = !DILocalVariable(name: "s27", arg: 9, scope: !2150, file: !2127, line: 146, type: !21)
!2162 = !DILocalVariable(name: "s28", arg: 10, scope: !2150, file: !2127, line: 146, type: !21)
!2163 = !DILocation(line: 146, column: 41, scope: !2150, inlinedAt: !2164)
!2164 = distinct !DILocation(line: 167, column: 16, scope: !2165, inlinedAt: !2142)
!2165 = distinct !DILexicalBlock(scope: !2166, file: !2127, line: 164, column: 11)
!2166 = distinct !DILexicalBlock(scope: !2148, file: !2127, line: 163, column: 5)
!2167 = !DILocation(line: 146, column: 110, scope: !2150, inlinedAt: !2164)
!2168 = !DILocation(line: 146, column: 120, scope: !2150, inlinedAt: !2164)
!2169 = !DILocation(line: 148, column: 7, scope: !2170, inlinedAt: !2164)
!2170 = !DILexicalBlockFile(scope: !2171, file: !2127, discriminator: 1)
!2171 = distinct !DILexicalBlock(scope: !2150, file: !2127, line: 148, column: 7)
!2172 = !DILocalVariable(name: "s2", arg: 2, scope: !2173, file: !2127, line: 132, type: !31)
!2173 = distinct !DISubprogram(name: "strcaseeq2", scope: !2127, file: !2127, line: 132, type: !2174, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !112, variables: !2176)
!2174 = !DISubroutineType(types: !2175)
!2175 = !{!66, !31, !31, !21, !21, !21, !21, !21, !21, !21}
!2176 = !{!2177, !2172, !2178, !2179, !2180, !2181, !2182, !2183, !2184}
!2177 = !DILocalVariable(name: "s1", arg: 1, scope: !2173, file: !2127, line: 132, type: !31)
!2178 = !DILocalVariable(name: "s22", arg: 3, scope: !2173, file: !2127, line: 132, type: !21)
!2179 = !DILocalVariable(name: "s23", arg: 4, scope: !2173, file: !2127, line: 132, type: !21)
!2180 = !DILocalVariable(name: "s24", arg: 5, scope: !2173, file: !2127, line: 132, type: !21)
!2181 = !DILocalVariable(name: "s25", arg: 6, scope: !2173, file: !2127, line: 132, type: !21)
!2182 = !DILocalVariable(name: "s26", arg: 7, scope: !2173, file: !2127, line: 132, type: !21)
!2183 = !DILocalVariable(name: "s27", arg: 8, scope: !2173, file: !2127, line: 132, type: !21)
!2184 = !DILocalVariable(name: "s28", arg: 9, scope: !2173, file: !2127, line: 132, type: !21)
!2185 = !DILocation(line: 132, column: 41, scope: !2173, inlinedAt: !2186)
!2186 = distinct !DILocation(line: 153, column: 16, scope: !2187, inlinedAt: !2164)
!2187 = distinct !DILexicalBlock(scope: !2188, file: !2127, line: 150, column: 11)
!2188 = distinct !DILexicalBlock(scope: !2171, file: !2127, line: 149, column: 5)
!2189 = !DILocation(line: 132, column: 100, scope: !2173, inlinedAt: !2186)
!2190 = !DILocation(line: 132, column: 110, scope: !2173, inlinedAt: !2186)
!2191 = !DILocation(line: 134, column: 7, scope: !2192, inlinedAt: !2186)
!2192 = !DILexicalBlockFile(scope: !2193, file: !2127, discriminator: 1)
!2193 = distinct !DILexicalBlock(scope: !2173, file: !2127, line: 134, column: 7)
!2194 = !DILocalVariable(name: "s2", arg: 2, scope: !2195, file: !2127, line: 118, type: !31)
!2195 = distinct !DISubprogram(name: "strcaseeq3", scope: !2127, file: !2127, line: 118, type: !2196, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !112, variables: !2198)
!2196 = !DISubroutineType(types: !2197)
!2197 = !{!66, !31, !31, !21, !21, !21, !21, !21, !21}
!2198 = !{!2199, !2194, !2200, !2201, !2202, !2203, !2204, !2205}
!2199 = !DILocalVariable(name: "s1", arg: 1, scope: !2195, file: !2127, line: 118, type: !31)
!2200 = !DILocalVariable(name: "s23", arg: 3, scope: !2195, file: !2127, line: 118, type: !21)
!2201 = !DILocalVariable(name: "s24", arg: 4, scope: !2195, file: !2127, line: 118, type: !21)
!2202 = !DILocalVariable(name: "s25", arg: 5, scope: !2195, file: !2127, line: 118, type: !21)
!2203 = !DILocalVariable(name: "s26", arg: 6, scope: !2195, file: !2127, line: 118, type: !21)
!2204 = !DILocalVariable(name: "s27", arg: 7, scope: !2195, file: !2127, line: 118, type: !21)
!2205 = !DILocalVariable(name: "s28", arg: 8, scope: !2195, file: !2127, line: 118, type: !21)
!2206 = !DILocation(line: 118, column: 41, scope: !2195, inlinedAt: !2207)
!2207 = distinct !DILocation(line: 139, column: 16, scope: !2208, inlinedAt: !2186)
!2208 = distinct !DILexicalBlock(scope: !2209, file: !2127, line: 136, column: 11)
!2209 = distinct !DILexicalBlock(scope: !2193, file: !2127, line: 135, column: 5)
!2210 = !DILocation(line: 118, column: 90, scope: !2195, inlinedAt: !2207)
!2211 = !DILocation(line: 118, column: 100, scope: !2195, inlinedAt: !2207)
!2212 = !DILocation(line: 120, column: 7, scope: !2213, inlinedAt: !2207)
!2213 = !DILexicalBlockFile(scope: !2214, file: !2127, discriminator: 2)
!2214 = distinct !DILexicalBlock(scope: !2195, file: !2127, line: 120, column: 7)
!2215 = !DILocation(line: 120, column: 7, scope: !2216, inlinedAt: !2207)
!2216 = !DILexicalBlockFile(scope: !2195, file: !2127, discriminator: 2)
!2217 = !DILocalVariable(name: "s2", arg: 2, scope: !2218, file: !2127, line: 104, type: !31)
!2218 = distinct !DISubprogram(name: "strcaseeq4", scope: !2127, file: !2127, line: 104, type: !2219, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !112, variables: !2221)
!2219 = !DISubroutineType(types: !2220)
!2220 = !{!66, !31, !31, !21, !21, !21, !21, !21}
!2221 = !{!2222, !2217, !2223, !2224, !2225, !2226, !2227}
!2222 = !DILocalVariable(name: "s1", arg: 1, scope: !2218, file: !2127, line: 104, type: !31)
!2223 = !DILocalVariable(name: "s24", arg: 3, scope: !2218, file: !2127, line: 104, type: !21)
!2224 = !DILocalVariable(name: "s25", arg: 4, scope: !2218, file: !2127, line: 104, type: !21)
!2225 = !DILocalVariable(name: "s26", arg: 5, scope: !2218, file: !2127, line: 104, type: !21)
!2226 = !DILocalVariable(name: "s27", arg: 6, scope: !2218, file: !2127, line: 104, type: !21)
!2227 = !DILocalVariable(name: "s28", arg: 7, scope: !2218, file: !2127, line: 104, type: !21)
!2228 = !DILocation(line: 104, column: 41, scope: !2218, inlinedAt: !2229)
!2229 = distinct !DILocation(line: 125, column: 16, scope: !2230, inlinedAt: !2207)
!2230 = distinct !DILexicalBlock(scope: !2231, file: !2127, line: 122, column: 11)
!2231 = distinct !DILexicalBlock(scope: !2214, file: !2127, line: 121, column: 5)
!2232 = !DILocation(line: 104, column: 80, scope: !2218, inlinedAt: !2229)
!2233 = !DILocation(line: 104, column: 90, scope: !2218, inlinedAt: !2229)
!2234 = !DILocation(line: 106, column: 7, scope: !2235, inlinedAt: !2229)
!2235 = !DILexicalBlockFile(scope: !2236, file: !2127, discriminator: 2)
!2236 = distinct !DILexicalBlock(scope: !2218, file: !2127, line: 106, column: 7)
!2237 = !DILocation(line: 106, column: 7, scope: !2238, inlinedAt: !2229)
!2238 = !DILexicalBlockFile(scope: !2218, file: !2127, discriminator: 2)
!2239 = !DILocalVariable(name: "s2", arg: 2, scope: !2240, file: !2127, line: 90, type: !31)
!2240 = distinct !DISubprogram(name: "strcaseeq5", scope: !2127, file: !2127, line: 90, type: !2241, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !112, variables: !2243)
!2241 = !DISubroutineType(types: !2242)
!2242 = !{!66, !31, !31, !21, !21, !21, !21}
!2243 = !{!2244, !2239, !2245, !2246, !2247, !2248}
!2244 = !DILocalVariable(name: "s1", arg: 1, scope: !2240, file: !2127, line: 90, type: !31)
!2245 = !DILocalVariable(name: "s25", arg: 3, scope: !2240, file: !2127, line: 90, type: !21)
!2246 = !DILocalVariable(name: "s26", arg: 4, scope: !2240, file: !2127, line: 90, type: !21)
!2247 = !DILocalVariable(name: "s27", arg: 5, scope: !2240, file: !2127, line: 90, type: !21)
!2248 = !DILocalVariable(name: "s28", arg: 6, scope: !2240, file: !2127, line: 90, type: !21)
!2249 = !DILocation(line: 90, column: 41, scope: !2240, inlinedAt: !2250)
!2250 = distinct !DILocation(line: 111, column: 16, scope: !2251, inlinedAt: !2229)
!2251 = distinct !DILexicalBlock(scope: !2252, file: !2127, line: 108, column: 11)
!2252 = distinct !DILexicalBlock(scope: !2236, file: !2127, line: 107, column: 5)
!2253 = !DILocation(line: 90, column: 70, scope: !2240, inlinedAt: !2250)
!2254 = !DILocation(line: 90, column: 80, scope: !2240, inlinedAt: !2250)
!2255 = !DILocation(line: 92, column: 7, scope: !2256, inlinedAt: !2250)
!2256 = !DILexicalBlockFile(scope: !2257, file: !2127, discriminator: 2)
!2257 = distinct !DILexicalBlock(scope: !2240, file: !2127, line: 92, column: 7)
!2258 = !DILocation(line: 92, column: 7, scope: !2259, inlinedAt: !2250)
!2259 = !DILexicalBlockFile(scope: !2240, file: !2127, discriminator: 2)
!2260 = !DILocation(line: 227, column: 12, scope: !2143)
!2261 = !DILocation(line: 227, column: 21, scope: !2143)
!2262 = !DILocation(line: 227, column: 5, scope: !2143)
!2263 = !DILocation(line: 146, column: 41, scope: !2150, inlinedAt: !2264)
!2264 = distinct !DILocation(line: 167, column: 16, scope: !2165, inlinedAt: !2265)
!2265 = distinct !DILocation(line: 228, column: 7, scope: !2266)
!2266 = distinct !DILexicalBlock(scope: !2108, file: !140, line: 228, column: 7)
!2267 = !DILocation(line: 146, column: 110, scope: !2150, inlinedAt: !2264)
!2268 = !DILocation(line: 146, column: 120, scope: !2150, inlinedAt: !2264)
!2269 = !DILocation(line: 148, column: 7, scope: !2170, inlinedAt: !2264)
!2270 = !DILocation(line: 132, column: 41, scope: !2173, inlinedAt: !2271)
!2271 = distinct !DILocation(line: 153, column: 16, scope: !2187, inlinedAt: !2264)
!2272 = !DILocation(line: 132, column: 100, scope: !2173, inlinedAt: !2271)
!2273 = !DILocation(line: 132, column: 110, scope: !2173, inlinedAt: !2271)
!2274 = !DILocation(line: 134, column: 7, scope: !2275, inlinedAt: !2271)
!2275 = !DILexicalBlockFile(scope: !2193, file: !2127, discriminator: 2)
!2276 = !DILocation(line: 134, column: 7, scope: !2277, inlinedAt: !2271)
!2277 = !DILexicalBlockFile(scope: !2173, file: !2127, discriminator: 2)
!2278 = !DILocation(line: 118, column: 41, scope: !2195, inlinedAt: !2279)
!2279 = distinct !DILocation(line: 139, column: 16, scope: !2208, inlinedAt: !2271)
!2280 = !DILocation(line: 118, column: 90, scope: !2195, inlinedAt: !2279)
!2281 = !DILocation(line: 118, column: 100, scope: !2195, inlinedAt: !2279)
!2282 = !DILocation(line: 120, column: 7, scope: !2213, inlinedAt: !2279)
!2283 = !DILocation(line: 120, column: 7, scope: !2216, inlinedAt: !2279)
!2284 = !DILocation(line: 104, column: 41, scope: !2218, inlinedAt: !2285)
!2285 = distinct !DILocation(line: 125, column: 16, scope: !2230, inlinedAt: !2279)
!2286 = !DILocation(line: 104, column: 80, scope: !2218, inlinedAt: !2285)
!2287 = !DILocation(line: 104, column: 90, scope: !2218, inlinedAt: !2285)
!2288 = !DILocation(line: 106, column: 7, scope: !2235, inlinedAt: !2285)
!2289 = !DILocation(line: 106, column: 7, scope: !2238, inlinedAt: !2285)
!2290 = !DILocation(line: 90, column: 41, scope: !2240, inlinedAt: !2291)
!2291 = distinct !DILocation(line: 111, column: 16, scope: !2251, inlinedAt: !2285)
!2292 = !DILocation(line: 90, column: 70, scope: !2240, inlinedAt: !2291)
!2293 = !DILocation(line: 90, column: 80, scope: !2240, inlinedAt: !2291)
!2294 = !DILocation(line: 92, column: 7, scope: !2256, inlinedAt: !2291)
!2295 = !DILocation(line: 92, column: 7, scope: !2259, inlinedAt: !2291)
!2296 = !DILocalVariable(name: "s2", arg: 2, scope: !2297, file: !2127, line: 76, type: !31)
!2297 = distinct !DISubprogram(name: "strcaseeq6", scope: !2127, file: !2127, line: 76, type: !2298, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !112, variables: !2300)
!2298 = !DISubroutineType(types: !2299)
!2299 = !{!66, !31, !31, !21, !21, !21}
!2300 = !{!2301, !2296, !2302, !2303, !2304}
!2301 = !DILocalVariable(name: "s1", arg: 1, scope: !2297, file: !2127, line: 76, type: !31)
!2302 = !DILocalVariable(name: "s26", arg: 3, scope: !2297, file: !2127, line: 76, type: !21)
!2303 = !DILocalVariable(name: "s27", arg: 4, scope: !2297, file: !2127, line: 76, type: !21)
!2304 = !DILocalVariable(name: "s28", arg: 5, scope: !2297, file: !2127, line: 76, type: !21)
!2305 = !DILocation(line: 76, column: 41, scope: !2297, inlinedAt: !2306)
!2306 = distinct !DILocation(line: 97, column: 16, scope: !2307, inlinedAt: !2291)
!2307 = distinct !DILexicalBlock(scope: !2308, file: !2127, line: 94, column: 11)
!2308 = distinct !DILexicalBlock(scope: !2257, file: !2127, line: 93, column: 5)
!2309 = !DILocation(line: 76, column: 60, scope: !2297, inlinedAt: !2306)
!2310 = !DILocation(line: 76, column: 70, scope: !2297, inlinedAt: !2306)
!2311 = !DILocation(line: 78, column: 7, scope: !2312, inlinedAt: !2306)
!2312 = !DILexicalBlockFile(scope: !2313, file: !2127, discriminator: 2)
!2313 = distinct !DILexicalBlock(scope: !2297, file: !2127, line: 78, column: 7)
!2314 = !DILocation(line: 78, column: 7, scope: !2315, inlinedAt: !2306)
!2315 = !DILexicalBlockFile(scope: !2297, file: !2127, discriminator: 2)
!2316 = !DILocalVariable(name: "s2", arg: 2, scope: !2317, file: !2127, line: 62, type: !31)
!2317 = distinct !DISubprogram(name: "strcaseeq7", scope: !2127, file: !2127, line: 62, type: !2318, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !112, variables: !2320)
!2318 = !DISubroutineType(types: !2319)
!2319 = !{!66, !31, !31, !21, !21}
!2320 = !{!2321, !2316, !2322, !2323}
!2321 = !DILocalVariable(name: "s1", arg: 1, scope: !2317, file: !2127, line: 62, type: !31)
!2322 = !DILocalVariable(name: "s27", arg: 3, scope: !2317, file: !2127, line: 62, type: !21)
!2323 = !DILocalVariable(name: "s28", arg: 4, scope: !2317, file: !2127, line: 62, type: !21)
!2324 = !DILocation(line: 62, column: 41, scope: !2317, inlinedAt: !2325)
!2325 = distinct !DILocation(line: 83, column: 16, scope: !2326, inlinedAt: !2306)
!2326 = distinct !DILexicalBlock(scope: !2327, file: !2127, line: 80, column: 11)
!2327 = distinct !DILexicalBlock(scope: !2313, file: !2127, line: 79, column: 5)
!2328 = !DILocation(line: 62, column: 50, scope: !2317, inlinedAt: !2325)
!2329 = !DILocation(line: 62, column: 60, scope: !2317, inlinedAt: !2325)
!2330 = !DILocation(line: 64, column: 7, scope: !2331, inlinedAt: !2325)
!2331 = !DILexicalBlockFile(scope: !2332, file: !2127, discriminator: 2)
!2332 = distinct !DILexicalBlock(scope: !2317, file: !2127, line: 64, column: 7)
!2333 = !DILocation(line: 228, column: 7, scope: !2108)
!2334 = !DILocation(line: 229, column: 12, scope: !2266)
!2335 = !DILocation(line: 229, column: 21, scope: !2266)
!2336 = !DILocation(line: 229, column: 5, scope: !2266)
!2337 = !DILocation(line: 231, column: 13, scope: !2108)
!2338 = !DILocation(line: 231, column: 11, scope: !2108)
!2339 = !DILocation(line: 231, column: 3, scope: !2108)
!2340 = !DILocation(line: 232, column: 1, scope: !2108)
!2341 = distinct !DISubprogram(name: "quotearg_alloc", scope: !140, file: !140, line: 791, type: !2342, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !112, variables: !2344)
!2342 = !DISubroutineType(types: !2343)
!2343 = !{!20, !31, !23, !1182}
!2344 = !{!2345, !2346, !2347}
!2345 = !DILocalVariable(name: "arg", arg: 1, scope: !2341, file: !140, line: 791, type: !31)
!2346 = !DILocalVariable(name: "argsize", arg: 2, scope: !2341, file: !140, line: 791, type: !23)
!2347 = !DILocalVariable(name: "o", arg: 3, scope: !2341, file: !140, line: 792, type: !1182)
!2348 = !DILocation(line: 791, column: 29, scope: !2341)
!2349 = !DILocation(line: 791, column: 41, scope: !2341)
!2350 = !DILocation(line: 792, column: 47, scope: !2341)
!2351 = !DILocalVariable(name: "arg", arg: 1, scope: !2352, file: !140, line: 804, type: !31)
!2352 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !140, file: !140, line: 804, type: !2353, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !112, variables: !2355)
!2353 = !DISubroutineType(types: !2354)
!2354 = !{!20, !31, !23, !558, !1182}
!2355 = !{!2351, !2356, !2357, !2358, !2359, !2360, !2361, !2362, !2363}
!2356 = !DILocalVariable(name: "argsize", arg: 2, scope: !2352, file: !140, line: 804, type: !23)
!2357 = !DILocalVariable(name: "size", arg: 3, scope: !2352, file: !140, line: 804, type: !558)
!2358 = !DILocalVariable(name: "o", arg: 4, scope: !2352, file: !140, line: 805, type: !1182)
!2359 = !DILocalVariable(name: "p", scope: !2352, file: !140, line: 807, type: !1182)
!2360 = !DILocalVariable(name: "e", scope: !2352, file: !140, line: 808, type: !66)
!2361 = !DILocalVariable(name: "flags", scope: !2352, file: !140, line: 810, type: !66)
!2362 = !DILocalVariable(name: "bufsize", scope: !2352, file: !140, line: 811, type: !23)
!2363 = !DILocalVariable(name: "buf", scope: !2352, file: !140, line: 815, type: !20)
!2364 = !DILocation(line: 804, column: 33, scope: !2352, inlinedAt: !2365)
!2365 = distinct !DILocation(line: 794, column: 10, scope: !2341)
!2366 = !DILocation(line: 804, column: 45, scope: !2352, inlinedAt: !2365)
!2367 = !DILocation(line: 804, column: 62, scope: !2352, inlinedAt: !2365)
!2368 = !DILocation(line: 805, column: 51, scope: !2352, inlinedAt: !2365)
!2369 = !DILocation(line: 807, column: 37, scope: !2352, inlinedAt: !2365)
!2370 = !DILocation(line: 807, column: 33, scope: !2352, inlinedAt: !2365)
!2371 = !DILocation(line: 808, column: 11, scope: !2352, inlinedAt: !2365)
!2372 = !DILocation(line: 808, column: 7, scope: !2352, inlinedAt: !2365)
!2373 = !DILocation(line: 810, column: 18, scope: !2352, inlinedAt: !2365)
!2374 = !DILocation(line: 810, column: 24, scope: !2352, inlinedAt: !2365)
!2375 = !DILocation(line: 810, column: 7, scope: !2352, inlinedAt: !2365)
!2376 = !DILocation(line: 811, column: 69, scope: !2352, inlinedAt: !2365)
!2377 = !DILocation(line: 812, column: 53, scope: !2352, inlinedAt: !2365)
!2378 = !DILocation(line: 813, column: 49, scope: !2352, inlinedAt: !2365)
!2379 = !DILocation(line: 814, column: 49, scope: !2352, inlinedAt: !2365)
!2380 = !DILocation(line: 811, column: 20, scope: !2352, inlinedAt: !2365)
!2381 = !DILocation(line: 814, column: 62, scope: !2352, inlinedAt: !2365)
!2382 = !DILocation(line: 811, column: 10, scope: !2352, inlinedAt: !2365)
!2383 = !DILocalVariable(name: "n", arg: 1, scope: !2384, file: !554, line: 220, type: !23)
!2384 = distinct !DISubprogram(name: "xcharalloc", scope: !554, file: !554, line: 220, type: !2385, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !112, variables: !2387)
!2385 = !DISubroutineType(types: !2386)
!2386 = !{!20, !23}
!2387 = !{!2383}
!2388 = !DILocation(line: 220, column: 20, scope: !2384, inlinedAt: !2389)
!2389 = distinct !DILocation(line: 815, column: 15, scope: !2352, inlinedAt: !2365)
!2390 = !DILocation(line: 222, column: 10, scope: !2384, inlinedAt: !2389)
!2391 = !DILocation(line: 815, column: 9, scope: !2352, inlinedAt: !2365)
!2392 = !DILocation(line: 816, column: 60, scope: !2352, inlinedAt: !2365)
!2393 = !DILocation(line: 818, column: 32, scope: !2352, inlinedAt: !2365)
!2394 = !DILocation(line: 818, column: 47, scope: !2352, inlinedAt: !2365)
!2395 = !DILocation(line: 816, column: 3, scope: !2352, inlinedAt: !2365)
!2396 = !DILocation(line: 819, column: 9, scope: !2352, inlinedAt: !2365)
!2397 = !DILocation(line: 794, column: 3, scope: !2341)
!2398 = !DILocation(line: 804, column: 33, scope: !2352)
!2399 = !DILocation(line: 804, column: 45, scope: !2352)
!2400 = !DILocation(line: 804, column: 62, scope: !2352)
!2401 = !DILocation(line: 805, column: 51, scope: !2352)
!2402 = !DILocation(line: 807, column: 37, scope: !2352)
!2403 = !DILocation(line: 807, column: 33, scope: !2352)
!2404 = !DILocation(line: 808, column: 11, scope: !2352)
!2405 = !DILocation(line: 808, column: 7, scope: !2352)
!2406 = !DILocation(line: 810, column: 18, scope: !2352)
!2407 = !DILocation(line: 810, column: 27, scope: !2352)
!2408 = !DILocation(line: 810, column: 24, scope: !2352)
!2409 = !DILocation(line: 810, column: 7, scope: !2352)
!2410 = !DILocation(line: 811, column: 69, scope: !2352)
!2411 = !DILocation(line: 812, column: 53, scope: !2352)
!2412 = !DILocation(line: 813, column: 49, scope: !2352)
!2413 = !DILocation(line: 814, column: 49, scope: !2352)
!2414 = !DILocation(line: 811, column: 20, scope: !2352)
!2415 = !DILocation(line: 814, column: 62, scope: !2352)
!2416 = !DILocation(line: 811, column: 10, scope: !2352)
!2417 = !DILocation(line: 220, column: 20, scope: !2384, inlinedAt: !2418)
!2418 = distinct !DILocation(line: 815, column: 15, scope: !2352)
!2419 = !DILocation(line: 222, column: 10, scope: !2384, inlinedAt: !2418)
!2420 = !DILocation(line: 815, column: 9, scope: !2352)
!2421 = !DILocation(line: 816, column: 60, scope: !2352)
!2422 = !DILocation(line: 818, column: 32, scope: !2352)
!2423 = !DILocation(line: 818, column: 47, scope: !2352)
!2424 = !DILocation(line: 816, column: 3, scope: !2352)
!2425 = !DILocation(line: 819, column: 9, scope: !2352)
!2426 = !DILocation(line: 820, column: 7, scope: !2352)
!2427 = !DILocation(line: 821, column: 11, scope: !2428)
!2428 = distinct !DILexicalBlock(scope: !2352, file: !140, line: 820, column: 7)
!2429 = !{!1036, !1036, i64 0}
!2430 = !DILocation(line: 821, column: 5, scope: !2428)
!2431 = !DILocation(line: 822, column: 3, scope: !2352)
!2432 = distinct !DISubprogram(name: "quotearg_free", scope: !140, file: !140, line: 840, type: !1061, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !112, variables: !2433)
!2433 = !{!2434, !2435}
!2434 = !DILocalVariable(name: "sv", scope: !2432, file: !140, line: 842, type: !167)
!2435 = !DILocalVariable(name: "i", scope: !2432, file: !140, line: 843, type: !66)
!2436 = !DILocation(line: 842, column: 24, scope: !2432)
!2437 = !DILocation(line: 842, column: 19, scope: !2432)
!2438 = !DILocation(line: 843, column: 7, scope: !2432)
!2439 = !DILocation(line: 844, column: 19, scope: !2440)
!2440 = !DILexicalBlockFile(scope: !2441, file: !140, discriminator: 1)
!2441 = distinct !DILexicalBlock(scope: !2442, file: !140, line: 844, column: 3)
!2442 = distinct !DILexicalBlock(scope: !2432, file: !140, line: 844, column: 3)
!2443 = !DILocation(line: 844, column: 17, scope: !2440)
!2444 = !DILocation(line: 844, column: 3, scope: !2445)
!2445 = !DILexicalBlockFile(scope: !2442, file: !140, discriminator: 1)
!2446 = !DILocation(line: 845, column: 17, scope: !2441)
!2447 = !{!2448, !607, i64 8}
!2448 = !{!"slotvec", !1036, i64 0, !607, i64 8}
!2449 = !DILocation(line: 845, column: 5, scope: !2441)
!2450 = !DILocation(line: 844, column: 28, scope: !2451)
!2451 = !DILexicalBlockFile(scope: !2441, file: !140, discriminator: 2)
!2452 = distinct !{!2452, !2453, !2454}
!2453 = !DILocation(line: 844, column: 3, scope: !2442)
!2454 = !DILocation(line: 845, column: 20, scope: !2442)
!2455 = !DILocation(line: 846, column: 13, scope: !2456)
!2456 = distinct !DILexicalBlock(scope: !2432, file: !140, line: 846, column: 7)
!2457 = !DILocation(line: 846, column: 17, scope: !2456)
!2458 = !DILocation(line: 846, column: 7, scope: !2432)
!2459 = !DILocation(line: 848, column: 7, scope: !2460)
!2460 = distinct !DILexicalBlock(scope: !2456, file: !140, line: 847, column: 5)
!2461 = !DILocation(line: 849, column: 21, scope: !2460)
!2462 = !{!2448, !1036, i64 0}
!2463 = !DILocation(line: 850, column: 20, scope: !2460)
!2464 = !DILocation(line: 851, column: 5, scope: !2460)
!2465 = !DILocation(line: 852, column: 10, scope: !2466)
!2466 = distinct !DILexicalBlock(scope: !2432, file: !140, line: 852, column: 7)
!2467 = !DILocation(line: 852, column: 7, scope: !2432)
!2468 = !DILocation(line: 854, column: 13, scope: !2469)
!2469 = distinct !DILexicalBlock(scope: !2466, file: !140, line: 853, column: 5)
!2470 = !DILocation(line: 854, column: 7, scope: !2469)
!2471 = !DILocation(line: 855, column: 15, scope: !2469)
!2472 = !DILocation(line: 856, column: 5, scope: !2469)
!2473 = !DILocation(line: 857, column: 10, scope: !2432)
!2474 = !DILocation(line: 858, column: 1, scope: !2432)
!2475 = distinct !DISubprogram(name: "quotearg_n", scope: !140, file: !140, line: 922, type: !2476, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !112, variables: !2478)
!2476 = !DISubroutineType(types: !2477)
!2477 = !{!20, !66, !31}
!2478 = !{!2479, !2480}
!2479 = !DILocalVariable(name: "n", arg: 1, scope: !2475, file: !140, line: 922, type: !66)
!2480 = !DILocalVariable(name: "arg", arg: 2, scope: !2475, file: !140, line: 922, type: !31)
!2481 = !DILocation(line: 922, column: 17, scope: !2475)
!2482 = !DILocation(line: 922, column: 32, scope: !2475)
!2483 = !DILocation(line: 924, column: 10, scope: !2475)
!2484 = !DILocation(line: 924, column: 3, scope: !2475)
!2485 = distinct !DISubprogram(name: "quotearg_n_options", scope: !140, file: !140, line: 869, type: !2486, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !112, variables: !2488)
!2486 = !DISubroutineType(types: !2487)
!2487 = !{!20, !66, !31, !23, !1182}
!2488 = !{!2489, !2490, !2491, !2492, !2493, !2494, !2495, !2498, !2500, !2501, !2502}
!2489 = !DILocalVariable(name: "n", arg: 1, scope: !2485, file: !140, line: 869, type: !66)
!2490 = !DILocalVariable(name: "arg", arg: 2, scope: !2485, file: !140, line: 869, type: !31)
!2491 = !DILocalVariable(name: "argsize", arg: 3, scope: !2485, file: !140, line: 869, type: !23)
!2492 = !DILocalVariable(name: "options", arg: 4, scope: !2485, file: !140, line: 870, type: !1182)
!2493 = !DILocalVariable(name: "e", scope: !2485, file: !140, line: 872, type: !66)
!2494 = !DILocalVariable(name: "sv", scope: !2485, file: !140, line: 874, type: !167)
!2495 = !DILocalVariable(name: "preallocated", scope: !2496, file: !140, line: 881, type: !36)
!2496 = distinct !DILexicalBlock(scope: !2497, file: !140, line: 880, column: 5)
!2497 = distinct !DILexicalBlock(scope: !2485, file: !140, line: 879, column: 7)
!2498 = !DILocalVariable(name: "size", scope: !2499, file: !140, line: 894, type: !23)
!2499 = distinct !DILexicalBlock(scope: !2485, file: !140, line: 893, column: 3)
!2500 = !DILocalVariable(name: "val", scope: !2499, file: !140, line: 895, type: !20)
!2501 = !DILocalVariable(name: "flags", scope: !2499, file: !140, line: 897, type: !66)
!2502 = !DILocalVariable(name: "qsize", scope: !2499, file: !140, line: 898, type: !23)
!2503 = !DILocation(line: 869, column: 25, scope: !2485)
!2504 = !DILocation(line: 869, column: 40, scope: !2485)
!2505 = !DILocation(line: 869, column: 52, scope: !2485)
!2506 = !DILocation(line: 870, column: 51, scope: !2485)
!2507 = !DILocation(line: 872, column: 11, scope: !2485)
!2508 = !DILocation(line: 872, column: 7, scope: !2485)
!2509 = !DILocation(line: 874, column: 24, scope: !2485)
!2510 = !DILocation(line: 874, column: 19, scope: !2485)
!2511 = !DILocation(line: 876, column: 9, scope: !2512)
!2512 = distinct !DILexicalBlock(scope: !2485, file: !140, line: 876, column: 7)
!2513 = !DILocation(line: 876, column: 7, scope: !2485)
!2514 = !DILocation(line: 877, column: 5, scope: !2512)
!2515 = !DILocation(line: 879, column: 7, scope: !2497)
!2516 = !DILocation(line: 879, column: 14, scope: !2497)
!2517 = !DILocation(line: 879, column: 7, scope: !2485)
!2518 = !DILocation(line: 881, column: 31, scope: !2496)
!2519 = !DILocation(line: 883, column: 67, scope: !2520)
!2520 = distinct !DILexicalBlock(scope: !2496, file: !140, line: 883, column: 11)
!2521 = !DILocation(line: 883, column: 11, scope: !2496)
!2522 = !DILocation(line: 884, column: 9, scope: !2520)
!2523 = !DILocation(line: 886, column: 32, scope: !2524)
!2524 = !DILexicalBlockFile(scope: !2496, file: !140, discriminator: 3)
!2525 = !DILocation(line: 886, column: 61, scope: !2524)
!2526 = !DILocation(line: 886, column: 58, scope: !2524)
!2527 = !DILocation(line: 886, column: 66, scope: !2524)
!2528 = !DILocation(line: 886, column: 22, scope: !2524)
!2529 = !DILocation(line: 886, column: 15, scope: !2524)
!2530 = !DILocation(line: 887, column: 11, scope: !2496)
!2531 = !DILocation(line: 888, column: 15, scope: !2532)
!2532 = distinct !DILexicalBlock(scope: !2496, file: !140, line: 887, column: 11)
!2533 = !{i64 0, i64 8, !2429, i64 8, i64 8, !606}
!2534 = !DILocation(line: 888, column: 9, scope: !2532)
!2535 = !DILocation(line: 889, column: 20, scope: !2496)
!2536 = !DILocation(line: 889, column: 18, scope: !2496)
!2537 = !DILocation(line: 889, column: 7, scope: !2496)
!2538 = !DILocation(line: 889, column: 38, scope: !2496)
!2539 = !DILocation(line: 889, column: 31, scope: !2496)
!2540 = !DILocation(line: 889, column: 48, scope: !2496)
!2541 = !DILocation(line: 890, column: 14, scope: !2496)
!2542 = !DILocation(line: 891, column: 5, scope: !2496)
!2543 = !DILocation(line: 894, column: 19, scope: !2499)
!2544 = !DILocation(line: 894, column: 25, scope: !2499)
!2545 = !DILocation(line: 894, column: 12, scope: !2499)
!2546 = !DILocation(line: 895, column: 23, scope: !2499)
!2547 = !DILocation(line: 895, column: 11, scope: !2499)
!2548 = !DILocation(line: 897, column: 26, scope: !2499)
!2549 = !DILocation(line: 897, column: 32, scope: !2499)
!2550 = !DILocation(line: 897, column: 9, scope: !2499)
!2551 = !DILocation(line: 899, column: 55, scope: !2499)
!2552 = !DILocation(line: 900, column: 46, scope: !2499)
!2553 = !DILocation(line: 901, column: 55, scope: !2499)
!2554 = !DILocation(line: 902, column: 55, scope: !2499)
!2555 = !DILocation(line: 898, column: 20, scope: !2499)
!2556 = !DILocation(line: 898, column: 12, scope: !2499)
!2557 = !DILocation(line: 904, column: 14, scope: !2558)
!2558 = distinct !DILexicalBlock(scope: !2499, file: !140, line: 904, column: 9)
!2559 = !DILocation(line: 904, column: 9, scope: !2499)
!2560 = !DILocation(line: 906, column: 35, scope: !2561)
!2561 = distinct !DILexicalBlock(scope: !2558, file: !140, line: 905, column: 7)
!2562 = !DILocation(line: 906, column: 20, scope: !2561)
!2563 = !DILocation(line: 907, column: 17, scope: !2564)
!2564 = distinct !DILexicalBlock(scope: !2561, file: !140, line: 907, column: 13)
!2565 = !DILocation(line: 907, column: 13, scope: !2561)
!2566 = !DILocation(line: 908, column: 11, scope: !2564)
!2567 = !DILocation(line: 220, column: 20, scope: !2384, inlinedAt: !2568)
!2568 = distinct !DILocation(line: 909, column: 27, scope: !2561)
!2569 = !DILocation(line: 222, column: 10, scope: !2384, inlinedAt: !2568)
!2570 = !DILocation(line: 909, column: 19, scope: !2561)
!2571 = !DILocation(line: 910, column: 69, scope: !2561)
!2572 = !DILocation(line: 912, column: 44, scope: !2561)
!2573 = !DILocation(line: 913, column: 44, scope: !2561)
!2574 = !DILocation(line: 910, column: 9, scope: !2561)
!2575 = !DILocation(line: 914, column: 7, scope: !2561)
!2576 = !DILocation(line: 916, column: 11, scope: !2499)
!2577 = !DILocation(line: 917, column: 5, scope: !2499)
!2578 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !140, file: !140, line: 928, type: !2579, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !112, variables: !2581)
!2579 = !DISubroutineType(types: !2580)
!2580 = !{!20, !66, !31, !23}
!2581 = !{!2582, !2583, !2584}
!2582 = !DILocalVariable(name: "n", arg: 1, scope: !2578, file: !140, line: 928, type: !66)
!2583 = !DILocalVariable(name: "arg", arg: 2, scope: !2578, file: !140, line: 928, type: !31)
!2584 = !DILocalVariable(name: "argsize", arg: 3, scope: !2578, file: !140, line: 928, type: !23)
!2585 = !DILocation(line: 928, column: 21, scope: !2578)
!2586 = !DILocation(line: 928, column: 36, scope: !2578)
!2587 = !DILocation(line: 928, column: 48, scope: !2578)
!2588 = !DILocation(line: 930, column: 10, scope: !2578)
!2589 = !DILocation(line: 930, column: 3, scope: !2578)
!2590 = distinct !DISubprogram(name: "quotearg", scope: !140, file: !140, line: 934, type: !2591, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !112, variables: !2593)
!2591 = !DISubroutineType(types: !2592)
!2592 = !{!20, !31}
!2593 = !{!2594}
!2594 = !DILocalVariable(name: "arg", arg: 1, scope: !2590, file: !140, line: 934, type: !31)
!2595 = !DILocation(line: 934, column: 23, scope: !2590)
!2596 = !DILocation(line: 922, column: 17, scope: !2475, inlinedAt: !2597)
!2597 = distinct !DILocation(line: 936, column: 10, scope: !2590)
!2598 = !DILocation(line: 922, column: 32, scope: !2475, inlinedAt: !2597)
!2599 = !DILocation(line: 924, column: 10, scope: !2475, inlinedAt: !2597)
!2600 = !DILocation(line: 936, column: 3, scope: !2590)
!2601 = distinct !DISubprogram(name: "quotearg_mem", scope: !140, file: !140, line: 940, type: !2602, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !112, variables: !2604)
!2602 = !DISubroutineType(types: !2603)
!2603 = !{!20, !31, !23}
!2604 = !{!2605, !2606}
!2605 = !DILocalVariable(name: "arg", arg: 1, scope: !2601, file: !140, line: 940, type: !31)
!2606 = !DILocalVariable(name: "argsize", arg: 2, scope: !2601, file: !140, line: 940, type: !23)
!2607 = !DILocation(line: 940, column: 27, scope: !2601)
!2608 = !DILocation(line: 940, column: 39, scope: !2601)
!2609 = !DILocation(line: 928, column: 21, scope: !2578, inlinedAt: !2610)
!2610 = distinct !DILocation(line: 942, column: 10, scope: !2601)
!2611 = !DILocation(line: 928, column: 36, scope: !2578, inlinedAt: !2610)
!2612 = !DILocation(line: 928, column: 48, scope: !2578, inlinedAt: !2610)
!2613 = !DILocation(line: 930, column: 10, scope: !2578, inlinedAt: !2610)
!2614 = !DILocation(line: 942, column: 3, scope: !2601)
!2615 = distinct !DISubprogram(name: "quotearg_n_style", scope: !140, file: !140, line: 946, type: !2616, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !112, variables: !2618)
!2616 = !DISubroutineType(types: !2617)
!2617 = !{!20, !66, !5, !31}
!2618 = !{!2619, !2620, !2621, !2622}
!2619 = !DILocalVariable(name: "n", arg: 1, scope: !2615, file: !140, line: 946, type: !66)
!2620 = !DILocalVariable(name: "s", arg: 2, scope: !2615, file: !140, line: 946, type: !5)
!2621 = !DILocalVariable(name: "arg", arg: 3, scope: !2615, file: !140, line: 946, type: !31)
!2622 = !DILocalVariable(name: "o", scope: !2615, file: !140, line: 948, type: !1183)
!2623 = !DILocalVariable(name: "o", scope: !2624, file: !140, line: 187, type: !147)
!2624 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !140, file: !140, line: 185, type: !2625, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !112, variables: !2627)
!2625 = !DISubroutineType(types: !2626)
!2626 = !{!147, !5}
!2627 = !{!2628, !2623}
!2628 = !DILocalVariable(name: "style", arg: 1, scope: !2624, file: !140, line: 185, type: !5)
!2629 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!2630 = !DILocation(line: 187, column: 26, scope: !2624, inlinedAt: !2631)
!2631 = distinct !DILocation(line: 948, column: 36, scope: !2615)
!2632 = !DILocation(line: 946, column: 23, scope: !2615)
!2633 = !DILocation(line: 946, column: 45, scope: !2615)
!2634 = !DILocation(line: 946, column: 60, scope: !2615)
!2635 = !DILocation(line: 948, column: 3, scope: !2615)
!2636 = !DILocation(line: 948, column: 32, scope: !2615)
!2637 = !DILocation(line: 185, column: 48, scope: !2624, inlinedAt: !2631)
!2638 = !DILocation(line: 187, column: 3, scope: !2624, inlinedAt: !2631)
!2639 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!2640 = !DILocation(line: 188, column: 13, scope: !2641, inlinedAt: !2631)
!2641 = distinct !DILexicalBlock(scope: !2624, file: !140, line: 188, column: 7)
!2642 = !DILocation(line: 188, column: 7, scope: !2624, inlinedAt: !2631)
!2643 = !DILocation(line: 189, column: 5, scope: !2641, inlinedAt: !2631)
!2644 = !{!2645}
!2645 = distinct !{!2645, !2646, !"quoting_options_from_style: argument 0"}
!2646 = distinct !{!2646, !"quoting_options_from_style"}
!2647 = !DILocation(line: 191, column: 10, scope: !2624, inlinedAt: !2631)
!2648 = !DILocation(line: 192, column: 1, scope: !2624, inlinedAt: !2631)
!2649 = !DILocation(line: 949, column: 10, scope: !2615)
!2650 = !DILocation(line: 950, column: 1, scope: !2615)
!2651 = !DILocation(line: 949, column: 3, scope: !2615)
!2652 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !140, file: !140, line: 953, type: !2653, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !112, variables: !2655)
!2653 = !DISubroutineType(types: !2654)
!2654 = !{!20, !66, !5, !31, !23}
!2655 = !{!2656, !2657, !2658, !2659, !2660}
!2656 = !DILocalVariable(name: "n", arg: 1, scope: !2652, file: !140, line: 953, type: !66)
!2657 = !DILocalVariable(name: "s", arg: 2, scope: !2652, file: !140, line: 953, type: !5)
!2658 = !DILocalVariable(name: "arg", arg: 3, scope: !2652, file: !140, line: 954, type: !31)
!2659 = !DILocalVariable(name: "argsize", arg: 4, scope: !2652, file: !140, line: 954, type: !23)
!2660 = !DILocalVariable(name: "o", scope: !2652, file: !140, line: 956, type: !1183)
!2661 = !DILocation(line: 187, column: 26, scope: !2624, inlinedAt: !2662)
!2662 = distinct !DILocation(line: 956, column: 36, scope: !2652)
!2663 = !DILocation(line: 953, column: 27, scope: !2652)
!2664 = !DILocation(line: 953, column: 49, scope: !2652)
!2665 = !DILocation(line: 954, column: 35, scope: !2652)
!2666 = !DILocation(line: 954, column: 47, scope: !2652)
!2667 = !DILocation(line: 956, column: 3, scope: !2652)
!2668 = !DILocation(line: 956, column: 32, scope: !2652)
!2669 = !DILocation(line: 185, column: 48, scope: !2624, inlinedAt: !2662)
!2670 = !DILocation(line: 187, column: 3, scope: !2624, inlinedAt: !2662)
!2671 = !DILocation(line: 188, column: 13, scope: !2641, inlinedAt: !2662)
!2672 = !DILocation(line: 188, column: 7, scope: !2624, inlinedAt: !2662)
!2673 = !DILocation(line: 189, column: 5, scope: !2641, inlinedAt: !2662)
!2674 = !{!2675}
!2675 = distinct !{!2675, !2676, !"quoting_options_from_style: argument 0"}
!2676 = distinct !{!2676, !"quoting_options_from_style"}
!2677 = !DILocation(line: 191, column: 10, scope: !2624, inlinedAt: !2662)
!2678 = !DILocation(line: 192, column: 1, scope: !2624, inlinedAt: !2662)
!2679 = !DILocation(line: 957, column: 10, scope: !2652)
!2680 = !DILocation(line: 958, column: 1, scope: !2652)
!2681 = !DILocation(line: 957, column: 3, scope: !2652)
!2682 = distinct !DISubprogram(name: "quotearg_style", scope: !140, file: !140, line: 961, type: !2683, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !112, variables: !2685)
!2683 = !DISubroutineType(types: !2684)
!2684 = !{!20, !5, !31}
!2685 = !{!2686, !2687}
!2686 = !DILocalVariable(name: "s", arg: 1, scope: !2682, file: !140, line: 961, type: !5)
!2687 = !DILocalVariable(name: "arg", arg: 2, scope: !2682, file: !140, line: 961, type: !31)
!2688 = !DILocation(line: 187, column: 26, scope: !2624, inlinedAt: !2689)
!2689 = distinct !DILocation(line: 948, column: 36, scope: !2615, inlinedAt: !2690)
!2690 = distinct !DILocation(line: 963, column: 10, scope: !2682)
!2691 = !DILocation(line: 961, column: 36, scope: !2682)
!2692 = !DILocation(line: 961, column: 51, scope: !2682)
!2693 = !DILocation(line: 946, column: 23, scope: !2615, inlinedAt: !2690)
!2694 = !DILocation(line: 946, column: 45, scope: !2615, inlinedAt: !2690)
!2695 = !DILocation(line: 946, column: 60, scope: !2615, inlinedAt: !2690)
!2696 = !DILocation(line: 948, column: 3, scope: !2615, inlinedAt: !2690)
!2697 = !DILocation(line: 948, column: 32, scope: !2615, inlinedAt: !2690)
!2698 = !DILocation(line: 185, column: 48, scope: !2624, inlinedAt: !2689)
!2699 = !DILocation(line: 187, column: 3, scope: !2624, inlinedAt: !2689)
!2700 = !DILocation(line: 188, column: 13, scope: !2641, inlinedAt: !2689)
!2701 = !DILocation(line: 188, column: 7, scope: !2624, inlinedAt: !2689)
!2702 = !DILocation(line: 189, column: 5, scope: !2641, inlinedAt: !2689)
!2703 = !{!2704}
!2704 = distinct !{!2704, !2705, !"quoting_options_from_style: argument 0"}
!2705 = distinct !{!2705, !"quoting_options_from_style"}
!2706 = !DILocation(line: 191, column: 10, scope: !2624, inlinedAt: !2689)
!2707 = !DILocation(line: 192, column: 1, scope: !2624, inlinedAt: !2689)
!2708 = !DILocation(line: 949, column: 10, scope: !2615, inlinedAt: !2690)
!2709 = !DILocation(line: 950, column: 1, scope: !2615, inlinedAt: !2690)
!2710 = !DILocation(line: 963, column: 3, scope: !2682)
!2711 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !140, file: !140, line: 967, type: !2712, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !112, variables: !2714)
!2712 = !DISubroutineType(types: !2713)
!2713 = !{!20, !5, !31, !23}
!2714 = !{!2715, !2716, !2717}
!2715 = !DILocalVariable(name: "s", arg: 1, scope: !2711, file: !140, line: 967, type: !5)
!2716 = !DILocalVariable(name: "arg", arg: 2, scope: !2711, file: !140, line: 967, type: !31)
!2717 = !DILocalVariable(name: "argsize", arg: 3, scope: !2711, file: !140, line: 967, type: !23)
!2718 = !DILocation(line: 187, column: 26, scope: !2624, inlinedAt: !2719)
!2719 = distinct !DILocation(line: 956, column: 36, scope: !2652, inlinedAt: !2720)
!2720 = distinct !DILocation(line: 969, column: 10, scope: !2711)
!2721 = !DILocation(line: 967, column: 40, scope: !2711)
!2722 = !DILocation(line: 967, column: 55, scope: !2711)
!2723 = !DILocation(line: 967, column: 67, scope: !2711)
!2724 = !DILocation(line: 953, column: 27, scope: !2652, inlinedAt: !2720)
!2725 = !DILocation(line: 953, column: 49, scope: !2652, inlinedAt: !2720)
!2726 = !DILocation(line: 954, column: 35, scope: !2652, inlinedAt: !2720)
!2727 = !DILocation(line: 954, column: 47, scope: !2652, inlinedAt: !2720)
!2728 = !DILocation(line: 956, column: 3, scope: !2652, inlinedAt: !2720)
!2729 = !DILocation(line: 956, column: 32, scope: !2652, inlinedAt: !2720)
!2730 = !DILocation(line: 185, column: 48, scope: !2624, inlinedAt: !2719)
!2731 = !DILocation(line: 187, column: 3, scope: !2624, inlinedAt: !2719)
!2732 = !DILocation(line: 188, column: 13, scope: !2641, inlinedAt: !2719)
!2733 = !DILocation(line: 188, column: 7, scope: !2624, inlinedAt: !2719)
!2734 = !DILocation(line: 189, column: 5, scope: !2641, inlinedAt: !2719)
!2735 = !{!2736}
!2736 = distinct !{!2736, !2737, !"quoting_options_from_style: argument 0"}
!2737 = distinct !{!2737, !"quoting_options_from_style"}
!2738 = !DILocation(line: 191, column: 10, scope: !2624, inlinedAt: !2719)
!2739 = !DILocation(line: 192, column: 1, scope: !2624, inlinedAt: !2719)
!2740 = !DILocation(line: 957, column: 10, scope: !2652, inlinedAt: !2720)
!2741 = !DILocation(line: 958, column: 1, scope: !2652, inlinedAt: !2720)
!2742 = !DILocation(line: 969, column: 3, scope: !2711)
!2743 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !140, file: !140, line: 973, type: !2744, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !112, variables: !2746)
!2744 = !DISubroutineType(types: !2745)
!2745 = !{!20, !31, !23, !21}
!2746 = !{!2747, !2748, !2749, !2750}
!2747 = !DILocalVariable(name: "arg", arg: 1, scope: !2743, file: !140, line: 973, type: !31)
!2748 = !DILocalVariable(name: "argsize", arg: 2, scope: !2743, file: !140, line: 973, type: !23)
!2749 = !DILocalVariable(name: "ch", arg: 3, scope: !2743, file: !140, line: 973, type: !21)
!2750 = !DILocalVariable(name: "options", scope: !2743, file: !140, line: 975, type: !147)
!2751 = !DILocation(line: 973, column: 32, scope: !2743)
!2752 = !DILocation(line: 973, column: 44, scope: !2743)
!2753 = !DILocation(line: 973, column: 58, scope: !2743)
!2754 = !DILocation(line: 975, column: 3, scope: !2743)
!2755 = !DILocation(line: 976, column: 13, scope: !2743)
!2756 = !{i64 0, i64 4, !765, i64 4, i64 4, !694, i64 8, i64 32, !765, i64 40, i64 8, !606, i64 48, i64 8, !606}
!2757 = !DILocation(line: 975, column: 26, scope: !2743)
!2758 = !DILocation(line: 144, column: 43, scope: !1206, inlinedAt: !2759)
!2759 = distinct !DILocation(line: 977, column: 3, scope: !2743)
!2760 = !DILocation(line: 144, column: 51, scope: !1206, inlinedAt: !2759)
!2761 = !DILocation(line: 144, column: 58, scope: !1206, inlinedAt: !2759)
!2762 = !DILocation(line: 146, column: 17, scope: !1206, inlinedAt: !2759)
!2763 = !DILocation(line: 148, column: 62, scope: !1224, inlinedAt: !2759)
!2764 = !DILocation(line: 148, column: 57, scope: !1224, inlinedAt: !2759)
!2765 = !DILocation(line: 147, column: 17, scope: !1206, inlinedAt: !2759)
!2766 = !DILocation(line: 149, column: 18, scope: !1206, inlinedAt: !2759)
!2767 = !DILocation(line: 149, column: 15, scope: !1206, inlinedAt: !2759)
!2768 = !DILocation(line: 149, column: 7, scope: !1206, inlinedAt: !2759)
!2769 = !DILocation(line: 150, column: 12, scope: !1206, inlinedAt: !2759)
!2770 = !DILocation(line: 150, column: 15, scope: !1206, inlinedAt: !2759)
!2771 = !DILocation(line: 150, column: 25, scope: !1206, inlinedAt: !2759)
!2772 = !DILocation(line: 150, column: 7, scope: !1206, inlinedAt: !2759)
!2773 = !DILocation(line: 151, column: 18, scope: !1206, inlinedAt: !2759)
!2774 = !DILocation(line: 151, column: 23, scope: !1206, inlinedAt: !2759)
!2775 = !DILocation(line: 151, column: 6, scope: !1206, inlinedAt: !2759)
!2776 = !DILocation(line: 978, column: 10, scope: !2743)
!2777 = !DILocation(line: 979, column: 1, scope: !2743)
!2778 = !DILocation(line: 978, column: 3, scope: !2743)
!2779 = distinct !DISubprogram(name: "quotearg_char", scope: !140, file: !140, line: 982, type: !2780, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !112, variables: !2782)
!2780 = !DISubroutineType(types: !2781)
!2781 = !{!20, !31, !21}
!2782 = !{!2783, !2784}
!2783 = !DILocalVariable(name: "arg", arg: 1, scope: !2779, file: !140, line: 982, type: !31)
!2784 = !DILocalVariable(name: "ch", arg: 2, scope: !2779, file: !140, line: 982, type: !21)
!2785 = !DILocation(line: 982, column: 28, scope: !2779)
!2786 = !DILocation(line: 982, column: 38, scope: !2779)
!2787 = !DILocation(line: 973, column: 32, scope: !2743, inlinedAt: !2788)
!2788 = distinct !DILocation(line: 984, column: 10, scope: !2779)
!2789 = !DILocation(line: 973, column: 44, scope: !2743, inlinedAt: !2788)
!2790 = !DILocation(line: 973, column: 58, scope: !2743, inlinedAt: !2788)
!2791 = !DILocation(line: 975, column: 3, scope: !2743, inlinedAt: !2788)
!2792 = !DILocation(line: 976, column: 13, scope: !2743, inlinedAt: !2788)
!2793 = !DILocation(line: 975, column: 26, scope: !2743, inlinedAt: !2788)
!2794 = !DILocation(line: 144, column: 43, scope: !1206, inlinedAt: !2795)
!2795 = distinct !DILocation(line: 977, column: 3, scope: !2743, inlinedAt: !2788)
!2796 = !DILocation(line: 144, column: 51, scope: !1206, inlinedAt: !2795)
!2797 = !DILocation(line: 144, column: 58, scope: !1206, inlinedAt: !2795)
!2798 = !DILocation(line: 146, column: 17, scope: !1206, inlinedAt: !2795)
!2799 = !DILocation(line: 148, column: 62, scope: !1224, inlinedAt: !2795)
!2800 = !DILocation(line: 148, column: 57, scope: !1224, inlinedAt: !2795)
!2801 = !DILocation(line: 147, column: 17, scope: !1206, inlinedAt: !2795)
!2802 = !DILocation(line: 149, column: 18, scope: !1206, inlinedAt: !2795)
!2803 = !DILocation(line: 149, column: 15, scope: !1206, inlinedAt: !2795)
!2804 = !DILocation(line: 149, column: 7, scope: !1206, inlinedAt: !2795)
!2805 = !DILocation(line: 150, column: 12, scope: !1206, inlinedAt: !2795)
!2806 = !DILocation(line: 150, column: 15, scope: !1206, inlinedAt: !2795)
!2807 = !DILocation(line: 150, column: 25, scope: !1206, inlinedAt: !2795)
!2808 = !DILocation(line: 150, column: 7, scope: !1206, inlinedAt: !2795)
!2809 = !DILocation(line: 151, column: 18, scope: !1206, inlinedAt: !2795)
!2810 = !DILocation(line: 151, column: 23, scope: !1206, inlinedAt: !2795)
!2811 = !DILocation(line: 151, column: 6, scope: !1206, inlinedAt: !2795)
!2812 = !DILocation(line: 978, column: 10, scope: !2743, inlinedAt: !2788)
!2813 = !DILocation(line: 979, column: 1, scope: !2743, inlinedAt: !2788)
!2814 = !DILocation(line: 984, column: 3, scope: !2779)
!2815 = distinct !DISubprogram(name: "quotearg_colon", scope: !140, file: !140, line: 988, type: !2591, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !112, variables: !2816)
!2816 = !{!2817}
!2817 = !DILocalVariable(name: "arg", arg: 1, scope: !2815, file: !140, line: 988, type: !31)
!2818 = !DILocation(line: 988, column: 29, scope: !2815)
!2819 = !DILocation(line: 982, column: 28, scope: !2779, inlinedAt: !2820)
!2820 = distinct !DILocation(line: 990, column: 10, scope: !2815)
!2821 = !DILocation(line: 982, column: 38, scope: !2779, inlinedAt: !2820)
!2822 = !DILocation(line: 973, column: 32, scope: !2743, inlinedAt: !2823)
!2823 = distinct !DILocation(line: 984, column: 10, scope: !2779, inlinedAt: !2820)
!2824 = !DILocation(line: 973, column: 44, scope: !2743, inlinedAt: !2823)
!2825 = !DILocation(line: 973, column: 58, scope: !2743, inlinedAt: !2823)
!2826 = !DILocation(line: 975, column: 3, scope: !2743, inlinedAt: !2823)
!2827 = !DILocation(line: 976, column: 13, scope: !2743, inlinedAt: !2823)
!2828 = !DILocation(line: 975, column: 26, scope: !2743, inlinedAt: !2823)
!2829 = !DILocation(line: 144, column: 43, scope: !1206, inlinedAt: !2830)
!2830 = distinct !DILocation(line: 977, column: 3, scope: !2743, inlinedAt: !2823)
!2831 = !DILocation(line: 144, column: 51, scope: !1206, inlinedAt: !2830)
!2832 = !DILocation(line: 144, column: 58, scope: !1206, inlinedAt: !2830)
!2833 = !DILocation(line: 146, column: 17, scope: !1206, inlinedAt: !2830)
!2834 = !DILocation(line: 148, column: 57, scope: !1224, inlinedAt: !2830)
!2835 = !DILocation(line: 147, column: 17, scope: !1206, inlinedAt: !2830)
!2836 = !DILocation(line: 149, column: 7, scope: !1206, inlinedAt: !2830)
!2837 = !DILocation(line: 150, column: 12, scope: !1206, inlinedAt: !2830)
!2838 = !DILocation(line: 151, column: 6, scope: !1206, inlinedAt: !2830)
!2839 = !DILocation(line: 978, column: 10, scope: !2743, inlinedAt: !2823)
!2840 = !DILocation(line: 979, column: 1, scope: !2743, inlinedAt: !2823)
!2841 = !DILocation(line: 990, column: 3, scope: !2815)
!2842 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !140, file: !140, line: 994, type: !2602, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !112, variables: !2843)
!2843 = !{!2844, !2845}
!2844 = !DILocalVariable(name: "arg", arg: 1, scope: !2842, file: !140, line: 994, type: !31)
!2845 = !DILocalVariable(name: "argsize", arg: 2, scope: !2842, file: !140, line: 994, type: !23)
!2846 = !DILocation(line: 994, column: 33, scope: !2842)
!2847 = !DILocation(line: 994, column: 45, scope: !2842)
!2848 = !DILocation(line: 973, column: 32, scope: !2743, inlinedAt: !2849)
!2849 = distinct !DILocation(line: 996, column: 10, scope: !2842)
!2850 = !DILocation(line: 973, column: 44, scope: !2743, inlinedAt: !2849)
!2851 = !DILocation(line: 973, column: 58, scope: !2743, inlinedAt: !2849)
!2852 = !DILocation(line: 975, column: 3, scope: !2743, inlinedAt: !2849)
!2853 = !DILocation(line: 976, column: 13, scope: !2743, inlinedAt: !2849)
!2854 = !DILocation(line: 975, column: 26, scope: !2743, inlinedAt: !2849)
!2855 = !DILocation(line: 144, column: 43, scope: !1206, inlinedAt: !2856)
!2856 = distinct !DILocation(line: 977, column: 3, scope: !2743, inlinedAt: !2849)
!2857 = !DILocation(line: 144, column: 51, scope: !1206, inlinedAt: !2856)
!2858 = !DILocation(line: 144, column: 58, scope: !1206, inlinedAt: !2856)
!2859 = !DILocation(line: 146, column: 17, scope: !1206, inlinedAt: !2856)
!2860 = !DILocation(line: 148, column: 57, scope: !1224, inlinedAt: !2856)
!2861 = !DILocation(line: 147, column: 17, scope: !1206, inlinedAt: !2856)
!2862 = !DILocation(line: 149, column: 7, scope: !1206, inlinedAt: !2856)
!2863 = !DILocation(line: 150, column: 12, scope: !1206, inlinedAt: !2856)
!2864 = !DILocation(line: 151, column: 6, scope: !1206, inlinedAt: !2856)
!2865 = !DILocation(line: 978, column: 10, scope: !2743, inlinedAt: !2849)
!2866 = !DILocation(line: 979, column: 1, scope: !2743, inlinedAt: !2849)
!2867 = !DILocation(line: 996, column: 3, scope: !2842)
!2868 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !140, file: !140, line: 1000, type: !2616, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !112, variables: !2869)
!2869 = !{!2870, !2871, !2872, !2873}
!2870 = !DILocalVariable(name: "n", arg: 1, scope: !2868, file: !140, line: 1000, type: !66)
!2871 = !DILocalVariable(name: "s", arg: 2, scope: !2868, file: !140, line: 1000, type: !5)
!2872 = !DILocalVariable(name: "arg", arg: 3, scope: !2868, file: !140, line: 1000, type: !31)
!2873 = !DILocalVariable(name: "options", scope: !2868, file: !140, line: 1002, type: !147)
!2874 = !DILocation(line: 187, column: 26, scope: !2624, inlinedAt: !2875)
!2875 = distinct !DILocation(line: 1003, column: 13, scope: !2868)
!2876 = !DILocation(line: 1000, column: 29, scope: !2868)
!2877 = !DILocation(line: 1000, column: 51, scope: !2868)
!2878 = !DILocation(line: 1000, column: 66, scope: !2868)
!2879 = !DILocation(line: 1002, column: 3, scope: !2868)
!2880 = !DILocation(line: 185, column: 48, scope: !2624, inlinedAt: !2875)
!2881 = !DILocation(line: 187, column: 3, scope: !2624, inlinedAt: !2875)
!2882 = !DILocation(line: 188, column: 13, scope: !2641, inlinedAt: !2875)
!2883 = !DILocation(line: 188, column: 7, scope: !2624, inlinedAt: !2875)
!2884 = !DILocation(line: 189, column: 5, scope: !2641, inlinedAt: !2875)
!2885 = !{!2886}
!2886 = distinct !{!2886, !2887, !"quoting_options_from_style: argument 0"}
!2887 = distinct !{!2887, !"quoting_options_from_style"}
!2888 = !DILocation(line: 191, column: 10, scope: !2624, inlinedAt: !2875)
!2889 = !DILocation(line: 192, column: 1, scope: !2624, inlinedAt: !2875)
!2890 = !DILocation(line: 1003, column: 13, scope: !2868)
!2891 = !DILocation(line: 1002, column: 26, scope: !2868)
!2892 = !DILocation(line: 144, column: 43, scope: !1206, inlinedAt: !2893)
!2893 = distinct !DILocation(line: 1004, column: 3, scope: !2868)
!2894 = !DILocation(line: 144, column: 51, scope: !1206, inlinedAt: !2893)
!2895 = !DILocation(line: 144, column: 58, scope: !1206, inlinedAt: !2893)
!2896 = !DILocation(line: 146, column: 17, scope: !1206, inlinedAt: !2893)
!2897 = !DILocation(line: 148, column: 57, scope: !1224, inlinedAt: !2893)
!2898 = !DILocation(line: 147, column: 17, scope: !1206, inlinedAt: !2893)
!2899 = !DILocation(line: 149, column: 7, scope: !1206, inlinedAt: !2893)
!2900 = !DILocation(line: 150, column: 12, scope: !1206, inlinedAt: !2893)
!2901 = !DILocation(line: 151, column: 6, scope: !1206, inlinedAt: !2893)
!2902 = !DILocation(line: 1005, column: 10, scope: !2868)
!2903 = !DILocation(line: 1006, column: 1, scope: !2868)
!2904 = !DILocation(line: 1005, column: 3, scope: !2868)
!2905 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !140, file: !140, line: 1009, type: !2906, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !112, variables: !2908)
!2906 = !DISubroutineType(types: !2907)
!2907 = !{!20, !66, !31, !31, !31}
!2908 = !{!2909, !2910, !2911, !2912}
!2909 = !DILocalVariable(name: "n", arg: 1, scope: !2905, file: !140, line: 1009, type: !66)
!2910 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2905, file: !140, line: 1009, type: !31)
!2911 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2905, file: !140, line: 1010, type: !31)
!2912 = !DILocalVariable(name: "arg", arg: 4, scope: !2905, file: !140, line: 1010, type: !31)
!2913 = !DILocation(line: 1009, column: 24, scope: !2905)
!2914 = !DILocation(line: 1009, column: 39, scope: !2905)
!2915 = !DILocation(line: 1010, column: 32, scope: !2905)
!2916 = !DILocation(line: 1010, column: 57, scope: !2905)
!2917 = !DILocalVariable(name: "n", arg: 1, scope: !2918, file: !140, line: 1017, type: !66)
!2918 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !140, file: !140, line: 1017, type: !2919, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !112, variables: !2921)
!2919 = !DISubroutineType(types: !2920)
!2920 = !{!20, !66, !31, !31, !31, !23}
!2921 = !{!2917, !2922, !2923, !2924, !2925, !2926}
!2922 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2918, file: !140, line: 1017, type: !31)
!2923 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2918, file: !140, line: 1018, type: !31)
!2924 = !DILocalVariable(name: "arg", arg: 4, scope: !2918, file: !140, line: 1019, type: !31)
!2925 = !DILocalVariable(name: "argsize", arg: 5, scope: !2918, file: !140, line: 1019, type: !23)
!2926 = !DILocalVariable(name: "o", scope: !2918, file: !140, line: 1021, type: !147)
!2927 = !DILocation(line: 1017, column: 28, scope: !2918, inlinedAt: !2928)
!2928 = distinct !DILocation(line: 1012, column: 10, scope: !2905)
!2929 = !DILocation(line: 1017, column: 43, scope: !2918, inlinedAt: !2928)
!2930 = !DILocation(line: 1018, column: 36, scope: !2918, inlinedAt: !2928)
!2931 = !DILocation(line: 1019, column: 36, scope: !2918, inlinedAt: !2928)
!2932 = !DILocation(line: 1019, column: 48, scope: !2918, inlinedAt: !2928)
!2933 = !DILocation(line: 1021, column: 3, scope: !2918, inlinedAt: !2928)
!2934 = !DILocation(line: 1021, column: 30, scope: !2918, inlinedAt: !2928)
!2935 = !DILocation(line: 1021, column: 26, scope: !2918, inlinedAt: !2928)
!2936 = !DILocation(line: 171, column: 45, scope: !1256, inlinedAt: !2937)
!2937 = distinct !DILocation(line: 1022, column: 3, scope: !2918, inlinedAt: !2928)
!2938 = !DILocation(line: 172, column: 33, scope: !1256, inlinedAt: !2937)
!2939 = !DILocation(line: 172, column: 57, scope: !1256, inlinedAt: !2937)
!2940 = !DILocation(line: 176, column: 6, scope: !1256, inlinedAt: !2937)
!2941 = !DILocation(line: 176, column: 12, scope: !1256, inlinedAt: !2937)
!2942 = !DILocation(line: 177, column: 8, scope: !1272, inlinedAt: !2937)
!2943 = !DILocation(line: 177, column: 23, scope: !1274, inlinedAt: !2937)
!2944 = !DILocation(line: 177, column: 19, scope: !1272, inlinedAt: !2937)
!2945 = !DILocation(line: 178, column: 5, scope: !1272, inlinedAt: !2937)
!2946 = !DILocation(line: 179, column: 6, scope: !1256, inlinedAt: !2937)
!2947 = !DILocation(line: 179, column: 17, scope: !1256, inlinedAt: !2937)
!2948 = !DILocation(line: 180, column: 6, scope: !1256, inlinedAt: !2937)
!2949 = !DILocation(line: 180, column: 18, scope: !1256, inlinedAt: !2937)
!2950 = !DILocation(line: 1023, column: 10, scope: !2918, inlinedAt: !2928)
!2951 = !DILocation(line: 1024, column: 1, scope: !2918, inlinedAt: !2928)
!2952 = !DILocation(line: 1012, column: 3, scope: !2905)
!2953 = !DILocation(line: 1017, column: 28, scope: !2918)
!2954 = !DILocation(line: 1017, column: 43, scope: !2918)
!2955 = !DILocation(line: 1018, column: 36, scope: !2918)
!2956 = !DILocation(line: 1019, column: 36, scope: !2918)
!2957 = !DILocation(line: 1019, column: 48, scope: !2918)
!2958 = !DILocation(line: 1021, column: 3, scope: !2918)
!2959 = !DILocation(line: 1021, column: 30, scope: !2918)
!2960 = !DILocation(line: 1021, column: 26, scope: !2918)
!2961 = !DILocation(line: 171, column: 45, scope: !1256, inlinedAt: !2962)
!2962 = distinct !DILocation(line: 1022, column: 3, scope: !2918)
!2963 = !DILocation(line: 172, column: 33, scope: !1256, inlinedAt: !2962)
!2964 = !DILocation(line: 172, column: 57, scope: !1256, inlinedAt: !2962)
!2965 = !DILocation(line: 176, column: 6, scope: !1256, inlinedAt: !2962)
!2966 = !DILocation(line: 176, column: 12, scope: !1256, inlinedAt: !2962)
!2967 = !DILocation(line: 177, column: 8, scope: !1272, inlinedAt: !2962)
!2968 = !DILocation(line: 177, column: 23, scope: !1274, inlinedAt: !2962)
!2969 = !DILocation(line: 177, column: 19, scope: !1272, inlinedAt: !2962)
!2970 = !DILocation(line: 178, column: 5, scope: !1272, inlinedAt: !2962)
!2971 = !DILocation(line: 179, column: 6, scope: !1256, inlinedAt: !2962)
!2972 = !DILocation(line: 179, column: 17, scope: !1256, inlinedAt: !2962)
!2973 = !DILocation(line: 180, column: 6, scope: !1256, inlinedAt: !2962)
!2974 = !DILocation(line: 180, column: 18, scope: !1256, inlinedAt: !2962)
!2975 = !DILocation(line: 1023, column: 10, scope: !2918)
!2976 = !DILocation(line: 1024, column: 1, scope: !2918)
!2977 = !DILocation(line: 1023, column: 3, scope: !2918)
!2978 = distinct !DISubprogram(name: "quotearg_custom", scope: !140, file: !140, line: 1027, type: !2979, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !112, variables: !2981)
!2979 = !DISubroutineType(types: !2980)
!2980 = !{!20, !31, !31, !31}
!2981 = !{!2982, !2983, !2984}
!2982 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2978, file: !140, line: 1027, type: !31)
!2983 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2978, file: !140, line: 1027, type: !31)
!2984 = !DILocalVariable(name: "arg", arg: 3, scope: !2978, file: !140, line: 1028, type: !31)
!2985 = !DILocation(line: 1027, column: 30, scope: !2978)
!2986 = !DILocation(line: 1027, column: 54, scope: !2978)
!2987 = !DILocation(line: 1028, column: 30, scope: !2978)
!2988 = !DILocation(line: 1009, column: 24, scope: !2905, inlinedAt: !2989)
!2989 = distinct !DILocation(line: 1030, column: 10, scope: !2978)
!2990 = !DILocation(line: 1009, column: 39, scope: !2905, inlinedAt: !2989)
!2991 = !DILocation(line: 1010, column: 32, scope: !2905, inlinedAt: !2989)
!2992 = !DILocation(line: 1010, column: 57, scope: !2905, inlinedAt: !2989)
!2993 = !DILocation(line: 1017, column: 28, scope: !2918, inlinedAt: !2994)
!2994 = distinct !DILocation(line: 1012, column: 10, scope: !2905, inlinedAt: !2989)
!2995 = !DILocation(line: 1017, column: 43, scope: !2918, inlinedAt: !2994)
!2996 = !DILocation(line: 1018, column: 36, scope: !2918, inlinedAt: !2994)
!2997 = !DILocation(line: 1019, column: 36, scope: !2918, inlinedAt: !2994)
!2998 = !DILocation(line: 1019, column: 48, scope: !2918, inlinedAt: !2994)
!2999 = !DILocation(line: 1021, column: 3, scope: !2918, inlinedAt: !2994)
!3000 = !DILocation(line: 1021, column: 30, scope: !2918, inlinedAt: !2994)
!3001 = !DILocation(line: 1021, column: 26, scope: !2918, inlinedAt: !2994)
!3002 = !DILocation(line: 171, column: 45, scope: !1256, inlinedAt: !3003)
!3003 = distinct !DILocation(line: 1022, column: 3, scope: !2918, inlinedAt: !2994)
!3004 = !DILocation(line: 172, column: 33, scope: !1256, inlinedAt: !3003)
!3005 = !DILocation(line: 172, column: 57, scope: !1256, inlinedAt: !3003)
!3006 = !DILocation(line: 176, column: 6, scope: !1256, inlinedAt: !3003)
!3007 = !DILocation(line: 176, column: 12, scope: !1256, inlinedAt: !3003)
!3008 = !DILocation(line: 177, column: 8, scope: !1272, inlinedAt: !3003)
!3009 = !DILocation(line: 177, column: 23, scope: !1274, inlinedAt: !3003)
!3010 = !DILocation(line: 177, column: 19, scope: !1272, inlinedAt: !3003)
!3011 = !DILocation(line: 178, column: 5, scope: !1272, inlinedAt: !3003)
!3012 = !DILocation(line: 179, column: 6, scope: !1256, inlinedAt: !3003)
!3013 = !DILocation(line: 179, column: 17, scope: !1256, inlinedAt: !3003)
!3014 = !DILocation(line: 180, column: 6, scope: !1256, inlinedAt: !3003)
!3015 = !DILocation(line: 180, column: 18, scope: !1256, inlinedAt: !3003)
!3016 = !DILocation(line: 1023, column: 10, scope: !2918, inlinedAt: !2994)
!3017 = !DILocation(line: 1024, column: 1, scope: !2918, inlinedAt: !2994)
!3018 = !DILocation(line: 1030, column: 3, scope: !2978)
!3019 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !140, file: !140, line: 1034, type: !3020, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !112, variables: !3022)
!3020 = !DISubroutineType(types: !3021)
!3021 = !{!20, !31, !31, !31, !23}
!3022 = !{!3023, !3024, !3025, !3026}
!3023 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3019, file: !140, line: 1034, type: !31)
!3024 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3019, file: !140, line: 1034, type: !31)
!3025 = !DILocalVariable(name: "arg", arg: 3, scope: !3019, file: !140, line: 1035, type: !31)
!3026 = !DILocalVariable(name: "argsize", arg: 4, scope: !3019, file: !140, line: 1035, type: !23)
!3027 = !DILocation(line: 1034, column: 34, scope: !3019)
!3028 = !DILocation(line: 1034, column: 58, scope: !3019)
!3029 = !DILocation(line: 1035, column: 34, scope: !3019)
!3030 = !DILocation(line: 1035, column: 46, scope: !3019)
!3031 = !DILocation(line: 1017, column: 28, scope: !2918, inlinedAt: !3032)
!3032 = distinct !DILocation(line: 1037, column: 10, scope: !3019)
!3033 = !DILocation(line: 1017, column: 43, scope: !2918, inlinedAt: !3032)
!3034 = !DILocation(line: 1018, column: 36, scope: !2918, inlinedAt: !3032)
!3035 = !DILocation(line: 1019, column: 36, scope: !2918, inlinedAt: !3032)
!3036 = !DILocation(line: 1019, column: 48, scope: !2918, inlinedAt: !3032)
!3037 = !DILocation(line: 1021, column: 3, scope: !2918, inlinedAt: !3032)
!3038 = !DILocation(line: 1021, column: 30, scope: !2918, inlinedAt: !3032)
!3039 = !DILocation(line: 1021, column: 26, scope: !2918, inlinedAt: !3032)
!3040 = !DILocation(line: 171, column: 45, scope: !1256, inlinedAt: !3041)
!3041 = distinct !DILocation(line: 1022, column: 3, scope: !2918, inlinedAt: !3032)
!3042 = !DILocation(line: 172, column: 33, scope: !1256, inlinedAt: !3041)
!3043 = !DILocation(line: 172, column: 57, scope: !1256, inlinedAt: !3041)
!3044 = !DILocation(line: 176, column: 6, scope: !1256, inlinedAt: !3041)
!3045 = !DILocation(line: 176, column: 12, scope: !1256, inlinedAt: !3041)
!3046 = !DILocation(line: 177, column: 8, scope: !1272, inlinedAt: !3041)
!3047 = !DILocation(line: 177, column: 23, scope: !1274, inlinedAt: !3041)
!3048 = !DILocation(line: 177, column: 19, scope: !1272, inlinedAt: !3041)
!3049 = !DILocation(line: 178, column: 5, scope: !1272, inlinedAt: !3041)
!3050 = !DILocation(line: 179, column: 6, scope: !1256, inlinedAt: !3041)
!3051 = !DILocation(line: 179, column: 17, scope: !1256, inlinedAt: !3041)
!3052 = !DILocation(line: 180, column: 6, scope: !1256, inlinedAt: !3041)
!3053 = !DILocation(line: 180, column: 18, scope: !1256, inlinedAt: !3041)
!3054 = !DILocation(line: 1023, column: 10, scope: !2918, inlinedAt: !3032)
!3055 = !DILocation(line: 1024, column: 1, scope: !2918, inlinedAt: !3032)
!3056 = !DILocation(line: 1037, column: 3, scope: !3019)
!3057 = distinct !DISubprogram(name: "quote_n_mem", scope: !140, file: !140, line: 1052, type: !3058, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !112, variables: !3060)
!3058 = !DISubroutineType(types: !3059)
!3059 = !{!31, !66, !31, !23}
!3060 = !{!3061, !3062, !3063}
!3061 = !DILocalVariable(name: "n", arg: 1, scope: !3057, file: !140, line: 1052, type: !66)
!3062 = !DILocalVariable(name: "arg", arg: 2, scope: !3057, file: !140, line: 1052, type: !31)
!3063 = !DILocalVariable(name: "argsize", arg: 3, scope: !3057, file: !140, line: 1052, type: !23)
!3064 = !DILocation(line: 1052, column: 18, scope: !3057)
!3065 = !DILocation(line: 1052, column: 33, scope: !3057)
!3066 = !DILocation(line: 1052, column: 45, scope: !3057)
!3067 = !DILocation(line: 1054, column: 10, scope: !3057)
!3068 = !DILocation(line: 1054, column: 3, scope: !3057)
!3069 = distinct !DISubprogram(name: "quote_mem", scope: !140, file: !140, line: 1058, type: !3070, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !112, variables: !3072)
!3070 = !DISubroutineType(types: !3071)
!3071 = !{!31, !31, !23}
!3072 = !{!3073, !3074}
!3073 = !DILocalVariable(name: "arg", arg: 1, scope: !3069, file: !140, line: 1058, type: !31)
!3074 = !DILocalVariable(name: "argsize", arg: 2, scope: !3069, file: !140, line: 1058, type: !23)
!3075 = !DILocation(line: 1058, column: 24, scope: !3069)
!3076 = !DILocation(line: 1058, column: 36, scope: !3069)
!3077 = !DILocation(line: 1052, column: 18, scope: !3057, inlinedAt: !3078)
!3078 = distinct !DILocation(line: 1060, column: 10, scope: !3069)
!3079 = !DILocation(line: 1052, column: 33, scope: !3057, inlinedAt: !3078)
!3080 = !DILocation(line: 1052, column: 45, scope: !3057, inlinedAt: !3078)
!3081 = !DILocation(line: 1054, column: 10, scope: !3057, inlinedAt: !3078)
!3082 = !DILocation(line: 1060, column: 3, scope: !3069)
!3083 = distinct !DISubprogram(name: "quote_n", scope: !140, file: !140, line: 1064, type: !3084, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !112, variables: !3086)
!3084 = !DISubroutineType(types: !3085)
!3085 = !{!31, !66, !31}
!3086 = !{!3087, !3088}
!3087 = !DILocalVariable(name: "n", arg: 1, scope: !3083, file: !140, line: 1064, type: !66)
!3088 = !DILocalVariable(name: "arg", arg: 2, scope: !3083, file: !140, line: 1064, type: !31)
!3089 = !DILocation(line: 1064, column: 14, scope: !3083)
!3090 = !DILocation(line: 1064, column: 29, scope: !3083)
!3091 = !DILocation(line: 1052, column: 18, scope: !3057, inlinedAt: !3092)
!3092 = distinct !DILocation(line: 1066, column: 10, scope: !3083)
!3093 = !DILocation(line: 1052, column: 33, scope: !3057, inlinedAt: !3092)
!3094 = !DILocation(line: 1052, column: 45, scope: !3057, inlinedAt: !3092)
!3095 = !DILocation(line: 1054, column: 10, scope: !3057, inlinedAt: !3092)
!3096 = !DILocation(line: 1066, column: 3, scope: !3083)
!3097 = distinct !DISubprogram(name: "quote", scope: !140, file: !140, line: 1070, type: !3098, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !112, variables: !3100)
!3098 = !DISubroutineType(types: !3099)
!3099 = !{!31, !31}
!3100 = !{!3101}
!3101 = !DILocalVariable(name: "arg", arg: 1, scope: !3097, file: !140, line: 1070, type: !31)
!3102 = !DILocation(line: 1070, column: 20, scope: !3097)
!3103 = !DILocation(line: 1064, column: 14, scope: !3083, inlinedAt: !3104)
!3104 = distinct !DILocation(line: 1072, column: 10, scope: !3097)
!3105 = !DILocation(line: 1064, column: 29, scope: !3083, inlinedAt: !3104)
!3106 = !DILocation(line: 1052, column: 18, scope: !3057, inlinedAt: !3107)
!3107 = distinct !DILocation(line: 1066, column: 10, scope: !3083, inlinedAt: !3104)
!3108 = !DILocation(line: 1052, column: 33, scope: !3057, inlinedAt: !3107)
!3109 = !DILocation(line: 1052, column: 45, scope: !3057, inlinedAt: !3107)
!3110 = !DILocation(line: 1054, column: 10, scope: !3057, inlinedAt: !3107)
!3111 = !DILocation(line: 1072, column: 3, scope: !3097)
!3112 = distinct !DISubprogram(name: "version_etc_arn", scope: !546, file: !546, line: 62, type: !3113, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !542, variables: !3156)
!3113 = !DISubroutineType(types: !3114)
!3114 = !{null, !3115, !31, !31, !31, !3155, !23}
!3115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3116, size: 64)
!3116 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !934, line: 49, baseType: !3117)
!3117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !936, line: 241, size: 1728, elements: !3118)
!3118 = !{!3119, !3120, !3121, !3122, !3123, !3124, !3125, !3126, !3127, !3128, !3129, !3130, !3131, !3139, !3140, !3141, !3142, !3143, !3144, !3145, !3146, !3147, !3148, !3149, !3150, !3151, !3152, !3153, !3154}
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3117, file: !936, line: 242, baseType: !66, size: 32)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3117, file: !936, line: 247, baseType: !20, size: 64, offset: 64)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3117, file: !936, line: 248, baseType: !20, size: 64, offset: 128)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3117, file: !936, line: 249, baseType: !20, size: 64, offset: 192)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3117, file: !936, line: 250, baseType: !20, size: 64, offset: 256)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3117, file: !936, line: 251, baseType: !20, size: 64, offset: 320)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3117, file: !936, line: 252, baseType: !20, size: 64, offset: 384)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3117, file: !936, line: 253, baseType: !20, size: 64, offset: 448)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3117, file: !936, line: 254, baseType: !20, size: 64, offset: 512)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3117, file: !936, line: 256, baseType: !20, size: 64, offset: 576)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3117, file: !936, line: 257, baseType: !20, size: 64, offset: 640)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3117, file: !936, line: 258, baseType: !20, size: 64, offset: 704)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3117, file: !936, line: 260, baseType: !3132, size: 64, offset: 768)
!3132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3133, size: 64)
!3133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !936, line: 156, size: 192, elements: !3134)
!3134 = !{!3135, !3136, !3138}
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3133, file: !936, line: 157, baseType: !3132, size: 64)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3133, file: !936, line: 158, baseType: !3137, size: 64, offset: 64)
!3137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3117, size: 64)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3133, file: !936, line: 162, baseType: !66, size: 32, offset: 128)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3117, file: !936, line: 262, baseType: !3137, size: 64, offset: 832)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3117, file: !936, line: 264, baseType: !66, size: 32, offset: 896)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3117, file: !936, line: 268, baseType: !66, size: 32, offset: 928)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3117, file: !936, line: 270, baseType: !856, size: 64, offset: 960)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3117, file: !936, line: 274, baseType: !136, size: 16, offset: 1024)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3117, file: !936, line: 275, baseType: !964, size: 8, offset: 1040)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3117, file: !936, line: 276, baseType: !966, size: 8, offset: 1048)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3117, file: !936, line: 280, baseType: !970, size: 64, offset: 1088)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3117, file: !936, line: 289, baseType: !973, size: 64, offset: 1152)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3117, file: !936, line: 297, baseType: !22, size: 64, offset: 1216)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3117, file: !936, line: 298, baseType: !22, size: 64, offset: 1280)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3117, file: !936, line: 299, baseType: !22, size: 64, offset: 1344)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3117, file: !936, line: 300, baseType: !22, size: 64, offset: 1408)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3117, file: !936, line: 302, baseType: !23, size: 64, offset: 1472)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3117, file: !936, line: 303, baseType: !66, size: 32, offset: 1536)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3117, file: !936, line: 305, baseType: !981, size: 160, offset: 1568)
!3155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!3156 = !{!3157, !3158, !3159, !3160, !3161, !3162}
!3157 = !DILocalVariable(name: "stream", arg: 1, scope: !3112, file: !546, line: 62, type: !3115)
!3158 = !DILocalVariable(name: "command_name", arg: 2, scope: !3112, file: !546, line: 63, type: !31)
!3159 = !DILocalVariable(name: "package", arg: 3, scope: !3112, file: !546, line: 63, type: !31)
!3160 = !DILocalVariable(name: "version", arg: 4, scope: !3112, file: !546, line: 64, type: !31)
!3161 = !DILocalVariable(name: "authors", arg: 5, scope: !3112, file: !546, line: 65, type: !3155)
!3162 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3112, file: !546, line: 65, type: !23)
!3163 = !DILocation(line: 62, column: 24, scope: !3112)
!3164 = !DILocation(line: 63, column: 30, scope: !3112)
!3165 = !DILocation(line: 63, column: 56, scope: !3112)
!3166 = !DILocation(line: 64, column: 30, scope: !3112)
!3167 = !DILocation(line: 65, column: 39, scope: !3112)
!3168 = !DILocation(line: 65, column: 55, scope: !3112)
!3169 = !DILocation(line: 67, column: 7, scope: !3170)
!3170 = distinct !DILexicalBlock(scope: !3112, file: !546, line: 67, column: 7)
!3171 = !DILocation(line: 67, column: 7, scope: !3112)
!3172 = !DILocation(line: 68, column: 5, scope: !3170)
!3173 = !DILocation(line: 70, column: 5, scope: !3170)
!3174 = !DILocation(line: 84, column: 3, scope: !3112)
!3175 = !DILocation(line: 84, column: 3, scope: !3176)
!3176 = !DILexicalBlockFile(scope: !3112, file: !546, discriminator: 1)
!3177 = !DILocation(line: 86, column: 3, scope: !3112)
!3178 = !DILocation(line: 86, column: 3, scope: !3176)
!3179 = !DILocation(line: 95, column: 3, scope: !3112)
!3180 = !DILocation(line: 99, column: 7, scope: !3181)
!3181 = distinct !DILexicalBlock(scope: !3112, file: !546, line: 96, column: 5)
!3182 = !DILocation(line: 102, column: 7, scope: !3181)
!3183 = !DILocation(line: 102, column: 7, scope: !3184)
!3184 = !DILexicalBlockFile(scope: !3181, file: !546, discriminator: 1)
!3185 = !DILocation(line: 103, column: 7, scope: !3181)
!3186 = !DILocation(line: 106, column: 7, scope: !3181)
!3187 = !DILocation(line: 106, column: 7, scope: !3184)
!3188 = !DILocation(line: 107, column: 7, scope: !3181)
!3189 = !DILocation(line: 110, column: 7, scope: !3181)
!3190 = !DILocation(line: 110, column: 7, scope: !3184)
!3191 = !DILocation(line: 112, column: 7, scope: !3181)
!3192 = !DILocation(line: 117, column: 7, scope: !3181)
!3193 = !DILocation(line: 117, column: 7, scope: !3184)
!3194 = !DILocation(line: 119, column: 7, scope: !3181)
!3195 = !DILocation(line: 124, column: 7, scope: !3181)
!3196 = !DILocation(line: 124, column: 7, scope: !3184)
!3197 = !DILocation(line: 126, column: 7, scope: !3181)
!3198 = !DILocation(line: 131, column: 7, scope: !3181)
!3199 = !DILocation(line: 131, column: 7, scope: !3184)
!3200 = !DILocation(line: 134, column: 7, scope: !3181)
!3201 = !DILocation(line: 139, column: 7, scope: !3181)
!3202 = !DILocation(line: 139, column: 7, scope: !3184)
!3203 = !DILocation(line: 142, column: 7, scope: !3181)
!3204 = !DILocation(line: 147, column: 7, scope: !3181)
!3205 = !DILocation(line: 147, column: 7, scope: !3184)
!3206 = !DILocation(line: 151, column: 7, scope: !3181)
!3207 = !DILocation(line: 156, column: 7, scope: !3181)
!3208 = !DILocation(line: 156, column: 7, scope: !3184)
!3209 = !DILocation(line: 160, column: 7, scope: !3181)
!3210 = !DILocation(line: 167, column: 7, scope: !3181)
!3211 = !DILocation(line: 167, column: 7, scope: !3184)
!3212 = !DILocation(line: 171, column: 7, scope: !3181)
!3213 = !DILocation(line: 173, column: 1, scope: !3112)
!3214 = distinct !DISubprogram(name: "version_etc_ar", scope: !546, file: !546, line: 180, type: !3215, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !542, variables: !3217)
!3215 = !DISubroutineType(types: !3216)
!3216 = !{null, !3115, !31, !31, !31, !3155}
!3217 = !{!3218, !3219, !3220, !3221, !3222, !3223}
!3218 = !DILocalVariable(name: "stream", arg: 1, scope: !3214, file: !546, line: 180, type: !3115)
!3219 = !DILocalVariable(name: "command_name", arg: 2, scope: !3214, file: !546, line: 181, type: !31)
!3220 = !DILocalVariable(name: "package", arg: 3, scope: !3214, file: !546, line: 181, type: !31)
!3221 = !DILocalVariable(name: "version", arg: 4, scope: !3214, file: !546, line: 182, type: !31)
!3222 = !DILocalVariable(name: "authors", arg: 5, scope: !3214, file: !546, line: 182, type: !3155)
!3223 = !DILocalVariable(name: "n_authors", scope: !3214, file: !546, line: 184, type: !23)
!3224 = !DILocation(line: 180, column: 23, scope: !3214)
!3225 = !DILocation(line: 181, column: 29, scope: !3214)
!3226 = !DILocation(line: 181, column: 55, scope: !3214)
!3227 = !DILocation(line: 182, column: 29, scope: !3214)
!3228 = !DILocation(line: 182, column: 59, scope: !3214)
!3229 = !DILocation(line: 184, column: 10, scope: !3214)
!3230 = !DILocation(line: 186, column: 8, scope: !3231)
!3231 = distinct !DILexicalBlock(scope: !3214, file: !546, line: 186, column: 3)
!3232 = !DILocation(line: 186, column: 23, scope: !3233)
!3233 = !DILexicalBlockFile(scope: !3234, file: !546, discriminator: 1)
!3234 = distinct !DILexicalBlock(scope: !3231, file: !546, line: 186, column: 3)
!3235 = !DILocation(line: 186, column: 3, scope: !3236)
!3236 = !DILexicalBlockFile(scope: !3231, file: !546, discriminator: 1)
!3237 = !DILocation(line: 186, column: 52, scope: !3238)
!3238 = !DILexicalBlockFile(scope: !3234, file: !546, discriminator: 3)
!3239 = distinct !{!3239, !3240, !3241}
!3240 = !DILocation(line: 186, column: 3, scope: !3231)
!3241 = !DILocation(line: 187, column: 5, scope: !3231)
!3242 = !DILocation(line: 188, column: 3, scope: !3214)
!3243 = !DILocation(line: 189, column: 1, scope: !3214)
!3244 = distinct !DISubprogram(name: "version_etc_va", scope: !546, file: !546, line: 196, type: !3245, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !542, variables: !3254)
!3245 = !DISubroutineType(types: !3246)
!3246 = !{null, !3115, !31, !31, !31, !3247}
!3247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3248, size: 64)
!3248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !543, line: 189, size: 192, elements: !3249)
!3249 = !{!3250, !3251, !3252, !3253}
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3248, file: !543, line: 189, baseType: !153, size: 32)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3248, file: !543, line: 189, baseType: !153, size: 32, offset: 32)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3248, file: !543, line: 189, baseType: !22, size: 64, offset: 64)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3248, file: !543, line: 189, baseType: !22, size: 64, offset: 128)
!3254 = !{!3255, !3256, !3257, !3258, !3259, !3260, !3261}
!3255 = !DILocalVariable(name: "stream", arg: 1, scope: !3244, file: !546, line: 196, type: !3115)
!3256 = !DILocalVariable(name: "command_name", arg: 2, scope: !3244, file: !546, line: 197, type: !31)
!3257 = !DILocalVariable(name: "package", arg: 3, scope: !3244, file: !546, line: 197, type: !31)
!3258 = !DILocalVariable(name: "version", arg: 4, scope: !3244, file: !546, line: 198, type: !31)
!3259 = !DILocalVariable(name: "authors", arg: 5, scope: !3244, file: !546, line: 198, type: !3247)
!3260 = !DILocalVariable(name: "n_authors", scope: !3244, file: !546, line: 200, type: !23)
!3261 = !DILocalVariable(name: "authtab", scope: !3244, file: !546, line: 201, type: !3262)
!3262 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 640, elements: !143)
!3263 = !DILocation(line: 196, column: 23, scope: !3244)
!3264 = !DILocation(line: 197, column: 29, scope: !3244)
!3265 = !DILocation(line: 197, column: 55, scope: !3244)
!3266 = !DILocation(line: 198, column: 29, scope: !3244)
!3267 = !DILocation(line: 198, column: 46, scope: !3244)
!3268 = !DILocation(line: 201, column: 3, scope: !3244)
!3269 = !DILocation(line: 201, column: 15, scope: !3244)
!3270 = !DILocation(line: 200, column: 10, scope: !3244)
!3271 = !DILocation(line: 205, column: 35, scope: !3272)
!3272 = !DILexicalBlockFile(scope: !3273, file: !546, discriminator: 1)
!3273 = distinct !DILexicalBlock(scope: !3274, file: !546, line: 203, column: 3)
!3274 = distinct !DILexicalBlock(scope: !3244, file: !546, line: 203, column: 3)
!3275 = !DILocation(line: 205, column: 35, scope: !3276)
!3276 = !DILexicalBlockFile(scope: !3273, file: !546, discriminator: 2)
!3277 = !DILocation(line: 205, column: 35, scope: !3278)
!3278 = !DILexicalBlockFile(scope: !3273, file: !546, discriminator: 3)
!3279 = !DILocation(line: 205, column: 35, scope: !3280)
!3280 = !DILexicalBlockFile(scope: !3273, file: !546, discriminator: 4)
!3281 = !DILocation(line: 205, column: 14, scope: !3280)
!3282 = !DILocation(line: 205, column: 33, scope: !3280)
!3283 = !DILocation(line: 205, column: 67, scope: !3280)
!3284 = !DILocation(line: 203, column: 3, scope: !3285)
!3285 = !DILexicalBlockFile(scope: !3274, file: !546, discriminator: 1)
!3286 = !DILocation(line: 208, column: 3, scope: !3244)
!3287 = !DILocation(line: 210, column: 1, scope: !3244)
!3288 = distinct !DISubprogram(name: "version_etc", scope: !546, file: !546, line: 227, type: !3289, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !542, variables: !3291)
!3289 = !DISubroutineType(types: !3290)
!3290 = !{null, !3115, !31, !31, !31, null}
!3291 = !{!3292, !3293, !3294, !3295, !3296}
!3292 = !DILocalVariable(name: "stream", arg: 1, scope: !3288, file: !546, line: 227, type: !3115)
!3293 = !DILocalVariable(name: "command_name", arg: 2, scope: !3288, file: !546, line: 228, type: !31)
!3294 = !DILocalVariable(name: "package", arg: 3, scope: !3288, file: !546, line: 228, type: !31)
!3295 = !DILocalVariable(name: "version", arg: 4, scope: !3288, file: !546, line: 229, type: !31)
!3296 = !DILocalVariable(name: "authors", scope: !3288, file: !546, line: 231, type: !3297)
!3297 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !934, line: 80, baseType: !3298)
!3298 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !990, line: 50, baseType: !3299)
!3299 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !543, line: 231, baseType: !3300)
!3300 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3248, size: 192, elements: !967)
!3301 = !DILocation(line: 227, column: 20, scope: !3288)
!3302 = !DILocation(line: 228, column: 26, scope: !3288)
!3303 = !DILocation(line: 228, column: 52, scope: !3288)
!3304 = !DILocation(line: 229, column: 26, scope: !3288)
!3305 = !DILocation(line: 231, column: 3, scope: !3288)
!3306 = !DILocation(line: 231, column: 11, scope: !3288)
!3307 = !DILocation(line: 233, column: 3, scope: !3288)
!3308 = !DILocation(line: 234, column: 3, scope: !3288)
!3309 = !DILocation(line: 235, column: 3, scope: !3288)
!3310 = !DILocation(line: 236, column: 1, scope: !3288)
!3311 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !546, file: !546, line: 239, type: !1061, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !542, variables: !86)
!3312 = !DILocation(line: 245, column: 3, scope: !3311)
!3313 = !DILocation(line: 245, column: 3, scope: !3314)
!3314 = !DILexicalBlockFile(scope: !3311, file: !546, discriminator: 1)
!3315 = !DILocation(line: 251, column: 3, scope: !3311)
!3316 = !DILocation(line: 251, column: 3, scope: !3314)
!3317 = !DILocation(line: 256, column: 3, scope: !3311)
!3318 = !DILocation(line: 256, column: 3, scope: !3314)
!3319 = !DILocation(line: 258, column: 1, scope: !3311)
!3320 = distinct !DISubprogram(name: "xnmalloc", scope: !554, file: !554, line: 105, type: !3321, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !550, variables: !3323)
!3321 = !DISubroutineType(types: !3322)
!3322 = !{!22, !23, !23}
!3323 = !{!3324, !3325}
!3324 = !DILocalVariable(name: "n", arg: 1, scope: !3320, file: !554, line: 105, type: !23)
!3325 = !DILocalVariable(name: "s", arg: 2, scope: !3320, file: !554, line: 105, type: !23)
!3326 = !DILocation(line: 105, column: 18, scope: !3320)
!3327 = !DILocation(line: 105, column: 28, scope: !3320)
!3328 = !DILocation(line: 107, column: 7, scope: !3329)
!3329 = distinct !DILexicalBlock(scope: !3320, file: !554, line: 107, column: 7)
!3330 = !DILocation(line: 107, column: 7, scope: !3320)
!3331 = !DILocation(line: 108, column: 5, scope: !3329)
!3332 = !DILocation(line: 109, column: 21, scope: !3320)
!3333 = !DILocalVariable(name: "n", arg: 1, scope: !3334, file: !3335, line: 39, type: !23)
!3334 = distinct !DISubprogram(name: "xmalloc", scope: !3335, file: !3335, line: 39, type: !3336, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !550, variables: !3338)
!3335 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3336 = !DISubroutineType(types: !3337)
!3337 = !{!22, !23}
!3338 = !{!3333, !3339}
!3339 = !DILocalVariable(name: "p", scope: !3334, file: !3335, line: 41, type: !22)
!3340 = !DILocation(line: 39, column: 17, scope: !3334, inlinedAt: !3341)
!3341 = distinct !DILocation(line: 109, column: 10, scope: !3320)
!3342 = !DILocation(line: 41, column: 13, scope: !3334, inlinedAt: !3341)
!3343 = !DILocation(line: 41, column: 9, scope: !3334, inlinedAt: !3341)
!3344 = !DILocation(line: 42, column: 8, scope: !3345, inlinedAt: !3341)
!3345 = distinct !DILexicalBlock(scope: !3334, file: !3335, line: 42, column: 7)
!3346 = !DILocation(line: 42, column: 15, scope: !3347, inlinedAt: !3341)
!3347 = !DILexicalBlockFile(scope: !3345, file: !3335, discriminator: 1)
!3348 = !DILocation(line: 42, column: 10, scope: !3345, inlinedAt: !3341)
!3349 = !DILocation(line: 43, column: 5, scope: !3345, inlinedAt: !3341)
!3350 = !DILocation(line: 109, column: 3, scope: !3320)
!3351 = !DILocation(line: 39, column: 17, scope: !3334)
!3352 = !DILocation(line: 41, column: 13, scope: !3334)
!3353 = !DILocation(line: 41, column: 9, scope: !3334)
!3354 = !DILocation(line: 42, column: 8, scope: !3345)
!3355 = !DILocation(line: 42, column: 15, scope: !3347)
!3356 = !DILocation(line: 42, column: 10, scope: !3345)
!3357 = !DILocation(line: 43, column: 5, scope: !3345)
!3358 = !DILocation(line: 44, column: 3, scope: !3334)
!3359 = distinct !DISubprogram(name: "xnrealloc", scope: !554, file: !554, line: 118, type: !3360, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !550, variables: !3362)
!3360 = !DISubroutineType(types: !3361)
!3361 = !{!22, !22, !23, !23}
!3362 = !{!3363, !3364, !3365}
!3363 = !DILocalVariable(name: "p", arg: 1, scope: !3359, file: !554, line: 118, type: !22)
!3364 = !DILocalVariable(name: "n", arg: 2, scope: !3359, file: !554, line: 118, type: !23)
!3365 = !DILocalVariable(name: "s", arg: 3, scope: !3359, file: !554, line: 118, type: !23)
!3366 = !DILocation(line: 118, column: 18, scope: !3359)
!3367 = !DILocation(line: 118, column: 28, scope: !3359)
!3368 = !DILocation(line: 118, column: 38, scope: !3359)
!3369 = !DILocation(line: 120, column: 7, scope: !3370)
!3370 = distinct !DILexicalBlock(scope: !3359, file: !554, line: 120, column: 7)
!3371 = !DILocation(line: 120, column: 7, scope: !3359)
!3372 = !DILocation(line: 121, column: 5, scope: !3370)
!3373 = !DILocation(line: 122, column: 25, scope: !3359)
!3374 = !DILocalVariable(name: "p", arg: 1, scope: !3375, file: !3335, line: 51, type: !22)
!3375 = distinct !DISubprogram(name: "xrealloc", scope: !3335, file: !3335, line: 51, type: !3376, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !550, variables: !3378)
!3376 = !DISubroutineType(types: !3377)
!3377 = !{!22, !22, !23}
!3378 = !{!3374, !3379}
!3379 = !DILocalVariable(name: "n", arg: 2, scope: !3375, file: !3335, line: 51, type: !23)
!3380 = !DILocation(line: 51, column: 17, scope: !3375, inlinedAt: !3381)
!3381 = distinct !DILocation(line: 122, column: 10, scope: !3359)
!3382 = !DILocation(line: 51, column: 27, scope: !3375, inlinedAt: !3381)
!3383 = !DILocation(line: 53, column: 8, scope: !3384, inlinedAt: !3381)
!3384 = distinct !DILexicalBlock(scope: !3375, file: !3335, line: 53, column: 7)
!3385 = !DILocation(line: 53, column: 13, scope: !3386, inlinedAt: !3381)
!3386 = !DILexicalBlockFile(scope: !3384, file: !3335, discriminator: 1)
!3387 = !DILocation(line: 53, column: 10, scope: !3384, inlinedAt: !3381)
!3388 = !DILocation(line: 57, column: 7, scope: !3389, inlinedAt: !3381)
!3389 = distinct !DILexicalBlock(scope: !3384, file: !3335, line: 54, column: 5)
!3390 = !DILocation(line: 58, column: 7, scope: !3389, inlinedAt: !3381)
!3391 = !DILocation(line: 61, column: 7, scope: !3375, inlinedAt: !3381)
!3392 = !DILocation(line: 62, column: 8, scope: !3393, inlinedAt: !3381)
!3393 = distinct !DILexicalBlock(scope: !3375, file: !3335, line: 62, column: 7)
!3394 = !DILocation(line: 62, column: 13, scope: !3395, inlinedAt: !3381)
!3395 = !DILexicalBlockFile(scope: !3393, file: !3335, discriminator: 1)
!3396 = !DILocation(line: 62, column: 10, scope: !3393, inlinedAt: !3381)
!3397 = !DILocation(line: 63, column: 5, scope: !3393, inlinedAt: !3381)
!3398 = !DILocation(line: 122, column: 3, scope: !3359)
!3399 = !DILocation(line: 51, column: 17, scope: !3375)
!3400 = !DILocation(line: 51, column: 27, scope: !3375)
!3401 = !DILocation(line: 53, column: 8, scope: !3384)
!3402 = !DILocation(line: 53, column: 13, scope: !3386)
!3403 = !DILocation(line: 53, column: 10, scope: !3384)
!3404 = !DILocation(line: 57, column: 7, scope: !3389)
!3405 = !DILocation(line: 58, column: 7, scope: !3389)
!3406 = !DILocation(line: 61, column: 7, scope: !3375)
!3407 = !DILocation(line: 62, column: 8, scope: !3393)
!3408 = !DILocation(line: 62, column: 13, scope: !3395)
!3409 = !DILocation(line: 62, column: 10, scope: !3393)
!3410 = !DILocation(line: 63, column: 5, scope: !3393)
!3411 = !DILocation(line: 65, column: 1, scope: !3375)
!3412 = !DILocation(line: 180, column: 19, scope: !555)
!3413 = !DILocation(line: 180, column: 30, scope: !555)
!3414 = !DILocation(line: 180, column: 41, scope: !555)
!3415 = !DILocation(line: 182, column: 14, scope: !555)
!3416 = !DILocation(line: 182, column: 10, scope: !555)
!3417 = !DILocation(line: 184, column: 9, scope: !3418)
!3418 = distinct !DILexicalBlock(scope: !555, file: !554, line: 184, column: 7)
!3419 = !DILocation(line: 184, column: 7, scope: !555)
!3420 = !DILocation(line: 186, column: 13, scope: !3421)
!3421 = distinct !DILexicalBlock(scope: !3422, file: !554, line: 186, column: 11)
!3422 = distinct !DILexicalBlock(scope: !3418, file: !554, line: 185, column: 5)
!3423 = !DILocation(line: 186, column: 11, scope: !3422)
!3424 = !DILocation(line: 194, column: 30, scope: !3425)
!3425 = distinct !DILexicalBlock(scope: !3421, file: !554, line: 187, column: 9)
!3426 = !DILocation(line: 195, column: 16, scope: !3425)
!3427 = !DILocation(line: 195, column: 13, scope: !3425)
!3428 = !DILocation(line: 196, column: 9, scope: !3425)
!3429 = !DILocation(line: 204, column: 69, scope: !3430)
!3430 = distinct !DILexicalBlock(scope: !3431, file: !554, line: 204, column: 11)
!3431 = distinct !DILexicalBlock(scope: !3418, file: !554, line: 199, column: 5)
!3432 = !DILocation(line: 205, column: 11, scope: !3430)
!3433 = !DILocation(line: 204, column: 11, scope: !3431)
!3434 = !DILocation(line: 206, column: 9, scope: !3430)
!3435 = !DILocation(line: 210, column: 7, scope: !555)
!3436 = !DILocation(line: 211, column: 25, scope: !555)
!3437 = !DILocation(line: 51, column: 17, scope: !3375, inlinedAt: !3438)
!3438 = distinct !DILocation(line: 211, column: 10, scope: !555)
!3439 = !DILocation(line: 51, column: 27, scope: !3375, inlinedAt: !3438)
!3440 = !DILocation(line: 53, column: 10, scope: !3384, inlinedAt: !3438)
!3441 = !DILocation(line: 207, column: 14, scope: !3431)
!3442 = !DILocation(line: 207, column: 18, scope: !3431)
!3443 = !DILocation(line: 207, column: 9, scope: !3431)
!3444 = !DILocation(line: 53, column: 8, scope: !3384, inlinedAt: !3438)
!3445 = !DILocation(line: 57, column: 7, scope: !3389, inlinedAt: !3438)
!3446 = !DILocation(line: 58, column: 7, scope: !3389, inlinedAt: !3438)
!3447 = !DILocation(line: 61, column: 7, scope: !3375, inlinedAt: !3438)
!3448 = !DILocation(line: 62, column: 8, scope: !3393, inlinedAt: !3438)
!3449 = !DILocation(line: 62, column: 13, scope: !3395, inlinedAt: !3438)
!3450 = !DILocation(line: 62, column: 10, scope: !3393, inlinedAt: !3438)
!3451 = !DILocation(line: 63, column: 5, scope: !3393, inlinedAt: !3438)
!3452 = !DILocation(line: 211, column: 3, scope: !555)
!3453 = distinct !DISubprogram(name: "xcharalloc", scope: !554, file: !554, line: 220, type: !2385, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !550, variables: !3454)
!3454 = !{!3455}
!3455 = !DILocalVariable(name: "n", arg: 1, scope: !3453, file: !554, line: 220, type: !23)
!3456 = !DILocation(line: 220, column: 20, scope: !3453)
!3457 = !DILocation(line: 39, column: 17, scope: !3334, inlinedAt: !3458)
!3458 = distinct !DILocation(line: 222, column: 10, scope: !3453)
!3459 = !DILocation(line: 41, column: 13, scope: !3334, inlinedAt: !3458)
!3460 = !DILocation(line: 41, column: 9, scope: !3334, inlinedAt: !3458)
!3461 = !DILocation(line: 42, column: 8, scope: !3345, inlinedAt: !3458)
!3462 = !DILocation(line: 42, column: 15, scope: !3347, inlinedAt: !3458)
!3463 = !DILocation(line: 42, column: 10, scope: !3345, inlinedAt: !3458)
!3464 = !DILocation(line: 43, column: 5, scope: !3345, inlinedAt: !3458)
!3465 = !DILocation(line: 222, column: 3, scope: !3453)
!3466 = distinct !DISubprogram(name: "x2realloc", scope: !3335, file: !3335, line: 74, type: !3467, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !550, variables: !3469)
!3467 = !DISubroutineType(types: !3468)
!3468 = !{!22, !22, !558}
!3469 = !{!3470, !3471}
!3470 = !DILocalVariable(name: "p", arg: 1, scope: !3466, file: !3335, line: 74, type: !22)
!3471 = !DILocalVariable(name: "pn", arg: 2, scope: !3466, file: !3335, line: 74, type: !558)
!3472 = !DILocation(line: 74, column: 18, scope: !3466)
!3473 = !DILocation(line: 74, column: 29, scope: !3466)
!3474 = !DILocation(line: 180, column: 19, scope: !555, inlinedAt: !3475)
!3475 = distinct !DILocation(line: 76, column: 10, scope: !3466)
!3476 = !DILocation(line: 180, column: 30, scope: !555, inlinedAt: !3475)
!3477 = !DILocation(line: 180, column: 41, scope: !555, inlinedAt: !3475)
!3478 = !DILocation(line: 182, column: 14, scope: !555, inlinedAt: !3475)
!3479 = !DILocation(line: 182, column: 10, scope: !555, inlinedAt: !3475)
!3480 = !DILocation(line: 184, column: 9, scope: !3418, inlinedAt: !3475)
!3481 = !DILocation(line: 184, column: 7, scope: !555, inlinedAt: !3475)
!3482 = !DILocation(line: 186, column: 13, scope: !3421, inlinedAt: !3475)
!3483 = !DILocation(line: 186, column: 11, scope: !3422, inlinedAt: !3475)
!3484 = !DILocation(line: 210, column: 7, scope: !555, inlinedAt: !3475)
!3485 = !DILocation(line: 51, column: 17, scope: !3375, inlinedAt: !3486)
!3486 = distinct !DILocation(line: 211, column: 10, scope: !555, inlinedAt: !3475)
!3487 = !DILocation(line: 51, column: 27, scope: !3375, inlinedAt: !3486)
!3488 = !DILocation(line: 53, column: 10, scope: !3384, inlinedAt: !3486)
!3489 = !DILocation(line: 205, column: 11, scope: !3430, inlinedAt: !3475)
!3490 = !DILocation(line: 204, column: 11, scope: !3431, inlinedAt: !3475)
!3491 = !DILocation(line: 206, column: 9, scope: !3430, inlinedAt: !3475)
!3492 = !DILocation(line: 207, column: 14, scope: !3431, inlinedAt: !3475)
!3493 = !DILocation(line: 207, column: 18, scope: !3431, inlinedAt: !3475)
!3494 = !DILocation(line: 207, column: 9, scope: !3431, inlinedAt: !3475)
!3495 = !DILocation(line: 53, column: 8, scope: !3384, inlinedAt: !3486)
!3496 = !DILocation(line: 57, column: 7, scope: !3389, inlinedAt: !3486)
!3497 = !DILocation(line: 58, column: 7, scope: !3389, inlinedAt: !3486)
!3498 = !DILocation(line: 61, column: 7, scope: !3375, inlinedAt: !3486)
!3499 = !DILocation(line: 62, column: 8, scope: !3393, inlinedAt: !3486)
!3500 = !DILocation(line: 62, column: 13, scope: !3395, inlinedAt: !3486)
!3501 = !DILocation(line: 62, column: 10, scope: !3393, inlinedAt: !3486)
!3502 = !DILocation(line: 63, column: 5, scope: !3393, inlinedAt: !3486)
!3503 = !DILocation(line: 76, column: 3, scope: !3466)
!3504 = distinct !DISubprogram(name: "xzalloc", scope: !3335, file: !3335, line: 84, type: !3336, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !550, variables: !3505)
!3505 = !{!3506}
!3506 = !DILocalVariable(name: "s", arg: 1, scope: !3504, file: !3335, line: 84, type: !23)
!3507 = !DILocation(line: 84, column: 17, scope: !3504)
!3508 = !DILocation(line: 39, column: 17, scope: !3334, inlinedAt: !3509)
!3509 = distinct !DILocation(line: 86, column: 18, scope: !3504)
!3510 = !DILocation(line: 41, column: 13, scope: !3334, inlinedAt: !3509)
!3511 = !DILocation(line: 41, column: 9, scope: !3334, inlinedAt: !3509)
!3512 = !DILocation(line: 42, column: 8, scope: !3345, inlinedAt: !3509)
!3513 = !DILocation(line: 42, column: 15, scope: !3347, inlinedAt: !3509)
!3514 = !DILocation(line: 42, column: 10, scope: !3345, inlinedAt: !3509)
!3515 = !DILocation(line: 43, column: 5, scope: !3345, inlinedAt: !3509)
!3516 = !DILocation(line: 86, column: 10, scope: !3504)
!3517 = !DILocation(line: 86, column: 3, scope: !3504)
!3518 = distinct !DISubprogram(name: "xcalloc", scope: !3335, file: !3335, line: 93, type: !3321, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !550, variables: !3519)
!3519 = !{!3520, !3521, !3522}
!3520 = !DILocalVariable(name: "n", arg: 1, scope: !3518, file: !3335, line: 93, type: !23)
!3521 = !DILocalVariable(name: "s", arg: 2, scope: !3518, file: !3335, line: 93, type: !23)
!3522 = !DILocalVariable(name: "p", scope: !3518, file: !3335, line: 95, type: !22)
!3523 = !DILocation(line: 93, column: 17, scope: !3518)
!3524 = !DILocation(line: 93, column: 27, scope: !3518)
!3525 = !DILocation(line: 100, column: 7, scope: !3526)
!3526 = distinct !DILexicalBlock(scope: !3518, file: !3335, line: 100, column: 7)
!3527 = !DILocation(line: 101, column: 7, scope: !3526)
!3528 = !DILocation(line: 101, column: 18, scope: !3529)
!3529 = !DILexicalBlockFile(scope: !3526, file: !3335, discriminator: 1)
!3530 = !DILocation(line: 95, column: 9, scope: !3518)
!3531 = !DILocation(line: 101, column: 16, scope: !3529)
!3532 = !DILocation(line: 100, column: 7, scope: !3533)
!3533 = !DILexicalBlockFile(scope: !3518, file: !3335, discriminator: 1)
!3534 = !DILocation(line: 102, column: 5, scope: !3526)
!3535 = !DILocation(line: 103, column: 3, scope: !3518)
!3536 = distinct !DISubprogram(name: "xmemdup", scope: !3335, file: !3335, line: 111, type: !3537, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !550, variables: !3539)
!3537 = !DISubroutineType(types: !3538)
!3538 = !{!22, !26, !23}
!3539 = !{!3540, !3541}
!3540 = !DILocalVariable(name: "p", arg: 1, scope: !3536, file: !3335, line: 111, type: !26)
!3541 = !DILocalVariable(name: "s", arg: 2, scope: !3536, file: !3335, line: 111, type: !23)
!3542 = !DILocation(line: 111, column: 22, scope: !3536)
!3543 = !DILocation(line: 111, column: 32, scope: !3536)
!3544 = !DILocation(line: 39, column: 17, scope: !3334, inlinedAt: !3545)
!3545 = distinct !DILocation(line: 113, column: 18, scope: !3536)
!3546 = !DILocation(line: 41, column: 13, scope: !3334, inlinedAt: !3545)
!3547 = !DILocation(line: 41, column: 9, scope: !3334, inlinedAt: !3545)
!3548 = !DILocation(line: 42, column: 8, scope: !3345, inlinedAt: !3545)
!3549 = !DILocation(line: 42, column: 15, scope: !3347, inlinedAt: !3545)
!3550 = !DILocation(line: 42, column: 10, scope: !3345, inlinedAt: !3545)
!3551 = !DILocation(line: 43, column: 5, scope: !3345, inlinedAt: !3545)
!3552 = !DILocation(line: 113, column: 10, scope: !3536)
!3553 = !DILocation(line: 113, column: 3, scope: !3536)
!3554 = distinct !DISubprogram(name: "xstrdup", scope: !3335, file: !3335, line: 119, type: !2591, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !550, variables: !3555)
!3555 = !{!3556}
!3556 = !DILocalVariable(name: "string", arg: 1, scope: !3554, file: !3335, line: 119, type: !31)
!3557 = !DILocation(line: 119, column: 22, scope: !3554)
!3558 = !DILocation(line: 121, column: 27, scope: !3554)
!3559 = !DILocation(line: 121, column: 43, scope: !3554)
!3560 = !DILocation(line: 111, column: 22, scope: !3536, inlinedAt: !3561)
!3561 = distinct !DILocation(line: 121, column: 10, scope: !3562)
!3562 = !DILexicalBlockFile(scope: !3554, file: !3335, discriminator: 1)
!3563 = !DILocation(line: 111, column: 32, scope: !3536, inlinedAt: !3561)
!3564 = !DILocation(line: 39, column: 17, scope: !3334, inlinedAt: !3565)
!3565 = distinct !DILocation(line: 113, column: 18, scope: !3536, inlinedAt: !3561)
!3566 = !DILocation(line: 41, column: 13, scope: !3334, inlinedAt: !3565)
!3567 = !DILocation(line: 41, column: 9, scope: !3334, inlinedAt: !3565)
!3568 = !DILocation(line: 42, column: 8, scope: !3345, inlinedAt: !3565)
!3569 = !DILocation(line: 42, column: 15, scope: !3347, inlinedAt: !3565)
!3570 = !DILocation(line: 42, column: 10, scope: !3345, inlinedAt: !3565)
!3571 = !DILocation(line: 43, column: 5, scope: !3345, inlinedAt: !3565)
!3572 = !DILocation(line: 113, column: 10, scope: !3536, inlinedAt: !3561)
!3573 = !DILocation(line: 121, column: 3, scope: !3554)
!3574 = distinct !DISubprogram(name: "xalloc_die", scope: !3575, file: !3575, line: 32, type: !1061, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !567, variables: !86)
!3575 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3576 = !DILocation(line: 34, column: 10, scope: !3574)
!3577 = !DILocation(line: 34, column: 33, scope: !3574)
!3578 = !DILocation(line: 34, column: 3, scope: !3579)
!3579 = !DILexicalBlockFile(scope: !3574, file: !3575, discriminator: 1)
!3580 = !DILocation(line: 40, column: 3, scope: !3574)
!3581 = distinct !DISubprogram(name: "rpl_calloc", scope: !3582, file: !3582, line: 42, type: !3321, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !569, variables: !3583)
!3582 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3583 = !{!3584, !3585, !3586, !3587}
!3584 = !DILocalVariable(name: "n", arg: 1, scope: !3581, file: !3582, line: 42, type: !23)
!3585 = !DILocalVariable(name: "s", arg: 2, scope: !3581, file: !3582, line: 42, type: !23)
!3586 = !DILocalVariable(name: "result", scope: !3581, file: !3582, line: 44, type: !22)
!3587 = !DILocalVariable(name: "bytes", scope: !3588, file: !3582, line: 56, type: !23)
!3588 = distinct !DILexicalBlock(scope: !3589, file: !3582, line: 53, column: 5)
!3589 = distinct !DILexicalBlock(scope: !3581, file: !3582, line: 47, column: 7)
!3590 = !DILocation(line: 42, column: 20, scope: !3581)
!3591 = !DILocation(line: 42, column: 30, scope: !3581)
!3592 = !DILocation(line: 47, column: 9, scope: !3589)
!3593 = !DILocation(line: 47, column: 19, scope: !3594)
!3594 = !DILexicalBlockFile(scope: !3589, file: !3582, discriminator: 1)
!3595 = !DILocation(line: 47, column: 14, scope: !3589)
!3596 = !DILocation(line: 56, column: 24, scope: !3588)
!3597 = !DILocation(line: 56, column: 14, scope: !3588)
!3598 = !DILocation(line: 57, column: 17, scope: !3599)
!3599 = distinct !DILexicalBlock(scope: !3588, file: !3582, line: 57, column: 11)
!3600 = !DILocation(line: 57, column: 21, scope: !3599)
!3601 = !DILocation(line: 57, column: 11, scope: !3588)
!3602 = !DILocation(line: 59, column: 11, scope: !3603)
!3603 = distinct !DILexicalBlock(scope: !3599, file: !3582, line: 58, column: 9)
!3604 = !DILocation(line: 59, column: 17, scope: !3603)
!3605 = !DILocation(line: 65, column: 12, scope: !3581)
!3606 = !DILocation(line: 44, column: 9, scope: !3581)
!3607 = !DILocation(line: 72, column: 3, scope: !3581)
!3608 = !DILocation(line: 73, column: 1, scope: !3581)
!3609 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !3610, file: !3610, line: 334, type: !3611, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !571, variables: !3625)
!3610 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3611 = !DISubroutineType(types: !3612)
!3612 = !{!23, !3613, !31, !23, !3614}
!3613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1371, size: 64)
!3614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3615, size: 64)
!3615 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1356, line: 107, baseType: !3616)
!3616 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1356, line: 95, baseType: !3617)
!3617 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1356, line: 83, size: 64, elements: !3618)
!3618 = !{!3619, !3620}
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3617, file: !1356, line: 85, baseType: !66, size: 32)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3617, file: !1356, line: 94, baseType: !3621, size: 32, offset: 32)
!3621 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3617, file: !1356, line: 86, size: 32, elements: !3622)
!3622 = !{!3623, !3624}
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3621, file: !1356, line: 89, baseType: !153, size: 32)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3621, file: !1356, line: 93, baseType: !1366, size: 32)
!3625 = !{!3626, !3627, !3628, !3629, !3630, !3631, !3632}
!3626 = !DILocalVariable(name: "pwc", arg: 1, scope: !3609, file: !3610, line: 334, type: !3613)
!3627 = !DILocalVariable(name: "s", arg: 2, scope: !3609, file: !3610, line: 334, type: !31)
!3628 = !DILocalVariable(name: "n", arg: 3, scope: !3609, file: !3610, line: 334, type: !23)
!3629 = !DILocalVariable(name: "ps", arg: 4, scope: !3609, file: !3610, line: 334, type: !3614)
!3630 = !DILocalVariable(name: "ret", scope: !3609, file: !3610, line: 336, type: !23)
!3631 = !DILocalVariable(name: "wc", scope: !3609, file: !3610, line: 337, type: !1371)
!3632 = !DILocalVariable(name: "uc", scope: !3633, file: !3610, line: 398, type: !30)
!3633 = distinct !DILexicalBlock(scope: !3634, file: !3610, line: 397, column: 5)
!3634 = distinct !DILexicalBlock(scope: !3609, file: !3610, line: 396, column: 7)
!3635 = !DILocation(line: 334, column: 23, scope: !3609)
!3636 = !DILocation(line: 334, column: 40, scope: !3609)
!3637 = !DILocation(line: 334, column: 50, scope: !3609)
!3638 = !DILocation(line: 334, column: 64, scope: !3609)
!3639 = !DILocation(line: 337, column: 3, scope: !3609)
!3640 = !DILocation(line: 353, column: 9, scope: !3641)
!3641 = distinct !DILexicalBlock(scope: !3609, file: !3610, line: 353, column: 7)
!3642 = !DILocation(line: 353, column: 7, scope: !3609)
!3643 = !DILocation(line: 388, column: 9, scope: !3609)
!3644 = !DILocation(line: 336, column: 10, scope: !3609)
!3645 = !DILocation(line: 396, column: 19, scope: !3634)
!3646 = !DILocation(line: 396, column: 31, scope: !3647)
!3647 = !DILexicalBlockFile(scope: !3634, file: !3610, discriminator: 1)
!3648 = !DILocation(line: 396, column: 26, scope: !3634)
!3649 = !DILocation(line: 396, column: 41, scope: !3650)
!3650 = !DILexicalBlockFile(scope: !3634, file: !3610, discriminator: 2)
!3651 = !DILocation(line: 396, column: 7, scope: !3652)
!3652 = !DILexicalBlockFile(scope: !3609, file: !3610, discriminator: 2)
!3653 = !DILocation(line: 398, column: 26, scope: !3633)
!3654 = !DILocation(line: 398, column: 21, scope: !3633)
!3655 = !DILocation(line: 399, column: 14, scope: !3633)
!3656 = !DILocation(line: 399, column: 12, scope: !3633)
!3657 = !DILocation(line: 405, column: 1, scope: !3609)
!3658 = distinct !DISubprogram(name: "close_stream", scope: !3659, file: !3659, line: 56, type: !3660, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !574, variables: !3702)
!3659 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3660 = !DISubroutineType(types: !3661)
!3661 = !{!66, !3662}
!3662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3663, size: 64)
!3663 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !934, line: 49, baseType: !3664)
!3664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !936, line: 241, size: 1728, elements: !3665)
!3665 = !{!3666, !3667, !3668, !3669, !3670, !3671, !3672, !3673, !3674, !3675, !3676, !3677, !3678, !3686, !3687, !3688, !3689, !3690, !3691, !3692, !3693, !3694, !3695, !3696, !3697, !3698, !3699, !3700, !3701}
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3664, file: !936, line: 242, baseType: !66, size: 32)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3664, file: !936, line: 247, baseType: !20, size: 64, offset: 64)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3664, file: !936, line: 248, baseType: !20, size: 64, offset: 128)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3664, file: !936, line: 249, baseType: !20, size: 64, offset: 192)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3664, file: !936, line: 250, baseType: !20, size: 64, offset: 256)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3664, file: !936, line: 251, baseType: !20, size: 64, offset: 320)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3664, file: !936, line: 252, baseType: !20, size: 64, offset: 384)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3664, file: !936, line: 253, baseType: !20, size: 64, offset: 448)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3664, file: !936, line: 254, baseType: !20, size: 64, offset: 512)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3664, file: !936, line: 256, baseType: !20, size: 64, offset: 576)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3664, file: !936, line: 257, baseType: !20, size: 64, offset: 640)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3664, file: !936, line: 258, baseType: !20, size: 64, offset: 704)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3664, file: !936, line: 260, baseType: !3679, size: 64, offset: 768)
!3679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3680, size: 64)
!3680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !936, line: 156, size: 192, elements: !3681)
!3681 = !{!3682, !3683, !3685}
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3680, file: !936, line: 157, baseType: !3679, size: 64)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3680, file: !936, line: 158, baseType: !3684, size: 64, offset: 64)
!3684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3664, size: 64)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3680, file: !936, line: 162, baseType: !66, size: 32, offset: 128)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3664, file: !936, line: 262, baseType: !3684, size: 64, offset: 832)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3664, file: !936, line: 264, baseType: !66, size: 32, offset: 896)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3664, file: !936, line: 268, baseType: !66, size: 32, offset: 928)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3664, file: !936, line: 270, baseType: !856, size: 64, offset: 960)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3664, file: !936, line: 274, baseType: !136, size: 16, offset: 1024)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3664, file: !936, line: 275, baseType: !964, size: 8, offset: 1040)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3664, file: !936, line: 276, baseType: !966, size: 8, offset: 1048)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3664, file: !936, line: 280, baseType: !970, size: 64, offset: 1088)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3664, file: !936, line: 289, baseType: !973, size: 64, offset: 1152)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3664, file: !936, line: 297, baseType: !22, size: 64, offset: 1216)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3664, file: !936, line: 298, baseType: !22, size: 64, offset: 1280)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3664, file: !936, line: 299, baseType: !22, size: 64, offset: 1344)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3664, file: !936, line: 300, baseType: !22, size: 64, offset: 1408)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3664, file: !936, line: 302, baseType: !23, size: 64, offset: 1472)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3664, file: !936, line: 303, baseType: !66, size: 32, offset: 1536)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3664, file: !936, line: 305, baseType: !981, size: 160, offset: 1568)
!3702 = !{!3703, !3704, !3706, !3707}
!3703 = !DILocalVariable(name: "stream", arg: 1, scope: !3658, file: !3659, line: 56, type: !3662)
!3704 = !DILocalVariable(name: "some_pending", scope: !3658, file: !3659, line: 58, type: !3705)
!3705 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !36)
!3706 = !DILocalVariable(name: "prev_fail", scope: !3658, file: !3659, line: 59, type: !3705)
!3707 = !DILocalVariable(name: "fclose_fail", scope: !3658, file: !3659, line: 60, type: !3705)
!3708 = !DILocation(line: 56, column: 21, scope: !3658)
!3709 = !DILocation(line: 58, column: 30, scope: !3658)
!3710 = !DILocalVariable(name: "__stream", arg: 1, scope: !3711, file: !1025, line: 132, type: !3662)
!3711 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1025, file: !1025, line: 132, type: !3660, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !574, variables: !3712)
!3712 = !{!3710}
!3713 = !DILocation(line: 132, column: 1, scope: !3711, inlinedAt: !3714)
!3714 = distinct !DILocation(line: 59, column: 27, scope: !3658)
!3715 = !DILocation(line: 134, column: 10, scope: !3711, inlinedAt: !3714)
!3716 = !{!1035, !695, i64 0}
!3717 = !DILocation(line: 59, column: 43, scope: !3658)
!3718 = !DILocation(line: 60, column: 29, scope: !3658)
!3719 = !DILocation(line: 60, column: 45, scope: !3658)
!3720 = !DILocation(line: 70, column: 17, scope: !3721)
!3721 = distinct !DILexicalBlock(scope: !3658, file: !3659, line: 70, column: 7)
!3722 = !DILocation(line: 70, column: 33, scope: !3723)
!3723 = !DILexicalBlockFile(scope: !3721, file: !3659, discriminator: 1)
!3724 = !DILocation(line: 70, column: 53, scope: !3725)
!3725 = !DILexicalBlockFile(scope: !3721, file: !3659, discriminator: 3)
!3726 = !DILocation(line: 70, column: 7, scope: !3727)
!3727 = !DILexicalBlockFile(scope: !3658, file: !3659, discriminator: 3)
!3728 = !DILocation(line: 72, column: 11, scope: !3729)
!3729 = distinct !DILexicalBlock(scope: !3721, file: !3659, line: 71, column: 5)
!3730 = !DILocation(line: 73, column: 9, scope: !3731)
!3731 = distinct !DILexicalBlock(scope: !3729, file: !3659, line: 72, column: 11)
!3732 = !DILocation(line: 73, column: 15, scope: !3731)
!3733 = !DILocation(line: 78, column: 1, scope: !3658)
!3734 = distinct !DISubprogram(name: "last_component", scope: !3735, file: !3735, line: 30, type: !2591, isLocal: false, isDefinition: true, scopeLine: 31, flags: DIFlagPrototyped, isOptimized: true, unit: !576, variables: !3736)
!3735 = !DIFile(filename: "lib/basename-lgpl.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3736 = !{!3737, !3738, !3739, !3740}
!3737 = !DILocalVariable(name: "name", arg: 1, scope: !3734, file: !3735, line: 30, type: !31)
!3738 = !DILocalVariable(name: "base", scope: !3734, file: !3735, line: 32, type: !31)
!3739 = !DILocalVariable(name: "p", scope: !3734, file: !3735, line: 33, type: !31)
!3740 = !DILocalVariable(name: "saw_slash", scope: !3734, file: !3735, line: 34, type: !36)
!3741 = !DILocation(line: 30, column: 29, scope: !3734)
!3742 = !DILocation(line: 32, column: 15, scope: !3734)
!3743 = !DILocation(line: 34, column: 8, scope: !3734)
!3744 = !DILocation(line: 36, column: 3, scope: !3734)
!3745 = !DILocation(line: 36, column: 10, scope: !3746)
!3746 = !DILexicalBlockFile(scope: !3734, file: !3735, discriminator: 1)
!3747 = !DILocation(line: 37, column: 9, scope: !3734)
!3748 = !DILocation(line: 36, column: 3, scope: !3746)
!3749 = distinct !{!3749, !3744, !3747}
!3750 = !DILocation(line: 39, column: 18, scope: !3751)
!3751 = !DILexicalBlockFile(scope: !3752, file: !3735, discriminator: 1)
!3752 = distinct !DILexicalBlock(scope: !3753, file: !3735, line: 39, column: 3)
!3753 = distinct !DILexicalBlock(scope: !3734, file: !3735, line: 39, column: 3)
!3754 = !DILocation(line: 33, column: 15, scope: !3734)
!3755 = !DILocation(line: 39, column: 3, scope: !3756)
!3756 = !DILexicalBlockFile(scope: !3753, file: !3735, discriminator: 1)
!3757 = !DILocation(line: 43, column: 16, scope: !3758)
!3758 = distinct !DILexicalBlock(scope: !3759, file: !3735, line: 43, column: 16)
!3759 = distinct !DILexicalBlock(scope: !3760, file: !3735, line: 41, column: 11)
!3760 = distinct !DILexicalBlock(scope: !3752, file: !3735, line: 40, column: 5)
!3761 = !DILocation(line: 43, column: 16, scope: !3759)
!3762 = !DILocation(line: 39, column: 23, scope: !3763)
!3763 = !DILexicalBlockFile(scope: !3752, file: !3735, discriminator: 2)
!3764 = !DILocation(line: 39, column: 3, scope: !3763)
!3765 = distinct !{!3765, !3766, !3767}
!3766 = !DILocation(line: 39, column: 3, scope: !3753)
!3767 = !DILocation(line: 48, column: 5, scope: !3753)
!3768 = !DILocation(line: 50, column: 3, scope: !3734)
!3769 = distinct !DISubprogram(name: "base_len", scope: !3735, file: !3735, line: 58, type: !3770, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, unit: !576, variables: !3772)
!3770 = !DISubroutineType(types: !3771)
!3771 = !{!23, !31}
!3772 = !{!3773, !3774, !3775}
!3773 = !DILocalVariable(name: "name", arg: 1, scope: !3769, file: !3735, line: 58, type: !31)
!3774 = !DILocalVariable(name: "len", scope: !3769, file: !3735, line: 60, type: !23)
!3775 = !DILocalVariable(name: "prefix_len", scope: !3769, file: !3735, line: 61, type: !23)
!3776 = !DILocation(line: 58, column: 23, scope: !3769)
!3777 = !DILocation(line: 61, column: 10, scope: !3769)
!3778 = !DILocation(line: 63, column: 14, scope: !3779)
!3779 = distinct !DILexicalBlock(scope: !3769, file: !3735, line: 63, column: 3)
!3780 = !DILocation(line: 60, column: 10, scope: !3769)
!3781 = !DILocation(line: 63, column: 8, scope: !3779)
!3782 = !DILocation(line: 63, column: 32, scope: !3783)
!3783 = !DILexicalBlockFile(scope: !3784, file: !3735, discriminator: 1)
!3784 = distinct !DILexicalBlock(scope: !3779, file: !3735, line: 63, column: 3)
!3785 = !DILocation(line: 63, column: 38, scope: !3783)
!3786 = !DILocation(line: 63, column: 41, scope: !3787)
!3787 = !DILexicalBlockFile(scope: !3784, file: !3735, discriminator: 2)
!3788 = !DILocation(line: 63, column: 3, scope: !3789)
!3789 = !DILexicalBlockFile(scope: !3779, file: !3735, discriminator: 3)
!3790 = distinct !{!3790, !3791, !3792}
!3791 = !DILocation(line: 63, column: 3, scope: !3779)
!3792 = !DILocation(line: 64, column: 5, scope: !3779)
!3793 = !DILocation(line: 74, column: 3, scope: !3769)
!3794 = distinct !DISubprogram(name: "hard_locale", scope: !3795, file: !3795, line: 38, type: !829, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !579, variables: !3796)
!3795 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3796 = !{!3797, !3798, !3799, !3800, !3807, !3808, !3810, !3811, !3813, !3814, !3816}
!3797 = !DILocalVariable(name: "category", arg: 1, scope: !3794, file: !3795, line: 38, type: !66)
!3798 = !DILocalVariable(name: "hard", scope: !3794, file: !3795, line: 40, type: !36)
!3799 = !DILocalVariable(name: "p", scope: !3794, file: !3795, line: 41, type: !31)
!3800 = !DILocalVariable(name: "__s1_len", scope: !3801, file: !3795, line: 47, type: !23)
!3801 = distinct !DILexicalBlock(scope: !3802, file: !3795, line: 47, column: 15)
!3802 = distinct !DILexicalBlock(scope: !3803, file: !3795, line: 47, column: 15)
!3803 = distinct !DILexicalBlock(scope: !3804, file: !3795, line: 46, column: 9)
!3804 = distinct !DILexicalBlock(scope: !3805, file: !3795, line: 45, column: 11)
!3805 = distinct !DILexicalBlock(scope: !3806, file: !3795, line: 44, column: 5)
!3806 = distinct !DILexicalBlock(scope: !3794, file: !3795, line: 43, column: 7)
!3807 = !DILocalVariable(name: "__s2_len", scope: !3801, file: !3795, line: 47, type: !23)
!3808 = !DILocalVariable(name: "__s2", scope: !3809, file: !3795, line: 47, type: !28)
!3809 = distinct !DILexicalBlock(scope: !3801, file: !3795, line: 47, column: 15)
!3810 = !DILocalVariable(name: "__result", scope: !3809, file: !3795, line: 47, type: !66)
!3811 = !DILocalVariable(name: "__s1_len", scope: !3812, file: !3795, line: 47, type: !23)
!3812 = distinct !DILexicalBlock(scope: !3802, file: !3795, line: 47, column: 39)
!3813 = !DILocalVariable(name: "__s2_len", scope: !3812, file: !3795, line: 47, type: !23)
!3814 = !DILocalVariable(name: "__s2", scope: !3815, file: !3795, line: 47, type: !28)
!3815 = distinct !DILexicalBlock(scope: !3812, file: !3795, line: 47, column: 39)
!3816 = !DILocalVariable(name: "__result", scope: !3815, file: !3795, line: 47, type: !66)
!3817 = !DILocation(line: 38, column: 18, scope: !3794)
!3818 = !DILocation(line: 40, column: 8, scope: !3794)
!3819 = !DILocation(line: 41, column: 19, scope: !3794)
!3820 = !DILocation(line: 41, column: 15, scope: !3794)
!3821 = !DILocation(line: 43, column: 7, scope: !3806)
!3822 = !DILocation(line: 43, column: 7, scope: !3794)
!3823 = !DILocation(line: 47, column: 15, scope: !3801)
!3824 = !DILocation(line: 47, column: 15, scope: !3809)
!3825 = !DILocation(line: 47, column: 15, scope: !3826)
!3826 = !DILexicalBlockFile(scope: !3809, file: !3795, discriminator: 2)
!3827 = !DILocation(line: 47, column: 15, scope: !3828)
!3828 = !DILexicalBlockFile(scope: !3829, file: !3795, discriminator: 3)
!3829 = distinct !DILexicalBlock(scope: !3809, file: !3795, line: 47, column: 15)
!3830 = !DILocation(line: 47, column: 15, scope: !3831)
!3831 = !DILexicalBlockFile(scope: !3829, file: !3795, discriminator: 2)
!3832 = !DILocation(line: 47, column: 15, scope: !3833)
!3833 = !DILexicalBlockFile(scope: !3834, file: !3795, discriminator: 4)
!3834 = distinct !DILexicalBlock(scope: !3829, file: !3795, line: 47, column: 15)
!3835 = !DILocation(line: 47, column: 15, scope: !3836)
!3836 = !DILexicalBlockFile(scope: !3801, file: !3795, discriminator: 11)
!3837 = !DILocation(line: 47, column: 36, scope: !3838)
!3838 = !DILexicalBlockFile(scope: !3802, file: !3795, discriminator: 13)
!3839 = !DILocation(line: 47, column: 39, scope: !3812)
!3840 = !DILocation(line: 47, column: 39, scope: !3841)
!3841 = !DILexicalBlockFile(scope: !3812, file: !3795, discriminator: 26)
!3842 = !DILocation(line: 47, column: 59, scope: !3843)
!3843 = !DILexicalBlockFile(scope: !3802, file: !3795, discriminator: 27)
!3844 = !DILocation(line: 47, column: 15, scope: !3845)
!3845 = !DILexicalBlockFile(scope: !3803, file: !3795, discriminator: 27)
!3846 = !DILocation(line: 48, column: 13, scope: !3802)
!3847 = !DILocation(line: 71, column: 3, scope: !3794)
!3848 = distinct !DISubprogram(name: "locale_charset", scope: !535, file: !535, line: 393, type: !3849, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !191, variables: !3851)
!3849 = !DISubroutineType(types: !3850)
!3850 = !{!31}
!3851 = !{!3852, !3853, !3854, !3859}
!3852 = !DILocalVariable(name: "codeset", scope: !3848, file: !535, line: 395, type: !31)
!3853 = !DILocalVariable(name: "aliases", scope: !3848, file: !535, line: 396, type: !31)
!3854 = !DILocalVariable(name: "__s1_len", scope: !3855, file: !535, line: 592, type: !23)
!3855 = distinct !DILexicalBlock(scope: !3856, file: !535, line: 592, column: 9)
!3856 = distinct !DILexicalBlock(scope: !3857, file: !535, line: 592, column: 9)
!3857 = distinct !DILexicalBlock(scope: !3858, file: !535, line: 589, column: 3)
!3858 = distinct !DILexicalBlock(scope: !3848, file: !535, line: 589, column: 3)
!3859 = !DILocalVariable(name: "__s2_len", scope: !3855, file: !535, line: 592, type: !23)
!3860 = !DILocalVariable(name: "buf1", scope: !3861, file: !535, line: 196, type: !3928)
!3861 = distinct !DILexicalBlock(scope: !3862, file: !535, line: 194, column: 21)
!3862 = distinct !DILexicalBlock(scope: !3863, file: !535, line: 193, column: 19)
!3863 = distinct !DILexicalBlock(scope: !3864, file: !535, line: 193, column: 19)
!3864 = distinct !DILexicalBlock(scope: !3865, file: !535, line: 188, column: 17)
!3865 = distinct !DILexicalBlock(scope: !3866, file: !535, line: 181, column: 19)
!3866 = distinct !DILexicalBlock(scope: !3867, file: !535, line: 177, column: 13)
!3867 = distinct !DILexicalBlock(scope: !3868, file: !535, line: 173, column: 15)
!3868 = distinct !DILexicalBlock(scope: !3869, file: !535, line: 161, column: 9)
!3869 = distinct !DILexicalBlock(scope: !3870, file: !535, line: 157, column: 11)
!3870 = distinct !DILexicalBlock(scope: !3871, file: !535, line: 130, column: 5)
!3871 = distinct !DILexicalBlock(scope: !3872, file: !535, line: 129, column: 7)
!3872 = distinct !DISubprogram(name: "get_charset_aliases", scope: !535, file: !535, line: 124, type: !3849, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !191, variables: !3873)
!3873 = !{!3874, !3875, !3876, !3877, !3878, !3880, !3881, !3882, !3883, !3924, !3925, !3926, !3860, !3927, !3931, !3932, !3933}
!3874 = !DILocalVariable(name: "cp", scope: !3872, file: !535, line: 126, type: !31)
!3875 = !DILocalVariable(name: "dir", scope: !3870, file: !535, line: 132, type: !31)
!3876 = !DILocalVariable(name: "base", scope: !3870, file: !535, line: 133, type: !31)
!3877 = !DILocalVariable(name: "file_name", scope: !3870, file: !535, line: 134, type: !20)
!3878 = !DILocalVariable(name: "dir_len", scope: !3879, file: !535, line: 144, type: !23)
!3879 = distinct !DILexicalBlock(scope: !3870, file: !535, line: 143, column: 7)
!3880 = !DILocalVariable(name: "base_len", scope: !3879, file: !535, line: 145, type: !23)
!3881 = !DILocalVariable(name: "add_slash", scope: !3879, file: !535, line: 146, type: !66)
!3882 = !DILocalVariable(name: "fd", scope: !3868, file: !535, line: 162, type: !66)
!3883 = !DILocalVariable(name: "fp", scope: !3866, file: !535, line: 178, type: !3884)
!3884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3885, size: 64)
!3885 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !934, line: 49, baseType: !3886)
!3886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !936, line: 241, size: 1728, elements: !3887)
!3887 = !{!3888, !3889, !3890, !3891, !3892, !3893, !3894, !3895, !3896, !3897, !3898, !3899, !3900, !3908, !3909, !3910, !3911, !3912, !3913, !3914, !3915, !3916, !3917, !3918, !3919, !3920, !3921, !3922, !3923}
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3886, file: !936, line: 242, baseType: !66, size: 32)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3886, file: !936, line: 247, baseType: !20, size: 64, offset: 64)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3886, file: !936, line: 248, baseType: !20, size: 64, offset: 128)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3886, file: !936, line: 249, baseType: !20, size: 64, offset: 192)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3886, file: !936, line: 250, baseType: !20, size: 64, offset: 256)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3886, file: !936, line: 251, baseType: !20, size: 64, offset: 320)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3886, file: !936, line: 252, baseType: !20, size: 64, offset: 384)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3886, file: !936, line: 253, baseType: !20, size: 64, offset: 448)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3886, file: !936, line: 254, baseType: !20, size: 64, offset: 512)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3886, file: !936, line: 256, baseType: !20, size: 64, offset: 576)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3886, file: !936, line: 257, baseType: !20, size: 64, offset: 640)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3886, file: !936, line: 258, baseType: !20, size: 64, offset: 704)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3886, file: !936, line: 260, baseType: !3901, size: 64, offset: 768)
!3901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3902, size: 64)
!3902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !936, line: 156, size: 192, elements: !3903)
!3903 = !{!3904, !3905, !3907}
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3902, file: !936, line: 157, baseType: !3901, size: 64)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3902, file: !936, line: 158, baseType: !3906, size: 64, offset: 64)
!3906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3886, size: 64)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3902, file: !936, line: 162, baseType: !66, size: 32, offset: 128)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3886, file: !936, line: 262, baseType: !3906, size: 64, offset: 832)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3886, file: !936, line: 264, baseType: !66, size: 32, offset: 896)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3886, file: !936, line: 268, baseType: !66, size: 32, offset: 928)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3886, file: !936, line: 270, baseType: !856, size: 64, offset: 960)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3886, file: !936, line: 274, baseType: !136, size: 16, offset: 1024)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3886, file: !936, line: 275, baseType: !964, size: 8, offset: 1040)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3886, file: !936, line: 276, baseType: !966, size: 8, offset: 1048)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3886, file: !936, line: 280, baseType: !970, size: 64, offset: 1088)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3886, file: !936, line: 289, baseType: !973, size: 64, offset: 1152)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3886, file: !936, line: 297, baseType: !22, size: 64, offset: 1216)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3886, file: !936, line: 298, baseType: !22, size: 64, offset: 1280)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3886, file: !936, line: 299, baseType: !22, size: 64, offset: 1344)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3886, file: !936, line: 300, baseType: !22, size: 64, offset: 1408)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3886, file: !936, line: 302, baseType: !23, size: 64, offset: 1472)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3886, file: !936, line: 303, baseType: !66, size: 32, offset: 1536)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3886, file: !936, line: 305, baseType: !981, size: 160, offset: 1568)
!3924 = !DILocalVariable(name: "res_ptr", scope: !3864, file: !535, line: 190, type: !20)
!3925 = !DILocalVariable(name: "res_size", scope: !3864, file: !535, line: 191, type: !23)
!3926 = !DILocalVariable(name: "c", scope: !3861, file: !535, line: 195, type: !66)
!3927 = !DILocalVariable(name: "buf2", scope: !3861, file: !535, line: 197, type: !3928)
!3928 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 408, elements: !3929)
!3929 = !{!3930}
!3930 = !DISubrange(count: 51)
!3931 = !DILocalVariable(name: "l1", scope: !3861, file: !535, line: 198, type: !23)
!3932 = !DILocalVariable(name: "l2", scope: !3861, file: !535, line: 198, type: !23)
!3933 = !DILocalVariable(name: "old_res_ptr", scope: !3861, file: !535, line: 199, type: !20)
!3934 = !DILocation(line: 196, column: 28, scope: !3861, inlinedAt: !3935)
!3935 = distinct !DILocation(line: 589, column: 18, scope: !3858)
!3936 = !DILocation(line: 197, column: 28, scope: !3861, inlinedAt: !3935)
!3937 = !DILocation(line: 403, column: 13, scope: !3848)
!3938 = !DILocation(line: 395, column: 15, scope: !3848)
!3939 = !DILocation(line: 584, column: 15, scope: !3940)
!3940 = distinct !DILexicalBlock(scope: !3848, file: !535, line: 584, column: 7)
!3941 = !DILocation(line: 584, column: 7, scope: !3848)
!3942 = !DILocation(line: 128, column: 8, scope: !3872, inlinedAt: !3935)
!3943 = !DILocation(line: 126, column: 15, scope: !3872, inlinedAt: !3935)
!3944 = !DILocation(line: 129, column: 10, scope: !3871, inlinedAt: !3935)
!3945 = !DILocation(line: 129, column: 7, scope: !3872, inlinedAt: !3935)
!3946 = !DILocation(line: 138, column: 13, scope: !3870, inlinedAt: !3935)
!3947 = !DILocation(line: 132, column: 19, scope: !3870, inlinedAt: !3935)
!3948 = !DILocation(line: 139, column: 15, scope: !3949, inlinedAt: !3935)
!3949 = distinct !DILexicalBlock(scope: !3870, file: !535, line: 139, column: 11)
!3950 = !DILocation(line: 139, column: 23, scope: !3949, inlinedAt: !3935)
!3951 = !DILocation(line: 139, column: 26, scope: !3952, inlinedAt: !3935)
!3952 = !DILexicalBlockFile(scope: !3949, file: !535, discriminator: 1)
!3953 = !DILocation(line: 139, column: 33, scope: !3952, inlinedAt: !3935)
!3954 = !DILocation(line: 139, column: 11, scope: !3955, inlinedAt: !3935)
!3955 = !DILexicalBlockFile(scope: !3870, file: !535, discriminator: 1)
!3956 = !DILocation(line: 140, column: 9, scope: !3949, inlinedAt: !3935)
!3957 = !DILocation(line: 144, column: 26, scope: !3879, inlinedAt: !3935)
!3958 = !DILocation(line: 144, column: 16, scope: !3879, inlinedAt: !3935)
!3959 = !DILocation(line: 145, column: 16, scope: !3879, inlinedAt: !3935)
!3960 = !DILocation(line: 146, column: 34, scope: !3879, inlinedAt: !3935)
!3961 = !DILocation(line: 146, column: 38, scope: !3879, inlinedAt: !3935)
!3962 = !DILocation(line: 146, column: 42, scope: !3963, inlinedAt: !3935)
!3963 = !DILexicalBlockFile(scope: !3879, file: !535, discriminator: 1)
!3964 = !DILocation(line: 146, column: 41, scope: !3963, inlinedAt: !3935)
!3965 = !DILocation(line: 147, column: 48, scope: !3879, inlinedAt: !3935)
!3966 = !DILocation(line: 147, column: 46, scope: !3879, inlinedAt: !3935)
!3967 = !DILocation(line: 147, column: 69, scope: !3879, inlinedAt: !3935)
!3968 = !DILocation(line: 147, column: 30, scope: !3879, inlinedAt: !3935)
!3969 = !DILocation(line: 134, column: 13, scope: !3870, inlinedAt: !3935)
!3970 = !DILocation(line: 148, column: 13, scope: !3879, inlinedAt: !3935)
!3971 = !DILocation(line: 150, column: 13, scope: !3972, inlinedAt: !3935)
!3972 = distinct !DILexicalBlock(scope: !3973, file: !535, line: 149, column: 11)
!3973 = distinct !DILexicalBlock(scope: !3879, file: !535, line: 148, column: 13)
!3974 = !DILocation(line: 151, column: 17, scope: !3972, inlinedAt: !3935)
!3975 = !DILocation(line: 152, column: 34, scope: !3976, inlinedAt: !3935)
!3976 = distinct !DILexicalBlock(scope: !3972, file: !535, line: 151, column: 17)
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
!3990 = distinct !DILexicalBlock(scope: !3865, file: !535, line: 182, column: 17)
!3991 = !DILocation(line: 186, column: 17, scope: !3990, inlinedAt: !3935)
!3992 = !DILocation(line: 191, column: 26, scope: !3864, inlinedAt: !3935)
!3993 = !DILocation(line: 196, column: 23, scope: !3861, inlinedAt: !3935)
!3994 = !DILocation(line: 197, column: 23, scope: !3861, inlinedAt: !3935)
!3995 = !DILocalVariable(name: "__fp", arg: 1, scope: !3996, file: !1025, line: 63, type: !3884)
!3996 = distinct !DISubprogram(name: "getc_unlocked", scope: !1025, file: !1025, line: 63, type: !3997, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !191, variables: !3999)
!3997 = !DISubroutineType(types: !3998)
!3998 = !{!66, !3884}
!3999 = !{!3995}
!4000 = !DILocation(line: 63, column: 22, scope: !3996, inlinedAt: !4001)
!4001 = distinct !DILocation(line: 201, column: 27, scope: !3861, inlinedAt: !3935)
!4002 = !DILocation(line: 65, column: 10, scope: !3996, inlinedAt: !4001)
!4003 = !{!1035, !607, i64 8}
!4004 = !{!1035, !607, i64 16}
!4005 = !DILocation(line: 65, column: 10, scope: !4006, inlinedAt: !4001)
!4006 = !DILexicalBlockFile(scope: !3996, file: !1025, discriminator: 1)
!4007 = !DILocation(line: 65, column: 10, scope: !4008, inlinedAt: !4001)
!4008 = !DILexicalBlockFile(scope: !3996, file: !1025, discriminator: 2)
!4009 = !DILocation(line: 65, column: 10, scope: !4010, inlinedAt: !4001)
!4010 = !DILexicalBlockFile(scope: !3996, file: !1025, discriminator: 3)
!4011 = !DILocation(line: 195, column: 27, scope: !3861, inlinedAt: !3935)
!4012 = !DILocation(line: 202, column: 27, scope: !3861, inlinedAt: !3935)
!4013 = !DILocation(line: 63, column: 22, scope: !3996, inlinedAt: !4014)
!4014 = distinct !DILocation(line: 210, column: 33, scope: !4015, inlinedAt: !3935)
!4015 = distinct !DILexicalBlock(scope: !4016, file: !535, line: 207, column: 25)
!4016 = distinct !DILexicalBlock(scope: !3861, file: !535, line: 206, column: 27)
!4017 = !DILocation(line: 65, column: 10, scope: !3996, inlinedAt: !4014)
!4018 = !DILocation(line: 65, column: 10, scope: !4006, inlinedAt: !4014)
!4019 = !DILocation(line: 65, column: 10, scope: !4008, inlinedAt: !4014)
!4020 = !DILocation(line: 65, column: 10, scope: !4010, inlinedAt: !4014)
!4021 = !DILocation(line: 210, column: 29, scope: !4022, inlinedAt: !3935)
!4022 = !DILexicalBlockFile(scope: !4015, file: !535, discriminator: 1)
!4023 = distinct !{!4023, !4024, !4025}
!4024 = !DILocation(line: 193, column: 19, scope: !3863)
!4025 = !DILocation(line: 241, column: 21, scope: !3863)
!4026 = !DILocation(line: 216, column: 23, scope: !3861, inlinedAt: !3935)
!4027 = !DILocation(line: 217, column: 27, scope: !4028, inlinedAt: !3935)
!4028 = distinct !DILexicalBlock(scope: !3861, file: !535, line: 217, column: 27)
!4029 = !DILocation(line: 217, column: 64, scope: !4028, inlinedAt: !3935)
!4030 = !DILocation(line: 217, column: 27, scope: !3861, inlinedAt: !3935)
!4031 = !DILocation(line: 219, column: 28, scope: !3861, inlinedAt: !3935)
!4032 = !DILocation(line: 198, column: 30, scope: !3861, inlinedAt: !3935)
!4033 = !DILocation(line: 220, column: 28, scope: !3861, inlinedAt: !3935)
!4034 = !DILocation(line: 198, column: 34, scope: !3861, inlinedAt: !3935)
!4035 = !DILocation(line: 199, column: 29, scope: !3861, inlinedAt: !3935)
!4036 = !DILocation(line: 222, column: 36, scope: !4037, inlinedAt: !3935)
!4037 = distinct !DILexicalBlock(scope: !3861, file: !535, line: 222, column: 27)
!4038 = !DILocation(line: 222, column: 27, scope: !3861, inlinedAt: !3935)
!4039 = !DILocation(line: 225, column: 63, scope: !4040, inlinedAt: !3935)
!4040 = distinct !DILexicalBlock(scope: !4037, file: !535, line: 223, column: 25)
!4041 = !DILocation(line: 225, column: 46, scope: !4040, inlinedAt: !3935)
!4042 = !DILocation(line: 226, column: 25, scope: !4040, inlinedAt: !3935)
!4043 = !DILocation(line: 229, column: 36, scope: !4044, inlinedAt: !3935)
!4044 = distinct !DILexicalBlock(scope: !4037, file: !535, line: 228, column: 25)
!4045 = !DILocation(line: 230, column: 73, scope: !4044, inlinedAt: !3935)
!4046 = !DILocation(line: 230, column: 46, scope: !4044, inlinedAt: !3935)
!4047 = !DILocation(line: 232, column: 35, scope: !4048, inlinedAt: !3935)
!4048 = distinct !DILexicalBlock(scope: !3861, file: !535, line: 232, column: 27)
!4049 = !DILocation(line: 232, column: 27, scope: !3861, inlinedAt: !3935)
!4050 = !DILocation(line: 236, column: 27, scope: !4051, inlinedAt: !3935)
!4051 = distinct !DILexicalBlock(scope: !4048, file: !535, line: 233, column: 25)
!4052 = !DILocation(line: 237, column: 27, scope: !4051, inlinedAt: !3935)
!4053 = !DILocation(line: 239, column: 39, scope: !3861, inlinedAt: !3935)
!4054 = !DILocation(line: 239, column: 50, scope: !3861, inlinedAt: !3935)
!4055 = !DILocation(line: 239, column: 61, scope: !3861, inlinedAt: !3935)
!4056 = !DILocalVariable(name: "__dest", arg: 1, scope: !4057, file: !4058, line: 107, type: !4061)
!4057 = distinct !DISubprogram(name: "strcpy", scope: !4058, file: !4058, line: 107, type: !4059, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !191, variables: !4062)
!4058 = !DIFile(filename: "/usr/include/bits/string3.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4059 = !DISubroutineType(types: !4060)
!4060 = !{!20, !4061, !1012}
!4061 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !20)
!4062 = !{!4056, !4063}
!4063 = !DILocalVariable(name: "__src", arg: 2, scope: !4057, file: !4058, line: 107, type: !1012)
!4064 = !DILocation(line: 107, column: 1, scope: !4057, inlinedAt: !4065)
!4065 = distinct !DILocation(line: 239, column: 23, scope: !3861, inlinedAt: !3935)
!4066 = !DILocation(line: 109, column: 49, scope: !4057, inlinedAt: !4065)
!4067 = !DILocation(line: 109, column: 10, scope: !4057, inlinedAt: !4065)
!4068 = !DILocation(line: 107, column: 1, scope: !4057, inlinedAt: !4069)
!4069 = distinct !DILocation(line: 240, column: 23, scope: !3861, inlinedAt: !3935)
!4070 = !DILocation(line: 109, column: 49, scope: !4057, inlinedAt: !4069)
!4071 = !DILocation(line: 109, column: 10, scope: !4057, inlinedAt: !4069)
!4072 = !DILocation(line: 241, column: 21, scope: !3862, inlinedAt: !3935)
!4073 = !DILocation(line: 242, column: 19, scope: !3864, inlinedAt: !3935)
!4074 = !DILocation(line: 243, column: 32, scope: !4075, inlinedAt: !3935)
!4075 = distinct !DILexicalBlock(scope: !3864, file: !535, line: 243, column: 23)
!4076 = !DILocation(line: 243, column: 23, scope: !3864, inlinedAt: !3935)
!4077 = !DILocation(line: 247, column: 33, scope: !4078, inlinedAt: !3935)
!4078 = distinct !DILexicalBlock(scope: !4075, file: !535, line: 246, column: 21)
!4079 = !DILocation(line: 247, column: 45, scope: !4078, inlinedAt: !3935)
!4080 = !DILocation(line: 253, column: 11, scope: !3868, inlinedAt: !3935)
!4081 = !DILocation(line: 377, column: 23, scope: !3870, inlinedAt: !3935)
!4082 = !DILocation(line: 378, column: 5, scope: !3870, inlinedAt: !3935)
!4083 = !DILocation(line: 396, column: 15, scope: !3848)
!4084 = !DILocation(line: 590, column: 8, scope: !3857)
!4085 = !DILocation(line: 590, column: 17, scope: !3857)
!4086 = !DILocation(line: 589, column: 3, scope: !4087)
!4087 = !DILexicalBlockFile(scope: !3858, file: !535, discriminator: 1)
!4088 = !DILocation(line: 592, column: 9, scope: !3855)
!4089 = !DILocation(line: 592, column: 35, scope: !3856)
!4090 = !DILocation(line: 593, column: 9, scope: !3856)
!4091 = !DILocation(line: 593, column: 24, scope: !4092)
!4092 = !DILexicalBlockFile(scope: !3856, file: !535, discriminator: 1)
!4093 = !DILocation(line: 593, column: 31, scope: !4092)
!4094 = !DILocation(line: 593, column: 34, scope: !4095)
!4095 = !DILexicalBlockFile(scope: !3856, file: !535, discriminator: 2)
!4096 = !DILocation(line: 593, column: 45, scope: !4095)
!4097 = !DILocation(line: 592, column: 9, scope: !4098)
!4098 = !DILexicalBlockFile(scope: !3857, file: !535, discriminator: 1)
!4099 = !DILocation(line: 595, column: 29, scope: !4100)
!4100 = distinct !DILexicalBlock(scope: !3856, file: !535, line: 594, column: 7)
!4101 = !DILocation(line: 595, column: 27, scope: !4100)
!4102 = !DILocation(line: 595, column: 46, scope: !4100)
!4103 = !DILocation(line: 596, column: 9, scope: !4100)
!4104 = !DILocation(line: 591, column: 19, scope: !3857)
!4105 = !DILocation(line: 591, column: 36, scope: !3857)
!4106 = !DILocation(line: 591, column: 16, scope: !3857)
!4107 = !DILocation(line: 591, column: 52, scope: !4098)
!4108 = !DILocation(line: 591, column: 69, scope: !3857)
!4109 = !DILocation(line: 591, column: 49, scope: !3857)
!4110 = distinct !{!4110, !4111, !4112}
!4111 = !DILocation(line: 589, column: 3, scope: !3858)
!4112 = !DILocation(line: 597, column: 7, scope: !3858)
!4113 = !DILocation(line: 602, column: 7, scope: !4114)
!4114 = distinct !DILexicalBlock(scope: !3848, file: !535, line: 602, column: 7)
!4115 = !DILocation(line: 602, column: 18, scope: !4114)
!4116 = !DILocation(line: 602, column: 7, scope: !3848)
!4117 = !DILocation(line: 612, column: 3, scope: !3848)
!4118 = distinct !DISubprogram(name: "rpl_fclose", scope: !4119, file: !4119, line: 56, type: !4120, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !582, variables: !4162)
!4119 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4120 = !DISubroutineType(types: !4121)
!4121 = !{!66, !4122}
!4122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4123, size: 64)
!4123 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !934, line: 49, baseType: !4124)
!4124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !936, line: 241, size: 1728, elements: !4125)
!4125 = !{!4126, !4127, !4128, !4129, !4130, !4131, !4132, !4133, !4134, !4135, !4136, !4137, !4138, !4146, !4147, !4148, !4149, !4150, !4151, !4152, !4153, !4154, !4155, !4156, !4157, !4158, !4159, !4160, !4161}
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4124, file: !936, line: 242, baseType: !66, size: 32)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4124, file: !936, line: 247, baseType: !20, size: 64, offset: 64)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4124, file: !936, line: 248, baseType: !20, size: 64, offset: 128)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4124, file: !936, line: 249, baseType: !20, size: 64, offset: 192)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4124, file: !936, line: 250, baseType: !20, size: 64, offset: 256)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4124, file: !936, line: 251, baseType: !20, size: 64, offset: 320)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4124, file: !936, line: 252, baseType: !20, size: 64, offset: 384)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4124, file: !936, line: 253, baseType: !20, size: 64, offset: 448)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4124, file: !936, line: 254, baseType: !20, size: 64, offset: 512)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4124, file: !936, line: 256, baseType: !20, size: 64, offset: 576)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4124, file: !936, line: 257, baseType: !20, size: 64, offset: 640)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4124, file: !936, line: 258, baseType: !20, size: 64, offset: 704)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4124, file: !936, line: 260, baseType: !4139, size: 64, offset: 768)
!4139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4140, size: 64)
!4140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !936, line: 156, size: 192, elements: !4141)
!4141 = !{!4142, !4143, !4145}
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4140, file: !936, line: 157, baseType: !4139, size: 64)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4140, file: !936, line: 158, baseType: !4144, size: 64, offset: 64)
!4144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4124, size: 64)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4140, file: !936, line: 162, baseType: !66, size: 32, offset: 128)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4124, file: !936, line: 262, baseType: !4144, size: 64, offset: 832)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4124, file: !936, line: 264, baseType: !66, size: 32, offset: 896)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4124, file: !936, line: 268, baseType: !66, size: 32, offset: 928)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4124, file: !936, line: 270, baseType: !856, size: 64, offset: 960)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4124, file: !936, line: 274, baseType: !136, size: 16, offset: 1024)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4124, file: !936, line: 275, baseType: !964, size: 8, offset: 1040)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4124, file: !936, line: 276, baseType: !966, size: 8, offset: 1048)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4124, file: !936, line: 280, baseType: !970, size: 64, offset: 1088)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4124, file: !936, line: 289, baseType: !973, size: 64, offset: 1152)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4124, file: !936, line: 297, baseType: !22, size: 64, offset: 1216)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4124, file: !936, line: 298, baseType: !22, size: 64, offset: 1280)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4124, file: !936, line: 299, baseType: !22, size: 64, offset: 1344)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4124, file: !936, line: 300, baseType: !22, size: 64, offset: 1408)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4124, file: !936, line: 302, baseType: !23, size: 64, offset: 1472)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4124, file: !936, line: 303, baseType: !66, size: 32, offset: 1536)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4124, file: !936, line: 305, baseType: !981, size: 160, offset: 1568)
!4162 = !{!4163, !4164, !4165, !4166}
!4163 = !DILocalVariable(name: "fp", arg: 1, scope: !4118, file: !4119, line: 56, type: !4122)
!4164 = !DILocalVariable(name: "saved_errno", scope: !4118, file: !4119, line: 58, type: !66)
!4165 = !DILocalVariable(name: "fd", scope: !4118, file: !4119, line: 59, type: !66)
!4166 = !DILocalVariable(name: "result", scope: !4118, file: !4119, line: 60, type: !66)
!4167 = !DILocation(line: 56, column: 19, scope: !4118)
!4168 = !DILocation(line: 58, column: 7, scope: !4118)
!4169 = !DILocation(line: 60, column: 7, scope: !4118)
!4170 = !DILocation(line: 63, column: 8, scope: !4118)
!4171 = !DILocation(line: 59, column: 7, scope: !4118)
!4172 = !DILocation(line: 64, column: 10, scope: !4173)
!4173 = distinct !DILexicalBlock(scope: !4118, file: !4119, line: 64, column: 7)
!4174 = !DILocation(line: 64, column: 7, scope: !4118)
!4175 = !DILocation(line: 65, column: 12, scope: !4173)
!4176 = !DILocation(line: 65, column: 5, scope: !4173)
!4177 = !DILocation(line: 70, column: 9, scope: !4178)
!4178 = distinct !DILexicalBlock(scope: !4118, file: !4119, line: 70, column: 7)
!4179 = !DILocation(line: 70, column: 23, scope: !4178)
!4180 = !DILocation(line: 70, column: 33, scope: !4181)
!4181 = !DILexicalBlockFile(scope: !4178, file: !4119, discriminator: 1)
!4182 = !DILocation(line: 70, column: 26, scope: !4183)
!4183 = !DILexicalBlockFile(scope: !4178, file: !4119, discriminator: 3)
!4184 = !DILocation(line: 70, column: 59, scope: !4181)
!4185 = !DILocation(line: 71, column: 7, scope: !4178)
!4186 = !DILocation(line: 71, column: 10, scope: !4181)
!4187 = !DILocation(line: 70, column: 7, scope: !4188)
!4188 = !DILexicalBlockFile(scope: !4118, file: !4119, discriminator: 2)
!4189 = !DILocation(line: 98, column: 12, scope: !4118)
!4190 = !DILocation(line: 103, column: 7, scope: !4118)
!4191 = !DILocation(line: 72, column: 19, scope: !4178)
!4192 = !DILocation(line: 103, column: 19, scope: !4193)
!4193 = distinct !DILexicalBlock(scope: !4118, file: !4119, line: 103, column: 7)
!4194 = !DILocation(line: 105, column: 13, scope: !4195)
!4195 = distinct !DILexicalBlock(scope: !4193, file: !4119, line: 104, column: 5)
!4196 = !DILocation(line: 107, column: 5, scope: !4195)
!4197 = !DILocation(line: 110, column: 1, scope: !4118)
!4198 = distinct !DISubprogram(name: "rpl_fflush", scope: !4199, file: !4199, line: 127, type: !4200, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !584, variables: !4242)
!4199 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4200 = !DISubroutineType(types: !4201)
!4201 = !{!66, !4202}
!4202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4203, size: 64)
!4203 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !934, line: 49, baseType: !4204)
!4204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !936, line: 241, size: 1728, elements: !4205)
!4205 = !{!4206, !4207, !4208, !4209, !4210, !4211, !4212, !4213, !4214, !4215, !4216, !4217, !4218, !4226, !4227, !4228, !4229, !4230, !4231, !4232, !4233, !4234, !4235, !4236, !4237, !4238, !4239, !4240, !4241}
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4204, file: !936, line: 242, baseType: !66, size: 32)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4204, file: !936, line: 247, baseType: !20, size: 64, offset: 64)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4204, file: !936, line: 248, baseType: !20, size: 64, offset: 128)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4204, file: !936, line: 249, baseType: !20, size: 64, offset: 192)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4204, file: !936, line: 250, baseType: !20, size: 64, offset: 256)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4204, file: !936, line: 251, baseType: !20, size: 64, offset: 320)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4204, file: !936, line: 252, baseType: !20, size: 64, offset: 384)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4204, file: !936, line: 253, baseType: !20, size: 64, offset: 448)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4204, file: !936, line: 254, baseType: !20, size: 64, offset: 512)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4204, file: !936, line: 256, baseType: !20, size: 64, offset: 576)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4204, file: !936, line: 257, baseType: !20, size: 64, offset: 640)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4204, file: !936, line: 258, baseType: !20, size: 64, offset: 704)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4204, file: !936, line: 260, baseType: !4219, size: 64, offset: 768)
!4219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4220, size: 64)
!4220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !936, line: 156, size: 192, elements: !4221)
!4221 = !{!4222, !4223, !4225}
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4220, file: !936, line: 157, baseType: !4219, size: 64)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4220, file: !936, line: 158, baseType: !4224, size: 64, offset: 64)
!4224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4204, size: 64)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4220, file: !936, line: 162, baseType: !66, size: 32, offset: 128)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4204, file: !936, line: 262, baseType: !4224, size: 64, offset: 832)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4204, file: !936, line: 264, baseType: !66, size: 32, offset: 896)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4204, file: !936, line: 268, baseType: !66, size: 32, offset: 928)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4204, file: !936, line: 270, baseType: !856, size: 64, offset: 960)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4204, file: !936, line: 274, baseType: !136, size: 16, offset: 1024)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4204, file: !936, line: 275, baseType: !964, size: 8, offset: 1040)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4204, file: !936, line: 276, baseType: !966, size: 8, offset: 1048)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4204, file: !936, line: 280, baseType: !970, size: 64, offset: 1088)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4204, file: !936, line: 289, baseType: !973, size: 64, offset: 1152)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4204, file: !936, line: 297, baseType: !22, size: 64, offset: 1216)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4204, file: !936, line: 298, baseType: !22, size: 64, offset: 1280)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4204, file: !936, line: 299, baseType: !22, size: 64, offset: 1344)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4204, file: !936, line: 300, baseType: !22, size: 64, offset: 1408)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4204, file: !936, line: 302, baseType: !23, size: 64, offset: 1472)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4204, file: !936, line: 303, baseType: !66, size: 32, offset: 1536)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4204, file: !936, line: 305, baseType: !981, size: 160, offset: 1568)
!4242 = !{!4243}
!4243 = !DILocalVariable(name: "stream", arg: 1, scope: !4198, file: !4199, line: 127, type: !4202)
!4244 = !DILocation(line: 127, column: 19, scope: !4198)
!4245 = !DILocation(line: 148, column: 14, scope: !4246)
!4246 = distinct !DILexicalBlock(scope: !4198, file: !4199, line: 148, column: 7)
!4247 = !DILocation(line: 148, column: 22, scope: !4246)
!4248 = !DILocation(line: 148, column: 27, scope: !4249)
!4249 = !DILexicalBlockFile(scope: !4246, file: !4199, discriminator: 1)
!4250 = !DILocation(line: 148, column: 7, scope: !4251)
!4251 = !DILexicalBlockFile(scope: !4198, file: !4199, discriminator: 1)
!4252 = !DILocation(line: 149, column: 12, scope: !4246)
!4253 = !DILocation(line: 149, column: 5, scope: !4246)
!4254 = !DILocalVariable(name: "fp", arg: 1, scope: !4255, file: !4199, line: 40, type: !4202)
!4255 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !4199, file: !4199, line: 40, type: !4256, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !584, variables: !4258)
!4256 = !DISubroutineType(types: !4257)
!4257 = !{null, !4202}
!4258 = !{!4254}
!4259 = !DILocation(line: 40, column: 48, scope: !4255, inlinedAt: !4260)
!4260 = distinct !DILocation(line: 153, column: 3, scope: !4198)
!4261 = !DILocation(line: 42, column: 11, scope: !4262, inlinedAt: !4260)
!4262 = distinct !DILexicalBlock(scope: !4255, file: !4199, line: 42, column: 7)
!4263 = !DILocation(line: 42, column: 18, scope: !4262, inlinedAt: !4260)
!4264 = !DILocation(line: 42, column: 7, scope: !4255, inlinedAt: !4260)
!4265 = !DILocation(line: 44, column: 5, scope: !4262, inlinedAt: !4260)
!4266 = !DILocation(line: 155, column: 10, scope: !4198)
!4267 = !DILocation(line: 155, column: 3, scope: !4198)
!4268 = !DILocation(line: 229, column: 1, scope: !4198)
!4269 = distinct !DISubprogram(name: "rpl_fseeko", scope: !4270, file: !4270, line: 28, type: !4271, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !586, variables: !4314)
!4270 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4271 = !DISubroutineType(types: !4272)
!4272 = !{!66, !4273, !4313, !66}
!4273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4274, size: 64)
!4274 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !934, line: 49, baseType: !4275)
!4275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !936, line: 241, size: 1728, elements: !4276)
!4276 = !{!4277, !4278, !4279, !4280, !4281, !4282, !4283, !4284, !4285, !4286, !4287, !4288, !4289, !4297, !4298, !4299, !4300, !4301, !4302, !4303, !4304, !4305, !4306, !4307, !4308, !4309, !4310, !4311, !4312}
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4275, file: !936, line: 242, baseType: !66, size: 32)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4275, file: !936, line: 247, baseType: !20, size: 64, offset: 64)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4275, file: !936, line: 248, baseType: !20, size: 64, offset: 128)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4275, file: !936, line: 249, baseType: !20, size: 64, offset: 192)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4275, file: !936, line: 250, baseType: !20, size: 64, offset: 256)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4275, file: !936, line: 251, baseType: !20, size: 64, offset: 320)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4275, file: !936, line: 252, baseType: !20, size: 64, offset: 384)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4275, file: !936, line: 253, baseType: !20, size: 64, offset: 448)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4275, file: !936, line: 254, baseType: !20, size: 64, offset: 512)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4275, file: !936, line: 256, baseType: !20, size: 64, offset: 576)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4275, file: !936, line: 257, baseType: !20, size: 64, offset: 640)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4275, file: !936, line: 258, baseType: !20, size: 64, offset: 704)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4275, file: !936, line: 260, baseType: !4290, size: 64, offset: 768)
!4290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4291, size: 64)
!4291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !936, line: 156, size: 192, elements: !4292)
!4292 = !{!4293, !4294, !4296}
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4291, file: !936, line: 157, baseType: !4290, size: 64)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4291, file: !936, line: 158, baseType: !4295, size: 64, offset: 64)
!4295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4275, size: 64)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4291, file: !936, line: 162, baseType: !66, size: 32, offset: 128)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4275, file: !936, line: 262, baseType: !4295, size: 64, offset: 832)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4275, file: !936, line: 264, baseType: !66, size: 32, offset: 896)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4275, file: !936, line: 268, baseType: !66, size: 32, offset: 928)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4275, file: !936, line: 270, baseType: !856, size: 64, offset: 960)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4275, file: !936, line: 274, baseType: !136, size: 16, offset: 1024)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4275, file: !936, line: 275, baseType: !964, size: 8, offset: 1040)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4275, file: !936, line: 276, baseType: !966, size: 8, offset: 1048)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4275, file: !936, line: 280, baseType: !970, size: 64, offset: 1088)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4275, file: !936, line: 289, baseType: !973, size: 64, offset: 1152)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4275, file: !936, line: 297, baseType: !22, size: 64, offset: 1216)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4275, file: !936, line: 298, baseType: !22, size: 64, offset: 1280)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4275, file: !936, line: 299, baseType: !22, size: 64, offset: 1344)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4275, file: !936, line: 300, baseType: !22, size: 64, offset: 1408)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4275, file: !936, line: 302, baseType: !23, size: 64, offset: 1472)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4275, file: !936, line: 303, baseType: !66, size: 32, offset: 1536)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4275, file: !936, line: 305, baseType: !981, size: 160, offset: 1568)
!4313 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !934, line: 91, baseType: !856)
!4314 = !{!4315, !4316, !4317, !4318}
!4315 = !DILocalVariable(name: "fp", arg: 1, scope: !4269, file: !4270, line: 28, type: !4273)
!4316 = !DILocalVariable(name: "offset", arg: 2, scope: !4269, file: !4270, line: 28, type: !4313)
!4317 = !DILocalVariable(name: "whence", arg: 3, scope: !4269, file: !4270, line: 28, type: !66)
!4318 = !DILocalVariable(name: "pos", scope: !4319, file: !4270, line: 116, type: !4313)
!4319 = distinct !DILexicalBlock(scope: !4320, file: !4270, line: 112, column: 5)
!4320 = distinct !DILexicalBlock(scope: !4269, file: !4270, line: 51, column: 7)
!4321 = !DILocation(line: 28, column: 15, scope: !4269)
!4322 = !DILocation(line: 28, column: 25, scope: !4269)
!4323 = !DILocation(line: 28, column: 37, scope: !4269)
!4324 = !DILocation(line: 51, column: 11, scope: !4320)
!4325 = !DILocation(line: 51, column: 31, scope: !4320)
!4326 = !DILocation(line: 51, column: 24, scope: !4320)
!4327 = !DILocation(line: 52, column: 7, scope: !4320)
!4328 = !DILocation(line: 52, column: 14, scope: !4329)
!4329 = !DILexicalBlockFile(scope: !4320, file: !4270, discriminator: 1)
!4330 = !DILocation(line: 52, column: 35, scope: !4329)
!4331 = !{!1035, !607, i64 32}
!4332 = !DILocation(line: 52, column: 28, scope: !4329)
!4333 = !DILocation(line: 53, column: 7, scope: !4320)
!4334 = !DILocation(line: 53, column: 14, scope: !4329)
!4335 = !{!1035, !607, i64 72}
!4336 = !DILocation(line: 53, column: 28, scope: !4329)
!4337 = !DILocation(line: 51, column: 7, scope: !4338)
!4338 = !DILexicalBlockFile(scope: !4269, file: !4270, discriminator: 1)
!4339 = !DILocation(line: 116, column: 26, scope: !4319)
!4340 = !DILocation(line: 116, column: 19, scope: !4341)
!4341 = !DILexicalBlockFile(scope: !4319, file: !4270, discriminator: 1)
!4342 = !DILocation(line: 116, column: 13, scope: !4319)
!4343 = !DILocation(line: 117, column: 15, scope: !4344)
!4344 = distinct !DILexicalBlock(scope: !4319, file: !4270, line: 117, column: 11)
!4345 = !DILocation(line: 117, column: 11, scope: !4319)
!4346 = !DILocation(line: 127, column: 11, scope: !4319)
!4347 = !DILocation(line: 127, column: 18, scope: !4319)
!4348 = !DILocation(line: 128, column: 11, scope: !4319)
!4349 = !DILocation(line: 128, column: 19, scope: !4319)
!4350 = !{!1035, !1036, i64 144}
!4351 = !DILocation(line: 159, column: 7, scope: !4319)
!4352 = !DILocation(line: 161, column: 10, scope: !4269)
!4353 = !DILocation(line: 161, column: 3, scope: !4269)
!4354 = !DILocation(line: 162, column: 1, scope: !4269)
